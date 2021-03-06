#!/bin/bash
echo "Starting DNS baseline with 80 A Queries/s"
echo "dnsperf -s 10.1.20.14 -d dnsbaseline.txt -Q 80 -S 5 -c 100 -l 360"
docker run -v ~/tools_agility_183:/root/tools_agility_183 -it mrlesmithjr/dnsperf \
    	dnsperf -s 10.1.20.14 -d /root/tools_agility_183/dnsbaseline.txt -Q 80 -S 5 -c 100 -l 360
