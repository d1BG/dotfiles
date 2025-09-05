currMon=$(hyprctl activeworkspace | awk '/monitorID/ {print $2}')

if [ $currMon == 1 ]; then 
  hyprctl keyword plugin:hyprexpo:workspace_method first 1
  hyprctl dispatch hyprexpo:expo toggle
elif [ $currMon == 0 ]; then
  hyprctl keyword plugin:hyprexpo:workspace_method first 5
  hyprctl dispatch hyprexpo:expo toggle
else
  dunstify "Error Opening Hyprexpo"
fi
