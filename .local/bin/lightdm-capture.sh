#!/bin/bash
 sleep 10s; DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 xwd -root -out ~/loginscreen.xwd; convert ~/loginscreen.xwd ~/loginscreen.png
