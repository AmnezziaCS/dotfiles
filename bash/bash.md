# `.bashrc` file

## Why?

Since I currently have to use windows without WSL at work. I heavily rely on git bash to get a more unix-like experience. Thus, I have a `.bashrc` file in my home directory to set up some aliases and customizations.

I thought it would be a good idea to document it here as the setup could change over time.

## Setup

### Files

Download git bash from [here](https://git-scm.com/downloads).

Create a symlink to the `.bashrc` and `.bash_profile` files in this repo:

```bash
mklink "C:\Users\username\.bashrc" "C:\path\to\this\repo\bash\.bashrc"
mklink "C:\Users\username\.bash_profile" "C:\path\to\this\repo\bash\.bash_profile"
```

### Terminal

Do not forget to create a windows terminal profile. The `commandline` arg should be set at `"commandline": "%PROGRAMFILES%\\Git\\bin\\bash.exe -l -i"`. The icon can be set to `./medias/git-bash-icon.png`.

## Documentation

The setup I used can be found [in this article](https://dev.to/pablohs1986/tuning-git-bash-1eeo).
