#!/bin/sh
STATE=$(nmcli general status | grep -i 'connected' | awk '{print $1}')
#ENABLED
if [ $STATE = "connected" ]; then
echo 
else 
echo 睊

fi
