#!/bin/bash


#Neofetch Configs


echo "Neofetch themes:"
echo "[1] Nakiri"
echo "[2] Raiden Shogun"

read -p "Choose a theme: " neotheme

echo "Copying theme files into ~/.config/neofetch"
if [ $neotheme -eq 1 ]; then
    cp neofetch/nakiri/* ~/.config/neofetch
elif [ $neotheme -eq 2 ]; then
    cp neofetch/raiden/* ~/.config/neofetch
else
    echo "No such theme"
fi

# Kitty Configs

cp kitty/kitty.conf ~/.config/kitty/kitty.conf

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
rm ~/.oh-my-zsh/themes/fox.zsh-theme
if [ $neotheme -eq 1 ]; then
    cp omz/themes/red-fox.zsh-theme ~/.oh-my-zsh/custom/themes/fox.zsh-theme
elif [ $neotheme -eq 2 ]; then
    cp omz/themes/purple-fox.zsh-theme ~/.oh-my-zsh/custom/themes/fox.zsh-theme
fi

echo "Copying zshrc file"
cp zshrc ~/.zshrc

echo "Copying plugins"
cp omz/plugins/plugins.zip ~/.oh-my-zsh/custom/plugins/
cd ~/.oh-my-zsh/custom/plugins/
unzip -qq plugins.zip
rm plugins.zip

