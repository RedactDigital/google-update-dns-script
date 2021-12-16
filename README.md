# Google dynamic dns script

This is a simple script to dynamically update an A record for google domains

Just fill in your google username and password in the variable declarations, make the script executable and run it.

To go a step further, add it to cron and run it every minute EX 
``` 
*/1 * * * * /bin/bash /home/username/dnsupdate.sh
