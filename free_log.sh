#!/bin/bash

# Save free output as log to a file

if [ -z "$1" ]
then
        logname="$(date +%Y%-m%d:%H%M%S)_free.log"
else
        logname=$1
fi

echo "saving log to " $logname
while true
do
        echo `date` >>$logname
        echo "$(free -m)" >> $logname
        if [ $(wc -l < $logname) -gt 40  ]
        then
                #tail -n 20 $logname | sponge $logname
                sed -i '5,20d' $logname
        fi
done
exit 1

