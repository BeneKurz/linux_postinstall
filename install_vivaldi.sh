#!/bin/bash

echo "Installiere vivaldi"

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vivaldi.gpg

echo 'deb https://repo.vivaldi.com/archive/deb/ stable main' | sudo tee /etc/apt/sources.list.d/vivaldi.list

sudo apt update

sudo apt install vivaldi-stable


