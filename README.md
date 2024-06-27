# deni111BG's dot files
All my custom linux dotfiles (as of 1/18/2024) in one place
With a script that puts all the configs in their places (that i hope works)

## Dependacies:
`sudo pacman -S curl git zsh fastfetch unzip btop eza foot imagemagick chafa mangohud hyprland waybar rofi-wayland zsh grim slurp hyprpicker wl-clipboard swappy`

### Optional:
yay is recommended

mangohud gets configs so u might want to install it

## Download and run script:

git clone 'https://github.com/d1BG/dotfiles'

chmod u+x dotfiles/DotFiles.sh

./dotfiles/DotFiles.sh

## Oh My Zsh Install Script:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Why is unzip a dependacy?
unzip is used to unpack zsh plugins cuz a folder of plugins is way too many files for me to upload to github 
