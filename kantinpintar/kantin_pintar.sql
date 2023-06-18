-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin_pintar`
--

-- --------------------------------------------------------

--
-- Table structure for table `akunpembelis`
--

CREATE TABLE `akunpembelis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saldoJumlah` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `akunpembelis`
--

INSERT INTO `akunpembelis` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `saldoJumlah`) VALUES
(1, 'pembeli1', 'pembeli1@gmail.com', NULL, '$2y$10$xf/bA0k3pooyQcXh2nY2aOOaNDMwS96ONQRgiftraX9XtrRQ.RDVW', NULL, '2023-06-18 05:59:45', '2023-06-18 06:55:39', 140),
(2, 'pembeli2', 'pembeli2@gmail.com', NULL, '$2y$10$IV08HlM96xWhU5uDRatsq.MWox.emhleeCLcr/pw1llluOzWrbWOW', NULL, '2023-06-18 07:14:23', '2023-06-18 07:14:23', 0),
(4, 'penjual4', 'penjual4@gmail.com', NULL, '$2y$10$ZrUKnHRmoo8bjj7tPh9isOANUEO0XmmNULVxyU9JdapzxoFAA9Xim', NULL, '2023-06-18 08:05:56', '2023-06-18 08:05:56', 0),
(5, 'arvin', 'arvin@gmail.com', NULL, '$2y$10$rSO3XegKfYSuVGqlntBrxul/G7aTUhaRnL7M70TwH4HFvMDHJyJnm', NULL, '2023-06-18 08:08:33', '2023-06-18 08:08:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `akunpenjuals`
--

CREATE TABLE `akunpenjuals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kedaiNama` varchar(255) DEFAULT NULL,
  `kedaiBuka` varchar(255) DEFAULT NULL,
  `kedaiTutup` varchar(255) DEFAULT NULL,
  `kedaiLogo` varchar(255) DEFAULT NULL,
  `kedaiKeterangan` varchar(255) DEFAULT NULL,
  `is_daftar` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `akunpenjuals`
--

INSERT INTO `akunpenjuals` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `kedaiNama`, `kedaiBuka`, `kedaiTutup`, `kedaiLogo`, `kedaiKeterangan`, `is_daftar`) VALUES
(1, 'penjual1', 'penjual1@gmail.com', NULL, '$2y$10$9qC8F1NyNeJiCTy9S3jGWOl7ZSX9dJgGnTOvAX.yfFklFuP2efTgC', NULL, '2023-06-18 06:59:38', '2023-06-18 06:59:38', NULL, NULL, NULL, NULL, NULL, 0),
(2, 'penjual2', 'penjual2@gmail.com', NULL, '$2y$10$kd03oUy92PZgdRcuAH073.GVD9zS2C/BRu69Kj.RtNRRRAs0CLiFq', NULL, '2023-06-18 07:14:46', '2023-06-18 07:14:46', NULL, NULL, NULL, NULL, NULL, 0),
(3, 'penjual3', 'penjual3@gmail.com', NULL, '$2y$10$9Y8kDYTWGcK4/HE8NbeD0.19FOIWY7X8E72f0LYZSwaIr8sFy7DHO', NULL, '2023-06-18 07:47:04', '2023-06-18 07:47:04', NULL, NULL, NULL, NULL, NULL, 0),
(4, 'penjual4', 'penjual4@gmail.com', NULL, '$2y$10$HjXPDhCMXpoo6fBjF3Z8..S12Ff8SfTKJcM5oUDIZiUxxKU.JooBe', NULL, '2023-06-18 08:06:27', '2023-06-18 08:06:27', NULL, NULL, NULL, NULL, NULL, 0),
(5, 'kahfin', 'kahfin@gmail.com', NULL, '$2y$10$NfUKEBQGS70IrYW/5o/Gke0cElh8lac2J28Tk/LhXT03uo4S3HDb2', NULL, '2023-06-18 08:08:56', '2023-06-18 08:08:56', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_06_18_064655_create_akunpembelis_table', 2),
(8, '2023_06_18_065337_create_akunpenjuals_table', 2),
(9, '2023_06_18_124507_create_kedais_table', 3),
(10, '2023_06_18_154214_add_kedai_to_akunpenjuals_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faqih', 'faqih@gmail.com', NULL, '$2y$10$2kWFB/hsbW5cXVBOVsBxcOm5sZyavJoU.MPlRPPFVZnH9mbfmJPiu', NULL, '2023-06-17 22:55:29', '2023-06-17 22:55:29'),
(2, 'pembeli1', 'pembeli@gmail.com', NULL, '$2y$10$oBrYjCguSRr1c0C2x/XUb.7I3podNZ8tmzvsQ9gZ3BxmHJ4TUwbpK', NULL, '2023-06-18 01:21:17', '2023-06-18 01:21:17'),
(3, 'pembeli1', 'pembeli1@gmail.com', NULL, '$2y$10$EknKzswjFTAReBX1jAb1l.kkBhHPsilkwGgAaNL84anjm.g54/r56', NULL, '2023-06-18 01:23:53', '2023-06-18 01:23:53'),
(4, 'pembeli2', 'pembeli2@gmail.com', NULL, '$2y$10$ovFsoWJA0MwNi8GZadLWrOKyrxt1MVJ/ZzUQzSyhWJPTDrHbF4/Ba', NULL, '2023-06-18 01:37:26', '2023-06-18 01:37:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akunpembelis`
--
ALTER TABLE `akunpembelis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `akunpembelis_email_unique` (`email`);

--
-- Indexes for table `akunpenjuals`
--
ALTER TABLE `akunpenjuals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `akunpenjuals_email_unique` (`email`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `akunpembelis`
--
ALTER TABLE `akunpembelis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `akunpenjuals`
--
ALTER TABLE `akunpenjuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
