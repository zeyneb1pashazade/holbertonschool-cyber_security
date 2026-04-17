#!/bin/bash
grep -i "Accepted" auth.log | grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" | sort | uniq | wc -l
