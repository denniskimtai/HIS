-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 03:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblpatientsdetails`
--

CREATE TABLE `tblpatientsdetails` (
  `id` int(11) NOT NULL,
  `telephone` int(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `subCounty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `maritalStatus` varchar(255) NOT NULL,
  `kinName` varchar(255) NOT NULL,
  `kinDOB` varchar(255) NOT NULL,
  `kinIdNo` varchar(255) NOT NULL,
  `kinGender` varchar(255) NOT NULL,
  `kinRelationship` varchar(255) NOT NULL,
  `kinTelephone` varchar(255) NOT NULL,
  `patientRef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tblpatientsdetails`
--

INSERT INTO `tblpatientsdetails` (`id`, `telephone`, `dateOfBirth`, `address`, `county`, `subCounty`, `email`, `gender`, `maritalStatus`, `kinName`, `kinDOB`, `kinIdNo`, `kinGender`, `kinRelationship`, `kinTelephone`, `patientRef`) VALUES
(1, 12, '12', '1212', '12', '12', '12', '12', '12', '12', '12', '12', '2', '212', '12', '64cba29fcc848');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblpatientsdetails`
--
ALTER TABLE `tblpatientsdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblpatientsdetails`
--
ALTER TABLE `tblpatientsdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
