# ANLI-CI (ANime LIst Command Interface)

---

**Versi modifikasi oleh Zhyllan Fyllah** — alat CLI ringan untuk menjelajahi dan menonton anime langsung dari terminal!  
Dioptimalkan khusus untuk **pengguna Termux di Android**, dengan antarmuka Bahasa Indonesia dan fitur otomatis.

Dibangun dari kode sumber [pystardust/ani-cli](https://github.com/pystardust/ani-cli), dengan penyesuaian untuk pengalaman lokal yang lebih nyaman.

## 🌟 Fitur Utama

- ✅ Menggunakan **Bahasa Indonesia** di seluruh bagian Prompt
  
- ✅ Jika **pencarian tidak ditemukan** → tampilkan pesan & **muat ulang otomatis setelah 2 detik**
  
- ✅ Perintah `-U` / `--update` , bukan repo asli
  
- ✅ Stabil di perangkat Android dengan layar terbatas
  
- ✅ Ringan, tidak perlu backend, langsung jalan di terminal
  
- ✅ Sumber data: [allmanga.to](https://allmanga.to)
  
  ---
  

<details>
<summary>## 📲 Instalasi Cepat (Termux)</summary>

Jalankan perintah berikut di Termux:

```sh
sh
cd ~ && pkg install -y git mpv yt-dlp aria2 ffmpeg fzf && git clone https://github.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-.git && cd ANLICI-ANime-LIst-Command-Interface- && ./ANLI-CI.sh
```

> ⚠ Pastikan `termux-setup-storage` sudah dijalankan jika diperlukan.

---

## ▶ Menjalankan ANLI-CI

Jika sudah pernah menginstal, jalankan dengan:

```sh
sh
cd ~/ANLICI-ANime-LIst-Command-Interface- && \
dos2unix ANLI-CI.sh 2>/dev/null || sed -i 's/\r$//' ANLI-CI.sh && \
chmod +x ANLI-CI.sh && \
./ANLI-CI.sh
```

> ✅ Perintah ini otomatis memperbaiki line ending Windows dan memberi izin eksekusi.

---

## 🗑 Uninstall ANLI-CI

Hapus semua file ANLI-CI dan riwayat tontonan:

```sh
sh
rm -rf ~/ANLICI-ANime-LIst-Command-Interface- ~/.local/state/ani-cli
```

---

## 🧹 (Opsional) Hapus Paket Dependensi

> ⚠ Hanya lakukan ini jika Anda yakin tidak membutuhkan paket tersebut untuk aplikasi lain!

```sh
sh
pkg uninstall -y git mpv yt-dlp aria2 ffmpeg fzf
```

---

## 🛠 Alternatif: Instal via `curl` (tanpa `git`)

Jika tidak ingin kloning repo:

```sh
sh
pkg install -y curl fzf mpv && \
curl -L -o anli-ci https://raw.githubusercontent.com/zhyllan/ani-cli/main/ani-cli && \
chmod +x anli-ci && \
./anli-ci
```

> 🔁 Untuk update: jalankan `./anli-ci -U`

</details>
---

## 🎯 Dibuat Oleh

**Zhyllan Fyllah**  
Siswa TKJ — SMK N 1 Lembah Melintang, Pasaman Barat, Sumatera Barat

> *"Anime itu seni. Dan seni layak dinikmati, bahkan di terminal."*

---

✨ **Selamat menonton anime dari terminal!** 🎌

---
