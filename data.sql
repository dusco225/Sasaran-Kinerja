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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.kinerjas: ~3 rows (approximately)
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
	(34, 17, 'Jumlah jurnal ilmiah yang dimiliki', '2023-12-09 10:15:03', '2023-12-09 10:15:03');

-- Dumping structure for table sasarandb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.migrations: ~0 rows (approximately)

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.sasarans: ~3 rows (approximately)
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
  `id_kinerja` int NOT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `II` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `III` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IV` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.targets: ~0 rows (approximately)

-- Dumping structure for table sasarandb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.users: ~0 rows (approximately)

-- Dumping structure for view sasarandb.vw_kinerja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_kinerja` (
	`id` INT(10) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NOT NULL,
	`sasaran` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.vw_kinerja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_kinerja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_kinerja` AS select `kinerja`.`id` AS `id`,`kinerja`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,`kinerja`.`sasaran_id`) AS `sasaran`,`kinerja`.`kinerja` AS `kinerja` from (`kinerjas` `kinerja` left join `sasarans` `sasaran` on((`kinerja`.`sasaran_id` = `sasaran`.`id`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
