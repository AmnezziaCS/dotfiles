BASH_PATH="${HOME}/Documents/dev/dotfiles/bash/bash"

source ${BASH_PATH}/.aliases
source ${BASH_PATH}/.style
source ${BASH_PATH}/.keybindings
if [ -f "${BASH_PATH}/.sii" ]; then
    source ${BASH_PATH}/.sii
fi

MSYS2_PS1="$PS1" # for detection by MSYS2 SDK's bash.basrc

# git status options
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

# add atuin to bashrc
. "$HOME/.atuin/bin/env"
eval "$(atuin init bash)"