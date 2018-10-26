#!/usr/bin/env bash

#if a file path was passed, move it to our permanent bg location

if [ $# -ge 1 ]; then
    cp -f $1 ~/.config/wall.png
    #generate color scheme using file specified
    wal -c
    wal -tg --saturate 1.0 -i ~/.config/wall.png --backend schemer2

else
    #generate color scheme using a random file
    wal -c
    wal -tg --saturate 1.0 -i "$(find $HOME/Pictures/Bgs -iname '*.*' | sort -R | tail -n1)" --backend schemer2
fi

#config qutebrowser
python ~/Scripts/qutebrowser_reload.py &
#config jetbrains IDE's
~/Scripts/intellijPywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config
~/Scripts/intellijPywal/intellijPywalGen.sh ~/.Rider2018.2/config
