# UFO_BCN
Small project of sound beacon transmited on QO-100 satelite.
Realized on Raspberry Pi.

UFO sound message prepared separately as a .WAV files

#  Enabling startup script.
1.    sudo cp -f /home/pi/ufo_bcn/sstv.service /lib/systemd/system
2.    sudo systemctl enable sstv.service

#  Starting startup script
3.    sudo systemctl start sstv.service
