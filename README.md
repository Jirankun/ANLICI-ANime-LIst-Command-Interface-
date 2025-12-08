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

Versi ini merupakan modifikasi dari [pystardust/ani-cli](https://github.com/pystardust/ani-cli) dengan penyesuaian khusus untuk pengguna **Termux di Android**, antara lain:
- Tampilan Berbahasa Indonesia 🇮🇩
- Fitur **otomatis muat ulang** jika pencarian tidak ditemukan
- Update langsung dari repositori pribadi (bukan repo asli)
- Stabil di perangkat Android dengan layar terbatas

</p>

[![Demo](https://user-images.githubusercontent.com/44473782/224679247-0856e652-f187-4865-bbcf-5a8e5cf830da.webm)](https://user-images.githubusercontent.com/44473782/224679247-0856e652-f187-4865-bbcf-5a8e5cf830da.webm)

> 🔍 **Sumber data**: [allmanga.to](https://allmanga.to)

---

## 📌 Fitur Khusus Versi Ini

- ✅ **Bahasa Indonesia**
- ✅ Jika **pencarian tidak ditemukan** → tampilkan pesan & **muat ulang otomatis setelah 2 detik**
- ✅ Perintah `-U` / `--update` **mengarah ke repo GitHub ini**, bukan repo asli
- ✅ Dioptimalkan untuk **Termux di Android**
- ✅ Ringan, tidak perlu backend, langsung jalan di terminal

---

## 📲 Instalasi (Termux — Direkomendasikan)

```sh
# 1. Pastikan paket termux terbaru
pkg update && pkg upgrade -y

# 2. Instal dependensi wajib
pkg install curl fzf mpv termux-api

# 3. Unduh ANLICI
curl -L -o anli-ci https://raw.githubusercontent.com/zhyllan/ani-cli/main/ani-cli

# 4. Beri izin eksekusi
chmod +x anli-ci

# 5. Jalankan!
./anli-ci
