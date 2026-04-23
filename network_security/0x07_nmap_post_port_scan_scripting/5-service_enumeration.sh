#!/bin/bash
nmap -O -sV --traceroute -sC --script=banner,ssl-enum-ciphers -oN service_enumeration_results.txt "$1" 
