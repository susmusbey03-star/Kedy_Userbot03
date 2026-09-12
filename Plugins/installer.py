import os
import sys
from pyrogram import Client, filters

@Client.on_message(filters.me & filters.command("pinstall", prefixes="."))
async def install_plugin(client, message):
    # Eğer bir mesaja yanıt verilmemişse veya yanıtlanan mesaj belge değilse
    if not message.reply_to_message or not message.reply_to_message.document:
        await message.edit_text("❌ Lütfen kurmak istediğiniz `.py` uzantılı bir eklenti dosyasına yanıt verin.")
        return
    
    doc = message.reply_to_message.document
    
    # Dosya .py uzantılı değilse
    if not doc.file_name.endswith(".py"):
        await message.edit_text("❌ Bu geçerli bir Python eklentisi değil!")
        return
        
    await message.edit_text("⏳ Kedy eklentiyi indiriyor...")
    
    # Dosyayı plugins klasörüne indir
    downloaded_file = await client.download_media(
        message.reply_to_message, 
        file_name=f"plugins/{doc.file_name}"
    )
    
    await message.edit_text(f"✅ `{doc.file_name}` başarıyla kuruldu. Sistem yeniden başlatılıyor...")
    
    # Yeni eklentinin algılanması için scripti olduğu gibi yeniden başlatır
    os.execl(sys.executable, sys.executable, *sys.argv)
