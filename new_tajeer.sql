-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 16 Bulan Mei 2020 pada 22.30
-- Versi server: 10.2.31-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u347876656_new_tajeer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `active`
--

CREATE TABLE `active` (
  `id` int(1) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `active`
--

INSERT INTO `active` (`id`, `keterangan`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `front_produk`
--

CREATE TABLE `front_produk` (
  `id_front_produk` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `front_produk`
--

INSERT INTO `front_produk` (`id_front_produk`, `produk_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_keranjang`
--

CREATE TABLE `isi_keranjang` (
  `id` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga_per_produk` int(11) NOT NULL,
  `total_berat_per_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `isi_keranjang`
--

INSERT INTO `isi_keranjang` (`id`, `id_keranjang`, `id_produk`, `jumlah`, `harga`, `total_harga_per_produk`, `total_berat_per_produk`) VALUES
(50, 34, 2, 2, 10000, 20000, 700),
(52, 36, 10, 1, 0, 0, 0),
(53, 37, 16, 1, 35000, 35000, 500),
(54, 38, 16, 1, 35000, 35000, 500),
(56, 40, 30, 6, 10000, 60000, 3000),
(57, 41, 16, 1, 35000, 35000, 500),
(58, 42, 27, 1, 240000, 240000, 10000),
(59, 43, 34, 1, 145000, 145000, 500),
(60, 44, 12, 1, 40000, 40000, 500),
(61, 45, 18, 1, 15000, 15000, 250),
(64, 47, 29, 1, 75000, 75000, 1000),
(65, 48, 25, 2, 250000, 500000, 6000),
(68, 51, 35, 1, 125000, 125000, 500),
(69, 52, 29, 2, 75000, 150000, 2000),
(72, 56, 29, 1, 75000, 75000, 1000),
(73, 57, 112, 1, 79000, 79000, 500),
(75, 59, 85, 1, 45000, 45000, 250),
(76, 60, 112, 2, 79000, 158000, 1000),
(77, 61, 69, 1, 35000, 35000, 250),
(78, 62, 26, 1, 130000, 130000, 850),
(81, 65, 91, 1, 6500, 6500, 100),
(91, 74, 146, 1, 65000, 65000, 330),
(93, 76, 79, 2, 15000, 30000, 200),
(94, 77, 77, 1, 70000, 70000, 500),
(95, 77, 78, 1, 45000, 45000, 250),
(96, 78, 80, 3, 15000, 45000, 600),
(97, 78, 117, 1, 35000, 35000, 200),
(98, 78, 122, 1, 35000, 35000, 200),
(99, 79, 138, 1, 27000, 27000, 1000),
(100, 80, 152, 3, 25000, 75000, 1350),
(101, 77, 166, 1, 15000, 15000, 500),
(102, 77, 163, 1, 20000, 20000, 1000),
(104, 82, 106, 1, 37000, 37000, 330),
(105, 83, 51, 1, 45000, 45000, 500),
(106, 84, 69, 3, 35000, 105000, 750),
(108, 85, 163, 2, 20000, 40000, 2000),
(109, 76, 80, 2, 15000, 30000, 400),
(110, 86, 34, 1, 0, 0, 0),
(111, 86, 54, 1, 0, 0, 0),
(112, 86, 55, 1, 0, 0, 0),
(113, 87, 69, 1, 0, 0, 0),
(114, 73, 174, 1, 5500, 5500, 250),
(115, 73, 163, 1, 20000, 20000, 1000),
(117, 73, 177, 1, 10000, 10000, 250),
(118, 73, 159, 1, 17500, 17500, 300),
(119, 73, 167, 1, 10000, 10000, 250),
(120, 73, 171, 1, 30000, 30000, 1000),
(121, 88, 138, 5, 27000, 135000, 5000),
(123, 90, 29, 1, 85000, 85000, 1000),
(125, 92, 44, 1, 50000, 50000, 25),
(126, 93, 34, 1, 140000, 140000, 500),
(128, 95, 19, 1, 175000, 175000, 500),
(130, 97, 191, 1, 0, 0, 0),
(131, 85, 88, 1, 35000, 35000, 1000),
(132, 85, 100, 1, 20000, 20000, 1000),
(133, 85, 174, 2, 5500, 11000, 500),
(134, 85, 166, 2, 15000, 30000, 1000),
(135, 98, 75, 2, 30, 60, 500),
(136, 85, 96, 1, 12000, 12000, 1000),
(137, 85, 168, 2, 10000, 20000, 500),
(138, 85, 165, 1, 8500, 8500, 250),
(139, 99, 111, 2, 55000, 110000, 700),
(142, 102, 22, 1, 0, 0, 0),
(144, 104, 138, 4, 27000, 108000, 4000),
(145, 105, 92, 3, 60000, 180000, 1500),
(146, 106, 138, 1, 27000, 27000, 1000),
(147, 107, 258, 2, 14500, 29000, 1000),
(148, 107, 259, 1, 70000, 70000, 450),
(149, 108, 260, 1, 107500, 107500, 10),
(151, 110, 160, 1, 12000, 12000, 250),
(152, 110, 173, 1, 25000, 25000, 1000),
(153, 111, 190, 1, 135000, 135000, 1000),
(154, 110, 76, 1, 25000, 25000, 250),
(155, 112, 24, 1, 305000, 305000, 750),
(156, 113, 24, 1, 305000, 305000, 750),
(157, 114, 24, 0, 0, 0, 0),
(158, 110, 162, 1, 13500, 13500, 300),
(159, 115, 75, 2, 25000, 50000, 500),
(161, 117, 39, 1, 1200000, 1200000, 800),
(162, 118, 167, 2, 10000, 20000, 500),
(163, 118, 173, 1, 25000, 25000, 1000),
(164, 119, 38, 1, 1000000, 1000000, 500),
(165, 118, 76, 1, 25000, 25000, 250),
(167, 121, 13, 1, 155000, 155000, 100),
(168, 122, 283, 1, 70000, 70000, 500),
(169, 123, 151, 1, 0, 0, 0),
(170, 124, 216, 1, 0, 0, 0),
(171, 125, 111, 1, 55000, 55000, 350),
(172, 126, 285, 1, 100000, 100000, 1000),
(173, 126, 287, 3, 12000, 36000, 450),
(174, 127, 29, 4, 85000, 340000, 4000),
(176, 129, 169, 1, 27000, 27000, 1000),
(177, 129, 76, 1, 25000, 25000, 250),
(178, 130, 285, 1, 88000, 88000, 1000),
(179, 129, 162, 2, 14500, 29000, 600),
(180, 129, 97, 2, 10000, 20000, 500),
(181, 131, 79, 5, 15000, 75000, 500),
(182, 132, 208, 1, 45000, 45000, 400),
(183, 132, 207, 1, 55000, 55000, 500),
(184, 132, 205, 1, 65000, 65000, 500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_navigasi`
--

CREATE TABLE `isi_navigasi` (
  `id` int(11) NOT NULL,
  `id_navigasi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `isi_navigasi`
--

INSERT INTO `isi_navigasi` (`id`, `id_navigasi`, `nama`, `url`, `aktif`) VALUES
(1, 2, 'About Tajeer', 'about/about_tajeer', 1),
(2, 2, 'Socio Preneur', 'about/socio_preneur', 1),
(3, 2, 'Bisnis Inklusif', 'about/bisnis_inklusif', 1),
(4, 2, 'Green Business', 'about/green_business', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `id_kategori_global` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kategori_aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `id_kategori_global`, `id_toko`, `jumlah`, `kategori_aktif`) VALUES
(1, 1, 1, 4, 1),
(2, 2, 2, 2, 1),
(3, 2, 5, 0, 1),
(4, 1, 6, 0, 1),
(5, 1, 8, 0, 1),
(6, 5, 9, 0, 1),
(7, 4, 10, 0, 1),
(8, 4, 11, 0, 1),
(9, 1, 12, 0, 1),
(10, 4, 13, 0, 1),
(11, 5, 14, 0, 1),
(12, 2, 15, 0, 1),
(13, 4, 16, 0, 1),
(14, 1, 17, 0, 1),
(15, 1, 18, 0, 1),
(16, 1, 19, 0, 1),
(17, 1, 20, 0, 1),
(18, 4, 21, 0, 1),
(19, 1, 22, 0, 1),
(20, 1, 23, 0, 1),
(21, 7, 24, 0, 1),
(22, 8, 25, 0, 1),
(23, 1, 26, 0, 1),
(24, 1, 27, 0, 1),
(25, 1, 28, 0, 1),
(26, 5, 29, 0, 1),
(27, 9, 30, 0, 1),
(28, 1, 31, 0, 1),
(29, 4, 32, 0, 1),
(30, 6, 33, 0, 1),
(31, 7, 34, 0, 1),
(32, 7, 35, 0, 1),
(33, 5, 36, 0, 1),
(34, 1, 37, 0, 1),
(35, 1, 38, 0, 1),
(36, 2, 39, 0, 1),
(37, 1, 40, 0, 1),
(38, 4, 41, 0, 1),
(39, 1, 42, 0, 1),
(40, 1, 43, 0, 1),
(41, 1, 44, 0, 1),
(42, 1, 45, 0, 1),
(43, 7, 46, 0, 1),
(44, 1, 47, 0, 1),
(45, 1, 48, 0, 1),
(46, 7, 49, 0, 1),
(47, 1, 50, 0, 1),
(48, 7, 51, 0, 1),
(49, 7, 52, 0, 1),
(50, 1, 53, 0, 1),
(51, 4, 54, 0, 1),
(52, 7, 55, 0, 1),
(53, 7, 56, 0, 1),
(54, 1, 57, 0, 1),
(55, 1, 58, 0, 1),
(56, 1, 59, 0, 1),
(57, 1, 60, 0, 1),
(58, 10, 61, 0, 1),
(59, 1, 62, 0, 1),
(60, 1, 63, 0, 1),
(61, 1, 64, 0, 1),
(62, 7, 65, 0, 1),
(63, 7, 66, 0, 1),
(64, 10, 67, 0, 1),
(65, 7, 68, 0, 1),
(66, 8, 69, 0, 1),
(67, 6, 70, 0, 1),
(68, 1, 71, 0, 1),
(69, 1, 72, 0, 1),
(70, 1, 73, 0, 1),
(71, 1, 74, 0, 1),
(72, 1, 75, 0, 1),
(73, 4, 76, 0, 1),
(74, 1, 77, 0, 1),
(75, 1, 78, 0, 1),
(76, 1, 79, 0, 1),
(77, 1, 80, 0, 1),
(78, 10, 81, 0, 1),
(79, 4, 82, 0, 1),
(80, 1, 83, 0, 1),
(81, 1, 84, 0, 1),
(82, 11, 85, 0, 1),
(83, 7, 86, 0, 1),
(84, 6, 141, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_global`
--

CREATE TABLE `kategori_global` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_global`
--

INSERT INTO `kategori_global` (`id`, `kategori`, `jumlah`, `icon`, `is_active`) VALUES
(1, 'Makanan / Minuman', 0, 'fas fa-utensils', 1),
(2, 'Minuman', 0, 'fas fa-wine-glass-alt', 0),
(3, 'asdasd', 0, '', 0),
(4, 'Pakaian / Aksesoris', 0, '', 1),
(5, 'Jasa', 0, '', 1),
(6, 'Elektronik & IT', 0, '', 1),
(7, 'Lain-lain', 0, '', 1),
(8, 'Sayuran / Buah-buahan', 0, '', 1),
(9, 'Kosmetik', 0, '', 1),
(10, 'Kesehatan', 0, '', 1),
(11, 'Seprai dan Bedcover', 0, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `jmh_produk` int(11) NOT NULL,
  `total_berat` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `id_status_bayar` int(1) NOT NULL,
  `id_status_barang` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `id_kurir` int(2) NOT NULL,
  `harga_all` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat_penerima` varchar(1024) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `catatan` varchar(1024) NOT NULL,
  `resi` varchar(500) NOT NULL,
  `to_region` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `kurir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_toko`, `tgl`, `jmh_produk`, `total_berat`, `total_harga`, `id_status_bayar`, `id_status_barang`, `ongkir`, `id_kurir`, `harga_all`, `user_id`, `penerima`, `alamat_penerima`, `no_hp`, `catatan`, `resi`, `to_region`, `berat`, `kurir`) VALUES
(34, 2, '2020-04-30 05:21:20', 1, 700, 20000, 3, 3, 10000, 1, 30000, 15, 'Riri Safitri', 'Depok', '081266222684', 'Jus orange ga pakai gula', '', 0, 0, ''),
(36, 8, '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 0, 0, 3, '', '', '', '', '', 0, 0, ''),
(37, 18, '2020-04-30 07:41:16', 1, 500, 35000, 3, 3, 10000, 1, 45000, 15, 'Riri Safitri', 'Depok', '081266222684', '', '', 0, 0, ''),
(38, 18, '2020-04-30 08:16:02', 1, 500, 35000, 3, 3, 10000, 1, 45000, 15, 'Riri Safitri', 'Depok', '081266222684', '', '', 0, 0, ''),
(40, 20, '2020-04-30 10:10:46', 1, 3000, 60000, 3, 3, 10000, 1, 70000, 30, 'arifsm', '', '0811221', '', '', 0, 0, ''),
(41, 18, '2020-04-30 12:31:48', 1, 500, 35000, 3, 3, 10000, 1, 45000, 30, 'arifsm', 'Jaksel', '0811221', '', '', 0, 0, ''),
(42, 19, '2020-04-30 02:49:34', 1, 10000, 240000, 3, 3, 20000, 1, 260000, 30, 'arifsm', 'Jalan Pertani', '0811221', '', '', 0, 0, ''),
(43, 23, '2020-04-30 08:49:26', 1, 500, 145000, 3, 3, 10000, 1, 155000, 30, 'arifsm', 'Al Azhar pusat', '0811221', '', '', 0, 0, ''),
(44, 10, '2020-04-30 11:19:27', 1, 500, 40000, 3, 3, 10000, 1, 50000, 15, 'Riri Safitri', 'Jl. H Tholib no 41 RT 7/ RW 8, Kampung Pabuaran, Bojonggede, Kab. Bogor', '081266222684', '', '', 0, 0, ''),
(45, 12, '2020-04-30 11:36:46', 1, 250, 15000, 3, 3, 10000, 1, 25000, 45, 'Fahmi', 'jl. swasembada timur heheheh nyobaa dulu yaa', '085793594883', 'ini untuk tutorial beli yaa indi', '', 0, 0, ''),
(47, 19, '2020-05-01 09:54:52', 1, 1000, 75000, 3, 3, 10000, 1, 85000, 53, 'A Jamal', 'Jl. Margasatwa Raya no.1A\r\nRt/Rw 05/07\r\nCilandak Timur,\r\nPasar Minggu', '0818188863', '', 'Wahana (AXW45293)', 0, 0, ''),
(48, 19, '2020-05-01 10:03:15', 1, 6000, 500000, 3, 3, 20000, 1, 520000, 15, 'Riri Safitri', 'Jl. H Tholib no 41 RT 7/ RW 8, Kampung Pabuaran, Bojonggede, Kab. Bogor', '081266222684', '', '', 0, 0, ''),
(51, 22, '2020-05-01 10:31:27', 1, 500, 125000, 3, 3, 10000, 1, 135000, 58, 'Niken Parwati', 'jl. Alexandri 1 no 16 Permata Hijau blok J2\r\nJakarta 12210', '081333777876', '', '', 0, 0, ''),
(52, 19, '2020-05-01 10:33:41', 1, 2000, 150000, 3, 3, 10000, 1, 160000, 56, 'ys Hidayat ', 'Jl. H. Amsar No.2 RT06 / RW 09, Cipulir, Kebayoran Lama, Jakarta Selatan , DKI JAKARTA 12230', '81211115130', '', 'GoSend', 0, 0, ''),
(53, 1, '2020-04-16 07:41:16', 1, 500, 35000, 3, 3, 10000, 1, 45000, 15, 'Riri Safitri', 'Depok', '081266222684', '', '', 0, 0, ''),
(56, 19, '2020-05-02 10:31:52', 1, 1000, 75000, 3, 3, 10000, 1, 85000, 57, 'Ary Syahriar', 'Perumahan Pondok Benda Indah\r\nJl. Benda Raya Blok K1 no 22\r\nPondok Benda, Pamulang\r\nTangerang Selatan\r\n15416', '08158882844', '', '', 0, 0, ''),
(57, 52, '0000-00-00 00:00:00', 1, 500, 79000, 1, 0, 10000, 1, 89000, 81, '', '', '', '', '', 0, 0, ''),
(59, 10, '2020-05-02 01:35:05', 1, 250, 45000, 3, 3, 10000, 1, 55000, 30, 'Kevin', 'Markaz Ayli, Komplek Masjid Agung Al Azhar.,  Jalan Sisingamnagaraja, Kebayoran Baru, Jakarta, Selatan.', '081284913517', 'Warna sesuai gambar, Biru', 'Paxel - EM.M714QLJKOK-20200503-1-MA43AW', 0, 0, ''),
(60, 52, '0000-00-00 00:00:00', 1, 1000, 158000, 1, 0, 0, 0, 0, 94, '', '', '', '', '', 0, 0, ''),
(61, 22, '0000-00-00 00:00:00', 1, 250, 35000, 1, 0, 0, 0, 35000, 94, '', '', '', '', '', 0, 0, ''),
(62, 19, '0000-00-00 00:00:00', 1, 850, 130000, 1, 0, 0, 0, 0, 94, '', '', '', '', '', 0, 0, ''),
(65, 20, '2020-05-02 11:38:53', 1, 100, 6500, 3, 3, 10000, 1, 16500, 99, 'Sandi Mega Saputra', 'Jalan pancoran barat Vii d RT. 09 RW.01. Kel. Pancoran Kec. Pancoran Jakarta selatan 12780', '081322397465', '', 'GK-291382352 (Gosend)', 0, 0, ''),
(73, 20, '2020-05-04 11:12:02', 6, 3050, 93000, 3, 3, 10000, 1, 100000, 99, 'Sandi Mega Saputra', 'Jalan pancoran barat Vii d (toko Rida) RT. 09 RW.01. Kel. Pancoran Kec. Pancoran Jakarta selatan 12780', '081322397465', 'SESUAI ORDERAN', 'GK-291382352 (Gosend)', 0, 0, ''),
(74, 49, '2020-05-03 02:21:20', 1, 330, 65000, 3, 3, 10000, 1, 75000, 78, 'esthi.aditya@gmail.com', 'Jl. Thamrin Kp. Ketapang, Gang H.Koteng (Komplek Sumber Waras) RT/RW: 02/03 No.12, Kel. Ketapang Kec. Cipondoh, Tangerang', '089694415421', '', '', 0, 0, ''),
(76, 10, '0000-00-00 00:00:00', 2, 600, 60000, 1, 0, 10000, 1, 70000, 58, '', '', '', '', '', 0, 0, ''),
(77, 20, '2020-05-04 08:11:47', 4, 2250, 150000, 3, 3, 10000, 1, 160000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Pulo, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'Kurir pribadi agen', 0, 0, ''),
(78, 10, '2020-05-04 09:30:41', 3, 1000, 115000, 3, 3, 10000, 1, 125000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'JNE - 630730014213120', 0, 0, ''),
(79, 25, '2020-05-04 09:33:31', 1, 1000, 27000, 3, 3, 10000, 1, 37000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', '_', 0, 0, ''),
(80, 60, '2020-05-04 09:32:22', 1, 1350, 75000, 3, 3, 10000, 1, 85000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'Pribadi', 0, 0, ''),
(82, 49, '2020-05-08 07:27:09', 1, 330, 37000, 2, 1, 10000, 1, 47000, 105, 'Nida\'ul Hasanati', 'Jalan Aria Putra No. 5 RT. 001/09 Ciputat Tangerang Selatan 15411\r\nRumah Dekat Pasar Ciputat, Belakang Alfa Midi Pasar Ciputat.\r\nRumah persis Di Depan Yayasan Aria Putra\r\n', '08121835079', '', '', 0, 0, ''),
(83, 37, '2020-05-08 07:28:51', 1, 500, 45000, 2, 1, 10000, 1, 55000, 105, 'Nida\'ul Hasanati', 'Jalan Aria Putra No. 5 RT. 001/09 Ciputat Tangerang Selatan 15411\r\nRumah Dekat Pasar Ciputat, Belakang Alfa Midi Pasar Ciputat.\r\nRumah persis Di Depan Yayasan Aria Putra\r\n', '08121835079', '', '', 0, 0, ''),
(84, 22, '2020-05-08 07:28:09', 1, 750, 105000, 2, 1, 10000, 1, 115000, 105, 'Nida\'ul Hasanati', 'Jalan Aria Putra No. 5 RT. 001/09 Ciputat Tangerang Selatan 15411\r\nRumah Dekat Pasar Ciputat, Belakang Alfa Midi Pasar Ciputat.\r\nRumah persis Di Depan Yayasan Aria Putra\r\n', '08121835079', '', '', 0, 0, ''),
(85, 20, '2020-05-08 07:40:09', 8, 7250, 176500, 2, 1, 20000, 1, 196500, 105, 'Nida\'ul Hasanati', 'Jalan Aria Putra No. 5 RT. 001/09 Ciputat Tangerang Selatan 15411\r\nRumah Dekat Pasar Ciputat, Belakang Alfa Midi Pasar Ciputat.\r\nRumah persis Di Depan Yayasan Aria Putra\r\n', '08121835079', '', '', 0, 0, ''),
(86, 23, '0000-00-00 00:00:00', 3, 0, 0, 1, 0, 0, 0, 0, 106, '', '', '', '', '', 0, 0, ''),
(87, 22, '0000-00-00 00:00:00', 1, 0, 35000, 1, 0, 0, 0, 0, 110, '', '', '', '', '', 0, 0, ''),
(88, 25, '2020-05-05 11:43:20', 1, 5000, 135000, 3, 3, 10000, 1, 145000, 114, 'Ririn Wahyu Ch', '\r\njln khair 54B\r\nRt 003/Rw 04\r\nragunan- psr minggu\r\njaksel', '6285363854767', '', '_', 0, 0, ''),
(90, 19, '2020-05-05 06:56:05', 1, 1000, 85000, 3, 3, 10000, 1, 95000, 75, 'Aprilia Tri Purwandari', 'Jalan Paninggilan Batas RT 003/11 No.13 Ciledug Tangerang 15153\r\n', '08568609394', '', 'Grab Delivery', 0, 0, ''),
(92, 36, '0000-00-00 00:00:00', 1, 25, 50000, 1, 0, 10000, 1, 60000, 45, '', '', '', '', '', 0, 0, ''),
(93, 23, '2020-05-06 11:36:18', 1, 500, 140000, 3, 3, 10000, 1, 150000, 55, 'Endang', 'Jl. BDN II/E-10, Cilandak Barat, Jakarta Selatan', '082110117170', 'Kalau boleh, tolong rasa green tea diganti dengan rasa keju ... terima kasih ya ..', '000750089928', 0, 0, ''),
(95, 16, '0000-00-00 00:00:00', 1, 500, 175003, 1, 0, 0, 0, 0, 1, '', '', '', '', '', 0, 0, ''),
(97, 40, '0000-00-00 00:00:00', 1, 0, 127000, 1, 0, 0, 0, 0, 65, '', '', '', '', '', 0, 0, ''),
(98, 38, '0000-00-00 00:00:00', 1, 500, 60, 1, 0, 10000, 1, 10060, 105, '', '', '', '', '', 0, 0, ''),
(99, 47, '2020-05-08 10:33:54', 1, 700, 110000, 3, 3, 10000, 1, 120000, 124, 'Putri', 'Jatikramat Bulak, Gg. Mangga 3 No. 12. Rt 03, Rw 11 (dekat masjid Al Mutaqin). Kota Bekasi - Jatiasih, Jawa Barat. 17421.', '081317760028', '', 'EM.MVAY4DTLCY-20200508-1-BMUOQX (PAXEL)', 0, 0, ''),
(102, 16, '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 0, 0, 27, '', '', '', '', '', 0, 0, ''),
(104, 25, '2020-05-08 05:26:40', 1, 4000, 108000, 3, 2, 10000, 1, 118000, 125, 'Rizka', 'Komplek marinir jln  lapangan tembak no 1 rt 11 rw 05 cilandak jakarta selatan', '081332467144', 'Rmh sy dekat panti asuhan yo sudarso cilandak', 'Grabsomeday -Septian Dwi Handoko - B6524 WNM - Honda Vari0 125', 0, 0, ''),
(105, 22, '2020-05-09 09:20:16', 1, 1500, 180000, 3, 3, 10000, 1, 190000, 33, 'Asep Saefuddin', 'Kompleks Griya Indah Bogor Blok G no 6-7 Jl KH Soleh Iskandar Kedungbadak Bogor 16163', '087880712998', '', '', 0, 0, ''),
(106, 25, '2020-05-10 05:39:31', 1, 1000, 27000, 3, 3, 10000, 1, 37000, 114, 'Yuli Ramelan', 'Rivera Hill B1/33 jl. Darussaadah cinangka depok', '+628128398103', '', 'Grabsomeday', 0, 0, ''),
(107, 25, '2020-05-10 06:16:34', 2, 1450, 99000, 3, 3, 10000, 1, 109000, 114, 'Dewi Bintang', 'Dewi/ pondok sukatani permai jl durian 5 no 19..rt06/014 tapos depok ', '082298320261', '', 'Grabsomeday', 0, 0, ''),
(108, 25, '2020-05-10 07:52:03', 1, 10, 107500, 3, 3, 10000, 1, 117500, 39, 'Suryanih Oni', 'Suryanih Oni\r\nJl.Al Ikhlas No.4 Rt 05/09\r\nKel.Jati Jajar Kec.Tapos Kota Depok', '+628568921409', '', 'Agen yang kirim', 0, 0, ''),
(110, 20, '2020-05-11 11:55:34', 4, 1800, 75500, 3, 3, 10000, 1, 85500, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'Kurir pribadi agen', 0, 0, ''),
(111, 40, '2020-05-11 11:55:58', 1, 1000, 135000, 3, 3, 10000, 1, 145000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'Gosend', 0, 0, ''),
(112, 16, '2020-05-11 09:35:52', 1, 750, 305000, 3, 2, 10000, 1, 315000, 133, 'Nita Noriko', 'Jln. Manggar 1 Blok G II no 42  Pondok Kelapa XII  Kavling DKI Jakarta Timur', '081294500417', 'mohon dikirim warna sprey yang soft', '11-20-3458296 lion parcel', 0, 0, ''),
(113, 16, '0000-00-00 00:00:00', 1, 750, 305000, 1, 0, 10000, 1, 315000, 45, '', '', '', '', '', 0, 0, ''),
(114, 16, '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 0, 0, 28, '', '', '', '', '', 0, 0, ''),
(115, 38, '2020-05-11 11:54:59', 1, 500, 50000, 3, 3, 10000, 1, 60000, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'JD0071727168', 0, 0, ''),
(117, 33, '2020-05-11 01:06:46', 1, 800, 1200000, 3, 3, 10000, 1, 1210000, 1, 'Rafi', 'Rawasari Barat 8', '0878005325', 'Tester (NO ACC)', '', 0, 0, ''),
(118, 20, '2020-05-11 11:25:37', 3, 1750, 70003, 3, 3, 10000, 1, 80003, 99, 'Sandi Mega Saputra', 'Jalan pancoran barat Vii d RT. 09 RW.01. Kel. Pancoran Kec. Pancoran Jakarta selatan 12780', '081322397465', '', 'Kurir pribadi agen', 0, 0, ''),
(119, 33, '2020-05-11 07:00:00', 1, 500, 1000003, 3, 3, 15000, 2, 1015003, 1, 'Rafi', 'Rawasari Barat 8', '0878005325', 'tes 2', '', 0, 0, ''),
(121, 13, '0000-00-00 00:00:00', 1, 100, 155003, 1, 0, 0, 0, 0, 114, '', '', '', '', '', 0, 0, ''),
(122, 81, '2020-05-12 01:12:10', 1, 500, 70003, 3, 2, 10000, 1, 80003, 137, 'MUHAMMAD CHAIRUL HAKIM', 'Griya Sakinah Serpong (Depan Balai Warga). RT 005 RW 002 No. 5. Kel, Kademangan. Kec, Setu. Serpong. Tangerang Selatan. Banten\r\nkode pos : 15314', '081280807436', '', 'EM.DONU6MDVND-20200513-1-MTX8OY dan paxel', 0, 0, ''),
(123, 60, '0000-00-00 00:00:00', 1, 0, 35000, 1, 0, 0, 0, 0, 139, '', '', '', '', '', 0, 0, ''),
(124, 38, '0000-00-00 00:00:00', 1, 0, 50000, 1, 0, 0, 0, 0, 139, '', '', '', '', '', 0, 0, ''),
(125, 47, '2020-05-12 01:23:15', 1, 350, 55003, 3, 2, 10000, 1, 65003, 139, 'Maryam Jameelah', 'Alam pesona wanajaya cibitung blok p10 nomor 34 kec. Cibitung kab. Bekasi', '081384800749', '', 'JD0071981620 (J&T express)', 0, 0, ''),
(126, 84, '2020-05-12 01:23:18', 2, 1450, 136003, 3, 2, 15000, 2, 151003, 140, 'Devi Utami Agustini', 'Metro Cilegon Cluster Grand Cendana Blok N24B-7 RT04/07. Kelurahan Kb.dalem, kecamatan purwakarta, kota cilegon, 42433', '085210342281', '', 'JNE Reg - 540730018010820', 0, 0, ''),
(127, 19, '2020-05-12 05:19:08', 1, 4000, 340003, 3, 3, 10000, 1, 350003, 75, 'Aprilia Tri Purwandari', 'Jalan Paninggilan Batas RT 003/11 No.13 Ciledug Tangerang 15153', '08568609394', '', 'Grab Delivery (Same Day)', 0, 0, ''),
(129, 20, '2020-05-14 04:13:55', 4, 2350, 101003, 3, 1, 10000, 1, 111003, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', '', 0, 0, ''),
(130, 84, '2020-05-14 04:14:30', 1, 1000, 88003, 3, 2, 10000, 1, 98003, 90, 'Astharini', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '08119922007', '', 'JNE Reg - 542160010779120', 0, 0, ''),
(131, 10, '2020-05-15 02:57:40', 1, 500, 75003, 3, 1, 10000, 1, 85003, 133, 'Nita Noriko', 'Jln. Manggar 1 Blok G2 No 42 Pondok Kelapa 12 Jakarta Timur', '081294500417', '', '', 0, 0, ''),
(132, 71, '2020-05-16 02:26:59', 3, 1400, 165003, 3, 1, 10000, 1, 175003, 124, 'Putri', 'Perumahan taman asri blok e 11 no.4. Rt 001. Rw 012. Larangan Tangerang 15154. (Di sebrang pintu masuk gladiola residence)', '081317760028', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id` int(2) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id`, `jenis`, `harga`) VALUES
(1, 'JABODETABEK', 10000),
(2, 'LUAR JABODETABEK', 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigasi`
--

CREATE TABLE `navigasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `navigasi`
--

INSERT INTO `navigasi` (`id`, `nama`, `url`, `aktif`) VALUES
(1, 'HOME', 'user', 1),
(2, 'ABOUT US', 'about', 1),
(3, 'JUAL BELI', 'jualbeli', 1),
(4, 'SAMA-SAMA SENANG', '', 1),
(5, 'AYO BERBAGI', '', 1),
(6, 'PROGRAM LAINNYA', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `nama_produk` varchar(128) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(1024) NOT NULL,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_toko`, `nama_produk`, `id_kategori_produk`, `stok`, `image`, `harga`, `deskripsi`, `berat`) VALUES
(13, 13, 'CVIS Organ tubuh\'series', 4, 1, 'celemek_organ.jpeg', 155000, 'Celemek yang menjelaskan mengenai organ - organ tubuh pernafasan dan pencernaaan manusia', 100),
(16, 18, 'PiGo Calzone Pizza Goreng', 1, 0, 'pico1.jpeg', 35000, 'Pizza Goreng yang gurih dan enak\r\n\r\ncocok buat nemenin di semua kegiatan kamu\r\n\r\ntersedia varian:\r\n\r\n- keju\r\n\r\n- smoked beef\r\n\r\n- triple moza', 500),
(19, 16, 'Seprai Katun Jepang King Size (180x200x30)', 4, 1, 'WhatsApp_Image_2020-04-30_at_21_59_07.jpeg', 315000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 seprai + 2 sarban + 2 sargul\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 500),
(20, 16, 'Bedcover Katun Jepang - Ukuran Single (160x240)', 4, 10, 'WhatsApp_Image_2020-04-30_at_21_59_17_(1).jpeg', 325000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 bedcover katun jepang\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 500),
(21, 16, 'Bedcover Katun Jepang - Ukuran Double (230x240)', 4, 10, '410aa49e-b0d7-4d49-a9a6-405aadbe8891.jpg', 425000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 bedcover katun jepang\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 500),
(22, 16, 'Gamis aplikasi lace full payet ', 4, 1, 'gamis_1.jpg', 500000, 'ONLY SIZE L (1 Pcs)!!\r\n•Bahan \"Lace Full Payet\"\r\npayet jepang\r\n\r\nfull beading ', 500),
(23, 16, 'Mukena Zara Silk', 4, 1, 'mukena_silk1.jpg', 260000, 'Yuk Diorder Mukena\r\n\r\nBahan : Zara Silk\r\n\r\nWarna : Dusty Pink, Peach,Gold Mocca,Blue Mint,Salem,Violet,Dan Masih Banyak Lainnya', 500),
(24, 16, 'Sepre Katun Jepang Queen Size (160x200x30)', 4, 10, 'seprei.jpg', 305000, 'Mau tidur nyenyak?salah satunya bisa dengan sepre dengan bahan batun jepang. Bahan halus dan banyak pilihan warna/motif.\r\n\r\nPO 1 hari ya\r\n\r\nBerat 1kg', 750),
(25, 19, '3KG KURMA SUKARI AL-QASEEM', 1, 3, 'kurma_1.png', 250000, 'READY STOCK!!!\r\nKURMA SUKARI AL - QASEEM\r\n\r\nKurma Sukari atau bisa disebut dengan istilah Kurma Raja ini merupakan kurma yang memiliki tekstur daging yang lembut, legit, empuk serta mempunyai warna yang kuning kecoklatan. \r\nManis Kurma Sukari ini alami tanpa tambahan gula, dan pengawet lainnya. Rasa kurma ini jga akan bertambah nikmat apabila d simpan di dalam kulkas.', 3000),
(26, 19, '850GR KURMA SUKARI RUTHOB PREMIUM SAUDI DUHA DATES 100%', 1, 5, 'kurma_22.PNG', 130000, 'READY STOCK!!!\r\n\r\nKURMA SUKARI RUTHOB\r\nPREMIUM SAUDI DUHA DATES 100%\r\nKurma Sukari atau bisa disebut dengan istilah Kurma Raja ini merupakan kurma yang memiliki tekstur daging yang lembut, legit, empuk serta mempunyai warna yang kuning kecoklatan. \r\nManis Kurma Sukari ini alami tanpa tambahan gula, dan pengawet lainnya. Rasa kurma ini jga akan bertambah nikmat apabila d simpan di dalam kulkas.', 850),
(27, 19, '1KG NATURAL DELIGHT MEDJOOL FRESH DATES', 1, 4, 'kurma_33.PNG', 245000, 'READY STOCK!!!\r\nNATURAL DELIGHT MEDJOOL FRESH DATES\r\n\r\nKurma Medjool merupakan Raja dari raja-raja kurma yang lain. Kurma ini mempunyai rasa yang manis dan legit sehingga kerap menjadi primadona pada bulan Ramadhan tiba. Bentuknya yang sangat besar dan mempunyai daging yang tebal, manis, legit, empuk, lembut serta karena aromanya yang begitu harum kurma asal Amerika ini banyak disukai banyak orang terlebih karena biji buah kurma yang kecil padahal kurma ini memiliki buah yang sangat besar dan tebal.\r\nKarena ukurannya yang sangat besar dan daging buah yang tebal, Kurma Medjool juga dikenal dengan sebutan Raja Kurma atau Kurma Berlian. Tidak hanya legit, Kurma Medjool ini jga mengandung fruktosa dan glukoma alami sejenis karbohitdrat sederhana yang cepat diserap oleh tubuh, sehingga bagus untuk meningkatnya energi disaat berpuasa.', 10000),
(28, 19, '1KG KURMA AJWA NATURAL PREMIUM DATES 100% ', 1, 3, 'kurma_44.PNG', 280000, 'READY STOCK!!!\r\nKURMA AJWA NATURAL PREMIUM DATES 100% \r\n\r\nKualitas terbaik AJWA NATURAL PREMIUM DATES 100% \r\nKurma Ajwa atau Kurma Nabi ini memiliki manfaat yang sangat istimewa. \r\n', 10000),
(29, 19, 'BEST SELLER!! KURMA KHALAS PREMIUM SULTHAN AL-TOMOOR', 1, 5, 'kurma_55.PNG', 85000, 'READY STOCK!!!\r\nKURMA KHALAS PREMIUM SULTHAN AL-TOMOOR\r\n\r\nKurma Khalas Premium ini merupakan jenis kurma yang berasal dari Uni Emirat Arab. Kurma Khalas berbentuk lonjong dengan ukuran yang sedikit kecil dibanding dengan jenis kurma yang lainnya. Namun, kurma ini memiliki daging yang lembut dengan rasa yang legit. ', 1000),
(34, 23, 'Kombinasi Nastar', 1, 0, 'WhatsApp_Image_2020-04-30_at_8_43_41_PM.jpeg', 140000, '-Nastar Greantea\r\n- Nastar Keju\r\n- Nastar Kurma\r\n- Nastar Blueberry', 500),
(35, 22, 'Madu Baduy 500ml', 1, 15, 'IMG-20200412-WA0040.jpg', 125000, 'Madu Segar, Asli Pendalaman Baduy', 500),
(36, 19, 'KURMA SUKARI AL-MADINAH PREMIUM DATES 100%', 1, 1, 'Screenshot_2020-04-19-23-16-23-846_com_shopee_id_(2).png', 130000, 'KURMA SUKARI AL-MADINAH PREMIUM DATES 100%\r\n\r\nKurma Sukari atau bisa disebut dengan istilah Kurma Raja ini merupakan kurma yang memiliki tekstur daging yang lembut, legit, empuk serta mempunyai warna yang kuning kecoklatan. \r\nManis Kurma Sukari ini alami tanpa tambahan gula, dan pengawet lainnya. Rasa kurma ini jga akan bertambah nikmat apabila d simpan di dalam kulkas.', 1050),
(37, 33, 'Selang Respirator / CPAP', 6, 100, 'WhatsApp_Image_2020-04-28_at_12_48_47_PM.jpeg', 250000, 'Selang Respirator / CPAP adalah selang bisa digunakan untuk pembuatan alat Respirator dan Ventilator.\r\nBarang Pre Order', 100),
(38, 33, 'Thermometer Unit T 306H', 6, 48, '306H_1.jpg', 1000000, 'READY JAKARTA\r\nBARANG ISTIMEWA DAN KOKOH\r\nSPECIALIST THERMOGUN TERBAIK DI KELASNYA\r\nDeskripsi thermo gun infrared thermometer uni T 306H\r\nREADY STOCK Termometer Infrared / Thermo Gun Digital UNI-T 306H\r\n\r\nSpesifikasi\r\nTermometer inframerah non-kontak\r\nFor epidemic emergency products\r\nIndeks teknis\r\nMerk UNI-T\r\nType UT306 H\r\nJarak pengukuran suhu : 32 - 45 C.\r\nPresisi : kurang lebih 0.3 C\r\nPengulangan : 0.3 C\r\nJarak pengukuran optimal : 5-10 cm\r\nWaktu respon : 0.5 detik\r\nShutdown otomatis : yes\r\nAlarm LED suhu tinggi : ya ( 37.2 )\r\nPenahanan digital : yes\r\nKonversi satuan : celcius dan Farenheit\r\nLampu latar : yes\r\nSuhu operasional : 10 - 40 C\r\nSuhu penyimpanan : -20 - 60 C.\r\n\r\nNote: Battery is not included in the package.', 500),
(39, 33, 'Thermometer Unit T 308H', 6, 49, '308H_111.jpg', 1200000, 'READY JAKARTA\r\nBARANG ISTIMEWA DAN KOKOH\r\nSPECIALIST THERMOGUN TERBAIK DI KELASNYA\r\nDeskripsi thermo gun infrared thermometer uni T 308H\r\nREADY STOCK Termometer Infrared / Thermo Gun Digital UNI-T 308H\r\n\r\nSpesifikasi\r\nTermometer inframerah non-kontak\r\nFor epidemic emergency products\r\nIndeks teknis\r\nMerk UNI-T\r\nType UT308 H\r\nJarak pengukuran suhu : 32 - 45 C.\r\nPresisi : kurang lebih 0.3 C\r\nPengulangan : 0.3 C\r\nJarak pengukuran optimal : 5-10 cm\r\nWaktu respon : 0.5 detik\r\nShutdown otomatis : yes\r\nAlarm LED suhu tinggi : ya ( 37.2 )\r\nPenahanan digital : yes\r\nKonversi satuan : celcius dan Farenheit\r\nLampu latar : yes\r\nSuhu operasional : 10 - 40 C\r\nSuhu penyimpanan : -20 - 60 C.\r\n\r\nNote: Battery is not included in the package.', 800),
(40, 34, 'Dari lembah cita-cita ', 7, 7, 'buku_buya_hamka.jpg', 31000, 'Buku ini bercerita tentang bagaimana buya hamka menyebarkan semangat pada generasi muda, dan bercerita tentang tauhid, ibadah, iman. ', 250),
(43, 35, 'Buku The New You', 7, 100, 'WhatsApp_Image_2020-05-01_at_07_27_22.jpeg', 200000, 'Banyak orang menghabiskan lebih banyak waktu untuk merencanakan liburannya daripada mengidentifikasi apa yang ingin mereka capai dalam kehidupan mereka. Dengan kata lain, mayoritas kita berjalan dari minggu ke minggu, tanpa tujuan yang jelas dalam pikirannya, lalu kemudian terkejut ketika kehidupan tidak berubah seperti yang mereka harapkan.\r\n\r\nRaih Kesempatan untuk Merancang Peta Kesuksesan Hidup Anda Melalui Buku The New You.\r\n\r\nDi dalam buku ini Anda akan mendapatkan sebuah framework berfikir bagi setiap orang untuk memetakan ulang hidupnya sehingga mereka dapat lebih percaya diri dalam mencapai misi hidup mereka. Peta hidup akan membantu memastikan bahwa Anda tidak mengakhiri hidup dengan penyesalan. Bagi banyak orang, kehidupan tidak berubah seperti yang mereka harapkan. Mereka kecewa, bingung, dan putus asa. Tetapi Anda tidak harus menjadi seperti itu. Meskipun Anda tidak dapat mengendalikan semua hal dalam hidup ini, Anda dapat menjalani hidup dengan rencana dan secara dramatis meningkatkan peluang And', 500),
(44, 36, 'Vector Art Cartoon - Animal', 5, 5, 'Paddington.png', 50000, '[JASA PEMBUATAN VECTOR ART]\r\n\r\nVersion : Animal\r\n\r\nSyarat dan ketentuan :\r\n1. Gunakan foto yang jelas (tidak buram, dan tidak terlalu jauh dari objek yang akan di vectorized)\r\n2. Objek terlihat dengan baik\r\n3. Background tidak akan ikut digambar, karena akan memakai background template dari saya\r\n\r\nApa saja yang akan kamu dapat?\r\n1. Softcopy dengan format ai. (apabila ingin dicetak), png. dan jpg. (untuk disebar secara online)\r\n2. Revisi minimal 2 kali\r\n\r\nKontak yang dapat dihubungi :\r\n085793594883 (whatsapp), \r\n\r\nMohon untuk menghubungi saat Jam Kerja Operasional saja yakni dari jam 07:00-17:00 WIB. Terimakasih :)', 25),
(46, 36, 'Vector Art Cartoon - Animal', 5, 5, 'Wet_Paw.png', 50000, '[JASA PEMBUATAN VECTOR ART] Version : Animal Syarat dan ketentuan : \r\n1. Gunakan foto yang jelas (tidak buram, dan tidak terlalu jauh dari objek yang akan di vectorized) \r\n2. Objek terlihat dengan baik \r\n3. Background tidak akan ikut digambar, karena akan memakai background template dari saya \r\n\r\nApa saja yang akan kamu dapat? \r\n1. Softcopy dengan format ai. (apabila ingin dicetak), png. dan jpg. (untuk disebar secara online) \r\n2. Revisi minimal 2 kali \r\n\r\nKontak yang dapat dihubungi : 085793594883 (whatsapp), Mohon untuk menghubungi saat Jam Kerja Operasional saja yakni dari jam 07:00-17:00 WIB. Terimakasih :)', 25),
(47, 30, 'PerfectMask', 9, 50, 'IMG_20200424_101110_221.jpg', 150000, 'Sudah capek pake perawatan apapun untuk kulit tetapi hasilnya NIHIL ?\r\n\r\nUdah habis biaya untuk perawatan pake cream kimia, obat-obatan, suntik putih dll tetapi hasil\r\nsementara dan ketergantungan ?\r\n\r\nSTOP Perawatan kimia! Ganti dengan perawatan alam\r\n7 Keunggulan Paket Perfect Mask :\r\n1. Mencerahkan dan memutihkan kulit secara alami\r\n2. Membersihkan jerawat, flek serta bekasnya\r\n3. Masker organik untuk meregenerasi kulit kamu\r\n4. Dapat digunakan untuk Masker dan Lulur (Menyeluruh)\r\n5. Dijamin tidak ada efek samping dan ketergantungan\r\n6. Bersertifikat BPOM, GMP, MUI, HALAL', 20),
(48, 36, 'Vector Art - Hooman (Setengah Badan)', 5, 5, 'Bima_(80k).jpg', 50000, '[JASA PEMBUATAN VECTOR ART] Version : Human\r\n Syarat dan ketentuan : 1. Gunakan foto yang jelas (tidak buram, dan tidak terlalu jauh dari objek yang akan di vectorized) 2. Objek terlihat dengan baik 3. Background tidak akan ikut digambar, karena akan memakai background template dari saya 4. Vector ini hanya untuk Setengah Badan\r\nApa saja yang akan kamu dapat? 1. Softcopy dengan format ai. (apabila ingin dicetak), png. dan jpg. (untuk disebar secara online) 2. Revisi minimal 2 kali Kontak yang dapat dihubungi : 085793594883 (whatsapp), Mohon untuk menghubungi saat Jam Kerja Operasional saja yakni dari jam 07:00-17:00 WIB. Terimakasih :)', 25),
(49, 36, 'Jasa Pembuatan Poster', 5, 5, 'DOLAN_TOUR_FISRT_TRIP-BANDUNG_PP.jpg', 45000, 'Jasa Pembuatan Poster minimalis dengan Teknik Vector, silahkan hubungi nomor di bawah ini untuk konfirmasi pemesanan, 085793594883 (whatsapp), bisa dihubungi hanya pada saat Jam Kerja Operasional yakni dari pukul 07:00-17:00 WIB. Terimakasih', 25),
(50, 17, 'Kitchen and Catering', 1, 10, 'WhatsApp_Image_2020-04-29_at_22_44_21.jpeg', 60000, 'Paket Kitchen and Catering', 1000),
(60, 23, 'Choco Sendwich Gold', 1, 0, 'CHOCO_SENDWICH_GOLD.jpg', 155000, 'Komposisi: Tepung Terigu ,Butter,Telur,Garam,Keju, Kacang Almond, Coklat', 500),
(61, 23, 'Kastangel Gold', 1, 0, 'KASTANGEL_GOLD.jpg', 155000, 'Komposisi: Tepung Terigu ,Butter,Telur,Garam,Keju', 500),
(68, 22, 'Saffron Herat Afghanistan ', 1, 35, 'IMG_20200412_100251_148.jpg', 190000, 'Manfaat Safron:\r\n1. Sangat baik untuk otak atau untuk mencerdaskan. Khususnya pada anak-anak sangat membantu pertumbuhan akal dan fisik\r\n2. Bunga Saffron sangat baik untuk kecantikan, mencerahkan, menghaluskan kulit, dan menghilangkan jerawat.\r\n3. Dapat mengatasi penyakit radang paru-paru, sakit tenggorokan, tonsil, menghindarkan batuk dan pilek\r\n4. Dapat mengatasi sakit kepala atau migrain, stress, dan depresi. Bunga Saffron juga baik digunakan sebagai penenang alami\r\n5. Dapat mengatasi asma, muntah-muntah, penyakit ginjal, kesuburan, anemia\r\n6. Cocok untuk orang yang susah tidur. Dan masih banyak manfaat lainnya pada kandungan saffron. ', 1),
(69, 22, 'Garam Himalaya', 1, 47, 'IMG-20200408-WA0023.jpg', 35000, 'Fakta Kesehatan Mengenai Garam Gunung Crystal Himalaya :\r\n\r\nDapat meningkatkan kadar metabolisme tubuh dan dapat memecahkan gumpalan lemak dan kolesterol \r\n Melancarkan aliran empedu yang berguna untuk mengontrol berat badan\r\n Membuang toksin dan asid uric yang berguna untuk mengatasi Asam Urat dan Sakit Tumit \r\n Mengandung unsur pembersih, menghilangkan lendir dan dapat menyerap serta mencegah bau busuk dan mengatasi keracunan dalam perut \r\n Mampu menyerap gas-gas dalam perut dan usus\r\n Merangsang kelenjar tiroid guna membentuk tulang yang kuat \r\n Melancarkan sistem syaraf dan aliran neuro transmitter yang dapat mengantar isyarat kepada otak \r\n Sifat penyerapan Garam Gunung ini adalah faktor penting dalam perawatan kanker \r\n Menambah kandungan oksigen dalam darah yang sangat diperlukan untuk melemahkan virus kanker', 250),
(70, 22, 'Chia seed', 1, 30, 'IMG-20200408-WA0025.jpg', 45000, 'Bahan alami yang bisa dijadikan tambahan makanan untuk program diet atau untuk menjaga kesehatan. Bisa dicampur dengan berbagai produk seperti puding dan cocok untuk detox. ', 250),
(71, 29, 'Case Custom Masjid Agung Al Azhar', 5, 100, 'WhatsApp_Image_2020-05-01_at_11_20_28_(1).jpeg', 80000, 'Percantik smartphone mu dengan menggunakan case dari custom storage. Kamu bisa memilih design sesuka kamu loh.\r\n\r\nSilahkan hubungi kami jika kamu ingin design yang lain.', 50),
(72, 10, 'Pashmina Ceruti', 4, 30, 'story_20200410162955.jpg', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n???? WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n??Open RESELLER??,\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(73, 29, 'E-Money Masjid Agung Al Azhar', 5, 100, 'WhatsApp_Image_2020-05-01_at_11_20_28.jpeg', 80000, 'Ingin punya E-Money yang bisa kamu modifikasi sesuai keinginan kamu?? di custom storage bisa banget loh, yuk hubungi kami sekarang juga jika kamu ingin menggunakan design yang lain', 50),
(74, 20, 'STRAWBERRY B2 FRESH', 1, 0, 'IMG-20200510-WA0022.jpg', 20000, 'Strawberry segar langsung dari petani dijamin FRESH\r\nKualitas supermarket, harga pasar\r\nCocok untuk camilan, jus, campuran smoothies, salad buah dll.\r\n\r\nHappy Shopping!\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 150),
(75, 38, 'Kentang kering teri kacang', 1, 48, 'IMG-20200429-WA0080.jpg', 25000, 'Kentang kering teri kacang, tidak mematokan berat karena terkadang berbeda timbangan dikarenakan banyaknya kacang yang masuk atau tidak. Untuk ukuran box nya yaitu ukuran 750 ml \r\n', 250),
(76, 20, 'STRAWBERRY B1 FRESH', 1, 2, 'STROBERI.jpg', 25000, 'STRAWBERRY FRESH DARI KEBUN LANGSUNG\r\nKualitas supermarket, harga pasar\r\nCocok untuk camilan, jus, campuran smoothies, salad buah dll.\r\n\r\nHappy Shopping!\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(77, 20, 'TASTY LEMON 500 ML', 1, 2, 'TASTY_LEMON_500.jpg', 70000, 'READY STOCK!!!\r\nTasty Lemon terbuat dari 100% perasan lemon california murni tanpa campuran apapun\r\nDiproses melalui pasteurisasi sehingga tahan lama dan aman dikonsumsi\r\n\r\n- Telah lulus uji labolatorium &amp; audit BPPOM\r\n- Telah mendapatkan sertifikat halal MUI\r\n- Aman untuk dikonsumsi ibu hamil, ibu menyusui, anak-anak &amp; lansia\r\n\r\nSaran penyajian: 3-5 sendok makan dicampur dengan 150-200 ml air hangat, diminum setiap pagi sebelum sarapan dan malam sebelum tidur\r\nDapat digunakan sebagai bahan tambahan masakan atau minuman\r\n\r\n *Note : Untuk pemesanan produk olahan (tasty lemon, kurma, palm sugar organic) barang READY STOCK siap kirim. Jika ada pesanan sayur dan buah juga, pesanan akan dikirim sesuai jadwal Pre Order, atau pada saat pemesanan bisa dipisah dengan sayur buah (DOUBLE ONGKIR), supaya produk READY bisa langsung dikirim. Terima kasih..\r\nHAPPY SHOPPING!', 500),
(78, 20, 'TASTY LEMON 250 ML', 1, 2, 'TASTY_LEMON_250.jpg', 45000, 'READY STOCK!!!\r\nTasty Lemon terbuat dari 100% perasan lemon california murni tanpa campuran apapun\r\nDiproses melalui pasteurisasi sehingga tahan lama dan aman dikonsumsi\r\n\r\n- Telah lulus uji labolatorium &amp; audit BPPOM\r\n- Telah mendapatkan sertifikat halal MUI\r\n- Aman untuk dikonsumsi ibu hamil, ibu menyusui, anak-anak &amp; lansia\r\n\r\nSaran penyajian: 3-5 sendok makan dicampur dengan 150-200 ml air hangat, diminum setiap pagi sebelum sarapan dan malam sebelum tidur\r\nDapat digunakan sebagai bahan tambahan masakan atau minuman\r\n\r\n *Note : Untuk pemesanan produk olahan (tasty lemon, kurma, palm sugar organic) barang READY STOCK siap kirim. Jika ada pesanan sayur dan buah juga, pesanan akan dikirim sesuai jadwal Pre Order, atau pada saat pemesanan bisa dipisah dengan sayur buah (DOUBLE ONGKIR), supaya produk READY bisa langsung dikirim. Terima kasih..\r\nHAPPY SHOPPING!', 250),
(79, 10, 'Masker kain 3 Filter', 4, 5, 'WhatsApp_Image_2020-05-01_at_13_20_00.jpeg', 15000, '3 Filter, dengan kantong untuk filter Tissue\r\n\r\n&gt;Ada kawat hidung nya\r\n\r\n&gt;Headloop (cocok untuk hijab)', 100),
(80, 10, 'Masker kain 3 Filter', 4, 7, 'WhatsApp_Image_2020-05-01_at_12_58_49.jpeg', 15000, '3 Filter, dengan kantong filter Tissue\r\n\r\n\r\n> Earloop\r\n\r\n\r\n> Ada kawat hidung nya', 200),
(81, 10, 'Masker kain 3 Filter', 4, 10, 'WhatsApp_Image_2020-05-01_at_13_10_32_(1).jpeg', 15000, '3 Filter (dengan kantong filter tissue)\r\n\r\n\r\n> Earloop\r\n\r\n\r\n> Ada kawat penjepit hidung', 200),
(83, 10, 'Hijab Instan Square 2 Layer', 4, 10, 'Capture.JPG', 50000, 'Bahan Ceruti \r\n\r\n&gt; 2 Layer\r\n\r\n&gt; Tidak Menerawang\r\n\r\n&gt; cocok untuk berpergian dan santai\r\n\r\n&gt; Bisa custom ukuran\r\n\r\n&gt;  kontak WA kami 087871978018', 250),
(84, 20, 'BUAH BIT (BEET ROOT) ORGANIK', 1, 0, 'buah_bit.jpg', 20000, 'Bit adalah tanaman umbi-umbian yang banyak digunakan untuk pengobatan alami. Manfaat buah bit yang dapat dikonsumsi dengan cara direbus, dikukus, dipanggang, dijus, atau dimakan mentah ini pun sangat banyak.\r\n\r\nDi dalam buah bit dapat ditemukan sejumlah nutrisi berikut ini: Asam folat, Kaliumen, Serat, Vitamin C, Magnesium, Zat besi, Fosfor, Triptofan, Caumarin, Betasianin.\r\n\r\nManfaat buah bit yaitu :\r\n- Menurunkan tekanan darah dan menjaga kesehatan jantung\r\n- Memiliki sifat antiradang\r\n- Baik bagi ibu hamil dan janin\r\n- Mencegah kanker\r\n- Memelihara kesehatan saluran pencernaan\r\n- Mencegah anemia, hipertensi\r\nDan masih banyak manfaat lainnya\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 500),
(85, 10, 'Pashmina Instan Tali', 4, 9, 'Capture45.JPG', 45000, 'Pashmina Ceruti, dengan tali di bagian leher. Sehingga dapat digunakan tanpa menggunakan jarum pentul atau peniti.\r\n\r\n> uk. 180cm x 75cm (pxl)\r\n\r\n\r\n> Bisa custom ukuran\r\n\r\n\r\n> hubungi 087871978018', 250),
(86, 10, 'Pashmina Ceruti', 4, 10, 'Capture78.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\n&gt;BEST PRICE: Rp. 40.000/pcs\r\n&gt;Size : 180cm x 75cm, bs custom\r\n&gt;Finishing : Jahit tepi rapih\r\n&gt;Material: Ceruti Babydoll\r\n&gt;Bertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n&gt;»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n&gt;&gt; WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\n&gt;&gt;Yuk order! \r\n\r\n\r\n&gt;&gt;Open RESELLER??,\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(87, 10, 'Pashmina Ceruti', 4, 100, '1.JPG', 40000, 'Pashmina\r\n\r\nuk. 180 x 75', 250),
(88, 20, 'LEMON LOKAL CALIFORNIA GRADE A1', 1, 4, 'lemon_california_2.jpg', 35000, 'Lemon California memiliki kandungan vitamin C yang punya banyak manfaat untuk tubuh diantaranya membantu meredakan demam, dapat membantu untuk bernapas lebih baik, bahkan bisa meningkatkan mood loh. Lemon california adalah pilihan konsumsi tepat jika Anda sedang dalam program menurunkan berat badan. Selain itu, buah jeruk lemon california juga memiliki rasa asam yang segar serta lebih juicy karena memiliki kandungan air lebih banyak.\r\nBuah Lemon California Lokal Organic Cheers!\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(89, 20, 'LEMON LOKAL CALIFORNIA GRADE A2', 1, 5, 'IMG-20200506-WA0005.jpg', 30000, 'Lemon California memiliki kandungan vitamin C yang punya banyak manfaat untuk tubuh diantaranya membantu meredakan demam, dapat membantu untuk bernapas lebih baik, bahkan bisa meningkatkan mood loh. Lemon california adalah pilihan konsumsi tepat jika Anda sedang dalam program menurunkan berat badan. Selain itu, buah jeruk lemon california juga memiliki rasa asam yang segar serta lebih juicy karena memiliki kandungan air lebih banyak.\r\nBuah Lemon California Lokal Organic Cheers!\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(90, 22, 'Kripik Pisang Sang Dewa', 1, 50, 'IMG-20200418-WA0002.jpg', 20000, '*SANG DEWA! Dewanya Pisang!*\r\n\r\n*Detail rincian produk Sang Dewa*\r\n\r\n• Netto : 85 gram \r\n• Bruto : 95 gram\r\n• Kemasan rotogravour (Anti Air dan AC) \r\n• Ijin P-IRT dan Halal MUI \r\n• Expired date : 8 bulan \r\n• Stand pouch \r\n• Laminasi doff (eye catching saat difoto upload sosmed)\r\n• Kemasan standart retail modern (aman kena AC swalayan)\r\n• 1 kardus isi 25 pcs \r\n• Kardus pengiriman standart retail dan ekpedisi\r\n• Dilengkapi bubble wripe (untuk melindungi bantingan kurir ekpedisi).\r\n\r\n*4 varian rasa Sang Dewa :*\r\n• Dewanya Susu\r\n• Dewanya Coklat \r\n• Dewanya Original\r\n• Dewanya Greentea\r\n', 95),
(91, 20, 'DAUN MINT', 1, 9, 'daun_mint.PNG', 6500, 'DIJAMIN FRESH!\r\nDaun mint memiliki rasa pedas yang khas dan aroma yang menyegarkan. Daun ini mengandung antioksidan kuat dan banyak nutrisi. Selain itu, daun mint juga mengandung kalium, magnesium, vitamin C, vitamin A, kalsium, fosfor, dan zat besi.\r\nManfaat Daun mint diantaranya untuk menghilangkan bau mulut, menjaga kesehatan pencernaan, mengandung antioksidan yang baik untuk tubuh, meredakan sakit tenggorokan, dan masih banyak lagi.\r\nAnda bisa dengan mudah menambahkan daun mint ke salad, jus, dessert, smoothie, teh, atau hanya air putih biasa. Selain itu, daun mint juga dapat menjadi kapsul suplemen, dioleskan ke kulit atau dihirup melalui aromaterapi.\r\n\r\n * NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah samp', 100),
(92, 22, 'Kurma Madu', 1, 47, 'IMG-20200501-WA0028.jpg', 60000, 'Kurma madu asli dari Persia dengan tekstur yang lembut,  manis dan lebih legit. ', 500),
(93, 20, 'KALE HIDROPONIK FRESH', 1, 8, 'kale.PNG', 18000, 'Kale banyak sekali manfaatnya, selain terkenal sebagai Asi Booster, kale juga bisa menurunkan kolesterol lho, Sobat!\r\nAntioksidan dan kandungan vitamin C dan K nya bisa sangat bermanfaat untuk menjaga imunitas tubuh.\r\nApalagi sekarang #coronaviruses yang sudah terdeteksi warga negara Indonesia ini.\r\nTapi tenang ya Sob! Jaga imunitas tubuh dengan konsumsi Kale bisa banget loh!\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(94, 10, 'Pashmina Ceruti', 4, 100, '2.JPG', 40000, 'uk. 180 x 75\r\nbisa custom', 250),
(95, 10, 'Pashmina Ceruti', 4, 99, '3.JPG', 40000, 'Ceruti Babydoll, kualitas premium\r\n\r\n> uk. 180 x 75', 250),
(96, 20, 'LABU SIAM', 1, 5, 'labu_siam.PNG', 12000, 'Mau bikin lontong sayur, atau olahan sayur labu kesukaanmu? Harus pake labu siam dari Carota Store donng dijamin FRESH!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(97, 20, 'POKCOY FRESH', 1, 2, 'pokcoy.PNG', 10000, 'Siapa yang #nosawisawiclub ? WAJIB COBAIN POKCOY. Yuk hidangkan tumis pokcoy untuk keluarga, dijamin enak karena pokcoy nya fresh dari kebun dong..\r\nTekstur sayurnya lembut, rasanya khas, segar dan empuk. Nutrisi yang terkandung di dalam pokcoy sendiri sangat baik buat kesehatan. Jika dibadingkan dengan sawi, ukuran pokcoy lebih kecil. Meski begitu, sayur pokcoy tetap memiliki rasa khas yang bikin nagih setiap kali diolah dengan bahan lain dan bumbu yang tepat.\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(98, 10, 'Pashmina Premium (Hampers)', 4, 10, '4.JPG', 120000, 'Paket Hampers 1\r\nBahan Ceruti Baby doll\r\n\r\n&gt;Free kartu ucapan\r\n&gt;uk. 180 x 75 cm\r\n&gt;isi 3\r\n\r\n&gt;&gt; Hub. 087871978018', 1000),
(99, 10, 'Pashmina Premium (Hampers)', 4, 10, '5.JPG', 120000, 'Paket Hampers 2\r\nBahan Ceruti Baby doll\r\n\r\n&gt;Free kartu ucapan\r\n&gt;uk. 180 x 75 cm\r\n&gt;isi 3\r\n\r\n&gt;&gt; Hub. 087871978018', 1000),
(100, 20, 'WORTEL BRASTAGI', 1, 2, 'wortel_brastagi.PNG', 20000, 'FAVORITE PRODUCT! Siapa yang gasuka wortel? Banyak manfaat dari wortel selain untuk kesehatan mata juga kaya antioksidan yang baik untuk tubuh. Wortel juga bagus untuk memperkuat daya tahan tubuh. Bisa dibuat jus sehat, sup, dan campuran salad kesukaanmu.\r\n\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(101, 10, 'Pashmina Premium (Hampers)', 4, 10, '6.JPG', 120000, 'Paket Hampers 3\r\nBahan Ceruti Baby doll\r\n\r\n&gt;Free kartu ucapan\r\n&gt;uk. 180 x 75 cm\r\n&gt;isi 3\r\n\r\n&gt;&gt; Hub. 087871978018', 1000),
(102, 22, 'Madu Baduy Hitam Pahit 500ml', 1, 19, 'IMG-20200501-WA0036.jpg', 130000, 'Madu baduy hitam pahit asli dari pedalaman suku baduy.  Bisa dikonsumsi untuk obat maupun menambah stamina tubuh.', 700),
(105, 49, 'Jahe merah inayah ', 7, 10000, '8A45978A-BE21-4CCF-B937-5CE42C25EFB9.jpeg', 37000, 'Jahe merah menjadi tanaman obat herbal yang banyak dicari belakangan ini. \r\n\r\nPasalnya, Presiden Joko Widodo mengaku minum jahe merah tiga kali sehari semenjak wabah virus corona masuk ke Indonesia.\r\n\r\nJahe merah atau yang sering disebut jahe sunti memang memiliki banyak keunggulan dibandingkan jenis jahe lainnya. \r\n\r\nJika ditinjau dari kandungan senyawa kimia dalam rimpangnya, terdapat zat gingerol, oleoresin, dan minyak atsiri yang tinggi. \r\n\r\nBerbagai penelitian juga menyebutkan manfaat jahe merah adalah sebagai antiinflamasi dan antioksidan.\r\n\r\nKandungan tersebut dipercaya dapat membantu memperkuat sistem kekebalan tubuh dari serangan virus maupun bakteri. \r\n\r\nTak heran, Presiden Jokowi rutin mengonsumsi jahe merah sebagai langkah antisipasi melawan virus corona.\r\n\r\nBukan hanya untuk menangkal virus corona, banyak manfaat kesehatan lain yang terkandung di dalamnya. \r\n\r\nNah, inayah jahe merah bubuk hadir untuk membantu anda menjaga kesehatan.\r\n\r\nIni dia, 6 manfaat inayah jahe merah selain untuk menangkal v', 330),
(106, 49, 'Temulawak inayah ', 7, 9999, 'E8C8E534-5718-4B1C-A433-23E7E4B9EDE1.jpeg', 37000, 'Kandungan inayah temulawak\r\n\r\nTemulawak terkenal karena kandungan kurkumin yang memang membawa banyak manfaat bagi kesehatan manusia. Namun, tanaman rimpang ini juga terbukti memiliki kandungan lain yang sama baiknya, seperti zat tepung dan minyak atsiri, yang dipercaya dapat meningkatkan kerja ginjal serta bersifat antiinflamasi.\r\n\r\nMinyak atsiri pada temulawak sendiri terdiri atas zat-zat seperti dari d-kamfer, siklo isoren, mirsen, tumerol, xanthorrhizol, zingiberen, dan zingeberol. Temulawak juga mengandung serat kasar, abu, protein, dan mineral meski dalam jumlah yang lebih sedikit.\r\n\r\nKandungan lain yang tidak bisa diremehkan dari temulawak adalah antioksidan, seperti flavonoid, fenol dan kurkumin. Antioksidan ini dapat mencegah beberapa penyakit yang disebabkan oleh paparan radikal bebas.\r\n\r\nKini hadir telah hadir inayah temulawak yang membantu anda menjaga kesehatan.\r\n\r\nKandungan-kandungan di atas \r\nmenghasilkan khasiat inayah temulawak bagi kesehatan manusia apalagi kami mengkombinasikan dengan habba', 330),
(107, 48, 'RABU Milky Jelly Drink', 1, 20, 'IMG_3588.JPG', 10000, '&quot;RABU MILKY JELLY DRINK&quot; tersedia dalam banyak varian rasa yang kekinian dan pastinya segar sebagai pelepas dahaga kalian nih. Bisa buat stok di rumah juga loh\r\n\r\n- Avocado\r\n- Banana\r\n- Beng-Beng\r\n- Bubble Gum\r\n- Durian\r\n- Hazelnut\r\n- Lychee\r\n- Mango\r\n- Matcha\r\n- Milo\r\n- Strawberry\r\n- Thai Tea\r\n- Cappucino\r\n- Red Velvet\r\n- Taro\r\n- Tiramisu', 0),
(108, 48, 'RABU Milky Jelly Drink Oreo', 1, 10, '174986.jpg', 13000, '&quot;RABU MILKY JELLY DRINK&quot; tersedia dalam banyak varian rasa yang kekinian dan pastinya segar sebagai pelepas dahaga kalian nih. Bisa buat stok di rumah juga loh ^_^\r\n\r\nRasa oreo ini unik! Selain susunya yang nikmat kalian juga akan merasakan tekstur yang berbeda dari perpaduan jelly dengan remahan oreo yang terdapat di dalamnya :9', 50),
(109, 48, 'RABU SUSU KURMA', 1, 10, '174985.jpg', 18000, '&quot;RABU Susu Kurma&quot; minuman kombinasi antara susu dengan buah kurma yang memiliki segudang manfaat. Cocok banget untuk ibu hamil atau menyusui.\r\n\r\nDiolah dengan susu dan buah kurma yang terjamin kualitasnya serta rasa manisnya yang pas sehingga cocok untuk segala kalangan tua maupun muda...\r\n', 50),
(110, 48, 'KURMA MESIR', 1, 20, '174988.jpg', 25000, 'Kurma Mesir sebagai teman berbuka dan sahur di bulan Ramadhan', 350),
(111, 47, 'Nasi Basmati dan bumbu instant kebuli', 1, 6, '614063.jpg', 55000, 'Cara mudah untuk kalian membuat nasi kebuli dengan sajian rasa yang sangat lezat', 350),
(112, 52, 'Madu Hitam Pahit', 7, 10, 'WhatsApp_Image_2020-05-01_at_21_01_40.jpeg', 79000, 'Manfaat Madu Hitam Pahit :\r\n- Mengobati diabetes / Kencing manis\r\n- Gangguang fungsi seksual pria\r\n- Gangguang pada lambung (Maag) Kronis\r\n- Radang tenggorokan dan panas dalam\r\n- Batuk, pilek, asma, polip, sinutis, kanker dan tumor\r\n- Darah tinggi dan darah rendah\r\n- Demam berdarah, tipes, dan kencing batu \r\n- Meningkatkan stamina dan imunitas tubuh\r\n\r\nMadu hitam sangat bagus di konsumsi setiap hari, untuk menjaga kesehatan dan meningkatkab imunitas tubuh.', 500),
(113, 52, 'Madu Super', 7, 10, 'WhatsApp_Image_2020-05-01_at_21_01_401.jpeg', 74000, 'Manfaat Madu Super  diantaranya :\r\n\r\nMeningkatkan daya tahan tubuh - Meningkatkan hormon - Menyuburkan peranakan bagi wanita - Sangat cocok dikonsumsi oleh pria dewasa - Menyembuhkan penyakit darah tinggi dan jantung - Menyembuhkan sel tubuh yang rusak - Mempercepat penyembukan luka operasi - Mengendurkan bagian syaraf yang tegang - Menghilangkan rasa letih yang berkepanjangan - Menghaluskan kulit - Membantu menurunkan kadar kolestril dalam tubuh - Memperlancar fungsi otak\r\n\r\nMadu super ini sangat baik dikonsumsi rutin setiap hari, agar badan selalu VIT dan meningkatkan daya tahan tubuh anda.\r\n\r\nSemoga bermanfaat, Happy shopping :)', 500),
(114, 52, 'Madu Hutan Murni', 7, 10, 'WhatsApp_Image_2020-05-01_at_21_02_33.jpeg', 145000, 'Madu hutan murni dari lebah hutan Apis Dorsata.\r\nMengandung nektar bunga multiflora dominan Akasia.\r\nKhasiat Madu Huta :\r\n- Mengandung antioksidan yang baik bagi proses perbaikan organ dalam tubuh\r\n- Memperbaiki fungsi organ dalam seperti jantung, lambung, hati, ginjal, dan saluran pencernaan\r\n- Memperbaiki daya tahan tubuh \r\n- Memiliki kemampuan untuk menyerap toksin dari tubuh\r\n- Memperbaiki kemampuan seksual\r\n- Membantu proses pengeringan luka\r\n- Memiliki kemampuan menyerap kandungan glukosa berlebihan pada tubuh, sangat baik dikonsumsi bagi penderita Diabetes\r\n- Menghambat pertumbuhan sel kanker\r\n- Dan manfaat-manfaat lainnya.\r\n\r\nSemoga bermanfaat, happy shopping :)', 300),
(115, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2020-05-01_at_15_56_30.jpeg', 35000, '&gt;Bahan: Polycatton \r\n&gt;Uk. 115x115 cm (Bisa custom ukuran)\r\n&gt;Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(116, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2020-05-01_at_15_56_52.jpeg', 35000, '&gt;Bahan: Polycatton \r\n&gt;Uk. 115x115 cm (bisa custom ukuran)\r\n&gt;Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(117, 10, 'Square Polycatton', 4, 9, 'WhatsApp_Image_2020-05-01_at_15_57_11.jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm (bisa custom ukuran)\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(118, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2019-10-23_at_22_59_41.jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(119, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2019-10-23_at_22_48_55_(1).jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(120, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2019-10-23_at_22_59_41_(1).jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(121, 10, 'Square Polycatton', 4, 10, 'WhatsApp_Image_2019-10-23_at_22_48_55.jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(122, 10, 'Square Polycatton', 4, 9, 'WhatsApp_Image_2019-10-23_at_22_59_41_(2).jpeg', 35000, '>Bahan: Polycatton \r\n>Uk. 115x115 cm\r\n>Bahan lembut dan jatoh. Mudah di bentuk, tegak dan tidak menerawang', 200),
(123, 51, 'Madu Hutan Jambi Asli', 7, 5, 'IMG-20200501-WA0004.jpg', 65000, '???? Raw Rainforest Honey\r\n???? Apis Dorsata\r\n???? Nectar Bunga Akasia (Dominan) \r\n????? Lokasi panen: Hutan Jambi\r\n\r\n???? Sifat Organoleptik Madu:\r\n- Warna kuning kemerahan kaya akan Bee Pollen\r\n- Viscositas / kekentalan sedang tidak terlalu encer tidak terlalu kental\r\n- Rasa dominan manis ada sedikit asam dan gurih karena kandungan bee pollen dalam madu cukup tinggi\r\n- Aroma khas tanaman hutan dan aroma pollennya nampak\r\n- Grade Madu Super dan Organic\r\n- Madu Akasia merupakan 2 madu hutan terbaik disamping madu manuka.\r\n\r\n???? Manfaat Madu Hutan Akasia Jambi:\r\n- menurunkan kadar gula dalam darah\r\n- mencegah penyakit kronis seperti kanker dan penyakit jantung\r\n- meningkatkan sistem kekebalan tubuh\r\n- menurunkan berat badan\r\n- bisa digunakan sebagai produk perawatan kulit karena kaya akan mineral dan vitamin C\r\n- menghambat timbulnya kerutan, meredakan peradangan, dan menyamarkan bekas luka\r\n- memiliki sebagian manfaat sebagai propolis dan bee pollen karena kandungan bee pollen dan propolis yang ada pada madu', 250),
(124, 45, 'Kurma Palmfrutt 500gr', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_25.jpeg', 70000, 'Kurma palmfrutt dengan kualitas terbaik', 500),
(125, 45, 'Kurma Palmfrutt 250gr', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_26.jpeg', 38000, 'Kurma palmfrutt dengan kualitas terbaik dan dengan kemasan ekonomis 250gr.', 250),
(126, 45, 'Kurma Tunisia Madu 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_27.jpeg', 95000, 'Kurma tunisia madu dengan kualitas terbaik dengan harga terjangkau', 1000),
(127, 45, 'Kurma Tunisia Tangkai 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_27_(1).jpeg', 110000, 'Kurma tunisia tangkai dengan kualitas terbaik dan dengan harga yang terjangkau', 1000),
(128, 45, 'Kurma Madu 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_28.jpeg', 47000, 'Kurma madu dengan kualitas terbaik dan paling banyak dicari dengan harga murah.', 1000),
(129, 45, 'Kurma Madinah 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_28_(1).jpeg', 90000, 'Kurma madinah dengan kualitas terbaik dipilih langsung dari madinah', 1000),
(130, 45, 'Kurma King Sukari 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_29.jpeg', 100000, 'Kurma king sukari, kurmanya para raja dengan harga yang terjangkau', 1000),
(131, 45, 'Kurma Sukari 1 dus', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_29_(1).jpeg', 275000, 'Kurma sukari adalah salah satu kurma terenak, kami jual dengan kemasan per dus dengan berat -+ 3kg dengan harga yang sangat terjangkau.', 3000),
(132, 45, 'Kurma Ajwa 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_30.jpeg', 325000, 'Kurma ajwa adalah jenis kurma terbaik dan terenak diantara jenis kurma yang lain. Kami menghadirkan dalam kemasan 1kg dengan harga yang sangat terjangkau.', 1000),
(133, 45, 'Kurma Bam 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_31.jpeg', 54000, 'Kurma bam adalah salah satu kurma yang paling banyak dicari karena dengan harganya yang murah dan rasa yang enak. ', 1000),
(134, 45, 'Kacang Arab 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_30_(1).jpeg', 80000, 'Kacang arab dengan kualitas super dan dengan harga yang terjangkau', 1000),
(135, 45, 'Kacang Pistachio 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_31_(1).jpeg', 225000, 'Kacang pistachio pilihan terbaik dengan harga terjangkau.', 1000),
(136, 45, 'Kacang Almond 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_32.jpeg', 227000, 'Kacang almond adalah salah satu kacang yang paling banyak dicari. Kami menjual dengan kualitas terbaik dan dengan harga yang sangat terjangkau.', 1000),
(137, 45, 'Cokelat Arab 1kg', 1, 10, 'WhatsApp_Image_2020-05-02_at_10_43_32_(1).jpeg', 100000, 'Cokelat arab adalah salah satu cemilan yang wajib disediakan untuk takjil. Kami menjual dengan kemasan yang praktis dan dengan harga terjangkau.', 1000),
(138, 25, 'Paprika Mix (Grade C)', 8, 0, '20200504_145915.jpg', 27000, 'Paprika manis dan sedikit pedas dari suku terong-terongan atau Solanaceae kini bisa berwarna hijau, kuning, merah, atau ungu sering digunakan sebagai campuran salad bisa kamu dapatkan dengan harga Rp., 27.000,00 saja di Bulan Ramadan ini . Kitaa mulai PO Hari Ini sampai Senin pagi ya;) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 1000),
(139, 47, 'Tasty Lemon (pure extract lemon)', 1, 10, '616072.jpg', 70000, 'Tasty Lemon (pure extract lemon) READY STOCK !!!\r\nProduk 100% dari perasan lemon california yang tentunya mendatangkan banyak manfaat. Tasty Lemon sudah lulus uji laboratorium, BPPOM dan sudah tersertifikasi halal oleh MUI sehingga sangat aman untuk dikonsumsi.\r\nSajikan 3-5 sendok Tasty Lemon dengan 150-200 ml air hangat untuk mendapatkan manfaat yang maksimal.', 500),
(140, 47, 'Tasty Lemon (Lemon Honey)', 1, 10, '61606.jpg', 110000, 'Tasty Lemon (Lemon Honey) READY STOCK !!! Produk 100% dari perasan lemon california yang dicampurkan dengan madu murni dan tentunya mendatangkan banyak manfaat. Tasty Lemon sudah lulus uji laboratorium, BPPOM dan juga telah tersertifikasi halal oleh MUI sehingga sangat aman untuk dikonsumsi. Sajikan 3-5 sendok Tasty Lemon dengan 150-200 ml air hangat untuk mendapatkan manfaat yang maksimal.\r\n', 500),
(141, 47, 'Tasty Lemon (Lemon Ginger)', 1, 10, '61608.jpg', 95000, 'Tasty Lemon (Lemon Ginger) READY STOCK !!! Produk 100% dari perasan lemon california yang dicampurkan dengan ekstrak jahe dan tentunya mendatangkan banyak manfaat. Tasty Lemon sudah lulus uji laboratorium, BPPOM dan juga telah tersertifikasi halal oleh MUI sehingga sangat aman untuk dikonsumsi. Sajikan 3-5 sendok Tasty Lemon dengan 150-200 ml air hangat untuk mendapatkan manfaat yang maksimal.', 500),
(142, 47, 'Tasty Lemon (Premium lemon syrup)', 1, 10, '522020_200502_0014.jpg', 60000, 'Pergi ke sungai nyari ikan betok\r\nKe sungainya bareng si Ander\r\nSyrup lemon masih ready stok\r\nBoleh yuk di order', 500),
(143, 47, 'Tasty Lemon (Premium lemon ginger syrup)', 1, 10, '522020_200502_00141.jpg', 65000, 'Beli ayam bagian pahe \r\nPahe dipotong ama mpok lili\r\nIni produk namanya syrup lemon jahe\r\nHayuk dibeli', 500),
(144, 47, 'Fillsweet Palm Sugar ', 1, 10, '522020_200502_0011.jpg', 25000, 'READY STOCK!!!', 250),
(145, 47, 'Fillsweet Palm Sugar Ginger', 1, 10, '522020_200502_0010.jpg', 30000, 'READY STOCK!!!', 250),
(146, 49, 'Paket hemat temulawak &amp; jahe merah', 7, 999, '8F92DA12-8C91-48B6-AB5F-6A2E54579F99.jpeg', 65000, 'Jahe merah menjadi tanaman obat herbal yang banyak dicari belakangan ini. \r\n\r\nPasalnya, Presiden Joko Widodo mengaku minum jahe merah tiga kali sehari semenjak wabah virus corona masuk ke Indonesia.\r\n\r\nJahe merah atau yang sering disebut jahe sunti memang memiliki banyak keunggulan dibandingkan jenis jahe lainnya. \r\n\r\nJika ditinjau dari kandungan senyawa kimia dalam rimpangnya, terdapat zat gingerol, oleoresin, dan minyak atsiri yang tinggi. \r\n\r\nBerbagai penelitian juga menyebutkan manfaat jahe merah adalah sebagai antiinflamasi dan antioksidan.\r\n\r\nKandungan tersebut dipercaya dapat membantu memperkuat sistem kekebalan tubuh dari serangan virus maupun bakteri. \r\n\r\nTak heran, Presiden Jokowi rutin mengonsumsi jahe merah sebagai langkah antisipasi melawan virus corona.\r\n\r\nBukan hanya untuk menangkal virus corona, banyak manfaat kesehatan lain yang terkandung di dalamnya. \r\n\r\nNah, inayah jahe merah bubuk hadir untuk membantu anda menjaga kesehatan.\r\n\r\nIni dia, 6 manfaat inayah jahe merah selain untuk menangkal v', 330),
(147, 59, 'Makaroni ', 1, 49, '86D1EF0E-4930-4547-AC96-CC6B74919651.jpeg', 5500, 'Makaroni tersedia dengan berbagai macam varian rasa seperti :\r\n- Keju\r\n- Barbeque\r\n- Balado\r\n- Original\r\n- Pedas Asin', 50),
(148, 49, 'Playmat/alas tenda ', 7, 20, 'ADC78966-0CA4-4BBF-BE00-CE3B0681B76D.jpeg', 175000, 'READY WARNA POLOS :\r\n1. ABU\r\n2. PINK\r\n3. HITAM\r\n4. KUNING\r\n5. ORANGE\r\n6. BIRU\r\n7.POLKADOT MERAH\r\n8.PUTIH KOMBINASI MOTIF CHEVRON BLUE LEMON\r\n\r\n\r\nAlas Lantai untuk pelengkap Tenda Teepee \r\nUkuran 100x100 \r\n\r\n.\r\nPs. Mohon cantumkan nama motif ketika check out yah...', 1000),
(149, 49, 'Teepee tend', 7, 5, '2738D036-C9FE-45A0-A3B2-F0CA41932B73.jpeg', 575000, 'Tenda anak READY STOCK. Jika habis, PO 10 hari. Cocok untuk dekorasi kamar anak atau pojok bermain di kecil.\r\n.\r\n.\r\n Kode: Teepee tent - White\r\n.\r\nDETAIL:\r\nUkuran 100x100x125\r\nKain terbuat dari katun catra yang tebal dan halus\r\n4 Tiang penyangga yang ringan dan kuat\r\n Harga: 575k.\r\n.\r\n.\r\nDijual terpisah:\r\nAlas lantai busa ukuran 100x100: di jual terpisah\r\n.\r\n.\r\n.\r\n#tendaanak #jualtendaanak #tendaanakreadystock #tendaanakmurah #jualtendaanakmurah #teepee #teepeetent #inspirasikamaranak #ruangbermainanak #pojokbermainanak #jualtendaanakjogja #tendaanakjogja #teepeetentmurah #tendaindianmurah #dekorasikamaranak #kamaranakkekinian #tendaanakkekinian', 3000),
(150, 49, 'Teepee tent', 7, 10, '50C47A4C-4A63-465C-8B00-A21B431D90C8.jpeg', 575000, 'Tenda anak READY STOCK. Jika habis, PO 10 hari. Cocok untuk dekorasi kamar anak atau pojok bermain di kecil.\r\n.\r\n.\r\n Kode: Teepee tent - abu\r\n.\r\nDETAIL:\r\n Ukuran 100x100x125\r\n Kain terbuat dari katun catra yang tebal dan halus\r\n 4 Tiang penyangga yang ringan dan kuat Harga: 375rb (sudah termasuk packing yang aman)\r\n.\r\n.\r\nDijual terpisah:\r\n Alas lantai busa ukuran 100x100\r\n.\r\n.\r\n.\r\n#tendaanak #jualtendaanak #tendaanakreadystock #tendaanakmurah #jualtendaanakmurah #teepee #teepeetent #inspirasikamaranak #ruangbermainanak #pojokbermainanak #jualtendaanakjogja #tendaanakjogja #teepeetentmurah #tendaindianmurah #dekorasikamaranak #kamaranakkekinian #tendaanakkekinian', 3000),
(151, 60, 'Risoles mayo', 1, 10, '764b9d1d-054b-4858-ba9f-21e6c1f4dd32.jpg', 35000, 'Risoles yang diisi dengan:\r\n-Telur\r\n-Beef\r\n-Keju\r\n-Mayonaise\r\n-Saos sambal\r\n\r\nTerdiri dari 2 jenis yaitu frozen dan siap santap...\r\n1 box isi 6 pcs', 450),
(152, 60, 'Risoles Rogout', 1, 7, '104e6b7e-4155-43ba-918a-9517a7e39f48.jpg', 25000, 'Risoles yang diisi dengan sayuran.\r\nTersedia 2 varian yaitu frozen dan siap santap...\r\n1 box isi 6 pcs', 450),
(153, 60, 'Risoles Buah Kayu Manis', 1, 10, '•_8_june_2019_•_farmers_market_•.jpg', 25000, 'Risoles yang diisi dengan campuran buah nanas dan apel dengan tambahan kayu manis.\r\nTersedia 2 varian frozen dan siap santap.', 450),
(154, 60, 'Risoles Buah Gula Palem', 1, 10, '•_8_june_2019_•_farmers_market_•1.jpg', 25000, 'Risoles yang diisi dengan campuran buah nanas dan apel dengan gula palem didalamnya..\r\nTersedia 2 varian fozen dan siap santap.\r\n1 box isi 6 pcs', 450);
INSERT INTO `produk` (`id_produk`, `id_toko`, `nama_produk`, `id_kategori_produk`, `stok`, `image`, `harga`, `deskripsi`, `berat`) VALUES
(155, 20, 'PAPRIKA MERAH GRADE A (PER PCS)', 1, 7, 'Sobat_veggies_template.png', 12500, 'Tidak suka pedas? Nah jenis Capsicum ini gak pedas kayak si kecil cabe rawit lho! YUK cobain paprika dijadikan salad atau dimasak dengan daging enak banget yummy!!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(156, 20, 'PAPRIKA KUNING GRADE A (PER PCS)', 1, 8, 'Sobat_veggies_template_(1).png', 12500, 'Tidak suka pedas? Nah jenis Capsicum ini gak pedas kayak si kecil cabe rawit lho! YUK cobain paprika dijadikan salad atau dimasak dengan daging enak banget yummy!!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(157, 20, 'PAPRIKA HIJAU GRADE A (PER PCS)', 1, 6, 'Sobat_veggies_template_(2).png', 9000, 'Tidak suka pedas? Nah jenis Capsicum ini gak pedas kayak si kecil cabe rawit lho! YUK cobain paprika dijadikan salad atau dimasak dengan daging enak banget yummy!!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(158, 20, 'TASTY LEMON HONEY', 1, 5, 'TASTY_LEMON_HONEY.png', 110000, 'READY STOCK! Made of 50% pure lemon + 50% Natural Honey As Our commitment is to give the best quality product. We only used the best ingredients for Your daily consume. ARTINYA : dibuat dari 50% lemon murni ditambah 50% madu murni sebagai komitmen kami untuk memberikan produk yang terbaik dan berkualitas, Kami hanya menggunakan bahan terbaik untuk konsumsi sehari-hari Anda.. \r\n\r\n *Note : Untuk pemesanan produk olahan (tasty lemon, kurma, palm sugar organic) barang READY STOCK siap kirim. Jika ada pesanan sayur dan buah juga, pesanan akan dikirim sesuai jadwal Pre Order, atau pada saat pemesanan bisa dipisah dengan sayur buah (DOUBLE ONGKIR), supaya produk READY bisa langsung dikirim. Terima kasih..\r\nHAPPY SHOPPING!', 500),
(159, 20, 'PAKET SALAD (BEST OFFER)', 1, 0, 'PAKETSALAD.png', 17500, 'BIKIN SALAD PRAKTIS GAK PAKE RIBET! Tinggal tambah salad sauce dan protein kesukaanmu..\r\nIsi : Selada keriting, Paprika Merah dan Paprika Hijau Grade C\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 300),
(160, 20, 'TOMAT CERI MERAH', 1, 0, 'TOMAT_CERI_MERAH-min.png', 12000, 'Tomat ceri adalah tomat yang memiliki bentuk kecil seperti ceri. Berbeda dengan tomat plum yang berbentuk lonjong. Buah tomat ini berwarna merah dengan rasa yang agak asam dan tidak manis serta dihiasi beberapa daun hijau. Tomat ceri sering digunakan untuk menghias makanan karena penampilannya yang indah.\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(161, 20, 'MELON KOREA SUPER', 1, 0, 'MELON_KOREA.png', 50000, 'Ada yang kuning tapi bukan Timunsuri, Ada yang krenyess tapi bukan Krupuk kulit, Ada yang manis tapi bukan senyumnya dia.. Tapi si MELON KOREA ini dong.. BARU panen lagi nih, yuk diorder jangan sampai kehabisan!! \r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(162, 20, 'BROKOLI FRESH', 1, 2, 'BROKOLI-min.png', 14500, 'Yang brondong-brondong jangan kasih lolos! \r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 300),
(163, 20, 'KENTANG LOKAL', 1, 5, 'KENTANG-min.png', 20000, 'Kentang adalah salah satu sumber karbohidrat yang cukup digemari sebagai pengganti nasi. Jenis umbi-umbian yang punya nama latin Solanum tuberosum ini tergolong mudah untuk diolah dan dikreasikan jadi berbagai menu pembuka, utama, maupun penutup yang tentu saja lezat.\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(164, 20, 'DAUN ROSEMARY', 1, 10, 'ROSEMARY_LEAF.jpg', 8000, 'Selain sebagai tanaman herbal, rosemary pun banyak ditambahkan dalam berbagai masakan. Tak hanya itu, tumbuhan ini juga diolah menjadi bubuk, teh, dan terkenal dalam bentuk minyak aromaterapi. Kegunaan daun Rosemary adalah : Melawan radikal bebas dan peradangan, Meningkatkan daya ingat dan konsentrasi, Berpotensi melawan sel kanker, Menjaga kesehatan mata, Mencegah penuaan otak, dan masih banyak lagi.\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 35),
(165, 20, 'BUNCIS', 1, 9, 'BUNCIS.jpg', 8500, 'Mari dipinang sobatnya Kacang Panjang iniii semoga selalu jadi idaman Sobat Veggies!! * NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(166, 20, 'EDAMAME', 1, 6, 'EDAMAME-min.png', 15000, 'CAANGG KACAANGG NYA JANGAN DICUEKIN! Selain tinggi nutrisi, kacang edamame juga tinggi antioksidan, rendah kalori, dan tidak mengandung kolesterol lho!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 500),
(167, 20, 'BAYAM MERAH HIDROPONIK', 1, 2, '20200511_000239_0000-min.jpg', 10000, 'Bayam merah atau biasa disebut bayam Cina merupakan salah satu tanaman bernilai ekonomis tinggi. Meski bayam merah memiliki rasa yang sama dengan bayam hijau, kandungan zat warnanya menjadikan manfaat bayam merah sebagai antioksidan lebih unggul. Bayam merah mengandung asam amino, zat besi, fosfor, vitamin E, potasium, vitamin C, dan magnesium yang bekerja sama untuk membasmi pertumbuhan sel kanker. Antioksidan dalam sayuran juga memainkan peran utama dalam mencegah timbulnya kanker. Rajin mengonsumsi bayam merah dapat mencegah dari resiko kanker.\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(168, 20, 'BAYAM HIJAU HIDROPONIK', 1, 1, 'BAYAM_HIJAU.jpg', 10000, 'Siapa yang gak suka makan bayam? Yaahh sayang banget padahal bayam banyak banget nutrisinya lho! Sayuran yang berasal dari Asia ini memiliki banyak nutrisi termasuk vitamin dan mineral yang baik untuk tubuh. Vitamin yang banyak terdapat pada bayam yaitu vitamin A, vitamin C, vitamin B kompleks, vitamin K, dan vitamin E. Sedangkan mineral-mineral utama yang dimiliki bayam adalah magnesium, zat besi, asam folat, kalsium, potasium, dan sodium. Bayam juga mengandung banyak serat dan antioksidan. Selain itu, sayuran hijau yang satu ini mengandung sedikit kalori dan lemak. Yuk makan sayur bayam, bayamnya fresh dari Sobat Veggies!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(169, 20, 'MIX PAPRIKA PROMO RAMADHAN', 1, 9, 'PROMO_PAPRIKA.png', 27000, 'Mau cobain semua paprika? Cocok nih ada PROMO MIX PAPRIKA, ada paprika merah, kuning, dan hijau. Isinya 6-7 pcs GRADE C. Yuk order sekarang juga jangan sampai kehabisan!  \r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(170, 20, 'CABE MERAH KERITING', 1, 8, 'CABE_MERAH-min.png', 35000, 'Si merah-merah segar jangan sampai lolos! Yang doyan sambel, wajib beli cabenya Sobat Veggies dijamin segar.\r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(171, 20, 'CABE HIJAU BESAR', 1, 7, 'CABE_HIJAU_BESAR-min.png', 30000, 'Si Hijau segar jangan sampai lolos! Enak dibikin sambel hijau ala warung nasi padang dong. Yang doyan sambel, wajib beli cabenya Sobat Veggies dijamin segar.\r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(172, 20, 'CABE RAWIT', 1, 3, 'CABE_RAWIT-min.png', 38000, 'Si Kecil merah-merah segar jangan sampai lolos! Yang doyan sambel, wajib beli cabenya Sobat Veggies dijamin segar. COCOK banget dijadiin sambel geledeg!\r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(173, 20, 'BAWANG PUTIH LOKAL KECIL', 1, 3, 'BAWANG_PUTIH_KECIL.jpg', 25000, 'Bumbu dapur yang satu ini pasti gak pernah absen di kulkas buibu dirumah ya kan!! Yuk diorder sebelum kehabisan..\r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 1000),
(174, 20, 'SELADA ROMAIN NON HIDROPONIK', 1, 0, 'SELADA_ROMAIN_NON_HIDRO.png', 5500, 'Selada romaine atau selada cos umumnya diolah menjadi salad. Selain itu, sayuran asal Yunani tersebut juga dapat diolah menjadi lalapan atau tumisan yang menggugah selera. Bahkan, sayur dengan cita rasa renyah ini memiliki beragam manfaat bagi kesehatan seperti menjaga kekebalan tubuh, mencegah kanker, dan menjaga kesehatan jantung, cocok banget dikonsumsi saat pandemi coronavirus ini lho.. \r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(175, 20, 'KURMA TUNGKAI ZAKIYYA', 1, 4, 'KURMA_ZAKIYYA-min.png', 65000, 'READY STOCK!! Kurma tangkai Zakiyya Dates, Rasa nya manis dan enak cocok untuk di makan kapan saja dan sangat enak di sanding untuk teman berbuka puasa.  *Note : Untuk pemesanan produk olahan (tasty lemon, kurma, palm sugar organic) barang READY STOCK siap kirim. Jika ada pesanan sayur dan buah juga, pesanan akan dikirim sesuai jadwal Pre Order, atau pada saat pemesanan bisa dipisah dengan sayur buah (DOUBLE ONGKIR), supaya produk READY bisa langsung dikirim. Terima kasih..', 500),
(176, 20, 'KURMA RUTHAB RAYYAN (KURMA MUDA)', 1, 3, 'KURMA_RUTHAB_RAYYAN-min.png', 100000, 'Kurma Ruthob lebih kaya kandungan serat dan vitamin dibandingkan dengan kurma kering. Kurma Ruthob juga kaya akan kandungan mineral , protein, zat besi, tembaga, kalsium, belerang, klorida daN gula, sehingga kurma ini bermanfaat untuk menyuplai energi bagi tubuh dalam menjalankan aktivitas sehari-hari. Tidak hanya itu kurma Ruthob ternyata juga kaya akan kandungan hormon biostin yang dapat mencegah resiko pendarahan bagi wanita pada saat melahirkan. *Note : Untuk pemesanan produk olahan (tasty lemon, kurma, palm sugar organic) barang READY STOCK siap kirim. Jika ada pesanan sayur dan buah juga, pesanan akan dikirim sesuai jadwal Pre Order, atau pada saat pemesanan bisa dipisah dengan sayur buah (DOUBLE ONGKIR), supaya produk READY bisa langsung dikirim. Terima kasih..', 350),
(177, 20, 'CAISIM ', 1, 2, '20200511_000439_0000-min.jpg', 10000, 'Si hijau segar temennya sawi, yuk cobain!! DIJAMIN SEGAR!!\r\nHAPPY SHOPPING!!\r\n* NEW Sistem pre-order 1x setiap minggu, Buka PO hari Jum\'at pagi s/d  Selasa siang pukul 12.00 WIB (jika checkout lewat dari waktu tersebut, barang akan masuk PO minggu berikutnya)\r\n*Hari Rabu : panen dan pengemasan\r\n*Hari Kamis : pengiriman dari siang hingga malam hari\r\n*Menggunakan kurir same-day untuk mengurangi resiko sayur tidak segar setelah sampai tujuan', 250),
(178, 64, 'Kurma Raja Sukari HC 3 KG', 1, 10, 'KURMA_SUKARI_2.png', 275000, 'Deskripsi korma sukari 3kg/kurma sukari alqosim/ HC\r\nKurma Sukari atau biasa disebut juga Kurma Raja merupakan kurma yang memiliki tekstur daging buah yang lembut, manis, empuk dan warna kurma kuning kecoklatan.\r\n\r\nRasa kurma sukari ini begitu nikmat karena rasa nya yang manis, daging empuk dan biasa nya disimpan didalam kulkas menambah rasa kenikmatan rasanya. ', 3000),
(179, 58, 'Rendang Daging', 1, 4, 'foto_rendang_daging.jpeg', 350000, 'Rendang Daging\r\nMakanan tradisional  Indonesia, dengan daging sapi kualitas tinggi dan kaya bumbu dengan cita rasa yang khas\r\n\r\nSiap menemani Ramadhan dan Idul Fitri anda.', 1000),
(180, 58, 'Dendeng Kering', 1, 3, 'rendang_kering.jpeg', 350000, 'Dendeng Kering adalah salah satu jenis kuliner yang terbuat dari daging sapi yang diolah dengan cara dikeringkan dan diberi bumbu agar menjadi lebih enak, renyah dan gurih. Daging sapinya yang diproses hingga kering menciptakan tekstur renyah ketika dikonsumsi. Bisa menambah citarasa hidangan anda.\r\nCocok juga untuk para traveler dijadikan bekal di negeri orang', 1000),
(181, 59, 'BASO ACI', 1, 50, '1644D412-0588-4BBC-8659-8A35B3407C34.jpeg', 18000, 'BASO ACI INSTAN\r\nTerdiri dari :\r\n7 Baso aci\r\n2 Cuanki lidah\r\n4 Cuanki Tahu\r\nTahu Kering kecil\r\nBatagor kering\r\nJeruk Limo\r\nDaun seledri\r\nMinyak bawang\r\nBubuk cabai\r\nBubuk Racik kering', 75),
(182, 68, 'Masker Katun Motif Batik', 7, 20, 'IMG-20200501-WA0032.jpg', 10000, 'Yuk Jaga Kesehatan kalian saat di luar ruangan dengan selalu menggunakan Masker', 300),
(183, 59, 'Lidi lidian', 1, 50, '17891C8B-96BA-4BE5-8C7F-6A8CF28A06FB.jpeg', 6000, 'Cemilan Lidi Lidian terserdia dengan berbagai macam rasa :\r\nKeju\r\nBalado\r\nBBQ\r\nPedas Asin \r\nOriginal ( Asin )\r\nRumput Laut', 50),
(184, 60, 'choco raisins', 1, 2, 'WhatsApp_Image_2020-05-05_at_18_44_59.jpeg', 50000, 'Cookies rasa coklat dengan campuran kismis..', 350),
(185, 60, 'oatmeal cinnamon cookies', 1, 4, 'WhatsApp_Image_2020-05-05_at_18_45_01.jpeg', 70000, 'Cookies dengan campuran oatmeal dan cinnamon..', 450),
(186, 60, 'kue kacang', 1, 1, 'WhatsApp_Image_2020-05-05_at_18_45_03.jpeg', 50000, 'cookies dengan rasa kacang yang pecah dimulut dengan taburan wijen diatasnya...', 450),
(187, 23, 'Fresh Forest Honey', 1, 50, 'madu.jpg', 125000, 'Dipetik dari madu hutan sancang, Garut. \r\nisi bersih 473 gram.', 473),
(188, 40, 'TENDERLOIN', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_49.jpeg', 193000, 'Daging fresh dan HALAL. \r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).\r\n', 1000),
(189, 40, 'SIRLOIN', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_491.jpeg', 153000, 'Daging fresh dan HALAL.\r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).', 1000),
(190, 40, 'SLICED BEEF', 1, 99, 'WhatsApp_Image_2020-05-03_at_13_39_44.jpeg', 152000, 'Daging fresh dan HALAL.\r\nAda 2 macam Sliced Beef, REGULAR dan LOW FAT. Jika tidak mencantumkan pilihan di note, maka akan dikirim Sliced Beef REGULAR. \r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).\r\n', 1000),
(191, 40, 'RENDANG BEEF', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_51.jpeg', 130000, 'Daging fresh dan HALAL.\r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).', 1000),
(192, 40, 'SHORT RIBS (IGA PREMIUM)', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_50.jpeg', 118000, 'Daging fresh dan HALAL.\r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).', 1000),
(193, 40, 'OXTAIL (BUNTUT SAPI)', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_51_(1).jpeg', 125000, 'Daging fresh dan HALAL.\r\nHarga sewaktu-waktu dapat berubah.\r\nHarga belum termasuk ongkos kirim (saat ini hanya GO-SEND INSTANT).', 1000),
(194, 64, 'KURMA PALM\'FRUTT 250 GR', 1, 10, 'PALMFRUTT_250.jpg', 35000, 'Beragam kebaikan bisa Anda dapatkan dengan mengonsumsi kurma palm fruit secara rutin. Kurma mengandung banyak sekali antioksidan yang membantu tubuh melawan bakteri, infeksi, dan penurunan imun yang menyebabkan mudah terserang penyakit. Warnanya terang, sehingga kurma palm fruit nampak lebih cantik dari kurma kebanyakan. Jika digigit atau dikunyah, kurma palm fruit memberi cita rasa manis, lembut, dan sangat nikmat..', 250),
(195, 64, 'KURMA PALM\'FRUTT 500 GR', 1, 10, 'PALMFRUTT.jpg', 70000, 'Beragam kebaikan bisa Anda dapatkan dengan mengonsumsi kurma palm fruit secara rutin. Kurma mengandung banyak sekali antioksidan yang membantu tubuh melawan bakteri, infeksi, dan penurunan imun yang menyebabkan mudah terserang penyakit. Warnanya terang, sehingga kurma palm fruit nampak lebih cantik dari kurma kebanyakan. Jika digigit atau dikunyah, kurma palm fruit memberi cita rasa manis, lembut, dan sangat nikmat. Dapatkan palmfrutt kemasan 500 gr nya sekarang juga!!', 500),
(196, 64, 'KURMA SUKARI HC 1 DUS', 1, 3, 'KURMA_sukari_dus.jpg', 270000, 'Nama kurma sukari berasal dari Bahasa Arab “sukkur”, yang berarti gula. Seperti namanya, kurma sukari memiliki citarasa yang manis dan berdaging lembut bagai karamel. Selain dimakan langsung, kurma sukari juga kerap dimanfaatkan untuk campuran bahan kue, roti, atau smoothie. Beli 1 dus lebih hemat!', 3000),
(197, 64, 'KURMA MADU TERMURAH!!', 1, 4, 'KURMA_MADU.jpg', 45000, 'Kapan lagi dapat kurma madu yang manis dan lembut dengan harga yang sangat affordable to buy! Ketika mengkonsumsi kurma InsyaAllah dapat berkhasiat untuk :\r\n1. Membantu mengurangi tekanan darah\r\n2. Membantu meningkatkan sistem kekebalan tubuh\r\n3. Membantu mengeluarkan racun dalam organ pencernaan\r\n4. Mengendalikan gula darah\r\n5. Mencegah penyakit jantung\r\n5. Menurunkan kolesterol\r\nadapun kandungan gula pada kurma ini alami sehingga aman untuk dikonsumsi penderita diabetes.', 1000),
(198, 64, 'ALMOND NUTS', 1, 3, 'KACANG_ALMOND.jpg', 225000, 'Almond merupakan salah satu kacang paling populer di dunia. Beragam kandungan yang ada di dalamnya membuat manfaat almond begitu kaya. Almond kerap dikonsumsi secara langsung baik sebagai camilan, tambahan sereal, pelengkap cokelat, hingga topping makanan. Selain rasa yang nikmat, almond menawarkan manfaat yang tinggi untuk kesehatan. Diantaranya untuk mengurangi kolesterol, mengurangi berat badan,mengontrol gula darah dan kaya antioksidan, cocok banget konsumsi almond untuk diet, dibuat susu almond juga enak lho!', 1000),
(199, 64, 'KACANG PISTACHIO', 1, 3, 'KACANG_PISTACHIO.jpg', 230000, 'Manfaat kacang pistachio mengandung lemak sehat dan merupakan sumber protein, serat, dan antioksidan yang baik. Pistachio bebas kolesterol dan merupakan sumber vitamin dan mineral yang sangat baik. Pistachio juga memiliki kadar asam lemak tak jenuh dan kalium yang tinggi. Keduanya memiliki sifat antioksidan dan anti-inflamasi. Mengonsumsi kacang ini secara rutin dapat memberi manfaat kesehatan. Manfaat kacang pistachio dikaitkan dengan efek menurunkan risiko penyakit jantung, mata, membantu menurunkan berat badan, dan masih banyak lagi.', 1000),
(200, 64, 'KURMA RAJA SUKARI ', 1, 5, 'KURMA_king_sukari.jpg', 98000, 'BEST SELLER! ADA KEMASAN 1 KG NYA\r\nKurma Sukari sering disebut kurma ratu atau kurma raja. Ini karena kurma sukari punya ukuran yang besar, teman-teman. Warna dagingnya cokelat muda mirip karamel. Ukurannya sedikit kecil namun lebih panjang.', 1000),
(201, 71, 'Kue kacang Original', 1, 10, 'IMG-20200430-WA0013.jpg', 45000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(202, 71, 'Kue kacang Coklat', 1, 10, 'IMG-20200430-WA0014.jpg', 50000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(203, 71, 'Kue Nastar ', 1, 10, 'IMG-20200430-WA0015.jpg', 60000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(204, 71, 'Kue Putri Salju', 1, 10, 'IMG-20200430-WA0008.jpg', 60000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(205, 71, 'Kue Castangels', 1, 9, 'IMG-20200430-WA0011.jpg', 65000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(206, 71, 'Kue Semprit Keju', 1, 10, 'IMG-20200430-WA0010.jpg', 55000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(207, 71, 'Kue Pastel Abon', 1, 9, 'IMG-20200430-WA0009.jpg', 55000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 500),
(208, 71, 'Kie Stick Coklat', 1, 9, 'IMG-20200430-WA0007.jpg', 45000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 400),
(209, 71, 'Kue Stick Rainbow', 1, 10, 'IMG-20200430-WA0012.jpg', 45000, 'Sajian kue lebaran yang pas untuk momentnya, pas harganya, pas juga kualitasnya. \r\nSistem pemesanan PO sesuai antrian', 400),
(210, 63, 'Palm Sugar Ginger', 1, 10, 'palm_sugar_ginger.jpeg', 30000, 'Palm Sugar Ginger dibuat dari 50% air nira aren dan 50% jahe pilihan berkualitas. Palm sugar ini bisa digunakan sebagai pelengkap minuman JSR. Palm sugar ginger ini sangat berkhasiat bagi tubuh', 250),
(211, 71, 'Popcorn Caramel', 1, 15, 'IMG-20200502-WA0006.jpg', 30000, 'Kangen sama popcorn XXI ?? Jangan khawatir kami jual caramel popcorn yang bakal ngilangin kangen kamu sama popcorn XXI ini. Ready Stock !!! Grab it Fast !!', 100),
(212, 63, 'palm sugar', 1, 10, 'palm_sugar.jpeg', 25000, 'Palm Sugar dibuat dari 100% air nira aren asli dan berkualitas. Palm Sugar ini berbentuk bubuk dan memiliki indeks Glikemik rendah sehingga aman untuk dikonsumsi bagi penderita diabetes dan kolesterol. ', 250),
(213, 63, 'Tasty Lemon (Pure Lemon Extract)', 1, 10, 'lemon.jpg', 70000, 'Tasty Lemon (500 ml) ini terbuat dari bahan terbaik kombinasi dari ekstrak lemon. Lemon yang digunakan yaitu lemon California. Diproses melalui pasteurisasi sehingga lebih higienis dan aman dikonsumsi. Kaya akan vitamin dan sangat berkhasiat bagi tubuh. ', 0),
(216, 38, 'Paru balado (dengan tambahan sambal terpisah)', 1, 50, 'IMG_20200506_112101_085_1.jpg', 50000, 'Tidak menghitung berat, ukuran box yaitu 1000 ml ', 0),
(217, 38, 'Sambal teri kacang', 1, 50, 'IMG_20200504_192331_822_1.jpg', 25000, 'Ukuran poch L12 P20 ', 0),
(218, 76, 'Sprei dan Bed Cover uk 180', 4, 1, 'FB_IMG_1568137121162.jpg', 550000, 'Sprei dan Bed Cover Motif Panda Playground Uk 180x200x20 (king)\r\n\r\nBahan star adem tebal dan tidak luntur, jahitan 4 sudut karet akan awet bertahun tahun (tanpa kendor).\r\n\r\nSpesifikasi\r\n1. Bed Cover (1)\r\n2. Sprei (1)\r\n3. Sarung Bantal (2)\r\n4. Sarung guling (2)', 8000),
(220, 64, 'Kurma Tunisia Madu 1KG ', 1, 10, 'KURMA_TUNISIA_MADU.jpg', 99000, 'KURMA TUNISIA MADU\r\nDeskripsi Kurma Tunisia madu  Bnetuknya lebih ramping dan warnanya lebih muda. Kurma asal tunisia tidak terlalu manis, rasanya mirip dengan kurma yang masih muda dan belum benar-benar matang. kurma yang tanpa tangkai, enak dan baik di konsumsi setiap hari. ', 1100),
(221, 64, 'Kurma Tunisia Tangkai 1KG ', 1, 10, 'KURMA_TUNISIA_TANGKAI.jpg', 110000, 'Deskripsi Kurma Tunisia tangkai \r\nBentuknya lebih ramping dan warnanya lebih muda. kurma asal tunisia tidak terlalu manis, rasanya mirip dengan kurma yang masih muda dan belum benar-benar matang. \r\n\r\nKurma tunis yang masih ada tangkai, enak ,legit baik di konsumsi setiap hari .', 1100),
(222, 64, 'Kurma Ajwa 1 KG Terfavorit', 1, 10, 'kurma_ajwa.jpg', 329000, 'Kurma Ajwa merupakan salah satu jenis kurma terfavorit, karena memiliki banyak manfaat dan khasiat.\r\n\r\nSeperti membantu mengatasi masalah pencernaan dalam tubuh, mencegah penyakit jantung serta mencegah penyakit diabetes melitus\r\n\r\nKurma yang pada umumnya berwarna hitam pekat ini juga mengantung banyak vitamin dan mineral.\r\n', 1100),
(223, 64, 'Kurma BAM 500 GRAM (Murah)', 1, 10, 'KURMA_BAM.jpg', 54000, 'Kurma bam yang lembut, basah dan manis bak madu, sangat cocok untuk berbuka puasa dan menjaga kesehatan sepanjang hari', 600),
(224, 64, 'Kurma Madinah', 1, 10, 'KURMA_MADINAH.jpg', 89000, 'Kurma manis, enak disantap saat berbuka atau saur bersama keluarga, kurma madinah terkenal kelezatannya.', 1100),
(225, 64, 'Kacang Arab dengan 7 manfaat buat tubuh', 1, 10, 'KACANG_ARAB.jpg', 79000, 'Kacang arab termasuk salah satu oleh-oleh favorit para jamaah sepulang dari tanah suci. Memang tak salah karena rasanya gurih, unik, dan membuat ketagihan.\r\n\r\nNamun tak hanya menggugah selera, manfaat kacang arab untuk kesehatan juga beragam.\r\n7 manfaat kacang arab\r\n1. Membuat Anda kenyang lebih lama\r\n2. Mengelola kadar gula darah\r\n3. Melancarkan pencernaan\r\n4. Mengurangi risiko irritable bowel syndrome dan kanker usus besar\r\n5. Mencegah atau menurunkan tekanan darah tinggi\r\n6. Menjaga kesehatan mental\r\n7. Menurunkan risiko kanker', 1100),
(226, 64, 'coklat arab', 1, 10, 'COKLAT_ARAB.jpg', 99000, 'Coklat Elvan Truffle adalah coklat asli import dari Turki yang mempunyai tekstur dan rasa yang lembut dengan berbagai isi topping dan varian rasa. \r\n\r\nready varian rasa hazelnut, caramel, coco, strowberi\r\n\r\nNB: Varian rasa tidak bisa dipilih, dalam 1 kg kemasan sudah mix . dan bisa saja hanya 2 samapi 3 rasa saja saat stok mulai habis', 1100),
(227, 78, 'Lemonia 100% Lemon Peras', 1, 30, 'IMG-20200421-WA0036.jpg', 62500, 'Lemonia\r\n\r\n100% lemon peras, bermanfaat untuk membantu program diet dan proses detox, baik bagi ibu hamil dan menyusui serta dapat meningkatkan imunitas tubuh ditengah pandemi seperti sekarang ini\r\n\r\nStay Healthy and Stay at Home', 500),
(228, 78, 'Jejamuan Homemade', 1, 100, 'IMG-20200409-WA0044.jpg', 30000, 'Jejamuan Homemade\r\n\r\nTerbuat dari bahan alami akar rinpang atau lebih dikenal dengan empon-empon terdiri dari 6 varian :\r\n\r\nSari Jahe Merah\r\nSari Kunir\r\nSari Kunir Mangga\r\nSari Kencur\r\nSari Temulawak\r\nJAKUTE (JAhe, KUnir, TEmulawak)\r\n\r\nKegunaan dapat dilihat pada kemasan namun secara umum berfungsi meningkat daya tahan tubuh \r\n\r\nStay Fit and Stay at Home\r\n\r\nJangan lupa !\r\nJaga Iman, Jaga Jarak dan Jaga imun', 150),
(229, 25, 'Local Strawberry', 8, 0, '20200510_085329.jpg', 25000, 'Strawberry grade A seger ini PO mulai hari ini sampai Senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 250),
(232, 25, 'Caisim Hidroponik', 8, 0, '20200510_091345.jpg', 10000, 'Open PO mulai hari ini sampai Senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 250),
(233, 25, 'Lolorosa Hidroponik', 8, 0, '20200510_091738.jpg', 17000, 'Open PO mulai hari ini sampai Senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 250),
(234, 25, 'Mix Selada', 8, 0, '20200510_092034.jpg', 18000, 'Open PO mulai hari ini sampai Senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 250),
(235, 25, 'Wortel Lokal', 8, 0, '20200510_092151.jpg', 20000, 'Open PO mulai hari ini sampai Senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 1000),
(236, 10, 'Pashmina Ceruti ', 4, 10, 'AZVX3316.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(239, 10, 'Pashmina Ceruti ', 4, 10, 'LSBM7113.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(240, 10, 'Pashmina Ceruti ', 4, 10, 'CGGQ8629.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(241, 10, 'Pashmina Ceruti ', 4, 10, 'BXOD37611.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(242, 10, 'Pashmina Ceruti ', 4, 10, 'YCIG8874.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(243, 10, 'Pashmina Ceruti ', 4, 10, 'LRWV3615.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(244, 10, 'Pashmina Ceruti ', 4, 10, 'DGSD4693.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(245, 10, 'Pashmina Ceruti ', 4, 10, 'BJKU26511.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(246, 10, 'Pashmina Ceruti ', 4, 10, 'HZFP7467.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(247, 10, 'Pashmina Ceruti ', 4, 10, 'UTGR6353.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(248, 10, 'Pashmina Ceruti ', 4, 10, 'QRJQ8717.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(249, 10, 'Pashmina Ceruti ', 4, 10, 'FBWA7740.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(250, 10, 'Pashmina Ceruti ', 4, 10, 'HJRN0495.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(251, 10, 'Pashmina Ceruti ', 4, 10, 'MXDC0943.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(252, 10, 'Pashmina Ceruti ', 4, 10, 'YGEE6895.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(253, 10, 'Pashmina Ceruti ', 4, 10, 'FOYN6660.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(254, 10, 'Pashmina Ceruti ', 4, 10, 'FIGA3100.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(255, 10, 'Pashmina Ceruti ', 4, 10, 'ORDO3367.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(256, 10, 'Pashmina Ceruti ', 4, 10, 'SOLK6051.JPG', 40000, 'Ceruti Series Pashmina \r\n\r\nBEST PRICE: Rp. 40.000/pcs\r\nSize : 180cm x 75cm, bs custom\r\nFinishing : Jahit tepi rapih\r\nMaterial: Ceruti Babydoll\r\nBertekstur pasir lembut, mudah dibentuk dan diatur. Bahan ini hits dikalangan selebgram Indonesia, Malaysia, Turki dan Australia.\r\n\r\n.>»Ada puluhan koleksi warna loh! Bagi yang order minimal 15pcs. Ada FREE buku katalog dll juga.\r\n\r\n\r\n>>WARNA di photo 90% MIRIP dgn aslinya\r\n\r\n\r\nYuk order! \r\n\r\n\r\n>>Open RESELLER<<\r\nBagi yang mau jadi reseller, langsung saja chat kami ke 087871978018. Akan ada BEST PRICE terbaik untuk reseller2 kami. \r\nJuga ada HADIAH menarik buat reseller terbaik setiap bulannya', 250),
(257, 25, 'Paket Bedug ', 8, 0, '20200510_160946.jpg', 207000, 'Kini ada paket sembako PO mulai hari ini sampai senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 8000),
(258, 25, 'Edamame', 8, 0, 'shopping.jpeg', 15000, 'PO sampai senin pagi ya ;) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 500),
(259, 25, 'Tasty Lemon Ori', 8, 0, 'Screenshot_20200510-180352_WhatsApp.jpg', 70000, 'PO sampai senin pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang', 450),
(260, 25, 'Paket Bedug 2', 8, 0, 'Screenshot_20200510-194503_WhatsApp.jpg', 107500, 'Open PO sampai senin Pagi ya :) InsyaAllah dikirim hari Kamis , yuk pesan sekarang.', 10),
(261, 20, 'GULA PASIR CURAH 1 KG', 1, 5, 'GULA_PASIR.jpg', 17000, 'Termurah di Sobat Veggies! Yuk gulanya yang manis, semanis yang beli.. hehe\r\n * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 1000),
(262, 20, 'PAKET SEMBAKO MURMER (MURAH MERIAH)', 1, 3, 'PAKET_SEMBAKO_MURMER.jpg', 61000, 'NEW PRODUCT! Paket Sembako berisi : 2,5 kg beras, 1 kg tepung terigu, dan 900 ml minyak goreng. Paket ini cocok untuk donasi, konsumsi sendiri, dan untuk dibagikan kepada sanak saudara. Dikemas dengan plastik, jika ingin request menggunakan goddie bag spunbound, bisa hubungi admin terlebih dahulu WA : 081315267966 . Terima kasih.\r\n * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 4500),
(263, 20, 'PAKET KETUPAT SEMBAKO MURAH', 1, 4, 'PAKET_KETUPAT.jpg', 76000, 'NEW PRODUCT! Paket Sembako berisi : 2,5 kg beras, 1 kg tepung terigu, 900 ml minyak goreng, dan 1 kg gula pasir. Paket ini cocok untuk donasi, konsumsi sendiri, bisa juga untuk dibagikan kepada sanak saudara. Dikemas dengan plastik, jika ingin request menggunakan goddie bag spunbound, bisa hubungi admin terlebih dahulu WA : 081315267966 . Terima kasih.\r\n * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 6000),
(264, 20, 'PAKET BEDUG 1 SEMBAKO MURAH', 1, 3, 'PAKET_BEDUG_1.jpg', 107500, 'NEW PRODUCT! Paket Sembako berisi : 5 kg beras, 1 kg gula pasir, 900 ml minyak goreng, dan 1 kaleng sarden (425 gr). Paket ini cocok untuk donasi, konsumsi sendiri, bisa juga untuk dibagikan kepada sanak saudara. Dikemas dengan plastik, jika ingin request menggunakan goddie bag spunbound, bisa hubungi admin terlebih dahulu WA : 081315267966 . Terima kasih.\r\n  * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 7500),
(265, 20, 'PAKET BEDUG 2 SEMBAKO MURAH', 1, 5, 'PAKET_BEDUG_2.jpg', 107500, 'NEW PRODUCT! Paket Sembako berisi : 5 kg beras, 1 kg gula pasir, 900 ml minyak goreng, dan 1 kg tepung terigu. Paket ini cocok untuk donasi, konsumsi sendiri, bisa juga untuk dibagikan kepada sanak saudara. Dikemas dengan plastik, jika ingin request menggunakan goddie bag spunbound, bisa hubungi admin terlebih dahulu WA : 081315267966 . Terima kasih.\r\n * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 8000);
INSERT INTO `produk` (`id_produk`, `id_toko`, `nama_produk`, `id_kategori_produk`, `stok`, `image`, `harga`, `deskripsi`, `berat`) VALUES
(266, 20, 'PAKET BEDUG LENGKAP SEMBAKO MURAH', 1, 7, 'PAKET_BEDUG_LENGKAP.jpg', 207000, 'NEW PRODUCT! Paket Sembako berisi : 10 kg beras, 1 kg gula pasir, 1 kg tepung terigu, 900 ml minyak goreng, dan 20 pcs mie soto kuah . Paket ini cocok untuk donasi, konsumsi sendiri, bisa juga untuk dibagikan kepada sanak saudara. Dikemas dengan plastik, jika ingin request menggunakan goddie bag spunbound, bisa hubungi admin terlebih dahulu WA : 081315267966 . Terima kasih.\r\n * NEW Untuk paket sembako, PO dibuka setiap hari Kamis hingga Minggu malam jam 19.00 WIB\r\n*Hari Senin dan Selasa : distribusi dari pusat ke agen dan pengemasan\r\n*Hari Rabu-Kamis : PENGIRIMAN\r\n*Pengiriman menggunakan ekspedisi, kargo, atau kurir sameday (tergantung kapasitas pesanan)', 15000),
(267, 43, 'Chia Seed', 1, 100, '20200511_104029_0000.png', 35000, 'Chia seed mengandung sejumlah seng, vitamin B3, kalium, vitamin B1, dan vitamin B2. Ini menjadikan chia seed menjadi salah satu sumber nutrisi terbaik di dunia dari beberapa nutrisi penting.', 100),
(268, 43, 'Himalaya Salt', 1, 100, '20200511_104502_0000.png', 35000, 'Beberapa kandungan garam himalaya adalah natrium, mineral. Manfaat bagi tubuh jika mengkonsumsi himalaya salt seperti menjaga hidarasi tubuh, obat anti kanker, membantu melawan infeksi, serta mampu mengeluarkan racun dalam tubuh.', 100),
(271, 43, 'Kunyit Putih Bubuk', 1, 100, '20200511_114207_0000.png', 27000, 'Manfaat Kunyit Putih :\r\n1. . Membantu Mengobati Gangguan Pencernaan\r\n2. Masalah Pernafasan\r\n3. Meredakan Peradangan dan Nyeri\r\n4. Anti-inflamasi dan penghilang rasa sakit', 100),
(272, 43, 'Empon - Empon 250 ml', 1, 100, '20200511_115107_0000.png', 17000, 'Komposisi : Jahe, Kunyit, Sereh, Cengkeh, Kayu Manis, dan Gula Aren\r\n\r\nBagus untuk menjaga daya tahan tubuh.', 0),
(274, 39, 'TOM YUM GOONG (2-3 Porsi)', 2, 10, 'TomYumGoong-Symphony.jpg', 90000, 'Tom Yum Goong adalah sup yang berasal dari Negara Thailand. Dengan cita rasa gurih, asam, manis, dan pedas. Dibuat dari bahan pilihan dan segar seperti :\r\n- Udang Laut\r\n- Aneka Fishcake (Chikuwa,Dumpling Chicken,Dumpling Cheese,Salmon Ball,Fish Ball,Crab Claw)\r\n- Tofu Udang\r\n- Jamur Enoki / Shitake \r\n- Kuah Susu Kaldu Udang\r\n- Tom Yum Paste (Homemade)\r\n- dll\r\n\r\nNB : \r\n* Untuk pemesanan menggunakan sistem PO selama 3-4 hari. \r\n* Dikirim setiap hari Senin &amp; Kamis\r\n* Pengiriman makanan dalam bentuk bahan dan kuahnya terpisah. Jadi para foodlovers bisa memasaknya dirumah dan menyantapnya dalam keadaan ready to serve now.\r\n(Informasi &amp; QnA Bisa Menghubungi 081290083581)\r\n\r\n\r\n', 800),
(275, 39, 'TAIYAKI (1 Pack @10 Buah)', 2, 10, 'Taiyaki-SymphonyKNC.jpg', 70000, 'Taiyaki atau sering dikenal sebagai kue ikan panggang. Kue ini berasal dari Negara Jepang. Dengan cita rasa gurih, manis, dan asin. Dibuat dari bahan pilihan dan segar seperti :\r\n- Telur\r\n- Susu\r\n- Tepung Protein Rendah\r\n- dll.\r\nDi isi oleh custard (Coklat,Keju,Matcha,Ogura).\r\nBisa pilih adonan crème (golden brown) atau charcoal (black).\r\n\r\nNB : \r\n* Untuk pemesanan menggunakan sistem PO selama 3-4 hari. \r\n* Dikirim setiap hari Senin &amp; Kamis\r\n* Saran penyajian : Bisa dihangatkan kembali menggunakan microwave untuk rasa yang optimal.\r\n(Informasi &amp; QnA Bisa Menghubungi 081290083581)\r\n', 500),
(276, 39, 'EDAMAME PREMIUM (Mentah / Matang)', 2, 10, 'Edamame-SymphonyKNC.jpg', 18000, 'Edamame adalah sebuah kacang kedelai muda yang masih berada dalam satu kesatuan polong. Dapat ditemukan pada masakan-masakan Asia Timur. Penyajiannya dengan direbus atau dikukus dan disajikan dengan garam putih / pink salt.\r\n\r\nNB : \r\n* Untuk pemesanan menggunakan sistem PO selama 3-4 hari. \r\n* Dikirim setiap hari Senin &amp; Kamis\r\n* Pengiriman makanan bisa dalam bentuk mentah atau matang. Jadi para foodlovers bisa memasaknya dirumah dan menyantapnya dalam keadaan ready to serve now.\r\n* Saran penyajian matang: Kondisi dingin lebih mengeluarkan rasa yang optimal.\r\n(Informasi &amp; QnA Bisa Menghubungi 081290083581)\r\n', 500),
(277, 39, 'RISOL MAYCHIZ (1 Pack @10 Buah)', 2, 10, 'Risol_Maychiz-SymphonyKNC.jpg', 80000, 'Risol Maychiz adalah masakan snack berupa pastry. Dengan cita rasa gurih, manis, dan asin. Dibuat dari bahan pilihan dan segar :\r\n- Tepung Protein Sedang\r\n- Tepung Panir\r\n- Telur\r\n- Susu\r\n- Mayonaise\r\n-  dll.\r\nIsian berupa (Smokedbeef+Keju / Daging Ayam+Telur Ayam / Sosis Sapi+Telur Ayam).\r\nBisa di mix isiannya atau dominan isiannya.\r\n\r\nNB : \r\n* Untuk pemesanan menggunakan sistem PO selama 3-4 hari. \r\n* Dikirim setiap hari Senin & Kamis\r\n* Pengiriman makanan dalam bentuk frozen. Jadi para foodlovers bisa menggorengnya dirumah dan menyantapnya dalam keadaan ready to serve now.\r\n(Informasi & QnA Bisa Menghubungi 081290083581)\r\n', 600),
(278, 81, 'Madu hutan madu murni', 10, 5, 'IMG-20200501-WA0005.jpg', 135000, 'Madu hutan murni dari lebah hutan Apis Dorasta.\r\nMengandung nektar bunga multiflora dominan Akasia.\r\nKhasiat madu hutan :\r\n-mengandung anti oksidan yang baik bagi proses perbaikan organ dalam tubuh.\r\n-memperbaiki fungsi organ dalam seperti jantung, lambung, hati, ginjal, dan saluran pencernaan.\r\n-memperbaiki daya tahan tubuh.\r\n-memiliki kemampuan untuk menyerap toksin dari tubuh.\r\n-memperbaiki kemampuan seksual.\r\n-membantu proses pengeringan luka.\r\n-memiliki kemampuan menyerap kandungan glukosa berlebihan pada tubuh, baik di konsumsi bagi penderita diabetes.\r\n-menghambat pertumbuhan sel kanker.\r\n-dan manfaat yang lainnya.', 300),
(279, 74, 'Sirloin Beef ', 1, 5, 'IMG-20200503-WA0007.jpg', 150, 'Sirloin Beef adalah daging sapi yang memiliki lemak lebih banyak daripada jenis daging sapi lainnya. ', 1000),
(280, 74, 'Yoshinoya Sliced Beef', 1, 5, 'IMG-20200503-WA0006.jpg', 140, 'Yoshinoya Sliced Beef adalah jenis daging sapi yang dipotong tipis-tipis dan terasa lebih juicy saat dimakan', 1000),
(281, 74, 'Yoshinoya Sliced Beef', 1, 5, 'IMG-20200503-WA00061.jpg', 75, 'Yoshinoya Sliced Beef adalah jenis daging sapi yang dipotong tipis-tipis dan terasa lebih juicy saat dimakan', 500),
(282, 74, 'Paru', 1, 5, 'IMG-20200503-WA0008.jpg', 80, 'Paru adalah bagian sapi yang lebih kenyal dibandingkan jenis lainnya', 1000),
(283, 81, 'Madu herbal madu hitam pahit', 10, 4, 'IMG-20200501-WA0009.jpg', 70000, 'Manfaat madu hitam pahit\r\nMengobati diabetes/kencing manis, gangguan fungsi seksual pria, gangguan pada lambung (maag) kronis, radang tenggorokan dan panas dalam, batuk, pilek, asma, polip, sinusitis, kanker dan tumor, darah tinggi dan darah rendah, demam berdarah dan tipes, kencing batu, meningkatkan stamina dan imunitas tubuh', 500),
(284, 81, 'Madu herbal madu super', 10, 5, 'IMG-20200501-WA00091.jpg', 65000, 'Manfaat madu herbal madu super\r\nMeningkatkan daya tahan tubuh - meningkatkan hormon - menyuburkan peranakan bagi wanita - sangat cocok di konsumsi bagi pria dewasa - menyembuhkan penyakit darah tinggi dan jantung - menyembuhkan sel tubuh yang rusak - mempercepat penyembuhan luka operasi - mengendurkan bagian syaraf yang tegang - menghilangkan rasa letih yang berkepanjangan - menghaluskan kulit - membantu menurunkan kadar kolesterol dalam tubuh - mempelancar fungsi otak', 500),
(285, 84, '1Kg Keripik Tempe Sagu by krpk', 1, 8, 'PicsArt_05-13-12_53_13.jpg', 88000, '[Harga Promo Spesial Ramadhan] Rasa Original (asin gurih). Kemasan menggunakan toples demi keamanan pengiriman. Pengiriman H+1 setelah konfirmasi pembayaran dari Balaraja, Kab. Tangerang hanya menggunakan J&amp;T Express atau JNE. Silahkan berikan catatan apabila ada tambahan-tambahan khusus', 1000),
(286, 82, 'Kemeja koko ', 4, 5, 'IMG-20200510-WA0007.jpg', 130, 'Type : Sanghai shirt Short sleeve', 100),
(287, 84, '150gr Keripik Tempe Sagu by krpk', 1, 7, 'PicsArt_05-13-12_55_48.jpg', 12000, 'Rasa Original (asin gurih). Kemasan menggunakan standing pouch (plastik). Pengiriman H+1 setelah konfirmasi pembayaran dari Balaraja, Kab. Tangerang hanya menggunakan J&amp;T Express atau JNE. Silahkan berikan catatan apabila ada tambahan-tambahan khusus', 150),
(288, 16, 'Sepre Katun Jepang King Size (180x200x30)', 4, 10, 'WhatsApp_Image_2020-04-30_at_20_19_12.jpeg', 315000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 seprai + 2 sarban + 2 sargul\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 1000),
(289, 40, 'SENGKEL', 1, 100, 'SENGKEL.jpeg', 138000, 'Daging fresh dan HALAL.\r\nHarga dapat berubah sewaktu-waktu.\r\nHarga belum termasuk ongkir (saat ini hanya GO-SEND INSTANT). ', 1000),
(290, 40, 'GANDIK', 1, 100, 'GANDIK.jpg', 140000, 'Daging fresh dan HALAL.\r\nHarga dapat berubah sewaktu-waktu.\r\nHarga belum termasuk ongkir (saat ini hanya GO-SEND INSTANT).', 500),
(291, 40, 'LIDAH SAPI', 1, 100, 'LIDAH.jpeg', 140000, 'Daging fresh dan HALAL.\r\nHarga untuk per 1 pcs, bukan per kg.\r\nHarga dapat berubah sewaktu-waktu.\r\nHarga belum termasuk ongkir (saat ini hanya GO-SEND INSTANT).', 500),
(292, 40, 'PARU', 1, 100, 'WhatsApp_Image_2020-05-03_at_13_39_50_(1).jpeg', 82000, 'Daging fresh dan HALAL.\r\nHarga dapat berubah sewaktu-waktu.\r\nHarga belum termasuk ongkir (saat ini hanya GO-SEND INSTANT).', 1000),
(294, 85, 'Seprai Katun Jepang King Size (180x200x30)', 11, 10, 'WhatsApp_Image_2020-04-30_at_20_19_10_(2).jpeg', 315000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 seprai + 2 sarban + 2 sargul\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 1000),
(295, 85, 'Seprai Katun Jepang Queen Size (160x200x30)', 11, 10, 'WhatsApp_Image_2020-04-30_at_20_19_12_(1).jpeg', 305000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 seprai + 2 sarban + 2 sargul\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 1000),
(296, 85, 'Bedcover Katun Jepang - Ukuran Single (160x240)', 11, 10, 'WhatsApp_Image_2020-04-30_at_21_59_13.jpeg', 325000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 bedcover katun jepang\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 1000),
(297, 85, 'Bedcover Katun Jepang - Ukuran Double (230x240)', 11, 10, 'WhatsApp_Image_2020-04-30_at_21_59_15_(1).jpeg', 425000, 'Bahan Katun Jepang halus dan banyak pilihan warna/motif.\r\n\r\nPaket terdiri dari:\r\n1 bedcover katun jepang\r\n\r\nPO 2 (dua) hari ya karena harus dijahit dulu.\r\n\r\nGambar di sini hanya sampel, karena produk kami dapat habis sewaktu-waktu. \r\n\r\nKetentuan pemesanan:\r\n1. Silakan buka web https://sal.my.id/main/kategori/3 untuk memilih motif.\r\n2. Pilih 5 (lima) motif alternatif, kami akan memproses 1 (satu) dari motif yang kamu pilih berdasarkan stok yang tersedia. Isi di kolom Catatan Pembeli.\r\n3. Jika tidak memilih kami akan mengirim random ya.\r\n\r\nTerima kasih ', 1000000),
(298, 10, 'Masker kain 3 Filter', 4, 2, 'WhatsApp_Image_2020-05-16_at_10_55_16.jpeg', 15000, '&gt;&gt; Limited Stock\r\n&gt;&gt; Ada filter Tissue,\r\n&gt;&gt; Bahan Maxmara (halus dan lembut)\r\n&gt;&gt; Earloop', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `judul`, `image`) VALUES
(1, '#tajeerbener  #tajeeryuks', 'slider1.jpg'),
(2, 'Peresmian tajeer', 'slider2.jpg'),
(3, 'Peresmiantajeer', 'slider3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_barang`
--

CREATE TABLE `status_barang` (
  `id` int(11) NOT NULL,
  `ket_barang` varchar(50) NOT NULL,
  `simbol_brg` varchar(50) NOT NULL,
  `warna_brg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_barang`
--

INSERT INTO `status_barang` (`id`, `ket_barang`, `simbol_brg`, `warna_brg`) VALUES
(1, 'Di Siapkan', 'fas fa-fw fa-boxes', 'btn btn-secondary'),
(2, 'Di Kirim', 'fas fa-fw fa-truck', 'btn btn-warning '),
(3, 'Di Terima', 'fas fa-fw fa-check', 'btn btn-success ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_bayar`
--

CREATE TABLE `status_bayar` (
  `id` int(11) NOT NULL,
  `ket_bayar` varchar(50) NOT NULL,
  `warna_byr` varchar(50) NOT NULL,
  `simbol_byr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_bayar`
--

INSERT INTO `status_bayar` (`id`, `ket_bayar`, `warna_byr`, `simbol_byr`) VALUES
(1, 'Checkout', '', ''),
(2, 'Proses', 'btn btn-warning ', 'fas fa-fw fa-money-bill-wave'),
(3, 'Lunas', 'btn btn-success ', 'fas fa-fw fa-check');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `date_create` int(11) NOT NULL,
  `banyak_produk` int(11) NOT NULL,
  `deskripsi_toko` varchar(1024) NOT NULL,
  `penilaian` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id`, `owner`, `nama_toko`, `date_create`, `banyak_produk`, `deskripsi_toko`, `penilaian`, `is_active`, `id_provinsi`, `id_region`) VALUES
(1, 1, 'Annas store', 1583132095, 2, 'ini adalah toko berkah jaya abadi', 2, 1, 6, 153),
(2, 2, 'Test Store', 1583132815, 2, 'ini adalah toko Anggi', 2, 1, 0, 0),
(3, 8, 'ujang store', 1588094630, 0, 'Mudah Terpercaya', 0, 0, 0, 0),
(4, 6, 'Jaya Store', 1588095240, 0, 'aman', 0, 0, 0, 0),
(5, 13, 'IF Store', 1588170585, 0, 'Bingung perangkat komputer anda kenapa?\r\n\r\nTanyakan ke kami saja', 0, 0, 0, 0),
(6, 4, 'Tester Store', 1588175767, 0, 'Ini Toko Tester', 0, 0, 0, 0),
(8, 14, 'Lab Elektro', 1588177211, 0, 'lab elektro', 0, 0, 0, 0),
(9, 16, 'aStore', 1588200467, 0, 'Amy Store', 0, 1, 0, 0),
(10, 17, 'Kudung', 1588200622, 0, 'KUDUNG Collection menjual kebutuhan hijab untuk muslimah, seperti pashmina, hijab square, hijab instan dan masker 3 filter', 0, 1, 0, 0),
(11, 18, 'Saranghaecraft', 1588200735, 0, 'Saranghae Craft merupakan online shop penyedia barang-barang craft handmade, yang dibuat berdasarkan keinginan customer. Produk ini dengan sistem PO', 0, 1, 0, 0),
(12, 19, 'Indi', 1588200938, 0, 'Tenant Indi', 0, 1, 0, 0),
(13, 20, 'Celemek Pintar', 1588201059, 0, 'Celemek Pintar', 0, 1, 0, 0),
(14, 21, 'Sahabat Alter Indonesia', 1588201211, 0, 'Konsultan IT', 0, 1, 0, 0),
(15, 22, 'SERET', 1588201322, 0, 'Minuman segar', 0, 1, 0, 0),
(16, 23, 'salmy.id', 1588201478, 0, 'Menjual Pakaian berkualitas tinggi, terima kasih sudah mengunjungi toko komi \r\n\r\nBisa Mulai Pre -Order Dari Koleksi kami atau jika Anda punya desain custom.\r\n\r\nKami Melayani Jasa Desain dan Jahit Pakaian di JABODETABEK.\r\n\r\nDesainer kami memiliki pengalaman di butik kelas nasional dan internasional.', 0, 1, 0, 0),
(17, 24, 'symphony Kitchen', 1588201596, 0, 'symphonyknc.id', 0, 1, 0, 0),
(18, 25, 'Frozen Food', 1588201716, 0, 'Selamat datang di toko kami\r\n\r\nKami menyediakan aneka hidangan beku\r\n\r\nAda minuman juga lho..\r\n\r\nRasanya enak dan terjangkau harganya\r\n\r\n\r\nYuk, pesen sekarang!', 0, 1, 0, 0),
(19, 26, 'Fatty Co.', 1588205564, 0, 'FATTY CO. merupakan e-commerce yang berjalan d bidang makanan. Fatty Co. banyak menjual berbagai macam jenis kurma, makan kering, ataupun makanan hasil produksi rumahan. Jadi jangan ragu untuk belanja di Fatty Co. karena produknya sudah di terjamin dengan rasa yang lezat dan berkualitas (Premium).\r\n\r\nTerima Kasih, dear.\r\nHappy Shopping ya:) Kami tunggu orderannya', 0, 1, 0, 0),
(20, 29, 'Carota Store', 1588215875, 0, 'Sayuran Segar', 0, 1, 0, 0),
(21, 32, 'Bellazela Collection', 1588231281, 0, 'Blazer production center with a variety of good models and guaranteed material quality\r\n\r\n\"Stay Confident With Bellazela\"\r\nWhatsApp : 0812 49 77 2323', 0, 1, 0, 0),
(22, 36, 'Naqy co', 1588253886, 0, 'Berbagai macam produk herbal', 0, 1, 0, 0),
(23, 37, 'Ripka Co', 1588254032, 0, 'Menjual aneka kue ina cookies dan peralatan rumah tangga', 0, 1, 0, 0),
(24, 38, 'Fatdoc.', 1588256237, 0, 'Sebuah Toko', 0, 1, 0, 0),
(25, 39, 'Arah Veggies', 1588256420, 0, 'Arah Veggies Toko merupakan Toko Dropshiper dari Dari Platform Sobat Veggies. Sobat Veggies adalah Sebuah Platform yang menjual Bahan pangan nabati dan hewani. Sobat Veggies memiliki 45+ jenis Sayur, buah, produk olahan dan akan terus bertambah. Semua Sayur dan Buah Sobat Veggies yang kakak terima dan jual ke konsumen nantinya FRESH dipanen langsung dari petani.', 0, 1, 0, 0),
(26, 40, 'Macarena (Macaroni Enak)', 1588256510, 0, 'Macaroni enak?\r\nYa Macarena', 0, 1, 0, 0),
(27, 41, 'RAI Store', 1588262437, 0, 'Sebuah toko', 0, 1, 0, 0),
(28, 42, 'Cream Bucket', 1588262677, 0, 'Cream Bucket adalah toko yang menyediakan frozen cheesecake. Sebuah makanan yang lagi hits dan dapat dinikmati seluruh kalangan karana rasanya yang legit dan cocok untuk cemilan.', 0, 1, 0, 0),
(29, 43, 'Custom Storage', 1588262811, 0, 'Custom Storage menjual barang barang custom sesuai dengan design kesukaan mu menyediakan :  Case Smartphone, mug, flazz bca, emoney mandiri, tumbler sport, photobook', 0, 1, 0, 0),
(30, 44, 'PerfectMask', 1588263111, 0, 'Keunggulan paket perfectmask kami : \r\n\r\nKita pake Masker dan Serum organik yang merupakan produk dengan kandungan Ganggang Biru Langka , Kolagen , 3x Vitamin E serta Klorofil dan\r\nKandungan Vitamin A, C, E beta karotene, antioksidan terbaik dikelasnya berfungsi untuk : \r\n\r\n- Menghilangkan Komedo , Flek Hitam , Jerawat serta bekasnya secara cepat &amp; Alami\r\n- Mencerahkan dan Memutihkan kulit Wajah secara alami\r\n- Meregenerasi &amp; Memberikan Nutrisi pada Kulit agar tidak gampang kusam dan Jerawatan\r\n- Menyamarkan Kantung Mata dan menutup Bekas Bopeng ( Berlubang ).\r\n- Cocok untuk semua Jenis Kulit\r\n- Aman Tanpa efek samping sedikitpun karna bahannya yg sangat alami serta sudah bersertifikat BPOM &amp;\r\nHalal.', 0, 1, 0, 0),
(31, 46, 'Cheesecake Palace', 1588289751, 0, 'Sebuah toko', 0, 1, 0, 0),
(32, 47, 'Flow Store', 1588290380, 0, 'Flow store menjual berbagai pakaian muslim sesuai dengan syariat Islam, produk dibuat dengan bahan yang berkualitas sehingga nyaman dipakai untuk aktivitas sehari-hari dan ibadah Anda.', 0, 1, 0, 0),
(33, 48, 'SA-007', 1588291097, 0, 'Menjual Alat Elektronik dan Kesehatan', 0, 1, 0, 0),
(34, 49, 'AYLI Book Store', 1588292271, 0, 'Menjual Buku - Buku Karya Buya Hamka, Tafsir Al Quran Buya Hamka, dsb', 0, 1, 0, 0),
(35, 50, 'The New You', 1588292570, 0, 'Buku mengembangan diri', 0, 1, 0, 0),
(36, 45, 'Gus Vector', 1588293327, 0, 'Gus Vector adalah toko yang menjual jasa pembuatan Vector Art untuk Portrait wajah, hasilnya bisa diberikan kepada orang tersayang, dalam keadaan ulang tahun, wisuda, atau sebagai hadiah perpisahan. \r\n\r\nAnda meminta, kami sedia jasa :)', 0, 1, 0, 0),
(37, 51, 'Ridha Donut', 1588296855, 0, 'Jual Donut', 0, 1, 0, 0),
(38, 59, 'Dapur anisa', 1588304279, 0, 'menjual makanan dessert, salad buah, dan makanan kentang kering teri kacang + sambal teri kacang dengan harga terjangkau ?', 0, 1, 0, 0),
(39, 60, 'Symphony Kitchen &amp; Catering', 1588304882, 0, 'Symphony Kitchen & Catering merupakan salah satu “Jasa Boga/Kuliner” yang melayani pemesanan berbagai macam masakan (Makanan dan Minuman) baik untuk acara maupun untuk instansi terkait.\r\n\r\nPilihan menu-menu yang kami sediakan beraneka ragam, mulai dari bernuansa Indonesian Cuisine, Asian Cuisine, dan Western Cuisine.\r\n\r\nHomemade Product, Fresh From The Oven.', 0, 1, 0, 0),
(40, 65, 'Liama Shop', 1588312750, 0, 'LIAMA SHOP merupakan toko yang menjual daging-dagingan yang fresh, HALAL dan harga yang terjangkau.\r\nSilahkan check dan diorder ya teman-teman :)\r\nTerima kasih', 0, 1, 0, 0),
(41, 66, 'Muslimah Style', 1588312993, 0, 'Keunggulan paket Muslimahstyle kami : \r\n&bull; Lebih nyaman\r\nKarena bahan yang kami pakai adalah kain yang berkualitas(lembut) agar saat di pakai tidak terasa berat dan Bahannya yang bagus agar baju tersebut tidak tembus pandang, menutup seluruh tubuh dan para pembeli dapat merasakan kenyamanan dengan Baju tersebut.\r\n\r\n&bull;Kulit menjadi lebih sehat\r\nKarena dengan kamu memakai baju syar&rsquo;i yang model lebih longgar akan memberi kesehatan lebih baik pada tubuh dan kulit dibandingkan jenis baju yang lebih ketat. \r\n\r\n&bull; Design baju akan selalu diberikan yang terbaik. Supaya para pembeli merasa puas.\r\n\r\n&bull; Produk yang kami hasilkan akan dilakukan mengecekan kembali, untuk mengurangi cacat produk pada saat sampai ke pembeli.', 0, 1, 0, 0),
(42, 67, 'Delichic.id', 1588313130, 0, 'Delichic.id merupakan toko online yang menjual berbagai macam olahan makanan. Menyediakan kurma yang manisnya seperti dia, rempah serta jamu yang dijamin kuat menahan rindu seperti dilan.', 0, 1, 0, 0),
(43, 68, 'Herbaqis_mei.nadin', 1588313302, 0, 'Banyak Orang yang sibuk mencari makanan siap saji, tanpa memikirkan imunitas dirinya sendiri. Disini, Kami menjual berbagai macam rempah-rempah untuk membantu menjaga imunitas tubuh Anda. Semoga rezeki kami ada di Anda. Selamat Berbelanja????', 0, 1, 0, 0),
(44, 69, 'Simpleks Store', 1588315144, 0, 'disini ada jual cheese cake yang enak. Beli tuk buktikan', 0, 1, 0, 0),
(45, 70, 'Qurmaku_', 1588315300, 0, 'Qurmaku_ menjual berbagai macam kurma dan jajanan khas arab dengan kualitas pilihan dan dengan harga yang terjangkau. Untuk rasa sendiri jangan ditanya, langsung buktikan! Rasakan sensasi makan kurma dan jajanan arab di rumah, pasti ketagihan! 100% Halal\r\n\r\nKetika mengkonsumsi kurma InsyaAllah dapat berkhasiat untuk :\r\n1. Membantu mengurangi tekanan darah\r\n2. Membantu meningkatkan sistem kekebalan tubuh\r\n3. Membantu mengeluarkan racun dalam organ pencernaan\r\n4. Mengendalikan gula darah\r\n5. Mencegah penyakit jantung\r\n5. Menurunkan kolesterol\r\nadapun kandungan gula pada kurma ini alami sehingga aman untuk dikonsumsi penderita diabetes', 0, 1, 0, 0),
(46, 71, 'Puteri88', 1588315594, 0, 'Menjual berbagai macam produk sprei dan bed cover berkualitas', 0, 1, 0, 0),
(47, 73, 'dendsus 88', 1588319536, 0, 'Toko no tipu-tipu. Harga bersaing, kualitas terjamin.', 0, 1, 0, 0),
(48, 74, '&ldquo;RABU&rdquo; Milky Jelly Drink &amp; Susu Ku', 1588319685, 0, '“ RABU ‘ Milky Jelly Drink & Susu Kurma adalah minuman perpaduan antara cita rasa buah dan susu yang  menyegarkan serta aman karena dibuat dari bahan-bahan yang aman dan berkualitas juga tanpa pemanis buatan.', 0, 1, 0, 0),
(49, 78, 'IDE team', 1588325502, 0, 'Toko kami menyediakan produk produk dalam negri yang berkualitas untuk menunjang kesehatan anda dan perkembangan anak anda .', 0, 1, 0, 0),
(50, 77, 'Makan Enak Bandung', 1588325711, 0, 'Menjual berbagai macam Ayam Olahan dengan beberapa variasi rasa dengan Merk Frozchick', 0, 1, 0, 0),
(51, 80, 'Madu Bahagia', 1588340005, 0, 'Hanya dengan rutin minum madu 3 kali sehari orang ini jarang pergi ke dokter. &quot;Mengapa Madu kami wajib sahabat miliki? .&quot;Action sekarang juga, order madu kami&quot; .&quot;Beli sekarang jangan tunggu stok kami habis&quot;', 0, 1, 0, 0),
(52, 81, 'Bill Store', 1588340132, 0, 'Madu Hutan ini diambil dari bagian dalam Hutan di Pulau Sumatra, diambil oleh penduduk asli di sekitar hutan dengan cara konvensional untuk menjaga keaslian kualitas madu. Madu kami memiliki cita rasa yg ringan, beraroma bunga, dan sedikit asam khas madu hutan multiflora alami karena diambil dari sarang madu di hutan dengan vegetasi 70-80% Pohon Akasia. Madu kami diberikan oleh alam kepada anda melalui kami. \r\nJaga kesehatan ada dengan mengkonsumsi Madu Hutan alami dari alam', 0, 1, 0, 0),
(53, 82, 'Minemum Shop', 1588340312, 0, 'Menjual makanan ringan makaroni yang rasanya berbeda dari yang lainnya', 0, 1, 0, 0),
(54, 83, 'Muslim Store', 1588340611, 0, 'Best Seller Dapatkan Baju muslim Terbaru hanya disini, tersedia untuk anak2, remaja, dan dewasa', 0, 1, 0, 0),
(55, 84, 'Dapari Shop', 1588341288, 0, 'jawaban yang tepat untuk memenuhi kebutuhan mu', 0, 1, 0, 0),
(56, 85, 'Dapari Shop 2', 1588341355, 0, 'jawaban yang tepat untuk memenuhi kebutuhan mu', 0, 1, 0, 0),
(57, 86, 'Farrash Frozen', 1588344907, 0, 'Farrash Frozen adalah makanan setengah matang yang di kemas dan dibekukan yg kemudian bisa diolah kembali dengan cara memasaknya. Untuk ibu-ibu masa kini atau anak kos yang ga mau repot masak, Farrash Frozen solusi dari segala solusi. Praktis ga bikin repot. Kunjungilah toko kami, kalian kenyang kami senang.', 0, 1, 0, 0),
(58, 87, 'Farhana', 1588346392, 0, '?????????Farhana Sahabat Dapur Anda?????????\r\n\r\nSiap menghidangkan :\r\n1. Rendang daging \r\n2. Rendang jengkol \r\n3. Rendang paru \r\n4. Keripik kentang \r\n5. Dendeng garing \r\n6. Sambal goreng ati\r\n7. Nasi kebuli ayam \r\n8. Nasi kebuli kambing \r\n9. Nasi Box\r\n\r\n# Ramadhan  bulan berbagi \r\n# Ramadhan  penuh berkah \r\n# Anda ingin berbagi\r\n# Nasi Box  kami  membuat berbagi  menjadi  mudah  ????\r\n\r\n??Yuuk di order??', 0, 1, 0, 0),
(59, 93, 'fyesnack.id', 1588394945, 0, 'Pusat Produksi Makanan Ringan, Seperti Makaroni dengan berbagai macam rasa.', 0, 1, 0, 0),
(60, 96, 'Lyly cake &amp; cookies', 1588425781, 0, 'Rumah tinggal sekaligus usaha rumahan (home industry)', 0, 1, 0, 0),
(61, 61, 'Probiotic Bioto Corner', 1588425954, 0, 'Menyediakan Produk Kesehatan berbasis Probiotik yang Alami, berkualitas Internasional dengan Terjangkau', 0, 1, 0, 0),
(62, 97, 'Mang Ncun', 1588427602, 0, 'Menjual olahan ikan dan pangan', 0, 1, 0, 0),
(63, 98, 'Veinte', 1588433195, 0, 'we sell various variants of the product with high quality', 0, 1, 0, 0),
(64, 99, 'EZUNICE_FOOD', 1588433391, 0, 'Kami adalah supplier berbagai jenis produk kurma, selain harga terjangkau kami utamakan kualitas kurma yang kami jual sehingga anda akan sangat puas dengan produk kami, 100% manis tanpa pemanos buatan, cocok untuk hidangan ramadhan baik buka ataupun saat sahur.', 0, 1, 0, 0),
(65, 100, 'Cahya Bintara', 1588433744, 0, 'Toko yang menjualkan Madu Herbal', 0, 1, 0, 0),
(66, 101, 'Cahaya Bintara 2', 1588434010, 0, 'Sebuah toko yang menjual Seprai dan Bedcover', 0, 1, 0, 0),
(67, 102, 'Cahya Bintara 2', 1588434109, 0, 'Sebuah toko untuk handsanitizer', 0, 1, 0, 0),
(68, 103, 'Wijaya Online', 1588435908, 0, 'Toko untuk menjual Masker', 0, 1, 0, 0),
(69, 108, 'Fenia.co', 1588579220, 0, 'Kami menjual berbagai macam sayuran, buah-buahan serta produk olahannya. Semua sayur dan buah yang diterima konsumen dijamin kesegarannya karena dipanen langsung dari petani', 0, 1, 0, 0),
(70, 111, 'Biznizan', 1588603092, 0, 'Kami supplier produk custom seperti CASE Smartphone untuk berbagai tipe HP dan kami bisa dropship untuk join jdi dropshipper kami', 0, 1, 0, 0),
(71, 115, 'Foodyum', 1588661542, 0, 'Selling good food for good mood', 0, 1, 0, 0),
(72, 116, 'Rey Franchise', 1588692330, 0, 'higienis,nimat enak', 0, 0, 0, 0),
(73, 117, 'Rey Franchise', 1588692824, 0, 'Higienis, nimat, enak', 0, 1, 0, 0),
(74, 121, 'zhara.project', 1588749032, 0, 'Toko ini menjual berbagai daging sapi yang insyaallah halal 100% dan dijamin puas dengan produk kita ????????', 0, 1, 0, 0),
(75, 122, 'foodyard', 1588784557, 0, 'Dibeli yang ada aja yaa peeps !! Happy shopping !!', 0, 1, 0, 0),
(76, 126, 'Sprei Holic', 1588916700, 0, 'Sprei Bed Cover Homemade, PO pembuatan sprei serta bedcover', 0, 1, 0, 0),
(77, 127, 'Kopi sila', 1589007527, 0, 'Coffeeshop', 0, 1, 0, 0),
(78, 128, 'tokoono', 1589007993, 0, 'Produk kesehatan dan kebugaran', 0, 1, 0, 0),
(79, 129, 'Akbar\'s Frozen Food', 1589009034, 0, 'Homemade Japanese frozen food yg dibuat dgn bahan-bahan import berkualitas dan sudah mendapatkan sertifikat halal MUI sejak Juni 2019', 0, 1, 0, 0),
(80, 130, 'Bill Store 2', 1589013787, 0, 'Sebuah toko Makanan Tradisional', 0, 1, 0, 0),
(81, 131, 'Madu Sehat', 1589013940, 0, 'Hanya dengan rutin minum madu 3 kali sehari orang ini jarang pergi ke dokter. \"Mengapa Madu kami wajib sahabat miliki? .\"Action sekarang juga, order madu kami\" .\"Beli sekarang jangan tunggu stok kami habis\"', 0, 1, 0, 0),
(82, 134, 'Lammim Apparel', 1589165022, 0, 'Lammim Apparel merupakan clothing muslim pria yang menampilkan nuansa cool dan elegan, cocok untuk kuliah dan acara formal lainnya, berbahan lembut yang membuat nyaman aktifitasmu serta menambah khusyu\' ibadahmu.', 0, 1, 0, 0),
(83, 135, 'Waris Coffee', 1589174304, 0, 'coffee shop', 0, 1, 0, 0),
(84, 136, 'krpk.', 1589259973, 0, 'Menjual aneka makanan ringan\r\nUntuk sementara hanya tersedia size 150 gr, 1 Kg, 2 Kg, dan 3 Kg\r\n\r\nPengiriman dari Balaraja, Kab. Tangerang hanya menggunakan J&amp;T Express atau JNE\r\n\r\nPengiriman H+1 setelah konfirmasi pembayaran\r\n\r\nTerima kasih.', 0, 1, 0, 0),
(85, 141, 'Salmy', 1589275091, 0, 'Menjual bedcover dan seprei', 0, 1, 0, 0),
(86, 138, 'gentilproject', 1589441726, 0, 'Health &amp; Beauty 100% authentic', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `role_id` int(2) NOT NULL,
  `is_active` int(2) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `no_hp`, `alamat`, `no_rekening`, `role_id`, `is_active`, `jenis_kelamin`) VALUES
(1, 'Rafi', 'rafi@if.uai.ac.id', '$2y$10$ytivcb3O7.dSvUMDNlTK2uxr.NRX7rAKUPCZYfXyB5NaH08OJNBTi', '0878005325', 'Rawasari Barat 8', '123123123', 2, 1, 'L'),
(2, 'Anggi', 'anggi@if.uai.ac.id', '$2y$10$SDaAN38mKz3iw49aItWQSOqCubtoM5kL28Dcb2QJrRSdpBbg5V1Cm', '0896986544', 'Jl. Pamulang Raya 5', '321321321', 2, 1, 'P'),
(3, 'Arif', 'arif@if.uai.ac.id', '$2y$10$loi5BP22rcRX2iAleO06YeP1fdhwIV91DJkFcNdty/1r3cpNtC5ca', '081232163541', 'Jl. Pasar Minggu baru', '', 1, 1, 'L'),
(4, 'tes@a.a', 'tes@a.a', '$2y$10$IA5zIvMo9cNMRhA5hA.bROMV/vKFM1FUMVYt33LLgkz9.sTcOpoGu', '0865465321', 'Jl Tester', '', 2, 1, 'L'),
(5, 'Rafi', 'rafi.annas2000@gmail.com', '$2y$10$nAwLLCUNVcuMsOAVSRJETOu94.3IC3WVfhv3AUZITIZ.BlMjvsKg6', '08111111', 'Jl Sawah besar raya nomor 5 RT 09 RW 01', '', 3, 1, 'P'),
(6, 'Jaya', 'rafi.annas900@gmail.com', '$2y$10$loi5BP22rcRX2iAleO06YeP1fdhwIV91DJkFcNdty/1r3cpNtC5ca', '0898465458', 'Jl kebayoran baru 2 jakarta selatan', '', 2, 1, 'L'),
(8, 'ujang', 'ujang@gmail.com', '$2y$10$EegnCZBcch0Ta86fTQZcfex9yxG2o8KNtDcsiPyQXZV/JkftrPPPq', '08765468654', 'Jl. Kebon Nanas 5 Jakarta Timur', '', 2, 1, 'L'),
(11, 'aju', 'rafi.annas9000@gmail.com', '$2y$10$vUKxOleawVMSZkorWw76dO2M6RkrdvZ5PqtSUyppl04f7CbpIOGTu', '09917382323', 'Jl majapahit', '', 3, 1, 'L'),
(13, 'Admin Lab IF', 'lab@if.uai.ac.id', '$2y$10$a0weF9psJWYMJQueLAklrO/yMlH.s0EhitR9hKEJsd0EI/ZuxKUky', '0811111', 'Al Azhar Lantai 6', '', 2, 1, 'L'),
(14, 'elektro', 'arif.supriyanto@if.uai.ac.id', '$2y$10$yCCFteqKtMaJGhjO7wOPkOzzV7TuGMtQ6rmVQvA.snmVJiK4fpLqi', '08654654654', 'Al Azhar Lantai 6', '', 2, 1, 'L'),
(15, 'Riri Safitri', 'riri@uai.ac.id', '$2y$10$.VljndNvLa0NyPCVrltkXeIR1wbIR/EvVlN.3DcFORmXsFkR93yxi', '081266222684', 'Jl. H Tholib no 41 RT 7/ RW 8, Kampung Pabuaran, Bojonggede, Kab. Bogor', '', 1, 1, 'P'),
(16, 'Amy Kamila', 'amy@gmail.com', '$2y$10$Hg.1QflyPGbWjWJ..pmpAu0c6B7qMMQ4JlV1LduZ3n1v6ySNQVGNq', '0811', 'Jakarta Selatan', '', 2, 1, 'P'),
(17, 'kudungcollectionvip@gmail.com', 'kudungcollectionvip@gmail.com', '$2y$10$yncodiQfZTXMXB50hmrCpeNa9NtIrQXalfVHX2XHir8b2d/8649nq', '087871978018', 'Bekasi', '', 2, 1, 'P'),
(18, 'citra0454@gmail.com', 'citra0454@gmail.com', '$2y$10$loi5BP22rcRX2iAleO06YeP1fdhwIV91DJkFcNdty/1r3cpNtC5ca', '087880712998', 'Bukit Rivaria Sektor 5 Blok I No 8 Depok', '', 2, 1, 'P'),
(19, 'indi@gmail.com', 'indi@gmail.com', '$2y$10$CocWeQ9V5lrj2F3m8qM1luWhJylHxJXIBGvnw5/qnKuepi4LmGJ4y', '0811', 'Jakarta Selatan', '', 2, 1, 'P'),
(20, 'Nadaa Julia Kurnain', 'celemek@gmail.com', '$2y$10$AP6o15bA.aQzh8Ofl787Ve9HORCqUGd0ChS8X5uKnj0DxLIV5/pae', '0811', 'Jakarta Selatan', '', 2, 1, 'P'),
(21, 'Niko', 'sahabatalter@gmail.com', '$2y$10$SAEBeC71ThJWY98tT8xKIutneaIl.psXqP7hkBjR3gEvaMqaJB0u.', '0811', 'Jakarta Selatan', '', 2, 1, 'L'),
(22, 'Syuhada', 'syuhada@gmail.com', '$2y$10$9JeFJO.N.6QkstX6CTMP4.nD4sv.INdicOjvTN1fcYy1yXmo4FoU.', '0812', 'Jaksel kebayoran', '', 2, 1, 'P'),
(23, 'dh.dody@gmail.com', 'dh.dody@gmail.com', '$2y$10$LuJK13J9zIMWfsy/qeNOJu20EEti4gQZ6euX3LjSfu.OdcgxwyMeO', '08129991453', 'Perumahan Nuansa Asri Cipadu. Blok C4 No.3, Pondok Aren, Tangerang Selatan', '', 2, 1, 'P'),
(24, 'symphony@gmail.com', 'symphony@gmail.com', '$2y$10$wpXEPnN/NZMgFAu01e1B/ecrKIFkwHA1FLufm4ZRq5ozgls1sTBba', '0812-9008-358', 'DKI Jakarta', '', 2, 1, 'P'),
(25, 'miladewkan@gmail.com', 'miladewkan@gmail.com', '$2y$10$h.CAe/hohaXG7qEtfPxptu5YJFdDk5k18pF9tCoA2k8Y6t8xRx/vu', '087882105891', 'Jl. Tanah Merah No. 45 RT 06 RW 04 Serua, Ciputat, Tangerang Selatan 15414', '', 2, 1, 'P'),
(26, 'febrianyn@gmail.com', 'febrianyn@gmail.com', '$2y$10$Ie7mjNTUgJBJYXoQxL1fE.u4zeln.ssTwzS0Zr6L7UxqZnppjX4iO', '0895413003142', 'Cipete Utara, Jakarta Selatan', '', 2, 1, 'P'),
(27, 'Gozali Affan', 'gozaliaffan@gmail.com', '$2y$10$MNUvRThMOT78xRMigP4jtOjrRTM8qSE6eRz1RV.TLRWT.kNhkth5q', '081249772323', 'Palmerah, Jakarta Barat', '', 1, 1, 'L'),
(28, 'Fahmi Adam', 'fahmiadamaugusta@gmail.com', '$2y$10$x74nUG.INlvIOwujsuKZjOkZGvbPy0P1kMjCIna2Q6OVUR26T4BmC', '085793594883', 'Jl. Sisingamangaraja, Universitas Al-Azhar Indonesia, Kebayoran Baru, Jakarta Selatan', '', 1, 1, 'L'),
(29, 'Mega', 'megapamegapa@gmail.com', '$2y$10$GtXV9sv6ytBsyg/mbklZjeXkCMj4WRSLvbQ4qYaqrROdhL6VvMWQe', '081315267966', 'Jl. Cempaka No. 19 RT 005/007 Kel. Jatiwaringin, Kec. Pondokgede, Kota Bekasi 17411', '', 2, 1, 'P'),
(30, 'arifsm', 'arifs.sm@gmail.com', '$2y$10$yc9lH9PVILnIMzk289vMv.mc3PTO1AP0.EqADBVV43r823A5bodBa', '0811221', 'Jaksel', '', 3, 1, 'L'),
(31, 'Alfian Mahardika', 'alfianmahardika.id@gmail.com', '$2y$10$BrEKfxN/DP7IZ527UlYGB.yyxBU1.UiJKWZA7mAKcUO5IYo2la0Ue', '081384703090', '', '', 3, 1, 'L'),
(32, 'zalieevan@gmail.com', 'zalieevan@gmail.com', '$2y$10$BewVN01fcTgK8eJhckbWFuJmGrJiJ8d51JBQEpmVHD1jCvgXMd9fO', '085746349680', 'Palmerah, Jakarta Barat', '', 2, 1, 'L'),
(33, 'Citra Ade P', 'citra@uai.ac.id', '$2y$10$dZsjq5KNKH7iKetJpjywe.Aacb9I1EmfOW1FpOkCA5NoGZRpAprOG', '087880712998', 'Depok', '', 1, 1, 'P'),
(34, 'Ratu Siti Khodijah', 'ratustk@gmail.com', '$2y$10$Bz1VqFOthiHing2gfaKZweMtLXb3F7opJhS3dDmqKlDOqE5JEW8Na', '0895337951357', 'Jaksel', '', 1, 1, 'P'),
(35, 'Ripka tresna sundari', 'ripkatresna05@gmail.com', '$2y$10$jLxYZp/q1vSvTgAYC1wb2up3DoeiAMEp3Iy2wiiU0ojyO/mFGoKS2', '081311535320', '', '', 3, 1, 'P'),
(36, 'afiyatun1994@gmail.com', 'afiyatun1994@gmail.com', '$2y$10$RPBR4gFXp/GjXRdXwP2AlODZgo45Sfq4ypfQzEoC3F/HGp4hlZLp6', '081219898727', 'Tambun Selatan Bekasi\r\nLebak Banten', '', 2, 1, 'P'),
(37, 'ripkatresna@gmail.com', 'ripkatresna@gmail.com', '$2y$10$QNLFxRhKyWRyZUegkZtdOu9OU5Y/CA.1w2ZTOic3Trt0JRPFkEP16', '081311535320', 'Jakarta dan Bekasi', '', 2, 1, 'P'),
(38, 'Navira Febriany', 'deeva.def@gmail.com', '$2y$10$rFDdEgHBjhAxC7OWrdDSlOSjapziokaYmWRLrOq/Mzp4HVX1Syxey', '082246005290', 'Residence 101/Kost', '', 2, 1, 'P'),
(39, 'lestariastri034@gmail.com', 'lestariastri034@gmail.com', '$2y$10$CnGLOMs4bq7gRzNi6c.cwO93g23AOyrNdb0kmTB4bZggvItp8Nkn6', '085872781384', 'Rumah Aku', '', 2, 1, 'P'),
(40, 'Aisyah Sabrina', 'asa.sabrina21@gmail.com', '$2y$10$yF3SbzV.j48I5NuIzozbje.Iif5oxMa3Si/ScczldGA/scBXe97AW', '081354512658', 'Jl Dr Saharjo Sawo 3 no 44', '', 2, 1, 'P'),
(41, 'Raihan Thamrin', 'thamrin905@gmail.com', '$2y$10$2W.kA.w6B0DFiI4kVP2cMOUWIPKhRjZSV.rmpzQuozw8UhsH2zo32', '089684353838', 'Jl. Mesjid At Taqwa No. 31 RT02/05, Jatiasih, Bekasi', '', 2, 1, 'L'),
(42, 'Agarista Amru', 'Agarista8@gmail.com', '$2y$10$wOcxu2PIZDpkOfrjRujAceWJftNdJdzNU9pvwEzc55vFCtXze/kRG', '082171359980', 'Jl. Tebet Timur Dalam IV J', '', 2, 1, 'P'),
(43, 'Okta Wijaya', 'oktawijaya01@gmail.com', '$2y$10$vX3MSUQfALBLzIDZlhuXU.Wfny2csmycU8P6RavQPHV2nYrJmcP0C', '085817939474', 'Tytyan Kencana Blok M2 no 6 Kota Bekasi', '', 2, 1, 'L'),
(44, 'Ayu Monica', 'ayumonicachen@gmail.com', '$2y$10$UrEqU7R6JadwZ/U2nRNzIu/1KnUtDsVj10RkKBgk0VMkfUH71YgYG', '085939976797', 'Jl Teluk Lada Sukapura, Jakarta Utara', '', 2, 1, 'P'),
(45, 'Fahmi Adam Augusta', 'fahmiandroid23@gmail.com', '$2y$10$AKoHtzUuhCcJGkCsqdCk7.fZtokp2pUwOU.iHowbn82gp3.BZPhYa', '085793594883', 'Jl. Swasembada Timur XVIII No.31 RT/RW :010/005 Kel. Kebon Bawang, Kec. Tanjung Priok, Jakarta Utara', '', 2, 1, 'L'),
(46, 'Nadia', 'nadia.hasanudin02@gmail.com', '$2y$10$6Xe8JzyWlxaxjtBzcyrjte5jvO3OBHH4tui9U9tySWWYkFjvz.2FK', '089697733983', 'l. Sangkur Blok E.31 RT.11/RW.05 kel. Pesanggrahan  kec. Pesanggrahan Jakarta Selatan', '', 2, 1, 'P'),
(47, 'dindabunga30@gmail.com', 'dindabunga30@gmail.com', '$2y$10$Qpd5pVmCp15/3sZJh.NRBeihsTKkNJGnKDPXXK1c63wujFBH.1j7y', '085714775905', 'Jalan Batutulis GG Amil 05/02 Batutulis, Kota Bogor', '', 2, 1, 'P'),
(48, 'Arif S', 'arifsupriyanto@uai.ac.id', '$2y$10$UYUH8ALYXVMtuZq5dKmFlu2P3WWBgO0u1UuEfvcH/ZgQQFbUSTq9G', '081284913517', 'Jalan Pertani I, No64, RT 006/003, Duren Tiga, Kec. Pancoran, Jakarta Selatan', '', 2, 1, 'L'),
(49, 'AYLI', 'aylileader@gmail.com', '$2y$10$sY/lUcNjx9JlY3mopA.k6e.PHHCm9VS0D4gebtmON8f39odafpBu.', '085817939474', 'Komplek Masjid Agung Al Azhar, Kebayoran Baru, Jakarta Selatan', '', 2, 1, 'L'),
(50, 'Alfian', 'tnyi.official@gmail.com', '$2y$10$OOmUAbokUBg1clGFsv/.7OjKAl6KDUkLZg8iXhmuEOmNQDYI23aIW', '081384703090', 'Office 8, SCBD, Senopati, Jakarta Selatan', '', 2, 1, 'L'),
(51, 'Ridho Bayyinah', 'Ridhabayyinah@gmail.com', '$2y$10$ueZgSuR3UKRzxIsaDwozce404VbPSKwkB0Mzm6Maysqi6GEpWx5uy', '081249772323', 'Bekasi, Jawa Barat', '', 2, 1, 'P'),
(52, 'Amalina D\'Production', 'amalina050796@gmail.com', '$2y$10$41BBClCTnaPyDqdFIBTjROxiACG4j5ozJPfENg0EUgKDdh2HScxU2', '089694168501', '', '', 3, 1, 'P'),
(53, 'A Jamal', 'ade.jamal@al-azhar.or.id', '$2y$10$Ywbq53MiruFCj1adfclj8Oc1WG7NRIJEBJk353bLqExaFiC03pH6O', '0818188863', 'Jl. Margasatwa Raya no.1A\r\nRt/Rw 05/07\r\nCilandak Timur,\r\nPasar Minggu', '', 3, 1, 'L'),
(54, 'Winangsari Pradani', 'winangsari@uai.ac.id', '$2y$10$MVJKwQX6GjWu8yGYsJBBIe9p6EoREVS22yaJTz0rCxCmR2rElQYkW', '081285508125', '', '', 3, 1, 'P'),
(55, 'Endang', 'endang_nizar@uai.ac.id', '$2y$10$023zJLvLs7JuejgSdOID/.DdphudQ33KCOY.4NjGhxK1e.Oj0TVTa', '082110117170', '', '', 3, 1, 'P'),
(56, 'ys', 'yshidayat@uai.ac.id', '$2y$10$Uv4hLvnDZ8c4nOea96fRBuNnlA8iyoUSHKQoGzF2.RRPyeGq3jz6O', '81211115130', '', '', 3, 1, 'L'),
(57, 'Ary Syahriar', 'syahriar@uai.ac.id', '$2y$10$1.rSLcX0g1z9m6W8xPOC2./yWUhVXT8lDZEmyAkF.Ub1j1k1vnAx6', '08158882844', 'Perumahan Pondok Benda Indah\r\nJl. Benda Raya Blok K1 no 22\r\nPondok Benda, Pamulang\r\nTangerang Selatan', '', 3, 1, 'L'),
(58, 'Niken Parwati', 'niken.parwati@gmail.com', '$2y$10$.6HC7LXbFF4WsylRr4ZGiuE2ZZIcoxhi72H.5Ne8v.CB/AMt9vkIa', '081333777876', '', '', 3, 1, 'P'),
(59, 'anisa.latifa97@gmail.com', 'anisa.latifa97@gmail.com', '$2y$10$c/.Yx.hLQl2Tde7kp6XqDO.sFZ.6yf7g6Lj/2H6f7Sie7CoZgp6ai', '081542713747', 'Jl. Bambu indah no.43 rt. 03/09 Kalisari pasar rebo Jakarta timur', '', 2, 1, 'P'),
(60, 'symphonykitchcate@gmail.com', 'symphonykitchcate@gmail.com', '$2y$10$/o0RKruoWIQYCvZsp8WioeIO8vWGkEQVKnqZNkFHOWFctPtvN4mfC', '081808088601', 'Jl. Jaha Gg.H.Rais Rt.004/Rw.001 No.02, Cilandak Timur, Jakarta Selatan, DKI Jakarta 12560', '', 2, 1, 'P'),
(61, 'Rahmad Muhardiono', 'rahmatmahabbah@gmail.com', '$2y$10$TaVhfXhozAZ5x43TLElA3ORav9ig20zIphr6ZDbkI5vTb0/4sqzvG', '087888330644', 'Jl. Belimbing 8 No. 126, Rt:006/06, Kel: Kranji, Ke: Bekasi Barat, 17135', '', 2, 1, 'L'),
(62, 'Ade Wirman syafei', 'adwirman@uai.ac.id', '$2y$10$Ga0J7/cOCQJ21ZDXehDYE.2Qf2.o4p9X.fU3td/ZOnLgTHhp1ldPu', '081316912141', '', '', 3, 1, 'L'),
(63, 'Rafi', 'rafi.annas@if.uai.ac.id', '$2y$10$ytivcb3O7.dSvUMDNlTK2uxr.NRX7rAKUPCZYfXyB5NaH08OJNBTi', '08872145327', 'Lab IF', '123123123', 1, 1, 'L'),
(64, 'Ernalia', 'ernalia@uai.ac.id', '$2y$10$MVxBOusAgCGw4w64KGNgAuJ5W6xjOYSdEhiCYfaMDDZY4qQN1derO', '0811983076', '', '', 3, 1, 'P'),
(65, 'liasakdiyah14@gmail.com', 'liasakdiyah14@gmail.com', '$2y$10$qntoOHt3AvBww6Y0iQmxLu3/mqHcUtYs/7SI8AKMdC0/tWoOApI1e', '089627864541', 'Jalan Nurul Ihsan Gang Muamalah I rt01/03 No.43 Cipedak, Jagakarsa, Jak-Sel', '', 2, 1, 'P'),
(66, 'Serly Rahmawati', 'serlyrahmawati7@gmail.com', '$2y$10$syDvF78rLarKLaVCP1yv2upu/3oH3VgGV3dsbTShZcJtyo80zD/BG', '0895331024206', 'Jl. Guru Mughni, Karet Semanggi, Setiabudi. Jakarta Selatan', '', 2, 1, 'P'),
(67, 'Diani Nurhafifa', 'nurhafifad@gmail.com', '$2y$10$a/6ywk9.dET3PbCniHDnfO8taS9jP9ohPlEoYMY4lkL8hsOZZ1AZa', '08983397101', 'Jl. Teladan II No. 21 Kp. Melayu barat, Kec. Teluknaga, Kab. Tangerang, Banten, Kode pos : 15510', '', 2, 1, 'P'),
(68, 'dinin5511@gmail.com', 'dinin5511@gmail.com', '$2y$10$h1SMkP1DfRJFG/4qvVRrve0R1YDlZ2pXlf/.YwZqsxKhCLA8WMQ1.', '089530256260', 'Perumahan Ciledug Indah 2 di Jl.Utama Ciledug Indah 2 Blok E46/1 Rt.002 Rw.05 Kel. Pedurenan Kec. Karang Tengah', '', 2, 1, 'P'),
(69, 'Mochamad Putra Perdana', 'mochamadp0@gmail.com', '$2y$10$JUY9YXrqxcVgX5zcrxgZNe.afqqipa8OU3pjriozD9egV9s48k24W', '089510534952', 'jl maumere no 183, mega cinere, depok, jawa barat', '', 2, 1, 'L'),
(70, 'riyad.alghifari@gmail.com', 'riyad.alghifari@gmail.com', '$2y$10$/6rajG/3NxnXZ6NyseSbSevkYpiHO0m.RvDwd8qkRCzcxvUFZmq1K', '081218300646', 'Jl. SDN Panunggangan RT. 007/RW. 004 Panunggangan Utara, Pinang, Kota Tangerang, Banten 15143', '', 2, 1, 'L'),
(71, 'Putrimf4@gmail.com', 'Putrimf4@gmail.com', '$2y$10$Ng19/biqlFd.xIOA2IK8SOKLOmE9.pFYYo1wszXk6vPISLw6Jbd7u', '089523439901', 'Jl. Letkol atang sanjaya desa pasir gaok RT1/1 Kecamatan Rancabungur Kabupaten Bogor 16310', '', 2, 1, 'P'),
(72, 'Agung lukito', 'agung.lukito80@gmail.com', '$2y$10$c5xVDHvpXlbbt4gFcZxHKOrPRr4TDe5D.mw89NWOwbAKjGb5B.OEO', '08129344420', '', '', 3, 1, 'L'),
(73, 'M Dendy Prakoso', 'dendy.ganefo@gmail.com', '$2y$10$zOyw9Jyo8NImiLIYvbenbekGrDJ7S0uwD5UPB4p.HR8Gvx8ooc1pu', '087874940415', 'jl.jaha rt.05/rw.01 no.46 Cilandak Timur. Pasar Minggu. Jakarta Selatan', '', 2, 1, 'L'),
(74, 'dindaaulia27@gmail.com', 'dindaaulia27@gmail.com', '$2y$10$ffvh6IM2RfgJqD5FhzTLluEG0mktaD6UgWlQx3oNBCgqRxOuoIIFm', '081511092763', 'Jl. H. Yakub Saidi No. 20 Rt/Rw 001/003, Rawabunga, Jatinegara,          Jakarta Timur', '', 2, 1, 'P'),
(75, 'Aprilia Tri Purwandari', 'apriliatripurwandari@gmail.com', '$2y$10$iDMxu7QgLo5HSekkMoE2Hu1v4/cuG8Hvy7VEpO.nGVx.XQfoRKtGu', '08568609394', 'Jalan Paninggilan Batas RT 003/11 No.13 Ciledug Tangerang 15153', '', 3, 1, 'P'),
(76, 'Sylviani', 'sylvianidahlan27@gmail.com', '$2y$10$Uvgc9Xy4FAAyctXVTcGOFuDtXXUuE3SFb0JarrYxnWRmYwdmjPN6m', '087748383028', '', '', 3, 1, 'P'),
(77, 'Achmad Suradi', 'achsur@yahoo.com', '$2y$10$vBxb8G.8y7jZg14xSSXAau85SKu/GLX3dp8gB.8VFutFDopAmupea', '0816737063', 'Komplek Alam Melati Nomor B2 Parakan Saat Antapani Bandung 40291', '', 2, 1, 'L'),
(78, 'aydidinamika@gmail.com', 'aydidinamika@gmail.com', '$2y$10$nxxNmJEGNUwvd94wBoJ1uu/rnekShDscAHeP/Gi5BA0RnMcvYhQb.', '0857181116493', 'JL. AL-HIDAYAH No.112, Rt 001 Rw 002  Pd. JAYA (RUMAH WARNA CREAM DEPAN KOST HIDAYAH), KOTA TANGERANG SELATAN, PONDOK AREN, BANT', '', 2, 1, 'P'),
(79, 'Kiki', 'kikirizkiaafrianti@ymail.com', '$2y$10$BstjxruqL.lzUGKWcxoRLe9iG9RJK.hFLEGzk9BJa2B.tjZX0sw6i', '085697236060', '', '', 3, 1, 'P'),
(80, 'Taufik Hidayah', 'taufikhdyh95@gmail.com', '$2y$10$nloH4sRf1/Opx.MlSJBXVuH0Y36m847jmUc/TzGs.kYHxKLU5TTbC', '081908370227', 'jl.menteng wadas utara rt.06 rw.11 no.1', '', 2, 1, 'L'),
(81, 'Hidayat', 'billdayat@gmail.com', '$2y$10$UYPWoQwnmbbzbDBH8014pueOiltxcHsYnKKpqCA4yJLVRQALOr73O', '085774445545', 'Jl. Hj. Mukri Kp. Rawa Lele Rt 005/06 Kel. Jombang Kec. Ciputat Tangerang Selatan', '', 2, 1, 'L'),
(82, 'Adinda Yasmin Mumtaz', 'Dinda.yasmin16@gmai.com', '$2y$10$dWX80IyyBi4vzM86VVdXBeLNStwFLsp8vh5zQT1xc107LNCTBWfI6', '089691574865', 'Tangerang selatan, pamulang permai blok A 25 no 1', '', 2, 1, 'P'),
(83, 'Ridho Oktavia', 'ridhochuusei429@gmail.com', '$2y$10$5TcS4D4s9LzM5UssBptqRuCknTqTCutiLw/dq2YkUmzlBOa1xhVD2', '081315580358', 'bedaro, muara bungo. Jambi', '', 2, 1, 'L'),
(84, 'ndadindaa00@gmail.com', 'ndadindaa00@gmail.com', '$2y$10$bxsc24HsJGlKj5FNJsddDOaeMvZhkNBTqQAWAHVsLoP7T6IM29.Mi', '082213084598', 'Jl bayangkara.kampung bulak rt02/rw17 no.37.Kel tugu utara kec.koja jakarta utara 14260, KOTA JAKARTA UTARA, KOJA, DKI JAKARTA,', '', 2, 1, 'P'),
(85, 'Dinda Putri Ayu', 'puputriayu00@gmail.com', '$2y$10$eZYVkp.oBJ8eiWGTh8FIpe8/gDUo54iwYBlFTNMI2aNHsIEYCxTH.', '082213084598', 'Jl bayangkara.kampung bulak rt02/rw17 no.37.Kel tugu utara kec.koja jakarta utara 14260, KOTA JAKARTA UTARA, KOJA, DKI JAKARTA, ', '', 2, 1, 'P'),
(86, 'Rif\'ah Zakiyah', 'rifazyah@gmail.com', '$2y$10$8o5WF4AEmd9taVGJ0idy5.83veKs1WmQTMFf0hRb7wE7.BX34wN8S', '085779762071', 'jl. wibawamukti 2 Kp. Cakung Rt 06/04 kel. Jatisari kec. Jatiasih kota Bekasi 17426', '', 2, 1, 'P'),
(87, 'farhana.food32@gmail.com', 'farhana.food32@gmail.com', '$2y$10$9eRqkaZRU3TkYgYiF1tqg.Zh40BBvBvyPDZh3tKvJYC69t.Yesk6O', '081387361917', 'Jl Kenanga 3 No 100 Depok Jaya Pancoran Mas Kota Depok', '', 2, 1, 'P'),
(88, 'Firman Alamsyah', 'firman.alamsyah@uai.ac.id', '$2y$10$VVfFw90VXMtZ.9UHSVpueO8xOvwZB3hnCkLmkq7yK/HT7FH9qdx2e', '081285906595', '', '', 3, 1, 'L'),
(89, 'Dinda Bunga', 'dindabunga79@gmail.com', '$2y$10$qEAHZQaQxIYElMNoCt/OmOQj2HHyidZb.mUyV6R8ZuTamjDzGWLqG', '085714775905', '', '', 3, 1, 'P'),
(90, 'Astharini', 'dwi.astharini@gmail.com', '$2y$10$qB3tZ0a26FMZkGiyGGdITuddg.nLLtOwCSqS9BLzijqS7E3BuvihW', '08119922007', 'Jl.Lobak IV no.4\r\nBlok A, Kebayoran Baru, Jakarta Selatan', '', 3, 1, 'P'),
(91, 'Lusi Anindia', 'lusianindia27@gmail.com', '$2y$10$ybIwRt5.JaweNWf9.cT5Iugg3YhOR.Hsh4VU7ucFtXmC4vR.Cq2um', '081310925969', '', '', 3, 1, 'P'),
(92, 'Arief Pambudi', 'pambudi@uai.ac.id', '$2y$10$TpUwlJ5jCCEo/ClhmDcEtOviKyj2GjBDckuPBY0qR8tgHIwdfvrly', '085695181737', '', '', 3, 1, 'L'),
(93, 'Fabiolaelzbeth99@gmail.com', 'Fabiolaelzbeth99@gmail.com', '$2y$10$tgZV7Sn5sRsD539k8.EBP.VgG4SBu2iSMu0DB2p0/NTRuRxvDuacK', '0895616040268', 'Jl. Bhakti Jaya II No.26 RT.10 RW.17 Harapan Jaya, Bekasi Utara. Kota Bekasi,17124', '', 2, 1, 'P'),
(94, 'Gayatri Atmadi', 'gayatriuai@gmail.com', '$2y$10$VEpmNIWiiQ5AK2wyqWOk1OiEpGvnWGqopshi77ZfxysiU0CvNW5r.', '0811998036', '', '', 3, 1, 'P'),
(95, 'Nafisah', 'nafisahekaputeri093013@gmail.com', '$2y$10$iRj0fFpKnG0XZRam8SauIuek42SYPvR8aj.E.Y1nX4Y/IC7xGfn3W', '085268420555', '', '', 3, 1, 'P'),
(96, 'lanandyku@gmail.com', 'lanandyku@gmail.com', '$2y$10$vMTtOBluyLG/uu/VANf9/.VFN0/t/a/UeZhVYgqpX2KcNh7BoN4xS', '081293431741', 'Gg.melati 1 no.107G Rt008/02 Pondok labu, Cilandak', '', 2, 1, 'P'),
(97, 'indikamalah18@gmail.com', 'indikamalah18@gmail.com', '$2y$10$hAJUBqvZ9qjaszD67DdVh.6oty0fBc6RPyR/QpZlLvTZu6SkRJT0q', '081221491311', 'Kp. Margabakti RT.01 RW.16 Desa Ganjarsabar Kecamatan Nagreg Kabupaten Bandung', '', 2, 1, 'P'),
(98, 'Siti Mutmainah', 'mutmainahs282@gmail.com', '$2y$10$wc/ZdJFdGw0cvsVrDYxC0.TDdLQwpB4WivVZmcyah2bvUKdK2uIna', '081219133632', 'Jalan Raya Ragunan No.185, Pasar Minggu, Jakarta Selatan', '', 2, 1, 'P'),
(99, 'Sandi Mega Saputra', 'Nightsandi@gmail.com', '$2y$10$xA0ES33CsfgHHnBzPiMaW.GRB9t76snbscSeObDAcC65AIX3BcimW', '081322397465', 'Jalan pancoran barat Vii d RT. 09 RW.01. Kel. Pancoran Kec. Pancoran Jakarta selatan 12780', '', 2, 1, 'L'),
(100, 'Ricky Een Sukamto', 'rickyeensukamto@gmail.com', '$2y$10$jOXEyjrb2MWWSp2qolO.we7OyXozOepPbYQxjoFiZwdMv7lXZ6kZi', '081297205295', 'Jl.Sulaiman no 40 Rt 3 Rw 4 Palmerah, jakarta barat', '', 2, 1, 'L'),
(101, 'Ricky Een Sukamto', 'rickyeensukamto@yahoo.co.id', '$2y$10$2igJTWoume7BvAw39fynP.WumSvnNM1D//yCTWNkA9NPSda2a80g.', '081297205295', 'Jl.Sulaiman no 40 Rt 3 Rw 4 Palmerah, jakarta barat', '', 2, 1, 'L'),
(102, 'Ricky Een Sukamto', 'yustifanitrinandari@yahoo.co.id', '$2y$10$kCCFmYp688uNk3TNvBzM5.HneC4o0NF/XPJWLZ/YfEgJpKcfYGLnS', '081297205295', 'Jl.Sulaiman no 40 Rt 3 Rw 4 Palmerah, jakarta barat', '', 2, 1, 'L'),
(103, 'Sukma Wijaya', 'sukmawijaya626@gmail.com', '$2y$10$W.iDOBcgECMMfJyp40JC4Ofe5MCazLHBuqzlw8N6dr6z0bvuofu1O', '08888922539', 'Kp.Kramat Rt17/06Kec KEDUNGWARINGIN desa KEDUNGWARINGIN kab. Bekasi', '', 2, 1, 'L'),
(104, 'Nita Noriko', 'Nitanoriko1707@gmail.com', '$2y$10$JngAIVYzseI6JNxCABgJfOTf/zShM0sWWGEcV.ecUpAGvrknMB2uW', '081294500417', 'Bekasi', '', 3, 1, 'P'),
(105, 'Nida', 'nhasanati@gmail.com', '$2y$10$tW/8ARMAhbLojdI/bFJ0depzVyNYasDhh4FermL256ArskxzrPECm', '08121835079', '', '', 3, 1, 'P'),
(106, 'Mita', 'syurmita@yahoo.com', '$2y$10$VMZGjHb3SMrW37M6y4eBOesr40/eszs7.5omJpXEuAteat58/hImW', '08128504552', '', '', 3, 1, 'P'),
(107, 'Putri Wulandari', '91putriwulandari@gmail.com', '$2y$10$xe9TTsoxFt3TERd6qz5PoOVER9lxHmMg3t500yXFRaWsFb6hb6ZKS', '081317760028', 'Ciledug', '', 1, 1, 'P'),
(108, 'Mei Fenia', 'meifenia@gmail.com', '$2y$10$9A5ExahxUt1Xbz.U6kABWOMRcwJ9kbe4ibv/WLejYa9C2HnCh.Xxe', '087787212912', 'Jalan Kemang Utara A, No: 24, Rt:01, Rw:07, Mampang Prapatan, Jaksel, 12720', '', 2, 1, 'P'),
(109, 'Rizqi Maulida', 'rizqi.maulida@gmail.com', '$2y$10$9V/NNLZ5D36wbvngkAKpTOOrp2sjYNzTKdGJ5CLjArajrXGkCFPTe', '08569072205', '', '', 3, 1, 'P'),
(110, 'Octa', 'octarina.ns@gmail.com', '$2y$10$AH1At7XOrulL/Y1MrKBy0OMbDORhS/M6/AAfJsUbXj0hTa.Ki6PNC', '082110111716', '', '', 3, 1, 'P'),
(111, 'Sandi Mega Saputra', 'Biznizan@gmail.com', '$2y$10$57ohBip3H8D4pf5VjzFWv.wxm375iSJek1z2E.UAKxKUoUIEUoaqK', '081322397465', 'Taman Pegangsaan Indah Blok G1 no 3, pegangsaan dua,kelapa gading, jakarta utara DKI Jakarta  Kota: Jakarta Utara kode pos: 1425', '', 2, 1, 'L'),
(112, 'Endah', 'endahsofiana@gmail.com', '$2y$10$rCRByDFt.wHO0nowyG.uMusHCjOhla5NmDEdurQE12PbN1INJqysy', '08123000975', '', '', 3, 0, 'P'),
(113, 'Ririn Wahyu Chotimah', 'wahyuririn23@gmail.com', '$2y$10$pMBcrQorqnOlb2fIBbM7.eWDC2M7eIAGjED.RiaMxr9gunAXOjTT2', '085363854767', '', '', 3, 0, 'P'),
(114, 'Ririn Wahyu Ch', 'pgpauduai2019@gmail.com', '$2y$10$vthBqL4PuSNKvRV5MN1sGOJNOv8wVLx9YkiF9L.YdoBJ7Bp55mRni', '6285363854767', '', '', 3, 0, 'P'),
(115, 'Nuke Amalia L', 'Nukeamalia.key@gmail.com', '$2y$10$4PFoCBZjYrDr5tdhuYVIGe3Vo2qkREovmivq8YN1SLc2bc50qCtS2', '087874940415', 'jl.jaha rt.05/rw.01 no.46 Cilandak Timur. Pasar Minggu. Jakarta Selatan', '', 2, 1, 'P'),
(116, 'Raihan Ramdan', 'ramdan.42@gmail.com', '$2y$10$Q.Bls9PGvWqj8mrJCpYkI.tapcOIGLjfpaeDtR1q6uRiX8NkKWKwK', '081212215404', 'jl mokh kahfi 2 008/008 srengseng sawah jagakarsa jakarta selatam', '', 2, 1, 'L'),
(117, 'Raihan Ramdan', 'raihanramdan.42@gmail.com', '$2y$10$I/qs3RqUVD6Pv2XgCsLc.u4ypmMoNDhsc0ZhVLMfMgxKMLIwFrQXC', '081212215404', 'Jl. Mokh Kahfi 2, RT/RW: 008/008 Srengseng Sawah, Jagakarsa, Jakarta Selatan', '', 2, 1, 'L'),
(118, 'Lia Nuryati', 'lianuryati040288@gmail.com', '$2y$10$jUYRmh3OKRGkZgayXXGMUOZOtG7RuO/Mgp25lOiet109MGkCFcO.u', '081310311506', '', '', 3, 0, 'P'),
(119, 'Renny Ocha', 'renny_wibowo@hotmail.com', '$2y$10$Law./iuoXSx1rbm4Im79BOJ8Kr2CwF81aRlXuRT.oNDEc4cKaxeZm', '081297411998', '', '', 3, 0, 'P'),
(120, 'Siti Fatima', 'justsfz9@gmail.com', '$2y$10$ZRUYjSb/3FWwbNs2zDN75uA6fNwjThIxIZlIgzViNS58dZ3hlAv/6', '0895344023460', '', '', 3, 0, 'P'),
(121, 'hafizha.nadhira@gmail.com', 'hafizha.nadhira@gmail.com', '$2y$10$6TNg3JeqK4OcfgNrkZxLG.tsNxGzcRdsDtf7p34g7XKUPIfmLgr52', '081293479055', 'Jl. Cendrawasih Raya No. 62 RT 011 RW 006 Pesanggrahan, Jakarta Selatan', '', 2, 1, 'P'),
(122, 'Melati Nur Affiyanti', 'melatinuraffiyanti@gmail.com', '$2y$10$6fk0YkktFxt7wXAyCHUlC.c31Xly94D5Rp5rsyg6UP8HvvIfj4Dkq', '087871044433', 'Jalan Pepaya 1 no.6 RT03/RW05, Kp. Utan, Ciputat Tmur', '', 2, 1, 'P'),
(123, 'Andri Hadiansyah', 'andri_hadiansyah@uai.ac.id', '$2y$10$tldf48I5.LDPAm10VqvFVu9anwiiXu4XVj3cK3z0XN1.zz..XYqzi', '081387341642', '', '', 3, 0, 'L'),
(124, 'Putri', 'poeyapoe@gmail.com', '$2y$10$kSGyAzrpiWKsmczOhVL.VeqRrVgWSiCNiNWs6X/K3Tc0DW2coPVX6', '081317760028', '', '', 3, 0, 'P'),
(125, 'Rizka', 'rizkaputri85@gmail.com', '$2y$10$TQXhwUy7bofM4UXg8FZRL.9/Tit3d58ExADPw/pzSnpYJj.ih1c1.', '081332467144', '', '', 3, 0, 'P'),
(126, 'Renny Bathar', 'Rennybathar@gmail.com', '$2y$10$WDyp0Ax.ksiePzJbClPJ2.UcTjuNN5LEWT3SNUM0slK5vcR4SETny', '085282418935', 'Jati Kramat 2 Gang Mangga 3 No.12 Rt 03 Rw.11', '', 2, 1, 'P'),
(127, 'Dimitrianda', 'Dimitrianda07@gmail.com', '$2y$10$Md2fiktOVS0rxCgxPxeSEuYNo8dVld4EWGMzD9bjZljI..Riw/jjO', '081388113194', 'Grand galaxy, pondok timur mas, jalan jingga mas 2, blok f4, nomor 19, rt 05, rw 13,  kelurahan jakasetia, kecamatan bekasi sela', '', 2, 1, 'L'),
(128, 'Ono Rahayu Hadi', 'onorahayu80@gmail.com', '$2y$10$VqKXakVfNI4Y.yFtvwn9duM0D/DK8Np8T7TzVgT.ce9hK6Fnjzkw6', '089654168810', 'Jln.Cipinang Lontar No.50', '', 2, 1, 'L'),
(129, 'Yuliani Intan Nurmala', 'nirmalaintan06@gmail.com', '$2y$10$To55jlmXntVrRgpllJTieuwKg/XttdPAVZEhqf2EzYEe.vaI/cpja', '087881849716', 'Jl. Pesantren No.46 Komplek Green Bintaro Indah blok F No.2 Jurangmangu Timur, Pondok Aren, Tangerang Selatan 15222', '', 2, 1, 'P'),
(130, 'Hidayat', 'billdayat@yahoo.com', '$2y$10$8LatBljYr7ECeOe2.9L63uKpIgdUaswEX31UFDh6NeuwdLH5pFUwq', '085774445545', 'Jl. Hj. Mukri Kp. Rawa Lele Rt 005/06 Kel. Jombang Kec. Ciputat Tangerang Selatan', '', 2, 1, 'L'),
(131, 'taufikhiidayah17@gmail.com', 'taufikhiidayah17@gmail.com', '$2y$10$HcS8wJOXe4ZkaJeddDJKouO4HnBbC0wnpbqKFfVaDyr3B1C.Ixv0y', '081908370227', 'jl.menteng wadas utara rt.06 rw.11 no.1', '', 2, 1, 'L'),
(132, 'Nanda', 'nandasetter73@gmail.com', '$2y$10$JAzCjOJEb3.HnaOpN8haGubF9f8rYZzJyYU8RuU6AhrrbThpWiRKa', '088808039529', 'Gg. Langgar Ujung V, RT.03/01, Larangan Utara, Larangan, Ciledug, Tangerang', '', 3, 0, 'L'),
(133, 'Nita Noriko', 'Nita_noriko@uai.ac.id', '$2y$10$NVl5qcm4OQDYsDsZDdL2We2y/5NLVxDobYFuvMIhHXHGqUgHj3mtO', '081294500417', '', '', 3, 0, 'P'),
(134, 'lammimapparel@gmail.com', 'lammimapparel@gmail.com', '$2y$10$kfw4/saQU6NftGVI08ua4OHL4DmxscC.9pqsj8hY996OKwfkc784O', '088808039529', 'Gg. Langgar Ujung V, Rt.03/01, Larangan Utara, Larangan, Ciledug, Tangerang', '', 2, 1, 'L'),
(135, 'M. Noviandy', 'muhammadnviandy97@gmail.com', '$2y$10$aX.4A733sRx5BbDyg7eAreACJNThv6/xyLoBjUcd9hW8nCfCeWbki', '081289038629', 'Jl. Taman Matraman Timur No. 13B Jakarta Pusat', '', 2, 1, 'L'),
(136, 'Ratu Siti Khodijah', 'ratusk2997@gmail.com', '$2y$10$Wg1umZTFboV3lKL.WMGrEeZg2E0FJoXsCrTzlZDtf1uWeqHeWp9Q6', '0895337951357', 'Perum Taman Balaraja Blok E6 No 03 RT 04 RW 07 Desa Parahu, Kec. Sukamulya, Kab. Tangerang, Banten', '', 2, 1, 'P'),
(137, 'MUHAMMAD CHAIRUL HAKIM', 'chairul.hakim@yahoo.com', '$2y$10$prXVH5apVfKEdQpxCKNntu1.162SAQrE0KrJ7cCt5qcdJeA60BzAO', '081280807436', '', '', 3, 0, 'L'),
(138, 'Gifarani Azkia', 'gifarani.raraa@gmail.com', '$2y$10$pT0Xq2d8XFcbqlDzft9pu.lAVk105eGlYbCol3dL87kUUCMUkkhp6', '081284060094', 'Jalan Malaka Jaya 3, Cluster Deniza no 33, RT 04/011 Kel. Rorotan, Kec Cilincing, Jakarta Utara', '', 2, 1, 'P'),
(139, 'Maryam Jameelah', 'maryam.jameelah@uai.ac.id', '$2y$10$gk8kRm/BYNHAujqrdm6QJ.8BiFvAcW9klCedCZCL5LAE3qlq/Qfp6', '081384800749', '', '', 3, 0, 'P'),
(140, 'Devi Utami Agustini', 'devi.utamia@gmail.com', '$2y$10$V4knfVji1uOuL/NImdnROO2VtWEz7CtDK0miM1UipJsjMeCLcUZOW', '085210342281', '', '', 3, 0, 'P'),
(141, 'rachmimeutia@yahoo.com', 'rachmimeutia@yahoo.com', '$2y$10$p/FXuCuM1Cd7DB5iwJRxXua6J54Eyl0S.Fio3uRylIkicfzlA6AHC', '081380605785', 'Perumahan Nuansa Asri Cipadu Blok C4 No.3, Pondok Aren, Tangerang Selatan', '', 2, 1, 'P'),
(142, 'lilia ike widyastuti', 'liliaike_widyastuti@yahoo.com', '$2y$10$HtPPBtiKQ2eTkZVVyPNZDem.qXk1fTKUag4m019IX7SzUNQNm.Liq', '081219981954', '', '', 3, 0, 'P'),
(143, 'fikar', 'fikar@gmail.com', '$2y$10$Xkm9Pt//70TyvUrrKCyg4OzOC5NXn1RHPnzgmv2M/phnYHE2Q4oqK', '08798465454', '', '', 3, 0, 'L'),
(144, 'Makmudin', 'makmudin@if.uai.ac.id', '$2y$10$40kD10B6BsbpI6rzcCD6XObt6StC5I4LZi7ZE/0IjoVvdkMR3LWwq', '089672231770', 'Jl. Pondokasem No.78 Blok Impres Tiga Kel. Tulungagung, Kec. Kertasemaya, Kab Indramayu', '', 3, 1, 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Super Admin'),
(2, 'Admin Toko'),
(3, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin Toko'),
(3, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'superadmin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 1, 'List Toko', 'superadmin/list_toko', 'fas fa-fw fa-store-alt', 1),
(3, 1, 'List User', 'superadmin/list_user', 'fas fa-fw fa-users', 1),
(4, 1, 'List Order', 'superadmin/list_order', 'fas fa-fw fa-shopping-cart', 1),
(5, 1, 'History Order', 'superadmin/history_order', 'fas fa-fw fa-history', 1),
(6, 2, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(7, 2, 'My Order', 'admin/my_order', 'fas fa-fw fa-box-open', 1),
(8, 2, 'History Order', 'admin/history_my_order', 'fas fa-fw fa-history', 1),
(11, 1, 'List Kategori', 'superadmin/list_kategori', 'fas fa-fw fa-cart-plus', 1),
(12, 1, 'List Super Admin', 'superadmin/list_superadmin', 'fas fa-fw fa-user-tie', 1),
(13, 2, 'My Toko', 'admin/my_toko', 'fas fa-fw fa-store', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date`) VALUES
(1, 'arifs.sm@gmail.com', 'K91LOMsEeup5HgXgWelBj3/ktxD14k27pwEC5HfZXXM=', 1588633188),
(2, 'pgpauduai2019@gmail.com', 'vvg5S9QTZOeg95I7maOOpFYjld10w/4nYHJldxfTUCM=', 1588653499),
(3, 'endang_nizar@uai.ac.id', '4zg+k9urZvppvFXyZ2rqU9XD9zP8xCv94boSIZ/ToX0=', 1588738498);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `front_produk`
--
ALTER TABLE `front_produk`
  ADD PRIMARY KEY (`id_front_produk`);

--
-- Indeks untuk tabel `isi_keranjang`
--
ALTER TABLE `isi_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `isi_navigasi`
--
ALTER TABLE `isi_navigasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_global`
--
ALTER TABLE `kategori_global`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `navigasi`
--
ALTER TABLE `navigasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_barang`
--
ALTER TABLE `status_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_bayar`
--
ALTER TABLE `status_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `active`
--
ALTER TABLE `active`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `front_produk`
--
ALTER TABLE `front_produk`
  MODIFY `id_front_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `isi_keranjang`
--
ALTER TABLE `isi_keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `isi_navigasi`
--
ALTER TABLE `isi_navigasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `kategori_global`
--
ALTER TABLE `kategori_global`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `navigasi`
--
ALTER TABLE `navigasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status_barang`
--
ALTER TABLE `status_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status_bayar`
--
ALTER TABLE `status_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
