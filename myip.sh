#!/bin/bash

myip=$(curl -s https://whatsmyip.com/ | grep "Your Public IPv4" | cut -d '>' -f 2 | cut -d '<' -f 1)
sed -i "s/^Current IP Addr:.*$/Current IP Addr: $myip/" README.md

exit 0
