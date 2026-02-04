#!/bin/bash
find "$1" -type f -perm 6000 -mtime -n -exec ls {} \;
