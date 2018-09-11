# SSTV_BCN
Small project of SSTV beacon transmited on 2m band sstv pictures and voice anouncements.
Realized on DR818V module and Raspberry Zero.

SSTV pistures prepared separately as a .WAV files

echo Enabling startup script.
sudo cp -f sstv_bcn/sstv.service /lib/systemd/system
sudo systemctl enable sstv.service

echo Starting startup script
sudo systemctl start sstv.service
