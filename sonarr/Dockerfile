# Created by Julantino Jaftha
# Sonarr



FROM debian:latest

# Add Source
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC
RUN echo "deb http://apt.sonarr.tv/ master main" | tee /etc/apt/sources.list.d/sonarr.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list

RUN echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list

RUN echo "deb http://download.mono-project.com/repo/debian wheezy-libjpeg62-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list


# UPDATE AND INSTALL SONARR
RUN apt-get update
RUN apt-get install -y mono-devel
RUN apt-get install -y nzbdrone
RUN apt-get install -y nano

# Creating Directories
RUN mkdir /media/USBHDD1
RUN mkdir /media/USBHDD1/shares
RUN mkdir /media/USBHDD1/shares/Sonarr
RUN mkdir /media/USBHDD1/shares/settings
RUN mkdir /media/USBHDD1/shares/datadir


# Add autostart service
ADD nzbdrone.conf /etc/init.d/nzbdrone.conf

RUN chmod +x /etc/init.d/nzbdrone.conf
#RUN ln -s /usr/lib/insserv/insserv /sbin/insserv
#RUN insserv -v nzbdrone.conf
#RUN update-rc.d nzbdrone.conf defaults
#RUN useradd nzbdrone
#RUN service nzbdrone.conf start
#RUN /etc/init.d/nzbdrone.conf start


EXPOSE 8989
# mono --debug /opt/NzbDrone/NzbDrone.exe

RUN echo "/etc/init.d/nzbdrone.conf start" >> /etc/bash.bashrc




