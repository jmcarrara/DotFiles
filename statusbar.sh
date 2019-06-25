#!/bin/sh
pkill -9 -f i3status
i3status | lemonbar -p -n lemonbar &
