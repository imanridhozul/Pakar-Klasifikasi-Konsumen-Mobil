-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 06:05 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakarai`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` varchar(5) NOT NULL,
  `action` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `action`, `status`) VALUES
('j1', 'Cepat', 1),
('j2', 'Lama', 1),
('p1', 'Berapakah usia konsumen ?', 0),
('p2', 'Apakah konsumen mengikuti layanan lainnya ?', 0),
('p3', 'Apakah konsumen mempunyai kontrak dengan provider?', 0),
('p4', 'Apa Jenis pembayaran konsumen yang digunakan?', 0),
('p5', 'Status saat ini?', 0),
('p6', 'Apakah Konsumen mempunyai anak?', 0),
('p7', 'Apa jenis kelamin konsumen ?', 0),
('p8', 'Bagaimana Rencana penggunaan jasa Provider?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `idj` int(11) NOT NULL,
  `idp` varchar(5) DEFAULT NULL,
  `bfr` int(11) NOT NULL,
  `pilihan` text,
  `direct` varchar(5) DEFAULT NULL,
  `penjelasan` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`idj`, `idp`, `bfr`, `pilihan`, `direct`, `penjelasan`, `gambar`) VALUES
(1, 'p1', 0, 'kurang dari 30 tahun', 'j1', 'Konsumen yang memiliki umur kurang dari 30 tahun tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk segera mengganti gadget/smarthphonenya', 'asset/img/k30.jpg'),
(2, 'p1', 0, 'diantara 30 sampai 45 tahun', 'p2', '', 'asset/img/30-45.jpg'),
(3, 'p1', 0, 'diatas 45 tahun', 'p2', '', 'asset/img/tua.png'),
(4, 'p2', 3, 'ya', 'j1', 'Konsumen yang memiliki umur diatas 45 tahun dan mengikuti layanan-layanan lainnya tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk segera mengganti gadget/smarthphonenya', 'asset/img/layanan.jpg'),
(5, 'p2', 3, 'tidak', 'j2', 'Konsumen yang memiliki umur diatas 45 tahun dan tidak mengikuti layanan-layanan lainnya, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', ''),
(6, 'p2', 2, 'ya', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun dan mengikuti layanan-layanan lainnya, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk segera mengganti gadget/smarthphonenya', 'asset/img/layanan.jpg'),
(7, 'p2', 2, 'tidak', 'p3', '', ''),
(8, 'p3', 7, 'tidak memiliki kontrak dengan provider', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun, tidak mengikuti layanan-layanan lainnya dan tidak mengikuti kontrak apapun dengan provider, perlu dianggarkan biaya periklanan karena lama merespon untuk segera mengganti gadget/smarthphonenya', ''),
(9, 'p3', 7, 'kurang dari atau sama dengan 2 tahun', 'p4', '', ''),
(10, 'p3', 7, 'diatas 2 tahun', 'p5', '', ''),
(11, 'p4', 9, 'otomatis', 'p8', '', ''),
(12, 'p4', 9, 'manual', 'p5', '', ''),
(13, 'p5', 10, 'Lajang', 'p4', '', 'asset/img/lajang.jpg'),
(14, 'p5', 10, 'menikah', 'p7', '', 'asset/img/menikah.jpg'),
(15, 'p8', 11, 'Prabayar', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun, tidak mengikuti layanan-  layanan lainnya, memiliki kontrak dengan provider kurang dari 2 tahun, pembayarannya dilakukan secara otomatis dan berencana menggunakan paket pra bayar dari provider, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk segera mengganti gadget/smarthphonenya', ''),
(16, 'p8', 11, 'menengah', 'p7', '', ''),
(17, 'p8', 11, 'Rendah', 'p6', '', ''),
(18, 'p5', 12, 'Lajang', 'p6', '', 'asset/img/lajang.jpg'),
(19, 'p5', 12, 'Menikah', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun, tidak mengikuti layanan-  layanan lainnya, memiliki kontrak dengan provider kurang dari 2 tahun, pembayarannya manual dan statusnya menikah, perlu dianggarkan biaya periklanan karena lama merespon untuk segera mengganti gadget/smarthphonenya', 'asset/img/menikah.jpg'),
(20, 'p4', 13, 'Otomatis', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun, tidak mengikuti layanan-  layanan lainnya, memiliki kontrak dengan provider lebih dari 2 tahun, statusnya lajang, dan pembayarannya dilakukan secara otomatis, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk segera   mengganti gadget/smarthphonenya', ''),
(21, 'p4', 13, 'manual', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai 45 tahun, tidak mengikuti layanan-  layanan lainnya, memiliki kontrak dengan provider lebih dari 2 tahun, statusnya   lajang dan pembayarannya dilakukan secara manual, perlu dianggarkan biaya   periklanan karena lama merespon untuk segera mengganti gadget/smarthphone', ''),
(22, 'p7', 14, 'Pria', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak diatas 2 tahun dengan provider, berstatus menikah dan berjenis kelamin pria, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', 'asset/img/pria.png'),
(23, 'p7', 14, 'Wanita', 'p8', '', 'asset/img/wanita.jpg'),
(24, 'p8', 23, 'Prabayar', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak diatas 2 tahun dengan provider, berstatus menikah, berjenis kelamin wanita dan berencana menggunakan paket pra-bayar dari provider, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk mengganti gadget/smarthphonenya', ''),
(25, 'p8', 23, 'Menengah', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak diatas 2 tahun dengan provider, berstatus menikah, berjenis kelamin wanita dan berencana menggunakan paket menengah dari provider, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', ''),
(26, 'p7', 16, 'Wanita', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket menengah dari provider dan berjenis kelamin wanita, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk mengganti gadget/smarthphonenya', 'asset/img/wanita.jpg'),
(27, 'p7', 16, 'Pria', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket menengah dari provider dan berjenis kelamin pria,  perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', 'asset/img/pria.png'),
(28, 'p6', 18, 'Punya', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara manual,berstatus lajang dan memiliki anak, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk mengganti gadget/smarthphonenya', 'asset/img/anak.jpg'),
(29, 'p6', 18, 'Tidak Punya', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara manual,berstatus lajang dan tidak memiliki anak, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', ''),
(30, 'p6', 17, 'Punya', 'p5', '', 'asset/img/anak.jpg'),
(31, 'p6', 17, 'Tidak Punya', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket rendah dari provider, dan tidak memiliki anak perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', ''),
(32, 'p5', 30, 'Menikah', 'j1', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket rendah dari provider, memiliki anak dan berstatus menikah, tidak perlu dianggarkan biaya periklanan karena cepat merespon untuk mengganti gadget/smarthphonenya', 'asset/img/menikah.jpg'),
(33, 'p5', 30, 'Lajang', 'j2', 'Konsumen yang memiliki umur diantara 30 sampai dengan 45 tahun, tidak mengikuti layanan-layanan lainnya, memiliki kontrak dibawah 2 tahun dengan provider, pembayarannya dilakukan secara otomatis, berencana untuk menggunakan paket rendah dari provider, memiliki anak dan berstatus lajang, perlu dianggarkan biaya periklanan karena lama merespon untuk mengganti gadget/smarthphonenya', 'asset/img/lajang.jpg');

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
  ADD PRIMARY KEY (`idj`),
  ADD KEY `idp` (`idp`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD CONSTRAINT `pilihan_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `action` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
