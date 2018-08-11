#!/bin/bash
# -Q limit the number of queries per second
# -S print qps statistics every N seconds
# -c the number of clients to act as
# -l run for at most this many seconds

echo "Starting DNS attack with 300 A Queries/S"
echo "dnsperf -s 10.1.20.14 -d fqdns.txt -Q 300 -S 5 -c 100 -l 9120"
dnsperf -s 10.1.20.14 -d fqdns.txt -Q 300 -S 5 -c 100 -l 9120
