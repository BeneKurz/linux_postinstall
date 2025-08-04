#!/bin/bash

packet="rustdesk-1.4.1-x86_64.deb"
echo "installiere RustDesk"

/bin/rm -f rustdesk*.deb
wget https://github.com/rustdesk/rustdesk/releases/download/1.4.1/$packet
rustdesk-1.4.1-x86_64.deb

sudo dpkg -i $packet
/bin/rm -f rustdesk*.deb
