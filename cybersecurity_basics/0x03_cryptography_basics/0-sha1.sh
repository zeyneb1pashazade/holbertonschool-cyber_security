#!/bin/bash

# Hash the password argument using SHA-1 and save it to 0_hash.txt
printf "%s" "$1" | sha1sum | awk '{print $1}' > 0_hash.txt
