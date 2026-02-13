#!/bin/bash
find / -xdef -type d -perm 0002 -exec chmod 755 {} \;
