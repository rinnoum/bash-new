#!/bin/sh

# URL tempat file Python disimpan di GitHub
python_script_url="https://raw.githubusercontent.com/rinnoum/bash-new/main/simple_script.py"

# Nama file Python setelah diunduh
python_script_file="simple_script.py"

# Menampilkan pesan sambutan
echo "Menjalankan skrip Python..."

# Mengunduh file Python dari GitHub
wget -O $python_script_file $python_script_url

# Memeriksa apakah pengunduhan berhasil
if [ $? -eq 0 ]; then
    echo "File Python berhasil diunduh."
    # Menjalankan skrip Python
    python $python_script_file
    # Menghapus file Python setelah dijalankan
    rm $python_script_file
else
    echo "Gagal mengunduh file Python."
fi

# Selesai
echo "Skrip telah selesai dijalankan."
