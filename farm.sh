#!/bin/sh
#ip=`ifconfig | awk '/inet addr/{print substr($2,6)}'|grep 192`
RIG=`hostname`

#while true; do python eth-proxy.py; sleep 1; done &

sleep 2
ethminer --farm-recheck 200 -G -F http://127.0.0.1:8080/${RIG}
