# Created by Julantino Jaftha

FROM debian:latest

# Add Sources
#RUN apt-get update
#RUN apt-get -y upgrade
RUN echo "deb http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb http://ppa.launchpad.net/jcfp/ppa/ubuntu precise main" | tee -a /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://pool.sks-keyservers.net:11371 --recv-keys 0x98703123E0F52B2BE16D586EF13930B14BB9F05F
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nano
RUN apt-get install -y cron
RUN apt-get install -y wget

# Install UnRar
RUN mkdir ~/unrar-nonfree && cd ~/unrar-nonfree
RUN apt-get -y build-dep unrar-nonfree
RUN apt-get source -b unrar-nonfree
RUN dpkg -i unrar*.deb
RUN cd && rm -r ~/unrar-nonfree

# Install Par2
RUN apt-get install -y par2

# Creating Directories
RUN mkdir /media/USBHDD1
RUN mkdir /media/USBHDD1/shares
RUN mkdir /media/USBHDD1/shares/downloading
RUN mkdir /media/USBHDD1/shares/completed
RUN mkdir /media/USBHDD1/shares/watch
RUN mkdir /media/USBHDD1/shares/watch/nzb-backup
RUN mkdir /media/USBHDD1/shares/scripts
#RUN mkdir /software
RUN mkdir /media/USBHDD1/shares/settings
RUN mkdir /media/USBHDD1/shares/software
RUN mkdir /media/USBHDD1/shares/software/sabnzbd


# Install SABnzbd & python

#RUN apt-get update
RUN apt-get install -y aptitude
RUN aptitude --with-recommends install -y sabnzbdplus

# Install Git
RUN apt-get install -y git

# Clone SABnzbd master
RUN cd /
RUN git clone https://github.com/sabnzbd/sabnzbd.git -b 0.7.x

# Install Cron
#RUN apt-get install -y cron
#RUN (crontab -u root -l; echo "@reboot python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini &" ) | crontab -u root -
#RUN (crontab -u root -l; echo "@reboot /open_sab.sh" ) | crontab -u root -



# Update
#RUN apk add --update python py-pip cherrypy
#RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/$
#RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/$

# Install app dependencies
#RUN pip install cheetah
#RUN pip install cherrypy
#RUN pip install cherrypy

# Bundle app source
ADD https://dl.dropboxusercontent.com/u/12981250/Docker_Projects/UseNetDownloader/sabnzbd/sabnzbd.ini /media/USBHDD1/shares/settings/sabnzbd.ini

# Creating scripts for SABnzbd
RUN echo "#!/bin/bash" >> /open_sab.sh
RUN echo "python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini & " >> /open_sab.sh 
RUN chmod +x /open_sab.sh

# Test run
#RUN python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini &

EXPOSE 8095
#will add a bash script to run SABnzbd.py
#CMD ["python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini"]
#RUN "/open_sab.sh"

RUN echo "python /sabnzbd/SABnzbd.py -f /media/USBHDD1/shares/settings/sabnzbd.ini &" >> /etc/bash.bashrc

