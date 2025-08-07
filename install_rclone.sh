#!/bin/bash

echo "Installiere rclone"
#sudo apt install rclone rclone-browser

RC_DEB="rcloneui.deb"
wget -qO- https://get.rcloneui.com/linux-deb > $RC_DEB
sudo dpkg -i $RC_DEB
/bin/rm -f $RC_DEB
