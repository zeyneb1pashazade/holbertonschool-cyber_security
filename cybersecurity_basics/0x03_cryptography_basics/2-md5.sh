#!/bin/bash
echo "$(ecdo -n "$1" | md5sum)">2_hash.txt
