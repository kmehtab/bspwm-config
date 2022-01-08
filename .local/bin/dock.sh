#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down and bspwm is started
while pgrep -u $UID -x polybar >/dev/null || ! pgrep -u $UID -x bspwm >/dev/null; do sleep 1; done

# Wait until the control has started
polybar level &
polybar control &
polybar workspace &
# pgrep spotify && polybar player &
polybar open &
polybar status &
polybar power &

while [ -z "$(find /tmp -maxdepth 1 -name "polybar*")" ]; do sleep 1; done
polybar-msg cmd hide &
