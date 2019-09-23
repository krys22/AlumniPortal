-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2019 at 10:37 AM
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
-- Table structure for table `electric_pay`
--

DROP TABLE IF EXISTS `electric_pay`;
CREATE TABLE IF NOT EXISTS `electric_pay` (
  `id` varchar(20) NOT NULL,
  `cus_no` varchar(30) NOT NULL,
  `csw_user` varchar(20) NOT NULL,
  `init_msisdn` varchar(15) NOT NULL DEFAULT 'Nil',
  `tranx_no` varchar(20) NOT NULL,
  `exch_ref` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL COMMENT 'face value of the recharge',
  `discount_given` decimal(5,2) NOT NULL COMMENT 'this stores the discount we give to distributors',
  `net_value` decimal(9,3) NOT NULL COMMENT 'this amount is the real amount we push to the discos',
  `discount_received_from_provider` decimal(5,2) NOT NULL COMMENT 'the discount received from service providers',
  `cost_of_sale` decimal(9,3) NOT NULL COMMENT 'this is the original amount we bought the purchase at from our service providers',
  `util_name` varchar(21) NOT NULL,
  `credit_token` varchar(30) DEFAULT NULL,
  `token_amount` varchar(10) DEFAULT NULL,
  `amount_of_power` varchar(10) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `status_code` varchar(3) NOT NULL,
  `extra_params` varchar(40) DEFAULT NULL COMMENT 'Save users balances before and after the vending on postpaid concatenated with a '':''',
  `provider` char(8) NOT NULL COMMENT 'Main service provider distinguisher',
  `provider_service_id` varchar(8) NOT NULL,
  `service_id` varchar(5) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `error_code` varchar(10) NOT NULL,
  `error_msg` varchar(130) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `csw_phone` (`csw_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electric_pay`
--

INSERT INTO `electric_pay` (`id`, `cus_no`, `csw_user`, `init_msisdn`, `tranx_no`, `exch_ref`, `amount`, `discount_given`, `net_value`, `discount_received_from_provider`, `cost_of_sale`, `util_name`, `credit_token`, `token_amount`, `amount_of_power`, `status`, `status_code`, `extra_params`, `provider`, `provider_service_id`, `service_id`, `user_type`, `error_code`, `error_msg`, `date`) VALUES
('', '0100347638', '13400', '2348069447145', '0', '', '530', '5.00', '504.000', '1.25', '497.206', '', 'Nil', 'Nil', 'Nil', 'Nil', '1', NULL, '', 'APB', 'E02E', 'merchant', '500', 'Invalid request hash please check reques', '2017-05-26 08:49:11'),
('149131178567', '62130210586', '13400', '2348069447145', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '40', 'please enter a minimum amount of ngn 600', '2017-04-04 13:16:35'),
('149131297258', '0100347638', '13400', '2348069447145', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '06', 'missing parameters', '2017-04-04 14:36:35'),
('149131301288', '0100347638', '13400', '2348069447145', '5448633', '33854557', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-04 14:37:04'),
('149131329635', '04140299134', '13400', '2348069447145', '5448810', 'BAXIBX/110', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja prepaid', '54098369015047491094', '90.48', '4.2 KWh', 'ACCEPTED', '0', NULL, 'baxi', 'APB', 'E01E', 'merchant', '', '', '2017-04-04 14:42:13'),
('149132287336', '0100323001', '13400', '2348055559997', '5454151', '33989282', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-04 17:22:07'),
('149137808633', '54150205877', '13400', '2348028876216', '5461640', '2495447', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja prepaid', '36704755759444095984', '90.48', '4.2 KWh', 'ACCEPTED', '0', NULL, 'baxi', 'APB', 'E01E', 'merchant', '', '', '2017-04-05 08:41:59'),
('149141133693', '0100347638', '13400', '2348172010495', '5478656', '34180086', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-05 17:55:59'),
('149141367392', '0100347638', '13400', '2349055081227', '5479836', '34184422', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-05 18:35:03'),
('149142375739', '02160248338', '13400', '2348026903480', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '40', 'please enter a minimum amount of ngn 600', '2017-04-05 21:22:56'),
('149145951376', '0101160248338', '13400', '2348026903480', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '40', 'please enter a minimum amount of ngn 600', '2017-04-06 07:18:46'),
('149147473506', '0100347638', '13400', '2348172010495', '5489958', '34218061', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-06 11:33:05'),
('149183490456', '0101160248338', '13400', '2348026903480', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '40', 'please enter a minimum amount of ngn 600', '2017-04-10 15:35:58'),
('149183920468', '0101160248338', '13400', '2348028876216', '0', 'Nil', '100', '5.00', '95.000', '1.50', '93.575', 'Abuja prepaid', 'Nil', 'Nil', 'Nil', 'failed', '1', NULL, 'istr', 'Nil', 'E07E', 'merchant', '40', 'please enter a minimum amount of ngn 600', '2017-04-10 16:47:14'),
('149191454127', '0100420056', '13400', '2348035702827', '5594281', '34420869', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-11 13:42:31'),
('149209795704', '04140299134', '13400', '2348172010495', '5650864', 'BAXIBX/111', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja prepaid', '59379335787468296143', '90.48', '4.2 KWh', 'ACCEPTED', '0', NULL, 'baxi', 'APB', 'E01E', 'merchant', '', '', '2017-04-13 16:39:57'),
('149209829188', '070110099601', '13400', '2348172010495', '5651036', '1110286', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-13 16:45:30'),
('149217498329', '0100347638', '13400', '2348069447145', '5720223', '35196568', '100', '5.00', '95.000', '2.50', '92.625', 'Ikeja postpaid', 'Nil', 'Nil', 'Nil', 'ACCEPTED', '0', NULL, 'baxi', 'APA', 'E02E', 'merchant', '', '', '2017-04-18 10:30:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
