#!/bin/bash
# Usage ./nmap-hosts.sh 10.10.10.1/23
#       Generate a list of hosts based on IP Range
#       Creates a file hosts-timestamp.txt

# -sn was known as -sP in previous releases

FILE=hosts-$(date +%s).txt
sudo nmap -sn "$1"  -Pn > $FILE 
grep -o '.*)$' $FILE | grep -o -P "(?<=scan report for ).*" | awk '{print $1, $2}' | tr -d "()'" 
