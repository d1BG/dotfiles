# deni111BG's dot files
all my customized linux dotfiles (as of 11/9/2023) in one place so i can use this repo to reproduce my system

With a script that puts all the configs in their places

## Dependacies:
pacman -S curl git zsh neofetch unzip eza doas kitty

for doas you need to add "permit persist :wheel" to "/etc/doas.conf"
## Download and run script:

git clone 'https://github.com/d1BG/dotfiles'
cd dotfiles
chmod u+x DotFiles.sh
./DotFiles.sh

## Oh My Zsh Install Script:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### y is unzip a dependacie?
unzip is used to unpack zsh plugins cuz a folder of plugins is way too many files for me to upload to github 
