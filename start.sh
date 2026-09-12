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

# Eksik dosyaları kontrol et ve GitHub'dan indir
echo -e "\e[1;33m[+] Dosyalar kontrol ediliyor...\e[0m"

if [ ! -f "main.py" ]; then
    echo -e "\e[1;34m[-] main.py bulunamadı, indiriliyor...\e[0m"
    curl -s -O https://raw.githubusercontent.com/susmusbey03-star/Kedy_Userbot03/main/main.py
fi

# Plugins klasörü ve içindeki dosyaları kontrol et
mkdir -p plugins
if [ ! -f "plugins/basic.py" ]; then
    echo -e "\e[1;34m[-] plugins/basic.py bulunamadı, indiriliyor...\e[0m"
    curl -s -o plugins/basic.py https://raw.githubusercontent.com/susmusbey03-star/Kedy_Userbot03/main/plugins/basic.py
fi

if [ ! -f "plugins/installer.py" ]; then
    echo -e "\e[1;34m[-] plugins/installer.py bulunamadı, indiriliyor...\e[0m"
    curl -s -o plugins/installer.py https://raw.githubusercontent.com/susmusbey03-star/Kedy_Userbot03/main/plugins/installer.py
fi

# Kütüphaneleri kur/güncelle
echo -e "\e[1;32m[+] Gerekli kütüphaneler kontrol ediliyor ve kuruluyor...\e[0m"
pip install pyrogram tgcrypto --quiet

echo -e "\e[1;32m[+] Kedy Userbot uzayın derinliklerine fırlatılıyor...\e[0m"
echo "------------------------------------------------"

# Sonsuz döngü: Bot kapanırsa veya eklenti yüklenip restart atarsa otomatik tekrar başlar
while true
do
    python main.py
    echo -e "\e[1;31m[!] Sistem yeniden başlatılıyor. 3 saniye içinde uzaya tekrar bağlanılacak...\e[0m"
    sleep 3
done
