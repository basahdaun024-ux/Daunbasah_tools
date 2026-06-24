#!/bin/bash
# ============================================================
# DAUN BASAH TOOLS - INSTALLER OTOMATIS
# DEVELOPER: DAUN BASAH
# ============================================================

clear
echo "🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿"
echo "🌿    DAUN BASAH TOOLS INSTALLER       🌿"
echo "🌿        AUTO INSTALL 34 FITUR        🌿"
echo "🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿"
echo ""

echo "📦 MENGINSTALL DEPENDENSI..."
pkg update -y
pkg upgrade -y
pkg install nodejs python curl wget git nmap hydra sqlmap aircrack-ng openssh termux-api -y
npm install -g @whiskeysockets/baileys telegraf
pip install requests pyrogram

echo "✅ DEPENDENSI TERINSTALL!"
echo "🚀 MENJALANKAN TOOLS..."
bash tools.sh