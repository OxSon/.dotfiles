#!/usr/bin/env bash

#if a file path was passed, move it to our permanent bg location

if [ $# -ge 1 ]; then
    cp -f $1 ~/.config/wall.png
fi

#generate color schemes
wal -qgc -i $HOME/.config/wall.png
#config qutebrowser
python ~/Scripts/qutebrowser_reload.py &
#config jetbrains IDE's
~/Scripts/intellijPywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config
~/Scripts/intellijPywal/intellijPywalGen.sh ~/.Rider2018.2/config
