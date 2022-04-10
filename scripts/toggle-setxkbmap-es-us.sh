#!/bin/sh
seven=`xmodmap -pke | grep "keycode  16" | awk '{print $5}'` 
## If this is the "us" layout
if [ $seven == "ampersand" ]; then
  setxkbmap es
else
  setxkbmap us
fi
