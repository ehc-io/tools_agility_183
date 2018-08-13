#!/bin/bash
SECONDS=0
while true; do  
   for i in welcome.php images/F5_building.jpg headers.php bigtext.html images/bigip4200.jpg httprequest.php viprion2400.jpg badlinks.html f5logo.gif; do
      curl -s -m 1 -o /dev/null -w "$i.html\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server2.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i.html\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server2.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i.html\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server2.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i.html\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server2.f5demo.com/$i
   done
sleep 1
clear
echo
# echo "Baselining for L7 BDOS. Watch 'admd -s vs./Common/Auction.info -s vs./Common/Auction.sig.health' for status."
echo
done