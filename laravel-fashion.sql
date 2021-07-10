-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 01:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(5, 'Zone 5', 'Iriga', 4431, '2021-07-05 04:45:42', '2021-07-05 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', 'Admin', '2021-07-07 14:48:11', '2021-07-07 14:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(15, 'T-Shirt', 'All T-Shirt', '2021-07-07 01:18:48', '2021-07-07 01:18:48'),
(16, 'Jumper', 'Kids', '2021-07-07 01:19:04', '2021-07-07 01:19:04'),
(17, 'Shoes', 'All Shoes', '2021-07-07 01:19:26', '2021-07-07 01:19:26'),
(18, 'Shorts', 'All shorts', '2021-07-07 01:19:45', '2021-07-07 01:19:45'),
(19, 'Skirts', 'All Skirts', '2021-07-07 01:19:53', '2021-07-07 01:19:53'),
(20, 'Blouses', 'Ladies Blouses', '2021-07-07 01:20:35', '2021-07-07 01:20:35'),
(21, 'Semi-Formal Dress', 'Ladies', '2021-07-07 01:20:55', '2021-07-07 01:20:55'),
(22, 'Dress', 'All Dress', '2021-07-07 01:21:19', '2021-07-07 01:21:19'),
(23, 'Off-Shoulder', 'All Off-Shoulder', '2021-07-07 01:22:39', '2021-07-07 01:22:39'),
(24, 'Wedding Gown', 'All Wedding Gowns', '2021-07-07 01:23:16', '2021-07-07 01:23:16'),
(25, 'Gowns', 'All Gowns', '2021-07-07 01:23:45', '2021-07-07 01:23:45'),
(26, 'Filipiniana and Mothers Gown', 'All Filipiniana and Mothers Gown', '2021-07-07 01:24:19', '2021-07-07 01:24:19'),
(27, 'Sando', 'All Sando', '2021-07-07 01:24:32', '2021-07-07 01:24:32'),
(28, 'Barong Tagalog', 'All Barong Tagalogs', '2021-07-07 01:26:26', '2021-07-07 01:26:26');

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
(1, '2020_04_19_173215_create_admins_table', 1),
(2, '2020_04_19_175655_create_addresses_table', 1),
(3, '2020_04_19_175938_create_categories_table', 1),
(4, '2020_04_20_141633_create_products_table', 1),
(5, '2020_04_20_142309_create_users_table', 1),
(6, '2020_04_20_142632_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(49, 'Wedding Gown 1', '1.jpg', 'With Complete bridal accesories:     ✅ Veil      ✅ Cord     ✅ Arras      ✅ Pillow (2)     ✅ Garter', '#52646e', 5000, 4500, 'wedding gown', 24, '2021-07-07 03:21:13', '2021-07-07 03:21:13'),
(50, 'Blue Gown', '1.jpg', '✔️ Debut Gown\r\n✔️ Ball Gown Umbrella Cut \r\n✔️ Long Gown', '#474a5b', 5000, 4500, '✔️ Debut Gown ✔️ Ball Gown Umbrella Cut  ✔️ Long Gown', 25, '2021-07-08 06:07:26', '2021-07-08 06:07:26'),
(51, 'Red Gown', '1.jpg', '✔️ Debut Gown\r\n✔️ Ball Gown Umbrella Cut \r\n✔️ Long Gown', '#3a060a', 5000, 4500, 'Debut Gown  Ball Gown Umbrella Cut   Long Gown', 25, '2021-07-08 06:09:52', '2021-07-08 06:09:52'),
(52, 'Blue Long Gown', '1.jpg', '✔️ Debut Gown\r\n✔️ Ball Gown Umbrella Cut \r\n✔️ Long Gown', '#07104a', 5000, 4500, '✔️ Debut Gown ✔️ Ball Gown Umbrella Cut  ✔️ Long Gown', 25, '2021-07-08 06:16:19', '2021-07-08 06:16:19'),
(53, 'Blue Stripe Gown', '1.jpg', '✔️ Debut Gown\r\n✔️ Ball Gown Umbrella Cut \r\n✔️ Long Gown', '#192849', 5000, 4500, '✔️ Debut Gown ✔️ Ball Gown Umbrella Cut  ✔️ Long Gown', 25, '2021-07-08 06:18:03', '2021-07-08 06:18:03'),
(54, 'Wedding Gown 2', '1.jpg', 'With Complete bridal accesories:\r\n    ✅ Veil \r\n    ✅ Cord\r\n    ✅ Arras \r\n    ✅ Pillow (2)\r\n    ✅ Garter', '#d3cac3', 6000, 5800, 'wedding gown', 24, '2021-07-08 06:30:05', '2021-07-08 06:30:05'),
(55, 'UNISEX T-SHIRTS FILA', '1.jpg', 'UNISEX T-SHIRTS 👕 on SALE‼️\r\nMade in Bangladesh\r\nFIT to SMALL - XLARGE \r\n✅ Premium Quality - 💯% cotton.\r\n✅High Quality, Fashionable, comfortable, soft and breathable cotton T-shirts.', '#e7c947,#c0161f,#120b12,#334745', 500, 450, 'fila shirt', 15, '2021-07-08 06:37:19', '2021-07-08 06:37:19'),
(56, 'Gap Shirt', '1.jpg', 'UNISEX T-SHIRTS 👕 on SALE‼️\r\nMade in Bangladesh\r\nFIT to SMALL - XLARGE \r\n✅ Premium Quality - 💯% cotton.\r\n✅High Quality, Fashionable, comfortable, soft and breathable cotton T-shirts.', '#0e0e18,#6d0d19,#0a0b10,#b9cade,#d3c13a', 600, 500, 'gap shirt', 15, '2021-07-08 06:40:03', '2021-07-08 06:40:03'),
(57, 'Guess Shirt', '1.jpg', 'UNISEX T-SHIRTS 👕 on SALE‼️\r\nMade in Bangladesh\r\nFIT to SMALL - XLARGE \r\n✅ Premium Quality - 💯% cotton.\r\n✅High Quality, Fashionable, comfortable, soft and breathable cotton T-shirts.', '#2c2747,#c69924,#a91819,#d3c4b2,#151515', 550, 500, 'guess shirt', 15, '2021-07-08 06:41:34', '2021-07-08 06:41:34'),
(58, 'Cross White Shorts', '1.jpg', '💯% in GOOD CONDITION.', '#b1bcc8', 80, 75, 'shorts white', 18, '2021-07-08 06:44:18', '2021-07-08 06:44:18'),
(59, 'Floral Short', '1.jpg', '💯% in GOOD CONDITION.', '#010006', 100, 85, 'floral shorts', 18, '2021-07-08 06:46:26', '2021-07-08 06:46:26'),
(60, 'Black Leather Shoes', '1.jpg', '💯% in GOOD CONDITION.', '#1b1b19', 600, 550, 'black shoes', 17, '2021-07-08 06:56:03', '2021-07-08 06:56:03'),
(61, 'Runner Shoes', '1.jpg', '💯% in GOOD CONDITION.', '#434144', 600, 550, 'rubber shoes', 17, '2021-07-08 06:56:57', '2021-07-08 06:56:57'),
(62, 'Red Skirt', '1.jpg', '💯% in GOOD CONDITION.', '#a90827', 150, 120, 'red skirt', 15, '2021-07-08 06:58:00', '2021-07-08 06:58:00'),
(63, 'Black Skirt', '1.jpg', '💯% in GOOD CONDITION.', '#131219', 120, 90, 'black skirt', 19, '2021-07-08 06:59:21', '2021-07-08 06:59:21'),
(64, 'LADIES SEMI-FORMAL DRESS', '1.jpg', '💯% in GOOD CONDITION', '#182533', 200, 180, 'dress', 21, '2021-07-08 07:05:18', '2021-07-08 07:05:18'),
(65, 'LADIES SEMI-FORMAL DRESS', '1.jpg', '💯% in GOOD CONDITION', '#dfd1d1', 200, 280, 'formal dress', 21, '2021-07-08 07:06:20', '2021-07-08 07:06:20'),
(66, 'Converse Sando Shirt', '1.jpg', '💯% in GOOD CONDITION', '#0f1128', 150, 120, 'sando shirt', 27, '2021-07-08 07:11:11', '2021-07-08 07:11:11'),
(67, 'Guess Sando Shirt', '1.jpg', '💯% in GOOD CONDITION', '#18131a', 200, 180, 'sando shirt', 27, '2021-07-08 07:12:54', '2021-07-08 07:12:54'),
(68, 'Blue Off Shoulder', '1.jpg', '💯% in GOOD CONDITION', '#99c5d6', 150, 100, 'blue off shoulder shirt', 23, '2021-07-08 07:14:43', '2021-07-08 07:14:43'),
(69, 'Red Off Shoulder Shirt', '1.jpg', '💯% in GOOD CONDITION', '#4b0304', 180, 150, 'off shoulder', 23, '2021-07-08 07:16:11', '2021-07-08 07:16:11'),
(70, 'Jumper 1', '1.jpg', '💯% in GOOD CONDITION', '#526c85', 300, 250, 'jumper', 16, '2021-07-08 07:18:31', '2021-07-08 07:18:31'),
(71, 'Jumper 2', '1.jpg', '💯% in GOOD CONDITION', '#122937', 300, 280, 'jumper black', 16, '2021-07-08 07:24:54', '2021-07-08 07:24:54'),
(72, 'Filipiniana Gown', '1.jpg', '💯% in GOOD CONDITION', '#bbbdb8', 600, 500, 'filipiniana gowns', 26, '2021-07-08 07:26:42', '2021-07-08 07:26:42'),
(73, 'Blue Filipiniana Gown', '1.jpg', '💯% in GOOD CONDITION', '#434e6a', 700, 650, 'filipiniana gowns', 26, '2021-07-08 07:28:48', '2021-07-08 07:28:48'),
(74, 'Bluses Colored', '1.jpg', '💯% in GOOD CONDITION', '#9dafb1', 120, 100, 'blouse', 20, '2021-07-08 07:30:34', '2021-07-08 07:30:34'),
(75, 'White Blouse', '1.jpg', '💯% in GOOD CONDITION', '#c0c0be', 200, 150, 'blouse', 20, '2021-07-08 07:31:32', '2021-07-08 07:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(1, 5, '49:1:#52646e:1', 'Placed', 4500, '2021-07-07 06:52:57', '2021-07-08 22:55:33'),
(2, 5, '48:1:#c37f80:1', 'Placed', 170, '2021-07-07 22:30:57', '2021-07-07 22:30:57'),
(3, 5, '57:1:#c69924:1,55:1:#e7c947:2', 'Placed', 950, '2021-07-08 07:35:48', '2021-07-08 07:35:48'),
(4, 5, '67:1:#18131a:1', 'Placed', 180, '2021-07-08 23:15:58', '2021-07-08 23:15:58'),
(5, 5, '73:1:#434e6a:1', 'Placed', 650, '2021-07-09 22:41:58', '2021-07-09 22:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `prev_password`, `address_id`, `created_at`, `updated_at`) VALUES
(5, 'User', 'user@mail.com', '12345', '098765432', NULL, 5, '2021-07-05 04:45:42', '2021-07-05 04:45:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
