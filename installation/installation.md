# Installation

This document provides instructions for installing and configuring the dotfiles configuration. It is recommended to use the installation script for a quick setup, but manual installation steps are also provided for backup and customization purposes.

## Using the installation script

### Clone the repository

```sh
git clone https://github.com/AmnezziaCS/dotfiles.git ~/workspace/dotfiles
```

### Run the installation script

```sh
cd ~/workspace/dotfiles
chmod +x installation/zshbootstrap.sh
./installation/zshbootstrap.sh
```

## Using manual installation

### Clone the repository

```sh
git clone https://github.com/AmnezziaCS/dotfiles.git ~/workspace/dotfiles
```

### Install zsh

```sh
sudo apt install zsh
```

#### Define zsh as the default shell

```sh
# in ubuntu the path is /usr/bin/zsh
chsh -s $(which zsh)
```

### Create necessary symlinks

```sh
mkdir -p ~/.config/atuin ~/.config/tmux

ln -s ~/workspace/dotfiles/.zshrc ~/.zshrc
ln -s ~/workspace/dotfiles/.config/starship/starship.toml ~/.config/starship.toml
ln -s ~/workspace/dotfiles/.config/atuin/config.toml ~/.config/atuin/config.toml
ln -s ~/workspace/dotfiles/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

### Download the nerd font

Download the font from the [NerdFont website](https://www.nerdfonts.com/font-downloads) or use the following link: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip

### Install all the dependencies

```sh
# eza is a modern replacement for ls
sudo apt install eza

# fzf is a command-line fuzzy finder
sudo apt install fzf

# tmux is a terminal multiplexer
sudo apt install tmux

# atuin is a command-line shell history visualizer
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# starship is a minimalistic, fast and customizable prompt
curl -sS https://starship.rs/install.sh | sh
```

### Clone zsh-autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

### Source the zshrc

```sh
source ~/.zshrc
```

### Create VS Code symlinks

```sh
ln -s ~/workspace/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json -f
ln -s ~/workspace/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json -f
```
