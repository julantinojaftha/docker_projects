# Created by Julantino Jaftha
# Sonarr



FROM debian:latest

# Add Source
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC
RUN echo "deb http://apt.sonarr.tv/ master main" | tee /etc/apt/sources.list.d/sonarr.list

# UPDATE AND INSTALL SONARR
RUN apt-get update
RUN apt-get install -y nzbdrone 

#EXPOSE 8989