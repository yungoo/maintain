#!/bin/sh /etc/rc.common
# Copyright (C) 2006-2011 OpenWrt.org

start() {
       dnspodsh -e account -p pwd -d 'domain subdomains' &
}

stop() {
        killall dnspodsh
}