-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 يونيو 2021 الساعة 01:53
-- إصدار الخادم: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree_test`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_03_125528_create_trees_table', 1),
(5, '2021_06_03_130048_create_tree_roots_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `trees`
--

CREATE TABLE `trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `trees`
--

INSERT INTO `trees` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Conférence planning map', '2021-06-05 13:09:29', '2021-06-05 13:09:29');

-- --------------------------------------------------------

--
-- بنية الجدول `tree_roots`
--

CREATE TABLE `tree_roots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree` int(11) NOT NULL,
  `root` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `parent_order` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `grandfather_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tree_roots`
--

INSERT INTO `tree_roots` (`id`, `tree`, `root`, `level`, `parent_order`, `order`, `grandfather_order`, `created_at`, `updated_at`) VALUES
(43, 5, 'Conférence planning', 0, 0, 0, 0, '2021-06-05 13:09:29', '2021-06-05 13:09:29'),
(44, 5, 'Goals', 1, 0, 0, 0, '2021-06-05 13:09:42', '2021-06-05 13:09:42'),
(45, 5, 'Arrangement', 1, 0, 1, 0, '2021-06-05 13:09:48', '2021-06-05 13:09:48'),
(46, 5, 'Participants', 1, 0, 2, 0, '2021-06-05 13:10:09', '2021-06-05 13:10:09'),
(47, 5, 'Documents', 1, 0, 3, 0, '2021-06-05 13:10:22', '2021-06-05 13:10:22'),
(48, 5, 'Arrival', 1, 0, 4, 0, '2021-06-05 13:10:29', '2021-06-05 13:10:29'),
(49, 5, 'Lecturers', 1, 0, 5, 0, '2021-06-05 13:10:34', '2021-06-05 13:10:34'),
(50, 5, 'Exchange of information', 2, 0, 0, 0, '2021-06-05 13:10:50', '2021-06-05 13:10:50'),
(51, 5, 'Finding of decision', 2, 0, 1, 0, '2021-06-05 13:10:55', '2021-06-05 13:10:55'),
(52, 5, 'Solving of conflict', 2, 0, 2, 0, '2021-06-05 13:11:02', '2021-06-05 13:11:02'),
(53, 5, 'Rooms', 2, 1, 0, 0, '2021-06-05 13:11:24', '2021-06-05 13:11:24'),
(54, 5, 'Permises', 2, 1, 1, 0, '2021-06-05 13:11:30', '2021-06-05 13:11:30'),
(55, 5, 'Office', 2, 1, 2, 0, '2021-06-05 13:11:36', '2021-06-05 13:11:36'),
(56, 5, 'Fax', 3, 2, 0, 1, '2021-06-05 13:11:45', '2021-06-05 13:11:45'),
(57, 5, 'Computer', 3, 2, 1, 1, '2021-06-05 13:11:51', '2021-06-05 13:11:51'),
(58, 5, 'Phone', 3, 2, 2, 1, '2021-06-05 13:11:57', '2021-06-05 13:11:57'),
(59, 5, 'Secretary', 3, 2, 3, 1, '2021-06-05 13:12:01', '2021-06-05 13:12:01'),
(60, 5, 'Technics of presentation', 3, 1, 0, 1, '2021-06-05 13:12:11', '2021-06-05 13:12:11'),
(61, 5, 'Technics of conference', 3, 1, 1, 1, '2021-06-05 13:12:17', '2021-06-05 13:12:17'),
(62, 5, 'Refreshment', 3, 1, 2, 1, '2021-06-05 13:12:22', '2021-06-05 13:12:22'),
(63, 5, 'Present', 3, 0, 0, 1, '2021-06-05 13:12:31', '2021-06-05 13:12:31'),
(64, 5, 'Work places distribution', 3, 0, 1, 1, '2021-06-05 13:12:37', '2021-06-05 13:12:37'),
(65, 5, 'Reservation', 3, 0, 2, 1, '2021-06-05 13:12:43', '2021-06-05 13:12:43'),
(66, 5, 'Invitation', 2, 2, 0, 0, '2021-06-05 13:12:57', '2021-06-05 13:12:57'),
(67, 5, 'Message', 2, 2, 1, 0, '2021-06-05 13:13:02', '2021-06-05 13:13:02'),
(68, 5, 'Cancellation', 2, 2, 2, 0, '2021-06-05 13:13:08', '2021-06-05 13:13:08'),
(69, 5, 'VIPs', 2, 2, 3, 0, '2021-06-05 13:13:11', '2021-06-05 13:13:11'),
(70, 5, 'Partners', 2, 2, 4, 0, '2021-06-05 13:13:16', '2021-06-05 13:13:16'),
(71, 5, 'Invitation', 2, 3, 0, 0, '2021-06-05 13:13:47', '2021-06-05 13:13:47'),
(72, 5, 'Programme', 2, 3, 1, 0, '2021-06-05 13:13:49', '2021-06-05 13:13:49'),
(73, 5, 'Handouts', 2, 3, 2, 0, '2021-06-05 13:13:54', '2021-06-05 13:13:54'),
(74, 5, 'Writing meterials', 2, 3, 3, 0, '2021-06-05 13:13:58', '2021-06-05 13:13:58'),
(75, 5, 'Plane reservation', 2, 4, 0, 0, '2021-06-05 13:14:05', '2021-06-05 13:14:05'),
(76, 5, 'Delivery of the hotel', 2, 4, 1, 0, '2021-06-05 13:14:10', '2021-06-05 13:14:10'),
(77, 5, 'Lectures', 2, 5, 0, 0, '2021-06-05 13:14:19', '2021-06-05 13:14:19'),
(78, 5, 'Technics', 2, 5, 1, 0, '2021-06-05 13:14:21', '2021-06-05 13:14:21'),
(79, 5, 'Expenditures', 2, 5, 2, 0, '2021-06-05 13:14:26', '2021-06-05 13:14:26');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
