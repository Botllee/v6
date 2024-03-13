#!/bin/bash
GitUser="RidwanzAnphelibelll"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/versions )
clear
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(OLD VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/versions | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""                                                     
echo "   --------------------------------------------------------"
echo "                  [ \e[30m[\e[34m PEMBARUAN VERSI TERBARU\e[30m ]                   ]"
echo "   --------------------------------------------------------"
echo "   VERSI SAAT INI >> $Info1"
echo "   STATUS PEMBARUAN >> $sts"
echo ""
echo "       \e[1;31mApakah Anda ingin melanjutkan?\e[0m"
echo ""
echo "            [ \e[0;32mPilih Opsi\e[0m ]"
echo "     [ 1 ] Periksa Pembaruan Skrip Sekarang"
echo "     [ 0 ] Kembali ke Menu"
echo ""
echo "   --------------------------------------------------------"
read -p " Silahkan Pilih 1 Atau 0 : " option2
case $option2 in
1)
versi=$(cat /home/ver)
versi_baru=$(curl https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/versions | grep "$versi")
if [ $versi = $versi_baru ]; then
  clear
  echo ""
  echo -e "\e[1;31mMemeriksa Versi Baru, Harap Tunggu...!\e[m"
  sleep 3
  clear
  echo -e "\e[1;31mPembaruan Tidak Tersedia\e[m"
  echo ""
  clear
  sleep 1
  echo -e "\e[1;36mAnda Memiliki Versi Terbaru\e[m"
  echo -e "\e[1;31mTerima kasih.\e[0m"
  sleep 2
  update
fi
clear
echo -e "\e[1;31mPembaruan Tersedia Sekarang..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mMulai Pembaruan Untuk Versi Terbaru, Harap Tunggu..\e[m"
sleep 2
clear
echo -e "\e[0;32mMendapatkan Skrip Versi Terbaru..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mHarap Tunggu...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mPengunduhan Versi Baru Dimulai!\e[0m"
sleep 2
cd /usr/bin
wget -q -O /usr/bin/ipvps "https://raw.githubusercontent.com/RidwanzAnphelibelll/permission/main/ipvps"
wget -q -O /usr/bin/issue "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/issue.net"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/usernew.sh"
wget -q -O /usr/bin/hapus "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/hapus.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/tendang.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/running.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/speedtest_cli.py"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu.sh"
wget -q -O /usr/bin/menu-webmin "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/update.sh"
wget -q -O /usr/bin/add-host "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/add-host.sh"
wget -q -O /usr/bin/certv2ray "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/certv2ray.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-set.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-backup.sh"
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/trial.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/usernew.sh"
wget -q -O /usr/bin/cek "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/ssh/cek.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/add-tr.sh"
wget -q -O /usr/bin/del-tr "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/del-tr.sh"
wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/cek-tr.sh"
wget -q -O /usr/bin/trialtrojan "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/trialtrojan.sh"
wget -q -O /usr/bin/renew-tr "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/renew-tr.sh"
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/add-ws.sh"
wget -q -O /usr/bin/del-ws "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/del-ws.sh"
wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/cek-ws.sh"
wget -q -O /usr/bin/renew-ws "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/renew-ws.sh"
wget -q -O /usr/bin/trialvmess "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/trialvmess.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/add-vless.sh"
wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/del-vless.sh"
wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/cek-vless.sh"
wget -q -O /usr/bin/renew-vless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/renew-vless.sh"
wget -q -O /usr/bin/trialvless "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/xray/trialvless.sh"
wget -q -O /usr/bin/menu-trial "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/menu-trial.sh"
wget -q -O /usr/bin/versions "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/versions"
wget -q -O /usr/bin/xolpanel "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/menu/xolpanel.sh"
wget -q -O /usr/bin/xolpanel "https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/infovps.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/cek
chmod +x /usr/bin/hapus
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/add-host
chmod +x /usr/bin/certv2ray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/add4
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/trial
chmod +x /usr/bin/usernew
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/del-tr
chmod +x /usr/bin/cek-tr
chmod +x /usr/bin/trialtrojan
chmod +x /usr/bin/renew-tr
chmod +x /usr/bin/add-ws 
chmod +x /usr/bin/del-ws
chmod +x /usr/bin/cek-ws
chmod +x /usr/bin/renew-ws
chmod +x /usr/bin/trialvmess
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/del-vless
chmod +x /usr/bin/cek-vless
chmod +x /usr/bin/renew-vless
chmod +x /usr/bin/trialvless
chmod +x /usr/bin/menu-trial
chmod +x /usr/bin/ipvps
chmod +x /usr/bin/versions
chmod +x /usr/bin/issue
chmod +x /usr/bin/xolpanel
chmod +x /usr/bin/infovps
clear
echo -e ""
echo -e "\e[0;32mDownload berhasil!\e[0m"
echo ""
versi=$(curl https://raw.githubusercontent.com/RidwanzAnphelibelll/v6/main/versions)
sleep 1
echo -e "\e[0;32mMemasang Pembaruan Baru, Harap Tunggu...\e[0m"
echo ""
sleep 2
echo ""
echo -e "\e[0;32mSukses Memperbarui Skrip ke Versi Terbaru\e[0m"
cd
echo "$versi" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SKRIP TELAH DIPERBARUI              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac