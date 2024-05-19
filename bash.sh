#!/bin/bash

# Langkah 1: Memperbarui sistem
sudo apt update && sudo apt upgrade -y
sudo apt install curl -y

# Langkah 2: Membuat direktori .config dan file starship.toml
sudo mkdir -p ~/.config
sudo touch ~/.config/starship.toml

# Langkah 3: Membuat direktori github di direktori home
sudo mkdir ~/github

# Langkah 4: Menghapus file .bashrc
sudo rm ~/.bashrc

# Langkah 5: Clone repository bash
cd ~/github

# Langkah 6: Masuk ke direktori bash dan beri izin eksekusi pada file setup.sh
cd bash
sudo chmod 775 setup.sh

# Langkah 7: Menyalin file starship.toml ke direktori .config
sudo chmod 664 starship.toml
sudo cp starship.toml ~/.config/

# Langkah 8: Menjalankan file setup.sh
./setup.sh

# Langkah 9: menambahkan fornt pada terminal
sudo mkdir -p /usr/share/fonts/truetype/
sudo cp font.ttf /usr/share/fonts/truetype/
sudo fc-cache -fv
gsettings set org.gnome.desktop.interface monospace-font-name 'font 12'

# Langkah 9: Ikuti instruksi pada layar untuk mengkonfigurasi prompt dan instalasi berbagai alat
echo "Selamat mencoba!"
