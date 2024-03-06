#!/bin/bash

# Warna
MERAH='\033[0;31m'
NC='\033[0m'
HIJAU='\033[0;32m'
ORANGE='\033[0;33m'
BIRU='\033[0;34m'
UNGU='\033[0;35m'
CYAN='\033[0;36m'
PUTIH='\033[0;37m'

# Proses Restore
clear
echo "Fitur Ini Hanya Dapat Digunakan Sesuai Dengan Data VPS Menggunakan Autoscript Ini."
echo "Masukan Link File Cadangan Data VPS Anda."
read -rp "Link File : " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo "Memulai Proses Restore"
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp chap-secrets /etc/ppp/
cp passwd1 /etc/ipsec.d/passwd
cp -r crot /var/lib/
cp -r sstp /home/
cp -r xray /etc/
cp -r trojan-go /etc/
cp -r shadowsocksr /usr/local/
cp -r public_html /home/vps/
cp crontab /etc/
strt
rm -rf /root/backup
rm -f backup.zip
echo "Restore Berhasil!"
