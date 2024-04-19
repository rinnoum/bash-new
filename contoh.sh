#!/bin/sh

# Ini adalah contoh skrip shell sederhana
echo "Halo, selamat datang di console notebook!"
echo "Saya akan menjalankan beberapa perintah shell untuk Anda."

# Menampilkan informasi tentang direktori saat ini
echo "Anda saat ini berada di direktori:"
pwd

# Menampilkan daftar file di direktori saat ini
echo "Berikut daftar file di direktori ini:"
ls

# Menampilkan informasi tentang pengguna yang sedang digunakan
echo "Pengguna yang sedang digunakan saat ini:"
whoami

# Menampilkan informasi tentang sistem operasi
echo "Informasi sistem operasi:"
uname -a

# Menampilkan pengguna yang sedang login
echo "Pengguna yang sedang login:"
who

# Menampilkan penggunaan memori saat ini
echo "Penggunaan memori saat ini:"
free -h

# Menampilkan informasi CPU
echo "Informasi CPU:"
lscpu

# Menampilkan informasi tentang ruang disk
echo "Informasi ruang disk:"
df -h

# Selesai
echo "Ini adalah contoh skrip shell sederhana."
