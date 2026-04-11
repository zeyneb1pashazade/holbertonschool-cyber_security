#!/bin/bash
awk '{print $7}' logs.txt | sort | uniq -c | sort -nr | tr  -s ' '| cut -d ' ' -f3
