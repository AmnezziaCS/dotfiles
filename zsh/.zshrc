# Aliases

alias dotfiles="cd ~/workspace/dotfiles"
alias source.zsh="source ~/.zshrc"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias ll="exa --all --long --header --git"
alias lt="exa -aT --color=always --group-directories-first --ignore-glob=\"**/node_modules|**/dist|**/.next\""
alias f="fzf --preview 'bat --style=numbers --theme=ansi --color=always --line-range :500 {}' | pbcopy | echo `pbpaste`"
alias lg="lazygit"

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
