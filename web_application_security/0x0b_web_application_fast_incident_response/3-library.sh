#!/bin/bash
awk -F\" '{print $6}' logs.txt | sort | uniq -c | sort -nr | head -n 1 | tr -s ' ' | cut -d ' ' -f3
