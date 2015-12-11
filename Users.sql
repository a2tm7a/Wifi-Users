-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2015 at 11:54 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `WifiUsers`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `MAC_Address` varchar(18) NOT NULL,
  `Time` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `LastSeen` datetime NOT NULL,
  `Online` tinyint(1) NOT NULL,
  PRIMARY KEY (`MAC_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`MAC_Address`, `Time`, `Name`, `LastSeen`, `Online`) VALUES
('08:EC:A9:EC:F4:23', 114, NULL, '2015-12-11 00:11:25', 0),
('10:A5:D0:5A:79:9B', 126, NULL, '2015-12-11 00:11:25', 0),
('64:6C:B2:FC:B3:EF', 270, NULL, '2015-12-11 00:11:25', 0),
('B8:6C:E8:B2:1B:5D', 296, 'Amit Mobile', '2015-12-11 11:46:04', 0),
('B8:C1:A2:05:C3:50', 590, 'Amit Laptop', '2015-12-11 11:48:03', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
