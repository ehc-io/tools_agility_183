#!/bin/bash

PS5='Please enter your choice: '
options=("Attack start" "Attack end" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Attack start")
            echo "Starting TCP Sweep"
               sleep 2
               i=11
               while [ $i -le 20 ]; do
                  hping3 -q -S --faster --scan 1-1024,known -I eth1:${i} 10.1.20.11 &
                  hping3 -q -S --faster --scan 1-1024,known -I eth1:${i} 10.1.20.12 &
                  hping3 -q -S --faster --scan 1-1024,known -I eth1:${i} 10.1.20.13 &
                  hping3 -q -S --faster --scan 1-1024,known -I eth1:${i} 10.1.20.50 &
                  ((i++))
               done
            ;;
        "Attack end")
            killall hping3
            sleep 2
            echo "Terminated attack"
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

