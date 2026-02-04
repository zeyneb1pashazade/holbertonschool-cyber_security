#!/bin/bash
echo "$(echo -n "$1" | openssl md5 -binary | base64)">2_hash.txt
