#!/bin/bash

#make sure that rvm is set up
[[ -s "/home/siriproxy/.rvm/scripts/rvm" ]] && . "/home/siriproxy/.rvm/scripts/rvm"

source /usr/local/rvm/environments/default

#feel free to insert logging if needed.
#echo "" >> /var/log/siriproxy.log
#echo "" >> /var/log/siriproxy.log
#echo "------------- Server started ---------------" >> /var/log/siriproxy.log
#date >> /var/log/siriproxy.log
#siriproxy server >> /var/log/siriproxy.log 2>&1

siriproxy server
