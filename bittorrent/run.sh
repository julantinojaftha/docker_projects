#!/bin/bash

deluged
pkill deluged
#cp ~/.config/deluge/auth ~/.config/deluge/auth.old
mkdir ~/.config/deluge/
echo "root:toor:10" >> ~/.config/deluge/auth
apt-get install -y deluge-web