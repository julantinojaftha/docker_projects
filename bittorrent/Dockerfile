# Created by Julantino Jaftha

# Bittorrent Project

FROM debian:latest

# Add Sources


# Update
RUN apt-get update
RUN apt-get -y upgrade

# Install Tools
RUN apt-get install -y nano
RUN apt-get install -y deluged
RUN apt-get install -y deluge-console
RUN apt-get install -y python-mako


# Creating Directories
RUN mkdir /media/USBHDD1
RUN mkdir /media/USBHDD1/shares
RUN mkdir /media/USBHDD1/shares/torrents
RUN mkdir /media/USBHDD1/shares/torrents/downloading
RUN mkdir /media/USBHDD1/shares/torrents/completed
RUN mkdir /media/USBHDD1/shares/torrents/watch
RUN mkdir /media/USBHDD1/shares/torrents/torrent-backups
RUN mkdir /media/USBHDD1/shares/torrents/settings


ADD core.conf /core.conf
ADD rs.py /rs.py
ADD run.sh /run.sh
RUN chmod +x /run.sh
RUN chmod +x /rs.py
RUN /run.sh

#RUN deluge-web
#RUN pkill deluge-web



EXPOSE 58846

# Auto Run from bash.bashrc
RUN echo "deluged" >> /etc/bash.bashrc
RUN echo "deluge-web &" >> /etc/bash.bashrc
