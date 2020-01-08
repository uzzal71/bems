-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 08:26 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bems`
--

-- --------------------------------------------------------

--
-- Table structure for table `alarm`
--

CREATE TABLE `alarm` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` int(250) DEFAULT NULL,
  `site_id` int(20) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `node` varchar(100) DEFAULT NULL,
  `parameter` varchar(100) DEFAULT NULL,
  `value` float(18,2) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `active` tinyint(3) DEFAULT NULL,
  `inactive_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alarm`
--

INSERT INTO `alarm` (`id`, `date_time`, `device_id`, `site_id`, `bank`, `node`, `parameter`, `value`, `remarks`, `status`, `active`, `inactive_time`) VALUES
(1, '2019-05-26 12:02:55', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(2, '2019-05-26 12:02:55', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(3, '2019-05-26 12:02:55', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(4, '2019-05-26 12:02:55', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(5, '2019-05-26 12:02:55', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(6, '2019-05-26 12:02:55', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(7, '2019-05-26 12:02:55', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(8, '2019-05-26 12:02:55', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(9, '2019-05-26 12:02:55', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(10, '2019-05-26 12:02:55', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(11, '2019-05-26 12:02:55', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(12, '2019-05-26 12:02:55', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(13, '2019-05-26 12:02:55', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(14, '2019-05-26 12:02:55', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(15, '2019-05-26 12:02:55', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(16, '2019-05-26 12:02:55', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(17, '2019-05-26 12:02:55', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(18, '2019-05-26 12:02:56', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(19, '2019-05-26 12:02:56', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(20, '2019-05-26 12:02:56', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(21, '2019-05-26 12:02:56', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(22, '2019-05-26 12:02:56', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(23, '2019-05-26 12:02:56', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(24, '2019-05-26 12:02:56', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(25, '2019-05-26 12:02:56', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(26, '2019-05-26 12:02:56', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(27, '2019-05-26 12:02:56', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(28, '2019-05-26 12:06:26', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(29, '2019-05-26 12:06:26', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(30, '2019-05-26 12:06:26', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(31, '2019-05-26 12:06:26', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(32, '2019-05-26 12:06:26', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(33, '2019-05-26 12:06:26', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(34, '2019-05-26 12:06:26', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(35, '2019-05-26 12:06:26', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(36, '2019-05-26 12:06:26', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(37, '2019-05-26 12:06:26', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(38, '2019-05-26 12:06:26', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(39, '2019-05-26 12:06:26', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(40, '2019-05-26 12:06:26', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(41, '2019-05-26 12:06:26', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(42, '2019-05-26 12:06:26', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(43, '2019-05-26 12:06:26', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(44, '2019-05-26 12:06:26', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(45, '2019-05-26 12:06:26', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(46, '2019-05-26 12:06:26', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(47, '2019-05-26 12:06:26', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:52'),
(48, '2019-05-26 12:06:26', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(49, '2019-05-26 12:06:27', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(50, '2019-05-26 12:06:27', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(51, '2019-05-26 12:06:27', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(52, '2019-05-26 12:06:27', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(53, '2019-05-26 12:06:27', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:52'),
(54, '2019-05-26 12:06:27', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(55, '2019-05-26 12:06:27', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(56, '2019-05-26 12:06:27', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(57, '2019-05-26 12:06:27', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(58, '2019-05-26 12:06:27', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(59, '2019-05-26 12:06:27', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', 0, 1, '2019-05-27 10:46:53'),
(60, '2019-05-26 12:06:27', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(61, '2019-05-26 12:08:03', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(62, '2019-05-26 12:08:03', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(63, '2019-05-26 12:08:04', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(64, '2019-05-26 12:08:04', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(65, '2019-05-26 12:08:04', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(66, '2019-05-26 12:08:04', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(67, '2019-05-26 12:08:04', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(68, '2019-05-26 12:08:04', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(69, '2019-05-26 12:08:04', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(70, '2019-05-26 12:08:04', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(71, '2019-05-26 12:08:04', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(72, '2019-05-26 12:08:04', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(73, '2019-05-26 12:08:04', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(74, '2019-05-26 12:08:04', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:51'),
(75, '2019-05-26 12:08:04', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(76, '2019-05-26 12:08:04', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(77, '2019-05-26 12:08:05', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(78, '2019-05-26 12:08:05', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(79, '2019-05-26 12:08:05', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(80, '2019-05-26 12:08:05', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:52'),
(81, '2019-05-26 12:08:05', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(82, '2019-05-26 12:08:05', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(83, '2019-05-26 12:08:05', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(84, '2019-05-26 12:08:05', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(85, '2019-05-26 12:08:05', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(86, '2019-05-26 12:08:05', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', 0, 1, '2019-05-27 10:46:52'),
(87, '2019-05-26 12:08:05', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(88, '2019-05-26 12:08:05', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(89, '2019-05-26 12:08:05', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(90, '2019-05-26 12:08:05', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(91, '2019-05-26 12:08:05', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(92, '2019-05-26 12:08:06', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', 0, 1, '2019-05-27 10:46:53'),
(93, '2019-05-26 12:08:06', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(94, '2019-05-26 12:12:04', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(95, '2019-05-26 12:12:04', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(96, '2019-05-26 12:12:04', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(97, '2019-05-26 12:12:04', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(98, '2019-05-26 12:12:04', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(99, '2019-05-26 12:12:04', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(100, '2019-05-26 12:12:04', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(101, '2019-05-26 12:12:04', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(102, '2019-05-26 12:12:05', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(103, '2019-05-26 12:12:05', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(104, '2019-05-26 12:12:05', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(105, '2019-05-26 12:12:05', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(106, '2019-05-26 12:12:05', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(107, '2019-05-26 12:12:05', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(108, '2019-05-26 12:12:05', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(109, '2019-05-26 12:12:05', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(110, '2019-05-26 12:12:05', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(111, '2019-05-26 12:12:05', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(112, '2019-05-26 12:12:05', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(113, '2019-05-26 12:12:05', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(114, '2019-05-26 12:12:05', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(115, '2019-05-26 12:12:05', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(116, '2019-05-26 12:12:05', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(117, '2019-05-26 12:12:05', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(118, '2019-05-26 12:12:05', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(119, '2019-05-26 12:12:05', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(120, '2019-05-26 12:12:05', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(121, '2019-05-26 14:46:09', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(122, '2019-05-26 14:46:09', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(123, '2019-05-26 14:46:09', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(124, '2019-05-26 14:46:09', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(125, '2019-05-26 14:46:09', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(126, '2019-05-26 14:46:10', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(127, '2019-05-26 14:46:10', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(128, '2019-05-26 14:46:10', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(129, '2019-05-26 14:46:10', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(130, '2019-05-26 14:46:10', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(131, '2019-05-26 14:46:10', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(132, '2019-05-26 14:46:10', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(133, '2019-05-26 14:46:10', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(134, '2019-05-26 14:46:10', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(135, '2019-05-26 14:46:10', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(136, '2019-05-26 14:46:10', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(137, '2019-05-26 14:46:10', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(138, '2019-05-26 14:46:10', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(139, '2019-05-26 14:46:10', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(140, '2019-05-26 14:46:10', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(141, '2019-05-26 14:46:10', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(142, '2019-05-26 14:46:11', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(143, '2019-05-26 14:46:11', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(144, '2019-05-26 14:46:11', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(145, '2019-05-26 14:46:11', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(146, '2019-05-26 14:46:11', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(147, '2019-05-26 14:46:11', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(148, '2019-05-26 14:52:58', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(149, '2019-05-26 14:52:58', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(150, '2019-05-26 14:52:58', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(151, '2019-05-26 14:52:58', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(152, '2019-05-26 14:52:58', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(153, '2019-05-26 14:52:58', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(154, '2019-05-26 14:52:58', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(155, '2019-05-26 14:52:58', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(156, '2019-05-26 14:52:58', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(157, '2019-05-26 14:52:59', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(158, '2019-05-26 14:52:59', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(159, '2019-05-26 14:52:59', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(160, '2019-05-26 14:52:59', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(161, '2019-05-26 14:52:59', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(162, '2019-05-26 14:52:59', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(163, '2019-05-26 14:52:59', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(164, '2019-05-26 14:52:59', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(165, '2019-05-26 14:52:59', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(166, '2019-05-26 14:52:59', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(167, '2019-05-26 14:52:59', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(168, '2019-05-26 14:52:59', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(169, '2019-05-26 14:52:59', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(170, '2019-05-26 14:52:59', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(171, '2019-05-26 14:52:59', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(172, '2019-05-26 14:52:59', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(173, '2019-05-26 14:52:59', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(174, '2019-05-26 14:52:59', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(175, '2019-05-27 10:46:51', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(176, '2019-05-27 10:46:51', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(177, '2019-05-27 10:46:51', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(178, '2019-05-27 10:46:51', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(179, '2019-05-27 10:46:51', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(180, '2019-05-27 10:46:51', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(181, '2019-05-27 10:46:51', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(182, '2019-05-27 10:46:51', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(183, '2019-05-27 10:46:51', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(184, '2019-05-27 10:46:51', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(185, '2019-05-27 10:46:51', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(186, '2019-05-27 10:46:51', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(187, '2019-05-27 10:46:51', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(188, '2019-05-27 10:46:51', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(189, '2019-05-27 10:46:52', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(190, '2019-05-27 10:46:52', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(191, '2019-05-27 10:46:52', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(192, '2019-05-27 10:46:52', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(193, '2019-05-27 10:46:52', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(194, '2019-05-27 10:46:52', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(195, '2019-05-27 10:46:52', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(196, '2019-05-27 10:46:53', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(197, '2019-05-27 10:46:53', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(198, '2019-05-27 10:46:53', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(199, '2019-05-27 10:46:53', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(200, '2019-05-27 10:46:53', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(201, '2019-05-27 10:46:53', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(202, '2019-05-27 10:47:40', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(203, '2019-05-27 10:47:40', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(204, '2019-05-27 10:47:40', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(205, '2019-05-27 10:47:40', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(206, '2019-05-27 10:47:40', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(207, '2019-05-27 10:47:40', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(208, '2019-05-27 10:47:40', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(209, '2019-05-27 10:47:40', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(210, '2019-05-27 10:47:40', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(211, '2019-05-27 10:47:40', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(212, '2019-05-27 10:47:40', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(213, '2019-05-27 10:47:40', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(214, '2019-05-27 10:47:40', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(215, '2019-05-27 10:47:40', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(216, '2019-05-27 10:47:41', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(217, '2019-05-27 10:47:41', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(218, '2019-05-27 10:47:41', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(219, '2019-05-27 10:47:41', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(220, '2019-05-27 10:47:41', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(221, '2019-05-27 10:47:41', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(222, '2019-05-27 10:47:41', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(223, '2019-05-27 10:47:41', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(224, '2019-05-27 10:47:41', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(225, '2019-05-27 10:47:41', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(226, '2019-05-27 10:47:41', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(227, '2019-05-27 10:47:41', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(228, '2019-05-27 10:47:41', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(229, '2019-05-27 10:47:41', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(230, '2019-05-27 10:47:41', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(231, '2019-05-27 10:47:41', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(232, '2019-05-27 10:47:41', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(233, '2019-05-27 10:47:41', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', 0, 0, NULL),
(234, '2019-05-27 10:47:41', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', 0, 0, NULL),
(235, '2019-05-27 10:50:54', 200, 100, 1, 'B0', 'Volt', NULL, 'Short Circuit', 0, 1, '2019-05-29 10:28:18'),
(236, '2019-05-27 10:50:57', 200, 100, 1, 'B0', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(237, '2019-05-27 10:50:57', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(238, '2019-05-27 10:50:57', 200, 100, 1, 'B1', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(239, '2019-05-27 10:50:57', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(240, '2019-05-27 10:50:57', 200, 100, 1, 'B2', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(241, '2019-05-27 10:50:57', 200, 100, 1, 'B3', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(242, '2019-05-27 10:50:57', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(243, '2019-05-27 10:50:57', 200, 100, 1, 'B4', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(244, '2019-05-27 10:50:57', 200, 100, 1, 'B5', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(245, '2019-05-27 10:50:57', 200, 100, 1, 'B6', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(246, '2019-05-27 10:50:57', 200, 100, 1, 'B7', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(247, '2019-05-27 10:50:57', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(248, '2019-05-27 10:50:57', 200, 100, 1, 'B8', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(249, '2019-05-27 10:50:57', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(250, '2019-05-27 10:50:57', 200, 100, 1, 'B9', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(251, '2019-05-27 10:50:57', 200, 100, 1, 'B10', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(252, '2019-05-27 10:50:57', 200, 100, 1, 'B11', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(253, '2019-05-27 10:50:57', 200, 100, 1, 'B12', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(254, '2019-05-27 10:50:57', 200, 100, 1, 'B13', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(255, '2019-05-27 10:50:57', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(256, '2019-05-27 10:50:57', 200, 100, 1, 'B14', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(257, '2019-05-27 10:50:57', 200, 100, 1, 'B15', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(258, '2019-05-27 10:50:57', 200, 100, 1, 'B16', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(259, '2019-05-27 10:50:57', 200, 100, 1, 'B17', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(260, '2019-05-27 10:50:58', 200, 100, 1, 'B18', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(261, '2019-05-27 10:50:58', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(262, '2019-05-27 10:50:58', 200, 100, 1, 'B19', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(263, '2019-05-27 10:50:58', 200, 100, 1, 'B20', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(264, '2019-05-27 10:50:58', 200, 100, 1, 'B21', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(265, '2019-05-27 10:50:58', 200, 100, 1, 'B22', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(266, '2019-05-27 10:50:58', 200, 100, 1, 'B23', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(267, '2019-05-27 10:50:58', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', 0, 0, NULL),
(268, '2019-05-27 10:50:58', 200, 100, 1, 'B24', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(269, '2019-05-27 10:51:54', 200, 100, 1, 'B0', 'Volt', NULL, 'Short Circuit', 0, 1, '2019-05-29 10:28:18'),
(270, '2019-05-27 10:51:54', 200, 100, 1, 'B0', 'Amp', NULL, 'Open Circuit', 0, 1, '2019-05-29 10:28:19'),
(271, '2019-05-27 10:51:57', 200, 100, 1, 'B0', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(272, '2019-05-27 10:51:57', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(273, '2019-05-27 10:51:57', 200, 100, 1, 'B1', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(274, '2019-05-27 10:51:57', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', 0, 0, NULL),
(275, '2019-05-27 10:51:57', 200, 100, 1, 'B2', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(276, '2019-05-27 10:51:57', 200, 100, 1, 'B3', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(277, '2019-05-27 10:51:57', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(278, '2019-05-27 10:51:57', 200, 100, 1, 'B4', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(279, '2019-05-27 10:51:58', 200, 100, 1, 'B5', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(280, '2019-05-27 10:51:58', 200, 100, 1, 'B6', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(281, '2019-05-27 10:51:58', 200, 100, 1, 'B7', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(282, '2019-05-27 10:51:58', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(283, '2019-05-27 10:51:58', 200, 100, 1, 'B8', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(284, '2019-05-27 10:51:58', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(285, '2019-05-27 10:51:58', 200, 100, 1, 'B9', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(286, '2019-05-27 10:51:58', 200, 100, 1, 'B10', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(287, '2019-05-27 10:51:58', 200, 100, 1, 'B11', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(288, '2019-05-27 10:51:58', 200, 100, 1, 'B12', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(289, '2019-05-27 10:51:58', 200, 100, 1, 'B13', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(290, '2019-05-27 10:51:58', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(291, '2019-05-27 10:51:58', 200, 100, 1, 'B14', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(292, '2019-05-27 10:51:58', 200, 100, 1, 'B15', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(293, '2019-05-27 10:51:58', 200, 100, 1, 'B16', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(294, '2019-05-27 10:51:58', 200, 100, 1, 'B17', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(295, '2019-05-27 10:51:58', 200, 100, 1, 'B18', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(296, '2019-05-27 10:51:58', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', 0, 0, NULL),
(297, '2019-05-27 10:51:58', 200, 100, 1, 'B19', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(298, '2019-05-27 10:51:59', 200, 100, 1, 'B20', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(299, '2019-05-27 10:51:59', 200, 100, 1, 'B21', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(300, '2019-05-27 10:51:59', 200, 100, 1, 'B22', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(301, '2019-05-27 10:51:59', 200, 100, 1, 'B23', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(302, '2019-05-27 10:51:59', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', 0, 0, NULL),
(303, '2019-05-27 10:51:59', 200, 100, 1, 'B24', 'String Volt', NULL, 'String Volt Maximum', 0, 0, NULL),
(304, '2019-05-29 10:28:19', 200, 100, 1, 'B1', 'IR', NULL, 'Disconnected', 0, 0, NULL),
(305, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(306, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'Cell Volt', 5.60, 'Cell Volt Maximum', 0, 0, NULL),
(307, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', 0, 0, NULL),
(308, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'IR', NULL, 'IR Over Limit', 0, 0, NULL),
(309, '2019-05-29 10:28:21', 200, 100, 1, 'B1', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(310, '2019-05-29 10:28:21', 200, 100, 1, 'B1', 'Cell Volt', 6.50, 'Cell Volt Maximum', 0, 0, NULL),
(311, '2019-05-29 10:28:21', 200, 100, 1, 'B1', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', 0, 0, NULL),
(312, '2019-05-29 10:28:21', 200, 100, 1, 'B1', 'IR', 6.50, 'IR Over Limit', 0, 0, NULL),
(313, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(314, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'Cell Volt', 8.20, 'Cell Volt Maximum', 0, 0, NULL),
(315, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(316, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'IR', 8.20, 'IR Over Limit', 0, 0, NULL),
(317, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(318, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'Cell Volt', 7.80, 'Cell Volt Maximum', 0, 0, NULL),
(319, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', 0, 0, NULL),
(320, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'IR', 7.80, 'IR Over Limit', 0, 0, NULL),
(321, '2019-05-29 10:28:22', 200, 100, 1, 'B4', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(322, '2019-05-29 10:28:22', 200, 100, 1, 'B4', 'Cell Volt', 40.00, 'Cell Volt Maximum', 0, 0, NULL),
(323, '2019-05-29 10:28:22', 200, 100, 1, 'B4', 'IR', 40.00, 'IR Over Limit', 0, 0, NULL),
(324, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(325, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'Cell Volt', 5.60, 'Cell Volt Maximum', 0, 0, NULL),
(326, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', 0, 0, NULL),
(327, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'IR', 5.60, 'IR Over Limit', 0, 0, NULL),
(328, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(329, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'Cell Volt', 6.50, 'Cell Volt Maximum', 0, 0, NULL),
(330, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', 0, 0, NULL),
(331, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'IR', 6.50, 'IR Over Limit', 0, 0, NULL),
(332, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(333, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'Cell Volt', 8.20, 'Cell Volt Maximum', 0, 0, NULL),
(334, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(335, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'IR', 8.20, 'IR Over Limit', 0, 0, NULL),
(336, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(337, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'Cell Volt', 7.80, 'Cell Volt Maximum', 0, 0, NULL),
(338, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', 0, 0, NULL),
(339, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'IR', 7.80, 'IR Over Limit', 0, 0, NULL),
(340, '2019-05-29 10:28:23', 200, 100, 1, 'B9', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(341, '2019-05-29 10:28:23', 200, 100, 1, 'B9', 'Cell Volt', 40.00, 'Cell Volt Maximum', 0, 0, NULL),
(342, '2019-05-29 10:28:23', 200, 100, 1, 'B9', 'IR', 40.00, 'IR Over Limit', 0, 0, NULL),
(343, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(344, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'Cell Volt', 5.60, 'Cell Volt Maximum', 0, 0, NULL),
(345, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', 0, 0, NULL),
(346, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'IR', 5.60, 'IR Over Limit', 0, 0, NULL),
(347, '2019-05-29 10:28:23', 200, 100, 1, 'B11', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(348, '2019-05-29 10:28:23', 200, 100, 1, 'B11', 'Cell Volt', 6.50, 'Cell Volt Maximum', 0, 0, NULL),
(349, '2019-05-29 10:28:24', 200, 100, 1, 'B11', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', 0, 0, NULL),
(350, '2019-05-29 10:28:24', 200, 100, 1, 'B11', 'IR', 6.50, 'IR Over Limit', 0, 0, NULL),
(351, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(352, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'Cell Volt', 8.20, 'Cell Volt Maximum', 0, 0, NULL),
(353, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(354, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'IR', 8.20, 'IR Over Limit', 0, 0, NULL),
(355, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(356, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'Cell Volt', 7.80, 'Cell Volt Maximum', 0, 0, NULL),
(357, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', 0, 0, NULL),
(358, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'IR', 7.80, 'IR Over Limit', 0, 0, NULL),
(359, '2019-05-29 10:28:24', 200, 100, 1, 'B14', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(360, '2019-05-29 10:28:24', 200, 100, 1, 'B14', 'Cell Volt', 40.00, 'Cell Volt Maximum', 0, 0, NULL),
(361, '2019-05-29 10:28:24', 200, 100, 1, 'B14', 'IR', 40.00, 'IR Over Limit', 0, 0, NULL),
(362, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(363, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'Cell Volt', 5.60, 'Cell Volt Maximum', 0, 0, NULL),
(364, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', 0, 0, NULL),
(365, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'IR', 5.60, 'IR Over Limit', 0, 0, NULL),
(366, '2019-05-29 10:28:24', 200, 100, 1, 'B16', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(367, '2019-05-29 10:28:24', 200, 100, 1, 'B16', 'Cell Volt', 6.50, 'Cell Volt Maximum', 0, 0, NULL),
(368, '2019-05-29 10:28:24', 200, 100, 1, 'B16', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', 0, 0, NULL),
(369, '2019-05-29 10:28:25', 200, 100, 1, 'B16', 'IR', 6.50, 'IR Over Limit', 0, 0, NULL),
(370, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(371, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'Cell Volt', 8.20, 'Cell Volt Maximum', 0, 0, NULL),
(372, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(373, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'IR', 8.20, 'IR Over Limit', 0, 0, NULL),
(374, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(375, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'Cell Volt', 7.80, 'Cell Volt Maximum', 0, 0, NULL),
(376, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', 0, 0, NULL),
(377, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'IR', 7.80, 'IR Over Limit', 0, 0, NULL),
(378, '2019-05-29 10:28:25', 200, 100, 1, 'B19', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(379, '2019-05-29 10:28:25', 200, 100, 1, 'B19', 'Cell Volt', 40.00, 'Cell Volt Maximum', 0, 0, NULL),
(380, '2019-05-29 10:28:25', 200, 100, 1, 'B19', 'IR', 40.00, 'IR Over Limit', 0, 0, NULL),
(381, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(382, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'Cell Volt', 5.60, 'Cell Volt Maximum', 0, 0, NULL),
(383, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', 0, 0, NULL),
(384, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'IR', 5.60, 'IR Over Limit', 0, 0, NULL),
(385, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(386, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'Cell Volt', 6.50, 'Cell Volt Maximum', 0, 0, NULL),
(387, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', 0, 0, NULL),
(388, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'IR', 6.50, 'IR Over Limit', 0, 0, NULL),
(389, '2019-05-29 10:28:25', 200, 100, 1, 'B22', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(390, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'Cell Volt', 8.20, 'Cell Volt Maximum', 0, 0, NULL),
(391, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', 0, 0, NULL),
(392, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'IR', 8.20, 'IR Over Limit', 0, 0, NULL),
(393, '2019-05-29 10:28:26', 200, 100, 1, 'B23', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL),
(394, '2019-05-29 10:28:26', 200, 100, 1, 'B23', 'Cell Temperature', 8.00, 'Cell Temperature Minimum', 0, 0, NULL),
(395, '2019-05-29 10:28:26', 200, 100, 1, 'B23', 'IR', 9.00, 'IR Over Limit', 0, 0, NULL),
(396, '2019-05-29 10:28:26', 200, 100, 1, 'B24', 'String Volt', 40.00, 'String Volt Minimum', 0, 0, NULL);

--
-- Triggers `alarm`
--
DELIMITER $$
CREATE TRIGGER `alarm_status_insert` AFTER INSERT ON `alarm` FOR EACH ROW BEGIN

SET @check_data_exists = (SELECT `device_id` FROM alarm_status WHERE `device_id` = NEW.device_id AND site_id=NEW.site_id AND bank = NEW.bank AND `node` = NEW.node AND parameter = NEW.parameter AND inactive_time IS NULL ORDER BY id DESC LIMIT 1);

IF @check_data_exists IS NULL THEN

INSERT INTO alarm_status(created_time, device_id, site_id, bank, node, parameter, value, remarks, inactive_time) VALUES(NOW(), NEW.device_id, NEW.site_id, NEW.bank, NEW.node, NEW.parameter, NEW.value, NEW.remarks, NULL);

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `alarm_status_update` AFTER UPDATE ON `alarm` FOR EACH ROW BEGIN

SET @check_data_exists = (SELECT `device_id` FROM alarm_status WHERE `device_id` = NEW.device_id AND site_id=NEW.site_id AND bank = NEW.bank AND `node` = NEW.node AND parameter = NEW.parameter AND inactive_time IS NULL ORDER BY id DESC LIMIT 1);

IF @check_data_exists IS NOT NULL THEN

UPDATE alarm_status SET inactive_time = NOW() WHERE `device_id` = NEW.device_id AND site_id=NEW.site_id AND bank = NEW.bank AND `node` = NEW.node AND parameter = NEW.parameter AND inactive_time IS NULL ORDER BY id DESC LIMIT 1;

END IF;  

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `alarm_status`
--

CREATE TABLE `alarm_status` (
  `id` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` int(250) DEFAULT NULL,
  `site_id` int(20) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `node` varchar(100) DEFAULT NULL,
  `parameter` varchar(100) DEFAULT NULL,
  `value` float(18,2) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `inactive_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alarm_status`
--

INSERT INTO `alarm_status` (`id`, `created_time`, `device_id`, `site_id`, `bank`, `node`, `parameter`, `value`, `remarks`, `inactive_time`) VALUES
(1, '2019-05-26 12:02:55', 200, 100, 1, 'B0', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(2, '2019-05-26 12:02:55', 200, 100, 1, 'B1', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(3, '2019-05-26 12:02:55', 200, 100, 1, 'B1', 'Cell Volt', 6.20, 'Cell Volt Maximum', NULL),
(4, '2019-05-26 12:02:55', 200, 100, 1, 'B2', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(5, '2019-05-26 12:02:55', 200, 100, 1, 'B3', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(6, '2019-05-26 12:02:55', 200, 100, 1, 'B4', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(7, '2019-05-26 12:02:55', 200, 100, 1, 'B5', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(8, '2019-05-26 12:02:55', 200, 100, 1, 'B6', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(9, '2019-05-26 12:02:55', 200, 100, 1, 'B7', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(10, '2019-05-26 12:02:55', 200, 100, 1, 'B7', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', NULL),
(11, '2019-05-26 12:02:55', 200, 100, 1, 'B8', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(12, '2019-05-26 12:02:55', 200, 100, 1, 'B9', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(13, '2019-05-26 12:02:55', 200, 100, 1, 'B10', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(14, '2019-05-26 12:02:55', 200, 100, 1, 'B11', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(15, '2019-05-26 12:02:55', 200, 100, 1, 'B12', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(16, '2019-05-26 12:02:55', 200, 100, 1, 'B13', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(17, '2019-05-26 12:02:55', 200, 100, 1, 'B14', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(18, '2019-05-26 12:02:56', 200, 100, 1, 'B15', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(19, '2019-05-26 12:02:56', 200, 100, 1, 'B16', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(20, '2019-05-26 12:02:56', 200, 100, 1, 'B17', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(21, '2019-05-26 12:02:56', 200, 100, 1, 'B18', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(22, '2019-05-26 12:02:56', 200, 100, 1, 'B19', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(23, '2019-05-26 12:02:56', 200, 100, 1, 'B20', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(24, '2019-05-26 12:02:56', 200, 100, 1, 'B21', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(25, '2019-05-26 12:02:56', 200, 100, 1, 'B22', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(26, '2019-05-26 12:02:56', 200, 100, 1, 'B23', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(27, '2019-05-26 12:02:56', 200, 100, 1, 'B24', 'String Volt', 2.40, 'String Volt Minimum', NULL),
(28, '2019-05-26 12:06:26', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', '2019-05-26 12:12:04'),
(29, '2019-05-26 12:06:26', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', '2019-05-26 12:12:04'),
(30, '2019-05-26 12:06:26', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', '2019-05-26 12:12:05'),
(31, '2019-05-26 12:06:26', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', '2019-05-26 12:12:05'),
(32, '2019-05-26 12:06:27', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', '2019-05-26 12:12:05'),
(33, '2019-05-26 12:06:27', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', '2019-05-26 12:12:05'),
(34, '2019-05-27 10:47:40', 200, 100, 1, 'B0', 'IR', 0.08, 'IR Over Limit', NULL),
(35, '2019-05-27 10:47:40', 200, 100, 1, 'B3', 'IR', 0.08, 'IR Over Limit', NULL),
(36, '2019-05-27 10:47:40', 200, 100, 1, 'B8', 'IR', 0.08, 'IR Over Limit', NULL),
(37, '2019-05-27 10:47:41', 200, 100, 1, 'B13', 'IR', 0.08, 'IR Over Limit', NULL),
(38, '2019-05-27 10:47:41', 200, 100, 1, 'B18', 'IR', 0.08, 'IR Over Limit', NULL),
(39, '2019-05-27 10:47:41', 200, 100, 1, 'B23', 'IR', 0.09, 'IR Over Limit', NULL),
(40, '2019-05-27 10:50:54', 200, 100, 1, 'B0', 'Volt', NULL, 'Short Circuit', '2019-05-29 10:28:18'),
(41, '2019-05-27 10:51:54', 200, 100, 1, 'B0', 'Amp', NULL, 'Open Circuit', '2019-05-29 10:28:19'),
(42, '2019-05-29 10:28:19', 200, 100, 1, 'B1', 'IR', NULL, 'Disconnected', NULL),
(43, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'Cell Volt', 5.60, 'Cell Volt Maximum', NULL),
(44, '2019-05-29 10:28:21', 200, 100, 1, 'B0', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', NULL),
(45, '2019-05-29 10:28:21', 200, 100, 1, 'B1', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', NULL),
(46, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'Cell Volt', 8.20, 'Cell Volt Maximum', NULL),
(47, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', NULL),
(48, '2019-05-29 10:28:21', 200, 100, 1, 'B2', 'IR', 8.20, 'IR Over Limit', NULL),
(49, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'Cell Volt', 7.80, 'Cell Volt Maximum', NULL),
(50, '2019-05-29 10:28:22', 200, 100, 1, 'B3', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', NULL),
(51, '2019-05-29 10:28:22', 200, 100, 1, 'B4', 'Cell Volt', 40.00, 'Cell Volt Maximum', NULL),
(52, '2019-05-29 10:28:22', 200, 100, 1, 'B4', 'IR', 40.00, 'IR Over Limit', NULL),
(53, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'Cell Volt', 5.60, 'Cell Volt Maximum', NULL),
(54, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', NULL),
(55, '2019-05-29 10:28:22', 200, 100, 1, 'B5', 'IR', 5.60, 'IR Over Limit', NULL),
(56, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'Cell Volt', 6.50, 'Cell Volt Maximum', NULL),
(57, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', NULL),
(58, '2019-05-29 10:28:23', 200, 100, 1, 'B6', 'IR', 6.50, 'IR Over Limit', NULL),
(59, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'Cell Volt', 8.20, 'Cell Volt Maximum', NULL),
(60, '2019-05-29 10:28:23', 200, 100, 1, 'B7', 'IR', 8.20, 'IR Over Limit', NULL),
(61, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'Cell Volt', 7.80, 'Cell Volt Maximum', NULL),
(62, '2019-05-29 10:28:23', 200, 100, 1, 'B8', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', NULL),
(63, '2019-05-29 10:28:23', 200, 100, 1, 'B9', 'Cell Volt', 40.00, 'Cell Volt Maximum', NULL),
(64, '2019-05-29 10:28:23', 200, 100, 1, 'B9', 'IR', 40.00, 'IR Over Limit', NULL),
(65, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'Cell Volt', 5.60, 'Cell Volt Maximum', NULL),
(66, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', NULL),
(67, '2019-05-29 10:28:23', 200, 100, 1, 'B10', 'IR', 5.60, 'IR Over Limit', NULL),
(68, '2019-05-29 10:28:23', 200, 100, 1, 'B11', 'Cell Volt', 6.50, 'Cell Volt Maximum', NULL),
(69, '2019-05-29 10:28:24', 200, 100, 1, 'B11', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', NULL),
(70, '2019-05-29 10:28:24', 200, 100, 1, 'B11', 'IR', 6.50, 'IR Over Limit', NULL),
(71, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'Cell Volt', 8.20, 'Cell Volt Maximum', NULL),
(72, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', NULL),
(73, '2019-05-29 10:28:24', 200, 100, 1, 'B12', 'IR', 8.20, 'IR Over Limit', NULL),
(74, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'Cell Volt', 7.80, 'Cell Volt Maximum', NULL),
(75, '2019-05-29 10:28:24', 200, 100, 1, 'B13', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', NULL),
(76, '2019-05-29 10:28:24', 200, 100, 1, 'B14', 'Cell Volt', 40.00, 'Cell Volt Maximum', NULL),
(77, '2019-05-29 10:28:24', 200, 100, 1, 'B14', 'IR', 40.00, 'IR Over Limit', NULL),
(78, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'Cell Volt', 5.60, 'Cell Volt Maximum', NULL),
(79, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', NULL),
(80, '2019-05-29 10:28:24', 200, 100, 1, 'B15', 'IR', 5.60, 'IR Over Limit', NULL),
(81, '2019-05-29 10:28:24', 200, 100, 1, 'B16', 'Cell Volt', 6.50, 'Cell Volt Maximum', NULL),
(82, '2019-05-29 10:28:24', 200, 100, 1, 'B16', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', NULL),
(83, '2019-05-29 10:28:25', 200, 100, 1, 'B16', 'IR', 6.50, 'IR Over Limit', NULL),
(84, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'Cell Volt', 8.20, 'Cell Volt Maximum', NULL),
(85, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', NULL),
(86, '2019-05-29 10:28:25', 200, 100, 1, 'B17', 'IR', 8.20, 'IR Over Limit', NULL),
(87, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'Cell Volt', 7.80, 'Cell Volt Maximum', NULL),
(88, '2019-05-29 10:28:25', 200, 100, 1, 'B18', 'Cell Temperature', 7.80, 'Cell Temperature Minimum', NULL),
(89, '2019-05-29 10:28:25', 200, 100, 1, 'B19', 'Cell Volt', 40.00, 'Cell Volt Maximum', NULL),
(90, '2019-05-29 10:28:25', 200, 100, 1, 'B19', 'IR', 40.00, 'IR Over Limit', NULL),
(91, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'Cell Volt', 5.60, 'Cell Volt Maximum', NULL),
(92, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'Cell Temperature', 5.60, 'Cell Temperature Minimum', NULL),
(93, '2019-05-29 10:28:25', 200, 100, 1, 'B20', 'IR', 5.60, 'IR Over Limit', NULL),
(94, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'Cell Volt', 6.50, 'Cell Volt Maximum', NULL),
(95, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'Cell Temperature', 6.50, 'Cell Temperature Minimum', NULL),
(96, '2019-05-29 10:28:25', 200, 100, 1, 'B21', 'IR', 6.50, 'IR Over Limit', NULL),
(97, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'Cell Volt', 8.20, 'Cell Volt Maximum', NULL),
(98, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'Cell Temperature', 8.20, 'Cell Temperature Minimum', NULL),
(99, '2019-05-29 10:28:26', 200, 100, 1, 'B22', 'IR', 8.20, 'IR Over Limit', NULL),
(100, '2019-05-29 10:28:26', 200, 100, 1, 'B23', 'Cell Temperature', 8.00, 'Cell Temperature Minimum', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `Ip_address` varchar(45) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `Ip_address`, `timestamp`, `data`) VALUES
('mtt2pvu3520k7aemui63ik0kmebvaj63', '192.168.1.53', 1553402334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430323333343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('v8ejgnboqrv08tp7n6s5sa98iopnf8qm', '192.168.1.53', 1553403251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430333235313b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('rp7pcv093u31mj8p73ovccfi1ksdp8pj', '192.168.1.53', 1553403685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430333638353b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('skhf9obu0evnpht97qi68323tmpkmi3f', '192.168.1.53', 1553404247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430343234373b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('903tvl8ubka03vqabvfmscar40ftj6f4', '192.168.1.53', 1553405024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430353032343b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('v6qlc4qmfl67ul9jckigtb1tnr8lc5vc', '192.168.1.53', 1553405561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430353536313b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('87fu1n76cvd3sh0ocjf0i5dgtv8gr9gg', '192.168.1.53', 1553406403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430363430333b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('53rca9fio5tro5fnj44e7jf8vvr5hmap', '192.168.1.53', 1553406904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430363930343b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('6n5dof6o8879h2n40h89ljmqdvupsq49', '192.168.1.53', 1553407567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430373536373b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('qh39am9jem0bpeurr7j5kar1dqcog0rq', '192.168.1.53', 1553408174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430383137343b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('q7upvv39puopa40gg3e9s5oum62ptt8j', '192.168.1.53', 1553407868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430373836383b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('m3vdtk9at8vqjp58c31d67o6svfd8foe', '192.168.1.53', 1553408478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430383437383b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('ogcork06t5l89un74kengvul9l2hc053', '192.168.1.53', 1553409052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430393035323b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('7h1pkgmrcphid3vlqtf5ua0jmfdr1b4p', '192.168.1.53', 1553409386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430393338363b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('j4ovbqcvliol7tdrskraq803q4vvortg', '192.168.1.53', 1553409728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333430393732383b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('6v9k0rqkvaaio3juknb22kortrrptocb', '192.168.1.53', 1553410030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431303033303b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('g6754oos7odct8qm2q21ph410r959sp6', '192.168.1.53', 1553415340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431353334303b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('brdio9s3v3bnfp22im7vh6m608rnotct', '192.168.1.53', 1553415774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431353737343b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('gjrn4hfug9btoqilfb2qsiol0a6oa3r3', '192.168.1.53', 1553416193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431363139333b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('5r3cna38a7e0mtlovuvkrn9i69mtsefd', '192.168.1.53', 1553417363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431373336333b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('kf1bh7mau0014fe70aspijpq962t52jt', '192.168.1.53', 1553417929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431373932393b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('7nba5uhsg887hp65su1tkk0g88isnuma', '192.168.1.53', 1553418287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431383238373b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('p8u1t168blg3ucpioffct5cf2l4tml72', '192.168.1.53', 1553418670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431383637303b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('ua20un9ftbkkf2ghqrn3j1qd3glf50ij', '192.168.1.53', 1553418985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431383938353b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('rjao9s1fp5lqr661pjnoc7cnefnj0b69', '192.168.1.53', 1553419357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431393335373b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('9sgklthbt6bspg0bv8j8ndtfairc172u', '192.168.1.53', 1553419693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431393639333b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('iu36apggo4kcmf0itpid4v3k27hi8puq', '192.168.1.53', 1553419998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333431393939383b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('1blv6vfu7bdc6vh27svss9m9a0k4h7t0', '192.168.1.53', 1553420311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432303331313b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('s5ifokbe7j56fd9jcffu1q2jtuq8itu9', '192.168.1.53', 1553420922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432303932323b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('f5pql0leo8ebfuk01knq18p962uhn3sh', '192.168.1.53', 1553424120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432343132303b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('8okpsl64aons9bprrcqrt4vkc727mkt5', '192.168.1.53', 1553424612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432343631323b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('5blp4unnlf0dbenl8rlsudhshu1u84gj', '192.168.1.53', 1553425529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432353532393b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('td687gkkobokp7mtalei6vfp3s0i9qar', '192.168.1.53', 1553426443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432363434333b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('c7i998niadfqc4c1decumbpdgicogimf', '192.168.1.53', 1553426779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432363737393b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('tmvh9nqqatls202qh8qh11eakgabbvp5', '192.168.1.53', 1553427748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432373734383b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('4o34su3vt39m00a57vvhv0k062cjoghl', '192.168.1.32', 1553426908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432363839383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('vhcdo4sbgses691getr5mdrn4e5j46an', '192.168.1.53', 1553428069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432383036393b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('sutkul2q6qkvi5hutnbu6l1dibhaf2ds', '192.168.1.53', 1553428752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432383735323b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b);
INSERT INTO `ci_sessions` (`id`, `Ip_address`, `timestamp`, `data`) VALUES
('jqr0295insmg882265up5ujs6mqvhl5s', '192.168.1.53', 1553428974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333432383735323b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('ihbrfcj0uo1c3k4urr3ahqs742bnkqno', '192.168.1.53', 1553491284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333439313238343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('pqcp9odv9svgu8lj87t8vl5ke9178crv', '192.168.1.53', 1553495889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333439353838393b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('v69mdlijir3frd9bcs82460a1r4445c5', '192.168.1.53', 1553503067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530333036373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('20b3511ej04kqlcmv8pjj0gfrnqs34eq', '192.168.1.53', 1553503532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530333533323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('hev448qpt6par2prfk0v9slu4o9tqojg', '192.168.1.53', 1553503910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530333931303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('kfidqu5bbm7jh4vu4h7r57d2rhi8t2fm', '192.168.1.53', 1553507994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530373939343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('7go0mo535v9fpdc4i61cdfe126mh5njn', '192.168.1.53', 1553509373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530393337333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('g3gebp50d45ge5joqmcg9nhv217bcve5', '192.168.1.53', 1553509684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333530393638343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('5hjjkbnnd8rlpf1b6f1sh5celcmblavi', '192.168.1.53', 1553511915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333531313931353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('g2lltc5mk55te20igct89ovdp8mcvtu8', '192.168.1.53', 1553512882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333531323838323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('q9epvqajco1ouet2gijudd98c3fk7jh8', '192.168.1.53', 1553514462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333531343436323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('h44lj5ltf2m9qlapgptjfe1gf7hbd0i9', '192.168.1.53', 1553516716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333531363731363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('1ps7vljfk93h2o4qfa3ttjvocel08rh8', '192.168.1.53', 1553516717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333531363731363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('be2eepkb4t3n7v0n9ma0hogqrqarr7ta', '192.168.1.53', 1553665128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333636353132373b),
('9fli4vei0phera6lidsa172pajjmm0l5', '192.168.1.53', 1553769028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333736383838343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('p8totonks1e2kjbkg3m5n7n9k8r61kjh', '192.168.1.53', 1553769295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333736393037313b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('49ueer6r9ku4564oducibeirodauaa21', '192.168.1.53', 1553769414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333736393431343b6d61696e5f6d656e755f69647c613a31313a7b693a303b733a313a2232223b693a313b733a313a2233223b693a323b733a313a2234223b693a333b733a313a2235223b693a343b733a313a2236223b693a353b733a313a2237223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223130223b693a393b733a323a223131223b693a31303b733a323a223132223b7d7375625f6d656e755f69647c613a32373a7b693a303b733a323a223136223b693a313b733a323a223137223b693a323b733a323a223138223b693a333b733a323a223139223b693a343b733a323a223230223b693a353b733a323a223231223b693a363b733a323a223232223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223433223b693a31353b733a323a223330223b693a31363b733a323a223331223b693a31373b733a323a223332223b693a31383b733a323a223333223b693a31393b733a323a223334223b693a32303b733a323a223335223b693a32313b733a323a223336223b693a32323b733a323a223337223b693a32333b733a323a223338223b693a32343b733a323a223339223b693a32353b733a323a223430223b693a32363b733a323a223431223b7d),
('i8p1qt8f9io0a2o79hueb819anu46mqt', '192.168.1.53', 1557122842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132323834323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('f5govdq170bnrm84jbnje9qddktrg7ab', '::1', 1557122136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132323133353b),
('26okdp6astbk9gp6qc8g8b88sndotlhe', '192.168.1.53', 1557123270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132333237303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('ppq0bj23ef11ovurnpps5b3n7bd3571n', '192.168.1.53', 1557123271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132333237303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('f2ci47kf8uiusn87of9ec2ou2ham8j78', '192.168.1.53', 1557125461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132353436313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('6efnsp9kn3bkf4kf6bl57fvmsa9ar8ns', '192.168.1.53', 1557125874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132353837343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('uvvqej882k0jdftu33jovb7bhjqaqr07', '192.168.1.53', 1557127840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373132373834303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('a8lb7uetb8r3f64g71r2cidkb3ct9dt4', '192.168.1.53', 1557131783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373133313738333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('tqf048gtbkerl97ntrhtar6rqimp9jq6', '192.168.1.53', 1557131787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373133313738333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('8pd5dl82dmorfb3kq0tujrh0446hnu1n', '192.168.1.53', 1557200959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230303935393b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('uplat7m2n3thprbporvn1eapphd21vga', '192.168.1.53', 1557203767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230333736373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d),
('1ddfcghmpvm7n53b3tgj4vlg2fg3egi9', '192.168.1.53', 1557204492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230343439323b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('18on010m8kvf7fqvg2ip716q79j5eaa4', '192.168.1.53', 1557205808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230353830383b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('32gg1oq711g944qcfdmdvpcoo1v6duc6', '192.168.1.53', 1557206603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230363630333b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('m43hvocjtgk9asdfihjs6m4u00ed5mab', '192.168.1.53', 1557206906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230363930363b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('5ngallrqo7rsa1m82e9t7qm1al35o2kn', '192.168.1.53', 1557206906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373230363930363b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('39j1jotgplcadh5ifmh8k0d48boj9e90', '192.168.1.53', 1557221255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373232313235353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('fth52v9sofu9tap57dfk3m7eojnt08ek', '192.168.1.53', 1557221294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373232313235353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8d5592339967l1fo341k8sbi0t15mbk3', '192.168.1.53', 1557295058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373239353035383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('lja8j8b9b0967m8elk2qle4fod5amunc', '192.168.1.53', 1557295374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373239353337343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('tpg25a5dhf4mpbn7jfj836isc1brrcl6', '192.168.1.53', 1557296251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373239363235313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('r3drrp21ls3tl59v8jghr4964stc4scv', '192.168.1.53', 1557296594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373239363539343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('0q8o9bgjv9g1tfui7pupb8jklkig7h5p', '192.168.1.53', 1557298794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373239383739343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('g91a769idraqaorhl31dl98a8m27e85d', '192.168.1.53', 1557303996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330333939363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('v8vmcnbmkoi3m5t91hnsjuff1vp67c4k', '192.168.1.53', 1557304575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330343537353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('61n57fnek6554kulrsts8rjt3sc06ers', '192.168.1.53', 1557305801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330353830313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('3fjfs6ah36rpfvba6b5gn72rf7je7c03', '192.168.1.53', 1557306116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330363131363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('0fsc1243s5igucrskf3ts944f8jvmqnm', '192.168.1.53', 1557307036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330373033363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('kodg5ti560hr4mu9b5c3of8slvv3r91r', '192.168.1.53', 1557307342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330373334323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('53fgroie8293tmvdu6eo68pnc2ka0vc7', '192.168.1.53', 1557307676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330373637363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8hhbdv7v5rh3i93rnli4qn7lv9cketes', '192.168.1.53', 1557309543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330393534333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('o8ub9ilg57kr8kbtqp38t8jahnbqqfgb', '192.168.1.53', 1557309831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373330393534333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('rb6m0uaoqphs5cvbclpfnnra8g3mmd30', '192.168.1.53', 1557375656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337353635363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('qlr9ouvl92vdttokcju0bv3ih6cl9kkv', '192.168.1.53', 1557376231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337363233313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('qm70ho1rs9419rrk48pat1pgaj0g7qba', '192.168.1.53', 1557376564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337363536343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('dn11ri4sto4dp7ci58fbt3e8u6ufebq9', '192.168.1.53', 1557376872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337363837323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d);
INSERT INTO `ci_sessions` (`id`, `Ip_address`, `timestamp`, `data`) VALUES
('jg4pguh7j0sr0c77rsb019fa1rro1lc4', '192.168.1.53', 1557377533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337373533333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('ppnmn3jqjqcjtrko57elcd0qtha7crs1', '192.168.1.53', 1557378007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337383030373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('ugvi4g2mk7gvv9st0n0ratvih4lfbaai', '192.168.1.53', 1557378371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337383337313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('t898fdasq8lihk88ig3admk6s321njsv', '192.168.1.53', 1557378673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373337383637333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('s3ekemqtlqgv9m94qathmmqg1e6fq37g', '192.168.1.53', 1557380398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373338303339383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('4qcvqscvmedsjsqbjp5skl1g9i7phvmn', '192.168.1.53', 1557383843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373338333834333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('u1to48ak9n1ddld0o02dfa59c96ioitb', '192.168.1.53', 1557384270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373338343237303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('4sqaud52m74i8e09t50blb45e94o9l93', '192.168.1.53', 1557384440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373338343237303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('hsq0po6j29cbfrtfe0a08psncl4ln93v', '192.168.1.53', 1557568358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373536383335383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('3usfd8t7udrc16ebbgns210pcdqevte0', '192.168.1.53', 1557569153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373536393135333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('cc9m8e58kt5jg5g10sgqu6gqcel3e2ss', '192.168.1.53', 1557569316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373536393135333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('p7ksjmsldgrkcc498krhd6p2komi3nrf', '192.168.1.53', 1557633475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633333437353b),
('rjb7qo4cfjqbmrsi067b98h1jpcq3gc3', '192.168.1.53', 1557634339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633343333393b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('20hl6rmcnjfd75c2v7e39muj8jh9rcpr', '192.168.1.53', 1557634657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633343635373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('hbth8b55m0v5tro57mb1mnmc3v4t1a27', '192.168.1.53', 1557635004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633353030343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('4vrpsfaoftb7he98ie46d2vtulv79i6t', '192.168.1.53', 1557635672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633353637323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('enh6lu2d61buflihnim73q5al1j50q9j', '192.168.1.53', 1557636008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633363030383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('0tr22hpu4ophnebcugo7bn545v0it6hj', '192.168.1.53', 1557636406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633363430363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('3kfcccq7ijngnpnjlq3c6ifpg3596pf4', '192.168.1.53', 1557636467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373633363430363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('u340idh5mda3t6bd4d5ca2d5kpiaiob7', '192.168.1.53', 1557651788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635313738383b),
('fdjkuddmnnpmria9taem59g42ipi6ur0', '192.168.1.53', 1557651905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635313738383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('v1j2rm6ircu5frncd6jts8pfpjgpjdoh', '192.168.1.53', 1557652426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635323432363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d6d6573736167657c733a32393a224d656e752064656c657465207375636365737366756c6c7920646f6e65223b),
('mphk2a0er2qtv7akemlsgitnu1ev1ok0', '192.168.1.53', 1557654000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635343030303b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('a5s9df8bn6bf8opgqm80cu1d238chpao', '192.168.1.53', 1557654874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635343837343b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('u9etvjv4ub9o2h9263l5hfbd1drlrrfb', '192.168.1.53', 1557655216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635353231363b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a31323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('lnn9k066cfc7c0tmo6hmsf3kka3vab2j', '192.168.1.53', 1557655496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373635353231363b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('vln7hjtque5aggs5g0l8d0qoalq7afga', '192.168.1.53', 1557720133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373731393932353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('30s2l55nlg759rlml07l5upu7f65r0n4', '192.168.1.53', 1557720196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732303136363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('b3c8d2g00erap4ctkfmkbiftarepmju2', '192.168.1.53', 1557720419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732303333343b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('6vhgbbgb6ikqmapvaer87daagc2824qp', '192.168.1.53', 1557720803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732303830333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('p3mo5q3kd76ibnq7cvkqk7f9inl779nd', '192.168.1.53', 1557721921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732313932313b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('8rlokfuvb91gapvlsdii6cjs0eorm23m', '::1', 1557721873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732313837333b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('j9qkggh4ge9os90vv7o8dhh3gp1enbvb', '::1', 1557721902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732313837333b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('jqccp21in4u6aav675o0rhp91it3hn18', '192.168.1.53', 1557722245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732323234353b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('d21dt9geo9ghe1fpdg5ccd8qf1okrv1i', '192.168.1.53', 1557722546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732323534363b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('i2b9ia5ug0lfrldmod9aas6rmv8btk6u', '192.168.1.53', 1557723001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732333030313b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('a97v3ki6cq8r69s33blb7jmqs5ue3pbp', '192.168.1.53', 1557723303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732333330333b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('3sbme53j6sm9duin9l1k61m3b9ob6ck5', '192.168.1.53', 1557723535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732333330333b6d61696e5f6d656e755f69647c613a31323a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b693a373b733a323a223233223b693a383b733a323a223234223b693a393b733a323a223235223b693a31303b733a323a223236223b693a31313b733a323a223237223b7d7375625f6d656e755f69647c613a32323a7b693a303b733a313a2232223b693a313b733a313a2236223b693a323b733a313a2237223b693a333b733a313a2239223b693a343b733a323a223130223b693a353b733a323a223132223b693a363b733a323a223133223b693a373b733a323a223135223b693a383b733a323a223136223b693a393b733a323a223138223b693a31303b733a323a223139223b693a31313b733a323a223231223b693a31323b733a323a223238223b693a31333b733a323a223239223b693a31343b733a323a223330223b693a31353b733a323a223331223b693a31363b733a323a223332223b693a31373b733a323a223333223b693a31383b733a323a223334223b693a31393b733a323a223335223b693a32303b733a323a223336223b693a32313b733a323a223337223b7d),
('olnc3of8fdpbe1r6vqsvbpb81rrfmjvu', '192.168.1.53', 1557724031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732343030393b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('17gbgcrmgh7f0l6416f7bdd0l8retb8e', '192.168.1.53', 1557724901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732343930303b),
('gt7vbm2iq2l085giekengngctdc9oq2m', '192.168.1.53', 1557724955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732343935353b),
('n8pra91op2rm770gevh7p9p10cka9qn0', '192.168.1.53', 1557725173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732353137323b),
('n8fl32agpesbokaablkt7otpk076o6ea', '192.168.1.53', 1557729897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373732393839373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('oo2qhikuh1cfk47a5ueh4fg9mann4j8g', '192.168.1.53', 1557730238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373733303233383b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('7dtu4drudlandfnm0q3v2ge99gk82cq1', '192.168.1.53', 1557730323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535373733303233383b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('q2v89vhm230ham0tcdh1s124dofikfb7', '192.168.1.53', 1558764122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383736343132323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('oeqpknrpa30sa3hauio1dki3lb3so0f6', '192.168.1.53', 1558764444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383736343434343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8ri5c6dumi2lqmagisdoe81rpricfu2s', '192.168.1.53', 1558764653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383736343434343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('1nroiekt7l7knnol7vtg6o3ni4ecu2kd', '192.168.1.53', 1558778294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383737383239343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8jrmdai63qmpmmrnrjoimif0av7a9ie8', '192.168.1.53', 1558778571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383737383239343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('rvv9lkskg5h2n7hrtuegipovjki9c9v2', '192.168.1.53', 1558844049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383834343034393b),
('eh2f66777fuqc8ff4o5g0ig02ktonec8', '192.168.1.53', 1558846801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383834363830313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('jmk0ce5ruvtrqeghfi0ekg62qrb9sde3', '192.168.1.53', 1558846810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383834363830313b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8ejjlc6h98qii94tvnarpnk6k9l6tji1', '192.168.1.53', 1558848314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383834383032383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('sfprpj1cdkd0hl4iicjugj9g8ftpd35l', '192.168.1.234', 1558850582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383835303538323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('q3dht9hledk099r4kfhjgfookphkt0pa', '192.168.1.234', 1558850888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383835303838383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8bjqrp7468lmg4ciusduovbk4tp0gj4q', '192.168.1.234', 1558851931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383835313933313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('48a8jahcb1hkuitl1mm7dgfrd8rd6p3d', '192.168.1.234', 1558851932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383835313933313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('9lb734952929iaj9fn8obij6cjd15qen', '192.168.1.34', 1558860785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383836303733383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('8kmh3cfrft3p3b1a9ktmkt2ntl4cht2j', '192.168.1.31', 1558931796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933313739363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('04issh7k13mau7nq5c2gho5elinos43k', '192.168.1.31', 1558932636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933323633363b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d);
INSERT INTO `ci_sessions` (`id`, `Ip_address`, `timestamp`, `data`) VALUES
('9m4odtcadedm99s818qrvpogcmfbu87k', '192.168.1.34', 1558932661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933323636313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('ogn6msvhpllf24ad30tefojl94t8e3nu', '192.168.1.31', 1558933227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933333232373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('r7hn8934ail4dvlm8dfgi1eqc4o580hb', '192.168.1.34', 1558937218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933373231383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('lk4ibv59p3ur7jtva8tc3tdoevbqfsem', '192.168.1.31', 1558933533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933333533333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('kk98mp4q3j6rbjareun62ei0ubik3ite', '192.168.1.31', 1558933980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933333938303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('eoogks2g17v47508tugar22s5phh89av', '192.168.1.31', 1558936402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933363430323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('eqdpm849dc1mkqlif952tdjtmrs4ss14', '192.168.1.31', 1558940101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383934303130313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('lu637comajplo5kpiqa0kua17mov14te', '192.168.1.34', 1558937248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383933373231383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('rjnc9bcauqe7thmoce6vrf78m0lr37ma', '192.168.1.31', 1558940206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383934303130313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('hjd52h5vf1dja0ivkcu6uttnqcqg5iu8', '192.168.1.34', 1558947959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383934373935373b),
('nkfvtajbtjo80s0kcde4cqj9p7d69ddb', '192.168.1.53', 1559020311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393032303331313b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('l47bgdllr051jktb2qqu9deblq9buuri', '192.168.1.53', 1559020782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393032303738323b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('028igrggtusonnchnk2s146kpgtaiaej', '192.168.1.53', 1559021235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393032313233353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('jc2cfiq382t048b9tb6qnnv071duvc3f', '192.168.1.53', 1559021356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393032313233353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('jr1b0m808g036ru23r55iibb94bkaor3', '192.168.1.31', 1559101358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130313335383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('pjpdg01ab9eh79b7r4iqqlc0sdv6pgcq', '192.168.1.31', 1559101358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130313335383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('0d0jjdhm4c2ta3hiee52ovigdjgv7siu', '192.168.1.53', 1559103508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130333530383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('l3euignepfol9tbfh7dj0dj1uun4lnot', '192.168.1.53', 1559103833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130333833333b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('1ql7cisak8bv4q31u3vum82usc0jhcn2', '192.168.1.53', 1559104435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130343433353b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('rgvd3o3m7lakj6jasjrfpfnsf7uut9s8', '192.168.1.53', 1559104770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130343737303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('oovo0eovliefbtqhg5itplljd27fi41t', '192.168.1.53', 1559105244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130353234343b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('fbmd5ojm2edat94ehivucgsq8d8v13g1', '192.168.1.53', 1559106457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130363435373b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('eubkg7mq9q7g75d82i0nvepn5tb1ra86', '192.168.1.53', 1559106759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130363735393b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('f8minhbe7v07g3usgem98g3jkdg4qkct', '192.168.1.53', 1559107760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130373736303b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('ma425rc393s8bd7tq81ds6sqip4g54oj', '192.168.1.53', 1559108098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130383039383b61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31333a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223231223b7d),
('mctnt6jdfemm4fbqmrhesjoapjg25q5f', '192.168.1.53', 1559109602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393130393630323b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31343a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223233223b693a31333b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('r74ag655b26b9dmqfbnqj91n1vio3m6h', '192.168.1.53', 1559110179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393131303137393b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31343a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223233223b693a31333b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('bi8rhtfe2ipvqg26l13fgmjsjiv1tqi3', '192.168.1.53', 1559110631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393131303633313b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31343a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223233223b693a31333b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('kbts5nj9bjf0bl41dp5svcs6onj4dk07', '192.168.1.53', 1559110965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393131303936353b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31343a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223233223b693a31333b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b),
('u18usj00fvbro5epmtf5nhtckc04nu1q', '192.168.1.53', 1559111155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535393131303936353b6d61696e5f6d656e755f69647c613a373a7b693a303b733a313a2231223b693a313b733a313a2235223b693a323b733a313a2238223b693a333b733a323a223131223b693a343b733a323a223134223b693a353b733a323a223137223b693a363b733a323a223230223b7d7375625f6d656e755f69647c613a31343a7b693a303b733a313a2232223b693a313b733a323a223232223b693a323b733a313a2236223b693a333b733a313a2237223b693a343b733a313a2239223b693a353b733a323a223130223b693a363b733a323a223132223b693a373b733a323a223133223b693a383b733a323a223135223b693a393b733a323a223136223b693a31303b733a323a223138223b693a31313b733a323a223139223b693a31323b733a323a223233223b693a31333b733a323a223231223b7d61646d696e5f6c6f67696e7c693a313b757365726e616d657c733a333a22327261223b);

-- --------------------------------------------------------

--
-- Table structure for table `data_range`
--

CREATE TABLE `data_range` (
  `id` int(11) NOT NULL,
  `parameter` varchar(200) CHARACTER SET utf8 NOT NULL,
  `max` float NOT NULL,
  `min` float NOT NULL,
  `min2` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_range`
--

INSERT INTO `data_range` (`id`, `parameter`, `max`, `min`, `min2`, `status`) VALUES
(1, 'Cell volt', 3.4, 1.7, 1.5, 1),
(2, 'String Volt', 59, 42, 36, 1),
(3, 'Cell Temp', 40, 18, 0, 1),
(4, 'String Temp', 40, 18, 0, 1),
(5, 'String Charging Current1', 150, -50, 0, 1),
(6, 'String Charging Current2', 75, -60, 0, 1),
(7, 'Time interval', 20, 0, 0, 1),
(8, 'Cell IR Over Limit', 0.07, 0.01, 0.09, 1),
(9, 'String Over Discharge', 60, 40, 35, 1),
(10, 'String Discharging Current', 59, 42, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device_id` int(200) NOT NULL,
  `ip_address` varchar(300) NOT NULL,
  `site_id` varchar(200) CHARACTER SET utf8 NOT NULL,
  `bank` varchar(200) CHARACTER SET utf8 NOT NULL,
  `site_type` int(11) NOT NULL,
  `node` varchar(100) CHARACTER SET utf8 NOT NULL,
  `node_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `device_id`, `ip_address`, `site_id`, `bank`, `site_type`, `node`, `node_name`, `status`) VALUES
(2, 200, '10.51.37.5', '100', '1', 1, '1', 'test1', 1),
(3, 202, '10.51.38.5', '102', '1', 1, '1', '', 1),
(4, 203, '10.51.38.6', '102', '2', 2, '2', '', 1),
(5, 204, '10.51.157.5', '104', '1', 1, '1', 'DMC', 1),
(6, 205, '10.51.157.6', '104', '2', 2, '2', 'DMC', 1),
(7, 206, '10.51.49.5', '106', '1', 1, '1', 'BLRI-1', 1),
(8, 207, '10.51.49.6', '106', '2', 2, '2', 'BLRI-2', 1),
(9, 208, '10.51.163.5', '108', '1', 1, '1', 'CMC-1', 1),
(10, 209, '10.51.163.6', '108', '2', 2, '2', 'CMC-2', 1),
(11, 210, '10.51.165.5', '110', '1', 1, '1', 'AUW-1', 1),
(12, 211, '10.51.165.6', '110', '2', 2, '2', 'AUW-2', 1),
(13, 212, '10.51.164.5', '112', '1', 1, '1', 'CBMC-1', 1),
(14, 213, '10.51.164.6', '112', '2', 2, '2', 'CBMC-2', 1),
(15, 214, '10.51.166.5', '114', '1', 1, '1', 'BARD-1', 1),
(16, 215, '10.51.166.6', '114', '2', 2, '2', 'BARD-2', 1),
(17, 216, '10.51.35.5', '116', '1', 1, '1', 'SMC1', 1),
(18, 217, '10.51.35.6', '116', '2', 2, '2', 'SMC2', 1),
(19, 220, '10.51.47.5', '120', '1', 1, '1', 'BARI-1', 1),
(20, 221, '10.51.47.6', '120', '2', 2, '2', 'BARI-2', 1),
(21, 218, '10.51.158.5', '118', '1', 1, '1', 'SSMC1', 1),
(22, 219, '10.51.158.6', '118', '2', 2, '2', 'SSMC2', 1),
(23, 222, '10.51.48.5', '122', '1', 1, '1', 'BRRI-1', 1),
(24, 223, '10.51.48.6', '122', '2', 2, '2', 'BRRI-2', 1),
(25, 224, '10.51.43.5', '124', '1', 1, '1', 'RPMC-1', 1),
(26, 225, '10.51.43.6', '124', '2', 2, '2', 'RPMC-2', 1),
(27, 226, '10.51.42.5', '126', '1', 1, '1', 'RMC-1', 1),
(28, 227, '10.51.42.6', '126', '2', 2, '2', 'RMC-2', 1),
(29, 228, '10.51.162.5', '128', '1', 1, '1', 'MMC-1', 1),
(30, 229, '10.51.162.6', '128', '2', 2, '2', 'MMC-2', 1),
(31, 230, '10.51.161.5', '130', '1', 1, '1', 'Osmani 1', 1),
(32, 231, '10.51.161.6', '130', '2', 2, '2', 'Osmani 2', 1),
(33, 232, '10.51.45.5', '132', '1', 1, '1', 'Osmani 1', 1),
(34, 233, '10.51.45.6', '132', '2', 2, '2', 'Osmani 2', 1),
(35, 200, '10.51.37.5', '100', '1', 1, 'Cell-1', 'BIDS-1', 1),
(36, 201, '10.51.37.6', '100', '2', 2, 'Cell-2', 'BIDS-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_url` varchar(254) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_name`, `parent_id`, `menu_url`, `created_at`, `created_by`, `status`) VALUES
(1, 'File', 0, '#', '2019-03-20 05:54:49', '2ra', 1),
(2, 'Site Status', 1, '', '2019-05-29 10:40:32', '2ra', 1),
(5, 'Menu', 0, '#', '2019-03-20 05:58:31', '2ra', 1),
(6, 'Create Menu', 5, 'CREATE-MENU', '2019-03-20 05:58:58', '2ra', 1),
(7, 'Menu List', 5, 'MENU-LIST', '2019-03-20 05:59:23', '2ra', 1),
(8, 'User', 0, '#', '2019-03-20 05:59:38', '2ra', 1),
(9, 'Create User', 8, 'CREATE-USER', '2019-03-20 06:00:13', '2ra', 1),
(10, 'User List', 8, 'USER-LIST', '2019-03-20 15:17:48', '2ra', 1),
(11, 'Site', 0, '#', '2019-03-20 06:00:53', '2ra', 1),
(12, 'Create Site', 11, 'CREATE-SITE', '2019-03-20 11:19:03', '2ra', 1),
(13, 'Site List', 11, 'SITE-LIST', '2019-03-20 11:19:29', '2ra', 1),
(14, 'Device', 0, '#', '2019-03-20 06:02:02', '2ra', 1),
(15, 'Create Device', 14, 'CREATE-DEVICE', '2019-03-20 11:20:54', '2ra', 1),
(16, 'Device List', 14, 'DEVICE-LIST', '2019-03-20 11:21:12', '2ra', 1),
(17, 'Data Range', 0, '#', '2019-03-20 06:03:35', '2ra', 1),
(18, 'Create Data Range', 17, 'CREATE-DATA-RANGE', '2019-03-20 11:23:11', '2ra', 1),
(19, 'Data Range List', 17, 'DATA-RANGE-LIST', '2019-03-20 11:23:31', '2ra', 1),
(20, 'Report', 0, '#', '2019-03-20 06:05:40', '2ra', 1),
(21, 'Report', 20, 'report', '2019-03-20 16:31:02', '2ra', 1),
(22, 'Alarm History', 1, 'alarm-history', '2019-05-07 10:37:26', '2ra', 1),
(23, 'Set Auto Refresh', 17, 'auto-refresh', '2019-05-29 11:38:43', '2ra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `site_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `site_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone1` int(20) NOT NULL,
  `phone2` int(20) NOT NULL,
  `email1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `site_id`, `site_name`, `phone1`, `phone2`, `email1`, `email2`, `status`, `updated_time`) VALUES
(1, '100', 'BIDS', 17, 17, 'atiq@gmail', 'atiq@gmail', 1, '2019-05-29 10:28:18'),
(3, '102', 'SPARRSO', 17, 17, 'bems@gmail.com', 'bems@gmail.com', 1, '2019-05-11 16:07:55'),
(5, '104', 'DMC', 17, 17, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(7, '106', 'BLRI', 1708416001, 1708416001, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(9, '108', 'CMC', 1708416001, 1708416001, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(11, '110', 'AUW', 1708416001, 1708416001, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(13, '112', 'CBMC', 1708416001, 1708416001, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(15, '114', 'BARD', 1708416001, 1708416001, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(17, '116', 'SMC', 17, 17, 'abc@gmail.com', 'abc@gmail.com', 1, NULL),
(19, '120', 'BARI', 12345, 123456, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(21, '118', 'SSMC', 19, 19, 'a@gmail.com', 'b@gmail.com', 1, NULL),
(23, '122', 'BRRI', 12345, 123456, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(25, '124', 'RPMC', 12345, 123456, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(27, '126', 'RMC', 12345, 123456, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(29, '128', 'MMC', 12345, 123456, 'bems@gmail.com', 'bems@gmail.com', 1, NULL),
(31, '130', 'Osmani Medical college', 17, 17, 'a@gmail.com', 'a@gmail.com', 1, NULL),
(33, '132', 'Sher e Bangla Medical collage', 17, 17, 'a@gmail.com', 'a@gmail.com', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_autorefresh`
--

CREATE TABLE `tbl_autorefresh` (
  `id` int(11) NOT NULL,
  `updated_time` datetime DEFAULT NULL,
  `set_time` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_autorefresh`
--

INSERT INTO `tbl_autorefresh` (`id`, `updated_time`, `set_time`, `status`) VALUES
(1, '2019-05-29 12:24:15', 9000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_log`
--

CREATE TABLE `tbl_data_log` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `device_id` int(100) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `bank` int(10) DEFAULT NULL,
  `node` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `volt` float(18,2) DEFAULT NULL,
  `temp` float(18,2) DEFAULT NULL,
  `amp` float(18,2) DEFAULT NULL,
  `ir` float(18,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_log`
--

INSERT INTO `tbl_data_log` (`id`, `date_time`, `device_id`, `site_id`, `bank`, `node`, `volt`, `temp`, `amp`, `ir`, `status`) VALUES
(1, '2019-05-26 12:02:53', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(2, '2019-05-26 12:02:53', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(3, '2019-05-26 12:02:53', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(4, '2019-05-26 12:02:53', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(5, '2019-05-26 12:02:53', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(6, '2019-05-26 12:02:53', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(7, '2019-05-26 12:02:53', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(8, '2019-05-26 12:02:53', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(9, '2019-05-26 12:02:53', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(10, '2019-05-26 12:02:53', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(11, '2019-05-26 12:02:53', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(12, '2019-05-26 12:02:53', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(13, '2019-05-26 12:02:53', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(14, '2019-05-26 12:02:54', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(15, '2019-05-26 12:02:54', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(16, '2019-05-26 12:02:54', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(17, '2019-05-26 12:02:54', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(18, '2019-05-26 12:02:54', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(19, '2019-05-26 12:02:54', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(20, '2019-05-26 12:02:54', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(21, '2019-05-26 12:02:54', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(22, '2019-05-26 12:02:54', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(23, '2019-05-26 12:02:55', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(24, '2019-05-26 12:02:55', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(25, '2019-05-26 12:02:55', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1),
(26, '2019-05-26 12:06:23', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(27, '2019-05-26 12:06:23', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.08, 1),
(28, '2019-05-26 12:06:23', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(29, '2019-05-26 12:06:23', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(30, '2019-05-26 12:06:23', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.08, 1),
(31, '2019-05-26 12:06:23', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(32, '2019-05-26 12:06:23', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(33, '2019-05-26 12:06:23', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(34, '2019-05-26 12:06:23', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(35, '2019-05-26 12:06:24', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.08, 1),
(36, '2019-05-26 12:06:24', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(37, '2019-05-26 12:06:24', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(38, '2019-05-26 12:06:24', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(39, '2019-05-26 12:06:24', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(40, '2019-05-26 12:06:24', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.08, 1),
(41, '2019-05-26 12:06:25', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(42, '2019-05-26 12:06:25', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(43, '2019-05-26 12:06:25', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(44, '2019-05-26 12:06:25', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(45, '2019-05-26 12:06:25', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.08, 1),
(46, '2019-05-26 12:06:25', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(47, '2019-05-26 12:06:25', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(48, '2019-05-26 12:06:25', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(49, '2019-05-26 12:06:26', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(50, '2019-05-26 12:06:26', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.09, 1),
(51, '2019-05-26 12:07:59', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(52, '2019-05-26 12:07:59', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.08, 1),
(53, '2019-05-26 12:08:00', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(54, '2019-05-26 12:08:00', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(55, '2019-05-26 12:08:00', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.08, 1),
(56, '2019-05-26 12:08:00', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(57, '2019-05-26 12:08:00', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(58, '2019-05-26 12:08:00', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(59, '2019-05-26 12:08:00', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(60, '2019-05-26 12:08:01', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.08, 1),
(61, '2019-05-26 12:08:01', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(62, '2019-05-26 12:08:01', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(63, '2019-05-26 12:08:01', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(64, '2019-05-26 12:08:01', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(65, '2019-05-26 12:08:02', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.08, 1),
(66, '2019-05-26 12:08:02', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(67, '2019-05-26 12:08:02', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(68, '2019-05-26 12:08:02', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(69, '2019-05-26 12:08:02', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(70, '2019-05-26 12:08:02', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.08, 1),
(71, '2019-05-26 12:08:02', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(72, '2019-05-26 12:08:03', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(73, '2019-05-26 12:08:03', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(74, '2019-05-26 12:08:03', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(75, '2019-05-26 12:08:03', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.09, 1),
(76, '2019-05-26 12:12:02', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(77, '2019-05-26 12:12:02', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(78, '2019-05-26 12:12:02', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(79, '2019-05-26 12:12:02', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(80, '2019-05-26 12:12:02', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(81, '2019-05-26 12:12:02', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(82, '2019-05-26 12:12:03', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(83, '2019-05-26 12:12:03', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(84, '2019-05-26 12:12:03', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(85, '2019-05-26 12:12:03', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(86, '2019-05-26 12:12:03', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(87, '2019-05-26 12:12:03', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(88, '2019-05-26 12:12:03', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(89, '2019-05-26 12:12:03', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(90, '2019-05-26 12:12:03', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(91, '2019-05-26 12:12:03', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(92, '2019-05-26 12:12:04', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(93, '2019-05-26 12:12:04', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(94, '2019-05-26 12:12:04', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(95, '2019-05-26 12:12:04', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(96, '2019-05-26 12:12:04', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(97, '2019-05-26 12:12:04', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(98, '2019-05-26 12:12:04', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(99, '2019-05-26 12:12:04', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(100, '2019-05-26 12:12:04', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1),
(101, '2019-05-26 14:46:07', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(102, '2019-05-26 14:46:07', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(103, '2019-05-26 14:46:07', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(104, '2019-05-26 14:46:07', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(105, '2019-05-26 14:46:07', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(106, '2019-05-26 14:46:07', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(107, '2019-05-26 14:46:07', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(108, '2019-05-26 14:46:08', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(109, '2019-05-26 14:46:08', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(110, '2019-05-26 14:46:08', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(111, '2019-05-26 14:46:08', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(112, '2019-05-26 14:46:08', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(113, '2019-05-26 14:46:08', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(114, '2019-05-26 14:46:08', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(115, '2019-05-26 14:46:08', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(116, '2019-05-26 14:46:08', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(117, '2019-05-26 14:46:08', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(118, '2019-05-26 14:46:08', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(119, '2019-05-26 14:46:09', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(120, '2019-05-26 14:46:09', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(121, '2019-05-26 14:46:09', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(122, '2019-05-26 14:46:09', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(123, '2019-05-26 14:46:09', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(124, '2019-05-26 14:46:09', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(125, '2019-05-26 14:46:09', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1),
(126, '2019-05-26 14:52:55', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(127, '2019-05-26 14:52:55', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(128, '2019-05-26 14:52:55', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(129, '2019-05-26 14:52:55', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(130, '2019-05-26 14:52:55', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(131, '2019-05-26 14:52:56', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(132, '2019-05-26 14:52:56', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(133, '2019-05-26 14:52:56', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(134, '2019-05-26 14:52:56', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(135, '2019-05-26 14:52:56', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(136, '2019-05-26 14:52:56', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(137, '2019-05-26 14:52:56', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(138, '2019-05-26 14:52:57', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(139, '2019-05-26 14:52:57', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(140, '2019-05-26 14:52:57', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(141, '2019-05-26 14:52:57', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(142, '2019-05-26 14:52:57', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(143, '2019-05-26 14:52:57', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(144, '2019-05-26 14:52:57', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(145, '2019-05-26 14:52:57', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(146, '2019-05-26 14:52:58', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(147, '2019-05-26 14:52:58', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(148, '2019-05-26 14:52:58', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(149, '2019-05-26 14:52:58', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(150, '2019-05-26 14:52:58', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1),
(151, '2019-05-27 10:46:49', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(152, '2019-05-27 10:46:49', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(153, '2019-05-27 10:46:49', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(154, '2019-05-27 10:46:49', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(155, '2019-05-27 10:46:49', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(156, '2019-05-27 10:46:49', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(157, '2019-05-27 10:46:50', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(158, '2019-05-27 10:46:50', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(159, '2019-05-27 10:46:50', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(160, '2019-05-27 10:46:50', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(161, '2019-05-27 10:46:50', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(162, '2019-05-27 10:46:50', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(163, '2019-05-27 10:46:50', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(164, '2019-05-27 10:46:50', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(165, '2019-05-27 10:46:50', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(166, '2019-05-27 10:46:50', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(167, '2019-05-27 10:46:50', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(168, '2019-05-27 10:46:50', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(169, '2019-05-27 10:46:50', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(170, '2019-05-27 10:46:50', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(171, '2019-05-27 10:46:50', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(172, '2019-05-27 10:46:50', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(173, '2019-05-27 10:46:50', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(174, '2019-05-27 10:46:51', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(175, '2019-05-27 10:46:51', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1),
(176, '2019-05-27 10:47:38', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(177, '2019-05-27 10:47:38', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.08, 1),
(178, '2019-05-27 10:47:38', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(179, '2019-05-27 10:47:38', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(180, '2019-05-27 10:47:38', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.08, 1),
(181, '2019-05-27 10:47:38', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(182, '2019-05-27 10:47:38', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(183, '2019-05-27 10:47:38', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(184, '2019-05-27 10:47:38', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(185, '2019-05-27 10:47:39', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.08, 1),
(186, '2019-05-27 10:47:39', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(187, '2019-05-27 10:47:39', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(188, '2019-05-27 10:47:39', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(189, '2019-05-27 10:47:39', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(190, '2019-05-27 10:47:39', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.08, 1),
(191, '2019-05-27 10:47:39', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(192, '2019-05-27 10:47:39', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(193, '2019-05-27 10:47:39', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(194, '2019-05-27 10:47:39', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(195, '2019-05-27 10:47:39', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.08, 1),
(196, '2019-05-27 10:47:39', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(197, '2019-05-27 10:47:40', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(198, '2019-05-27 10:47:40', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(199, '2019-05-27 10:47:40', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(200, '2019-05-27 10:47:40', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.09, 1),
(201, '2019-05-27 10:50:54', 200, 100, 1, 'B0', 0.00, 24.00, 38.00, 0.04, 1),
(202, '2019-05-27 10:50:54', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.08, 1),
(203, '2019-05-27 10:50:54', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(204, '2019-05-27 10:50:54', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(205, '2019-05-27 10:50:55', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.08, 1),
(206, '2019-05-27 10:50:55', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(207, '2019-05-27 10:50:55', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(208, '2019-05-27 10:50:55', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(209, '2019-05-27 10:50:55', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(210, '2019-05-27 10:50:55', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.08, 1),
(211, '2019-05-27 10:50:55', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(212, '2019-05-27 10:50:55', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(213, '2019-05-27 10:50:55', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(214, '2019-05-27 10:50:56', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(215, '2019-05-27 10:50:56', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.08, 1),
(216, '2019-05-27 10:50:56', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(217, '2019-05-27 10:50:56', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(218, '2019-05-27 10:50:56', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(219, '2019-05-27 10:50:56', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(220, '2019-05-27 10:50:56', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.08, 1),
(221, '2019-05-27 10:50:56', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(222, '2019-05-27 10:50:56', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(223, '2019-05-27 10:50:56', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(224, '2019-05-27 10:50:56', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(225, '2019-05-27 10:50:57', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.09, 1),
(226, '2019-05-27 10:51:54', 200, 100, 1, 'B0', 0.00, 24.00, 0.00, 0.04, 1),
(227, '2019-05-27 10:51:54', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.08, 1),
(228, '2019-05-27 10:51:54', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(229, '2019-05-27 10:51:55', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(230, '2019-05-27 10:51:55', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.08, 1),
(231, '2019-05-27 10:51:55', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(232, '2019-05-27 10:51:55', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(233, '2019-05-27 10:51:55', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(234, '2019-05-27 10:51:55', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(235, '2019-05-27 10:51:55', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.08, 1),
(236, '2019-05-27 10:51:56', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(237, '2019-05-27 10:51:56', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(238, '2019-05-27 10:51:56', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(239, '2019-05-27 10:51:56', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(240, '2019-05-27 10:51:56', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.08, 1),
(241, '2019-05-27 10:51:56', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(242, '2019-05-27 10:51:56', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(243, '2019-05-27 10:51:56', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(244, '2019-05-27 10:51:56', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(245, '2019-05-27 10:51:56', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.08, 1),
(246, '2019-05-27 10:51:57', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(247, '2019-05-27 10:51:57', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(248, '2019-05-27 10:51:57', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(249, '2019-05-27 10:51:57', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(250, '2019-05-27 10:51:57', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.09, 1),
(251, '2019-05-29 10:28:18', 200, 100, 1, 'B0', 40.00, 40.00, 40.00, 40.00, 1),
(252, '2019-05-29 10:28:19', 200, 100, 1, 'B1', 5.60, 5.60, 5.60, NULL, 1),
(253, '2019-05-29 10:28:19', 200, 100, 1, 'B2', 6.50, 6.50, 6.50, 6.50, 1),
(254, '2019-05-29 10:28:19', 200, 100, 1, 'B3', 8.20, 8.20, 8.20, 8.20, 1),
(255, '2019-05-29 10:28:19', 200, 100, 1, 'B4', 7.80, 7.80, 7.80, 7.80, 1),
(256, '2019-05-29 10:28:19', 200, 100, 1, 'B5', 40.00, 40.00, 40.00, 40.00, 1),
(257, '2019-05-29 10:28:19', 200, 100, 1, 'B6', 5.60, 5.60, 5.60, 5.60, 1),
(258, '2019-05-29 10:28:19', 200, 100, 1, 'B7', 6.50, 6.50, 6.50, 6.50, 1),
(259, '2019-05-29 10:28:19', 200, 100, 1, 'B8', 8.20, 8.20, 8.20, 8.20, 1),
(260, '2019-05-29 10:28:19', 200, 100, 1, 'B9', 7.80, 7.80, 7.80, 7.80, 1),
(261, '2019-05-29 10:28:19', 200, 100, 1, 'B10', 40.00, 40.00, 40.00, 40.00, 1),
(262, '2019-05-29 10:28:20', 200, 100, 1, 'B11', 5.60, 5.60, 5.60, 5.60, 1),
(263, '2019-05-29 10:28:20', 200, 100, 1, 'B12', 6.50, 6.50, 6.50, 6.50, 1),
(264, '2019-05-29 10:28:20', 200, 100, 1, 'B13', 8.20, 8.20, 8.20, 8.20, 1),
(265, '2019-05-29 10:28:20', 200, 100, 1, 'B14', 7.80, 7.80, 7.80, 7.80, 1),
(266, '2019-05-29 10:28:20', 200, 100, 1, 'B15', 40.00, 40.00, 40.00, 40.00, 1),
(267, '2019-05-29 10:28:20', 200, 100, 1, 'B16', 5.60, 5.60, 5.60, 5.60, 1),
(268, '2019-05-29 10:28:20', 200, 100, 1, 'B17', 6.50, 6.50, 6.50, 6.50, 1),
(269, '2019-05-29 10:28:20', 200, 100, 1, 'B18', 8.20, 8.20, 8.20, 8.20, 1),
(270, '2019-05-29 10:28:20', 200, 100, 1, 'B19', 7.80, 7.80, 7.80, 7.80, 1),
(271, '2019-05-29 10:28:20', 200, 100, 1, 'B20', 40.00, 40.00, 40.00, 40.00, 1),
(272, '2019-05-29 10:28:20', 200, 100, 1, 'B21', 5.60, 5.60, 5.60, 5.60, 1),
(273, '2019-05-29 10:28:20', 200, 100, 1, 'B22', 6.50, 6.50, 6.50, 6.50, 1),
(274, '2019-05-29 10:28:21', 200, 100, 1, 'B23', 8.20, 8.20, 8.20, 8.20, 1),
(275, '2019-05-29 10:28:21', 200, 100, 1, 'B24', 3.00, 8.00, 3.00, 9.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_update`
--

CREATE TABLE `tbl_data_update` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `device_id` int(100) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `bank` int(10) DEFAULT NULL,
  `node` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `volt` float(18,2) DEFAULT NULL,
  `temp` float(18,2) DEFAULT NULL,
  `amp` float(18,2) DEFAULT NULL,
  `ir` float(18,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_update`
--

INSERT INTO `tbl_data_update` (`id`, `date_time`, `device_id`, `site_id`, `bank`, `node`, `volt`, `temp`, `amp`, `ir`, `status`) VALUES
(1, '2019-05-29 10:28:18', 200, 100, 1, 'B0', 2.40, 24.00, 38.00, 0.04, 1),
(2, '2019-05-29 10:28:19', 200, 100, 1, 'B1', 2.20, 25.60, 35.60, 0.05, 1),
(3, '2019-05-29 10:28:19', 200, 100, 1, 'B2', 6.20, 26.50, 36.50, 0.05, 1),
(4, '2019-05-29 10:28:19', 200, 100, 1, 'B3', 2.20, 28.20, 38.20, 0.02, 1),
(5, '2019-05-29 10:28:19', 200, 100, 1, 'B4', 2.80, 27.80, 37.80, 0.05, 1),
(6, '2019-05-29 10:28:19', 200, 100, 1, 'B5', 2.20, 25.00, 33.00, 0.02, 1),
(7, '2019-05-29 10:28:19', 200, 100, 1, 'B6', 2.60, 25.60, 35.60, 0.05, 1),
(8, '2019-05-29 10:28:19', 200, 100, 1, 'B7', 2.50, 26.50, 36.50, 0.06, 1),
(9, '2019-05-29 10:28:19', 200, 100, 1, 'B8', 2.20, 8.20, 38.20, 0.02, 1),
(10, '2019-05-29 10:28:19', 200, 100, 1, 'B9', 2.80, 27.80, 37.80, 0.06, 1),
(11, '2019-05-29 10:28:19', 200, 100, 1, 'B10', 2.50, 27.00, 35.00, 0.01, 1),
(12, '2019-05-29 10:28:20', 200, 100, 1, 'B11', 2.60, 25.60, 35.60, 0.06, 1),
(13, '2019-05-29 10:28:20', 200, 100, 1, 'B12', 2.50, 26.50, 36.50, 0.05, 1),
(14, '2019-05-29 10:28:20', 200, 100, 1, 'B13', 2.20, 28.20, 38.20, 0.02, 1),
(15, '2019-05-29 10:28:20', 200, 100, 1, 'B14', 2.80, 27.80, 37.80, 0.05, 1),
(16, '2019-05-29 10:28:20', 200, 100, 1, 'B15', 2.10, 22.00, 31.00, 0.04, 1),
(17, '2019-05-29 10:28:20', 200, 100, 1, 'B16', 2.20, 25.60, 35.60, 0.06, 1),
(18, '2019-05-29 10:28:20', 200, 100, 1, 'B17', 2.50, 26.50, 36.50, 0.05, 1),
(19, '2019-05-29 10:28:20', 200, 100, 1, 'B18', 2.20, 28.20, 38.20, 0.02, 1),
(20, '2019-05-29 10:28:20', 200, 100, 1, 'B19', 2.80, 27.80, 37.80, 0.06, 1),
(21, '2019-05-29 10:28:20', 200, 100, 1, 'B20', 2.40, 23.00, 42.00, 0.07, 1),
(22, '2019-05-29 10:28:20', 200, 100, 1, 'B21', 2.60, 25.60, 35.60, 0.06, 1),
(23, '2019-05-29 10:28:20', 200, 100, 1, 'B22', 2.50, 26.50, 36.50, 0.05, 1),
(24, '2019-05-29 10:28:21', 200, 100, 1, 'B23', 2.20, 28.20, 38.20, 0.02, 1),
(25, '2019-05-29 10:28:21', 200, 100, 1, 'B24', 2.30, 27.00, 33.00, 0.03, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_role` text CHARACTER SET utf8 NOT NULL,
  `created_at` date NOT NULL,
  `created_by` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `user_role`, `created_at`, `created_by`, `status`) VALUES
(15, '2ra', 'f1544f4081db542209336cc37e7b72d7d503f6ad', '2ra@gmail.com', '01788134303', '1,2,22,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,23,20,21', '2019-05-29', '2ra', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alarm`
--
ALTER TABLE `alarm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alarm_status`
--
ALTER TABLE `alarm_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_range`
--
ALTER TABLE `data_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_autorefresh`
--
ALTER TABLE `tbl_autorefresh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_log`
--
ALTER TABLE `tbl_data_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datetime_index` (`date_time`);

--
-- Indexes for table `tbl_data_update`
--
ALTER TABLE `tbl_data_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datetime_index` (`date_time`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alarm`
--
ALTER TABLE `alarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `alarm_status`
--
ALTER TABLE `alarm_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `data_range`
--
ALTER TABLE `data_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_autorefresh`
--
ALTER TABLE `tbl_autorefresh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_data_log`
--
ALTER TABLE `tbl_data_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `tbl_data_update`
--
ALTER TABLE `tbl_data_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
