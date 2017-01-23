#!/bin/bash
 
# Dependencies:
# imagemagick
 
IMAGE=/tmp/i3lock.png
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
SCREEN_RESOLUTION=$(xrandr | xrandr | grep -E -o '\w*\+0\+0' | cut -d '+' -f1)

convert $CURRENT_DIR/background.png -resize $SCREEN_RESOLUTION $IMAGE
i3lock -f -i $IMAGE --color 0001AB
rm $IMAGE
