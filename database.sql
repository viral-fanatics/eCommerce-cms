-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 19, 2021 at 10:39 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'CMkmLfID6xMfMvi5hVDsOY0qSqxAOPQ1', 1, '2021-09-18 20:33:17', '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Cum repellat quia odio optio consectetur maxime. In qui corporis aliquid. Earum et voluptas consequuntur eligendi molestias maiores id recusandae.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(2, 'Fashion', 0, 'Vitae saepe ut aspernatur ab illo qui quaerat. Ipsum voluptates velit ipsum rerum. Fugiat itaque consequatur nemo et numquam dolor.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(3, 'Electronic', 0, 'Voluptatem eum neque rem rerum id voluptate. Deserunt atque porro corrupti maxime non et dolores.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(4, 'Commercial', 0, 'Officiis delectus vitae adipisci quisquam ab. Qui numquam maiores fugit dolores. Nobis nostrum molestias vitae beatae molestias sequi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(5, 'Th????ng m???i ??i???n t???', 0, 'Praesentium ipsa consequatur illum libero qui omnis. Deleniti sit ut ipsam aut veniam. Nisi eaque perspiciatis quia eum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(6, 'Fashion', 0, 'Vel hic cumque eligendi pariatur. Quia omnis autem molestiae reiciendis. Corrupti molestiae omnis et asperiores dignissimos. Reprehenderit pariatur tempora itaque vel beatae.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(7, 'Electronic', 0, 'Qui reiciendis dolore in ipsa. Distinctio reiciendis nobis reprehenderit quia. Dolorem quam laborum omnis ab fugiat vero voluptatibus.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(8, 'Th????ng m???i', 0, 'Aut eos neque enim vel et eum ut. Tempore aut molestiae reiciendis ipsa provident voluptatem quo. Maxime vero labore in omnis. Qui quia omnis qui sapiente consequuntur velit dolore.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(3, 'Mestonix', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(4, 'Sunshine', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(5, 'Pure', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(6, 'Anfold', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(7, 'Automotive', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands_translations`
--

INSERT INTO `ec_brands_translations` (`lang_code`, `ec_brands_id`, `name`, `description`) VALUES
('vi', 1, 'Fashion live', NULL),
('vi', 2, 'Hand crafted', NULL),
('vi', 3, 'Mestonix', NULL),
('vi', 4, 'Sunshine', NULL),
('vi', 5, 'Pure', NULL),
('vi', 6, 'Anfold', NULL),
('vi', 7, 'Automotive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(2, 'EUR', '???', 0, 2, 1, 0, 0.84, '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(3, 'VND', '???', 0, 0, 2, 0, 23203, '2021-09-18 20:32:37', '2021-09-18 20:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '$2y$10$m95UHhzCp4wh4fNAzZ4hl.Lk3.QhY909ZlSRHamI2xrp6Gk660eo.', 'customers/1.jpg', NULL, '+18049797479', NULL, '2021-09-18 20:33:03', '2021-09-18 20:33:03', '2021-09-19 03:33:03', NULL),
(2, 'Mr. Carroll Walter II', 'bartell.santa@example.org', '$2y$10$pDN42JurQ.j7.wBFIF62h.cWC/vz2YS/.vxzbvfr6hNknUSu.2wTq', 'customers/1.jpg', NULL, '+17084216290', NULL, '2021-09-18 20:33:03', '2021-09-18 20:33:03', '2021-09-19 03:33:03', NULL),
(3, 'Mallory Wilkinson', 'brandt49@example.com', '$2y$10$kO0VfK4XuKEsIzupNGNRoukFac/wlzCcAtZie741mDnvTy61oHegC', 'customers/2.jpg', NULL, '+18060427341', NULL, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '2021-09-19 03:33:04', NULL),
(4, 'Mrs. Helena Kirlin', 'edwardo73@example.org', '$2y$10$3N6DWE.IPvTZQqi1hxIg5.rvXxP.hFCkKFBx0r1xf3wpib.xpYD6i', 'customers/3.jpg', NULL, '+12311298175', NULL, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '2021-09-19 03:33:04', NULL),
(5, 'Ms. Macy Ritchie MD', 'mohr.simeon@example.com', '$2y$10$wNnaky.Y/bZ4M/Mo0sb.9OAYA0xlaUGQun9Dn7rNjTtPEWb2nMufC', 'customers/4.jpg', NULL, '+15408191557', NULL, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '2021-09-19 03:33:04', NULL),
(6, 'Garnet Nitzsche Sr.', 'adolfo77@example.net', '$2y$10$MNJeaB2mHzdeV7YEEez7TuzrozZQUFnX8HHOY38i4NWPqxblgFXUS', 'customers/5.jpg', NULL, '+17574052805', NULL, '2021-09-18 20:33:05', '2021-09-18 20:33:05', '2021-09-19 03:33:05', NULL),
(7, 'Florida Pfannerstill', 'jon.towne@example.org', '$2y$10$8p/LF6ifrE.Ik6Vav/6TK.MrIHJuT6t5KqSkNhNPNcBZJlyFafl1G', 'customers/6.jpg', NULL, '+12311178829', NULL, '2021-09-18 20:33:05', '2021-09-18 20:33:05', '2021-09-19 03:33:05', NULL),
(8, 'Calista Hegmann', 'kdare@example.net', '$2y$10$2SBhak6dGjMsxNKgA3NDyORWmLnz.3.SABItownb1R22Q.H.K1oMO', 'customers/7.jpg', NULL, '+15599701077', NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', '2021-09-19 03:33:06', NULL),
(9, 'Prof. Audie Ryan V', 'mccullough.ignacio@example.com', '$2y$10$PCVJLPYuHWYiyzGgVDXSN.jpxUmaZsdUjIkC0t3ong2pp04VUPrha', 'customers/8.jpg', NULL, '+19403233266', NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', '2021-09-19 03:33:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+15207468600', 'BD', 'Delaware', 'Wunschfort', '877 Weston Meadow Apt. 001', 1, 1, '2021-09-18 20:33:03', '2021-09-18 20:33:03', '47640-8638'),
(2, 'John Smith', 'john.smith@botble.com', '+13208766129', 'SI', 'Rhode Island', 'Graceland', '32923 Considine Manor', 1, 0, '2021-09-18 20:33:03', '2021-09-18 20:33:03', '49930'),
(3, 'Mr. Carroll Walter II', 'bartell.santa@example.org', '+18017094229', 'CI', 'Montana', 'Staceymouth', '598 Bernita Drive Suite 532', 2, 1, '2021-09-18 20:33:03', '2021-09-18 20:33:03', '66756'),
(4, 'Mallory Wilkinson', 'brandt49@example.com', '+12025862405', 'KP', 'Wyoming', 'North Bridgette', '80896 Lakin Passage Apt. 918', 3, 1, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '98554-2425'),
(5, 'Mrs. Helena Kirlin', 'edwardo73@example.org', '+18582434406', 'GM', 'New York', 'Treutelville', '38677 Gusikowski Avenue Apt. 760', 4, 1, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '60385'),
(6, 'Ms. Macy Ritchie MD', 'mohr.simeon@example.com', '+15704443967', 'SK', 'Oklahoma', 'Alexysfurt', '156 Thaddeus Hollow Apt. 513', 5, 1, '2021-09-18 20:33:04', '2021-09-18 20:33:04', '20938'),
(7, 'Garnet Nitzsche Sr.', 'adolfo77@example.net', '+19892456919', 'LI', 'Maryland', 'Danberg', '476 Pouros Row', 6, 1, '2021-09-18 20:33:05', '2021-09-18 20:33:05', '12823-5711'),
(8, 'Florida Pfannerstill', 'jon.towne@example.org', '+13607296228', 'MY', 'California', 'Nathanialside', '614 Malinda Viaduct Suite 795', 7, 1, '2021-09-18 20:33:05', '2021-09-18 20:33:05', '31345'),
(9, 'Calista Hegmann', 'kdare@example.net', '+19175743097', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 8, 1, '2021-09-18 20:33:06', '2021-09-18 20:33:06', '68163-3721'),
(10, 'Prof. Audie Ryan V', 'mccullough.ignacio@example.com', '+19314223876', 'GY', 'Rhode Island', 'South Sierra', '25724 McGlynn Islands', 9, 1, '2021-09-18 20:33:06', '2021-09-18 20:33:06', '15145-9942');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day.', '2021-11-04 00:00:00', 'published', '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(2, 'Gadgets & Accessories', '2021-10-30 00:00:00', 'published', '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales_translations`
--

INSERT INTO `ec_flash_sales_translations` (`lang_code`, `ec_flash_sales_id`, `name`) VALUES
('vi', 1, 'Khuy???n m??i trong ng??y.'),
('vi', 2, 'Ti???n ??ch & Ph??? ki???n');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 8, 57.018, 16, 5),
(2, 6, 34.2, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 4, '1', 'default', 'pending', '1844.10', '93.10', '0.00', NULL, NULL, '0.00', '1751.00', 1, NULL, 1, 'EdOj3VZ4XIk29Uvchr6OdyLqImtNC', 1, '2021-09-13 20:33:06', '2021-09-18 20:33:06'),
(2, 6, '1', 'default', 'pending', '1667.30', '78.30', '0.00', NULL, NULL, '0.00', '1589.00', 1, NULL, 1, '4J4Ucl41UycuSLU8mAJgdXrqI7Xwd', 2, '2021-09-12 12:33:06', '2021-09-18 20:33:06'),
(3, 8, '1', 'default', 'pending', '817.80', '32.80', '0.00', NULL, NULL, '0.00', '785.00', 1, NULL, 1, 'BZ5cOa3XlOhxCJYVR7rmgvN8HFCdA', 3, '2021-09-05 08:33:06', '2021-09-18 20:33:06'),
(4, 6, '1', 'default', 'pending', '1280.10', '43.10', '0.00', NULL, NULL, '0.00', '1237.00', 1, NULL, 1, 'mXiY0DD1jJqNcbPZKajoTxANvNOCt', 4, '2021-09-13 04:33:06', '2021-09-18 20:33:06'),
(5, 2, '1', 'default', 'completed', '2060.80', '100.80', '0.00', NULL, NULL, '0.00', '1960.00', 1, NULL, 1, 'XcL4Wfllxm1kLbfgpQm4eOwOsMY4Y', 5, '2021-09-13 12:33:06', '2021-09-18 20:33:07'),
(6, 5, '1', 'default', 'pending', '676.50', '61.50', '0.00', NULL, NULL, '0.00', '615.00', 1, NULL, 1, 'J32dD4HeVcpZkDiVMQt0zt8uXdkG1', 6, '2021-09-07 14:33:06', '2021-09-18 20:33:06'),
(7, 6, '1', 'default', 'pending', '601.00', '23.00', '0.00', NULL, NULL, '0.00', '578.00', 1, NULL, 1, 'toNRY5Wc2884LaMohLeUzxG1K019n', 7, '2021-09-16 12:33:06', '2021-09-18 20:33:06'),
(8, 8, '1', 'default', 'pending', '629.10', '53.10', '0.00', NULL, NULL, '0.00', '576.00', 1, NULL, 1, 'ha3FjOkaqkFVmO55MV5ma3kluT9si', 8, '2021-09-14 12:33:06', '2021-09-18 20:33:06'),
(9, 6, '1', 'default', 'pending', '434.00', '14.00', '0.00', NULL, NULL, '0.00', '420.00', 1, NULL, 1, 'jor2EQCi39Y5MSCh0IYmU8qkBEmLR', 9, '2021-09-12 20:33:06', '2021-09-18 20:33:06'),
(10, 9, '1', 'default', 'completed', '614.40', '31.40', '0.00', NULL, NULL, '0.00', '583.00', 1, NULL, 1, 'Zpz0pRMTBZeZE1XqBQMJZC04xl7T4', 10, '2021-09-17 22:33:06', '2021-09-18 20:33:07'),
(11, 8, '1', 'default', 'pending', '2245.80', '83.80', '0.00', NULL, NULL, '0.00', '2162.00', 1, NULL, 1, 'hVvy3JYMJHHk0mF6N0p1zmLsD7jYk', 11, '2021-09-14 16:33:06', '2021-09-18 20:33:06'),
(12, 7, '1', 'default', 'completed', '2053.50', '68.50', '0.00', NULL, NULL, '0.00', '1985.00', 1, NULL, 1, '5OW2AEiKzk4pclzk7fFi4dZgRVT1T', 12, '2021-09-12 02:33:06', '2021-09-18 20:33:07'),
(13, 5, '1', 'default', 'completed', '1120.20', '43.20', '0.00', NULL, NULL, '0.00', '1077.00', 1, NULL, 1, 'kpFD0TWNn7JB8FS8q23WBweELkcJF', 13, '2021-09-15 12:33:07', '2021-09-18 20:33:07'),
(14, 1, '1', 'default', 'pending', '1931.10', '115.10', '0.00', NULL, NULL, '0.00', '1816.00', 1, NULL, 1, '8tP1TKMHaje4tsAuhZh8jQDDTaN0Y', 14, '2021-09-13 14:33:07', '2021-09-18 20:33:07'),
(15, 2, '1', 'default', 'pending', '1176.00', '73.00', '0.00', NULL, NULL, '0.00', '1103.00', 1, NULL, 1, '1WkeGu7baXwFp7LhFGdqHYPm421ZV', 15, '2021-09-15 20:33:07', '2021-09-18 20:33:07'),
(16, 1, '1', 'default', 'pending', '2193.00', '73.00', '0.00', NULL, NULL, '0.00', '2120.00', 1, NULL, 1, 'gjeMLXYj0qrjzyl5lwe4LgoeqEMaN', 16, '2021-09-18 00:33:07', '2021-09-18 20:33:07'),
(17, 3, '1', 'default', 'completed', '1769.60', '112.60', '0.00', NULL, NULL, '0.00', '1657.00', 1, NULL, 1, 'f2onMDmtyKqN7oGKAhw2UUbmT68pz', 17, '2021-09-15 12:33:07', '2021-09-18 20:33:07'),
(18, 8, '1', 'default', 'pending', '596.40', '24.40', '0.00', NULL, NULL, '0.00', '572.00', 1, NULL, 1, '9nECXkEHzeDzMImgKGeQfyO6SukcJ', 18, '2021-09-17 08:33:07', '2021-09-18 20:33:07'),
(19, 8, '1', 'default', 'pending', '1653.60', '55.60', '0.00', NULL, NULL, '0.00', '1598.00', 1, NULL, 1, '86VzDyKiqFPepaQSM9HWDVUiY789T', 19, '2021-09-17 20:33:07', '2021-09-18 20:33:07'),
(20, 3, '1', 'default', 'pending', '616.90', '19.90', '0.00', NULL, NULL, '0.00', '597.00', 1, NULL, 1, 's1ekmzWI7F23gGQDwJEo9zE6jReCy', 20, '2021-09-18 08:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Mrs. Helena Kirlin', '+18582434406', 'edwardo73@example.org', 'GM', 'New York', 'Treutelville', '38677 Gusikowski Avenue Apt. 760', 1, '60385'),
(2, 'Garnet Nitzsche Sr.', '+19892456919', 'adolfo77@example.net', 'LI', 'Maryland', 'Danberg', '476 Pouros Row', 2, '12823-5711'),
(3, 'Calista Hegmann', '+19175743097', 'kdare@example.net', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 3, '68163-3721'),
(4, 'Garnet Nitzsche Sr.', '+19892456919', 'adolfo77@example.net', 'LI', 'Maryland', 'Danberg', '476 Pouros Row', 4, '12823-5711'),
(5, 'Mr. Carroll Walter II', '+18017094229', 'bartell.santa@example.org', 'CI', 'Montana', 'Staceymouth', '598 Bernita Drive Suite 532', 5, '66756'),
(6, 'Ms. Macy Ritchie MD', '+15704443967', 'mohr.simeon@example.com', 'SK', 'Oklahoma', 'Alexysfurt', '156 Thaddeus Hollow Apt. 513', 6, '20938'),
(7, 'Garnet Nitzsche Sr.', '+19892456919', 'adolfo77@example.net', 'LI', 'Maryland', 'Danberg', '476 Pouros Row', 7, '12823-5711'),
(8, 'Calista Hegmann', '+19175743097', 'kdare@example.net', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 8, '68163-3721'),
(9, 'Garnet Nitzsche Sr.', '+19892456919', 'adolfo77@example.net', 'LI', 'Maryland', 'Danberg', '476 Pouros Row', 9, '12823-5711'),
(10, 'Prof. Audie Ryan V', '+19314223876', 'mccullough.ignacio@example.com', 'GY', 'Rhode Island', 'South Sierra', '25724 McGlynn Islands', 10, '15145-9942'),
(11, 'Calista Hegmann', '+19175743097', 'kdare@example.net', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 11, '68163-3721'),
(12, 'Florida Pfannerstill', '+13607296228', 'jon.towne@example.org', 'MY', 'California', 'Nathanialside', '614 Malinda Viaduct Suite 795', 12, '31345'),
(13, 'Ms. Macy Ritchie MD', '+15704443967', 'mohr.simeon@example.com', 'SK', 'Oklahoma', 'Alexysfurt', '156 Thaddeus Hollow Apt. 513', 13, '20938'),
(14, 'John Smith', '+15207468600', 'john.smith@botble.com', 'BD', 'Delaware', 'Wunschfort', '877 Weston Meadow Apt. 001', 14, '47640-8638'),
(15, 'Mr. Carroll Walter II', '+18017094229', 'bartell.santa@example.org', 'CI', 'Montana', 'Staceymouth', '598 Bernita Drive Suite 532', 15, '66756'),
(16, 'John Smith', '+15207468600', 'john.smith@botble.com', 'BD', 'Delaware', 'Wunschfort', '877 Weston Meadow Apt. 001', 16, '47640-8638'),
(17, 'Mallory Wilkinson', '+12025862405', 'brandt49@example.com', 'KP', 'Wyoming', 'North Bridgette', '80896 Lakin Passage Apt. 918', 17, '98554-2425'),
(18, 'Calista Hegmann', '+19175743097', 'kdare@example.net', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 18, '68163-3721'),
(19, 'Calista Hegmann', '+19175743097', 'kdare@example.net', 'PG', 'Connecticut', 'Benjaminborough', '1861 Devante Landing', 19, '68163-3721'),
(20, 'Mallory Wilkinson', '+12025862405', 'brandt49@example.com', 'KP', 'Wyoming', 'North Bridgette', '80896 Lakin Passage Apt. 918', 20, '98554-2425');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2021-09-13 20:33:06', '2021-09-13 20:33:06'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2021-09-13 20:33:06', '2021-09-13 20:33:06'),
(3, 'confirm_payment', 'Payment was confirmed (amount $1,844.10) by %user_name%', 0, 1, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(4, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(5, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2021-09-12 12:33:06', '2021-09-12 12:33:06'),
(6, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2021-09-12 12:33:06', '2021-09-12 12:33:06'),
(7, 'confirm_payment', 'Payment was confirmed (amount $1,667.30) by %user_name%', 0, 2, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(8, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(9, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2021-09-05 08:33:06', '2021-09-05 08:33:06'),
(10, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2021-09-05 08:33:06', '2021-09-05 08:33:06'),
(11, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(12, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2021-09-13 04:33:06', '2021-09-13 04:33:06'),
(13, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2021-09-13 04:33:06', '2021-09-13 04:33:06'),
(14, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(15, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-09-13 12:33:06', '2021-09-13 12:33:06'),
(16, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-09-13 12:33:06', '2021-09-13 12:33:06'),
(17, 'confirm_payment', 'Payment was confirmed (amount $2,060.80) by %user_name%', 0, 5, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(18, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(19, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(20, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2021-09-07 14:33:06', '2021-09-07 14:33:06'),
(21, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2021-09-07 14:33:06', '2021-09-07 14:33:06'),
(22, 'confirm_payment', 'Payment was confirmed (amount $676.50) by %user_name%', 0, 6, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(23, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(24, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2021-09-16 12:33:06', '2021-09-16 12:33:06'),
(25, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2021-09-16 12:33:06', '2021-09-16 12:33:06'),
(26, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(27, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 7, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(28, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2021-09-14 12:33:06', '2021-09-14 12:33:06'),
(29, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2021-09-14 12:33:06', '2021-09-14 12:33:06'),
(30, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(31, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(32, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-09-12 20:33:06', '2021-09-12 20:33:06'),
(33, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-09-12 20:33:06', '2021-09-12 20:33:06'),
(34, 'confirm_payment', 'Payment was confirmed (amount $434.00) by %user_name%', 0, 9, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(35, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(36, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2021-09-17 22:33:06', '2021-09-17 22:33:06'),
(37, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2021-09-17 22:33:06', '2021-09-17 22:33:06'),
(38, 'confirm_payment', 'Payment was confirmed (amount $614.40) by %user_name%', 0, 10, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(39, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(40, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(41, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2021-09-14 16:33:06', '2021-09-14 16:33:06'),
(42, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2021-09-14 16:33:06', '2021-09-14 16:33:06'),
(43, 'confirm_payment', 'Payment was confirmed (amount $2,245.80) by %user_name%', 0, 11, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(44, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(45, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2021-09-12 02:33:06', '2021-09-12 02:33:06'),
(46, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2021-09-12 02:33:06', '2021-09-12 02:33:06'),
(47, 'confirm_payment', 'Payment was confirmed (amount $2,053.50) by %user_name%', 0, 12, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(48, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(49, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(50, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(51, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(52, 'confirm_payment', 'Payment was confirmed (amount $1,120.20) by %user_name%', 0, 13, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(53, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(54, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(55, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2021-09-13 14:33:07', '2021-09-13 14:33:07'),
(56, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2021-09-13 14:33:07', '2021-09-13 14:33:07'),
(57, 'confirm_payment', 'Payment was confirmed (amount $1,931.10) by %user_name%', 0, 14, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(58, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(59, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2021-09-15 20:33:07', '2021-09-15 20:33:07'),
(60, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2021-09-15 20:33:07', '2021-09-15 20:33:07'),
(61, 'confirm_payment', 'Payment was confirmed (amount $1,176.00) by %user_name%', 0, 15, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(62, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(63, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2021-09-18 00:33:07', '2021-09-18 00:33:07'),
(64, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2021-09-18 00:33:07', '2021-09-18 00:33:07'),
(65, 'confirm_payment', 'Payment was confirmed (amount $2,193.00) by %user_name%', 0, 16, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(66, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(67, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(68, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(69, 'confirm_payment', 'Payment was confirmed (amount $1,769.60) by %user_name%', 0, 17, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(70, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(71, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(72, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2021-09-17 08:33:07', '2021-09-17 08:33:07'),
(73, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2021-09-17 08:33:07', '2021-09-17 08:33:07'),
(74, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(75, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2021-09-17 20:33:07', '2021-09-17 20:33:07'),
(76, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2021-09-17 20:33:07', '2021-09-17 20:33:07'),
(77, 'confirm_payment', 'Payment was confirmed (amount $1,653.60) by %user_name%', 0, 19, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(78, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(79, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2021-09-18 08:33:07', '2021-09-18 08:33:07'),
(80, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2021-09-18 08:33:07', '2021-09-18 08:33:07'),
(81, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(82, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(83, 'update_status', 'Order confirmed by %user_name%', 0, 5, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(84, 'update_status', 'Order confirmed by %user_name%', 0, 10, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(85, 'update_status', 'Order confirmed by %user_name%', 0, 12, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(86, 'update_status', 'Order confirmed by %user_name%', 0, 13, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(87, 'update_status', 'Order confirmed by %user_name%', 0, 17, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '246.00', '24.60', '[]', 12, 'Gucci Zip Around Wallet', 1800.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(2, 1, 1, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 617.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(3, 1, 2, '70.00', '7.00', '[]', 17, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(4, 1, 3, '129.00', '12.90', '[]', 24, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(5, 2, 1, '352.00', '35.20', '[]', 9, 'Wallet handmade', 515.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(6, 2, 3, '246.00', '24.60', '[]', 12, 'Gucci Zip Around Wallet', 1800.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(7, 2, 2, '56.00', '5.60', '[]', 21, 'The Marc Jacobs', 1662.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(8, 2, 3, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(9, 3, 2, '70.00', '7.00', '[]', 18, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(10, 3, 3, '129.00', '12.90', '[]', 22, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(11, 3, 2, '129.00', '12.90', '[]', 24, 'Round Crossbody Bag', 1358.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(12, 4, 3, '246.00', '24.60', '[]', 12, 'Gucci Zip Around Wallet', 1800.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(13, 4, 2, '56.00', '5.60', '[]', 21, 'The Marc Jacobs', 1662.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(14, 4, 3, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(15, 5, 2, '466.00', '46.60', '[]', 11, 'Clutch handmade', 1636.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(16, 5, 2, '486.00', '48.60', '[]', 15, 'Snapshot Standard', 1234.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(17, 5, 1, '56.00', '5.60', '[]', 21, 'The Marc Jacobs', 831.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(18, 6, 1, '486.00', '48.60', '[]', 14, 'Snapshot Standard', 617.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(19, 6, 1, '129.00', '12.90', '[]', 23, 'Round Crossbody Bag', 679.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(20, 7, 3, '45.00', '4.50', '[]', 19, 'Cyan Boheme', 2244.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(21, 7, 1, '56.00', '5.60', '[]', 21, 'The Marc Jacobs', 831.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(22, 7, 3, '129.00', '12.90', '[]', 24, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(23, 8, 1, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 617.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(24, 8, 2, '45.00', '4.50', '[]', 19, 'Cyan Boheme', 1496.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(25, 9, 3, '70.00', '7.00', '[]', 16, 'Joan Mini Camera Bag', 2193.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(26, 9, 3, '70.00', '7.00', '[]', 17, 'Joan Mini Camera Bag', 2193.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(27, 10, 3, '70.00', '7.00', '[]', 17, 'Joan Mini Camera Bag', 2193.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(28, 10, 1, '70.00', '7.00', '[]', 18, 'Joan Mini Camera Bag', 731.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(29, 10, 1, '45.00', '4.50', '[]', 19, 'Cyan Boheme', 748.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(30, 10, 2, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 1358.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(31, 11, 2, '352.00', '35.20', '[]', 9, 'Wallet handmade', 1030.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(32, 11, 3, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 1851.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(33, 12, 3, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 1851.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(34, 12, 2, '70.00', '7.00', '[]', 18, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(35, 12, 3, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(36, 13, 1, '45.00', '4.50', '[]', 19, 'Cyan Boheme', 748.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(37, 13, 3, '129.00', '12.90', '[]', 22, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(38, 13, 3, '129.00', '12.90', '[]', 23, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(39, 13, 2, '129.00', '12.90', '[]', 24, 'Round Crossbody Bag', 1358.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(40, 14, 2, '466.00', '46.60', '[]', 11, 'Clutch handmade', 1636.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(41, 14, 1, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 617.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(42, 14, 2, '70.00', '7.00', '[]', 17, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(43, 14, 2, '129.00', '12.90', '[]', 23, 'Round Crossbody Bag', 1358.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(44, 15, 1, '486.00', '48.60', '[]', 15, 'Snapshot Standard', 617.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(45, 15, 2, '70.00', '7.00', '[]', 16, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(46, 15, 2, '45.00', '4.50', '[]', 20, 'Cyan Boheme', 1496.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(47, 15, 3, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(48, 16, 3, '486.00', '48.60', '[]', 13, 'Snapshot Standard', 1851.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(49, 16, 2, '70.00', '7.00', '[]', 18, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(50, 16, 3, '45.00', '4.50', '[]', 20, 'Cyan Boheme', 2244.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(51, 16, 3, '129.00', '12.90', '[]', 22, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(52, 17, 1, '466.00', '46.60', '[]', 11, 'Clutch handmade', 818.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(53, 17, 2, '486.00', '48.60', '[]', 14, 'Snapshot Standard', 1234.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(54, 17, 2, '45.00', '4.50', '[]', 19, 'Cyan Boheme', 1496.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(55, 17, 1, '129.00', '12.90', '[]', 22, 'Round Crossbody Bag', 679.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(56, 18, 2, '70.00', '7.00', '[]', 16, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(57, 18, 1, '45.00', '4.50', '[]', 20, 'Cyan Boheme', 748.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(58, 18, 3, '129.00', '12.90', '[]', 25, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(59, 19, 3, '486.00', '48.60', '[]', 15, 'Snapshot Standard', 1851.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(60, 19, 2, '70.00', '7.00', '[]', 18, 'Joan Mini Camera Bag', 1462.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(61, 20, 3, '70.00', '7.00', '[]', 16, 'Joan Mini Camera Bag', 2193.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(62, 20, 3, '129.00', '12.90', '[]', 22, 'Round Crossbody Bag', 2037.00, 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT '0',
  `sale_type` tinyint(4) NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(1, 'Wallet handmade', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]', 'HS-184-A0', 0, 19, 0, 1, 1, 7, 0, 0, 352, NULL, NULL, NULL, 15.00, 16.00, 13.00, 515.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 155598, 'in_stock'),
(2, 'Clutch handmade', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]', 'HS-112-A0', 0, 13, 0, 1, 1, 1, 0, 0, 466, NULL, NULL, NULL, 17.00, 20.00, 11.00, 818.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 131109, 'in_stock'),
(3, 'Gucci Zip Around Wallet', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]', 'HS-178-A0', 0, 15, 0, 1, 1, 4, 0, 0, 246, NULL, NULL, NULL, 15.00, 11.00, 11.00, 600.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 133214, 'in_stock'),
(4, 'Snapshot Standard', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\"]', 'HS-139-A0', 0, 11, 0, 1, 1, 3, 0, 0, 486, 417.96, NULL, NULL, 11.00, 19.00, 18.00, 617.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 20476, 'in_stock'),
(5, 'Joan Mini Camera Bag', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\"]', 'HS-196-A0', 0, 18, 0, 1, 1, 2, 0, 0, 70, NULL, NULL, NULL, 11.00, 10.00, 16.00, 731.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 141203, 'in_stock'),
(6, 'Cyan Boheme', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]', 'HS-103-A0', 0, 11, 0, 1, 1, 6, 0, 0, 45, NULL, NULL, NULL, 14.00, 19.00, 16.00, 748.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 77943, 'in_stock'),
(7, 'The Marc Jacobs', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7.jpg\",\"products\\/7-1.jpg\",\"products\\/7-2.jpg\"]', 'HS-184-A0', 0, 12, 0, 1, 1, 7, 0, 0, 56, NULL, NULL, NULL, 15.00, 15.00, 20.00, 831.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 16021, 'in_stock'),
(8, 'Round Crossbody Bag', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8.jpg\"]', 'HS-102-A0', 0, 20, 0, 1, 1, 3, 0, 0, 129, 109.65, NULL, NULL, 16.00, 10.00, 12.00, 679.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', 1, 31435, 'in_stock'),
(9, 'Wallet handmade', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'HS-184-A0', 0, 19, 0, 1, 0, 7, 1, 0, 352, NULL, NULL, NULL, 15.00, 16.00, 13.00, 515.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(10, 'Clutch handmade', NULL, NULL, 'published', '[\"products\\/2.jpg\"]', 'HS-112-A0', 0, 13, 0, 1, 0, 1, 1, 0, 466, NULL, NULL, NULL, 17.00, 20.00, 11.00, 818.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(11, 'Clutch handmade', NULL, NULL, 'published', '[\"products\\/2-1.jpg\"]', 'HS-112-A0-A1', 0, 13, 0, 1, 0, 1, 1, 0, 466, NULL, NULL, NULL, 17.00, 20.00, 11.00, 818.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(12, 'Gucci Zip Around Wallet', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'HS-178-A0', 0, 15, 0, 1, 0, 4, 1, 0, 246, NULL, NULL, NULL, 15.00, 11.00, 11.00, 600.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(13, 'Snapshot Standard', NULL, NULL, 'published', '[\"products\\/4.jpg\"]', 'HS-139-A0', 0, 11, 0, 1, 0, 3, 1, 0, 486, 417.96, NULL, NULL, 11.00, 19.00, 18.00, 617.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(14, 'Snapshot Standard', NULL, NULL, 'published', '[\"products\\/4-1.jpg\"]', 'HS-139-A0-A1', 0, 11, 0, 1, 0, 3, 1, 0, 486, 408.24, NULL, NULL, 11.00, 19.00, 18.00, 617.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(15, 'Snapshot Standard', NULL, NULL, 'published', '[\"products\\/4-2.jpg\"]', 'HS-139-A0-A2', 0, 11, 0, 1, 0, 3, 1, 0, 486, 383.94, NULL, NULL, 11.00, 19.00, 18.00, 617.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(16, 'Joan Mini Camera Bag', NULL, NULL, 'published', '[\"products\\/5.jpg\"]', 'HS-196-A0', 0, 18, 0, 1, 0, 2, 1, 0, 70, NULL, NULL, NULL, 11.00, 10.00, 16.00, 731.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(17, 'Joan Mini Camera Bag', NULL, NULL, 'published', '[\"products\\/5-1.jpg\"]', 'HS-196-A0-A1', 0, 18, 0, 1, 0, 2, 1, 0, 70, NULL, NULL, NULL, 11.00, 10.00, 16.00, 731.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(18, 'Joan Mini Camera Bag', NULL, NULL, 'published', '[\"products\\/5-2.jpg\"]', 'HS-196-A0-A2', 0, 18, 0, 1, 0, 2, 1, 0, 70, NULL, NULL, NULL, 11.00, 10.00, 16.00, 731.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(19, 'Cyan Boheme', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-103-A0', 0, 11, 0, 1, 0, 6, 1, 0, 45, NULL, NULL, NULL, 14.00, 19.00, 16.00, 748.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(20, 'Cyan Boheme', NULL, NULL, 'published', '[\"products\\/6-1.jpg\"]', 'HS-103-A0-A1', 0, 11, 0, 1, 0, 6, 1, 0, 45, NULL, NULL, NULL, 14.00, 19.00, 16.00, 748.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(21, 'The Marc Jacobs', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'HS-184-A0', 0, 12, 0, 1, 0, 7, 1, 0, 56, NULL, NULL, NULL, 15.00, 15.00, 20.00, 831.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(22, 'Round Crossbody Bag', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-102-A0', 0, 20, 0, 1, 0, 3, 1, 0, 129, 109.65, NULL, NULL, 16.00, 10.00, 12.00, 679.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(23, 'Round Crossbody Bag', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-102-A0-A1', 0, 20, 0, 1, 0, 3, 1, 0, 129, 99.33, NULL, NULL, 16.00, 10.00, 12.00, 679.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(24, 'Round Crossbody Bag', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-102-A0-A2', 0, 20, 0, 1, 0, 3, 1, 0, 129, 110.94, NULL, NULL, 16.00, 10.00, 12.00, 679.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock'),
(25, 'Round Crossbody Bag', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-102-A0-A3', 0, 20, 0, 1, 0, 3, 1, 0, 129, 90.3, NULL, NULL, 16.00, 10.00, 12.00, 679.00, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products_translations`
--

INSERT INTO `ec_products_translations` (`lang_code`, `ec_products_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'V?? handmade', NULL, NULL),
('vi', 2, 'Clutch handmade', NULL, NULL),
('vi', 3, 'V?? Gucci Zip', NULL, NULL),
('vi', 4, 'Snapshot b???n ti??u chu???n', NULL, NULL),
('vi', 5, 'T??i m??y ???nh mini Joan', NULL, NULL),
('vi', 6, 'Cyan Boheme', NULL, NULL),
('vi', 7, 'The Marc Jacobs', NULL, NULL),
('vi', 8, 'T??i ??eo ch??o', NULL, NULL),
('vi', 9, 'V?? handmade', NULL, NULL),
('vi', 10, 'Clutch handmade', NULL, NULL),
('vi', 11, 'Clutch handmade', NULL, NULL),
('vi', 12, 'V?? Gucci Zip', NULL, NULL),
('vi', 13, 'Snapshot b???n ti??u chu???n', NULL, NULL),
('vi', 14, 'Snapshot b???n ti??u chu???n', NULL, NULL),
('vi', 15, 'Snapshot b???n ti??u chu???n', NULL, NULL),
('vi', 16, 'T??i m??y ???nh mini Joan', NULL, NULL),
('vi', 17, 'T??i m??y ???nh mini Joan', NULL, NULL),
('vi', 18, 'T??i m??y ???nh mini Joan', NULL, NULL),
('vi', 19, 'Cyan Boheme', NULL, NULL),
('vi', 20, 'Cyan Boheme', NULL, NULL),
('vi', 21, 'The Marc Jacobs', NULL, NULL),
('vi', 22, 'T??i ??eo ch??o', NULL, NULL),
('vi', 23, 'T??i ??eo ch??o', NULL, NULL),
('vi', 24, 'T??i ??eo ch??o', NULL, NULL),
('vi', 25, 'T??i ??eo ch??o', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes_translations`
--

INSERT INTO `ec_product_attributes_translations` (`lang_code`, `ec_product_attributes_id`, `title`) VALUES
('vi', 1, 'Xanh l?? c??y'),
('vi', 2, 'Xanh da tr???i'),
('vi', 3, '?????'),
('vi', 4, '??en'),
('vi', 5, 'N??u'),
('vi', 6, 'S'),
('vi', 7, 'M'),
('vi', 8, 'L'),
('vi', 9, 'XL'),
('vi', 10, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-09-18 20:32:40', '2021-09-18 20:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

INSERT INTO `ec_product_attribute_sets_translations` (`lang_code`, `ec_product_attribute_sets_id`, `title`) VALUES
('vi', 1, 'M??u s???c'),
('vi', 2, 'K??ch th?????c');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Office bags', 0, NULL, 'published', 1, 'product-categories/1.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(2, 'Hand bag', 0, NULL, 'published', 2, 'product-categories/2.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(3, 'Woman', 0, NULL, 'published', 3, 'product-categories/3.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(4, 'Woman wallet', 3, NULL, 'published', 1, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(5, 'Denim', 3, NULL, 'published', 2, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(6, 'Dress', 3, NULL, 'published', 3, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(7, 'Backpack', 0, NULL, 'published', 4, 'product-categories/4.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(8, 'Bags', 0, NULL, 'published', 5, 'product-categories/5.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(9, 'Wallet', 0, NULL, 'published', 6, 'product-categories/6.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(10, 'Men', 0, NULL, 'published', 7, 'product-categories/7.png', 1, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(11, 'Accessories', 10, NULL, 'published', 1, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(12, 'Men wallet', 10, NULL, 'published', 2, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(13, 'Shoes', 10, NULL, 'published', 3, NULL, 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories_translations`
--

INSERT INTO `ec_product_categories_translations` (`lang_code`, `ec_product_categories_id`, `name`, `description`) VALUES
('vi', 1, 'T??i x??ch v??n ph??ng', NULL),
('vi', 2, 'T??i c???m tay', NULL),
('vi', 3, 'D??nh cho n???', NULL),
('vi', 4, 'V?? n???', NULL),
('vi', 5, 'Denim', NULL),
('vi', 6, 'Qu???n ??o', NULL),
('vi', 7, 'Balo', NULL),
('vi', 8, 'T??i x??ch', NULL),
('vi', 9, 'V??', NULL),
('vi', 10, 'D??nh cho nam', NULL),
('vi', 11, 'Ph??? ki???n', NULL),
('vi', 12, 'V?? nam', NULL),
('vi', 13, 'Gi??y d??p', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 12, 1),
(2, 3, 2),
(3, 2, 3),
(4, 7, 4),
(5, 4, 5),
(6, 11, 6),
(7, 10, 7),
(8, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, 'product-collections/1.jpg', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40', 1),
(2, 'Best Sellers', 'best-sellers', NULL, 'product-collections/2.jpg', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40', 1),
(3, 'Special Offer', 'special-offer', NULL, 'product-collections/3.jpg', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40', 1),
(4, 'Trending Fashion', 'trending-fashion', NULL, 'product-collections/4.jpg', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections_translations`
--

INSERT INTO `ec_product_collections_translations` (`lang_code`, `ec_product_collections_id`, `name`, `description`) VALUES
('vi', 1, 'H??ng m???i v???', NULL),
('vi', 2, 'B??n ch???y nh???t', NULL),
('vi', 3, 'Khuy???n m??i ?????c bi???t', NULL),
('vi', 4, 'Th???i trang n???i b???t', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 6),
(7, 2, 7),
(8, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(1, 1, 6),
(2, 1, 4),
(3, 2, 8),
(4, 2, 7),
(5, 2, 6),
(6, 3, 8),
(7, 4, 1),
(8, 4, 3),
(9, 4, 8),
(10, 5, 8),
(11, 5, 3),
(12, 5, 2),
(13, 6, 3),
(14, 6, 2),
(15, 6, 4),
(16, 6, 5),
(17, 7, 2),
(18, 7, 4),
(19, 7, 1),
(20, 7, 8),
(21, 8, 1),
(22, 8, 3),
(23, 8, 2),
(24, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(2, 'New', '#00c9a7', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(3, 'Sale', '#fe9931', 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels_translations`
--

INSERT INTO `ec_product_labels_translations` (`lang_code`, `ec_product_labels_id`, `name`, `description`) VALUES
('vi', 1, 'N???i b???t', NULL),
('vi', 2, 'M???i', NULL),
('vi', 3, 'Gi???m gi??', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wallet', NULL, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(2, 'Bags', NULL, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(3, 'Shoes', NULL, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(4, 'Clothes', NULL, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(5, 'Hand bag', NULL, 'published', '2021-09-18 20:32:40', '2021-09-18 20:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 3),
(2, 5),
(3, 4),
(3, 5),
(4, 1),
(4, 6),
(5, 1),
(5, 2),
(5, 6),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(8, 2),
(8, 3),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 9, 1, 1),
(2, 10, 2, 1),
(3, 11, 2, 0),
(4, 12, 3, 1),
(5, 13, 4, 1),
(6, 14, 4, 0),
(7, 15, 4, 0),
(8, 16, 5, 1),
(9, 17, 5, 0),
(10, 18, 5, 0),
(11, 19, 6, 1),
(12, 20, 6, 0),
(13, 21, 7, 1),
(14, 22, 8, 1),
(15, 23, 8, 0),
(16, 24, 8, 0),
(17, 25, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 1, 1),
(2, 8, 1),
(3, 1, 2),
(4, 10, 2),
(5, 1, 3),
(6, 10, 3),
(7, 1, 4),
(8, 10, 4),
(9, 5, 5),
(10, 7, 5),
(11, 3, 6),
(12, 9, 6),
(13, 4, 7),
(14, 9, 7),
(15, 2, 8),
(16, 6, 8),
(17, 2, 9),
(18, 10, 9),
(19, 4, 10),
(20, 8, 10),
(21, 1, 11),
(22, 6, 11),
(23, 4, 12),
(24, 7, 12),
(25, 2, 13),
(26, 10, 13),
(27, 3, 14),
(28, 10, 14),
(29, 5, 15),
(30, 9, 15),
(31, 2, 16),
(32, 9, 16),
(33, 4, 17),
(34, 6, 17);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(1, 5, 1),
(2, 10, 1),
(3, 3, 2),
(4, 10, 2),
(5, 5, 3),
(6, 9, 3),
(7, 5, 4),
(8, 10, 4),
(9, 1, 5),
(10, 6, 5),
(11, 1, 6),
(12, 7, 6),
(13, 1, 7),
(14, 7, 7),
(15, 5, 8),
(16, 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 1, 2, 0),
(4, 2, 2, 0),
(5, 1, 3, 0),
(6, 2, 3, 0),
(7, 1, 4, 0),
(8, 2, 4, 0),
(9, 1, 5, 0),
(10, 2, 5, 0),
(11, 1, 6, 0),
(12, 2, 6, 0),
(13, 1, 7, 0),
(14, 2, 7, 0),
(15, 1, 8, 0),
(16, 2, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(1, 7, 3, 2.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(2, 9, 2, 4.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),
(3, 6, 1, 5.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(4, 6, 5, 3.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),
(5, 3, 8, 1.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(6, 3, 7, 5.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\"]'),
(7, 9, 8, 4.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(8, 7, 5, 3.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),
(9, 1, 3, 2.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),
(10, 2, 8, 2.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(11, 5, 8, 4.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(12, 2, 1, 5.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(13, 8, 6, 1.00, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),
(14, 5, 2, 2.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(15, 7, 6, 5.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),
(16, 5, 4, 3.00, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(17, 7, 2, 1.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(18, 7, 7, 4.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),
(19, 9, 2, 4.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(20, 6, 4, 4.00, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(21, 3, 5, 4.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(22, 1, 2, 2.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(23, 3, 3, 3.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),
(24, 9, 2, 5.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(25, 1, 5, 4.00, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(26, 3, 5, 1.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(27, 1, 7, 2.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(28, 7, 7, 4.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\"]'),
(29, 6, 3, 5.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(30, 7, 4, 2.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(31, 2, 6, 1.00, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(32, 9, 3, 2.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(33, 1, 7, 1.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(34, 2, 1, 2.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),
(35, 2, 3, 1.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(36, 3, 7, 3.00, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(37, 7, 6, 5.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(38, 7, 8, 1.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(39, 7, 1, 3.00, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(40, 4, 5, 1.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\"]'),
(41, 6, 1, 4.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(42, 5, 4, 5.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(43, 8, 8, 3.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),
(44, 7, 5, 5.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(45, 7, 1, 2.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(46, 4, 3, 2.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(47, 4, 8, 3.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(48, 4, 4, 1.00, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),
(49, 3, 3, 3.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),
(50, 5, 3, 1.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),
(51, 4, 4, 1.00, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),
(52, 4, 3, 3.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),
(53, 8, 7, 3.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(54, 6, 2, 3.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(55, 3, 2, 4.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(56, 5, 7, 2.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(57, 1, 8, 1.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),
(58, 8, 1, 3.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(59, 2, 6, 2.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(60, 6, 4, 3.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\"]'),
(61, 2, 2, 5.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(62, 9, 4, 4.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(63, 7, 2, 2.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(64, 5, 7, 1.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),
(65, 4, 1, 1.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(66, 1, 5, 3.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\"]'),
(67, 2, 4, 5.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\"]'),
(68, 3, 3, 1.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\"]'),
(69, 9, 6, 3.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(70, 2, 3, 2.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(71, 7, 4, 2.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(72, 8, 7, 1.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\"]'),
(73, 3, 3, 5.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(74, 1, 5, 2.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(75, 3, 5, 3.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(76, 2, 6, 5.00, 'Clean & perfect source code', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(77, 6, 1, 2.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(78, 1, 2, 4.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),
(79, 6, 1, 2.00, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(80, 1, 8, 4.00, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(81, 7, 5, 1.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\"]'),
(82, 3, 1, 5.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(83, 8, 6, 4.00, 'Best ecommerce CMS online store!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(84, 7, 6, 1.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(85, 9, 3, 1.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(86, 8, 7, 3.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(87, 1, 7, 1.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\"]'),
(88, 2, 4, 1.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),
(89, 5, 4, 2.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(90, 7, 1, 3.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),
(91, 5, 2, 5.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(92, 5, 5, 4.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(93, 5, 4, 2.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(94, 2, 3, 4.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),
(95, 2, 7, 3.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\"]'),
(96, 2, 5, 1.00, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\"]'),
(97, 5, 8, 4.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(98, 8, 5, 4.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(99, 1, 6, 5.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(100, 1, 6, 2.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-18 20:33:06', '2021-09-18 20:33:06', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 5916.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(2, 2, NULL, 6014.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(3, 3, NULL, 4857.00, NULL, '', 'approved', '817.80', 'pending', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(4, 4, NULL, 5499.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(5, 5, NULL, 3701.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(6, 6, NULL, 1296.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(7, 7, NULL, 5112.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(8, 8, NULL, 2113.00, NULL, '', 'delivered', '629.10', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(9, 9, NULL, 4386.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(10, 10, NULL, 5030.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(11, 11, NULL, 2881.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(12, 12, NULL, 5350.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(13, 13, NULL, 6180.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(14, 14, NULL, 5073.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(15, 15, NULL, 5612.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(16, 16, NULL, 7594.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(17, 17, NULL, 4227.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(18, 18, NULL, 4247.00, NULL, '', 'approved', '596.40', 'pending', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(19, 19, NULL, 3313.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(20, 20, NULL, 4230.00, NULL, '', 'delivered', '616.90', 'completed', 'pending', '0.00', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2021-09-13 20:33:06', '2021-09-13 20:33:06'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2021-09-17 04:33:06', '2021-09-18 20:33:06'),
(3, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2021-09-12 12:33:06', '2021-09-12 12:33:06'),
(4, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2021-09-17 06:33:06', '2021-09-18 20:33:06'),
(5, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2021-09-05 08:33:06', '2021-09-05 08:33:06'),
(6, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2021-09-17 08:33:06', '2021-09-18 20:33:06'),
(7, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2021-09-13 04:33:06', '2021-09-13 04:33:06'),
(8, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2021-09-17 10:33:06', '2021-09-18 20:33:06'),
(9, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-09-13 12:33:06', '2021-09-13 12:33:06'),
(10, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-09-17 12:33:06', '2021-09-18 20:33:06'),
(11, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, 5, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(12, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2021-09-07 14:33:06', '2021-09-07 14:33:06'),
(13, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2021-09-17 14:33:06', '2021-09-18 20:33:06'),
(14, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2021-09-16 12:33:06', '2021-09-16 12:33:06'),
(15, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2021-09-17 16:33:06', '2021-09-18 20:33:06'),
(16, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 7, 7, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(17, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2021-09-14 12:33:06', '2021-09-14 12:33:06'),
(18, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2021-09-17 18:33:06', '2021-09-18 20:33:06'),
(19, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 8, 8, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(20, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, 8, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(21, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-09-12 20:33:06', '2021-09-12 20:33:06'),
(22, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-09-17 20:33:06', '2021-09-18 20:33:06'),
(23, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2021-09-17 22:33:06', '2021-09-17 22:33:06'),
(24, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2021-09-17 22:33:06', '2021-09-18 20:33:06'),
(25, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, 10, '2021-09-18 20:33:06', '2021-09-18 20:33:06'),
(26, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2021-09-14 16:33:06', '2021-09-14 16:33:06'),
(27, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2021-09-18 00:33:06', '2021-09-18 20:33:06'),
(28, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2021-09-12 02:33:06', '2021-09-12 02:33:06'),
(29, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2021-09-18 02:33:07', '2021-09-18 20:33:07'),
(30, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, 12, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(31, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(32, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2021-09-18 04:33:07', '2021-09-18 20:33:07'),
(33, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, 13, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(34, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2021-09-13 14:33:07', '2021-09-13 14:33:07'),
(35, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2021-09-18 06:33:07', '2021-09-18 20:33:07'),
(36, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2021-09-15 20:33:07', '2021-09-15 20:33:07'),
(37, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2021-09-18 08:33:07', '2021-09-18 20:33:07'),
(38, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2021-09-18 00:33:07', '2021-09-18 00:33:07'),
(39, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2021-09-18 10:33:07', '2021-09-18 20:33:07'),
(40, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2021-09-15 12:33:07', '2021-09-15 12:33:07'),
(41, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2021-09-18 12:33:07', '2021-09-18 20:33:07'),
(42, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, 17, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(43, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2021-09-17 08:33:07', '2021-09-17 08:33:07'),
(44, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2021-09-18 14:33:07', '2021-09-18 20:33:07'),
(45, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2021-09-17 20:33:07', '2021-09-17 20:33:07'),
(46, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2021-09-18 16:33:07', '2021-09-18 20:33:07'),
(47, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2021-09-18 08:33:07', '2021-09-18 08:33:07'),
(48, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2021-09-18 18:33:07', '2021-09-18 20:33:07'),
(49, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 20, 20, '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(50, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, 20, '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free shipping', 1, 'base_on_price', '0.00', NULL, '0.00', '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(2, 'Local Pickup', 1, 'base_on_price', '0.00', NULL, '20.00', '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(3, 'Flat Rate', 1, 'base_on_price', '0.00', NULL, '25.00', '2021-09-18 20:33:07', '2021-09-18 20:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'HASA SG', 'sales@botble.com', '18006268', 'North Link Building, 10 Admiralty Street', 'SG', 'Singapore', 'Singapore', 1, 1, '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(2, 'None', 0.000000, 2, 'published', '2021-09-18 20:33:01', '2021-09-18 20:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'Minus optio et harum nobis et corporis ducimus. Enim laudantium ea impedit sunt doloremque. Et nam vero aut ab esse.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, 'Women', 'Adipisci doloribus illum sit illum architecto sapiente necessitatibus. Et qui quia iure rem. Sit aperiam nostrum omnis quo aut.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(3, 'Accessories', 'Eligendi tenetur quia minima incidunt. Architecto minus doloremque numquam est aliquid tempora esse. Voluptates non dolore et.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(4, 'Shoes', 'Ab veniam corporis omnis eum quod molestiae. Aut maiores asperiores non sunt.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(5, 'Denim', 'Minima omnis omnis modi nam. Aut culpa eos delectus quo molestiae esse minus. Eveniet consequuntur laborum amet sit non illo a.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(6, 'Dress', 'Ex iste et accusamus deserunt molestias. Possimus ipsam reiciendis consequatur eveniet dolor doloremque quae. Ipsa nihil cum eligendi et culpa.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(7, 'Th???i trang nam', 'Officia officia laboriosam possimus dignissimos. Iste magni quod illo repellendus consequuntur ut. Id error id hic quo iure ea assumenda quo.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(8, 'Th???i trang n???', 'Accusamus adipisci dolorum provident quis animi quam. Eum magni enim sapiente nulla enim. Inventore esse ipsa neque saepe similique.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(9, 'Ph??? ki???n', 'Eveniet eos quod animi. Sed hic repellat omnis corporis dolore quam odit repudiandae. Occaecati magnam eius nesciunt incidunt laboriosam officiis.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(10, 'Gi??y d??p', 'Est rem natus hic laboriosam. Eos qui sit et nobis laborum.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(11, 'Denim', 'Distinctio ipsam sint fugiat. Id ea consequatur dolorem.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(12, 'Qu???n ??o', 'Voluptate et blanditiis odio. Minus totam ea assumenda omnis dicta deserunt eum. Et et expedita recusandae ut qui earum.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(7, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 7, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(8, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 8, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(9, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(10, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(11, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 11, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(12, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur neque sed beatae ullam est. Autem rerum error ex temporibus non. Officia nam et doloribus consequatur sed.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Rerum rerum ut maxime et tempora. Voluptatem sit alias provident ut dolore aspernatur eius. Sed et sit illo vero sit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Enim minima in consectetur exercitationem est. In quia ipsam et dolorum sed repudiandae cum. Unde eum est voluptate dignissimos.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nihil tempora ipsum praesentium consequuntur occaecati quia. Qui cumque quam nobis doloremque doloribus voluptatem aliquam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut quam non nobis ea aut itaque quidem. Omnis ea quisquam cum assumenda autem nobis dicta. Eius et autem dolorem ipsam veniam corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Soluta illum eum officia molestiae numquam ullam. Ut minima ut dolorum aut atque sit est. Enim est occaecati rerum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et voluptates animi dolor maxime sapiente. Aliquam quia et laboriosam. Quo sed a animi corrupti similique fugiat. Omnis est atque aperiam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iure maxime dolorum eum placeat reiciendis et. Saepe qui dolore dicta ipsam non perspiciatis. Aut ut et magnam. Consequatur quibusdam qui iusto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quia nihil ducimus eveniet et corrupti sit. Sapiente maiores commodi perspiciatis saepe facere ducimus. Tenetur tempore nihil aperiam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Necessitatibus reprehenderit accusantium quia quia qui nostrum sit. Temporibus vero et unde temporibus.\"}]', 12, 'Botble\\Gallery\\Models\\Gallery', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Ti???ng Vi???t', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '5159bee7bdaf6ce3515efda9793a9c39', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'vi', '5159bee7bdaf6ce3515efda9793a9c39', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '9a1426c941e02643e8faf233fa807621', 1, 'Botble\\Blog\\Models\\Category'),
(4, 'en_US', '698b24ce751b639a46a874c36e87c61f', 2, 'Botble\\Blog\\Models\\Category'),
(5, 'en_US', '5fa90f5d9c7bc6b74a28211b1560ea68', 3, 'Botble\\Blog\\Models\\Category'),
(6, 'en_US', 'b7a4583a065ef023e35c38dde1302a5b', 4, 'Botble\\Blog\\Models\\Category'),
(7, 'vi', '9a1426c941e02643e8faf233fa807621', 5, 'Botble\\Blog\\Models\\Category'),
(8, 'vi', '698b24ce751b639a46a874c36e87c61f', 6, 'Botble\\Blog\\Models\\Category'),
(9, 'vi', '5fa90f5d9c7bc6b74a28211b1560ea68', 7, 'Botble\\Blog\\Models\\Category'),
(10, 'vi', 'b7a4583a065ef023e35c38dde1302a5b', 8, 'Botble\\Blog\\Models\\Category'),
(11, 'en_US', '7af9735314ab8fbd3359e01233c65b95', 1, 'Botble\\Blog\\Models\\Tag'),
(12, 'en_US', '5c2a8fcab7d55890adfc0430eedf1d60', 2, 'Botble\\Blog\\Models\\Tag'),
(13, 'en_US', 'efcf7d028ade2f55b2ad6bd0c6232940', 3, 'Botble\\Blog\\Models\\Tag'),
(14, 'en_US', '65e2a0b9265f54a5b69483a76f4d2244', 4, 'Botble\\Blog\\Models\\Tag'),
(15, 'en_US', '4e1ad00be38a58337797b7eee08a1eb5', 5, 'Botble\\Blog\\Models\\Tag'),
(16, 'vi', '7af9735314ab8fbd3359e01233c65b95', 6, 'Botble\\Blog\\Models\\Tag'),
(17, 'vi', '5c2a8fcab7d55890adfc0430eedf1d60', 7, 'Botble\\Blog\\Models\\Tag'),
(18, 'vi', 'efcf7d028ade2f55b2ad6bd0c6232940', 8, 'Botble\\Blog\\Models\\Tag'),
(19, 'vi', '65e2a0b9265f54a5b69483a76f4d2244', 9, 'Botble\\Blog\\Models\\Tag'),
(20, 'vi', '4e1ad00be38a58337797b7eee08a1eb5', 10, 'Botble\\Blog\\Models\\Tag'),
(21, 'en_US', '0b1ab5e5619ed98fa1d20ee9b4387c7b', 1, 'Botble\\Blog\\Models\\Post'),
(22, 'en_US', '696419dc47158ea8604565e7a74b9b3e', 2, 'Botble\\Blog\\Models\\Post'),
(23, 'en_US', '77e27270c88736304e29a6a691a2926f', 3, 'Botble\\Blog\\Models\\Post'),
(24, 'en_US', '93c57443eb06756d27793be8e924567e', 4, 'Botble\\Blog\\Models\\Post'),
(25, 'en_US', '72aa62646502c662fb964182be6a800a', 5, 'Botble\\Blog\\Models\\Post'),
(26, 'en_US', '09a4889d3c3fb6d2d4dfc375ad3174ae', 6, 'Botble\\Blog\\Models\\Post'),
(27, 'en_US', '83a8d2e7202556628fbc7711bc945705', 7, 'Botble\\Blog\\Models\\Post'),
(28, 'en_US', '78e527035207e4fe538bf320f62b3ef0', 8, 'Botble\\Blog\\Models\\Post'),
(29, 'en_US', 'bbc75329ba70f7136ab48ea32846cc4a', 9, 'Botble\\Blog\\Models\\Post'),
(30, 'en_US', '88466882be9effc190aaf422fda40318', 10, 'Botble\\Blog\\Models\\Post'),
(31, 'en_US', 'e5a4d0a556a677052b65bf75da3daeeb', 11, 'Botble\\Blog\\Models\\Post'),
(32, 'vi', '0b1ab5e5619ed98fa1d20ee9b4387c7b', 12, 'Botble\\Blog\\Models\\Post'),
(33, 'vi', '696419dc47158ea8604565e7a74b9b3e', 13, 'Botble\\Blog\\Models\\Post'),
(34, 'vi', '77e27270c88736304e29a6a691a2926f', 14, 'Botble\\Blog\\Models\\Post'),
(35, 'vi', '93c57443eb06756d27793be8e924567e', 15, 'Botble\\Blog\\Models\\Post'),
(36, 'vi', '72aa62646502c662fb964182be6a800a', 16, 'Botble\\Blog\\Models\\Post'),
(37, 'vi', '09a4889d3c3fb6d2d4dfc375ad3174ae', 17, 'Botble\\Blog\\Models\\Post'),
(38, 'vi', '83a8d2e7202556628fbc7711bc945705', 18, 'Botble\\Blog\\Models\\Post'),
(39, 'vi', '78e527035207e4fe538bf320f62b3ef0', 19, 'Botble\\Blog\\Models\\Post'),
(40, 'vi', 'bbc75329ba70f7136ab48ea32846cc4a', 20, 'Botble\\Blog\\Models\\Post'),
(41, 'vi', '88466882be9effc190aaf422fda40318', 21, 'Botble\\Blog\\Models\\Post'),
(42, 'vi', 'e5a4d0a556a677052b65bf75da3daeeb', 22, 'Botble\\Blog\\Models\\Post'),
(43, 'en_US', '68e8264de17cbdd078fad39715e54945', 1, 'Botble\\Page\\Models\\Page'),
(44, 'en_US', '531b6830f72c2cbb299e5f136813c642', 2, 'Botble\\Page\\Models\\Page'),
(45, 'en_US', '5a965e54d2d7aeeb99e14c006f180f30', 3, 'Botble\\Page\\Models\\Page'),
(46, 'en_US', 'cb4a097a498af16d4fec8ce23c66f60b', 4, 'Botble\\Page\\Models\\Page'),
(47, 'vi', '68e8264de17cbdd078fad39715e54945', 5, 'Botble\\Page\\Models\\Page'),
(48, 'vi', '531b6830f72c2cbb299e5f136813c642', 6, 'Botble\\Page\\Models\\Page'),
(49, 'vi', '5a965e54d2d7aeeb99e14c006f180f30', 7, 'Botble\\Page\\Models\\Page'),
(50, 'vi', 'cb4a097a498af16d4fec8ce23c66f60b', 8, 'Botble\\Page\\Models\\Page'),
(51, 'en_US', '5f0b238bbd6fd005af57b17954ecfbb7', 1, 'Botble\\Gallery\\Models\\Gallery'),
(52, 'en_US', '8e694b7da6d11763cfda0965f547f4dc', 2, 'Botble\\Gallery\\Models\\Gallery'),
(53, 'en_US', '6040d17a4a50f2cb6b57898efe8a741a', 3, 'Botble\\Gallery\\Models\\Gallery'),
(54, 'en_US', '2e904543b2543554cba02b842edabe43', 4, 'Botble\\Gallery\\Models\\Gallery'),
(55, 'en_US', 'faeafd50c15c801540a9c55022031ea3', 5, 'Botble\\Gallery\\Models\\Gallery'),
(56, 'en_US', '669b25e5c7d694ed5b064cf9c03e914c', 6, 'Botble\\Gallery\\Models\\Gallery'),
(57, 'vi', '5f0b238bbd6fd005af57b17954ecfbb7', 7, 'Botble\\Gallery\\Models\\Gallery'),
(58, 'vi', '8e694b7da6d11763cfda0965f547f4dc', 8, 'Botble\\Gallery\\Models\\Gallery'),
(59, 'vi', '6040d17a4a50f2cb6b57898efe8a741a', 9, 'Botble\\Gallery\\Models\\Gallery'),
(60, 'vi', '2e904543b2543554cba02b842edabe43', 10, 'Botble\\Gallery\\Models\\Gallery'),
(61, 'vi', 'faeafd50c15c801540a9c55022031ea3', 11, 'Botble\\Gallery\\Models\\Gallery'),
(62, 'vi', '669b25e5c7d694ed5b064cf9c03e914c', 12, 'Botble\\Gallery\\Models\\Gallery'),
(63, 'en_US', '56a3dfcee539cf3b3e0dbb8d7353fddf', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(64, 'en_US', '5000faf0e1e79e03deca49b1b7daa162', 1, 'Botble\\Menu\\Models\\Menu'),
(65, 'en_US', '29467290e87ed04706572c9c37e011e1', 2, 'Botble\\Menu\\Models\\Menu'),
(66, 'vi', '698c9fedd538baeaec4a30ea07ea4b8d', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(67, 'vi', '5000faf0e1e79e03deca49b1b7daa162', 3, 'Botble\\Menu\\Models\\Menu'),
(68, 'vi', '29467290e87ed04706572c9c37e011e1', 4, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/png', 3509, 'brands/1.png', '[]', '2021-09-18 20:32:35', '2021-09-18 20:32:35', NULL),
(2, 0, '2', 1, 'image/png', 3505, 'brands/2.png', '[]', '2021-09-18 20:32:35', '2021-09-18 20:32:35', NULL),
(3, 0, '3', 1, 'image/png', 2585, 'brands/3.png', '[]', '2021-09-18 20:32:35', '2021-09-18 20:32:35', NULL),
(4, 0, '4', 1, 'image/png', 6427, 'brands/4.png', '[]', '2021-09-18 20:32:35', '2021-09-18 20:32:35', NULL),
(5, 0, '5', 1, 'image/png', 3246, 'brands/5.png', '[]', '2021-09-18 20:32:36', '2021-09-18 20:32:36', NULL),
(6, 0, '6', 1, 'image/png', 3276, 'brands/6.png', '[]', '2021-09-18 20:32:36', '2021-09-18 20:32:36', NULL),
(7, 0, '7', 1, 'image/png', 3120, 'brands/7.png', '[]', '2021-09-18 20:32:37', '2021-09-18 20:32:37', NULL),
(8, 0, '1', 2, 'image/png', 21674, 'product-categories/1.png', '[]', '2021-09-18 20:32:37', '2021-09-18 20:32:37', NULL),
(9, 0, '2', 2, 'image/png', 22406, 'product-categories/2.png', '[]', '2021-09-18 20:32:37', '2021-09-18 20:32:37', NULL),
(10, 0, '3', 2, 'image/png', 23795, 'product-categories/3.png', '[]', '2021-09-18 20:32:38', '2021-09-18 20:32:38', NULL),
(11, 0, '4', 2, 'image/png', 29386, 'product-categories/4.png', '[]', '2021-09-18 20:32:38', '2021-09-18 20:32:38', NULL),
(12, 0, '5', 2, 'image/png', 28764, 'product-categories/5.png', '[]', '2021-09-18 20:32:38', '2021-09-18 20:32:38', NULL),
(13, 0, '6', 2, 'image/png', 24529, 'product-categories/6.png', '[]', '2021-09-18 20:32:39', '2021-09-18 20:32:39', NULL),
(14, 0, '7', 2, 'image/png', 26121, 'product-categories/7.png', '[]', '2021-09-18 20:32:39', '2021-09-18 20:32:39', NULL),
(15, 0, '1', 3, 'image/jpeg', 134711, 'product-collections/1.jpg', '[]', '2021-09-18 20:32:39', '2021-09-18 20:32:39', NULL),
(16, 0, '2', 3, 'image/jpeg', 9190, 'product-collections/2.jpg', '[]', '2021-09-18 20:32:40', '2021-09-18 20:32:40', NULL),
(17, 0, '3', 3, 'image/jpeg', 67348, 'product-collections/3.jpg', '[]', '2021-09-18 20:32:40', '2021-09-18 20:32:40', NULL),
(18, 0, '4', 3, 'image/jpeg', 21888, 'product-collections/4.jpg', '[]', '2021-09-18 20:32:40', '2021-09-18 20:32:40', NULL),
(19, 0, '1-1', 4, 'image/jpeg', 35414, 'products/1-1.jpg', '[]', '2021-09-18 20:32:40', '2021-09-18 20:32:40', NULL),
(20, 0, '1', 4, 'image/jpeg', 40289, 'products/1.jpg', '[]', '2021-09-18 20:32:41', '2021-09-18 20:32:41', NULL),
(21, 0, '10-1', 4, 'image/jpeg', 125726, 'products/10-1.jpg', '[]', '2021-09-18 20:32:42', '2021-09-18 20:32:42', NULL),
(22, 0, '10-2', 4, 'image/jpeg', 217925, 'products/10-2.jpg', '[]', '2021-09-18 20:32:42', '2021-09-18 20:32:42', NULL),
(23, 0, '10', 4, 'image/jpeg', 115491, 'products/10.jpg', '[]', '2021-09-18 20:32:42', '2021-09-18 20:32:42', NULL),
(24, 0, '11', 4, 'image/jpeg', 98441, 'products/11.jpg', '[]', '2021-09-18 20:32:43', '2021-09-18 20:32:43', NULL),
(25, 0, '2-1', 4, 'image/jpeg', 68052, 'products/2-1.jpg', '[]', '2021-09-18 20:32:43', '2021-09-18 20:32:43', NULL),
(26, 0, '2-2', 4, 'image/jpeg', 61214, 'products/2-2.jpg', '[]', '2021-09-18 20:32:44', '2021-09-18 20:32:44', NULL),
(27, 0, '2-3', 4, 'image/jpeg', 69617, 'products/2-3.jpg', '[]', '2021-09-18 20:32:44', '2021-09-18 20:32:44', NULL),
(28, 0, '2', 4, 'image/jpeg', 58637, 'products/2.jpg', '[]', '2021-09-18 20:32:46', '2021-09-18 20:32:46', NULL),
(29, 0, '3-1', 4, 'image/jpeg', 56238, 'products/3-1.jpg', '[]', '2021-09-18 20:32:47', '2021-09-18 20:32:47', NULL),
(30, 0, '3-2', 4, 'image/jpeg', 72882, 'products/3-2.jpg', '[]', '2021-09-18 20:32:48', '2021-09-18 20:32:48', NULL),
(31, 0, '3-3', 4, 'image/jpeg', 62320, 'products/3-3.jpg', '[]', '2021-09-18 20:32:49', '2021-09-18 20:32:49', NULL),
(32, 0, '3', 4, 'image/jpeg', 76513, 'products/3.jpg', '[]', '2021-09-18 20:32:50', '2021-09-18 20:32:50', NULL),
(33, 0, '4-1', 4, 'image/jpeg', 74366, 'products/4-1.jpg', '[]', '2021-09-18 20:32:51', '2021-09-18 20:32:51', NULL),
(34, 0, '4-2', 4, 'image/jpeg', 98336, 'products/4-2.jpg', '[]', '2021-09-18 20:32:52', '2021-09-18 20:32:52', NULL),
(35, 0, '4', 4, 'image/jpeg', 109441, 'products/4.jpg', '[]', '2021-09-18 20:32:53', '2021-09-18 20:32:53', NULL),
(36, 0, '5-1', 4, 'image/jpeg', 136199, 'products/5-1.jpg', '[]', '2021-09-18 20:32:54', '2021-09-18 20:32:54', NULL),
(37, 0, '5-2', 4, 'image/jpeg', 47358, 'products/5-2.jpg', '[]', '2021-09-18 20:32:56', '2021-09-18 20:32:56', NULL),
(38, 0, '5', 4, 'image/jpeg', 114530, 'products/5.jpg', '[]', '2021-09-18 20:32:57', '2021-09-18 20:32:57', NULL),
(39, 0, '6-1', 4, 'image/jpeg', 31704, 'products/6-1.jpg', '[]', '2021-09-18 20:32:58', '2021-09-18 20:32:58', NULL),
(40, 0, '6', 4, 'image/jpeg', 31263, 'products/6.jpg', '[]', '2021-09-18 20:32:58', '2021-09-18 20:32:58', NULL),
(41, 0, '7-1', 4, 'image/jpeg', 161029, 'products/7-1.jpg', '[]', '2021-09-18 20:32:59', '2021-09-18 20:32:59', NULL),
(42, 0, '7-2', 4, 'image/jpeg', 121927, 'products/7-2.jpg', '[]', '2021-09-18 20:32:59', '2021-09-18 20:32:59', NULL),
(43, 0, '7', 4, 'image/jpeg', 161543, 'products/7.jpg', '[]', '2021-09-18 20:32:59', '2021-09-18 20:32:59', NULL),
(44, 0, '8', 4, 'image/jpeg', 191505, 'products/8.jpg', '[]', '2021-09-18 20:33:00', '2021-09-18 20:33:00', NULL),
(45, 0, '9', 4, 'image/jpeg', 104416, 'products/9.jpg', '[]', '2021-09-18 20:33:00', '2021-09-18 20:33:00', NULL),
(46, 0, '1', 5, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL),
(47, 0, '10', 5, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL),
(48, 0, '2', 5, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL),
(49, 0, '3', 5, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(50, 0, '4', 5, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(51, 0, '5', 5, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(52, 0, '6', 5, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(53, 0, '7', 5, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(54, 0, '8', 5, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-09-18 20:33:02', '2021-09-18 20:33:02', NULL),
(55, 0, '9', 5, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-09-18 20:33:03', '2021-09-18 20:33:03', NULL),
(56, 0, '1', 6, 'image/jpeg', 62921, 'flash-sales/1.jpg', '[]', '2021-09-18 20:33:07', '2021-09-18 20:33:07', NULL),
(57, 0, '2', 6, 'image/jpeg', 74131, 'flash-sales/2.jpg', '[]', '2021-09-18 20:33:07', '2021-09-18 20:33:07', NULL),
(58, 0, '1', 7, 'image/jpeg', 709173, 'sliders/1.jpg', '[]', '2021-09-18 20:33:08', '2021-09-18 20:33:08', NULL),
(59, 0, '2', 7, 'image/jpeg', 1019757, 'sliders/2.jpg', '[]', '2021-09-18 20:33:08', '2021-09-18 20:33:08', NULL),
(60, 0, '3', 7, 'image/jpeg', 435599, 'sliders/3.jpg', '[]', '2021-09-18 20:33:09', '2021-09-18 20:33:09', NULL),
(61, 0, '1', 8, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-09-18 20:33:10', '2021-09-18 20:33:10', NULL),
(62, 0, '10', 8, 'image/jpeg', 342651, 'news/10.jpg', '[]', '2021-09-18 20:33:10', '2021-09-18 20:33:10', NULL),
(63, 0, '11', 8, 'image/jpeg', 296740, 'news/11.jpg', '[]', '2021-09-18 20:33:12', '2021-09-18 20:33:12', NULL),
(64, 0, '2', 8, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-09-18 20:33:13', '2021-09-18 20:33:13', NULL),
(65, 0, '3', 8, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-09-18 20:33:14', '2021-09-18 20:33:14', NULL),
(66, 0, '4', 8, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-09-18 20:33:14', '2021-09-18 20:33:14', NULL),
(67, 0, '5', 8, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-09-18 20:33:14', '2021-09-18 20:33:14', NULL),
(68, 0, '6', 8, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-09-18 20:33:14', '2021-09-18 20:33:14', NULL),
(69, 0, '7', 8, 'image/jpeg', 904027, 'news/7.jpg', '[]', '2021-09-18 20:33:14', '2021-09-18 20:33:14', NULL),
(70, 0, '8', 8, 'image/jpeg', 351088, 'news/8.jpg', '[]', '2021-09-18 20:33:15', '2021-09-18 20:33:15', NULL),
(71, 0, '9', 8, 'image/jpeg', 353751, 'news/9.jpg', '[]', '2021-09-18 20:33:16', '2021-09-18 20:33:16', NULL),
(72, 0, '1', 9, 'image/jpeg', 21423, 'galleries/1.jpg', '[]', '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(73, 0, '2', 9, 'image/jpeg', 19653, 'galleries/2.jpg', '[]', '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(74, 0, '3', 9, 'image/jpeg', 23552, 'galleries/3.jpg', '[]', '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(75, 0, '4', 9, 'image/jpeg', 23963, 'galleries/4.jpg', '[]', '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(76, 0, '5', 9, 'image/jpeg', 18512, 'galleries/5.jpg', '[]', '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(77, 0, '6', 9, 'image/jpeg', 24905, 'galleries/6.jpg', '[]', '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL),
(78, 0, '7', 9, 'image/jpeg', 24935, 'galleries/7.jpg', '[]', '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL),
(79, 0, '8', 9, 'image/jpeg', 21362, 'galleries/8.jpg', '[]', '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL),
(80, 0, '9', 9, 'image/jpeg', 22307, 'galleries/9.jpg', '[]', '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL),
(81, 0, 'favicon', 10, 'image/png', 14500, 'general/favicon.png', '[]', '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL),
(82, 0, 'logo-light', 10, 'image/png', 35316, 'general/logo-light.png', '[]', '2021-09-18 20:33:20', '2021-09-18 20:33:20', NULL),
(83, 0, 'logo', 10, 'image/png', 41654, 'general/logo.png', '[]', '2021-09-18 20:33:20', '2021-09-18 20:33:20', NULL),
(84, 0, 'open-graph-image', 10, 'image/png', 580691, 'general/open-graph-image.png', '[]', '2021-09-18 20:33:21', '2021-09-18 20:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', 'brands', 0, '2021-09-18 20:32:35', '2021-09-18 20:32:35', NULL),
(2, 0, 'product-categories', 'product-categories', 0, '2021-09-18 20:32:37', '2021-09-18 20:32:37', NULL),
(3, 0, 'product-collections', 'product-collections', 0, '2021-09-18 20:32:39', '2021-09-18 20:32:39', NULL),
(4, 0, 'products', 'products', 0, '2021-09-18 20:32:40', '2021-09-18 20:32:40', NULL),
(5, 0, 'customers', 'customers', 0, '2021-09-18 20:33:01', '2021-09-18 20:33:01', NULL),
(6, 0, 'flash-sales', 'flash-sales', 0, '2021-09-18 20:33:07', '2021-09-18 20:33:07', NULL),
(7, 0, 'sliders', 'sliders', 0, '2021-09-18 20:33:08', '2021-09-18 20:33:08', NULL),
(8, 0, 'news', 'news', 0, '2021-09-18 20:33:10', '2021-09-18 20:33:10', NULL),
(9, 0, 'galleries', 'galleries', 0, '2021-09-18 20:33:18', '2021-09-18 20:33:18', NULL),
(10, 0, 'general', 'general', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, 'Customer services', 'customer-services', 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(3, 'Menu ch??nh', 'menu-chinh', 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(4, 'D???ch v??? kh??ch h??ng', 'dich-vu-khach-hang', 'published', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, 3, 'main-menu', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 1, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(3, 1, 2, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/office-bags', NULL, 0, 'Woman wallet', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(4, 1, 2, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hand-bag', NULL, 0, 'Office bags', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(5, 1, 2, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/woman', NULL, 0, 'Hand bag', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(6, 1, 2, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/woman-wallet', NULL, 0, 'Backpack', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(7, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(8, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(9, 2, 0, NULL, NULL, '/login', NULL, 0, 'Login', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(10, 2, 0, NULL, NULL, '/register', NULL, 0, 'Register', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(11, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(12, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(13, 3, 0, NULL, NULL, '/', NULL, 0, 'Trang ch???', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(14, 3, 0, NULL, NULL, '/products', NULL, 0, 'S???n ph???m', NULL, '_self', 1, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(15, 3, 14, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/office-bags', NULL, 0, 'T??i x??ch n???', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(16, 3, 14, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hand-bag', NULL, 0, 'T??i c??ng s???', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(17, 3, 14, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/woman', NULL, 0, 'V?? c???m tay', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(18, 3, 14, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/woman-wallet', NULL, 0, 'Ba l??', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(19, 3, 0, 6, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin t???c', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(20, 3, 0, 7, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(21, 4, 0, NULL, NULL, '/login', NULL, 0, '????ng nh???p', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(22, 4, 0, NULL, NULL, '/register', NULL, 0, '????ng k??', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(23, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin t???c', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(24, 4, 0, 7, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'image', '[\"flash-sales\\/1.jpg\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(2, 'image', '[\"flash-sales\\/2.jpg\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-09-18 20:33:07', '2021-09-18 20:33:07'),
(3, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(4, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(5, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(6, 'button_text', '[\"Mua ngay\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(7, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(8, 'button_text', '[\"Mua ngay\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-18 20:33:10', '2021-09-18 20:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_05_03_000001_create_customer_columns', 1),
(15, '2019_05_03_000002_create_subscriptions_table', 1),
(16, '2019_05_03_000003_create_subscription_items_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2015_06_29_025744_create_audit_history', 2),
(19, '2015_06_18_033822_create_blog_table', 3),
(20, '2021_02_16_092633_remove_default_value_for_author_type', 3),
(21, '2016_06_17_091537_create_contacts_table', 4),
(22, '2020_03_05_041139_create_ecommerce_tables', 5),
(23, '2020_09_22_135635_update_taxes_table', 5),
(24, '2020_09_29_101006_add_views_into_ec_products_table', 5),
(25, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 5),
(26, '2020_10_06_073439_improve_ecommerce_database', 5),
(27, '2020_11_01_040415_update_table_ec_order_addresses', 5),
(28, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 5),
(29, '2020_11_30_015801_update_table_ec_product_categories', 5),
(30, '2021_01_01_044147_ecommerce_create_flash_sale_table', 5),
(31, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 5),
(32, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 5),
(33, '2021_02_18_073505_update_table_ec_reviews', 5),
(34, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 5),
(35, '2021_03_10_025153_change_column_tax_amount', 5),
(36, '2021_03_20_033103_add_column_availability_to_table_ec_products', 5),
(37, '2021_04_28_074008_ecommerce_create_product_label_table', 5),
(38, '2021_05_31_173037_ecommerce_create_ec_products_translations', 5),
(39, '2021_06_28_153141_correct_slugs_data', 5),
(40, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 5),
(41, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 5),
(42, '2021_09_01_115151_remove_unused_fields_in_ec_products', 5),
(43, '2016_10_13_150201_create_galleries_table', 6),
(44, '2016_10_03_032336_create_languages_table', 7),
(45, '2017_10_24_154832_create_newsletter_table', 8),
(46, '2017_05_18_080441_create_payment_tables', 9),
(47, '2021_03_27_144913_add_customer_type_into_table_payments', 9),
(48, '2021_05_24_034720_make_column_currency_nullable', 9),
(49, '2021_08_09_161302_add_metadata_column_to_payments_table', 9),
(50, '2017_07_11_140018_create_simple_slider_table', 10),
(51, '2016_10_07_193005_create_translations_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections title=\"A change of Season\" subtitle=\"Update your wardrobe with new seasonal trend\"][/product-collections]</div><div>[flash-sale title=\"Deal of the day\" subtitle=\"Best Deals For You\" show_popup=\"yes\"][/flash-sale]</div><div>[featured-products title=\"Our Picks For You\" subtitle=\"Always find the best ways for you\" limit=\"8\"][/featured-products]</div><div>[trending-products title=\"Trending Products\" subtitle=\"Products on trending\" limit=\"4\"][/trending-products]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/news]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" subtitle=\"Our latest fashion galleries images\" limit=\"8\"][/theme-galleries]</div><div>[site-features icon1=\"icon-truck\" title1=\"FREE SHIPPING\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"icon-life-buoy\" title2=\"SUPPORT 24/7\" subtitle2=\"Contact us 24 hours a day, 7 days a week\" icon3=\"icon-refresh-ccw\" title3=\"30 DAYS RETURN\" subtitle3=\"Simply return it within 30 days for an exchange\" icon4=\"icon-shield\" title4=\"100% PAYMENT SECURE\" subtitle4=\"We ensure secure payment with PEV\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(2, 'Blog', '<p style=\"text-align: center\">We always share fashion tips with the hope you guys will find the best style for yourself.<br />Besides, we update the fashion trend as soon as we can.<br />Enjoy your journey!</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(3, 'Contact', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(5, 'Trang ch???', '<div>[simple-slider key=\"slider-trang-chu\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh m???c n???i b???t\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections title=\"B??? s??u t???p theo m??a\" subtitle=\"C???p nh???t t??? qu???n ??o c???a b???n v???i xu h?????ng theo m??a m???i\"][/product-collections]</div><div>[flash-sale title=\"Khuy???n m??i h??m nay\" subtitle=\"Khuy???n m??i t???t nh???t d??nh cho b???n\" show_popup=\"yes\"][/flash-sale]</div><div>[featured-products title=\"L???a ch???n c???a ch??ng t??i d??nh cho b???n\" subtitle=\"Lu??n t??m ra nh???ng c??ch t???t nh???t cho b???n\" limit=\"8\"][/featured-products]</div><div>[trending-products title=\"S???n ph???m n???i b???t\" subtitle=\"C??c s???n ph???m xu h?????ng\" limit=\"4\"][/trending-products]</div><div>[featured-brands title=\"Th????ng hi???u\"][/featured-brands]</div><div>[news title=\"B??i vi???t m???i nh???t\" subtitle=\"Blog c???a ch??ng t??i c???p nh???t c??c xu h?????ng m???i nh???t c???a th??? gi???i th?????ng xuy??n\"][/news]</div><div>[theme-galleries title=\"@ Th?? vi???n ???nh\" subtitle=\"H??nh ???nh ph??ng tr??ng b??y th???i trang m???i nh???t c???a ch??ng t??i\" limit=\"8\"][/theme-galleries]</div><div>[site-features icon1=\"icon-truck\" title1=\"MI???N PH?? V???N CHUY???N\" subtitle1=\"Giao h??ng mi???n ph?? cho t???t c??? c??c ????n ?????t h??ng t???i Hoa K??? ho???c ????n h??ng tr??n $200\" icon2=\"icon-life-buoy\" title2=\"H??? TR??? 24/7\" subtitle2=\"Li??n h??? v???i ch??ng t??i 24 gi??? m???t ng??y, 7 ng??y m???t tu???n\" icon3=\"icon-refresh-ccw\" title3=\"30 HO??N H??NG\" subtitle3=\"H??? tr??? tr??? h??ng trong v??ng 30 ng??y\" icon4=\"icon-shield\" title4=\"100% THANH TO??N B???O M???T\" subtitle4=\"Ch??ng t??i ?????m b???o thanh to??n an to??n v???i PEV\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(6, 'Tin t???c', '<p style=\"text-align: center\">We always share fashion tips with the hope you guys will find the best style for yourself.<br />Besides, we update the fashion trend as soon as we can.<br />Enjoy your journey!</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(7, 'Li??n h???', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(8, 'Ch??nh s??ch cookie', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, '7PA3IGCI60', 'sslcommerz', NULL, '1844.10', 1, 'completed', 'confirm', 4, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(2, 'USD', 0, '0XPVITCURR', 'stripe', NULL, '1667.30', 2, 'completed', 'confirm', 6, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(3, 'USD', 0, 'N7A62I5NS2', 'cod', NULL, '817.80', 3, 'pending', 'confirm', 8, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(4, 'USD', 0, 'CWX56G1M5X', 'bank_transfer', NULL, '1280.10', 4, 'pending', 'confirm', 6, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(5, 'USD', 0, 'NT8DVOADXC', 'mollie', NULL, '2060.80', 5, 'completed', 'confirm', 2, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(6, 'USD', 0, 'F9EONQWNS5', 'stripe', NULL, '676.50', 6, 'completed', 'confirm', 5, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(7, 'USD', 0, '1RZT060NA4', 'bank_transfer', NULL, '601.00', 7, 'pending', 'confirm', 6, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(8, 'USD', 0, 'UTVQRR1JXK', 'cod', NULL, '629.10', 8, 'pending', 'confirm', 8, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'DQ6TIJSOHC', 'stripe', NULL, '434.00', 9, 'completed', 'confirm', 6, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(10, 'USD', 0, 'VKPGYNARCE', 'stripe', NULL, '614.40', 10, 'completed', 'confirm', 9, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(11, 'USD', 0, 'J6F8TOHKLS', 'razorpay', NULL, '2245.80', 11, 'completed', 'confirm', 8, NULL, NULL, '2021-09-18 20:33:06', '2021-09-18 20:33:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(12, 'USD', 0, 'IWYHDSILLV', 'razorpay', NULL, '2053.50', 12, 'completed', 'confirm', 7, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(13, 'USD', 0, 'OHQCQMGRQB', 'razorpay', NULL, '1120.20', 13, 'completed', 'confirm', 5, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(14, 'USD', 0, 'NKVKXIPSWU', 'paystack', NULL, '1931.10', 14, 'completed', 'confirm', 1, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(15, 'USD', 0, 'FTQWBR0GU6', 'stripe', NULL, '1176.00', 15, 'completed', 'confirm', 2, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(16, 'USD', 0, 'LXVGRPKXON', 'mollie', NULL, '2193.00', 16, 'completed', 'confirm', 1, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(17, 'USD', 0, 'ZYZK2SHZDN', 'sslcommerz', NULL, '1769.60', 17, 'completed', 'confirm', 3, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(18, 'USD', 0, 'ZNSQMXRPKQ', 'cod', NULL, '596.40', 18, 'pending', 'confirm', 8, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(19, 'USD', 0, '90K2ZNNQVM', 'sslcommerz', NULL, '1653.60', 19, 'completed', 'confirm', 8, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(20, 'USD', 0, 'OTYGK2MFFC', 'cod', NULL, '616.90', 20, 'pending', 'confirm', 3, NULL, NULL, '2021-09-18 20:33:07', '2021-09-18 20:33:07', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men???s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1298, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1821, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1678, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1084, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1048, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 321, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1723, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 2478, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 833, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 2357, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1733, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(12, '4 L???i khuy??n c???a Chuy??n gia v??? C??ch Ch???n V?? Nam Ph?? h???p', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1279, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(13, 'Sexy Clutches: C??ch Mua & ??eo T??i Clutch Thi???t k???', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1933, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(14, 'Xu h?????ng t??i x??ch h??ng ?????u n??m 2020 c???n bi???t', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2330, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(15, 'C??ch Ph???i M??u T??i X??ch C???a B???n V???i Trang Ph???c', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2179, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(16, 'C??ch Ch??m s??c T??i Da', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 117, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(17, 'Ch??ng t??i ??ang nghi???n ng???m 10 xu h?????ng t??i l???n nh???t c???a m??a h??', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1730, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(18, 'Nh???ng ph???m ch???t c???n thi???t c???a ??m nh???c th??nh c??ng cao', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 2165, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(19, '9 ??i???u t??i th??ch khi c???o ?????u', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1480, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(20, 'T???i sao l??m vi???c theo nh??m th???c s??? bi???n gi???c m?? th??nh c??ng', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1281, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(21, 'Th??? gi???i ph???c v??? cho nh???ng ng?????i trung b??nh', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 903, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(22, 'C??c ??????ng s??? tr??n m??n h??nh kh??ng ph???i l?? di???n vi??n', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1144, NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 2, 2),
(4, 4, 2),
(5, 1, 3),
(6, 4, 3),
(7, 1, 4),
(8, 4, 4),
(9, 1, 5),
(10, 4, 5),
(11, 1, 6),
(12, 3, 6),
(13, 2, 7),
(14, 4, 7),
(15, 2, 8),
(16, 4, 8),
(17, 2, 9),
(18, 4, 9),
(19, 1, 10),
(20, 4, 10),
(21, 1, 11),
(22, 4, 11),
(23, 5, 12),
(24, 7, 12),
(25, 5, 13),
(26, 8, 13),
(27, 5, 14),
(28, 7, 14),
(29, 5, 15),
(30, 8, 15),
(31, 5, 16),
(32, 7, 16),
(33, 6, 17),
(34, 8, 17),
(35, 6, 18),
(36, 7, 18),
(37, 5, 19),
(38, 8, 19),
(39, 5, 20),
(40, 7, 20),
(41, 6, 21),
(42, 8, 21),
(43, 6, 22),
(44, 8, 22);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 6, 12),
(57, 7, 12),
(58, 8, 12),
(59, 9, 12),
(60, 10, 12),
(61, 6, 13),
(62, 7, 13),
(63, 8, 13),
(64, 9, 13),
(65, 10, 13),
(66, 6, 14),
(67, 7, 14),
(68, 8, 14),
(69, 9, 14),
(70, 10, 14),
(71, 6, 15),
(72, 7, 15),
(73, 8, 15),
(74, 9, 15),
(75, 10, 15),
(76, 6, 16),
(77, 7, 16),
(78, 8, 16),
(79, 9, 16),
(80, 10, 16),
(81, 6, 17),
(82, 7, 17),
(83, 8, 17),
(84, 9, 17),
(85, 10, 17),
(86, 6, 18),
(87, 7, 18),
(88, 8, 18),
(89, 9, 18),
(90, 10, 18),
(91, 6, 19),
(92, 7, 19),
(93, 8, 19),
(94, 9, 19),
(95, 10, 19),
(96, 6, 20),
(97, 7, 20),
(98, 8, 20),
(99, 9, 20),
(100, 10, 20),
(101, 6, 21),
(102, 7, 21),
(103, 8, 21),
(104, 9, 21),
(105, 10, 21),
(106, 6, 22),
(107, 7, 22),
(108, 8, 22),
(109, 9, 22),
(110, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"gallery\",\"language-advanced\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]', NULL, NULL),
(2, 'payment_cod_status', '1', NULL, NULL),
(3, 'payment_bank_transfer_status', '1', NULL, NULL),
(4, 'language_hide_default', '1', NULL, NULL),
(5, 'language_switcher_display', 'dropdown', NULL, NULL),
(6, 'language_display', 'all', NULL, NULL),
(7, 'language_hide_languages', '[]', NULL, NULL),
(8, 'media_random_hash', '0192f7a10ae0f9a352d7b0815db826eb', NULL, NULL),
(9, 'permalink-botble-blog-models-post', 'blog', NULL, NULL),
(10, 'permalink-botble-blog-models-category', 'blog', NULL, NULL),
(11, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(12, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(13, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(14, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(15, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(18, 'ecommerce_store_name', 'HASA SG', NULL, NULL),
(19, 'ecommerce_store_phone', '18006268', NULL, NULL),
(20, 'ecommerce_store_address', 'North Link Building, 10 Admiralty Street', NULL, NULL),
(21, 'ecommerce_store_state', 'Singapore', NULL, NULL),
(22, 'ecommerce_store_city', 'Singapore', NULL, NULL),
(23, 'ecommerce_store_country', 'SG', NULL, NULL),
(24, 'theme', 'september', NULL, NULL),
(25, 'theme-september-site_title', 'HASA - Multipurpose Laravel Fashion Shop', NULL, NULL),
(26, 'theme-september-copyright', '?? 2021 Botble Technologies. All Rights Reserved.', NULL, NULL),
(27, 'theme-september-favicon', 'general/favicon.png', NULL, NULL),
(28, 'theme-september-logo', 'general/logo.png', NULL, NULL),
(29, 'admin_favicon', 'general/favicon.png', NULL, NULL),
(30, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(31, 'theme-september-seo_og_image', 'general/open-graph-image.png', NULL, NULL),
(32, 'theme-september-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(33, 'theme-september-hotline', '18006268', NULL, NULL),
(34, 'theme-september-email', 'sales@botble.com', NULL, NULL),
(35, 'theme-september-facebook', 'https://facebook.com', NULL, NULL),
(36, 'theme-september-twitter', 'https://twitter.com', NULL, NULL),
(37, 'theme-september-youtube', 'https://youtube.com', NULL, NULL),
(38, 'theme-september-linkedin', 'https://linkedin.com', NULL, NULL),
(39, 'theme-september-pinterest', 'https://pinterest.com', NULL, NULL),
(40, 'theme-september-instagram', 'https://instagram.com', NULL, NULL),
(41, 'theme-september-homepage_id', '1', NULL, NULL),
(42, 'theme-september-blog_page_id', '2', NULL, NULL),
(43, 'theme-september-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(44, 'theme-september-cookie_consent_learn_more_url', 'http://hasa.local/cookie-policy', NULL, NULL),
(45, 'theme-september-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(46, 'theme-september-enabled_sticky_header', 'yes', NULL, NULL),
(47, 'theme-september-vi-primary_font', 'Roboto Condensed', NULL, NULL),
(48, 'theme-september-vi-copyright', '?? 2021 Botble Technologies. T???t c??? quy???n ???? ???????c b???o h???.', NULL, NULL),
(49, 'theme-september-vi-cookie_consent_message', 'Tr???i nghi???m c???a b???n tr??n trang web n??y s??? ???????c c???i thi???n b???ng c??ch cho ph??p cookie ', NULL, NULL),
(50, 'theme-september-vi-cookie_consent_learn_more_url', 'http://hasa.local/cookie-policy', NULL, NULL),
(51, 'theme-september-vi-cookie_consent_learn_more_text', 'Ch??nh s??ch cookie', NULL, NULL),
(52, 'theme-september-vi-homepage_id', '5', NULL, NULL),
(53, 'theme-september-vi-blog_page_id', '6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', NULL, 'published', '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(2, 'Slider trang ch???', 'slider-trang-chu', NULL, 'published', '2021-09-18 20:33:10', '2021-09-18 20:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Collection', 'sliders/1.jpg', '/products', 'Save more with coupons & up to 70% off', 1, '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(2, 1, 'Big Deals', 'sliders/2.jpg', '/products', 'Headphone, Gaming Laptop, PC and more...', 2, '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(3, 1, 'Trending Collection', 'sliders/3.jpg', '/products', 'Save more with coupons & up to 20% off', 3, '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(4, 2, 'B??? s??u t???p m???i', 'sliders/1.jpg', '/products', 'Ti???t ki???m h??n v???i phi???u gi???m gi?? v?? gi???m gi?? l??n ?????n 70%', 1, '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(5, 2, 'Khuy???n m??i l???n', 'sliders/2.jpg', '/products', 'Tai nghe, M??y t??nh x??ch tay ch??i game, PC v?? h??n th??? n???a ...', 2, '2021-09-18 20:33:10', '2021-09-18 20:33:10'),
(6, 2, 'Trending Collection', 'sliders/3.jpg', '/products', 'Ti???t ki???m h??n v???i phi???u gi???m gi?? v?? gi???m gi?? l??n ?????n 20%', 3, '2021-09-18 20:33:10', '2021-09-18 20:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-18 20:32:37', '2021-09-18 20:32:37'),
(8, 'office-bags', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(9, 'hand-bag', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(10, 'woman', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(11, 'woman-wallet', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(12, 'denim', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(13, 'dress', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(14, 'backpack', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(15, 'bags', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(16, 'wallet', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(17, 'men', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(18, 'accessories', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(19, 'men-wallet', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(20, 'shoes', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-18 20:32:39', '2021-09-18 20:32:39'),
(21, 'wallet', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(22, 'bags', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(23, 'shoes', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(24, 'clothes', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(25, 'hand-bag', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-18 20:32:40', '2021-09-18 20:32:40'),
(26, 'wallet-handmade', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(27, 'clutch-handmade', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(28, 'gucci-zip-around-wallet', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(29, 'snapshot-standard', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(30, 'joan-mini-camera-bag', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(31, 'cyan-boheme', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(32, 'the-marc-jacobs', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(33, 'round-crossbody-bag', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-18 20:33:01', '2021-09-18 20:33:01'),
(34, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(35, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(36, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(37, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(38, 'thuong-mai-dien-tu', 5, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(39, 'fashion', 6, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(40, 'electronic', 7, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(41, 'thuong-mai', 8, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(42, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(43, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(44, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(45, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(46, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(47, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(48, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(49, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(50, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(51, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(52, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(53, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(54, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(55, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(56, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(57, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(58, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(59, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(60, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(61, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(62, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(63, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 12, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(64, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 13, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(65, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 14, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(66, 'cach-phoi-mau-tui-xach-cua-ban-voi-trang-phuc', 15, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(67, 'cach-cham-soc-tui-da', 16, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(68, 'chung-toi-dang-nghien-ngam-10-xu-huong-tui-lon-nhat-cua-mua-he', 17, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(69, 'nhung-pham-chat-can-thiet-cua-am-nhac-thanh-cong-cao', 18, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(70, '9-dieu-toi-thich-khi-cao-dau', 19, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(71, 'tai-sao-lam-viec-theo-nhom-thuc-su-bien-giac-mo-thanh-cong', 20, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(72, 'the-gioi-phuc-vu-cho-nhung-nguoi-trung-binh', 21, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(73, 'cac-duong-su-tren-man-hinh-khong-phai-la-dien-vien', 22, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(74, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(75, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(76, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(77, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(78, 'trang-chu', 5, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(79, 'tin-tuc', 6, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(80, 'lien-he', 7, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(81, 'chinh-sach-cookie', 8, 'Botble\\Page\\Models\\Page', '', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(82, 'men', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(83, 'women', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(84, 'accessories', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(85, 'shoes', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(86, 'denim', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(87, 'dress', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(88, 'thoi-trang-nam', 7, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(89, 'thoi-trang-nu', 8, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(90, 'phu-kien', 9, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(91, 'giay-dep', 10, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(92, 'denim', 11, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(93, 'quan-ao', 12, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(7, 'Thi???t k???', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(8, 'Th???i trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(9, 'Th????ng hi???u', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17'),
(10, 'Hi???n ?????i', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-18 20:33:17', '2021-09-18 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-09-18 20:34:44', '2021-09-18 20:34:44'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(20, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(21, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(22, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(23, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(24, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(25, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(26, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(27, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(28, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(29, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(30, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(31, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(32, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(33, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(34, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(35, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(36, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(37, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(38, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(39, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(40, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(41, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(42, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(43, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(44, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(45, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(46, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(47, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(48, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(49, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(50, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(51, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(52, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(53, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(54, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(55, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(56, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(57, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(58, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(59, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(60, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(61, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(62, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(63, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(64, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(65, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(66, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(67, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(68, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(69, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(70, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(71, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(72, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(73, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(74, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(75, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(76, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(77, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(78, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(79, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(80, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(81, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(82, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(83, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(84, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(85, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(86, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(87, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(88, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(89, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(90, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(91, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(92, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(93, 1, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(94, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(95, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(96, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(97, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(98, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(99, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(100, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(101, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(102, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(103, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(104, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(105, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(106, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(107, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(108, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(109, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(110, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(111, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(112, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(113, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(114, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(115, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(116, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(117, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(118, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(119, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(120, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(121, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(122, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(123, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(124, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(125, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(126, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(127, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(128, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(129, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(130, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(131, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(132, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(133, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(134, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(135, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(136, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(137, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(138, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(139, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(140, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(141, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(142, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(143, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(144, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(145, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(146, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(147, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(148, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(149, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(150, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(151, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(152, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(153, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(154, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(155, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(156, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(157, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(158, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(159, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(160, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(161, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(162, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(163, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(164, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(165, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(166, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(167, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(168, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(169, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(170, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(171, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(172, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(173, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(174, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(175, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(176, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(177, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(178, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(179, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(180, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(181, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(182, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(183, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(184, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(185, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(186, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(187, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(188, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(189, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(190, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(191, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(192, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(193, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(194, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(195, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(196, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(197, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(198, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(199, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(200, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(201, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(202, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(203, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(204, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(205, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(206, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(207, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(208, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(209, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(210, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(211, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(212, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(213, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(214, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(215, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(216, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(217, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(218, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(219, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(220, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(221, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(222, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(223, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(224, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(225, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(226, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(227, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(228, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(229, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(230, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(231, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(232, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(233, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(234, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(235, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(236, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(237, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(238, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(239, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(240, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(241, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(242, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(243, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(244, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(245, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(246, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(247, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(248, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(249, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(250, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(251, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(252, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(253, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(254, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(255, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(256, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(257, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(258, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(259, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(260, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(261, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(262, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(263, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(264, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(265, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(266, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(267, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(268, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(269, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(270, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(271, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(272, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(273, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(274, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(275, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(276, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(277, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(278, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(279, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(280, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(281, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(282, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(283, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(284, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(285, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(286, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(287, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(288, 1, 'vi', 'core/acl/auth', 'login.username', 'T??n truy c????p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(289, 1, 'vi', 'core/acl/auth', 'login.password', 'M????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(290, 1, 'vi', 'core/acl/auth', 'login.title', '????ng nh???p v??o qu???n tr???', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(291, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nh???? m????t kh????u?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(292, 1, 'vi', 'core/acl/auth', 'login.login', '????ng nh????p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(293, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lo??ng nh????p t??n truy c????p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(294, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui l??ng nh???p email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(295, 1, 'vi', 'core/acl/auth', 'login.success', '????ng nh????p tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(296, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai t??n truy c????p ho????c m????t kh????u.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(297, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Ta??i khoa??n cu??a ba??n ch??a ????????c ki??ch hoa??t!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(298, 1, 'vi', 'core/acl/auth', 'login.banned', 'Ta??i khoa??n na??y ??a?? bi?? kho??a.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(299, 1, 'vi', 'core/acl/auth', 'login.logout_success', '????ng xu????t tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(300, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'B???n kh??ng c?? t??i kho???n trong h??? th???ng, vui l??ng li??n h??? qu???n tr??? vi??n!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(301, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(302, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Qu??n m????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(303, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Qu??n m????t kh????u?</p><p>Vui l??ng nh???p email ????ng nh???p t??i kho???n c???a b???n ????? h??? th???ng g???i li??n k???t kh??i ph???c m???t kh???u.</p>', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(304, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoa??n t????t', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(305, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'M????t kh????u m????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(306, 1, 'vi', 'core/acl/auth', 'reset.title', 'Kh??i phu??c m????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(307, 1, 'vi', 'core/acl/auth', 'reset.update', 'C????p nh????t', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(308, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Li??n k????t na??y kh??ng chi??nh xa??c ho????c ??a?? h????t hi????u l????c, vui lo??ng y??u c????u kh??i phu??c m????t kh????u la??i!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(309, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'T??n ????ng nh????p kh??ng t????n ta??i.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(310, 1, 'vi', 'core/acl/auth', 'reset.success', 'Kh??i phu??c m????t kh????u tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(311, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token kh??ng h????p l???? ho????c li??n k????t kh??i phu??c m????t kh????u ??a?? h????t th????i gian hi????u l????c!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(312, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email kh??i phu??c m????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(313, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'M????t email kh??i phu??c m????t kh????u ??a?? ????????c g????i t????i email cu??a ba??n, vui lo??ng ki????m tra va?? hoa??n t????t y??u c????u.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(314, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Kh??ng th???? g????i email trong lu??c na??y. Vui lo??ng th????c hi????n la??i sau.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(315, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'M????t kh????u m????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(316, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(317, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email kh??i phu??c m????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(318, 1, 'vi', 'core/acl/auth', 'failed', 'Kh??ng tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(319, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(320, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay l???i trang ????ng nh???p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(321, 1, 'vi', 'core/acl/auth', 'login_title', '????ng nh???p v??o qu???n tr???', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(322, 1, 'vi', 'core/acl/auth', 'login_via_social', '????ng nh???p th??ng qua m???ng x?? h???i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(323, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Qu??n m???t kh???u?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(324, 1, 'vi', 'core/acl/auth', 'not_member', 'Ch??a l?? th??nh vi??n?', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(325, 1, 'vi', 'core/acl/auth', 'register_now', '????ng k?? ngay', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(329, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Ba??n kh??ng th???? xo??a quy????n ng??????i du??ng h???? th????ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(330, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quy????n ng??????i du??ng ??a?? ????????c xo??a!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quy????n ng??????i du??ng ??a?? ????????c c????p nh????t tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(332, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quy????n ng??????i du??ng m????i ??a?? ????????c ta??o tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(333, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quy????n ng??????i du??ng ??a?? ????????c sao che??p tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(334, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ng??????i du??ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(335, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Kh??ng ti??m th????y quy????n ng??????i du??ng na??y', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(336, 1, 'vi', 'core/acl/permissions', 'name', 'T??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(337, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quy????n hi????n ta??i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(338, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Kh??ng co?? quy????n ha??n na??o', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(339, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quy????n ??a?? ????????c ga??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(340, 1, 'vi', 'core/acl/permissions', 'create_role', 'Ta??o quy????n m????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(341, 1, 'vi', 'core/acl/permissions', 'role_name', 'T??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(342, 1, 'vi', 'core/acl/permissions', 'role_description', 'M?? ta??', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(343, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'C???? ??a??nh d????u quy????n ha??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(344, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hu??y bo??', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(345, 1, 'vi', 'core/acl/permissions', 'reset', 'La??m la??i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(346, 1, 'vi', 'core/acl/permissions', 'save', 'L??u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(347, 1, 'vi', 'core/acl/permissions', 'global_role_msg', '????y la?? m????t ph??n quy????n toa??n cu??c va?? kh??ng th???? thay ??????i.  Ba??n co?? th???? s???? du??ng nu??t \"Nh??n ba??n\" ?????? ta??o m????t ba??n sao che??p cho ph??n quy????n na??y va?? chi??nh s????a.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(348, 1, 'vi', 'core/acl/permissions', 'details', 'Chi ti????t', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(349, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nh??n ba??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(350, 1, 'vi', 'core/acl/permissions', 'all', 'T????t ca?? ph??n quy????n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(351, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sa??ch quy????n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(352, 1, 'vi', 'core/acl/permissions', 'created_on', 'Nga??y ta??o', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(353, 1, 'vi', 'core/acl/permissions', 'created_by', '????????c ta??o b????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(354, 1, 'vi', 'core/acl/permissions', 'actions', 'Ta??c vu??', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(355, 1, 'vi', 'core/acl/permissions', 'create_success', 'Ta??o tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(356, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Kh??ng th???? xo??a quy????n h???? th????ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(357, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xo??a quy????n tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(358, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nh??n ba??n tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(359, 1, 'vi', 'core/acl/permissions', 'modified_success', 'S????a tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(360, 1, 'vi', 'core/acl/permissions', 'no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(361, 1, 'vi', 'core/acl/permissions', 'not_found', 'Kh??ng ti??m th????y quy????n tha??nh vi??n na??o!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(362, 1, 'vi', 'core/acl/permissions', 'options', 'Tu??y cho??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(363, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(364, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(365, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(366, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Ba??n kh??ng co?? quy????n s???? du??ng ch????c n??ng na??y!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(367, 1, 'vi', 'core/acl/permissions', 'roles', 'Quy???n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(368, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nh??m v?? ph??n quy???n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(369, 1, 'vi', 'core/acl/permissions', 'user_management', 'Qu???n l?? ng?????i d??ng h??? th???ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(370, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Qu???n l?? ng?????i d??ng c???p cao', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(371, 1, 'vi', 'core/acl/reminders', 'password', 'M???t kh???u ph???i ??t nh???t 6 k?? t??? v?? tr??ng kh???p v???i m???t kh???u x??c nh???n.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(372, 1, 'vi', 'core/acl/reminders', 'user', 'H??? th???ng kh??ng th??? t??m th???y t??i kho???n v???i email n??y.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(373, 1, 'vi', 'core/acl/reminders', 'token', 'M?? kh??i ph???c m???t kh???u n??y kh??ng h???p l???.', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(374, 1, 'vi', 'core/acl/reminders', 'sent', 'Li??n k???t kh??i ph???c m???t kh???u ???? ???????c g???i!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(375, 1, 'vi', 'core/acl/reminders', 'reset', 'M???t kh???u ???? ???????c thay ?????i!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(376, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Kh??ng th???? xo??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(377, 1, 'vi', 'core/acl/users', 'no_select', 'Ha??y cho??n i??t nh????t m????t tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(378, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Kh??ng th???? kho??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(379, 1, 'vi', 'core/acl/users', 'update_success', 'C????p nh????t tra??ng tha??i tha??nh c??ng!', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(380, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Co?? l????i xa??y ra trong qua?? tri??nh l??u ca??i ??????t cu??a ng??????i du??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(381, 1, 'vi', 'core/acl/users', 'not_found', 'Kh??ng ti??m th????y ng??????i du??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'email_exist', 'Email na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(383, 1, 'vi', 'core/acl/users', 'username_exist', 'T??n ????ng nh????p na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(384, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Th??ng tin ta??i khoa??n cu??a ba??n ??a?? ????????c c????p nh????t tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(385, 1, 'vi', 'core/acl/users', 'password_update_success', 'C????p nh????t m????t kh????u tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(386, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'M????t kh????u hi????n ta??i kh??ng chi??nh xa??c', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(387, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Ng??????i du??ng ??a?? la?? tha??nh vi??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(388, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(389, 1, 'vi', 'core/acl/users', 'username', 'T??n ????ng nh????p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(390, 1, 'vi', 'core/acl/users', 'role', 'Ph??n quy????n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(391, 1, 'vi', 'core/acl/users', 'first_name', 'Ho??', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(392, 1, 'vi', 'core/acl/users', 'last_name', 'T??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(393, 1, 'vi', 'core/acl/users', 'message', 'Th??ng ??i????p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(394, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hu??y bo??', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(395, 1, 'vi', 'core/acl/users', 'password', 'M????t kh????u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(396, 1, 'vi', 'core/acl/users', 'new_password', 'M????t kh????u m????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(397, 1, 'vi', 'core/acl/users', 'save', 'L??u', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(398, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xa??c nh????n m????t kh????u m????i', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(399, 1, 'vi', 'core/acl/users', 'deleted', 'Xo??a tha??nh vi??n tha??nh c??ng', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(400, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Kh??ng th???? xo??a tha??nh vi??n', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(401, 1, 'vi', 'core/acl/users', 'last_login', 'L???n cu???i ????ng nh???p', '2021-09-18 20:34:45', '2021-09-18 20:34:45'),
(402, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'C?? l???i trong qu?? tr??nh ?????i ???nh ?????i di???n', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(403, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin cha??o :name</h3><p>H??? th???ng v???a nh???n ???????c y??u c???u kh??i ph???c m???t kh???u cho t??i kho???n c???a b???n, ????? ho??n t???t t??c v??? n??y vui l??ng click v??o ???????ng link b??n d?????i.</p><p><a href=\":link\">Kh??i phu??c m????t kh????u</a></p><p>N???u kh??ng ph???i b???n y??u c???u kh??i ph???c m???t kh???u, vui l??ng b??? qua email n??y.</p><p>Email n??y c?? gi?? tr??? trong v??ng 60 ph??t k??? t??? l??c nh???n ???????c email.</p>', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(404, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay ?????i ???nh ?????i di???n', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(405, 1, 'vi', 'core/acl/users', 'new_image', '???nh m???i', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(406, 1, 'vi', 'core/acl/users', 'loading', '??ang t???i', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(407, 1, 'vi', 'core/acl/users', 'close', '????ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(408, 1, 'vi', 'core/acl/users', 'update', 'C???p nh???t', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(409, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Kh??ng ?????c ???????c n???i dung c???a h??nh ???nh', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(410, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'C???p nh???t ???nh ?????i di???n th??nh c??ng!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(411, 1, 'vi', 'core/acl/users', 'users', 'Qu???n tr??? vi??n', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(412, 1, 'vi', 'core/acl/users', 'info.title', 'Th??ng tin ng?????i d??ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(413, 1, 'vi', 'core/acl/users', 'info.first_name', 'H???', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(414, 1, 'vi', 'core/acl/users', 'info.last_name', 'T??n', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(415, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(416, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email d??? ph??ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(417, 1, 'vi', 'core/acl/users', 'info.address', '?????a ch???', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(418, 1, 'vi', 'core/acl/users', 'info.second_address', '?????a ch??? d??? ph??ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(419, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ng??y sinh', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(420, 1, 'vi', 'core/acl/users', 'info.job', 'Ngh??? nghi???p', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(421, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'S??? ??i???n tho???i di ?????ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(422, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'S??? ??i???n tho???i d??? ph??ng', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(423, 1, 'vi', 'core/acl/users', 'info.interes', 'S??? th??ch', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(424, 1, 'vi', 'core/acl/users', 'info.about', 'Gi???i thi???u', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(425, 1, 'vi', 'core/acl/users', 'gender.title', 'Gi???i t??nh', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(426, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(427, 1, 'vi', 'core/acl/users', 'gender.female', 'n???', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(428, 1, 'vi', 'core/acl/users', 'change_password', 'Thay ?????i m???t kh???u', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(429, 1, 'vi', 'core/acl/users', 'current_password', 'M???t kh???u hi???n t???i', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(430, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(431, 1, 'en', 'core/base/base', 'no', 'No', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(432, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(433, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(434, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(435, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(436, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(437, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(438, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(439, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(440, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(441, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(442, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(443, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(444, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(445, 1, 'en', 'core/base/base', 'image', 'Image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(446, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(447, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(448, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(449, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(450, 1, 'en', 'core/base/base', 'tools', 'Tools', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(451, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(452, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(455, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(456, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(457, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(458, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(462, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(463, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(466, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(467, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(468, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(469, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(470, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(471, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(472, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(473, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(474, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(475, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(476, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(477, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(478, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://hasa.local/admin\">clicking here</a>.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(479, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(480, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(481, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(482, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(483, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(484, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(485, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(486, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(487, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(488, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(489, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(490, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(491, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(492, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(493, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(494, 1, 'en', 'core/base/forms', 'file', 'File', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(495, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(496, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(497, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(498, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(499, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(500, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(501, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(502, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(503, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(504, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(505, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(506, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(507, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(508, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(509, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(510, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(511, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(512, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(513, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(514, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(515, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(516, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(517, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(518, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(519, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(520, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(521, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(522, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(523, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(524, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(525, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(526, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(527, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(528, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(529, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(530, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(531, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(532, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(533, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(534, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(535, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(536, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(537, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(538, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(539, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(540, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(541, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(542, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(543, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(544, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(545, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(546, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(547, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(548, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(549, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(550, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(551, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(552, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(553, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(554, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(555, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(556, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(557, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(558, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(559, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(560, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(561, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(562, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(563, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(564, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(565, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(566, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(567, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(568, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(569, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(570, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(571, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(572, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(573, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(574, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(575, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(576, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(577, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(578, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(579, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(580, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(581, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(582, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(583, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(584, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(585, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(586, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(587, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(588, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(589, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(590, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(591, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(592, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(593, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(594, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(595, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(596, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(597, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(598, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(599, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(600, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(601, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(602, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(603, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(604, 1, 'en', 'core/base/system', 'database', 'Database', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(605, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(606, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(607, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(608, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(609, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(610, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(611, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(612, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(613, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(614, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(615, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(616, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(617, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(618, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(619, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(620, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(621, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(622, 1, 'en', 'core/base/system', 'version', 'Version', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(623, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(624, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(625, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(626, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(627, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(628, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(629, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(630, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(631, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(632, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(633, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(634, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(635, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(636, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(637, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(638, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(639, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(640, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(641, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(642, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-09-18 20:34:46', '2021-09-18 20:34:46'),
(643, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(644, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(645, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(646, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(647, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(648, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(649, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(650, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(651, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(652, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(653, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(654, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(655, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(656, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(657, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(658, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(659, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(660, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(661, 1, 'en', 'core/base/tables', 'all', 'All', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(662, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(663, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(664, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(665, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(666, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(667, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(668, 1, 'en', 'core/base/tables', 'to', 'to', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(669, 1, 'en', 'core/base/tables', 'in', 'in', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(670, 1, 'en', 'core/base/tables', 'records', 'records', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(671, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(672, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(673, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(674, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(675, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(676, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(677, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(678, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(679, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(680, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(681, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(682, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(683, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(684, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(685, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(686, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(687, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(688, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(689, 1, 'vi', 'core/base/cache', 'cache_management', 'Qu???n l?? b??? nh??? ?????m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(690, 1, 'vi', 'core/base/cache', 'cache_commands', 'C??c l???nh xo?? b??? nh??? ?????m c?? b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'X??a t???t c??? b??? ?????m hi???n c?? c???a ???ng d???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'X??a c??c b??? nh??? ?????m c???a ???ng d???ng: c?? s??? d??? li???u, n???i dung t??nh... Ch???y l???nh n??y khi b???n th??? c???p nh???t d??? li???u nh??ng giao di???n kh??ng thay ?????i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(693, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'B??? ?????m ???? ???????c x??a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(694, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'L??m m???i b??? ?????m giao di???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(695, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'L??m m???i b??? ?????m giao di???n gi??p ph???n giao di???n lu??n m???i nh???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(696, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'B??? ?????m giao di???n ???? ???????c l??m m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'X??a b??? nh??? ?????m c???a ph???n c???u h??nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(698, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'B???n c???n l??m m???i b??? ?????m c???u h??nh khi b???n t???o ra s??? thay ?????i n??o ???? ??? m??i tr?????ng th??nh ph???m.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(699, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'B??? ?????m c???u h??nh ???? ???????c x??a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(700, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xo?? cache ???????ng d???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(701, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'C???n th???c hi???n thao t??c n??y khi th???y kh??ng xu???t hi???n ???????ng d???n m???i.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(702, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'B??? ?????m ??i???u h?????ng ???? b??? x??a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(703, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xo?? l???ch s??? l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(704, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'L???ch s??? l???i ???? ???????c l??m s???ch', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(705, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xo?? l???ch s??? l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(706, 1, 'vi', 'core/base/enums', 'statuses.draft', 'B???n nh??p', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(707, 1, 'vi', 'core/base/enums', 'statuses.pending', '??ang ch??? x??? l??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(708, 1, 'vi', 'core/base/errors', '401_title', 'Ba??n kh??ng co?? quy????n truy c????p trang na??y', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(709, 1, 'vi', 'core/base/errors', '401_msg', '<li>Ba??n kh??ng ????????c c????p quy????n truy c????p b????i qua??n tri?? vi??n.</li>\n	                <li>Ba??n s???? du??ng sai loa??i ta??i khoa??n.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(710, 1, 'vi', 'core/base/errors', '404_title', 'Kh??ng ti??m th????y trang y??u c????u', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(711, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(712, 1, 'vi', 'core/base/errors', '500_title', 'Kh??ng th???? ta??i trang', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(713, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(714, 1, 'vi', 'core/base/errors', 'reasons', '??i???u n??y c?? th??? x???y ra v?? nhi???u l?? do.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(715, 1, 'vi', 'core/base/errors', 'try_again', 'Vui l??ng th??? l???i trong v??i ph??t, ho???c quay tr??? l???i trang chu?? b???ng ca??ch <a href=\"http://cms.local/admin\"> nh???n v??o ????y </a>.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(716, 1, 'vi', 'core/base/forms', 'choose_image', 'Ch???n ???nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(717, 1, 'vi', 'core/base/forms', 'actions', 'T??c v???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(718, 1, 'vi', 'core/base/forms', 'save', 'L??u', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(719, 1, 'vi', 'core/base/forms', 'save_and_continue', 'L??u & ch???nh s???a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(720, 1, 'vi', 'core/base/forms', 'image', 'H??nh ???nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(721, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Ch??n ???????ng d???n h??nh ???nh ho???c nh???n n??t ????? ch???n h??nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(722, 1, 'vi', 'core/base/forms', 'create', 'T???o m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(723, 1, 'vi', 'core/base/forms', 'edit', 'S???a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(724, 1, 'vi', 'core/base/forms', 'permalink', '????????ng d????n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(725, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(726, 1, 'vi', 'core/base/forms', 'cancel', 'Hu??y bo??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(727, 1, 'vi', 'core/base/forms', 'character_remain', 'k?? t??? c??n l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(728, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(729, 1, 'vi', 'core/base/forms', 'choose_file', 'Ch???n t???p tin', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(730, 1, 'vi', 'core/base/forms', 'file', 'T???p tin', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(731, 1, 'vi', 'core/base/forms', 'content', 'N???i dung', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(732, 1, 'vi', 'core/base/forms', 'description', 'M?? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(733, 1, 'vi', 'core/base/forms', 'name', 'T??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(734, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nh???p t??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(735, 1, 'vi', 'core/base/forms', 'description_placeholder', 'M?? t??? ng???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(736, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(737, 1, 'vi', 'core/base/forms', 'icon', 'Bi???u t?????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(738, 1, 'vi', 'core/base/forms', 'order_by', 'S???p x???p', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(739, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'S???p x???p', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(740, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(741, 1, 'vi', 'core/base/forms', 'is_featured', 'N???i b???t?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(742, 1, 'vi', 'core/base/forms', 'is_default', 'M???c ?????nh?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(743, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'V?? d???: fa fa-home', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(744, 1, 'vi', 'core/base/forms', 'update', 'C???p nh???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(745, 1, 'vi', 'core/base/forms', 'publish', 'Xu???t b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(746, 1, 'vi', 'core/base/forms', 'remove_image', 'Xo?? ???nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(747, 1, 'vi', 'core/base/forms', 'add', 'Th??m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(748, 1, 'vi', 'core/base/forms', 'add_short_code', 'Th??m shortcode', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(749, 1, 'vi', 'core/base/forms', 'alias', 'M?? thay th???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(750, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'M?? thay th???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(751, 1, 'vi', 'core/base/forms', 'basic_information', 'Th??ng tin c?? b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(752, 1, 'vi', 'core/base/forms', 'link', 'Li??n k???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(753, 1, 'vi', 'core/base/forms', 'order', 'Th??? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(754, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(755, 1, 'vi', 'core/base/forms', 'title', 'Ti??u ?????', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(756, 1, 'vi', 'core/base/forms', 'value', 'Gi?? tr???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(757, 1, 'vi', 'core/base/forms', 'show_hide_editor', '???n/Hi???n tr??nh so???n th???o', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(758, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Th??ng tin c?? b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(759, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Qu???n tr??? h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(760, 1, 'vi', 'core/base/layouts', 'dashboard', 'B???ng ??i???u khi???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(761, 1, 'vi', 'core/base/layouts', 'widgets', 'Ti???n ??ch', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(762, 1, 'vi', 'core/base/layouts', 'plugins', 'Ti???n ??ch m??? r???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(763, 1, 'vi', 'core/base/layouts', 'settings', 'C??i ?????t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(764, 1, 'vi', 'core/base/layouts', 'setting_general', 'C?? b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(765, 1, 'vi', 'core/base/layouts', 'system_information', 'Th??ng tin h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(766, 1, 'vi', 'core/base/layouts', 'theme', 'Giao di???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(767, 1, 'vi', 'core/base/layouts', 'copyright', 'B???n quy???n :year &copy; :company. Phi??n b???n: <span>:version</span>', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(768, 1, 'vi', 'core/base/layouts', 'profile', 'Th??ng tin c?? nh??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(769, 1, 'vi', 'core/base/layouts', 'logout', '????ng xu???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(770, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Kh??ng c?? k???t qu??? t??m ki???m, h??y th??? l???i v???i t??? kh??a kh??c.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(771, 1, 'vi', 'core/base/layouts', 'home', 'Trang ch???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(772, 1, 'vi', 'core/base/layouts', 'search', 'T??m ki???m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(773, 1, 'vi', 'core/base/layouts', 'add_new', 'Th??m m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(774, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(775, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang t???i xong trong', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(776, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngo??i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(777, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(778, 1, 'vi', 'core/base/mail', 'send-fail', 'G????i email kh??ng tha??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(779, 1, 'vi', 'core/base/notices', 'create_success_message', 'T???o th??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(780, 1, 'vi', 'core/base/notices', 'update_success_message', 'C???p nh???t th??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(781, 1, 'vi', 'core/base/notices', 'delete_success_message', 'X??a th??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(782, 1, 'vi', 'core/base/notices', 'success_header', 'Th??nh c??ng!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(783, 1, 'vi', 'core/base/notices', 'error_header', 'L???i!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(784, 1, 'vi', 'core/base/notices', 'no_select', 'Cho??n i??t nh????t 1 tr?????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(785, 1, 'vi', 'core/base/notices', 'processing_request', 'H??? th???ng ??ang x??? l?? y??u c???u.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(786, 1, 'vi', 'core/base/notices', 'error', 'L???i!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(787, 1, 'vi', 'core/base/notices', 'success', 'Th??nh c??ng!', '2021-09-18 20:34:47', '2021-09-18 20:34:47');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(788, 1, 'vi', 'core/base/notices', 'info', 'Th??ng tin!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(789, 1, 'vi', 'core/base/system', 'no_select', 'Ha??y cho??n i??t nh????t 1 tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(790, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Kh??ng th???? ta??i ????????c th??ng tin ng??????i du??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(791, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quy????n qua??n tri?? vi??n cao nh????t ??a?? ????????c g???? bo??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(792, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Kh??ng th??? g??? b??? quy???n qu???n tr??? c???p cao c???a ch??nh b???n!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(793, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Ba??n kh??ng co?? quy????n xo??a qua??n tri?? vi??n c????p cao', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(794, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Kh??ng th???? ti??m th????y ng??????i du??ng v????i email na??y', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(795, 1, 'vi', 'core/base/system', 'supper_granted', 'Quy????n qua??n tri?? cao nh????t ??a?? ????????c ga??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(796, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xo??a t????p tin log tha??nh c??ng!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(797, 1, 'vi', 'core/base/system', 'get_member_success', 'Hi????n thi?? danh sa??ch tha??nh vi??n tha??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(798, 1, 'vi', 'core/base/system', 'error_occur', 'C?? l???i d?????i ????y', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(799, 1, 'vi', 'core/base/system', 'role_and_permission', 'Ph??n quy????n h???? th????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(800, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Qua??n ly?? nh????ng ph??n quy????n trong h???? th????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(801, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sa??ch qua??n tri?? vi??n c????p cao', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(802, 1, 'vi', 'core/base/system', 'user.username', 'T??n ????ng nh????p', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(803, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(804, 1, 'vi', 'core/base/system', 'user.last_login', '????ng nh????p l????n cu????i	', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(805, 1, 'vi', 'core/base/system', 'user.add_user', 'Th??m qua??n tri?? vi??n c????p cao', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(806, 1, 'vi', 'core/base/system', 'user.cancel', 'Hu??y bo??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(807, 1, 'vi', 'core/base/system', 'user.create', 'Th??m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(808, 1, 'vi', 'core/base/system', 'options.features', 'Ki????m soa??t truy c????p ca??c ti??nh n??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(809, 1, 'vi', 'core/base/system', 'options.feature_description', 'B????t/t????t ca??c ti??nh n??ng.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(810, 1, 'vi', 'core/base/system', 'options.manage_super', 'Qua??n ly?? qua??n tri?? vi??n c????p cao', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(811, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Th??m/xo??a qua??n tri?? vi??n c????p cao', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(812, 1, 'vi', 'core/base/system', 'options.info', 'Th??ng tin h???? th????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(813, 1, 'vi', 'core/base/system', 'options.info_description', 'Nh????ng th??ng tin v???? c????u hi??nh hi????n ta??i cu??a h???? th????ng.', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(814, 1, 'vi', 'core/base/system', 'info.title', 'Th??ng tin h???? th????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(815, 1, 'vi', 'core/base/system', 'info.cache', 'B??? nh??? ?????m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(816, 1, 'vi', 'core/base/system', 'info.environment', 'M??i tr?????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(817, 1, 'vi', 'core/base/system', 'info.locale', 'Ng??n ng??? h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(818, 1, 'vi', 'core/base/system', 'user_management', 'Qu???n l?? th??nh vi??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(819, 1, 'vi', 'core/base/system', 'user_management_description', 'Qu???n l?? ng?????i d??ng trong h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(820, 1, 'vi', 'core/base/system', 'app_size', 'K??ch th?????c ???ng d???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(821, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'C?? th??? ghi b??? nh??? ?????m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(822, 1, 'vi', 'core/base/system', 'cache_driver', 'Lo???i l??u tr??? b??? nh??? ?????m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(823, 1, 'vi', 'core/base/system', 'copy_report', 'Sao ch??p b??o c??o', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(824, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(825, 1, 'vi', 'core/base/system', 'database', 'H??? th???ng d??? li???u', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(826, 1, 'vi', 'core/base/system', 'debug_mode', 'Ch??? ????? s???a l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(827, 1, 'vi', 'core/base/system', 'dependency_name', 'T??n g??i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(828, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(829, 1, 'vi', 'core/base/system', 'extra_information', 'Th??ng tin m??? r???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(830, 1, 'vi', 'core/base/system', 'extra_stats', 'Th???ng k?? th??m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(831, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(832, 1, 'vi', 'core/base/system', 'framework_version', 'Phi??n b???n framework', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(833, 1, 'vi', 'core/base/system', 'get_system_report', 'L???y th??ng tin h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(834, 1, 'vi', 'core/base/system', 'installed_packages', 'C??c g??i ???? c??i ?????t v?? phi??n b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(835, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(836, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(837, 1, 'vi', 'core/base/system', 'package_name', 'T??n g??i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(838, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(839, 1, 'vi', 'core/base/system', 'php_version', 'Phi??n b???n PHP', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(840, 1, 'vi', 'core/base/system', 'report_description', 'Vui l??ng chia s??? th??ng tin n??y nh???m m???c ????ch ??i???u tra nguy??n nh??n g??y l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(841, 1, 'vi', 'core/base/system', 'server_environment', 'M??i tr?????ng m??y ch???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(842, 1, 'vi', 'core/base/system', 'server_os', 'H??? ??i???u h??nh c???a m??y ch???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(843, 1, 'vi', 'core/base/system', 'server_software', 'Ph???n m???m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(844, 1, 'vi', 'core/base/system', 'session_driver', 'Lo???i l??u tr??? phi??n l??m vi???c', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(845, 1, 'vi', 'core/base/system', 'ssl_installed', '???? c??i ?????t ch???ng ch??? SSL', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(846, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'C?? th??? l??u tr??? d??? li???u t???m', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(847, 1, 'vi', 'core/base/system', 'system_environment', 'M??i tr?????ng h??? th???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(848, 1, 'vi', 'core/base/system', 'timezone', 'M??i gi???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(849, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(850, 1, 'vi', 'core/base/system', 'version', 'Phi??n b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(851, 1, 'vi', 'core/base/system', 'cms_version', 'Phi??n b???n CMS', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(852, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(853, 1, 'vi', 'core/base/tables', 'name', 'T??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(854, 1, 'vi', 'core/base/tables', 'order_by', 'Th??? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(855, 1, 'vi', 'core/base/tables', 'status', 'Tr???ng th??i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(856, 1, 'vi', 'core/base/tables', 'created_at', 'Ng??y t???o', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(857, 1, 'vi', 'core/base/tables', 'updated_at', 'Ng??y c???p nh???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(858, 1, 'vi', 'core/base/tables', 'operations', 'T??c v???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(859, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(860, 1, 'vi', 'core/base/tables', 'author', 'Ng??????i ta??o', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(861, 1, 'vi', 'core/base/tables', 'column', 'C????t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(862, 1, 'vi', 'core/base/tables', 'origin', 'Ba??n cu??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(863, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay ??????i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(864, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chu??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(865, 1, 'vi', 'core/base/tables', 'activated', 'k??ch ho???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(866, 1, 'vi', 'core/base/tables', 'browser', 'Tr??nh duy???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(867, 1, 'vi', 'core/base/tables', 'deactivated', 'h???y k??ch ho???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(868, 1, 'vi', 'core/base/tables', 'description', 'M?? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(869, 1, 'vi', 'core/base/tables', 'session', 'Phi??n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(870, 1, 'vi', 'core/base/tables', 'views', 'L?????t xem', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(871, 1, 'vi', 'core/base/tables', 'restore', 'Kh??i ph???c', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(872, 1, 'vi', 'core/base/tables', 'edit', 'S???a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(873, 1, 'vi', 'core/base/tables', 'delete', 'X??a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(874, 1, 'vi', 'core/base/tables', 'action', 'H??nh ?????ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(875, 1, 'vi', 'core/base/tables', 'activate', 'K??ch ho???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(876, 1, 'vi', 'core/base/tables', 'add_new', 'Th??m m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(877, 1, 'vi', 'core/base/tables', 'all', 'T???t c???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(878, 1, 'vi', 'core/base/tables', 'cancel', 'H???y b???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(879, 1, 'vi', 'core/base/tables', 'confirm_delete', 'X??c nh???n x??a', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(880, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n x??a b???n ghi n??y?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(881, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(882, 1, 'vi', 'core/base/tables', 'deactivate', 'H???y k??ch ho???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(883, 1, 'vi', 'core/base/tables', 'delete_entry', 'X??a b???n ghi', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(884, 1, 'vi', 'core/base/tables', 'display', 'Hi???n th???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(885, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(886, 1, 'vi', 'core/base/tables', 'export', 'Xu???t b???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(887, 1, 'vi', 'core/base/tables', 'in', 'trong t???ng s???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(888, 1, 'vi', 'core/base/tables', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(889, 1, 'vi', 'core/base/tables', 'no_record', 'Kh??ng c?? d??? li???u', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(890, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(891, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(892, 1, 'vi', 'core/base/tables', 'records', 'b???n ghi', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(893, 1, 'vi', 'core/base/tables', 'reload', 'T???i l???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(894, 1, 'vi', 'core/base/tables', 'reset', 'L??m m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(895, 1, 'vi', 'core/base/tables', 'save', 'L??u', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(896, 1, 'vi', 'core/base/tables', 'show_from', 'Hi???n th??? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(897, 1, 'vi', 'core/base/tables', 'template', 'Giao di???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(898, 1, 'vi', 'core/base/tables', 'to', '?????n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(899, 1, 'vi', 'core/base/tables', 'view', 'Xem chi ti???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(900, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(901, 1, 'vi', 'core/base/tables', 'image', 'H??nh ???nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(902, 1, 'vi', 'core/base/tables', 'is_featured', 'N???i b???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(903, 1, 'vi', 'core/base/tables', 'last_login', 'L???n cu???i ????ng nh???p', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(904, 1, 'vi', 'core/base/tables', 'order', 'Th??? t???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(905, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(906, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(907, 1, 'vi', 'core/base/tables', 'title', 'Ti??u ?????', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(908, 1, 'vi', 'core/base/tabs', 'detail', 'Chi ti???t', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(909, 1, 'vi', 'core/base/tabs', 'file', 'T???p tin', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(910, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi ch??', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(911, 1, 'vi', 'core/base/tabs', 'revision', 'L???ch s??? thay ?????i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(912, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(913, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(914, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(915, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(916, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(917, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(918, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(919, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(920, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(921, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(922, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(923, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(924, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(925, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(926, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'H???y b???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(927, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'M??? r???ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(928, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'B???n c?? ch???c?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'V??ng, ???n ti???n ??ch n??y', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'hide', '???n', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'B???n c?? ch???c ch???n mu???n ???n ti???n ??ch n??y? N?? s??? kh??ng ???????c hi???n th??? tr??n trang ch??? n???a!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', '???n ti???n ??ch th??nh c??ng!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Qu???n l?? ti???n ??ch', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'L??m m???i', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'L??u ti???n ??ch th??nh c??ng', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'C???p nh???t v??? tr?? ti???n ??ch th??nh c??ng!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Ti???n ??ch n??y kh??ng t???n t???i!', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(938, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'To??n m??n h??nh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(939, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang qu???n tr???', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(940, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(941, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(942, 1, 'en', 'core/media/media', 'image', 'Image', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(943, 1, 'en', 'core/media/media', 'video', 'Video', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(944, 1, 'en', 'core/media/media', 'document', 'Document', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(945, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(946, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(947, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(948, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(949, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(950, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(951, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(952, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(953, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(954, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(955, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(956, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(957, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(958, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(959, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(960, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(961, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(962, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(963, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(964, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(965, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(966, 1, 'en', 'core/media/media', 'create', 'Create', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(967, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(968, 1, 'en', 'core/media/media', 'close', 'Close', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(969, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(970, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(971, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(972, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(973, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(974, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(975, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(976, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-09-18 20:34:47', '2021-09-18 20:34:47'),
(977, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(978, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(979, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(980, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(981, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(982, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(983, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(984, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(985, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(986, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(987, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(988, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(989, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(990, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(991, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(992, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(993, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(994, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(995, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(996, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(997, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(998, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(999, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1000, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1001, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1002, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1003, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1004, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1005, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1006, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1007, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1008, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1009, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1010, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1011, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1012, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1013, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1014, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1015, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1026, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1027, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1028, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1029, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1030, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1031, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1032, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1033, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1034, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1035, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1036, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1037, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1040, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1041, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1042, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1043, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1044, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1045, 1, 'en', 'core/media/media', 'download_link', 'Download', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1046, 1, 'en', 'core/media/media', 'url', 'URL', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1047, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1048, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1049, 1, 'vi', 'core/media/media', 'filter', 'L???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1050, 1, 'vi', 'core/media/media', 'everything', 'T???t c???', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1051, 1, 'vi', 'core/media/media', 'image', 'H??nh ???nh', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1052, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1053, 1, 'vi', 'core/media/media', 'document', 'T??i li???u', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1054, 1, 'vi', 'core/media/media', 'view_in', 'Ch??? ????? xem', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1055, 1, 'vi', 'core/media/media', 'all_media', 'T???t c??? t???p tin', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1056, 1, 'vi', 'core/media/media', 'trash', 'Th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1057, 1, 'vi', 'core/media/media', 'recent', 'G???n ????y', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1058, 1, 'vi', 'core/media/media', 'favorites', '???????c g???n d???u sao', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1059, 1, 'vi', 'core/media/media', 'upload', 'T???i l??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1060, 1, 'vi', 'core/media/media', 'create_folder', 'T???o th?? m???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1061, 1, 'vi', 'core/media/media', 'refresh', 'L??m m???i', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1062, 1, 'vi', 'core/media/media', 'empty_trash', 'D???n th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1063, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'T??m ki???m t???p tin v?? th?? m???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1064, 1, 'vi', 'core/media/media', 'sort', 'S???p x???p', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1065, 1, 'vi', 'core/media/media', 'file_name_asc', 'T??n t???p tin - ASC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1066, 1, 'vi', 'core/media/media', 'file_name_desc', 'T??n t???p tin - DESC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1067, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ng??y t???i l??n - ASC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1068, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ng??y t???i l??n - DESC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1069, 1, 'vi', 'core/media/media', 'size_asc', 'K??ch th?????c - ASC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1070, 1, 'vi', 'core/media/media', 'size_desc', 'K??ch th?????c - DESC', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1071, 1, 'vi', 'core/media/media', 'actions', 'H??nh ?????ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1072, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Kh??ng c?? t???p tin n??o ???????c ch???n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1073, 1, 'vi', 'core/media/media', 'insert', 'Ch??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1074, 1, 'vi', 'core/media/media', 'folder_name', 'T??n th?? m???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1075, 1, 'vi', 'core/media/media', 'create', 'T???o', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1076, 1, 'vi', 'core/media/media', 'rename', '?????i t??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1077, 1, 'vi', 'core/media/media', 'close', '????ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1078, 1, 'vi', 'core/media/media', 'save_changes', 'L??u thay ?????i', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1079, 1, 'vi', 'core/media/media', 'move_to_trash', '????a v??o th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1080, 1, 'vi', 'core/media/media', 'confirm_trash', 'B???n c?? ch???c ch???n mu???n b??? nh???ng t???p tin n??y v??o th??ng r??c?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1081, 1, 'vi', 'core/media/media', 'confirm', 'X??c nh???n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1082, 1, 'vi', 'core/media/media', 'confirm_delete', 'X??a t???p tin', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1083, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n x??a c??c t???p tin n??y?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1084, 1, 'vi', 'core/media/media', 'empty_trash_title', 'D???n s???ch th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1085, 1, 'vi', 'core/media/media', 'empty_trash_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n d???n s???ch th??ng r??c?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1086, 1, 'vi', 'core/media/media', 'up_level', 'Quay l???i m???t c???p', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1087, 1, 'vi', 'core/media/media', 'upload_progress', 'Ti???n tr??nh t???i l??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1088, 1, 'vi', 'core/media/media', 'folder_created', 'T???o th?? m???c th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1089, 1, 'vi', 'core/media/media', 'gallery', 'Th?? vi???n t???p tin', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1090, 1, 'vi', 'core/media/media', 'trash_error', 'C?? l???i khi x??a t???p tin/th?? m???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1091, 1, 'vi', 'core/media/media', 'trash_success', 'X??a t???p tin/th?? m???c th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1092, 1, 'vi', 'core/media/media', 'restore_error', 'C?? l???i trong qu?? tr??nh kh??i ph???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1093, 1, 'vi', 'core/media/media', 'restore_success', 'Kh??i ph???c th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1094, 1, 'vi', 'core/media/media', 'copy_success', 'Sao ch??p th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1095, 1, 'vi', 'core/media/media', 'delete_success', 'X??a th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1096, 1, 'vi', 'core/media/media', 'favorite_success', 'Th??m d???u sao th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1097, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'B??? d???u sao th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1098, 1, 'vi', 'core/media/media', 'rename_error', 'C?? l???i trong qu?? tr??nh ?????i t??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1099, 1, 'vi', 'core/media/media', 'rename_success', '?????i t??n th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1100, 1, 'vi', 'core/media/media', 'invalid_action', 'H??nh ?????ng kh??ng h???p l???!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1101, 1, 'vi', 'core/media/media', 'file_not_exists', 'T???p tin kh??ng t???n t???i!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1102, 1, 'vi', 'core/media/media', 'download_file_error', 'C?? l???i trong qu?? tr??nh t???i xu???ng t???p tin!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1103, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'H??y b???t ZipArchive extension ????? t???i t???p tin!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1104, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Kh??ng th??? t???i t???p tin!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1105, 1, 'vi', 'core/media/media', 'invalid_request', 'Y??u c???u kh??ng h???p l???!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1106, 1, 'vi', 'core/media/media', 'add_success', 'Th??m th??nh c??ng!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1107, 1, 'vi', 'core/media/media', 'file_too_big', 'T???p tin qu?? l???n. Gi???i h???n t???i l??n l?? :size bytes', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1108, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Lo???i t???p tin kh??ng h???p l??? ho???c kh??ng th??? x??c ?????nh lo???i t???p tin!', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1109, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1110, 1, 'vi', 'core/media/media', 'menu_name', 'Qu???n l?? t???p tin', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1111, 1, 'vi', 'core/media/media', 'add', 'Th??m t???p tin', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1112, 1, 'vi', 'core/media/media', 'javascript.name', 'T??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1113, 1, 'vi', 'core/media/media', 'javascript.url', '???????ng d???n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1114, 1, 'vi', 'core/media/media', 'javascript.full_url', '???????ng d???n tuy???t ?????i', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1115, 1, 'vi', 'core/media/media', 'javascript.size', 'K??ch th?????c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1116, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Lo???i', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1117, 1, 'vi', 'core/media/media', 'javascript.created_at', '???????c t???i l??n l??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1118, 1, 'vi', 'core/media/media', 'javascript.updated_at', '???????c ch???nh s???a l??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1119, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'B???n ch??a ch???n t???p tin n??o', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1120, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'M??? li??n k???t', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1121, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1122, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'B???n c?? th??? k??o th??? t???p tin v??o ????y ????? t???i l??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1123, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Ho???c c?? th??? b???m n??t T???i l??n ??? ph??a tr??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1124, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1125, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hi???n t???i kh??ng c?? t???p tin n??o trong th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1126, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'X??a t???p tin s??? ??em t???p tin l??u v??o th??ng r??c. X??a t???p tin trong th??ng r??c s??? x??a v??nh vi???n.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1127, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1128, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'B???n ch??a ?????t t???p tin n??o v??o m???c y??u th??ch', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1129, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Th??m t???p tin v??o m???c y??u th??ch ????? t??m ki???m ch??ng d??? d??ng sau n??y.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1130, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1131, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'B???n ch??a m??? t???p tin n??o.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1132, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'M???c n??y hi???n th??? c??c t???p tin b???n ???? xem g???n ????y.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1133, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1134, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Th?? m???c tr???ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1135, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Th?? m???c n??y ch??a c?? t???p tin n??o', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1136, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', '???????ng d???n c???a c??c t???p tin ???? ???????c sao ch??p v??o clipboard', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1137, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'L???i', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1138, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Th??nh c??ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1139, 1, 'vi', 'core/media/media', 'javascript.download.error', 'B???n ch??a ch???n t???p tin n??o ho???c t???p tin n??y kh??ng cho ph??p t???i v???', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1140, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem tr?????c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1141, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao ch??p ???????ng d???n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1142, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', '?????i t??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1143, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nh??n b???n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1144, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Y??u th??ch', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1145, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'X??a kh???i m???c y??u th??ch', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1146, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'T???i xu???ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1147, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuy???n v??o th??ng r??c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1148, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'X??a ho??n to??n', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1149, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Kh??i ph???c', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1150, 1, 'vi', 'core/media/media', 'empty_trash_success', 'D???n s???ch th??ng r??c th??nh c??ng', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1151, 1, 'vi', 'core/media/media', 'name_invalid', 'T??n th?? m???c ch???a k?? t??? kh??ng h???p l???', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1152, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1153, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1154, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1155, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1156, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1157, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1158, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1159, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1160, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1161, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1162, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1163, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1164, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1165, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1166, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1167, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1168, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1169, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1170, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1171, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1172, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1173, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1174, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1175, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1176, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1177, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1178, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1179, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1180, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1181, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1182, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1183, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1184, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-09-18 20:34:48', '2021-09-18 20:34:48');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1185, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1186, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1187, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1188, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1189, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1190, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1191, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1192, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1193, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1194, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1195, 1, 'en', 'core/setting/setting', 'general.select', '??? Select ???', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1196, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1197, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1198, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1199, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1201, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1202, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1203, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1204, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1205, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1206, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1207, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1208, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1209, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1210, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1211, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1212, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1213, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1214, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1215, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1216, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1217, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1218, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1219, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1220, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1221, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1222, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1223, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1224, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1225, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1226, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1227, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1228, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1229, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1230, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1231, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1232, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1233, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1234, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1235, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1236, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1237, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1238, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1239, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1240, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1241, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1242, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1243, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1244, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1245, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1246, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1247, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1248, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1249, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1250, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1251, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1252, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1253, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1254, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1255, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1256, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1257, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1258, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1259, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1260, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1261, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1262, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1263, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1264, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1265, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1266, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1267, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1268, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1269, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1270, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1271, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1272, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1273, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1274, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1275, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1276, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1277, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1278, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1279, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1280, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1281, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1282, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1285, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1286, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(1287, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1288, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1289, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1290, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1291, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1292, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1293, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1294, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1295, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1296, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1297, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1298, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1299, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1300, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1301, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1302, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1303, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1304, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1305, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1306, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1307, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1308, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1309, 1, 'vi', 'core/setting/setting', 'title', 'Ca??i ??????t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1310, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao di???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1311, 1, 'vi', 'core/setting/setting', 'general.description', 'C????u hi??nh nh????ng th??ng tin ca??i ??????t website.', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1312, 1, 'vi', 'core/setting/setting', 'general.title', 'Th??ng tin chung', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1313, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Th??ng tin chung', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1314, 1, 'vi', 'core/setting/setting', 'general.site_title', 'T??n trang', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1315, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email qua??n tri?? vi??n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1316, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'C???u hi??nh SEO', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1317, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Ti??u ????? SEO', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1318, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'M?? t??? SEO', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1319, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1320, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'T??n trang (t????i ??a 120 ki?? t????)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1322, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1323, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'V?? d???: UA-42767940-2', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1324, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'M?? x??c nh???n trang web d??ng cho Google Webmaster Tool', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1325, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Ti??u ????? SEO (t????i ??a 120 ki?? t????)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1326, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'M?? t??? SEO (t????i ??a 120 ki?? t????)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1327, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho ph??p thay ?????i giao di???n qu???n tr????', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1328, 1, 'vi', 'core/setting/setting', 'general.enable', 'B???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1329, 1, 'vi', 'core/setting/setting', 'general.disable', 'T???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1330, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'B???t b??? nh??? ?????m?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1331, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Th???i gian l??u b??? nh??? ?????m (ph??t)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1332, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Th???i gian l??u s?? ????? trang trong b??? nh??? ?????m', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1333, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang qu???n tr???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1334, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Ti??u ????? trang qu???n tr???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1335, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Ti??u ????? hi???n th??? tr??n th??? tr??nh duy???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1336, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'B??? so???n th???o v??n b???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1337, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'B??? nh??? ?????m', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1338, 1, 'vi', 'core/setting/setting', 'general.yes', 'B???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1339, 1, 'vi', 'core/setting/setting', 'general.no', 'T???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1340, 1, 'vi', 'core/setting/setting', 'email.subject', 'Ti??u ?????', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1341, 1, 'vi', 'core/setting/setting', 'email.content', 'N???i dung', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1342, 1, 'vi', 'core/setting/setting', 'email.title', 'C???u h??nh email template', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1343, 1, 'vi', 'core/setting/setting', 'email.description', 'C???u tr??c file template s??? d???ng HTML v?? c??c bi???n trong h??? th???ng.', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1344, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Kh??i ph???c v??? m???c ?????nh', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1345, 1, 'vi', 'core/setting/setting', 'email.back', 'Tr??? l???i trang c??i ?????t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1346, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Kh??i ph???c m???c ?????nh th??nh c??ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1347, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'X??c nh???n kh??i ph???c m???c ?????nh?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1348, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'B???n c?? ch???c ch???n mu???n kh??i ph???c v??? b???n m???c ?????nh?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1349, 1, 'vi', 'core/setting/setting', 'email.continue', 'Ti???p t???c', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1350, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'T??n ng?????i g???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1351, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'T??n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1352, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email c???a ng?????i g???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1353, 1, 'vi', 'core/setting/setting', 'email.port', 'C???ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1354, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'V?? d???: 587', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1355, 1, 'vi', 'core/setting/setting', 'email.host', 'M??y ch???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1356, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'V?? d???: smtp.gmail.com', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1357, 1, 'vi', 'core/setting/setting', 'email.username', 'T??n ????ng nh???p', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1358, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'T??n ????ng nh???p v??o m??y ch??? mail', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1359, 1, 'vi', 'core/setting/setting', 'email.password', 'M???t kh???u', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1360, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'M???t kh???u ????ng nh???p v??o m??y ch??? mail', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1361, 1, 'vi', 'core/setting/setting', 'email.encryption', 'M?? ho??', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1362, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'T??n mi???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1363, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'T??n mi???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1364, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chu???i b?? m???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1365, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chu???i b?? m???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1366, 1, 'vi', 'core/setting/setting', 'email.template_title', 'M???u giao di???n email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1367, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao di???n m???c ?????nh cho t???t c??? email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1368, 1, 'vi', 'core/setting/setting', 'email.template_header', 'M???u cho ph???n tr??n c???a email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1369, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Ph???n tr??n c???a t???t c??? email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1370, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'M???u cho ph???n d?????i c???a email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1371, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Ph???n d?????i c???a t???t c??? email', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1372, 1, 'vi', 'core/setting/setting', 'save_settings', 'L??u c??i ?????t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1373, 1, 'vi', 'core/setting/setting', 'template', 'M???u', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1374, 1, 'vi', 'core/setting/setting', 'description', 'M?? t???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1375, 1, 'vi', 'core/setting/setting', 'enable', 'B???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1376, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'G???i th??? nghi???m', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1377, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1378, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1379, 1, 'en', 'core/table/general', 'display', 'Display', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1380, 1, 'en', 'core/table/general', 'all', 'All', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1381, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1382, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1383, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1384, 1, 'en', 'core/table/general', 'to', 'to', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1385, 1, 'en', 'core/table/general', 'in', 'in', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1386, 1, 'en', 'core/table/general', 'records', 'records', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1387, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1388, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1389, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1390, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1391, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1392, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1393, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1394, 1, 'en', 'core/table/general', 'close', 'Close', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1395, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1396, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1397, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1398, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1399, 1, 'en', 'core/table/general', 'value', 'Value', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1400, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1401, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1402, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1403, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1404, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1405, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1406, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1407, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1408, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1409, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1410, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1411, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1412, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1413, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1414, 1, 'en', 'core/table/table', 'display', 'Display', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1415, 1, 'en', 'core/table/table', 'all', 'All', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1416, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1417, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1418, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1419, 1, 'en', 'core/table/table', 'to', 'to', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1420, 1, 'en', 'core/table/table', 'in', 'in', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1421, 1, 'en', 'core/table/table', 'records', 'records', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1422, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1423, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1424, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1425, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1426, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1427, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1428, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1429, 1, 'en', 'core/table/table', 'close', 'Close', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1430, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1431, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1432, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1433, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1434, 1, 'en', 'core/table/table', 'value', 'Value', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1435, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1436, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1437, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1438, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1439, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1440, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1441, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1442, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1443, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1444, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1445, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1446, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1447, 1, 'vi', 'core/table/general', 'operations', 'H??nh ?????ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1448, 1, 'vi', 'core/table/general', 'loading_data', '??ang t???i d??? li???u t??? h??? th???ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1449, 1, 'vi', 'core/table/general', 'display', 'Hi???n th???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1450, 1, 'vi', 'core/table/general', 'all', 'T???t c???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1451, 1, 'vi', 'core/table/general', 'edit_entry', 'S???a', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1452, 1, 'vi', 'core/table/general', 'delete_entry', 'Xo??', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1453, 1, 'vi', 'core/table/general', 'show_from', 'Hi???n th??? t???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1454, 1, 'vi', 'core/table/general', 'to', '?????n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1455, 1, 'vi', 'core/table/general', 'in', 'trong t???ng s???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1456, 1, 'vi', 'core/table/general', 'records', 'b???n ghi', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1457, 1, 'vi', 'core/table/general', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1458, 1, 'vi', 'core/table/general', 'no_record', 'kh??ng c?? b???n ghi n??o', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1459, 1, 'vi', 'core/table/general', 'loading', '??ang t???i d??? li???u t??? h??? th???ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1460, 1, 'vi', 'core/table/general', 'confirm_delete', 'X??c nh???n xo??', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1461, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n xo?? b???n ghi n??y?', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1462, 1, 'vi', 'core/table/general', 'cancel', 'Hu??? b???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1463, 1, 'vi', 'core/table/general', 'delete', 'Xo??', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1464, 1, 'vi', 'core/table/general', 'close', '????ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1465, 1, 'vi', 'core/table/general', 'is_equal_to', 'B???ng v???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1466, 1, 'vi', 'core/table/general', 'greater_than', 'L???n h??n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1467, 1, 'vi', 'core/table/general', 'less_than', 'Nh??? h??n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1468, 1, 'vi', 'core/table/general', 'value', 'Gi?? tr???', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1469, 1, 'vi', 'core/table/general', 'select_field', 'Ch???n tr?????ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1470, 1, 'vi', 'core/table/general', 'reset', 'L??m m???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1471, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Th??m b??? l???c', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1472, 1, 'vi', 'core/table/general', 'apply', '??p d???ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1473, 1, 'vi', 'core/table/general', 'select_option', 'L???a ch???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1474, 1, 'vi', 'core/table/general', 'filters', 'L???c d??? li???u', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1475, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay ?????i h??ng lo???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1476, 1, 'vi', 'core/table/general', 'bulk_actions', 'H??nh ?????ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1477, 1, 'vi', 'core/table/general', 'contains', 'Bao g???m', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1478, 1, 'vi', 'core/table/general', 'filtered', '(???? ???????c l???c t??? _MAX_ b???n ghi)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1479, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1480, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1481, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1482, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1483, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1484, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1485, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1486, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1487, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1488, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1489, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1490, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1491, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1492, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1493, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1494, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1495, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1496, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1497, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1498, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1499, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1500, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hu??y bo??', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1501, 1, 'vi', 'packages/menu/menu', 'add_link', 'Th??m li??n k???t', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1502, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Th??m v??o tr??nh ????n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1503, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Th??ng tin c?? b???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1504, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'M??? li??n k???t trong tab m???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1505, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1506, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Li??n k???t t??y ch???n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1507, 1, 'vi', 'packages/menu/menu', 'icon', 'Bi???u t?????ng', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1508, 1, 'vi', 'packages/menu/menu', 'key_name', 'T??n menu (key::key)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1509, 1, 'vi', 'packages/menu/menu', 'remove', 'X??a', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1510, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'M??? li??n k???t trong tab hi???n t???i', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1511, 1, 'vi', 'packages/menu/menu', 'structure', 'C???u tr??c tr??nh ????n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1512, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1513, 1, 'vi', 'packages/menu/menu', 'title', 'Ti??u ?????', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1514, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1515, 1, 'vi', 'packages/menu/menu', 'create', 'T???o tr??nh ????n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1516, 1, 'vi', 'packages/menu/menu', 'edit', 'S???a tr??nh ????n', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1517, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1518, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1519, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1520, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1521, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1522, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1523, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1524, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1525, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-09-18 20:34:49', '2021-09-18 20:34:49'),
(1526, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1527, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1528, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1529, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1530, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1531, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1532, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1533, 1, 'en', 'packages/page/pages', 'settings.select', '??? Select ???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1534, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1535, 1, 'vi', 'packages/page/pages', 'create', 'Th??m trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1536, 1, 'vi', 'packages/page/pages', 'edit', 'S????a trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1537, 1, 'vi', 'packages/page/pages', 'form.name', 'Ti??u ????? trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1538, 1, 'vi', 'packages/page/pages', 'form.note', 'N????i dung ghi chu??', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1539, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'T??n trang (t???i ??a 120 k?? t???)', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1540, 1, 'vi', 'packages/page/pages', 'form.content', 'N???i dung', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1541, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Cho??n i??t nh????t 1 trang ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1542, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'C????p nh????t tha??nh c??ng', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1543, 1, 'vi', 'packages/page/pages', 'deleted', 'Xo??a trang tha??nh c??ng', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1544, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Kh??ng th???? xo??a trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1545, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1546, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1547, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'S???a trang n??y', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1548, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1549, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1550, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1551, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1552, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1553, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1554, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1555, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1556, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1557, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1558, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1559, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1560, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1561, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1562, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1563, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1564, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1565, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1566, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1567, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1568, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1569, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1570, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1571, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1572, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1573, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1574, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1575, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1576, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1577, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1578, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'K??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1579, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'T??c gi???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1580, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phi??n b???n', '2021-09-18 20:34:50', '2021-09-18 20:34:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1581, 1, 'vi', 'packages/plugin-management/plugin', 'activated', '???? k??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1582, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'H???y k??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1583, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', '???? v?? hi???u', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1584, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'K??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1585, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'G??i m??? r???ng kh??ng h???p l???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1586, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'C???p nh???t tr???ng th??i g??i m??? r???ng th??nh c??ng', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1587, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui l??ng k??ch ho???t c??c ti???n ??ch m??? r???ng :plugins tr?????c khi k??ch ho???t ti???n ??ch n??y', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1588, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Ti???n ??ch m??? r???ng', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1589, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1590, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1591, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1592, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1593, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1594, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'T???i ??u ho?? b??? m??y t??m ki???m (SEO)', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1595, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Ch???nh s???a SEO', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1596, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thi???t l???p c??c th??? m?? t??? gi??p ng?????i d??ng d??? d??ng t??m th???y tr??n c??ng c??? t??m ki???m nh?? Google.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1597, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Ti??u ????? trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1598, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'M?? t??? trang', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1599, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1600, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1601, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1602, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1603, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1604, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1605, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1606, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1607, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1608, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1609, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1610, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1611, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1612, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1613, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1614, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1615, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1616, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1617, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1618, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1619, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1620, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1621, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1622, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1623, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1624, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1625, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1626, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1627, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1628, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1629, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1630, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1631, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1632, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1633, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1634, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1635, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1636, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1637, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1638, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1639, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1640, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1641, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1642, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1643, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1644, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1645, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1646, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1647, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1648, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1649, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1650, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1651, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1652, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1653, 1, 'vi', 'packages/theme/theme', 'activated', '???? k??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1654, 1, 'vi', 'packages/theme/theme', 'active', 'K??ch ho???t', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1655, 1, 'vi', 'packages/theme/theme', 'active_success', 'K??ch ho???t giao di???n th??nh c??ng!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1656, 1, 'vi', 'packages/theme/theme', 'author', 'T??c gi???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1657, 1, 'vi', 'packages/theme/theme', 'description', 'M?? t???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1658, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao di???n', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1659, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tu??? ch???n giao di???n', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1660, 1, 'vi', 'packages/theme/theme', 'version', 'Phi??n b???n', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1661, 1, 'vi', 'packages/theme/theme', 'save_changes', 'L??u thay ?????i', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1662, 1, 'vi', 'packages/theme/theme', 'developer_mode', '??ang k??ch ho???t ch??? ????? th??? nghi???m', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1663, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tu??? ch???nh CSS', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1664, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1665, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1666, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1667, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1668, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1669, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1670, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1671, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1672, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1673, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1674, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1675, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1676, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1677, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1678, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1679, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1680, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1681, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1682, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1683, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1684, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1685, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1686, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1687, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1688, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1689, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1690, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1691, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1692, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1693, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1694, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1695, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1696, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1697, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1698, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1699, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1700, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1701, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1702, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1703, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1704, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1705, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1706, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1707, 1, 'vi', 'packages/widget/global', 'available', 'Ti???n ??ch c?? s???n', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1708, 1, 'vi', 'packages/widget/global', 'delete', 'X??a', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1709, 1, 'vi', 'packages/widget/global', 'instruction', '????? k??ch ho???t ti???n ??ch, h??y k??o n?? v??o sidebar ho???c nh???n v??o n??. ????? h???y k??ch ho???t ti???n ??ch v?? x??a c??c thi???t l???p c???a ti???n ??ch, k??o n?? quay tr??? l???i.', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1710, 1, 'vi', 'packages/widget/global', 'number_post_display', 'S??? b??i vi???t s??? hi???n th???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1711, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'S??? th??? s??? hi???n th???', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1712, 1, 'vi', 'packages/widget/global', 'select_menu', 'L???a ch???n tr??nh ????n', '2021-09-18 20:34:50', '2021-09-18 20:34:50'),
(1713, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu t??y ch???nh', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1714, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Th??m menu t??y ch???nh v??o khu v???c ti???n ??ch c???a b???n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1715, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'B??i vi???t g???n ????y', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1716, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Ti???n ??ch b??i vi???t g???n ????y', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1717, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Th???', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1718, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Th??? ph??? bi???n, s??? d???ng nhi???u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1719, 1, 'vi', 'packages/widget/global', 'widget_text', 'V??n b???n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1720, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'V??n b???n t??y ?? ho???c HTML.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1721, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xo?? ti???n ??ch th??nh c??ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1722, 1, 'vi', 'packages/widget/global', 'save_success', 'L??u ti???n ??ch th??nh c??ng!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1723, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1724, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1725, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1726, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1727, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1728, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1729, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1730, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1731, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1732, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1733, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1734, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1735, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1736, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1741, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1742, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1746, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1747, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1748, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1749, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung b??nh', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1750, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'T??? l??? tho??t', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1751, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phi??n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1752, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'L?????t xem', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1753, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phi??n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1754, 1, 'vi', 'plugins/analytics/analytics', 'views', 'l?????t xem', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1755, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Ng?????i truy c???p', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1756, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'l?????t gh?? th??m', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1757, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Th??ng tin c??i ?????t kh??ng h???p l???. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1758, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'L?????t kh??ch m???i', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1759, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'T??? l??? kh??ch m???i', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1760, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ng??y b???t ?????u :start_date kh??ng th??? sau ng??y k???t th??c :end_date', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1761, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'B???n ph???i cung c???p View ID h???p l??. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1762, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', '????? xem d??? li???u th???ng k?? Google Analytics, b???n c???n l???y th??ng tin Client ID v?? th??m n?? v??o trong ph???n c??i ?????t. B???n c??ng c???n th??ng tin x??c th???c d???ng JSON. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1767, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1768, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Tr??nh duy???t truy c???p nhi???u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1772, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Th???ng k?? truy c???p', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1773, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang ???????c xem nhi???u nh???t', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1774, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang gi???i thi???u nhi???u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1775, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1776, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1777, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1778, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1779, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1780, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1781, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1782, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1783, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1784, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1785, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1786, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1787, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1788, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1789, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1790, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1791, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1792, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1793, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1794, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1795, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1796, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1797, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1798, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1799, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1800, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1801, 1, 'vi', 'plugins/audit-log/history', 'name', 'L???ch s??? ho???t ?????ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1802, 1, 'vi', 'plugins/audit-log/history', 'created', ' ???? t???o', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1803, 1, 'vi', 'plugins/audit-log/history', 'updated', ' ???? c???p nh???t', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1804, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' ???? x??a', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1805, 1, 'vi', 'plugins/audit-log/history', 'attached', '????nh k??m', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1806, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1807, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh m???c', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1808, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay ?????i m???t kh???u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1809, 1, 'vi', 'plugins/audit-log/history', 'contact', 'li??n h???', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1810, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung m??? r???ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'logged in', '????ng nh???p', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'logged out', '????ng xu???t', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'menu', 'tr??nh ????n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'kh???i h??? th???ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1815, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1816, 1, 'vi', 'plugins/audit-log/history', 'post', 'b??i vi???t', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1817, 1, 'vi', 'plugins/audit-log/history', 'shared', '???? chia s???', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1818, 1, 'vi', 'plugins/audit-log/history', 'tag', 'th???', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1819, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'v??o h??? th???ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1820, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'c???p nh???t t??i kho???n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1821, 1, 'vi', 'plugins/audit-log/history', 'user', 'th??nh vi??n', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1822, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'L???ch s??? ho???t ?????ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1823, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1824, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1825, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1826, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1827, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1828, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1829, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1830, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1831, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1832, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1833, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1834, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1835, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1836, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1837, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1838, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1839, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1840, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1841, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1842, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1843, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1844, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1845, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1846, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1847, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao l??u c?? s??? d??? li???u v?? th?? m???c /uploads', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1848, 1, 'vi', 'plugins/backup/backup', 'create', 'T???o b???n sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1849, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'T???o b???n sao l??u th??nh c??ng!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1850, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'T???o', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1851, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'X??a b???n sao l??u th??nh c??ng!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1852, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'T???o sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1853, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1854, 1, 'vi', 'plugins/backup/backup', 'restore', 'Kh??i ph???c b???n sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1855, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Kh??i ph???c b???n sao l??u th??nh c??ng', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1856, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Kh??i ph???c', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1857, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'B???n c?? ch???c ch???n mu???n kh??i ph???c h??? th???ng v??? th???i ??i???m t???o b???n sao l??u n??y?', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1858, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Kh??i ph???c b???n sao l??u n??y', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1859, 1, 'vi', 'plugins/backup/backup', 'download_database', 'T???i v??? b???n sao l??u CSDL', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1860, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'T???i v??? b???n sao l??u th?? m???c uploads', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1861, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao l??u', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1862, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Ch??o kh??ch, n???u b???n th???y trang demo b??? ph?? ho???i, h??y t???i <a href=\":link\">trang sao l??u</a> v?? kh??i ph???c b???n sao l??u cu???i c??ng. C???m ??n b???n nhi???u!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1863, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1864, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1865, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1866, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1867, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1868, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1869, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1870, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1871, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1872, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1873, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1874, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1875, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1876, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1877, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1878, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1879, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1880, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1881, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1882, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1883, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1884, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1885, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1886, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1887, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1888, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1889, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1890, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1891, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1892, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1893, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1894, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1895, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1896, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1897, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1898, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1899, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1900, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1901, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1902, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1903, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1904, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1905, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1906, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1907, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1908, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1909, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1910, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1911, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1912, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1913, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1914, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1915, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1916, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1917, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1918, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1919, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1920, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1921, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1922, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1923, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1924, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1925, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1926, 1, 'vi', 'plugins/blog/categories', 'create', 'Th??m danh mu??c m????i', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1927, 1, 'vi', 'plugins/blog/categories', 'edit', 'S????a danh mu??c', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1928, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh m???c', '2021-09-18 20:34:51', '2021-09-18 20:34:51'),
(1929, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'S???a danh m???c n??y', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1930, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh m???c', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1931, 1, 'vi', 'plugins/blog/posts', 'create', 'Th??m ba??i vi???t', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1932, 1, 'vi', 'plugins/blog/posts', 'edit', 'S????a ba??i vi???t', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1933, 1, 'vi', 'plugins/blog/posts', 'form.name', 'T??n', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1934, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'T??n b??i vi???t (T???i ??a 120 k?? t???)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1935, 1, 'vi', 'plugins/blog/posts', 'form.description', 'M?? t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1936, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'M?? t??? ng???n cho b??i vi???t (T???i ??a 400 k?? t???)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1937, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuy??n m???c', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1938, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'T??? kh??a', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1939, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Th??m t??? kh??a', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1940, 1, 'vi', 'plugins/blog/posts', 'form.content', 'N???i dung', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1941, 1, 'vi', 'plugins/blog/posts', 'form.note', 'N????i dung ghi chu??', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1942, 1, 'vi', 'plugins/blog/posts', 'form.format_type', '?????nh d???ng', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1943, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xo??a ba??i vi????t tha??nh c??ng', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1944, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Kh??ng th???? xo??a ba??i vi????t', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1945, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'B??i vi???t', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1946, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'S???a b??i vi???t n??y', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1947, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hi???n t???i kh??ng c?? b??i vi???t m???i!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1948, 1, 'vi', 'plugins/blog/posts', 'posts', 'B??i vi???t', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1949, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'B??i vi???t g???n ????y', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1950, 1, 'vi', 'plugins/blog/posts', 'author', 'T??c gi???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1951, 1, 'vi', 'plugins/blog/tags', 'create', 'Th??m th??? m????i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1952, 1, 'vi', 'plugins/blog/tags', 'edit', 'S????a th???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1953, 1, 'vi', 'plugins/blog/tags', 'form.name', 'T??n', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1954, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'T??n th??? (T???i ??a 120 k?? t???)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1955, 1, 'vi', 'plugins/blog/tags', 'form.description', 'M?? t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1956, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'M?? t??? ng???n cho tag (T???i ??a 400 k?? t???)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1957, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuy??n m???c', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1958, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Cho??n i??t nh????t 1 ba??i vi????t ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1959, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Kh??ng th???? xo??a th???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1960, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xo??a th??? tha??nh c??ng', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1961, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Th???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1962, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'S???a th??? n??y', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1963, 1, 'vi', 'plugins/blog/tags', 'menu', 'Th???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1964, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1965, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1966, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1967, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1968, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1969, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1970, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1971, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1972, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1973, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1974, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1975, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1976, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1977, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1978, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1979, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1980, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1981, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1982, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1983, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1984, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1985, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1986, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1987, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1988, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1989, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1990, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1991, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1992, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1993, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1994, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1995, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1996, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1997, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1998, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(1999, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2000, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2001, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2002, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2003, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2004, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2005, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2006, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2007, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2008, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2009, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2010, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2011, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2012, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2013, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2014, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2015, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2016, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2017, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2018, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2019, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2020, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2021, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2022, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2023, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2024, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2025, 1, 'vi', 'plugins/contact/contact', 'menu', 'Li??n h????', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2026, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem li??n h????', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2027, 1, 'vi', 'plugins/contact/contact', 'tables.phone', '??i????n thoa??i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2028, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2029, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Ho?? t??n', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2030, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Th???i gian', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2031, 1, 'vi', 'plugins/contact/contact', 'tables.address', '??i??a ?????a ch???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2032, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Ti??u ?????', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2033, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'N????i dung', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2034, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Th??ng tin li??n h????', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2035, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Th??ng tin li??n h???? m????i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2036, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2037, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Li??n h??? n??y ???????c g???i t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2038, 1, 'vi', 'plugins/contact/contact', 'form_address', '?????a ch???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2039, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Th?? ??i???n t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2040, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Th??ng ??i???p', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2041, 1, 'vi', 'plugins/contact/contact', 'form_name', 'H??? t??n', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2042, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'S??? ??i???n tho???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2043, 1, 'vi', 'plugins/contact/contact', 'message_content', 'N???i dung th??ng ??i???p', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2044, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Nh???ng tr?????ng c?? d???u (<span style=\"color: red\">*</span>) l?? b???t bu???c.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2045, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'G???i tin nh???n', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2046, 1, 'vi', 'plugins/contact/contact', 'sender', 'Ng?????i g???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2047, 1, 'vi', 'plugins/contact/contact', 'sender_address', '?????a ch???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2048, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Th?? ??i???n t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2049, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'S??? ??i???n tho???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2050, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Th?? ???????c g???i t???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2051, 1, 'vi', 'plugins/contact/contact', 'address', '?????a ch???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2052, 1, 'vi', 'plugins/contact/contact', 'message', 'Li??n h???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2053, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'B???n c?? <span class=\"bold\">:count</span> tin nh???n m???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2054, 1, 'vi', 'plugins/contact/contact', 'phone', '??i???n tho???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2055, 1, 'vi', 'plugins/contact/contact', 'statuses.read', '???? ?????c', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2056, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Ch??a ?????c', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2057, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem t???t c???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2058, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Li??n h???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2059, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'C???u h??nh th??ng tin cho m???c li??n h???', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2060, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Th??ng b??o t???i admin', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2061, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'M???u n???i dung email g???i t???i admin khi c?? li??n h??? m???i', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2062, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2063, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2064, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2065, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2066, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2067, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2068, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2069, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2070, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2071, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2072, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2073, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2074, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2075, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2076, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2077, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2078, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2079, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2080, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2081, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2082, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2083, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2084, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2085, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2086, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2087, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2088, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2089, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2090, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2091, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2092, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2093, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2094, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2095, 1, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2096, 1, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2097, 1, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2098, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2099, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2100, 1, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2101, 1, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2102, 1, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2103, 1, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2104, 1, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2105, 1, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2106, 1, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2107, 1, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2108, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2109, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2110, 1, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2111, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2112, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2113, 1, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2114, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2115, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2116, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2117, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2118, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2119, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2120, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2121, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2122, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2123, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2124, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2125, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2126, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2127, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2128, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2129, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2130, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2131, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2132, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2133, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2134, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2135, 1, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2136, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2137, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2138, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2139, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2140, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2141, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2142, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2143, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2144, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2145, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2146, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2147, 1, 'en', 'plugins/ecommerce/customer', 'phone', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2148, 1, 'en', 'plugins/ecommerce/customer', 'phone_placeholder', 'Phone', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2149, 1, 'en', 'plugins/ecommerce/customer', 'avatar', 'Avatar', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2150, 1, 'en', 'plugins/ecommerce/customer', 'dob', 'Date of birth', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2151, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2152, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2153, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2154, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2155, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2156, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2157, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2158, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2159, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2160, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2161, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2162, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2163, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2164, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2165, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2166, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2167, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2168, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2169, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2170, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2171, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2172, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2173, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2174, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2175, 1, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2176, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2177, 1, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2178, 1, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2179, 1, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2180, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2181, 1, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2182, 1, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2183, 1, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2184, 1, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2185, 1, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2186, 1, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2021-09-18 20:34:52', '2021-09-18 20:34:52'),
(2187, 1, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2188, 1, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2189, 1, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2190, 1, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2191, 1, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2192, 1, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2193, 1, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2194, 1, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2195, 1, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2196, 1, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2197, 1, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2198, 1, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2199, 1, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2200, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2201, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2202, 1, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products required to apply', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2203, 1, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2204, 1, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2205, 1, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2206, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2207, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2208, 1, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2209, 1, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2210, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2211, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2212, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2213, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2214, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2215, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2216, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2217, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2218, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2219, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2220, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2221, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2222, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2223, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2224, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2225, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2226, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2227, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2228, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2229, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2230, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2231, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2232, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2233, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2234, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2235, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2236, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2237, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2238, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2239, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2240, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2241, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2242, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2243, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2244, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2245, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2246, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2247, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2248, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2249, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2250, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2251, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2252, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2253, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2254, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2255, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2256, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2257, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2258, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2259, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2260, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2261, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2262, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2263, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2264, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2265, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2266, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2267, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2268, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2269, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2270, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2271, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.payment_method_cod_minimum_amount', 'Minimum order amount - :currency (Optional)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2272, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_size', 'Review max file size (MB)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2273, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_number', 'Review max file number', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2274, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_font_family', 'Invoice font family', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2275, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_invoice_stamp', 'Enable invoice stamp', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2276, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2277, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2278, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2279, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2280, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2281, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2282, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2283, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2284, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2285, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2286, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2287, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2288, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2289, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2290, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2291, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2292, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2293, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2294, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2295, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2296, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2297, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2298, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2299, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2300, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2301, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2302, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2303, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2304, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2305, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2306, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2307, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2308, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2309, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2310, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2311, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2312, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2313, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2314, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2315, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2316, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2317, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2318, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2319, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2320, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-09-18 20:34:53', '2021-09-18 20:34:53');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2321, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2322, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2323, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2324, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2325, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2326, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2327, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2328, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2329, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2330, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2331, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2332, 1, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2333, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2334, 1, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2335, 1, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2336, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2337, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2338, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2339, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2340, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2341, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2342, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2343, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2344, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2345, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2346, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2347, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2348, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2349, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2350, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2351, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2352, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2353, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2354, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2355, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2356, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2357, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2358, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2359, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2360, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2361, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2362, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2363, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2364, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2365, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2366, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2367, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2368, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2369, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2370, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2371, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2372, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2373, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2374, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2375, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2376, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2377, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2378, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2379, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2380, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2381, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2382, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2383, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2384, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2385, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2386, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2387, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2388, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2389, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2390, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2391, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2392, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2393, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2394, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2395, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2396, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2397, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2398, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2399, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2400, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2401, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2402, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2403, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2404, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2405, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2406, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2407, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2408, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2409, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2410, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2411, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2412, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2413, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2414, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2415, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2416, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2417, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2418, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2419, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2420, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2421, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2422, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2423, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2424, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2425, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2426, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2427, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2428, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2429, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2430, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2431, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-09-18 20:34:53', '2021-09-18 20:34:53'),
(2432, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2433, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2434, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2435, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2436, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2437, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2438, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2439, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2440, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2441, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2442, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2443, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2444, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2445, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2446, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2447, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2448, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2449, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2450, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2451, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2452, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2453, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2454, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2455, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2456, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2457, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2458, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2459, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2460, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2461, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2462, 1, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2463, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2464, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2465, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2466, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2467, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2468, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2469, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2470, 1, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2471, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2472, 1, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2473, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2474, 1, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2475, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2476, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2477, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2478, 1, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2479, 1, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2480, 1, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2481, 1, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2482, 1, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2483, 1, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2484, 1, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2485, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2486, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2487, 1, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2488, 1, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2489, 1, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2490, 1, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2491, 1, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2492, 1, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2493, 1, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2494, 1, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2495, 1, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2496, 1, 'en', 'plugins/ecommerce/order', 'state', 'State', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2497, 1, 'en', 'plugins/ecommerce/order', 'city', 'City', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2498, 1, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2499, 1, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2500, 1, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2501, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2502, 1, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2503, 1, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2504, 1, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2505, 1, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2506, 1, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2507, 1, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2508, 1, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2509, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2510, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2511, 1, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2512, 1, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2513, 1, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2514, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2515, 1, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2516, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2517, 1, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2518, 1, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2519, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2520, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2521, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2522, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2523, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2524, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2525, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2526, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2527, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2528, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2529, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2530, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2531, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2532, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2533, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2534, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2535, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2536, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2537, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2538, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2539, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2540, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2541, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2542, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2543, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2544, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2545, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2546, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2547, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2548, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2549, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2550, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2551, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2552, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2553, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2554, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2555, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2556, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2557, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2558, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2559, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2560, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2561, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2562, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2563, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2564, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2565, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2566, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2567, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2568, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2569, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2570, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2571, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2572, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2573, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2574, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2575, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2576, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2577, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2578, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2579, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2580, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2581, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2582, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2583, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2584, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2585, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2586, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2587, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2588, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2589, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2590, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2591, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2592, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2593, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2594, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2595, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2596, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2597, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2598, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2599, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2600, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2601, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2602, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2603, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2604, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2605, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2606, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2607, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2608, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2609, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2610, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2611, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2612, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2613, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2614, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2615, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2616, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2617, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2618, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2619, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2620, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2621, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2622, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2623, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2624, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2625, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2626, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2627, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2628, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2629, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2630, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2631, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2632, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2633, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2634, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2635, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2636, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2637, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2638, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2639, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2640, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2641, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2642, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2643, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2644, 1, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2645, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2646, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2647, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2648, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2649, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2650, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2651, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2652, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2653, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2654, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2655, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2656, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2657, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2658, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2659, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2660, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2661, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2662, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2663, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-09-18 20:34:54', '2021-09-18 20:34:54'),
(2664, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2665, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2666, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2667, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2668, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2669, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2670, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2671, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2672, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2673, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2674, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2675, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2676, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2677, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2678, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2679, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2680, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2681, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2682, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2683, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2684, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2685, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2686, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2687, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2688, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2689, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2690, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2691, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-09-18 20:34:55', '2021-09-18 20:34:55');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2692, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2693, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2694, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2695, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2696, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2697, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2698, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2699, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2700, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2701, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2702, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2703, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2704, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2705, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2706, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2707, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2708, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2709, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2710, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2711, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2712, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2713, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2714, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2715, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2716, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2717, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2718, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2719, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2720, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2721, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2722, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2723, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2724, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2725, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2726, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2727, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2728, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2729, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2730, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2731, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2732, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2733, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2734, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2735, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2736, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2737, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2738, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2739, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2740, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2741, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2742, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2743, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2744, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2745, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2746, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2747, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2748, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2749, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2750, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2751, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2752, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2753, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2754, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2755, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2756, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2757, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2758, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2759, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2760, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2761, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2762, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2763, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2764, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2765, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2766, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2767, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2768, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2769, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2770, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2771, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2772, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2773, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2774, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2775, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2776, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2777, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2778, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2779, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2780, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2781, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2782, 1, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2783, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2784, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2785, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2786, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2787, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2788, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2789, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2790, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2791, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2792, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2793, 1, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2794, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2795, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2796, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_30_days', 'Last 30 days', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2797, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2798, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2799, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2800, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2801, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2802, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2803, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2804, 1, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2805, 1, 'en', 'plugins/ecommerce/reports', 'total_earnings', 'Total Earnings', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2806, 1, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2807, 1, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2808, 1, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2809, 1, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2810, 1, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2811, 1, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2812, 1, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2813, 1, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2814, 1, 'en', 'plugins/ecommerce/reports', 'date_range_format_value', 'From :from to :to', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2815, 1, 'en', 'plugins/ecommerce/reports', 'select_range', 'Select Range', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2816, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2817, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2818, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2819, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2820, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2821, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2822, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2823, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2824, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2825, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2826, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2827, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2828, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2829, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2830, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2831, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2832, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2833, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2834, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2835, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2836, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2837, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2838, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2839, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2840, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2841, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2842, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2843, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2844, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2845, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2846, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2847, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2848, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2849, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2850, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2851, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2852, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2853, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2854, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2855, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2856, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2857, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2858, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2859, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2860, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2861, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2862, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2863, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2864, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2865, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2866, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2867, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2868, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2869, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2870, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2871, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2872, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2873, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2874, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2875, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2876, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2877, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2878, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2879, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2880, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2881, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2882, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2883, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-09-18 20:34:55', '2021-09-18 20:34:55'),
(2884, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2885, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2886, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2887, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2888, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2889, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2890, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2891, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2892, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2893, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2894, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2895, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2896, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2897, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2898, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2899, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2900, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2901, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2902, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2903, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2904, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2905, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2906, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2907, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2908, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2909, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2910, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2911, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2912, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2913, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2914, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2915, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2916, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2917, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2918, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2919, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2920, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2921, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2922, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2923, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2924, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2925, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2926, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2927, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2928, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2929, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2930, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2931, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2932, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2933, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2934, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2935, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2936, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2937, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2938, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2939, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2940, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2941, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2942, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2943, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2944, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2945, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2946, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2947, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2948, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2949, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2950, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Th????ng hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2951, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Th??m th????ng hi???u m???i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2952, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'S???a th????ng hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2953, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'T??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2954, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'T??n th????ng hi???u (t???i ??a 255 k?? t???)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2955, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'M?? t???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2956, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'M?? t??? ng???n cho th????ng hi???u n??y (t???i ??a 400 k?? t???)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2957, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2958, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2959, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'N???i b???t?', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2960, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2961, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2962, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Kh??ng c?? b???n ghi n??o ???????c ch???n!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2963, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'C???p nh???t th??nh c??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2964, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xo?? kh??ng th??nh c??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2965, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xo?? th????ng hi???u th??nh c??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2966, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Th????ng hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2967, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Qu???n l?? danh s??ch th????ng hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2968, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'C??c th????ng hi???u c???a s???n ph???m nh?? Nike, Adidas, Bitis ...', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2969, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'T???o th????ng hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2970, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Ti???n t???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2971, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'C??c lo???i ti???n t??? ???????c s??? d???ng tr??n website.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2972, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'T??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2973, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'K?? hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2974, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'S??? th???p ph??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2975, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'T??? gi??', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2976, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'V??? tr?? k?? hi???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2977, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'M???c ?????nh?', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2978, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xo??', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2979, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Th??m ti???n t??? m???i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2980, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'L??u c??i ?????t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2981, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Tr?????c s???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2982, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau s???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2983, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2984, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2985, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2986, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2987, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2988, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2989, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2990, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2991, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Qu???n l?? danh s??ch kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2992, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi kh??ch h??ng ?????t h??ng, b???n s??? bi???t ???????c th??ng tin v?? l???ch s??? mua h??ng c???a kh??ch h??ng.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2993, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'T???o kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2994, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuy???n m??i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2995, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'M?? khuy???n m??i kh??ng h???p l??? ho???c ???? h???t h???n!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2996, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'M?? khuy???n m??i n??y kh??ng th??? s??? d???ng chung v???i ch????ng tr??nh khuy???n m??i!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2997, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Ch??a s??? d???ng m?? gi???m gi?? n??y', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2998, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(2999, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3000, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3001, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3002, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Ch????ng tr??nh khuy???n m??i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3003, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'T???o ra c??c m?? coupon, c??i ?????t m???t s???n ph???m, ho???c m???t nh??m s???n ph???m khuy???n m??i d??nh cho c??c kh??ch h??ng th??n thi???t c???a b???n.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3004, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'T???o khuy???n m??i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3005, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'C??i ?????t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3006, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Th????ng m???i ??i???n t???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3007, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3008, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3009, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3010, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3011, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3012, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3013, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3014, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3015, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3016, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3017, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', '?????a ch??? c???a h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3018, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'S??? ??i???n tho???i c???a h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3019, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'M?? ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3020, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chu???i m?? ho?? ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3021, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'T??n kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3022, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3023, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'S??? ??i???n tho???i kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3024, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', '?????a ch??? kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3025, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh s??ch s???n ph???m trong ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3026, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi ti???t thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3027, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Ph????ng th???c v???n chuy???n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3028, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Ph????ng th???c thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3029, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Ti??u chu???n & ?????nh d???ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3030, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'C??c ti??u chu???n v?? c??c ?????nh d???ng ???????c s??? d???ng ????? t??nh to??n nh???ng th??? nh?? gi?? c??? s???n ph???m, tr???ng l?????ng v???n chuy???n v?? th???i gian ????n h??ng ???????c ?????t.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3031, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Ch???nh s???a ?????nh d???ng m?? ????n h??ng (t??y ch???n)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3032, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'M?? ????n h??ng m???c ?????nh b???t ?????u t??? :number. B???n c?? th??? thay ?????i chu???i b???t ?????u ho???c k???t th??c ????? t???o m?? ????n h??ng theo ?? b???n, v?? d??? \"DH-:number\" ho???c \":number-A\"', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3033, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'B???t ?????u b???ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3034, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'K???t th??c b???ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3035, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'M?? ????n h??ng c???a b???n s??? hi???n th??? theo m???u', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3036, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', '????n v??? c??n n???ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3037, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', '????n v??? chi???u d??i/chi???u cao', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3038, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'X??c nh???n ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3039, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', '???????c g???i khi kh??ch h??ng t???o ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3040, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'H???y ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3041, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', '???????c g???i khi kh??ch h??ng h???y ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3042, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'X??c nh???n giao h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3043, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', '???????c g???i ?????n kh??ch h??ng khi b???t ?????u giao h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3044, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Th??ng b??o c?? ????n h??ng m???i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3045, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', '???????c g???i cho qu???n tr??? vi??n khi c?? kh??ch mua h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3046, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'X??c nh???n ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3047, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email ???????c g???i ?????n kh??ch h??ng khi ????n h??ng x??c nh???n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3048, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'X??c nh???n thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3049, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email ???????c g???i ?????n kh??ch h??ng khi ????n h??ng x??c nh???n thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3050, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', '????n h??ng ??ang ch??? ho??n t???t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3051, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nh???c nh??? kh??ch h??ng ho??n t???t ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3052, 1, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'ho???c <a href=\":link\">Truy c???p website</a>', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3053, 1, 'vi', 'plugins/ecommerce/email', 'order_information', 'Th??ng tin ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3054, 1, 'vi', 'plugins/ecommerce/email', 'order_number', 'M?? ????n h??ng: <strong>:order_id</strong>', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3055, 1, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3056, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Ch??a x??? l??', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3057, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', '??ang x??? l??', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3058, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', '??ang giao h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3059, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', '???? giao h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3060, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Ho??n th??nh', '2021-09-18 20:34:56', '2021-09-18 20:34:56');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3061, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'B??? hu???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3062, 1, 'vi', 'plugins/ecommerce/order', 'name', '????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3063, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', '????n h??ng ch??a ho??n t???t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3064, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'M?? ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3065, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Kh??ch h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3066, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'T???ng c???ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3067, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Ph?? v???n chuy???n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3068, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Ph????ng th???c thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3069, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Tr???ng th??i thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3070, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Qu???n l?? ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3071, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'M???t khi c???a h??ng c???a b???n c?? ????n ?????t h??ng, ????y s??? l?? n??i b???n x??? l?? v?? theo d??i nh???ng ????n ?????t h??ng ????.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3072, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'T???o ????n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3073, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Qu???n l?? ????n h??ng ch??a ho??n t???t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3074, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', '????n h??ng ch??a ho??n t???t l?? ????n h??ng ???????c t???o khi kh??ch h??ng th??m s???n ph???m v??o gi??? h??ng, ti???n h??nh ??i???n th??ng tin mua h??ng nh??ng kh??ng ho??n t???t qu?? tr??nh thanh to??n.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3075, 1, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Kh??ng t??m th???y email n??n kh??ng th??? g???i email kh??i ph???c cho kh??ch h??ng.', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3076, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3077, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Ph????ng th???c thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3078, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh to??n #', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3079, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'M?? giao d???ch', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3080, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'S??? ti???n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3081, 1, 'vi', 'plugins/ecommerce/payment', 'currency', '????n v??? ti???n t???', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3082, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Ng?????i d??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3083, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'T??n c???a ph????ng th???c PayPal l?? b???t bu???c!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3084, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'T??n c???a ph????ng th???c PayPal qu?? d??i!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3085, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'T??n c???a ph????ng th???c Stripe l?? b???t bu???c!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3086, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'T??n c???a ph????ng th???c Stripe qu?? d??i!', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3087, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Tr???ng th??i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3088, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'B???t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3089, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'T???t', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3090, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3091, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3092, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Ch??? ?????', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3093, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3094, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3095, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'B???t l??u nh???t k?? thanh to??n', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3096, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'C??', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3097, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Kh??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3098, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3099, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3100, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3101, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'H??nh ?????ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3102, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay l???i', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3103, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3104, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh to??n khi nh???n h??ng (COD)', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3105, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Th??ng qua chuy???n kho???n ng??n h??ng', '2021-09-18 20:34:56', '2021-09-18 20:34:56'),
(3106, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh to??n b???ng th???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3107, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'S??? th???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3108, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'T??n tr??n th???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3109, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh to??n th??ng qua PayPal', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3110, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3111, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3112, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi ti???t', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3113, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Ng?????i thanh to??n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3114, 1, 'vi', 'plugins/ecommerce/payment', 'email', '?????a ch??? email', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3115, 1, 'vi', 'plugins/ecommerce/payment', 'phone', '??i???n tho???i', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3116, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Qu???c gia', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3117, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', '?????a ch??? giao h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3118, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi ti???t giao d???ch', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3119, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Th???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3120, 1, 'vi', 'plugins/ecommerce/payment', 'address', '?????a ch???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3121, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Kh??ng th??? l???y m?? Stripe ????? thanh to??n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3122, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh to??n cho ????n h??ng :id', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3123, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'M?? thanh to??n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3124, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3125, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3126, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3127, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3128, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3129, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3130, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3131, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3132, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3133, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3134, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3135, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3136, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3137, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3138, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3139, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3140, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3141, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3142, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3143, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3144, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3145, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3146, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3147, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3148, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3149, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3150, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3151, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3152, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3153, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3154, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3155, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3156, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3157, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3158, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3159, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3160, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3161, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3162, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3163, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3164, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3165, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3166, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3167, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3168, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3169, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3170, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3171, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thu???c t??nh s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3172, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'T???o', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3173, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'S???a', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3174, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Qu???n l?? danh s??ch thu???c t??nh s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3175, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'C??c thu???c t??nh c???a s???n ph???m nh?? m??u s???c, k??ch th?????c ...', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3176, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'T???o thu???c t??nh s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3177, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3178, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3179, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh m???c s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3180, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Kh??ng c??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3181, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh m???c s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3182, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Qu???n l?? danh s??ch danh m???c s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3183, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh m???c s???n ph???m nh?? qu???n ??o, gi??y d??p, linh ki???n ??i???n t??? ...', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3184, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'T???o danh m???c s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3185, 1, 'vi', 'plugins/ecommerce/product-categories', 'total_products', 'T???ng s???n ph???m: :total', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3186, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nh??m s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3187, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Th??m nh??m s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3188, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'S???a nh??m s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3189, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3190, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Qu???n l?? nh??m s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3191, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nh??m s???n ph???m gi??p qu???n l?? s???n ph???m v?? kh??ch h??ng t??m ki???m s???n ph???m m???t c??ch d??? d??ng.', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3192, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'T???o nh??m s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3193, 1, 'vi', 'plugins/ecommerce/products', 'name', 'S???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3194, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Th??m s???n ph???m m???i', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3195, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'S???a s???n ph???m - :name', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3196, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'T??n s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3197, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'T??n s???n ph???m (T???i ??a 120 ch??? c??i)', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3198, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'M?? t??? ng???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3199, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'M?? t??? ng???n g???n cho s???n ph???m (T???i ??a 400 ch??? c??i)', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3200, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh m???c', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3201, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi ti???t s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3202, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Gi?? c?? b???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3203, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Gi?? gi???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3204, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'S??? l?????ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3205, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Th????ng hi???u', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3206, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'R???ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3207, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3208, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'C??n n???ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3209, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'H??nh ???nh', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3210, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Lo???i s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3211, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'T??nh tr???ng kho', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3212, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'C??n h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3213, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'H???t h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3214, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho ph??p ?????t h??ng khi h???t', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3215, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Qu???n l?? kho', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3216, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Kh??ng qu???n l?? kho', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3217, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Qu???n l?? kho', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3218, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'S??? l?????ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3219, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3220, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chi???u d??i', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3221, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chi???u r???ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3222, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chi???u cao', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3223, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'C??n n???ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3224, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ng??y b???t ?????u', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3225, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ng??y k???t th??c', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3226, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nh??n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3227, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thu???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3228, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Gi?? c?? b???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3229, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Gi?? gi???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3230, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'S??? l?????ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3231, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Lo???i s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3232, 1, 'vi', 'plugins/ecommerce/products', 'image', '???nh', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3233, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'M?? s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3234, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Th????ng hi???u', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3235, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3236, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3237, 1, 'vi', 'plugins/ecommerce/products', 'products', 'S???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3238, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'S???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3239, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Th??m h??nh ???nh', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3240, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'T???ng quan', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3241, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thu???c t??nh', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3242, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'S???n ph???m c?? nhi???u phi??n b???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3243, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Qu???n l?? danh s??ch s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3244, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'T???o s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3245, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'B???t ?????u b??n h??ng b???ng vi???c th??m s???n ph???m.', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3246, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'B??o c??o', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3247, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', '????n h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3248, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu h??m nay', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3249, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', '????n h??ng h??m nay', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3250, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'S???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3251, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Kh??ch h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3252, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'T??n s???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3253, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'S??? l?????ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3254, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Th???ng k?? doanh thu', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3255, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'S???n ph???m b??n ch???y trong th??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3256, 1, 'vi', 'plugins/ecommerce/review', 'name', '????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3257, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Kh??ch h??ng ????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3258, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Th??m ????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3259, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'X??a ????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3260, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'T???o ????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3261, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Ch???n ????nh gi??', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3262, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'B??nh lu???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3263, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Ch???p thu???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3264, 1, 'vi', 'plugins/ecommerce/review', 'approved', '???? ch???p thu???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3265, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Kh??ng ch???p thu???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3266, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', '???? kh??ng ch???p thu???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3267, 1, 'vi', 'plugins/ecommerce/review', 'product', 'S???n ph???m', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3268, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Ng?????i d??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3269, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3270, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Tr???ng th??i', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3271, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Qu???n l?? danh s??ch nh???n x??t c???a kh??ch h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3272, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'L??u tr??? c??c nh???n x??t, ????nh gi?? c???a kh??ch h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3273, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Ph?? v???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3274, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'V???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3275, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3276, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Qu???c gia', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3277, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3278, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3279, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3280, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3281, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3282, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3283, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3284, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3285, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3286, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3287, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Ph????ng th???c v???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3288, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'T???o ph????ng th???c v???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3289, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'S???a ph????ng th???c v???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3290, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Th??m khu v???c v???n chuy???n', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3291, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3292, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3293, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3294, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3295, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3296, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3297, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3298, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3299, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3300, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3301, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3302, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3303, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3304, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3305, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', '?????a ch??? c???a h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3306, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', '?????a ch??? n??y s??? xu???t hi???n tr??n ho?? ????n c???a b???n v?? s??? ???????c s??? d???ng ????? t??nh to??n m???c gi?? v???n chuy???n c???a b???n.', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3307, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'T??n c???a h??ng', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3308, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', '??i???n tho???i', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3309, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', '?????a ch???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3310, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thu???', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3311, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3312, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-09-18 20:34:57', '2021-09-18 20:34:57'),
(3313, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3314, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3315, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3316, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3317, 1, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3318, 1, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3319, 1, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3320, 1, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3321, 1, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3322, 1, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3323, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3324, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3325, 1, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3326, 1, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3327, 1, 'en', 'plugins/gallery/gallery', 'by', 'By', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3328, 1, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3329, 1, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3330, 1, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3331, 1, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3332, 1, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3333, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3334, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3335, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3336, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3337, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3338, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3339, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3340, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3341, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3342, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3343, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3344, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3345, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3346, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3347, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3348, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3349, 1, 'en', 'plugins/language/language', 'order', 'Order', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3350, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3351, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3352, 1, 'en', 'plugins/language/language', 'code', 'Code', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3353, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3354, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3355, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3356, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3357, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3358, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3359, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3360, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3361, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3362, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3363, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3364, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3365, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3366, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3367, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3368, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3369, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3370, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3371, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3372, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3373, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3374, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3375, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3376, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3377, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3378, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3379, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3380, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3381, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3382, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3383, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3384, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3385, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3386, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3387, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3388, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3389, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3390, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3391, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3392, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3393, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3394, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3395, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3396, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3397, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list', 'Mailchimp List', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3398, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3399, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3400, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list', 'Sendgrid List', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3401, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3402, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3403, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3404, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3405, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3406, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3407, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3408, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3409, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3410, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3411, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3412, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3413, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3414, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3415, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3416, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3417, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3418, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3419, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3420, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3421, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3422, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3423, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3424, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3425, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3426, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3427, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3428, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3429, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3430, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3431, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3432, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3433, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3434, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3435, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3436, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3437, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3438, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-09-18 20:34:58', '2021-09-18 20:34:58');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3439, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3440, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3441, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3442, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3443, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3444, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3445, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3446, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3447, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3448, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3449, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3450, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3451, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3452, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3453, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3454, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3455, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3456, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3457, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3458, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3459, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3460, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3461, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3462, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3463, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3464, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3465, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3466, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3467, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3468, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3469, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3470, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3471, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3472, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3473, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3474, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3475, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3476, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3477, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3478, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3479, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3480, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3481, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3482, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3483, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3484, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3485, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3486, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3487, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3488, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3489, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3490, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3491, 1, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3492, 1, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3493, 1, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3494, 1, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3495, 1, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3496, 1, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3497, 1, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3498, 1, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3499, 1, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3500, 1, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3501, 1, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3502, 1, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3503, 1, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3504, 1, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3505, 1, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3506, 1, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3507, 1, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3508, 1, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3509, 1, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3510, 1, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3511, 1, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3512, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh to??n', '2021-09-18 20:34:58', '2021-09-18 20:34:58'),
(3513, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh to??n th??nh c??ng!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3514, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh to??n #', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3515, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'M?? thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3516, 1, 'vi', 'plugins/payment/payment', 'amount', 'S??? ti???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3517, 1, 'vi', 'plugins/payment/payment', 'currency', 'Lo???i ti???n t???', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3518, 1, 'vi', 'plugins/payment/payment', 'user', 'Ng?????i d??ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3519, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3520, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3521, 1, 'vi', 'plugins/payment/payment', 'action', 'H??nh ?????ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3522, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh to??n qua th???', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3523, 1, 'vi', 'plugins/payment/payment', 'card_number', 'S??? th???', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3524, 1, 'vi', 'plugins/payment/payment', 'full_name', 'H??? t??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3525, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh to??n qua PayPal', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3526, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3527, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3528, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi ti???t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3529, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'T??n ng?????i mua', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3530, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3531, 1, 'vi', 'plugins/payment/payment', 'phone', '??i???n tho???i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3532, 1, 'vi', 'plugins/payment/payment', 'country', 'Qu???c gia', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3533, 1, 'vi', 'plugins/payment/payment', 'shipping_address', '?????a ch??? giao h??ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3534, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi ti???t thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3535, 1, 'vi', 'plugins/payment/payment', 'card', 'Th???', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3536, 1, 'vi', 'plugins/payment/payment', 'address', '?????a ch???', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3537, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Kh??ng th??? l???y m?? Stripe ????? thanh to??n.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3538, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'M?? thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3539, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Ph????ng th???c thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3540, 1, 'vi', 'plugins/payment/payment', 'transactions', 'L???ch s??? giao d???ch', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3541, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'C??i ?????t c??c ph????ng th???c thanh to??n cho website', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3542, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n tr???c ti???p th??ng qua c???ng thanh to??n PayPal', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3543, 1, 'vi', 'plugins/payment/payment', 'use', 'D??ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3544, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n b???ng Visa, Credit card th??ng qua c???ng thanh to??n Stripe', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3545, 1, 'vi', 'plugins/payment/payment', 'edit', 'Ch???nh s???a', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3546, 1, 'vi', 'plugins/payment/payment', 'settings', 'C??i ?????t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3547, 1, 'vi', 'plugins/payment/payment', 'activate', 'K??ch ho???t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3548, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Hu??? k??ch ho???t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3549, 1, 'vi', 'plugins/payment/payment', 'update', 'C???p nh???t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3550, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'H?????ng d???n c???u h??nh :name', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3551, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', '????? s??? d???ng :name b???n c???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3552, 1, 'vi', 'plugins/payment/payment', 'service_registration', '????ng k?? d???ch v??? v???i :name', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3553, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi ho??n t???t c??c b?????c ????ng k?? t???i :name, b???n s??? c?? c??c th??ng s??? Client ID, Client Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3554, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nh???p c??c th??ng s??? Client ID, Secret v??o ?? b??n ph???i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3555, 1, 'vi', 'plugins/payment/payment', 'method_name', 'T??n ph????ng th???c', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3556, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui l??ng cung c???p th??ng tin', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3557, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3558, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3559, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3560, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3561, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3562, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3563, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3564, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh to??n online qua :name', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3565, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Ch??? ????? th??? nghi???m', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3566, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Hu??? k??ch ho???t ph????ng th???c', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3567, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'B???n c?? ch???c ch???n mu???n hu??? ph????ng th???c th??nh to??n n??y?', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3568, 1, 'vi', 'plugins/payment/payment', 'agree', '?????ng ??', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3569, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3570, 1, 'vi', 'plugins/payment/payment', 'create', 'Th??m thanh to??n m???i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3571, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Tr??? l???i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3572, 1, 'vi', 'plugins/payment/payment', 'information', 'Th??ng tin', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3573, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3574, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3575, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh to??n khi giao h??ng (COD)', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3576, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3577, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Ch??a ho??n t???t', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3578, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', '???? ho??n th??nh', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3579, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', '??ang ho??n ti???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3580, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', '???? ho??n ti???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3581, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian l???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3582, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Th???t b???i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3583, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'H?????ng d???n kh??ch h??ng thanh to??n tr???c ti???p. C?? th??? ch???n thanh to??n khi giao h??ng ho???c chuy???n kho???n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3584, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'H?????ng d???n thanh to??n ??? (Hi???n th??? ??? trang th??ng b??o mua h??ng th??nh c??ng v?? trang thanh to??n)', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3585, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh to??n khi nh???n h??ng (COD)', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3586, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3587, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Th???c hi???n th??nh c??ng. Thanh to??n c???a b???n ??ang ???????c x??? l?? v?? s??? ???????c x??c nh???n b???i nh??n vi??n.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3588, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ng??y t???o', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3589, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Ph????ng th???c thanh to??n', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3590, 1, 'vi', 'plugins/payment/payment', 'total', 'T???ng c???ng', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3591, 1, 'vi', 'plugins/payment/payment', 'status', 'Tr???ng th??i', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3592, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Ph????ng th???c thanh to??n m???c ?????nh', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3593, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3594, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3595, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3596, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3597, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3598, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3599, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3600, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3601, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3602, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3603, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3604, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3605, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3606, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3607, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3608, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3609, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3610, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3611, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3612, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3613, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3614, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3615, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3616, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3617, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3618, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3619, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3620, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3621, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3622, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3623, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3624, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3625, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3626, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3627, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3628, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3629, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3630, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3631, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3632, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3633, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3634, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3635, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3636, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3637, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3638, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3639, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3640, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3641, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3642, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3643, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3644, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3645, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3646, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3647, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3648, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3649, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3650, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3651, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3652, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3653, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3654, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3655, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3656, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3657, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3658, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3659, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3660, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3661, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3662, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3663, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3664, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3665, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3666, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3667, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3668, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3669, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3670, 1, 'vi', 'auth', 'failed', 'Kh??ng t??m th???y th??ng tin ????ng nh???p h???p l???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3671, 1, 'vi', 'auth', 'throttle', '????ng nh???p kh??ng ????ng qu?? nhi???u l???n. Vui l??ng th??? l???i sau :seconds gi??y.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3672, 1, 'vi', 'auth', 'password', 'M???t kh???u kh??ng ch??nh x??c', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3673, 1, 'vi', 'pagination', 'previous', '&laquo; Tr?????c', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3674, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3675, 1, 'vi', 'passwords', 'reset', 'M???t kh???u ???? ???????c c???p nh???t!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3676, 1, 'vi', 'passwords', 'sent', 'Ch??ng t??i ???? g???i cho b???n ???????ng d???n thay ?????i m???t kh???u!', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3677, 1, 'vi', 'passwords', 'token', 'M?? x??c nh???n m???t kh???u kh??ng h???p l???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3678, 1, 'vi', 'passwords', 'user', 'Kh??ng t??m th???y th??nh vi??n v???i ?????a ch??? email n??y.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3679, 1, 'vi', 'validation', 'accepted', 'Tr?????ng :attribute ph???i ???????c ch???p nh???n.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3680, 1, 'vi', 'validation', 'active_url', 'Tr?????ng :attribute kh??ng ph???i l?? m???t URL h???p l???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3681, 1, 'vi', 'validation', 'after', 'Tr?????ng :attribute ph???i l?? m???t ng??y sau ng??y :date.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3682, 1, 'vi', 'validation', 'after_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u sau ho???c ????ng b???ng :date.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3683, 1, 'vi', 'validation', 'alpha', 'Tr?????ng :attribute ch??? c?? th??? ch???a c??c ch??? c??i.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3684, 1, 'vi', 'validation', 'alpha_dash', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i, s??? v?? d???u g???ch ngang.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3685, 1, 'vi', 'validation', 'alpha_num', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i v?? s???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3686, 1, 'vi', 'validation', 'array', 'Tr?????ng :attribute ph???i l?? d???ng m???ng.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3687, 1, 'vi', 'validation', 'before', 'Tr?????ng :attribute ph???i l?? m???t ng??y tr?????c ng??y :date.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3688, 1, 'vi', 'validation', 'before_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u tr?????c ho???c ????ng b???ng :date.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3689, 1, 'vi', 'validation', 'between.array', 'Tr?????ng :attribute ph???i c?? t??? :min - :max ph???n t???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3690, 1, 'vi', 'validation', 'between.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t??? :min - :max kB.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3691, 1, 'vi', 'validation', 'between.numeric', 'Tr?????ng :attribute ph???i n???m trong kho???ng :min - :max.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3692, 1, 'vi', 'validation', 'between.string', 'Tr?????ng :attribute ph???i t??? :min - :max k?? t???.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3693, 1, 'vi', 'validation', 'boolean', 'Tr?????ng :attribute ph???i l?? true ho???c false.', '2021-09-18 20:34:59', '2021-09-18 20:34:59'),
(3694, 1, 'vi', 'validation', 'confirmed', 'Gi?? tr??? x??c nh???n trong tr?????ng :attribute kh??ng kh???p.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3695, 1, 'vi', 'validation', 'date', 'Tr?????ng :attribute kh??ng ph???i l?? ?????nh d???ng c???a ng??y-th??ng.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3696, 1, 'vi', 'validation', 'date_equals', 'Tr?????ng :attribute ph???i l?? m???t ng??y b???ng v???i :date.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3697, 1, 'vi', 'validation', 'date_format', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng :format.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3698, 1, 'vi', 'validation', 'different', 'Tr?????ng :attribute v?? :other ph???i kh??c nhau.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3699, 1, 'vi', 'validation', 'digits', '????? d??i c???a tr?????ng :attribute ph???i g???m :digits ch??? s???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3700, 1, 'vi', 'validation', 'digits_between', '????? d??i c???a tr?????ng :attribute ph???i n???m trong kho???ng :min and :max ch??? s???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3701, 1, 'vi', 'validation', 'dimensions', 'Tr?????ng :attribute c?? k??ch th?????c kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3702, 1, 'vi', 'validation', 'distinct', 'Tr?????ng :attribute c?? gi?? tr??? tr??ng l???p.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3703, 1, 'vi', 'validation', 'email', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? email h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3704, 1, 'vi', 'validation', 'ends_with', 'Tr?????ng :attribute ph???i k???t th??c b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3705, 1, 'vi', 'validation', 'exists', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3706, 1, 'vi', 'validation', 'file', 'Tr?????ng :attribute ph???i l?? m???t t???p tin.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3707, 1, 'vi', 'validation', 'filled', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3708, 1, 'vi', 'validation', 'gt.array', 'M???ng :attribute ph???i c?? nhi???u h??n :value ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3709, 1, 'vi', 'validation', 'gt.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n :value kilobytes.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3710, 1, 'vi', 'validation', 'gt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3711, 1, 'vi', 'validation', 'gt.string', '????? d??i tr?????ng :attribute ph???i nhi???u h??n :value k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3712, 1, 'vi', 'validation', 'gte.array', 'M???ng :attribute ph???i c?? ??t nh???t :value ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3713, 1, 'vi', 'validation', 'gte.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value kilobytes.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3714, 1, 'vi', 'validation', 'gte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3715, 1, 'vi', 'validation', 'gte.string', '????? d??i tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3716, 1, 'vi', 'validation', 'image', 'Tr?????ng :attribute ph???i l?? ?????nh d???ng h??nh ???nh.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3717, 1, 'vi', 'validation', 'in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3718, 1, 'vi', 'validation', 'in_array', 'Tr?????ng :attribute ph???i thu???c t???p cho ph??p: :other.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3719, 1, 'vi', 'validation', 'integer', 'Tr?????ng :attribute ph???i l?? m???t s??? nguy??n.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3720, 1, 'vi', 'validation', 'ip', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IP.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3721, 1, 'vi', 'validation', 'ipv4', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv4.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3722, 1, 'vi', 'validation', 'ipv6', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv6.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3723, 1, 'vi', 'validation', 'json', 'Tr?????ng :attribute ph???i l?? m???t chu???i JSON.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3724, 1, 'vi', 'validation', 'lt.array', 'M???ng :attribute ph???i c?? ??t h??n :value ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3725, 1, 'vi', 'validation', 'lt.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n :value kilobytes.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3726, 1, 'vi', 'validation', 'lt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3727, 1, 'vi', 'validation', 'lt.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n :value k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3728, 1, 'vi', 'validation', 'lte.array', 'M???ng :attribute kh??ng ???????c c?? nhi???u h??n :value ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3729, 1, 'vi', 'validation', 'lte.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value kilobytes.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3730, 1, 'vi', 'validation', 'lte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3731, 1, 'vi', 'validation', 'lte.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3732, 1, 'vi', 'validation', 'max.array', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3733, 1, 'vi', 'validation', 'max.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute kh??ng ???????c l???n h??n :max kB.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3734, 1, 'vi', 'validation', 'max.numeric', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3735, 1, 'vi', 'validation', 'max.string', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3736, 1, 'vi', 'validation', 'mimes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3737, 1, 'vi', 'validation', 'mimetypes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3738, 1, 'vi', 'validation', 'min.array', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3739, 1, 'vi', 'validation', 'min.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t???i thi???u :min kB.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3740, 1, 'vi', 'validation', 'min.numeric', 'Tr?????ng :attribute ph???i t???i thi???u l?? :min.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3741, 1, 'vi', 'validation', 'min.string', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3742, 1, 'vi', 'validation', 'multiple_of', 'Tr?????ng :attribute ph???i l?? b???i s??? c???a :value', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3743, 1, 'vi', 'validation', 'not_in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3744, 1, 'vi', 'validation', 'not_regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3745, 1, 'vi', 'validation', 'numeric', 'Tr?????ng :attribute ph???i l?? m???t s???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3746, 1, 'vi', 'validation', 'password', 'M???t kh???u kh??ng ????ng.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3747, 1, 'vi', 'validation', 'present', 'Tr?????ng :attribute ph???i ???????c cung c???p.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3748, 1, 'vi', 'validation', 'prohibited', 'Tr?????ng :attribute b??? c???m.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3749, 1, 'vi', 'validation', 'prohibited_if', 'Tr?????ng :attribute b??? c???m khi :other l?? :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3750, 1, 'vi', 'validation', 'prohibited_unless', 'Tr?????ng :attribute b??? c???m tr??? khi :other l?? m???t trong :values.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3751, 1, 'vi', 'validation', 'regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3752, 1, 'vi', 'validation', 'required', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3753, 1, 'vi', 'validation', 'required_if', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi tr?????ng :other l?? :value.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3754, 1, 'vi', 'validation', 'required_unless', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng tr??? khi :other l?? :values.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3755, 1, 'vi', 'validation', 'required_with', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values c?? gi?? tr???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3756, 1, 'vi', 'validation', 'required_with_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values c?? gi?? tr???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3757, 1, 'vi', 'validation', 'required_without', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values kh??ng c?? gi?? tr???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3758, 1, 'vi', 'validation', 'required_without_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values kh??ng c?? gi?? tr???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3759, 1, 'vi', 'validation', 'same', 'Tr?????ng :attribute v?? :other ph???i gi???ng nhau.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3760, 1, 'vi', 'validation', 'size.array', 'Tr?????ng :attribute ph???i ch???a :size ph???n t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3761, 1, 'vi', 'validation', 'size.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i b???ng :size kB.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3762, 1, 'vi', 'validation', 'size.numeric', 'Tr?????ng :attribute ph???i b???ng :size.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3763, 1, 'vi', 'validation', 'size.string', 'Tr?????ng :attribute ph???i ch???a :size k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3764, 1, 'vi', 'validation', 'starts_with', 'Tr?????ng :attribute ph???i ???????c b???t ?????u b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3765, 1, 'vi', 'validation', 'string', 'Tr?????ng :attribute ph???i l?? m???t chu???i k?? t???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3766, 1, 'vi', 'validation', 'timezone', 'Tr?????ng :attribute ph???i l?? m???t m??i gi??? h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3767, 1, 'vi', 'validation', 'unique', 'Tr?????ng :attribute ???? c?? trong c?? s??? d??? li???u.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3768, 1, 'vi', 'validation', 'uploaded', 'Tr?????ng :attribute t???i l??n th???t b???i.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3769, 1, 'vi', 'validation', 'url', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng m???t URL.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3770, 1, 'vi', 'validation', 'uuid', 'Tr?????ng :attribute ph???i l?? m???t chu???i UUID h???p l???.', '2021-09-18 20:35:00', '2021-09-18 20:35:00'),
(3771, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-18 20:35:00', '2021-09-18 20:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$LEGLXqcph94uzXghyTCgruJ/ujgx34BqOU18pATF19OYS//C1tQW.', NULL, '2021-09-18 20:33:17', '2021-09-18 20:33:17', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'september', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Customer services\",\"menu_id\":\"customer-services\"}', '2021-09-18 20:33:19', '2021-09-18 20:33:19'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'september-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"D\\u1ecbch v\\u1ee5 kh\\u00e1ch h\\u00e0ng\",\"menu_id\":\"dich-vu-khach-hang\"}', '2021-09-18 20:33:19', '2021-09-18 20:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3772;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
