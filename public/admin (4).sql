-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2019 at 09:05 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditsw_creditswitchmerchants`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `level` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(5) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15725 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `level`, `username`, `password`, `remember_token`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`, `status`) VALUES
(17, 4, '16412', '$2y$10$S9gKqEMZhDe2FMEabJw9jeSR3C4glY77pgQWavfoBukWuR5gWgqB2', 'CUnfFM5NMPrKQpGox4sCGDevHt55DTiA6s5RcZhaqAqHdHNgXxRBGXwV0l6s', 'Seamfix', 'Nig Ltd', 'cemewulu@seamfix.com', '2017-09-08 17:40:18', '2018-09-12 05:33:49', 1),
(13, 1, 'Nilesh', '$2y$10$ryaJm79RYYvWZRQuxPUTgOLM7ElVUuwVhSC5ZN5FT256Qfdaqrtvm', 'ildEIns6YydNX1kk9uNEQ0E64VvQS4uc1T87Tq1UdrFmPjx9xBEFyvjdVQg4', 'Nilesh', 'Pardeshi', 'nilesh.pardeshi@creditswitch.com', '2017-07-29 13:50:50', '2018-05-21 11:18:20', 0),
(10, 2, 'onayemi', '$2y$10$SHqves9YaYsdTy4lkT1Z8.p0tLiCdop0IRbqZ7CXhwhzv40H.Tlm6', 'ERIXoTPeMDUV8PS3AzEd3OktfRUAsTBwunPIQUcFKAhCIjxL05Jcuou0vhZC', 'Onayemi', 'Agbabiaka', 'qonayemi@yahoo.com', '2017-07-29 13:50:50', '2018-07-26 15:52:58', 1),
(7, 4, '16398', '$2y$10$2XNXXpkumnyK75z0j72tmOff5wjRAX7RDl04vmpCBL8C0HBOujQrm', 'uq5EB6hzalq4pUReABDWqB3hY1DAxqiuDyzGjWeCCrg8It24V8ZVF6xWFkyr', 'Airfill', 'Prepaid AB', 'sergej@airfill.com', '2017-07-29 13:50:50', '2017-11-22 09:13:11', 1),
(2, 1, 'tavy', '$2y$10$Kx.xHYXSCmbdVQvMC9lWiuZDdm07Ytd4pVfJAT2lA92mekcZAowWC', 'GSB97rsfyVnrL4lYQ9kcFe8PujCUoKxK7bQ1rPDap6Q60y64Ctg48fI73kO7', 'Tayo', 'Adigun', 'tayo.adigun@gmail.com', '2017-07-29 13:50:50', '2018-07-30 13:45:57', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
