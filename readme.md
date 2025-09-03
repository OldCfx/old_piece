# 🎲 old_piece — Coin Flip Game for FiveM

This script allows your players to flip a **coin in-game** using the command:  

```
/pileouface
```

A coin will appear with a **NUI animation** ✨.  
The result is **synchronized with the nearest player**, so the coin toss is shared instead of being local only.  

---

## 🚀 Features

- 🪙 `/pileouface` command to flip a coin.  
- 🔄 **Synchronization** with the closest nearby player (both see the same toss & result).  
- 🎨 **Easy customization**:  
- Replace `html/pile.png` and `html/face.png` with your own coin designs.  
- 💬 **Optional chat messages** (toggle in `shared/config.lua`).

---

## 📂 Installation

1. Download or clone this repository into your `resources/` folder.  
2. Add the following line to your `server.cfg`:  
   ```
   ensure old_piece
   ```
3. Start your server — you’re ready to toss! 🎉

---

## ⚙️ Configuration

- In **`html/`**, customize your coin faces:  
  - `pile.png` → heads side  
  - `face.png` → tails side  

- In **`shared/config.lua`**:  
  - Enable or disable the chat message.  
  - Adjust the distance to detect the nearest player.  

---

## 🖼️ How It Works

1. A player types `/pileouface`.  
3. A coin appears on screen (via NUI), spins, and lands on **heads** or **tails**.  
4. The nearest player sees **the exact same coin and result** for immersion.  

---
