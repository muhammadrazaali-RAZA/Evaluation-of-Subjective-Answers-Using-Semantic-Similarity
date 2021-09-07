-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 12:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`) VALUES
('01', 'S.E'),
('02', 'Pit');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(11) NOT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pass`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(300) DEFAULT NULL,
  `course_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `course_id`) VALUES
(1, 'QUestion Number 1 is ', '01'),
(2, 'QUestion Number 2 is ', '01'),
(3, 'QU 3 is ', '01'),
(4, '4 is ', '01'),
(5, 'This is a qurstn ', '01'),
(6, 'Wokring properly ', '02'),
(7, 'Wofinerly ', '02'),
(8, 'Mys question', '02'),
(9, 'asdas', '01'),
(10, 'aaasjdhiahsidnasd', '02'),
(11, 'Question has been set', '02'),
(12, 'What is refactoring?', '01'),
(13, 'What is White BOX testing?', '01');

-- --------------------------------------------------------

--
-- Table structure for table `st_answers`
--

CREATE TABLE `st_answers` (
  `id` int(11) NOT NULL,
  `answer` varchar(10000) DEFAULT NULL,
  `Q_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_answers`
--

INSERT INTO `st_answers` (`id`, `answer`, `Q_id`) VALUES
(1, 'It is not known', 12),
(2, 'It is known', 12),
(3, 'refactoring is the method of rearrainging code', 12),
(4, 'refactoring is the method of reengginering code', 12),
(5, 'refactoring is the method of Modifying avaialbe code', 12),
(6, 'It is an rearraning of code', 13),
(7, 'It is an modification of code', 13),
(8, ' means the tester knows how the thing they are testing is implemented. Black box implies no knowledge of the implementation, only knowledge of what the black box is supposed to do', 13),
(9, 'White box testing is the software testing method in which internal structure is being known to tester who is going to test the software', 13),
(10, 'White-box testing requires internal knowledge of the system and programming skills', 13),
(11, 'It is a method of testing software that tests internal structures or workings of an application, as opposed to its functionality', 13),
(12, ' is defined as the software testing method of a software solution\'s internal structure', 13);

-- --------------------------------------------------------

--
-- Table structure for table `st_login`
--

CREATE TABLE `st_login` (
  `id` varchar(11) NOT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_login`
--

INSERT INTO `st_login` (`id`, `pass`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `Date`) VALUES
(1, 'Test 1', '2008-07-04'),
(2, 'Test 2', '2008-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `test_q`
--

CREATE TABLE `test_q` (
  `t_id` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_q`
--

INSERT INTO `test_q` (`t_id`, `q_id`) VALUES
(1, 12),
(1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `t_ans`
--

CREATE TABLE `t_ans` (
  `id` int(11) NOT NULL,
  `Q_id` int(11) DEFAULT NULL,
  `C_id` varchar(30) DEFAULT NULL,
  `answer` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_ans`
--

INSERT INTO `t_ans` (`id`, `Q_id`, `C_id`, `answer`) VALUES
(1, 7, '02', 'MY answer'),
(2, 11, '01', 'ANswer has been given'),
(3, 6, '02', 'Answer has been inserted again'),
(4, 12, '01', 'Refactoring is the process of changing a software system in such a way that it does not alter the function of the code yet improves its internal structure.'),
(5, 12, '01', 'Refactoring consists of improving the internal structure of an existing program’s source code, while preserving its external behavior.'),
(6, 12, '01', 'It is defined as systematic process of improving existing computer code, without adding new functionality or changing external behaviour of the code.'),
(7, 13, '01', ' is software testing technique in which internal structure, design and coding of software are tested to verify flow of input-output and to improve design'),
(8, 13, '01', 'also known as clear box testing, glass box testing, transparent box testing, and structural testing) is a method of software testing that tests internal structures or workings of an application, as opposed to its functionality (i.e. black-box testing). In white-box testing an internal perspective of the system, as well as programming skills, are used to design test cases'),
(9, 13, '01', 'It is a testing technique which evaluates the code and the internal structure of a program.');

-- --------------------------------------------------------

--
-- Table structure for table `t_course`
--

CREATE TABLE `t_course` (
  `id` varchar(11) DEFAULT NULL,
  `course_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_course`
--

INSERT INTO `t_course` (`id`, `course_id`) VALUES
('admin', '01'),
('admin', '02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `st_answers`
--
ALTER TABLE `st_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Q_id` (`Q_id`);

--
-- Indexes for table `st_login`
--
ALTER TABLE `st_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_q`
--
ALTER TABLE `test_q`
  ADD KEY `t_id` (`t_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `t_ans`
--
ALTER TABLE `t_ans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Q_id` (`Q_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `t_course`
--
ALTER TABLE `t_course`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `st_answers`
--
ALTER TABLE `st_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_ans`
--
ALTER TABLE `t_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `st_answers`
--
ALTER TABLE `st_answers`
  ADD CONSTRAINT `st_answers_ibfk_1` FOREIGN KEY (`Q_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `test_q`
--
ALTER TABLE `test_q`
  ADD CONSTRAINT `test_q_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `test` (`id`),
  ADD CONSTRAINT `test_q_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `t_ans`
--
ALTER TABLE `t_ans`
  ADD CONSTRAINT `t_ans_ibfk_1` FOREIGN KEY (`Q_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `t_ans_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `t_course`
--
ALTER TABLE `t_course`
  ADD CONSTRAINT `t_course_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `t_course_ibfk_2` FOREIGN KEY (`id`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
