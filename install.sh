#!/bin/bash
# install.sh untuk memasang ANLI-CI di Termux

echo "Update paket Termux..."
pkg up -y

echo "Install dependensi (git, curl)..."
pkg install git curl wget ffmpeg python nodejs aria2 figlet fzf -y

echo "Clone repo ANLI-CI..."
git clone https://github.com/Jirankun/ANLICI-ANime-LIst-Command-Interface-.git
cd ANLICI-ANime-LIst-Command-Interface-

echo "Pasang script ANLI-CI ke PATH Termux..."
cp ANLI-CI.sh $PREFIX/bin/ANLI-CI
chmod +x $PREFIX/bin/ANLI-CI

echo "Selesai!"
echo "silahkan ketik ANLI-CI untuk run...