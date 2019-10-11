-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-10-2019 a las 16:12:30
-- Versión del servidor: 5.7.27-0ubuntu0.19.04.1
-- Versión de PHP: 7.3.10-1+ubuntu19.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_beneficiados`
--

CREATE TABLE `lista_beneficiados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nintendo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cuenta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lista_beneficiados`
--

INSERT INTO `lista_beneficiados` (`id`, `correo`, `id_nintendo`, `pagado`, `id_cuenta`, `created_at`, `updated_at`) VALUES
(1, 'sanramdave1984@gmail.com', 'sanramdave | Spartak117', 'Completo', '1', '2019-09-24 06:27:38', '2019-09-24 07:04:40'),
(2, 'totalitygrunge@hotmail.com', 'starkiller | Maustarkill', 'Completo', '1', '2019-09-24 06:53:03', '2019-09-24 07:12:30'),
(3, 'tacvbo_yantra@hotmail.com', 'Santi | Edyfrank', 'Completo', '1', '2019-09-24 07:17:37', '2019-09-24 07:36:20'),
(4, 'yayo.md.1995@gmail.com', 'yayo', 'Completo', '1', '2019-09-24 07:27:18', '2019-09-24 11:27:34'),
(5, 'auuh@hotmail.com', 'junisansus', 'Completo', '1', '2019-09-24 08:19:25', '2019-09-24 21:19:59'),
(6, 'brayamgalica1222@gmail.com', '...brayam', 'Completo', '1', '2019-09-24 08:20:41', '2019-09-24 08:36:07'),
(7, 'jacobo56565@hotmail.com', 'Dario?', 'Completo', '1', '2019-09-24 08:22:57', '2019-09-24 22:49:51'),
(8, 'jm19871402@gmail.com', 'chilango', 'Completo', '2', '2019-09-24 23:41:49', '2019-09-24 23:53:41'),
(10, 'didieralexis23@gmail.com', 'darm2328', 'Completo', '2', '2019-09-24 23:49:11', '2019-09-25 00:01:42'),
(11, 'dreadcarlos83@gmail.com', 'LSDreamer', 'Completo', '2', '2019-09-25 00:20:39', '2019-09-25 04:51:16'),
(12, 'emazetna@hotmail.com', 'zetiina', 'Completo', '2', '2019-09-25 07:37:58', '2019-09-25 23:32:17'),
(13, 'aldosomerville@hotmail.com', 'Somer', 'Completo', '2', '2019-09-26 05:50:40', '2019-09-27 03:16:47'),
(14, 'jdavidjaimes@hotmail.com', 'davidlab99', 'Completo', '2', '2019-09-27 03:39:48', '2019-09-27 03:59:07'),
(15, 'javiersanty25@gmail.com', 'PolloRuiz', 'Completo', '2', '2019-09-27 07:34:19', '2019-09-28 00:38:48'),
(16, 'carlos_torres268@hotmail.com', 'jonse', 'Pagado', '3', '2019-09-30 07:02:54', '2019-09-30 22:47:28'),
(17, 'necro', 'moscanegra981@hotmail.com', 'Pagado', '3', '2019-09-30 09:03:46', '2019-09-30 09:23:10'),
(18, 'aspert2@hotmail.com', 'hacker', 'Pagado', '3', '2019-09-30 09:04:38', '2019-09-30 09:04:38'),
(19, 'jessicazujeysegovia@gmail.com', 'zujey96', 'Pagado', '3', '2019-10-02 22:58:01', '2019-10-03 03:25:46'),
(20, 'karen_ose@outlook.com', 'Erick', 'Pagado', '3', '2019-10-04 06:56:57', '2019-10-05 05:38:50'),
(21, 'nahum.smash@gmail.com', 'Nahum', 'Pagado', '3', '2019-10-04 06:57:27', '2019-10-05 05:38:58'),
(22, 'Corrin972@gmail.com', 'corrin#772', 'Pendiente', '3', '2019-10-07 22:40:11', '2019-10-07 22:40:11'),
(23, 'angelfrankiller@gmail.com', 'Dante', 'Pendiente', '4', '2019-10-07 23:36:17', '2019-10-07 23:36:17'),
(24, '60060y6@gmail.com', '666', 'Pagado', '4', '2019-10-08 08:02:27', '2019-10-08 08:02:27'),
(25, 'damian44_alexis@outlook.com', 'damian', 'Pagado', '4', '2019-10-10 08:04:53', '2019-10-12 00:25:01'),
(26, 'diamantig2@gmail.com', 'diamantig', 'Pendiente', '4', '2019-10-12 00:24:41', '2019-10-12 00:24:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_cuentas`
--

CREATE TABLE `lista_cuentas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuentas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lista_cuentas`
--

INSERT INTO `lista_cuentas` (`id`, `cuentas`, `correo`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BrianvStal', 'BrianVStall@gmail.com', 'BVs1990/', 'Completado', '2019-09-24 03:42:33', '2019-09-24 23:27:20'),
(2, 'gineshmesa', 'gineshmesa@gmail.com', 'GHmesa1990/', 'Completado', '2019-09-24 23:27:14', '2019-09-28 00:39:11'),
(3, 'fazzio90', 'Fazzioal90@gmail.com', 'FaLeano90/', 'Completado', '2019-09-30 06:34:00', '2019-10-07 22:40:35'),
(4, 'andrew2004', 'andrewdomingues21@outlook.com', 'andrew21/', NULL, '2019-10-07 22:55:28', '2019-10-07 23:01:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_23_063824_create_lista_cuentas_table', 1),
(5, '2019_09_23_065058_create_lista_beneficiados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('danielkage9@gmail.com', '$2y$10$oQ2r2M9A8Arhvg1QHo7gKOuyVXppCeIDTiyZnPYWtDaSfo7gTQlum', '2019-09-24 21:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'admin@email.com', NULL, '$2y$10$VTcR6Gns5q2/Tk9KeYwPleDhBLpA0sDZRi1ygh6xg9HUbpq2Bot5G', NULL, '2019-09-24 03:33:25', '2019-09-24 03:33:25'),
(2, 'Daniel', 'danielkage9@gmail.com', NULL, '$2y$10$ayYHgQG84de.qmseoEPuBOMgv.UYVLNHShPlIEJADbKDzhIU.i.u6', NULL, '2019-09-24 11:27:16', '2019-09-24 11:27:16'),
(3, 'Daniel A Trejo Rojas', 'admin@gmail.com', NULL, '$2y$10$IFB3wBHWKQ.19wb5l3mhiO4/4TY3kIauwYLNMlgHOEJtrXC0zn6tq', NULL, '2019-09-24 21:22:20', '2019-09-24 21:22:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_beneficiados`
--
ALTER TABLE `lista_beneficiados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_cuentas`
--
ALTER TABLE `lista_cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lista_beneficiados`
--
ALTER TABLE `lista_beneficiados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `lista_cuentas`
--
ALTER TABLE `lista_cuentas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
