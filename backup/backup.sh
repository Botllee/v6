#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'

clear

IP=$(wget -qO- ipinfo.io/ip)
current_date=$(date +"%Y-%m-%d")

echo "Mohon Tunggu, Proses Backup Sedang Berlangsung!"
rm -rf /root/backup
mkdir /root/backup

cp /etc/passwd /root/backup/
cp /etc/group /root/backup/
cp /etc/shadow /root/backup/
cp /etc/gshadow /root/backup/
cp -r /etc/xray /root/backup/xray
cp -r /root/nsdomain /root/backup/nsdomain
cp -r /etc/slowdns /root/backup/slowdns
cp -r /home/vps/public_html /root/backup/public_html

cd /root
zip -r "$IP-$current_date".zip backup > /dev/null 2>&1
rclone copy "/root/$IP-$current_date.zip" dr:backup/

url=$(rclone link dr:backup/"$IP-$current_date.zip")
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"

rm -rf /root/backup
rm -r "/root/$IP-$current_date.zip"

clear
echo -e "
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $current_date
==================================
"
