-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sasarandb
CREATE DATABASE IF NOT EXISTS `sasarandb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sasarandb`;

-- Dumping structure for table sasarandb.capaians
CREATE TABLE IF NOT EXISTS `capaians` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int NOT NULL,
  `kinerja_id` int NOT NULL,
  `tahunan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `I` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `II` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `III` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.capaians: ~2 rows (approximately)
REPLACE INTO `capaians` (`id`, `sasaran_id`, `kinerja_id`, `tahunan`, `I`, `II`, `III`, `IV`, `created_at`, `updated_at`) VALUES
	(1, 12, 16, '1', '1', '1', '1', '1', '2023-12-13 21:31:04', '2023-12-13 21:35:44');

-- Dumping structure for table sasarandb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table sasarandb.kinerjas
CREATE TABLE IF NOT EXISTS `kinerjas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int NOT NULL DEFAULT '0',
  `kinerja` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.kinerjas: ~19 rows (approximately)
REPLACE INTO `kinerjas` (`id`, `sasaran_id`, `kinerja`, `created_at`, `updated_at`) VALUES
	(16, 12, 'Rerata nilai ujian mata kuliah pendidikan agama pada PTK / PTU yang bermuatan mederasi beragama', '2023-12-09 09:57:10', '2023-12-09 09:57:10'),
	(17, 13, 'Persentase peningkatan mahasiswa pada PTKI', '2023-12-09 09:59:26', '2023-12-09 09:59:26'),
	(18, 13, 'Jumlah mahasiswa tahun 2023', '2023-12-09 10:00:20', '2023-12-09 10:00:20'),
	(19, 13, 'Jumlah mahasiswa tahun 2022', '2023-12-09 10:01:00', '2023-12-09 10:01:00'),
	(20, 14, 'Persentase dosen bersertifikat pendidikan', '2023-12-09 10:01:37', '2023-12-09 10:01:37'),
	(21, 14, 'Jumlah dosen bersertifikat pendidikan', '2023-12-09 10:02:06', '2023-12-09 10:02:06'),
	(22, 14, 'Jumlah dosen', '2023-12-09 10:02:23', '2023-12-09 10:02:23'),
	(23, 14, 'Persentase dosen berkualitifikasi S3', '2023-12-09 10:03:00', '2023-12-09 10:03:00'),
	(24, 14, 'Jumlah berkualitifikasi S3', '2023-12-09 10:03:37', '2023-12-09 10:03:37'),
	(25, 12, 'Jumlah dosen', '2023-12-09 10:03:47', '2023-12-09 10:03:47'),
	(26, 15, 'Persentase Prodi PTK yang terakreditasi A/Unggul', '2023-12-09 10:05:09', '2023-12-09 10:05:09'),
	(27, 15, 'Jumlah Prodi PTK yang terakreditasi  A/Unggul', '2023-12-09 10:07:51', '2023-12-09 10:07:51'),
	(28, 15, 'Jumlah Prodi', '2023-12-09 10:08:21', '2023-12-09 10:08:21'),
	(29, 16, 'Persentase peningkatan mahasiswa asing  di PTK', '2023-12-09 10:09:56', '2023-12-09 10:09:56'),
	(30, 16, 'Jumlah Mahasiswa Asing Tahun 2023', '2023-12-09 10:10:13', '2023-12-09 10:10:13'),
	(31, 16, 'Jumlah Mahasiswa Asing Tahun 2022', '2023-12-09 10:10:28', '2023-12-09 10:10:28'),
	(32, 17, 'Persentase jurnal ilmiah terakreditasi  nasional', '2023-12-09 10:10:56', '2023-12-09 10:10:56'),
	(33, 17, 'Jumlah jurnal ilmiah terakreditasi nasional', '2023-12-09 10:13:59', '2023-12-09 10:13:59'),
	(34, 17, 'Jumlah jurnal ilmiah yang dimiliki', '2023-12-09 10:15:03', '2023-12-09 10:15:03'),
	(66, 32, 'asadadasdad', '2023-12-17 19:28:38', '2023-12-17 19:28:38');

-- Dumping structure for table sasarandb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.migrations: ~0 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2023_12_14_035640_create_capaians_table', 1);

-- Dumping structure for table sasarandb.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table sasarandb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table sasarandb.sasarans
CREATE TABLE IF NOT EXISTS `sasarans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sasaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.sasarans: ~8 rows (approximately)
REPLACE INTO `sasarans` (`id`, `sasaran`, `created_at`, `updated_at`) VALUES
	(12, 'Menguatkan sistem pendidikan yang berperspektif moderat', '2023-12-09 09:50:03', '2023-12-09 09:50:03'),
	(13, 'Menigkatnya partisipasi peserta didik pada satuan pendidikan', '2023-12-09 09:50:42', '2023-12-09 09:50:42'),
	(14, 'Meningkatnya kualitas tenaga pendidik pada satuan pendidikan', '2023-12-09 09:51:05', '2023-12-09 09:51:05'),
	(15, 'Meningkatnya kualitas standar dan sistem penjaminan mutu pendidikan', '2023-12-09 09:51:34', '2023-12-09 09:51:34'),
	(16, 'Meningkatnya kualitas PTK yang bereputasi internasional', '2023-12-09 09:52:05', '2023-12-09 09:52:05'),
	(17, 'Meningkatnya kualitas pemanfaatan penelitian', '2023-12-09 09:53:03', '2023-12-09 09:53:03'),
	(18, 'Meningkatnya kualitas lulusan PTK yang di terima di dunia kerja', '2023-12-09 09:53:21', '2023-12-09 09:53:21'),
	(19, 'Meningkatnya tata kelola organisasi Unit Eselon 1 yang efektik dan akuntabel', '2023-12-09 09:54:03', '2023-12-09 09:54:13');

-- Dumping structure for table sasarandb.targets
CREATE TABLE IF NOT EXISTS `targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int DEFAULT NULL,
  `kinerja_id` int NOT NULL,
  `tahunan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `II` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `III` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IV` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.targets: ~8 rows (approximately)
REPLACE INTO `targets` (`id`, `sasaran_id`, `kinerja_id`, `tahunan`, `I`, `II`, `III`, `IV`, `created_at`, `updated_at`) VALUES
	(2, 12, 16, '12', '1', '2', '3', '7', '2023-12-11 05:41:24', '2023-12-11 09:43:13'),
	(3, 12, 16, '1', '11', '1', '1', '1', '2023-12-11 05:54:15', '2023-12-13 20:20:28'),
	(4, 12, 16, '11', '111', '111', '111', '11', '2023-12-11 06:10:14', '2023-12-11 07:39:45'),
	(6, 12, 16, '12', '1', '1', '1', '1', '2023-12-11 06:43:54', '2023-12-11 07:45:59'),
	(8, 15, 30, NULL, NULL, NULL, NULL, NULL, '2023-12-11 07:01:39', '2023-12-11 07:01:39'),
	(10, 12, 28, NULL, NULL, NULL, NULL, NULL, '2023-12-11 07:28:27', '2023-12-11 10:42:29'),
	(12, 12, 16, '12', '12', '11', '12', '00', '2023-12-11 10:40:36', '2023-12-13 20:19:27'),
	(13, 15, 26, NULL, NULL, NULL, NULL, NULL, '2023-12-11 18:20:32', '2023-12-11 18:20:32'),
	(16, 32, 66, NULL, NULL, NULL, NULL, NULL, '2023-12-17 19:28:54', '2023-12-17 19:28:54');

-- Dumping structure for table sasarandb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` enum('dekan','wakildekan','operator','admin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.users: ~13 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `jabatan`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dekan', 'dekan', 'dekan@gmail.com', NULL, '$2y$12$lKLnO34B4w6UAh/0rxNAIOwDYrzp11yStGXoRjF6ZRjamqOI8OdDm', 'vb34Feb1OObTvKH9HJHjzXclDmlFpTtyree3nbprLS88Fo6ANO78s3dkecVj', '2023-12-17 18:59:28', '2023-12-17 18:59:28'),
	(2, 'Operator', 'operator', 'wd1@gmail.com', NULL, '$2y$12$YSgnbdjsTW7TahtdD9K0deUbplJcUINo.jCQ5.e/CK6buFMiHGD0K', '6oosR274VfCrLs8EiagvB4H7PuedvGsCPKKqEKm7Pe0YDkXHxeRiaFn7eCBh', '2023-12-17 18:59:28', '2023-12-17 18:59:28'),
	(3, 'Wakil Dekan', 'wakildekan', 'wd2@gmail.com', NULL, '$2y$12$z1pJdpXseu8eyFEnOOQItOFtt./2wmGg1cNzIxkaCsAfdesaYdCX6', 'R5tB1HkfwqHy9e85TSY6j2Z2xe6Gq8lYcaXqSwHghZx4EYJyfUWKcKL8MOJd', '2023-12-17 18:59:29', '2023-12-17 18:59:29'),
	(4, 'Wakil Dekan', 'wakildekan', 'wd3@gmail.com', NULL, '$2y$12$gjqLHadhuvLKzmajM8Sm/.6GU7h9o3jtJDc0HYHmGEruSMzR5IIyC', 'g8Cr3riKEVIH7d4nJB6Chiw1wRaPbIx3mvl7fR61Aao4BaRJWleQuZ8jdsGk', '2023-12-17 18:59:29', '2023-12-17 18:59:29'),
	(5, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$9ye8G4R3.wjEJjrshR25yO/LoXNtCPnymCgq0AMVRzlg/u3u4pGO6', 'q0nA9hZSHwqe9a8cljBwunSTzfIQkyMNmEqpeD2nC9O0dm2qEIVSmNxqon83', '2023-12-17 18:59:29', '2023-12-17 18:59:29'),
	(6, 'Operator Matematika', 'operator', 'op701@gmail.com', NULL, '$2y$12$2Dhr6UNG.9n7z9vsDbibL.UGFQgFl15Z.z0Rrozrq8Plo4iUhs2zu', 'pALzKg2kBF21a5HdvvOUu1SzJyzDTN3NeRHiX5O6C4dl9HK3VrsP0yRrULme', '2023-12-17 18:59:30', '2023-12-17 18:59:30'),
	(7, 'Operator Biologi', 'operator', 'op702@gmail.com', NULL, '$2y$12$vVqTBhFgK/0wZRpLLL34xuq7mySQqkp2ZeoZNEX/NvpMegTkieuxi', '9pmmsp2rTnNMthieYJ6zNapEpohzNJZS8uQwkL3Jy7WenLhjY4wsn5hv9iXK', '2023-12-17 18:59:30', '2023-12-17 18:59:30'),
	(8, 'Operator Fisika', 'operator', 'op703@gmail.com', NULL, '$2y$12$BQTQvwPWJ/xJPAAThuvfqebpJ8Vv.B3NC7DAwK.5GSV2HrMwXYGqK', 'CNmxMdVf9yo6N5ykSHyh7EXWRhA7Hp7DYuYzPCxcfvgMB9B4ZOaqlkRn14EI', '2023-12-17 18:59:31', '2023-12-17 18:59:31'),
	(9, 'Operator Kimia', 'operator', 'op704@gmail.com', NULL, '$2y$12$7DghEi7q8a6A.V0MrW7M..Ilh17wkCQSIFHRTS06MWSywXxvPxr0K', '19rJTIJtnOy7HBgFh3deCnE0HCCOoLz4T4Bt3ng9wpDN3GMXqunfDJQs5yrP', '2023-12-17 18:59:31', '2023-12-17 18:59:31'),
	(10, 'Operator Informatika', 'operator', 'op705@gmail.com', NULL, '$2y$12$71GSYk5GOhiJViGd3Tm4Ju1rdL2ntQJU64uOlJT.ZhO7fNifc6L1W', '26Z8BQtbd7fzPGWnpkEr1D5cFHaSYLwky3UxE4efN43F6hD3o4717nTFWDWt', '2023-12-17 18:59:32', '2023-12-17 18:59:32'),
	(11, 'Operator Elektro', 'operator', 'op706@gmail.com', NULL, '$2y$12$KVx1MagC7lQiVAFAycxwSuj1w6fHxSXWXSyp86V/1CS2oSWAKD13.', 'eJlxgWr91NAb80qSGmNUPKrtpdWZakuXAp65zp4a3FilQ5nuZQoiyZc7Bub7', '2023-12-17 18:59:32', '2023-12-17 18:59:32'),
	(12, 'Operator Agroteknologi', 'operator', 'op707@gmail.com', NULL, '$2y$12$kSZSfU.RcYdGN8k15L2LO.h9DnfzS6OxvzLgv10gNrc4CtB6pfSC.', 'NBDKSts5ovLM6PSGRjadtnWBS2ihiPL0YqKYuRcGvcRqR9COu9o3ldAu2o7z', '2023-12-17 18:59:33', '2023-12-17 18:59:33'),
	(16, 'hadi', 'admin', 'hadiabdulrasyid7@gmail.com', NULL, '$2y$12$.8w31mI5rDN.Z2nMoKd5t.cekKcWSIacGAZqioHbbQp3JsZdQ5nBS', NULL, '2023-12-18 21:31:44', '2023-12-18 21:31:44');

-- Dumping structure for view sasarandb.vw_kinerja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_kinerja` (
	`id` INT(10) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NOT NULL,
	`sasaran` MEDIUMTEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.vw_kinerja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_kinerja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_kinerja` AS select `kinerja`.`id` AS `id`,`kinerja`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`) AS `sasaran`,`kinerja`.`kinerja` AS `kinerja` from (`kinerjas` `kinerja` left join `sasarans` `sasaran` on((`kinerja`.`sasaran_id` = `sasaran`.`id`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
