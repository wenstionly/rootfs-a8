#!/bin/sh

cd /etc/sysconfig/network-scripts
. ./network-functions

[ -f ../network ] && . ../network

set_hostname $HOSTNAME

