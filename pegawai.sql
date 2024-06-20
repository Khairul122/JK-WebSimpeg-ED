-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 04:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `hadir` int(100) NOT NULL,
  `izin` int(100) NOT NULL,
  `tidak_hadir` int(100) NOT NULL,
  `bulan` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `id_pegawai`, `hadir`, `izin`, `tidak_hadir`, `bulan`, `tanggal`) VALUES
(13, 10, 20, 0, 0, 1, '2020-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `level`, `log`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2018-03-30 02:51:21'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 'user', '2018-04-02 18:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `tunjangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `golongan`, `tunjangan`) VALUES
(5, 'Kepala Stasiun', 'Satu', 2500000),
(6, 'PMG Penyelia', 'Satu', 2800000),
(7, 'PMG Pertama', 'Satu', 5700000),
(8, 'PMG Muda', 'Satu', 5200000),
(9, 'Pelaksana Umum', 'Satu', 5500000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(110) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `status_kep` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_jabatan`, `nip`, `nama`, `jk`, `foto`, `agama`, `pendidikan`, `status_kep`, `alamat`, `username`, `password`) VALUES
(9, 10, '200108312018110801002', 'Adlu Bagus Irawan', 'L', 'foto_1588345007.jpg', 'islam', 'SMK RPL', 'Tetap', 'Jl Gatot Subroto VI F, Denpasar, Bali', 'adlubagusi', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 15, '200012052018110801001', 'Hatsune Miku', 'P', 'foto_1589668962.jpg', 'lainnya', 'SMK RPL', 'Tetap', 'Tokyo, Japan', 'miku2255', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 17, '200007152018110801003', 'Kizuna Ai', 'P', 'foto_1589669245.jpg', 'lainnya', 'SMK Multimedia', 'Magang', 'Sapporo, Japan', 'kizunaai_', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 5, '196804101991021001', 'Surya, S.Kom', 'L', '', 'islam', 'S1', 'Aktif', 'Lhoksuemawe', 'surya', 'aff8fbcbf1363cd7edc85a1e11391173'),
(13, 6, '197507021999031001', 'Saifundi', 'L', '', 'islam', 'S1', 'Aktif', 'Lhoksuemawe', 'saifundi', 'ff236c5daa01f9a1ce6ad6c2f07793fc'),
(14, 7, '19950520201410011001', 'Muhammad Imam Muatho, S.Tr', 'L', '', 'islam', 'D4', 'Aktif', 'Lhoksuemawe', 'Imam ', '1dea4e854db2aeae5b02bbdb82a8e4a1'),
(15, 8, '199509182014111001', 'Arijuddin,S.Tr,M.P', 'L', '', 'islam', 'S2', 'Aktif', 'Lhoksuemawe', 'arijuddin', '8f9a2201d8acc47967528ec9f95fd570'),
(16, 8, '198805122009111001', 'Kharendra Muiz, S.Si', 'L', '', 'islam', 'S1', 'Aktif', 'Lhoksuemawe', 'kharendra ', 'e04a8876565726b2f9b2b097b08265e1'),
(17, 6, '198607192008121003', 'Muhammad Khamil Firdaus', 'L', '', 'islam', 'SMA', 'Aktif', 'Lhoksuemawe', 'khamil ', 'af59000a5bdda82087b4e655e8239475'),
(18, 9, '198606052012121003', 'Hasan Basri', 'L', '', 'islam', 'SMA', 'Aktif', 'Lhoksuemawe', 'hasan', 'fc3f318fba8b3c1502bece62a27712df'),
(19, 7, '199711212021061001', 'Marselinnus Muaya', 'L', '', 'islam', 'SMA', 'Aktif', 'Lhoksuemawe', 'marselinnus ', 'f9dfc1258a07b400907b585649c22a27'),
(20, 7, '199502252013121001', 'Febriyanto Simanjuntak, S.Tr, M.SC', 'L', '', 'islam', 'S2', 'Aktif', 'Lhoksuemawe', 'febriyanto ', 'b1dd8c9c439ddd265875c94e94410686'),
(21, 7, '199605012016011001', 'Ricky Nadiansyah, S.Tr, Met', 'L', '', 'islam', 'S1', 'Aktif', 'Lhoksuemawe', 'ricky ', '65ef5b187ccc81ec20d5aacca781f76e');

-- --------------------------------------------------------

--
-- Table structure for table `tpp`
--

CREATE TABLE `tpp` (
  `id_tpp` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `jumlah_tpp` varchar(100) NOT NULL,
  `jumlah_potongan` varchar(100) NOT NULL,
  `bulan_t` int(100) NOT NULL,
  `tahun` int(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tpp`
--

INSERT INTO `tpp` (`id_tpp`, `id_pegawai`, `jumlah_tpp`, `jumlah_potongan`, `bulan_t`, `tahun`, `tgl`) VALUES
(7, 8, '300000', '0%', 1, 2018, '2018-04-02'),
(9, 9, '12750000', '0%', 5, 2020, '2020-05-01'),
(10, 10, '8749970', '30%', 1, 2020, '2020-05-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tpp`
--
ALTER TABLE `tpp`
  ADD PRIMARY KEY (`id_tpp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tpp`
--
ALTER TABLE `tpp`
  MODIFY `id_tpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
