-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 03:00 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `empID` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` varchar(255) NOT NULL,
  `updation_date` varchar(45) NOT NULL,
  `profilePic` varchar(255) DEFAULT NULL,
  `passUdateDate` varchar(255) NOT NULL,
  `last_act` varchar(255) NOT NULL,
  `last_ip` varchar(255) NOT NULL,
  `last_loc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Name`, `empID`, `username`, `email`, `password`, `reg_date`, `updation_date`, `profilePic`, `passUdateDate`, `last_act`, `last_ip`, `last_loc`) VALUES
(6, 'Harsh Rana', '19BCS2824', 'harsh', '19bcs2824@gmail.com', 'harsh', '09-03-2021 09:03:55 AM', '14-04-2021 09:16:09 AM', '', '', '28-04-2021 08:21:38 PM', '103.48.196.103', 'Delhi'),
(7, 'Tushar Tejan', '19BCS2814', 'tushar', '19bcs2814@gmail.com', 'tushar', '05-03-2021 12:03:55 PM', '18-04-2021 05:23:07 PM', '', '18-04-2021 03:54:56 PM', '17-02-2022 10:50:51 PM', '10.64.20.36', ''),
(8, 'Vishal Kumar', '19BCS2813', 'vishal', '19bcs2813@gmail.com', 'vishal', '10-03-2021 10:03:55 AM', '11-04-2021 09:16:09 PM', '', '', '06-05-2021 11:28:58 AM', '223.185.56.5', 'Mohali (PB)'),
(9, 'Gagandeep Singh', '19BCS2810', 'gagan', '19bcs2810@gmail.com', 'gagan', '12-03-2021 11:03:55 AM', '01-04-2021 10:16:09 PM', '', '', '28-04-2021 08:29:21 PM', '223.185.56.5', 'Chandigarh'),
(44, 'Sanket Singh', '19BCS1825', 'sanket', '19bcs1825@gmail.com', '12345', '13-04-2021 10:03:55 AM', '', NULL, '', '17-05-2021 02:19:41 PM', '132.154.140.209', 'Ludhiana');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` varchar(45) NOT NULL,
  `logout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`, `logout`) VALUES
(145, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi', 'National Capital Territory of Delhi, India', '24-03-2021 02:57:51 PM', '24-03-2021 02:57:51 PM'),
(146, 8, '19bcs2813@gmail.com', 0x3232332e3232352e3134302e323139, 'Ludhiana', 'Punjab, India', '24-03-2021 02:58:35 PM', '24-03-2021 02:58:35 PM'),
(147, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi', 'National Capital Territory of Delhi, India', '24-03-2021 04:37:21 PM', '24-03-2021 04:37:21 PM'),
(183, 9, '19bcs2810@gmail.com', 0x3232332e3138352e32372e39, 'Amritsar', 'Punjab, India', '25-03-2021 11:10:25 AM', '25-03-2021 11:12:25 AM'),
(198, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi', 'National Capital Territory of Delhi, India', '30-03-2021 05:33:00 PM', '30-03-2021 05:33:00 PM'),
(213, 44, '19bcs1825@gmail.com', 0x3130362e3230342e3235312e313035, 'Ludhiana (PB)', 'Punjab, India (IN)', '13-04-2021 10:25:43 AM', '13-04-2021 10:25:43 AM'),
(214, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '13-04-2021 10:34:44 AM', '13-04-2021 10:35:44 AM'),
(215, 44, '19bcs1825@gmail.com', 0x3130362e3230342e3234382e323137, 'Ludhiana (PB)', 'Punjab, India (IN)', '13-04-2021 10:34:51 AM', '13-04-2021 10:36:51 AM'),
(251, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '19-04-2021 03:13:11 PM', '19-04-2021 03:13:11 PM'),
(252, 44, '19bcs1825@gmail.com', 0x3130362e3230342e3232372e3133, 'Karnal (HR)', 'Haryana, India (IN)', '19-04-2021 03:28:00 PM', '19-04-2021 03:28:00 PM'),
(254, 8, '19bcs2813@gmail.com', 0x3133322e3135342e3135302e3139, 'Ludhiana (PB)', 'Punjab, India (IN)', '19-04-2021 03:38:36 PM', '19-04-2021 03:38:36 PM'),
(300, 8, '19bcs2813@gmail.com', 0x3135372e33392e3134352e313439, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '21-04-2021 10:10:17 PM', '21-04-2021 10:19:20 PM'),
(301, 8, '19bcs2813@gmail.com', 0x3135372e33392e3134352e313439, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '21-04-2021 10:30:46 PM', '21-04-2021 10:35:41 PM'),
(302, 44, '19bcs1825@gmail.com', 0x3135372e33392e3134352e313439, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '21-04-2021 10:36:25 PM', ''),
(310, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:41:49 AM', '22-04-2021 08:06:09 AM'),
(311, 8, '19bcs2813@gmail.com', 0x3135372e33392e3135302e3537, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '22-04-2021 09:35:09 AM', '22-04-2021 09:45:53 AM'),
(312, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 09:41:28 AM', '22-04-2021 09:42:33 AM'),
(313, 8, '19bcs2813@gmail.com', 0x3135372e33392e3135302e3537, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '22-04-2021 10:35:45 AM', ''),
(314, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 11:03:06 AM', '22-04-2021 11:16:48 AM'),
(315, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 11:19:53 AM', '22-04-2021 11:21:23 AM'),
(316, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 11:24:07 AM', '22-04-2021 11:26:22 AM'),
(317, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:23:06 PM', '22-04-2021 12:24:06 PM'),
(318, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:26:55 PM', '22-04-2021 12:28:57 PM'),
(319, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:35:17 PM', '22-04-2021 12:37:51 PM'),
(320, 6, '19bcs2824@gmail.com', 0x3130362e3232332e3134302e3138, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:42:08 PM', ''),
(321, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:43:09 PM', '22-04-2021 01:29:10 PM'),
(322, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 01:34:05 PM', '22-04-2021 01:40:47 PM'),
(323, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 02:08:19 PM', ''),
(324, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 04:02:35 PM', '22-04-2021 04:05:33 PM'),
(325, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 04:08:53 PM', ''),
(326, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:09:10 PM', '22-04-2021 07:13:58 PM'),
(327, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:17:16 PM', '22-04-2021 07:25:15 PM'),
(328, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:15:37 PM', '22-04-2021 10:17:53 PM'),
(329, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:19:58 PM', '22-04-2021 10:20:49 PM'),
(330, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:48:24 PM', '22-04-2021 10:49:34 PM'),
(331, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 10:17:33 AM', '23-04-2021 10:18:14 AM'),
(332, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 10:18:59 AM', '23-04-2021 10:20:50 AM'),
(333, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 10:29:42 AM', '23-04-2021 10:30:18 AM'),
(334, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:13:15 AM', ''),
(335, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 12:26:32 PM', '23-04-2021 12:41:31 PM'),
(336, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 12:43:39 PM', '23-04-2021 12:46:44 PM'),
(337, 8, '19bcs2813@gmail.com', 0x3135372e33392e3133372e323234, 'Ludhiana (PB)', 'Punjab, India (IN)', '23-04-2021 12:50:52 PM', '23-04-2021 01:12:24 PM'),
(338, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 12:50:53 PM', '23-04-2021 01:14:04 PM'),
(339, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 01:38:30 PM', ''),
(340, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 01:38:30 PM', '23-04-2021 01:41:37 PM'),
(341, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 01:42:15 PM', '23-04-2021 01:44:41 PM'),
(342, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 02:01:20 PM', '23-04-2021 02:23:00 PM'),
(343, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 02:35:09 PM', '23-04-2021 02:42:58 PM'),
(344, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 03:18:29 PM', '23-04-2021 03:22:58 PM'),
(345, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 04:31:44 PM', '23-04-2021 04:39:52 PM'),
(346, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 08:21:00 PM', '23-04-2021 08:53:59 PM'),
(347, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:11:59 PM', '24-04-2021 12:58:13 AM'),
(348, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 12:26:43 PM', '25-04-2021 12:27:15 PM'),
(349, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 02:52:30 PM', '25-04-2021 02:52:59 PM'),
(350, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 02:57:42 PM', ''),
(351, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 03:09:22 PM', '25-04-2021 03:11:29 PM'),
(352, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 05:08:10 PM', '25-04-2021 05:39:25 PM'),
(353, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 05:43:39 PM', ''),
(354, 8, '19bcs2813@gmail.com', 0x3135372e33392e3135322e323030, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '25-04-2021 06:35:26 PM', ''),
(404, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 02:09:07 PM', ''),
(405, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:33:48 PM', '28-04-2021 06:34:16 PM'),
(406, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:35:02 PM', '28-04-2021 06:35:07 PM'),
(407, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:38:56 PM', '28-04-2021 06:38:59 PM'),
(408, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:39:30 PM', '28-04-2021 06:39:35 PM'),
(409, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:40:11 PM', '28-04-2021 06:40:13 PM'),
(410, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:40:42 PM', '28-04-2021 06:40:44 PM'),
(411, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:41:52 PM', '28-04-2021 06:41:58 PM'),
(412, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:43:57 PM', '28-04-2021 06:46:07 PM'),
(413, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 06:46:16 PM', '28-04-2021 07:16:35 PM'),
(414, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 07:16:50 PM', '28-04-2021 07:19:07 PM'),
(415, 8, '19bcs2813@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 07:19:14 PM', '28-04-2021 07:27:46 PM'),
(416, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 07:28:04 PM', '28-04-2021 08:14:23 PM'),
(417, 9, '19bcs2810@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:14:33 PM', '28-04-2021 08:16:06 PM'),
(418, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:16:10 PM', '28-04-2021 08:17:34 PM'),
(419, 9, '19bcs2810@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:17:40 PM', '28-04-2021 08:19:17 PM'),
(420, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:19:24 PM', '28-04-2021 08:21:22 PM'),
(421, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:21:27 PM', '28-04-2021 08:21:30 PM'),
(422, 6, '19bcs2824@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:21:38 PM', '28-04-2021 08:21:42 PM'),
(423, 9, '19bcs2810@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 08:22:24 PM', '28-04-2021 08:22:38 PM'),
(424, 9, '19bcs2810@gmail.com', 0x3232332e3138352e35362e35, 'Chandigarh (CH)', 'Chandigarh, India (IN)', '28-04-2021 08:29:21 PM', ''),
(425, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:41:33 PM', '28-04-2021 09:43:43 PM'),
(426, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:46:24 PM', '28-04-2021 09:46:28 PM'),
(427, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:48:01 PM', '28-04-2021 09:48:28 PM'),
(428, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:50:00 PM', '28-04-2021 09:50:10 PM'),
(429, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:50:31 PM', '28-04-2021 09:50:35 PM'),
(430, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:50:41 PM', '28-04-2021 09:50:46 PM'),
(431, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:51:01 PM', '28-04-2021 09:51:04 PM'),
(432, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:51:20 PM', '28-04-2021 09:51:24 PM'),
(433, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:52:44 PM', '28-04-2021 09:53:07 PM'),
(434, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:53:10 PM', '28-04-2021 09:53:23 PM'),
(435, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:53:27 PM', ''),
(436, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:55:44 PM', '28-04-2021 09:58:47 PM'),
(437, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 09:59:33 PM', ''),
(438, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:00:16 PM', '28-04-2021 10:00:24 PM'),
(439, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:00:50 PM', '28-04-2021 10:00:52 PM'),
(440, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:01:14 PM', '28-04-2021 10:01:16 PM'),
(441, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:03:18 PM', '28-04-2021 10:03:19 PM'),
(442, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:03:39 PM', '28-04-2021 10:03:44 PM'),
(443, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:06:08 PM', '28-04-2021 10:06:28 PM'),
(444, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:06:59 PM', '28-04-2021 10:07:46 PM'),
(445, 7, '19bcs2814@gmail.com', 0x3130362e36372e33382e3930, 'Patna (BR)', 'Bihar, India (IN)', '28-04-2021 10:08:35 PM', '28-04-2021 10:08:50 PM'),
(446, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:08:57 PM', '28-04-2021 10:09:54 PM'),
(447, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:17:10 PM', '28-04-2021 10:17:56 PM'),
(448, 7, '19bcs2814@gmail.com', 0x3130362e36372e33382e3930, 'Patna (BR)', 'Bihar, India (IN)', '28-04-2021 10:18:20 PM', '28-04-2021 10:18:31 PM'),
(449, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:18:43 PM', '28-04-2021 10:39:31 PM'),
(450, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:39:36 PM', '28-04-2021 10:54:44 PM'),
(451, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 10:54:49 PM', '28-04-2021 11:06:30 PM'),
(452, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 11:09:26 PM', '28-04-2021 11:09:31 PM'),
(453, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 11:10:02 PM', '28-04-2021 11:10:37 PM'),
(454, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:09:13 AM', '29-04-2021 09:21:21 AM'),
(455, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:21:36 AM', '29-04-2021 09:21:38 AM'),
(456, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:21:43 AM', '29-04-2021 09:21:45 AM'),
(457, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:21:52 AM', '29-04-2021 09:22:01 AM'),
(458, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:22:07 AM', '29-04-2021 09:22:12 AM'),
(459, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:25:25 AM', '29-04-2021 09:26:46 AM'),
(460, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:36:47 AM', '29-04-2021 10:37:54 AM'),
(461, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 01:03:52 PM', '29-04-2021 01:07:27 PM'),
(462, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 02:15:51 PM', ''),
(463, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 03:37:52 PM', ''),
(464, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 03:37:53 PM', '29-04-2021 03:38:57 PM'),
(465, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 04:34:51 PM', '29-04-2021 04:40:11 PM'),
(466, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:01:53 PM', '29-04-2021 10:15:47 PM'),
(467, 8, '19bcs2813@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:15:55 PM', '29-04-2021 10:18:17 PM'),
(468, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:20:00 PM', ''),
(469, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:35:23 PM', '29-04-2021 10:40:48 PM'),
(470, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 10:41:28 PM', '29-04-2021 10:41:54 PM'),
(471, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 12:05:28 PM', '30-04-2021 12:08:07 PM'),
(472, 8, '19bcs2813@gmail.com', 0x3133322e3135342e3137362e3634, 'Ludhiana (PB)', 'Punjab, India (IN)', '30-04-2021 12:12:23 PM', ''),
(473, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 12:12:24 PM', ''),
(474, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 01:23:01 PM', ''),
(475, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 03:00:51 PM', '30-04-2021 03:01:25 PM'),
(476, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 11:30:46 PM', '30-04-2021 11:50:59 PM'),
(477, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-05-2021 12:16:58 AM', '01-05-2021 12:17:56 AM'),
(478, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-05-2021 11:25:31 AM', '01-05-2021 11:28:58 AM'),
(479, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-05-2021 11:51:07 AM', ''),
(480, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '16-05-2021 06:54:51 PM', '16-05-2021 07:07:57 PM'),
(481, 8, '19bcs2813@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '16-05-2021 07:08:13 PM', ''),
(482, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '16-05-2021 10:11:01 PM', ''),
(483, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '17-05-2021 10:13:42 AM', ''),
(484, 6, '19bcs2824@gmail.com', 0x3130362e3231372e3136302e323438, 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '17-05-2021 11:38:42 AM', ''),
(485, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '17-05-2021 12:59:56 PM', ''),
(486, 44, '19bcs1825@gmail.com', 0x3130362e3230342e3232392e313232, 'Karnal (HR)', 'Haryana, India (IN)', '17-05-2021 01:18:34 PM', ''),
(487, 44, '19bcs1825@gmail.com', 0x3133322e3135342e3134302e323039, 'Ludhiana (PB)', 'Punjab, India (IN)', '17-05-2021 02:15:32 PM', '17-05-2021 02:19:41 PM'),
(488, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '26-05-2021 05:35:07 PM', ''),
(489, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-05-2021 11:51:10 AM', ''),
(490, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-05-2021 11:58:28 PM', ''),
(491, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e313033, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-06-2021 09:37:13 PM', ''),
(492, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '05-07-2021 05:50:04 PM', '05-07-2021 05:53:08 PM'),
(493, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '05-07-2021 05:55:32 PM', '05-07-2021 05:58:14 PM'),
(494, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '07-07-2021 12:39:11 PM', ''),
(495, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '27-07-2021 11:49:40 PM', '27-07-2021 11:50:44 PM'),
(496, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-08-2021 12:49:21 PM', ''),
(497, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-08-2021 12:57:12 PM', ''),
(498, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '03-08-2021 12:42:08 PM', ''),
(499, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '03-08-2021 10:46:24 PM', ''),
(500, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '04-08-2021 12:08:09 AM', ''),
(501, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '05-08-2021 11:24:43 PM', ''),
(502, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '05-08-2021 11:34:05 PM', ''),
(503, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '06-08-2021 02:15:16 PM', ''),
(504, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '06-08-2021 09:57:54 PM', ''),
(505, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '06-08-2021 10:05:43 PM', ''),
(506, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '07-08-2021 02:05:35 PM', ''),
(507, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '07-08-2021 02:39:38 PM', ''),
(508, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '07-08-2021 11:39:30 PM', ''),
(509, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '10-08-2021 02:36:13 PM', '10-08-2021 02:36:27 PM'),
(510, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '10-08-2021 02:36:35 PM', '10-08-2021 02:37:24 PM'),
(511, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '12-08-2021 12:25:11 PM', '12-08-2021 12:30:13 PM'),
(512, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '12-08-2021 12:34:31 PM', '12-08-2021 12:34:39 PM'),
(513, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '01-09-2021 05:05:55 PM', '01-09-2021 05:12:14 PM'),
(514, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '01-09-2021 05:12:42 PM', ''),
(515, 7, '19bcs2814@gmail.com', 0x3130332e34382e3139362e3530, 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '02-09-2021 11:18:35 AM', ''),
(516, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '10-09-2021 11:33:11 AM', '10-09-2021 11:36:32 AM'),
(517, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '10-09-2021 11:03:44 PM', ''),
(518, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '12-09-2021 12:20:19 AM', ''),
(519, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '01-10-2021 09:57:19 AM', '01-10-2021 09:58:39 AM'),
(520, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '01-10-2021 09:58:46 AM', ''),
(521, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '01-10-2021 01:13:06 PM', '01-10-2021 01:14:01 PM'),
(522, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '10-10-2021 08:16:43 PM', '10-10-2021 08:16:47 PM'),
(523, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '10-10-2021 08:37:51 PM', ''),
(524, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313035, ' ()', ',  ()', '11-10-2021 03:41:41 PM', ''),
(525, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '11-10-2021 04:56:13 PM', ''),
(526, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '14-10-2021 10:55:55 PM', '14-10-2021 10:56:56 PM'),
(527, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '13-11-2021 04:45:24 PM', ''),
(528, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '14-11-2021 10:45:31 PM', ''),
(529, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '17-11-2021 10:46:26 AM', ''),
(530, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '05-12-2021 08:11:36 PM', ''),
(531, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313034, ' ()', ',  ()', '05-12-2021 08:14:03 PM', ''),
(532, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '04-01-2022 07:58:00 PM', ''),
(533, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '13-01-2022 03:02:46 PM', ''),
(534, 7, '19bcs2814@gmail.com', 0x3a3a31, ' ()', ',  ()', '13-01-2022 03:07:01 PM', ''),
(535, 7, '19bcs2814@gmail.com', 0x3139322e3136382e312e313035, ' ()', ',  ()', '17-02-2022 10:48:44 PM', ''),
(536, 7, '19bcs2814@gmail.com', 0x31302e36342e32302e3336, ' ()', ',  ()', '17-02-2022 10:49:50 PM', '17-02-2022 10:50:51 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` varchar(45) NOT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Electronics', 'Electronic Products', '15-03-2021 11:21:33 PM', ''),
(6, 'Fashion', 'Fashion', '15-03-2021 11:21:33 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`, `transaction_id`) VALUES
(9, 1, '2', 1, '2021-03-20 17:11:37', 'Debit / Credit card', 'Delivered', ''),
(10, 1, '19', 1, '2021-03-20 18:20:22', 'COD', 'Delivered', ''),
(11, 4, '1', 1, '2021-03-20 18:25:07', 'Internet Banking', NULL, ''),
(12, 1, '2', 1, '2021-03-30 14:31:19', 'Debit / Credit card', 'in Process', ''),
(13, 1, '1', 1, '2021-03-30 14:31:50', 'Internet Banking', NULL, ''),
(16, 4, '4', 1, '2021-04-19 19:12:32', NULL, NULL, ''),
(18, 1, '18', 1, '2021-04-20 20:45:54', 'Debit / Credit card', NULL, ''),
(20, 21, '10', 1, '2021-04-21 08:15:50', 'Internet Banking', NULL, ''),
(21, 21, '19', 1, '2021-04-21 08:16:13', 'Debit / Credit card', NULL, ''),
(22, 21, '7', 1, '2021-04-21 08:16:36', 'Debit / Credit card', NULL, ''),
(24, 21, '21', 1, '2021-04-22 03:58:58', 'Debit / Credit card', NULL, ''),
(25, 21, '20', 1, '2021-04-22 04:00:16', 'Debit / Credit card', NULL, ''),
(26, 1, '18', 1, '2021-04-22 04:01:30', 'COD', NULL, ''),
(27, 1, '23', 1, '2021-04-22 04:01:58', 'Debit / Credit card', NULL, ''),
(28, 21, '25', 1, '2021-04-22 04:10:08', 'Debit / Credit card', 'in Process', ''),
(29, 21, '1', 1, '2021-04-22 05:01:59', 'Debit / Credit card', NULL, ''),
(30, 21, '20', 1, '2021-04-22 05:01:59', 'Debit / Credit card', 'Delivered', ''),
(31, 4, '1', 1, '2021-04-22 16:49:20', NULL, NULL, ''),
(33, 1, '25', 1, '2021-04-25 12:02:34', 'Debit / Credit card', 'Delivered', ''),
(34, 1, '17', 1, '2021-04-25 12:32:05', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(7, 10, 'Delivered', 'your product has been delivered successfully.\r\nThanku for shopping', '2021-03-20 18:21:26'),
(8, 9, 'Delivered', 'you product has been delivered successfully.', '2021-03-30 08:46:20'),
(9, 12, 'in Process', 'Your product is on the way.', '2021-04-25 11:42:29'),
(10, 33, 'in Process', 'Your product has been shipped.', '2021-04-25 12:14:06'),
(11, 28, 'in Process', 'Dear Vishal, Your product has been shipped.\r\nThank u for shopping.:)', '2021-04-25 12:23:48'),
(12, 30, 'Delivered', 'Dear Vishal, Your product has been delivered successfully.\r\nThank u for shopping.', '2021-04-25 12:25:49'),
(13, 33, 'Delivered', 'Dear Tushar, Your product has been deliverd successfully.\r\nthanks', '2021-04-25 12:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(6, 2, 5, 5, 5, 'Kunal tejan', 'Best phone at this price range', 'Good performance\r\nIt comes with A13 bionic chip\r\nHandly phone', '2021-03-19 18:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(55) DEFAULT NULL,
  `productPriceBeforeDiscount` int(55) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `productImage4` varchar(255) DEFAULT NULL,
  `productImage5` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL,
  `last_price_updation` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productImage4`, `productImage5`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `last_price_updation`, `added_by`) VALUES
(1, 4, 3, 'LG 108 cm (43 inch) Full HD LED Smart TV 2020 Edition  (43LM5650PTA)', 'LG', 31000, 40000, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Supported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Operating System: WebOS</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Resolution: Full HD 1920 x 1080 Pixels</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Sound Output: 20 W</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>Refresh Rate: 50 Hz</b></li></ul>', 'lg-43lm5650pta-43lm5650pta-original-imafvfq5jpcjzh2m.jpeg', 'lg-43lm5650pta-43lm5650pta-original-imafvfqyfwgehxp9.jpeg', 'lg-43lm5650pta-43lm5650pta-original-imafvfqfxjwrz4ad.jpeg', 'lg-43lm5650pta-43lm5650pta-original-imafv8q5rzqjmyeq.jpeg', 'lg-43lm5650pta-43lm5650pta-original-imafv2kvz6ugh3ky.jpeg', 0, 'In Stock', '22-03-2021 11:40:51 PM', '23-03-2021 10:31:07 AM', '', 'TUSHAR (19BCS2814)'),
(2, 4, 14, 'APPLE iPhone SE (Black, 64 GB) (2020)', 'Apple Inc.', 37999, 42500, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>64 GB ROM</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>11.94 cm (4.7 inch) Retina HD Display</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>12MP Rear Camera | 7MP Front Camera</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>A13 Bionic Chip with 3rd Gen Neural Engine Processor</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Water and Dust Resistant (1 meter for Upto 30 minutes, IP67)</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Fast Charge Capable</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>Wireless charging (Works with Qi Chargers | Qi Chargers are Sold Separately</b></li></ul>', 'apple-iphone-se-mxd02hn-a-original-imafrcpjfehbbqgb.jpeg', 'apple-iphone-se-mxd02hn-a-original-imafrcpjgcphy69z.jpeg', 'apple-iphone-se-mxd02hn-a-original-imafrcpjdkt4ef7w.jpeg', 'apple-iphone-se-mxd02hn-a-original-imafrcpjsnr2n9uz.jpeg', 'apple-iphone-se-mxd02hn-a-original-imafrcpj393yex36.jpeg', 0, 'In Stock', '22-03-2021 11:45:32 PM', '30-03-2021 11:28:51 PM', '', 'TUSHAR (19BCS2814)'),
(4, 4, 19, 'msi Prestige 15 Core i7 11th Gen - (16 GB/512 GB SSD/Windows 10 Home/4 GB Graphics) Prestige 15 A11SCX-273IN Laptop  (15.6 inch, Carbon Grey, 1.65 kg)', 'MSI', 100999, 118991, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Pre-installed Genuine Windows 10 OS</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Light Laptop without Optical Disk Drive</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>15.6 inch Full HD LED Backlit IPS Thin Bezel Display (60 Hz Refresh Rate, 100% sRGB)</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px; font-weight: 400; background-color: rgb(255, 255, 255);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dedicated Graphic Memory Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">GDDR6</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dedicated Graphic Memory Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">4 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Intel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Core i7</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Generation</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">11th Gen</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SSD</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SSD Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">512 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">16 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">DDR4</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Variant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">1185G7</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">4.80 GHz Max Turbo Frequency</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM Frequency</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">3200 MHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cache</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">12 MB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Graphic Processor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">NVIDIA GeForce GTX 1650 Max-Q</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Cores</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">4</li></ul></td></tr></tbody></table></b></li></ul>', 'msi-original-imafywfyzsgeqkeq.jpeg', 'msi-original-imafywfyrzqkryb3.jpeg', 'msi-original-imafywfytt4nfhdr.jpeg', 'msi-original-imafywfym76mhz44.jpeg', 'msi-original-imafywfynatzbgku.jpeg', 0, 'In Stock', '22-03-2021 11:47:35 PM', '23-03-2021 10:31:34 AM', '', 'VISHAL (19BCS2813)'),
(5, 4, 14, 'SAMSUNG Galaxy S21 Plus (Phantom Silver, 128 GB)  (8 GB RAM)', 'Samsung', 75999, 81000, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>8 GB RAM | 128 GB ROM</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>17.02 cm (6.7 inch) Full HD+ Display</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>64MP + 12MP + 12MP | 10MP Front Camera</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>4800 mAh Lithium-ion Battery</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>Exynos 2100 Processor</b></li></ul>', 'samsung-galaxy-s21-plus-sm-g996bzsginu-original-imafzchsbg324bka.jpeg', 'samsung-galaxy-s21-plus-sm-g996bzsginu-original-imafzckyvypbv3pe.jpeg', 'samsung-galaxy-s21-plus-sm-g996bzsginu-original-imafzchs59bfkzbz.jpeg', 'samsung-galaxy-s21-plus-sm-g996bzsginu-original-imafzckyhhhdgper.jpeg', 'samsung-galaxy-s21-plus-sm-g996bzsginu-original-imafzckyvhpgaht5.jpeg', 0, 'In Stock', '22-03-2021 11:48:35 PM', '18-04-2021 11:31:26 PM', '', 'VISHAL (19BCS2813)'),
(6, 4, 19, 'ASUS ROG Strix G15 Core i7 10th Gen - (16 GB/1 TB SSD/Windows 10 Home/6 GB Graphics/NVIDIA GeForce GTX 1660 Ti/144 Hz) G512LU-AL011T Gaming Laptop  (15.6 inch, Black Plastic, 2.30 kg)', 'ASUS', 105999, 118000, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>NVIDIA GeForce GTX 1660 Ti</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>15.6 inch Full HD LED Backlit Anti-glare IPS Display (144 Hz Refresh Rate, 250 nits Brightness, 1:1000 Contrast Ratio, 45% NTSC Color Gamut, 67% sRGB, 50% Adobe)</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Light Laptop without Optical Disk Drive</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>Pre-installed Genuine Windows 10 OS</b></li></ul><div><div class=\"_5pFuey\" style=\"margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">Specifications</div><div style=\"margin: 0px; padding: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 12px;\"><div class=\"_1UhVsV\" style=\"margin: 0px; padding: 0px;\"><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">General</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Laptop, Power Adaptor, User Guide, Warranty Documents</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">G512LU-AL011T</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Part Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">90NR0351-M00910</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Series</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">ROG Strix G15</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Black Plastic</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Gaming Laptop</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Suitable For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Processing &amp; Multitasking, Gaming</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Supply</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">230 W AC Adapter</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Cell</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">4 cell</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">MS Office Provided</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">No</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Processor And Memory Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dedicated Graphic Memory Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">GDDR6</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dedicated Graphic Memory Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">6 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Intel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Core i7</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Generation</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">10th Gen</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SSD</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SSD Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">1 TB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">16 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">DDR4</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Variant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">10750H</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Chipset</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Intel HM470</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">2.6 GHz with Turbo Boost Upto 5 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Memory Slots</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">2 Slots</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Expandable Memory</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Upto 32 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM Frequency</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">2933 MHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cache</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">12 MB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Graphic Processor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">NVIDIA GeForce GTX 1660 Ti</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Cores</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">6</li></ul></td></tr></tbody></table></div></div></div></div>', 'asus-na-gaming-laptop-original-imafwfxawa2fjdux.jpeg', 'asus-na-gaming-laptop-original-imafwfxafcrpaxkq.jpeg', 'asus-na-gaming-laptop-original-imafwfxav8ahemb6.jpeg', 'asus-na-gaming-laptop-original-imafwfxatfgpswpr.jpeg', 'asus-na-gaming-laptop-original-imafwfxajz32ugvg.jpeg', 0, 'In Stock', '22-03-2021 11:49:38 PM', '23-04-2021 11:36:40 PM', '', 'SANKET (19BCS1825)');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productImage4`, `productImage5`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `last_price_updation`, `added_by`) VALUES
(7, 4, 14, 'APPLE iPhone 12 Mini (Black, 64 GB)', 'Apple Inc', 64990, 69990, '<ul style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>64 GB ROM</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>13.72 cm (5.4 inch) Super Retina XDR Display</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>12MP + 12MP | 12MP Front Camera</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>A14 Bionic Chip with Next Generation Neural Engine Processor</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>Ceramic Shield</b></li><li class=\"_21Ahn-\" style=\"padding-bottom: 8px; padding-left: 16px; position: relative;\"><b>IP68 Water Resistance</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>All Screen OLED Display</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</b></li><li class=\"_21Ahn-\" style=\"padding-left: 16px; position: relative;\"><b><div class=\"_5pFuey\" style=\"margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; font-weight: 500; line-height: 1.14;\">Specifications</div><div style=\"margin: 0px; padding: 0px; font-size: 12px; font-weight: 400;\"><div class=\"_1UhVsV\" style=\"margin: 0px; padding: 0px;\"><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">General</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">In The Box</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">iPhone, USB-C to Lightning Cable, Documentation</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">MGDX3HN/A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">iPhone 12 Mini</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browse Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Smartphones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Dual Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Hybrid Sim Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OTG Compatible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Quick Charging</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sound Enhancements</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Built?in Stereo Speaker</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Display Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">13.72 cm (5.4 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">2340 x 1080 Pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Super Retina XDR Display</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Super Retina XDR Display</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Super Retina XDR Display, 5.4 inch (Diagonal) All Screen OLED Display, HDR Display, True Tone, Wide Colour (P3), Haptic Touch, 2000000:1 Contrast Ratio (Typical), 625 nits Max Brightness (Typical), 1200 nits Max Brightness (HDR), Fingerprint-resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Os &amp; Processor Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">iOS 14</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">A14 Bionic Chip with Next Generation Neural Engine</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Memory &amp; Storage Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">64 GB</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Camera Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">12MP + 12MP</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Dual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High?Key Mono), Smart HDR 3 for Photos, Video: 4K Video Recording at 24 fps, 30 fps or 60 fps, 1080p HD Video Recording at 30 fps or 60 fps, HDR Video Recording with Dolby Vision Upto 30 fps, Extended Dynamic Range for Video Upto 60 fps, Optical Image Stabilisation for Video, 2x Optical Zoom Out, Digital Zoom Upto 3x, Audio Zoom, QuickTake Video, Slow-motion Video Support for 1080p at 120 fps or 240 fps, Night Mode Time-lapse, Time-lapse Video with Stabilisation, Stereo Recording</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">12MP Front Camera</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">TrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at 30 fps, Cinematic Video Stabilisation (4K, 1080p and 720p), 4K Video Recording at 24 fps, 30 fps or 60 fps, HDR Video Recording with Dolby Vision Upto 30 fps, 1080p HD Video Recording at 30 fps or 60 fps, Slow-motion Video Support for 1080p at 120 fps, Night Mode, Deep Fusion, QuickTake Video, Animoji and Memoji</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Flash</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Rear: Brighter True Tone Flash with Slow Sync | Front: Retina Flash</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">4K, 1080P, HDR Video Recording with Dolby Vision Upto 30 fps</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Digital Zoom</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Photo: Digital Zoom Upto 5x, Video: Digital Zoom Upto 3x</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Frame Rate</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">24 fps, 30 fps, 60 fps, 120 fps, 240 fps</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dual Camera Lens</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Primary Camera</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Call Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Wait/Hold</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Connectivity Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Network Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">5G, 4G, 3G, 2G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Supported Networks</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">5G, 4G LTE, WCDMA, GSM</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internet Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">5G, 4G, 3G, Wi-Fi, EDGE</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">3G</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Pre-installed Browser</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Safari</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">v5.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Wi?Fi 6 (802.11ax) with 2x2 MIMO</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Hotspot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">NFC</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">EDGE</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Map Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Maps</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Other Details</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Smartphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Nano + eSIM</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Mobile Tracker</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Removable Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SMS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Graphics PPI</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">476 PPI</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Face ID, Barometer, Three?axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browser</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Safari</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Splash, Water and Dust Resistant (Rated IP68 (Maximum Depth of 6 Metres Upto 30 Minutes) Under IEC Standard 60529), Ceramic Shield Front, Aerospace-grade Aluminium, Compatible with MagSafe Accessories and Wireless Chargers, Audio Playback: Spatial Audio Playback, Supports Dolby Atmos, Video Playback: HDR with Dolby Vision, HDR10 and HLG</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Built-in GPS, GLONASS, Galileo, QZSS and BeiDou</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Multimedia Features</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Formats</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Audio Formats Supported: AAC?LC, HE?AAC, HE?AAC v2, Protected AAC, MP3, Linear PCM, Apple Lossless, FLAC, Dolby Digital (AC?3), Dolby Digital Plus (E?AC?3), Dolby Atmos and Audible (Formats 2, 3, 4, Audible Enhanced Audio, AAX and AAX+), Spatial Audio Playback</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Formats</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">HEVC, H.264, MPEG?4 Part 2 and Motion JPEG, HDR with Dolby Vision, HDR10 and HLG</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Dimensions</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">64.2 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">131.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">7.4 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">133 g</li></ul></td></tr></tbody></table></div><div class=\"_3k-BhJ\" style=\"margin: 0px; padding: 24px 24px 34px; border-top: 1px solid rgb(240, 240, 240); font-size: 14px;\"><div class=\"flxcaE\" style=\"margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">Warranty</div><table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 747.13px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">Brand Warranty for 1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 747.13px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding-right: 8px; width: 186.783px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; width: 560.348px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul><li class=\"_21lJbe\">1 Year</li></ul></td></tr></tbody></table></div></div></div></b></li></ul>', 'apple-iphone-12-mini-dummyapplefsn-original-imafwgbfwyzztfnh.jpeg', 'apple-iphone-12-mini-dummyapplefsn-original-imafwgbfwkfrerak.jpeg', 'apple-iphone-12-mini-dummyapplefsn-original-imafwgbfvfp2daw5.jpeg', 'apple-iphone-12-mini-dummyapplefsn-original-imafwgbf2perkgyf.jpeg', 'apple-iphone-12-mini-dummyapplefsn-original-imafwgbfcsfghkre.jpeg', 0, 'In Stock', '23-03-2021 12:12:45 PM', '23-03-2021 04:41:34 PM', '', 'SANKET (19BCS1825)'),
(8, 4, 20, 'Lenovo IdeaCentre AIO 3 21.5” FHD All-in-One Desktop', 'Lenovo Inc.', 38999, 41790, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Processor: AMD Athlon Silver 3050U | Speed: 2.3 GHz (Base) - 3.2 GHz (Max) | 2 Cores | 1MB L2 &amp; 4MB L3 Cache</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>OS: Pre-Loaded Windows 10 Home with Lifetime Validity</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Pre-Installed: MS Office Home and Student 2019</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory and Storage: 8GB RAM DDR4-2400, Expandable up to 16GB | 1TB HDD</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Graphics: Integrated AMD Radeon Graphics</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Display: 21.5-inch Full HD (1920x1080), Brightness: 250 nits | Wide Viewing Angle</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Camera: HD 720p Camera</b></span></li></ul>', '81XxfD6a3PL._SL1500_.jpg', '61eyfqIMqQL._SL1000_.jpg', '71o-TLc1RkL._SL1000_.jpg', '61KYwrmIyQL._SL1000_.jpg', '81ywvUEuaiL._SL1500_.jpg', 0, 'In Stock', '23-03-2021 05:30:06 PM', '21-04-2021 07:14:41 PM', '', 'SANKET (19BCS1825)'),
(10, 4, 14, 'OnePlus 8T 5G (Aquamarine Green, 8GB RAM, 128GB Storage)', 'Oneplus', 41999, 43999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Rear quad camera setup having 48MP main camera with Sony IMX586 sensor, 16MP ultra wide angle Lends, 5MP macro lens, 2MP monochrome lens | 16MP front camera with Sony IMX471 sensor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>16.63 centimeters (6.55 inch) 120Hz fluid AMOLED capacitive touchscreen with 2400 x 1080 pixels resolution, 402 ppi pixel density</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>OxygenOS based on Android v11 operating system with 2.86GHz Qualcomm Snapdragon 865TM with Adreno 650 GPU quad core processor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory expandable up to 128GB | Dual SIM (nano+nano) dual-standby (5G+4G)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>4500mAH lithium-polymer battery</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>120 Hz fluid Amoled display, Qualcomm Snapdragon 865, Warp Charge 65 , OxygenOS based on Android 11, Adreno 650 GPU</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 440.048px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Reading mode, night mode, vibrant color, face unlock, HDR, screen flash, face retouching</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>supports Alexa Hands-Free. Alexa on your phone lets you make phone calls, open apps, control smart home devices, access the library of Alexa skills, and more using just your voice while on-the-go. Download the Alexa app and complete hands-free setup to get started. Just ask - and Alexa will respond instantly.</b></span></li></ul></div></div>', '71UqqpGVheL._SL1500_.jpg', '61Tw6LZoaiL._SL1500_.jpg', '61T6fOPh7dL._SL1500_.jpg', '61oDpGk8uYL._SL1500_.jpg', '51d-ounkr4L._SL1500_.jpg', 0, 'In Stock', '09-04-2021 07:40:39 PM', NULL, '', 'TUSHAR (19BCS2814)');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productImage4`, `productImage5`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `last_price_updation`, `added_by`) VALUES
(11, 4, 14, 'New Apple iPhone 11 (128GB) - Green', 'Apple Inc', 56990, 59990, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>6.1-inch (15.5 cm diagonal) Liquid Retina HD LCD display</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Water and dust resistant (2 meters for up to 30 minutes, IP68)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Face ID for secure authentication</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>A13 Bionic chip with third-generation Neural Engine</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Fast-charge capable</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 410.048px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Wireless charging</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>As part of our efforts to reach our environmental goals, iPhone no longer includes a power adapter or EarPods. Please use your existing Apple power adapter and headphones or buy these accessories separately</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>iOS 14 with redesigned widgets on the Home screen, all-new App Library, App Clips, and more</b></span></li></ul></div></div>', '71w3oJ7aWyL._SL1500_.jpg', '71qWLuRr6qL._SL1500_.jpg', '71J21qUBMoL._SL1500_.jpg', '81pR-x9PsCL._SL1500_.jpg', '81A4mZpvWBL._SL1500_.jpg', 0, 'In Stock', '09-04-2021 07:42:46 PM', '18-04-2021 12:45:42 AM', '', 'TUSHAR (19BCS2814)'),
(12, 4, 3, 'Samsung 80 cm (32 inches) Wondertainment Series HD Ready LED Smart TV UA32TE40AAKBXL (Titan Gray)', 'Sams', 56990, 59990, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>6.1-inch (15.5 cm diagonal) Liquid Retina HD LCD display</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Water and dust resistant (2 meters for up to 30 minutes, IP68)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Face ID for secure authentication</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>A13 Bionic chip with third-generation Neural Engine</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Fast-charge capable</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 410.048px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Wireless charging</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>As part of our efforts to reach our environmental goals, iPhone no longer includes a power adapter or EarPods. Please use your existing Apple power adapter and headphones or buy these accessories separately</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>iOS 14 with redesigned widgets on the Home screen, all-new App Library, App Clips, and more</b></span></li></ul></div></div>', '71fEd9glTIL._SL1500_.jpg', '71g5Lu5QLPL._SL1500_.jpg', '71OSF5qHCDL._SL1500_.jpg', '71xiB7FZbRL._SL1500_.jpg', '41V9lR+nZVL._SL1024_.jpg', 0, 'In Stock', '09-04-2021 07:42:46 PM', '09-04-2021 08:04:53 PM', '', 'TUSHAR (19BCS2814)'),
(16, 4, 21, 'Voltas 1.4 Ton 5 Star Inverter Adjustable Split AC (Copper, 2021 175V ADJ, White)', 'Voltas', 38990, 58990, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Spilt Ac with inverter compressor: variable speed compressor which adjusts power depending on heat load. It is most energy efficient and has lowest-noise operation</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Capacity: 1.4 Ton suitable for medium sized rooms (Upto 150 square feet)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Energy rating: 3 star, Annual energy consumption: 1101.55, ISEER value: 3.140</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Warranty: 1 year warranty on the unit and 4 years warranty on the compressor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>The AC comes with Copper condenser coil that makes its performance superior</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Special Features: This Ac comes with High Ambient Cooling,Stabilizer Free Operation,Copper condenser coil, Advanced Air Purification,Active Dehumidifier,Multi Stage Filtration Advantage,4 Way Auto Louver.</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Refrigerant gas: R32 that is environmental friendly with no ozone depletion potential</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 513.248px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>IDU Net Dimension: 30 x 84 x 144</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>The included components are 1 Indoor Unit 1 Outdoor Unit Inter Connecting Pipe 1 Remote 1 Manual and 1 Warranty Card</b></span></li></ul></div></div>', '41otzJsOE0S._SL1500_.jpg', '41PkqccfQHS._SL1500_.jpg', '71FeBceLl6L._SL1500_.jpg', '713w+Ag1NES._SL1500_.jpg', '718ask17g2L._SL1500_.jpg', 0, 'In Stock', '09-04-2021 07:56:53 PM', NULL, '', 'HARSH (19BCS2824)'),
(17, 4, 21, 'Daikin 1.5 Ton 5 Star Inverter Split AC (Copper, Anti Microbial Filter, 2018 Model, FTKG50TV, White)', 'Daikin', 46990, 55400, '<div id=\"clickToContact_feature_div\" class=\"celwidget\" data-feature-name=\"clickToContact\" data-csa-c-id=\"yg752p-u12s8s-wemxiv-r0hrta\" data-cel-widget=\"clickToContact_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div id=\"prePurchaseSupportAmabotFeature\"><hr aria-hidden=\"true\" class=\"a-spacing-small a-spacing-top-small a-divider-normal\" style=\"box-sizing: border-box; background-color: transparent; height: 1px; border-top-color: rgb(231, 231, 231); line-height: 19px; margin-top: 8px !important; margin-bottom: 8px !important;\"></div></div><div id=\"smartHomeWidget_feature_div\" class=\"celwidget\" data-feature-name=\"smartHomeWidget\" data-csa-c-id=\"73ozpi-bxgazr-5xw9mb-cygsf3\" data-cel-widget=\"smartHomeWidget_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"renewedProgramDescriptionAtf_feature_div\" class=\"celwidget\" data-feature-name=\"renewedProgramDescriptionAtf\" data-csa-c-id=\"jzngq2-n84b7m-s0bsw3-r3wwq5\" data-cel-widget=\"renewedProgramDescriptionAtf_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"twisterPlusWWDesktop\" class=\"celwidget\" data-feature-name=\"twisterPlusWWDesktop\" data-csa-c-id=\"zcyfwh-xv0417-1va8ef-15untc\" data-cel-widget=\"twisterPlusWWDesktop\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><b><span class=\"a-declarative\" data-action=\"close-side-sheet\" data-close-side-sheet=\"{}\"></span></b></div><div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-id=\"r1objv-qzzg5p-lxtjz7-m4gs77\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-id=\"7k8nnl-e69o92-7103fl-g1buu2\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. It is most energy efficient and has lowest-noise operation</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1.5 Ton</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Energy Rating: 5 Star: , Annual Energy Consumption (as per energy label): 824 units, ISEER Value: 4.7</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Manufacturer Warranty: 1 Year on Product, 1 Year on Condenser, 5 Years PCB Warranty, 10 Years on Compressor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Copper Condenser Coil: Better cooling and requires low maintenance</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Stabilizer Inside, Econo Mode, Indoor Unit Quiet Operation, Coanda Airflow, Power Chill Operation</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Refrigerant gas: R32 - no ozone depletion potential</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 440.048px;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>IDU dimension(88.5* 22.9* 29.8 cms), ODU dimension (84.5* 30.0* 59.5 cms) &amp; IDU (11 kgs) and ODU Weight (36 kgs)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Indoor Unit, Outdoor Unit, Remote Control, User manual &amp; Warranty Card</b></span></li></ul></div></div></div></div>', '61tCDS0t-hL._SL1500_.jpg', '71xC+KkhFzL._SL1500_.jpg', '71YluokhAmL._SL1500_.jpg', '71vVygJTXRL._SL1500_.jpg', '61DSZd1BYGL._SL1500_.jpg', 0, 'In Stock', '09-04-2021 07:59:17 PM', NULL, '', 'HARSH (19BCS2824)'),
(18, 4, 14, 'Samsung Galaxy Note 20 Ultra 5G (Mystic Bronze, 12GB RAM, 256GB Storage) ', 'Samsung', 104999, 116000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>108+12+12MP triple rear camera | 10MP front camera</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>17.45 centimeters (6.9-inch) WQHD+ dynamic Amoled display with 3088 x 1440 pixels resolution</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM (nano+nano) dual-standby (4G+4G)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Android v10.0 operating system with Exynos 990 octa core processor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>4500mAH lithium-ion battery (Non-removable)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Box also includes: Adaptor, Sim ejector pin, user manual, charging cable</b></span></li></ul>', '81afQk-7AjL._SL1500_.jpg', '71puZXbPIvL._SL1500_.jpg', '714vQdy88KL._SL1500_.jpg', '7154S3vZJsL._SL1500_.jpg', '71ejIWcbthL._SL1500_.jpg', 0, 'In Stock', '09-04-2021 08:04:06 PM', NULL, '', 'HARSH (19BCS2824)'),
(19, 4, 20, 'Lenovo IdeaCentre AIO 3 21.5” FHD All-in-One Desktop (AMD Athlon Silver 3050U –2.3GHz Base Speed/8GB/1TB HDD/Win10/Office/AMD Radeon GFX)', 'Lenovo Inc', 35990, 41790, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Processor: AMD Athlon Silver 3050U | Speed: 2.3 GHz (Base) - 3.2 GHz (Max) | 2 Cores | 1MB L2 &amp; 4MB L3 Cache</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>OS: Pre-Loaded Windows 10 Home with Lifetime Validity</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Pre-Installed: MS Office Home and Student 2019</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory and Storage: 8GB RAM DDR4-2400, Expandable up to 16GB | 1TB HDD</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Graphics: Integrated AMD Radeon Graphics</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Display: 21.5-inch Full HD (1920x1080), Brightness: 250 nits | Wide Viewing Angle</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Camera: HD 720p Camera</b></span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 440.048px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-left: 18px;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Audio: 2 x 3W Stereo Speakers</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Connectivity: Wi-Fi 5 (11ac, 2x2) | Bluetooth 5.0</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Ports: 2 USB 3.1 Gen1, 2 USB 2.0, Headphone/Mic combo jack (3.5mm), HDMI-out, Ethernet (RJ-45), Media card reader</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>In The Box: All in One (AIO), Wireless Keyboard, Wireless Mouse, Power Adaptor and User Manual</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Warranty: This genuine Lenovo All-in-One comes with 1 Year Onsite Manufacturer Warranty</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>In case of any technical/product related queries, please call 1800-419-7555</b></span></li></ul></div></div>', '01_9_Top-picks.jpg', '61eyfqIMqQL._SL1000_.jpg', '71o-TLc1RkL._SL1000_.jpg', '81XxfD6a3PL._SL1500_.jpg', '81ywvUEuaiL._SL1500_.jpg', 0, 'In Stock', '09-04-2021 08:08:27 PM', NULL, '', 'HARSH (19BCS2824)'),
(20, 4, 4, 'Samsung Galaxy M51 (Electric Blue, 8GB RAM, 128GB Storage)', 'Samsung ', 25999, 30999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Quad camera setup - 64MP (F1.8) main camera + 12MP (F2.2) ultra wide camera + 5MP (F2.4) depth camera + 5MP (F2.4) macro camera and 32MP (F2.2) front camera</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>16.95 cm (6.7-inch) sAMOLED Plus - Infinity-O display, FHD+ capacitive touchscreen with 1080 x 2400 pixels resolution, Contrast Ratio: 78960:1</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory, Storage &amp; SIM: 8GB RAM, 128GB internal memory expandable up to 512GB | Dedicated Memory slot</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Android v10.0 operating system with 2.2GHz+1.8GHz Qualcomm | SD730G octa core processor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>7000mAH lithium-ion battery | 25W USB Type-C to C fast charger in the box</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Fast face unlock and Side Fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTE | 3.5 mm headphone jack</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Box also includes: Travel adapter, USB Type-C to C, ejection pin and user manual</b></span></li></ul>', '710weRkP-nL._SL1500_.jpg', '81h7bygApVL._SL1500_.jpg', '71NlQHKIb3L._SL1500_.jpg', '61U5gEfcVqL._SL1500_.jpg', '81IE3Y5G1RL._SL1500_.jpg', 0, 'In Stock', '21-04-2021 07:03:07 PM', NULL, '', 'VISHAL (19BCS2813)'),
(21, 4, 4, 'OnePlus 8 Pro (Onyx Black 8GB RAM+128GB Storage)', 'OnePlus', 48999, 54999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, video hdr, cat&amp;dog face detect &amp; focus, ultrashot hdr, nightscape, super micro, portrait, pro mode, panorama, ai scene detection, raw image, audio zoom, audio 3d, infrared photography camera | 16MP front camera</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>17.22 centimeters (6.78-inch) 120Hz fluid display with 3168 x 1440 pixels resolution, 513 ppi pixel density and vibrant color effect color support</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>4510mAH lithium-ion battery</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Box also includes: Warp charge 30t power adapter, warp type-c cable (support usb 2.0), quick start guide, welcome letter, safety information and warranty card, logo sticker, case, screen protector (pre-applied), sim tray ejector</b></span></li></ul>', '61YSMhOd5EL._SL1500_.jpg', '61LHGUJT9xL._SL1500_.jpg', '61qO+Zlc+1L._SL1500_.jpg', '61WKrxzUt+L._SL1500_.jpg', '51LJQhxwvzL._SL1500_.jpg', 0, 'In Stock', '21-04-2021 07:06:15 PM', NULL, '', 'VISHAL (19BCS2813)'),
(22, 4, 4, 'OnePlus Nord 5G (Gray Onyx, 12GB RAM, 256GB Storage)', 'OnePlus', 25999, 27999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>4115mAH lithium-ion battery | In-Display fingerprint sensor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Corning Gorilla Glass 5 | 12GB GB LPDDR4X, 256GB UFS 2.1</b></span></li></ul>', '71zlbKfhFsL._SL1500_.jpg', '61UIe0tpaaL._SL1500_.jpg', '71xix9L8OYL._SL1500_.jpg', '61Et38E-pnL._SL1500_.jpg', '611PagZ50yL._SL1500_.jpg', 0, 'In Stock', '21-04-2021 07:08:03 PM', NULL, '', 'VISHAL (19BCS2813)'),
(23, 4, 20, 'HP All-in-One 22 -inch FHD Alexa Built-in Desktop (Intel i3-1005G1/8GB/1TB HDD/Win 10/MS Office 2019/Jet Black)', 'HP', 39990, 48999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Processor: 10th Gen Intel Core i3-1005G1 (1.2 GHz base frequency, up to 3.4 GHz with Intel Turbo Boost Technology, 4 MB L3 cache, 2 cores)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Memory: 8 GB DDR4-2400 SDRAM (1 x 8 GB); Storage:1 TB 7200 rpm SATA HDD</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Display: 21.5 diagonal Full HD VA ZBD anti-glare WLED three-sided micro edge, 250 nits, 72% NTSC (1920 x 1080)</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Minimum Dimensions (W x D x H): 49.03 x 20.45 x 38.07 cm; Weight: 5.7 kg</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Operating System &amp; Software: Microsoft Windows 10 - Home edition; Microsoft Office 2019 - Home and Student Edition</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Voice Assistant: Alexa Built-in</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Keyboard &amp; Mouse: USB black wired keyboard and mouse</b></span></li></ul>', '71Yn4A0SiCL._SL1200_.jpg', '71tkCg51vEL._SL1200_.jpg', '71Q-6dwlwZL._SL1200_.jpg', '71l7WFDIJaL._SL1200_.jpg', '717hcUmPcXL._SL1200_.jpg', 0, 'In Stock', '21-04-2021 07:11:38 PM', NULL, '', 'VISHAL (19BCS2813)'),
(25, 4, 4, 'Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage)', 'Samsung', 47999, 74999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Triple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take &amp; Night Mode | 32MP F2.2 Front Punch Hole Camera</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>6.5-inch(16.40 centimeters) Infinity-O Super AMOLED Display with 120Hz Refresh rate, 1080 x 2400 (FHD+) Resolution \"</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>4500 mAh battery (Non -removable) with Super Fast Charging, FAst Wireless Charging &amp; Finger Print sensor</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>IP68 Rated, MicroSD Card Slot (Expandable upto 1 TB), Dual Nano Sim, Hybrid Sim Slot, 5G+5G Dual stand by</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM.</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Triple Rear Camera Setup - 12megapixels (Dual Pixel) OIS F1.8 Wide Rear Camera + 8megapixels OIS Tele Camera + 12megapixels Ultra Wide | 30X Space Zoom, Single Take &amp; Night Mode | 32megapixels F2.2 Front Punch Hole Camera.</b></span></li></ul>', '81vDZyJQ-4L._AC_SL1500_.jpg', '81DLecfakeL._AC_SL1500_.jpg', '71yzyH-ohgL._AC_SL1500_.jpg', '81fgR0nttVL._AC_SL1500_.jpg', '718TJD5EfJL._AC_SL1500_.jpg', 0, 'In Stock', '21-04-2021 11:54:29 PM', NULL, '', 'Sanket (19BCS1825)'),
(26, 4, 14, 'OnePlus 9 Pro 5G (Morning Mist, 12GB RAM, 256GB Storage)', 'One Plus', 68999, 69999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Co-Developed by Hasselblad, 48 MP Main camera, 50 MP Ultra Wide Angle Camera with Sensor size of 1/1.56\', 8 MP Telepoto Lens, 2 MP Monochorme Lens,16 MP Front Camera</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Qualcomm Snapdragon 888 with Adreno 660 GPU</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>6.7 Inches 120Hz Fluid AMOLED Display</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>Oxygen OS based on Andriod 11</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>65W Warp Charging with 50W Wireless Charging</b></span></li><li style=\"list-style-type: disc; overflow-wrap: break-word;\"><span class=\"a-list-item\"><b>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</b></span></li></ul>', '61LvUvbZGlL._AC_SL1500_.jpg', '61tV-MH6ZsL._AC_SL1500_.jpg', '61Soa0ib6LL._AC_SL1500_.jpg', '61PoEg+jixL._AC_SL1500_.jpg', '619z5ubSOSL._AC_SL1500_.jpg', 0, 'In Stock', '21-04-2021 11:59:22 PM', NULL, '', 'Sanket (19BCS1825)');

-- --------------------------------------------------------

--
-- Table structure for table `product_want`
--

CREATE TABLE `product_want` (
  `id` int(11) NOT NULL,
  `pro_code` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_desc` varchar(255) NOT NULL,
  `posting_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_want`
--

INSERT INTO `product_want` (`id`, `pro_code`, `pro_name`, `pro_desc`, `posting_date`) VALUES
(11, 'APP12MAX', 'IPhone 12 Pro Max', 'It comes with latest A14 Bionic Chip', '22-03-2021 11:08:35 PM'),
(12, 'SAMS20Ultra', 'Samsung S20 ULTRA', 'It comes with samsung\'s latest exnoys processor', '25-03-2021 02:30:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `name`, `email`, `message`, `time`) VALUES
(22, 'Harsh Chauhhan', 'harshchauhan12221@gmail.com', 'I received my prod.', '30-03-2021 11:05:09 PM'),
(23, 'Gagan', '19BCS2810@gmail.com', 'hey@hyigwqdtydgqui', '18-04-2021 11:46:22 PM'),
(24, 'Vishal', '19bcs2813@gmail.com', 'fuihwqqhuhiugoijho', '20-04-2021 10:04:26 PM'),
(25, 'Vishal', '19bcs2813@gmail.com', 'khdqwuiyxffgiqwjkdbvty2qwui d2khggfdgwqqihvductyuygiyft1u2ytqgwvyxrt2fdhkv2u6ttqydg2wfwyytfqyg', '21-04-2021 02:34:40 AM'),
(26, 'Vishal', '19bcs2813@gmail.com', 'kjhjqfdiqtvdws\r\n', '21-04-2021 04:05:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `updation_date` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`, `added_by`) VALUES
(5, 'tushar', '19bcs2814@gmail.com', '12345', '22-03-2021 10:52:13 PM', '22-03-2021 11:05:11 PM', 'TUSHAR (19BCS2814)');

-- --------------------------------------------------------

--
-- Table structure for table `sellerlog`
--

CREATE TABLE `sellerlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellerlog`
--

INSERT INTO `sellerlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(57, 5, '19bcs2814@gmail.com', 0x3a3a31, '', ', ', '12-08-2021 12:34:54 PM');

-- --------------------------------------------------------

--
-- Table structure for table `seller_query`
--

CREATE TABLE `seller_query` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_query`
--

INSERT INTO `seller_query` (`id`, `username`, `email`, `message`, `time`) VALUES
(24, 'Tushar', '19bcsxxxx@gmail.com', 'wedw', '20-04-2021 10:31:03 AM');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Television', '22-03-2021 10:49:34 PM', '22-03-2021 04:17:09 PM'),
(4, 4, 'Mobiles', '22-03-2021 10:49:34 PM', ''),
(5, 4, 'Mobile Accessories', '22-03-2021 10:49:34 PM', ''),
(6, 4, 'Laptops', '22-03-2021 10:49:34 PM', ''),
(12, 6, 'Men Footwears', '22-03-2021 10:49:34 PM', ''),
(14, 4, 'Premium Phones', '22-03-2021 10:49:34 PM', NULL),
(19, 4, 'Gaming Laptops', '22-03-2021 10:49:34 PM', '23-03-2021 10:08:10 AM'),
(20, 4, 'Desktop PC', '09-04-2021 06:04:50 PM', NULL),
(21, 4, 'Air Conditioners', '09-04-2021 07:55:00 PM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` varchar(255) DEFAULT NULL,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userip`, `city`, `country`, `loginTime`, `logout`, `status`) VALUES
(66, 1, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '19-04-2021 08:34:53 PM', '19-04-2021 08:40:51 PM', 1),
(67, 4, 'test1234@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '19-04-2021 08:41:00 PM', '19-04-2021 08:42:22 PM', 1),
(77, 0, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '20-04-2021 12:46:23 AM', NULL, 0),
(78, 4, 'test1234@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '20-04-2021 12:46:30 AM', NULL, 1),
(124, 0, '19bcs2813@gmail.com', '157.39.145.149', 'Chandigarh (CH)', 'Chandigarh, India (IN)', '21-04-2021 09:58:35 PM', NULL, 0),
(125, 21, '19BCS2813@gmail.com', '157.39.145.149', 'Chandigarh (CH)', 'Chandigarh, India (IN)', '21-04-2021 09:59:09 PM', '21-04-2021 10:02:06 PM', 1),
(127, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:20:21 AM', '22-04-2021 07:32:49 AM', 1),
(128, 21, '19BCS2813@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:33:00 AM', '22-04-2021 07:34:48 AM', 1),
(129, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 09:27:57 AM', '22-04-2021 09:28:26 AM', 1),
(131, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 09:31:02 AM', '22-04-2021 09:39:33 AM', 1),
(133, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 09:45:02 AM', '22-04-2021 09:48:25 AM', 1),
(134, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 09:49:50 AM', '22-04-2021 09:50:21 AM', 1),
(135, 21, '19bcs2813@gmail.com', '157.39.150.57', 'Chandigarh (CH)', 'Chandigarh, India (IN)', '22-04-2021 10:31:34 AM', NULL, 1),
(136, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 11:00:25 AM', '22-04-2021 11:00:59 AM', 1),
(137, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 11:17:20 AM', '22-04-2021 11:21:29 AM', 1),
(138, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:20:38 PM', '22-04-2021 12:20:53 PM', 1),
(139, 21, '19BCS2813@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 12:21:05 PM', '22-04-2021 12:34:26 PM', 1),
(140, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 01:29:42 PM', '22-04-2021 01:31:58 PM', 1),
(141, 21, '19BCS2813@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 01:32:12 PM', '22-04-2021 01:40:50 PM', 1),
(142, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 02:04:38 PM', '22-04-2021 02:32:11 PM', 1),
(143, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 03:03:13 PM', '22-04-2021 03:04:50 PM', 1),
(144, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 04:06:33 PM', '22-04-2021 04:11:25 PM', 1),
(145, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 07:07:03 PM', '22-04-2021 07:38:04 PM', 1),
(146, 4, 'test1234@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:19:06 PM', '22-04-2021 10:19:51 PM', 1),
(147, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:33:40 PM', '22-04-2021 10:34:02 PM', 1),
(148, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '22-04-2021 10:47:33 PM', '22-04-2021 10:55:37 PM', 1),
(149, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 10:18:25 AM', '23-04-2021 10:21:38 AM', 1),
(150, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 10:28:54 AM', '23-04-2021 10:29:30 AM', 1),
(151, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:12:48 AM', '23-04-2021 11:14:59 AM', 1),
(152, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:08:50 PM', '23-04-2021 11:19:21 PM', 1),
(153, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:28:22 PM', '23-04-2021 11:29:07 PM', 1),
(154, 21, '19BCS2813@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '23-04-2021 11:29:15 PM', '30-04-2021 12:32:50 PM', 1),
(155, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '24-04-2021 12:05:07 AM', '24-04-2021 12:12:52 AM', 1),
(156, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '24-04-2021 12:18:04 AM', '24-04-2021 12:40:53 AM', 1),
(157, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 05:32:15 PM', '25-04-2021 06:31:56 PM', 1),
(158, 0, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 06:32:05 PM', NULL, 0),
(159, 0, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 06:33:18 PM', NULL, 0),
(160, 1, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 06:33:26 PM', '25-04-2021 07:58:39 PM', 1),
(161, 0, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 07:58:47 PM', NULL, 0),
(162, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 07:58:54 PM', '25-04-2021 10:33:02 PM', 1),
(163, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 10:36:51 PM', '25-04-2021 10:38:02 PM', 1),
(164, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '25-04-2021 10:40:16 PM', '25-04-2021 10:42:11 PM', 1),
(165, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '26-04-2021 01:34:21 PM', '26-04-2021 01:36:16 PM', 1),
(166, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '27-04-2021 02:11:00 PM', '27-04-2021 02:12:00 PM', 1),
(167, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '27-04-2021 07:02:01 PM', '27-04-2021 07:02:52 PM', 1),
(168, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '27-04-2021 07:03:01 PM', '27-04-2021 07:12:26 PM', 1),
(169, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '28-04-2021 11:03:51 AM', '28-04-2021 09:55:13 PM', 1),
(170, 1, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '29-04-2021 09:23:03 AM', '29-04-2021 10:41:21 PM', 1),
(171, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 12:03:46 PM', NULL, 1),
(172, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 03:01:38 PM', '30-04-2021 03:02:06 PM', 1),
(173, 1, '19bcs2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '30-04-2021 11:29:16 PM', '30-04-2021 11:30:37 PM', 1),
(174, 1, '19BCS2814@gmail.com', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '16-05-2021 09:28:38 PM', '16-05-2021 09:37:48 PM', 1),
(175, 22, '19bcs2824@gmail.com', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '17-05-2021 11:47:26 AM', NULL, 1),
(176, 1, '19bcs2814@gmail.com', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '05-07-2021 05:53:24 PM', NULL, 1),
(177, 0, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '27-07-2021 11:43:27 PM', NULL, 0),
(178, 0, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '27-07-2021 11:43:31 PM', NULL, 0),
(179, 0, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '27-07-2021 11:43:38 PM', '01-10-2021 01:17:06 PM', 0),
(180, 21, '19bcs2813@gmail.com', '::1', ' ()', ',  ()', '27-07-2021 11:43:47 PM', '27-07-2021 11:49:24 PM', 1),
(181, 21, '19bcs2813@gmail.com', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '01-08-2021 12:55:20 PM', '01-08-2021 12:56:45 PM', 1),
(182, 21, '19bcs2813@gmail.com', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)', '10-08-2021 02:37:43 PM', '10-08-2021 02:39:43 PM', 1),
(183, 21, '19bcs2813@gmail.com', '::1', ' ()', ',  ()', '12-08-2021 12:30:42 PM', '12-08-2021 12:34:04 PM', 1),
(184, 1, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '10-10-2021 08:17:49 PM', '13-01-2022 03:05:48 PM', 1),
(185, 0, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '13-01-2022 03:06:01 PM', NULL, 0),
(186, 1, '19bcs2814@gmail.com', '::1', ' ()', ',  ()', '13-01-2022 03:06:09 PM', '13-01-2022 03:06:52 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `passUdateDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, 'Tushar Tejan', '19bcs2814@gmail.com', 8743065083, '12345', 'D-Block Ashok Nagar, Shahdara Delhi-110093', 'Delhi', 'Delhi', 110093, 'D-Block Ashok Nagar, Shahdara Delhi-110093', 'Delhi', 'Delhi', 110093, '2021-03-13 19:30:50', '21-04-2021 07:09:36 AM', '21-04-2021 12:38:09 AM'),
(4, 'Nagar', 'test1234@gmail.com', 8378337823, '12345', 'C BLock Yamuna Vihar', 'Delhi', 'Delhi', 110053, 'C BLock Yamuna Vihar', 'Delhi', 'Delhi', 110053, '2021-03-14 18:47:20', NULL, ''),
(21, 'Vishal Kumar', '19bcs2813@gmail.com', 7087603512, 'vishal', 'Banur, mohali district,Punjab', 'Punjab', 'Mohali', 140601, 'Banur, mohali district,Punjab', 'Punjab', 'Mohali', 140601, '2021-04-21 04:54:22', '21-04-2021 10:14:11 AM', ''),
(22, 'Harsh Rana', '19bcs2824@gmail.com', 7500580545, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-17 06:17:13', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `browser_name` varchar(255) NOT NULL,
  `browser_version` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `added_on` varchar(255) NOT NULL,
  `userip` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `browser_name`, `browser_version`, `type`, `os`, `url`, `ref`, `added_on`, `userip`, `city`, `country`) VALUES
(16, 'Chrome', '89.0.4389.128', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/my-cart.php', '23-04-2021 12:23:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(17, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 12:43:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(20, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 12:45:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(21, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 12:46:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(22, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 12:46:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(23, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 12:49:39 PM', '157.39.137.224', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(24, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/visitor.php', '23-04-2021 01:10:48 PM', '157.39.137.224', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(25, 'Chrome', '89.0.4389.128', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '23-04-2021 01:12:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(26, 'Chrome', '89.0.4389.128', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 01:38:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(27, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 01:39:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(28, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 01:41:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(29, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=2', '23-04-2021 01:41:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(30, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 01:41:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(31, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 01:42:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(32, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/admin-profile.php', '23-04-2021 01:44:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(33, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 01:44:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(34, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 01:44:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(35, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 01:47:33 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(36, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 01:47:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(37, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 01:47:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(38, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '23-04-2021 02:08:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(39, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 02:18:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(40, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 02:18:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(41, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 02:18:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(42, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 02:18:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(43, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 02:23:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(62, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 03:35:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(63, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 03:37:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(64, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 03:38:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(65, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 03:38:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(66, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 03:39:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(67, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 03:39:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(68, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 03:39:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(69, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 04:31:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(70, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 04:35:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(71, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 04:38:12 PM', '112.110.121.57', 'Harbatpur (UT)', 'Uttarakhand, India (IN)'),
(72, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 04:38:41 PM', '112.110.121.57', 'Harbatpur (UT)', 'Uttarakhand, India (IN)'),
(73, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/', '', '23-04-2021 04:39:04 PM', '112.110.121.57', 'Harbatpur (UT)', 'Uttarakhand, India (IN)'),
(74, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:20:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(75, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:21:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(76, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:21:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(77, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:22:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(78, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:23:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(79, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:24:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(80, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:25:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(81, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:26:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(82, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:26:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(83, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:26:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(84, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:27:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(85, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:27:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(86, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:29:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(87, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:30:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(88, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:31:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(89, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:31:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(90, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:32:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(91, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:32:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(92, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:32:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(93, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:32:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(94, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:33:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(95, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:34:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(96, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:34:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(97, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:35:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(98, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:35:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(99, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:35:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(100, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:36:05 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(101, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:36:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(102, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:36:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(103, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:36:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(104, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:37:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(105, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:39:05 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(106, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:39:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(107, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:40:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(108, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:40:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(109, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:40:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(110, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:40:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(111, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:41:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(112, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:41:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(113, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:43:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(114, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:43:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(115, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:44:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(116, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:44:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(117, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:45:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(118, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:46:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(119, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:46:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(120, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:46:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(121, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:47:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(122, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:47:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(123, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/', '23-04-2021 07:47:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(124, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:47:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(125, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:48:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(126, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:48:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(127, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:48:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(128, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:49:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(129, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:49:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(130, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:51:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(131, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:51:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(132, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:51:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(133, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 07:52:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(134, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:52:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(135, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:53:05 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(136, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:55:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(137, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:55:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(138, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:56:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(139, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:56:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(140, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:56:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(141, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:56:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(142, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 07:56:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(143, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:57:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(144, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:57:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(145, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:57:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(146, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:58:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(147, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:58:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(148, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:58:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(149, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 07:58:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(150, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:00:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(151, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:00:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(152, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:01:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(153, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:01:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(154, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:02:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(155, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:02:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(156, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:03:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(157, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:03:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(158, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:03:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(159, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:04:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(160, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:04:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(161, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:04:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(162, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:04:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(163, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:05:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(164, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:05:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(165, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:06:37 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(166, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:06:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(167, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:07:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(168, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:07:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(169, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/sub-category.php?scid=19', '23-04-2021 08:07:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(170, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:07:33 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(171, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 08:07:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(172, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:07:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(173, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 08:07:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(174, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 08:07:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(175, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:08:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(176, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:09:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(177, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:10:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(178, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:10:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(179, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:10:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(180, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '23-04-2021 08:11:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(181, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 08:13:05 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(182, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:15:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(183, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:15:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(184, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:16:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(185, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:16:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(186, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:16:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(187, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:16:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(188, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:17:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(189, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:17:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(190, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 08:17:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(191, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '23-04-2021 08:17:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(192, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '23-04-2021 08:18:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(193, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '23-04-2021 08:18:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(194, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '23-04-2021 08:19:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(195, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '23-04-2021 08:20:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(196, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 08:20:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(197, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 08:23:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(198, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 11:08:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(199, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 11:08:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(200, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:08:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(201, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 11:08:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(202, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 11:08:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(203, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', '', '23-04-2021 11:09:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(204, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 11:09:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(205, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', '', '23-04-2021 11:09:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(206, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 11:09:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(207, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '23-04-2021 11:10:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(208, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '23-04-2021 11:11:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(209, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-details.php', '23-04-2021 11:11:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(210, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-details.php', '23-04-2021 11:13:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(211, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/', '', '23-04-2021 11:14:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(212, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-details.php', '23-04-2021 11:15:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(213, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', '', '23-04-2021 11:15:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(214, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '23-04-2021 11:19:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(215, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '23-04-2021 11:23:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(216, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:25:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(217, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:25:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(218, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:27:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(219, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '23-04-2021 11:28:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(220, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '23-04-2021 11:28:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(221, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:28:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(222, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 11:28:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(223, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '23-04-2021 11:29:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(224, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '23-04-2021 11:29:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(225, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:29:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(226, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '23-04-2021 11:29:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(227, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '23-04-2021 11:30:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(228, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '23-04-2021 11:32:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(229, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '23-04-2021 11:33:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(230, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '23-04-2021 11:43:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(231, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php', '23-04-2021 11:43:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(232, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/sub-category.php', '23-04-2021 11:43:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(233, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 11:43:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(234, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/track-orders.php', '23-04-2021 11:45:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(235, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/track-orders.php', '23-04-2021 11:46:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(236, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:46:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(237, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/track-orders.php', '23-04-2021 11:46:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(238, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-details.php', '23-04-2021 11:46:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(239, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/about.php', '', '', '', '', ''),
(240, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/about.php', '23-04-2021 11:47:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(241, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/about.php', '23-04-2021 11:49:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(242, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/about.php', '23-04-2021 11:49:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(243, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:52:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(244, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/contact_us.php', '23-04-2021 11:52:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(245, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '23-04-2021 11:52:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(246, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '23-04-2021 11:52:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(247, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(248, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:53:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(249, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 11:53:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(250, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 11:53:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(251, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '23-04-2021 11:53:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(252, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(253, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:53:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(254, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(255, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:53:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(256, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(257, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(258, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '23-04-2021 11:53:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(259, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '23-04-2021 11:53:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(260, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:53:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(261, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:54:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)');
INSERT INTO `visitor` (`id`, `browser_name`, `browser_version`, `type`, `os`, `url`, `ref`, `added_on`, `userip`, `city`, `country`) VALUES
(262, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:55:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(263, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:55:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(264, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '23-04-2021 11:58:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(265, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:58:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(266, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '23-04-2021 11:59:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(267, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/procare/forgot-password.php', '24-04-2021 12:02:58 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(268, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:02:59 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(269, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:05:02 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(270, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:05:08 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(271, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '24-04-2021 12:07:33 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(272, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '24-04-2021 12:07:37 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(273, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '24-04-2021 12:07:38 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(274, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', '', '24-04-2021 12:08:21 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(275, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', '', '24-04-2021 12:10:00 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(276, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:10:01 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(277, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:10:03 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(278, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:10:04 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(279, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:10:34 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(280, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:10:35 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(281, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:10:39 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(282, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/seller/index.php', '24-04-2021 12:11:12 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(283, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:11:14 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(284, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:11:21 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(285, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:11:28 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(286, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '24-04-2021 12:11:31 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(287, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '24-04-2021 12:11:38 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(288, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '24-04-2021 12:11:55 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(289, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '24-04-2021 12:11:59 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(290, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:12:19 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(291, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:12:24 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(292, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/access-log.php', '24-04-2021 12:12:29 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(293, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php?page=product&action=add&id=2', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:12:32 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(294, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/pending-orders.php?id=32', '24-04-2021 12:12:50 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(295, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '24-04-2021 12:12:53 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(296, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '24-04-2021 12:13:52 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(297, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:13:56 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(298, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/my-cart.php', '24-04-2021 12:14:00 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(299, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:02 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(300, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:03 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(301, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:14:09 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(302, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:13 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(303, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:14:14 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(304, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:17 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(305, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:35 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(306, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:37 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(307, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:39 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(308, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:14:40 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(309, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '24-04-2021 12:14:59 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(310, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/product-details.php?pid=1', '24-04-2021 12:15:07 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(311, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:15:13 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(312, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:15:16 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(313, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:15:19 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(314, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:15:22 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(315, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:15:24 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(316, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:15:28 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(317, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/search-result.php', '24-04-2021 12:15:42 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(318, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=8', '24-04-2021 12:15:52 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(319, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:15:53 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(320, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '24-04-2021 12:16:23 AM', '1.187.112.88', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(321, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '24-04-2021 12:17:34 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(322, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:17:36 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(323, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:17:37 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(324, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:17:38 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(325, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:17:41 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(326, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:17:42 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(327, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '24-04-2021 12:17:43 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(328, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:17:46 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(329, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:17:48 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(330, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '24-04-2021 12:17:50 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(331, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/seller/', '24-04-2021 12:17:53 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(332, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:17:54 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(333, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '24-04-2021 12:17:58 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(334, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:18:00 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(335, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:18:04 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(336, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '24-04-2021 12:19:52 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(337, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '24-04-2021 12:20:54 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(338, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '24-04-2021 12:27:42 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(339, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:31:26 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(340, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '24-04-2021 12:31:40 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(341, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '24-04-2021 12:32:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(342, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:32:14 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(343, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:35:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(344, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:35:52 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(345, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:36:10 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(346, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:37:25 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(347, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:39:00 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(348, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '24-04-2021 12:39:35 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(349, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '24-04-2021 12:39:41 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(350, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:39:43 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(351, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '24-04-2021 12:39:45 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(352, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '24-04-2021 12:40:53 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(353, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:40:55 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(354, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:41:04 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(355, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '24-04-2021 12:41:23 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(356, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:43:12 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(357, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:43:48 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(358, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '24-04-2021 12:44:12 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(359, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=16', '24-04-2021 12:44:45 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(360, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=16', '24-04-2021 12:45:07 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(361, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '24-04-2021 12:46:10 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(362, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '24-04-2021 12:58:13 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(363, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 12:21:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(364, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=20', '25-04-2021 12:25:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(365, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 12:26:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(366, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', '', '25-04-2021 12:26:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(367, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', 'http://103.48.196.103/ec1/procare/admin/index.php', '25-04-2021 12:26:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(368, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 12:27:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(369, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 12:27:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(370, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 02:52:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(371, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '25-04-2021 02:52:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(372, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 02:52:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(373, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 02:52:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(374, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 02:52:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(375, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 02:52:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(376, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 02:57:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(377, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', '', '25-04-2021 02:57:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(378, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', 'http://103.48.196.103/ec1/procare/admin/index.php', '25-04-2021 02:57:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(379, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', 'http://103.48.196.103/ec1/procare/admin/index.php', '25-04-2021 02:57:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(380, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', 'http://103.48.196.103/ec1/procare/admin/index.php', '25-04-2021 02:57:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(381, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/index.php', 'http://103.48.196.103/ec1/procare/admin/index.php', '25-04-2021 02:57:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(382, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 02:57:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(383, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 02:57:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(384, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 02:57:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(385, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/procare/seller/', '25-04-2021 02:57:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(386, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 02:57:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(387, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 02:57:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(388, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 02:57:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(389, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 02:57:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(390, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 02:57:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(391, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 02:57:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(392, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '25-04-2021 02:58:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(393, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 03:07:33 PM', '132.154.143.183', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(394, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php?page=product&action=add&id=20', 'http://103.48.196.103/ec1/', '25-04-2021 03:08:13 PM', '132.154.143.183', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(395, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 03:09:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(396, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 03:09:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(397, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 03:09:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(398, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/my-cart.php', '25-04-2021 03:09:34 PM', '132.154.143.183', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(399, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 03:09:38 PM', '132.154.143.183', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(400, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 03:11:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(401, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 03:11:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(402, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 03:11:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(403, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 03:36:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(404, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 05:08:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(405, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 05:08:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(406, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 05:08:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(407, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 05:08:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(408, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 05:32:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(409, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '25-04-2021 05:32:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(410, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 05:32:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(411, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 05:39:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(412, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 05:43:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(413, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 05:43:37 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(414, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 05:43:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(415, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '25-04-2021 05:44:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(416, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '25-04-2021 05:52:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(417, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 06:00:23 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(418, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '25-04-2021 06:01:53 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(419, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php?page=product&action=add&id=17', 'http://103.48.196.103/ec1/index.php', '25-04-2021 06:02:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(420, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '25-04-2021 06:04:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(421, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '25-04-2021 06:05:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(422, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '25-04-2021 06:10:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(423, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '25-04-2021 06:10:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(424, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 06:13:46 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(425, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '25-04-2021 06:14:44 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(426, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/my-cart.php', '25-04-2021 06:17:39 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(427, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php?page=product&action=add&id=2', 'http://103.48.196.103/ec1/index.php', '25-04-2021 06:17:42 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(428, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/my-cart.php', '25-04-2021 06:18:25 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(429, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:31:44 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(430, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '25-04-2021 06:31:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(431, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 06:31:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(432, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 06:32:03 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(433, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:32:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(434, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:32:26 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(435, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:33:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(436, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:33:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(437, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/login.php', '25-04-2021 06:34:40 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(438, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 06:34:46 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(439, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 06:35:27 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(440, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 06:42:11 PM', '157.39.152.200', 'Chandigarh (CH)', 'Chandigarh, India (IN)'),
(441, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '25-04-2021 06:53:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(442, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '25-04-2021 06:53:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(443, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 06:54:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(444, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 06:54:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(445, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 06:54:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(446, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '25-04-2021 07:04:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(447, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/', '25-04-2021 07:05:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(448, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/', '25-04-2021 07:05:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(449, 'Safari', '14.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '25-04-2021 07:05:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(450, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 07:40:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(451, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '25-04-2021 07:58:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(452, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 07:58:41 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(453, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 07:58:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(454, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 07:58:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(455, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '25-04-2021 10:32:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(456, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:32:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(457, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '25-04-2021 10:33:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(458, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:33:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(459, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 10:33:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(460, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 10:33:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(461, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 10:36:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(462, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 10:36:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(463, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 10:36:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(464, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 10:36:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(465, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 10:36:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(466, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 10:36:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(467, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '25-04-2021 10:36:41 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(468, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 10:36:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(469, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '25-04-2021 10:37:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(470, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 10:37:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(471, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/logout.php', '25-04-2021 10:38:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(472, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '25-04-2021 10:38:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(473, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=26', '25-04-2021 10:39:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(474, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:39:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)');
INSERT INTO `visitor` (`id`, `browser_name`, `browser_version`, `type`, `os`, `url`, `ref`, `added_on`, `userip`, `city`, `country`) VALUES
(475, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/', '25-04-2021 10:39:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(476, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/procare/seller/', '25-04-2021 10:40:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(477, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '25-04-2021 10:40:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(478, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 10:40:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(479, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '25-04-2021 10:40:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(480, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '25-04-2021 10:40:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(481, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '25-04-2021 10:40:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(482, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '25-04-2021 10:42:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(483, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/access-log.php', '25-04-2021 10:42:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(484, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '25-04-2021 10:42:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(485, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:42:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(486, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 10:42:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(487, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 10:45:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(488, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 10:45:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(489, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '25-04-2021 10:45:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(490, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:45:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(491, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 10:45:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(492, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 10:45:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(493, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 10:45:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(494, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '25-04-2021 10:45:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(495, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-04-2021 10:46:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(496, 'Safari', '13.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '25-04-2021 10:46:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(497, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-04-2021 11:18:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(498, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-04-2021 11:19:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(499, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-04-2021 11:19:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(500, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '25-04-2021 11:28:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(501, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '26-04-2021 12:20:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(502, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '26-04-2021 12:20:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(503, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-04-2021 12:20:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(504, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '26-04-2021 12:20:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(505, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '26-04-2021 12:20:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(506, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '26-04-2021 12:34:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(507, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-04-2021 01:31:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(508, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '26-04-2021 01:31:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(509, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '26-04-2021 01:32:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(510, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-04-2021 01:32:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(511, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '26-04-2021 01:32:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(512, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-04-2021 01:32:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(513, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '26-04-2021 01:32:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(514, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '26-04-2021 01:32:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(515, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '26-04-2021 01:34:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(516, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '26-04-2021 01:34:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(517, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '26-04-2021 01:34:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(518, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '26-04-2021 01:36:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(519, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '26-04-2021 01:36:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(520, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '26-04-2021 01:36:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(521, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=10', '26-04-2021 01:37:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(522, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '26-04-2021 01:37:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(523, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://127.0.0.1/ec1/', '', '26-04-2021 01:39:06 PM', '127.0.0.1', ' ()', ',  ()'),
(524, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http//127.0.0.1/ec1/login.php', 'http://127.0.0.1/ec1/product-details.php?pid=2', '26-04-2021 01:39:11 PM', '127.0.0.1', ' ()', ',  ()'),
(525, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://127.0.0.1/ec1/procare/', '', '26-04-2021 01:39:23 PM', '127.0.0.1', ' ()', ',  ()'),
(526, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '26-04-2021 01:42:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(527, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '26-04-2021 01:43:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(528, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '26-04-2021 01:55:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(529, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '26-04-2021 11:26:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(530, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-04-2021 11:27:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(531, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '26-04-2021 11:27:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(532, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '26-04-2021 11:27:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(533, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '26-04-2021 11:27:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(534, 'Chrome', '90.0.4430.85', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '26-04-2021 11:27:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(535, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '27-04-2021 02:03:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1010, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 04:40:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1011, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '29-04-2021 10:01:44 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1012, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '29-04-2021 10:01:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1013, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '29-04-2021 10:01:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1014, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '29-04-2021 10:01:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1015, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 10:15:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1016, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '29-04-2021 10:15:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1017, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '29-04-2021 10:15:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1018, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 10:18:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1019, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '29-04-2021 10:18:23 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1020, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '29-04-2021 10:19:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1021, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '29-04-2021 10:20:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1022, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '29-04-2021 10:22:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1023, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '29-04-2021 10:22:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1024, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '29-04-2021 10:23:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1025, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '29-04-2021 10:35:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1026, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '29-04-2021 10:35:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1027, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '29-04-2021 10:35:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1028, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 10:40:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1029, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 10:41:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1030, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '29-04-2021 10:41:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1031, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '29-04-2021 10:41:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1032, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '29-04-2021 10:41:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1033, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '29-04-2021 10:41:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1034, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '29-04-2021 10:41:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1035, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '29-04-2021 10:41:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1036, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 12:02:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1037, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '30-04-2021 12:02:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1038, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 12:03:33 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1039, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '30-04-2021 12:03:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1040, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '30-04-2021 12:03:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1041, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '30-04-2021 12:03:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1042, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '30-04-2021 12:04:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1043, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/change-password.php', '30-04-2021 12:05:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1044, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 12:05:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1045, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 12:05:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1046, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 12:05:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1047, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '30-04-2021 12:08:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1048, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/index.php', '30-04-2021 12:08:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1049, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '30-04-2021 12:08:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1050, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '30-04-2021 12:08:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1051, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 12:11:31 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1052, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '30-04-2021 12:12:04 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1053, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 12:12:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1054, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 12:12:09 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1055, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 12:12:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1056, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 12:12:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1057, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '30-04-2021 12:12:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1058, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 12:12:24 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1059, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 12:12:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1060, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 12:19:15 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1061, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 12:19:17 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1062, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=4', '30-04-2021 12:19:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1063, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 12:21:08 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1064, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 12:25:23 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1065, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 12:25:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1066, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 12:26:04 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1067, 'Chrome', '89.0.4389.90', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 12:32:50 PM', '132.154.176.64', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1068, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 01:22:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1069, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 01:22:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1070, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 01:23:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1071, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 01:25:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1072, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:53:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1073, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:54:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1074, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:55:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1075, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:55:47 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1076, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:56:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1077, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:58:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1078, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 02:59:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1079, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 03:00:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1080, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 03:00:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1081, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 03:00:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1082, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 03:00:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1083, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 03:01:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1084, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 03:01:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1085, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '30-04-2021 03:01:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1086, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 03:01:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1087, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '30-04-2021 03:01:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1088, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '30-04-2021 03:01:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1089, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '30-04-2021 03:01:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1090, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-history.php', '30-04-2021 03:02:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1091, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:02:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1092, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:04:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1093, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:04:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1094, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:04:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1095, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:05:37 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1096, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:05:41 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1097, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:05:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1098, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:06:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1099, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:06:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1100, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:06:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1101, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:06:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1102, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 03:06:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1103, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:06:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1104, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:07:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1105, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:07:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1106, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:08:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1107, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:09:32 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1108, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:09:55 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1109, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:17:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1110, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:17:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1111, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:17:56 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1112, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:18:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1113, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:18:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1114, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/sub-category.php?scid=12', '30-04-2021 03:18:59 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1115, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '30-04-2021 03:19:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1116, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:19:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1117, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:22:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1118, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:22:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1119, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:12 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1120, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1121, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1122, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1123, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1124, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:23:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1125, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:24:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1126, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:24:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1127, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:25:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1128, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:25:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1129, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:25:45 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1130, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:27:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1131, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:29:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1132, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:30:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1133, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '30-04-2021 03:31:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1134, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:34:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1135, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '30-04-2021 03:34:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1136, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '30-04-2021 03:34:19 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1137, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/sub-category.php?scid=5', '30-04-2021 03:34:34 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1138, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/sub-category.php?scid=5', '30-04-2021 03:35:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1139, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:35:21 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1140, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:35:28 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1141, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '30-04-2021 03:36:11 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1142, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', '', '30-04-2021 04:13:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1143, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 11:27:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1144, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '30-04-2021 11:28:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1145, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/product-details.php?pid=2', '30-04-2021 11:29:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1146, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '30-04-2021 11:29:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1147, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '30-04-2021 11:30:06 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1148, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '30-04-2021 11:30:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1149, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/manage-add.php', '30-04-2021 11:30:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1150, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '30-04-2021 11:30:37 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1151, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-04-2021 11:30:42 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1152, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-04-2021 11:30:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1153, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-04-2021 11:30:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1154, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '30-04-2021 11:51:00 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1155, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '01-05-2021 12:16:31 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1156, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '01-05-2021 12:16:43 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1157, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '01-05-2021 12:16:55 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1158, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '01-05-2021 12:16:55 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1159, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '01-05-2021 12:16:58 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1160, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '01-05-2021 12:17:57 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1161, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '01-05-2021 11:24:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1162, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '01-05-2021 11:24:44 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1163, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '01-05-2021 11:25:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1164, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '01-05-2021 11:25:27 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1165, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '01-05-2021 11:25:29 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)');
INSERT INTO `visitor` (`id`, `browser_name`, `browser_version`, `type`, `os`, `url`, `ref`, `added_on`, `userip`, `city`, `country`) VALUES
(1166, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '01-05-2021 11:25:32 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1167, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '01-05-2021 11:28:59 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1168, 'Safari', '14.1', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '01-05-2021 11:29:25 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1169, 'Safari', '14.1', 'Mobile', 'IOS', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/product-details.php?pid=8', '01-05-2021 11:29:48 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1170, 'Safari', '14.1', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/login.php', '01-05-2021 11:29:51 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1171, 'Safari', '14.1', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/procare/', '01-05-2021 11:29:53 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1172, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '01-05-2021 11:31:24 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1173, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/product-details.php?pid=18', '01-05-2021 11:32:01 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1174, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '01-05-2021 11:32:54 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1175, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '01-05-2021 11:35:00 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1176, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '01-05-2021 11:35:03 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1177, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/search-result.php', '01-05-2021 11:50:28 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1178, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '01-05-2021 11:50:48 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1179, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '01-05-2021 11:50:59 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1180, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '01-05-2021 11:51:04 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1181, 'Chrome', '90.0.4430.93', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '01-05-2021 11:51:08 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1182, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 06:54:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1183, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 06:54:40 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1184, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '16-05-2021 06:54:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1185, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '16-05-2021 06:54:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1186, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '16-05-2021 06:54:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1187, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '16-05-2021 07:07:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1188, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/index.php', '16-05-2021 07:08:01 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1189, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '16-05-2021 07:08:14 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1190, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '16-05-2021 07:15:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1191, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 09:24:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1192, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 09:24:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1193, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '16-05-2021 09:24:05 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1194, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '16-05-2021 09:24:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1195, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '16-05-2021 09:24:20 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1196, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/contact_us.php', '16-05-2021 09:24:33 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1197, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=21', '16-05-2021 09:24:46 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1198, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '16-05-2021 09:24:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1199, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=6', '16-05-2021 09:25:09 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1200, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/index.php', '16-05-2021 09:28:18 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1201, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/index.php', '16-05-2021 09:28:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1202, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/', '16-05-2021 09:28:27 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1203, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/index.php', '16-05-2021 09:28:30 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1204, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '16-05-2021 09:28:39 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1205, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/pending-orders.php', '16-05-2021 09:29:43 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1206, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/order-details.php', '16-05-2021 09:30:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1207, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/track-orders.php', '16-05-2021 09:37:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1208, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/dashboard.php', '16-05-2021 09:37:36 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1209, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/logout.php', '16-05-2021 09:37:48 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1210, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 10:08:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1211, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '16-05-2021 10:08:22 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1212, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '16-05-2021 10:08:25 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1213, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '16-05-2021 10:08:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1214, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=20', '16-05-2021 10:08:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1215, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/category.php?cid=4', '16-05-2021 10:08:38 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1216, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=4', '16-05-2021 10:09:17 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1217, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=26', '16-05-2021 10:10:03 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1218, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '16-05-2021 10:10:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1219, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '16-05-2021 10:10:58 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1220, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '16-05-2021 10:11:02 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1221, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 10:13:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1222, 'Safari', '13.0.3', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '17-05-2021 10:13:27 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1223, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 10:13:37 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1224, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '17-05-2021 10:13:40 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1225, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '17-05-2021 10:13:42 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1226, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '17-05-2021 10:16:14 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1227, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '17-05-2021 10:16:31 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1228, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 10:47:15 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1229, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 11:03:15 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1230, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '17-05-2021 11:11:33 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1231, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 11:15:06 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1232, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 11:15:09 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1233, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', '', '17-05-2021 11:15:16 AM', '106.195.112.250', ' ()', ', India (IN)'),
(1234, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 11:15:45 AM', '106.195.112.250', ' ()', ', India (IN)'),
(1235, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 11:16:07 AM', '106.195.112.250', ' ()', ', India (IN)'),
(1236, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 11:22:55 AM', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1237, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 11:37:23 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1238, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '17-05-2021 11:38:43 AM', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1239, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/', '17-05-2021 11:46:18 AM', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1240, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http//103.48.196.103/ec1/login.php', 'http://103.48.196.103/ec1/login.php', '17-05-2021 11:47:14 AM', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1241, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/login.php', '17-05-2021 11:47:27 AM', '106.217.160.248', 'New Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1242, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '17-05-2021 11:52:45 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1243, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '17-05-2021 11:55:08 AM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1244, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '17-05-2021 12:59:52 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1245, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '17-05-2021 12:59:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1246, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '17-05-2021 12:59:57 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1247, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 01:05:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1248, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 01:14:23 PM', '106.204.229.122', 'Karnal (HR)', 'Haryana, India (IN)'),
(1249, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 01:15:28 PM', '106.204.229.122', 'Karnal (HR)', 'Haryana, India (IN)'),
(1250, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '17-05-2021 01:18:21 PM', '106.204.229.122', 'Karnal (HR)', 'Haryana, India (IN)'),
(1251, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '17-05-2021 01:18:29 PM', '106.204.229.122', 'Karnal (HR)', 'Haryana, India (IN)'),
(1252, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '17-05-2021 01:18:35 PM', '106.204.229.122', 'Karnal (HR)', 'Haryana, India (IN)'),
(1253, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 02:09:39 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1254, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', 'http://103.48.196.103/ec1/', '17-05-2021 02:11:03 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1255, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '17-05-2021 02:14:54 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1256, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '17-05-2021 02:15:34 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1257, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/index.php', 'http://103.48.196.103/ec1/procare/admin/logout.php', '17-05-2021 02:19:42 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1258, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '17-05-2021 02:36:22 PM', '132.154.140.209', 'Ludhiana (PB)', 'Punjab, India (IN)'),
(1259, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '26-05-2021 05:34:35 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1260, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=5', '26-05-2021 05:34:49 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1261, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '26-05-2021 05:34:54 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1262, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '26-05-2021 05:35:04 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1263, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '26-05-2021 05:35:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1264, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-05-2021 11:51:02 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1265, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-05-2021 11:51:07 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1266, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-05-2021 11:51:11 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1267, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '30-05-2021 12:02:16 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1268, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '30-05-2021 11:58:24 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1269, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '30-05-2021 11:58:26 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1270, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '30-05-2021 11:58:29 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1271, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/procare/admin/dashboard.php', '31-05-2021 12:00:31 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1272, 'Chrome', '90.0.4430.212', 'PC', 'Window', 'http://103.48.196.103/ec1/index.php', 'http://103.48.196.103/ec1/product-details.php?pid=7', '31-05-2021 12:00:58 AM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1273, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://localhost/ec1/', '', '25-06-2021 09:33:32 PM', '::1', ' ()', ',  ()'),
(1274, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-06-2021 09:36:31 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1275, 'Safari', '14.1.1', 'Mobile', 'IOS', 'http://103.48.196.103/ec1/', '', '25-06-2021 09:36:51 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1276, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/', '', '25-06-2021 09:37:07 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1277, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/', '25-06-2021 09:37:10 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1278, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://103.48.196.103/ec1/procare/admin/', 'http://103.48.196.103/ec1/procare/admin/', '25-06-2021 09:37:13 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1279, 'Chrome', '91.0.4472.114', 'PC', 'Window', 'http://103.48.196.103/ec1/', '', '25-06-2021 09:38:50 PM', '103.48.196.103', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1280, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/', '', '01-07-2021 12:08:43 PM', '::1', ' ()', ',  ()'),
(1281, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/index.php', '', '01-07-2021 12:08:53 PM', '::1', ' ()', ',  ()'),
(1282, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/index.php?id=5', '', '01-07-2021 12:09:00 PM', '::1', ' ()', ',  ()'),
(1283, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/index.php?id=5%27', '', '01-07-2021 12:09:05 PM', '::1', ' ()', ',  ()'),
(1284, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/index.php?id=5%20order%20by%201/*', '', '01-07-2021 12:09:33 PM', '::1', ' ()', ',  ()'),
(1285, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://localhost/ec1/index.php?id=5%20union%20all%20select%201,2,3%20from%20admin/*', '', '01-07-2021 12:10:19 PM', '::1', ' ()', ',  ()'),
(1286, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '05-07-2021 05:49:41 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1287, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '05-07-2021 05:49:46 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1288, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '05-07-2021 05:49:48 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1289, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '05-07-2021 05:49:50 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1290, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '05-07-2021 05:49:52 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1291, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '05-07-2021 05:50:05 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1292, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/admin/access-log.php', '05-07-2021 05:52:55 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1293, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/admin/logout.php', '05-07-2021 05:53:09 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1294, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/admin/access-log.php', '05-07-2021 05:53:12 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1295, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http//103.48.196.50/ec1/login.php', 'http://103.48.196.50/ec1/index.php', '05-07-2021 05:53:14 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1296, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/login.php', '05-07-2021 05:53:24 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1297, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/my-wishlist.php', '05-07-2021 05:55:03 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1298, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', '', '05-07-2021 05:55:27 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1299, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '05-07-2021 05:55:32 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1300, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/admin/logout.php', '05-07-2021 05:58:15 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1301, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '07-07-2021 12:38:36 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1302, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '07-07-2021 12:38:56 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1303, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '07-07-2021 12:38:59 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1304, 'Chrome', '91.0.4472.124', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '07-07-2021 12:39:12 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1305, 'Chrome', '91.0.4472.164', 'PC', 'Window', 'http://localhost/ec1/', '', '24-07-2021 12:43:14 PM', '::1', ' ()', ',  ()'),
(1306, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/', '', '27-07-2021 11:43:11 PM', '::1', ' ()', ',  ()'),
(1307, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/', '27-07-2021 11:43:14 PM', '::1', ' ()', ',  ()'),
(1308, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '27-07-2021 11:43:27 PM', '::1', ' ()', ',  ()'),
(1309, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '27-07-2021 11:43:32 PM', '::1', ' ()', ',  ()'),
(1310, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '27-07-2021 11:43:38 PM', '::1', ' ()', ',  ()'),
(1311, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '27-07-2021 11:43:47 PM', '::1', ' ()', ',  ()'),
(1312, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/track-orders.php', '27-07-2021 11:49:23 PM', '::1', ' ()', ',  ()'),
(1313, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/logout.php', '27-07-2021 11:49:24 PM', '::1', ' ()', ',  ()'),
(1314, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '27-07-2021 11:49:32 PM', '::1', ' ()', ',  ()'),
(1315, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '27-07-2021 11:49:34 PM', '::1', ' ()', ',  ()'),
(1316, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '27-07-2021 11:49:40 PM', '::1', ' ()', ',  ()'),
(1317, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '27-07-2021 11:50:45 PM', '::1', ' ()', ',  ()'),
(1318, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '01-08-2021 12:48:56 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1319, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '01-08-2021 12:49:10 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1320, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '01-08-2021 12:49:12 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1321, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '01-08-2021 12:49:22 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1322, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '01-08-2021 12:53:04 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1323, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/product-details.php?pid=20', '01-08-2021 12:54:26 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1324, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/product-details.php?pid=4', '01-08-2021 12:54:52 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1325, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/logout.php', '01-08-2021 12:54:56 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1326, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http//103.48.196.50/ec1/login.php', 'http://103.48.196.50/ec1/index.php', '01-08-2021 12:54:57 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1327, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/login.php', '01-08-2021 12:55:20 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1328, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/manage-add.php', '01-08-2021 12:56:03 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1329, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/contact_us.php', '01-08-2021 12:56:17 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1330, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/category.php?cid=4', '01-08-2021 12:56:20 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1331, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/product-details.php?pid=7', '01-08-2021 12:56:33 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1332, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/dashboard.php', '01-08-2021 12:56:43 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1333, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/logout.php', '01-08-2021 12:56:46 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1334, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '01-08-2021 12:56:57 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1335, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/', '01-08-2021 12:56:58 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1336, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/', '01-08-2021 12:57:05 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1337, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/index.php', '01-08-2021 12:57:06 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1338, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '01-08-2021 12:57:13 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1339, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/', '', '03-08-2021 12:40:42 PM', '::1', ' ()', ',  ()'),
(1340, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/', '', '03-08-2021 12:40:47 PM', '::1', ' ()', ',  ()'),
(1341, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/', '', '03-08-2021 12:41:16 PM', '127.0.0.1', ' ()', ',  ()'),
(1342, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '03-08-2021 12:41:58 PM', '127.0.0.1', ' ()', ',  ()'),
(1343, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '03-08-2021 12:42:01 PM', '::1', ' ()', ',  ()'),
(1344, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '03-08-2021 12:42:09 PM', '::1', ' ()', ',  ()'),
(1345, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '03-08-2021 10:46:08 PM', '192.168.1.104', ' ()', ',  ()'),
(1346, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '03-08-2021 10:46:17 PM', '192.168.1.104', ' ()', ',  ()'),
(1347, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '03-08-2021 10:46:19 PM', '192.168.1.104', ' ()', ',  ()'),
(1348, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '03-08-2021 10:46:24 PM', '192.168.1.104', ' ()', ',  ()'),
(1349, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '04-08-2021 12:08:04 AM', '192.168.1.104', ' ()', ',  ()'),
(1350, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '04-08-2021 12:08:06 AM', '192.168.1.104', ' ()', ',  ()'),
(1351, 'Chrome', '92.0.4515.107', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '04-08-2021 12:08:09 AM', '192.168.1.104', ' ()', ',  ()'),
(1352, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '05-08-2021 11:24:27 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1353, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '05-08-2021 11:24:30 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1354, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '05-08-2021 11:24:34 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1355, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '05-08-2021 11:24:44 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1356, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/index.php', '', '05-08-2021 11:34:00 PM', '::1', ' ()', ',  ()'),
(1357, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/index.php', 'http://localhost/ec1/procare/admin/index.php', '05-08-2021 11:34:06 PM', '::1', ' ()', ',  ()'),
(1358, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', '', '06-08-2021 02:14:21 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1359, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '06-08-2021 02:15:13 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1360, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '06-08-2021 02:15:17 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1361, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/', '', '06-08-2021 09:57:16 PM', '::1', ' ()', ',  ()'),
(1362, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/', '06-08-2021 09:57:24 PM', '::1', ' ()', ',  ()'),
(1363, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '06-08-2021 09:57:46 PM', '::1', ' ()', ',  ()'),
(1364, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '06-08-2021 09:57:48 PM', '::1', ' ()', ',  ()'),
(1365, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '06-08-2021 09:57:55 PM', '::1', ' ()', ',  ()'),
(1366, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '06-08-2021 10:05:33 PM', '192.168.1.104', ' ()', ',  ()'),
(1367, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '06-08-2021 10:05:38 PM', '192.168.1.104', ' ()', ',  ()'),
(1368, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '06-08-2021 10:05:40 PM', '192.168.1.104', ' ()', ',  ()'),
(1369, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '06-08-2021 10:05:44 PM', '192.168.1.104', ' ()', ',  ()'),
(1370, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '07-08-2021 02:05:18 PM', '192.168.1.104', ' ()', ',  ()'),
(1371, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '07-08-2021 02:05:20 PM', '192.168.1.104', ' ()', ',  ()'),
(1372, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '07-08-2021 02:05:36 PM', '192.168.1.104', ' ()', ',  ()'),
(1373, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '07-08-2021 02:39:23 PM', '192.168.1.104', ' ()', ',  ()'),
(1374, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/', '07-08-2021 02:39:27 PM', '192.168.1.104', ' ()', ',  ()'),
(1375, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', 'http://192.168.1.104/ec1/index.php', '07-08-2021 02:39:29 PM', '192.168.1.104', ' ()', ',  ()'),
(1376, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/logout.php', '07-08-2021 02:39:31 PM', '192.168.1.104', ' ()', ',  ()'),
(1377, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', 'http://192.168.1.104/ec1/index.php', '07-08-2021 02:39:33 PM', '192.168.1.104', ' ()', ',  ()'),
(1378, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '07-08-2021 02:39:35 PM', '192.168.1.104', ' ()', ',  ()'),
(1379, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '07-08-2021 02:39:38 PM', '192.168.1.104', ' ()', ',  ()'),
(1380, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '07-08-2021 03:29:47 PM', '192.168.1.104', ' ()', ',  ()'),
(1381, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '07-08-2021 11:39:24 PM', '::1', ' ()', ',  ()'),
(1382, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '07-08-2021 11:39:27 PM', '::1', ' ()', ',  ()'),
(1383, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '07-08-2021 11:39:31 PM', '::1', ' ()', ',  ()'),
(1384, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '10-08-2021 02:35:29 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1385, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/product-details.php?pid=22', '10-08-2021 02:35:58 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1386, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http//103.48.196.50/ec1/login.php', 'http://103.48.196.50/ec1/index.php', '10-08-2021 02:36:01 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1387, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', 'http://103.48.196.50/ec1/login.php', '10-08-2021 02:36:06 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1388, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '10-08-2021 02:36:08 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1389, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '10-08-2021 02:36:14 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1390, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/admin/logout.php', '10-08-2021 02:36:28 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1391, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/index.php', '10-08-2021 02:36:30 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1392, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '10-08-2021 02:36:36 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1393, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/admin/dashboard.php', '10-08-2021 02:37:20 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1394, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/index.php', 'http://103.48.196.50/ec1/procare/admin/logout.php', '10-08-2021 02:37:25 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1395, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/procare/index.php', '10-08-2021 02:37:27 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1396, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http//103.48.196.50/ec1/login.php', 'http://103.48.196.50/ec1/index.php', '10-08-2021 02:37:29 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1397, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/login.php', '10-08-2021 02:37:43 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1398, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/track-orders.php', '10-08-2021 02:39:41 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1399, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/index.php', '10-08-2021 02:39:42 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1400, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://103.48.196.50/ec1/index.php', 'http://103.48.196.50/ec1/logout.php', '10-08-2021 02:39:44 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1401, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/', '', '12-08-2021 12:24:05 PM', '::1', ' ()', ',  ()'),
(1402, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=21', '12-08-2021 12:24:41 PM', '::1', ' ()', ',  ()'),
(1403, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '12-08-2021 12:24:45 PM', '::1', ' ()', ',  ()');
INSERT INTO `visitor` (`id`, `browser_name`, `browser_version`, `type`, `os`, `url`, `ref`, `added_on`, `userip`, `city`, `country`) VALUES
(1404, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '12-08-2021 12:24:51 PM', '::1', ' ()', ',  ()'),
(1405, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '12-08-2021 12:25:11 PM', '::1', ' ()', ',  ()'),
(1406, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '12-08-2021 12:30:14 PM', '::1', ' ()', ',  ()'),
(1407, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/', '', '12-08-2021 12:30:17 PM', '::1', ' ()', ',  ()'),
(1408, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/contact_us.php', '12-08-2021 12:30:34 PM', '::1', ' ()', ',  ()'),
(1409, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '12-08-2021 12:30:43 PM', '::1', ' ()', ',  ()'),
(1410, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/track-orders.php', '12-08-2021 12:32:45 PM', '::1', ' ()', ',  ()'),
(1411, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=16', '12-08-2021 12:33:43 PM', '::1', ' ()', ',  ()'),
(1412, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/index.php', '12-08-2021 12:33:57 PM', '::1', ' ()', ',  ()'),
(1413, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '12-08-2021 12:34:00 PM', '::1', ' ()', ',  ()'),
(1414, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/logout.php', '12-08-2021 12:34:05 PM', '::1', ' ()', ',  ()'),
(1415, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '12-08-2021 12:34:09 PM', '::1', ' ()', ',  ()'),
(1416, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '12-08-2021 12:34:25 PM', '::1', ' ()', ',  ()'),
(1417, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '12-08-2021 12:34:27 PM', '::1', ' ()', ',  ()'),
(1418, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '12-08-2021 12:34:31 PM', '::1', ' ()', ',  ()'),
(1419, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '12-08-2021 12:34:40 PM', '::1', ' ()', ',  ()'),
(1420, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/', '', '12-08-2021 12:36:49 PM', '::1', ' ()', ',  ()'),
(1421, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=8', '12-08-2021 12:38:11 PM', '::1', ' ()', ',  ()'),
(1422, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/contact_us.php', '12-08-2021 12:38:28 PM', '::1', ' ()', ',  ()'),
(1423, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/contact_us.php', '12-08-2021 12:38:43 PM', '::1', ' ()', ',  ()'),
(1424, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/logout.php', '12-08-2021 12:39:07 PM', '::1', ' ()', ',  ()'),
(1425, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/index.php', '12-08-2021 12:39:09 PM', '::1', ' ()', ',  ()'),
(1426, 'Chrome', '92.0.4515.131', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/sub-category.php?scid=12', '12-08-2021 12:39:46 PM', '::1', ' ()', ',  ()'),
(1427, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '31-08-2021 08:52:55 PM', '::1', ' ()', ',  ()'),
(1428, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/', '31-08-2021 08:52:57 PM', '::1', ' ()', ',  ()'),
(1429, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/index.php', '31-08-2021 08:53:06 PM', '::1', ' ()', ',  ()'),
(1430, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/track-orders.php', '31-08-2021 08:53:37 PM', '::1', ' ()', ',  ()'),
(1431, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/', '', '01-09-2021 05:05:44 PM', '::1', ' ()', ',  ()'),
(1432, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '01-09-2021 05:05:47 PM', '::1', ' ()', ',  ()'),
(1433, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '01-09-2021 05:05:49 PM', '::1', ' ()', ',  ()'),
(1434, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '01-09-2021 05:05:55 PM', '::1', ' ()', ',  ()'),
(1435, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '01-09-2021 05:12:15 PM', '::1', ' ()', ',  ()'),
(1436, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/admin/index.php', 'http://localhost/ec1/procare/admin/manage-exist-products.php', '01-09-2021 05:12:30 PM', '::1', ' ()', ',  ()'),
(1437, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/admin/index.php', 'http://localhost/ec1/procare/admin/index.php', '01-09-2021 05:12:36 PM', '::1', ' ()', ',  ()'),
(1438, 'Chrome', '92.0.4515.159', 'PC', 'Window', 'http://localhost/ec1/procare/admin/index.php', 'http://localhost/ec1/procare/admin/index.php', '01-09-2021 05:12:42 PM', '::1', ' ()', ',  ()'),
(1439, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '02-09-2021 10:58:44 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1440, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '02-09-2021 10:58:45 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1441, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '02-09-2021 11:18:23 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1442, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/', 'http://103.48.196.50/ec1/', '02-09-2021 11:18:27 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1443, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/', '02-09-2021 11:18:29 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1444, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/procare/admin/', 'http://103.48.196.50/ec1/procare/admin/', '02-09-2021 11:18:36 AM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1445, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://103.48.196.50/ec1/', '', '02-09-2021 07:49:09 PM', '103.48.196.50', 'Delhi (DL)', 'National Capital Territory of Delhi, India (IN)'),
(1446, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '10-09-2021 11:32:47 AM', '192.168.1.104', ' ()', ',  ()'),
(1447, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/product-details.php?pid=1', '10-09-2021 11:32:59 AM', '192.168.1.104', ' ()', ',  ()'),
(1448, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/category.php?cid=4', '10-09-2021 11:33:02 AM', '192.168.1.104', ' ()', ',  ()'),
(1449, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', 'http://192.168.1.104/ec1/index.php', '10-09-2021 11:33:04 AM', '192.168.1.104', ' ()', ',  ()'),
(1450, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '10-09-2021 11:33:06 AM', '192.168.1.104', ' ()', ',  ()'),
(1451, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '10-09-2021 11:33:12 AM', '192.168.1.104', ' ()', ',  ()'),
(1452, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/admin/dashboard.php', '10-09-2021 11:36:09 AM', '192.168.1.104', ' ()', ',  ()'),
(1453, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/admin/logout.php', '10-09-2021 11:36:33 AM', '192.168.1.104', ' ()', ',  ()'),
(1454, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '10-09-2021 11:36:36 AM', '192.168.1.104', ' ()', ',  ()'),
(1455, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '10-09-2021 11:36:44 AM', '192.168.1.104', ' ()', ',  ()'),
(1456, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '10-09-2021 11:36:49 AM', '192.168.1.104', ' ()', ',  ()'),
(1457, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/logout.php', '10-09-2021 11:37:33 AM', '192.168.1.104', ' ()', ',  ()'),
(1458, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/', '', '10-09-2021 11:03:36 PM', '::1', ' ()', ',  ()'),
(1459, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '10-09-2021 11:03:38 PM', '::1', ' ()', ',  ()'),
(1460, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '10-09-2021 11:03:40 PM', '::1', ' ()', ',  ()'),
(1461, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '10-09-2021 11:03:45 PM', '::1', ' ()', ',  ()'),
(1462, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/', '', '12-09-2021 12:20:14 AM', '::1', ' ()', ',  ()'),
(1463, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '12-09-2021 12:20:15 AM', '::1', ' ()', ',  ()'),
(1464, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '12-09-2021 12:20:19 AM', '::1', ' ()', ',  ()'),
(1465, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/', '', '13-09-2021 05:32:01 PM', '::1', ' ()', ',  ()'),
(1466, 'Chrome', '93.0.4577.63', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=6', '13-09-2021 05:33:22 PM', '::1', ' ()', ',  ()'),
(1467, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '01-10-2021 09:57:09 AM', '192.168.1.104', ' ()', ',  ()'),
(1468, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', 'http://192.168.1.104/ec1/', '01-10-2021 09:57:12 AM', '192.168.1.104', ' ()', ',  ()'),
(1469, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '01-10-2021 09:57:14 AM', '192.168.1.104', ' ()', ',  ()'),
(1470, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '01-10-2021 09:57:20 AM', '192.168.1.104', ' ()', ',  ()'),
(1471, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/admin/logout.php', '01-10-2021 09:58:40 AM', '192.168.1.104', ' ()', ',  ()'),
(1472, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/index.php', '01-10-2021 09:58:42 AM', '192.168.1.104', ' ()', ',  ()'),
(1473, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '01-10-2021 09:58:46 AM', '192.168.1.104', ' ()', ',  ()'),
(1474, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '01-10-2021 01:12:53 PM', '192.168.1.104', ' ()', ',  ()'),
(1475, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', 'http://192.168.1.104/ec1/', '01-10-2021 01:12:56 PM', '192.168.1.104', ' ()', ',  ()'),
(1476, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '01-10-2021 01:12:58 PM', '192.168.1.104', ' ()', ',  ()'),
(1477, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '01-10-2021 01:12:59 PM', '192.168.1.104', ' ()', ',  ()'),
(1478, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '01-10-2021 01:13:07 PM', '192.168.1.104', ' ()', ',  ()'),
(1479, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/admin/logout.php', '01-10-2021 01:14:02 PM', '192.168.1.104', ' ()', ',  ()'),
(1480, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '01-10-2021 01:14:05 PM', '192.168.1.104', ' ()', ',  ()'),
(1481, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '01-10-2021 01:14:20 PM', '192.168.1.104', ' ()', ',  ()'),
(1482, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/index.php', 'http://192.168.1.104/ec1/procare/index.php', '01-10-2021 01:14:27 PM', '192.168.1.104', ' ()', ',  ()'),
(1483, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/product-details.php?pid=19', '01-10-2021 01:16:14 PM', '192.168.1.104', ' ()', ',  ()'),
(1484, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/my-profile.php', '01-10-2021 01:16:51 PM', '192.168.1.104', ' ()', ',  ()'),
(1485, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/dashboard.php', '01-10-2021 01:16:57 PM', '192.168.1.104', ' ()', ',  ()'),
(1486, 'Chrome', '94.0.4606.61', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/procare/logout.php', '01-10-2021 01:17:06 PM', '192.168.1.104', ' ()', ',  ()'),
(1487, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '10-10-2021 08:16:28 PM', '::1', ' ()', ',  ()'),
(1488, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '10-10-2021 08:16:34 PM', '::1', ' ()', ',  ()'),
(1489, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '10-10-2021 08:16:36 PM', '::1', ' ()', ',  ()'),
(1490, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '10-10-2021 08:16:43 PM', '::1', ' ()', ',  ()'),
(1491, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '10-10-2021 08:16:48 PM', '::1', ' ()', ',  ()'),
(1492, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '10-10-2021 08:16:50 PM', '::1', ' ()', ',  ()'),
(1493, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/contact_us.php', '10-10-2021 08:17:45 PM', '::1', ' ()', ',  ()'),
(1494, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '10-10-2021 08:17:50 PM', '::1', ' ()', ',  ()'),
(1495, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '10-10-2021 08:37:31 PM', '::1', ' ()', ',  ()'),
(1496, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/logout.php', '10-10-2021 08:37:33 PM', '::1', ' ()', ',  ()'),
(1497, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '10-10-2021 08:37:35 PM', '::1', ' ()', ',  ()'),
(1498, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '10-10-2021 08:37:36 PM', '::1', ' ()', ',  ()'),
(1499, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '10-10-2021 08:37:44 PM', '::1', ' ()', ',  ()'),
(1500, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '10-10-2021 08:37:52 PM', '::1', ' ()', ',  ()'),
(1501, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '11-10-2021 03:41:25 PM', '192.168.1.105', ' ()', ',  ()'),
(1502, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/', '', '11-10-2021 03:41:33 PM', '192.168.1.105', ' ()', ',  ()'),
(1503, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/', '11-10-2021 03:41:36 PM', '192.168.1.105', ' ()', ',  ()'),
(1504, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/', 'http://192.168.1.104/ec1/procare/admin/', '11-10-2021 03:41:42 PM', '192.168.1.105', ' ()', ',  ()'),
(1505, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '11-10-2021 03:45:10 PM', '192.168.1.105', ' ()', ',  ()'),
(1506, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/', '', '11-10-2021 03:45:15 PM', '192.168.1.105', ' ()', ',  ()'),
(1507, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/category.php?cid=4', '11-10-2021 03:46:02 PM', '192.168.1.105', ' ()', ',  ()'),
(1508, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/category.php?cid=4', '11-10-2021 03:46:09 PM', '192.168.1.105', ' ()', ',  ()'),
(1509, 'Chrome', '94.0.4606.71', 'PC', 'Window', 'http://192.168.1.104/ec1/index.php', 'http://192.168.1.104/ec1/my-cart.php', '11-10-2021 03:46:13 PM', '192.168.1.105', ' ()', ',  ()'),
(1510, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '11-10-2021 03:49:26 PM', '::1', ' ()', ',  ()'),
(1511, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '11-10-2021 04:56:01 PM', '::1', ' ()', ',  ()'),
(1512, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '11-10-2021 04:56:07 PM', '::1', ' ()', ',  ()'),
(1513, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '11-10-2021 04:56:08 PM', '::1', ' ()', ',  ()'),
(1514, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '11-10-2021 04:56:13 PM', '::1', ' ()', ',  ()'),
(1515, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/', '', '14-10-2021 10:55:46 PM', '::1', ' ()', ',  ()'),
(1516, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', '', '14-10-2021 10:55:48 PM', '::1', ' ()', ',  ()'),
(1517, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '14-10-2021 10:55:55 PM', '::1', ' ()', ',  ()'),
(1518, 'Chrome', '94.0.4606.81', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/admin/logout.php', '14-10-2021 10:56:57 PM', '::1', ' ()', ',  ()'),
(1519, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/', '', '13-11-2021 03:28:34 PM', '::1', ' ()', ',  ()'),
(1520, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php?page=product&action=add&id=2', 'http://localhost/ec1/', '13-11-2021 03:28:42 PM', '::1', ' ()', ',  ()'),
(1521, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/product-details.php?pid=2', '13-11-2021 03:28:56 PM', '::1', ' ()', ',  ()'),
(1522, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '13-11-2021 03:28:58 PM', '::1', ' ()', ',  ()'),
(1523, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/index.php', '13-11-2021 03:29:01 PM', '::1', ' ()', ',  ()'),
(1524, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/my-cart.php', '13-11-2021 03:29:30 PM', '::1', ' ()', ',  ()'),
(1525, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/procare/forgot-password.php', '13-11-2021 03:29:35 PM', '::1', ' ()', ',  ()'),
(1526, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/procare/forgot-password.php', '13-11-2021 03:29:40 PM', '::1', ' ()', ',  ()'),
(1527, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=7', '13-11-2021 03:30:06 PM', '::1', ' ()', ',  ()'),
(1528, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/', '', '13-11-2021 04:44:38 PM', '::1', ' ()', ',  ()'),
(1529, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/my-cart.php', '13-11-2021 04:44:42 PM', '::1', ' ()', ',  ()'),
(1530, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=4', '13-11-2021 04:44:44 PM', '::1', ' ()', ',  ()'),
(1531, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=4', '13-11-2021 04:45:01 PM', '::1', ' ()', ',  ()'),
(1532, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/index.php', '13-11-2021 04:45:03 PM', '::1', ' ()', ',  ()'),
(1533, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-11-2021 04:45:04 PM', '::1', ' ()', ',  ()'),
(1534, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-11-2021 04:45:06 PM', '::1', ' ()', ',  ()'),
(1535, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-11-2021 04:45:06 PM', '::1', ' ()', ',  ()'),
(1536, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-11-2021 04:45:07 PM', '::1', ' ()', ',  ()'),
(1537, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=4', '13-11-2021 04:45:09 PM', '::1', ' ()', ',  ()'),
(1538, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/index.php', '13-11-2021 04:45:10 PM', '::1', ' ()', ',  ()'),
(1539, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-11-2021 04:45:11 PM', '::1', ' ()', ',  ()'),
(1540, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/login.php', '13-11-2021 04:45:13 PM', '::1', ' ()', ',  ()'),
(1541, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/index.php', 'http://localhost/ec1/procare/', '13-11-2021 04:45:14 PM', '::1', ' ()', ',  ()'),
(1542, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/index.php', '13-11-2021 04:45:15 PM', '::1', ' ()', ',  ()'),
(1543, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '13-11-2021 04:45:25 PM', '::1', ' ()', ',  ()'),
(1544, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/', '', '14-11-2021 10:45:21 PM', '::1', ' ()', ',  ()'),
(1545, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '14-11-2021 10:45:25 PM', '::1', ' ()', ',  ()'),
(1546, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '14-11-2021 10:45:26 PM', '::1', ' ()', ',  ()'),
(1547, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '14-11-2021 10:45:32 PM', '::1', ' ()', ',  ()'),
(1548, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/', '', '16-11-2021 09:25:40 PM', '::1', ' ()', ',  ()'),
(1549, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/', '', '17-11-2021 10:42:55 AM', '::1', ' ()', ',  ()'),
(1550, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=1', '17-11-2021 10:43:14 AM', '::1', ' ()', ',  ()'),
(1551, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/contact_us.php', '17-11-2021 10:43:28 AM', '::1', ' ()', ',  ()'),
(1552, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=6', '17-11-2021 10:43:37 AM', '::1', ' ()', ',  ()'),
(1553, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/product-details.php?pid=21', '17-11-2021 10:44:08 AM', '::1', ' ()', ',  ()'),
(1554, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/procare/', '17-11-2021 10:44:16 AM', '::1', ' ()', ',  ()'),
(1555, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/track-orders.php', '17-11-2021 10:45:10 AM', '::1', ' ()', ',  ()'),
(1556, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/procare/logout.php', '17-11-2021 10:46:16 AM', '::1', ' ()', ',  ()'),
(1557, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '17-11-2021 10:46:19 AM', '::1', ' ()', ',  ()'),
(1558, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '17-11-2021 10:46:21 AM', '::1', ' ()', ',  ()'),
(1559, 'Chrome', '95.0.4638.69', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '17-11-2021 10:46:27 AM', '::1', ' ()', ',  ()'),
(1560, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/', '', '22-11-2021 08:43:09 PM', '::1', ' ()', ',  ()'),
(1561, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/', '', '23-11-2021 12:21:50 AM', '::1', ' ()', ',  ()'),
(1562, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/', '', '05-12-2021 08:11:27 PM', '::1', ' ()', ',  ()'),
(1563, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '05-12-2021 08:11:30 PM', '::1', ' ()', ',  ()'),
(1564, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '05-12-2021 08:11:32 PM', '::1', ' ()', ',  ()'),
(1565, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '05-12-2021 08:11:37 PM', '::1', ' ()', ',  ()'),
(1566, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/index.php', '', '05-12-2021 08:13:58 PM', '192.168.1.104', ' ()', ',  ()'),
(1567, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://192.168.1.104/ec1/procare/admin/index.php', 'http://192.168.1.104/ec1/procare/admin/index.php', '05-12-2021 08:14:03 PM', '192.168.1.104', ' ()', ',  ()'),
(1568, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/', '', '05-12-2021 08:14:55 PM', '::1', ' ()', ',  ()'),
(1569, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=4', '05-12-2021 08:15:13 PM', '::1', ' ()', ',  ()'),
(1570, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/', '', '05-12-2021 10:11:16 PM', '::1', ' ()', ',  ()'),
(1571, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/index.php', '', '05-12-2021 10:11:22 PM', '::1', ' ()', ',  ()'),
(1572, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/index.php', '', '05-12-2021 10:11:28 PM', '::1', ' ()', ',  ()'),
(1573, 'Chrome', '96.0.4664.45', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/category.php?cid=4', '05-12-2021 10:11:31 PM', '::1', ' ()', ',  ()'),
(1574, 'Chrome', '96.0.4664.110', 'PC', 'Window', 'http://localhost/ec1/', '', '04-01-2022 07:57:52 PM', '::1', ' ()', ',  ()'),
(1575, 'Chrome', '96.0.4664.110', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '04-01-2022 07:57:55 PM', '::1', ' ()', ',  ()'),
(1576, 'Chrome', '96.0.4664.110', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '04-01-2022 07:57:57 PM', '::1', ' ()', ',  ()'),
(1577, 'Chrome', '96.0.4664.110', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '04-01-2022 07:58:00 PM', '::1', ' ()', ',  ()'),
(1578, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/', '', '13-01-2022 03:02:35 PM', '::1', ' ()', ',  ()'),
(1579, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/', '13-01-2022 03:02:38 PM', '::1', ' ()', ',  ()'),
(1580, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '13-01-2022 03:02:41 PM', '::1', ' ()', ',  ()'),
(1581, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '13-01-2022 03:02:47 PM', '::1', ' ()', ',  ()'),
(1582, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=2', '13-01-2022 03:04:20 PM', '::1', ' ()', ',  ()'),
(1583, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/procare/admin/dashboard.php', '13-01-2022 03:05:45 PM', '::1', ' ()', ',  ()'),
(1584, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/logout.php', '13-01-2022 03:05:49 PM', '::1', ' ()', ',  ()'),
(1585, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/index.php', '13-01-2022 03:05:51 PM', '::1', ' ()', ',  ()'),
(1586, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http//localhost/ec1/login.php', 'http://localhost/ec1/login.php', '13-01-2022 03:06:01 PM', '::1', ' ()', ',  ()'),
(1587, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/login.php', '13-01-2022 03:06:10 PM', '::1', ' ()', ',  ()'),
(1588, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/procare/logout.php', '13-01-2022 03:06:53 PM', '::1', ' ()', ',  ()'),
(1589, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/', 'http://localhost/ec1/index.php', '13-01-2022 03:06:54 PM', '::1', ' ()', ',  ()'),
(1590, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/', '13-01-2022 03:06:56 PM', '::1', ' ()', ',  ()'),
(1591, 'Chrome', '97.0.4692.71', 'PC', 'Window', 'http://localhost/ec1/procare/admin/', 'http://localhost/ec1/procare/admin/', '13-01-2022 03:07:02 PM', '::1', ' ()', ',  ()'),
(1592, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://192.168.1.105/ec1/', '', '17-02-2022 10:48:26 PM', '192.168.1.105', ' ()', ',  ()'),
(1593, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http//192.168.1.105/ec1/login.php', 'http://192.168.1.105/ec1/', '17-02-2022 10:48:30 PM', '192.168.1.105', ' ()', ',  ()'),
(1594, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://192.168.1.105/ec1/procare/', 'http://192.168.1.105/ec1/login.php', '17-02-2022 10:48:34 PM', '192.168.1.105', ' ()', ',  ()'),
(1595, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://192.168.1.105/ec1/procare/admin/', 'http://192.168.1.105/ec1/procare/', '17-02-2022 10:48:36 PM', '192.168.1.105', ' ()', ',  ()'),
(1596, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://192.168.1.105/ec1/procare/admin/', 'http://192.168.1.105/ec1/procare/admin/', '17-02-2022 10:48:45 PM', '192.168.1.105', ' ()', ',  ()'),
(1597, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://10.64.20.36/ec1/', '', '17-02-2022 10:49:40 PM', '10.64.20.36', ' ()', ',  ()'),
(1598, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://10.64.20.36/ec1/procare/', 'http://10.64.20.36/ec1/', '17-02-2022 10:49:43 PM', '10.64.20.36', ' ()', ',  ()'),
(1599, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://10.64.20.36/ec1/procare/admin/', 'http://10.64.20.36/ec1/procare/', '17-02-2022 10:49:46 PM', '10.64.20.36', ' ()', ',  ()'),
(1600, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://10.64.20.36/ec1/procare/admin/', 'http://10.64.20.36/ec1/procare/admin/', '17-02-2022 10:49:51 PM', '10.64.20.36', ' ()', ',  ()'),
(1601, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://10.64.20.36/ec1/procare/index.php', 'http://10.64.20.36/ec1/procare/admin/logout.php', '17-02-2022 10:50:52 PM', '10.64.20.36', ' ()', ',  ()'),
(1602, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://localhost/ec1/', '', '18-02-2022 07:58:56 PM', '::1', ' ()', ',  ()'),
(1603, 'Chrome', '98.0.4758.102', 'PC', 'Window', 'http://localhost/ec1/index.php', 'http://localhost/ec1/product-details.php?pid=7', '18-02-2022 07:59:09 PM', '::1', ' ()', ',  ()');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_want`
--
ALTER TABLE `product_want`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellerlog`
--
ALTER TABLE `sellerlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_query`
--
ALTER TABLE `seller_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_want`
--
ALTER TABLE `product_want`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellerlog`
--
ALTER TABLE `sellerlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `seller_query`
--
ALTER TABLE `seller_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1604;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
