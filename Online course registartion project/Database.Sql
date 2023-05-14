 Server: localhost -  Database: onlinecourse
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2023 at 05:12 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '88845e9761eef7334ff09b8a5976a65d', '2022-01-31 21:51:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'PHP', '5', 10, '2022-02-10 22:53:28', NULL),
(2, 'C001', 'C++', '12', 25, '2022-02-11 06:22:46', '11-02-2022 06:23:06 AM'),
(3, 'Acc10', 'Account', '6', 30, '2022-11-19 22:35:48', NULL),
(4, '002', 'Cyber Security', '1', 100, '2022-11-29 20:31:16', NULL),
(5, '003', 'AI', '2', 50, '2022-11-29 20:32:03', NULL),
(6, '004', 'AIML', '3', 20, '2022-11-29 20:32:30', NULL),
(7, '004', 'AIML', '3', 20, '2022-11-29 20:34:52', NULL),
(8, '0010AC', 'Python', '1', 120, '2022-11-29 20:35:50', NULL),
(9, '005', 'cricket', '1', 10, '2023-02-09 11:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE IF NOT EXISTS `courseenrolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(1, '10806121', '822894', 1, 1, 2, 3, 1, '2022-02-11 06:29:33'),
(2, '10806121', '822894', 1, 1, 1, 2, 2, '2022-02-11 06:31:07'),
(3, '10806121', '822894', 3, 1, 3, 2, 1, '2022-11-19 22:30:29'),
(4, '10806121', '822894', 3, 2, 2, 1, 2, '2022-11-19 22:32:33'),
(5, '129012', '448513', 4, 4, 3, 5, 3, '2022-11-19 22:44:22'),
(6, '220101', '694360', 4, 1, 1, 6, 8, '2022-11-29 20:57:33'),
(7, '129012', '448513', 7, 1, 2, 6, 1, '2022-11-30 16:28:23'),
(8, '129012', '448513', 4, 6, 1, 6, 5, '2023-02-09 00:21:55'),
(9, '129012', '448513', 4, 10, 3, 6, 3, '2023-02-09 10:41:12'),
(10, '129012', '448513', 11, 12, 1, 6, 9, '2023-02-09 14:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'IT', '2022-02-10 22:53:04'),
(2, 'HR', '2022-02-10 22:53:09'),
(4, 'Commerce ', '2022-11-19 22:34:26'),
(5, 'IQAC ', '2022-11-29 20:28:09'),
(6, 'Physics ', '2022-11-29 20:28:20'),
(7, 'CHEMISTRY', '2022-11-29 20:28:40'),
(8, 'ZOOLOGY', '2022-11-29 20:28:53'),
(9, 'BIOLOGY', '2022-11-29 20:29:23'),
(10, 'MANAGEMANT', '2022-11-29 20:29:53'),
(11, 'SPORTS', '2022-11-29 20:30:01'),
(12, 'Sports ', '2023-02-09 11:38:10'),
(13, 'Hollyball', '2023-02-09 11:38:28'),
(14, 'football', '2023-02-09 11:38:37'),
(15, 'batmintan', '2023-02-09 11:38:48'),
(16, 'hocky', '2023-02-09 11:39:00'),
(17, 'cricket', '2023-02-09 11:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, '1', '2022-02-11 06:29:02'),
(2, '2', '2022-02-11 06:29:02'),
(3, '3', '2022-02-11 06:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(2, 'Test News', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-02-10 23:06:50'),
(3, 'New Course Started C#', 'This is sample text for testing.', '2022-02-11 06:24:38'),
(4, 'New course on cpp', 'join course on cpp ', '2022-11-19 22:40:29'),
(5, 'Test ', 'Physics Test will be on 01 Dec 2022 be prepared .', '2022-11-29 20:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '1', '2022-02-10 22:52:49', NULL),
(2, '2', '2022-02-10 22:52:55', NULL),
(3, '3', '2022-02-11 06:21:43', NULL),
(5, '4', '2022-11-19 22:33:48', NULL),
(6, '5', '2022-11-29 20:27:40', NULL),
(7, '6', '2022-11-29 20:27:47', NULL),
(8, '7', '2023-02-09 14:52:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(3, '2022', '2022-11-19 22:16:52'),
(4, '2023', '2022-11-19 22:33:36'),
(5, '29/11/2022', '2022-11-29 20:24:58'),
(6, '30/11/2022', '2022-11-29 20:25:25'),
(7, '01/12/2022', '2022-11-29 20:25:54'),
(8, '02/12/2022', '2022-11-29 20:26:30'),
(9, '03/12/2022', '2022-11-29 20:26:50'),
(10, '04/12/2022', '2022-11-29 20:27:12'),
(11, '10.2.2023', '2023-02-09 11:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StudentRegno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('12435', NULL, 'dae3884cf5d398e738fc1d561a1e9617', 'nabage', '591061', NULL, NULL, NULL, NULL, '2023-02-09 16:48:04', NULL),
('129012', '', '637534835cb265c5e844f6d2e76a79b0', 'nabage', '448513', NULL, NULL, NULL, '9.00', '2022-11-19 22:36:52', NULL),
('220101', '1660543529211.jpg', '412134f251683973df3dcdf8da754d3e', 'Bodkhe Nilesh', '694360', NULL, NULL, NULL, '9.00', '2022-11-29 20:37:04', NULL),
('220102', NULL, '4772b55c75e270dd896eb0864c0568a4', 'omkar badakh', '610342', NULL, NULL, NULL, NULL, '2022-11-29 20:37:54', NULL),
('220103', NULL, '480ee63f90f84807b82cf11188c6580f', 'Bhale Sujit', '472683', NULL, NULL, NULL, NULL, '2022-11-29 20:38:31', NULL),
('220104', NULL, '19e5d3693669072807ad48002b3684b5', 'Ghogre Pratik', '311843', NULL, NULL, NULL, NULL, '2022-11-29 20:39:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-02-11 06:25:07', NULL, 1),
(2, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-02-11 06:27:00', NULL, 1),
(3, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-02-11 06:27:22', '11-02-2022 06:31:26 AM', 1),
(4, '10806121', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-19 22:08:37', '19-11-2022 10:11:21 PM', 1),
(5, '10806121', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-19 22:20:18', '19-11-2022 10:21:13 PM', 1),
(6, '10806121', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-19 22:28:57', '19-11-2022 10:32:55 PM', 1),
(7, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-19 22:42:23', '19-11-2022 10:44:35 PM', 1),
(8, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-23 10:31:11', '23-11-2022 10:32:53 AM', 1),
(9, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-23 10:58:50', '23-11-2022 11:00:27 AM', 1),
(10, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-23 11:02:06', NULL, 1),
(11, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-29 20:14:28', '29-11-2022 08:21:48 PM', 1),
(12, '220101', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-29 20:52:06', '29-11-2022 08:57:38 PM', 1),
(13, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-30 16:20:10', '30-11-2022 04:21:27 PM', 1),
(14, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-30 16:22:54', '30-11-2022 04:29:26 PM', 1),
(15, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-11-30 20:51:19', NULL, 1),
(16, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-02 11:38:46', NULL, 1),
(17, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-09 21:33:18', '09-12-2022 09:34:06 PM', 1),
(18, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-19 14:43:17', '19-12-2022 04:04:40 PM', 1),
(19, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-19 17:53:20', '19-12-2022 05:55:53 PM', 1),
(20, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-28 18:36:59', '28-12-2022 06:37:57 PM', 1),
(21, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2022-12-29 16:32:36', '29-12-2022 04:41:44 PM', 1),
(22, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-03 23:11:03', '03-02-2023 11:11:09 PM', 1),
(23, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-03 23:12:03', NULL, 1),
(24, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-07 19:21:01', '07-02-2023 07:21:05 PM', 1),
(25, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 00:17:20', '09-02-2023 12:23:00 AM', 1),
(26, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 00:29:27', '09-02-2023 12:29:37 AM', 1),
(27, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 00:34:00', NULL, 1),
(28, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 10:40:02', NULL, 1),
(29, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 14:55:30', '09-02-2023 02:59:19 PM', 1),
(30, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 16:42:55', '09-02-2023 04:43:09 PM', 1),
(31, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 16:44:31', '09-02-2023 04:45:14 PM', 1),
(32, '129012', '127.0.0.1\0\0\0\0\0\0\0', '2023-02-09 16:45:37', '09-02-2023 04:46:59 PM', 1);

