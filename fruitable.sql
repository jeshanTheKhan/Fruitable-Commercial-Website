-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2024 at 10:55 PM
-- Server version: 8.0.35
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeshankh_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `cat_name`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vegetables', '1', NULL, '2024-05-19 01:08:45', '2024-05-19 11:26:59'),
(2, 'Fruits', '1', NULL, '2024-05-19 01:08:59', '2024-05-19 01:08:59'),
(3, 'Meat', '1', NULL, '2024-05-19 01:09:50', '2024-05-19 01:09:50'),
(6, 'Spice', '1', NULL, '2024-05-19 01:47:15', '2024-05-19 01:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `form_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`form_id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jeshan Khan', 'dqwdw@fe2fe', 'qdwdwd', '2024-05-18 02:47:47', '2024-05-18 02:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_phone`, `email`, `password`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Jhon Doe', '01154584', 'toma@gmail.com', '$2y$10$gRhaGXnSrOUL9RW2w1OchONkqwv376NIQ6UXHsLY5dfhaaZ4DAQCa', 'Sylhet', '2024-05-18 04:38:35', '2024-05-18 04:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` bigint UNSIGNED NOT NULL,
  `main_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mane_name2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main1_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main2_description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `main_name`, `mane_name2`, `main1_description`, `main2_description`, `main_image1`, `main_image2`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Friuts', 'Vegetables', '100% Organic Foods', 'Organic Veggies & Fruits Foods', 'Friuts.png', 'Vegetables.jpg', '1', NULL, '2024-05-19 17:36:55', '2024-05-19 17:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_27_035241_catagory', 2),
(6, '2024_04_27_104317_product', 3),
(7, '2024_04_28_231921_main', 4),
(8, '2024_04_29_031532_admin', 5),
(9, '2024_05_18_080919_create_testimonials_table', 6),
(10, '2024_05_18_083531_create_contracts_table', 7),
(11, '2024_05_18_100650_create_customers_table', 8),
(13, '2024_05_18_100741_create_orders_table', 9),
(14, '2024_05_18_101245_create_orderdetails_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderd_id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderd_id`, `order_id`, `product_id`, `qty`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '3', '2024-05-20 07:04:31', '2024-05-20 07:04:31'),
(2, 1, '3', '1', '0.6', '2024-05-20 07:04:31', '2024-05-20 07:04:31'),
(3, 2, '1', '1', '3', '2024-05-20 07:18:06', '2024-05-20 07:18:06'),
(4, 3, '1', '1', '3', '2024-05-20 09:17:40', '2024-05-20 09:17:40'),
(5, 3, '2', '1', '0.5', '2024-05-20 09:17:40', '2024-05-20 09:17:40'),
(6, 4, '1', '1', '3', '2024-05-20 15:19:19', '2024-05-20 15:19:19'),
(7, 4, '8', '1', '7.5', '2024-05-20 15:19:19', '2024-05-20 15:19:19'),
(8, 4, '20', '1', '0.65', '2024-05-20 15:19:19', '2024-05-20 15:19:19'),
(9, 5, '2', '1', '0.5', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(10, 5, '8', '1', '7.5', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(11, 5, '20', '1', '0.65', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(12, 5, '21', '1', '0.25', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(13, 5, '22', '1', '0.12', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(14, 6, '1', '3', '3', '2024-05-21 01:06:33', '2024-05-21 01:06:33'),
(15, 6, '2', '2', '0.5', '2024-05-21 01:06:33', '2024-05-21 01:06:33'),
(16, 6, '3', '1', '0.6', '2024-05-21 01:06:33', '2024-05-21 01:06:33'),
(17, 7, '1', '1', '3', '2024-05-21 01:36:37', '2024-05-21 01:36:37'),
(18, 8, '1', '1', '3', '2024-05-21 08:23:04', '2024-05-21 08:23:04'),
(19, 8, '3', '1', '0.6', '2024-05-21 08:23:04', '2024-05-21 08:23:04'),
(20, 9, '1', '1', '3', '2024-06-21 05:55:46', '2024-06-21 05:55:46'),
(21, 9, '5', '1', '0.8', '2024-06-21 05:55:46', '2024-06-21 05:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First_Name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_Name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Town` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Zipcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `First_Name`, `Last_Name`, `Town`, `Country`, `Zipcode`, `Phone`, `Email`, `total`, `shipping_address`, `order_date`, `order_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3111', '01325861062', 'princessnaziah41@gmail.com', '3.60', 'Silver Village ,House no:4,Block-C Road-1', '20-05-2024', '0', '2024-05-20 07:04:31', '2024-05-20 07:04:31'),
(2, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3111', '01325861062', 'princessnaziah41@gmail.com', '3.00', 'Silver Village ,House no:4,Block-C Road-1', '20-05-2024', '0', '2024-05-20 07:18:06', '2024-05-20 07:18:06'),
(3, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3111', '01325861062', 'princessnaziah41@gmail.com', '3.50', 'Silver Village ,House no:4,Block-C Road-1', '20-05-2024', '0', '2024-05-20 09:17:40', '2024-05-20 09:17:40'),
(4, '2', 'Tamanna', 'Sanjana', 'Sylhet', 'Bangladesh', '3034', '01616447397', 'tamannasanjana57@gmail.com', '11.15', 'Mitali', '20-05-2024', '0', '2024-05-20 15:19:19', '2024-05-20 15:19:19'),
(5, '2', 'Tarana', 'Mim', 'Sylhet', 'Bangladesh', '3034', '017######33', 'tarana@gmail.com', '9.02', 'Mitali', '20-05-2024', '0', '2024-05-20 15:33:48', '2024-05-20 15:33:48'),
(6, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3111', '01325861062', 'princessnaziah41@gmail.com', '10.60', 'Silver Village ,House no:4,Block-C Road-1', '21-05-2024', '0', '2024-05-21 01:06:33', '2024-05-21 01:06:33'),
(7, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3111', '01325861062', 'princessnaziah41@gmail.com', '3.00', 'Silver Village ,House no:4,Block-C Road-1', '21-05-2024', '0', '2024-05-21 01:36:37', '2024-05-21 01:36:37'),
(8, '2', 'Moshin', 'Khan', 'Sylhet', 'Bangladesh', '3100', '+8801607906754', 'jeshank1123@gmail.com', '3.60', 'Silver Village', '21-05-2024', '0', '2024-05-21 08:23:04', '2024-05-21 08:23:04'),
(9, '2', 'Jeshan', 'Khan', 'Sylhet', 'Bangladesh', '3100', '01607906754', 'jeshank1123@gmail.com', '3.80', 'Silver Village', '21-06-2024', '0', '2024-06-21 05:55:46', '2024-06-21 05:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jeshank1123@gmail.com', '$2y$10$1Htxrk3buPdABVmzO6qRu.3liv6X5xcSSFqzF.M/YhEn2JvxHKzSC', '2024-05-20 14:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_catagory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_description`, `product_brand`, `product_catagory`, `product_image`, `product_price`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mango', 'Sweet tropical fruit, Flesh, rich in vitamins, delicious.', 'Organic', 'Fruits', 'Mango.webp', '3.0', '1', NULL, '2024-05-19 02:11:35', '2024-05-19 21:21:15'),
(2, 'Watermelon', 'Juicy, refreshing fruit, rich in water, vitamins, and antioxidants.', 'Organic', 'Fruits', 'Watermelon.jpg', '0.5', '1', NULL, '2024-05-19 02:14:32', '2024-05-19 02:14:32'),
(3, 'Orange', 'Oranges are citrus fruits, rich in vitamin C, and refreshing.', 'Organic', 'Fruits', 'Orange.jpg', '0.6', '1', NULL, '2024-05-19 02:18:21', '2024-05-19 02:18:21'),
(5, 'Guava', 'Tropical fruit, sweet flavor, high in vitamin C.', 'Organic', 'Fruits', 'Guava.webp', '0.8', '1', NULL, '2024-05-19 02:27:59', '2024-05-19 02:27:59'),
(8, 'Beef', 'Cattle meat, versatile, rich flavor, protein source, culinary staple.', 'Fresh', 'Meat', 'Beef.webp', '7.50', '1', NULL, '2024-05-19 02:49:29', '2024-05-19 02:49:29'),
(9, 'Chicken', 'Versatile protein, used in diverse cuisines worldwide.', 'Fresh', 'Meat', 'Chicken.png', '3.7', '1', NULL, '2024-05-19 02:55:10', '2024-05-19 02:55:10'),
(10, 'Mutton', 'Tender, flavorful mutton cuts for savory culinary delights.', 'Fresh', 'Meat', 'Mutton.webp', '4.5', '1', NULL, '2024-05-19 02:58:05', '2024-05-19 02:58:05'),
(11, 'Duck', 'Waterproof, feathered, quacking, webbed, waddling, beaked, versatile, aquatic, adorable.', 'Fresh', 'Meat', 'Duck.jpg', '6.50', '1', NULL, '2024-05-19 03:00:04', '2024-05-19 03:00:04'),
(12, 'Potato', 'Versatile, nutritious tuber; culinary staple; diverse culinary applications.', 'Organic', 'Vegetables', 'Potato.jpg', '2.5', '1', NULL, '2024-05-19 03:01:56', '2024-05-19 03:01:56'),
(13, 'Tomato', 'Red, juicy, fruit, used in salads, sauces, and sandwiches.', 'Organic', 'Vegetables', 'Tomato.webp', '3.0', '1', NULL, '2024-05-19 03:04:30', '2024-05-19 21:22:02'),
(14, 'Cauliflower', 'Nutritious, versatile vegetable; low-calorie, high-fiber; various culinary applications.', 'Organic', 'Vegetables', 'Cauliflower.jpg', '1.25', '1', NULL, '2024-05-19 03:10:03', '2024-05-19 03:10:03'),
(19, 'Ladis Finger', 'Green, slender vegetable; rich in fiber, vitamins.', 'Fresh', 'Vegetables', 'Ladis Finger.webp', '0.25', '1', NULL, '2024-05-19 21:10:27', '2024-05-19 21:10:27'),
(20, 'Onion', 'Versatile, flavorful bulbs used in cooking worldwide.', 'Fresh', 'Spice', 'Onion.jpg', '0.65', '1', NULL, '2024-05-19 21:14:17', '2024-05-19 21:14:17'),
(21, 'Garlic', 'Pungent bulb, enhances flavor, medicinal benefits, rich history.', 'Fresh', 'Spice', 'Garlic.webp', '0.25', '1', NULL, '2024-05-19 21:16:18', '2024-05-19 21:16:18'),
(22, 'Ginger', 'A spicy root used in cooking and medicinally.', 'Fresh', 'Spice', 'Ginger.webp', '0.12', '1', NULL, '2024-05-19 21:17:44', '2024-05-19 21:17:44'),
(23, 'Chilli', 'Spicy fruit, various heat levels, used in cooking worldwide.', 'Fresh', 'Spice', 'Chilli.jpg', '0.40', '1', NULL, '2024-05-19 21:20:07', '2024-05-19 21:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `client_name`, `profession`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mahim Sir', 'Developer', 'Developer Expert in Laravel.', 'Mahim Sir.png', '2024-05-19 13:34:32', '2024-05-19 13:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JMT', 'user', 'jeshank1123@gmail.com', NULL, '$2y$10$hC0hyasnDXAgt0fi.Dm7rOfWOAKgfDCw3kML.eXjPd/D2U11Xwvma', NULL, '2024-04-26 21:51:18', '2024-04-26 21:51:18'),
(2, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$hC0hyasnDXAgt0fi.Dm7rOfWOAKgfDCw3kML.eXjPd/D2U11Xwvma', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderd_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `form_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderd_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
