#!/usr/bin/env bash

# shell escape nightmare
selected_entry="$(cliphist list -max-items 10000 | fzf \
  --ignore-case \
  --no-multi \
  --no-clear \
  --with-nth 2 \
  --delimiter $'\t' \
  --scheme history \
  --bind "ctrl-o:become(niri msg action spawn -- \"sh\" \"-c\" \"~/.config/clipboard/opener.sh {1}\")" \
  --preview 'exec ~/.config/scripts/clipboard/preview.sh {}')"

if [ -n "$selected_entry" ]; then
  echo -n "$selected_entry" | cliphist decode | wl-copy
fi

