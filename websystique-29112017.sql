-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 05:15 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websystique`
--
CREATE DATABASE IF NOT EXISTS `websystique` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `websystique`;

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `sso_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `sso_id`, `password`, `first_name`, `last_name`, `email`) VALUES
(1, 'sam', '$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'Sam', 'Smith', 'samy@xyz.com');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_user_profile`
--

DROP TABLE IF EXISTS `app_user_user_profile`;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `app_user_user_profile`
--

INSERT INTO `app_user_user_profile` (`user_id`, `user_profile_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hellolog`
--

DROP TABLE IF EXISTS `hellolog`;
CREATE TABLE `hellolog` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `magacini`
--

DROP TABLE IF EXISTS `magacini`;
CREATE TABLE `magacini` (
  `uid` bigint(20) NOT NULL,
  `aktivan` tinyint(1) DEFAULT '1',
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_tipovi_magacina` int(11) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `magacini`
--

INSERT INTO `magacini` (`uid`, `aktivan`, `code`, `name`, `remark`, `timestamp`, `akcija`, `id_tipovi_magacina`, `created`) VALUES
(8, 1, '1', '1', '7777', '2017-11-29 09:45:39', NULL, 2, NULL),
(9, 1, '3', '3', '33', '2017-11-29 09:43:55', NULL, 1, NULL),
(10, 1, '4', '4', '4', '2017-11-29 10:41:03', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `series` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `prijemnica`
--

DROP TABLE IF EXISTS `prijemnica`;
CREATE TABLE `prijemnica` (
  `id` int(11) NOT NULL,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `broj_prijemnice` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `datum_vreme` datetime DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_komitent` int(11) DEFAULT NULL,
  `id_magacin` int(11) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `prijemnica_stavke`
--

DROP TABLE IF EXISTS `prijemnica_stavke`;
CREATE TABLE `prijemnica_stavke` (
  `id` int(11) NOT NULL,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `cena` decimal(19,2) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `datumvreme` datetime DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_roba` int(11) DEFAULT NULL,
  `izlaz` decimal(19,2) DEFAULT NULL,
  `iznos` decimal(19,2) DEFAULT NULL,
  `kolicina` decimal(19,2) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prijemnica_stavkecol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `roba_naziv` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ulaz` decimal(19,2) DEFAULT NULL,
  `id_prijemnica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`) VALUES
(1, '$2a$10$dsrxNHDF0mti8.1XmAcmu.9ET6CffazrQR/mqkM7HRMZ.AcjCum1i', 'aa'),
(2, '$2a$10$.CSxB/oITJt/QXQkjqw3QO6QDLuhPZ6ugAsaJtqDT1TW0m1oiYqoS', 'tttttt');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL,
  `type` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `type`) VALUES
(2, 'ADMIN'),
(3, 'DBA'),
(1, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vrste_magacina`
--

DROP TABLE IF EXISTS `vrste_magacina`;
CREATE TABLE `vrste_magacina` (
  `uid` bigint(20) NOT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` tinyint(1) DEFAULT '1',
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vrste_magacina`
--

INSERT INTO `vrste_magacina` (`uid`, `akcija`, `aktivan`, `code`, `name`, `remark`, `timestamp`) VALUES
(1, NULL, 1, '1', 'Veleprodaja', NULL, '2017-11-29 09:19:25'),
(2, NULL, 1, '2', 'Maloprodaja', NULL, '2017-11-29 09:19:50'),
(3, NULL, 1, '0', '-', NULL, '2017-11-29 10:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `vrste_paleta`
--

DROP TABLE IF EXISTS `vrste_paleta`;
CREATE TABLE `vrste_paleta` (
  `uid` bigint(20) NOT NULL,
  `aktivan` tinyint(1) DEFAULT '1',
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vrste_paleta`
--

INSERT INTO `vrste_paleta` (`uid`, `aktivan`, `code`, `name`, `remark`, `timestamp`, `akcija`) VALUES
(4, 1, '4', '444', '44', '2017-11-28 10:26:21', NULL),
(5, 1, '5', '5', '55', '2017-11-28 10:27:44', NULL),
(7, 1, 'uuuuuuu', 'uuuuuuuu', '', '2017-11-28 22:17:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sso_id` (`sso_id`);

--
-- Indexes for table `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD PRIMARY KEY (`user_id`,`user_profile_id`),
  ADD KEY `FK_USER_PROFILE` (`user_profile_id`);

--
-- Indexes for table `hellolog`
--
ALTER TABLE `hellolog`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `magacini`
--
ALTER TABLE `magacini`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `prijemnica`
--
ALTER TABLE `prijemnica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prijemnica_stavke`
--
ALTER TABLE `prijemnica_stavke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5hfntdhgrswoxkm7ev13t0utl` (`id_prijemnica`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FK_it77eq964jhfqtu54081ebtio` (`role_id`);

--
-- Indexes for table `vrste_magacina`
--
ALTER TABLE `vrste_magacina`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vrste_paleta`
--
ALTER TABLE `vrste_paleta`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hellolog`
--
ALTER TABLE `hellolog`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `magacini`
--
ALTER TABLE `magacini`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prijemnica`
--
ALTER TABLE `prijemnica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prijemnica_stavke`
--
ALTER TABLE `prijemnica_stavke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vrste_magacina`
--
ALTER TABLE `vrste_magacina`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vrste_paleta`
--
ALTER TABLE `vrste_paleta`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  ADD CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`);

--
-- Constraints for table `prijemnica_stavke`
--
ALTER TABLE `prijemnica_stavke`
  ADD CONSTRAINT `FK_5hfntdhgrswoxkm7ev13t0utl` FOREIGN KEY (`id_prijemnica`) REFERENCES `prijemnica` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
