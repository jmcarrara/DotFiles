#!/bin/sh

while true;
do

	battlvl="$(apm -l)"
	if [ $battlvl -lt 16 ] && [ `apm -a` = 0 ]; then
	   	notify-send -t 5000 -u critical "  Bateria Nível Crítico: $(apm -l)%   Conecte o carregador" 
	fi

	if [ $battlvl -lt 6 ] && [ `apm -a` = 0 ]; then
			xlock
			ZZZ
	fi
	sleep 20 
done
