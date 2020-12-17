-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 03:25 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `Name`, `Password`) VALUES
(1, 'Aashsasdjfeda-2119', '$2y$10$xAlbeGN.FDMpz11IZrT5W./EbWtqV4pTq7Johwsk36nMazMUKIaeK'),
(2, 'Abdur Rahim-1983', '$2y$10$WBWFYwlg/93kKOcM/6GPzOYTkWP4bY67Mqi7Jtv9rMKJBnPSDKGoe'),
(3, 'Abeda Beowa-1177', '$2y$10$48QEsFTEcJ4Q8bHq6aMEvuRWZOtrvjuyaf06dp4Toa4GD9.2cWN5G'),
(4, 'Abu Taleb-1535', '$2y$10$pQoKv3PiyAxaz.VcKDFic.BXEF0ojcELV9EQKcN64feAuzlg1vHgi'),
(5, 'Akbor Ali-1504', '$2y$10$YjkWIMSRgtPeQnGvG9ycUe7sEUtrtjWhuWH7o3hQcJkAEahIIhlve'),
(6, 'Al Amin-2184', '$2y$10$XcHfZKiaKKHWf6C8wK3QEeWU/KS/3acCcr.SAWeahKI6zPfFY117y'),
(7, 'Altamoti Khatun-2137', '$2y$10$fDjsYN8.M83vv.CtUQW2Be1APNLWKST9WIA4OXa.08Qy21RYg5rJS'),
(8, 'Ambia-2133', '$2y$10$N/iExs5A7sgZGRP2Tn59A.OKtzpt5yit.nncQrdN874qNUriNGvmC'),
(9, 'Amena-2761', '$2y$10$rDUd/nC.VxFjTi2dHJR5Yus5dW4L1f9d9FWJGjuY2sJ9a4o1Wy9pi'),
(10, 'Apiar-1970', '$2y$10$ju630v4te6w.THG7boabZOUwRrM.bqFH7Javz3HeAfW48Yj7HeIMW'),
(11, 'Ashma Khatun-1607', '$2y$10$ZpDTUWP2nyQ/jHbE5q1KZ.qmZRJQ7eQ69Hlk3xIQsIb8RM/RVhcpO'),
(12, 'Ashraful-1881', '$2y$10$TE9rLkF58U9x08LlZhq5feXi34YdIkQZi/WchZmg6qZ3VyskcLlKS'),
(13, 'Ashutosh Chandra-2669', '$2y$10$SH4Uf.MnuYFZG66si2TrkeRLbuDOjjMZawIohS0OT.mXnvvqS7z6e'),
(14, 'Aynul-2826', '$2y$10$PDGps4Uj2MX5cqoZRpL1fugQHPl.qeP3MYpoS/akMr6BZRHWPgQxG'),
(15, 'Ayup Ali-1904', '$2y$10$6bsz/Rt25H9DJKSyES2dpecWuKEJ6.zWbIRcHx6Mz9dhp0L7N06Zu'),
(16, 'Babu-1958', '$2y$10$Qk3bQIt9yiS2YZ3cMRpV4OsX01SHc47hto6DjsUMARwRv8GunoDge'),
(17, 'Bharoti Rani-1462', '$2y$10$i3w.wTKaHG5BcqiLhL8jteby6O67d0Wii1qrS1XXETC35a2SsCr9u'),
(18, 'Biplobi Rani-2189', '$2y$10$tbqM.iMbexyumDr4gxu9iutshaSSiiXooR9JjGJifTGP5vpJoKMju'),
(19, 'Chayed Ali-2719', '$2y$10$d.c5cDg2vz6xO2en1IYR3.DCx7ACblsEEv2Fwoxu2UVbOBt8hfBiq'),
(20, 'Dipu-2083', '$2y$10$xVi8h6KwtPw/zE5FPBUBcepnQQGluOurgYRsAQ7qwUO5IEW3ZrnZa'),
(21, 'Dormo Narayan-2158', '$2y$10$TdEPC9J8DVc8sYSs45N9ceBTji1un2pTuNHPF6pQBsI52rjVxgMiK'),
(22, 'Emizini Begum-1910', '$2y$10$dOsnTzu08E9J392I5C.yAu17xA7dsixNtCq0oDRmhaoQ29OVATJnm'),
(23, 'Fatema-1909', '$2y$10$Kw0FiO8HeIx4uzwEI/hqBu6.PcUduCnePQDOmyYs8Mx4tmzPz5bSW'),
(24, 'Fatema-2042', '$2y$10$JEOSAVwymjsn1DxThhCgr.jP5DWHLwPcfAdz2qXeg9EjX9MhtXQHq'),
(25, 'Fatema-2011', '$2y$10$.D5wybNPLAn7jS34zjD8J.Ygs6aWA8DcB83rH8mhOiLRNCxJpTRxK');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `firstname`, `lastname`, `reg_date`) VALUES
(0, 'Ashma Khatun-1607', '27', '0000-00-00'),
(1, 'Aasheda-2119', '45', '0000-00-00'),
(2, 'Abdur Rahim-1983', '17', '0000-00-00'),
(3, 'Abeda Beowa-1177', '50', '0000-00-00'),
(4, 'Abu Taleb-1535', '52', '0000-00-00'),
(5, 'Akbor Ali-1504', '64', '0000-00-00'),
(6, 'Al Amin-2184', '7', '0000-00-00'),
(7, 'Altamoti Khatun-2137', '12', '0000-00-00'),
(8, 'Ambia-2133', '50', '0000-00-00'),
(9, 'Amena-2761', '83', '0000-00-00'),
(10, 'Apiar-1970', '48', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
