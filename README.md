# 🚀 Dotfiles

This repository holds my personal zsh configuration files. The idea behind this is to have a consistent shell experience across all my devices. I use zsh as my default shell and I have a few plugins and customizations to make my life easier.

## Table of contents

- [Installation](#installation)
  - [Clone the repository](#clone-the-repository)
  - [Install zsh](#install-zsh)
    - [Define zsh as the default shell](#define-zsh-as-the-default-shell)
  - [Create necessary symlinks](#create-necessary-symlinks)
  - [Download the nerd font](#download-the-nerd-font)
  - [Install all the dependencies](#install-all-the-dependencies)
  - [Clone zsh-autosuggestions](#clone-zsh-autosuggestions)
  - [Source the zshrc](#source-the-zshrc)
  - [Create VS Code symlinks](#create-vs-code-symlinks)
- [Bash](#bash)
- [Documentation](#documentation)
- [Useful shell commands](#useful-shell-commands)
- [VS Code extensions](#vs-code-extensions)
- [Useful links](#useful-links)
  - [Terminals](#terminals)
  - [Customization](#customization)
  - [Fonts](#fonts)
  - [Shortcuts](#shortcuts)

## Installation :

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
ln -s ~/workspace/dotfiles/.zshrc ~/.zshrc
ln -s ~/workspace/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/workspace/dotfiles/.config/starship.toml ~/.config/starship.toml
```

### Download the nerd font

Download the font from the [NerdFont website](https://www.nerdfonts.com/font-downloads) or use the following link: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip

### Install all the dependencies

```sh
# exa is a modern replacement for ls
sudo apt install exa

# fzf is a command-line fuzzy finder
sudo apt install fzf

# atuin is a command-line shell history visualizer
curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh

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

## Bash

Since I sometimes have to work on plain Windows machines without WSL. I heavily rely on git bash to get a more unix-like experience. The documentation for my `.bashrc` file can be found [here](./bash/bash.md).

## Documentation

- [General dotfiles documentation](https://dotfiles.github.io/)
- [Zsh documentation](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html)

## Useful shell commands

Create a symlink:

- `ln -s {original_file_path} {target_file_path}`

Override zsh configuration:

- `source {path_to_.zshrc}`

## VS Code extensions

- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Git history](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
- [Github Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Babel JavaScript](https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

## Useful links

### Terminals

- https://github.com/Guake/guake

### Customization

- [exa - modern replacement for ls](https://the.exa.website/)
- [atuin - command-line shell history visualizer](https://atuin.sh/)
- [starship - minimalistic, fast and customizable prompt](https://starship.rs/)
- [fzf - command-line fuzzy finder](https://github.com/junegunn/fzf)
- [lazygit - extra git features in cmd](https://github.com/jesseduffield/lazygit)
- [zoxide - smart cd command](https://github.com/ajeetdsouza/zoxide)
- [bat - cat clone with syntax highlighting](https://github.com/sharkdp/bat)

### Fonts

- [NerdFont - software engineering friendly fonts](https://www.nerdfonts.com/font-downloads)

### Shortcuts

- [zsh shortcut documentation](https://gist.github.com/2KAbhishek/9c6d607e160b0439a186d4fbd1bd81df)
