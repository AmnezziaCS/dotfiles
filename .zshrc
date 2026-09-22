ZSH_PATH="${HOME}/workspace/dotfiles/zsh"

# Source local zsh config
source "${ZSH_PATH}/.aliases"
source "${ZSH_PATH}/.completion"
source "${ZSH_PATH}/.history"

# Source non-local zsh config
source "${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Configure starship
eval "$(starship init zsh)"
# Configure atuin
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"