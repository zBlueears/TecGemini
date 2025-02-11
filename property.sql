-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 06:22 AM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Landmark` varchar(100) NOT NULL,
  `Pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`ID`, `Owner`, `Address`, `City`, `Landmark`, `Pincode`) VALUES
(1, 'Geethanjali', 'Lakshmi vilasam bunglow Vazhapally West p.o', 'Kottayam', 'opp. TVS kottayam', 686103),
(2, 'Suz', 'MAVELIKARA', 'TIRUVALLA', 'KAKA', 294291);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
