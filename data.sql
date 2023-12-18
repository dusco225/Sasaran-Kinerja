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

-- Data exporting was unselected.

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

-- Data exporting was unselected.

-- Dumping structure for table sasarandb.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table sasarandb.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

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

-- Data exporting was unselected.

-- Dumping structure for table sasarandb.sasarans
DROP TABLE IF EXISTS `sasarans`;
CREATE TABLE IF NOT EXISTS `sasarans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sasaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

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

-- Data exporting was unselected.

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

-- Data exporting was unselected.

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

-- Dumping structure for view sasarandb.view_target_summary
DROP VIEW IF EXISTS `view_target_summary`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_target_summary` (
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
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_kinerja` AS select `kinerja`.`id` AS `id`,`kinerja`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,`kinerja`.`sasaran_id`) AS `sasaran`,`kinerja`.`kinerja` AS `kinerja`,`kinerja`.`created_at` AS `created_at`,`kinerja`.`updated_at` AS `updated-at` from (`kinerjas` `kinerja` left join `sasarans` `sasaran` on((`kinerja`.`sasaran_id` = `sasaran`.`id`)));

-- Dumping structure for view sasarandb.view_target_summary
DROP VIEW IF EXISTS `view_target_summary`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_target_summary`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_target_summary` AS select `target`.`id` AS `id`,`target`.`sasaran_id` AS `sasaran_id`,coalesce(`sasaran`.`sasaran`,`target`.`sasaran_id`) AS `sasaran`,`target`.`kinerja_id` AS `kinerja_id`,coalesce(`kinerja`.`kinerja`,`target`.`kinerja_id`) AS `kinerja`,`target`.`tahunan` AS `tahunan`,`target`.`I` AS `I`,`target`.`II` AS `II`,`target`.`III` AS `III`,`target`.`IV` AS `IV`,`target`.`created_at` AS `created_at`,`target`.`updated_at` AS `updated_at` from ((`targets` `target` left join `sasarans` `sasaran` on((`target`.`sasaran_id` = `sasaran`.`id`))) left join `kinerjas` `kinerja` on((`target`.`kinerja_id` = `kinerja`.`id`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
