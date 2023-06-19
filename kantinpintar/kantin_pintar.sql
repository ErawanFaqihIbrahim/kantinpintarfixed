-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 04:07 AM
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
(1, 'Faqih', 'faqih123@gmail.com', NULL, '$2y$10$/47f5foTcy2XsVOBA6SF8.ne9wSoaF7PG.Nws36LGcwgzLh1uvS8S', NULL, '2023-06-18 11:31:02', '2023-06-18 11:31:13', 100000),
(2, 'pembeli1', 'pembeli1@gmail.com', NULL, '$2y$10$k/xnDvTm4msRPZS6SN9Z7.B9AbuU9UhX.i8MYmc7.Z1u1rwAjLVMi', NULL, '2023-06-18 14:36:41', '2023-06-18 14:39:31', 100000),
(3, 'Erawan', 'erawan@gmail.com', NULL, '$2y$10$n.4cMJJehjl.W1.8mpT1KO.ZgkjCGQsin50fNzbJGSDkAZD3XRQuO', NULL, '2023-06-18 18:04:37', '2023-06-18 18:06:46', 10000),
(4, 'Ibrahim', 'faqih1234@gmail.com', NULL, '$2y$10$lwBZ8AP9lcMXbLZ4N7UWP.J5jft.i/s8j.Pn/TbH1nquyAhQVwvny', NULL, '2023-06-18 18:11:54', '2023-06-18 18:11:54', 0),
(5, 'Pembeli', 'pembelix@gmail.com', NULL, '$2y$10$pnNDR4H4s74h8t.HwEhgIebyi1g8ckZVN0hyeTYKTx653w3zWLOLu', NULL, '2023-06-18 18:24:11', '2023-06-18 18:24:11', 0);

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
(1, 'Ahmad', 'faqih1234@gmail.com', NULL, '$2y$10$vM7NqejyQ0NDjU4CXQl/zurENuJe3/dUAbP0rbcOIbx/fTy6tCT/q', NULL, '2023-06-18 11:32:22', '2023-06-18 12:53:50', 'Pizza Mini', '08.00', '16.00 ', 'LogoPizza.JPG', 'aaa', 1),
(5, 'penjual3', 'penjual3@gmail.com', NULL, '$2y$10$8ORUVaTil78UX.cR4Hj21.IzIsBzRkpMemzwJ8xb1A9MgSAsX.d6m', NULL, '2023-06-18 12:35:19', '2023-06-18 12:52:45', 'Bakso Pak Bambang', '08.00 ', '16.00 ', 'SotoAyamBuAni.jpg', 'steak enak', 1),
(6, 'Fathia', 'penjual5@gmail.com', NULL, '$2y$10$wLjbkfhvJE5J7MmnPLYSquZePnTOywf0EFK8tiY2OZ63WOClvk0.2', NULL, '2023-06-18 18:07:29', '2023-06-18 18:09:45', 'Crepes Sedap ', '09.00 ', '15.00 ', 'LogoCrepes.jpg', 'crepes lezat manis', 1),
(7, 'Penjual7', 'penjual7@gmail.com', NULL, '$2y$10$DaOyjyVwlloHHwsGVeLvDuy6iAoNBeMCiEhFvfcS81qN.4BEY00eK', NULL, '2023-06-18 18:16:03', '2023-06-18 18:16:44', 'Soto Bu Siti', '09.00 ', '18.00 ', 'LogoBakso,jpg', 'bakso enak', 1);

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
-- Table structure for table `kedais`
--

CREATE TABLE `kedais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kedaiNama` varchar(255) DEFAULT NULL,
  `kedaiBuka` varchar(255) DEFAULT NULL,
  `kedaiTutup` varchar(255) DEFAULT NULL,
  `kedaiLogo` varchar(255) DEFAULT NULL,
  `kedaiKeterangan` varchar(255) DEFAULT NULL,
  `akunPenjualID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_pesanans`
--

CREATE TABLE `list_pesanans` (
  `pesananID` bigint(20) UNSIGNED NOT NULL,
  `menuID` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menuID` bigint(20) UNSIGNED NOT NULL,
  `menuNama` varchar(255) NOT NULL,
  `menuHarga` int(11) NOT NULL,
  `menuGambar` varchar(255) DEFAULT NULL,
  `penjualID` bigint(20) UNSIGNED NOT NULL,
  `menuDeskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menuID`, `menuNama`, `menuHarga`, `menuGambar`, `penjualID`, `menuDeskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Nasi Goreng', 10000, 'Group 229.png', 1, 'nasgor meraaaah', '2023-06-18 14:25:13', '2023-06-18 14:33:55'),
(2, 'Pecel', 12000, 'Group 229.png', 1, 'pecel lele', '2023-06-18 14:25:34', '2023-06-18 14:25:34'),
(3, 'Crepes Original', 15000, 'LogoCrepes.jpg', 6, 'Crepes original manis', '2023-06-18 18:10:32', '2023-06-18 18:10:32'),
(4, 'Bakso', 15000, 'BaksoPakBambang.jpe', 7, 'bakso enak', '2023-06-18 18:17:32', '2023-06-18 18:17:32');

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
(5, '2023_06_18_064655_create_akunpembelis_table', 1),
(6, '2023_06_18_065337_create_akunpenjuals_table', 1),
(7, '2023_06_18_124507_create_kedais_table', 1),
(8, '2023_06_18_154214_add_kedai_to_akunpenjuals_table', 1),
(9, '2023_06_18_201252_create_menus_table', 2),
(10, '2023_06_18_202718_add_deskripsi_to_menus_table', 3),
(11, '2023_06_18_212420_add_timestamps_to_menus', 4),
(12, '2023_06_18_231259_create_pesanans_table', 5),
(13, '2023_06_18_232006_create_list_pesanans_table', 6),
(14, '2023_06_18_233246_create_transaksis_table', 7),
(15, '2023_06_19_014340_create_penilaians_table', 8);

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
-- Table structure for table `penilaians`
--

CREATE TABLE `penilaians` (
  `penilaianID` bigint(20) UNSIGNED NOT NULL,
  `penilaianRating` int(11) NOT NULL,
  `penilaianReview` varchar(255) NOT NULL,
  `akunpembeliID` bigint(20) UNSIGNED NOT NULL,
  `menuID` bigint(20) UNSIGNED NOT NULL
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
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `pesananID` bigint(20) UNSIGNED NOT NULL,
  `pesananHarga` int(11) NOT NULL,
  `akunPembeliID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `transaksiID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `akunPembeliID` bigint(20) UNSIGNED NOT NULL,
  `pesananID` bigint(20) UNSIGNED NOT NULL,
  `akunPenjualID` bigint(20) UNSIGNED NOT NULL
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
-- Indexes for table `kedais`
--
ALTER TABLE `kedais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kedais_akunpenjualid_foreign` (`akunPenjualID`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menuID`),
  ADD KEY `menus_penjualid_foreign` (`penjualID`);

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
-- Indexes for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`penilaianID`),
  ADD KEY `penilaians_akunpembeliid_foreign` (`akunpembeliID`),
  ADD KEY `penilaians_menuid_foreign` (`menuID`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`pesananID`),
  ADD KEY `pesanans_akunpembeliid_foreign` (`akunPembeliID`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`transaksiID`),
  ADD KEY `transaksis_akunpembeliid_foreign` (`akunPembeliID`),
  ADD KEY `transaksis_pesananid_foreign` (`pesananID`),
  ADD KEY `transaksis_akunpenjualid_foreign` (`akunPenjualID`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kedais`
--
ALTER TABLE `kedais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menuID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `penilaianID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `pesananID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `transaksiID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kedais`
--
ALTER TABLE `kedais`
  ADD CONSTRAINT `kedais_akunpenjualid_foreign` FOREIGN KEY (`akunPenjualID`) REFERENCES `akunpenjuals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_penjualid_foreign` FOREIGN KEY (`penjualID`) REFERENCES `akunpenjuals` (`id`);

--
-- Constraints for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD CONSTRAINT `penilaians_akunpembeliid_foreign` FOREIGN KEY (`akunpembeliID`) REFERENCES `akunpembelis` (`id`),
  ADD CONSTRAINT `penilaians_menuid_foreign` FOREIGN KEY (`menuID`) REFERENCES `menus` (`menuID`);

--
-- Constraints for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD CONSTRAINT `pesanans_akunpembeliid_foreign` FOREIGN KEY (`akunPembeliID`) REFERENCES `akunpembelis` (`id`);

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_akunpembeliid_foreign` FOREIGN KEY (`akunPembeliID`) REFERENCES `akunpembelis` (`id`),
  ADD CONSTRAINT `transaksis_akunpenjualid_foreign` FOREIGN KEY (`akunPenjualID`) REFERENCES `akunpenjuals` (`id`),
  ADD CONSTRAINT `transaksis_pesananid_foreign` FOREIGN KEY (`pesananID`) REFERENCES `pesanans` (`pesananID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
