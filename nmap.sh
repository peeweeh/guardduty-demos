#!/bin/bash
echo "Running Port Scans"
sh ip-generator.sh
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
        sudo nmap -v -A $ip >> /var/log/nmap &
        echo "sudo nmap -A $ip >> /var/log/nmap &"
done