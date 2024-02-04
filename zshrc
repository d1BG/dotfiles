# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="custom-fox"

# OMZ auto update
zstyle ':omz:update' mode auto

# Plugins & Source omz
plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="eza --icons -h --no-time --no-filesize"
alias ip='ip -c'
alias free='free -hw'
alias htop='btop'
alias df='df -h'
alias yaya='yay'
alias neofetch='neofetch --size 450'
alias clear='clear && neofetch'

# Lets not forget the most important part
neofetch

