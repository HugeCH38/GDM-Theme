#!/bin/bash

sudo cp /usr/share/gnome-shell/theme/ubuntu.css /usr/share/gnome-shell/theme/ubuntu.bak

sudo cp -f $(pwd)/ubuntu.css /usr/share/gnome-shell/theme/

cp $(pwd)/SetAsLockScreen ~/.local/share/nautilus/scripts/

sudo chmod +x ~/.local/share/nautilus/scripts/SetAsLockScreen

rm -rf ~/.cache/wallpaper/*

mkdir -p ~/.cache/SetAsWallpaper

sudo cp -f $(pwd)/cosmic-wallpapers.xml /usr/share/gnome-background-properties/

killall -q nautilus

exit
