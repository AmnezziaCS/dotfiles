# 🚀 Dotfiles

This repository holds my personal zsh configuration files. The idea behind this is to have a consistent shell experience across all my devices.

## Table of contents

- [Installation](#installation)
- [Bash](#bash)
- [Documentation](#documentation)
  - [Claude](#claude)
  - [Useful shell commands](#useful-shell-commands)
  - [Terminals](#terminals)
  - [Customization](#customization)
  - [Fonts](#fonts)
  - [Shortcuts](#shortcuts)
  - [VS Code extensions](#vs-code-extensions)

## Installation

Find the installation instructions in the [installation.md](./installation/installation.md) file.

## Bash

Since I sometimes have to work on plain Windows machines without WSL. I heavily rely on git bash to get a more unix-like experience. The documentation for my `.bashrc` file can be found [here](./bash/bash.md).

## Documentation

- [General dotfiles documentation](https://dotfiles.github.io/)
- [Zsh documentation](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html)

### Claude

Claude config taken from [here](https://github.com/Fuzznimp/dotfiles/tree/main/.claude) (thanks Fuzznimp 🙂). Wanted to try it out as it looked very well made. `.md` files should be imported inside `.claude` directory for a setup.

### Terminals

- https://github.com/Guake/guake

### Customization

- [eza - modern replacement for ls](https://github.com/eza-community/eza)
- [atuin - command-line shell history visualizer](https://atuin.sh/)
- [starship - minimalistic, fast and customizable prompt](https://starship.rs/)
- [fzf - command-line fuzzy finder](https://github.com/junegunn/fzf)
- [lazygit - extra git features in cmd](https://github.com/jesseduffield/lazygit)
- [zoxide - smart cd command](https://github.com/ajeetdsouza/zoxide)
- [bat - cat clone with syntax highlighting](https://github.com/sharkdp/bat)
- [tmux - terminal multiplexer](https://github.com/tmux/tmux)
- [zsh auto suggestions - fish-like autosuggestions for zsh](https://github.com/zsh-users/zsh-autosuggestions)

### Fonts

- [NerdFont - software engineering friendly fonts](https://www.nerdfonts.com/font-downloads)

### Shortcuts

- [zsh shortcut documentation](https://gist.github.com/2KAbhishek/9c6d607e160b0439a186d4fbd1bd81df)

### VS Code extensions

- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Git history](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
- [Github Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Babel JavaScript](https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

### Useful shell commands

Create a symlink:

- `ln -s {original_file_path} {target_file_path}`

Override zsh configuration:

- `source {path_to_.zshrc}`
