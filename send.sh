#!/bin/bash
cd /home/pi/ufo_bcn

echo Enable audio
sudo modprobe snd-bcm2835

echo Redirect audio to GPIO ...
gpio mode 1 alt5

echo Set SSTV volume ...
amixer set PCM -- 400

#echo Set DR818 frequency ...
#sudo python set_DR818.py


echo Set up control ...
gpio mode 4 output
gpio write 4 0

while [ 1 ]
do
	for i in {1..23}
	do
		if [ -e ufo2.wav ]
		then
			echo Sending UFO song $i
			gpio write 4 1
			sleep 0.5
			aplay ufo2.wav
			sleep 0.5
			gpio write 4 0
			# rm -f aprs.wav
			sleep 13
		fi
			sleep 1
			echo Not file
	done
	sleep 90
done
