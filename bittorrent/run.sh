#!/bin/bash

deluged

while [ ! -f ~/.config/deluge/auth ] ;
do
  echo "Waiting for auth file to be created";
done

pkill deluged

cp ~/.config/deluge/auth ~/.config/deluge/auth.old
echo "root:toor:10" >> ~/.config/deluge/auth

cp /core.conf ~/.config/deluge/core.conf

#apt-get install -y deluge-web

