-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Mai 2018 la 18:51
-- Versiune server: 10.1.30-MariaDB
-- PHP Version: 7.2.2

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

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `specialization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `groups`
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
-- Structura de tabel pentru tabelul `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `specializations`
--

INSERT INTO `specializations` (`id`, `specialization`) VALUES
(1, 'CTI'),
(2, 'ETTI'),
(3, 'Chemistry'),
(4, 'Mechanics');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `standards`
--

CREATE TABLE `standards` (
  `id` int(11) NOT NULL,
  `specializationId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `hoursPerWeek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `standards`
--

INSERT INTO `standards` (`id`, `specializationId`, `subjectId`, `hoursPerWeek`) VALUES
(1, 1, 1, 4),
(7, 1, 5, 7),
(8, 1, 6, 6);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `students`
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
-- Salvarea datelor din tabel `students`
--

INSERT INTO `students` (`id`, `username`, `password`, `name`, `surname`, `group_name`, `email`) VALUES
(1, 'valentin.cerneanu', '8287458823facb8ff918dbfabcd22ccb', 'Valentin', 'Cerneanu', 1, 'vali_rockzone@yahoo.com'),
(2, 'andreea.negoita', 'fb2429584d982a07b3461d2fc3d1458f', 'Andreea', 'Negoita', 1, 'negoo13@yahoo.com'),
(3, 'alexe.iulian', '7b0c61c4ad2c8d4a9268ea2d784027f0', 'Alexe', 'Iulian', 3, 'cam.ster@yahoo.com'),
(4, 'darla.cristi', '5cfd223db02a93adcb72aba59aca500d', 'Darla', 'Cristi', 2, 'darl@g.com');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'Math'),
(2, 'Chemistry'),
(3, 'Data Structures and Algorithms'),
(4, 'Computer Arhitecture'),
(5, 'Introduction to Web Programming'),
(6, 'Calculus'),
(7, 'Physics'),
(8, 'Mechanics'),
(9, 'Collaborative Work');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `subject` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `password`, `name`, `surname`, `subject`, `email`) VALUES
(1, 'teacher.1', '1234', 'Mircea', 'Olteanu', 6, ''),
(2, 'vlad.posea', '', 'Vlad', 'Posea', 5, ''),
(3, 'Bujor.Pavaloiu', '', 'Bujor', 'Pavaloiu', 4, ''),
(4, 'dan.mitrea', '', 'Dan', 'Mitrea', 3, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
