#!/bin/bash

echo "Installiere ssh"
sudo apt-get install openssh-server -y
sudo systemctl enable ssh
sudo systemctl enable ssh

sudo service ssh status

echo "Öffne FIrewall ssh"
sudo ufw enable
sudo ufw allow 22/tcp
sudo ufw status verbose 

