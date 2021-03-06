#!/bin/bash

deluged

while [ ! -f ~/.config/deluge/auth ] ;
do
  echo "Waiting for auth file to be created";
done
sleep 2

pkill deluged

cp ~/.config/deluge/auth ~/.config/deluge/auth.old
echo "root:toor:10" >> ~/.config/deluge/auth

#rm ~/.config/deluge/core.conf


# Starting to install web interface
apt-get install -y deluge-web

while [ ! -f ~/.config/deluge/web.conf ];
do 
   echo "Waiting for web.conf file to be created";	
   deluge-web &
   sleep 2
   pkill deluge-web
done

sleep 2

#pkill deluge-web
python /rs.py ~/.config/deluge

pkill deluged
pkill deluge-web
sleep 2
cp /core.conf ~/.config/deluge/core.conf
#sleep 2
#deluged
#deluge-web &