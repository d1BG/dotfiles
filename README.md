# deni111BG's dot files
All my custom linux dotfiles (as of 6/27/2024) in one place

With a script that puts all the configs in their places (that i hope works)

## Dependacies:
`sudo pacman -S git`
`git clone https://aur.archlinux.org/yay && cd yay && makepkg -si` 
`yay -S curl zsh fastfetch unzip btop eza foot imagemagick chafa mangohud hyprland waybar rofi-wayland zsh grim slurp hyprpicker wl-clipboard swappy hyprpaper ttf-jetbrains-mono`

## Things u might wanna change after install:
Display name in `~/.config/waybar/config.jsonc`

Display name in `~/.config/hypr/hyprland.conf`

Wallpaper dir in `~/.config/hypr/hyprpaper.conf`

Install a nerd font -> nerd icons are used both in fetch script and in waybar

## Download and run script:

git clone 'https://github.com/d1BG/dotfiles'

chmod u+x dotfiles/DotFiles.sh

./dotfiles/DotFiles.sh

## Oh My Zsh Install Script:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Why is (blank) a dependacy?
unzip is used to unpack zsh plugins cuz a folder of plugins is way too many files for me to upload to github

yay is there cuz i use it as AUR helper and hyprpicker is from aur

hyprpicker -> used in my screenshot screen to freeze the screen

grim, slurp and swappy -> all used for screenshotting

mangohud ? idk i had configs for it so i uploaded them

chafa/imagemagick -> img in term

curl ? -> OMZ install script
