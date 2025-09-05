case $1 in
  up)
brightnessctl set 5%+
dunstify -h string:x-dunst-stack-tag:brightness "Brightness is at:" "$(brightnessctl | awk -F '[()]' '/Current brightness/ {print $2}')"
;;
  down)
brightnessctl set 5%-
dunstify -h string:x-dunst-stack-tag:brightness "Brightness is at:" "$(brightnessctl | awk -F '[()]' '/Current brightness/ {print $2}')"
;;
  *)
    dunstify "Invalid argument"
;;
esac
