#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession
#xrandr -s 640x480 -r 60

xrdb -merge ~/.Xresources

nitrogen --restore & slstatus & /usr/local/bin/dwm

