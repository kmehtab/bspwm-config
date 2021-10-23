#!/bin/sh

[ "$(pidof -x $0| wc -w)" -gt "2" ] \
	&& xdotool key Escape \
	&& exit 1

<<<<<<< HEAD
dmenu_run -q -name search -class search -b -y 7 -x 180 -i -h 46 -w 500 -sb "#111111" -nb "#dae1ec" -nf "#000000" -fn "BreezeSans-14" -o 0.7
=======
dmenu_run -q -name search -class search -b -y 5 -x 130 -i -h 30 -w 500 -sb "#111111" -nb "#dae1ec" -nf "#000000" -fn "BreezeSans-18" -o 0.7
>>>>>>> 386ac1e7518f3fd19597441b18c6fb887ec97f2c

# Work in progress planning on adding a sort of bang functionality like duckduckgo
# query=$(dmenu -noinput -name search -class search -b -y 7 -x 180 -i -h 46 -w 500 -nb "#dae1ec" -nf "#000000" -fn "BreezeSans-18" -o 0.7)
#[ -z "$query" ] && exit 1

#dunstify "search" "$query"
