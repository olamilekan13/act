-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 05:57 PM
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
(6, '2022_03_08_093211_create_sessions_table', 1);

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
('ERipgsxRViZAVNDKTSJv5pMifkK9PFeTRldBzmZl', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSWFzNmRHV0pOaVpHa0pOWUFhaFRjc1M1NWc3cUVLNllRV1JsSUxjTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGxpRU5XSFhsZG5IeUxHNzlqQ0xOQ2VmODg5RHNPbHlRbHhTaHhsWS5FR2VWQU1yQnFrbUJ5Ijt9', 1646844545);

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
(2, 'omosanya', 'olamilekan', 'ganiu', '6 ogba aguda. lagos state', '09069946685', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 1, '2012 [Converted].ai', 'chairman.jpg', 'olamilekan.omosanya@itl.ng', NULL, '$2y$10$CL6JwrTEym4SmT5ly0hy1uZk/jLXxAllP.aH1m2Kqc5ucVtUeUflG', 'eyJpdiI6IlFBUmd2akdkZE5xbE1IY2RSS0prb1E9PSIsInZhbHVlIjoiMGhGcHB4MnhsRXg2Yjg2WC9tQVlFRUwvS25KU3pTakNPem90UE9kbG9Qcz0iLCJtYWMiOiJjYmEyOWRhN2Y5MDZkMWRhY2FiNTZjNTM3M2NlMDFjY2MxZDIzN2I3ZjhkNmM2MTg5MTI1NDE3NTc5Nzg0ODRhIiwidGFnIjoiIn0=', 'eyJpdiI6IlNjcGx4OTJJTDJKZTBUREVjanJBOFE9PSIsInZhbHVlIjoicnFlSDVyelN3QVRtdzR3QzBwZFc4SGR0aTFUVmRZZUhQNUMzQ1cyTGgrRno4YXlzWGd3cGkxcmYzZVdVdXZrVUxRTXZFZTlZNUFwcDVZOU5xUUxHSDBOWWFGUzQ2V2VLTmZLc2d5WU9kU0cxRFRBWHluVFM4ZGlkUmtvRGdjZEltM0RRWkFCNlN3by9Tc1haSlVqaG5GM2ZYVE9aek8yb2ZnSDFtdDFlemxadEZYWk41ai9NRFhmd2piSGNRNmJFa2FZcWJoUms3Q1BKdm1YMy91V2FRSGpUalNYdUVDdmxnYkUwdUVKYjZvYVhIT1lrb2NKcmhkOTJubmMvdnpiaFBVdGIwYWh5d3UvVWd2OXZnUE9US1E9PSIsIm1hYyI6IjIzZmE1ODVmZGQ4YjQyYzFjMGE1NTZjYzFjMjEyNmM3Yjg3YzE3N2NmNzdiMGVmNTA2NDQ3ZmUzODRkY2IwZmUiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-03-09 08:30:10', '2022-03-09 12:45:30'),
(3, 'user', 'user', 'user', 'awolowo way', '09012345678', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 0, '2012 [Converted].ai', 'chairman.jpg', 'user01@gmail.com', NULL, '$2y$10$liENWHXldnHyLG79jCLNCef889DsOlyQlxShxlY.EGeVAMrBqkmBy', NULL, NULL, NULL, NULL, NULL, '2022-03-09 11:54:26', '2022-03-09 11:54:26');

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
