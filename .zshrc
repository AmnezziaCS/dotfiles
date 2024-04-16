ZSH_PATH="${HOME}/workspace/dotfiles/zsh"

# Source local zsh config
source "${ZSH_PATH}/.aliases"
source "${ZSH_PATH}/.completion"
source "${ZSH_PATH}/.history"
source "${ZSH_PATH}/.diagrams"

# Source non-local zsh config
source "${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Configure atuin and starship
eval "$(atuin init zsh)"
eval "$(starship init zsh)"
