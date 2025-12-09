#!/bin/sh
# ANLI-CI All-in-One Installer & Runner
# Dibuat oleh Zhyllan Fyllah
# Versi: 1.0 (Embedded)
set -e
# === TAMPILAN AWAL ===
clear
cat <<EOF
    ˆˆˆˆˆW ˆˆˆW   ˆˆWˆˆW      ˆˆW ˆˆˆˆˆˆWˆˆW  Z
   ˆˆTPPˆˆWˆˆˆˆW  ˆˆQˆˆQ      ˆˆQˆˆTPPPP]ˆˆQ  H  ©
   ˆˆˆˆˆˆˆQˆˆTˆˆW ˆˆQˆˆQV.4.10ˆˆQˆˆQ     ˆˆQ  Y  2
   ˆˆTPPˆˆQˆˆQZˆˆWˆˆQˆˆQ    .3ˆˆQˆˆQ     ˆˆQ  -  0
   ˆˆQ  ˆˆQˆˆQ ZˆˆˆˆQˆˆˆˆˆˆˆW ˆˆQZˆˆˆˆˆˆWˆˆQ  K  2
   ZP]  ZP]ZP]  ZPPP]ZPPPPPP] ZP] ZPPPPP]ZP]  U  5
         ANime LIst Command Interface         N
   =========================================  
 ANI-CLI Launcher Anime Look
 Developer     : Zhyllan Fyllah
 Sekolah       : TKJ1 - SMKN 1 LEMBAH MELINTANG
 Sumber        : github.com/pystardust/ani-cli
 Device/User   : $(whoami)
 Waktu sekarang: $(date '+%a, %b %d, %Y  %r')
===============================================
EOF
# === Konfigurasi ===
APP_NAME="ani-cli"
REPO_URL="https://raw.githubusercontent.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-/main/ANLI-CI.sh"
# Deteksi platform
if [ -n "$PREFIX" ] && [ -f "$PREFIX/bin/termux-setup-storage" ]; then
    PLATFORM="termux"
    BIN_DIR="$PREFIX/bin"
elif [ "$(uname -o 2>/dev/null)" = "Msys" ] || [ "$(uname -s | grep -q "MINGW"; echo $?)" = "0" ]; then
    PLATFORM="windows"
    BIN_DIR="$HOME/bin"
    mkdir -p "$BIN_DIR"
else
    PLATFORM="unix"
    BIN_DIR="/usr/local/bin"
fi
TARGET="$BIN_DIR/$APP_NAME"
HIST_DIR="$HOME/.local/state/ani-cli"
# === Fungsi: Unduh & Simpan ANLI-CI ===
fetch_anli_ci() {
    echo " Mengunduh ANLI-CI dari GitHub..."
    if ! curl --fail --location --output "$TARGET.tmp" "$REPO_URL"; then
        echo " Gagal mengunduh. Periksa koneksi atau URL."
        return 1
    fi
    mv "$TARGET.tmp" "$TARGET"
    chmod +x "$TARGET"
    echo " ANLI-CI siap digunakan."
}
# === Fungsi: Instal Dependensi ===
install_deps() {
    case "$PLATFORM" in
        termux)
            echo " Menginstal dependensi di Termux..."
            pkg update -y && pkg install -y curl fzf mpv aria2 ffmpeg yt-dlp
            ;;
        windows)
            echo "  Di Windows, pastikan Anda sudah instal:"
            echo "   - Git Bash"
            echo "   - Scoop + paket: fzf, mpv, curl, aria2, ffmpeg, yt-dlp"
            ;;
        unix)
            echo "  Di Linux/macOS, pastikan paket berikut terinstal:"
            echo "  curl, fzf, mpv, aria2, ffmpeg, yt-dlp"
            ;;
    esac
}
# === Fungsi: Jalankan ANLI-CI ===
run_anli_ci() {
    if [ ! -f "$TARGET" ]; then
        echo " ANLI-CI belum diinstal. Silakan instal terlebih dahulu."
        return 1
    fi
    echo "¶  Menjalankan ANLI-CI..."
    "$TARGET"
}
# === Fungsi: Update ANLI-CI ===
update_anli_ci() {
    if fetch_anli_ci; then
        echo " ANLI-CI berhasil diperbarui!"
    else
        echo " Gagal memperbarui."
    fi
}
# === Fungsi: Uninstall ANLI-CI ===
uninstall_anli_ci() {
    echo "  Menghapus ANLI-CI..."
    [ -f "$TARGET" ] && rm "$TARGET" && echo " File executable dihapus."
    [ -d "$HIST_DIR" ] && rm -rf "$HIST_DIR" && echo " Riwayat dihapus."
    echo " ANLI-CI telah di-uninstall."
}
# === Menu Utama ===
while true; do
    echo
    printf "Pilih tindakan:\n  [1] Instal ANLI-CI\n  [2] Jalankan ANLI-CI\n  [3] Update ANLI-CI\n  [4] Uninstall ANLI-CI\n  [5] Keluar\n> "
    read -r choice
    case "$choice" in
        1)
            install_deps
            fetch_anli_ci || exit 1
            ;;
        2)
            run_anli_ci || exit 1
            ;;
        3)
            update_anli_ci
            ;;
        4)
            uninstall_anli_ci
            ;;
        5)
            echo "Keluar. Terima kasih!"
            exit 0
            ;;
        *)
            echo " Pilihan tidak valid. Coba lagi."
            ;;
    esac
done
