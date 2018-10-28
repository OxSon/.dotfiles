#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/nul ; do sleep 1; done
polybar main -q -r &

