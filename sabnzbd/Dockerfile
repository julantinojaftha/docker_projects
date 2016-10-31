# Created by Julantino Jaftha

FROM debian:latest

# Add Sources
RUN echo "deb http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb http://ppa.launchpad.net/jcfp/ppa/ubuntu precise main" | tee -a /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://pool.sks-keyservers.net:11371 --recv-keys 0x98703123E0F52B2BE16D586EF13930B14BB9F05F

# Update
RUN apt-get update
RUN apt-get -y upgrade

# Install Tools
RUN apt-get install -y nano
RUN apt-get install -y cron
RUN apt-get install -y wget
RUN apt-get install -y par2
RUN apt-get install -y aptitude
RUN aptitude --with-recommends install -y sabnzbdplus
RUN apt-get install -y git

# Install UnRar
RUN mkdir ~/unrar-nonfree && cd ~/unrar-nonfree
RUN apt-get -y build-dep unrar-nonfree
RUN apt-get source -b unrar-nonfree
RUN dpkg -i unrar*.deb
RUN cd && rm -r ~/unrar-nonfree

# Creating Directories
RUN mkdir /media/USBHDD1
RUN mkdir /media/USBHDD1/shares
RUN mkdir /media/USBHDD1/shares/SABnzbd/
RUN mkdir /media/USBHDD1/shares/SABnzbd/downloading
RUN mkdir /media/USBHDD1/shares/SABnzbd/completed
RUN mkdir /media/USBHDD1/shares/SABnzbd/watch
RUN mkdir /media/USBHDD1/shares/SABnzbd/watch/nzb-backup
RUN mkdir /media/USBHDD1/shares/SABnzbd/scripts
RUN mkdir /media/USBHDD1/shares/SABnzbd/settings
RUN mkdir /media/USBHDD1/shares/software
RUN mkdir /media/USBHDD1/shares/software/sabnzbd

# Clone SABnzbd master
RUN cd /
RUN git clone https://github.com/sabnzbd/sabnzbd.git -b 0.7.x

# Add to Cron
#RUN (crontab -u root -l; echo "@reboot python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini &" ) | crontab -u root -

# Generic app settings
# settings for sabnzbd
ADD https://dl.dropboxusercontent.com/u/12981250/Docker_Projects/UseNetDownloader/sabnzbd/sabnzbd.ini /sabnzbd/sabnzbd.ini

# Creating scripts for SABnzbd
#RUN echo "#!/bin/bash" >> /open_sab.sh
#RUN echo "python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini & " >> /open_sab.sh 
#RUN chmod +x /open_sab.sh

EXPOSE 8095
#CMD ["python /sabnzbd/SABnzbd.py -f /sabnzbd/sabnzbd.ini"]

# Auto Run from bash.bashrc
RUN echo "python /sabnzbd/SABnzbd.py -f /sabnzbd/sabnzbd.ini &" >> /etc/bash.bashrc
