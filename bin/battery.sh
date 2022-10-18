#!/bin/bash
PERCENTAGE=$(cat /sys/class/power_supply/BAT0/capacity)
STATE=$(upower -i `upower -e | grep 'BAT'`| grep 'state' | awk '{print $2}')
#DISCHARGING
if [ $STATE == "discharging" ] && [ $PERCENTAGE > 90 ]; then
echo "$PERCENTAGE" 

elif [ $STATE == "discharging" ] && [ $PERCENTAGE > 50 ]; then
echo "$PERCENTAGE" 

elif [ $STATE == "discharging" ] && [ $PERCENTAGE > 30 ]; then
echo "$PERCENTAGE" 

elif [ $STATE == "discharging" ] && [ $PERCENTAGE > 20 ]; then
echo "$PERCENTAGE" 


#CHARGING
elif [ $STATE == "charging" ] && [ $PERCENTAGE > 90 ]; then
echo "$PERCENTAGE" 

elif [ $STATE == "charging" ] && [ $PERCENTAGE > 50 ]; then
echo "$PERCENTAGE" 

elif [ $STATE == "charging" ] && [ $PERCENTAGE > 30 ]; then
echo "$PERCENTAGE" 

#FULLY CHARGED
elif [ $STATE == "fully-charged" ] && [ $PERCENTAGE > 90 ]; then
	echo "$PERCENTAGE" 
fi
