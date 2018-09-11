# SSTV_BCN
Small project of SSTV beacon transmited on 2m band sstv pictures and voice anouncements.
Realized on DR818V module and Raspberry Zero.

SSTV pistures prepared separately as a .WAV files

#  Enabling startup script.
1.    sudo cp -f /home/pi/sstv_bcn/sstv.service /lib/systemd/system
2.    sudo systemctl enable sstv.service

#  Starting startup script
3.    sudo systemctl start sstv.service
