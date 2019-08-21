#!/bin/bash
mkdir /home/dejan/Desktop/newDIR
ssh-keygen -t rsa -f ssh_host_key.pub
ssh-keygen -t rsa -f ssh_host_rsa_key.pub
ssh-keygen -t dsa -f ssh_host_dsa_key.pub
chkconfig smbd off
chkconfig nmbd off
/etc/init.d/smbd stop 
sudo ifconfig wlp3s0 down
sleep 2
sudo macchanger -r wlp3s0
sleep 2
sudo ifconfig wlp3s0 up
sudo iwconfig wlp3s0 nickname "Fucko the Clown"

ifconfig | grep ethe >> /home/dejan/Desktop/MAC
tor-browser &
