#!/bin/bash
awk -F '"' '{print $6}' | sort | uniq -c | sort -nr | head -n 1
