#!/bin/bash
grep -i "failed" auth.log | awk '{print $5, $(NF-3)}'| sort | uniq -c | sort -nr | head -n 5 
