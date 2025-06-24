# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git fzf-tab fast-syntax-highlighting zsh-autosuggestions zsh-completions)

ZSH_THEME="blackhole-fox"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':fzf-tab:*' fzf-command fzf

export PATH=$PATH:/home/deni111bg/.spicetify:/home/deni111bg/.local/bin

source $ZSH/oh-my-zsh.sh

export HISTSIZE=999999
export SAVEHIST=10000000
# Aliases
alias adb_shell='adb shell -t bash -i'

alias ls="eza --icons -h"
alias ip='ip -c'
alias free='free -hw'
alias htop='btop'
alias df='df -h'
alias yaya='yay'
alias clear='clear && fastfetch'
alias :q!='exit'
alias 'rm -rf'='trash-put'
alias rm='trash-put'
alias neofetch='fastfetch'
alias vim='nvim'
alias cat='bat --style header'

alias weather="curl wttr.in/Varna"
alias ani-cli="ani-cli --vlc"


alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias awmconf='nvim ~/.config/awm/config.toml'
alias dwcconf='nvim ~/.config/dwc/config'
alias niriconf='nvim ~/.config/niri/config.kdl'

[ -n "$XDG_CURRENT_DESKTOP" ] && fastfetch
