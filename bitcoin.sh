#!/bin/bash
echo "Bitcon Query"
yum install -y telnet
filename='./fake/bitcoin.txt'
filelines=`cat $filename`
echo Start
for btc in $filelines ; do
        curl -s $btc >> /var/log/btc &
        echo "curl -s $btc >> /var/log/btc &"
done
telnet mine.p2pool.com 9332 >> /var/log/btc &
telnet btg.pool.minergate.com 3257 >> /var/log/btc &