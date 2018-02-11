#!/bin/bash
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
    	sudo nmap -sT $ip >> /var/log/namp &
	echo $ip
done
