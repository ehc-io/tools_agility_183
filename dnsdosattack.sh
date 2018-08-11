#!/bin/bash
echo "Starting DNS baseline with 80 A Queries/s"
echo "dnsperf -s 10.1.20.14 -d dnsbaseline.txt -Q 80 -S 5 -c 100 -l 360"
dnsperf -s 10.1.20.14 -d dnsbaseline.txt -Q 80 -S 5 -c 100 -l 360
