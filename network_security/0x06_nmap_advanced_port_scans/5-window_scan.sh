#!/bin/bash
sudo nmap -sW -p $2 --execlude-ports $3 $1
