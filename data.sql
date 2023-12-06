-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
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
CREATE DATABASE IF NOT EXISTS `sasarandb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sasarandb`;

-- Dumping structure for table sasarandb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table sasarandb.kinerjas
CREATE TABLE IF NOT EXISTS `kinerjas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int(10) NOT NULL DEFAULT 0,
  `kinerja` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.kinerjas: ~4 rows (approximately)
REPLACE INTO `kinerjas` (`id`, `sasaran_id`, `kinerja`, `created_at`, `updated_at`) VALUES
	(7, 6, 'jasmine', '2023-12-04 20:30:29', '2023-12-04 20:30:29'),
	(8, 6, 'aufa', '2023-12-04 20:30:35', '2023-12-04 20:30:35'),
	(9, 5, 'aufa', '2023-12-04 23:59:23', '2023-12-04 23:59:23'),
	(10, 5, 'jasmine', '2023-12-05 00:00:10', '2023-12-05 00:00:10');

-- Dumping structure for table sasarandb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.migrations: ~7 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_11_26_101053_create_kinerjas_table', 1),
	(6, '2023_11_26_102754_create_targets_table', 1),
	(7, '2023_11_27_063109_create_sasarans_table', 1);

-- Dumping structure for table sasarandb.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table sasarandb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sasaran` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.sasarans: ~2 rows (approximately)
REPLACE INTO `sasarans` (`id`, `sasaran`, `created_at`, `updated_at`) VALUES
	(5, 'jajsadads', '2023-12-04 00:47:17', '2023-12-04 00:47:17'),
	(6, 'sasaran sipa digunakan', '2023-12-04 20:30:19', '2023-12-04 20:30:19');

-- Dumping structure for table sasarandb.targets
CREATE TABLE IF NOT EXISTS `targets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kinerja` int(11) NOT NULL,
  `I` varchar(255) NOT NULL,
  `II` varchar(255) NOT NULL,
  `III` varchar(255) NOT NULL,
  `IV` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sasarandb.targets: ~0 rows (approximately)

-- Dumping structure for table sasarandb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
	`sasaran` MEDIUMTEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`kinerja` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sasarandb.vw_kinerja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_kinerja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_kinerja` AS SELECT 
kinerja.id AS id,
kinerja.sasaran_id AS sasaran_id,
COALESCE(sasaran.sasaran, kinerja.sasaran_id) AS sasaran,
kinerja.kinerja AS kinerja

FROM kinerjas kinerja

LEFT JOIN sasarans sasaran ON kinerja.sasaran_id = sasaran.id ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
