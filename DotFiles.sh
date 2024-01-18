#!/bin/bash

# MangoHud

echo "Mangohud config: big includes all cores and other details, small does not"
mkdir ~/.config/MangoHud
read -p "Mangohud Config (big/small):" mangohudconf

case $mangohudconf in
big|BIG|Big )
    cp mangohud/mangobig ~/.config/MangoHud/MangoHud.conf
    ;;
small|SMALL|Small )
    cp mangohud/mangosmall ~/.config/MangoHud/MangoHud.conf
    ;;
* )
    echo "Invaild response";
    exit 1;;
esac

# Themes

echo "Themes:"
echo "[1] Nakiri"
echo "[2] Raiden Shogun"
echo "[3] Hutao"
echo "[4] Navia"
echo "[5] Frieren"
echo "[6] Ninomae Ina'nis (colors r bugged)"

read -p "Choose a theme: " theme

echo "Copying theme files into ~/.config/neofetch"   # I should have done those with in a case,
                                                     # but i already did it the messy way and its
                                                     # a personal script so I aint rewritting it,
                                                     # its good enough
if [ $theme -eq 1 ]; then
    cp neofetch/nakiri/* ~/.config/neofetch
elif [ $theme -eq 2 ]; then
    cp neofetch/raiden/* ~/.config/neofetch
elif [ $theme -eq 3 ]; then
    cp neofetch/hutao/* ~/.config/neofetch
elif [ $theme -eq 4 ]; then
    cp neofetch/navia/* ~/.config/neofetch
elif [ $theme -eq 5 ]; then
    cp neofetch/frieren/* ~/.config/neofetch
elif [ $theme -eq 6 ]; then
    cp neofetch/ninomae/* ~/.config/neofetch
else
    echo "No such theme"
fi

# Kitty & Nano Configs

cp kitty/kitty.conf ~/.config/kitty/kitty.conf
cp nanorc ~/.zshrc

#Zsh/OMZ Configs

read -p "Copy ZSH configs? (y/n): " zshconf
case $zshconf in
y|Y )
    echo "Testing if OMZ is installed"
    IsOMZInstalled=~/.oh-my-zsh/oh-my-zsh.sh
    if test -f "$IsOMZInstalled"; then
        echo "OMZ is installed"
        $omzInstalled true
    else
        echo "omz is not installed"
        $omzInstalled false
        exit
    fi
    ;;
n|N )
    echo "Quitting..."
    exit;;
* )
    echo invaild response;
    exit 1;;
esac

echo "Copying theme files into ~/.oh-my-zsh/custom/themes/"
if [ $theme -eq 1 ]; then
    cp omz/themes/red-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
elif [ $theme -eq 2 ]; then
    cp omz/themes/purple-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
elif [ $theme -eq 3 ]; then
    cp omz/themes/red-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
elif [ $theme -eq 4 ]; then
    cp omz/themes/navia-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
elif [ $theme -eq 5 ]; then
    cp omz/themes/yellow-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
elif [ $theme -eq 6 ]; then
    cp omz/themes/purple-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
fi

echo "Copying zshrc file"
cp ~/.zshrc ~/.zshrc.before-d1bg-dots.bak
cp zshrc ~/.zshrc


echo "Copying omz plugins"
cp omz/plugins/plugins.zip ~/.oh-my-zsh/custom/plugins/
cd ~/.oh-my-zsh/custom/plugins/
unzip -qq plugins.zip
fast-theme zdharma
rm plugins.zip

