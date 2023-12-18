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
DROP DATABASE IF EXISTS `sasarandb`;
CREATE DATABASE IF NOT EXISTS `sasarandb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sasarandb`;

-- Dumping structure for table sasarandb.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
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
DROP TABLE IF EXISTS `kinerjas`;
CREATE TABLE IF NOT EXISTS `kinerjas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int NOT NULL DEFAULT '0',
  `kinerja` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.kinerjas: ~22 rows (approximately)
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
	(42, 12, 'sdadsadasqwdadsadasas adnika', '2023-12-10 21:13:17', '2023-12-10 21:13:17'),
	(55, 15, 'lll', '2023-12-12 00:40:46', '2023-12-12 00:40:46'),
	(56, 17, 'hihiihrrr', '2023-12-13 00:29:29', '2023-12-13 00:30:52');

-- Dumping structure for table sasarandb.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.migrations: ~0 rows (approximately)

-- Dumping structure for table sasarandb.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table sasarandb.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
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
DROP TABLE IF EXISTS `sasarans`;
CREATE TABLE IF NOT EXISTS `sasarans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sasaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.sasarans: ~9 rows (approximately)
REPLACE INTO `sasarans` (`id`, `sasaran`, `created_at`, `updated_at`) VALUES
	(12, 'Menguatkan sistem pendidikan yang berperspektif moderat', '2023-12-09 09:50:03', '2023-12-09 09:50:03'),
	(13, 'Meningkatnya partisipasi peserta didik pada satuan pendidikan', '2023-12-09 09:50:42', '2023-12-11 18:18:43'),
	(14, 'Meningkatnya kualitas tenaga pendidik pada satuan pendidikan', '2023-12-09 09:51:05', '2023-12-09 09:51:05'),
	(15, 'Meningkatnya kualitas standar dan sistem penjaminan mutu pendidikan', '2023-12-09 09:51:34', '2023-12-09 09:51:34'),
	(16, 'Meningkatnya kualitas PTK yang bereputasi internasional', '2023-12-09 09:52:05', '2023-12-09 09:52:05'),
	(17, 'Meningkatnya kualitas pemanfaatan penelitian', '2023-12-09 09:53:03', '2023-12-09 09:53:03'),
	(18, 'Meningkatnya kualitas lulusan PTK yang di terima di dunia kerja', '2023-12-09 09:53:21', '2023-12-09 09:53:21'),
	(19, 'Meningkatnya tata kelola organisasi Unit Eselon 1 yang efektik dan akuntabel', '2023-12-09 09:54:03', '2023-12-09 09:54:13'),
	(25, 'hahahaha', '2023-12-13 00:29:04', '2023-12-13 00:29:04');

-- Dumping structure for table sasarandb.targets
DROP TABLE IF EXISTS `targets`;
CREATE TABLE IF NOT EXISTS `targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int DEFAULT NULL,
  `kinerja_id` int NOT NULL,
  `tahunan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `II` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `III` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IV` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.targets: ~9 rows (approximately)
REPLACE INTO `targets` (`id`, `sasaran_id`, `kinerja_id`, `tahunan`, `I`, `II`, `III`, `IV`, `created_at`, `updated_at`) VALUES
	(2, 12, 16, '12', '1', '2', '3', '4', '2023-12-11 05:41:24', '2023-12-11 05:41:24'),
	(3, 12, 16, '1', '11', '1', '1', '1', '2023-12-11 05:54:15', '2023-12-11 07:40:05'),
	(4, 12, 16, '11', '111', '111', '111', '11', '2023-12-11 06:10:14', '2023-12-11 07:39:45'),
	(6, 12, 16, '12', '1', '1', '1', '1', '2023-12-11 06:43:54', '2023-12-11 07:45:59'),
	(8, 15, 30, NULL, NULL, NULL, NULL, NULL, '2023-12-11 07:01:39', '2023-12-11 07:01:39'),
	(10, 12, 16, NULL, NULL, NULL, NULL, NULL, '2023-12-11 07:28:27', '2023-12-11 07:34:16'),
	(11, 24, 52, NULL, NULL, NULL, NULL, NULL, '2023-12-11 07:50:27', '2023-12-11 07:50:27'),
	(12, 13, 19, 'kkkk', NULL, NULL, NULL, NULL, '2023-12-11 20:46:04', '2023-12-11 20:46:04'),
	(13, 25, 42, '12', '11', NULL, NULL, NULL, '2023-12-13 00:30:01', '2023-12-13 00:31:28');

-- Dumping structure for table sasarandb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('user','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.users: ~5 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dekan', NULL, 'dekan@gmail.com', NULL, '$2y$12$J/I5Nz32zOlGxxY4USEv/eQMTIIf5Je7qYbS43widmFBAFo/pu8Hi', '5rqWFol9dyYQ45EQzAouhLhPCiFtYq7ntR8nkTPsfD14wwl44Cy8q4hu2W7j', '2023-12-12 18:40:18', '2023-12-12 18:40:18'),
	(2, 'Operator', NULL, 'operator@gmail.com', NULL, '$2y$12$XuVvCGJGJevCRTGe0dbSc.5YyX1TtMgyydgaZZA1yd0IvS8NqOgHW', 'LkqqbXvn2g1euk1uzZT8VfBgyFYq4J0VVWSaYujOMyQpXct9gqzB7p54YM4n', '2023-12-12 18:40:18', '2023-12-12 18:40:18'),
	(3, 'Wakil Dekan', NULL, 'wd@gmail.com', NULL, '$2y$12$9yGRBtPDrFA2gBi9Sk/tqOhi5dYTAc0oNhg2g7fqNthVCEBnv3LZW', 'GQgHu23dugDJ16ajLsfM4xjmx2vZ0yRsljfD7oAhiFrG8GqnHwpqoqjVD1KF', '2023-12-12 18:40:19', '2023-12-12 18:40:19'),
	(4, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$12$l3.1xFteHfufb/XXDiuLwujuc2Nq4nmRlXy46QgKPee.Sl7vCz.UW', '7nt0mDRLJ1Yz8ErsCg1byhn9zAyM0jWaYtARo6gI7GVrmTfwkWdZAA6jfSkA', '2023-12-12 18:40:19', '2023-12-12 18:40:19'),
	(5, 'Kajur', NULL, 'kajur@gmail.com', NULL, '$2y$12$FM7FrNsQ/BZXjOAmN6KG4.pmkdoNbyVRyzM6hXigavAsrsOWshvXu', '2P1ZJGKM2oKsEwfW2y5TITUipn2psYSR5tft2d0LfzbKOvmOLUPVDVkPUEt2', '2023-12-12 18:40:20', '2023-12-12 18:40:20');

-- Dumping structure for view sasarandb.view_kinerja
DROP VIEW IF EXISTS `view_kinerja`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_kinerja` (
	`id` INT(10) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NOT NULL,
	`sasaran` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated-at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.view_target
DROP VIEW IF EXISTS `view_target`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_target` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NULL,
	`sasaran` MEDIUMTEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja_id` INT(10) NOT NULL,
	`kinerja` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tahunan` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`I` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`II` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`III` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`IV` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.view_kinerja
DROP VIEW IF EXISTS `view_kinerja`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_kinerja`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kinerja` AS select `kinerja`.`id` AS `id`,`kinerja`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,`kinerja`.`sasaran_id`) AS `sasaran`,`kinerja`.`kinerja` AS `kinerja`,`kinerja`.`created_at` AS `created_at`,`kinerja`.`updated_at` AS `updated-at` from (`kinerjas` `kinerja` left join `sasarans` `sasaran` on((`kinerja`.`sasaran_id` = `sasaran`.`id`)));

-- Dumping structure for view sasarandb.view_target
DROP VIEW IF EXISTS `view_target`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_target`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_target` AS select `target`.`id` AS `id`,`target`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,`target`.`sasaran_id`) AS `sasaran`,`target`.`kinerja_id` AS `kinerja_id`,coalesce(`kinerja`.`kinerja`,`target`.`kinerja_id`) AS `kinerja`,`target`.`tahunan` AS `tahunan`,`target`.`I` AS `I`,`target`.`II` AS `II`,`target`.`III` AS `III`,`target`.`IV` AS `IV`,`target`.`created_at` AS `created_at`,`target`.`updated_at` AS `updated_at` from ((`targets` `target` left join `sasarans` `sasaran` on((`target`.`sasaran_id` = `sasaran`.`id`))) left join `kinerjas` `kinerja` on((`target`.`kinerja_id` = `kinerja`.`id`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
