-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 27, 2024 at 07:45 AM
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
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `tb_berita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `isi`, `tanggal`, `author`) VALUES
(1, 'Test', 'Ini cuma buat test ygy', '2024-09-24', 'zeta wangy wangy hu ha hu ha'),
(2, 'FIFA Akhirnya Buka Suara soal Rumput JIS', 'FIFA mengeluarkan pernyataan resmi terkait kondisi rumput lapangan Jakarta International Stadium (JIS) yang sempat mendapat kritikan netizen saat menggelar laga Piala Dunia U-17 2023.\r\nFIFA lewat pernyataan resmi yang dirilis LOC Piala Dunia U-17 2023, Selasa (14/11), menyebut JIS dan ketiga stadion Piala Dunia U-17 2023 lainnya mampu memenuhi harapan FIFA.\r\n\r\n\"Semenjak pembukaan Piala Dunia U-17, keempat stadion di empat kota di tanah air telah menjamu 24 tim negara peserta dengan baik. Tak hanya itu, performa stadion Gelora Bung Tomo (GBT) di Jakarta, Stadion Manahan di Solo, Si Jalak Harupat di Kab. Bandung dan Jakarta International Stadium telah berhasil naik level ke taraf yang diharapkan, yakni level penyelenggaraan turnamen internasional,\" tulis pihak FIFA.\r\n\r\n\"Sebagian stadion bahkan sudah diuji dengan perubahan cuaca. Stadion Si Jalak Harupat didera hujan deras saat pertandingan pembuka antara Jepang dan Polandia. Meski demikian, kendala cuaca ini tak menjadi halangan terselenggaranya pertandingan hingga tuntas,\" sambung pihak FIFA.\r\n\r\nPenampilan rumput JIS mendapat kritikan netizen setelah menggelar pertandingan sepanjang akhir pekan lalu. Perubahan penampakan rumput JIS dari sebelum dan sesudah renovasi untuk Piala Dunia U-17 2023 menjadi sorotan netizen.\r\n\r\nNamun FIFA memastikan rumput JIS sudah memenuhi harapan FIFA dan tim peserta Piala Dunia U-17 2023.\r\n\r\n\"Menurut FIFA, seiring dengan berjalannya turnamen, JIS sudah teruji dengan optimal dalam skala internasional. Semua tim yang bertanding baik di Jakarta, Bandung, Surakarta dan Surabaya memuji kualitas stadion. Mereka menyatakan kepuasannya atas kualitas lapangan, baik di stadion pertandingan maupun di tempat Latihan.\"\r\n\r\n\"FIFA mengungkapkan kepuasan atas pencapaian ini serta mengapresiasi segala usaha PSSI dan pemerintah Indonesia yang telah memenuhi segala tugas dan standard renovasi semua stadion, termasuk untuk JIS. Sejak JIS terpilih sebagai salah satu stadion Piala Dunia U-17 2023, PSSI dan kementerian PUPR langsung tancap gas bekerja keras untuk meningkatkan kualitas stadion. Standard yang mesti tercapai adalah setidaknya memenuhi standard minimum FIFA sebagai lokasi penyelenggaraan pertandingan sekelas turnamen resmi FIFA,\" tulis pihak FIFA.\r\n\r\nFIFA kemudian menjelaskan rumput yang digunakan di JIS adalah jenis Zoysia, rumput yang biasa tumbuh di negara tropis. Senior Pitch Management Manager FIFA, Alan Ferguson, mengatakan meski ada faktor tantangan kelembapan dan curah hujan, kualitas rumput Zoysia yang dipakai di sepanjang Piala Dunia U-17 2023 terbilang baik.\r\n\r\n\"Rumput Zoysia yang digunakan di JIS merupakan hasil panenan dari rumput di lapangan kampus Universitas Pelita Harapan. Pemanenan rumput menggunakan mesin khusus yang dapat menggulung rumput seperti karpet dengan ketebalan lebih dari 4 cm. Proses penggantian rumput lapangan sangat dimonitor dengan ketat oleh tim manajemen lapangan FIFA. Di antaranya dengan pengecekan kualitas rumput dan lapangan setiap harinya,\" tulis pihak FIFA.', '2024-09-24', 'excalibur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
