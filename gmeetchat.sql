-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 17, 2023 at 07:10 PM
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
-- Database: `gmeetchat2`
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
(15, 1, 1, 1, 'Anda', 8, 'X', 0, 1679076051),
(16, 1, 1, 1, 'flying duck', NULL, 'O', 3, 1678601782),
(27, 1, 1, 2, 'Anda', 9, 'O', 3, 1679070909),
(31, 1, 1, 2, 'Fat Han Nuraddin', 9, 'O', 3, 1678610483),
(38, 1, 1, 1, 'Anda1', 6, 'X', 0, 1678636117),
(39, 1, 1, 1, 'Anda2', 6, 'X', 0, 1678636117),
(40, 1, 1, 1, 'Anda hahah 3', 6, 'X', 0, 1678636117),
(41, 1, 1, 1, 'Ardian Farizaldi', 6, 'X', 0, 1678636113),
(42, 1, 1, 1, 'Ardian Oktora', 6, 'X', 0, 1678636117),
(43, 1, 1, 1, 'Muhammad Lutfi', 6, 'X', 0, 1678636113),
(44, 1, 1, 1, 'Abdul Hakim', 6, 'X', 0, 1678636116),
(48, 1, 1, 2, 'You', 12, 'X', 0, 1678647659),
(67, 1, 1, 3, 'Anda', 13, 'O', 3, 1679075564),
(69, 1, 1, 1, 'Anda 0', 6, 'X', 0, 1679076254),
(72, 1, 1, 1, 'Anda 511', 8, 'X', 0, 1679076284),
(73, 1, 1, 1, 'Anda 496', 7, 'X', 0, 1679076287),
(74, 1, 1, 1, 'Anda 492', 7, 'X', 0, 1679076291),
(75, 1, 1, 1, 'Anda 516', 7, 'X', 0, 1679076292),
(76, 1, 1, 1, 'Anda 326', 7, 'X', 0, 1679076295),
(77, 1, 1, 1, 'Anda 50', 7, 'X', 0, 1679076297),
(78, 1, 1, 1, 'Anda 642', 7, 'X', 0, 1679076299),
(79, 1, 1, 1, 'Anda 729', 7, 'X', 0, 1679076300),
(80, 1, 1, 1, 'Anda 24', 7, 'X', 0, 1679076301),
(81, 1, 1, 1, 'Anda 596', 6, 'X', 0, 1679076305),
(82, 1, 1, 1, 'Anda 707', 8, 'X', 0, 1679076308),
(83, 1, 1, 1, 'Anda 657', 5, 'O', 3, 1679076310),
(84, 1, 1, 2, 'Anda 794', 10, 'X', 0, 1679076347),
(85, 1, 1, 2, 'Anda 551', 9, 'O', 3, 1679076349),
(86, 1, 1, 2, 'Anda 395', 9, 'O', 3, 1679076349),
(87, 1, 1, 2, 'Anda 609', 9, 'O', 3, 1679076349),
(88, 1, 1, 2, 'Anda 316', 9, 'O', 3, 1679076350),
(89, 1, 1, 2, 'Anda 308', 11, 'X', 0, 1679076356),
(90, 1, 1, 2, 'Anda 805', 12, 'X', 0, 1679076357),
(91, 1, 1, 2, 'Anda 634', 10, 'X', 0, 1679076359),
(92, 1, 1, 2, 'Anda 344', 11, 'X', 0, 1679076360),
(93, 1, 1, 2, 'Anda 222', 10, 'X', 0, 1679076360),
(94, 1, 1, 2, 'Anda 727', 12, 'X', 0, 1679076361),
(95, 1, 1, 2, 'Anda 186', 10, 'X', 0, 1679076366),
(96, 1, 1, 2, 'Anda 65', 10, 'X', 0, 1679076367),
(97, 1, 1, 2, 'Anda 200', 10, 'X', 0, 1679076368),
(98, 1, 1, 2, 'Anda 698', 10, 'X', 0, 1679076369),
(99, 1, 1, 3, 'Anda 430', 13, 'O', 3, 1679076440),
(100, 1, 1, 3, 'Anda 369', 13, 'O', 3, 1679076441),
(101, 1, 1, 3, 'Anda 692', 13, 'O', 3, 1679076443),
(102, 1, 1, 3, 'Anda 127', 13, 'O', 3, 1679076445),
(103, 1, 1, 3, 'Anda 423', 13, 'O', 3, 1679076447),
(104, 1, 1, 3, 'Anda 566', 14, 'X', 0, 1679076448),
(105, 1, 1, 3, 'Anda 477', 13, 'O', 3, 1679076449),
(106, 1, 1, 3, 'Anda 940', 14, 'X', 0, 1679076450),
(107, 1, 1, 3, 'Anda 220', 13, 'O', 3, 1679076450),
(108, 1, 1, 3, 'Anda 669', 16, 'X', 0, 1679076451),
(109, 1, 1, 3, 'Anda 321', 15, 'X', 0, 1679076452),
(110, 1, 1, 3, 'Anda 741', 13, 'O', 3, 1679076453),
(111, 1, 1, 3, 'Anda 853', 13, 'O', 3, 1679076454),
(112, 1, 1, 3, 'Anda 410', 13, 'O', 3, 1679076456),
(113, 1, 1, 3, 'Anda 543', 13, 'O', 3, 1679076458),
(114, 1, 1, 3, 'Anda 108', 13, 'O', 3, 1679076463);

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
(13, 3, 'tali', 1),
(14, 3, 'lembing', 0),
(15, 3, 'gdfgdf', 0),
(16, 3, 'kertas', 0);

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
(3, 100, 1, 'lompat', 'haha');

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
(1, 'ini judul', 'Ini deskripsi kuis', 3, 0, 0),
(2, 'Kingdom', 'Animal guessr', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 0,
  `choices` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `id_quiz`, `id_question`, `is_open`, `choices`) VALUES
(1, 1, 3, 0, '{\"D\":{\"label\":\"D\",\"desc\":\"tali\",\"id_choice\":\"13\",\"is_correct\":\"1\"},\"A\":{\"label\":\"A\",\"desc\":\"lembing\",\"id_choice\":\"14\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"gdfgdf\",\"id_choice\":\"15\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"kertas\",\"id_choice\":\"16\",\"is_correct\":\"0\"}}'),
(3, 1, 1, 1, '{\"A\":{\"label\":\"A\",\"desc\":\"A haha\",\"id_choice\":\"5\",\"is_correct\":\"1\"},\"D\":{\"label\":\"D\",\"desc\":\"B bebek\",\"id_choice\":\"6\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"C cius\",\"id_choice\":\"7\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"D dih\",\"id_choice\":\"8\",\"is_correct\":\"0\"}}'),
(4, 1, NULL, 0, ''),
(5, 2, NULL, 0, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `chat_log`
--
ALTER TABLE `chat_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
