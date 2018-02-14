#!/bin/bash
echo "Running DNS Scan"
dig -f ./fake/dns.txt >> /var/log/dns &
