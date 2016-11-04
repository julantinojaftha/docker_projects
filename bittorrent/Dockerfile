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


ADD core.conf /core.conf
ADD create_directories.sh /create_directories.sh
ADD rs.py /rs.py
ADD run.sh /run.sh
RUN chmod +x create_directories.sh
RUN /create_directories.sh
RUN chmod +x /run.sh
RUN chmod +x /rs.py
RUN /run.sh


# Auto Run from bash.bashrc
RUN echo "/create_directories.sh" >> /etc/bash.bashrc
RUN echo "deluged" >> /etc/bash.bashrc
RUN echo "deluge-web &" >> /etc/bash.bashrc
