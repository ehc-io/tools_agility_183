#!/bin/bash
./icmpflood-m.sh &
./oversized-syn-m.sh &
./pushack-m.sh &
echo "Waiting for attacks to complete...."
sleep 15
