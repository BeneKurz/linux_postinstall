#!/bin/bash
echo "installiere x11vnc ..."
sudo apt-get -y remove vino
sudo apt-get -y install x11vnc
sudo mkdir /etc/x11vnc

sudo ufw allow 5900

sudo x11vnc --storepasswd /etc/x11vnc/vncpwd

sudo mv x11_service_template  /lib/systemd/system/x11vnc.service

sudo systemctl daemon-reload

sudo systemctl enable x11vnc.service

sudo systemctl start x11vnc.service


