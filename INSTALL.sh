#!/bin/sh -e

# RUN AS SU
#install usbmount (automount usb drives)
sudo sed -i "s/\(PrivateMounts *= *\).*/\1no/" /lib/systemd/system/systemd-udevd.service
apt install usbmount

# Enable HDMI hotplug
sudo sed -i '/^#hdmi_force_hotplug/c\hdmi_force_hotplug=1' /boot/config.txt

# Set resolution to 1920x1080
sudo sed -i '/^#hdmi_group/c\hdmi_group=1' /boot/config.txt
sudo sed -i '/^#hdmi_mode/c\hdmi_mode=16' /boot/config.txt

#copy rc.local
cp etc/rc.local /etc/rc.local
