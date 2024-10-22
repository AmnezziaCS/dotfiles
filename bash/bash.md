# `.bashrc` file

## Why?

Since I currently have to use windows without WSL at work. I heavily rely on git bash to get a more unix-like experience. Thus, I have a `.bashrc` file in my home directory to set up some aliases and customizations.

I thought it would be a good idea to document it here as the setup could change over time.

## Setup

### Downloads

- [Git Bash](https://git-scm.com/downloads)

Clone this repo to your workspace directory:

```bash
git clone  https://github.com/AmnezziaCS/dotfiles.git ~/Documents/dev/dotfiles
```

### Files

Create a symlink to the `.bashrc`, `.bash_profile` and `.inputrc` files in this repo:

```bash
mklink "C:\Users\${USERNAME}\.bashrc" "C:\${PATH_TO_THIS_REPO}\bash\.bashrc"
mklink "C:\Users\${USERNAME}\.bash_profile" "C:\${PATH_TO_THIS_REPO}\bash\.bash_profile"
mklink "C:\Users\${USERNAME}\.inputrc" "C:\${PATH_TO_THIS_REPO}\bash\.inputrc"
```

### Terminal

Do not forget to create a windows terminal profile. The `commandline` arg should be set at `"commandline": "%PROGRAMFILES%\\Git\\bin\\bash.exe -l -i"`. The icon can be set to `./medias/git-bash-icon.png`.

## Documentation

The setup I used can be found [in this article](https://dev.to/pablohs1986/tuning-git-bash-1eeo).
