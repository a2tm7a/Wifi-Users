-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2015 at 03:29 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Home`
--

-- --------------------------------------------------------

--
-- Table structure for table `Detect`
--

CREATE TABLE IF NOT EXISTS `Detect` (
  `MAC_Address` varchar(18) NOT NULL,
  `Time` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`MAC_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Detect`
--

INSERT INTO `Detect` (`MAC_Address`, `Time`, `Name`) VALUES
('08:EC:A9:EC:F4:23', 26, ''),
('64:6C:B2:FC:B3:EF', 26, ''),
('B8:6C:E8:B2:1B:5D', 28, ''),
('B8:C1:A2:05:C3:50', 42, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
