
currTrack="$(cat ~/.config/scripts/media/currListening.txt)"
player="$(playerctl metadata | awk 'NR==1 {print $1}')"

case $1 in
next ) 
    playerctl next
  ;;

prev )
    playerctl previous
  ;;

incVol )
  playerctl volume 0.05+
  ;;

decVol )
  playerctl volume 0.05-
  ;;

play-pause )
  playerctl play-pause
  ;;

launch )
  QT_QPA_PLATFORMTHEME=kde elisa
  ;;
*)
  ;;

esac
  
    if [ "$(playerctl metadata title)" != "$currTrack" ]; then
        playerctl metadata title > ~/.config/scripts/media/currListening.txt
    fi

case $player in
elsa)
    playerctl metadata mpris:artUrl | sed 's/data:image\/png;base64,//' | base64 --decode > ~/.config/scripts/media/currListening.png
;;

firefox)
    sleep 1
    cp "$(playerctl metadata mpris:artUrl | sed 's/file:\/\///')" ~/.config/scripts/media/currListening.png
;;
  
spotify)
    cp ~/.config/scripts/media/nothing.png ~/.config/scripts/media/currListening.png
;;

YoutubeMusic)
    sleep 1
    curl -s "$(playerctl metadata mpris:artUrl)" --output ~/.config/scripts/media/currListening.jpg
    magick ~/.config/scripts/media/currListening.jpg ~/.config/scripts/media/currListening.png
    ;;
*)
;;
esac

dunstify -h string:x-dunst-stack-tag:media -I ~/.config/scripts/media/currListening.png -t 750 "$(playerctl metadata title)" "\n$(playerctl metadata artist)\n\n$(playerctl status) at $(playerctl volume | awk '{print $1 * 100 "%"}') volume"
