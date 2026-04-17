#!/bin/bash
awk -F '"' '{print $6}' dmesg | sort | uniq -c | sort -nr | head -n 1
