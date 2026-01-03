#!/bin/bash

echo "Install Samba ..."
sudo apt install samba -y
sudo systemctl stop smbd

echo " /bin/cp smb_service_template /etc/samba/smb.conf <ENTER>"
read
sudo /bin/mv /etc/samba/smb.conf /etc/samba/smb.conf.orig
sudo /bin/cp smb_service_template /etc/samba/smb.conf 

sudo systemctl enable smbd
sudo systemctl start smbd

sudo ufw allow Samba
