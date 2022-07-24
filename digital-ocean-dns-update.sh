#!/bin/bash

hostname="" # dev.website.com (wrong) website.com(correct)
token="" # token created in digital ocean for authentication
record_id="" # to get this, use the script at the bottom

# gets the ip address of your machine running the script
ipaddress=$(curl https://ipinfo.io/ip)

# shows the ipadress found in the curl request in terminal if you manually run the script
echo "--------------------------------------"
echo "ip address = $ipaddress"
echo "--------------------------------------"

# executes the request to update the record
curl -X PUT \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $token"  \
    -d '{"data":"'"$ipaddress"'"}' "https://api.digitalocean.com/v2/domains/$hostname/records/$record_id"

# use this request to get your hostname id, ensure your hostname doesn't contain any sub domain. IE dev.website.com (wrong) website.com(correct)
# curl -X GET \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $token" \
#   "https://api.digitalocean.com/v2/domains/$hostname/records"