#!/bin/bash
# Usage ./curl-hosts.sh ip.txt
#       Generate a list of hosts based on IP List using curl on port 443
#       Generates file curl.log


#now generate curl.log
for i in $(cat "$1"); do curl -m 1 https://"$i" 2>>curl.log; done


#hostname and IPs
grep -o -P "(?<=subject name ).*" curl.log | awk '{print $1 " " $8}' | tr -d "()'" 
