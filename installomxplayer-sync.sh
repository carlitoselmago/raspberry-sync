#!/usr/bin/sh
#sudo su
#sudo apt-get remove omxplayer
#rm -rf /usr/bin/omxplayer /usr/bin/omxplayer.bin /usr/lib/omxplayer
sudo apt-get install libpcre3 fonts-freefont-ttf fbset libssh-4 python3-dbus
#wget https://github.com/magdesign/PocketVJ-CP-v3/raw/master/sync/omxplayer_0.3.7-git20170130-62fb580_armhf.deb
#sudo dpkg -i omxplayer_0.3.7~git20170130~62fb580_armhf.deb
#sudo apt install omxplayer
wget -O /usr/bin/omxplayer-sync https://github.com/turingmachine/omxplayer-sync/raw/master/omxplayer-sync
chmod 0755 /usr/bin/omxplayer-sync
