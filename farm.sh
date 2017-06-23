#!/bin/sh
#ip=`ifconfig | awk '/inet addr/{print substr($2,6)}'|grep 192`
RIG=`hostname`
PROXY_SRV='127.0.0.1'
#./overclock_gpu.sh
while true; do python eth-proxy.py; sleep 1; done &

sleep 2
ethminer --farm-recheck 200 -G -F http://${PROXY_SRV}:8080/${RIG}
