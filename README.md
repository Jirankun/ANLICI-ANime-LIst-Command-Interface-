# ANLI-CI (ANime LIst Command Interface)

---

### 📜 **Peringatan & Himbauan Etis**

> **ANLI-CI hanyalah alat pencarian anime.**  
> Tools ini **tidak menyediakan konten ilegal**, melainkan hanya mengakses informasi publik dari sumber yang tersedia secara terbuka.
> 
> ⚠️ **Dilarang keras** menggunakan ANLI-CI untuk:
> 
> - Mencari, menonton, atau menyebarkan konten **pornografi**, **kekerasan ekstrem**, **hate speech**, atau materi ilegal lainnya.
> - Tujuan yang melanggar hukum, merugikan, atau melanggar norma sosial dan agama.
> 
> 🙏 **Mohon gunakan tools ini dengan bijak dan hanya untuk hal-hal yang positif**, seperti menonton anime legal, belajar bahasa asing, atau mengapresiasi karya seni animasi Jepang.
> 
> **"Teknologi tidak salah — yang salah adalah penggunaannya."**

---

**Versi modifikasi oleh Zhyllan Fyllah** — alat CLI ringan untuk menjelajahi dan menonton anime langsung dari terminal!  
Dioptimalkan khusus untuk **pengguna Termux di Android dan juga pengguna git bash di windows**, dengan antarmuka Bahasa Indonesia dan fitur otomatis.

Dibangun dari kode sumber [pystardust/ani-cli](https://github.com/pystardust/ani-cli), dengan penyesuaian untuk pengalaman lokal yang lebih nyaman.

## 🌟 Fitur Utama

- Menggunakan **Bahasa Indonesia** di seluruh bagian Prompt
  
- 100% ***TANPA IKLAN*** dan hal yang mengganggu lainnya
  
- Jika **pencarian tidak ditemukan** → tampilkan pesan & **muat ulang otomatis setelah 2 detik**
  
- Perintah `-U` / `--update` , bukan repo asli
  
- Stabil di perangkat Android dengan layar terbatas
  
- Ringan, tidak perlu backend, langsung jalan di terminal
  
- Kekurangannya :TIDAK ADA SUBTITLE BAHASA INDONESIA karena server indonesia menggunakan link AD dan ANTI BOT,mohon di maklumi
  
- Sumber data: [allmanga.to](https://allmanga.to)
  

---

<details>
<summary>1.📲 Instalasi dan Jalankan di android (Via Termux)</summary>

- Jalankan perintah Instalasi berikut:

```sh
sh
cd ~ && pkg install -y git mpv yt-dlp aria2 ffmpeg fzf && git clone https://github.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-.git && cd ANLICI-ANime-LIst-Command-Interface- && ./ANLI-CI.sh
```

> ⚠ Pastikan `termux-setup-storage` sudah dijalankan jika diperlukan.

---

## ▶ Menjalankan ANLI-CI

- Jika sudah di install, jalankan dengan:

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

- Hapus semua file ANLI-CI dan riwayat tontonan:

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
<details>
--- <summary>2.🔹 Untuk Windows {7,10,dan 11} (Git Bash + Scoop) Instal Scoop (PowerShell)</summary>

- Instal scoop (PowerShell)

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop bucket add extras
```

---

- Instal dependensi (PowerShell)

```powershell
scoop install git curl fzf mpv ffmpeg aria2 yt-dlp dos2unix
```

- Jalankan di Git Bash

```sh
git clone https://github.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-.git
cd ANLICI-ANime-LIst-Command-Interface-
dos2unix ANLI-CI.sh 2>/dev/null || sed -i 's/\r$//' ANLI-CI.sh
chmod +x ANLI-CI.sh
./ANLI-CI.sh
```

- Jalankan Ulang

```sh
cd ~/ANLICI-ANime-LIst-Command-Interface- && \
dos2unix ANLI-CI.sh 2>/dev/null || sed -i 's/\r$//' ANLI-CI.sh && \
chmod +x ANLI-CI.sh && \
./ANLI-CI.sh
```

> Perintah ini aman dijalankan berulang kali — memperbaiki format file & izin otomatis.

- Update

```sh
cd ~/ANLICI-ANime-LIst-Command-Interface- && git pull
⚠️ Fitur `./ANLI-CI.sh -U` tidak disarankan di Windows. Lebih aman pakai `git pull`.
```

> Karena ANLI-CI diinstal via `git clone`, cukup jalankan ini
> 
> ⚠️ Fitur `./ANLI-CI.sh -U` **tidak disarankan di Windows**. Lebih aman pakai `git pull`.

- 🗑️ Uninstall

Hapus semua file ANLI-CI dan riwayat:

```sh
rm -rf ~/ANLICI-ANime-LIst-Command-Interface- ~/.local/state/ani-cli
```

(Opsional) Hapus paket juga:

```powershell
scoop uninstall git curl fzf mpv ffmpeg aria2 yt-dlp dos2unix
```

</details>
---
<details>
<summary>Instalasi melalui file install.sh</summary>

```powershell
curl -sSL https://raw.githubusercontent.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-/main/install.sh | sh
```
</details>

## 🎯 Dibuat Oleh

**Zhyllan Fyllah**  
Siswa TKJ — SMK N 1 Lembah Melintang, Pasaman Barat, Sumatera Barat

> *"Anime itu seni. Dan seni layak dinikmati, bahkan di terminal."*

---

✨ **Selamat menonton anime dari terminal!** 🎌

---
