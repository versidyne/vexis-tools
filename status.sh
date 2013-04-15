#!/bin/bash
red='\e[0;31m'
blue='\e[0;34m'
green='\e[32;32m'
nc='\e[0m'
clear
echo "#########################################################"
echo -e "#                     $blue System Status $nc                   #"
echo "# Status						#"
#echo "# System  : $(cat /etc/*version* )					#"
echo "# System  : $(cat /etc/debian_version )					#"
echo "# Date    : $(uptime | awk '{print $1}')					#"
echo -e "# Uptime  :$green $(uptime | awk '{print $3}') $nc						#"
echo -e "# Load    :$red $(uptime | awk '{print $11}' | sed -e 's/,//') $nc					#"
echo "#							#"
echo "#########################################################"
