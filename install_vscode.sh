#!/bin/bash

echo "install vscode"

echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg
rm -f microsoft.gpg

sudo  cp vscode_sources_template /etc/apt/sources.list.d/vscode.sources

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

