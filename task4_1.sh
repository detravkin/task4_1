#! /bin/bash
exec 1>task4_1.out

echo "--Hardware--"
inxi -C 
cat /proc/meminfo | grep 'MemTotal'
echo "Motherboard:"
sudo dmidecode --string baseboard-product-name
sudo dmidecode --string baseboard-manufacturer
cat /etc/*-release | grep 'DISTRIB_DESCRIPTION'
uname -r
ls -ld /var/log/installer
hostname
uptime -p
w 
ip address

