#!/bin/bash

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

hostname=$(hostname)
kernel=$(uname -r)
uptime=$(uptime -p)
cpu=$(grep -m1 'model name' /proc/cpuinfo | cut -d: -f2 | awk '{$1=$1};1')
cpu_cores=$(grep -c 'processor' /proc/cpuinfo)
memory=$(free -h | awk '/^Mem/{print $2}')
disk=$(df -h --total | awk '/total/{print $2}')
ip=$(hostname -I | awk '{print $1}')
os=$(lsb_release -d | cut -d: -f2 | awk '{$1=$1};1')

ip_info=$(curl -s ipinfo.io/$ip)
city=$(echo "$ip_info" | jq -r '.city')
isp=$(echo "$ip_info" | jq -r '.org')

echo -e "${BLUE}==========================================${NC}"
echo -e "${BLUE}        System Information VPS${NC}"
echo -e "${BLUE}==========================================${NC}"
echo -e "${YELLOW}Operating System :${NC} $os"
echo -e "${YELLOW}Kernel Version   :${NC} $kernel"
echo -e "${YELLOW}Uptime           :${NC} $uptime"
echo -e "${YELLOW}CPU              :${NC} $cpu"
echo -e "${YELLOW}CPU Cores        :${NC} $cpu_cores"
echo -e "${YELLOW}Memory           :${NC} $memory"
echo -e "${YELLOW}Disk             :${NC} $disk"
echo -e "${YELLOW}IP Address       :${NC} $ip"
echo -e "${YELLOW}City             :${NC} $city"
echo -e "${YELLOW}ISP              :${NC} $isp"
echo -e "${BLUE}==========================================${NC}"

echo ""
read -n 1 -s -r -p "Press any key to return to the menu"

menu