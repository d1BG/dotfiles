# Path to oh-my-zsh installation.
# Theme
ZSH_THEME="custom-fox"

# OMZ auto update
zstyle ':omz:update' mode auto

# Plugins & Source omz
plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="eza --icons -h"
alias ip='ip -c'
alias free='free -hw'
alias htop='btop'
alias df='df -h'
alias yaya='yay'
alias clear='clear && fastfetch'
alias neofetch='fastfetch'
alias :q!='exit'
alias vim='nvim'

# Lets not forget the most important part
fastfetch

