<?php
include 'koneksi.php'; // Hubungkan ke database

// Ambil semua berita dari database
$sql = "SELECT id, judul, isi, tanggal, author FROM tb_berita ORDER BY tanggal DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal Berita</title>
    <link rel="stylesheet" href="css/style-index.css">
</head>

<body>
    <h1>Portal Berita</h1>

    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $previewIsi = substr($row['isi'], 0, 200) . '...';
            echo "<div class='news-preview'>";
            echo "<h2><a href='news_detail.php?id=" . $row['id'] . "'>" . $row['judul'] . "</a></h2>";
            echo "<p><strong>Tanggal: </strong>" . $row['tanggal'] . " | <strong>Penulis: </strong>" . $row['author'] . "</p>";
            echo "<p>" . $previewIsi . "</p>";
            echo "<a class='read-more' href='detail-berita.php?id=" . $row['id'] . "'>Baca Selengkapnya</a>";
            echo "</div>";
        }
    } else {
        echo "<p>Tidak ada berita yang tersedia.</p>";
    }
    $conn->close();
    ?>
</body>

</html>