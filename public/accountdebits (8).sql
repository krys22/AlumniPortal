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
-- Table structure for table `accountdebits`
--

DROP TABLE IF EXISTS `accountdebits`;
CREATE TABLE IF NOT EXISTS `accountdebits` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `merchant` mediumint(5) NOT NULL,
  `mert_RefId` varchar(40) NOT NULL,
  `recipient` varchar(14) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `airtimeBalance` decimal(14,2) NOT NULL,
  `service_code` char(4) DEFAULT NULL COMMENT 'Holds the service code for the transaction',
  `product` char(11) NOT NULL DEFAULT 'airtime',
  `dates` char(10) NOT NULL,
  `request_id` bigint(16) DEFAULT NULL,
  `m_ReqId` varchar(11) NOT NULL,
  `auditNo` bigint(14) DEFAULT NULL,
  `sts_pin` varchar(50) DEFAULT NULL,
  `confirmCode` varchar(30) NOT NULL COMMENT '00-DVB success, 1-DVB failed',
  `tranx_status` varchar(160) NOT NULL,
  `discount` decimal(4,2) NOT NULL COMMENT 'Hold the discount percentage for this particular transaction',
  `discountAmt` decimal(7,2) NOT NULL COMMENT 'Hold the discount in naira',
  `netValue` decimal(9,2) NOT NULL COMMENT 'Netvalue after discount has been deducted',
  PRIMARY KEY (`id`),
  UNIQUE KEY `request_id` (`request_id`) USING HASH,
  KEY `service_code` (`service_code`),
  KEY `tranx_status` (`tranx_status`(11)) USING HASH,
  KEY `merchant` (`merchant`) USING HASH,
  KEY `merchantMertRef` (`merchant`,`mert_RefId`) USING HASH,
  KEY `mertRefId` (`mert_RefId`)
) ENGINE=InnoDB AUTO_INCREMENT=24632616 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountdebits`
--

INSERT INTO `accountdebits` (`id`, `merchant`, `mert_RefId`, `recipient`, `amount`, `airtimeBalance`, `service_code`, `product`, `dates`, `request_id`, `m_ReqId`, `auditNo`, `sts_pin`, `confirmCode`, `tranx_status`, `discount`, `discountAmt`, `netValue`) VALUES
(1, 38417, 'xyz101', '08146817834', '1000.00', '106000.00', NULL, 'airtime', '1557939052', 43, '', NULL, NULL, '123456', 'successfull', '0.00', '0.00', '0.00'),
(2, 38417, '12345678', '08879397255', '800.00', '106000.00', NULL, 'airtime', '1440587202', 44, '', NULL, NULL, '', 'Provider Side Platform Error', '0.00', '0.00', '0.00'),
(3, 38417, '12345678', '08879397255', '800.00', '106000.00', NULL, 'airtime', '1440587695', 45, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(4, 38417, 'xascs999', '08879397255', '800.00', '106000.00', NULL, 'airtime', '1440587728', 46, '', NULL, NULL, '', 'Provider Side Platform Error', '0.00', '0.00', '0.00'),
(5, 38417, 'xa8cs999', '08146817834', '80.00', '105920.00', NULL, 'airtime', '1440588702', 47, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(6, 38417, 'xa8cs999', '08146817834', '10.00', '105920.00', NULL, 'airtime', '1440590136', 48, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(7, 38417, 'xa8cs99956', '08146817834', '10.00', '105920.00', NULL, 'airtime', '1440590157', 49, '', NULL, NULL, '', 'Provider side data invalid', '0.00', '0.00', '0.00'),
(8, 38417, '43434343', '08146817834', '300.00', '105620.00', NULL, 'airtime', '1440599058', 50, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(9, 38417, '43434343', '08113138138', '300.00', '105620.00', NULL, 'airtime', '1440599120', 51, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(10, 38417, '111122223333444', '08146817834', '100.00', '105520.00', NULL, 'airtime', '1440684222', 52, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(11, 38417, '111122223333444', '08146817834', '100.00', '105420.00', NULL, 'airtime', '1440684636', 53, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(12, 38417, '020150911000027', '08146817834', '10.00', '105420.00', NULL, 'airtime', '1441967651', 54, '', NULL, NULL, '', 'Provider side data invalid', '0.00', '0.00', '0.00'),
(13, 38417, '43434343', '08113138138', '300.00', '105420.00', NULL, 'airtime', '1442291689', 55, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(14, 38417, '43434343', '08113138138', '300.00', '105420.00', NULL, 'airtime', '1442292159', 56, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(15, 38417, '020150915000000', '08146817834', '100.00', '105320.00', NULL, 'airtime', '1442304921', 57, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(16, 38417, '020150915000094', '08146817834', '100.00', '105220.00', NULL, 'airtime', '1442321473', 58, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(17, 38417, '020150915000136', '08146817834', '100.00', '105120.00', NULL, 'airtime', '1442339129', 59, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(18, 38417, '020150916000011', '08146817834', '100.00', '105020.00', NULL, 'airtime', '1442387892', 60, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(19, 38417, '020150916000019', '08135865606', '100.00', '104920.00', NULL, 'airtime', '1442397513', 61, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(20, 38417, '12345678', '08879397255', '800.00', '104920.00', NULL, 'airtime', '1442418185', 62, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(21, 38417, '12345678', '08879397255', '800.00', '104920.00', NULL, 'airtime', '1442418531', 63, '', NULL, NULL, '', 'Duplicate Merchant Reference', '0.00', '0.00', '0.00'),
(22, 38417, '12345679', '08879397255', '800.00', '104920.00', NULL, 'airtime', '1442419131', 64, '', NULL, NULL, '', 'Connection Error', '0.00', '0.00', '0.00'),
(23, 38417, '020150917000048', '08135865606', '50.00', '104870.00', NULL, 'airtime', '1442481050', 65, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(24, 38417, '020150917000050', '08037087606', '200.00', '104670.00', NULL, 'airtime', '1442481459', 66, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00'),
(25, 38417, '020150918000017', '08135865606', '50.00', '104620.00', NULL, 'airtime', '1442580595', 67, '', NULL, NULL, '', 'Successfull', '0.00', '0.00', '0.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
