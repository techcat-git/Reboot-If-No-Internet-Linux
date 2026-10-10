RUN THIS SCRIPT AS ROOT! MOST LINUX DISTROS DONT ALLOW YOU TO USE THE REBOOT COMMAND WITHOUT ROOT ACCESS!!

This script is loosely based on this stackoverflow answer:
https://stackoverflow.com/questions/17291233/how-can-i-check-internet-access-using-a-bash-script-on-linux



How does this script work?

-If your machine has internet access, the script will attempt to visit google.com, it will attempt this every 5 seconds.

-If your machine DOES NOT have internet access, the script will attempt to visit google.com 10 times, with a timeout of 20 seconds. If this continually fails, then the machine will reboot.

Running this script:
Download "script.sh" from the github repo, then do this:

1. chmod +x script.sh
2. nohup ./script.sh &

Then you can close your terminal, and the script will be running in the background continuously. 



Why does this script exist?

This script exists because of an issue with my Proxmox server. Every so often, My VM hypervisor would crash. Why? I honestly have no idea. A side effect of this crash is that it would also cause the internet drivers to stop working. Which is kinda hard to fix if you aren't physically there. A fresh reboot would fix this, so I made a script that will do it for me automatically.
