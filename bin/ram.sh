#! /bin/bash
TOTAL=$(free -m | awk '/total/{getline;print $2;}')
USED=$(free -m | awk '/total/{getline;print $7;}')

echo $(("$USED"/"$TOTAL"))
echo $USED/$TOTAL
