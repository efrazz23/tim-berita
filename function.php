<?php
include("koneksi.php");

// Kirim isi form ke database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $judul = $_POST['judul'];
    $isi = $_POST['isi'];
    $tanggal = $_POST['tanggal'];
    $author = $_POST['author'];

    $sql = "INSERT INTO tb_berita (judul, isi, tanggal, author) 
            VALUES ('$judul', '$isi', '$tanggal', '$author')";

if ($conn->query($sql) === TRUE) {
    echo "Berita berhasil disimpan!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

    $conn->close();
}
?>