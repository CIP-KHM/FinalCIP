-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 10, 2016 at 12:47 AM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cipproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'CIPADMIN001', '85adminceg'),
(2, 'CIPADMIN002', '16adminceg');

-- --------------------------------------------------------

--
-- Table structure for table `chmaster`
--

CREATE TABLE `chmaster` (
  `id` int(5) NOT NULL,
  `userid` int(10) NOT NULL,
  `food` varchar(20) NOT NULL,
  `timetaken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `checkin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=514 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `password`, `checkin`, `created_at`) VALUES
(68, 'CIP001', '7f3b70', 0, '2016-02-24 16:28:00'),
(69, 'CIP002', '881adb', 0, '2016-02-24 16:28:00'),
(70, 'CIP003', '1f442e', 0, '2016-02-24 16:28:01'),
(71, 'CIP004', '87067e', 0, '2016-02-24 16:28:16'),
(72, 'CIP005', 'bbcb55', 0, '2016-02-24 16:28:26'),
(73, 'CIP006', 'ace97f', 0, '2016-02-24 16:28:26'),
(74, 'CIP007', 'd7b6d9', 0, '2016-02-24 16:29:10'),
(75, 'CIP008', 'dc135f', 0, '2016-02-24 16:29:10'),
(76, 'CIP009', '037a62', 0, '2016-02-24 16:29:23'),
(77, 'CIP0010', 'cdf9d0', 0, '2016-02-24 16:29:23'),
(78, 'CIP0011', '1cb4c7', 0, '2016-02-24 16:29:23'),
(79, 'CIP0012', 'f38d1c', 0, '2016-02-25 13:35:03'),
(80, 'CIP0013', '635b39', 0, '2016-02-25 13:35:03'),
(81, 'CIP0014', 'f660b6', 0, '2016-02-25 13:35:03'),
(82, 'CIP0015', '98ad53', 0, '2016-02-25 13:35:28'),
(83, 'CIP0016', '8491dd', 0, '2016-02-25 13:35:36'),
(84, 'CIP0017', '11493d', 0, '2016-02-25 13:35:36'),
(85, 'CIP0018', '468833', 0, '2016-02-25 13:35:49'),
(86, 'CIP0019', '178592', 0, '2016-02-25 13:35:49'),
(87, 'CIP0020', '45cb8f', 0, '2016-02-25 13:35:49'),
(88, 'CIP0021', 'b81bd3', 0, '2016-02-25 13:35:52'),
(89, 'CIP0022', 'b8492c', 0, '2016-02-25 13:35:52'),
(90, 'CIP0023', '74b084', 0, '2016-02-25 13:35:52'),
(91, 'CIP0024', 'e59f82', 0, '2016-02-25 13:36:04'),
(92, 'CIP0025', '42f4f8', 0, '2016-02-25 13:36:07'),
(93, 'CIP0026', 'b8f269', 0, '2016-02-25 13:36:07'),
(94, 'CIP0027', 'afa17b', 0, '2016-02-25 13:36:07'),
(95, 'CIP0028', '6ee80f', 0, '2016-02-25 13:36:13'),
(96, 'CIP0029', 'c8ac01', 0, '2016-02-25 13:36:13'),
(97, 'CIP0030', 'bf09c1', 0, '2016-02-25 13:36:14'),
(98, 'CIP0031', '730ee6', 0, '2016-02-25 13:36:14'),
(99, 'CIP0032', '5bd57f', 0, '2016-02-25 13:37:58'),
(100, 'CIP0033', '7c8b82', 0, '2016-02-25 13:37:58'),
(101, 'CIP0034', '0502b2', 0, '2016-02-25 13:37:58'),
(102, 'CIP0035', '3b8fb6', 0, '2016-02-25 13:38:13'),
(103, 'CIP0036', '2d6f80', 0, '2016-02-25 13:38:16'),
(104, 'CIP0037', '659769', 0, '2016-02-25 13:38:16'),
(105, 'CIP0038', '39890e', 0, '2016-02-25 13:40:58'),
(106, 'CIP0039', '3ccd95', 0, '2016-02-25 13:40:58'),
(107, 'CIP0040', '8d2987', 0, '2016-02-25 13:40:58'),
(108, 'CIP0041', '235aff', 0, '2016-02-25 13:41:03'),
(109, 'CIP0042', '6febef', 0, '2016-02-25 13:41:03'),
(110, 'CIP0043', 'a3a1d8', 0, '2016-02-25 13:41:03'),
(111, 'CIP0044', 'a3d1dc', 0, '2016-02-25 13:41:11'),
(112, 'CIP0045', '685603', 0, '2016-02-25 13:41:11'),
(113, 'CIP0046', '6a0bfd', 0, '2016-02-25 13:41:11'),
(114, 'CIP0047', '35dc1f', 0, '2016-02-25 13:41:11'),
(115, 'CIP0048', '33ef55', 0, '2016-02-25 13:41:21'),
(116, 'CIP0049', '8c226f', 0, '2016-02-25 13:48:30'),
(117, 'CIP0050', '2f3a7e', 0, '2016-02-25 13:48:30'),
(118, 'CIP0051', '4bad2c', 0, '2016-02-25 13:48:31'),
(119, 'CIP0052', '9251d0', 0, '2016-02-25 13:48:34'),
(120, 'CIP0053', 'cb8dea', 0, '2016-02-25 13:48:34'),
(121, 'CIP0054', '8e98f6', 0, '2016-02-25 13:48:34'),
(122, 'CIP0055', 'e482b6', 0, '2016-02-25 13:48:36'),
(123, 'CIP0056', '7d3c1a', 0, '2016-02-25 13:48:36'),
(124, 'CIP0057', '89f551', 0, '2016-02-25 13:48:36'),
(125, 'CIP0058', 'b2f764', 0, '2016-02-25 13:48:36'),
(126, 'CIP0059', '860beb', 0, '2016-02-25 13:49:06'),
(127, 'CIP0060', '663ddb', 0, '2016-02-25 13:49:06'),
(128, 'CIP0061', '79af21', 0, '2016-02-25 13:49:06'),
(129, 'CIP0062', '1a4db0', 0, '2016-02-25 13:49:14'),
(130, 'CIP0063', '93069d', 0, '2016-02-25 13:49:14'),
(131, 'CIP0064', 'e933d8', 0, '2016-02-25 13:49:15'),
(132, 'CIP0065', '477621', 0, '2016-02-25 13:49:15'),
(133, 'CIP0066', 'c018c1', 0, '2016-02-25 13:49:24'),
(134, 'CIP0067', 'd27be4', 0, '2016-02-25 13:49:24'),
(135, 'CIP0068', '0ff2f5', 0, '2016-02-25 13:49:24'),
(136, 'CIP0069', '14c415', 0, '2016-02-25 13:49:25'),
(137, 'CIP0070', 'bcbc86', 0, '2016-02-25 13:53:14'),
(138, 'CIP0071', '7976b9', 0, '2016-02-25 13:53:14'),
(139, 'CIP0072', 'b26a64', 0, '2016-02-25 13:53:14'),
(140, 'CIP0073', 'd08b08', 0, '2016-02-25 13:53:23'),
(141, 'CIP0074', '71a9d1', 0, '2016-02-25 14:18:44'),
(142, 'CIP0075', '48b8b7', 0, '2016-02-25 14:18:44'),
(143, 'CIP0076', '05f1ca', 0, '2016-02-25 14:18:44'),
(144, 'CIP0077', '426038', 0, '2016-02-25 14:18:50'),
(145, 'CIP0078', 'b508b7', 0, '2016-02-25 14:18:50'),
(146, 'CIP0079', '3753ef', 0, '2016-02-25 14:18:50'),
(147, 'CIP0080', 'e790f0', 0, '2016-02-25 14:18:56'),
(148, 'CIP0081', 'e8a3df', 0, '2016-02-25 14:18:57'),
(149, 'CIP0082', '2d5b77', 0, '2016-02-25 14:18:57'),
(150, 'CIP0083', 'e12043', 0, '2016-02-25 14:18:59'),
(151, 'CIP0084', 'c97392', 0, '2016-02-25 14:18:59'),
(152, 'CIP0085', 'e1bf85', 0, '2016-02-25 14:18:59'),
(153, 'CIP0086', 'ac95bd', 0, '2016-02-25 14:19:02'),
(154, 'CIP0087', '42d09b', 0, '2016-02-25 14:19:02'),
(155, 'CIP0088', '1e42db', 0, '2016-02-25 14:19:12'),
(156, 'CIP0089', '8f46d5', 0, '2016-02-27 07:55:59'),
(157, 'CIP0090', '36ff78', 0, '2016-02-27 07:55:59'),
(158, 'CIP0091', 'aec081', 0, '2016-02-27 07:56:12'),
(159, 'CIP0092', 'bb2a10', 0, '2016-02-27 07:56:13'),
(160, 'CIP0093', 'f1d2e5', 0, '2016-02-27 07:56:13'),
(161, 'CIP0094', '7e45e5', 0, '2016-02-27 07:56:23'),
(162, 'CIP0095', 'f39f2f', 0, '2016-02-27 07:56:23'),
(163, 'CIP0096', '22023b', 0, '2016-02-27 07:56:23'),
(164, 'CIP0097', 'e07bc2', 0, '2016-02-27 07:57:04'),
(165, 'CIP0098', 'fc668c', 0, '2016-02-27 07:57:04'),
(166, 'CIP0099', 'cd946c', 0, '2016-02-27 07:57:05'),
(167, 'CIP00100', '9f2985', 0, '2016-02-27 07:57:05'),
(168, 'CIP00101', 'f47f40', 0, '2016-02-27 07:58:22'),
(169, 'CIP00102', 'a5732d', 0, '2016-02-27 07:58:22'),
(170, 'CIP00103', '264d58', 0, '2016-02-27 07:58:22'),
(171, 'CIP00104', '539923', 0, '2016-02-27 07:58:28'),
(172, 'CIP00105', '261398', 0, '2016-02-27 07:58:29'),
(173, 'CIP00106', 'd7746b', 0, '2016-02-27 07:58:29'),
(174, 'CIP00107', 'bf917f', 0, '2016-02-27 07:58:29'),
(175, 'CIP00108', 'e3cd5d', 0, '2016-02-27 07:58:42'),
(176, 'CIP00109', 'c48e38', 0, '2016-02-27 07:58:42'),
(177, 'CIP00110', '2c9ba5', 0, '2016-02-27 07:58:43'),
(178, 'CIP00111', '402a49', 0, '2016-02-27 07:58:43'),
(179, 'CIP00112', '4e2c8e', 0, '2016-02-27 07:58:51'),
(180, 'CIP00113', 'd3e91d', 0, '2016-02-27 07:58:52'),
(181, 'CIP00114', '03dc50', 0, '2016-02-27 07:58:52'),
(182, 'CIP00115', 'f9466d', 0, '2016-02-27 07:59:02'),
(183, 'CIP00116', '028f10', 0, '2016-02-27 07:59:42'),
(184, 'CIP00117', '40d758', 0, '2016-02-27 07:59:42'),
(185, 'CIP00118', '1d72e1', 0, '2016-02-27 07:59:42'),
(186, 'CIP00119', '1ca878', 0, '2016-02-27 07:59:54'),
(187, 'CIP00120', 'eb7fce', 0, '2016-02-27 07:59:54'),
(188, 'CIP00121', 'f1f6fe', 0, '2016-02-27 07:59:54'),
(189, 'CIP00122', '12a368', 0, '2016-02-27 08:00:05'),
(190, 'CIP00123', '70efa7', 0, '2016-02-27 08:00:05'),
(191, 'CIP00124', 'df8d7b', 0, '2016-02-27 08:00:05'),
(192, 'CIP00125', '90179d', 0, '2016-02-27 08:00:14'),
(193, 'CIP00126', 'e89470', 0, '2016-02-27 08:00:43'),
(194, 'CIP00127', '883f60', 0, '2016-02-27 08:00:43'),
(195, 'CIP00128', 'dc9229', 0, '2016-02-27 08:00:43'),
(196, 'CIP00129', 'f7f98e', 0, '2016-02-27 08:00:44'),
(197, 'CIP00130', 'd8ae1f', 0, '2016-02-27 08:00:44'),
(198, 'CIP00131', 'f124c8', 0, '2016-02-27 08:00:45'),
(199, 'CIP00132', '968a8e', 0, '2016-02-27 08:00:57'),
(200, 'CIP00133', '737893', 0, '2016-02-27 08:00:57'),
(201, 'CIP00134', 'ea487f', 0, '2016-02-27 08:00:57'),
(202, 'CIP00135', 'f822a3', 0, '2016-02-27 08:00:57'),
(203, 'CIP00136', '52775a', 0, '2016-02-27 08:01:07'),
(204, 'CIP00137', '9d9287', 0, '2016-02-27 08:02:21'),
(205, 'CIP00138', 'a86ac9', 0, '2016-02-27 08:02:21'),
(206, 'CIP00139', '35bc17', 0, '2016-02-27 08:02:35'),
(207, 'CIP00140', 'fe1ef8', 0, '2016-02-27 08:02:35'),
(208, 'CIP00141', 'a9cb5c', 0, '2016-02-27 08:02:36'),
(209, 'CIP00142', '48f859', 0, '2016-02-27 08:02:39'),
(210, 'CIP00143', '4aa1a6', 0, '2016-02-27 08:02:40'),
(211, 'CIP00144', '8a3777', 0, '2016-02-27 08:02:58'),
(212, 'CIP00145', '44e77b', 0, '2016-02-27 08:09:56'),
(213, 'CIP00146', '5fa79f', 0, '2016-02-27 08:09:56'),
(214, 'CIP00147', 'ca0c02', 0, '2016-02-27 08:09:56'),
(215, 'CIP00148', 'fd088d', 0, '2016-02-27 08:10:06'),
(216, 'CIP00149', '69f100', 0, '2016-02-27 08:46:36'),
(217, 'CIP00150', '9fbf6d', 0, '2016-02-27 08:46:37'),
(218, 'CIP00151', '370e01', 0, '2016-02-27 08:46:37'),
(219, 'CIP00152', 'c87d08', 0, '2016-02-27 08:46:59'),
(220, 'CIP00153', '25f108', 0, '2016-02-27 08:47:11'),
(221, 'CIP00154', 'eeb501', 0, '2016-02-27 08:47:11'),
(222, 'CIP00155', '8882a4', 0, '2016-02-27 08:47:11'),
(223, 'CIP00156', '190343', 0, '2016-02-27 09:02:38'),
(224, 'CIP00157', '733eb6', 0, '2016-02-27 09:07:21'),
(225, 'CIP00158', 'e7e6ab', 0, '2016-02-27 09:07:21'),
(226, 'CIP00159', '535046', 0, '2016-02-27 09:07:22'),
(227, 'CIP00160', '014aa7', 0, '2016-02-27 09:07:23'),
(228, 'CIP00161', '1290bb', 0, '2016-02-27 09:07:23'),
(229, 'CIP00162', 'cf766e', 0, '2016-02-27 09:07:32'),
(230, 'CIP00163', '0e9670', 0, '2016-02-27 09:08:47'),
(231, 'CIP00164', '406e5e', 0, '2016-02-27 09:08:47'),
(232, 'CIP00165', '113c5f', 0, '2016-02-27 09:08:47'),
(233, 'CIP00166', '8b5b56', 0, '2016-02-27 09:08:58'),
(234, 'CIP00167', '9fb1b9', 0, '2016-02-29 09:31:17'),
(235, 'CIP00168', '74158f', 0, '2016-02-29 09:31:18'),
(236, 'CIP00169', '4325a3', 0, '2016-02-29 09:31:27'),
(237, 'CIP00170', '64f5fb', 0, '2016-02-29 09:32:04'),
(238, 'CIP00171', '0f1685', 0, '2016-02-29 09:32:04'),
(239, 'CIP00172', 'c96fb1', 0, '2016-02-29 09:32:04'),
(240, 'CIP00173', '63c349', 0, '2016-02-29 09:32:07'),
(241, 'CIP00174', '52ca16', 0, '2016-02-29 09:32:07'),
(242, 'CIP00175', 'a3935b', 0, '2016-02-29 09:32:07'),
(243, 'CIP00176', 'dea8a7', 0, '2016-03-06 02:11:53'),
(244, 'CIP00177', '103fda', 0, '2016-03-06 02:11:54'),
(245, 'CIP00178', '67093e', 0, '2016-03-06 02:11:55'),
(246, 'CIP00179', 'f5bbdb', 0, '2016-03-06 02:12:05'),
(247, 'CIP00180', '77fa0a', 0, '2016-03-06 02:12:06'),
(248, 'CIP00181', 'fb2f93', 0, '2016-03-06 02:12:06'),
(249, 'CIP00182', 'f0e7c7', 0, '2016-03-06 02:12:06'),
(250, 'CIP00183', '8f72d8', 0, '2016-03-06 02:12:14'),
(251, 'CIP00184', '38669e', 0, '2016-03-06 02:12:14'),
(252, 'CIP00185', '1226a2', 0, '2016-03-06 02:12:15'),
(253, 'CIP00186', 'a4a291', 0, '2016-03-06 02:12:15'),
(254, 'CIP00187', '9c9cb3', 0, '2016-03-06 02:12:27'),
(255, 'CIP00188', 'bc3b61', 0, '2016-03-06 02:12:27'),
(256, 'CIP00189', '42b943', 0, '2016-03-06 02:12:27'),
(257, 'CIP00190', '968174', 0, '2016-03-06 02:12:28'),
(258, 'CIP00191', '699e1a', 0, '2016-03-06 02:13:36'),
(259, 'CIP00192', 'da8ad3', 0, '2016-03-06 02:13:36'),
(260, 'CIP00193', '10754f', 0, '2016-03-06 02:13:40'),
(261, 'CIP00194', '0aa74e', 0, '2016-03-06 02:13:40'),
(262, 'CIP00195', '37c8df', 0, '2016-03-06 02:13:40'),
(263, 'CIP00196', 'b42066', 0, '2016-03-06 02:13:44'),
(264, 'CIP00197', '64e2da', 0, '2016-03-06 02:13:44'),
(265, 'CIP00198', '12f7a2', 0, '2016-03-06 02:13:44'),
(266, 'CIP00199', '33bda6', 0, '2016-03-06 02:13:46'),
(267, 'CIP00200', 'f538de', 0, '2016-03-06 02:13:46'),
(268, 'CIP00201', '0a999c', 0, '2016-03-06 02:13:47'),
(269, 'CIP00202', '668091', 0, '2016-03-06 02:14:23'),
(270, 'CIP00203', 'd4bc67', 0, '2016-03-06 02:14:23'),
(271, 'CIP00204', '51b081', 0, '2016-03-06 02:14:23'),
(272, 'CIP00205', '3557ba', 0, '2016-03-06 02:18:02'),
(273, 'CIP00206', '041d4b', 0, '2016-03-06 02:18:03'),
(274, 'CIP00207', '93a6c3', 0, '2016-03-06 02:18:03'),
(275, 'CIP00208', '6fef10', 0, '2016-03-06 02:18:21'),
(276, 'CIP00209', '3d20e4', 0, '2016-03-06 02:18:29'),
(277, 'CIP00210', '13ad94', 0, '2016-03-06 02:18:29'),
(278, 'CIP00211', '548e3b', 0, '2016-03-06 02:18:29'),
(279, 'CIP00212', 'bf5728', 0, '2016-03-06 02:18:36'),
(280, 'CIP00213', '4aefa2', 0, '2016-03-06 02:23:53'),
(281, 'CIP00214', '1a3d1d', 0, '2016-03-06 02:23:53'),
(282, 'CIP00215', 'fce87d', 0, '2016-03-06 02:23:54'),
(283, 'CIP00216', 'bf4dd0', 0, '2016-03-06 02:49:05'),
(284, 'CIP00217', 'b88541', 0, '2016-03-06 02:49:05'),
(285, 'CIP00218', '62f4f7', 0, '2016-03-06 02:49:05'),
(286, 'CIP00219', '6a8cee', 0, '2016-03-06 02:49:08'),
(287, 'CIP00220', '503a2f', 0, '2016-03-06 02:49:08'),
(288, 'CIP00221', '34d263', 0, '2016-03-06 02:49:08'),
(289, 'CIP00222', '7278cd', 0, '2016-03-06 02:49:19'),
(290, 'CIP00223', '4253bf', 0, '2016-03-06 11:27:05'),
(291, 'CIP00224', 'a3e040', 0, '2016-03-06 11:27:05'),
(292, 'CIP00225', 'b8556a', 0, '2016-03-06 11:27:05'),
(293, 'CIP00226', 'daa2a5', 0, '2016-03-06 11:27:14'),
(294, 'CIP00227', '413c2a', 0, '2016-03-06 12:09:35'),
(295, 'CIP00228', 'd42b2f', 0, '2016-03-06 12:09:35'),
(296, 'CIP00229', '9b7c4b', 0, '2016-03-06 12:09:35'),
(297, 'CIP00230', '028820', 0, '2016-03-06 12:09:43'),
(298, 'CIP00231', '3f9d2d', 0, '2016-03-06 13:10:52'),
(299, 'CIP00232', 'fc6774', 0, '2016-03-06 13:10:52'),
(300, 'CIP00233', '44da12', 0, '2016-03-06 13:11:10'),
(301, 'CIP00234', '3e3abf', 0, '2016-03-06 13:11:11'),
(302, 'CIP00235', '09d488', 0, '2016-03-06 13:32:58'),
(303, 'CIP00236', '3d4e6e', 0, '2016-03-06 13:32:58'),
(304, 'CIP00237', '408752', 0, '2016-03-06 13:37:42'),
(305, 'CIP00238', '38c1c5', 0, '2016-03-06 13:37:42'),
(306, 'CIP00239', '747d8a', 0, '2016-03-06 13:37:50'),
(307, 'CIP00240', '40a387', 0, '2016-03-06 14:03:54'),
(308, 'CIP00241', '127cd9', 0, '2016-03-06 14:03:54'),
(309, 'CIP00242', '3babf7', 0, '2016-03-06 14:03:54'),
(310, 'CIP00243', '10a497', 0, '2016-03-06 14:04:02'),
(311, 'CIP00244', '29716c', 0, '2016-03-06 14:06:25'),
(312, 'CIP00245', 'e04ff6', 0, '2016-03-06 14:06:25'),
(313, 'CIP00246', '7b18e2', 0, '2016-03-06 14:06:25'),
(314, 'CIP00247', '8d4bc7', 0, '2016-03-06 14:07:32'),
(315, 'CIP00248', 'a0fdeb', 0, '2016-03-06 14:39:45'),
(316, 'CIP00249', '4308d1', 0, '2016-03-06 14:39:45'),
(317, 'CIP00250', '9e8b96', 0, '2016-03-06 14:57:13'),
(318, 'CIP00251', 'e55471', 0, '2016-03-06 14:57:13'),
(319, 'CIP00252', 'ea7e2c', 0, '2016-03-06 14:57:13'),
(320, 'CIP00253', '671977', 0, '2016-03-06 14:57:17'),
(321, 'CIP00254', '53d668', 0, '2016-03-06 14:57:18'),
(322, 'CIP00255', 'be2f91', 0, '2016-03-06 14:57:18'),
(323, 'CIP00256', '89c015', 0, '2016-03-06 14:57:40'),
(324, 'CIP00257', '422619', 0, '2016-03-06 14:57:40'),
(325, 'CIP00258', '2f8a7e', 0, '2016-03-06 14:57:40'),
(326, 'CIP00259', 'd76218', 0, '2016-03-06 14:57:47'),
(327, 'CIP00260', '7954d0', 0, '2016-03-06 15:24:13'),
(328, 'CIP00261', '060b86', 0, '2016-03-06 15:24:13'),
(329, 'CIP00262', 'e367bc', 0, '2016-03-06 15:24:13'),
(330, 'CIP00263', '69c09e', 0, '2016-03-06 15:24:28'),
(331, 'CIP00264', '43f19e', 0, '2016-03-06 15:28:48'),
(332, 'CIP00265', 'af3512', 0, '2016-03-06 15:28:48'),
(333, 'CIP00266', '1a10c7', 0, '2016-03-06 15:28:48'),
(334, 'CIP00267', '184fb9', 0, '2016-03-06 16:07:54'),
(335, 'CIP00268', '371c87', 0, '2016-03-06 16:07:54'),
(336, 'CIP00269', 'fd4974', 0, '2016-03-06 16:07:55'),
(337, 'CIP00270', '6d67f6', 0, '2016-03-06 16:25:40'),
(338, 'CIP00271', '9da212', 0, '2016-03-06 16:25:40'),
(339, 'CIP00272', '990e67', 0, '2016-03-06 16:25:49'),
(340, 'CIP00273', 'ba2b28', 0, '2016-03-06 16:25:49'),
(341, 'CIP00274', 'f8a0b3', 0, '2016-03-06 16:25:49'),
(342, 'CIP00275', '757217', 0, '2016-03-06 16:25:49'),
(343, 'CIP00276', '498851', 0, '2016-03-06 16:25:58'),
(344, 'CIP00277', '261a63', 0, '2016-03-06 16:25:58'),
(345, 'CIP00278', '3ba8da', 0, '2016-03-06 16:25:58'),
(346, 'CIP00279', '4beca0', 0, '2016-03-06 16:25:59'),
(347, 'CIP00280', 'b955fd', 0, '2016-03-06 16:26:10'),
(348, 'CIP00281', 'c4cb02', 0, '2016-03-06 16:26:10'),
(349, 'CIP00282', 'd6f183', 0, '2016-03-06 16:26:10'),
(350, 'CIP00283', 'd5c0e6', 0, '2016-03-06 16:26:10'),
(351, 'CIP00284', 'cc41fb', 0, '2016-03-06 16:26:19'),
(352, 'CIP00285', 'd663c6', 0, '2016-03-06 16:26:20'),
(353, 'CIP00286', '698793', 0, '2016-03-06 16:26:20'),
(354, 'CIP00287', '214f3e', 0, '2016-03-06 16:26:20'),
(355, 'CIP00288', 'afeb66', 0, '2016-03-06 16:26:27'),
(356, 'CIP00289', '7d55b3', 0, '2016-03-06 16:26:28'),
(357, 'CIP00290', '4070f8', 0, '2016-03-06 16:26:28'),
(358, 'CIP00291', 'dba59a', 0, '2016-03-06 16:26:28'),
(359, 'CIP00292', '6943d8', 0, '2016-03-06 16:26:32'),
(360, 'CIP00293', 'bde0ff', 0, '2016-03-06 16:26:32'),
(361, 'CIP00294', 'c53406', 0, '2016-03-06 16:26:59'),
(362, 'CIP00295', '8ef67a', 0, '2016-03-06 16:27:03'),
(363, 'CIP00296', 'db22f1', 0, '2016-03-06 16:27:14'),
(364, 'CIP00297', '5dc2f2', 0, '2016-03-06 16:27:23'),
(365, 'CIP00298', 'f4cdb9', 0, '2016-03-06 16:27:37'),
(366, 'CIP00299', '9c1f20', 0, '2016-03-06 16:27:46'),
(367, 'CIP00300', '6e37b4', 0, '2016-03-06 16:27:48'),
(368, 'CIP00301', 'bd39a2', 0, '2016-03-06 16:27:50'),
(369, 'CIP00302', '67e5ba', 0, '2016-03-06 16:27:53'),
(370, 'CIP00303', '731f56', 0, '2016-03-06 16:28:00'),
(371, 'CIP00304', 'b351a6', 0, '2016-03-06 16:28:43'),
(372, 'CIP00305', 'dcc936', 0, '2016-03-06 16:28:55'),
(373, 'CIP00306', 'd01e8a', 0, '2016-03-06 16:38:51'),
(374, 'CIP00307', '50a358', 0, '2016-03-06 16:39:02'),
(375, 'CIP00308', '7c3fe0', 0, '2016-03-06 16:40:24'),
(376, 'CIP00309', '3f6f9d', 0, '2016-03-06 16:44:29'),
(377, 'CIP00310', '782cb6', 0, '2016-03-06 16:44:56'),
(378, 'CIP00311', '14694b', 0, '2016-03-06 16:46:31'),
(379, 'CIP00312', '47be2c', 0, '2016-03-06 16:46:34'),
(380, 'CIP00313', '69efe1', 0, '2016-03-07 01:39:15'),
(381, 'CIP00314', 'd46c8c', 0, '2016-03-07 01:39:15'),
(382, 'CIP00315', '44403e', 0, '2016-03-07 01:39:29'),
(383, 'CIP00316', '13d74a', 0, '2016-03-07 01:39:29'),
(384, 'CIP00317', 'cf6ae9', 0, '2016-03-07 01:39:29'),
(385, 'CIP00318', '0809d6', 0, '2016-03-07 01:39:30'),
(386, 'CIP00319', '1930ac', 0, '2016-03-07 01:39:30'),
(387, 'CIP00320', '440a3f', 0, '2016-03-07 01:39:30'),
(388, 'CIP00321', 'f9ff98', 0, '2016-03-07 01:39:41'),
(389, 'CIP00322', 'a62ea4', 0, '2016-03-07 01:42:11'),
(390, 'CIP00323', '4fa365', 0, '2016-03-07 01:42:11'),
(391, 'CIP00324', 'c0e25f', 0, '2016-03-07 01:46:38'),
(392, 'CIP00325', '06a42d', 0, '2016-03-07 01:46:38'),
(393, 'CIP00326', 'aff186', 0, '2016-03-07 01:47:49'),
(394, 'CIP00327', 'bb1046', 0, '2016-03-07 01:47:49'),
(395, 'CIP00328', '0ca08b', 0, '2016-03-07 01:47:56'),
(396, 'CIP00329', '029095', 0, '2016-03-07 01:47:56'),
(397, 'CIP00330', '9f1919', 0, '2016-03-07 01:48:17'),
(398, 'CIP00331', '3325cb', 0, '2016-03-07 08:06:32'),
(399, 'CIP00332', '4894ce', 0, '2016-03-07 08:06:33'),
(400, 'CIP00333', 'dc6002', 0, '2016-03-07 08:06:33'),
(401, 'CIP00334', '9f5ccb', 0, '2016-03-07 08:07:08'),
(402, 'CIP00335', '8829a9', 0, '2016-03-07 08:08:08'),
(403, 'CIP00336', 'af32d7', 0, '2016-03-07 08:08:08'),
(404, 'CIP00337', '39da90', 0, '2016-03-07 08:09:06'),
(405, 'CIP00338', 'f56cd7', 0, '2016-03-07 08:09:06'),
(406, 'CIP00339', '2fa67c', 0, '2016-03-07 08:09:07'),
(407, 'CIP00340', 'd536c4', 0, '2016-03-07 08:09:16'),
(408, 'CIP00341', 'f1f473', 0, '2016-03-07 08:14:19'),
(409, 'CIP00342', '262992', 0, '2016-03-07 08:14:20'),
(410, 'CIP00343', 'f006ed', 0, '2016-03-07 08:14:28'),
(411, 'CIP00344', '1f76e7', 0, '2016-03-07 08:22:14'),
(412, 'CIP00345', '07d271', 0, '2016-03-07 08:22:15'),
(413, 'CIP00346', '015be5', 0, '2016-03-07 08:22:19'),
(414, 'CIP00347', '8c4687', 0, '2016-03-07 08:22:19'),
(415, 'CIP00348', 'beb2b8', 0, '2016-03-07 08:22:19'),
(416, 'CIP00349', 'c732dd', 0, '2016-03-07 08:26:57'),
(417, 'CIP00350', 'ce6d1e', 0, '2016-03-07 08:28:51'),
(418, 'CIP00351', '8fb766', 0, '2016-03-07 08:28:51'),
(419, 'CIP00352', 'fd09c1', 0, '2016-03-07 08:29:04'),
(420, 'CIP00353', 'b7beae', 0, '2016-03-07 08:35:29'),
(421, 'CIP00354', 'd06411', 0, '2016-03-07 08:35:29'),
(422, 'CIP00355', 'a1d771', 0, '2016-03-07 08:35:45'),
(423, 'CIP00356', '27975c', 0, '2016-03-07 08:35:57'),
(424, 'CIP00357', '9f19ec', 0, '2016-03-07 08:35:59'),
(425, 'CIP00358', 'ab9e8c', 0, '2016-03-07 08:47:42'),
(426, 'CIP00359', '985ac2', 0, '2016-03-07 08:47:42'),
(427, 'CIP00360', 'eb1a4d', 0, '2016-03-07 08:57:51'),
(428, 'CIP00361', '1abd7a', 0, '2016-03-07 09:04:36'),
(429, 'CIP00362', '99570d', 0, '2016-03-07 09:04:36'),
(430, 'CIP00363', 'd2ccdf', 0, '2016-03-07 09:04:37'),
(431, 'CIP00364', 'bd867f', 0, '2016-03-07 09:18:16'),
(432, 'CIP00365', '48ce57', 0, '2016-03-07 09:18:17'),
(433, 'CIP00366', '4b8988', 0, '2016-03-07 09:46:01'),
(434, 'CIP00367', '8006b5', 0, '2016-03-07 09:46:01'),
(435, 'CIP00368', 'b59328', 0, '2016-03-07 09:47:03'),
(436, 'CIP00369', 'd6b730', 0, '2016-03-07 09:47:04'),
(437, 'CIP00370', 'f2d959', 0, '2016-03-07 09:47:05'),
(438, 'CIP00371', '4d9755', 0, '2016-03-07 09:47:16'),
(439, 'CIP00372', '489b8b', 0, '2016-03-13 13:31:19'),
(440, 'CIP00373', 'f7069b', 0, '2016-03-13 13:31:20'),
(441, 'CIP00374', 'e4b1b4', 0, '2016-03-13 13:31:56'),
(442, 'CIP00375', '57fb45', 0, '2016-03-13 13:31:56'),
(443, 'CIP00376', '4b5b25', 0, '2016-03-13 13:31:56'),
(444, 'CIP00377', 'a6c57d', 0, '2016-03-13 13:32:03'),
(445, 'CIP00378', '432938', 0, '2016-03-13 13:32:03'),
(446, 'CIP00379', 'da5287', 0, '2016-03-13 13:32:16'),
(447, 'CIP00380', '2e2e79', 0, '2016-03-13 13:32:59'),
(448, 'CIP00381', 'fddf15', 0, '2016-03-13 13:32:59'),
(449, 'CIP00382', '914c77', 0, '2016-03-13 13:33:10'),
(450, 'CIP00383', '9147e2', 0, '2016-03-13 13:33:27'),
(451, 'CIP00384', 'b8b303', 0, '2016-03-13 13:33:27'),
(452, 'CIP00385', '8979bb', 0, '2016-03-13 16:54:10'),
(453, 'CIP00386', '27ce0f', 0, '2016-03-13 16:54:10'),
(454, 'CIP00387', '6d5e6c', 0, '2016-03-14 03:49:12'),
(455, 'CIP00388', 'f0c685', 0, '2016-03-14 03:49:13'),
(456, 'CIP00389', '2bf092', 0, '2016-03-14 03:49:13'),
(457, 'CIP00390', 'e01566', 0, '2016-03-14 08:30:56'),
(458, 'CIP00391', '5eb6fa', 0, '2016-03-14 08:30:56'),
(459, 'CIP00392', '80ac77', 0, '2016-03-14 08:44:48'),
(460, 'CIP00393', 'c3ccd7', 0, '2016-03-14 08:49:40'),
(461, 'CIP00394', '130e6b', 0, '2016-03-14 08:49:40'),
(462, 'CIP00395', '30d0b8', 0, '2016-03-14 08:49:53'),
(463, 'CIP00396', '5ab139', 0, '2016-03-14 08:51:45'),
(464, 'CIP00397', '3e66a7', 0, '2016-03-14 08:51:45'),
(465, 'CIP00398', 'f7a78d', 0, '2016-03-14 08:51:56'),
(466, 'CIP00399', '64631d', 0, '2016-03-14 08:52:54'),
(467, 'CIP00400', 'afdd17', 0, '2016-03-14 08:52:54'),
(468, 'CIP00401', '40ba30', 0, '2016-03-14 08:54:07'),
(469, 'CIP00402', 'e4e251', 0, '2016-03-14 08:54:08'),
(470, 'CIP00403', '95210e', 0, '2016-03-14 08:54:09'),
(471, 'CIP00404', 'cf14de', 0, '2016-03-14 08:54:20'),
(472, 'CIP00405', '5c9f37', 0, '2016-03-14 08:55:37'),
(473, 'CIP00406', '62e9d1', 0, '2016-03-14 08:55:37'),
(474, 'CIP00407', '57791f', 0, '2016-03-14 08:56:23'),
(475, 'CIP00408', 'eb3001', 0, '2016-03-14 08:56:23'),
(476, 'CIP00409', 'f36cfd', 0, '2016-03-14 08:56:49'),
(477, 'CIP00410', '3d028f', 0, '2016-03-14 08:56:50'),
(478, 'CIP00411', '973722', 0, '2016-03-14 08:56:57'),
(479, 'CIP00412', '5b9882', 0, '2016-03-14 09:03:33'),
(480, 'CIP00413', '011741', 0, '2016-03-14 09:03:33'),
(481, 'CIP00414', '935744', 0, '2016-03-14 09:09:23'),
(482, 'CIP00415', '37b13d', 0, '2016-03-14 09:09:23'),
(483, 'CIP00416', 'd5e148', 0, '2016-03-14 09:13:51'),
(484, 'CIP00417', 'cf49eb', 0, '2016-03-14 09:13:51'),
(485, 'CIP00418', '6c925a', 0, '2016-03-14 09:13:51'),
(486, 'CIP00419', '714f37', 0, '2016-03-14 10:13:35'),
(487, 'CIP00420', '9dd007', 0, '2016-03-14 10:13:35'),
(488, 'CIP00421', '49c7b4', 0, '2016-03-14 10:13:35'),
(489, 'CIP00422', '666154', 0, '2016-03-14 10:16:57'),
(490, 'CIP00423', 'ee186c', 0, '2016-03-22 05:44:10'),
(491, 'CIP00424', '35d6c1', 0, '2016-03-22 05:44:10'),
(492, 'CIP00425', 'ecd06e', 0, '2016-03-22 05:44:16'),
(493, 'CIP00426', '33921a', 0, '2016-03-22 05:44:17'),
(494, 'CIP00427', '6c4f34', 0, '2016-03-22 05:44:17'),
(495, 'CIP00428', '2a4f32', 0, '2016-03-22 05:44:57'),
(496, 'CIP00429', '3f88c3', 0, '2016-03-22 05:44:57'),
(497, 'CIP00430', 'd5b85e', 0, '2016-03-22 05:48:49'),
(498, 'CIP00431', '5b12b2', 0, '2016-03-22 05:48:49'),
(499, 'CIP00432', '06b333', 0, '2016-04-04 09:52:43'),
(500, 'CIP00433', '91d54e', 0, '2016-04-04 09:52:43'),
(501, 'CIP00434', '140b4c', 0, '2016-04-04 10:03:05'),
(502, 'CIP00435', '68e5cb', 0, '2016-04-04 10:03:05'),
(503, 'CIP00436', '3e09f0', 0, '2016-04-04 10:04:03'),
(504, 'CIP00437', '81fc6c', 0, '2016-04-04 10:04:03'),
(505, 'CIP00438', '806939', 0, '2016-04-04 10:04:03'),
(506, 'CIP00439', '77dd6d', 0, '2016-04-04 10:04:10'),
(507, 'CIP00440', 'f19aa8', 0, '2016-04-04 10:04:10'),
(508, 'CIP00441', 'd260ca', 0, '2016-04-04 10:04:19'),
(509, 'CIP00442', 'd9c4b6', 0, '2016-04-09 18:26:44'),
(510, 'CIP00443', '734472', 0, '2016-04-09 18:26:44'),
(511, 'CIP00444', '0e3e19', 0, '2016-04-09 18:26:49'),
(512, 'CIP00445', '85e94d', 0, '2016-04-09 18:26:49'),
(513, 'CIP00446', 'd497ad', 0, '2016-04-09 18:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `dev`
--

CREATE TABLE `dev` (
  `itemID1` int(11) NOT NULL DEFAULT '0',
  `itemID2` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `sum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemID1`,`itemID2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dev`
--

INSERT INTO `dev` (`itemID1`, `itemID2`, `count`, `sum`) VALUES
(1, 2, 4, -4),
(2, 1, 4, 4),
(2, 2, 4, 0),
(2, 3, 4, -4),
(3, 2, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ffmaster`
--

CREATE TABLE `ffmaster` (
  `id` int(5) NOT NULL,
  `userid` int(10) NOT NULL,
  `food` varchar(20) NOT NULL,
  `timetaken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `idmaster`
--

CREATE TABLE `idmaster` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `food` varchar(20) NOT NULL,
  `timetaken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menucard`
--

CREATE TABLE `menucard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `food` varchar(20) DEFAULT NULL,
  `time` int(5) DEFAULT NULL,
  `choice` int(2) DEFAULT '1',
  `cost` int(5) DEFAULT NULL,
  `machine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menucard`
--

INSERT INTO `menucard` (`id`, `food`, `time`, `choice`, `cost`, `machine`) VALUES
(1, 'Idly', 1, 1, 10, 1),
(2, 'Dhosai', 5, 1, 20, 1),
(3, 'Chappathi', 3, 1, 20, 2),
(4, 'Chicken fired rice', 5, 0, 10, 3),
(5, 'Parotta', 3, 1, 20, 2),
(6, 'Briyani', 5, 1, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `food` varchar(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `queuetime` int(5) NOT NULL,
  `timecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `food`, `quantity`, `queuetime`, `timecreate`) VALUES
(1, 'CIP00237', 'Idly', 2, 0, '0000-00-00 00:00:00'),
(2, 'CIP00237', 'Pongal', 1, 0, '0000-00-00 00:00:00'),
(3, 'CIP00237', 'Idly', 2, 0, '0000-00-00 00:00:00'),
(4, 'CIP00237', 'Dhosai', 2, 0, '0000-00-00 00:00:00'),
(5, 'CIP00237', 'Pongal', 2, 0, '0000-00-00 00:00:00'),
(6, 'CIP001', 'Idly', 4, 0, '0000-00-00 00:00:00'),
(7, 'CIP001', 'Pongal', 2, 0, '0000-00-00 00:00:00'),
(8, 'CIP001', 'Idly', 3, 0, '0000-00-00 00:00:00'),
(9, 'CIP001', 'Dhosai', 4, 0, '0000-00-00 00:00:00'),
(10, 'CIP001', 'Pongal', 1, 0, '0000-00-00 00:00:00'),
(11, 'CIP001', 'Idly', 1, 0, '0000-00-00 00:00:00'),
(12, 'CIP001', 'Idly', 1, 0, '0000-00-00 00:00:00'),
(13, 'CIP001', 'Dhosai', 2, 0, '0000-00-00 00:00:00'),
(14, 'CIP001', 'Idly', 2, 0, '0000-00-00 00:00:00'),
(15, 'CIP00260', 'Idly', 2, 0, '0000-00-00 00:00:00'),
(16, 'CIP00260', 'Dhosai', 3, 0, '0000-00-00 00:00:00'),
(17, 'CIP00260', 'Pongal', 2, 0, '0000-00-00 00:00:00'),
(18, 'CIP00305', 'Idly', 4, 0, '0000-00-00 00:00:00'),
(19, 'CIP00305', 'Idly', 3, 0, '0000-00-00 00:00:00'),
(20, 'CIP00307', 'Idly', 4, 0, '0000-00-00 00:00:00'),
(21, 'CIP00307', 'Dhosai', 1, 0, '0000-00-00 00:00:00'),
(22, 'CIP00307', 'Idly', 4, 0, '0000-00-00 00:00:00'),
(23, 'CIP00307', 'Dhosai', 2, 0, '0000-00-00 00:00:00'),
(24, 'CIP00307', 'Pongal', 3, 0, '0000-00-00 00:00:00'),
(25, 'CIP00307', 'Idly', 6, 0, '0000-00-00 00:00:00'),
(26, 'CIP00307', 'Chicken', 2, 0, '0000-00-00 00:00:00'),
(27, 'CIP00310', 'Idly', 4, 0, '0000-00-00 00:00:00'),
(28, 'CIP00310', 'Dhosai', 2, 0, '0000-00-00 00:00:00'),
(29, 'CIP00310', 'Pongal', 3, 0, '0000-00-00 00:00:00'),
(30, 'CIP00328', 'Idly', 1, 0, '0000-00-00 00:00:00'),
(31, 'CIP00328', 'Pongal', 2, 0, '0000-00-00 00:00:00'),
(32, 'CIP00328', 'Idly', 1, 0, '2016-03-07 03:01:34'),
(33, 'CIP00328', 'Chappathi', 1, 0, '2016-03-07 03:01:34'),
(34, 'CIP00328', 'Dhosai', 1, 0, '2016-03-07 03:02:31'),
(35, 'CIP00328', 'Chappathi', 1, 0, '2016-03-07 03:02:31'),
(36, 'CIP00328', 'Dhosai', 1, 0, '2016-03-07 03:04:26'),
(37, 'CIP00328', 'Dhosai', 1, 0, '2016-03-07 03:04:28'),
(38, 'CIP00328', 'Idly', 1, 0, '2016-03-07 03:04:40'),
(39, 'CIP00328', 'Dhosai', 1, 0, '2016-03-07 03:04:40'),
(40, 'CIP00328', 'Chappathi', 1, 0, '2016-03-07 03:04:40'),
(41, 'CIP00328', 'Dhosai', 2, 0, '2016-03-07 03:05:16'),
(61, 'CIP00337', 'Idly', 13, 0, '2016-03-07 08:09:37'),
(62, 'CIP00337', 'Dhosai', 6, 0, '2016-03-07 08:09:37'),
(63, 'CIP00341', 'Idly', 4, 0, '2016-03-07 08:14:40'),
(64, 'CIP00346', 'Idly', 2, 0, '2016-03-07 08:27:28'),
(65, 'CIP00346', 'Dhosai', 2, 0, '2016-03-07 08:27:28'),
(66, 'CIP00350', 'Dhosai', 3, 0, '2016-03-07 08:39:50'),
(67, 'CIP00350', 'Dhosai', 5, 0, '2016-03-07 08:41:03'),
(80, 'CIP00368', 'Dhosai', 2, 0, '2016-03-07 09:47:21'),
(81, 'CIP00368', 'Dhosai', 3, 0, '2016-03-07 09:47:26'),
(82, 'CIP00377', 'Dhosai', 2, 0, '2016-03-13 13:32:24'),
(83, 'CIP00377', 'Dhosai', 3, 0, '2016-03-13 13:32:29'),
(84, 'CIP00377', 'Idly', 1, 0, '2016-03-13 13:32:47'),
(85, 'CIP00380', 'Dhosai', 1, 0, '2016-03-13 13:33:16'),
(86, 'CIP00380', 'Dhosai', 2, 0, '2016-03-13 13:33:20'),
(87, 'CIP00390', 'Dhosai', 2, 0, '2016-03-14 08:44:55'),
(88, 'CIP00390', 'Dhosai', 3, 0, '2016-03-14 08:45:00'),
(89, 'CIP00390', 'Chappathi', 2, 0, '2016-03-14 08:45:49'),
(90, 'CIP00390', 'Chappathi', 2, 0, '2016-03-14 08:45:53'),
(91, 'CIP00390', 'Chappathi', 1, 0, '2016-03-14 08:48:44'),
(92, 'CIP00393', 'Chappathi', 2, 0, '2016-03-14 08:50:07'),
(93, 'CIP00393', 'Chappathi', 1, 0, '2016-03-14 08:50:11'),
(94, 'CIP00396', 'Dhosai', 1, 0, '2016-03-14 08:52:03'),
(95, 'CIP00396', 'Dhosai', 2, 0, '2016-03-14 08:52:07'),
(96, 'CIP00409', 'Idly', 2, 0, '2016-03-14 09:01:01'),
(97, 'CIP00409', 'Dhosai', 8, 0, '2016-03-14 09:01:01'),
(98, 'CIP00409', 'Chappathi', 7, 0, '2016-03-14 09:01:01'),
(99, 'CIP00409', 'Idly', 2, 0, '2016-03-14 09:01:48'),
(100, 'CIP00409', 'Dhosai', 8, 0, '2016-03-14 09:01:48'),
(101, 'CIP00409', 'Chappathi', 7, 0, '2016-03-14 09:01:48'),
(102, 'CIP00419', 'Dhosai', 1, 0, '2016-03-14 10:18:49'),
(103, 'CIP00419', 'Dhosai', 2, 0, '2016-03-14 10:18:53'),
(104, 'CIP00439', 'Idly', 6, 0, '2016-04-04 10:04:38'),
(105, 'CIP00439', 'Chappathi', 5, 0, '2016-04-04 10:04:38'),
(106, 'CIP00444', 'Idly', 2, 0, '2016-04-09 18:27:19'),
(107, 'CIP00444', 'Idly', 2, 0, '2016-04-09 18:27:25'),
(108, 'CIP00444', 'Chappathi', 1, 0, '2016-04-09 18:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `ratingValue` int(11) NOT NULL,
  `datetimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `userID`, `itemID`, `ratingValue`, `datetimestamp`) VALUES
(1, 1, 1, 7, '2016-03-13 11:14:30'),
(2, 2, 1, 8, '2016-03-13 11:14:30'),
(3, 3, 2, 7, '2016-03-13 11:15:04'),
(4, 4, 2, 8, '2016-03-13 11:15:04'),
(5, 5, 3, 6, '2016-03-13 11:15:19'),
(6, 6, 3, 8, '2016-03-13 11:15:19'),
(7, 7, 4, 6, '2016-03-13 11:15:33'),
(8, 8, 4, 8, '2016-03-13 11:15:33'),
(9, 9, 5, 9, '2016-03-13 11:15:56'),
(10, 10, 5, 7, '2016-03-13 11:15:56'),
(11, 11, 6, 7, '2016-03-13 11:16:18'),
(12, 12, 6, 10, '2016-03-13 11:16:18'),
(13, 13, 2, 8, '2016-03-13 11:17:00'),
(14, 14, 2, 7, '2016-03-13 11:17:00'),
(15, 15, 4, 10, '2016-03-13 11:17:46'),
(16, 16, 4, 9, '2016-03-13 11:17:46'),
(17, 17, 6, 7, '2016-03-13 11:18:09'),
(18, 18, 6, 8, '2016-03-13 11:18:09'),
(19, 19, 3, 8, '2016-03-13 11:18:42'),
(20, 20, 6, 4, '2016-03-13 11:18:42'),
(21, 1, 2, 8, '2016-03-14 07:56:47'),
(22, 1, 3, 9, '2016-03-14 07:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `tokengiver`
--

CREATE TABLE `tokengiver` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `token` int(11) NOT NULL,
  `timecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;