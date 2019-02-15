#!/usr/bin/env bash

#if a file path was passed, move it to our permanent bg location

if [ $# -ge 1 ]; then
    FILE= $1
    #move it to permanent wallpaper location
    cp $FILE ~/.config/wall.png
else
    FILE="$(find $HOME/Pictures/Bgs -iname '*.*' | sort -R | tail -n1)"
    #move it to permanent wallpaper location
    cp $FILE ~/.config/wall.png
fi



#generate color scheme using file specified
wal -c
wal -tg -i ~/.config/wall.png --backend schemer2

#update lockscreen
betterlockscreen -u ~/.config/wall.png

#config qutebrowser
python ~/Scripts/qutebrowser_reload.py &
#config jetbrains IDE's
#~/Scripts/intellijPywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config #not currently using this
#~/Scripts/intellijPywal/intellijPywalGen.sh ~/.Rider2018.2/config
