#!/bin/bash

username=""
password=""
hostname="" # my.website.com (include subdomain if that is how you created it in google)

# gets the ip address of your machine running the script
ipaddress=$(curl https://ipinfo.io/ip)

# shows the ipadress found in the curl request in terminal if you manually run the script
echo "--------------------------------------"
echo "ip address = $ipaddress"
echo "--------------------------------------"

# executes the request built above using curl
curl -X POST "https://$username:$password@domains.google.com/nic/update?hostname=$hostname&myip=$ipaddress"