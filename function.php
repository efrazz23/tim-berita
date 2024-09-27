<?php
include("koneksi.php");

// Fungsi untuk mengupload gambar ke layanan hosting gambar menggunakan API IMGBB
function uploadImageToAPI($file) {
    $fileTmp = $file['tmp_name'];

    // API URL dan API Key
    $apiUrl = 'https://api.imgbb.com/1/upload';
    $apiKey = 'b91eef2930c05e414e87881251223dff'; // Ganti dengan API key yang sesuai

    // Inisialisasi cURL
    $ch = curl_init();

    // Menyiapkan file untuk dikirim ke API
    $cfile = new CURLFile($fileTmp, mime_content_type($fileTmp), $file['name']);
    
    // Data yang akan dikirim ke API
    $postData = [
        'key' => $apiKey,
        'image' => $cfile,
        'expiration' => 600 // Set expiration jika diperlukan
    ];

    // Set opsi cURL
    curl_setopt($ch, CURLOPT_URL, $apiUrl);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Mengirim permintaan dan mendapatkan respons
    $response = curl_exec($ch);

    // Tutup cURL
    curl_close($ch);

    // Mengembalikan respons dalam format array
    return json_decode($response, true);
}

// Kirim isi form ke database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $judul = $_POST['judul'];
    $isi = $_POST['isi'];
    $tanggal = $_POST['tanggal'];
    $author = $_POST['author'];

    // Proses upload gambar ke API
    $result = uploadImageToAPI($_FILES['gambar']);

    // Cek apakah gambar berhasil di-upload ke hosting gambar
    if (isset($result['success']) && $result['success']) {
        // Gambar berhasil di-upload, ambil URL gambar dari API
        $gambarUrl = $result['data']['url'];

        // Masukkan data ke database bersama dengan URL gambar
        $sql = "INSERT INTO tb_berita (judul, isi, tanggal, author, gambar) 
                VALUES ('$judul', '$isi', '$tanggal', '$author', '$gambarUrl')";

        if ($conn->query($sql) === TRUE) {
            echo "Berita berhasil disimpan dengan gambar!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        // Jika ada kesalahan saat upload gambar
        echo "Gagal mengupload gambar: " . (isset($result['message']) ? $result['message'] : 'Tidak ada pesan error');
    }

    $conn->close();
}
?>
