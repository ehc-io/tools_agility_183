#!/bin/bash
SECONDS=0
while true; do  
   for i in welcome.php headers.php bigtext.html httprequest.php badlinks.html ; do
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/$i
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/$i
    done     
    for i in F5_building.jpg bigip4200.jpg viprion2400.jpg viprion4800.jpg ; do
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/images/$i
      curl -s -m 1 -o /dev/null -w "$i\tstatus: %{http_code}\tbytes: %{size_download}\ttime: %{time_total}\n" server1.f5demo.com/images/$i
    done
sleep 1
clear
echo
# echo "Baselining for L7 BDOS on server server1.f5demo.com"
echo
done