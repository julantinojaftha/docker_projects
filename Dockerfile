# Created by Julantino jaftha

FROM debian:latest

# Add Sources
RUN apt-get update
RUN apt-get -y upgrade
RUN echo "deb http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://httpredir.debian.org/debian jessie main contrib non-free" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade

# Install UnRar
RUN mkdir ~/unrar-nonfree && cd ~/unrar-nonfree
RUN apt-get -y build-dep unrar-nonfree
RUN apt-get source -b unrar-nonfree
RUN dpkg -i unrar*.deb
RUN cd && rm -r ~/unrar-nonfree

# Creating Directories
RUN mkdir /media/USBHDD1
RUN mkdir /media/USBHDD1/shares
RUN mkdir /media/USBHDD1/shares/downloading
RUN mkdir /media/USBHDD1/shares/completed
RUN mkdir /media/USBHDD1/shares/watch
RUN mkdir /media/USBHDD1/shares/watch/nzb-backup
RUN mkdir /media/USBHDD1/shares/scripts

# Update
#RUN apk add --update python py-pip cherrypy
#RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/$
#RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/$

# Install app dependencies
#RUN pip install cheetah
#RUN pip install cherrypy
#RUN pip install cherrypy

# Bundle app source
#COPY /src/SABnzbd.py /src/SABnzbd.py

#EXPOSE  8090
#CMD ["python", "/src/SABnzbd.py"]

