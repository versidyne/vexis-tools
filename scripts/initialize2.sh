#!/bin/bash

#symbolic link function
#symlink ($source, $destination) {

  #grant root access
  #sudo test

  #perform catalog update
  #sudo apt-get update

  #perform system upgrade
  #sudo apt-get upgrade

#}

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

#insert config files
#replace('/etc/apt/sources.list')

#run app updates
update_all
#./update.sh

#install security
sudo apt-get install clamav clamtk firestarter

#update antivirus
sudo freshclam

#scan entire filesystem
sudo clamscan -r /

#install web services
#sudo apt-get install apache2 lighttpd vsftpd
sudo apt-get install vsftpd

#install interpreters
#sudo apt-get install php5 libapache2-mod-php5
#sudo apt-get install perl libapache2-mod-perl2
#sudo apt-get install python libapache2-mod-python

#install database services
#sudo apt-get install mysql-server mysql-client php5-mysql

#set mysql root
#mysql_root

#install mail services
#sudo apt-get install dovecot-common postfix postgrey spamassassin

#install admin services
sudo apt-get install phpmyadmin
sudo apt-get install htop baobab gdebi

#install dev tools
sudo apt-get install geany nautilus-open-terminal

#install compilation tools
sudo apt-get install nasm gcc g++ make

#install libraries
sudo apt-get install libncurses5 libncurses5-dev
sudo apt-get install flashplugin-nonfree

#install filesystems
sudo apt-get install ntfs-3g

#install clients
sudo apt-get install filezilla pidgin pidgin-skype skype deluge

#install virtualization software
sudo apt-get install virtualbox-ose

#install windows snap
sudo apt-get install compizconfig-settings-manager wmctrl

#install media tools
sudo apt-get install audacity fluidsynth qsynth vlc vmpk

#install wireless internet
sudo apt-get install firmware-iwlwifi wireless-tools

#install collaboration services
#sudo apt-get install etherpad

#restart apache2
#sudo apache2ctl restart

#add users
#sudo adduser alex
#sudo adduser scrd
#sudo adduser tahoe

#update antivirus
sudo freshclam

#scan entire filesystem
sudo clamscan -r /
