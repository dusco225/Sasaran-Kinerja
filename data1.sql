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
  `tahunan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `II` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `III` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IV` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.capaians: ~3 rows (approximately)
REPLACE INTO `capaians` (`id`, `sasaran_id`, `kinerja_id`, `tahunan`, `I`, `II`, `III`, `IV`, `created_at`, `updated_at`) VALUES
	(1, 12, 16, '1', '1', '1', '1', '1', '2023-12-13 21:31:04', '2023-12-13 21:35:44'),
	(3, 17, 34, '11', '2', '11', '32', '14', '2023-12-20 06:32:41', '2023-12-20 06:32:41'),
	(4, 14, 22, '20', '2', '4', '7', '10', '2023-12-20 06:33:12', '2023-12-20 06:33:12'),
	(6, 16, 30, '122', '22', '12', '32', '12', '2023-12-27 20:16:28', '2023-12-27 20:16:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
	(34, 17, 'Jumlah jurnal ilmiah yang dimiliki', '2023-12-09 10:15:03', '2023-12-09 10:15:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `tahunan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `II` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `III` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IV` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.targets: ~7 rows (approximately)
REPLACE INTO `targets` (`id`, `sasaran_id`, `kinerja_id`, `tahunan`, `I`, `II`, `III`, `IV`, `created_at`, `updated_at`) VALUES
	(2, 12, 16, '12', '1', '23', '32', '7', '2023-12-11 05:41:24', '2023-12-28 18:27:09'),
	(3, 12, 16, '1', '11', '1', '1', '1', '2023-12-11 05:54:15', '2023-12-13 20:20:28'),
	(4, 12, 16, '11', '111', '111', '111', '11', '2023-12-11 06:10:14', '2023-12-11 07:39:45'),
	(6, 12, 16, '12', '1', '1', '1', '1', '2023-12-11 06:43:54', '2023-12-11 07:45:59'),
	(8, 15, 30, '123', '12', '12', '33', '54', '2023-12-11 07:01:39', '2023-12-27 20:17:02'),
	(12, 12, 16, '12', '12', '11', '12', '00', '2023-12-11 10:40:36', '2023-12-13 20:19:27'),
	(13, 15, 26, '133', '12', '32', '34', '43', '2023-12-11 18:20:32', '2023-12-27 20:17:25');

-- Dumping structure for table sasarandb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` enum('Dekan','Wakil Dekan','Operator','Admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('dekan','operator','admin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.users: ~12 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `jabatan`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dekan', 'Dekan', 'dekan', 'dekan@gmail.com', NULL, '$2y$12$.FHp.W5o4LO09B4uOa.LFucKdMKPN2opbs2armpHKg.WQzrp/vs1.', 'I42r3ryRBkzNAwPtCaE5CAsAWbnsHsX1QiwP4HezxvX69YuQuExDnHSPIxrK', '2023-12-28 19:44:49', '2023-12-28 20:05:56'),
	(2, 'Wakil Dekan', 'Wakil Dekan', 'dekan', 'wd1@gmail.com', NULL, '$2y$12$yvf2Q/PIsOtZdCbBBzmPBuRXRZAqrBJ7Vf1LidDD3MwbHK1psjaai', 'bzqv9KI5D2OqEpmm180nFkqspfnay9w5V9QcUk9amPB7T0BJ89fbGtSWvV7a', '2023-12-28 19:44:49', '2023-12-28 20:06:24'),
	(3, 'Wakil Dekan', 'Wakil Dekan', 'dekan', 'wd2@gmail.com', NULL, '$2y$12$idELgs3wjGtfUb0bnXy8ku7rz6LytuX4sj1i8e7QhW/a9i/CQx0HG', 'ObdSE17etr44FpLdrlaMWXMFKacsoMhX1nPyJc8F79eyH0Y5Mf9G7CDAD2Kk', '2023-12-28 19:44:50', '2023-12-28 20:06:47'),
	(4, 'Wakil Dekan', 'Wakil Dekan', 'dekan', 'wd3@gmail.com', NULL, '$2y$12$ITyKqlw5Mc4bfA74sstOD.B1wjzirkH6yg2hQTKJQqGDX88JhHuKu', 'SMAUyzg8aNr2fw47HPPTRhUMUq3f12MX9tHCHhE8MuMdWgdVvc8ToDosIhZM', '2023-12-28 19:44:50', '2023-12-28 20:07:03'),
	(5, 'Admin', 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$fltYd7itVZZFWUgRGSsske6RHGdS2jYxB8oKYvKVwqGYjhpcu1wvu', 'kvdjrlEEFqY2M9dBo8WPPuWXRbUJb0AtHR3opp77TuxkdRARecS00vVBu3AJ', '2023-12-28 19:44:50', '2023-12-28 19:44:50'),
	(6, 'Operator Matematika', 'Operator', 'operator', 'op701@gmail.com', NULL, '$2y$12$4ZO.wsfoLqfUeBmO9xgl.uI1C5fyCX3P/YKyZayxvD4mhKnWE9Jy.', 'rAlm44KJSGrfH5gdvpgJMlStkWlpxwpBrdsn06oUquXSeaHEpx3NgVtdvN15', '2023-12-28 19:44:51', '2023-12-28 20:07:14'),
	(7, 'Operator Biologi', 'Operator', 'operator', 'op702@gmail.com', NULL, '$2y$12$IfdxLxkhvgXFfVlPwOw4SOumXCuu7mNZY1NU1luYbZftFzYj/NrWC', 'nyC77eQnx52hpKtGeUAOR2Jjk4i16am64NlbCgKLNT8tgG19sxnz7GiRqB06', '2023-12-28 19:44:52', '2023-12-28 20:07:24'),
	(8, 'Operator Fisika', 'Operator', 'operator', 'op703@gmail.com', NULL, '$2y$12$r4waVSALMNmnp.5xvfiQ2O0UqlujjR6owMKEWg9m4sDvwjpxJEa7.', '6sybvADDqOvYU5rA72LL3k9wjQ4uyBY68bAbEbpg0JyKCNUN8S0ir7gQQ8b7', '2023-12-28 19:44:52', '2023-12-28 20:07:35'),
	(9, 'Operator Kimia', 'Operator', 'operator', 'op704@gmail.com', NULL, '$2y$12$nDSxPn3UpqadJ5ZBsq50j.1U46BDj9tI8RD.sN9QY3Et4N8t.xJWK', 'JdizwL0uMaXyYKEPSD4rZAYEUrhYxN7fQcNzWoPAwCVOah54EyRXz60fpUPq', '2023-12-28 19:44:53', '2023-12-28 20:08:03'),
	(10, 'Operator Informatika', 'Operator', 'operator', 'op705@gmail.com', NULL, '$2y$12$Smddf8V4ZNuQvhbns25ZG.MnM5aBEti8fKcRu2CkLQNLYdtIuusmC', 'nTD8dXQ7KLdD0nRwkTeFAZrtnW9YQEvxdhp9K8pumSVvQmytvXDXAmbpo3zt', '2023-12-28 19:44:54', '2023-12-28 20:08:15'),
	(11, 'Operator Elektro', 'Operator', 'operator', 'op706@gmail.com', NULL, '$2y$12$dnYMASDsXMLDLD9o8suLy.Re54/Wcpc/FUM0RWdcUeVtsZCZ8tX1G', 'nfEI3FQPvAmnc8a4kpNCspLmDzZa3EyEdDEG2fg7A6HpyQ0XCJUt2nSEUwDg', '2023-12-28 19:44:54', '2023-12-28 20:08:25'),
	(12, 'Operator Agroteknologi', 'Operator', 'operator', 'op707@gmail.com', NULL, '$2y$12$BFBCt0QPvMmSJx7hdCiDPevJ3ZhE/ASALkOsuHTguEI6a810ZSiKu', '5nt7sCJ1C8cugJnCbOBBAQjNlhzKYXZP1aFnUn2gs8eqFWplwr5YEprpaFLa', '2023-12-28 19:44:55', '2023-12-28 20:08:36');

-- Dumping structure for view sasarandb.view_kinerja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_kinerja` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NULL,
	`sasaran` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
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

-- Dumping structure for view sasarandb.vw_capaian
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_capaian` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NOT NULL,
	`sasaran` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja_id` INT(10) NOT NULL,
	`kinerja` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tahunan` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`I` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`II` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`III` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`IV` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.vw_kinerja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_kinerja` (
	`id` INT(10) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NOT NULL,
	`sasaran` MEDIUMTEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.vw_target
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_target` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`sasaran_id` INT(10) NULL,
	`sasaran` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
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
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_kinerja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_kinerja` AS select `target`.`id` AS `id`,`target`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,'') AS `sasaran`,`target`.`kinerja_id` AS `kinerja_id`,coalesce(`kinerja`.`kinerja`,'') AS `kinerja`,`target`.`tahunan` AS `tahunan`,`target`.`I` AS `I`,`target`.`II` AS `II`,`target`.`III` AS `III`,`target`.`IV` AS `IV`,`target`.`created_at` AS `created_at`,`target`.`updated_at` AS `updated_at` from ((`targets` `target` left join `sasarans` `sasaran` on((`target`.`sasaran_id` = `sasaran`.`id`))) left join `kinerjas` `kinerja` on((`target`.`kinerja_id` = `kinerja`.`id`)));

-- Dumping structure for view sasarandb.vw_capaian
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_capaian`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_capaian` AS select `capaian`.`id` AS `id`,`capaian`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,'') AS `sasaran`,`capaian`.`kinerja_id` AS `kinerja_id`,coalesce(`kinerja`.`kinerja`,'') AS `kinerja`,`capaian`.`tahunan` AS `tahunan`,`capaian`.`I` AS `I`,`capaian`.`II` AS `II`,`capaian`.`III` AS `III`,`capaian`.`IV` AS `IV`,`capaian`.`created_at` AS `created_at`,`capaian`.`updated_at` AS `updated_at` from ((`capaians` `capaian` left join `sasarans` `sasaran` on((`capaian`.`sasaran_id` = `sasaran`.`id`))) left join `kinerjas` `kinerja` on((`capaian`.`kinerja_id` = `kinerja`.`id`)));

-- Dumping structure for view sasarandb.vw_kinerja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_kinerja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_kinerja` AS select `kinerja`.`id` AS `id`,`kinerja`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`) AS `sasaran`,`kinerja`.`kinerja` AS `kinerja` from (`kinerjas` `kinerja` left join `sasarans` `sasaran` on((`kinerja`.`sasaran_id` = `sasaran`.`id`)));

-- Dumping structure for view sasarandb.vw_target
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_target`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_target` AS select `target`.`id` AS `id`,`target`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,'') AS `sasaran`,`target`.`kinerja_id` AS `kinerja_id`,coalesce(`kinerja`.`kinerja`,'') AS `kinerja`,`target`.`tahunan` AS `tahunan`,`target`.`I` AS `I`,`target`.`II` AS `II`,`target`.`III` AS `III`,`target`.`IV` AS `IV`,`target`.`created_at` AS `created_at`,`target`.`updated_at` AS `updated_at` from ((`targets` `target` left join `sasarans` `sasaran` on((`target`.`sasaran_id` = `sasaran`.`id`))) left join `kinerjas` `kinerja` on((`target`.`kinerja_id` = `kinerja`.`id`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
