#!/bin/bash


echo "What do you want to use? Fastfetch or Neofetch?"
echo "(note that fastfetch only has 1 theme and neofetch has 9)"
read -p "Choose (N | F): " fetch

# Themes
case $fetch in 
  N | neofetch) 
    echo "Themes:"
    echo "[1] Nakiri Ayame      (Hololive)"
    echo "[2] Raiden Shogun     (Genshin Impact)"
    echo "[3] Hutao             (Genshin Impact)"
    echo "[4] Navia             (Genshin Impact)"
    echo "[5] Frieren           (Sousou no Frieren)"
    echo "[6] Ninomae Ina'nis   (Hololive)"
    echo "[7] Xianyun           (Genshin Impact)"
    echo "[8] Hoshimachi Suisei (Hololive)"
    echo "[9] Uruha Rushia      (Hololive)"

    read -p "Choose a theme: " theme
    ;;
  F | fastfetch)
    echo "You will be using Nakiri Ayame Theme (Hololive)"
    export theme="fastfetch"
    ;;
  * )
    echo "Invalid response";
    exit 1;;
esac

# MangoHud

echo "Mangohud config: big includes all cores and other details, small does not"
read -p "Mangohud Config (big/small):" mangohudconf
mkdir ~/.config/MangoHud

# Copy-Paste
    # Mangohud
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

echo "Copying Hyprland/Waybar/Rofi/Foot/Btop configs"
cp -r hypr ~/.config/.
cp -r waybar ~/.config/.
cp -r rofi ~/.config/.
cp -r btop ~/.config/. 
cp -r foot ~/.config/. 

echo "Copying Fetch config for $fetch"

case $theme in
fastfetch ) 
  cp -r fastfetch ~/.config/.
  ;;
1|3 )
  mkdir ~/.config/neofetch
  cp neofetch/nakiri/* ~/.config/neofetch/
  ;;

2 )
  mkdir ~/.config/neofetch
  cp neofetch/raiden/* ~/.config/neofetch/
  ;;

4 )
  mkdir ~/.config/neofetch
  cp neofetch/navia/* ~/.config/neofetch/
  ;;

5 )
  mkdir ~/.config/neofetch
  cp neofetch/frieren/* ~/.config/neofetch/
  ;;

6 )
  mkdir ~/.config/neofetch
  cp neofetch/ninomae/* ~/.config/neofetch/
  ;;

7 ) 
  mkdir ~/,config/neofetch 
  cp neofetch/xianyun/* ~/.config/neofetch/
  ;;

8 )
  mkdir ~/,config/neofetch 
  cp neofetch/suisei/* ~/.config/neofetch/
  ;;

9 )
  mkdir ~/,config/neofetch 
  cp neofetch/rushia/* ~/.config/neofetch/
  ;;

* )
  echo "no such theme or invalid response"
  exit 1;;
esac 

# Zsh/OMZ Configs

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

echo "Copying theme files into/.oh-my-zsh/custom/themes/"

case $theme in
1|3|fastfetch )
  cp omz/themes/red-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

2 )
  cp omz/themes/purple-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

4 )
  cp omz/themes/navia-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

5 )
  cp omz/themes/yellow-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

6 )
  cp omz/themes/ina-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

7 )
  cp omz/themes/xianyun-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

8 )
  cp omz/themes/suisei-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

9 )
  cp omz/themes/rushia-fox.zsh-theme ~/.oh-my-zsh/custom/themes/custom-fox.zsh-theme
  ;;

* )
  echo invaild response;
  exit 1;;
esac


echo "Copying zshrc file"
cp ~/.zshrc ~/.zshrc.before-d1bg-dots
cp zshrc ~/.zshrc


echo "Copying omz plugins"
cp omz/plugins/plugins.zip ~/.oh-my-zsh/custom/plugins/
cd ~/.oh-my-zsh/custom/plugins/
unzip -qq plugins.zip
rm plugins.zip

