BASH_PATH="${HOME}/Documents/dev/dotfiles/bash/bash"

# Prompt priority definition
MSYS2_PS1="$PS1"

# Set user name
export USER=$(id -un)

# Git status options
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

# Source local bash config
source ${BASH_PATH}/.aliases
source ${BASH_PATH}/.style
source ${BASH_PATH}/.keybindings
if [ -f "${BASH_PATH}/.sii" ]; then
    source ${BASH_PATH}/.sii
fi

# Add atuin to bashrc
. "$HOME/.atuin/bin/env"
eval "$(atuin init bash)"