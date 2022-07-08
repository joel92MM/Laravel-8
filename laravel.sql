-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-07-2022 a las 10:08:19
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_29_142206_create_profesion_table', 1),
(6, '2022_06_29_152431_add_profesion_id_to_users', 1),
(7, '2022_07_01_150703_create_habilidades_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesiones`
--

CREATE TABLE `profesiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesiones`
--

INSERT INTO `profesiones` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollador Back-end', '2022-07-08 09:06:49', '2022-07-08 09:06:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'thelastofus.com',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_profesion` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `website`, `remember_token`, `created_at`, `updated_at`, `id_profesion`) VALUES
(1, 'Joel', 'joel@roquark.com', '2022-07-08 09:06:49', 1, '$2y$10$d.QM7vQPnYC7Hz3rrTHWIe.IyHAdg79dxSbuDbkmeS1S1njqY7Ise', 'www.roquark.com', 'lxR5Dvqt74', '2022-07-08 09:06:49', '2022-07-08 09:06:49', 1),
(2, 'Tressa Shanahan', 'mvolkman@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '9DN5Mw73oF', '2022-07-08 09:06:49', '2022-07-08 09:06:49', 1),
(3, 'Fabiola Mills', 'rylee.hoeger@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '0HS2yL8Rb1', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(4, 'Adeline Moen', 'mckenzie.cyrus@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '7hvTScEFJM', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(5, 'Mustafa Gusikowski', 'twila.berge@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '2P6hOn79Hq', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(6, 'Ms. Marjolaine Will MD', 'zboncak.antone@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'OstgcumO4W', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(7, 'Prof. Charley Sanford', 'arowe@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'gmrMEC8LRj', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(8, 'Arnoldo Denesik', 'bauch.tatyana@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'pQVxv2yYuB', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(9, 'Mac Farrell Sr.', 'kirsten.gerlach@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'srI34zw9Ja', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(10, 'Dr. Trace Howe I', 'vicente.ritchie@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'p0uY9ZDc1G', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(11, 'Dejon Emard III', 'micaela01@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'ANyNncLBBS', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(12, 'Joey Lemke', 'pasquale.okuneva@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'LnI150sclp', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(13, 'Prof. Aubree Tillman IV', 'hhoeger@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'ott5j9MtpY', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(14, 'Zita Gleichner', 'turcotte.hector@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'ptwXgsJBo1', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(15, 'Dr. Katelynn Lueilwitz', 'imani.casper@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'tiGYBymQpS', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(16, 'Ariel Lindgren', 'hayes.micah@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'YPYduz796T', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(17, 'Mr. Ian Wolf PhD', 'percy.cormier@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'MKh2LYusxR', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(18, 'Mrs. Georgiana Hahn', 'jasen.pfannerstill@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '1JayhCG1OG', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(19, 'Malika Eichmann', 'grayce.kris@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'fbGifFQuFB', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(20, 'Eric Denesik', 'myriam.ullrich@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'rHHDao1aIT', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(21, 'Michaela Stroman', 'cheyenne95@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'g6xoiBd6gW', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(22, 'Dr. Deshaun Schmeler', 'ysenger@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'DY8dD79DyK', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(23, 'Mr. Derrick Roberts', 'sally08@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '00rbBiHdCq', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(24, 'Waylon Larkin', 'bonnie06@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '7NpPtF7Gce', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(25, 'Josie Fisher', 'madaline.feest@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'YOw0apkb6t', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(26, 'Velma Sipes', 'nicolas.ferne@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'ZpZ56Ksbfl', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(27, 'Cassandra Hoppe', 'eledner@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'sDsjwBrde1', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(28, 'Athena Corwin IV', 'mueller.deshawn@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'z9FrrlMgZf', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(29, 'Jillian Leuschke', 'bbode@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'Fl96vb3umx', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(30, 'Breanne Towne', 'schneider.ed@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'hQOs5l1scs', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(31, 'Dr. Damien Jaskolski V', 'quentin.mclaughlin@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'Oor2XSGVQw', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(32, 'Martina McClure', 'ocie.hegmann@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '5UmvoE7Jiz', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(33, 'Creola Nienow', 'hailey.torp@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'TkTlycSWIm', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(34, 'Joseph Braun II', 'htremblay@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'bgCTvSAbGh', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(35, 'Prof. Reyes Emmerich', 'susana.glover@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '6lZP4hQxCR', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(36, 'Jeffrey Mante', 'cdubuque@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'l3f9eKoNPt', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(37, 'Prof. Davon Hermiston', 'dlynch@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'nGRkVW8wIM', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(38, 'Ruben Heaney', 'jwintheiser@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'bSWlVnWuvB', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(39, 'Amani Balistreri', 'ewald80@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'aOcQJKaP4h', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(40, 'Dr. Sven Reichert', 'betty39@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'kQhOejWiwP', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(41, 'Austyn Hirthe', 'frederic.howe@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'UJAqP3FIKc', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(42, 'Carley Hegmann', 'crooks.belle@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'bEdCPQdlRd', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(43, 'Ethel Mann', 'keshawn53@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'AErfYwo4qr', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(44, 'Mr. Marcel Block IV', 'gfisher@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'CAg1zJMPQ8', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(45, 'Jaleel Smitham', 'ahmad.mckenzie@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'TqBIqzS6nD', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(46, 'Mylene Kulas Jr.', 'abernathy.katelynn@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'tkrBdIHzE9', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(47, 'Miss Janis Langworth MD', 'raegan10@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'xWP0K17I4g', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(48, 'Magnus Waelchi', 'kiera00@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'bHYynMiZRo', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(49, 'Dr. Kiley Willms Sr.', 'michael42@example.net', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'vu9Ce4TlYs', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(50, 'Madyson Abernathy', 'ustamm@example.org', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', 'F3HYU1zm7B', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(51, 'Dr. Cale Ratke DVM', 'gussie.kuphal@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '3vaZum7pUa', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL),
(52, 'Miss Serena Little', 'faye62@example.com', '2022-07-08 09:06:49', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thelastofus.com', '94Ou2oXXaB', '2022-07-08 09:06:49', '2022-07-08 09:06:49', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `profesiones`
--
ALTER TABLE `profesiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profesiones_title_unique` (`title`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_profesion_foreign` (`id_profesion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesiones`
--
ALTER TABLE `profesiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_profesion_foreign` FOREIGN KEY (`id_profesion`) REFERENCES `profesiones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
