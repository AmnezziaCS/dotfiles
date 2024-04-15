ZSH_PATH="${HOME}/workspace/dotfiles/zsh"

source "${ZSH_PATH}/.aliases"
source "${ZSH_PATH}/.completion"
source "${ZSH_PATH}/.diagrams"

# ENV variables exports
export HISTFILE=~/.zsh_history
export HISTFILESIZE=10000
export HISTSIZE=10000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE

# Configs
eval "$(atuin init zsh)"
eval "$(starship init zsh)"

