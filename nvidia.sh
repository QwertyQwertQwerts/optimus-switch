#!/bin/bash

sudo touch /etc/X11/xorg.conf
touch ~/.xsessionrc
sudo touch /etc/X11/xorg.conf.d/nvidia_as_primary.conf

curl https://raw.githubusercontent.com/QwertyQwertQwerts/optimus-switch/refs/heads/main/xorg.conf -o xorg.conf
curl https://raw.githubusercontent.com/QwertyQwertQwerts/optimus-switch/refs/heads/main/xsessionrc -o xsessionrc
curl https://raw.githubusercontent.com/QwertyQwertQwerts/optimus-switch/refs/heads/main/Xsetup -o Xsetup
curl https://raw.githubusercontent.com/QwertyQwertQwerts/optimus-switch/refs/heads/main/nvidia_as_primary.conf -o nvidia_as_primary.conf

sudo cp xorg.conf /etc/X11/xorg.conf
cp xsessionrc ~/.xsessionrc
sudo cp Xsetup /usr/share/sddm/scripts/Xsetup
sudo cp nvidia_as_primary.conf /etc/X11/xorg.conf.d/nvidia_as_primary.conf

rm xorg.conf
rm xsessionrc
rm Xsetup
rm nvidia_as_primary.conf

chmod +x ~/.xsessionrc
sudo chmod +x /usr/share/sddm/scripts/Xsetup
