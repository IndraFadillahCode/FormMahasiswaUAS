-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 05:27 PM
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
-- Database: `penerimaan_maba`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_mahasiswa`
--

CREATE TABLE `calon_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calon_mahasiswa`
--

INSERT INTO `calon_mahasiswa` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Ayunda Risu', 'Jl. Holo Area 15', '089230127431'),
(2, 'Moona Hoshinova', 'Jl. Holo Area 15', '081279237023'),
(3, 'Airani Iofifteen', 'Jl. Holo Area 15', '082671292530'),
(4, 'arisu', 'lah', '08926201292'),
(5, 'RIsu', 'Jl. ', '01209'),
(6, 'Moon', 'Jl. Gang', '019209727'),
(7, 'Indra Fadillah', 'Jalan soekarno hatta no 75', '085921909248'),
(8, '', '', ''),
(9, 'Indra fadillah', 'jalan soekarno hatta no 75', '085921909248'),
(10, 'indra fadillah', 'jalan soekarno hatta no75', '081127227');

-- --------------------------------------------------------

--
-- Table structure for table `calon_mahasiswa_prodi`
--

CREATE TABLE `calon_mahasiswa_prodi` (
  `id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `nama_prodi` varchar(255) DEFAULT NULL,
  `kode_prodi` varchar(50) DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `nama_orang_tua` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_seleksi`
--

CREATE TABLE `hasil_seleksi` (
  `id` int(11) NOT NULL,
  `id_pendaftaran` int(11) DEFAULT NULL,
  `status` enum('Diterima','Ditolak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ujian`
--

CREATE TABLE `nilai_ujian` (
  `id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `matematika` decimal(5,2) NOT NULL,
  `bahasa_indonesia` decimal(5,2) NOT NULL,
  `bahasa_inggris` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai_ujian`
--

INSERT INTO `nilai_ujian` (`id`, `nama_mahasiswa`, `matematika`, `bahasa_indonesia`, `bahasa_inggris`) VALUES
(1, 'indra fadillah', 100.00, 80.00, 80.00),
(2, 'iNDRA FADILLAH', 70.00, 80.00, 90.00),
(3, 'iNDRA FADILLAH', 70.00, 90.00, 90.00),
(4, 'iNDRA FADILLAH', 70.00, 80.00, 90.00),
(1202214186, 'Indra fadillah', 90.00, 90.00, 90.00);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `id_calon` int(11) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `tgl_ddaftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama`, `kode`) VALUES
(1, 'Teknik Ingfo', 'A11'),
(2, 'Teknik Kimi', 'A20'),
(3, 'Teknik Ntah', 'A92'),
(4, 'Teknik informatika', 'A11'),
(5, 'Teknik informatika', 'A11'),
(6, 'teknik informatika', 'A11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon_mahasiswa_prodi`
--
ALTER TABLE `calon_mahasiswa_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- Indexes for table `nilai_ujian`
--
ALTER TABLE `nilai_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_calon` (`id_calon`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calon_mahasiswa_prodi`
--
ALTER TABLE `calon_mahasiswa_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_ujian`
--
ALTER TABLE `nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202214187;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  ADD CONSTRAINT `hasil_seleksi_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`);

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`id_calon`) REFERENCES `calon_mahasiswa` (`id`),
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
