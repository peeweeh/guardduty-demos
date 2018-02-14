#!/bin/bash
echo "Bitcon Query"
filename='./fake/bitcoin.txt'
filelines=`cat $filename`
echo Start
for btc in $filelines ; do
        curl -s $btc >> /var/log/btc &
        echo "curl -s $btc >> /var/log/btc &"
done
