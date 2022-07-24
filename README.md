# Google dynamic dns script

This is a simple script to dynamically update an A record for google domains

Just fill in your google username and password in the variable declarations, also add the hostname (domain) to include the subdomain if needed, make the script executable and run it.

To go a step further, add it to cron and run it every minute EX 
``` 
*/1 * * * * /bin/bash ~/<path-to-file>/google-dns-update.sh
```

# Digital Ocean dynamic dns script

This is a simple script to dynamically update an A record in digital ocean

Just fill in your token, record ID, and hostname in the variable declarations, make the script executable and run it.
If you don't know your record ID, there is a script included at the bottom, uncomment it and fill in the hostname and token variables to get the record ID.

To go a step further, add it to cron and run it every minute EX 
``` 
*/1 * * * * /bin/bash ~/<path-to-file>/google-dns-update.sh
```
