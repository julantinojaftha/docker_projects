#!/bin/bash


if [ ! -d /media/USBHDD1 ] ; then 
   mkdir /media/USBHDD1
fi

if [ ! -d /media/USBHDD1/shares ] ; then
   mkdir /media/USBHDD1/shares
fi

if [ ! -d /media/USBHDD1/shares/SABnzbd/ ] ; then
	mkdir /media/USBHDD1/shares/SABnzbd/
fi


if [ ! -d /media/USBHDD1/shares/SABnzbd/downloading ] ; then
    mkdir /media/USBHDD1/shares/SABnzbd/downloading
fi


if [ ! -d /media/USBHDD1/shares/SABnzbd/completed ] ; then
    mkdir /media/USBHDD1/shares/SABnzbd/completed
fi


if [ ! -d /media/USBHDD1/shares/SABnzbd/watch ] ; then
    mkdir /media/USBHDD1/shares/SABnzbd/watch
fi


if [ ! -d /media/USBHDD1/shares/SABnzbd/watch/nzb-backup ] ; then
    mkdir /media/USBHDD1/shares/SABnzbd/watch/nzb-backup
fi


if [ ! -d /media/USBHDD1/shares/SABnzbd/scripts ] ; then
    mkdir /media/USBHDD1/shares/SABnzbd/scripts
fi

if [ ! -d /media/USBHDD1/shares/software ] ; then
    mkdir /media/USBHDD1/shares/software
fi

if [ ! -d /media/USBHDD1/shares/SABnzbd/settings ] ; then
   mkdir /media/USBHDD1/shares/SABnzbd/settings
fi

if [ ! -d /media/USBHDD1/shares/software/sabnzbd ] ; then
    mkdir /media/USBHDD1/shares/software/sabnzbd
fi

