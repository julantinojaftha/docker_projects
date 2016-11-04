#!/bin/bash


if [ ! -d /media/USBHDD1 ] ; then 
   mkdir /media/USBHDD1
fi

if [ ! -d /media/USBHDD1/shares ] ; then
   mkdir /media/USBHDD1/shares
fi

if [ ! -d /media/USBHDD1/shares/torrents ] ; then
   mkdir /media/USBHDD1/shares/torrents
fi

if [ ! -d /media/USBHDD1/shares/torrents/downloading ] ; then
   mkdir /media/USBHDD1/shares/torrents/downloading
fi

if [ ! -d /media/USBHDD1/shares/torrents/completed ] ; then
   mkdir /media/USBHDD1/shares/torrents/completed
fi

if [ ! -d /media/USBHDD1/shares/torrents/watch ] ; then
   mkdir /media/USBHDD1/shares/torrents/watch
fi

if [ ! -d /media/USBHDD1/shares/torrents/torrent-backups ] ; then
   mkdir /media/USBHDD1/shares/torrents/torrent-backups
fi

if [ ! -d /media/USBHDD1/shares/torrents/settings ] ; then
   mkdir /media/USBHDD1/shares/torrents/settings
fi