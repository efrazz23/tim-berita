<?php
include 'koneksi.php'; 

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "SELECT judul, isi, tanggal, author FROM tb_berita WHERE id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
    } else {
        echo "Berita tidak ditemukan.";
        exit;
    }
} else {
    echo "ID berita tidak valid.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $row['judul']; ?></title>
    <link rel="stylesheet" href="css/detail-berita.css">
</head>
<body>
    <div class="news-container">
        <h1><?php echo $row['judul']; ?></h1>
        <p><strong>Tanggal: </strong><?php echo $row['tanggal']; ?> | <strong>Penulis: </strong><?php echo $row['author']; ?></p>
        <p><?php echo nl2br($row['isi']); ?></p>
        <a class="back-link" href="index.php">Kembali ke Daftar Berita</a>
    </div>
</body>
</html>

<?php
$conn->close();
?>
