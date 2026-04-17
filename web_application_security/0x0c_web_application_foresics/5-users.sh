#!/bin/bash
grep -Ei "adduser|useradd" auth.log* |awk -F "name=" '{print $2}'| awk '{print $1}'|sort|tr -d '\n' | sed 's/,$//'
