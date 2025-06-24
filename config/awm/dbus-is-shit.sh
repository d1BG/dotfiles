#!/bin/bash
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=awm
systemctl restart --user xdg-desktop-portal xdg-desktop-portal-wlr
systemctl stop --user xdg-desktop-portal-hyprland
