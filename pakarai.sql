-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mei 2019 pada 00.50
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pakarai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` varchar(5) NOT NULL,
  `action` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `action`
--

INSERT INTO `action` (`id`, `action`, `status`) VALUES
('j1', 'Standar', 1),
('j2', 'Buruk', 1),
('j3', 'Baik', 1),
('j4', 'Sangat Baik', 1),
('p1', 'Berapa Jumlah Penumpang Mobil ?', 0),
('p11', '', 0),
('p2', 'Bagaimana Tingkat Keamanan Mobil ?', 0),
('p3', 'Tingkat harga mobil ?', 0),
('p4', 'Bagaimana Biaya Maintenance ?', 0),
('p5', 'Ukuran bagasi ?', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan`
--

CREATE TABLE IF NOT EXISTS `pilihan` (
  `idj` int(11) NOT NULL,
  `idp` varchar(5) DEFAULT NULL,
  `bfr` int(11) NOT NULL,
  `pilihan` text,
  `direct` varchar(5) DEFAULT NULL,
  `penjelasan` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pilihan`
--

INSERT INTO `pilihan` (`idj`, `idp`, `bfr`, `pilihan`, `direct`, `penjelasan`, `gambar`) VALUES
(1, 'p1', 0, '2 Orang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/k2.jpg'),
(2, 'p1', 0, '4 Orang', 'p2', '', 'asset/img/k4.jpg'),
(3, 'p1', 0, 'Lebih dari 4 Orang', 'p2', '', 'asset/img/kmore.jpg'),
(4, 'p2', 2, 'Rendah', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', ''),
(5, 'p2', 2, 'Sedang', 'p4', '', ''),
(6, 'p2', 2, 'Tinggi', 'p4', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', ''),
(7, 'p4', 5, 'Rendah', 'p5', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(8, 'p4', 5, 'Sedang', 'p5', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(9, 'p4', 5, 'Tinggi', 'p3', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(10, 'p4', 5, 'Sangat Tinggi', 'p5', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(11, 'p5', 7, 'Kecil', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b1.jpg'),
(12, 'p5', 7, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b2.jpg'),
(13, 'p5', 7, 'Besar', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/b3.jpg'),
(14, 'p4', 6, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(15, 'p4', 6, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(16, 'p4', 6, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(17, 'p4', 6, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(18, 'p5', 8, 'Kecil', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b1.jpg'),
(19, 'p5', 8, 'Sedang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b2.jpg'),
(20, 'p5', 8, 'Besar', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b3.jpg'),
(21, 'p3', 9, 'Rendah', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(22, 'p3', 9, 'Sedang', 'p5', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/harga.png'),
(23, 'p3', 9, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(24, 'p3', 9, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/harga.png'),
(25, 'p5', 10, 'Kecil', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b1.jpg'),
(26, 'p5', 10, 'Sedang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b2.jpg'),
(27, 'p5', 10, 'Besar', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b3.jpg'),
(28, 'p5', 22, 'Kecil', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b1.jpg'),
(29, 'p5', 22, 'Sedang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b2.jpg'),
(30, 'p5', 22, 'Besar', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b3.jpg'),
(31, 'p2', 3, 'Rendah', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', ''),
(32, 'p2', 3, 'Sedang', 'p5', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', ''),
(33, 'p2', 3, 'Tinggi', 'p3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', ''),
(34, 'p5', 32, 'Kecil', 'p3', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/b1.jpg'),
(35, 'p5', 32, 'Sedang', 'p3', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b2.jpg'),
(36, 'p5', 32, 'Besar', 'p4', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket rendah dari provider, memiliki anak dan berstatus lajang, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', 'asset/img/b3.jpg'),
(37, 'p4', 36, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(38, 'p4', 36, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(39, 'p4', 36, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(40, 'p4', 36, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(41, 'p3', 35, 'Rendah', 'p4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/harga.png'),
(42, 'p3', 35, 'Sedang', 'p4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/harga.png'),
(43, 'p3', 35, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(44, 'p3', 35, 'Sangat Tinggi', 'p4', '', 'asset/img/harga.png'),
(46, 'p4', 41, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(47, 'p4', 41, 'Sedang', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(48, 'p4', 41, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(49, 'p4', 41, 'Sangat Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(50, 'p3', 46, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/harga.png'),
(51, 'p3', 46, 'Sedang', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/harga.png'),
(52, 'p3', 46, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(53, 'p3', 46, 'Sangat Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(54, 'p3', 47, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/harga.png'),
(55, 'p3', 47, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(56, 'p3', 47, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(57, 'p3', 47, 'Sangat Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/harga.png'),
(58, 'p4', 49, 'Rendah', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(59, 'p4', 49, 'Sedang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(60, 'p4', 49, 'Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(61, 'p4', 49, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(62, 'p4', 42, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(63, 'p4', 42, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(64, 'p4', 42, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(65, 'p4', 42, 'Sangat Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(66, 'p4', 44, 'Rendah', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(67, 'p4', 44, 'Sedang', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(68, 'p4', 44, 'Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(69, 'p4', 44, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(70, 'p3', 34, 'Rendah', 'p4', '', 'asset/img/harga.png'),
(71, 'p3', 34, 'Sedang', 'p4', '', 'asset/img/harga.png'),
(72, 'p3', 34, 'Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/harga.png'),
(73, 'p3', 34, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/harga.png'),
(74, 'p4', 70, 'Rendah', 'j3', 'Mobil masuk dalam kategori baik, artinya mobil layak digunakan', 'asset/img/maint.png'),
(75, 'p4', 70, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(76, 'p4', 70, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(77, 'p4', 70, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(78, 'p4', 71, 'Rendah', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(79, 'p4', 71, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(80, 'p4', 71, 'Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(81, 'p4', 71, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(82, 'p3', 33, 'Rendah', 'p5', '', 'asset/img/harga.png'),
(83, 'p3', 33, 'Sedang', 'p4', '', 'asset/img/harga.png'),
(84, 'p3', 33, 'Tinggi', 'p4', '', 'asset/img/harga.png'),
(85, 'p3', 33, 'Sangat Tinggi', 'p5', '', 'asset/img/harga.png'),
(86, 'p5', 82, 'Kecil', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b1.jpg'),
(87, 'p5', 82, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b2.jpg'),
(88, 'p5', 82, 'Besar', 'j4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/b3.jpg'),
(89, 'p4', 83, 'rendah', 'j4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/maint.png'),
(90, 'p4', 83, 'Sedang', 'j4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/maint.png'),
(91, 'p4', 83, 'Tinggi', 'j4', 'Mobil masuk dalam kategori sangat baik, artinya mobil sangat layak digunakan', 'asset/img/maint.png'),
(92, 'p4', 83, 'Sangat Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(93, 'p4', 84, 'Rendah', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(94, 'p4', 84, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(95, 'p4', 84, 'Tinggi', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/maint.png'),
(96, 'p4', 84, 'Sangat Tinggi', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/maint.png'),
(97, 'p5', 85, 'Kecil', 'j2', 'Mobil ini sangat tidak direkomendasikan untuk digunakan', 'asset/img/b1.jpg'),
(98, 'p5', 85, 'Sedang', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b2.jpg'),
(99, 'p5', 85, 'Besar', 'j1', 'Mobil masuk dalam kategori standar, artinya mobil masih layak digunakan', 'asset/img/b3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`idj`), ADD KEY `idp` (`idp`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pilihan`
--
ALTER TABLE `pilihan`
ADD CONSTRAINT `pilihan_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `action` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
