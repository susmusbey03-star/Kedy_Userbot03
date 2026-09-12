#!/bin/bash

# Terminali temizle
clear

# Havalı Kedy Logosu (Cyan Rengi)
echo -e "\e[1;36m"
echo " ██╗  ██╗███████╗██████╗ ██╗   ██╗ "
echo " ██║ ██╔╝██╔════╝██╔══██╗╚██╗ ██╔╝ "
echo " █████╔╝ █████╗  ██║  ██║ ╚████╔╝  "
echo " ██╔═██╗ ██╔══╝  ██║  ██║  ╚██╔╝   "
echo " ██║  ██╗███████╗██████╔╝   ██║    "
echo " ╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    "
echo -e "\e[0m"
echo -e "\e[1;35m> Kedy Userbot Kurulum ve Başlatma Aracı\e[0m"
echo "------------------------------------------------"

# Kütüphaneleri kur/güncelle (Sessiz modda)
echo -e "\e[1;32m[+] Gerekli kütüphaneler kontrol ediliyor ve kuruluyor...\e[0m"
pip3 install pyrogram tgcrypto --quiet

echo -e "\e[1;32m[+] Kedy Userbot uzayın derinliklerine fırlatılıyor...\e[0m"
echo "------------------------------------------------"

# Sonsuz döngü: Bot kapanırsa veya eklenti yüklenip restart atarsa otomatik tekrar başlar
while true
do
    python3 main.py
    echo -e "\e[1;31m[!] Sistem yeniden başlatılıyor. 3 saniye içinde uzaya tekrar bağlanılacak...\e[0m"
    sleep 3
done
