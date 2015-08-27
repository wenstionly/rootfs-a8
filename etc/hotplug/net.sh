#!/bin/sh
#ACTION=add
#HOME=/
#SEQNUM=1316
#IFINDEX=10
#MDEV=wlan0
#DEVPATH=/devices/platform/s5pv210-ehci/usb1/1-1/1-1.4/1-1.4:1.0/net/wlan0
#SUBSYSTEM=net
#PATH=/sbin:/bin:/usr/sbin:/usr/bin
#INTERFACE=wlan0
#PWD=/dev

[ "$INTERFACE" != "wlan0" ] && exit 0
if [ "$ACTION" = "add" ]; then
    # a new wireless card has been inserted
    service wpa_supplicant restart
elif [ "$ACTION" = "remove" ]; then
    # wireless card has been removed
    service wpa_supplicant stop
fi
