#!/bin/sh

# install.sh — Installer ANLI-CI (ANI-CLI versi Jirankun)
# Otomatis deteksi platform & instal dependensi

set -e

# === Konfigurasi ===
GITHUB_USER="Jirankun"
REPO_NAME="ANLICI-ANime-LIst-Command-Interface-"
SCRIPT_NAME="ANLI-CI.sh"
INSTALL_NAME="ani-cli"
RAW_URL="https://raw.githubusercontent.com/${GITHUB_USER}/${REPO_NAME}/main/${SCRIPT_NAME}"

# === Deteksi platform ===
if [ -n "$PREFIX" ] && [ -f "$PREFIX/bin/termux-setup-storage" ]; then
    PLATFORM="termux"
    INSTALL_DIR="$PREFIX/bin"
elif [ "$(uname)" = "Darwin" ]; then
    PLATFORM="macos"
    INSTALL_DIR="/usr/local/bin"
else
    PLATFORM="linux"
    INSTALL_DIR="/usr/local/bin"
fi

# === Fungsi instalasi dependensi ===
install_deps() {
    echo "🔧 Menginstal dependensi yang dibutuhkan..."

    case "$PLATFORM" in
        termux)
            # Termux: gunakan `pkg`
            pkg update -y
            pkg install -y curl fzf mpv
            # Opsional tapi disarankan
            echo "💡 Untuk fitur download, instal: pkg install aria2 ffmpeg yt-dlp"
            ;;

        linux)
            if command -v apt >/dev/null; then
                # Debian/Ubuntu
                sudo apt update
                sudo apt install -y curl fzf mpv
            elif command -v dnf >/dev/null; then
                # Fedora
                sudo dnf install -y curl fzf mpv
            elif command -v pacman >/dev/null; then
                # Arch
                sudo pacman -Sy --noconfirm curl fzf mpv
            else
                echo "⚠️  Package manager tidak dikenali. Pastikan curl, fzf, dan mpv sudah terinstal."
            fi
            ;;

        macos)
            if ! command -v brew >/dev/null; then
                echo "⚠️  Homebrew tidak ditemukan. Silakan instal dari https://brew.sh"
                exit 1
            fi
            brew install curl fzf yt-dlp
            brew install --cask iina mpv
            ;;

        *)
            echo "❌ Platform tidak didukung."
            exit 1
            ;;
    esac
}

# === Mulai instalasi ===
echo "🚀 Memulai instalasi ANLI-CI (versi Jirankun)..."
echo "Platform terdeteksi: $PLATFORM"

# Tanya pengguna apakah ingin instal dependensi
printf "Apakah Anda ingin menginstal dependensi otomatis? (y/n): "
read -r confirm

if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    install_deps
else
    echo "ℹ️  Lewati instalasi dependensi. Pastikan curl, fzf, dan mpv sudah terinstal!"
fi

# Buat direktori jika belum ada
mkdir -p "$INSTALL_DIR"

# Unduh skrip
echo "📥 Mengunduh ANLI-CI dari GitHub..."
if ! curl --fail --location --output "$INSTALL_DIR/$INSTALL_NAME" "$RAW_URL"; then
    echo "❌ Gagal mengunduh skrip. Periksa koneksi internet atau URL."
    exit 1
fi

# Beri izin eksekusi
chmod +x "$INSTALL_DIR/$INSTALL_NAME"

echo ""
echo "✅ ANLI-CI berhasil diinstal sebagai '$INSTALL_NAME'!"
echo "📌 Jalankan dengan: ani-cli"
echo "🔄 Update kapan saja dengan: ani-cli -U"
