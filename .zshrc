ZSH_PATH="${HOME}/workspace/dotfiles/zsh"

# Source local zsh config
source "${ZSH_PATH}/.aliases"
source "${ZSH_PATH}/.completion"
source "${ZSH_PATH}/.history"

# Source non-local zsh config
source "${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Configure atuin and starship
eval "$(starship init zsh)"
eval "$(atuin init zsh)"