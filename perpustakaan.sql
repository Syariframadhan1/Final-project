-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 11:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun` char(4) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun`, `foto`, `qty`, `keluar`, `created_at`, `updated_at`) VALUES
('BK01', 'Algoritma & Pemograman', 'Rinaldi Munir', 'PT.  Angkasa Putra', '2016', '1641368886_b526f19b9ad542f94a75.jfif', 0, 0, '2022-01-01 23:21:51', '2022-01-05 01:48:06'),
('BK02', 'Pemograman Web', 'Syarif Ramadhan', 'PT. Cahaya Buku', '2011', '1641100966_3cc2b5da02d4f32b40b0.jpg', 0, 0, '2022-01-01 23:22:46', '2022-01-01 23:22:46'),
('BK03', 'PHP & MYSQL', 'Achamad Solichin', 'PT. Berkarya', '2013', '1641101123_b2b8b1ab6eb1173ccfbe.jpg', 0, 0, '2022-01-01 23:25:23', '2022-01-01 23:25:23'),
('BK04', 'Marmut Merah Jambu', 'Raditya Dika', 'PT. Berkarya', '2014', '1641101306_e12c1a5e82a539de6999.jpg', 0, 0, '2022-01-01 23:28:26', '2022-01-01 23:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
('C2055201001', 'Teguh', 'Teknik Informatika', 'pria', '081233556610', 'teguh@gmail.com', 'Jl. Seth adji', '1640851296_adab47a23df63a483703.png', '2021-12-30 02:01:36', '2021-12-30 02:01:36'),
('C2055201002', 'M.Dimas Wahyu Prayoga', 'Teknik Informatika', 'pria', '081233556690', 'prayoga@gmail.com', 'Jl. Seth adji', '1641102565_bad27f80516bbf53cc2a.jpg', '2022-01-01 23:49:25', '2022-01-01 23:49:25'),
('C2055201003', 'Abdul Majid', 'Teknik Informatika', 'pria', '081233556650', 'majid@gmail.com', 'Jl. Seth adji', '1641102637_718245383fe6d2d1c91a.jpg', '2022-01-01 23:50:37', '2022-01-01 23:50:37'),
('C2055201023', 'Syarif ramadhan', 'Teknik Informatika', 'pria', '085612006679', 'Syarif@gmail.com', 'Jl. Chirstopel Mihing', '1638195961_a1ec7bd189ad1daf093b.jpg', '2021-11-29 08:26:01', '2021-11-29 08:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(3, '2021-10-19-000335', 'App\\Database\\Migrations\\Users', 'default', 'App', 1638162234, 1),
(4, '2021-11-24-052403', 'App\\Database\\Migrations\\Mahasiswa', 'default', 'App', 1638162235, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(11) NOT NULL,
  `nama_peminjaman` varchar(50) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kembali` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_peminjaman`, `nama_buku`, `tanggal`, `kembali`, `created_at`, `updated_at`) VALUES
('BK01', 'Syarif Ramadhan', 'Algoritma & Pemograman ', '2022-01-02', '2022-01-03', '2022-01-02 00:58:07', '2022-01-02 00:58:07'),
('BK02', 'M.Dimas Wahyu Prayoga', 'Pemograman WEB', '2022-01-03', '2022-01-13', '2022-01-04 20:08:00', '2022-01-04 20:08:00'),
('BK03', 'Dory SIlvan', 'PHP & MYSQL', '2022-01-02', '2022-01-10', '2022-01-04 20:09:10', '2022-01-04 20:09:10'),
('BK04', 'Vebri  Wartano', 'Marmut Merah Jambu', '2022-01-29', '2022-02-01', '2022-01-04 20:10:17', '2022-01-04 20:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `created_at`, `updated_at`) VALUES
('Syarif ', '$2y$10$SMDjfbODsv866lLepc2/O.LLsoaSTY8m8zC42Jpy2CCOxSCqdkyte', 'Syarif Ramadhan', '2021-11-28 23:23:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
