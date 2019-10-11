-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla online.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla online.lista_beneficiados
CREATE TABLE IF NOT EXISTS `lista_beneficiados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nintendo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cuenta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.lista_beneficiados: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_beneficiados` DISABLE KEYS */;
INSERT INTO `lista_beneficiados` (`id`, `correo`, `id_nintendo`, `pagado`, `id_cuenta`, `created_at`, `updated_at`) VALUES
	(1, 'sanramdave1984@gmail.com', 'sanramdave | Spartak117', 'Completo', '1', '2019-09-24 01:27:38', '2019-09-24 02:04:40'),
	(2, 'totalitygrunge@hotmail.com', 'starkiller | Maustarkill', 'Completo', '1', '2019-09-24 01:53:03', '2019-09-24 02:12:30'),
	(3, 'tacvbo_yantra@hotmail.com', 'Santi | Edyfrank', 'Completo', '1', '2019-09-24 02:17:37', '2019-09-24 02:36:20'),
	(4, 'yayo.md.1995@gmail.com', 'yayo', 'Completo', '1', '2019-09-24 02:27:18', '2019-09-24 06:27:34'),
	(5, 'auuh@hotmail.com', 'junisansus', 'Completo', '1', '2019-09-24 03:19:25', '2019-09-24 16:19:59'),
	(6, 'brayamgalica1222@gmail.com', '...brayam', 'Completo', '1', '2019-09-24 03:20:41', '2019-09-24 03:36:07'),
	(7, 'jacobo56565@hotmail.com', 'Dario?', 'Completo', '1', '2019-09-24 03:22:57', '2019-09-24 17:49:51'),
	(8, 'jm19871402@gmail.com', 'chilango', 'Completo', '2', '2019-09-24 18:41:49', '2019-09-24 18:53:41'),
	(10, 'didieralexis23@gmail.com', 'darm2328', 'Completo', '2', '2019-09-24 18:49:11', '2019-09-24 19:01:42'),
	(11, 'dreadcarlos83@gmail.com', 'LSDreamer', 'Completo', '2', '2019-09-24 19:20:39', '2019-09-24 23:51:16'),
	(12, 'emazetna@hotmail.com', 'zetiina', 'Completo', '2', '2019-09-25 02:37:58', '2019-09-25 18:32:17'),
	(13, 'aldosomerville@hotmail.com', 'Somer', 'Completo', '2', '2019-09-26 00:50:40', '2019-09-26 22:16:47'),
	(14, 'jdavidjaimes@hotmail.com', 'davidlab99', 'Completo', '2', '2019-09-26 22:39:48', '2019-09-26 22:59:07'),
	(15, 'javiersanty25@gmail.com', 'PolloRuiz', 'Completo', '2', '2019-09-27 02:34:19', '2019-09-27 19:38:48'),
	(16, 'carlos_torres268@hotmail.com', 'jonse', 'Pagado', '3', '2019-09-30 02:02:54', '2019-09-30 17:47:28'),
	(17, 'necro', 'moscanegra981@hotmail.com', 'Pagado', '3', '2019-09-30 04:03:46', '2019-09-30 04:23:10'),
	(18, 'aspert2@hotmail.com', 'hacker', 'Pagado', '3', '2019-09-30 04:04:38', '2019-09-30 04:04:38');
/*!40000 ALTER TABLE `lista_beneficiados` ENABLE KEYS */;

-- Volcando estructura para tabla online.lista_cuentas
CREATE TABLE IF NOT EXISTS `lista_cuentas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cuentas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.lista_cuentas: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_cuentas` DISABLE KEYS */;
INSERT INTO `lista_cuentas` (`id`, `cuentas`, `correo`, `password`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'BrianvStal', 'BrianVStall@gmail.com', 'BVs1990/', 'Completado', '2019-09-23 22:42:33', '2019-09-24 18:27:20'),
	(2, 'gineshmesa', 'gineshmesa@gmail.com', 'GHmesa1990/', 'Completado', '2019-09-24 18:27:14', '2019-09-27 19:39:11'),
	(3, 'fazzio90', 'Fazzioal90@gmail.com', 'FaLeano90/', NULL, '2019-09-30 01:34:00', '2019-09-30 01:34:00');
/*!40000 ALTER TABLE `lista_cuentas` ENABLE KEYS */;

-- Volcando estructura para tabla online.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.migrations: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_09_23_063824_create_lista_cuentas_table', 1),
	(5, '2019_09_23_065058_create_lista_beneficiados_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla online.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('danielkage9@gmail.com', '$2y$10$oQ2r2M9A8Arhvg1QHo7gKOuyVXppCeIDTiyZnPYWtDaSfo7gTQlum', '2019-09-24 16:20:55');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla online.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla online.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Daniel', 'admin@email.com', NULL, '$2y$10$VTcR6Gns5q2/Tk9KeYwPleDhBLpA0sDZRi1ygh6xg9HUbpq2Bot5G', NULL, '2019-09-23 22:33:25', '2019-09-23 22:33:25'),
	(2, 'Daniel', 'danielkage9@gmail.com', NULL, '$2y$10$ayYHgQG84de.qmseoEPuBOMgv.UYVLNHShPlIEJADbKDzhIU.i.u6', NULL, '2019-09-24 06:27:16', '2019-09-24 06:27:16'),
	(3, 'Daniel A Trejo Rojas', 'admin@gmail.com', NULL, '$2y$10$IFB3wBHWKQ.19wb5l3mhiO4/4TY3kIauwYLNMlgHOEJtrXC0zn6tq', NULL, '2019-09-24 16:22:20', '2019-09-24 16:22:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
