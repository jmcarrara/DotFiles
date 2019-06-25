exec setxkbmap br &
xidle -timeout 300 -program "/usr/X11R6/bin/xlock" &
sh /home/jmc/battcheck.sh &
sh /home/jmc/monitor.sh &
i3status | lemonbar -n lemonbar &
cwm
