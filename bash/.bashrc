BASH_PATH="${HOME}/Documents/dev/dotfiles/bash/bash"

# Source local bash config
source ${BASH_PATH}/.aliases
source ${BASH_PATH}/.keybindings
source ${BASH_PATH}/.sii

# Configure starship
eval "$(starship init bash)"
# Add atuin to bashrc
. "$HOME/.atuin/bin/env"
eval "$(atuin init bash)"