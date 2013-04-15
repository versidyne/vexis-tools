#!/bin/bash

#app update function
update_all () {

  #grant root access
  sudo test

  #perform catalog update
  sudo apt-get update

  #perform system upgrade
  sudo apt-get upgrade

}

#mysql root function
mysql_root () {

  #grant root access
  sudo test

  #request password
  echo -n "MySQL Password: "

  #hide input
  stty -echo

  #request input
  read mysqlpass

  #make new line
  echo ""

  #request confirmation
  echo -n "Confirm MySQL Password: "

  #request input
  read mysqlconf

  #make new line
  echo ""

  #show input
  stty echo

  #evaluate information
  if [ "$mysqlpass" = "$mysqlconf" ]; then
    sudo /usr/bin/mysqladmin -u root password '$mysqlpass'
  else
    echo "Password did not match."
    mysql_root
  fi

}

#run app updates
update_all

#install security
sudo apt-get install clamav

#install web services
sudo apt-get install lighttpd vsftpd

#install interpreters
sudo apt-get install php5 libapache2-mod-php5
sudo apt-get install perl libapache2-mod-perl2
sudo apt-get install python libapache2-mod-python

#install database services
sudo apt-get install mysql-server mysql-client php5-mysql

#set mysql root
mysql_root

#install mail services
sudo apt-get install dovecot-common postfix postgrey spamassassin

#install admin services
sudo apt-get install htop phpmyadmin

#install collaboration services
sudo apt-get install etherpad

#restart apache2
sudo apache2ctl restart

#add users
sudo adduser alex
sudo adduser scrd
sudo adduser tahoe

#update antivirus
sudo freshclam

#scan entire filesystem
sudo clamscan -r /

