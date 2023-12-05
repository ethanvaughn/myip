#!/bin/bash

curl -s http://ipv4.xmission.com > /tmp/ipv4.html
myip=$(cat /tmp/ipv4.html | grep 'Your Actual IP Address:' | tr -s ' ' | cut -d '>' -f4 | cut -d '<' -f1)
echo $myip
sed -i "s/^Current IP Addr:.*$/Current IP Addr: $myip/" README.md
git commit -m "." README.md
git push

exit 0
