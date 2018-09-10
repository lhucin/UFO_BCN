#!/bin/bash
cd /home/pi/pits/tracker

echo Enable audio
sudo modprobe snd-bcm2835

echo Redirect audio to GPIO ...
gpio mode 1 alt5

echo Set APRS volume ...
amixer set PCM -- 400

echo Set up DR818 control ...
gpio mode 4 output
gpio write 4 0

while [ 1 ]
do
	if [ -e sstv.wav ]
	then
		echo Sending SSTV Picture
		gpio write 4 1
		sleep 0.5
		aplay sstv.wav
		sleep 0.2
		gpio write 4 0
		rm -f aprs.wav
		sleep 20
	fi
	sleep 1
done