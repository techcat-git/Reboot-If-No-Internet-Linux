#!/bin/bash

while true; do
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
    echo "Online" && date
else
    echo "Offline" && date
    reboot
fi
sleep 5
done
