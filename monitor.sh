#!/bin/sh

lvds() {
    xrandr --output LVDS-1 --auto
    xrandr --output VGA-1 --off
    xrandr --output DP-1 --off
    xrandr --output HDMI-1 --off
    doas sysctl machdep.lidaction=1
}

vga() {
    xrandr --output LVDS-1 --off
    xrandr --output VGA-1 --auto
    xrandr --output DP-1 --off
    xrandr --output HDMI-1 --off
    doas sysctl machdep.lidaction=0
}

hdmi() {
    xrandr --output LVDS-1 --off
    xrandr --output VGA-1 --off
    xrandr --output DP-1 --off
    xrandr --output HDMI-1 --auto
    doas sysctl machdep.lidaction=0
}

set -x
xrandr --query | grep "LVDS-1 connected" && lvds
xrandr --query | grep "VGA-1 connected" && vga 
xrandr --query | grep "HDMI-1 connected" && hdmi

sh ~/.fehbg
