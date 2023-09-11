# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="fox"

zstyle ':omz:update' mode auto      # update automatically without asking


plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="eza --icons -h --no-time --no-filesize"
alias sudo="doas"
alias sudoedit='doas rnano'

neofetch

eval $(thefuck --alias)
