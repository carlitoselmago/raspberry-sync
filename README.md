# raspberrypi-synch

Autoplays videos in sync with other raspberrys on the same network, works with direct ethernet conexion between 2 raspberrys or more in a router/hub
Use ethernet cables to ensure stability

If the system detects any external drives connected on boot it will copy the first .mp4 file to the home directory and use it for playing as video. (It only needs to be done once or everytime you need to replace the video file to be played)
Otherwise just copy your video file in home folder as "video.mp4"

default config is slave player mode, edit rc.local to make player as the master player

## Requirements
- Legacy version of raspbian (debian buster)
- omxplayer-sync
- usbmount

## Install Instructions
- Install legacy raspbian version
- execute sudo sh installomxplayer-sync.sh for slave ethernet version and installomxplayer-sync-wifi.sh for wifi slave version
- execute sudo sh INSTALL.sh

- Modify master player with attributes, see etc/rc.local for more info, default is slave

### Notes
- Add a file named "ssh" in /boot folder to activate ssh service (not active by default)
