#!/bin/bash

echo "Installiere vpn"

sudo apt install strongswan strongswan-pki libcharon-extra-plugins network-manager-l2tp network-manager-l2tp-gnome


cd /
cpio -ivBdum < /home/bene/asego_vpn.cpio

sudo ipsec reload
sudo ipsec restart

sudo systemctl enable ipsec
sudo systemctl start ipsec

