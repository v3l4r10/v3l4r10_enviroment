#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Right bar
polybar primary -c ~/.config/polybar/current.ini &
polybar ram -c ~/.config/polybar/current.ini &
polybar bluetooth -c ~/.config/polybar/current.ini &
polybar volume -c ~/.config/polybar/current.ini &
polybar wifi -c ~/.config/polybar/current.ini &
polybar battery -c ~/.config/polybar/current.ini &
polybar files -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &

## Left bar
polybar date -c ~/.config/polybar/current.ini &
#openbox
polybar openbox-bar -c ~/.config/polybar/current.ini &
