# Bash configuration

[⬅️ Back to README.md](../README.md)

## Why?

Since I currently have to use windows without WSL at work. I heavily rely on git bash to get a more unix-like experience. Thus, I have a `.bashrc` file in my home directory to set up some aliases and customizations.

## Installation

### Download Git Bash

- [Git Bash](https://git-scm.com/downloads)

### Clone the repo

Clone this repo to your workspace directory:

```bash
git clone  https://github.com/AmnezziaCS/dotfiles.git ~/Documents/dev/dotfiles
```

### Install all the dependencies

```bash
# atuin is a command-line shell history visualizer
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# starship is a minimalistic, fast and customizable prompt
winget install --id Starship.Starship --source winget
```

### Create the symlinks

Create a symlink to the `.bashrc`, `.bash_profile` and `.inputrc` files in this repo. Run this from Git Bash (requires [Developer Mode](https://learn.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development) enabled, or a terminal run as administrator):

```bash
export MSYS=winsymlinks:nativestrict
ln -sf ~/Documents/dev/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/Documents/dev/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/Documents/dev/dotfiles/bash/.inputrc ~/.inputrc
ln -sf ~/Documents/dev/dotfiles/.config/atuin/atuin.toml ~/.config/atuin/atuin.toml
ln -sf ~/Documents/dev/dotfiles/.config/starship.toml ~/.config/starship.toml
```

> `MSYS=winsymlinks:nativestrict` makes `ln -s` create real Windows symlinks instead of silently copying the files.

### Terminal

Do not forget to create a windows terminal profile. The `commandline` arg should be set at `"commandline": "%PROGRAMFILES%\\Git\\bin\\bash.exe -l -i"`. The icon can be set to `./medias/git-bash-icon.png`.

## Documentation

The setup I used can be found [in this article](https://dev.to/pablohs1986/tuning-git-bash-1eeo).
