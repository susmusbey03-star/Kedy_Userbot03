
import os
from pyrogram import Client

# Havalı terminal görünümü (Cyan ve Magenta renkleriyle)
KEDY_LOGO = """\033[1;36m
 ██╗  ██╗███████╗██████╗ ██╗   ██╗
 ██║ ██╔╝██╔════╝██╔══██╗╚██╗ ██╔╝
 █████╔╝ █████╗  ██║  ██║ ╚████╔╝ 
 ██╔═██╗ ██╔══╝  ██║  ██║  ╚██╔╝  
 ██║  ██╗███████╗██████╔╝   ██║   
 ╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝   
\033[1;35m> Kedy Userbot Başlatılıyor... Uzayın derinliklerine bağlanılıyor...\033[0m
"""
print(KEDY_LOGO)

# my.telegram.org adresinden alacağınız API bilgileri
API_ID = 12345678  # Kendi API ID'nizi int olarak yazın (Tırnaksız)
API_HASH = "BURAYA_API_HASH_YAZIN"  # Kendi API HASH'inizi yazın (Tırnak içinde)

app = Client(
    "kedy_session",
    api_id=API_ID,
    api_hash=API_HASH,
    plugins=dict(root="plugins") # Eklentilerin okunacağı klasör
)

if __name__ == "__main__":
    app.run()
  
