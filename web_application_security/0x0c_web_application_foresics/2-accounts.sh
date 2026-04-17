#!/bin/bash
tail -n 1000 auth.log |grep -E "Failed password|Accepted password|session opened" | awk '{print $1, $2, $3, $9}' | uniq -c  
