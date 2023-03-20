-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 20, 2023 at 09:51 AM
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
(119, 6, 3, 3, 'Anda 10', 13, 'O', 3, 1679229214),
(120, 6, 3, 5, 'Anda 20', 24, 'X', 0, 1679234308),
(121, 6, 3, 5, 'Anda 11', 22, 'O', 3, 1679234278),
(122, 6, 3, 5, 'Anda 2', 21, 'X', 0, 1679234275),
(123, 6, 3, 5, 'Anda 1', 22, 'O', 3, 1679234277),
(124, 6, 3, 5, 'Anda 6', 21, 'X', 0, 1679234297),
(126, 6, 3, 5, 'Anda 4', 21, 'X', 0, 1679234281),
(128, 6, 3, 5, 'Anda 18', 21, 'X', 0, 1679234300),
(130, 6, 3, 5, 'Anda 27', 23, 'X', 0, 1679234306),
(131, 6, 3, 5, 'Anda 16', 23, 'X', 0, 1679234300),
(132, 6, 3, 5, 'Anda 19', 24, 'X', 0, 1679234276),
(134, 6, 3, 5, 'Anda 17', 23, 'X', 0, 1679234281),
(137, 6, 3, 5, 'Anda 24', 24, 'X', 0, 1679234281),
(138, 6, 3, 5, 'Anda 8', 21, 'X', 0, 1679234277),
(139, 6, 3, 5, 'Anda 29', 24, 'X', 0, 1679234278),
(140, 6, 3, 5, 'Anda 10', 21, 'X', 0, 1679234278),
(144, 6, 3, 5, 'Anda 21', 24, 'X', 0, 1679234305),
(145, 6, 3, 5, 'Anda 9', 23, 'X', 0, 1679234307),
(150, 6, 3, 5, 'Anda 7', 24, 'X', 0, 1679234297),
(153, 6, 3, 5, 'Anda 15', 22, 'O', 3, 1679234299),
(157, 6, 3, 5, 'Anda 5', 21, 'X', 0, 1679234306),
(159, 6, 3, 5, 'Anda 14', 22, 'O', 3, 1679234306),
(161, 6, 3, 5, 'Anda 12', 21, 'X', 0, 1679234308),
(163, 6, 3, 8, 'You', 35, 'X', 0, 1679294508),
(164, 8, 3, 3, 'Saima Suman', 13, 'O', 3, 1679298221),
(165, 8, 3, 3, 'Tri Samsul', 13, 'O', 3, 1679298235),
(166, 8, 3, 3, 'Fandy Ali Muzhofi', 13, 'O', 3, 1679298245),
(167, 8, 3, 3, 'Ariq Rasyid', 13, 'O', 3, 1679298220),
(169, 8, 3, 3, 'Muhammad Yusuf', 13, 'O', 3, 1679298224),
(170, 8, 3, 3, 'Batara Sakti', 13, 'O', 3, 1679298224),
(171, 8, 3, 3, 'Arome Omachoko', 13, 'O', 3, 1679298225),
(172, 8, 3, 3, 'Saphira Suwanto', 13, 'O', 3, 1679298252),
(173, 8, 3, 3, 'Reky Wiryanto Bongso', 13, 'O', 3, 1679298246),
(175, 8, 3, 3, 'Fery Dae', 13, 'O', 3, 1679298236),
(176, 8, 3, 3, 'Velia Vanissa', 13, 'O', 3, 1679298238),
(177, 8, 3, 3, 'Lingga Utami', 13, 'O', 3, 1679298239),
(178, 8, 3, 3, 'Phebe Ogunniran', 13, 'O', 3, 1679298239),
(179, 8, 3, 3, 'Rudy Pagnel', 13, 'O', 3, 1679298241),
(181, 8, 3, 3, 'Idris Ashimi', 14, 'X', 0, 1679298246),
(182, 8, 3, 3, 'arendra jutta', 13, 'O', 3, 1679298246),
(184, 8, 3, 3, 'Shahfiq Abas', 13, 'O', 3, 1679298248),
(185, 8, 3, 3, 'Melvin Zhang', 13, 'O', 3, 1679298251),
(187, 8, 3, 3, 'Mayang Larasati', 13, 'O', 3, 1679298262),
(188, 8, 3, 3, 'Vivian Hess', 13, 'O', 3, 1679298257),
(190, 8, 3, 3, 'Ludwinardo Putra', 15, 'X', 0, 1679298263),
(191, 8, 3, 4, 'Saima Suman', 17, 'O', 3, 1679298297),
(192, 8, 3, 4, 'Shahfiq Abas', 17, 'O', 3, 1679298298),
(193, 8, 3, 4, 'Velia Vanissa', 17, 'O', 3, 1679298298),
(194, 8, 3, 4, 'arendra jutta', 17, 'O', 3, 1679298330),
(195, 8, 3, 4, 'Melvin Zhang', 17, 'O', 3, 1679298299),
(196, 8, 3, 4, 'Ariq Rasyid', 17, 'O', 3, 1679298300),
(197, 8, 3, 4, 'Tri Samsul', 17, 'O', 3, 1679298301),
(198, 8, 3, 4, 'Mayang Larasati', 17, 'O', 3, 1679298302),
(199, 8, 3, 4, 'Fery Dae', 17, 'O', 3, 1679298303),
(200, 8, 3, 4, 'Rudy Pagnel', 17, 'O', 3, 1679298303),
(201, 8, 3, 4, 'Batara Sakti', 17, 'O', 3, 1679298303),
(202, 8, 3, 4, 'Vivian Hess', 17, 'O', 3, 1679298303),
(203, 8, 3, 4, 'Fandy Ali Muzhofi', 17, 'O', 3, 1679298304),
(204, 8, 3, 4, 'Casey Daniel', 17, 'O', 3, 1679298304),
(205, 8, 3, 4, 'Muhammad Yusuf', 17, 'O', 3, 1679298304),
(206, 8, 3, 4, 'Saphira Suwanto', 17, 'O', 3, 1679298304),
(207, 8, 3, 4, 'Lingga Utami', 17, 'O', 3, 1679298306),
(208, 8, 3, 4, 'Phebe Ogunniran', 17, 'O', 3, 1679298306),
(209, 8, 3, 4, 'Ludwinardo Putra', 17, 'O', 3, 1679298306),
(210, 8, 3, 4, 'Reky Wiryanto Bongso', 17, 'O', 3, 1679298309),
(211, 8, 3, 4, 'Arome Omachoko', 17, 'O', 3, 1679298310),
(212, 8, 3, 4, 'Idris Ashimi', 17, 'O', 3, 1679298326),
(214, 8, 3, 5, 'Ludwinardo Putra', 21, 'X', 0, 1679298399),
(215, 8, 3, 5, 'Fandy Ali Muzhofi', 22, 'O', 3, 1679298420),
(216, 8, 3, 5, 'Tri Samsul', 22, 'O', 3, 1679298406),
(217, 8, 3, 5, 'Fery Dae', 22, 'O', 3, 1679298418),
(218, 8, 3, 5, 'Muhammad Yusuf', 22, 'O', 3, 1679298424),
(219, 8, 3, 5, 'Velia Vanissa', 22, 'O', 3, 1679298411),
(220, 8, 3, 5, 'Lingga Utami', 21, 'X', 0, 1679298403),
(221, 8, 3, 5, 'Shahfiq Abas', 22, 'O', 3, 1679298416),
(222, 8, 3, 5, 'Casey Daniel', 22, 'O', 3, 1679298433),
(223, 8, 3, 5, 'Batara Sakti', 22, 'O', 3, 1679298405),
(224, 8, 3, 5, 'Ariq Rasyid', 22, 'O', 3, 1679298406),
(225, 8, 3, 5, 'Mayang Larasati', 22, 'O', 3, 1679298424),
(228, 8, 3, 5, 'Vivian Hess', 22, 'O', 3, 1679298417),
(229, 8, 3, 5, 'Arome Omachoko', 21, 'X', 0, 1679298409),
(230, 8, 3, 5, 'Saphira Suwanto', 22, 'O', 3, 1679298410),
(235, 8, 3, 5, 'Idris Ashimi', 24, 'X', 0, 1679298416),
(241, 8, 3, 5, 'Melvin Zhang', 22, 'O', 3, 1679298420),
(242, 8, 3, 5, 'arendra jutta', 22, 'O', 3, 1679298423),
(243, 8, 3, 5, 'Phebe Ogunniran', 22, 'O', 3, 1679298423),
(246, 8, 3, 5, 'Rudy Pagnel', 22, 'O', 3, 1679298426),
(247, 8, 3, 5, 'Reky Wiryanto Bongso', 21, 'X', 0, 1679298428),
(249, 8, 3, 5, 'Saima Suman', 22, 'O', 3, 1679298439),
(250, 8, 3, 11, 'Mayang Larasati', 48, 'O', 3, 1679298589),
(251, 8, 3, 11, 'Melvin Zhang', 45, 'X', 0, 1679298533),
(252, 8, 3, 11, 'Tri Samsul', 48, 'O', 3, 1679298534),
(253, 8, 3, 11, 'Fandy Ali Muzhofi', 48, 'O', 3, 1679298539),
(254, 8, 3, 11, 'Fery Dae', 48, 'O', 3, 1679298570),
(255, 8, 3, 11, 'Ariq Rasyid', 48, 'O', 3, 1679298541),
(257, 8, 3, 11, 'Ludwinardo Putra', 47, 'X', 0, 1679298556),
(258, 8, 3, 11, 'Velia Vanissa', 48, 'O', 3, 1679298544),
(259, 8, 3, 11, 'Muhammad Yusuf', 48, 'O', 3, 1679298545),
(260, 8, 3, 11, 'arendra jutta', 48, 'O', 3, 1679298547),
(261, 8, 3, 11, 'Rudy Pagnel', 48, 'O', 3, 1679298547),
(262, 8, 3, 11, 'Arome Omachoko', 48, 'O', 3, 1679298549),
(264, 8, 3, 11, 'Vivian Hess', 48, 'O', 3, 1679298550),
(265, 8, 3, 11, 'Idris Ashimi', 46, 'X', 0, 1679298550),
(268, 8, 3, 11, 'Batara Sakti', 48, 'O', 3, 1679298554),
(270, 8, 3, 11, 'Phebe Ogunniran', 48, 'O', 3, 1679298559),
(271, 8, 3, 11, 'Saima Suman', 48, 'O', 3, 1679298563),
(272, 8, 3, 11, 'Shahfiq Abas', 48, 'O', 3, 1679298565),
(273, 8, 3, 11, 'Reky Wiryanto Bongso', 48, 'O', 3, 1679298565),
(275, 8, 3, 11, 'Saphira Suwanto', 48, 'O', 3, 1679298570),
(277, 8, 3, 11, 'Casey Daniel', 45, 'X', 0, 1679298580),
(279, 8, 3, 9, 'Tri Samsul', 39, 'O', 3, 1679298641),
(280, 8, 3, 9, 'Fandy Ali Muzhofi', 39, 'O', 3, 1679298657),
(281, 8, 3, 9, 'Saima Suman', 39, 'O', 3, 1679298646),
(282, 8, 3, 9, 'Ariq Rasyid', 39, 'O', 3, 1679298649),
(283, 8, 3, 9, 'Ludwinardo Putra', 37, 'X', 0, 1679298649),
(284, 8, 3, 9, 'Fery Dae', 39, 'O', 3, 1679298650),
(285, 8, 3, 9, 'arendra jutta', 39, 'O', 3, 1679298650),
(286, 8, 3, 9, 'Idris Ashimi', 37, 'X', 0, 1679298655),
(287, 8, 3, 9, 'Casey Daniel', 39, 'O', 3, 1679298655),
(289, 8, 3, 9, 'Melvin Zhang', 39, 'O', 3, 1679298660),
(290, 8, 3, 9, 'Arome Omachoko', 39, 'O', 3, 1679298660),
(291, 8, 3, 9, 'Muhammad Yusuf', 39, 'O', 3, 1679298661),
(292, 8, 3, 9, 'Vivian Hess', 39, 'O', 3, 1679298661),
(293, 8, 3, 9, 'Batara Sakti', 39, 'O', 3, 1679298666),
(294, 8, 3, 9, 'Phebe Ogunniran', 39, 'O', 3, 1679298667),
(295, 8, 3, 9, 'Velia Vanissa', 39, 'O', 3, 1679298695),
(296, 8, 3, 9, 'Rudy Pagnel', 39, 'O', 3, 1679298670),
(297, 8, 3, 9, 'Mayang Larasati', 39, 'O', 3, 1679298680),
(298, 8, 3, 9, 'Shahfiq Abas', 39, 'O', 3, 1679298675),
(300, 8, 3, 9, 'Saphira Suwanto', 39, 'O', 3, 1679298692),
(301, 8, 3, 9, 'Reky Wiryanto Bongso', 39, 'O', 3, 1679298694),
(303, 8, 3, 6, 'Muhammad Yusuf', 26, 'O', 3, 1679298883),
(304, 8, 3, 6, 'Saima Suman', 26, 'O', 3, 1679298915),
(305, 8, 3, 6, 'Fandy Ali Muzhofi', 25, 'X', 0, 1679298849),
(306, 8, 3, 6, 'arendra jutta', 25, 'X', 0, 1679298885),
(308, 8, 3, 6, 'Ariq Rasyid', 25, 'X', 0, 1679298851),
(309, 8, 3, 6, 'Batara Sakti', 25, 'X', 0, 1679298852),
(310, 8, 3, 6, 'Tri Samsul', 26, 'O', 3, 1679298856),
(311, 8, 3, 6, 'Velia Vanissa', 26, 'O', 3, 1679298871),
(312, 8, 3, 6, 'Vivian Hess', 26, 'O', 3, 1679298885),
(313, 8, 3, 6, 'Idris Ashimi', 28, 'X', 0, 1679298866),
(314, 8, 3, 6, 'Mayang Larasati', 26, 'O', 3, 1679298896),
(315, 8, 3, 6, 'Rudy Pagnel', 28, 'X', 0, 1679298878),
(318, 8, 3, 6, 'Arome Omachoko', 26, 'O', 3, 1679298879),
(321, 8, 3, 6, 'Fery Dae', 26, 'O', 3, 1679298885),
(323, 8, 3, 6, 'Melvin Zhang', 25, 'X', 0, 1679298887),
(324, 8, 3, 6, 'Ludwinardo Putra', 27, 'X', 0, 1679298894),
(326, 8, 3, 6, 'Phebe Ogunniran', 26, 'O', 3, 1679298895),
(328, 8, 3, 6, 'Shahfiq Abas', 26, 'O', 3, 1679298911),
(329, 8, 3, 6, 'Saphira Suwanto', 26, 'O', 3, 1679298913),
(331, 8, 3, 6, 'Casey Daniel', 25, 'X', 0, 1679298921),
(332, 8, 3, 8, 'Idris Ashimi', 35, 'X', 0, 1679299014),
(333, 8, 3, 8, 'arendra jutta', 36, 'X', 0, 1679299018),
(334, 8, 3, 8, 'Tri Samsul', 33, 'O', 3, 1679299024),
(335, 8, 3, 8, 'Muhammad Yusuf', 33, 'O', 3, 1679299025),
(336, 8, 3, 8, 'Velia Vanissa', 35, 'X', 0, 1679299063),
(337, 8, 3, 8, 'Ariq Rasyid', 33, 'O', 3, 1679299026),
(338, 8, 3, 8, 'Mayang Larasati', 34, 'X', 0, 1679299027),
(339, 8, 3, 8, 'Fandy Ali Muzhofi', 36, 'X', 0, 1679299027),
(340, 8, 3, 8, 'Arome Omachoko', 33, 'O', 3, 1679299031),
(341, 8, 3, 8, 'Rudy Pagnel', 36, 'X', 0, 1679299033),
(342, 8, 3, 8, 'Lingga Utami', 34, 'X', 0, 1679299034),
(343, 8, 3, 8, 'Shahfiq Abas', 33, 'O', 3, 1679299034),
(344, 8, 3, 8, 'Ludwinardo Putra', 35, 'X', 0, 1679299038),
(345, 8, 3, 8, 'Fery Dae', 33, 'O', 3, 1679299042),
(346, 8, 3, 8, 'Casey Daniel', 33, 'O', 3, 1679299047),
(347, 8, 3, 8, 'Vivian Hess', 36, 'X', 0, 1679299059),
(349, 8, 3, 8, 'Phebe Ogunniran', 33, 'O', 3, 1679299066),
(350, 8, 3, 8, 'Batara Sakti', 36, 'X', 0, 1679299075),
(351, 8, 3, 8, 'Saphira Suwanto', 33, 'O', 3, 1679299076),
(352, 8, 3, 8, 'Saima Suman', 36, 'X', 0, 1679299094),
(353, 8, 3, 8, 'Reky Wiryanto Bongso', 36, 'X', 0, 1679299079),
(355, 8, 3, 7, 'Muhammad Yusuf', 32, 'X', 0, 1679299169),
(356, 8, 3, 7, 'Ludwinardo Putra', 32, 'X', 0, 1679299277),
(357, 8, 3, 7, 'Idris Ashimi', 31, 'X', 0, 1679299179),
(358, 8, 3, 7, 'Reky Wiryanto Bongso', 29, 'X', 0, 1679299180),
(359, 8, 3, 7, 'Fandy Ali Muzhofi', 29, 'X', 0, 1679299237),
(360, 8, 3, 7, 'arendra jutta', 30, 'O', 3, 1679299311),
(361, 8, 3, 7, 'Batara Sakti', 29, 'X', 0, 1679299200),
(363, 8, 3, 7, 'Rudy Pagnel', 29, 'X', 0, 1679299202),
(364, 8, 3, 7, 'Melvin Zhang', 29, 'X', 0, 1679299214),
(365, 8, 3, 7, 'Arome Omachoko', 29, 'X', 0, 1679299214),
(366, 8, 3, 7, 'Lingga Utami', 29, 'X', 0, 1679299216),
(367, 8, 3, 7, 'Tri Samsul', 30, 'O', 3, 1679299218),
(368, 8, 3, 7, 'Vivian Hess', 29, 'X', 0, 1679299219),
(369, 8, 3, 7, 'Phebe Ogunniran', 29, 'X', 0, 1679299222),
(370, 8, 3, 7, 'Velia Vanissa', 29, 'X', 0, 1679299295),
(372, 8, 3, 7, 'Saima Suman', 30, 'O', 3, 1679299223),
(373, 8, 3, 7, 'Shahfiq Abas', 30, 'O', 3, 1679299304),
(374, 8, 3, 7, 'Ariq Rasyid', 30, 'O', 3, 1679299224),
(375, 8, 3, 7, 'Casey Daniel', 29, 'X', 0, 1679299224),
(376, 8, 3, 7, 'Fery Dae', 30, 'O', 3, 1679299225),
(377, 8, 3, 7, 'Mayang Larasati', 29, 'X', 0, 1679299260),
(384, 8, 3, 7, 'Saphira Suwanto', 30, 'O', 3, 1679299264);

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
(20, 4, 'Rini', 0),
(21, 5, 'Copy Cat', 0),
(22, 5, 'Copy Parrot', 1),
(23, 5, 'Word Snap', 0),
(24, 5, 'Eye Spy', 0),
(25, 6, 'Pre-A.2', 0),
(26, 6, 'Pre-A.1', 1),
(27, 6, 'A1.1', 0),
(28, 6, 'None of the other answers are correct', 0),
(29, 7, '52.2%', 0),
(30, 7, '152.2%', 1),
(31, 7, '261%', 0),
(32, 7, '161%', 0),
(33, 8, 'B1.2', 1),
(34, 8, 'C1.1', 0),
(35, 8, 'B1.1', 0),
(36, 8, 'None of the other answers are correct', 0),
(37, 9, 'Unlimited', 0),
(38, 9, '3', 0),
(39, 9, '1', 1),
(40, 9, '5', 0),
(41, 10, 'Group Code is just alternative name for Learnalytics Code', 0),
(42, 10, 'Group Code is used to group students monitored by Learnalytics Code', 1),
(43, 10, 'Learnalytics Code is created by principal, Group Code is created by teacher', 0),
(44, 10, 'Learnalytics Code could have the same code as Group Code', 0),
(45, 11, '1', 0),
(46, 11, '0', 0),
(47, 11, '3', 0),
(48, 11, 'More than 3', 1),
(49, 12, 'English CEFR level', 0),
(50, 12, 'Date of start learning', 0),
(51, 12, 'User\'s rank on event leaderboard', 1),
(52, 12, 'Learning progress for today', 0);

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
(4, 2, 3, '<img src=\"imgs/prof2.png\" style=\"float: left;width:auto\">\nHis granddaughter will help us to rebuild a city. What is her name?', '<img src=\"imgs/prof.png\" style=\"width:100%;height:auto\">'),
(5, 3, 3, '<img src=\"imgs/cparro.png\" style=\"width:80%;height:auto;margin:auto\"><br/>\nWhat is the name of this minigame?', '<ul>\n<li>Copy Parrot<br/><img src=\"imgs/cparro.png\" style=\"width:100%;height:auto\"></li>\n\n<li>Eye Spy<br/><img src=\"imgs/eyspy.png\" style=\"width:100%;height:auto\"></li>\n\n<li>Word Snap<br/><img src=\"imgs/wsnap.png\" style=\"width:100%;height:auto\"></li>\n\n<li>Copy Cat<br/><img src=\"imgs/ccat.png\" style=\"width:100%;height:auto\"></li>\n\n</ul>'),
(6, 8, 3, '<img src=\"imgs/sc1.png\" style=\"width:100%;height:auto;margin:auto\"><br/>\r\nWhat is the diagnostic score of this student?', '<img src=\"imgs/sc2.png\" style=\"width:60%;height:auto\">\r\n<br/>\r\nPossible diagnostic scores:\r\n<ul>\r\n<li>Pre-A.1</li>\r\n<li>A1.1</li>\r\n<li>A2.1</li>\r\n<li>B1.1</li>\r\n<li>B2.1</li>\r\n<li>C1.1</li>\r\n</ul>'),
(7, 10, 3, '<img src=\"imgs/sc1.png\" style=\"width:100%;height:auto;margin:auto\"><br/>\r\nWhat is the learning improvements of this student?', 'Hard skills improvements:\r\n<ul>\r\n<li>Reading: 168%</li>\r\n<li>Vocabulary: 160%</li>\r\n<li>Grammar: 168%</li>\r\n<li>Listening: 151%</li>\r\n<li>Speaking: 114%</li>\r\n</ul>\r\n\r\nLearning improvements:<br/>\r\n<code>\r\n= AVERAGE(168%, 160%, 168%, 151%, 114%)<br/>\r\n= 152.2%\r\n</code>'),
(8, 9, 3, 'A student got diagnostic score A2.1. He makes 404% learning improvements. What is his current CEFR level? ', '100% learning improvements = improved 1 CEFR sub-level\n<br/>\n<img src=\"imgs/cefr1.gif\" style=\"width:80%;height:auto\">'),
(9, 5, 3, 'What is the maximum number of Group Code an Ed user can have?', ''),
(10, 7, 3, 'Which is the most correct statement about Learnalytics Code and Group Code?', '<img src=\"imgs/lavenn.gif\" style=\"width:50%;height:auto\">\n<br/>\n\n<img src=\"imgs/la1.png\" style=\"width:40%;height:auto\">\n<img src=\"imgs/la2.png\" style=\"width:40%;height:auto\">'),
(11, 4, 3, 'What is the maximum number of Learnalytics Code an DoC user can have?', '<img src=\"imgs/docla.png\" style=\"width:90%;height:auto\">'),
(12, 6, 3, '[Ed the Learning Bot] Which data/information is not shown in the <code>/profile</code> command?', '<img src=\"imgs/profile.png\" style=\"width:90%;height:auto\">');

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
(3, 'SE! Quiz', 'Things about our products I learned. CMIIW.<br/><br/><br/>\n<div>Multiple choice: A, B, C, and D</div>\n<br/>\n\n<img src=\"imgs/chat.png\" style=\"width:30%;height:auto\">', 3, 0, -1);

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
(6, 3, 10, 0, '{\"D\":{\"label\":\"D\",\"desc\":\"Group Code is just alternative name for Learnalytics Code\",\"id_choice\":\"41\",\"is_correct\":\"0\"},\"A\":{\"label\":\"A\",\"desc\":\"Group Code is used to group students monitored by Learnalytics Code\",\"id_choice\":\"42\",\"is_correct\":\"1\"},\"B\":{\"label\":\"B\",\"desc\":\"Learnalytics Code is created by principal, Group Code is created by teacher\",\"id_choice\":\"43\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"Learnalytics Code could have the same code as Group Code\",\"id_choice\":\"44\",\"is_correct\":\"0\"}}'),
(7, 3, 5, 0, '{\"D\":{\"label\":\"D\",\"desc\":\"Copy Cat\",\"id_choice\":\"21\",\"is_correct\":\"0\"},\"C\":{\"label\":\"C\",\"desc\":\"Copy Parrot\",\"id_choice\":\"22\",\"is_correct\":\"1\"},\"A\":{\"label\":\"A\",\"desc\":\"Word Snap\",\"id_choice\":\"23\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"Eye Spy\",\"id_choice\":\"24\",\"is_correct\":\"0\"}}'),
(8, 3, 6, 1, '{\"C\":{\"label\":\"C\",\"desc\":\"Pre-A.2\",\"id_choice\":\"25\",\"is_correct\":\"0\"},\"B\":{\"label\":\"B\",\"desc\":\"Pre-A.1\",\"id_choice\":\"26\",\"is_correct\":\"1\"},\"D\":{\"label\":\"D\",\"desc\":\"A1.1\",\"id_choice\":\"27\",\"is_correct\":\"0\"},\"A\":{\"label\":\"A\",\"desc\":\"None of the other answers are correct\",\"id_choice\":\"28\",\"is_correct\":\"0\"}}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `chat_log`
--
ALTER TABLE `chat_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
