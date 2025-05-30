-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 08:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudpolly`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_base_groups`
--

CREATE TABLE `erp_base_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_base_setups`
--

CREATE TABLE `erp_base_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `base_group_id` tinyint(1) NOT NULL,
  `base_setup_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_departments`
--

CREATE TABLE `erp_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_designations`
--

CREATE TABLE `erp_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_employees`
--

CREATE TABLE `erp_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `employee_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `qualifications` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experiences` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_patients`
--

CREATE TABLE `erp_patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sur_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhs_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gp_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behaviour` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_living_skills` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behabiour_date` date DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erp_support_plans`
--

CREATE TABLE `erp_support_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `plan_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `language_code`, `language_flag`, `created_at`, `updated_at`) VALUES
(1, 'Afrikaans (South Africa)', 'af-ZA', '/img/flags/za.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(2, 'Arabic', 'ar-XA', '/img/flags/ae.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(3, 'Arabic (Egypt)', 'ar-EG', '/img/flags/eg.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(4, 'Arabic (Saudi Arabia)', 'ar-SA', '/img/flags/sa.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(5, 'Bengali (India)', 'bn-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(6, 'Bulgarian (Bulgaria)', 'bg-BG', '/img/flags/bg.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(7, 'Catalan (Spain)', 'ca-ES', '/img/flags/es.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(8, 'Chinese (Cantonese)', 'zh-HK', '/img/flags/cn.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(9, 'Chinese (Mandarin)', 'cmn-CN', '/img/flags/cn.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(10, 'Chinese (M. Simplified)', 'zh-CN', '/img/flags/cn.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(11, 'Chinese (Hong Kong)', 'yue-HK', '/img/flags/hk.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(12, 'Chinese (Taiwanese M.)', 'zh-TW', '/img/flags/cn.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(13, 'Croatian (Croatia)', 'hr-HR', '/img/flags/hr.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(14, 'Czech (Czech Republic)', 'cs-CZ', '/img/flags/cz.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(15, 'Danish (Denmark)', 'da-DK', '/img/flags/dk.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(16, 'Dutch (Belgium)', 'nl-BE', '/img/flags/be.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(17, 'Dutch (Netherlands)', 'nl-NL', '/img/flags/nl.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(18, 'English (Australia)', 'en-AU', '/img/flags/au.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(19, 'English (Canada)', 'en-CA', '/img/flags/ca.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(20, 'English (Hongkong)', 'en-HK', '/img/flags/hk.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(21, 'English (India)', 'en-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(22, 'English (Ireland)', 'en-IE', '/img/flags/ie.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(23, 'English (New Zealand)', 'en-NZ', '/img/flags/nz.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(24, 'English (Philippines)', 'en-PH', '/img/flags/ph.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(25, 'English (Singapore)', 'en-SG', '/img/flags/sg.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(26, 'English (South Africa)', 'en-ZA', '/img/flags/za.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(27, 'English (UK)', 'en-GB', '/img/flags/gb.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(28, 'English (USA)', 'en-US', '/img/flags/us.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(29, 'English (Wales)', 'en-GB-WLS', '/img/flags/gb-wls.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(30, 'Estonian (Estonia)', 'et-EE', '/img/flags/ee.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(31, 'Filipino (Philippines)', 'fil-PH', '/img/flags/ph.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(32, 'Finnish (Finland)', 'fi-FI', '/img/flags/fi.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(33, 'French (Belgium)', 'fr-BE', '/img/flags/be.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(34, 'French (France)', 'fr-FR', '/img/flags/fr.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(35, 'French (Canada)', 'fr-CA', '/img/flags/ca.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(36, 'French (Switzerland)', 'fr-CH', '/img/flags/ch.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(37, 'German (Austria)', 'de-AT', '/img/flags/at.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(38, 'German (Germany)', 'de-DE', '/img/flags/de.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(39, 'German (Switzerland)', 'de-CH', '/img/flags/ch.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(40, 'Greek (Greece)', 'el-GR', '/img/flags/gr.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(41, 'Gujarati (India)', 'gu-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(42, 'Hebrew (Israel)', 'he-IL', '/img/flags/il.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(43, 'Hindi (India)', 'hi-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(44, 'Hungarian (Hungary)', 'hu-HU', '/img/flags/hu.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(45, 'Icelandic (Iceland)', 'is-IS', '/img/flags/is.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(46, 'Indonesian (Indonesia)', 'id-ID', '/img/flags/id.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(47, 'Irish (Ireland)', 'ga-IE', '/img/flags/ie.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(48, 'Italian (Italy)', 'it-IT', '/img/flags/it.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(49, 'Japanese (Japan)', 'ja-JP', '/img/flags/jp.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(50, 'Kannada (India)', 'kn-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(51, 'Korean (South Korea)', 'ko-KR', '/img/flags/kr.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(52, 'Latvian (Latvia)', 'lv-LV', '/img/flags/lv.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(53, 'Lithuanian (Lithuania)', 'lt-LT', '/img/flags/lt.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(54, 'Malayalam (India)', 'ml-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(55, 'Malay (Malaysia)', 'ms-MY', '/img/flags/my.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(56, 'Maltese (Malta)', 'mt-MT', '/img/flags/mt.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(57, 'Marathi (India)', 'mr-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(58, 'Norwegian (Norway)', 'nb-NO', '/img/flags/no.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(59, 'Polish (Poland)', 'pl-PL', '/img/flags/pl.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(60, 'Portuguese (Brazil)', 'pt-BR', '/img/flags/br.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(61, 'Portuguese (Portugal)', 'pt-PT', '/img/flags/pt.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(62, 'Romanian (Romania)', 'ro-RO', '/img/flags/ro.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(63, 'Russian (Russia)', 'ru-RU', '/img/flags/ru.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(64, 'Serbian (Serbia)', 'sr-RS', '/img/flags/rs.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(65, 'Slovak (Slovakia)', 'sk-SK', '/img/flags/sk.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(66, 'Slovenian (Slovenia)', 'sl-SI', '/img/flags/si.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(67, 'Spanish (Argentina)', 'es-AR', '/img/flags/ar.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(68, 'Spanish (Colombia)', 'es-CO', '/img/flags/co.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(69, 'Spanish (Spain)', 'es-ES', '/img/flags/es.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(70, 'Spanish (Mexico)', 'es-MX', '/img/flags/mx.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(71, 'Spanish (USA)', 'es-US', '/img/flags/us.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(72, 'Swahili (Kenya)', 'sw-KE', '/img/flags/ke.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(73, 'Swedish (Sweden)', 'sv-SE', '/img/flags/se.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(74, 'Tamil (India)', 'ta-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(75, 'Telugu (India)', 'te-IN', '/img/flags/in.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(76, 'Thai (Thailand)', 'th-TH', '/img/flags/th.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(77, 'Turkish (Turkey)', 'tr-TR', '/img/flags/tr.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(78, 'Ukrainian (Ukraine)', 'uk-UA', '/img/flags/ua.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(79, 'Urdu (Pakistan)', 'ur-PK', '/img/flags/pk.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(80, 'Vietnamese (Vietnam)', 'vi-VN', '/img/flags/vn.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(81, 'Welsh (Wales)', 'cy-GB', '/img/flags/gb-wls.svg', '2021-09-02 09:14:21', '2021-09-02 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_17_220437_create_user_permission_tables', 1),
(5, '2021_05_23_145820_create_supports_table', 1),
(6, '2021_05_24_230359_create_results_table', 1),
(7, '2021_05_28_072458_create_notifications_table', 1),
(8, '2021_05_30_175055_create_payments_table', 1),
(9, '2021_06_01_200748_create_vendors_table', 1),
(10, '2021_06_02_145331_create_voices_table', 1),
(11, '2021_06_06_111638_create_languages_table', 1),
(12, '2021_06_08_180653_create_backups_table', 1),
(13, '2021_06_13_112953_create_plans_table', 1),
(14, '2021_06_19_223019_create_payment_platforms_table', 1),
(15, '2021_06_23_195933_create_prepaid_plans_table', 1),
(16, '2021_06_23_222150_create_subscriptions_table', 1),
(17, '2021_07_07_095234_create_promocodes_table', 1),
(18, '2021_07_14_091057_create_settings_table', 1),
(19, '2021_08_07_140304_create_referrals_table', 1),
(20, '2021_08_07_140514_add_referral_tracking_to_users_table', 1),
(21, '2021_08_08_210440_create_payouts_table', 1),
(22, '2021_08_19_232502_create_blogs_table', 1),
(23, '2021_07_24_003854_create_sessions_table', 2),
(24, '2019_11_12_192143_create_erp_base_groups_table', 3),
(25, '2019_11_12_192143_create_erp_base_setups_table', 3),
(26, '2019_11_12_192143_create_erp_departments_table', 3),
(27, '2019_11_12_192143_create_erp_designations_table', 3),
(28, '2019_11_12_192143_create_erp_employees_table', 3),
(29, '2019_11_12_192143_create_erp_patients_table', 3),
(30, '2019_11_12_192143_create_erp_support_plans_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('30601eb4-b751-41c9-8cd4-1c1b6d3458e5', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"wafa\",\"email\":\"wafa@check.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Russia\"}', '2022-02-22 13:53:19', '2022-02-08 00:45:46', '2022-02-22 13:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'prepaid|subscription',
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `characters` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_platforms`
--

CREATE TABLE `payment_platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `subscriptions_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_platforms`
--

INSERT INTO `payment_platforms` (`id`, `name`, `image`, `enabled`, `subscriptions_enabled`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', 'img/payments/paypal.svg', 0, 0, '2021-09-02 09:14:21', '2021-09-02 09:19:14'),
(2, 'Stripe', 'img/payments/stripe.svg', 0, 0, '2021-09-02 09:14:21', '2021-09-02 09:19:14'),
(3, 'BankTransfer', 'img/payments/bank-transfer.png', 0, 0, '2021-09-02 09:14:21', '2021-09-02 09:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'use neurals', 'web', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(2, 'use effects', 'web', '2021-09-02 09:14:21', '2021-09-02 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paypal_gateway_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_gateway_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'subscription',
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active|closed',
  `characters` int(11) NOT NULL,
  `bonus` int(11) DEFAULT 0,
  `payment_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_in_days` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prepaid_plans`
--

CREATE TABLE `prepaid_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'prepaid',
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active|closed',
  `characters` int(11) NOT NULL,
  `bonus` int(11) DEFAULT 0,
  `payment_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` double(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disposable` tinyint(1) NOT NULL DEFAULT 0,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_user`
--

CREATE TABLE `promocode_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `promocode_id` bigint(20) UNSIGNED NOT NULL,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referrer_id` int(11) DEFAULT NULL,
  `referrer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_id` int(11) DEFAULT NULL,
  `referred_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` double(8,2) DEFAULT NULL,
  `commission` double(8,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_raw` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_ext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'local|s3',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'aws|azure|gcp|ibm',
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'aws_std|aws_nrl|azure_std|azure_nrl|gcp_std|gcp_nrl|ibm_nrl',
  `characters` int(11) DEFAULT NULL,
  `voice_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'standard|neural',
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'free|paid',
  `audio_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `language`, `voice`, `voice_id`, `gender`, `text`, `text_raw`, `file_name`, `result_url`, `result_ext`, `storage`, `title`, `vendor_img`, `vendor`, `vendor_id`, `characters`, `voice_type`, `plan_type`, `audio_type`, `mode`, `created_at`, `updated_at`) VALUES
(2, 3, 'Afrikaans (South Africa)', 'Zeina', 'ar-aws-std-zeina', 'Female', 'hi ecrrt', 'hi ecrrt', 'ot0ad711SiZeRWRtiwsJ.mp3', '0', 'mp3', 'local', 'Cv Designed using HTML , CSS , BOOTSTRAP', '/img/csp/aws-sm.png', 'aws', 'aws_std', 8, 'standard', 'free', 'audio/mpeg', 'file', '2021-09-06 11:36:30', '2021-09-06 11:36:30'),
(3, 3, 'English (Australia)', 'Russell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 11, 'standard', 'free', NULL, 'live', '2021-09-07 10:56:58', '2021-09-07 10:56:58'),
(5, 3, 'English (Australia)', 'Nicole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 11, 'standard', 'free', NULL, 'live', '2021-09-07 10:58:55', '2021-09-07 10:58:55'),
(6, 3, 'English (Australia)', 'Nicole', 'au-aws-std-nicole', 'Female', 'HOW ARE YOU', 'HOW ARE YOU', 'Ia9Qn52fmInaKZioYwfa.mp3', '0', 'mp3', 'local', NULL, '/img/csp/aws-sm.png', 'aws', 'aws_std', 11, 'standard', 'free', 'audio/mpeg', 'file', '2021-09-07 11:00:00', '2021-09-07 11:00:00'),
(7, 3, 'English (Australia)', 'Nicole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 2, 'standard', 'free', NULL, 'live', '2021-09-07 11:10:13', '2021-09-07 11:10:13'),
(8, 3, 'Dutch (Netherlands)', 'Lotte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 7, 'standard', 'free', NULL, 'live', '2021-09-07 11:31:21', '2021-09-07 11:31:21'),
(9, 3, 'English (Australia)', 'Nicole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 7, 'standard', 'free', NULL, 'live', '2021-09-07 11:33:16', '2021-09-07 11:33:16'),
(11, 3, 'English (Australia)', 'Nicole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 2, 'standard', 'free', NULL, 'live', '2021-09-14 10:39:58', '2021-09-14 10:39:58'),
(12, 3, 'English (Australia)', 'Nicole', 'au-aws-std-nicole', 'Female', 'hi', 'hi', 'DLbksezpAvO9j6d6sW0h.mp3', '0', 'mp3', 'local', NULL, '/img/csp/aws-sm.png', 'aws', 'aws_std', 2, 'standard', 'free', 'audio/mpeg', 'file', '2021-09-14 10:40:07', '2021-09-14 10:40:07'),
(13, 3, 'English (Australia)', 'Nicole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 2, 'standard', 'free', NULL, 'live', '2021-09-14 10:45:14', '2021-09-14 10:45:14'),
(14, 3, 'Afrikaans (South Africa)', 'Zeina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 11, 'standard', 'free', NULL, 'live', '2021-09-14 11:01:50', '2021-09-14 11:01:50'),
(15, 3, 'French (France)', 'Zeina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 11, 'standard', 'free', NULL, 'live', '2021-09-14 11:03:12', '2021-09-14 11:03:12'),
(16, 3, 'English (UK)', 'Amy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aws', 'aws_std', 5, 'standard', 'free', NULL, 'live', '2021-09-14 11:04:58', '2021-09-14 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(2, 'subscriber', 'web', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(3, 'admin', 'web', '2021-09-02 09:14:21', '2021-09-02 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('W52reeaAED875mdT3b5p6I72GHLs6Jvgv6nJCgny', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm1zTmhkS2czc0tJWXE4ZUlYZFdsQTBuVThpRElzRUhVU0llNVRvNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvY2xvdWRQb2xseSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645556139),
('yeo60SEZtT623TihKaoTRfTSN5tN36VWC87vPwEH', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVmdkelBqdXJCUmFFeVJidXhrOEhYQnN3SWlJWGJwVGRFTFBnSTcxSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbGhvc3QvY2xvdWRQb2xseS9hZG1pbi91c2Vycy9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1645556258);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('author', 'Berkine'),
('bank_instructions', 'Make your payment directly into our bank account. Please use your Order ID Number as the payment reference. Text to Speech Credits will not be allocated to your account until the funds have cleared in our bank account. Thank you.'),
('bank_requisites', 'Bank Name: \n                            Account Name:\n                            Account Number/IBAN:\n                            BIC/Swift:\n                            Routing Number:'),
('description', 'Cloud Polly - Ultimate Text to Speech Converter'),
('invoice_address', ''),
('invoice_city', ''),
('invoice_country', ''),
('invoice_currency', 'USD'),
('invoice_language', 'en'),
('invoice_phone', ''),
('invoice_postal_code', ''),
('invoice_state', ''),
('invoice_vat_number', ''),
('invoice_vendor', 'CloudPolly'),
('invoice_vendor_website', ''),
('keywords', 'cloud, text to speech, tts, berkine, cloudpolly, polly, wavenet, watson, azure, aws, gcp, ibm'),
('legal_privacy_url', ''),
('legal_terms_url', ''),
('referral_guideline', '1. Share your referral link with your friends to register\n                            2. After they successfully register and verify their emails you will get 1000 free TTS bonus credits for each friend\n                            3. For their first purchase on CloudPolly, you will receive 50% of commissions\n                            4. Include your Bank Requisites or Paypal ID in My Gateway tab to receive your commissions\n                            5. Request payouts under My Payouts tab or use your balance to purchase TTS credits\n                            6. Checkout all your referrals under My Referrals tab'),
('referral_headline', 'Invite your friends to CloudPolly, if they sign up, you will get 1000 extra credits and you will also get 50% commission of thier first purchase.'),
('title', 'CloudPolly - Text to Speech Converter');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active_until` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `characters` int(11) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'open|resolved|declined|escalated',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolved_on` timestamp NULL DEFAULT NULL,
  `resolved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_chars` int(11) NOT NULL DEFAULT 0,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referral_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_paypal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_bank_requisites` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `job_role`, `email`, `email_verified_at`, `password`, `status`, `plan_id`, `group`, `company`, `website`, `phone_number`, `address`, `city`, `postal_code`, `country`, `available_chars`, `balance`, `profile_photo_path`, `oauth_id`, `oauth_type`, `remember_token`, `created_at`, `updated_at`, `referral_id`, `referred_by`, `referral_payment_method`, `referral_paypal`, `referral_bank_requisites`) VALUES
(1, 'Admin', 'Administrator', 'admin@example.com', '2021-09-02 09:19:29', '$2y$10$HbtIrwwplhGCcA8nUlILb.Kqpi0DgaRY3yEnaaZOhEiF19ZFGnU66', 'active', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 0.00, NULL, NULL, NULL, 'EXXruBuWZlTmCYXORRjntMUTC3lRR6afQ5Nh3QdgM16mCwzx4bLCmZyhAUhO', '2021-09-02 09:19:29', '2021-09-02 09:19:29', NULL, NULL, NULL, NULL, NULL),
(3, 'wafa', 'NULL', 'user@example.com', '2021-09-03 14:58:07', '$2y$10$HbtIrwwplhGCcA8nUlILb.Kqpi0DgaRY3yEnaaZOhEiF19ZFGnU66', 'active', NULL, 'user', NULL, NULL, '+1', NULL, NULL, NULL, 'Afganistan', 418, 0.00, NULL, NULL, NULL, NULL, '2021-09-03 14:58:07', '2021-09-14 11:19:50', NULL, NULL, NULL, NULL, NULL),
(4, 'user2', NULL, 'user2@example.com', '2021-09-06 06:39:50', '$2y$10$XTQpo0y5pKOVu8j3mkKjc.nyUo0rpnEnEWZiaVm7RpxZr.VBJu3Uq', 'active', NULL, 'user', NULL, NULL, '+1', NULL, NULL, NULL, 'Afganistan', 959, 0.00, NULL, NULL, NULL, NULL, '2021-09-06 06:39:50', '2021-09-06 12:36:29', NULL, NULL, NULL, NULL, NULL),
(5, 'Brittany Horton', 'Excepteur dolorem al', 'lulared@mailinator.com', '2021-10-27 07:56:00', '$2y$10$G.N1WzWw0Ym9IMxQvPOl3.0/RDna4UuEltrSlK3GU5lo7Vgveh9Di', 'active', NULL, 'user', 'Mcintyre and Edwards LLC', 'https://www.wekafazu.us', '+1', 'Velit velit sed ut u', 'Sit dolorem laborum', 'Ut non consequuntur', 'Afganistan', 1000, 0.00, NULL, NULL, NULL, NULL, '2021-10-27 07:56:00', '2021-10-27 07:56:00', NULL, NULL, NULL, NULL, NULL),
(6, 'Ahmed Wagner', 'Pariatur Ex odio na', 'ceqal@mailinator.com', '2021-10-27 08:05:17', '$2y$10$LqfEQe2kmYxI4aLTXykSOeWs6M5zDFFUjkrhxDNQmYc5.iIPOUETK', 'active', NULL, 'user', 'Pacheco and Strickland Associates', 'https://www.kehol.tv', '+1', 'Qui modi est quo ha', 'Laboriosam veniam', 'Ut quis incididunt i', 'Afganistan', 1000, 0.00, NULL, NULL, NULL, NULL, '2021-10-27 08:05:17', '2021-10-27 08:05:17', NULL, NULL, NULL, NULL, NULL),
(7, 'wafa', 'Administrator', 'wafa@check.com', '2022-02-08 00:45:44', 'e10adc3949ba59abbe56e057f20f883e', 'active', NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 'Russia', 1000, 0.00, NULL, NULL, NULL, 'MHT3yY1MysOiOyIjvTobWOE5K5i32txrJx4s5AHar0MumS98j2JJcD2aEmqb', '2022-02-08 00:45:44', '2022-02-08 00:45:46', '9RXYI4SPES5X1V3', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_vendors`
--

CREATE TABLE `user_vendors` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `wasabi_access_key` varchar(255) DEFAULT NULL,
  `wasabi_secret_access_key` varchar(255) DEFAULT NULL,
  `wasabi_bucket_name` varchar(255) DEFAULT NULL,
  `wasabi_region` varchar(255) DEFAULT NULL,
  `aws_access_key` varchar(255) DEFAULT NULL,
  `aws_secret_access_key` varchar(255) DEFAULT NULL,
  `aws_bucket_name` varchar(255) DEFAULT NULL,
  `aws_region` varchar(255) DEFAULT NULL,
  `azure_key` varchar(255) DEFAULT NULL,
  `azure_region` varchar(255) DEFAULT NULL,
  `gcp_file_path` varchar(255) DEFAULT NULL,
  `ibm_api_key` varchar(255) DEFAULT NULL,
  `ibm_endpoint` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_vendors`
--

INSERT INTO `user_vendors` (`id`, `user_id`, `wasabi_access_key`, `wasabi_secret_access_key`, `wasabi_bucket_name`, `wasabi_region`, `aws_access_key`, `aws_secret_access_key`, `aws_bucket_name`, `aws_region`, `azure_key`, `azure_region`, `gcp_file_path`, `ibm_api_key`, `ibm_endpoint`, `updated_at`, `created_at`) VALUES
(11, 1, 'Consectetur ratione', 'Sit ut quasi offici', 'Delectus quo est q', 'us-east-1', 'Minima quo natus sit', 'Perferendis cumque a', 'Aute quo provident', 'us-east-1', 'Exercitationem volup', 'australiaeast', 'Sed perspiciatis eu', 'Reiciendis consequat', 'Incididunt ab quia h', '2021-09-06 11:30:43', '2021-09-06 11:30:43'),
(16, 4, 'Commodi fugiat cumqu', 'Nulla consequat Vel', 'Aliquip itaque atque', 'us-east-1', 'Eveniet minim dolor', 'Laboris non nostrum', 'Mollit fugiat autem', 'us-east-1', 'Est laborum Facilis', 'australiaeast', '123', 'Tempora impedit und', 'Ipsa pariatur Blan', '2021-09-06 12:35:55', '2021-09-06 12:35:55'),
(17, 3, '123', '456', '789', 'ap-northeast-1', 'qwe', 'rty', 'uio', 'us-east-2', 'asd', 'brazilsouth', 'werr', 'qwe', 'wer', '2021-09-07 11:21:57', '2021-09-07 11:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_vendor_enable`
--

CREATE TABLE `user_vendor_enable` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `aws` int(10) DEFAULT NULL,
  `azure` int(10) DEFAULT NULL,
  `gcp` int(10) DEFAULT NULL,
  `ibm` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_vendor_enable`
--

INSERT INTO `user_vendor_enable` (`id`, `user_id`, `aws`, `azure`, `gcp`, `ibm`, `created_at`, `updated_at`) VALUES
(11, 4, 1, 1, 1, 1, '2021-09-06 12:35:55', '2021-09-06 12:35:55'),
(12, 3, 1, 1, 1, 1, '2021-09-07 11:21:57', '2021-09-07 11:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'aws_std|aws_nrl|azure_str|azure_nrl|gcp_std|gcp_nrl|ibm_nrl',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `cost` double NOT NULL COMMENT 'cost per char',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_id`, `enabled`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'aws_std', 1, 0.000004, '2021-09-02 09:14:21', '2021-09-03 16:29:20'),
(2, 'aws_nrl', 1, 0.000016, '2021-09-02 09:14:21', '2021-09-03 16:29:20'),
(3, 'azure_std', 0, 0.000004, '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(4, 'azure_nrl', 0, 0.000016, '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(5, 'gcp_std', 1, 0.000004, '2021-09-02 09:14:21', '2021-09-03 16:29:20'),
(6, 'gcp_nrl', 1, 0.000016, '2021-09-02 09:14:21', '2021-09-03 16:29:20'),
(7, 'ibm_nrl', 1, 0.00002, '2021-09-02 09:14:21', '2021-09-03 16:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `voices`
--

CREATE TABLE `voices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voice_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard' COMMENT 'standard|neural',
  `sample_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard' COMMENT 'standard|extra|all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voices`
--

INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `voice_type`, `sample_url`, `effect`, `created_at`, `updated_at`) VALUES
(1, 'Zeina', 'ar-aws-std-zeina', 'Female', 'ar-XA', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(2, 'Zhiyu', 'cn-aws-std-zhiyu', 'Female', 'cmn-CN', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(3, 'Naja', 'dk-aws-std-naja', 'Female', 'da-DK', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(4, 'Mads', 'dk-aws-std-mads', 'Male', 'da-DK', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(5, 'Lotte', 'nl-aws-std-lotte', 'Female', 'nl-NL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(6, 'Ruben', 'nl-aws-std-ruben', 'Male', 'nl-NL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(7, 'Nicole', 'au-aws-std-nicole', 'Female', 'en-AU', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(8, 'Russell', 'au-aws-std-russell', 'Male', 'en-AU', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(9, 'Olivia', 'au-aws-nrl-olivia', 'Female', 'en-AU', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(10, 'Amy', 'gb-aws-std-amy', 'Female', 'en-GB', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(11, 'Emma', 'gb-aws-std-emma', 'Female', 'en-GB', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(12, 'Brian', 'gb-aws-std-brian', 'Male', 'en-GB', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(13, 'Amy', 'gb-aws-nrl-amy', 'Female', 'en-GB', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(14, 'Emma', 'gb-aws-nrl-emma', 'Female', 'en-GB', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(15, 'Brian', 'gb-aws-nrl-brian', 'Male', 'en-GB', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(16, 'Aditi', 'in-aws-std-aditi', 'Female', 'en-IN', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(17, 'Raveena', 'in-aws-std-raveena', 'Female', 'en-IN', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(18, 'Ivy', 'us-aws-std-ivy', 'Female', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(19, 'Joanna', 'us-aws-std-joanna', 'Female', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(20, 'Kendra', 'us-aws-std-kendra', 'Female', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(21, 'Kimberly', 'us-aws-std-kimberly', 'Female', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(22, 'Salli', 'us-aws-std-salli', 'Female', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(23, 'Joey', 'us-aws-std-joey', 'Male', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(24, 'Justin', 'us-aws-std-justin', 'Male', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(25, 'Matthew', 'us-aws-std-matthew', 'Male', 'en-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(26, 'Ivy', 'us-aws-nrl-ivy', 'Female(child)', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(27, 'Joanna', 'us-aws-nrl-joanna', 'Female', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(28, 'Kendra', 'us-aws-nrl-kendra', 'Female', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(29, 'Kimberly', 'us-aws-nrl-kimberly', 'Female', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(30, 'Salli', 'us-aws-nrl-salli', 'Female', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(31, 'Joey', 'us-aws-nrl-joey', 'Male', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(32, 'Justin', 'us-aws-nrl-justin', 'Male(child)', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(33, 'Kevin', 'us-aws-nrl-kevin', 'Male(child)', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(34, 'Matthew', 'us-aws-nrl-matthew', 'Male', 'en-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(35, 'Geraint', 'wls-aws-std-matthew', 'Male', 'en-GB-WLS', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(36, 'Celine', 'fr-aws-std-celine', 'Female', 'fr-FR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(37, 'Lea', 'fr-aws-std-lea', 'Female', 'fr-FR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(38, 'Mathieu', 'fr-aws-std-mathieu', 'Male', 'fr-FR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(39, 'Chantal', 'ca-aws-std-chantal', 'Female', 'fr-CA', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(40, 'Gabrielle', 'ca-aws-nrl-gabrielle', 'Female', 'fr-CA', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(41, 'Marlene', 'de-aws-std-marlene', 'Female', 'de-DE', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(42, 'Vicki', 'de-aws-std-vicki', 'Female', 'de-DE', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(43, 'Hans', 'de-aws-std-hans', 'Male', 'de-DE', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(44, 'Aditi', 'hi-aws-std-aditi', 'Female', 'hi-IN', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(45, 'Dora', 'is-aws-std-dora', 'Female', 'is-IS', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(46, 'Karl', 'is-aws-std-karl', 'Male', 'is-IS', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(47, 'Carla', 'it-aws-std-carla', 'Female', 'it-IT', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(48, 'Bianca', 'it-aws-std-bianca', 'Female', 'it-IT', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(49, 'Giorgio', 'it-aws-std-giorgio', 'Male', 'it-IT', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(50, 'Mizuki', 'jp-aws-std-mizuki', 'Female', 'ja-JP', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(51, 'Takumi', 'jp-aws-std-takumi', 'Male', 'ja-JP', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(52, 'Seoyeon', 'kr-aws-std-seoyeon', 'Female', 'ko-KR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(53, 'Seoyeon', 'kr-aws-nrl-seoyeon', 'Female', 'ko-KR', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(54, 'Liv', 'no-aws-std-liv', 'Female', 'nb-NO', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(55, 'Ewa', 'pl-aws-std-ewa', 'Female', 'pl-PL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(56, 'Maja', 'pl-aws-std-maja', 'Female', 'pl-PL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(57, 'Jacek', 'pl-aws-std-jacek', 'Male', 'pl-PL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(58, 'Jan', 'pl-aws-std-jan', 'Male', 'pl-PL', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(59, 'Camila', 'br-aws-std-camila', 'Female', 'pt-BR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(60, 'Victoria', 'br-aws-std-victoria', 'Female', 'pt-BR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(61, 'Ricardo', 'br-aws-std-ricardo', 'Male', 'pt-BR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(62, 'Camila', 'br-aws-nrl-camila', 'Female', 'pt-BR', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(63, 'Ines', 'pt-aws-std-ines', 'Female', 'pt-PT', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(64, 'Cristiano', 'pt-aws-std-cristiano', 'Male', 'pt-PT', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(65, 'Carmen', 'ro-aws-std-carment', 'Female', 'ro-RO', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(66, 'Tatyana', 'ru-aws-std-tatyana', 'Female', 'ru-RU', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(67, 'Maxim', 'ru-aws-std-maxim', 'Male', 'ru-RU', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(68, 'Conchita', 'es-aws-std-conchita', 'Female', 'es-ES', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(69, 'Lucia', 'es-aws-std-lucia', 'Female', 'es-ES', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(70, 'Enrique', 'es-aws-std-enrique', 'Male', 'es-ES', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(71, 'Mia', 'mx-aws-std-mia', 'Female', 'es-MX', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(72, 'Lupe', 'us-aws-std-lupe', 'Female', 'es-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(73, 'Penelope', 'us-aws-std-penelope', 'Female', 'es-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(74, 'Miguel', 'us-aws-std-miguel', 'Male', 'es-US', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(75, 'Lupe', 'us-aws-nrl-lupe', 'Female', 'es-US', 'aws_nrl', 'aws', '/img/csp/aws-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(76, 'Astrid', 'se-aws-std-astrid', 'Female', 'sv-SE', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(77, 'Filiz', 'tr-aws-std-filiz', 'Female', 'tr-TR', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(78, 'Gwyneth', 'cy-aws-std-gwyneth', 'Female', 'cy-GB', 'aws_std', 'aws', '/img/csp/aws-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(79, 'Iminathi', 'af-ZA-Standard-A', 'Female', 'af-ZA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(80, 'Amina', 'ar-XA-Standard-A', 'Female', 'ar-XA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(81, 'Ahmad', 'ar-XA-Standard-B', 'Male', 'ar-XA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(82, 'Abdulla', 'ar-XA-Standard-C', 'Male', 'ar-XA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(83, 'Saniya', 'ar-XA-Standard-D', 'Female', 'ar-XA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(84, 'Aarya', 'bn-IN-Standard-A', 'Female', 'bn-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(85, 'Achintya', 'bn-IN-Standard-B', 'Male', 'bn-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(86, 'Maria', 'bg-bg-Standard-A', 'Female', 'bg-BG', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(87, 'Martina', 'ca-es-Standard-A', 'Female', 'ca-ES', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(88, 'Sonia', 'yue-HK-Standard-A', 'Female', 'yue-HK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(89, 'Wing', 'yue-HK-Standard-B', 'Male', 'yue-HK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(90, 'Bonnie', 'yue-HK-Standard-C', 'Female', 'yue-HK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(91, 'Chi', 'yue-HK-Standard-D', 'Male', 'yue-HK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(92, 'Eliska', 'cs-CZ-Standard-A', 'Female', 'cs-CZ', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(93, 'Ida', 'da-DK-Standard-A', 'Female', 'da-DK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(94, 'Morten', 'da-DK-Standard-C', 'Male', 'da-DK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(95, 'Freja', 'da-DK-Standard-D', 'Female', 'da-DK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(96, 'Josefine', 'da-DK-Standard-E', 'Female', 'da-DK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(97, 'Mila', 'nl-NL-Standard-A', 'Female', 'nl-NL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(98, 'Arend', 'nl-NL-Standard-B', 'Male', 'nl-NL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(99, 'Christiaan', 'nl-NL-Standard-C', 'Male', 'nl-NL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(100, 'Lotte', 'nl-NL-Standard-D', 'Female', 'nl-NL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(101, 'Fenna', 'nl-NL-Standard-E', 'Female', 'nl-NL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(102, 'Charlotte', 'en-AU-Standard-A', 'Female', 'en-AU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(103, 'Noah', 'en-AU-Standard-B', 'Male', 'en-AU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(104, 'Amelia', 'en-AU-Standard-C', 'Female', 'en-AU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(105, 'Oliver', 'en-AU-Standard-D', 'Male', 'en-AU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(106, 'Saanvi', 'en-IN-Standard-A', 'Female', 'en-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(107, 'Sai', 'en-IN-Standard-B', 'Male', 'en-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(108, 'Veer', 'en-IN-Standard-C', 'Male', 'en-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(109, 'Prisha', 'en-IN-Standard-D', 'Female', 'en-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(110, 'Poppy', 'en-GB-Standard-A', 'Female', 'en-GB', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(111, 'Charles', 'en-GB-Standard-B', 'Male', 'en-GB', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(112, 'Elsie', 'en-GB-Standard-C', 'Female', 'en-GB', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(113, 'Harry', 'en-GB-Standard-D', 'Male', 'en-GB', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(114, 'Nancy', 'en-GB-Standard-F', 'Female', 'en-GB', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(115, 'Dick', 'en-US-Standard-A', 'Male', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(116, 'Bush', 'en-US-Standard-B', 'Male', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(117, 'Caroline', 'en-US-Standard-C', 'Female', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(118, 'Trump', 'en-US-Standard-D', 'Male', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(119, 'Suzan', 'en-US-Standard-E', 'Female', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(120, 'Kimberly', 'en-US-Standard-F', 'Female', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(121, 'Ellen', 'en-US-Standard-G', 'Female', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(122, 'Teresa', 'en-US-Standard-H', 'Female', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(123, 'Oscar', 'en-US-Standard-I', 'Male', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(124, 'Obama', 'en-US-Standard-J', 'Male', 'en-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(125, 'Princess', 'fil-PH-Standard-A', 'Female', 'fil-PH', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(126, 'Andrea', 'fil-PH-Standard-B', 'Female', 'fil-PH', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(127, 'Angel', 'fil-PH-Standard-C', 'Male', 'fil-PH', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(128, 'Nathaniel', 'fil-PH-Standard-D', 'Male', 'fil-PH', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(129, 'Enni', 'fi-FI-Standard-A', 'Female', 'fi-FI', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(130, 'Emma', 'fr-CA-Standard-A', 'Female', 'fr-CA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(131, 'Thomas', 'fr-CA-Standard-B', 'Male', 'fr-CA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(132, 'Lea', 'fr-CA-Standard-C', 'Female', 'fr-CA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(133, 'William', 'fr-CA-Standard-D', 'Male', 'fr-CA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(134, 'Mathilde', 'fr-FR-Standard-A', 'Female', 'fr-FR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(135, 'Foucauld', 'fr-FR-Standard-B', 'Male', 'fr-FR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(136, 'Louise', 'fr-FR-Standard-C', 'Female', 'fr-FR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(137, 'Florent', 'fr-FR-Standard-D', 'Male', 'fr-FR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(138, 'Alice', 'fr-FR-Standard-E', 'Female', 'fr-FR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(139, 'Eva', 'de-DE-Standard-A', 'Female', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(140, 'Wilhelm', 'de-DE-Standard-B', 'Male', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(141, 'Hannah', 'de-DE-Standard-C', 'Female', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(142, 'Alfred', 'de-DE-Standard-D', 'Male', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(143, 'Werner', 'de-DE-Standard-E', 'Male', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(144, 'Merkel', 'de-DE-Standard-F', 'Female', 'de-DE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(145, 'Eleni', 'el-GR-Standard-A', 'Female', 'el-GR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(146, 'Inika', 'gu-IN-Standard-A', 'Female', 'gu-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(147, 'Jhinuk', 'gu-IN-Standard-B', 'Male', 'gu-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(148, 'Arunima', 'hi-IN-Standard-A', 'Female', 'hi-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(149, 'Ayaan', 'hi-IN-Standard-B', 'Male', 'hi-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(150, 'Keshav', 'hi-IN-Standard-C', 'Male', 'hi-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(151, 'Bhavna', 'hi-IN-Standard-D', 'Female', 'hi-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(152, 'Léna', 'hu-HU-Standard-A', 'Female', 'hu-HU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(153, 'Helga', 'is-is-Standard-A', 'Female', 'is-IS', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(154, 'Aulia', 'id-ID-Standard-A', 'Female', 'id-ID', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(155, 'Arief', 'id-ID-Standard-B', 'Male', 'id-ID', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(156, 'Fadhlan', 'id-ID-Standard-C', 'Male', 'id-ID', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(157, 'Dewi', 'id-ID-Standard-D', 'Female', 'id-ID', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(158, 'Federica', 'it-IT-Standard-A', 'Female', 'it-IT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(159, 'Bella', 'it-IT-Standard-B', 'Female', 'it-IT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(160, 'Luca', 'it-IT-Standard-C', 'Male', 'it-IT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(161, 'Matteo', 'it-IT-Standard-D', 'Male', 'it-IT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(162, 'Manami', 'ja-JP-Standard-A', 'Female', 'ja-JP', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(163, 'Sakura', 'ja-JP-Standard-B', 'Female', 'ja-JP', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(164, 'Sensei', 'ja-JP-Standard-C', 'Male', 'ja-JP', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(165, 'Takuya', 'ja-JP-Standard-D', 'Male', 'ja-JP', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(166, 'Aarushi', 'kn-IN-Standard-A', 'Female', 'kn-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(167, 'Arjun', 'kn-IN-Standard-B', 'Male', 'kn-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(168, 'Yong', 'ko-KR-Standard-A', 'Female', 'ko-KR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(169, 'Eun-Kyung', 'ko-KR-Standard-B', 'Female', 'ko-KR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(170, 'Beom-Soo', 'ko-KR-Standard-C', 'Male', 'ko-KR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(171, 'Byung-Joon', 'ko-KR-Standard-D', 'Male', 'ko-KR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(172, 'Andris', 'lv-lv-Standard-A', 'Male', 'lv-LV', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(173, 'Abha', 'ml-IN-Standard-A', 'Female', 'ml-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(174, 'Akhil', 'ml-IN-Standard-B', 'Male', 'ml-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(175, 'Changying', 'cmn-CN-Standard-A', 'Female', 'cmn-CN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(176, 'Boqin', 'cmn-CN-Standard-B', 'Male', 'cmn-CN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(177, 'Delun', 'cmn-CN-Standard-C', 'Male', 'cmn-CN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(178, 'Tyantyan', 'cmn-CN-Standard-D', 'Female', 'cmn-CN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(179, 'Sunyo', 'cmn-TW-Standard-A', 'Female', 'cmn-TW', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(180, 'Chen', 'cmn-TW-Standard-B', 'Male', 'cmn-TW', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(181, 'Xianbao', 'cmn-TW-Standard-C', 'Male', 'cmn-TW', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(182, 'Chin', 'nb-NO-Standard-A', 'Female', 'nb-NO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(183, 'Bjorn', 'nb-NO-Standard-B', 'Male', 'nb-NO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(184, 'Inger', 'nb-NO-Standard-C', 'Female', 'nb-NO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(185, 'Dag', 'nb-NO-Standard-D', 'Male', 'nb-NO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(186, 'Janne', 'nb-no-Standard-E', 'Female', 'nb-NO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(187, 'Sara', 'pl-PL-Standard-A', 'Female', 'pl-PL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(188, 'Jan', 'pl-PL-Standard-B', 'Male', 'pl-PL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(189, 'Jacob', 'pl-PL-Standard-C', 'Male', 'pl-PL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(190, 'Lena', 'pl-PL-Standard-D', 'Female', 'pl-PL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(191, 'Zofia', 'pl-PL-Standard-E', 'Female', 'pl-PL', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(192, 'Francisca', 'pt-BR-Standard-A', 'Female', 'pt-BR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(193, 'Beatriz', 'pt-PT-Standard-A', 'Female', 'pt-PT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(194, 'Ronaldo', 'pt-PT-Standard-B', 'Male', 'pt-PT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(195, 'Lisboa', 'pt-PT-Standard-C', 'Male', 'pt-PT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(196, 'Mariana', 'pt-PT-Standard-D', 'Female', 'pt-PT', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(197, 'Mihaela', 'ro-RO-Standard-A', 'Female', 'ro-RO', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(198, 'Oksana', 'ru-RU-Standard-A', 'Female', 'ru-RU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(199, 'Vlad', 'ru-RU-Standard-B', 'Male', 'ru-RU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(200, 'Veronika', 'ru-RU-Standard-C', 'Female', 'ru-RU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(201, 'Dapohui', 'ru-RU-Standard-D', 'Male', 'ru-RU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(202, 'Svetlana', 'ru-RU-Standard-E', 'Female', 'ru-RU', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(203, 'Olga', 'sr-RS-Standard-A', 'Female', 'sr-RS', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(204, 'Anna', 'sk-SK-Standard-A', 'Female', 'sk-SK', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(205, 'Hector', 'es-ES-Standard-A', 'Male', 'es-ES', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(206, 'Vanessa', 'es-ES-Standard-B', 'Female', 'es-ES', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(207, 'Laura', 'es-ES-Standard-C', 'Female', 'es-ES', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(208, 'Isabella', 'es-ES-Standard-D', 'Female', 'es-ES', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(209, 'Mia', 'es-US-Standard-A', 'Female', 'es-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(210, 'Pedro', 'es-US-Standard-B', 'Male', 'es-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(211, 'Sanches', 'es-US-Standard-C', 'Male', 'es-US', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(212, 'Karin', 'sv-SE-Standard-A', 'Female', 'sv-SE', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(213, 'Aarushi', 'ta-IN-Standard-A', 'Female', 'ta-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(214, 'Aadhish', 'ta-IN-Standard-B', 'Male', 'ta-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(215, 'Aasthika', 'te-IN-Standard-A', 'Female', 'te-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(216, 'Aadhavan', 'te-IN-Standard-B', 'Male', 'te-IN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(217, 'Busaba', 'th-TH-Standard-A', 'Female', 'th-TH', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(218, 'Zeynep', 'tr-TR-Standard-A', 'Female', 'tr-TR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(219, 'Oktay', 'tr-TR-Standard-B', 'Male', 'tr-TR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(220, 'Fatima', 'tr-TR-Standard-C', 'Female', 'tr-TR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(221, 'Gulchatay', 'tr-TR-Standard-D', 'Female', 'tr-TR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(222, 'Yanar', 'tr-TR-Standard-E', 'Male', 'tr-TR', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(223, 'Oksana', 'uk-UA-Standard-A', 'Female', 'uk-UA', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(224, 'Chau', 'vi-VN-Standard-A', 'Female', 'vi-VN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(225, 'Dung', 'vi-VN-Standard-B', 'Male', 'vi-VN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(226, 'Cam', 'vi-VN-Standard-C', 'Female', 'vi-VN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(227, 'Duy', 'vi-VN-Standard-D', 'Male', 'vi-VN', 'gcp_std', 'gcp', '/img/csp/gcp-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(228, 'Amina', 'ar-XA-Wavenet-A', 'Female', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(229, 'Ahmad', 'ar-XA-Wavenet-B', 'Male', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(230, 'Abdulla', 'ar-XA-Wavenet-C', 'Male', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(231, 'Saniya', 'ar-XA-Wavenet-D', 'Female', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(232, 'Aarya', 'bn-IN-Wavenet-A', 'Female', 'bn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(233, 'Achintya', 'bn-IN-Wavenet-B', 'Male', 'bn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(234, 'Eliska', 'cs-CZ-Wavenet-A', 'Female', 'cs-CZ', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(235, 'Ida', 'da-DK-Wavenet-A', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(236, 'Morten', 'da-DK-Wavenet-C', 'Male', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(237, 'Freja', 'da-DK-Wavenet-D', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(238, 'Josefine', 'da-DK-Wavenet-E', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(239, 'Mila', 'nl-NL-Wavenet-A', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(240, 'Arend', 'nl-NL-Wavenet-B', 'Male', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(241, 'Christiaan', 'nl-NL-Wavenet-C', 'Male', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(242, 'Lotte', 'nl-NL-Wavenet-D', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(243, 'Fenna', 'nl-NL-Wavenet-E', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(244, 'Charlotte', 'en-AU-Wavenet-A', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(245, 'Noah', 'en-AU-Wavenet-B', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(246, 'Amelia', 'en-AU-Wavenet-C', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(247, 'Oliver', 'en-AU-Wavenet-D', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(248, 'Saanvi', 'en-IN-Wavenet-A', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(249, 'Sai', 'en-IN-Wavenet-B', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(250, 'Veer', 'en-IN-Wavenet-C', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(251, 'Prisha', 'en-IN-Wavenet-D', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(252, 'Poppy', 'en-GB-Wavenet-A', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(253, 'Charles', 'en-GB-Wavenet-B', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(254, 'Elsie', 'en-GB-Wavenet-C', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(255, 'Harry', 'en-GB-Wavenet-D', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(256, 'Nancy', 'en-GB-Wavenet-F', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(257, 'Dick', 'en-US-Wavenet-A', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(258, 'Bush', 'en-US-Wavenet-B', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(259, 'Caroline', 'en-US-Wavenet-C', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(260, 'Trump', 'en-US-Wavenet-D', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(261, 'Susan', 'en-US-Wavenet-E', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(262, 'Kimberly', 'en-US-Wavenet-F', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(263, 'Ellen', 'en-US-Wavenet-G', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(264, 'Teresa', 'en-US-Wavenet-H', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(265, 'Oscar', 'en-US-Wavenet-I', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(266, 'Obama', 'en-US-Wavenet-J', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(267, 'Princess', 'fil-PH-Wavenet-A', 'Female', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(268, 'Andrea', 'fil-PH-Wavenet-B', 'Female', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(269, 'Angel', 'fil-PH-Wavenet-C', 'Male', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(270, 'Nathaniel', 'fil-PH-Wavenet-D', 'Male', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(271, 'Enni', 'fi-FI-Wavenet-A', 'Female', 'fi-FI', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(272, 'Emma', 'fr-CA-Wavenet-A', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(273, 'Thomas', 'fr-CA-Wavenet-B', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(274, 'Lea', 'fr-CA-Wavenet-C', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(275, 'William', 'fr-CA-Wavenet-D', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(276, 'Mathilde', 'fr-FR-Wavenet-A', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(277, 'Foucauld', 'fr-FR-Wavenet-B', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(278, 'Louise', 'fr-FR-Wavenet-C', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(279, 'Florent', 'fr-FR-Wavenet-D', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(280, 'Alice', 'fr-FR-Wavenet-E', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(281, 'Eva', 'de-DE-Wavenet-A', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(282, 'Wilhelm', 'de-DE-Wavenet-B', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(283, 'Hannah', 'de-DE-Wavenet-C', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(284, 'Alfred', 'de-DE-Wavenet-D', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(285, 'Werner', 'de-DE-Wavenet-E', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(286, 'Merkel', 'de-DE-Wavenet-F', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(287, 'Eleni', 'el-GR-Wavenet-A', 'Female', 'el-GR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(288, 'Inika', 'gu-IN-Wavenet-A', 'Female', 'gu-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(289, 'Jhinuk', 'gu-IN-Wavenet-B', 'Male', 'gu-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(290, 'Arunima', 'hi-IN-Wavenet-A', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(291, 'Ayaan', 'hi-IN-Wavenet-B', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(292, 'Keshav', 'hi-IN-Wavenet-C', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(293, 'Bhavna', 'hi-IN-Wavenet-D', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(294, 'Lena', 'hu-HU-Wavenet-A', 'Female', 'hu-HU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(295, 'Aulia', 'id-ID-Wavenet-A', 'Female', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(296, 'Arief', 'id-ID-Wavenet-B', 'Male', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(297, 'Fadhlan', 'id-ID-Wavenet-C', 'Male', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(298, 'Dewi', 'id-ID-Wavenet-D', 'Female', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `voice_type`, `sample_url`, `effect`, `created_at`, `updated_at`) VALUES
(299, 'Federica', 'it-IT-Wavenet-A', 'Female', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(300, 'Bella', 'it-IT-Wavenet-B', 'Female', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(301, 'Luca', 'it-IT-Wavenet-C', 'Male', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(302, 'Matteo', 'it-IT-Wavenet-D', 'Male', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(303, 'Manami', 'ja-JP-Wavenet-A', 'Female', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(304, 'Mizuki', 'ja-JP-Wavenet-B', 'Female', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(305, 'Sensei', 'ja-JP-Wavenet-C', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(306, 'Takuya', 'ja-JP-Wavenet-D', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(307, 'Aarushi', 'kn-IN-Wavenet-A', 'Female', 'kn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(308, 'Arjun', 'kn-IN-Wavenet-B', 'Male', 'kn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(309, 'Yong', 'ko-KR-Wavenet-A', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(310, 'Eun-Kyung', 'ko-KR-Wavenet-B', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(311, 'Beom-Soo', 'ko-KR-Wavenet-C', 'Male', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(312, 'Byung-joon', 'ko-KR-Wavenet-D', 'Male', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(313, 'Abha', 'ml-IN-Wavenet-A', 'Female', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(314, 'Akhil', 'ml-IN-Wavenet-B', 'Male', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(315, 'Changying', 'cmn-CN-Wavenet-A', 'Female', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(316, 'Boqin', 'cmn-CN-Wavenet-B', 'Male', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(317, 'Delun', 'cmn-CN-Wavenet-C', 'Male', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(318, 'Tyantyan', 'cmn-CN-Wavenet-D', 'Female', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(319, 'Sunyo', 'cmn-TW-Wavenet-A', 'Female', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(320, 'Chen', 'cmn-TW-Wavenet-B', 'Male', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(321, 'Xianbao', 'cmn-TW-Wavenet-C', 'Male', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(322, 'Chin', 'nb-NO-Wavenet-A', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(323, 'Bjorn', 'nb-NO-Wavenet-B', 'Male', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(324, 'Inger', 'nb-NO-Wavenet-C', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(325, 'Dag', 'nb-NO-Wavenet-D', 'Male', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(326, 'Janne', 'nb-NO-Wavenet-E', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(327, 'Sara', 'pl-PL-Wavenet-A', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:21', '2021-09-02 09:14:21'),
(328, 'Jan', 'pl-PL-Wavenet-B', 'Male', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(329, 'Jacob', 'pl-PL-Wavenet-C', 'Male', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(330, 'Lena', 'pl-PL-Wavenet-D', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(331, 'Zofia', 'pl-PL-Wavenet-E', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(332, 'Francisca', 'pt-BR-Wavenet-A', 'Female', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(333, 'Beatriz', 'pt-PT-Wavenet-A', 'Female', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(334, 'Ronaldo', 'pt-PT-Wavenet-B', 'Male', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(335, 'Lisboa', 'pt-PT-Wavenet-C', 'Male', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(336, 'Mariana', 'pt-PT-Wavenet-D', 'Female', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(337, 'Mihaela', 'ro-RO-Wavenet-A', 'Female', 'ro-RO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(338, 'Oksana', 'ru-RU-Wavenet-A', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(339, 'Vlad', 'ru-RU-Wavenet-B', 'Male', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(340, 'Veronika', 'ru-RU-Wavenet-C', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(341, 'Dapohui', 'ru-RU-Wavenet-D', 'Male', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(342, 'Svetlana', 'ru-RU-Wavenet-E', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(343, 'Anna', 'sk-SK-Wavenet-A', 'Female', 'sk-SK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(344, 'Hector', 'es-ES-Wavenet-B', 'Male', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(345, 'Vanessa', 'es-ES-Wavenet-C', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(346, 'Laura', 'es-ES-Wavenet-D', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(347, 'Isabella', 'es-US-Wavenet-A', 'Female', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(348, 'Pedro', 'es-US-Wavenet-B', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(349, 'Sanches', 'es-US-Wavenet-C', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(350, 'Karin', 'sv-SE-Wavenet-A', 'Female', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(351, 'Aarushi', 'ta-IN-Wavenet-A', 'Female', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(352, 'Aadhish', 'ta-IN-Wavenet-B', 'Male', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(353, 'Zeynep', 'tr-TR-Wavenet-A', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(354, 'Oktay', 'tr-TR-Wavenet-B', 'Male', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(355, 'Fatima', 'tr-TR-Wavenet-C', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(356, 'Gulchatay', 'tr-TR-Wavenet-D', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(357, 'Yanar', 'tr-TR-Wavenet-E', 'Male', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(358, 'Oksana', 'uk-UA-Wavenet-A', 'Female', 'uk-UA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(359, 'Chau', 'vi-VN-Wavenet-A', 'Female', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(360, 'Dung', 'vi-VN-Wavenet-B', 'Male', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(361, 'Cam', 'vi-VN-Wavenet-C', 'Female', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(362, 'Duy', 'vi-VN-Wavenet-D', 'Male', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(363, 'Hoda', 'ar-EG-Hoda', 'Female', 'ar-EG', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(364, 'Naayf', 'ar-SA-Naayf', 'Male', 'ar-SA', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(365, 'Ivan', 'bg-BG-Ivan', 'Male', 'bg-BG', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(366, 'Herena', 'ca-ES-HerenaRUS', 'Female', 'ca-ES', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(367, 'Danny', 'zh-HK-Danny', 'Male', 'zh-HK', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(368, 'Tracy', 'zh-HK-TracyRUS', 'Female', 'zh-HK', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(369, 'Huihui', 'zh-CN-HuihuiRUS', 'Female', 'zh-CN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(370, 'Kangkang', 'zh-CN-Kangkang', 'Male', 'zh-CN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(371, 'Yaoyao', 'zh-CN-Yaoyao', 'Female', 'zh-CN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(372, 'HanHan', 'zh-TW-HanHanRUS', 'Female', 'zh-TW', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(373, 'Yating', 'zh-TW-Yating', 'Female', 'zh-TW', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(374, 'Zhiwei', 'zh-TW-Zhiwei', 'Male', 'zh-TW', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(375, 'Matej', 'hr-HR-Matej', 'Male', 'hr-HR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(376, 'Jakub', 'cs-CZ-Jakub', 'Male', 'cs-CZ', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(377, 'Helle', 'da-DK-HelleRUS', 'Female', 'da-DK', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(378, 'Hanna', 'nl-NL-HannaRUS', 'Female', 'nl-NL', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(379, 'Catherine', 'en-AU-Catherine', 'Female', 'en-AU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(380, 'Hayley', 'en-AU-HayleyRUS', 'Female', 'en-AU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(381, 'Heather', 'en-CA-HeatherRUS', 'Female', 'en-CA', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(382, 'Linda', 'en-CA-Linda', 'Female', 'en-CA', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(383, 'Heera', 'en-IN-Heera', 'Female', 'en-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(384, 'Priya', 'en-IN-PriyaRUS', 'Female', 'en-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(385, 'Ravi', 'en-IN-Ravi', 'Male', 'en-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(386, 'Sean', 'en-IE-Sean', 'Male', 'en-IE', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(387, 'George', 'en-GB-George', 'Male', 'en-GB', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(388, 'Hazel', 'en-GB-HazelRUS', 'Female', 'en-GB', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(389, 'Susan', 'en-GB-Susan', 'Female', 'en-GB', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(390, 'Benjamin', 'en-US-BenjaminRUS', 'Male', 'en-US', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(391, 'Guy', 'en-US-GuyRUS', 'Male', 'en-US', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(392, 'Aria', 'en-US-AriaRUS', 'Female', 'en-US', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(393, 'Zira', 'en-US-ZiraRUS', 'Female', 'en-US', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(394, 'Heidi', 'fi-FI-HeidiRUS', 'Female', 'fi-FI', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(395, 'Caroline', 'fr-CA-Caroline', 'Female', 'fr-CA', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(396, 'Harmonie', 'fr-CA-HarmonieRUS', 'Female', 'fr-CA', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(397, 'Hortense', 'fr-FR-HortenseRUS', 'Female', 'fr-FR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(398, 'Julie', 'fr-FR-Julie', 'Female', 'fr-FR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(399, 'Paul', 'fr-FR-Paul', 'Male', 'fr-FR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(400, 'Guillaume', 'fr-CH-Guillaume', 'Male', 'fr-CH', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(401, 'Michael', 'de-AT-Michael', 'Male', 'de-AT', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(402, 'Hedda', 'de-DE-HeddaRUS', 'Female', 'de-DE', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(403, 'Stefan', 'de-DE-Stefan', 'Male', 'de-DE', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(404, 'Karsten', 'de-CH-Karsten', 'Male', 'de-CH', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(405, 'Stefanos', 'el-GR-Stefanos', 'Male', 'el-GR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(406, 'Asaf', 'he-IL-Asaf', 'Male', 'he-IL', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(407, 'Hemant', 'hi-IN-Hemant', 'Male', 'hi-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(408, 'Kalpana', 'hi-IN-Kalpana', 'Female', 'hi-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(409, 'Szabolcs', 'hu-HU-Szabolcs', 'Male', 'hu-HU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(410, 'Andika', 'id-ID-Andika', 'Male', 'id-ID', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(411, 'Cosimo', '	it-IT-Cosimo', 'Male', 'it-IT', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(412, 'Lucia', 'it-IT-LuciaRUS', 'Female', 'it-IT', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(413, 'Ayumi', 'ja-JP-Ayumi', 'Female', 'ja-JP', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(414, 'Haruka', 'ja-JP-HarukaRUS', 'Female', 'ja-JP', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(415, 'Ichiro', 'ja-JP-Ichiro', 'Male', 'ja-JP', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(416, 'Heami', 'ko-KR-HeamiRUS', 'Female', 'ko-KR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(417, 'Rizwan', 'ms-MY-Rizwan', 'Male', 'ms-MY', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(418, 'Hulda', 'nb-NO-HuldaRUS', 'Female', 'nb-NO', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(419, 'Paulina', 'pl-PL-PaulinaRUS', 'Female', 'pl-PL', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(420, 'Daniel', 'pt-BR-Daniel', 'Male', 'pt-BR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(421, 'Heloisa', 'pt-BR-HeloisaRUS', 'Female', 'pt-BR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(422, 'Helia', 'pt-PT-HeliaRUS', 'Female', 'pt-PT', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(423, 'Andrei', 'ro-RO-Andrei', 'Male', 'ro-RO', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(424, 'Ekaterina', 'ru-RU-EkaterinaRUS', 'Female', 'ru-RU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(425, 'Irina', 'ru-RU-Irina', 'Female', 'ru-RU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(426, 'Pavel', 'ru-RU-Pavel', 'Male', 'ru-RU', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(427, 'Filip', 'sk-SK-Filip', 'Male', 'sk-SK', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(428, 'Lado', 'sl-SI-Lado', 'Male', 'sl-SI', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(429, 'Hilda', 'es-MX-HildaRUS', 'Female', 'es-MX', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(430, 'Raul', 'es-MX-Raul', 'Male', 'es-MX', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(431, 'Helena', 'es-ES-HelenaRUS', 'Female', 'es-ES', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(432, 'Laura', 'es-ES-Laura', 'Female', 'es-ES', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(433, 'Pablo', 'es-ES-Pablo', 'Male', 'es-ES', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(434, 'Hedvig', 'sv-SE-HedvigRUS', 'Female', 'sv-SE', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(435, 'Valluvar', 'ta-IN-Valluvar', 'Male', 'ta-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(436, 'Chitra', 'te-IN-Chitra', 'Female', 'te-IN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(437, 'Pattara', 'th-TH-Pattara', 'Male', 'th-TH', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(438, 'Seda', 'tr-TR-SedaRUS', 'Female', 'tr-TR', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(439, 'An', 'vi-VN-An', 'Female', 'vi-VN', 'azure_std', 'azure', '/img/csp/azure-sm.png', 'standard', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(440, 'Salma', 'ar-EG-SalmaNeural', 'Female', 'ar-EG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(441, 'Shakir', 'ar-EG-ShakirNeural	', 'Male', 'ar-EG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(442, 'Zariyah', 'ar-SA-ZariyahNeural', 'Female', 'ar-SA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(443, 'Hamed', 'ar-SA-HamedNeural', 'Male', 'ar-SA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(444, 'Kalina', 'bg-BG-KalinaNeural', 'Female', 'bg-BG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(445, 'Borislav', 'bg-BG-BorislavNeural', 'Male', 'bg-BG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(446, 'Alba', 'ca-ES-AlbaNeural', 'Female', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(447, 'Joanna', 'ca-ES-JoanaNeural', 'Female', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(448, 'Enric', 'ca-ES-EnricNeural', 'Male', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(449, 'HiuGaai', 'zh-HK-HiuGaaiNeural', 'Female', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(450, 'HiuMaan', 'zh-HK-HiuMaanNeural', 'Female', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(451, 'WanLung', 'zh-HK-WanLungNeural', 'Male', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(452, 'Xiaoxiao', 'zh-CN-XiaoxiaoNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(453, 'Xiaoyou', 'zh-CN-XiaoyouNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(454, 'Xiaomo', 'zh-CN-XiaomoNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(455, 'Xiaoxuan', 'zh-CN-XiaoxuanNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(456, 'Xiaohan', 'zh-CN-XiaohanNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(457, 'Xiaorui', 'zh-CN-XiaoruiNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(458, 'Yunyang', 'zh-CN-YunyangNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(459, 'Yunye', 'zh-CN-YunyeNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(460, 'Yunxi', 'zh-CN-YunxiNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(461, 'HsiaoChen', 'zh-TW-HsiaoChenNeural', 'Female', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(462, 'HsiaoYu', 'zh-TW-HsiaoYuNeural', 'Female', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(463, 'YunJhe', 'zh-TW-YunJheNeural', 'Male', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(464, 'Gabrijela', 'hr-HR-GabrijelaNeural', 'Female', 'hr-HR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(465, 'Srecko', 'hr-HR-SreckoNeural', 'Male', 'hr-HR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(466, 'Vlasta', 'cs-CZ-VlastaNeural', 'Female', 'cs-CZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(467, 'Antonin', 'cs-CZ-AntoninNeural', 'Male', 'cs-CZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(468, 'Christel', 'da-DK-ChristelNeural', 'Female', 'da-DK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(469, 'Jeppe', 'da-DK-JeppeNeural', 'Male', 'da-DK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(470, 'Dena', 'nl-BE-DenaNeural', 'Female', 'nl-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(471, 'Arnaud', 'nl-BE-ArnaudNeural', 'Male', 'nl-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(472, 'Colette', 'nl-NL-ColetteNeural', 'Female', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(473, 'Fenna', 'nl-NL-FennaNeural', 'Female', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(474, 'Maarten', 'nl-NL-MaartenNeural', 'Male', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(475, 'Natasha', 'en-AU-NatashaNeural', 'Female', 'en-AU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(476, 'William', 'en-AU-WilliamNeural', 'Male', 'en-AU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(477, 'Clara', 'en-CA-ClaraNeural', 'Female', 'en-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(478, 'Liam', 'en-CA-LiamNeural', 'Male', 'en-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(479, 'Yan', 'en-HK-YanNeural', 'Female', 'en-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(480, 'Sam', 'en-HK-SamNeural', 'Male', 'en-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(481, 'Neerja', 'en-IN-NeerjaNeural', 'Female', 'en-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(482, 'Prabhat', 'en-IN-PrabhatNeural', 'Male', 'en-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(483, 'Emily', 'en-IE-EmilyNeural', 'Female', 'en-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(484, 'Connor', 'en-IE-ConnorNeural', 'Male', 'en-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(485, 'Molly', 'en-NZ-MollyNeural', 'Female', 'en-NZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(486, 'Mitchell', 'en-NZ-MitchellNeural', 'Male', 'en-NZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(487, 'Rosa', 'en-PH-RosaNeural', 'Female', 'en-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(489, 'James', 'en-PH-JamesNeural', 'Male', 'en-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(490, 'Luna', 'en-SG-LunaNeural', 'Female', 'en-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(491, 'Wayne', 'en-SG-WayneNeural', 'Male', 'en-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(492, 'Leah', 'en-ZA-LeahNeural', 'Female', 'en-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(493, 'Luke', 'en-ZA-LukeNeural', 'Male', 'en-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(494, 'Libby', 'en-GB-LibbyNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(495, 'Mia', 'en-GB-MiaNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(496, 'Ryan', 'en-GB-RyanNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(497, 'Aria', 'en-US-AriaNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(498, 'Jenny', 'en-US-JennyNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(499, 'Guy', 'en-US-GuyNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(500, 'Anu', 'et-EE-AnuNeural', 'Female', 'et-EE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(501, 'Kert', 'et-EE-KertNeural', 'Male', 'et-EE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(502, 'Noora', 'fi-FI-NooraNeural', 'Female', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(503, 'Selma', 'fi-FI-SelmaNeural', 'Female', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(504, 'Harri', 'fi-FI-HarriNeural', 'Male', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(505, 'Charline', 'fr-BE-CharlineNeural', 'Female', 'fr-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(506, 'Gerard', 'fr-BE-GerardNeural', 'Male', 'fr-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(507, 'Sylvie', 'fr-CA-SylvieNeural', 'Female', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(508, 'Antoine', 'fr-CA-AntoineNeural', 'Male', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(509, 'Jean', 'fr-CA-JeanNeural', 'Male', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(510, 'Denise', 'fr-FR-DeniseNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(511, 'Henri', 'fr-FR-HenriNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(512, 'Ariane', 'fr-CH-ArianeNeural', 'Female', 'fr-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(513, 'Fabrice', 'fr-CH-FabriceNeural', 'Male', 'fr-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(514, 'Ingrid', 'de-AT-IngridNeural', 'Female', 'de-AT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(515, 'Jonas', 'de-AT-JonasNeural', 'Male', 'de-AT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(516, 'Katja', 'de-DE-KatjaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(517, 'Conrad', 'de-DE-ConradNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(518, 'Leni', 'de-CH-LeniNeural', 'Female', 'de-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(519, 'Jan', 'de-CH-JanNeural', 'Mle', 'de-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(520, 'Athina', 'el-GR-AthinaNeural', 'Female', 'el-GR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(521, 'Nestoras', 'el-GR-NestorasNeural', 'Male', 'el-GR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(522, 'Dhwani', 'gu-IN-DhwaniNeural', 'Female', 'gu-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(523, 'Niranjan', 'gu-IN-NiranjanNeural', 'Male', 'gu-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(524, 'Hila', 'he-IL-HilaNeural', 'Female', 'he-IL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(525, 'Avri', 'he-IL-AvriNeural', 'Male', 'he-IL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(526, 'Swara', 'hi-IN-SwaraNeural', 'Female', 'hi-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(527, 'Madhur', 'hi-IN-MadhurNeural', 'Male', 'hi-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(528, 'Noemi', 'hu-HU-NoemiNeural', 'Female', 'hu-HU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(529, 'Tamas', 'hu-HU-TamasNeural', 'Male', 'hu-HU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(530, 'Gadis', 'id-ID-GadisNeural', 'Female', 'id-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(531, 'Ardi', 'id-ID-ArdiNeural', 'Male', 'id-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(532, 'Orla', 'ga-IE-OrlaNeural', 'Female', 'ga-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(533, 'Colm', 'ga-IE-ColmNeural', 'Male', 'ga-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(534, 'Elsa', 'it-IT-ElsaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(535, 'Isabella', 'it-IT-IsabellaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(536, 'Diego', 'it-IT-DiegoNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(537, 'Nanami', 'ja-JP-NanamiNeural', 'Female', 'ja-JP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(538, 'Keita', 'ja-JP-KeitaNeural', 'Male', 'ja-JP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(539, 'SunHi', 'ko-KR-SunHiNeural', 'Female', 'ko-KR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(540, 'InJoon', 'ko-KR-InJoonNeural', 'Male', 'ko-KR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(541, 'Everita', 'lv-LV-EveritaNeural', 'Female', 'lv-LV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(542, 'Nils', 'lv-LV-NilsNeural', 'Male', 'lv-LV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(543, 'Ona', 'lt-LT-OnaNeural', 'Female', 'lt-LT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(544, 'Leonas', 'lt-LT-LeonasNeural', 'Male', 'lt-LT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(545, 'Yasmin', 'ms-MY-YasminNeural', 'Female', 'ms-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(546, 'Osman', 'ms-MY-OsmanNeural', 'Male', 'ms-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(547, 'Grace', 'mt-MT-GraceNeural', 'Female', 'mt-MT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(548, 'Joseph', 'mt-MT-JosephNeural', 'Male', 'mt-MT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(549, 'Aarohi', 'mr-IN-AarohiNeural', 'Female', 'mr-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(550, 'Manohar', 'mr-IN-ManoharNeural', 'Male', 'mr-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(551, 'Iselin', 'nb-NO-IselinNeural', 'Female', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(552, 'Pernille', 'nb-NO-PernilleNeural', 'Female', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(553, 'Finn', 'nb-NO-FinnNeural', 'Male', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(554, 'Agnieszka', 'pl-PL-AgnieszkaNeural', 'Female', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(555, 'Zofia', 'pl-PL-ZofiaNeural', 'Female', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(556, 'Marek', 'pl-PL-MarekNeural', 'Male', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(557, 'Francisca', 'pt-BR-FranciscaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(558, 'Antonio', 'pt-BR-AntonioNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(559, 'Fernanda', 'pt-PT-FernandaNeural', 'Female', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(560, 'Raquel', 'pt-PT-RaquelNeural', 'Female', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(561, 'Duarte', 'pt-PT-DuarteNeural', 'Male', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(562, 'Alina', 'ro-RO-AlinaNeural', 'Female', 'ro-RO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(563, 'Emil', 'ro-RO-EmilNeural', 'Male', 'ro-RO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(564, 'Dariya', 'ru-RU-DariyaNeural', 'Female', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(565, 'Svetlana', 'ru-RU-SvetlanaNeural', 'Female', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(566, 'Dmitry', 'ru-RU-DmitryNeural', 'Male', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(567, 'Viktoria', 'sk-SK-ViktoriaNeural', 'Female', 'sk-SK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(568, 'Lukas', 'sk-SK-LukasNeural', 'Male', 'sk-SK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(569, 'Petra', 'sl-SI-PetraNeural', 'Female', 'sl-SI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(570, 'Rok', 'sl-SI-RokNeural', 'Male', 'sl-SI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(571, 'Elena', 'es-AR-ElenaNeural', 'Female', 'es-AR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(572, 'Tomas', 'es-AR-TomasNeural', 'Male', 'es-AR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(573, 'Salome', 'es-CO-SalomeNeural', 'Female', 'es-CO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(574, 'Gonzalo', 'es-CO-GonzaloNeural', 'Male', 'es-CO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(575, 'Dalia', 'es-MX-DaliaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(576, 'Jorge', 'es-MX-JorgeNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(577, 'Elvira', 'es-ES-ElviraNeural', 'Female', 'es-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(578, 'Alvaro', 'es-ES-AlvaroNeural', 'Male', 'es-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(579, 'Paloma', 'es-US-PalomaNeural', 'Female', 'es-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(580, 'Alonso', 'es-US-AlonsoNeural', 'Male', 'es-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(581, 'Zuri', 'sw-KE-ZuriNeural', 'Female', 'sw-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(582, 'Rafiki', 'sw-KE-RafikiNeural', 'Male', 'sw-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(583, 'Hillev', 'sv-SE-HilleviNeural', 'Female', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(584, 'Sofie', 'sv-SE-SofieNeural', 'Female', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(585, 'Mattias', 'sv-SE-MattiasNeural', 'Male', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(586, 'Pallavi', 'ta-IN-PallaviNeural', 'Female', 'ta-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(587, 'Valluvar', 'ta-IN-ValluvarNeural', 'Male', 'ta-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(588, 'Shruti', 'te-IN-ShrutiNeural', 'Female', 'te-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(589, 'Mohan', 'te-IN-MohanNeural', 'Male', 'te-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(590, 'Achara', 'th-TH-AcharaNeural', 'Female', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `voice_type`, `sample_url`, `effect`, `created_at`, `updated_at`) VALUES
(591, 'Premwadee', 'th-TH-PremwadeeNeural', 'Female', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(592, 'Niwat', 'th-TH-NiwatNeural', 'Male', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(593, 'Emel', 'tr-TR-EmelNeural', 'Female', 'tr-TR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(594, 'Ahmet', 'tr-TR-AhmetNeural', 'Male', 'tr-TR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(595, 'Polina', 'uk-UA-PolinaNeural', 'Female', 'uk-UA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(596, 'Ostap', 'uk-UA-OstapNeural', 'Male', 'uk-UA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(597, 'Uzma', 'ur-PK-UzmaNeural', 'Female', 'ur-PK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(598, 'Asad', 'ur-PK-AsadNeural', 'Male', 'ur-PK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(599, 'HoaiMy', 'vi-VN-HoaiMyNeural', 'Female', 'vi-VN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(600, 'NamMinh', 'vi-VN-NamMinhNeural', 'Male', 'vi-VN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(601, 'Nia', 'cy-GB-NiaNeural', 'Female', 'cy-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(602, 'Aled', 'cy-GB-AledNeural', 'Female', 'cy-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(603, 'Omar', 'ar-MS_OmarVoice', 'Male', 'ar-XA', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(604, 'LiNa', 'zh-CN_LiNaVoice', 'Female', 'zh-CN', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(605, 'WangWei', 'zh-CN_WangWeiVoice', 'Male', 'zh-CN', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(606, 'ZhangJing', 'zh-CN_ZhangJingVoice', 'Female', 'zh-CN', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(607, 'Emma', 'nl-NL_EmmaVoice', 'Female', 'nl-NL', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(608, 'Liam', 'nl-NL_LiamVoice', 'Male', 'nl-NL', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(609, 'Craig', 'en-AU_CraigVoice', 'Male', 'en-AU', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(610, 'Madison', 'en-AU_MadisonVoice', 'Female', 'en-AU', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(611, 'Charlotte', 'en-GB_CharlotteV3Voice', 'Female', 'en-GB', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(612, 'James', 'en-GB_JamesV3Voice', 'Male', 'en-GB', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(613, 'Kate', 'en-GB_KateV3Voice', 'Female', 'en-GB', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(614, 'Allison', 'en-US_AllisonV3Voice', 'Female', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(615, 'Emily', 'en-US_EmilyV3Voice', 'Female', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(616, 'Henry', 'en-US_HenryV3Voice', 'Male', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(617, 'Kevin', 'en-US_KevinV3Voice', 'Male', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(618, 'Lisa', 'en-US_LisaV3Voice', 'Female', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(619, 'Michael', 'en-US_MichaelV3Voice', 'Male', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(620, 'Olivia', 'en-US_OliviaV3Voice', 'Female', 'en-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(621, 'Nicolas', 'fr-FR_NicolasV3Voice', 'Male', 'fr-FR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(622, 'Renee', 'fr-FR_ReneeV3Voice', 'Female', 'fr-FR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(624, 'Birgit', 'de-DE_BirgitV3Voice', 'Female', 'de-DE', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(625, 'Dieter', 'de-DE_DieterV3Voice', 'Male', 'de-DE', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(626, 'Erika', 'de-DE_ErikaV3Voice', 'Female', 'de-DE', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(627, 'Francesca', 'it-IT_FrancescaV3Voice', 'Female', 'it-IT', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(628, 'Emi', 'ja-JP_EmiV3Voice', 'Female', 'ja-JP', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(629, 'Hyunjun', 'ko-KR_HyunjunVoice', 'Male', 'ko-KR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(630, 'SiWoo', 'ko-KR_SiWooVoice', 'Male', 'ko-KR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(631, 'Youngmi', 'ko-KR_YoungmiVoice', 'Female', 'ko-KR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(632, 'Yuna', 'ko-KR_YunaVoice', 'Female', 'ko-KR', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(633, 'Enrique', 'es-ES_EnriqueV3Voice', 'Male', 'es-ES', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(634, 'Laura', 'es-ES_LauraV3Voice', 'Female', 'es-ES', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(635, 'Sofia', 'es-LA_SofiaV3Voice', 'Female', 'es-MX', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22'),
(636, 'Sofia', 'es-US_SofiaV3Voice', 'Female', 'es-US', 'ibm_nrl', 'ibm', '/img/csp/ibm-sm.png', 'neural', '', 'standard', '2021-09-02 09:14:22', '2021-09-02 09:14:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_base_groups`
--
ALTER TABLE `erp_base_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_base_setups`
--
ALTER TABLE `erp_base_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_departments`
--
ALTER TABLE `erp_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_designations`
--
ALTER TABLE `erp_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_employees`
--
ALTER TABLE `erp_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_patients`
--
ALTER TABLE `erp_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erp_support_plans`
--
ALTER TABLE `erp_support_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_plan_name_unique` (`plan_name`);

--
-- Indexes for table `prepaid_plans`
--
ALTER TABLE `prepaid_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promocodes_code_unique` (`code`);

--
-- Indexes for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promocode_user_user_id_foreign` (`user_id`),
  ADD KEY `promocode_user_promocode_id_foreign` (`promocode_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supports_ticket_id_unique` (`ticket_id`),
  ADD KEY `supports_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_vendors`
--
ALTER TABLE `user_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_vendor_enable`
--
ALTER TABLE `user_vendor_enable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voices`
--
ALTER TABLE `voices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_base_groups`
--
ALTER TABLE `erp_base_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_base_setups`
--
ALTER TABLE `erp_base_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_departments`
--
ALTER TABLE `erp_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_designations`
--
ALTER TABLE `erp_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_employees`
--
ALTER TABLE `erp_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_patients`
--
ALTER TABLE `erp_patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erp_support_plans`
--
ALTER TABLE `erp_support_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prepaid_plans`
--
ALTER TABLE `prepaid_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_user`
--
ALTER TABLE `promocode_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_vendors`
--
ALTER TABLE `user_vendors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_vendor_enable`
--
ALTER TABLE `user_vendor_enable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `voices`
--
ALTER TABLE `voices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
