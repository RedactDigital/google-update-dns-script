#!/bin/bash

username=""
password=""
hostname="" # my.website.com

# gets the ip address of your machine running the script
ipaddress=$(curl https://ipinfo.io/ip)

# the acutal google request url
request="https://$username:$password@domains.google.com/nic/update?hostname=$hostname&myip=$ipaddress"

# shows the ipadress found in the curl request in terminal if you manually run the script
echo "--------------------------------------"
echo "ip address = $ipaddress"
echo "--------------------------------------"

# executes the request built above using curl
curl -X POST $request