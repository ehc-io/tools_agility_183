#!/bin/bash
# -Q limit the number of queries per second
# -S print qps statistics every N seconds
# -c the number of clients to act as
# -l run for at most this many seconds

echo "Starting DNS attack with 300 A Queries/S"
echo "dnsperf -s 10.1.20.14 -d fqdns.txt -Q 300 -S 5 -c 100 -l 120"
docker run -v ~/tools_agility_183:/root/tools_agility_183 -it mrlesmithjr/dnsperf \
    	dnsperf -s 10.1.20.14 -d /root/tools_agility_183/fqdns.txt -Q 300 -S 5 -c 100 -l 120
