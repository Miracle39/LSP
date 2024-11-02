-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 09:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `bulan_gaji` varchar(20) DEFAULT NULL,
  `tahun_gaji` year(4) DEFAULT NULL,
  `total_gaji` decimal(10,2) DEFAULT NULL,
  `potongan` decimal(10,2) DEFAULT NULL,
  `tunjangan` decimal(10,2) DEFAULT NULL,
  `tanggal_transfer` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `id_pegawai`, `bulan_gaji`, `tahun_gaji`, `total_gaji`, `potongan`, `tunjangan`, `tanggal_transfer`) VALUES
(1, 1, 'Januari', '2024', 5000000.00, 500000.00, 200000.00, '2024-01-30'),
(2, 2, 'Januari', '2024', 7000000.00, 700000.00, 300000.00, '2024-01-30'),
(3, 3, 'Januari', '2024', 4800000.00, 400000.00, 150000.00, '2024-01-30'),
(4, 4, 'Januari', '2024', 3500000.00, 300000.00, 100000.00, '2024-01-30'),
(6, 1, 'november', '2024', 5000000.00, 250000.00, 2000000.00, '2024-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `no_telepon`, `jabatan`, `tanggal_masuk`) VALUES
(1, 'Andi Susanto', 'Jl. Merdeka 12', '081234567890', 'Guru', '2020-01-15'),
(2, 'Budi Setiawan', 'Jl. Pelajar 23', '081234567891', 'Kepala Sekolah', '2018-03-10'),
(3, 'Citra Wijaya', 'Jl. Pahlawan 45', '081234567892', 'Guru', '2021-05-22'),
(4, 'Dina Lestari', 'Jl. Melati 11', '081234567893', 'Administrasi', '2019-08-01'),
(6, 'luqman ahmad', 'cimahi', '9023840238', 'ao', '2024-06-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
