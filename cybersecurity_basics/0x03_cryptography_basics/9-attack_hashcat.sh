#!/bin/bash
hashcat --stdout  wordlist1.txt wordlist2.txt "$1"
