#!/bin/bash

# tmux configuration to run the proxy and miner
tmux \
    new-session -d 'while true ; do python eth-proxy.py ; sleep 1 ; done' \; \
    split-window -p 60 'sleep 3 ; ethminer --farm-recheck 200 -G -F http://127.0.0.1:8080/`hostname`' \; \
    split-window -l 8 \; \
    set-option remain-on-exit on
# Start the proxy in the top pane
# Start the miner in the middle pane
# Start a shell in the bottom pane, just in case 
# Easy restart of any pane if it dies
