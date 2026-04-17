#!/bin/bash
tail -n 100- auth.log | grep "Accepted password" | awk '{print $9}' | head -n 1
