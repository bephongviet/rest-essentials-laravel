-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 10, 2023 at 04:17 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `rest-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('017e53915f1e680464bcd4f0a5658694863658cd04d07b9ad4b594644fc97aee2cc85a7fee8a9aa9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 19:54:12', '2023-01-09 19:54:12', '2024-01-10 02:54:12'),
('13b94bd807d8b86a2a9534740deb49f39bd5336732ad1335d283f116ab4066efd28eafef883bc47a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:09:42', '2023-01-09 20:09:42', '2024-01-10 03:09:42'),
('23a090a98eb319feec3820689ff056a57cfd503bdb171fde06f58e5d96ed3be12180ad8d0205b303', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:07:49', '2023-01-09 20:07:49', '2024-01-10 03:07:49'),
('5619a2d2b97bc31135ac30ce8b3ae3c188071b08756233b6e432534c7fd15cf2e774831842be3d7f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:08:08', '2023-01-09 20:08:08', '2024-01-10 03:08:08'),
('5a8f1c0081df03d8dc14948e192c90697bc2b3ac2f174da21a853c1f22241c7e5150a98fee5b1b7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:08:28', '2023-01-09 20:08:28', '2024-01-10 03:08:28'),
('5b035bc282ea3ce2962eb68c371c4f8c3f819e0375799043fbf883f2174d42e30a8ead6f101e9bd9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 19:55:03', '2023-01-09 19:55:03', '2024-01-10 02:55:03'),
('713bc03797862642ef4b984ae95dfe8ace7699f6ab241617f53436c33a05f787b362f073df28df22', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:09:39', '2023-01-09 20:09:39', '2024-01-10 03:09:39'),
('745d91b6ce11dc7f0173668bc55fe7fa89649f92d0d8ecc0168282793607c8e6143590e4aefe7178', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 06:19:39', '2023-01-09 06:19:39', '2024-01-09 13:19:39'),
('79a14b17b2e6dbee87648b8f86264baf0ef8aeaf3ae2d3be2cdf64d166780f95c951726da4d7ea67', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:07:45', '2023-01-09 20:07:45', '2024-01-10 03:07:45'),
('8286d3927e58c46a74d029360f6432229f85ef4ff03fb0537da38bac9a90dee0e7cb83b4c8b6b5da', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:07:43', '2023-01-09 20:07:43', '2024-01-10 03:07:43'),
('8bd260aef24c897b2d60305e611c6bef0f7559cf5012c6e6a33724437381ec45f33bf7318f4d3014', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 06:33:12', '2023-01-09 06:33:12', '2024-01-09 13:33:12'),
('91430a5f7841dc08d3a25a646da7c01ee185734d135ee7da56468b7c7d19f88a0ccdc4be755be29e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:32:28', '2023-01-09 20:32:28', '2024-01-10 03:32:28'),
('b480bf51e1370bbd70c9b301062947dcd2bda6998ee9b998f1a68d5c5292cc256b7931e810979aaa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 06:26:07', '2023-01-09 06:26:07', '2024-01-09 13:26:07'),
('c01604f7f7bcc1a17cc1c4301711b07694aebb07df76f654501bd226402413fdb7472675ab3daf84', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 19:58:54', '2023-01-09 19:58:54', '2024-01-10 02:58:54'),
('d5636d461aafbd9e292d802aa3e1e73a82c3044814c8295129a0f0c637cef346c55d7a7a2089693b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:31:30', '2023-01-09 20:31:30', '2024-01-10 03:31:30'),
('dfc1df9df25544b7af89625b9dbc5556ecc7e9cf7218906f17e2c5ab1863a59ce7196df8856cb553', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:07:33', '2023-01-09 20:07:33', '2024-01-10 03:07:33'),
('e0387489a12f5f97874f1789d0dc9b895d2f8cf47621b1bbea0a0f995511bab46e4e15ae48aa09f2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 04:15:55', '2023-01-09 04:15:55', '2024-01-09 11:15:55'),
('f0e00028b943008426c50a8d53ab4f97ecc0fb655b8b8617feb88be766d09e1a05bb6df09eae2d9e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 03:54:21', '2023-01-09 03:54:21', '2024-01-09 10:54:21'),
('fd5f6d0ff1b8f515eadb099a0eae4eaa227787cd119a9dbd003f64d83d93dfca17d8d0bccd44c191', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-01-09 20:33:08', '2023-01-09 20:33:08', '2024-01-10 03:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0FsJvfiArQ1yRHQxYNBhajdBgS10V9VOcIjtDogI', NULL, 'http://localhost', 1, 0, 0, '2023-01-09 03:29:30', '2023-01-09 03:29:30'),
(2, NULL, 'Laravel Password Grant Client', 'auf9LmHmomdjrWyiH1IhMXFTSPGzhsKyr0bx5J8j', 'users', 'http://localhost', 0, 1, 0, '2023-01-09 03:29:30', '2023-01-09 03:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-09 03:29:30', '2023-01-09 03:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Laravel Password Grant Client', 'a136c04de524173a765fa6ad0e73c6e0a18ddf36a736970dae9829136ce75090', '[\"*\"]', NULL, NULL, '2023-01-09 03:33:49', '2023-01-09 03:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test3', 'joseph.pnc@linxhq.com', '2023-01-09 03:33:45', '$2y$10$G4jGbt2iGr6Ci67ZXuWRhubXhurME3EfKfXCF3BsAqjLBpOiAFAFC', NULL, '2023-01-09 03:33:37', '2023-01-09 04:15:47');
COMMIT;
