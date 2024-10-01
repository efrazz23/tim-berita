-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 01, 2024 at 06:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--
CREATE DATABASE IF NOT EXISTS `berita` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `berita`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

DROP TABLE IF EXISTS `tb_berita`;
CREATE TABLE `tb_berita` (
  `id` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `isi`, `tanggal`, `author`, `gambar`) VALUES
(1, 'Test', 'Ini cuma buat test ygy', '2024-09-24', 'zeta wangy wangy hu ha hu ha', ''),
(2, 'FIFA Akhirnya Buka Suara soal Rumput JIS', 'FIFA mengeluarkan pernyataan resmi terkait kondisi rumput lapangan Jakarta International Stadium (JIS) yang sempat mendapat kritikan netizen saat menggelar laga Piala Dunia U-17 2023.\r\nFIFA lewat pernyataan resmi yang dirilis LOC Piala Dunia U-17 2023, Selasa (14/11), menyebut JIS dan ketiga stadion Piala Dunia U-17 2023 lainnya mampu memenuhi harapan FIFA.\r\n\r\n\"Semenjak pembukaan Piala Dunia U-17, keempat stadion di empat kota di tanah air telah menjamu 24 tim negara peserta dengan baik. Tak hanya itu, performa stadion Gelora Bung Tomo (GBT) di Jakarta, Stadion Manahan di Solo, Si Jalak Harupat di Kab. Bandung dan Jakarta International Stadium telah berhasil naik level ke taraf yang diharapkan, yakni level penyelenggaraan turnamen internasional,\" tulis pihak FIFA.\r\n\r\n\"Sebagian stadion bahkan sudah diuji dengan perubahan cuaca. Stadion Si Jalak Harupat didera hujan deras saat pertandingan pembuka antara Jepang dan Polandia. Meski demikian, kendala cuaca ini tak menjadi halangan terselenggaranya pertandingan hingga tuntas,\" sambung pihak FIFA.\r\n\r\nPenampilan rumput JIS mendapat kritikan netizen setelah menggelar pertandingan sepanjang akhir pekan lalu. Perubahan penampakan rumput JIS dari sebelum dan sesudah renovasi untuk Piala Dunia U-17 2023 menjadi sorotan netizen.\r\n\r\nNamun FIFA memastikan rumput JIS sudah memenuhi harapan FIFA dan tim peserta Piala Dunia U-17 2023.\r\n\r\n\"Menurut FIFA, seiring dengan berjalannya turnamen, JIS sudah teruji dengan optimal dalam skala internasional. Semua tim yang bertanding baik di Jakarta, Bandung, Surakarta dan Surabaya memuji kualitas stadion. Mereka menyatakan kepuasannya atas kualitas lapangan, baik di stadion pertandingan maupun di tempat Latihan.\"\r\n\r\n\"FIFA mengungkapkan kepuasan atas pencapaian ini serta mengapresiasi segala usaha PSSI dan pemerintah Indonesia yang telah memenuhi segala tugas dan standard renovasi semua stadion, termasuk untuk JIS. Sejak JIS terpilih sebagai salah satu stadion Piala Dunia U-17 2023, PSSI dan kementerian PUPR langsung tancap gas bekerja keras untuk meningkatkan kualitas stadion. Standard yang mesti tercapai adalah setidaknya memenuhi standard minimum FIFA sebagai lokasi penyelenggaraan pertandingan sekelas turnamen resmi FIFA,\" tulis pihak FIFA.\r\n\r\nFIFA kemudian menjelaskan rumput yang digunakan di JIS adalah jenis Zoysia, rumput yang biasa tumbuh di negara tropis. Senior Pitch Management Manager FIFA, Alan Ferguson, mengatakan meski ada faktor tantangan kelembapan dan curah hujan, kualitas rumput Zoysia yang dipakai di sepanjang Piala Dunia U-17 2023 terbilang baik.\r\n\r\n\"Rumput Zoysia yang digunakan di JIS merupakan hasil panenan dari rumput di lapangan kampus Universitas Pelita Harapan. Pemanenan rumput menggunakan mesin khusus yang dapat menggulung rumput seperti karpet dengan ketebalan lebih dari 4 cm. Proses penggantian rumput lapangan sangat dimonitor dengan ketat oleh tim manajemen lapangan FIFA. Di antaranya dengan pengecekan kualitas rumput dan lapangan setiap harinya,\" tulis pihak FIFA.', '2024-09-24', 'excalibur', ''),
(3, 'test 3', 'ini test ke 3', '2024-09-27', 'zeta', 'https://i.ibb.co/c3pGbQb/dev.png'),
(23, 'WNA China Curi Tambang Emas 774 Kg Indonesia, Gasak Rp1,02 T', 'Warga Negara Asing (WNA) asal China berinisial YH yang terlibat penambangan emas ilegal di Kabupaten Ketapang, Kalimantan Barat sudah disidangkan di Pengadilan Negeri Ketapang pada 28 Agustus 2024 lalu.\r\nMengutip detik.com, perbuatan YH membuat negara rugi hingga triliunan rupiah. Angka itu dihitung berdasarkan hilangnya cadangan emas akibat penambangan ilegal.\r\n\r\nDalam persidangan terungkap emas yang berhasil digasak YH melalui aktivitas penambangan ilegal yang dilakukannya di Ketapang 774,27 kg. Tak hanya emas, ia juga berhasil mengeruk cadangan perak di lokasi tersebut 937,7 kg. Akibatnya, Indonesia rugi Rp1,02 triliun imbas aktivitas tersebut. \r\n\r\nPasalnya, dari uji sampel emas di lokasi pertambangan, hasil kandungan emas di lokasi tersebut memiliki kadar yang tinggi (high grade). Sampel batuan mempunyai kandungan emas 136 gram/ton, sedangkan sampel batu tergiling mempunyai kandungan emas 337 gram/ton.\r\n\r\nDari fakta persidangan juga terungkap merkuri atau air raksa (Hg) digunakan untuk memisahkan bijih emas dari logam atau mineral lain, dalam pengolahan pertambangan emas ini. Dari sampel hasil olahan, ditemukan Hg (mercuri) dengan kandungan cukup tinggi, sebesar Hg 41,35 mg/kg.\r\n\r\nPelaku melakukan aksinya dengan memanfaatkan lubang tambang atau tunnel pada wilayah tambang yang berizin yang seharusnya dilakukan pemeliharaan, namun justru dimanfaatkan penambangannya secara ilegal.\r\n\r\nSetelah dilakukan pemurnian, hasil emas dibawa keluar dari terowongan tersebut dan kemudian dijual dalam bentuk ore (bijih) atau bullion emas.\r\n\r\nDari hasil penyelidikan Penyidik Pegawai Negeri Sipil (PPNS) Direktorat Jenderal Mineral dan Batubara, terungkap bahwa volume batuan bijih emas tergali sebanyak 2.687,4 m3.\r\n\r\nBatuan ini berasal dari koridor antara Wilayah Izin Usaha Pertambangan (WIUP) dua perusahaan emas PT BRT dan PT SPM, yang saat ini belum memiliki persetujuan RKAB untuk produksi tahun 2024-2026.\r\n\r\nSesuai Pasal 158 Undang-undang Nomor 3 Tahun 2020 tentang Mineral dan Batubara, pelaku terancam hukuman kurungan selama 5 tahun dan denda maksimal Rp 100 miliar. Kejaksaan Negeri Ketapang masih terus mengembangkan perkara pidana dalam undang-undang lain.\r\n\r\nSidang selanjutnya akan dilakukan enam tahap sidang, yaitu saksi dari pihak penasihat hukum, ahli dari penasihat hukum, pembacaan tuntutan pidana (requisitor), pengajuan/pembacaan nota pembelaan(pleidool), pengajuan/pembacaan tanggapan-tanggapan(replik dan dupplik), dan terakhir siding pembacaan putusan.\r\n\r\nKasus penambangan emas ilegal yang dilakukan YH beberapa waktu lalu berhasil diungkap Kementerian Energi dan Sumber Daya Mineral (ESDM) bersama dengan Korwas PPNS Bareskrim Polri.\r\n\r\n\"Ditemukan adanya aktivitas tanpa izin yang terjadi di tempat kejadian perkara yang dilakukan oleh tersangka inisial YH yang bersangkutan merupakan warga negara RRT atau Republik rakyat Tiongkok,\" jelasnya Direktur Teknik dan Lingkungan Direktorat Jenderal Mineral dan Batu Bara Mineral (Ditjen Minerba) Kementerian ESDM Sunindyo Suryo Herdadi Konferensi Pers, Sabtu (10/5) seperti dikutip dari CNBCIndonesia.\r\n\r\nSunindyo mengungkapkan modus yang digunakan oleh YH dalam melakukan aksinya adalah dengan memanfaatkan lubang tambang atau tunnel pada wilayah tambang yang berizin.\r\n\r\nLubang tersebut seharusnya dilakukan pemeliharaan namun justru dimanfaatkan penambangannya secara ilegal.\r\n\r\n\"Hasil kejahatan tersebut ya dilakukan pemurnian dan kemudian di bawah keluar dari terowongan tersebut dan kemudian dijual dalam bentuk ore (bijih) atau bullion emas,\" ujar Sunindyo.\r\n\r\nSunindyo mengungkapkan YH disangka dengan Pasal 58 UU Nomor 3 Tahun 2020 tentang Pertambangan Mineral dan Batu Bara\r\n\r\n\"Sebagaimana yang dimaksud di dalam Pasal 158 Undang-undang Nomor 3 Tahun 2020 dengan ancaman hukuman kurungan selama 5 tahun dan denda maksimal Rp 100 miliar dan perkara ini juga sedang dikembangkan menjadi perkara pidana dalam undang-undang selain Undang-undang Minerba,\" ungkapnya.\r\n\r\nDia juga menyebutkan peralatan yang ditemukan pada penambangan ilegal tersebut seperti alat ketok atau labelling, saringan emas, cetakan emmas, dan induction smelting.\r\n\r\nTidak hanya itu, ditemukan pula alat berat seperti lower loader dan dump truck listrik.\r\n\r\n\"Setelah dilakukan pengukuran oleh surveyor yang kompeten ditemukan kemajuan lubang tambang dengan total panjang 1.648,3 meter dengan volume 4.467,2 meter kubik,\" tambahnya.', '2024-09-27', 'zeta wangy wangy hu ha hu ha', 'https://i.ibb.co/Jm83FFv/berita.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
