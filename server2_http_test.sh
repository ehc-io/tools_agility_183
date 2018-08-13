#!/bin/bash
SECONDS=0
while true; do  
   for i in welcome.php bigtext.html httprequest.php ; do
      curl -k -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" https://server2.f5demo.com/$i
    done     
sleep 1
clear
echo
# echo "Testing https://server2.f5demo.com"
echo
done