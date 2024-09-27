<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Berita</title>
    <link rel="stylesheet" href="css/form-edit-berita.css">
</head>

<body>

    <div class="form-container">
        <h2>Form Berita</h2>

        <form action="function.php" method="post" enctype="multipart/form-data">
            <label for="judul">Judul Berita:</label>
            <input type="text" id="judul" name="judul" placeholder="Masukkan judul berita" required>

            <label for="isi">Isi Berita:</label>
            <textarea id="isi" name="isi" rows="10" placeholder="Masukkan isi berita" required></textarea>

            <label for="tanggal">Tanggal Dibuat:</label>
            <input type="date" id="tanggal" name="tanggal" required>

            <label for="author">Penulis:</label>
            <input type="text" id="author" name="author" placeholder="Masukkan nama penulis" required>

            <label for="file">Pilih gambar untuk header: </label>
            <input type="file" name="gambar" id="file" accept="image/*" required>
            <!-- <button type="submit">Upload Gambar</button> -->

            <button type="submit">Submit Berita</button>
        </form>
    </div>

</body>

</html>