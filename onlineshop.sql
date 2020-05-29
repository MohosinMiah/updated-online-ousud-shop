-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 05:06 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `roll`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin@gmail.com', '75d23af433e0cea4c0e45a56dba18b30', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `offer` double(8,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `product_id`, `product_name`, `product_image`, `price`, `offer`, `qty`, `location`, `created_at`, `updated_at`) VALUES
(1, 'MzKUmD2TjfAAg6t0RsDyfx0AQI3Oxcz5W4yXt67g', 1, 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', '1590580823_fda_diabatis.png', 20.00, 1.00, 1, 1, '2020-05-27 06:03:49', NULL),
(2, 'hdNpbCdHExputaJWuR81mBg0mnTZgFiRegw629cT', 2, 'Baby Care demo', '1590685967_baby 1.jpg', 50.00, 10.00, 1, 1, '2020-05-28 11:16:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Diabatis', '1590580565_diabatisch.jpg', NULL, NULL),
(2, 'Baby Care', '1590685795_baby 3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comparelists`
--

CREATE TABLE `comparelists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `corporates`
--

CREATE TABLE `corporates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `gust_order_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1590717611_logo.PNG', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_15_024642_create_tproducts_table', 1),
(4, '2018_11_16_162131_create_pages_table', 1),
(5, '2018_11_18_011829_create_posts_table', 1),
(6, '2018_11_20_025855_add_some_column_to_tproductss_table', 1),
(7, '2018_11_20_041605_create_categories_table', 1),
(8, '2018_11_21_025538_create_carts_table', 1),
(9, '2018_11_23_022140_create_shippings_table', 1),
(10, '2018_11_23_033506_create_guests_table', 1),
(11, '2018_11_24_013645_create_payments_table', 1),
(12, '2018_11_24_013723_create_orders_table', 1),
(13, '2018_11_24_013805_create_order_details_table', 1),
(14, '2018_11_25_163416_create_wishlists_table', 1),
(15, '2018_11_25_164213_create_comparelists_table', 1),
(16, '2018_11_28_120300_create_subscrivers_table', 1),
(17, '2018_11_29_063205_create_admins_table', 1),
(18, '2018_12_01_083327_create_corporates_table', 1),
(19, '2018_12_01_114330_create_contacts_table', 1),
(20, '2018_12_21_051450_create_logos_table', 1),
(21, '2018_12_21_163256_create_sliders_table', 1),
(22, '2018_12_22_080428_create_titles_table', 1),
(23, '2019_01_27_125307_create_recent_views_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 80.00, 'success', '2020-05-28 11:18:29', NULL),
(2, 3, 1, 2, 150.00, 'Pending', '2020-05-28 11:20:03', NULL),
(3, 3, 1, 3, 150.00, 'Pending', '2020-05-28 11:39:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', 20.00, 1, '2020-05-28 11:18:29', NULL),
(2, 2, 2, 'Baby Care demo', 50.00, 1, '2020-05-28 11:20:03', NULL),
(3, 2, 4, 'Baby Care demo', 50.00, 1, '2020-05-28 11:20:03', NULL),
(4, 3, 2, 'Baby Care demo', 50.00, 1, '2020-05-28 11:39:16', NULL),
(5, 3, 8, 'Baby Care demo', 50.00, 1, '2020-05-28 11:39:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isVisible` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `url`, `content`, `metakey`, `isVisible`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '1590685694_about us.PNG', NULL, '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'about us', 'public', NULL, NULL);

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
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `payment_status`, `order_type`, `created_at`, `updated_at`) VALUES
(1, 'HandDelivery', 'Pending', 'Inside Dhaka', '2020-05-28 11:18:29', NULL),
(2, 'HandDelivery', 'Pending', 'Inside Dhaka', '2020-05-28 11:20:03', NULL),
(3, 'HandDelivery', 'Pending', 'Inside Dhaka', '2020-05-28 11:39:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addby` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post_type`, `image`, `content`, `status`, `metakey`, `addby`, `created_at`, `updated_at`) VALUES
(1, 'Health is wealth', 'demo', '1590720834_baby 2.jpg', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'public', 'blog', 1, '2020-05-28 20:53:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recent_views`
--

CREATE TABLE `recent_views` (
  `recent_view_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_views`
--

INSERT INTO `recent_views` (`recent_view_id`, `product_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'MzKUmD2TjfAAg6t0RsDyfx0AQI3Oxcz5W4yXt67g', '2020-05-27 06:01:45', NULL),
(2, 2, 'J492AXEeCWXBgixnBeTr4CgNBJkvW1CzGDewSoXN', '2020-05-28 11:29:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `house` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `house`, `road`, `area`, `city`, `zip`, `phone`, `created_at`, `updated_at`) VALUES
(1, 3, 'House 25', 'Road 10', 'Uttara', 'Dhaka', 1230, '01857126452', '2020-05-28 11:18:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Baby Care', 'baby care', 'http://127.0.0.1:8000/', '1590717398_baby 1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscrivers`
--

CREATE TABLE `subscrivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tproducts`
--

CREATE TABLE `tproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `userfor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isavailable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer` double(8,2) DEFAULT NULL,
  `expair_date` timestamp NULL DEFAULT NULL,
  `expair_date_ousud` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tproducts`
--

INSERT INTO `tproducts` (`id`, `cat_id`, `brand_name`, `generic_name`, `strength`, `dosage`, `price`, `userfor`, `dar`, `img_one`, `img_two`, `description`, `qty`, `type`, `isavailable`, `offer`, `expair_date`, `expair_date_ousud`, `status`, `metakey`, `metadescription`, `addby`, `created_at`, `updated_at`) VALUES
(1, 1, 'FDA', 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', '500', '22', 20.00, 'Both', NULL, '1590580823_fda_diabatis.png', '1590580823_fda_diabatis.png', '<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 400, NULL, 'YES', NULL, NULL, '2022-05-08 18:00:00', 'YES', 'diabatis tablet', 'diabatis tablet', '1', NULL, NULL),
(2, 2, 'Baby Care 01', 'Baby Care demo', '200', '12', 50.00, 'baby', '50', '1590685967_baby 1.jpg', '1590685967_baby 3.jpg', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 20, NULL, 'YES', 10.00, '2020-06-17 18:00:00', '2022-05-15 18:00:00', 'YES', 'baby', 'baby care', '1', NULL, NULL),
(3, 1, 'FDA 2', 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', '500', '22', 20.00, 'Both', NULL, '1590580823_fda_diabatis.png', '1590580823_fda_diabatis.png', '<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 400, NULL, 'YES', NULL, NULL, '2022-05-08 18:00:00', 'YES', 'diabatis tablet', 'diabatis tablet', '1', NULL, NULL),
(4, 2, 'Baby Care 02', 'Baby Care demo', '200', '12', 50.00, 'baby', '50', '1590685967_baby 1.jpg', '1590685967_baby 3.jpg', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 20, NULL, 'YES', 10.00, '2020-06-17 18:00:00', '2022-05-15 18:00:00', 'YES', 'baby', 'baby care', '1', NULL, NULL),
(5, 1, 'FDA 33', 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', '500', '22', 20.00, 'Both', NULL, '1590580823_fda_diabatis.png', '1590580823_fda_diabatis.png', '<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 400, NULL, 'YES', NULL, NULL, '2022-05-08 18:00:00', 'YES', 'diabatis tablet', 'diabatis tablet', '1', NULL, NULL),
(6, 2, 'Baby Care 33', 'Baby Care demo', '200', '12', 50.00, 'baby', '50', '1590685967_baby 1.jpg', '1590685967_baby 3.jpg', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 20, NULL, 'YES', 10.00, '2020-06-17 18:00:00', '2022-05-15 18:00:00', 'YES', 'baby', 'baby care', '1', NULL, NULL),
(7, 1, 'FDA 3355', 'FDA Approves Once-A-Day Drug for Type 2 Diabetes', '500', '22', 20.00, 'Both', NULL, '1590580823_fda_diabatis.png', '1590580823_fda_diabatis.png', '<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"article-content\">\r\n<div id=\"pageN_1\" class=\"csdpages\">\r\n<p>February 3, 2012 &mdash; Merck announced on February 2 that the US Food and Drug Administration (FDA) has approved&nbsp;<a class=\"cl_ref_drugs_342730\" href=\"https://reference.medscape.com/drug/januvia-sitagliptin-342730\">sitagliptin</a>&nbsp;and&nbsp;<a class=\"cl_ref_drugs_342717\" href=\"https://reference.medscape.com/drug/glucophage-metformin-342717\">metformin</a>&nbsp;hydrochloride (HCl) extended-release tablets (<em>Janumet XR</em>) for treatment of&nbsp;<a class=\"cl_ref_article_117853\" href=\"https://emedicine.medscape.com/article/117853-overview\">type 2 diabetes</a>.</p>\r\n<p>The new formulation, meant to be used as an adjunct to diet and exercise to improve glycemic control, combines sitagliptin (the active component of Januvia [Merck]), with extended-release metformin.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 400, NULL, 'YES', NULL, NULL, '2022-05-08 18:00:00', 'YES', 'diabatis tablet', 'diabatis tablet', '1', NULL, NULL),
(8, 2, 'Baby Care 3443', 'Baby Care demo', '200', '12', 50.00, 'baby', '50', '1590685967_baby 1.jpg', '1590685967_baby 3.jpg', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 20, NULL, 'YES', 10.00, '2020-06-17 18:00:00', '2022-05-15 18:00:00', 'YES', 'baby', 'baby care', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'David', '01857126452', 'david@gmail.com', '$2y$10$.q8cyOvF/yVSrso5Tb3AAOw76aJuAQpsmR/g.RQZDKOlM8EWi.JVm', 'Uttara,Dhaka', 'fSAsVOCFrS3TlLN8pNIHRZntNkHkWw9k5Mfyd4AT1ymbiScIpAtyhyFRZFuy', '2020-05-27 04:25:00', '2020-05-27 04:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'hdNpbCdHExputaJWuR81mBg0mnTZgFiRegw629cT', '2020-05-28 07:36:45', NULL),
(2, 2, 'iuGmG6y60L3OKb9uJx6LN9OiBLj2iNWiHhaRiE3r', '2020-05-28 11:39:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comparelists`
--
ALTER TABLE `comparelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporates`
--
ALTER TABLE `corporates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_email_unique` (`email`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `recent_views`
--
ALTER TABLE `recent_views`
  ADD PRIMARY KEY (`recent_view_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscrivers`
--
ALTER TABLE `subscrivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscrivers_email_unique` (`email`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tproducts`
--
ALTER TABLE `tproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comparelists`
--
ALTER TABLE `comparelists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporates`
--
ALTER TABLE `corporates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recent_views`
--
ALTER TABLE `recent_views`
  MODIFY `recent_view_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscrivers`
--
ALTER TABLE `subscrivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tproducts`
--
ALTER TABLE `tproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
