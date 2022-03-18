-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 06:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `act`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_governments`
--

CREATE TABLE `local_governments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LocalGovernment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_governments`
--

INSERT INTO `local_governments` (`id`, `LocalGovernment_name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Agege', 25, NULL, NULL),
(2, 'Ajeromi-Ifelodun', 25, NULL, NULL),
(3, 'Alimosho', 25, NULL, NULL),
(4, 'Amuwo-Odofin', 25, NULL, NULL),
(5, 'Apapa', 25, NULL, NULL),
(6, 'Badagry', 25, NULL, NULL),
(7, 'Epe', 25, NULL, NULL),
(8, 'Eti Osa', 25, NULL, NULL),
(9, 'Ibeju-Lekki', 25, NULL, NULL),
(10, 'Ifako-Ijaiye', 25, NULL, NULL),
(11, 'Ikeja', 25, NULL, NULL),
(12, 'Ikorodu', 25, NULL, NULL),
(13, 'Kosofe', 25, NULL, NULL),
(14, 'Lagos Island', 25, NULL, NULL),
(15, 'Lagos Mainland', 25, NULL, NULL),
(16, 'Mushin', 25, NULL, NULL),
(17, 'Ojo', 25, NULL, NULL),
(18, 'Oshodi-Isolo', 25, NULL, NULL),
(19, 'Shomolu', 25, NULL, NULL),
(20, 'Surulere', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_08_093211_create_sessions_table', 1),
(7, '2022_03_14_085218_create_states_table', 2),
(8, '2022_03_14_085247_create_local_governments_table', 2),
(9, '2022_03_14_085341_create_wards_table', 2),
(10, '2022_03_14_085402_create_polling_units_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('olamilekan.omosanya@itl.ng', '$2y$10$kjMRPiNfr1XxbV1S3k9HjO9CfLgH22.vy0etQz2z8UpqK/w7kOfGy', '2022-03-09 12:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polling_units`
--

CREATE TABLE `polling_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PollingUnits_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polling_units`
--

INSERT INTO `polling_units` (`id`, `PollingUnits_name`, `ward_id`, `created_at`, `updated_at`) VALUES
(1, '15, SHOMIDE STREET', 1, NULL, NULL),
(2, '1, GARUBA STREET', 1, NULL, NULL),
(3, '8, SEBIOTIMO STREET', 1, NULL, NULL),
(4, '6, SEBIOTIMO STREET', 1, NULL, NULL),
(5, 'WITHIN OLABI SQUARE', 1, NULL, NULL),
(6, 'KAMORU ALIMI/SEBIOTIMO STREET I', 1, NULL, NULL),
(7, 'KAMORU ALIMI/SEBIOTIMO STREET II', 1, NULL, NULL),
(8, '18, MAYAKA STREET', 1, NULL, NULL),
(9, 'COMMUNITY PRY. SCHOOL', 1, NULL, NULL),
(10, '2, OTUN STREET', 1, NULL, NULL),
(11, '4, OTUN STREET', 1, NULL, NULL),
(12, '11, TALABI STREET', 1, NULL, NULL),
(13, 'BACK OF ILORO GRAMMAR SCHOOL', 1, NULL, NULL),
(14, '4, FISHER STREET', 1, NULL, NULL),
(15, '18, OLUFESO STREET', 1, NULL, NULL),
(16, 'INSIDE ILORO GRAMMAR SCHOOL', 1, NULL, NULL),
(17, '17, AJIBOSE STREET', 1, NULL, NULL),
(18, '15, AJIBOSE STREET', 1, NULL, NULL),
(19, '20, ISHORA-YUSUF STREET', 1, NULL, NULL),
(20, '9, ADETONA STREET', 1, NULL, NULL),
(21, 'INSIDE ILORO GRAMMAR SCHOOL', 1, NULL, NULL),
(22, '2, ONIBEJU STREET', 1, NULL, NULL),
(23, '4, ONIBEJU STREET', 1, NULL, NULL),
(24, '18, OREDAPO STREET', 1, NULL, NULL),
(25, '33, OREDAPO STREET', 1, NULL, NULL),
(26, '10, OLAYIWOLA STREET', 1, NULL, NULL),
(27, '40, OLAYIWOLA STREET', 1, NULL, NULL),
(28, 'A/C PRIMARY SCHOOL', 1, NULL, NULL),
(29, '24, ONIBEJU STREET', 1, NULL, NULL),
(30, 'ANWAR-ISLAM COLLEGE', 1, NULL, NULL),
(31, '11, AGEGE BYE-PASS/CAPITOL ROAD', 1, NULL, NULL),
(32, 'AGEGE BYE-PASS/ALH. YUSUF ROAD', 1, NULL, NULL),
(33, '11, MARKET STREET', 1, NULL, NULL),
(34, '9, MARKET STREET', 1, NULL, NULL),
(35, '20, IPAYE STREET', 1, NULL, NULL),
(36, '8, BABAYOMI LANE', 1, NULL, NULL),
(37, '15, OLD ABEOKUTA MTR. RD. BY JAMAL ENT.', 1, NULL, NULL),
(38, '17, OLD ABEOKUTA MTR. ROAD BY JAMAL ENT.', 1, NULL, NULL),
(39, '19, BISI-ODUNAYA STREET', 1, NULL, NULL),
(40, '5, MODI LANA', 1, NULL, NULL),
(41, 'OLOKO/ONIGBAJULE', 1, NULL, NULL),
(42, '3, OLOKO STREET', 1, NULL, NULL),
(43, '7, OREMEJI STREET', 1, NULL, NULL),
(44, '5, OREMEJI STREET', 1, NULL, NULL),
(45, '13, BALOGUN STREET', 1, NULL, NULL),
(46, '1, IYALODE STREET', 1, NULL, NULL),
(47, '8, MOSHALASHI', 1, NULL, NULL),
(48, '25, SEBIOTIMO STREET', 1, NULL, NULL),
(49, '21 MAYAKA STREET', 1, NULL, NULL),
(50, '2ADETONA STREET', 1, NULL, NULL),
(51, '41, HUMANI STREET', 1, NULL, NULL),
(52, '11 OREDAPO STREET', 1, NULL, NULL),
(53, '10, HUMANI STREET', 1, NULL, NULL),
(54, '28, CAPITOL ROAD', 1, NULL, NULL),
(55, '20 HAIDARA STREET', 1, NULL, NULL),
(56, '2, OLOKO STREET', 1, NULL, NULL),
(57, '10, MOSHALASHI STREET', 1, NULL, NULL),
(58, 'ST. JOSEPH SECONDARY SCHOOL, MANGORO', 1, NULL, NULL),
(59, '20, ADEYOOLA STREET', 2, NULL, NULL),
(60, '18, SUBUOLA STREET', 2, NULL, NULL),
(61, '24, SULE STREET', 2, NULL, NULL),
(62, 'OPEN SPACE AT THE END OF SONAYA STREET', 2, NULL, NULL),
(63, 'OPP. LIMSON INSTITUTE ARIGIDI STREET I', 2, NULL, NULL),
(64, 'OPP. LIMSON INSTITUTE ARIGIDI STREET II', 2, NULL, NULL),
(65, '28, ADEBISI-AWOSOGA STREET', 2, NULL, NULL),
(66, '12, AKINSOLA STREET', 2, NULL, NULL),
(67, '23, OLUSOLA STREET', 2, NULL, NULL),
(68, '28, ADEBIYI-AYOPO STREET', 2, NULL, NULL),
(69, '25, SHITTA STREET', 2, NULL, NULL),
(70, '23, SHITTA STREET', 2, NULL, NULL),
(71, '29, SURULERE STREET', 2, NULL, NULL),
(72, '27, SURULERE STREET', 2, NULL, NULL),
(73, '14, OLUSOLA/OJUALALE STREET', 2, NULL, NULL),
(74, '1, UNION ROAD', 2, NULL, NULL),
(75, '3, UNION ROAD', 2, NULL, NULL),
(76, '2, BULURO/TIAMIYU STREET', 2, NULL, NULL),
(77, '11, ALFA-YUSUF STREET', 2, NULL, NULL),
(78, '10, IFELODUN STREET', 2, NULL, NULL),
(79, '22, BELLO-AJARE STREET', 2, NULL, NULL),
(80, '20, SALAKO STREET', 2, NULL, NULL),
(81, '2, OJUALALE STREET', 2, NULL, NULL),
(82, '15, OLORUNLOGBON STREET', 2, NULL, NULL),
(83, '13, OLORUNLOGBON STREET', 2, NULL, NULL),
(84, '6, OGABAMBI STREET', 2, NULL, NULL),
(85, '7, MUFUTAU SHOETAN', 2, NULL, NULL),
(86, '24, SUBUOLA STREET', 2, NULL, NULL),
(87, '4, SULE STREET', 2, NULL, NULL),
(88, '1, AJAKAYE STREET', 2, NULL, NULL),
(89, '3, OLD UNION ROAD', 2, NULL, NULL),
(90, '49, SHITTA STREET', 2, NULL, NULL),
(91, '51, SURULERE STREET', 2, NULL, NULL),
(92, '11, SURULERE STREET', 2, NULL, NULL),
(93, '1, NEW UNION ROAD', 2, NULL, NULL),
(94, '2, BOLURO STREET', 2, NULL, NULL),
(95, '22, ALFA YUSUF STREET', 2, NULL, NULL),
(96, '27, IFELODUN STREET', 2, NULL, NULL),
(97, '20, ADEYOOLA STREET', 2, NULL, NULL),
(98, '18, SUBUOLA STREET', 2, NULL, NULL),
(99, '24, SULE STREET', 2, NULL, NULL),
(100, 'OPEN SPACE AT THE END OF SONAYA STREET', 2, NULL, NULL),
(101, 'OPP. LIMSON INSTITUTE ARIGIDI STREET I', 2, NULL, NULL),
(102, 'OPP. LIMSON INSTITUTE ARIGIDI STREET II', 2, NULL, NULL),
(103, '28, ADEBISI-AWOSOGA STREET', 2, NULL, NULL),
(104, '12, AKINSOLA STREET', 2, NULL, NULL),
(105, '23, OLUSOLA STREET', 2, NULL, NULL),
(106, '28, ADEBIYI-AYOPO STREET', 2, NULL, NULL),
(107, '25, SHITTA STREET', 2, NULL, NULL),
(108, '23, SHITTA STREET', 2, NULL, NULL),
(109, '29, SURULERE STREET', 2, NULL, NULL),
(110, '27, SURULERE STREET', 2, NULL, NULL),
(111, '14, OLUSOLA/OJUALALE STREET', 2, NULL, NULL),
(112, '1, UNION ROAD', 2, NULL, NULL),
(113, '3, UNION ROAD', 2, NULL, NULL),
(114, '2, BULURO/TIAMIYU STREET', 2, NULL, NULL),
(115, '11, ALFA-YUSUF STREET', 2, NULL, NULL),
(116, '10, IFELODUN STREET', 2, NULL, NULL),
(117, '22, BELLO-AJARE STREET', 2, NULL, NULL),
(118, '20, SALAKO STREET', 2, NULL, NULL),
(119, '2, OJUALALE STREET', 2, NULL, NULL),
(120, '15, OLORUNLOGBON STREET', 2, NULL, NULL),
(121, '13, OLORUNLOGBON STREET', 2, NULL, NULL),
(122, '6, OGABAMBI STREET', 2, NULL, NULL),
(123, '7, MUFUTAU SHOETAN', 2, NULL, NULL),
(124, '24, SUBUOLA STREET', 2, NULL, NULL),
(125, '4, SULE STREET', 2, NULL, NULL),
(126, '1, AJAKAYE STREET', 2, NULL, NULL),
(127, '3, OLD UNION ROAD', 2, NULL, NULL),
(128, '49, SHITTA STREET', 2, NULL, NULL),
(129, '51, SURULERE STREET', 2, NULL, NULL),
(130, '11, SURULERE STREET', 2, NULL, NULL),
(131, '1, NEW UNION ROAD', 2, NULL, NULL),
(132, '2, BOLURO STREET', 2, NULL, NULL),
(133, '22, ALFA YUSUF STREET', 2, NULL, NULL),
(134, '27, IFELODUN STREET', 2, NULL, NULL),
(135, '9, OREMEJI STREET', 3, NULL, NULL),
(136, '15, FAWOLE STREET', 3, NULL, NULL),
(137, '19, FAWOLE STREET', 3, NULL, NULL),
(138, '17, FAWOLE STREET', 3, NULL, NULL),
(139, '31, ADENIYI STREET', 3, NULL, NULL),
(140, '29, ADENIYI STREET', 3, NULL, NULL),
(141, 'AJEBORIOGBON/OLD ABEOKUTA RD. BY FIRST BANK', 3, NULL, NULL),
(142, '20, AJEBORIOGBON STREET', 3, NULL, NULL),
(143, '18, AJEBORIOGBON STREET', 3, NULL, NULL),
(144, '39, SADIKU STREET', 3, NULL, NULL),
(145, '49, SADIKU STREET', 3, NULL, NULL),
(146, '11, AKERELE STREET', 3, NULL, NULL),
(147, '9, AKERELE STREET', 3, NULL, NULL),
(148, 'IREPODUN PRY. SCHOOL', 3, NULL, NULL),
(149, '21, OMODEHINDE STREET', 3, NULL, NULL),
(150, '19, OMODEHINDE STREET', 3, NULL, NULL),
(151, 'OLUSANYA PRY. SCHOOL', 3, NULL, NULL),
(152, 'RAUFU-ALAJO/FANIMOKUN STREET', 3, NULL, NULL),
(153, 'OLADEJO/ALFA-NLA STREET', 3, NULL, NULL),
(154, '67, ONIWAYA ROAD', 3, NULL, NULL),
(155, '65, ONIWAYA ROAD', 3, NULL, NULL),
(156, 'OPEN SPACE AT ONIWAYA GARAGE', 3, NULL, NULL),
(157, 'OPEN SPACE AT ONIWAYA GARAGE', 3, NULL, NULL),
(158, '6, AKINSULI STREET', 3, NULL, NULL),
(159, '10, OGUNWO STREET', 3, NULL, NULL),
(160, '8, OGUNWO STREET', 3, NULL, NULL),
(161, '6, AKINJOBI STREET', 3, NULL, NULL),
(162, 'APATA/OWO STREET', 3, NULL, NULL),
(163, '29, APATA STREET', 3, NULL, NULL),
(164, '15A, TAIWO DADA STREET', 3, NULL, NULL),
(165, '16, DANIYAN STREET', 3, NULL, NULL),
(166, '24, KADIRI STREET', 3, NULL, NULL),
(167, '36, ADESOKAN STREET', 3, NULL, NULL),
(168, '134, DOPEMU ROAD', 3, NULL, NULL),
(169, '8, BOLAJI STREET', 3, NULL, NULL),
(170, '8, BOLAJI STREET', 3, NULL, NULL),
(171, '18, OGUNJIMI STREET', 3, NULL, NULL),
(172, '3, ADEYINKA-OSO STREET', 3, NULL, NULL),
(173, '35, ALOWONLE STREET', 3, NULL, NULL),
(174, '9, SHODIPO STREET', 3, NULL, NULL),
(175, '9, OLOWO STREET', 3, NULL, NULL),
(176, '2, FEMI-ANJORIN STREET', 3, NULL, NULL),
(177, '16, ALHAJA SIFAWU STREET', 3, NULL, NULL),
(178, '2, IMAM-OJOKU STREET', 3, NULL, NULL),
(179, '22, IMAM-OJOKU STREET', 3, NULL, NULL),
(180, 'JUNCTION OF ALOBA/BANKOLE', 3, NULL, NULL),
(181, 'JUNCTION OF ALOBA/JINADU', 3, NULL, NULL),
(182, '23, TIJANI STREET', 3, NULL, NULL),
(183, '41, AWORI STREET', 3, NULL, NULL),
(184, '77, AWORI STREET', 3, NULL, NULL),
(185, '22, YEKINI STREET', 3, NULL, NULL),
(186, '3, SARUMI-ALAWO STREET', 3, NULL, NULL),
(187, '32, KADIRI STREET', 3, NULL, NULL),
(188, '30, KADIRI STREET', 3, NULL, NULL),
(189, '14, OKUNOLA STREET', 3, NULL, NULL),
(190, 'SALVATION ARMY PRY. SCHOOL I', 3, NULL, NULL),
(191, 'SALVATION ARMY PRY. SCHOOL II', 3, NULL, NULL),
(192, '56, DOPEMU ROAD', 3, NULL, NULL),
(193, 'SADIAT/ALHAJA SIFAWU JUNCTION', 3, NULL, NULL),
(194, '15, BALOGUN LANE I', 3, NULL, NULL),
(195, '13, BALOGUN LANE II', 3, NULL, NULL),
(196, '36, BALOGUN LANE III', 3, NULL, NULL),
(197, '10, BODE-TOBUN STREET', 3, NULL, NULL),
(198, '57, BASHORUN STREET', 3, NULL, NULL),
(199, '27, BASHORUN STREET', 3, NULL, NULL),
(200, 'HASSAN-OYO/ONIWAYA RD. JUNCTION', 3, NULL, NULL),
(201, '47, IPAJA ROAD', 3, NULL, NULL),
(202, '97, IPAJA ROAD', 3, NULL, NULL),
(203, '19, OKE-AYO STREET', 3, NULL, NULL),
(204, '19, OKE-AYO STREET', 3, NULL, NULL),
(205, 'AYENI/MORICASS JUNCTION I', 3, NULL, NULL),
(206, 'AYENI/MORICASS JUNCTION II', 3, NULL, NULL),
(207, 'MORICASS/ADENLE JUNCTION', 3, NULL, NULL),
(208, '8, MORICASS ROAD', 3, NULL, NULL),
(209, '49, MORICASS ROAD', 3, NULL, NULL),
(210, '28, ALFA-NLA STREET', 3, NULL, NULL),
(211, '72, ALFA-NLA STREET', 3, NULL, NULL),
(212, '13, ABIMBOLA STREET', 3, NULL, NULL),
(213, '35, ABIMBOLA STREET', 3, NULL, NULL),
(214, '6, FAWOLE STREET', 3, NULL, NULL),
(215, '35, FAWOLE STREET', 3, NULL, NULL),
(216, '26, ADENIYI STREET', 3, NULL, NULL),
(217, '26, AKERELE STREET', 3, NULL, NULL),
(218, 'OLUSANYA PRIMARY SCHOOL', 3, NULL, NULL),
(219, '78, ONIWAYA ROAD', 3, NULL, NULL),
(220, '55, ONIWAYA ROAD', 3, NULL, NULL),
(221, '14, APATA STREET', 3, NULL, NULL),
(222, '9, ADEYINKA OSHO STREET', 3, NULL, NULL),
(223, '11, SHODIPO STREET', 3, NULL, NULL),
(224, 'SALVATION ARMY PRIMARY SCHOOL I', 3, NULL, NULL),
(225, 'SALVATION ARMY PRIMARY SCHOOL II', 3, NULL, NULL),
(226, '19, BASHORUN STREET', 3, NULL, NULL),
(227, 'MORICASS/ADENLE JUNCTION', 3, NULL, NULL),
(228, '64, MORICASS ROAD', 3, NULL, NULL),
(229, '52, ABIMBOLA STREET', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7tq5tGvvmo9exKTE7a2hQcfUKSYM9FlbaKH6EDlO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVpzWXZla2h5dlJBUWhpTDBtT2lNWGpINzlVdXNUdlRWdm95dk1SUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fX0=', 1647450557);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Abia', NULL, NULL),
(2, 'Adamawa', NULL, NULL),
(3, 'Akwa Ibom', NULL, NULL),
(4, 'Anambra', NULL, NULL),
(5, 'Bauchi', NULL, NULL),
(6, 'Bayelsa', NULL, NULL),
(7, 'Benue', NULL, NULL),
(8, 'Borno', NULL, NULL),
(9, 'Cross River', NULL, NULL),
(10, 'Delta', NULL, NULL),
(11, 'Ebonyi', NULL, NULL),
(12, 'Edo', NULL, NULL),
(13, 'Ekiti', NULL, NULL),
(14, 'Enugu', NULL, NULL),
(15, 'Federal Capital Territory', NULL, NULL),
(16, 'Gombe', NULL, NULL),
(17, 'Imo', NULL, NULL),
(18, 'Jigawa', NULL, NULL),
(19, 'Kaduna', NULL, NULL),
(20, 'Kano', NULL, NULL),
(21, 'Katsina', NULL, NULL),
(22, 'Kebbi', NULL, NULL),
(23, 'Kogi', NULL, NULL),
(24, 'Kwara', NULL, NULL),
(25, 'Lagos', NULL, NULL),
(26, 'Nasarawa', NULL, NULL),
(27, 'Niger', NULL, NULL),
(28, 'Ogun', NULL, NULL),
(29, 'Ondo', NULL, NULL),
(30, 'Osun', NULL, NULL),
(31, 'Oyo', NULL, NULL),
(32, 'Plateau', NULL, NULL),
(33, 'Rivers', NULL, NULL),
(34, 'Sokoto', NULL, NULL),
(35, 'Taraba', NULL, NULL),
(36, 'Yobe', NULL, NULL),
(37, 'Zamfara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling-unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` tinyint(1) NOT NULL DEFAULT 0,
  `validId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `address`, `phone`, `gender`, `state`, `lg`, `ward`, `polling-unit`, `usertype`, `validId`, `img`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'nhjkjkjjkjkki', 'm,lscdklfldklf', 'kdkddkdk', 'dcffeererfrr', '1234567778', 'M', 'M', 'M', 'F', 'F', 0, 'crownrise 1.png', '2012 [Converted].ai', 'user@gmail.com', NULL, '$2y$10$Z3kdhT1bbv5fAQqxjEwg9uZ6FFlOfsvZBr.X5suLmUTFERIZ3HAXK', 'eyJpdiI6IjJjdHozMXBIRm9jeGhIa3JHWW43QXc9PSIsInZhbHVlIjoicTlpZEttOWtrYTc3MnJ1MEpqeTZTeWIvMTJ2T3dxZUtlQnJlQjNvdGc2Zz0iLCJtYWMiOiJmMDgzOWU2YTJjMGRiNDdkYjlhODM5ZDEzNDQ3MjZmN2Q3YmIyOTc0YmQxYTJhMmI3M2IyNzdiYmI0NzUyMzYyIiwidGFnIjoiIn0=', 'eyJpdiI6IkVOdzRLdi80b2s0SlJmTGN2aHpjVXc9PSIsInZhbHVlIjoiaHJkM0ExbVJOUkFLMEFjQ3ZkdFI4V3MyOWczWUFxOTQ0eHVoQU1JUWs2RUhhQmRvK3J5T1BqcXROY29OekpXak44Q0dNZ3RrczZKcXdHVVpLT2EzZGpyZFBkR2pvV2pEUkRNQXlMV3BvVzhCNWdkR0pQNGdJY3hBaWY1c2tTS29HZUZGUWlQYldSaTlMRXJ5c1E5eklLRzZGTnlaY3ZRdngzOFRjb3RKWDViMlQzcjBlV0tEemFubFh0ZE9nSGFtb2N2KzYvMzFyNTd6QUl3UldISjE2eGJ2YytlamhnSVRaWUlzeThqV0d2U1U1UWJTVkFtNXoyaG02Z3JyVndDOFNkeEhiNTZEaktqTU0wVlp6bFpBRnc9PSIsIm1hYyI6ImFlOGM3YmRmNGI1Y2MwMWI3MzI0NzUyNzYwM2NlOTUxYzJkNzIwZjA1MmEzMmRmYTA5ZGIxZjg1OTZmYThjODgiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-03-08 16:17:33', '2022-03-09 07:25:53'),
(2, 'omosanya', 'olamilekan', 'ganiu', '6 ogba aguda. lagos state', '09069946685', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 1, '2012 [Converted].ai', 'chairman.jpg', 'olamilekan.omosanya@itl.ng', NULL, '$2y$10$CL6JwrTEym4SmT5ly0hy1uZk/jLXxAllP.aH1m2Kqc5ucVtUeUflG', '', 'eyJpdiI6IlNjcGx4OTJJTDJKZTBUREVjanJBOFE9PSIsInZhbHVlIjoicnFlSDVyelN3QVRtdzR3QzBwZFc4SGR0aTFUVmRZZUhQNUMzQ1cyTGgrRno4YXlzWGd3cGkxcmYzZVdVdXZrVUxRTXZFZTlZNUFwcDVZOU5xUUxHSDBOWWFGUzQ2V2VLTmZLc2d5WU9kU0cxRFRBWHluVFM4ZGlkUmtvRGdjZEltM0RRWkFCNlN3by9Tc1haSlVqaG5GM2ZYVE9aek8yb2ZnSDFtdDFlemxadEZYWk41ai9NRFhmd2piSGNRNmJFa2FZcWJoUms3Q1BKdm1YMy91V2FRSGpUalNYdUVDdmxnYkUwdUVKYjZvYVhIT1lrb2NKcmhkOTJubmMvdnpiaFBVdGIwYWh5d3UvVWd2OXZnUE9US1E9PSIsIm1hYyI6IjIzZmE1ODVmZGQ4YjQyYzFjMGE1NTZjYzFjMjEyNmM3Yjg3YzE3N2NmNzdiMGVmNTA2NDQ3ZmUzODRkY2IwZmUiLCJ0YWciOiIifQ==', 'ING85pvCLkS1VTV1yt1yUptbbZrz54uExFO2Cs54EwyZ9vpojltdMq5gHSeT', NULL, NULL, '2022-03-09 08:30:10', '2022-03-09 12:45:30'),
(3, 'user', 'user', 'user', 'awolowo way', '09012345678', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 0, '2012 [Converted].ai', 'chairman.jpg', 'user01@gmail.com', NULL, '$2y$10$liENWHXldnHyLG79jCLNCef889DsOlyQlxShxlY.EGeVAMrBqkmBy', NULL, NULL, NULL, NULL, NULL, '2022-03-09 11:54:26', '2022-03-09 11:54:26'),
(4, 'user2', 'user2', 'user2', 'ogba hgdhdh', '1233455636', 'F', 'adamawa', 'agege', 'ikeja', 'ogba', 0, 'chairman.jpg', '3778934.jpg', 'user2@gmail.com', NULL, '$2y$10$jFEMLv2LfChyDfOze6IL4e/vR1jW52bQm7XmSH6S/6XFd/AoofAya', NULL, NULL, NULL, NULL, NULL, '2022-03-11 10:13:34', '2022-03-11 10:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LocalGovernment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_name`, `LocalGovernment_id`, `created_at`, `updated_at`) VALUES
(1, 'Isale/Idimangoro', 1, NULL, NULL),
(2, 'Iloro/Onipetesi', 1, NULL, NULL),
(3, 'Isale Odo', 1, NULL, NULL),
(4, 'Oniwaya/Papa-uku', 1, NULL, NULL),
(5, 'Agbotikuyo/Dopemu', 1, NULL, NULL),
(6, 'Oyewole/Papa Ashafa', 1, NULL, NULL),
(7, 'Okekoto', 1, NULL, NULL),
(8, 'Keke', 1, NULL, NULL),
(9, 'Darocha', 1, NULL, NULL),
(10, 'TabonTabon/Oko Oba', 1, NULL, NULL),
(11, 'Orile Agege/ Oko Oba', 1, NULL, NULL),
(12, 'Ago Hausa', 2, NULL, NULL),
(13, 'Awodi Ora', 2, NULL, NULL),
(14, 'Wilmer', 2, NULL, NULL),
(15, 'Olodi', 2, NULL, NULL),
(16, 'Tolu', 2, NULL, NULL),
(17, 'Temidire I', 2, NULL, NULL),
(18, 'Ojo Road', 2, NULL, NULL),
(19, 'Layeni', 2, NULL, NULL),
(20, 'Alaba Oro', 2, NULL, NULL),
(21, 'Mosafejo', 2, NULL, NULL),
(22, 'Temidire II', 2, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `local_governments`
--
ALTER TABLE `local_governments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `polling_units`
--
ALTER TABLE `polling_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_governments`
--
ALTER TABLE `local_governments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polling_units`
--
ALTER TABLE `polling_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
