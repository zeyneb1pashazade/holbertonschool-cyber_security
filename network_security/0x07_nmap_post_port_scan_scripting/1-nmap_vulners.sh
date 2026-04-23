#!/bin/bash
nmap -sC --script vulners -p80,443 "$1" 
