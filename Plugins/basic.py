from pyrogram import Client, filters

@Client.on_message(filters.me & filters.command("kedy", prefixes="."))
async def kedy_alive(client, message):
    # Mesajı düzenleyip istediğin metni yazar
    await message.edit_text("🌌 Uzayın derinliklerinde aktifim...")
  
