#!/bin/bash
echo "___________________________________________________________________________________________"
echo "Printing the Info for the Project"
echo "___________________________________________________________________________________________"
echo " Various system configuration relates to user and OS"
echo "User is " $USER
echo "Hostname is " $HOSTNAME
echo "OS is :" `uname`
echo "___________________________________________________________________________________________"
echo "Data related to load on the server."
echo "Uptime and Load Average is " `uptime` 
echo "___________________________________________________________________________________________"
echo "Top 5 processes with ax number of threads"
echo "___________________________________________________________________________________________"
ps axo nlwp,pid,cmd | sort -rn | head -5
echo "___________________________________________________________________________________________"
echo "Sort the services by memory"
echo "___________________________________________________________________________________________"
ps aux --sort -rss | head -6
