#!/bin/bash
echo "---------- Running Port Scans ---------- "
filename='/tools/ips.txt'
filelines=$(cat $filename)
echo 'Start'
for ip in $filelines ; do
        sudo nmap -v -A $ip >> /var/log/nmap &
        echo "sudo nmap -v -A $ip >> /var/log/nmap &"
done