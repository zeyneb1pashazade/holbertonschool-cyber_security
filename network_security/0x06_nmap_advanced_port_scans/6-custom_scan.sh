#!/bin/bash
sudo nmap $1  -p $2 -oN custom_scan.txt --scanflags > /dev/null 2>&1
