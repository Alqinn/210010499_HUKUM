-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 03:35 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010499_hukum`
--

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi dan layanan hukum`
--

CREATE TABLE `konsultasi dan layanan hukum` (
  `ID_Layanan` int(11) NOT NULL,
  `ID_Jadwal` int(11) NOT NULL,
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `NIP_konsultan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laporan kinerja`
--

CREATE TABLE `laporan kinerja` (
  `ID_laporan_kinerja` int(11) NOT NULL,
  `ID_laporan_aktivitas` int(11) NOT NULL,
  `ID_layanan` int(11) NOT NULL,
  `ID_jadwal` int(11) NOT NULL,
  `ID_pelanggan` int(11) NOT NULL,
  `NIP_admin` int(11) NOT NULL,
  `NIP_konsultan` int(11) NOT NULL,
  `NIP_analisis` int(11) NOT NULL,
  `NIP_pemimpin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID_Pembayaran` int(11) NOT NULL,
  `ID_Layanan` int(11) NOT NULL,
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Report_Pembayaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
