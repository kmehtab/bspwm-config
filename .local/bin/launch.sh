
#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch all bars :D
#polybar -c $HOME/.config/polybar/config.ini level &
polybar -c $HOME/.config/polybar/config mainbar-bspwm &

#while [ -z "$(find /tmp -maxdepth 1 -name "polybar*")" ]; do sleep 1; done
#polybar-msg cmd hide &
