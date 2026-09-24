#!/usr/bin/env bash
#
# Bootstraps the whole dotfiles setup on a fresh machine:
# packages, external modules, symlinks, default shell and (optionally) VS Code.
# Safe to re-run: everything already in place is skipped.

set -euo pipefail

# ─── Helpers ───────────────────────────────────────────────────────────────────
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

log() { printf '\n\033[1;34m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[warn]\033[0m %s\n' "$*" >&2; }
die() { printf '\033[1;31m[error]\033[0m %s\n' "$*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }

# The .zshrc resolves its config from ~/workspace/dotfiles, so warn on any other location.
[ "$DOTFILES" = "$HOME/workspace/dotfiles" ] || \
  warn "Repository is in $DOTFILES but .zshrc expects ~/workspace/dotfiles"

# ─── Package manager detection ─────────────────────────────────────────────────
# Only apt (Debian/Ubuntu) and brew (macOS) are supported.
if have apt-get; then
  PM="apt"
  log "Updating package lists"
  sudo apt-get update -qq
elif have brew; then
  PM="brew"
else
  die "No supported package manager found (apt-get or brew)"
fi

install_pkg() {
  local pkg="$1"
  if [ "$PM" = "apt" ]; then
    sudo apt-get install -y -qq "$pkg"
  else
    brew list "$pkg" >/dev/null 2>&1 || brew install "$pkg"
  fi
}

# ─── Packages ──────────────────────────────────────────────────────────────────
# A failing package must not abort the bootstrap: some are missing on older distros.
log "Installing packages"
for pkg in zsh git curl unzip tmux fzf bat lazygit eza; do
  install_pkg "$pkg" || warn "Could not install $pkg, install it manually"
done

# eza is only packaged from Ubuntu 24.04 / Debian trixie onwards.
have eza || warn "eza is missing, see https://github.com/eza-community/eza/blob/main/INSTALL.md"

# Debian ships bat as batcat, expose it under the name used by the aliases.
if ! have bat && have batcat; then
  mkdir -p "$HOME/.local/bin"
  ln -sfn "$(command -v batcat)" "$HOME/.local/bin/bat"
fi

# ─── External modules ──────────────────────────────────────────────────────────
# starship: prompt.
if ! have starship; then
  log "Installing starship"
  curl -sS https://starship.rs/install.sh | sh -s -- --yes
fi

# atuin: shell history.
if [ ! -d "$HOME/.atuin" ]; then
  log "Installing atuin"
  curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
fi

# zsh-autosuggestions: inline suggestions, sourced by .zshrc.
if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
  log "Cloning zsh-autosuggestions"
  git clone -q https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
fi

# ─── Nerd font ─────────────────────────────────────────────────────────────────
# Hack Nerd Font, required for the starship prompt glyphs.
if [ "$(uname -s)" = "Darwin" ]; then
  FONT_DIR="$HOME/Library/Fonts"
else
  FONT_DIR="$HOME/.local/share/fonts"
fi

if ! ls "$FONT_DIR"/HackNerdFont* >/dev/null 2>&1; then
  log "Installing Hack Nerd Font"
  mkdir -p "$FONT_DIR"
  tmp="$(mktemp -d)"
  if curl -fsSL -o "$tmp/Hack.zip" \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip; then
    unzip -qo "$tmp/Hack.zip" -d "$FONT_DIR"
    if have fc-cache; then fc-cache -f "$FONT_DIR" >/dev/null; fi
  else
    warn "Could not download the Hack Nerd Font"
  fi
  rm -rf "$tmp"
fi

# ─── Symlinks ──────────────────────────────────────────────────────────────────
log "Creating symlinks"
mkdir -p "$HOME/.config/atuin" "$HOME/.config/tmux"

ln -sfn "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sfn "$DOTFILES/.config/starship/starship.toml" "$HOME/.config/starship.toml"
ln -sfn "$DOTFILES/.config/atuin/config.toml" "$HOME/.config/atuin/config.toml"
ln -sfn "$DOTFILES/.config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"

# ─── VS Code (optional) ────────────────────────────────────────────────────────
# Only ask when running interactively, otherwise skip.
if [ -t 0 ]; then
  read -r -p "Link the VS Code settings and keybindings? [y/N] " answer
else
  answer="n"
fi

case "$answer" in
  [yY]*)
    if [ "$(uname -s)" = "Darwin" ]; then
      VSCODE_DIR="$HOME/Library/Application Support/Code/User"
    else
      VSCODE_DIR="$HOME/.config/Code/User"
    fi
    log "Linking VS Code configuration"
    mkdir -p "$VSCODE_DIR"
    ln -sfn "$DOTFILES/.config/vscode/settings.json" "$VSCODE_DIR/settings.json"
    ln -sfn "$DOTFILES/.config/vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"
    ;;
  *)
    log "Skipping VS Code configuration"
    ;;
esac

# ─── Default shell ─────────────────────────────────────────────────────────────
ZSH_BIN="$(command -v zsh)"
if [ "${SHELL:-}" != "$ZSH_BIN" ]; then
  log "Setting zsh as the default shell"
  chsh -s "$ZSH_BIN" || warn "Could not change the default shell, run: chsh -s $ZSH_BIN"
fi

# ─── Done ──────────────────────────────────────────────────────────────────────
log "Bootstrap complete, starting zsh with the new configuration"

# Replace the current shell with a zsh login shell so the new config is sourced.
exec "$ZSH_BIN" -l
