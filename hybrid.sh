#!/bin/bash

curl https://raw.githubusercontent.com/QwertyQwertQwerts/optimus-switch/refs/heads/main/Xsetup.old -o Xsetup.old

sudo rm /etc/X11/xorg.conf
rm ~/.xsessionrc
sudo rm /etc/X11/xorg.conf.d/nvidia_as_primary.conf

sudo cp Xsetup.old /usr/share/sddm/scripts/Xsetup

rm Xsetup.old
