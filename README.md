<p align="center">
<br>
<a href="https://github.com/zhyllan/ani-cli"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg"></a>
<a href="#Android"><img src="https://img.shields.io/badge/os-android-brightgreen">
<a href="#Linux"><img src="https://img.shields.io/badge/os-linux-brightgreen">
<a href="#Windows"><img src="https://img.shields.io/badge/os-windows-yellowgreen">
<a href="#MacOS"><img src="https://img.shields.io/badge/os-mac-yellowgreen">
<br>
<h1 align="center">
  🇮🇩 ANI-CLI (ANime LIst Command Interface)
</h1>

<h3 align="center">
  Versi modifikasi oleh <strong>Zhyllan Fyllah</strong> — untuk pengguna Termux & pecinta anime Indonesia!<br>
  Alat CLI untuk menjelajahi dan menonton anime langsung dari terminal, dengan fitur reload otomatis jika tidak ditemukan.
</h3>

</p>

[![Demo](https://user-images.githubusercontent.com/44473782/224679247-0856e652-f187-4865-bbcf-5a8e5cf830da.webm)](https://user-images.githubusercontent.com/44473782/224679247-0856e652-f187-4865-bbcf-5a8e5cf830da.webm)

> 🔍 **Sumber data**: [allmanga.to](https://allmanga.to)

---

## 📌 Fitur Khusus Versi Ini

- ✅ **Splash screen khas Indonesia** dengan identitas Zhyllan Fyllah
- ✅ Jika **pencarian tidak ditemukan** → tampilkan pesan & **muat ulang otomatis setelah 3 detik**
- ✅ Perintah `-U` / `--update` **mengarah ke repo GitHub Anda**, bukan repo asli
- ✅ Dioptimalkan untuk **Termux di Android** (termasuk Realme Narzo 20)
- ✅ Ringan, tidak perlu backend, langsung jalan di terminal

---

## 📲 Instalasi (Termux — Direkomendasikan)

```sh
# 1. Pastikan paket termux terbaru
pkg update && pkg upgrade -y

# 2. Instal dependensi wajib
pkg install curl fzf mpv termux-api

# 3. Unduh ANI-CLI versi Zhyllan
curl -L -o ani-cli https://raw.githubusercontent.com/zhyllan/ani-cli/main/ani-cli

# 4. Beri izin eksekusi
chmod +x ani-cli

# 5. Jalankan!
./ani-cli
