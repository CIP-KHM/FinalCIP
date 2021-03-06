-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2016 at 06:57 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

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
`id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'CIPADMIN001', '85adminceg'),
(2, 'CIPADMIN002', '16adminceg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
`id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `checkin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=latin1;

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
(379, 'CIP00312', '47be2c', 0, '2016-03-06 16:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `menucard`
--

CREATE TABLE `menucard` (
`id` int(11) unsigned NOT NULL,
  `food` varchar(20) DEFAULT NULL,
  `time` int(5) DEFAULT NULL,
  `choice` int(2) DEFAULT '1',
  `cost` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menucard`
--

INSERT INTO `menucard` (`id`, `food`, `time`, `choice`, `cost`) VALUES
(1, 'Idly', 5, 1, 10),
(2, 'Dhosai', 10, 1, 20),
(3, 'Pongal', 5, 1, 20),
(4, 'Chicken fired rice', 5, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
`id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `food` varchar(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `queuetime` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `food`, `quantity`, `queuetime`) VALUES
(1, 'CIP00237', 'Idly', 2, 0),
(2, 'CIP00237', 'Pongal', 1, 0),
(3, 'CIP00237', 'Idly', 2, 0),
(4, 'CIP00237', 'Dhosai', 2, 0),
(5, 'CIP00237', 'Pongal', 2, 0),
(6, 'CIP001', 'Idly', 4, 0),
(7, 'CIP001', 'Pongal', 2, 0),
(8, 'CIP001', 'Idly', 3, 0),
(9, 'CIP001', 'Dhosai', 4, 0),
(10, 'CIP001', 'Pongal', 1, 0),
(11, 'CIP001', 'Idly', 1, 0),
(12, 'CIP001', 'Idly', 1, 0),
(13, 'CIP001', 'Dhosai', 2, 0),
(14, 'CIP001', 'Idly', 2, 0),
(15, 'CIP00260', 'Idly', 2, 0),
(16, 'CIP00260', 'Dhosai', 3, 0),
(17, 'CIP00260', 'Pongal', 2, 0),
(18, 'CIP00305', 'Idly', 4, 0),
(19, 'CIP00305', 'Idly', 3, 0),
(20, 'CIP00307', 'Idly', 4, 0),
(21, 'CIP00307', 'Dhosai', 1, 0),
(22, 'CIP00307', 'Idly', 4, 0),
(23, 'CIP00307', 'Dhosai', 2, 0),
(24, 'CIP00307', 'Pongal', 3, 0),
(25, 'CIP00307', 'Idly', 6, 0),
(26, 'CIP00307', 'Chicken', 2, 0),
(27, 'CIP00310', 'Idly', 4, 0),
(28, 'CIP00310', 'Dhosai', 2, 0),
(29, 'CIP00310', 'Pongal', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menucard`
--
ALTER TABLE `menucard`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=380;
--
-- AUTO_INCREMENT for table `menucard`
--
ALTER TABLE `menucard`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
