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
    # Menjalankan skrip Python dengan batasan waktu 1 menit
    timeout 1m python $python_script_file
    
    # Memeriksa apakah skrip Python telah selesai dengan baik atau tidak
    if [ $? -eq 0 ]; then
        echo "Skrip Python telah selesai dijalankan."
    else
        echo "Skrip Python belum selesai dalam batas waktu yang ditentukan (1 menit)."
    fi
    # Menghapus file Python setelah dijalankan
    rm $python_script_file
else
    echo "Gagal mengunduh file Python."
fi

# Selesai
echo "Skrip telah selesai dijalankan."
