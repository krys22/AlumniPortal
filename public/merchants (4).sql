-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2019 at 09:16 AM
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
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
CREATE TABLE IF NOT EXISTS `merchants` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `merchant` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_ip` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Public Key',
  `priv_key` varchar(130) COLLATE utf8_unicode_ci NOT NULL,
  `client_key` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'users key for mobile client/web/admin portals inserted here',
  `bonus` decimal(9,2) DEFAULT NULL COMMENT 'bonuses for users',
  `low_balance_limit` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Notifications would be sent out to admins when balance goes below this limit, for postpaid customers, its usually set at a high value',
  `account_type` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'prepaid' COMMENT 'Type of account: prepaid/postpaid',
  `level` smallint(6) DEFAULT NULL COMMENT 'Users level: Admin, Merchant, SubMerchant, Normal Users',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Date at which the merchant was created',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `balance` decimal(14,2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `mobifin_detail` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concatenated Login Id and Key',
  `server` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mobifin' COMMENT 'Determines the server request for this merchant is routed through',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=170704 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `merchant`, `allowed_ip`, `email`, `phone`, `password`, `priv_key`, `client_key`, `bonus`, `low_balance_limit`, `account_type`, `level`, `created_at`, `updated_at`, `balance`, `status`, `mobifin_detail`, `server`) VALUES
(5817, 'Fonenode', 'notAvail', 'hello@fonenode.com', '07055743627', 'f0b8213eb3b7a973a356fe8c48444e61', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2019-07-16 15:25:16', '1850.00', 1, '', 'mobifin'),
(10528, 'Infostrategy Technology', '192.163.244.68', 'tomi@istrategytech.com', '08037004762', '97a4a81b836fb9929b0b4ee70b773443f7c7cfb2969fb32edac40294283ed09409d9daa8681ed11854cd3f3c67d735514feb48404aec9879974b58f447931f53', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2019-04-15 10:39:57', '6.36', 1, '', 'mobifin'),
(13391, 'Wema Bank', '196.43.215.65:169.159.125.83:196.43.215.80:41.184.168.217:41.184.168.217', '945@wemabank.com', '08031110539', '$2y$10$hDO2aFJ8iR5NBqlcSik2nOOeTA.W4z7cXQYolrEe0IMX8Xhbm5hzS', '2af6bc8433a919658d78d6929bbd9b0918aad5c629dd82d68286b595015ef776ada96bbbfb0bf350e3e12f2d0134270499325f24ce9c0ff50679a6bb87c376e4', NULL, NULL, '500000.00', 'postpaid', NULL, '2017-07-04 06:27:09', '2019-07-03 13:57:26', '59207264.38', 1, '80005696:71373078', 'mobifin'),
(13400, 'Csw Ussd', '196.216.253.45:196.216.253.46:41.184.173.160:41.184.168.217', '931@creditswitch.com', '0908000093X', '$2y$10$AipG9TNKEh9GKMdcYcM1gu.yNi8V3UZ1.zKkoJ4QDg9JecOwJy9am', '820070bbe07848bda140f653aa2864a0d92f18d2b8aaafb4bcb9b5d468b438850384fedea363062b71bbe3572d56e53cce8094995a10ea520e45e955896c3790', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2018-07-30 15:18:00', '112638.00', 1, '', 'mobifin'),
(13402, 'Csw Ussd Pin Recharge', '196.216.253.45:196.216.253.46:41.184.173.160:41.184.169.22:41.184.168.217:41.190.31.195', 'support@creditswitch.com', '0908000093X', '$2y$10$BAAgXG3OMxPPMrpG.iLLPOfVYQqA26pM5dTUx5qufgi.c5O9gh1hW', '820070bbe07848bda140f653aa2864a0d92f18d2b8aaafb4bcb9b5d468b438850384fedea363062b71bbe3572d56e53cce8094995a10ea520e45e955896c3790', NULL, NULL, '0.00', 'prepaid', NULL, '2017-09-21 17:07:49', '2018-08-14 10:36:17', '14178699.00', 1, '65965164:69110705', 'mobifin'),
(16400, 'Access Bank', '37.60.242.254', 'gb@flutterwavego.com', '07033188284', 'b0ae9f5aa6cc83b1c15216e05c5bc92bdef181708d96cd8699579099a2d2cc54d64aa07c1629c9eb8b22688f1829f1cbb54ac0d4674270ce2b73064344fdc489', 'QWNjc0FfY2hzdzFGXzE0OTI1MjQ4Mjk=', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2019-04-15 10:39:57', '0.00', 1, '', 'mobifin'),
(16402, 'AIICO Insurance', '197.253.28.210', 'online@aiicoplc.com', '08066405658', '3661821d583d03d65b16274f496bbf3de81fd4c96ad419bbbf6c03cf737b9cc598467e95611104b3c9d8b4aa3b5f1b9fedd7229893a57f7730b14b0bb42c3157', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2019-04-15 10:39:57', '288000.00', 1, '52872862:99965838', 'mobifin'),
(16404, 'Mindshare', '69.163.162.155:69.163.162.153:69.163.163.202', 'david.iwarue@mindshareltd.com', '08138624087', '$2y$10$M0jDLIwphxa4b3QA0odpre3doz6toPsn6IbbWHHx3K9s7B02n5/4a', '6062f4e8b2751f6bdc777a88bd6f6c1bdb34a5855772f49bca40d6789fa570dbeb3a40e1ad54152eb6514119f8073699926302fb3910de02f9559f8ab4a721e3', NULL, NULL, '0.00', 'prepaid', NULL, '2017-07-04 06:27:09', '2018-08-14 11:02:32', '964152.27', 1, '06288293:79985891', 'mobifin'),
(16412, 'Seamfix Nigeria Limited', '52.9.121.231', 'hqsupport@seamfix.com', '08037291170', '$2y$10$bm/ns8XzBfqwfKzJCzUMVukTymYAHwy.B8bDBqPpZv5WtxltgEPD2', '4cde99d5fd2899f539a23f6231e2b61646449689eec8e22a2afb232553bff490fee4b06cf16b8bf012acc0db1bae0f616e4164dd6bdd492aad501461446cac3a', NULL, NULL, '250000.00', 'prepaid', NULL, '2017-09-06 09:56:43', '2018-08-14 07:25:55', '942144.45', 1, '55489824:01099216', 'mobifin'),
(16414, 'TM30 Global Limited', '94.229.74.66', 'paymybill@tm30.net', '08034112494', '$2y$10$25dyrPQrz/hFOmRWIQSv5OWcQcQUNhlyVeWI8VvXfLH4bnGZF2Bee', '13864325acfe75e3bce44367517e79cce7999faaaa38260e12ba525e9201f32f86affddd90f013e12500fc63063339d089ab9929253355248c194e1f3583158e', NULL, NULL, '0.00', 'prepaid', NULL, '2017-09-21 15:43:26', '2018-07-23 13:35:19', '474000.50', 1, '02287955:68855568', 'mobifin'),
(16416, 'NG Micro Distributors Limited', '127.0.0.1', 'lawokp@gmail.com', '08055559997', '$2y$10$ozEB7vYJkeXygwatcQpMlOud6mxJxhINwfIhzxmbq/9fBBuWnaKvu', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-09-28 14:33:28', '2019-05-22 18:02:57', '1017.00', 1, '35620863:79474657', 'mobifin'),
(16418, 'A&U Consultants', '127.0.0.1', 'danumar96@gmail.com', '08058586906', '$2y$10$0APAds07U87V5tTFXQ0o4.dUOb/whF16.1d9JQNOimNDS3/geeByq', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-06 12:14:09', '2018-05-07 06:46:55', '0.00', 1, '70888018:82132128', 'mobifin'),
(16420, 'Neeyolah & Tees', '127.0.0.1', 'oshinodun@gmail.com', '08036691559', '$2y$10$T2gz05ShX12gPG.VuzVZdu30Qw/0L3V/lq0lu83N29wgwvowitcuC', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-12 09:19:43', '2018-05-07 06:46:55', '0.00', 1, '70888018:82132128', 'mobifin'),
(16422, 'Macrotel Group', '127.0.0.1', 'obalogun@macrotelgroup.com', '08099440021', '$2y$10$ax952tPMARgpTzRbnKrgNeTnvmeqI5w5QiqHGQi3MHNnFf3MOf7aW', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-17 12:53:27', '2018-05-07 06:46:55', '5280.00', 1, '53838147:87371643', 'mobifin'),
(16424, 'Ini Nyong', '127.0.0.1', 'ini.nyong@yahoo.com', '08028446505', '$2y$10$NJhWBokpDzyFUOSM4bxCXuoZsO1pX4kA7LHCQhPMaAgJS0IoPj5EK', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-19 10:41:51', '2018-07-26 11:28:01', '82.00', 1, '76761564:36819241', 'mobifin'),
(16426, 'PG Nig. Ltd.', '127.0.0.1', 'pgnig111@gmail.com', '08084851713', '$2y$10$3hMEwzjhm2U6xGSrP/caZ.YFrAd4QWweLFmLQ1kc67fncqllhwoIy', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-23 09:15:50', '2018-07-30 10:58:34', '0.00', 1, '76761564:36819241', 'mobifin'),
(16428, 'Adedoyin Ademiluyi', '127.0.0.1', 'ademiluyi.adedoyin@yahoo.com', '07088729295', '$2y$10$ynFPzW0aN5J2yAAaSvVTTuGJwXCWQsWaqpxn5O.Ha2jxt/iSrSyG.', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-24 14:59:50', '2018-05-07 06:46:55', '7920.00', 1, '53838147:87371643', 'mobifin'),
(16430, 'Walesh Digital Service', '127.0.0.1', 'walesh111@yahoo.com', '08028966829', '$2y$10$8ltLdZeqoVQ16YOU7NfEDeFhyWYahBhfYYIhVE8Enf1RwjV0InySW', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-25 08:35:30', '2018-07-30 10:58:34', '891.25', 1, '76761564:36819241', 'mobifin'),
(16432, 'Djosh Grand Services', '127.0.0.1', 'djoshgrandservices@gmail.com', '09066514172', '$2y$10$Qh3.VK9EWHIDZKk1JOR6Be1VKxLFalOq7BIM4u22lJNWdf7uNX9Ky', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-26 11:03:20', '2018-05-07 06:46:55', '0.00', 1, '44857429:85853673', 'mobifin'),
(16434, 'sam', '127.0.0.1', 'titilayorconfirm@yahoo.com', '07065950242', '$2y$10$MvNe8tri7WAi/udea0TDzuaAgg1OfwbMv4H7lJZgs0bdqFwjND2/.', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-27 11:28:04', '2019-05-24 13:12:39', '0.00', 1, '76761564:36819241', 'mobifin'),
(16436, 'Delight Communications', '127.0.0.1', 'jjumungwor@yahoo.com', '08098649512', '$2y$10$gDNVF7l.jK7.p/uupk8G5ON3O2kTGAIuPgXfu9QSvqUS5cWX0YqDW', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-31 12:02:22', '2018-05-07 06:46:55', '0.00', 1, '44857429:85853673', 'mobifin'),
(16438, 'Ayokanmi Solution', '127.0.0.1', 'ayokanmibooks@gmail.com', '08021000103', '$2y$10$wfdJorOqkE7yeLlLaZ.Iy.DIiikEkRfxHcF0OQpnxhIzXrxDDdwsi', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-10-31 12:16:32', '2018-07-30 10:58:34', '37278.75', 1, '76761564:36819241', 'mobifin'),
(16440, 'Oyetoyan Adedoyin Damilola', '127.0.0.1', 'princessdee1111@gmail.com', '08185651652', 'b0ae9f5aa6cc83b1c15216e05c5bc92bdef181708d96cd8699579099a2d2cc54d64aa07c1629c9eb8b22688f1829f1cbb54ac0d4674270ce2b73064344fdc489', 'QWNjc0FfY2hzdzFGXzE0OTI1MjQ4Mjk=', NULL, NULL, '0.00', 'prepaid', NULL, '2017-11-02 14:30:00', '2018-08-13 14:54:32', '236501.39', 1, '76761564:36819241', 'mobifin'),
(16442, 'ELSHADDAI IMAGE CREATION CONCEPT LTD', '127.0.0.1', 'elshaddaiimagecreation@yahoo.com', '07016065412', '$2y$10$NaMKgqFa6zL8R.hW1lt2GO7mkZttAih/csQQjdS8BJLzsQlBDXBW.', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-11-03 13:53:49', '2018-05-07 06:46:55', '0.00', 1, '44857429:85853673', 'mobifin'),
(16444, 'odukomaiya jumoke', '127.0.0.1', 'odukomaiyajumoke@gmail.com', '08034124825', '$2y$10$2sUJoRupipAOhb2nEofk5Ok2jMyZm5lmstm5JteJBHBIRdaywV3zm', '', NULL, NULL, '0.00', 'prepaid', NULL, '2017-11-03 14:09:14', '2018-05-07 06:46:55', '0.00', 1, '44857429:85853673', 'mobifin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
