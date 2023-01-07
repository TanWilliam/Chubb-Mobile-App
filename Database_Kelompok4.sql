-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2021 at 06:58 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18014483_kel4mobapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `asuransikebakaran`
--

CREATE TABLE `asuransikebakaran` (
  `IDAsuransiKebakaran` int(11) NOT NULL,
  `NamaLengkapAK` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoHPAK` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmailAK` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LokasiPropertiAK` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `HargaPropertiAK` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `StatusPembayaran` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StatusClaim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asuransikebakaran`
--

INSERT INTO `asuransikebakaran` (`IDAsuransiKebakaran`, `NamaLengkapAK`, `NoHPAK`, `EmailAK`, `LokasiPropertiAK`, `HargaPropertiAK`, `StatusPembayaran`, `StatusClaim`) VALUES
(9000, 'Ryan Gunawan', '08512346123', 'ryangunawan@gmail.com', 'Citra 2 Ext', '1.000.000', 'Sudah Dibayar', 'Claim Berhasil'),
(9001, 'Kevin Gabriel', '0812319212', 'kevingabriel@gmail.com', 'Pontianak', '1.200.000', 'Belum Dibayar', 'Sedang Diproses'),
(9003, 'florentio', '0819271231', 'florentino@gmail.com', 'pontianak', '1.000.000.000', NULL, NULL),
(9004, 'test test', '08123912312', 'testtest@gmail.com', 'jakarta', '1.000.000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asuransikecelakaan`
--

CREATE TABLE `asuransikecelakaan` (
  `IDAsuransiKecelakaan` int(11) NOT NULL,
  `NamaLengkapKCLKN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoHPKCLKN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmailKCLKN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TanggalLahirKCLKN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `StatusPembayaran` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StatusClaim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asuransikecelakaan`
--

INSERT INTO `asuransikecelakaan` (`IDAsuransiKecelakaan`, `NamaLengkapKCLKN`, `NoHPKCLKN`, `EmailKCLKN`, `TanggalLahirKCLKN`, `StatusPembayaran`, `StatusClaim`) VALUES
(11000, 'Hansen Thadeus Wijaya', '08123136512', 'hansen@gmail.com', '20/02/2000', 'Sudah Dibayar', 'Claim Berhasil'),
(11001, 'ryan', '0812319123', 'ryan123@gmail.com', '22/05/2000', 'Belum Dibayar', 'Sedang Diproses'),
(11002, 'William', '081232191231', 'william@gmail.com', '05/09/2000', 'Sudah Dibayar', 'Claim Berhasil'),
(11003, 'Budi', '081912821312', 'budi@gmail.com', '20/08/2000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asuransikendaraan`
--

CREATE TABLE `asuransikendaraan` (
  `IDAsuransiKendaraan` int(11) NOT NULL,
  `NamaLengkapKND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoHPKND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmailKND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TipeMobilKND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TahunKendaraanKND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `StatusPembayaran` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StatusClaim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asuransikendaraan`
--

INSERT INTO `asuransikendaraan` (`IDAsuransiKendaraan`, `NamaLengkapKND`, `NoHPKND`, `EmailKND`, `TipeMobilKND`, `TahunKendaraanKND`, `StatusPembayaran`, `StatusClaim`) VALUES
(10000, 'Ryan Gunawan', '081234567', 'ryangunawan@gmail.com', 'Suzuki', '2000', 'Sudah Dibayar', 'Claim Berhasil'),
(10001, 'Kevin Gabriel', '08123912621', 'kevingabriel@gmail.com', 'Ferrari', '2021', 'Belum Dibayar', 'Sedang Diproses'),
(10002, 'keving', '08123912632', 'keving@gmail.com', 'Toyota', '2021', 'Sudah Dibayar', 'Claim Berhasil'),
(10003, 'sutio', '0812391231', 'sutio@gmail.com', 'Toyota', '2020', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`ID`, `email`, `password`) VALUES
(2, 'kelompok4@gmail.com', 'kelompok4'),
(3, 'assadsadsa@gmail.com', 'testing'),
(4, 'test@gmail.com', 'test'),
(5, 'demo@gmail.com', 'demo'),
(6, 'william12@gmail.com', 'abcdef'),
(7, 'williamtan@gmail.com', 'kelompok412'),
(9, 'demouas@gmail.com', 'demouas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asuransikebakaran`
--
ALTER TABLE `asuransikebakaran`
  ADD PRIMARY KEY (`IDAsuransiKebakaran`);

--
-- Indexes for table `asuransikecelakaan`
--
ALTER TABLE `asuransikecelakaan`
  ADD PRIMARY KEY (`IDAsuransiKecelakaan`);

--
-- Indexes for table `asuransikendaraan`
--
ALTER TABLE `asuransikendaraan`
  ADD PRIMARY KEY (`IDAsuransiKendaraan`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asuransikebakaran`
--
ALTER TABLE `asuransikebakaran`
  MODIFY `IDAsuransiKebakaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9005;

--
-- AUTO_INCREMENT for table `asuransikecelakaan`
--
ALTER TABLE `asuransikecelakaan`
  MODIFY `IDAsuransiKecelakaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11004;

--
-- AUTO_INCREMENT for table `asuransikendaraan`
--
ALTER TABLE `asuransikendaraan`
  MODIFY `IDAsuransiKendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
