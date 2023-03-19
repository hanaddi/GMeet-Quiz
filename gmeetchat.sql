-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 19, 2023 at 01:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmeetchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `person` varchar(100) NOT NULL,
  `id_choice` int(11) DEFAULT NULL,
  `label` varchar(5) NOT NULL DEFAULT '',
  `point` int(11) NOT NULL,
  `answered_at` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `id_session`, `id_quiz`, `id_question`, `person`, `id_choice`, `label`, `point`, `answered_at`) VALUES
(1, 1, 1, 1, 'You', NULL, 'X', 0, 1678389693),
(4, 1, 1, 1, 'Fat Han Nuraddin', NULL, 'X', 0, 1678602357),
(15, 1, 1, 1, 'Anda', 5, 'O', 3, 1679215210),
(16, 1, 1, 1, 'flying duck', NULL, 'O', 3, 1678601782),
(27, 1, 1, 2, 'Anda', 11, 'X', 0, 1678610236),
(31, 1, 1, 2, 'Fat Han Nuraddin', 9, 'O', 3, 1678610483),
(38, 1, 1, 1, 'Anda1', 6, 'X', 0, 1678636117),
(39, 1, 1, 1, 'Anda2', 6, 'X', 0, 1678636117),
(40, 1, 1, 1, 'Anda hahah 3', 6, 'X', 0, 1678636117),
(41, 1, 1, 1, 'Ardian Farizaldi', 6, 'X', 0, 1678636113),
(42, 1, 1, 1, 'Ardian Oktora', 6, 'X', 0, 1678636117),
(43, 1, 1, 1, 'Muhammad Lutfi', 6, 'X', 0, 1678636113),
(44, 1, 1, 1, 'Abdul Hakim', 6, 'X', 0, 1678636116),
(48, 1, 1, 2, 'You', 12, 'X', 0, 1678647659),
(68, 3, 1, 1, 'Anda', 5, 'O', 3, 1679217900),
(71, 3, 1, 2, 'Anda', 9, 'O', 3, 1679218865),
(72, 6, 3, 4, 'Anda 2', 17, 'O', 3, 1679227671),
(73, 6, 3, 4, 'Anda 27', 17, 'O', 3, 1679227676),
(74, 6, 3, 4, 'Anda 29', 17, 'O', 3, 1679227676),
(75, 6, 3, 4, 'Anda 10', 17, 'O', 3, 1679227676),
(76, 6, 3, 4, 'Anda 12', 18, 'X', 0, 1679227687),
(77, 6, 3, 4, 'Anda 18', 17, 'O', 3, 1679227677),
(78, 6, 3, 4, 'Anda 7', 18, 'X', 0, 1679227688),
(79, 6, 3, 4, 'Anda 28', 17, 'O', 3, 1679227677),
(80, 6, 3, 4, 'Anda 16', 18, 'X', 0, 1679227687),
(81, 6, 3, 4, 'Anda 9', 19, 'X', 0, 1679227682),
(82, 6, 3, 4, 'Anda 1', 19, 'X', 0, 1679227682),
(83, 6, 3, 4, 'Anda 4', 18, 'X', 0, 1679227683),
(84, 6, 3, 4, 'Anda 6', 19, 'X', 0, 1679227682),
(85, 6, 3, 4, 'Anda 26', 19, 'X', 0, 1679227683),
(87, 6, 3, 4, 'Anda 0', 18, 'X', 0, 1679227687),
(88, 6, 3, 4, 'Anda 8', 18, 'X', 0, 1679227684),
(89, 6, 3, 4, 'Anda 25', 18, 'X', 0, 1679227684),
(90, 6, 3, 4, 'Anda 15', 18, 'X', 0, 1679227684),
(91, 6, 3, 4, 'Anda 20', 19, 'X', 0, 1679227685),
(92, 6, 3, 4, 'Anda 21', 19, 'X', 0, 1679227685),
(93, 6, 3, 4, 'Anda 24', 17, 'O', 3, 1679227686),
(94, 6, 3, 4, 'Anda 17', 17, 'O', 3, 1679227686),
(100, 6, 3, 4, 'Anda 14', 20, 'X', 0, 1679227688),
(102, 6, 3, 4, 'Anda 5', 19, 'X', 0, 1679227688),
(104, 6, 3, 3, 'Anda 2', 16, 'X', 0, 1679229209),
(105, 6, 3, 3, 'Anda 14', 16, 'X', 0, 1679229212),
(106, 6, 3, 3, 'Anda 17', 13, 'O', 3, 1679229213),
(107, 6, 3, 3, 'Anda 19', 14, 'X', 0, 1679229210),
(108, 6, 3, 3, 'Anda 9', 16, 'X', 0, 1679229210),
(109, 6, 3, 3, 'Anda 13', 13, 'O', 3, 1679229211),
(110, 6, 3, 3, 'Anda 4', 15, 'X', 0, 1679229211),
(111, 6, 3, 3, 'Anda 0', 14, 'X', 0, 1679229211),
(113, 6, 3, 3, 'Anda 21', 14, 'X', 0, 1679229212),
(114, 6, 3, 3, 'Anda 22', 15, 'X', 0, 1679229212),
(116, 6, 3, 3, 'Anda 8', 16, 'X', 0, 1679229213),
(117, 6, 3, 3, 'Anda 27', 14, 'X', 0, 1679229213),
(118, 6, 3, 3, 'Anda 11', 15, 'X', 0, 1679229213),
(119, 6, 3, 3, 'Anda 10', 13, 'O', 3, 1679229214);

-- --------------------------------------------------------

--
-- Table structure for table `chat_log`
--

CREATE TABLE `chat_log` (
  `id` int(11) NOT NULL,
  `label` varchar(20) DEFAULT NULL,
  `ref` varchar(200) NOT NULL,
  `time` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `added_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `id` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `label` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`id`, `id_question`, `label`, `is_correct`) VALUES
(5, 1, 'A haha', 1),
(6, 1, 'B bebek', 0),
(7, 1, 'C cius', 0),
(8, 1, 'D dih', 0),
(9, 2, 'cxzc B', 1),
(10, 2, 'x 324 ', 0),
(11, 2, 'dsfd5 ew', 0),
(12, 2, 'sdf df5 ', 0),
(13, 3, 'Dawn of Civilization', 1),
(14, 3, 'Dawn on Civilization', 0),
(15, 3, 'Dawn or Civilization', 0),
(16, 3, 'Down of Civilization', 0),
(17, 4, 'Rena', 1),
(18, 4, 'Rina', 0),
(19, 4, 'Lina', 0),
(20, 4, 'Rini', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer_exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `sort`, `id_quiz`, `question`, `answer_exp`) VALUES
(1, 1, 1, 'pilih A', ''),
(2, 2, 1, 'no B', ''),
(3, 1, 3, 'DoC is one of our learning platforms. What does DoC stand for?', ''),
(4, 2, 3, '<img src=\"imgs/professor_3.png\">\nHis granddaughter will help us to rebuild a city. What is her name?', '<img src=\"imgs/prof.png\" style=\"width:100%;height:auto\">');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `score_correct` int(11) NOT NULL DEFAULT 0,
  `score_wrong` int(11) NOT NULL DEFAULT 0,
  `score_abstain` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `title`, `description`, `score_correct`, `score_wrong`, `score_abstain`) VALUES
(1, 'ini judul 1', 'Ini deskripsi kuis', 3, 0, 0),
(2, 'Animals', 'Animal guessr', 3, 0, 0),
(3, 'SE! Quiz', 'lorem ipsum dimsum', 3, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 0,
  `choices` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `id_quiz`, `id_question`, `is_open`, `choices`) VALUES
(1, 1, 1, 0, '{\"D\":{\"label\":\"D\",\"desc\":\"A haha\",\"id_choice\":\"5\",\"is_correct\":\"1\"},\"A\":{\"label\":\"A\",\"desc\":\"B bebek\",\"id_choice\":\"6\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"C cius\",\"id_choice\":\"7\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"D dih\",\"id_choice\":\"8\",\"is_correct\":\"0\"}}'),
(3, 1, 2, 0, '{\"B\":{\"label\":\"B\",\"desc\":\"cxzc B\",\"id_choice\":\"9\",\"is_correct\":\"1\"},\"C\":{\"label\":\"C\",\"desc\":\"x 324 \",\"id_choice\":\"10\",\"is_correct\":\"0\"},\"A\":{\"label\":\"A\",\"desc\":\"dsfd5 ew\",\"id_choice\":\"11\",\"is_correct\":\"0\"},\"D\":{\"label\":\"D\",\"desc\":\"sdf df5 \",\"id_choice\":\"12\",\"is_correct\":\"0\"}}'),
(5, 2, NULL, 0, ''),
(6, 3, 4, 0, '{\"D\":{\"label\":\"D\",\"desc\":\"Rena\",\"id_choice\":\"17\",\"is_correct\":\"1\"},\"A\":{\"label\":\"A\",\"desc\":\"Rina\",\"id_choice\":\"18\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"Lina\",\"id_choice\":\"19\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"Rini\",\"id_choice\":\"20\",\"is_correct\":\"0\"}}'),
(7, 3, 4, 0, '{\"B\":{\"label\":\"B\",\"desc\":\"Rena\",\"id_choice\":\"17\",\"is_correct\":\"1\"},\"C\":{\"label\":\"C\",\"desc\":\"Rina\",\"id_choice\":\"18\",\"is_correct\":\"0\"},\"D\":{\"label\":\"D\",\"desc\":\"Lina\",\"id_choice\":\"19\",\"is_correct\":\"0\"},\"A\":{\"label\":\"A\",\"desc\":\"Rini\",\"id_choice\":\"20\",\"is_correct\":\"0\"}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_session_2` (`id_session`,`id_quiz`,`id_question`,`person`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_quiz` (`id_quiz`),
  ADD KEY `id_question` (`id_question`),
  ADD KEY `id_choice` (`id_choice`);

--
-- Indexes for table `chat_log`
--
ALTER TABLE `chat_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref` (`ref`),
  ADD KEY `label` (`label`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_question_2` (`id_question`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort` (`sort`),
  ADD KEY `id_quiz` (`id_quiz`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quiz` (`id_quiz`),
  ADD KEY `id_question` (`id_question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `chat_log`
--
ALTER TABLE `chat_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_3` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_4` FOREIGN KEY (`id_choice`) REFERENCES `choice` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `choice`
--
ALTER TABLE `choice`
  ADD CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
