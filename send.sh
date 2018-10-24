#!/bin/bash
cd /home/pi/sstv

echo Enable audio
sudo modprobe snd-bcm2835

echo Redirect audio to GPIO ...
gpio mode 1 alt5

echo Set SSTV volume ...
amixer set PCM -- 400

echo Set DR818 frequency ...
sudo python set_DR818.py


echo Set up DR818 control ...
gpio mode 4 output
gpio write 4 0

while [ 1 ]
do
	for i in {1..9}
	do
		if [ -e sstv_$i.wav ]
		then
			echo Sending SSTV Picture $i
			gpio write 4 1
			sleep 0.5
			aplay sstv_$i.wav
			sleep 0.2
			gpio write 4 0
			# rm -f aprs.wav
			sleep 15
		fi
			sleep 1
			echo Not file
	done
	sleep 90
done
