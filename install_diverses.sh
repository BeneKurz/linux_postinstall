#!/bin/bash
echo "installieren diverses ..."
sudo apt install yadm tmux htop powertop telegram
sudo apt install keepassxc
sudo apt install strongswan strongswan-pki libcharon-extra-plugins
sudo apt install xrdp
sudo ufw allow 3389/tcp
