cd eth-proxy
python eth-proxy.py &

sleep 3
RIG=`hostname`
ethminer --farm-recheck 200 -G -F http://127.0.0.1:8080/${RIG}
