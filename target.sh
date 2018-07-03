#!/bin/bash
# Usage ./target.sh 10.10.10.1/23
#       Generate a list of targets based on IP Range

nmap -sL "$1"  | grep "Nmap scan report" | awk '{print $NF}' | tr -d "()"
