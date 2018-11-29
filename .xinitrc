exec feh --bg-fill /home/jmc/Images/openbsd-wallpaper-1920x1080.jpg &
     setxkbmap br &
     dstat iwm0 | lemonbar -n lemonbar &
     xidle -timeout 300 -program "/usr/X11R6/bin/xlock" &
     cwm
