#!/bin/bash
	echo "Starting DNS baseline with 50 A Queries/S"
	echo "dnsperf -s 10.1.20.14 -d dnsbaseline.txt -Q 50 -S 5 -c 100 -l 30"
	dnsperf -s 10.1.20.14 -d dnsbaseline.txt -Q 50 -S 5 -c 100 -l 30