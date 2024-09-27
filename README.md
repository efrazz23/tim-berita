### Cara Penggunaan

_Lakukan secara urut step - step dibawah ini untuk install dan edit repo ini._
1. Klik tab code (warna hijau) lalu copy link yang bagian HTTPS
2. Buat folder untuk project (harus dalam folder htdocs (xampp) / folder www (laragon)
3. Buka Vs Code
4. Klik File > Open Folder > Select folder yang tadi sudah di buat
5. Di Vs Code Klik titik tiga (sebelah view) > New Terminal > Klik tanda + > Pilih Git Bash
6. Clone Repo (ketik diterminal)
   ```sh
   git clone https://github.com/efrazz23/tim-berita.git
   ```
7. Ubah file koneksi.php, sesuaikan dengan database masing - masing
8. Buka xampp / laragon > Hidupkan Apache dan MySQL > Buka localhost/phpmyadmin > import > pilih file berita.sql
9. Lanjut ngedit

### Cara Lihat Preview

1. Pastikan xampp / laragon sudah aktif
2. Buka browser
3. ketik localhost/nama_folder_project // contoh localhost/web-berita

### Cara Update Repo

1. Di Vs Code Klik titik tiga (sebelah view) > New Terminal > Klik tanda + > Pilih Git Bash
2. Git Add (ketik diterminal)
   ```sh
   git add .
   ```
3. Git Commit
   ```sh
   git commit -m "pesan commit"
   ```
4. Ubah Branch
   ```sh
   git branch -M main
   ```
5. Git Remote
   ```sh
   git remote add origin https://github.com/efrazz23/tim-berita.git
   ```
6. Git Push
   ```sh
   git push -u origin main
   ```

### Contributors:

<a href=" https://github.com/efrazz23/tim-berita/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=efrazz23/tim-berita" alt="contrib.rocks image" />
</a>
