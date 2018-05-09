-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 05:41 PM
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
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `startHour` int(11) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `groupName`, `day`, `startHour`, `info`) VALUES
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
(200, '4', 5, 17, 'free');

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
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
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
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

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
('root', 'optimtable', 'standards', '[]', '2018-05-08 12:04:05');

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
('root', '2018-05-09 15:08:28', '{\"Console\\/Mode\":\"collapse\"}');

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
