#!/bin/bash
echo "$(echo -n "$1" | md5sum| xxd -r -p | base64)">2_hash.txt
