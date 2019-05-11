-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mei 2019 pada 01.59
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurir_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `resi` varchar(12) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `status_barang` varchar(50) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `alamat_penerima` varchar(200) NOT NULL,
  `nohp_penerima` varchar(15) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `nohp_pengirim` varchar(15) NOT NULL,
  `nama_kurir` varchar(100) NOT NULL,
  `nohp_kurir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`resi`, `nama_barang`, `status_barang`, `nama_penerima`, `alamat_penerima`, `nohp_penerima`, `nama_pengirim`, `nohp_pengirim`, `nama_kurir`, `nohp_kurir`) VALUES
('12345', 'Tas Ransel', 'Delivery Courier', 'Budhiluhoer', 'Jl Cakradireja No.33 C Jatirasa tengah Kel.Karangpawitan Kec.Karawang Barat 41315', '081319893497', 'Diki', '08123456789', 'Herri', '08987654321'),
('54321', 'Kemeja Batik', 'warehouse karawang', 'Sri', 'Gerlong Girang Bandung', '08123456789', 'Budhi', '081319893497', 'Azmi', '08123454321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$SYS2sUG7iuLsYvUCdDjDb.TnzKJ1m7X/3MP9SbXuLEYjhPE3C0DKG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`resi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
