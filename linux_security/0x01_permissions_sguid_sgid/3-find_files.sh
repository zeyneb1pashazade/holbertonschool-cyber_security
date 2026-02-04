#!/bin/bash
find "$1" -type file -perm 4000 2>/dev/null
