-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 08:51 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optimtable`
--
CREATE DATABASE IF NOT EXISTS `optimtable` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `optimtable`;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `specialization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `groupName`, `specialization`) VALUES
(1, '1211A', 1),
(2, '1211B', 1),
(3, '1212A', 2),
(4, '1212B', 2),
(5, '1214', 3),
(6, '1213', 4);

-- --------------------------------------------------------

--
-- Table structure for table `schedulegroups`
--

CREATE TABLE `schedulegroups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `startHour` int(11) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedulegroups`
--

INSERT INTO `schedulegroups` (`id`, `groupName`, `day`, `startHour`, `info`) VALUES
(1, '1', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(2, '1', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(3, '1', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(4, '1', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(5, '1', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(6, '1', 1, 13, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(7, '1', 1, 14, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(8, '1', 1, 15, 'free'),
(9, '1', 1, 16, 'free'),
(10, '1', 1, 17, 'free'),
(11, '1', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(12, '1', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(13, '1', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(14, '1', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(15, '1', 2, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(16, '1', 2, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(17, '1', 2, 14, 'Physics,Seminar,MariaPopovici'),
(18, '1', 2, 15, 'free'),
(19, '1', 2, 16, 'free'),
(20, '1', 2, 17, 'free'),
(21, '1', 3, 8, 'Physics,Course,Maria Popovici'),
(22, '1', 3, 9, 'Physics,Course,Maria Popovici'),
(23, '1', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(24, '1', 3, 11, 'Calculus,Seminar,Mircea Cimpoias'),
(25, '1', 3, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(26, '1', 3, 13, 'Mechanics,Seminar,AdinaNegrea'),
(27, '1', 3, 14, 'Physics,Laboratory,Maria Popovici'),
(28, '1', 3, 15, 'free'),
(29, '1', 3, 16, 'free'),
(30, '1', 3, 17, 'free'),
(31, '1', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(32, '1', 4, 9, 'free'),
(33, '1', 4, 10, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(34, '1', 4, 11, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(35, '1', 4, 12, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(36, '1', 4, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(37, '1', 4, 14, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(38, '1', 4, 15, 'free'),
(39, '1', 4, 16, 'free'),
(40, '1', 4, 17, 'free'),
(41, '1', 5, 8, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(42, '1', 5, 9, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(43, '1', 5, 10, 'free'),
(44, '1', 5, 11, 'free'),
(45, '1', 5, 12, 'free'),
(46, '1', 5, 13, 'free'),
(47, '1', 5, 14, 'free'),
(48, '1', 5, 15, 'free'),
(49, '1', 5, 16, 'free'),
(50, '1', 5, 17, 'free'),
(51, '2', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(52, '2', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(53, '2', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(54, '2', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(55, '2', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(56, '2', 1, 13, 'free'),
(57, '2', 1, 14, 'free'),
(58, '2', 1, 15, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(59, '2', 1, 16, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(60, '2', 1, 17, 'free'),
(61, '2', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(62, '2', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(63, '2', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(64, '2', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(65, '2', 2, 12, 'Physics,Seminar,MariaPopovici'),
(66, '2', 2, 13, 'free'),
(67, '2', 2, 14, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(68, '2', 2, 15, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(69, '2', 2, 16, 'free'),
(70, '2', 2, 17, 'free'),
(71, '2', 3, 8, 'Physics,Course,Maria Popovici'),
(72, '2', 3, 9, 'Physics,Course,Maria Popovici'),
(73, '2', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(74, '2', 3, 11, 'Mechanics,Seminar,AdinaNegrea'),
(75, '2', 3, 12, 'Physics,Laboratory,Maria Popovici'),
(76, '2', 3, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(77, '2', 3, 14, 'Calculus,Seminar,Mircea Cimpoias'),
(78, '2', 3, 15, 'free'),
(79, '2', 3, 16, 'free'),
(80, '2', 3, 17, 'free'),
(81, '2', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(82, '2', 4, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(83, '2', 4, 10, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(84, '2', 4, 11, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(85, '2', 4, 12, 'free'),
(86, '2', 4, 13, 'free'),
(87, '2', 4, 14, 'free'),
(88, '2', 4, 15, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(89, '2', 4, 16, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(90, '2', 4, 17, 'free'),
(91, '2', 5, 8, 'free'),
(92, '2', 5, 9, 'free'),
(93, '2', 5, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(94, '2', 5, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(95, '2', 5, 12, 'free'),
(96, '2', 5, 13, 'free'),
(97, '2', 5, 14, 'free'),
(98, '2', 5, 15, 'free'),
(99, '2', 5, 16, 'free'),
(100, '2', 5, 17, 'free'),
(101, '3', 1, 8, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(102, '3', 1, 9, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(103, '3', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(104, '3', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(105, '3', 1, 12, 'free'),
(106, '3', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(107, '3', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(108, '3', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(109, '3', 1, 16, 'free'),
(110, '3', 1, 17, 'free'),
(111, '3', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(112, '3', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(113, '3', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(114, '3', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(115, '3', 2, 12, 'free'),
(116, '3', 2, 13, 'Physics,Seminar,MariaPopovici'),
(117, '3', 2, 14, 'free'),
(118, '3', 2, 15, 'free'),
(119, '3', 2, 16, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(120, '3', 2, 17, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(121, '3', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(122, '3', 3, 9, 'Mechanics,Seminar,AdinaNegrea'),
(123, '3', 3, 10, 'Physics,Course,Maria Popovici'),
(124, '3', 3, 11, 'Physics,Course,Maria Popovici'),
(125, '3', 3, 12, 'free'),
(126, '3', 3, 13, 'Physics,Laboratory,Maria Popovici'),
(127, '3', 3, 14, 'free'),
(128, '3', 3, 15, 'Calculus,Seminar,Mircea Cimpoias'),
(129, '3', 3, 16, 'Calculus,Seminar,Mircea Cimpoias'),
(130, '3', 3, 17, 'free'),
(131, '3', 4, 8, 'free'),
(132, '3', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(133, '3', 4, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(134, '3', 4, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(135, '3', 4, 12, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(136, '3', 4, 13, 'free'),
(137, '3', 4, 14, 'free'),
(138, '3', 4, 15, 'free'),
(139, '3', 4, 16, 'free'),
(140, '3', 4, 17, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(141, '3', 5, 8, 'free'),
(142, '3', 5, 9, 'free'),
(143, '3', 5, 10, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(144, '3', 5, 11, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(145, '3', 5, 12, 'free'),
(146, '3', 5, 13, 'free'),
(147, '3', 5, 14, 'free'),
(148, '3', 5, 15, 'free'),
(149, '3', 5, 16, 'free'),
(150, '3', 5, 17, 'free'),
(151, '4', 1, 8, 'free'),
(152, '4', 1, 9, 'free'),
(153, '4', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(154, '4', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(155, '4', 1, 12, 'free'),
(156, '4', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(157, '4', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(158, '4', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(159, '4', 1, 16, 'free'),
(160, '4', 1, 17, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(161, '4', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(162, '4', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(163, '4', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(164, '4', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(165, '4', 2, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(166, '4', 2, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(167, '4', 2, 14, 'free'),
(168, '4', 2, 15, 'Physics,Seminar,MariaPopovici'),
(169, '4', 2, 16, 'free'),
(170, '4', 2, 17, 'free'),
(171, '4', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(172, '4', 3, 9, 'free'),
(173, '4', 3, 10, 'Physics,Course,Maria Popovici'),
(174, '4', 3, 11, 'Physics,Course,Maria Popovici'),
(175, '4', 3, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(176, '4', 3, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(177, '4', 3, 14, 'Mechanics,Seminar,AdinaNegrea'),
(178, '4', 3, 15, 'Physics,Laboratory,Maria Popovici'),
(179, '4', 3, 16, 'free'),
(180, '4', 3, 17, 'free'),
(181, '4', 4, 8, 'free'),
(182, '4', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(183, '4', 4, 10, 'free'),
(184, '4', 4, 11, 'free'),
(185, '4', 4, 12, 'free'),
(186, '4', 4, 13, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(187, '4', 4, 14, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(188, '4', 4, 15, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(189, '4', 4, 16, 'free'),
(190, '4', 4, 17, 'free'),
(191, '4', 5, 8, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(192, '4', 5, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(193, '4', 5, 10, 'free'),
(194, '4', 5, 11, 'free'),
(195, '4', 5, 12, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(196, '4', 5, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(197, '4', 5, 14, 'free'),
(198, '4', 5, 15, 'free'),
(199, '4', 5, 16, 'free'),
(200, '4', 5, 17, 'free'),
(201, '1', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(202, '1', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(203, '1', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(204, '1', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(205, '1', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(206, '1', 1, 13, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(207, '1', 1, 14, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(208, '1', 1, 15, 'free'),
(209, '1', 1, 16, 'free'),
(210, '1', 1, 17, 'free'),
(211, '1', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(212, '1', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(213, '1', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(214, '1', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(215, '1', 2, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(216, '1', 2, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(217, '1', 2, 14, 'Physics,Seminar,MariaPopovici'),
(218, '1', 2, 15, 'free'),
(219, '1', 2, 16, 'free'),
(220, '1', 2, 17, 'free'),
(221, '1', 3, 8, 'Physics,Course,Maria Popovici'),
(222, '1', 3, 9, 'Physics,Course,Maria Popovici'),
(223, '1', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(224, '1', 3, 11, 'Calculus,Seminar,Mircea Cimpoias'),
(225, '1', 3, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(226, '1', 3, 13, 'Mechanics,Seminar,AdinaNegrea'),
(227, '1', 3, 14, 'Physics,Laboratory,Maria Popovici'),
(228, '1', 3, 15, 'free'),
(229, '1', 3, 16, 'free'),
(230, '1', 3, 17, 'free'),
(231, '1', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(232, '1', 4, 9, 'free'),
(233, '1', 4, 10, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(234, '1', 4, 11, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(235, '1', 4, 12, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(236, '1', 4, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(237, '1', 4, 14, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(238, '1', 4, 15, 'free'),
(239, '1', 4, 16, 'free'),
(240, '1', 4, 17, 'free'),
(241, '1', 5, 8, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(242, '1', 5, 9, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(243, '1', 5, 10, 'free'),
(244, '1', 5, 11, 'free'),
(245, '1', 5, 12, 'free'),
(246, '1', 5, 13, 'free'),
(247, '1', 5, 14, 'free'),
(248, '1', 5, 15, 'free'),
(249, '1', 5, 16, 'free'),
(250, '1', 5, 17, 'free'),
(251, '2', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(252, '2', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(253, '2', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(254, '2', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(255, '2', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(256, '2', 1, 13, 'free'),
(257, '2', 1, 14, 'free'),
(258, '2', 1, 15, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(259, '2', 1, 16, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(260, '2', 1, 17, 'free'),
(261, '2', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(262, '2', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(263, '2', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(264, '2', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(265, '2', 2, 12, 'Physics,Seminar,MariaPopovici'),
(266, '2', 2, 13, 'free'),
(267, '2', 2, 14, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(268, '2', 2, 15, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(269, '2', 2, 16, 'free'),
(270, '2', 2, 17, 'free'),
(271, '2', 3, 8, 'Physics,Course,Maria Popovici'),
(272, '2', 3, 9, 'Physics,Course,Maria Popovici'),
(273, '2', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(274, '2', 3, 11, 'Mechanics,Seminar,AdinaNegrea'),
(275, '2', 3, 12, 'Physics,Laboratory,Maria Popovici'),
(276, '2', 3, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(277, '2', 3, 14, 'Calculus,Seminar,Mircea Cimpoias'),
(278, '2', 3, 15, 'free'),
(279, '2', 3, 16, 'free'),
(280, '2', 3, 17, 'free'),
(281, '2', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(282, '2', 4, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(283, '2', 4, 10, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(284, '2', 4, 11, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(285, '2', 4, 12, 'free'),
(286, '2', 4, 13, 'free'),
(287, '2', 4, 14, 'free'),
(288, '2', 4, 15, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(289, '2', 4, 16, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(290, '2', 4, 17, 'free'),
(291, '2', 5, 8, 'free'),
(292, '2', 5, 9, 'free'),
(293, '2', 5, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(294, '2', 5, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(295, '2', 5, 12, 'free'),
(296, '2', 5, 13, 'free'),
(297, '2', 5, 14, 'free'),
(298, '2', 5, 15, 'free'),
(299, '2', 5, 16, 'free'),
(300, '2', 5, 17, 'free'),
(301, '3', 1, 8, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(302, '3', 1, 9, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(303, '3', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(304, '3', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(305, '3', 1, 12, 'free'),
(306, '3', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(307, '3', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(308, '3', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(309, '3', 1, 16, 'free'),
(310, '3', 1, 17, 'free'),
(311, '3', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(312, '3', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(313, '3', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(314, '3', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(315, '3', 2, 12, 'free'),
(316, '3', 2, 13, 'Physics,Seminar,MariaPopovici'),
(317, '3', 2, 14, 'free'),
(318, '3', 2, 15, 'free'),
(319, '3', 2, 16, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(320, '3', 2, 17, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(321, '3', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(322, '3', 3, 9, 'Mechanics,Seminar,AdinaNegrea'),
(323, '3', 3, 10, 'Physics,Course,Maria Popovici'),
(324, '3', 3, 11, 'Physics,Course,Maria Popovici'),
(325, '3', 3, 12, 'free'),
(326, '3', 3, 13, 'Physics,Laboratory,Maria Popovici'),
(327, '3', 3, 14, 'free'),
(328, '3', 3, 15, 'Calculus,Seminar,Mircea Cimpoias'),
(329, '3', 3, 16, 'Calculus,Seminar,Mircea Cimpoias'),
(330, '3', 3, 17, 'free'),
(331, '3', 4, 8, 'free'),
(332, '3', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(333, '3', 4, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(334, '3', 4, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(335, '3', 4, 12, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(336, '3', 4, 13, 'free'),
(337, '3', 4, 14, 'free'),
(338, '3', 4, 15, 'free'),
(339, '3', 4, 16, 'free'),
(340, '3', 4, 17, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(341, '3', 5, 8, 'free'),
(342, '3', 5, 9, 'free'),
(343, '3', 5, 10, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(344, '3', 5, 11, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(345, '3', 5, 12, 'free'),
(346, '3', 5, 13, 'free'),
(347, '3', 5, 14, 'free'),
(348, '3', 5, 15, 'free'),
(349, '3', 5, 16, 'free'),
(350, '3', 5, 17, 'free'),
(351, '4', 1, 8, 'free'),
(352, '4', 1, 9, 'free'),
(353, '4', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(354, '4', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(355, '4', 1, 12, 'free'),
(356, '4', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(357, '4', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(358, '4', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(359, '4', 1, 16, 'free'),
(360, '4', 1, 17, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(361, '4', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(362, '4', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(363, '4', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(364, '4', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(365, '4', 2, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(366, '4', 2, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(367, '4', 2, 14, 'free'),
(368, '4', 2, 15, 'Physics,Seminar,MariaPopovici'),
(369, '4', 2, 16, 'free'),
(370, '4', 2, 17, 'free'),
(371, '4', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(372, '4', 3, 9, 'free'),
(373, '4', 3, 10, 'Physics,Course,Maria Popovici'),
(374, '4', 3, 11, 'Physics,Course,Maria Popovici'),
(375, '4', 3, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(376, '4', 3, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(377, '4', 3, 14, 'Mechanics,Seminar,AdinaNegrea'),
(378, '4', 3, 15, 'Physics,Laboratory,Maria Popovici'),
(379, '4', 3, 16, 'free'),
(380, '4', 3, 17, 'free'),
(381, '4', 4, 8, 'free'),
(382, '4', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(383, '4', 4, 10, 'free'),
(384, '4', 4, 11, 'free'),
(385, '4', 4, 12, 'free'),
(386, '4', 4, 13, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(387, '4', 4, 14, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(388, '4', 4, 15, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(389, '4', 4, 16, 'free'),
(390, '4', 4, 17, 'free'),
(391, '4', 5, 8, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(392, '4', 5, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(393, '4', 5, 10, 'free'),
(394, '4', 5, 11, 'free'),
(395, '4', 5, 12, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(396, '4', 5, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(397, '4', 5, 14, 'free'),
(398, '4', 5, 15, 'free'),
(399, '4', 5, 16, 'free'),
(400, '4', 5, 17, 'free'),
(401, '5', 1, 8, 'free'),
(402, '5', 1, 9, 'free'),
(403, '5', 1, 10, 'free'),
(404, '5', 1, 11, 'free'),
(405, '5', 1, 12, 'free'),
(406, '5', 1, 13, 'free'),
(407, '5', 1, 14, 'free'),
(408, '5', 1, 15, 'free'),
(409, '5', 1, 16, 'free'),
(410, '5', 1, 17, 'free'),
(411, '5', 2, 8, 'free'),
(412, '5', 2, 9, 'free'),
(413, '5', 2, 10, 'free'),
(414, '5', 2, 11, 'free'),
(415, '5', 2, 12, 'free'),
(416, '5', 2, 13, 'free'),
(417, '5', 2, 14, 'free'),
(418, '5', 2, 15, 'free'),
(419, '5', 2, 16, 'free'),
(420, '5', 2, 17, 'free'),
(421, '5', 3, 8, 'free'),
(422, '5', 3, 9, 'free'),
(423, '5', 3, 10, 'free'),
(424, '5', 3, 11, 'free'),
(425, '5', 3, 12, 'free'),
(426, '5', 3, 13, 'free'),
(427, '5', 3, 14, 'free'),
(428, '5', 3, 15, 'free'),
(429, '5', 3, 16, 'free'),
(430, '5', 3, 17, 'free'),
(431, '5', 4, 8, 'free'),
(432, '5', 4, 9, 'free'),
(433, '5', 4, 10, 'free'),
(434, '5', 4, 11, 'free'),
(435, '5', 4, 12, 'free'),
(436, '5', 4, 13, 'free'),
(437, '5', 4, 14, 'free'),
(438, '5', 4, 15, 'free'),
(439, '5', 4, 16, 'free'),
(440, '5', 4, 17, 'free'),
(441, '5', 5, 8, 'free'),
(442, '5', 5, 9, 'free'),
(443, '5', 5, 10, 'free'),
(444, '5', 5, 11, 'free'),
(445, '5', 5, 12, 'free'),
(446, '5', 5, 13, 'free'),
(447, '5', 5, 14, 'free'),
(448, '5', 5, 15, 'free'),
(449, '5', 5, 16, 'free'),
(450, '5', 5, 17, 'free'),
(451, '6', 1, 8, 'free'),
(452, '6', 1, 9, 'free'),
(453, '6', 1, 10, 'free'),
(454, '6', 1, 11, 'free'),
(455, '6', 1, 12, 'free'),
(456, '6', 1, 13, 'free'),
(457, '6', 1, 14, 'free'),
(458, '6', 1, 15, 'free'),
(459, '6', 1, 16, 'free'),
(460, '6', 1, 17, 'free'),
(461, '6', 2, 8, 'free'),
(462, '6', 2, 9, 'free'),
(463, '6', 2, 10, 'free'),
(464, '6', 2, 11, 'free'),
(465, '6', 2, 12, 'free'),
(466, '6', 2, 13, 'free'),
(467, '6', 2, 14, 'free'),
(468, '6', 2, 15, 'free'),
(469, '6', 2, 16, 'free'),
(470, '6', 2, 17, 'free'),
(471, '6', 3, 8, 'free'),
(472, '6', 3, 9, 'free'),
(473, '6', 3, 10, 'free'),
(474, '6', 3, 11, 'free'),
(475, '6', 3, 12, 'free'),
(476, '6', 3, 13, 'free'),
(477, '6', 3, 14, 'free'),
(478, '6', 3, 15, 'free'),
(479, '6', 3, 16, 'free'),
(480, '6', 3, 17, 'free'),
(481, '6', 4, 8, 'free'),
(482, '6', 4, 9, 'free'),
(483, '6', 4, 10, 'free'),
(484, '6', 4, 11, 'free'),
(485, '6', 4, 12, 'free'),
(486, '6', 4, 13, 'free'),
(487, '6', 4, 14, 'free'),
(488, '6', 4, 15, 'free'),
(489, '6', 4, 16, 'free'),
(490, '6', 4, 17, 'free'),
(491, '6', 5, 8, 'free'),
(492, '6', 5, 9, 'free'),
(493, '6', 5, 10, 'free'),
(494, '6', 5, 11, 'free'),
(495, '6', 5, 12, 'free'),
(496, '6', 5, 13, 'free'),
(497, '6', 5, 14, 'free'),
(498, '6', 5, 15, 'free'),
(499, '6', 5, 16, 'free'),
(500, '6', 5, 17, 'free'),
(501, '1', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(502, '1', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(503, '1', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(504, '1', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(505, '1', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(506, '1', 1, 13, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(507, '1', 1, 14, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(508, '1', 1, 15, 'free'),
(509, '1', 1, 16, 'free'),
(510, '1', 1, 17, 'free'),
(511, '1', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(512, '1', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(513, '1', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(514, '1', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(515, '1', 2, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(516, '1', 2, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(517, '1', 2, 14, 'Physics,Seminar,MariaPopovici'),
(518, '1', 2, 15, 'free'),
(519, '1', 2, 16, 'free'),
(520, '1', 2, 17, 'free'),
(521, '1', 3, 8, 'Physics,Course,Maria Popovici'),
(522, '1', 3, 9, 'Physics,Course,Maria Popovici'),
(523, '1', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(524, '1', 3, 11, 'Calculus,Seminar,Mircea Cimpoias'),
(525, '1', 3, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(526, '1', 3, 13, 'Mechanics,Seminar,AdinaNegrea'),
(527, '1', 3, 14, 'Physics,Laboratory,Maria Popovici'),
(528, '1', 3, 15, 'free'),
(529, '1', 3, 16, 'free'),
(530, '1', 3, 17, 'free'),
(531, '1', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(532, '1', 4, 9, 'free'),
(533, '1', 4, 10, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(534, '1', 4, 11, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(535, '1', 4, 12, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(536, '1', 4, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(537, '1', 4, 14, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(538, '1', 4, 15, 'free'),
(539, '1', 4, 16, 'free'),
(540, '1', 4, 17, 'free'),
(541, '1', 5, 8, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(542, '1', 5, 9, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(543, '1', 5, 10, 'free'),
(544, '1', 5, 11, 'free'),
(545, '1', 5, 12, 'free'),
(546, '1', 5, 13, 'free'),
(547, '1', 5, 14, 'free'),
(548, '1', 5, 15, 'free'),
(549, '1', 5, 16, 'free'),
(550, '1', 5, 17, 'free'),
(551, '2', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(552, '2', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(553, '2', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(554, '2', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(555, '2', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(556, '2', 1, 13, 'free'),
(557, '2', 1, 14, 'free'),
(558, '2', 1, 15, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(559, '2', 1, 16, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(560, '2', 1, 17, 'free'),
(561, '2', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(562, '2', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(563, '2', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(564, '2', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(565, '2', 2, 12, 'Physics,Seminar,MariaPopovici'),
(566, '2', 2, 13, 'free'),
(567, '2', 2, 14, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(568, '2', 2, 15, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(569, '2', 2, 16, 'free'),
(570, '2', 2, 17, 'free'),
(571, '2', 3, 8, 'Physics,Course,Maria Popovici'),
(572, '2', 3, 9, 'Physics,Course,Maria Popovici'),
(573, '2', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(574, '2', 3, 11, 'Mechanics,Seminar,AdinaNegrea'),
(575, '2', 3, 12, 'Physics,Laboratory,Maria Popovici'),
(576, '2', 3, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(577, '2', 3, 14, 'Calculus,Seminar,Mircea Cimpoias'),
(578, '2', 3, 15, 'free'),
(579, '2', 3, 16, 'free'),
(580, '2', 3, 17, 'free'),
(581, '2', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(582, '2', 4, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(583, '2', 4, 10, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(584, '2', 4, 11, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(585, '2', 4, 12, 'free'),
(586, '2', 4, 13, 'free'),
(587, '2', 4, 14, 'free'),
(588, '2', 4, 15, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(589, '2', 4, 16, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(590, '2', 4, 17, 'free'),
(591, '2', 5, 8, 'free'),
(592, '2', 5, 9, 'free'),
(593, '2', 5, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(594, '2', 5, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(595, '2', 5, 12, 'free'),
(596, '2', 5, 13, 'free'),
(597, '2', 5, 14, 'free'),
(598, '2', 5, 15, 'free'),
(599, '2', 5, 16, 'free'),
(600, '2', 5, 17, 'free'),
(601, '3', 1, 8, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(602, '3', 1, 9, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(603, '3', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(604, '3', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(605, '3', 1, 12, 'free'),
(606, '3', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(607, '3', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(608, '3', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(609, '3', 1, 16, 'free'),
(610, '3', 1, 17, 'free'),
(611, '3', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(612, '3', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(613, '3', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(614, '3', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(615, '3', 2, 12, 'free'),
(616, '3', 2, 13, 'Physics,Seminar,MariaPopovici'),
(617, '3', 2, 14, 'free'),
(618, '3', 2, 15, 'free'),
(619, '3', 2, 16, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(620, '3', 2, 17, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(621, '3', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(622, '3', 3, 9, 'Mechanics,Seminar,AdinaNegrea'),
(623, '3', 3, 10, 'Physics,Course,Maria Popovici'),
(624, '3', 3, 11, 'Physics,Course,Maria Popovici'),
(625, '3', 3, 12, 'free'),
(626, '3', 3, 13, 'Physics,Laboratory,Maria Popovici'),
(627, '3', 3, 14, 'free'),
(628, '3', 3, 15, 'Calculus,Seminar,Mircea Cimpoias'),
(629, '3', 3, 16, 'Calculus,Seminar,Mircea Cimpoias'),
(630, '3', 3, 17, 'free'),
(631, '3', 4, 8, 'free'),
(632, '3', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(633, '3', 4, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(634, '3', 4, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(635, '3', 4, 12, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(636, '3', 4, 13, 'free'),
(637, '3', 4, 14, 'free'),
(638, '3', 4, 15, 'free'),
(639, '3', 4, 16, 'free'),
(640, '3', 4, 17, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(641, '3', 5, 8, 'free'),
(642, '3', 5, 9, 'free'),
(643, '3', 5, 10, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(644, '3', 5, 11, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(645, '3', 5, 12, 'free'),
(646, '3', 5, 13, 'free'),
(647, '3', 5, 14, 'free'),
(648, '3', 5, 15, 'free'),
(649, '3', 5, 16, 'free'),
(650, '3', 5, 17, 'free'),
(651, '4', 1, 8, 'free'),
(652, '4', 1, 9, 'free'),
(653, '4', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(654, '4', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(655, '4', 1, 12, 'free'),
(656, '4', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(657, '4', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(658, '4', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(659, '4', 1, 16, 'free'),
(660, '4', 1, 17, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(661, '4', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(662, '4', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(663, '4', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(664, '4', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(665, '4', 2, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(666, '4', 2, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(667, '4', 2, 14, 'free'),
(668, '4', 2, 15, 'Physics,Seminar,MariaPopovici'),
(669, '4', 2, 16, 'free'),
(670, '4', 2, 17, 'free'),
(671, '4', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(672, '4', 3, 9, 'free'),
(673, '4', 3, 10, 'Physics,Course,Maria Popovici'),
(674, '4', 3, 11, 'Physics,Course,Maria Popovici'),
(675, '4', 3, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(676, '4', 3, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(677, '4', 3, 14, 'Mechanics,Seminar,AdinaNegrea'),
(678, '4', 3, 15, 'Physics,Laboratory,Maria Popovici'),
(679, '4', 3, 16, 'free'),
(680, '4', 3, 17, 'free'),
(681, '4', 4, 8, 'free'),
(682, '4', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(683, '4', 4, 10, 'free'),
(684, '4', 4, 11, 'free'),
(685, '4', 4, 12, 'free'),
(686, '4', 4, 13, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(687, '4', 4, 14, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(688, '4', 4, 15, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(689, '4', 4, 16, 'free'),
(690, '4', 4, 17, 'free'),
(691, '4', 5, 8, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(692, '4', 5, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(693, '4', 5, 10, 'free'),
(694, '4', 5, 11, 'free'),
(695, '4', 5, 12, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(696, '4', 5, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(697, '4', 5, 14, 'free'),
(698, '4', 5, 15, 'free'),
(699, '4', 5, 16, 'free'),
(700, '4', 5, 17, 'free'),
(701, '5', 1, 8, 'free'),
(702, '5', 1, 9, 'free'),
(703, '5', 1, 10, 'free'),
(704, '5', 1, 11, 'free'),
(705, '5', 1, 12, 'free'),
(706, '5', 1, 13, 'free'),
(707, '5', 1, 14, 'free'),
(708, '5', 1, 15, 'free'),
(709, '5', 1, 16, 'free'),
(710, '5', 1, 17, 'free'),
(711, '5', 2, 8, 'free'),
(712, '5', 2, 9, 'free'),
(713, '5', 2, 10, 'free'),
(714, '5', 2, 11, 'free'),
(715, '5', 2, 12, 'free'),
(716, '5', 2, 13, 'free'),
(717, '5', 2, 14, 'free'),
(718, '5', 2, 15, 'free'),
(719, '5', 2, 16, 'free'),
(720, '5', 2, 17, 'free'),
(721, '5', 3, 8, 'free'),
(722, '5', 3, 9, 'free'),
(723, '5', 3, 10, 'free'),
(724, '5', 3, 11, 'free'),
(725, '5', 3, 12, 'free'),
(726, '5', 3, 13, 'free'),
(727, '5', 3, 14, 'free'),
(728, '5', 3, 15, 'free'),
(729, '5', 3, 16, 'free'),
(730, '5', 3, 17, 'free'),
(731, '5', 4, 8, 'free'),
(732, '5', 4, 9, 'free'),
(733, '5', 4, 10, 'free'),
(734, '5', 4, 11, 'free'),
(735, '5', 4, 12, 'free'),
(736, '5', 4, 13, 'free'),
(737, '5', 4, 14, 'free'),
(738, '5', 4, 15, 'free'),
(739, '5', 4, 16, 'free'),
(740, '5', 4, 17, 'free'),
(741, '5', 5, 8, 'free'),
(742, '5', 5, 9, 'free'),
(743, '5', 5, 10, 'free'),
(744, '5', 5, 11, 'free'),
(745, '5', 5, 12, 'free'),
(746, '5', 5, 13, 'free'),
(747, '5', 5, 14, 'free'),
(748, '5', 5, 15, 'free'),
(749, '5', 5, 16, 'free'),
(750, '5', 5, 17, 'free'),
(751, '6', 1, 8, 'free'),
(752, '6', 1, 9, 'free'),
(753, '6', 1, 10, 'free'),
(754, '6', 1, 11, 'free'),
(755, '6', 1, 12, 'free'),
(756, '6', 1, 13, 'free'),
(757, '6', 1, 14, 'free'),
(758, '6', 1, 15, 'free'),
(759, '6', 1, 16, 'free'),
(760, '6', 1, 17, 'free'),
(761, '6', 2, 8, 'free'),
(762, '6', 2, 9, 'free'),
(763, '6', 2, 10, 'free'),
(764, '6', 2, 11, 'free'),
(765, '6', 2, 12, 'free'),
(766, '6', 2, 13, 'free'),
(767, '6', 2, 14, 'free'),
(768, '6', 2, 15, 'free'),
(769, '6', 2, 16, 'free'),
(770, '6', 2, 17, 'free'),
(771, '6', 3, 8, 'free'),
(772, '6', 3, 9, 'free'),
(773, '6', 3, 10, 'free'),
(774, '6', 3, 11, 'free'),
(775, '6', 3, 12, 'free'),
(776, '6', 3, 13, 'free'),
(777, '6', 3, 14, 'free'),
(778, '6', 3, 15, 'free'),
(779, '6', 3, 16, 'free'),
(780, '6', 3, 17, 'free'),
(781, '6', 4, 8, 'free'),
(782, '6', 4, 9, 'free'),
(783, '6', 4, 10, 'free'),
(784, '6', 4, 11, 'free'),
(785, '6', 4, 12, 'free'),
(786, '6', 4, 13, 'free'),
(787, '6', 4, 14, 'free'),
(788, '6', 4, 15, 'free'),
(789, '6', 4, 16, 'free'),
(790, '6', 4, 17, 'free'),
(791, '6', 5, 8, 'free'),
(792, '6', 5, 9, 'free'),
(793, '6', 5, 10, 'free'),
(794, '6', 5, 11, 'free'),
(795, '6', 5, 12, 'free'),
(796, '6', 5, 13, 'free'),
(797, '6', 5, 14, 'free'),
(798, '6', 5, 15, 'free'),
(799, '6', 5, 16, 'free'),
(800, '6', 5, 17, 'free'),
(801, '1', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(802, '1', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(803, '1', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(804, '1', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(805, '1', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(806, '1', 1, 13, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(807, '1', 1, 14, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(808, '1', 1, 15, 'free'),
(809, '1', 1, 16, 'free'),
(810, '1', 1, 17, 'free'),
(811, '1', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(812, '1', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(813, '1', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(814, '1', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(815, '1', 2, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(816, '1', 2, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(817, '1', 2, 14, 'Physics,Seminar,MariaPopovici'),
(818, '1', 2, 15, 'free'),
(819, '1', 2, 16, 'free'),
(820, '1', 2, 17, 'free'),
(821, '1', 3, 8, 'Physics,Course,Maria Popovici'),
(822, '1', 3, 9, 'Physics,Course,Maria Popovici'),
(823, '1', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(824, '1', 3, 11, 'Calculus,Seminar,Mircea Cimpoias'),
(825, '1', 3, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(826, '1', 3, 13, 'Mechanics,Seminar,AdinaNegrea'),
(827, '1', 3, 14, 'Physics,Laboratory,Maria Popovici'),
(828, '1', 3, 15, 'free'),
(829, '1', 3, 16, 'free'),
(830, '1', 3, 17, 'free'),
(831, '1', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(832, '1', 4, 9, 'free'),
(833, '1', 4, 10, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(834, '1', 4, 11, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(835, '1', 4, 12, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(836, '1', 4, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(837, '1', 4, 14, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(838, '1', 4, 15, 'free'),
(839, '1', 4, 16, 'free'),
(840, '1', 4, 17, 'free'),
(841, '1', 5, 8, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(842, '1', 5, 9, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(843, '1', 5, 10, 'free'),
(844, '1', 5, 11, 'free'),
(845, '1', 5, 12, 'free'),
(846, '1', 5, 13, 'free'),
(847, '1', 5, 14, 'free'),
(848, '1', 5, 15, 'free'),
(849, '1', 5, 16, 'free'),
(850, '1', 5, 17, 'free'),
(851, '2', 1, 8, 'Introduction to Web Programming,Course,Vlad Posea'),
(852, '2', 1, 9, 'Introduction to Web Programming,Course,Vlad Posea'),
(853, '2', 1, 10, 'Calculus,Course,Mircea Olteanu'),
(854, '2', 1, 11, 'Calculus,Course,Mircea Olteanu'),
(855, '2', 1, 12, 'Calculus,Course,Mircea Olteanu'),
(856, '2', 1, 13, 'free'),
(857, '2', 1, 14, 'free'),
(858, '2', 1, 15, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(859, '2', 1, 16, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(860, '2', 1, 17, 'free'),
(861, '2', 2, 8, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(862, '2', 2, 9, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(863, '2', 2, 10, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(864, '2', 2, 11, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(865, '2', 2, 12, 'Physics,Seminar,MariaPopovici'),
(866, '2', 2, 13, 'free'),
(867, '2', 2, 14, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(868, '2', 2, 15, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(869, '2', 2, 16, 'free'),
(870, '2', 2, 17, 'free'),
(871, '2', 3, 8, 'Physics,Course,Maria Popovici'),
(872, '2', 3, 9, 'Physics,Course,Maria Popovici'),
(873, '2', 3, 10, 'Mechanics,Course,Andrei Craifaleanu'),
(874, '2', 3, 11, 'Mechanics,Seminar,AdinaNegrea'),
(875, '2', 3, 12, 'Physics,Laboratory,Maria Popovici'),
(876, '2', 3, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(877, '2', 3, 14, 'Calculus,Seminar,Mircea Cimpoias'),
(878, '2', 3, 15, 'free'),
(879, '2', 3, 16, 'free'),
(880, '2', 3, 17, 'free'),
(881, '2', 4, 8, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(882, '2', 4, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(883, '2', 4, 10, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(884, '2', 4, 11, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(885, '2', 4, 12, 'free'),
(886, '2', 4, 13, 'free'),
(887, '2', 4, 14, 'free'),
(888, '2', 4, 15, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(889, '2', 4, 16, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(890, '2', 4, 17, 'free'),
(891, '2', 5, 8, 'free'),
(892, '2', 5, 9, 'free'),
(893, '2', 5, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(894, '2', 5, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(895, '2', 5, 12, 'free'),
(896, '2', 5, 13, 'free'),
(897, '2', 5, 14, 'free'),
(898, '2', 5, 15, 'free'),
(899, '2', 5, 16, 'free'),
(900, '2', 5, 17, 'free'),
(901, '3', 1, 8, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(902, '3', 1, 9, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(903, '3', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(904, '3', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(905, '3', 1, 12, 'free'),
(906, '3', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(907, '3', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(908, '3', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(909, '3', 1, 16, 'free'),
(910, '3', 1, 17, 'free'),
(911, '3', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(912, '3', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(913, '3', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(914, '3', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(915, '3', 2, 12, 'free'),
(916, '3', 2, 13, 'Physics,Seminar,MariaPopovici'),
(917, '3', 2, 14, 'free'),
(918, '3', 2, 15, 'free'),
(919, '3', 2, 16, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(920, '3', 2, 17, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(921, '3', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(922, '3', 3, 9, 'Mechanics,Seminar,AdinaNegrea'),
(923, '3', 3, 10, 'Physics,Course,Maria Popovici'),
(924, '3', 3, 11, 'Physics,Course,Maria Popovici'),
(925, '3', 3, 12, 'free'),
(926, '3', 3, 13, 'Physics,Laboratory,Maria Popovici'),
(927, '3', 3, 14, 'free'),
(928, '3', 3, 15, 'Calculus,Seminar,Mircea Cimpoias'),
(929, '3', 3, 16, 'Calculus,Seminar,Mircea Cimpoias'),
(930, '3', 3, 17, 'free'),
(931, '3', 4, 8, 'free'),
(932, '3', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(933, '3', 4, 10, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(934, '3', 4, 11, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(935, '3', 4, 12, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(936, '3', 4, 13, 'free'),
(937, '3', 4, 14, 'free'),
(938, '3', 4, 15, 'free'),
(939, '3', 4, 16, 'free'),
(940, '3', 4, 17, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(941, '3', 5, 8, 'free'),
(942, '3', 5, 9, 'free'),
(943, '3', 5, 10, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(944, '3', 5, 11, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(945, '3', 5, 12, 'free'),
(946, '3', 5, 13, 'free'),
(947, '3', 5, 14, 'free'),
(948, '3', 5, 15, 'free'),
(949, '3', 5, 16, 'free'),
(950, '3', 5, 17, 'free'),
(951, '4', 1, 8, 'free'),
(952, '4', 1, 9, 'free'),
(953, '4', 1, 10, 'Introduction to Web Programming,Course,Vlad Posea'),
(954, '4', 1, 11, 'Introduction to Web Programming,Course,Vlad Posea'),
(955, '4', 1, 12, 'free'),
(956, '4', 1, 13, 'Calculus,Course,Mircea Olteanu'),
(957, '4', 1, 14, 'Calculus,Course,Mircea Olteanu'),
(958, '4', 1, 15, 'Calculus,Course,Mircea Olteanu'),
(959, '4', 1, 16, 'free'),
(960, '4', 1, 17, 'Collaborative Work,Seminar,Catelly  Yolanda'),
(961, '4', 2, 8, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(962, '4', 2, 9, 'Computer Arhitecture,Course,Bujor Pavaloiu'),
(963, '4', 2, 10, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(964, '4', 2, 11, 'Data Structures and Algorithms,Course,Maria Dascalu'),
(965, '4', 2, 12, 'Calculus,Seminar,Mircea Cimpoias'),
(966, '4', 2, 13, 'Calculus,Seminar,Mircea Cimpoias'),
(967, '4', 2, 14, 'free'),
(968, '4', 2, 15, 'Physics,Seminar,MariaPopovici'),
(969, '4', 2, 16, 'free'),
(970, '4', 2, 17, 'free'),
(971, '4', 3, 8, 'Mechanics,Course,Andrei Craifaleanu'),
(972, '4', 3, 9, 'free'),
(973, '4', 3, 10, 'Physics,Course,Maria Popovici'),
(974, '4', 3, 11, 'Physics,Course,Maria Popovici'),
(975, '4', 3, 12, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(976, '4', 3, 13, 'Data Structures and Algorithms,Laboratory,Iuliana Marin'),
(977, '4', 3, 14, 'Mechanics,Seminar,AdinaNegrea'),
(978, '4', 3, 15, 'Physics,Laboratory,Maria Popovici'),
(979, '4', 3, 16, 'free'),
(980, '4', 3, 17, 'free'),
(981, '4', 4, 8, 'free'),
(982, '4', 4, 9, 'European Culture and Civilisation,Course,Ovidiu Caraiani'),
(983, '4', 4, 10, 'free'),
(984, '4', 4, 11, 'free'),
(985, '4', 4, 12, 'free'),
(986, '4', 4, 13, 'European Culture and Civilisation,Seminar,OvidiuCaraiani'),
(987, '4', 4, 14, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(988, '4', 4, 15, 'Introduction to Web Programming,Laboratory,Dan Mitrea'),
(989, '4', 4, 16, 'free'),
(990, '4', 4, 17, 'free'),
(991, '4', 5, 8, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(992, '4', 5, 9, 'Computer Architecture,Seminar,Bujor Pavaloiu'),
(993, '4', 5, 10, 'free'),
(994, '4', 5, 11, 'free'),
(995, '4', 5, 12, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(996, '4', 5, 13, 'Computer Architecture,Laboratory,Bujor Pavaloiu'),
(997, '4', 5, 14, 'free'),
(998, '4', 5, 15, 'free'),
(999, '4', 5, 16, 'free'),
(1000, '4', 5, 17, 'free'),
(1001, '5', 1, 8, 'free'),
(1002, '5', 1, 9, 'free'),
(1003, '5', 1, 10, 'free'),
(1004, '5', 1, 11, 'free'),
(1005, '5', 1, 12, 'free'),
(1006, '5', 1, 13, 'free'),
(1007, '5', 1, 14, 'free'),
(1008, '5', 1, 15, 'free'),
(1009, '5', 1, 16, 'free'),
(1010, '5', 1, 17, 'free'),
(1011, '5', 2, 8, 'free'),
(1012, '5', 2, 9, 'free'),
(1013, '5', 2, 10, 'free'),
(1014, '5', 2, 11, 'free'),
(1015, '5', 2, 12, 'free'),
(1016, '5', 2, 13, 'free'),
(1017, '5', 2, 14, 'free'),
(1018, '5', 2, 15, 'free'),
(1019, '5', 2, 16, 'free'),
(1020, '5', 2, 17, 'free'),
(1021, '5', 3, 8, 'free'),
(1022, '5', 3, 9, 'free'),
(1023, '5', 3, 10, 'free'),
(1024, '5', 3, 11, 'free'),
(1025, '5', 3, 12, 'free'),
(1026, '5', 3, 13, 'free'),
(1027, '5', 3, 14, 'free'),
(1028, '5', 3, 15, 'free'),
(1029, '5', 3, 16, 'free'),
(1030, '5', 3, 17, 'free'),
(1031, '5', 4, 8, 'free'),
(1032, '5', 4, 9, 'free'),
(1033, '5', 4, 10, 'free'),
(1034, '5', 4, 11, 'free'),
(1035, '5', 4, 12, 'free'),
(1036, '5', 4, 13, 'free'),
(1037, '5', 4, 14, 'free'),
(1038, '5', 4, 15, 'free'),
(1039, '5', 4, 16, 'free'),
(1040, '5', 4, 17, 'free'),
(1041, '5', 5, 8, 'free'),
(1042, '5', 5, 9, 'free'),
(1043, '5', 5, 10, 'free'),
(1044, '5', 5, 11, 'free'),
(1045, '5', 5, 12, 'free'),
(1046, '5', 5, 13, 'free'),
(1047, '5', 5, 14, 'free'),
(1048, '5', 5, 15, 'free'),
(1049, '5', 5, 16, 'free'),
(1050, '5', 5, 17, 'free'),
(1051, '6', 1, 8, 'free'),
(1052, '6', 1, 9, 'free'),
(1053, '6', 1, 10, 'free'),
(1054, '6', 1, 11, 'free'),
(1055, '6', 1, 12, 'free'),
(1056, '6', 1, 13, 'free'),
(1057, '6', 1, 14, 'free'),
(1058, '6', 1, 15, 'free'),
(1059, '6', 1, 16, 'free'),
(1060, '6', 1, 17, 'free'),
(1061, '6', 2, 8, 'free'),
(1062, '6', 2, 9, 'free'),
(1063, '6', 2, 10, 'free'),
(1064, '6', 2, 11, 'free'),
(1065, '6', 2, 12, 'free'),
(1066, '6', 2, 13, 'free'),
(1067, '6', 2, 14, 'free'),
(1068, '6', 2, 15, 'free'),
(1069, '6', 2, 16, 'free'),
(1070, '6', 2, 17, 'free'),
(1071, '6', 3, 8, 'free'),
(1072, '6', 3, 9, 'free'),
(1073, '6', 3, 10, 'free'),
(1074, '6', 3, 11, 'free'),
(1075, '6', 3, 12, 'free'),
(1076, '6', 3, 13, 'free'),
(1077, '6', 3, 14, 'free'),
(1078, '6', 3, 15, 'free'),
(1079, '6', 3, 16, 'free'),
(1080, '6', 3, 17, 'free'),
(1081, '6', 4, 8, 'free'),
(1082, '6', 4, 9, 'free'),
(1083, '6', 4, 10, 'free'),
(1084, '6', 4, 11, 'free'),
(1085, '6', 4, 12, 'free'),
(1086, '6', 4, 13, 'free'),
(1087, '6', 4, 14, 'free'),
(1088, '6', 4, 15, 'free'),
(1089, '6', 4, 16, 'free'),
(1090, '6', 4, 17, 'free'),
(1091, '6', 5, 8, 'free'),
(1092, '6', 5, 9, 'free'),
(1093, '6', 5, 10, 'free'),
(1094, '6', 5, 11, 'free'),
(1095, '6', 5, 12, 'free'),
(1096, '6', 5, 13, 'free'),
(1097, '6', 5, 14, 'free'),
(1098, '6', 5, 15, 'free'),
(1099, '6', 5, 16, 'free'),
(1100, '6', 5, 17, 'free');

-- --------------------------------------------------------

--
-- Table structure for table `scheduleteachers`
--

CREATE TABLE `scheduleteachers` (
  `id` int(11) NOT NULL,
  `idTeacher` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `startHour` int(11) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduleteachers`
--

INSERT INTO `scheduleteachers` (`id`, `idTeacher`, `day`, `startHour`, `info`) VALUES
(1, 1, 1, 8, 'free'),
(2, 1, 1, 9, 'free'),
(3, 1, 1, 10, '1211A, 1211B'),
(4, 1, 1, 11, '1211A, 1211B'),
(5, 1, 1, 12, '1211A, 1211B'),
(6, 1, 1, 13, '1212A, 1212B'),
(7, 1, 1, 14, '1212A, 1212B'),
(8, 1, 1, 15, '1212A, 1212B'),
(9, 1, 1, 16, 'free'),
(10, 1, 1, 17, 'free'),
(11, 1, 2, 8, 'free'),
(12, 1, 2, 9, 'free'),
(13, 1, 2, 10, 'free'),
(14, 1, 2, 11, 'free'),
(15, 1, 2, 12, 'free'),
(16, 1, 2, 13, 'free'),
(17, 1, 2, 14, 'free'),
(18, 1, 2, 15, 'free'),
(19, 1, 2, 16, 'free'),
(20, 1, 2, 17, 'free'),
(21, 1, 3, 8, 'free'),
(22, 1, 3, 9, 'free'),
(23, 1, 3, 10, 'free'),
(24, 1, 3, 11, 'free'),
(25, 1, 3, 12, 'free'),
(26, 1, 3, 13, 'free'),
(27, 1, 3, 14, 'free'),
(28, 1, 3, 15, 'free'),
(29, 1, 3, 16, 'free'),
(30, 1, 3, 17, 'free'),
(31, 1, 4, 8, 'free'),
(32, 1, 4, 9, 'free'),
(33, 1, 4, 10, 'free'),
(34, 1, 4, 11, 'free'),
(35, 1, 4, 12, 'free'),
(36, 1, 4, 13, 'free'),
(37, 1, 4, 14, 'free'),
(38, 1, 4, 15, 'free'),
(39, 1, 4, 16, 'free'),
(40, 1, 4, 17, 'free'),
(41, 1, 5, 8, 'free'),
(42, 1, 5, 9, 'free'),
(43, 1, 5, 10, 'free'),
(44, 1, 5, 11, 'free'),
(45, 1, 5, 12, 'free'),
(46, 1, 5, 13, 'free'),
(47, 1, 5, 14, 'free'),
(48, 1, 5, 15, 'free'),
(49, 1, 5, 16, 'free'),
(50, 1, 5, 17, 'free'),
(51, 2, 1, 8, '1211A, 1211B'),
(52, 2, 1, 9, '1211A, 1211B'),
(53, 2, 1, 10, '1212A, 1212B'),
(54, 2, 1, 11, '1212A, 1212B'),
(55, 2, 1, 12, 'free'),
(56, 2, 1, 13, 'free'),
(57, 2, 1, 14, 'free'),
(58, 2, 1, 15, 'free'),
(59, 2, 1, 16, 'free'),
(60, 2, 1, 17, 'free'),
(61, 2, 2, 8, 'free'),
(62, 2, 2, 9, 'free'),
(63, 2, 2, 10, 'free'),
(64, 2, 2, 11, 'free'),
(65, 2, 2, 12, 'free'),
(66, 2, 2, 13, 'free'),
(67, 2, 2, 14, 'free'),
(68, 2, 2, 15, 'free'),
(69, 2, 2, 16, 'free'),
(70, 2, 2, 17, 'free'),
(71, 2, 3, 8, 'free'),
(72, 2, 3, 9, 'free'),
(73, 2, 3, 10, 'free'),
(74, 2, 3, 11, 'free'),
(75, 2, 3, 12, 'free'),
(76, 2, 3, 13, 'free'),
(77, 2, 3, 14, 'free'),
(78, 2, 3, 15, 'free'),
(79, 2, 3, 16, 'free'),
(80, 2, 3, 17, 'free'),
(81, 2, 4, 8, 'free'),
(82, 2, 4, 9, 'free'),
(83, 2, 4, 10, 'free'),
(84, 2, 4, 11, 'free'),
(85, 2, 4, 12, 'free'),
(86, 2, 4, 13, 'free'),
(87, 2, 4, 14, 'free'),
(88, 2, 4, 15, 'free'),
(89, 2, 4, 16, 'free'),
(90, 2, 4, 17, 'free'),
(91, 2, 5, 8, 'free'),
(92, 2, 5, 9, 'free'),
(93, 2, 5, 10, 'free'),
(94, 2, 5, 11, 'free'),
(95, 2, 5, 12, 'free'),
(96, 2, 5, 13, 'free'),
(97, 2, 5, 14, 'free'),
(98, 2, 5, 15, 'free'),
(99, 2, 5, 16, 'free'),
(100, 2, 5, 17, 'free'),
(101, 3, 1, 8, 'free'),
(102, 3, 1, 9, 'free'),
(103, 3, 1, 10, 'free'),
(104, 3, 1, 11, 'free'),
(105, 3, 1, 12, 'free'),
(106, 3, 1, 13, 'free'),
(107, 3, 1, 14, 'free'),
(108, 3, 1, 15, 'free'),
(109, 3, 1, 16, 'free'),
(110, 3, 1, 17, 'free'),
(111, 3, 2, 8, '1212A, 1212B'),
(112, 3, 2, 9, '1212A, 1212B'),
(113, 3, 2, 10, '1211A, 1211B'),
(114, 3, 2, 11, '1211A, 1211B'),
(115, 3, 2, 12, 'free'),
(116, 3, 2, 13, 'free'),
(117, 3, 2, 14, 'free'),
(118, 3, 2, 15, 'free'),
(119, 3, 2, 16, 'free'),
(120, 3, 2, 17, 'free'),
(121, 3, 3, 8, 'free'),
(122, 3, 3, 9, 'free'),
(123, 3, 3, 10, 'free'),
(124, 3, 3, 11, 'free'),
(125, 3, 3, 12, 'free'),
(126, 3, 3, 13, 'free'),
(127, 3, 3, 14, 'free'),
(128, 3, 3, 15, 'free'),
(129, 3, 3, 16, 'free'),
(130, 3, 3, 17, 'free'),
(131, 3, 4, 8, 'free'),
(132, 3, 4, 9, '1211B'),
(133, 3, 4, 10, '1211B'),
(134, 3, 4, 11, '1211A'),
(135, 3, 4, 12, '1211A'),
(136, 3, 4, 13, '1211A'),
(137, 3, 4, 14, '1211A'),
(138, 3, 4, 15, '1211B'),
(139, 3, 4, 16, '1211B'),
(140, 3, 4, 17, '1212A'),
(141, 3, 5, 8, '1212B'),
(142, 3, 5, 9, '1212B'),
(143, 3, 5, 10, '1212A'),
(144, 3, 5, 11, '1212A'),
(145, 3, 5, 12, '1212B'),
(146, 3, 5, 13, '1212B'),
(147, 3, 5, 14, 'free'),
(148, 3, 5, 15, 'free'),
(149, 3, 5, 16, 'free'),
(150, 3, 5, 17, 'free'),
(151, 4, 1, 8, 'free'),
(152, 4, 1, 9, 'free'),
(153, 4, 1, 10, 'free'),
(154, 4, 1, 11, 'free'),
(155, 4, 1, 12, 'free'),
(156, 4, 1, 13, 'free'),
(157, 4, 1, 14, 'free'),
(158, 4, 1, 15, 'free'),
(159, 4, 1, 16, 'free'),
(160, 4, 1, 17, 'free'),
(161, 4, 2, 8, 'free'),
(162, 4, 2, 9, 'free'),
(163, 4, 2, 10, 'free'),
(164, 4, 2, 11, 'free'),
(165, 4, 2, 12, 'free'),
(166, 4, 2, 13, 'free'),
(167, 4, 2, 14, 'free'),
(168, 4, 2, 15, 'free'),
(169, 4, 2, 16, 'free'),
(170, 4, 2, 17, 'free'),
(171, 4, 3, 8, 'free'),
(172, 4, 3, 9, 'free'),
(173, 4, 3, 10, 'free'),
(174, 4, 3, 11, 'free'),
(175, 4, 3, 12, 'free'),
(176, 4, 3, 13, 'free'),
(177, 4, 3, 14, 'free'),
(178, 4, 3, 15, 'free'),
(179, 4, 3, 16, 'free'),
(180, 4, 3, 17, 'free'),
(181, 4, 4, 8, 'free'),
(182, 4, 4, 9, 'free'),
(183, 4, 4, 10, '1212A'),
(184, 4, 4, 11, '1212A'),
(185, 4, 4, 12, 'free'),
(186, 4, 4, 13, 'free'),
(187, 4, 4, 14, '1212B'),
(188, 4, 4, 15, '1212B'),
(189, 4, 4, 16, 'free'),
(190, 4, 4, 17, 'free'),
(191, 4, 5, 8, '1211A'),
(192, 4, 5, 9, '1211A'),
(193, 4, 5, 10, '1211B'),
(194, 4, 5, 11, '1211B'),
(195, 4, 5, 12, 'free'),
(196, 4, 5, 13, 'free'),
(197, 4, 5, 14, 'free'),
(198, 4, 5, 15, 'free'),
(199, 4, 5, 16, 'free'),
(200, 4, 5, 17, 'free'),
(201, 5, 1, 8, 'free'),
(202, 5, 1, 9, 'free'),
(203, 5, 1, 10, 'free'),
(204, 5, 1, 11, 'free'),
(205, 5, 1, 12, 'free'),
(206, 5, 1, 13, 'free'),
(207, 5, 1, 14, 'free'),
(208, 5, 1, 15, 'free'),
(209, 5, 1, 16, 'free'),
(210, 5, 1, 17, 'free'),
(211, 5, 2, 8, 'free'),
(212, 5, 2, 9, 'free'),
(213, 5, 2, 10, 'free'),
(214, 5, 2, 11, 'free'),
(215, 5, 2, 12, 'free'),
(216, 5, 2, 13, 'free'),
(217, 5, 2, 14, 'free'),
(218, 5, 2, 15, 'free'),
(219, 5, 2, 16, 'free'),
(220, 5, 2, 17, 'free'),
(221, 5, 3, 8, '1212A, 1212B'),
(222, 5, 3, 9, 'free'),
(223, 5, 3, 10, '1211A, 1211B'),
(224, 5, 3, 11, 'free'),
(225, 5, 3, 12, 'free'),
(226, 5, 3, 13, 'free'),
(227, 5, 3, 14, 'free'),
(228, 5, 3, 15, 'free'),
(229, 5, 3, 16, 'free'),
(230, 5, 3, 17, 'free'),
(231, 5, 4, 8, 'free'),
(232, 5, 4, 9, 'free'),
(233, 5, 4, 10, 'free'),
(234, 5, 4, 11, 'free'),
(235, 5, 4, 12, 'free'),
(236, 5, 4, 13, 'free'),
(237, 5, 4, 14, 'free'),
(238, 5, 4, 15, 'free'),
(239, 5, 4, 16, 'free'),
(240, 5, 4, 17, 'free'),
(241, 5, 5, 8, 'free'),
(242, 5, 5, 9, 'free'),
(243, 5, 5, 10, 'free'),
(244, 5, 5, 11, 'free'),
(245, 5, 5, 12, 'free'),
(246, 5, 5, 13, 'free'),
(247, 5, 5, 14, 'free'),
(248, 5, 5, 15, 'free'),
(249, 5, 5, 16, 'free'),
(250, 5, 5, 17, 'free'),
(251, 6, 1, 8, 'free'),
(252, 6, 1, 9, 'free'),
(253, 6, 1, 10, 'free'),
(254, 6, 1, 11, 'free'),
(255, 6, 1, 12, 'free'),
(256, 6, 1, 13, 'free'),
(257, 6, 1, 14, 'free'),
(258, 6, 1, 15, 'free'),
(259, 6, 1, 16, 'free'),
(260, 6, 1, 17, 'free'),
(261, 6, 2, 8, 'free'),
(262, 6, 2, 9, 'free'),
(263, 6, 2, 10, 'free'),
(264, 6, 2, 11, 'free'),
(265, 6, 2, 12, '1211B'),
(266, 6, 2, 13, '1212A'),
(267, 6, 2, 14, '1211A'),
(268, 6, 2, 15, '1212B'),
(269, 6, 2, 16, 'free'),
(270, 6, 2, 17, 'free'),
(271, 6, 3, 8, '1211A, 1211B'),
(272, 6, 3, 9, '1211A, 1211B'),
(273, 6, 3, 10, '1212A, 1212B'),
(274, 6, 3, 11, '1212A, 1212B'),
(275, 6, 3, 12, '1211B'),
(276, 6, 3, 13, '1212A'),
(277, 6, 3, 14, '1211A'),
(278, 6, 3, 15, '1212B'),
(279, 6, 3, 16, 'free'),
(280, 6, 3, 17, 'free'),
(281, 6, 4, 8, 'free'),
(282, 6, 4, 9, 'free'),
(283, 6, 4, 10, 'free'),
(284, 6, 4, 11, 'free'),
(285, 6, 4, 12, 'free'),
(286, 6, 4, 13, 'free'),
(287, 6, 4, 14, 'free'),
(288, 6, 4, 15, 'free'),
(289, 6, 4, 16, 'free'),
(290, 6, 4, 17, 'free'),
(291, 6, 5, 8, 'free'),
(292, 6, 5, 9, 'free'),
(293, 6, 5, 10, 'free'),
(294, 6, 5, 11, 'free'),
(295, 6, 5, 12, 'free'),
(296, 6, 5, 13, 'free'),
(297, 6, 5, 14, 'free'),
(298, 6, 5, 15, 'free'),
(299, 6, 5, 16, 'free'),
(300, 6, 5, 17, 'free'),
(301, 7, 1, 8, 'free'),
(302, 7, 1, 9, 'free'),
(303, 7, 1, 10, 'free'),
(304, 7, 1, 11, 'free'),
(305, 7, 1, 12, 'free'),
(306, 7, 1, 13, 'free'),
(307, 7, 1, 14, 'free'),
(308, 7, 1, 15, 'free'),
(309, 7, 1, 16, 'free'),
(310, 7, 1, 17, 'free'),
(311, 7, 2, 8, 'free'),
(312, 7, 2, 9, 'free'),
(313, 7, 2, 10, 'free'),
(314, 7, 2, 11, 'free'),
(315, 7, 2, 12, 'free'),
(316, 7, 2, 13, 'free'),
(317, 7, 2, 14, 'free'),
(318, 7, 2, 15, 'free'),
(319, 7, 2, 16, 'free'),
(320, 7, 2, 17, 'free'),
(321, 7, 3, 8, 'free'),
(322, 7, 3, 9, 'free'),
(323, 7, 3, 10, 'free'),
(324, 7, 3, 11, 'free'),
(325, 7, 3, 12, 'free'),
(326, 7, 3, 13, 'free'),
(327, 7, 3, 14, 'free'),
(328, 7, 3, 15, 'free'),
(329, 7, 3, 16, 'free'),
(330, 7, 3, 17, 'free'),
(331, 7, 4, 8, 'free'),
(332, 7, 4, 9, 'free'),
(333, 7, 4, 10, 'free'),
(334, 7, 4, 11, 'free'),
(335, 7, 4, 12, 'free'),
(336, 7, 4, 13, 'free'),
(337, 7, 4, 14, 'free'),
(338, 7, 4, 15, 'free'),
(339, 7, 4, 16, 'free'),
(340, 7, 4, 17, 'free'),
(341, 7, 5, 8, 'free'),
(342, 7, 5, 9, 'free'),
(343, 7, 5, 10, 'free'),
(344, 7, 5, 11, 'free'),
(345, 7, 5, 12, 'free'),
(346, 7, 5, 13, 'free'),
(347, 7, 5, 14, 'free'),
(348, 7, 5, 15, 'free'),
(349, 7, 5, 16, 'free'),
(350, 7, 5, 17, 'free'),
(351, 8, 1, 8, '1212A'),
(352, 8, 1, 9, '1212A'),
(353, 8, 1, 10, 'free'),
(354, 8, 1, 11, 'free'),
(355, 8, 1, 12, 'free'),
(356, 8, 1, 13, '1211A'),
(357, 8, 1, 14, '1211A'),
(358, 8, 1, 15, '1211B'),
(359, 8, 1, 16, '1211B'),
(360, 8, 1, 17, '1212B'),
(361, 8, 2, 8, 'free'),
(362, 8, 2, 9, 'free'),
(363, 8, 2, 10, 'free'),
(364, 8, 2, 11, 'free'),
(365, 8, 2, 12, 'free'),
(366, 8, 2, 13, 'free'),
(367, 8, 2, 14, 'free'),
(368, 8, 2, 15, 'free'),
(369, 8, 2, 16, 'free'),
(370, 8, 2, 17, 'free'),
(371, 8, 3, 8, 'free'),
(372, 8, 3, 9, 'free'),
(373, 8, 3, 10, 'free'),
(374, 8, 3, 11, 'free'),
(375, 8, 3, 12, 'free'),
(376, 8, 3, 13, 'free'),
(377, 8, 3, 14, 'free'),
(378, 8, 3, 15, 'free'),
(379, 8, 3, 16, 'free'),
(380, 8, 3, 17, 'free'),
(381, 8, 4, 8, 'free'),
(382, 8, 4, 9, 'free'),
(383, 8, 4, 10, 'free'),
(384, 8, 4, 11, 'free'),
(385, 8, 4, 12, 'free'),
(386, 8, 4, 13, 'free'),
(387, 8, 4, 14, 'free'),
(388, 8, 4, 15, 'free'),
(389, 8, 4, 16, 'free'),
(390, 8, 4, 17, 'free'),
(391, 8, 5, 8, 'free'),
(392, 8, 5, 9, 'free'),
(393, 8, 5, 10, 'free'),
(394, 8, 5, 11, 'free'),
(395, 8, 5, 12, 'free'),
(396, 8, 5, 13, 'free'),
(397, 8, 5, 14, 'free'),
(398, 8, 5, 15, 'free'),
(399, 8, 5, 16, 'free'),
(400, 8, 5, 17, 'free'),
(401, 9, 1, 8, 'free'),
(402, 9, 1, 9, 'free'),
(403, 9, 1, 10, 'free'),
(404, 9, 1, 11, 'free'),
(405, 9, 1, 12, 'free'),
(406, 9, 1, 13, 'free'),
(407, 9, 1, 14, 'free'),
(408, 9, 1, 15, 'free'),
(409, 9, 1, 16, 'free'),
(410, 9, 1, 17, 'free'),
(411, 9, 2, 8, 'free'),
(412, 9, 2, 9, 'free'),
(413, 9, 2, 10, 'free'),
(414, 9, 2, 11, 'free'),
(415, 9, 2, 12, '1211A'),
(416, 9, 2, 13, '1211A'),
(417, 9, 2, 14, '1211B'),
(418, 9, 2, 15, '1211B'),
(419, 9, 2, 16, '1212A'),
(420, 9, 2, 17, '1212A'),
(421, 9, 3, 8, 'free'),
(422, 9, 3, 9, 'free'),
(423, 9, 3, 10, 'free'),
(424, 9, 3, 11, 'free'),
(425, 9, 3, 12, '1212B'),
(426, 9, 3, 13, '1212B'),
(427, 9, 3, 14, 'free'),
(428, 9, 3, 15, 'free'),
(429, 9, 3, 16, 'free'),
(430, 9, 3, 17, 'free'),
(431, 9, 4, 8, 'free'),
(432, 9, 4, 9, 'free'),
(433, 9, 4, 10, 'free'),
(434, 9, 4, 11, 'free'),
(435, 9, 4, 12, 'free'),
(436, 9, 4, 13, 'free'),
(437, 9, 4, 14, 'free'),
(438, 9, 4, 15, 'free'),
(439, 9, 4, 16, 'free'),
(440, 9, 4, 17, 'free'),
(441, 9, 5, 8, 'free'),
(442, 9, 5, 9, 'free'),
(443, 9, 5, 10, 'free'),
(444, 9, 5, 11, 'free'),
(445, 9, 5, 12, 'free'),
(446, 9, 5, 13, 'free'),
(447, 9, 5, 14, 'free'),
(448, 9, 5, 15, 'free'),
(449, 9, 5, 16, 'free'),
(450, 9, 5, 17, 'free'),
(451, 10, 1, 8, 'free'),
(452, 10, 1, 9, 'free'),
(453, 10, 1, 10, 'free'),
(454, 10, 1, 11, 'free'),
(455, 10, 1, 12, 'free'),
(456, 10, 1, 13, 'free'),
(457, 10, 1, 14, 'free'),
(458, 10, 1, 15, 'free'),
(459, 10, 1, 16, 'free'),
(460, 10, 1, 17, 'free'),
(461, 10, 2, 8, 'free'),
(462, 10, 2, 9, 'free'),
(463, 10, 2, 10, 'free'),
(464, 10, 2, 11, 'free'),
(465, 10, 2, 12, '1212B'),
(466, 10, 2, 13, '1212B'),
(467, 10, 2, 14, 'free'),
(468, 10, 2, 15, 'free'),
(469, 10, 2, 16, 'free'),
(470, 10, 2, 17, 'free'),
(471, 10, 3, 8, 'free'),
(472, 10, 3, 9, 'free'),
(473, 10, 3, 10, 'free'),
(474, 10, 3, 11, '1211A'),
(475, 10, 3, 12, '1211A'),
(476, 10, 3, 13, '1211B'),
(477, 10, 3, 14, '1211B'),
(478, 10, 3, 15, '1212A'),
(479, 10, 3, 16, '1212A'),
(480, 10, 3, 17, 'free'),
(481, 10, 4, 8, 'free'),
(482, 10, 4, 9, 'free'),
(483, 10, 4, 10, 'free'),
(484, 10, 4, 11, 'free'),
(485, 10, 4, 12, 'free'),
(486, 10, 4, 13, 'free'),
(487, 10, 4, 14, 'free'),
(488, 10, 4, 15, 'free'),
(489, 10, 4, 16, 'free'),
(490, 10, 4, 17, 'free'),
(491, 10, 5, 8, 'free'),
(492, 10, 5, 9, 'free'),
(493, 10, 5, 10, 'free'),
(494, 10, 5, 11, 'free'),
(495, 10, 5, 12, 'free'),
(496, 10, 5, 13, 'free'),
(497, 10, 5, 14, 'free'),
(498, 10, 5, 15, 'free'),
(499, 10, 5, 16, 'free'),
(500, 10, 5, 17, 'free'),
(501, 11, 1, 8, 'free'),
(502, 11, 1, 9, 'free'),
(503, 11, 1, 10, 'free'),
(504, 11, 1, 11, 'free'),
(505, 11, 1, 12, 'free'),
(506, 11, 1, 13, 'free'),
(507, 11, 1, 14, 'free'),
(508, 11, 1, 15, 'free'),
(509, 11, 1, 16, 'free'),
(510, 11, 1, 17, 'free'),
(511, 11, 2, 8, 'free'),
(512, 11, 2, 9, 'free'),
(513, 11, 2, 10, 'free'),
(514, 11, 2, 11, 'free'),
(515, 11, 2, 12, 'free'),
(516, 11, 2, 13, 'free'),
(517, 11, 2, 14, 'free'),
(518, 11, 2, 15, 'free'),
(519, 11, 2, 16, 'free'),
(520, 11, 2, 17, 'free'),
(521, 11, 3, 8, 'free'),
(522, 11, 3, 9, '1212A'),
(523, 11, 3, 10, 'free'),
(524, 11, 3, 11, '1211B'),
(525, 11, 3, 12, 'free'),
(526, 11, 3, 13, '1211A'),
(527, 11, 3, 14, '1212B'),
(528, 11, 3, 15, 'free'),
(529, 11, 3, 16, 'free'),
(530, 11, 3, 17, 'free'),
(531, 11, 4, 8, 'free'),
(532, 11, 4, 9, 'free'),
(533, 11, 4, 10, 'free'),
(534, 11, 4, 11, 'free'),
(535, 11, 4, 12, 'free'),
(536, 11, 4, 13, 'free'),
(537, 11, 4, 14, 'free'),
(538, 11, 4, 15, 'free'),
(539, 11, 4, 16, 'free'),
(540, 11, 4, 17, 'free'),
(541, 11, 5, 8, 'free'),
(542, 11, 5, 9, 'free'),
(543, 11, 5, 10, 'free'),
(544, 11, 5, 11, 'free'),
(545, 11, 5, 12, 'free'),
(546, 11, 5, 13, 'free'),
(547, 11, 5, 14, 'free'),
(548, 11, 5, 15, 'free'),
(549, 11, 5, 16, 'free'),
(550, 11, 5, 17, 'free'),
(551, 12, 1, 8, 'free'),
(552, 12, 1, 9, 'free'),
(553, 12, 1, 10, 'free'),
(554, 12, 1, 11, 'free'),
(555, 12, 1, 12, 'free'),
(556, 12, 1, 13, 'free'),
(557, 12, 1, 14, 'free'),
(558, 12, 1, 15, 'free'),
(559, 12, 1, 16, 'free'),
(560, 12, 1, 17, 'free'),
(561, 12, 2, 8, 'free'),
(562, 12, 2, 9, 'free'),
(563, 12, 2, 10, 'free'),
(564, 12, 2, 11, 'free'),
(565, 12, 2, 12, 'free'),
(566, 12, 2, 13, 'free'),
(567, 12, 2, 14, 'free'),
(568, 12, 2, 15, 'free'),
(569, 12, 2, 16, 'free'),
(570, 12, 2, 17, 'free'),
(571, 12, 3, 8, 'free'),
(572, 12, 3, 9, 'free');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `specialization`) VALUES
(1, 'CTI'),
(2, 'ETTI'),
(3, 'Chemistry'),
(4, 'Mechanics');

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `id` int(11) NOT NULL,
  `specializationId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `hoursPerWeek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`id`, `specializationId`, `subjectId`, `hoursPerWeek`) VALUES
(7, 1, 5, 2),
(8, 1, 6, 3),
(9, 1, 3, 2),
(10, 1, 4, 2),
(11, 1, 7, 2),
(12, 1, 8, 1),
(14, 1, 9, 2),
(15, 1, 10, 2),
(16, 1, 11, 1),
(17, 1, 12, 2),
(18, 1, 13, 1),
(19, 1, 14, 1),
(20, 1, 15, 1),
(21, 1, 16, 1),
(22, 1, 17, 2),
(23, 1, 18, 2),
(24, 1, 19, 2),
(25, 2, 5, 2),
(26, 2, 6, 3),
(27, 2, 3, 2),
(28, 2, 4, 2),
(29, 2, 7, 2),
(30, 2, 8, 1),
(31, 2, 9, 2),
(32, 2, 10, 2),
(33, 2, 11, 1),
(34, 2, 12, 2),
(35, 2, 13, 1),
(36, 2, 14, 1),
(37, 2, 15, 1),
(38, 2, 16, 1),
(39, 2, 17, 2),
(40, 2, 18, 2),
(41, 2, 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `group_name` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `password`, `name`, `surname`, `group_name`, `email`) VALUES
(1, 'valentin.cerneanu', '8287458823facb8ff918dbfabcd22ccb', 'Valentin', 'Cerneanu', 1, 'vali_rockzone@yahoo.com'),
(2, 'andreea.negoita', 'fb2429584d982a07b3461d2fc3d1458f', 'Andreea', 'Negoita', 1, 'negoo13@yahoo.com'),
(3, 'alexe.iulian', '7b0c61c4ad2c8d4a9268ea2d784027f0', 'Alexe', 'Iulian', 3, 'cam.ster@yahoo.com'),
(4, 'darla.cristi', '5cfd223db02a93adcb72aba59aca500d', 'Darla', 'Cristi', 2, 'darl@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `type`) VALUES
(2, 'Chemistry', 1),
(3, 'Data Structures and Algorithms', 1),
(4, 'Computer Arhitecture', 1),
(5, 'Introduction to Web Programming', 1),
(6, 'Calculus', 1),
(7, 'Physics', 1),
(8, 'Mechanics', 1),
(9, 'Collaborative Work', 2),
(10, 'Data Structures and Algorithms', 3),
(11, 'Physics', 2),
(12, 'Calculus', 2),
(13, 'Mechanics', 2),
(14, 'Physics', 3),
(15, 'European Culture and Civilisation', 2),
(16, 'European Culture and Civilisation', 1),
(17, 'Computer Architecture', 2),
(18, 'Computer Architecture', 3),
(19, 'Introduction to Web Programming', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjecttypes`
--

CREATE TABLE `subjecttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjecttypes`
--

INSERT INTO `subjecttypes` (`id`, `name`) VALUES
(1, 'Course'),
(2, 'Seminar'),
(3, 'Laboratory');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `password`, `name`, `surname`, `email`) VALUES
(1, 'mircea.olteanu', '1234', 'Mircea', 'Olteanu', ''),
(2, 'vlad.posea', '', 'Vlad', 'Posea', ''),
(3, 'Bujor.Pavaloiu', '', 'Bujor', 'Pavaloiu', ''),
(4, 'dan.mitrea', '', 'Dan', 'Mitrea', ''),
(5, 'andrei.craifaleanu', '', 'Andrei', 'Craifaleanu', ''),
(6, 'maria.popovici', '', 'Maria', 'Popovici', ''),
(7, 'ileana.rau', '', 'Ileana', 'Rau', ''),
(8, 'catelly.yolanda', '', 'Catelly ', 'Yolanda', ''),
(9, 'iuliana.marin', '', 'Iuliana', 'Marin', ''),
(10, 'mircea.cimpoias', '', 'Mircea', 'Cimpoias', ''),
(11, 'seminarista.mechanics', '', 'Adina', 'Negrea', ''),
(12, 'ovidiu.caraiani', '', 'Ovidiu', 'Caraiani', ''),
(13, 'maria.dascalu', '', 'Maria', 'Dascalu', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachertype`
--

CREATE TABLE `teachertype` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachertype`
--

INSERT INTO `teachertype` (`id`, `teacherId`, `subjectId`) VALUES
(1, 1, 6),
(2, 2, 5),
(3, 3, 4),
(4, 5, 8),
(5, 6, 7),
(6, 7, 2),
(7, 8, 9),
(8, 9, 10),
(9, 10, 12),
(10, 11, 13),
(11, 12, 15),
(12, 6, 11),
(13, 6, 14),
(14, 12, 16),
(15, 3, 17),
(16, 3, 18),
(17, 4, 19),
(18, 13, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedulegroups`
--
ALTER TABLE `schedulegroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduleteachers`
--
ALTER TABLE `scheduleteachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjecttypes`
--
ALTER TABLE `subjecttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachertype`
--
ALTER TABLE `teachertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedulegroups`
--
ALTER TABLE `schedulegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `scheduleteachers`
--
ALTER TABLE `scheduleteachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subjecttypes`
--
ALTER TABLE `subjecttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachertype`
--
ALTER TABLE `teachertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'optimtable', 'groups', '{\"CREATE_TIME\":\"2018-05-03 18:38:42\"}', '2018-05-09 18:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-09 18:00:52', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
