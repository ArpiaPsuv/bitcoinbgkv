-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2017 at 10:06 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitcoin2`
--

-- --------------------------------------------------------

--
-- Table structure for table `btc_blockio_licenses`
--

CREATE TABLE `btc_blockio_licenses` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `secret_pin` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addresses` int(11) DEFAULT NULL,
  `default_license` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_blockio_licenses`
--

INSERT INTO `btc_blockio_licenses` (`id`, `account`, `license`, `secret_pin`, `address`, `addresses`, `default_license`) VALUES
(1, 'Default API', '0000-0000-0000-0000', '000000', '000000000000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btc_faq`
--

CREATE TABLE `btc_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btc_pages`
--

CREATE TABLE `btc_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_pages`
--

INSERT INTO `btc_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Terms of service', 'terms-of-services', 'Edit from WebAdmin.', NULL, NULL),
(2, 'Privacy Policy', 'privacy-policy', 'Edit from WebAdmin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btc_prices`
--

CREATE TABLE `btc_prices` (
  `id` int(11) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_prices`
--

INSERT INTO `btc_prices` (`id`, `source`, `price`, `currency`) VALUES
(1, NULL, 900.97, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `btc_settings`
--

CREATE TABLE `btc_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `withdrawal_comission` varchar(255) DEFAULT NULL,
  `max_addresses_per_account` int(11) DEFAULT NULL,
  `profits` varchar(255) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `recaptcha_verification` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `fb_link` text,
  `tw_link` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_settings`
--

INSERT INTO `btc_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `url`, `withdrawal_comission`, `max_addresses_per_account`, `profits`, `email_verification`, `recaptcha_verification`, `recaptcha_publickey`, `recaptcha_privatekey`, `fb_link`, `tw_link`) VALUES
(1, 'Bitcoin Wallet Manager', 'Bitcoin Wallet Manager', 'bitcoin,btc,wallet', 'Bitcoin Wallet Manager', 'nareshkr.22@gmail.com', 'nareshkr.22@gmail.com', 'http://localhost/btcwallet/', '0.0001', 10, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btc_users`
--

CREATE TABLE `btc_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secret_pin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` text,
  `status` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time_signup` int(11) DEFAULT NULL,
  `time_signin` int(11) DEFAULT NULL,
  `time_activity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_users`
--

INSERT INTO `btc_users` (`id`, `username`, `password`, `secret_pin`, `email`, `email_verified`, `email_hash`, `status`, `ip`, `time_signup`, `time_signin`, `time_activity`) VALUES
(1, 'admin', '0077431273b02ba8301af276ec2f8821', NULL, 'nareshkr.22@gmail.com', NULL, NULL, '666', NULL, NULL, NULL, NULL),
(2, 'nicksa', '0077431273b02ba8301af276ec2f8821', NULL, 'nk23400@gmail.com', 1, '6435ef5e181142f4f0d9', '1', '', 1484927155, 1486224734, 1486224734);

-- --------------------------------------------------------

--
-- Table structure for table `btc_users_addresses`
--

CREATE TABLE `btc_users_addresses` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `available_balance` varchar(255) DEFAULT NULL,
  `pending_received_balance` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `archived` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_users_addresses`
--

INSERT INTO `btc_users_addresses` (`id`, `uid`, `label`, `address`, `lid`, `available_balance`, `pending_received_balance`, `status`, `created`, `updated`, `archived`) VALUES
(1, 2, 'usr_nicksa_default', '2NCjoKS2scykDGWWUG9TTz7BzrZZomHx9Kd', 1, '5.29910000', '0.00000000', '1', 1484927157, NULL, 0),
(2, 2, 'usr_nicksa_nicksa', '2Mw6cnEv2bNXXcZNDH9RUuoJKDSBLUrTCB8', 1, '0.00000000', '0.00000000', '1', 1484934973, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btc_users_transactions`
--

CREATE TABLE `btc_users_transactions` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `txid` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btc_users_transactions`
--

INSERT INTO `btc_users_transactions` (`id`, `uid`, `type`, `recipient`, `sender`, `amount`, `time`, `confirmations`, `txid`) VALUES
(1, 2, 'received', '2NCjoKS2scykDGWWUG9TTz7BzrZZomHx9Kd', '2NGWX1rozPH9ktJSY9XCpqf5Tvk487uW4pU', '5.00000000', 1484929418, 2577, '5fe112a083925d85728e69911277b477162b86d32c0140765680db0211484b7e'),
(2, 2, 'received', '2NCjoKS2scykDGWWUG9TTz7BzrZZomHx9Kd', '2N9NHYxCBXpVGGiCi5kP4seLLiUn42cfYiX', '0.50000000', 1484930618, 2576, '17b85f95571efb8c49e40005f5ed17987346506ef9c3a6dd2b045412c971cb94'),
(47, 2, 'received', '2NCjoKS2scykDGWWUG9TTz7BzrZZomHx9Kd', '2N9NHYxCBXpVGGiCi5kP4seLLiUn42cfYiX', '0.00010000', 1484934323, 2568, 'c3d9aaa588e2d0780021849683d29c4df3027412be4990c38426f8936bcda2a3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `btc_blockio_licenses`
--
ALTER TABLE `btc_blockio_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_faq`
--
ALTER TABLE `btc_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_pages`
--
ALTER TABLE `btc_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_prices`
--
ALTER TABLE `btc_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_settings`
--
ALTER TABLE `btc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_users`
--
ALTER TABLE `btc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_users_addresses`
--
ALTER TABLE `btc_users_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc_users_transactions`
--
ALTER TABLE `btc_users_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `btc_blockio_licenses`
--
ALTER TABLE `btc_blockio_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `btc_faq`
--
ALTER TABLE `btc_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btc_pages`
--
ALTER TABLE `btc_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `btc_prices`
--
ALTER TABLE `btc_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `btc_settings`
--
ALTER TABLE `btc_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `btc_users`
--
ALTER TABLE `btc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `btc_users_addresses`
--
ALTER TABLE `btc_users_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `btc_users_transactions`
--
ALTER TABLE `btc_users_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
