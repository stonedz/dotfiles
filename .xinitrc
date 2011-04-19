#!/bin/bash



trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --height 10 --transparent true --tint 0x000000 &

exec ck-launch-session xmonad
#exec dbus-launch --exit-with-session ck-launch-session startxfce4
