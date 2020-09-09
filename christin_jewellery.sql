-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2020 at 12:04 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christin_jewellery`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` varchar(700) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 => Active, 0 => Inactive',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, '5e9169b7300ed39461586588087.png', 'About-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n\r\n<p>erra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes. Contrary to popular belief,</p>\r\n', 1, '2020-03-28 19:04:07', '2020-04-11 12:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'default.png',
  `contact` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '1=>superadmin,2=>superManager,3=>admin,4=>manager',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=>inactive,1=>active',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`, `contact`, `city`, `user_type`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 'default.png', NULL, NULL, 1, 1, 0, '2020-04-01 05:54:18', '2020-04-01 05:54:18', '2020-04-01 05:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(700) NOT NULL DEFAULT 'default.png',
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `title`, `description`, `slug`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '5e90761ebe05057941586525726.png', 'Free shipping', '<p><strong>On Orders over $99</strong><br />\r\nThis offer is valid on all our store items</p>\r\n', 'jewellery', 1, 0, '2020-03-27 18:46:03', '2020-07-13 16:55:21'),
(2, '5e907a138db9935451586526739.png', 'Shop Now', 'Banner description 1', 'engagement-and-weddings', 1, 0, '2020-03-27 18:46:03', '2020-07-13 16:58:05'),
(3, '5e907ad7e296361351586526935.png', 'Free Shipping', 'Banner description 2', NULL, 1, 0, '2020-03-27 18:46:03', '2020-04-10 19:25:35'),
(4, '5e907b160f7bf64071586526998.png', 'Products', '<p>Banner description</p>', NULL, 1, 0, '2020-03-27 18:46:03', '2020-04-10 19:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 => Active, 0 => Inactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 => Not Deleted, 1 => Deleted',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '5e9165d318a4241191586587091.png', 'porro quisquam est, qui dolorem ipsum quia do.', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariat.ur?&quot;</p>\r\n', 'terre', '', '', 1, 0, '2020-03-28 15:16:04', '2020-04-13 21:03:30'),
(2, '5e91662605d1861511586587174.png', 't=blog2', '<p>this is my blog with image</p>\r\n', NULL, NULL, NULL, 1, 0, '2020-03-28 15:18:08', '2020-04-11 12:09:34'),
(3, '5e9166367be2394901586587190.png', 'impedit quo minus id', '<p>&nbsp;accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum</p>\r\n', NULL, NULL, NULL, 0, 0, '2020-03-28 15:20:32', '2020-08-31 21:15:16'),
(4, '5e9165fe026cb23131586587134.png', 'labore et dolore magna aliqua. Ut', '<p>sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex</p>\r\n', NULL, NULL, NULL, 0, 0, '2020-03-28 15:34:48', '2020-08-31 21:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `image` varchar(700) NOT NULL DEFAULT 'default.png',
  `title` varchar(500) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `title`, `slug`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '5e915daf1336a91591586585007.png', 'Evermore', 'evermore', 1, 1, '2020-03-27 18:46:03', '2020-09-04 21:08:45'),
(2, '5e915d795ba1345151586584953.png', 'Evermore', 'evermore', 1, 1, '2020-03-27 18:46:03', '2020-09-03 23:27:19'),
(3, '5e915d9264b2e51301586584978.png', 'christina', 'christina', 1, 1, '2020-03-27 18:46:03', '2020-08-31 21:15:33'),
(4, '5e915daf1336a91591586585007.png', 'Tartan', 'tartan', 1, 1, '2020-03-27 18:46:03', '2020-08-31 21:15:39'),
(5, '5e915e473f5bb93831586585159.png', 'Pandora', 'pandora', 1, 1, '2020-04-11 11:35:59', '2020-09-02 23:18:16'),
(6, '5f1a785a8ce1c95801595570266.png', 'Ellani Collections', 'ellani-collections', 1, 0, '2020-04-11 11:36:48', '2020-07-24 15:57:46'),
(7, '5e915ec9ae41036981586585289.png', 'Brand 3', 'brand-3', 1, 1, '2020-04-11 11:38:09', '2020-08-31 21:15:48'),
(8, '5e915f0494ec869181586585348.png', 'Brand 4', 'brand-4', 1, 1, '2020-04-11 11:39:08', '2020-08-31 21:15:53'),
(9, '5f50eec1144fa10421599139521.png', 'DIESEL', 'diesel', 0, 0, '2020-09-03 23:25:21', '2020-09-04 21:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'default_category.png',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=>inactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>no, 1=>yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `slug`, `image`, `is_featured`, `admin_id`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 5, 'Rings', 'Rings', 'rings', '5e9037483c01b12971586509640.png', 1, 1, 'Rings', 'rings, bridal rings', 'jewellery rings', 1, 0, '2020-05-14 04:55:04', '2020-03-06 06:44:33'),
(2, 5, 'Necklace', NULL, 'necklaced', 'p_3.jpg', 0, 0, 'Necklace', NULL, NULL, 1, 1, '2020-05-14 08:50:44', '2020-03-06 06:44:46'),
(3, 5, 'Bracelet', NULL, 'bracelet', 'p_1.jpg', 0, 0, 'Bracelets', NULL, NULL, 1, 1, '2020-05-01 05:33:46', '2020-03-06 06:44:53'),
(4, 0, 'Watches', NULL, 'watches', '5eb6569ff0d2076441589008031.png', 0, 0, NULL, NULL, NULL, 1, 0, '2020-05-10 05:59:41', '2020-03-06 06:45:15'),
(5, 0, 'Jewellery', NULL, 'jewellery', 'default_category.png', 0, 0, 'Jewelleries', NULL, NULL, 1, 0, '2020-04-08 14:13:00', '2020-03-06 07:09:40'),
(6, 0, 'Gifts', NULL, 'gifts', 'default_category.png', 0, 0, NULL, NULL, NULL, 1, 0, '2020-03-06 07:11:24', '2020-03-06 07:09:49'),
(7, 0, 'Engagement & Weddings', 'Engagement & Weddings', 'engagement-and-weddings', 'default_category.png', 0, 0, NULL, NULL, NULL, 1, 0, '2020-03-27 11:48:52', '2020-03-27 11:48:52'),
(9, 5, 'ear rings', 'Ear Rings for women', 'ear-ring', '5e844d480b94581431585728840.png', 0, 1, NULL, NULL, NULL, 1, 1, '2020-04-03 06:19:52', '2020-04-01 07:34:57'),
(10, 5, 'Bracelet & Bangels', 'Bracelet & Bangels', 'bracelet-&-bangels', '5eabd0d6e12aa91951588318422.png', 1, 1, 'Bracelets', 'Diamond Bracelets', 'Bracelets', 1, 0, '2020-08-25 12:17:57', '2020-05-01 04:53:49'),
(11, 5, 'Necklaces & Pendants', 'Necklaces & Pendants', 'necklaces-&-pendants', '5eabd123d9d7782581588318499.png', 1, 1, 'Necklaces & Pendants', 'Necklaces & Pendants', 'Necklaces & Pendants', 1, 0, '2020-08-25 12:16:50', '2020-05-01 04:54:39'),
(12, 7, 'Engagement Rings', 'Engagement Rings', 'engagement-rings', '5eb64fd51efac70701589006293.png', 1, 1, 'Engagement Rings', 'Bridal Rings', 'Engagemnet & Weddings Rings', 1, 0, '2020-08-26 11:02:08', '2020-05-01 05:33:22'),
(13, 5, 'Rings', 'Rings', 'Rings', 'default_category.png', 0, 1, 'Rings', 'Rings', 'Rings', 1, 1, '2020-05-01 05:45:24', '2020-05-01 05:36:04'),
(14, 6, 'Mother\'s Day Gifts', 'Mother\'s Day Gifts', 'mothers-day-gifts', '5eb6531fe318632271589007135.png', 0, 1, 'Mother\'s Day Gifts', 'Mother\'s Day Gifts', 'Mother\'s Day Gifts, Gift Cards', 0, 0, '2020-09-03 05:53:58', '2020-05-04 13:12:48'),
(15, 7, 'Promise Rings', 'Promise Rings', 'promise-rings', '5eb64f7137eb438181589006193.png', 1, 1, 'Promise Rings', 'Promise Rings, wedding rings', 'Promise Rings jewellery', 1, 0, '2020-05-14 04:55:49', '2020-05-09 06:34:45'),
(16, 7, 'Wedding Bands', 'wedding bands', 'wedding-bands', '5eb6505ca749463661589006428.png', 1, 1, 'wedding bands', 'wedding bands', 'wedding bands', 1, 0, '2020-05-14 04:56:02', '2020-05-09 06:40:00'),
(17, 6, 'Birthday Gifts', 'Birthday Gifts', 'birthday-gifts', '5eb653891cb6043341589007241.png', 0, 1, NULL, NULL, NULL, 1, 0, '2020-05-09 06:54:01', '2020-05-09 06:54:01'),
(18, 5, 'Watches', 'casual watches', 'watch', '5eb6569ff0d2076441589008031.png', 0, 1, NULL, NULL, NULL, 1, 1, '2020-05-10 05:59:22', '2020-05-09 07:07:11'),
(19, 4, 'Ladies Watches', 'Ladies Watches', 'ladies-watches', '5eb8ef9d8d37749411589178269.png', 1, 1, '', '', '', 1, 0, '2020-08-26 11:02:33', '2020-05-11 06:24:29'),
(20, 4, 'Men\'s Watches', 'Men\'s Watches', 'men\'s-watches', '5eb8f101de46495671589178625.png', 1, 1, 'Men\'s Watches', 'Men\'s Watches', 'Men\'s Watches', 1, 0, '2020-08-25 12:18:37', '2020-05-11 06:30:25'),
(21, 7, 'Promise Rings', 'Promise Rings', 'promise-rings', '5ebd10c24c23410071589448898.png', 0, 1, '', '', '', 1, 1, '2020-05-23 08:54:14', '2020-05-14 09:33:34'),
(22, 7, 'Wedding Bands', 'Wedding Bands', 'wedding-bands', '5ec27a355434286051589803573.png', 1, 1, '', '', '', 1, 1, '2020-05-23 08:54:35', '2020-05-14 09:35:43'),
(23, 7, 'Bridal Sets', 'Bridal Sets', 'bridal-sets', '5ec27b0da4fe957991589803789.png', 0, 1, '', '', '', 1, 0, '2020-05-18 12:09:49', '2020-05-14 09:36:15'),
(24, 7, 'Wedding Accessories', 'Wedding Accessories', 'wedding-accessories', '5ec27aded7a9d58931589803742.png', 0, 1, '', '', '', 1, 0, '2020-05-18 12:09:02', '2020-05-14 09:36:54'),
(25, 5, 'Men\'s Jewellery', 'Men\'s Jewellery', 'men\'s-jewellery', '5ec27ab300b5884771589803699.png', 0, 1, '', '', '', 1, 0, '2020-08-26 11:02:58', '2020-05-14 09:40:02'),
(26, 6, 'E-Gift Cards', 'E-Gift Cards', 'e-gift-cards', '5ebd19b4166ed64471589451188.png', 0, 1, 'E-Gift Cards', 'E-Gift Cards', 'E-Gift Cards', 0, 0, '2020-09-03 05:54:12', '2020-05-14 10:13:08'),
(27, 5, 'Earrings', 'Earrings', 'earrings', '5ec8e45c763ab30311590223964.png', 1, 1, NULL, NULL, NULL, 1, 0, '2020-05-23 08:52:44', '2020-05-23 08:52:44'),
(28, 6, 'test', 'test', 'test', 'default_category.png', 0, 1, '', '', '', 0, 1, '2020-09-03 12:24:59', '2020-09-03 05:51:39'),
(29, 5, 'Diamond', 'Diamond', 'diamond', 'default_category.png', 0, 1, '', '', '', 1, 1, '2020-09-03 23:40:10', '2020-09-03 12:25:23'),
(30, 4, 'my watch', 'my watch', 'my-watch', 'default_category.png', 0, 1, '', '', '', 1, 0, '2020-09-04 13:43:34', '2020-09-04 13:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=>inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=>inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_return`
--

CREATE TABLE `exchange_return` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` varchar(700) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 => Inactive, 1 => Active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exchange_return`
--

INSERT INTO `exchange_return` (`id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'default.png', ' Sdolor sit a.met, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', '<p>d ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo volup.tas nulla pariatur.?&quot;</p>\r\n', 1, '2020-03-28 19:03:10', '2020-04-01 06:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `value` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `category_id`, `title`, `slug`, `value`, `created_at`, `updated_at`) VALUES
(1, 'rings', 'Total Carat Weight', 'weight', 'Under 1/4, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat, 1 - 1 1/2 Carat, 1 1/2 - 2 Carat, 2 Carat +', '2020-05-23 08:58:43', '2020-09-02 14:22:23'),
(2, 'rings', 'Cut', 'cutting', 'Round Cut, Princess Cut, Emerald Cut, Cushion Cut, Oval Cut, Marquise Cut, Pear Cut, Asscher Cut, Radiant Cut, Heart Cut', '2020-05-23 09:00:27', '2020-09-03 06:25:09'),
(3, 'rings', 'Gemstone', 'gemstone', 'Diamond, Ruby, Sapphire, Emerald, Alexandrite, Amethyst, Topaz, Pearl, Cubic Zirconia (CZ)', '2020-05-23 09:01:42', '2020-09-03 06:27:42'),
(4, 'rings', 'Ring Size', 'size', 'K, K 1/2, L, L 1/2, M, M 1/2, N, N 1/2, O, O 1/2, P, P 1/2, Q, Q 1/2, R, R 1/2, S, S 1/2', '2020-05-23 09:02:59', '2020-09-03 06:33:05'),
(5, 'earrings', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:09:56'),
(6, 'earrings', 'Sidestone Diamond Cut', 'cutting', 'Round, Pricess', '2020-05-23 09:00:27', '2020-05-24 07:10:12'),
(7, 'earrings', 'Gemstone', 'gemstone', 'Amethyst,Aquamarine,Pearl', '2020-05-23 09:01:42', '2020-05-24 07:33:52'),
(8, 'earrings', 'Earring Style', 'style', 'Cluster, Composite, Drop', '2020-05-23 09:06:39', '2020-05-24 07:10:40'),
(9, 'bracelet-&-bangels', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:10:50'),
(10, 'bracelet-&-bangels', 'Gemstone', 'gemstone', 'Amethyst, Aquamarine, Pearl, ', '2020-05-23 09:01:42', '2020-09-03 04:30:05'),
(11, 'necklaces-&-pendants', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:11:12'),
(12, 'necklaces-&-pendants', 'Gemstone', NULL, 'Amethyst, Aquamarine, Pearl', '2020-05-23 09:01:42', '2020-05-23 09:01:42'),
(13, 'necklaces-&-pendants', 'Length', 'length', '40cm, 45cm, 50cm', '2020-05-23 09:11:26', '2020-05-24 07:11:26'),
(14, 'men\'s-jewellery', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:11:49'),
(15, 'men\'s-jewellery', 'Size', 'size', 'L, L 1/2, M, M 1/2', '2020-05-23 09:02:59', '2020-09-02 14:51:45'),
(16, 'men\'s-jewellery', 'Length', 'length', '50cm, 55cm', '2020-05-23 09:11:26', '2020-05-24 07:12:00'),
(17, 'engagement-rings', 'Total Carat Weight', 'weight', 'Under 1/4, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat, 1 - 1 1/2 Carat, 1 1/2 - 2 Carat, 2 Carat +', '2020-05-23 08:58:43', '2020-09-03 06:30:52'),
(18, 'engagement-rings', 'Cut', 'cutting', 'Round Cut, Princess Cut, Emerald Cut, Cushion Cut, Oval Cut, Marquise Cut, Pear Cut, Asscher Cut, Radiant Cut, Heart Cut', '2020-05-23 09:00:27', '2020-09-03 06:31:37'),
(19, 'engagement-rings', 'Ring Size', 'size', 'K, K 1/2, L, L 1/2, M, M 1/2, N, N 1/2, O, O 1/2, P, P 1/2, Q, Q 1/2, R, R 1/2, S, S 1/2', '2020-05-23 09:02:59', '2020-09-03 06:32:31'),
(20, 'promise-rings', 'Total Carat Weight', 'weight', 'Under 1/4, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat, 1 - 1 1/2 Carat, 1 1/2 - 2 Carat, 2 Carat +', '2020-05-23 08:58:43', '2020-09-03 06:35:19'),
(21, 'promise-rings', 'Cut', 'cutting', 'Round Cut, Princess Cut, Emerald Cut, Cushion Cut, Oval Cut, Marquise Cut, Pear Cut, Asscher Cut, Radiant Cut, Heart Cut', '2020-05-23 09:00:27', '2020-09-03 06:38:26'),
(22, 'promise-rings', 'Ring Size', 'size', 'K, K 1/2, L, L 1/2, M, M 1/2, N, N 1/2, O, O 1/2, P, P 1/2, Q, Q 1/2, R, R 1/2, S, S 1/2', '2020-05-23 09:02:59', '2020-09-03 06:34:46'),
(23, 'wedding-bands', 'Total Carat Weight', 'weight', 'Under 1/4, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat, 1 - 1 1/2 Carat, 1 1/2 - 2 Carat, 2 Carat +', '2020-05-23 08:58:43', '2020-09-03 06:37:04'),
(24, 'wedding-bands', 'Cut', 'cutting', 'Round Cut, Princess Cut, Emerald Cut, Cushion Cut, Oval Cut, Marquise Cut, Pear Cut, Asscher Cut, Radiant Cut, Heart Cut', '2020-05-23 09:00:27', '2020-09-03 06:36:36'),
(25, 'wedding-bands', 'Ring Size', 'size', 'K, K 1/2, L, L 1/2, M, M 1/2, N, N 1/2, O, O 1/2, P, P 1/2, Q, Q 1/2, R, R 1/2, S, S 1/2', '2020-05-23 09:02:59', '2020-09-03 06:37:30'),
(26, 'bridal-sets', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:13:07'),
(27, 'bridal-sets', 'Center Diamond Cut', 'cutting', 'Round, Pricess', '2020-05-23 09:00:27', '2020-05-24 07:13:13'),
(28, 'bridal-sets', 'Ring Size', 'size', 'J, J 1/2, k, k 1/2, L, L 1/2', '2020-05-23 09:02:59', '2020-05-24 07:13:36'),
(29, 'wedding-accessories', 'Total Carat Weight', 'weight', 'Under 1/4 Carat, 1/4 - 1/2 Carat, 1/2 - 3/4 Carat', '2020-05-23 08:58:43', '2020-05-24 07:13:41'),
(30, 'wedding-accessories', 'Ring Size', 'size', 'J, J 1/2, k, k 1/2, L, L 1/2', '2020-05-23 09:02:59', '2020-05-24 07:13:49'),
(31, 'ladies-watches', 'Watch Type', 'style', 'Chronograph, Multi-Function, Automatic , Quartz', '2020-05-23 09:29:50', '2020-05-24 07:14:11'),
(32, 'men\'s-watches', 'Watch Type', 'style', 'Chronograph, Multi-Function, Automatic , Quartz', '2020-05-23 09:29:50', '2020-09-09 07:32:05'),
(33, 'rings', 'Metal Type', 'mtype', '9ct Gold,18ct Gold, Stainless Steel, Sterling Silver, Titanium, Platinum', '2020-05-24 08:06:30', '2020-09-02 14:03:04'),
(34, 'earrings', 'Metal Type', 'mtype', '9ct Gold,18ct Gold, Stainless Steel, Sterling Silver, Titanium', '2020-05-24 08:06:30', '2020-09-03 12:33:14'),
(35, 'bracelet-&-bangels', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(36, 'necklaces-&-pendants', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(37, 'men\'s-jewellery', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(38, 'engagement-rings', 'Metal Type', 'mtype', '9ct Gold,18ct Gold, Stainless Steel, Sterling Silver, Titanium, Platinum', '2020-05-24 08:06:30', '2020-09-03 06:33:46'),
(39, 'promise-rings', 'Metal Type', 'mtype', '9ct Gold,18ct Gold, Stainless Steel, Sterling Silver, Titanium, Platinum', '2020-05-24 08:06:30', '2020-09-03 06:34:15'),
(40, 'wedding-bands', 'Metal Type', 'mtype', '9ct Gold,18ct Gold, Stainless Steel, Sterling Silver, Titanium, Platinum', '2020-05-24 08:06:30', '2020-09-03 06:37:55'),
(41, 'bridal-sets', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(42, 'wedding-accessories', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(43, 'ladies-watches', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-05-24 08:07:15'),
(44, 'men\'s-watches', 'Metal Type', 'mtype', '10ct Gold,14ct Gold,18ct Gold,Stainless Steel, Sterling Silver,Titanium', '2020-05-24 08:06:30', '2020-09-09 07:32:09'),
(45, 'ladies-watches', 'Case Size', 'case_size', 's', '2020-05-23 09:29:50', '2020-09-09 08:03:02'),
(46, 'ladies-watches', 'Case Thickness', 'case_thickness', '2 mm, 2.5 mm', '2020-05-23 09:29:50', '2020-09-09 08:03:09'),
(47, 'ladies-watches', 'Dial Colour', 'dial_colour', 'white,black', '2020-05-23 09:29:50', '2020-09-09 08:03:16'),
(48, 'ladies-watches', 'Water Resistance', 'water_resistance', 'yes', '2020-05-23 09:29:50', '2020-09-09 08:03:27'),
(49, 'ladies-watches', 'Case Material', 'case_material', 'steel', '2020-05-23 09:29:50', '2020-09-09 07:57:24'),
(50, 'ladies-watches', 'Steel Case Finish', 'case_finish', 'steel', '2020-05-23 09:29:50', '2020-09-09 08:06:22'),
(51, 'ladies-watches', 'Steel Case Colour', 'case_colour', 'steel', '2020-05-23 09:29:50', '2020-09-09 08:06:32'),
(52, 'ladies-watches', 'Movement', 'movement', 'up', '2020-05-23 09:29:50', '2020-09-09 08:03:47'),
(53, 'ladies-watches', 'Strap Type', 'strap_type', 'up', '2020-05-23 09:29:50', '2020-09-09 08:06:43'),
(54, 'ladies-watches', 'Strap Colour', 'strap_colour', 'up', '2020-05-23 09:29:50', '2020-09-09 08:03:47'),
(55, 'men\'s-watches', 'Case Size', 'case_size', 's', '2020-05-23 09:29:50', '2020-09-09 08:03:02'),
(56, 'men\'s-watches', 'Case Thickness', 'case_thickness', '2 mm, 2.5 mm', '2020-05-23 09:29:50', '2020-09-09 08:03:09'),
(57, 'men\'s-watches', 'Dial Colour', 'dial_colour', 'white,black', '2020-05-23 09:29:50', '2020-09-09 08:03:16'),
(58, 'men\'s-watches', 'Water Resistance', 'water_resistance', 'yes', '2020-05-23 09:29:50', '2020-09-09 08:03:27'),
(59, 'men\'s-watches', 'Case Material', 'case_material', 'steel', '2020-05-23 09:29:50', '2020-09-09 07:57:24'),
(60, 'men\'s-watches', 'Steel Case Finish', 'case_finish', 'steel', '2020-05-23 09:29:50', '2020-09-09 08:06:22'),
(61, 'men\'s-watches', 'Steel Case Colour', 'case_colour', 'steel', '2020-05-23 09:29:50', '2020-09-09 08:06:32'),
(62, 'men\'s-watches', 'Movement', 'movement', 'up', '2020-05-23 09:29:50', '2020-09-09 08:03:47'),
(63, 'men\'s-watches', 'Strap Type', 'strap_type', 'up', '2020-05-23 09:29:50', '2020-09-09 08:06:43'),
(64, 'men\'s-watches', 'Strap Colour', 'strap_colour', 'up', '2020-05-23 09:29:50', '2020-09-09 08:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `footer_section`
--

CREATE TABLE `footer_section` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer_section`
--

INSERT INTO `footer_section` (`id`, `title`, `description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'content', 'FOLLOW US', 0, 0, '2020-03-27 18:46:03', '2020-09-03 17:27:28'),
(2, 'fb_link', 'https://www.facebook.com/christinajewellerybonnyriggplaza', 1, 0, '2020-03-27 18:46:03', '2020-09-03 17:25:27'),
(3, 'twitter_link', 'https://twitter.com', 0, 0, '2020-03-27 18:46:03', '2020-09-03 17:25:56'),
(4, 'linkedin_link', 'https://linkedin.com', 0, 0, '2020-03-27 18:46:03', '2020-09-03 17:26:02'),
(5, 'google_link', 'https://googleplus.com', 0, 0, '2020-03-27 18:46:03', '2020-09-03 17:26:08'),
(6, 'instagram_link', 'https://www.instagram.com/christina_jewellery/', 1, 0, '2020-03-27 18:46:03', '2020-09-03 17:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `lower_section`
--

CREATE TABLE `lower_section` (
  `id` int(11) NOT NULL,
  `image` varchar(700) NOT NULL DEFAULT 'default.png',
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lower_section`
--

INSERT INTO `lower_section` (`id`, `image`, `title`, `description`, `slug`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa fa-truck\"></i>', 'Free Shipping', 'Australia', NULL, 1, 0, '2020-03-27 18:46:03', '2020-05-19 01:33:08'),
(2, '<i class=\"fa fa-phone\"></i>', 'HELPLINE', '1800 945 252', 'contact-us', 1, 0, '2020-03-27 18:46:03', '2020-08-25 16:02:38'),
(3, '<i class=\"fa fa-gift\"></i>', 'SEE OUR', 'LATEST OFFERS', 'offers', 1, 0, '2020-03-27 18:46:03', '2020-05-19 17:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `multipleimages`
--

CREATE TABLE `multipleimages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `multipleimages`
--

INSERT INTO `multipleimages` (`id`, `name`, `created_at`) VALUES
(2, '1587034948-p_1.jpg', '2020-04-16 11:02:28'),
(3, '1587034948-about.png', '2020-04-16 11:02:28'),
(6, '1587034949-p_4.jpg', '2020-04-16 11:02:29'),
(7, '1587034949-p_5.jpg', '2020-04-16 11:02:29'),
(8, '1587034949-p_6.jpg', '2020-04-16 11:02:29'),
(12, '1594783921-20042011.jpg', '2020-07-15 03:32:01'),
(13, '1594787809-20024888.jpg', '2020-07-15 04:36:49'),
(15, '1594789999-20040567.jpg', '2020-07-15 05:13:19'),
(16, '1594790117-20036645.jpg', '2020-07-15 05:15:17'),
(17, '1594790231-20040581.jpg', '2020-07-15 05:17:11'),
(18, '1594790699-20040628.jpg', '2020-07-15 05:24:59'),
(20, '1595306359-20036621.jpg', '2020-07-21 04:39:19'),
(21, '1595306413-20006402.jpg', '2020-07-21 04:40:13'),
(22, '1595306469-20039233.jpg', '2020-07-21 04:41:09'),
(23, '1595306648-20027704.jpg', '2020-07-21 04:44:08'),
(24, '1595306860-20039257.jpg', '2020-07-21 04:47:41'),
(25, '1595307363-20045234.jpg', '2020-07-21 04:56:03'),
(27, '1595308129-20039226.jpg', '2020-07-21 05:08:49'),
(28, '1595309252-20036638.jpg', '2020-07-21 05:27:32'),
(29, '1595385808-20039271.jpg', '2020-07-22 02:43:28'),
(30, '1595386190-20040642.jpg', '2020-07-22 02:49:50'),
(32, '1595396224-20040659.jpg', '2020-07-22 05:37:04'),
(33, '1595396656-20045265.jpg', '2020-07-22 05:44:16'),
(34, '1595396716-20002305.jpg', '2020-07-22 05:45:16'),
(35, '1595397236-20040819.jpg', '2020-07-22 05:53:57'),
(36, '1595398214-20040802.jpg', '2020-07-22 06:10:14'),
(38, '1595398400-20045272.jpg', '2020-07-22 06:13:20'),
(40, '1595401888-20042028.jpg', '2020-07-22 07:11:28'),
(41, '1595569015-20040687.jpg', '2020-07-24 05:36:55'),
(42, '1595569148-20045241.jpg', '2020-07-24 05:39:08'),
(43, '1595569347-20045258.jpg', '2020-07-24 05:42:27'),
(44, '1596161232-20040703.jpg', '2020-07-31 02:07:12'),
(45, '1596161338-20045289.jpg', '2020-07-31 02:08:58'),
(46, '1596161379-20045296.jpg', '2020-07-31 02:09:39'),
(47, '1596161480-20036348.jpg', '2020-07-31 02:11:20'),
(48, '1596161658-20040666.jpg', '2020-07-31 02:14:18'),
(49, '1596171014-2002583.jpg', '2020-07-31 04:50:14'),
(50, '1596171108-20002145.JPG', '2020-07-31 04:51:48'),
(51, '1596171121-20002381.jpg', '2020-07-31 04:52:01'),
(53, '1596171163-20014339.jpg', '2020-07-31 04:52:43'),
(54, '1596171225-20018269.JPG', '2020-07-31 04:53:45'),
(55, '1596171237-20019716.JPG', '2020-07-31 04:53:57'),
(56, '1596171273-20025069.jpg', '2020-07-31 04:54:33'),
(57, '1596171363-20025014.JPG', '2020-07-31 04:56:03'),
(58, '1596171369-20019785.jpg', '2020-07-31 04:56:09'),
(59, '1596171376-20019723.JPG', '2020-07-31 04:56:16'),
(60, '1596171454-20025090.jpg', '2020-07-31 04:57:34'),
(61, '1596171460-20036379.jpg', '2020-07-31 04:57:41'),
(62, '1596171466-20036409.jpg', '2020-07-31 04:57:46'),
(63, '1596171471-20036430.jpg', '2020-07-31 04:57:52'),
(64, '1596171478-20036454.jpg', '2020-07-31 04:57:58'),
(65, '1596171547-20036461.JPG', '2020-07-31 04:59:07'),
(66, '1596171553-20036515.jpg', '2020-07-31 04:59:13'),
(67, '1596171558-20036522.jpg', '2020-07-31 04:59:18'),
(68, '1596171563-20036539.jpg', '2020-07-31 04:59:23'),
(70, '1596171754-20036584.JPG', '2020-07-31 05:02:34'),
(71, '1596171765-20039042.jpg', '2020-07-31 05:02:46'),
(73, '1596171778-20040680.jpg', '2020-07-31 05:02:58'),
(75, '1596171792-20040673.jpg', '2020-07-31 05:03:12'),
(76, '1596171801-20040727.jpg', '2020-07-31 05:03:21'),
(77, '1596171807-20042134.jpg', '2020-07-31 05:03:27'),
(78, '1596171812-20042141.jpg', '2020-07-31 05:03:33'),
(79, '1596171824-20046101.jpg', '2020-07-31 05:03:44'),
(80, '1596171867-20046033.JPG', '2020-07-31 05:04:27'),
(81, '1596173388-20045692.jpg', '2020-07-31 05:29:48'),
(82, '1596173396-20045685.jpg', '2020-07-31 05:29:56'),
(83, '1596176815-2004330.jpg', '2020-07-31 06:26:55'),
(84, '1596176823-20042066.jpg', '2020-07-31 06:27:03'),
(85, '1596176830-20042073.jpg', '2020-07-31 06:27:10'),
(86, '1596176835-20042110.jpg', '2020-07-31 06:27:16'),
(87, '1596176842-20046385.jpg', '2020-07-31 06:27:22'),
(88, '1596177763-20025434.jpg', '2020-07-31 06:42:43'),
(89, '1596177774-20025441.jpg', '2020-07-31 06:42:54'),
(90, '1596177781-20025458.jpg', '2020-07-31 06:43:01'),
(91, '1596178561-20025175.jpg', '2020-07-31 06:56:01'),
(92, '1596178577-20046996.jpg', '2020-07-31 06:56:17'),
(93, '1596179646-20045777.jpg', '2020-07-31 07:14:06'),
(94, '1596506809-20018245.jpg', '2020-08-04 02:06:50'),
(95, '1596506815-20036393.jpg', '2020-08-04 02:06:56'),
(96, '1596506822-20036546.jpg', '2020-08-04 02:07:02'),
(97, '1596506827-20039288.jpg', '2020-08-04 02:07:07'),
(98, '1596506835-20046170.jpg', '2020-08-04 02:07:15'),
(99, '1596506841-20046187.jpg', '2020-08-04 02:07:21'),
(100, '1596512005-20036324.jpg', '2020-08-04 03:33:25'),
(101, '1596512011-20040734.jpg', '2020-08-04 03:33:31'),
(102, '1596512016-20040741.jpg', '2020-08-04 03:33:36'),
(103, '1596512022-20040758.jpg', '2020-08-04 03:33:42'),
(104, '1596512027-20040765.jpg', '2020-08-04 03:33:47'),
(105, '1596512032-20040772.jpg', '2020-08-04 03:33:52'),
(106, '1596512036-20042080.jpg', '2020-08-04 03:33:56'),
(107, '1596512041-20042097.jpg', '2020-08-04 03:34:01'),
(108, '1596512046-20042103.jpg', '2020-08-04 03:34:06'),
(109, '1596516442-20025472.jpg', '2020-08-04 04:47:22'),
(110, '1596516448-20031107.jpg', '2020-08-04 04:47:28'),
(111, '1596516453-20040789.jpg', '2020-08-04 04:47:34'),
(112, '1596516459-20040796.jpg', '2020-08-04 04:47:39'),
(113, '1596516464-20047009.jpg', '2020-08-04 04:47:44'),
(114, '1596516470-20047016.jpg', '2020-08-04 04:47:50'),
(115, '1596518557-20014261.jpg', '2020-08-04 05:22:37'),
(116, '1596518563-20025106.jpg', '2020-08-04 05:22:43'),
(117, '1596518570-20025137.jpg', '2020-08-04 05:22:50'),
(118, '1596518575-20025151.jpg', '2020-08-04 05:22:55'),
(119, '1596518580-20046071.jpg', '2020-08-04 05:23:00'),
(120, '1596518588-20046088.jpg', '2020-08-04 05:23:08'),
(121, '1596523684-20014223.jpg', '2020-08-04 06:48:04'),
(122, '1596523875-20045722.jpg', '2020-08-04 06:51:15'),
(123, '1596523881-20045739.jpg', '2020-08-04 06:51:21'),
(124, '1596523887-20045746.jpg', '2020-08-04 06:51:27'),
(125, '1596523892-20045791.jpg', '2020-08-04 06:51:32'),
(126, '1596523898-20045807.jpg', '2020-08-04 06:51:38'),
(127, '1596523902-20045814.jpg', '2020-08-04 06:51:42'),
(128, '1596523908-20045920.jpg', '2020-08-04 06:51:48'),
(129, '1596523912-20046125.jpg', '2020-08-04 06:51:52'),
(130, '1596523920-20046132.jpg', '2020-08-04 06:52:00'),
(132, '1596682034-20036560.jpg', '2020-08-06 02:47:14'),
(133, '1596682039-20036591.jpg', '2020-08-06 02:47:19'),
(134, '1596682044-20039011.jpg', '2020-08-06 02:47:24'),
(135, '1596682049-20045418.jpg', '2020-08-06 02:47:29'),
(136, '1596682055-20045425.jpg', '2020-08-06 02:47:35'),
(137, '1596682061-20045555.jpg', '2020-08-06 02:47:41'),
(138, '1596682066-20045562.jpg', '2020-08-06 02:47:46'),
(139, '1596682071-20045647.jpg', '2020-08-06 02:47:51'),
(140, '1596682141-20045654.jpg', '2020-08-06 02:49:01'),
(141, '1596682231-20046002.JPG', '2020-08-06 02:50:31'),
(142, '1596682238-20046019.JPG', '2020-08-06 02:50:38'),
(143, '1596682244-20046026.JPG', '2020-08-06 02:50:44'),
(145, '1596682255-20046149.jpg', '2020-08-06 02:50:55'),
(146, '1596682260-20046156.jpg', '2020-08-06 02:51:00'),
(147, '1596682266-20046279.jpg', '2020-08-06 02:51:06'),
(148, '1596682272-20046286.jpg', '2020-08-06 02:51:12'),
(149, '1596682278-20046293.jpg', '2020-08-06 02:51:18'),
(151, '1596694588-20045661.jpg', '2020-08-06 06:16:28'),
(152, '1596694612-20045678.jpg', '2020-08-06 06:16:52'),
(153, '1596694618-20045883.jpg', '2020-08-06 06:16:58'),
(154, '1596694623-20045890.jpg', '2020-08-06 06:17:03'),
(155, '1596694628-20045906.jpg', '2020-08-06 06:17:08'),
(156, '1596694638-20045913.jpg', '2020-08-06 06:17:18'),
(157, '1596694645-20045951.jpg', '2020-08-06 06:17:25'),
(158, '1596694650-20045968.jpg', '2020-08-06 06:17:30'),
(159, '1596694655-20045975.jpg', '2020-08-06 06:17:35'),
(160, '1596694663-20045982.JPG', '2020-08-06 06:17:43'),
(161, '1596694668-20045999.jpg', '2020-08-06 06:17:48'),
(162, '1596694797-20046040.JPG', '2020-08-06 06:19:57'),
(163, '1596694804-20046064.jpg', '2020-08-06 06:20:04'),
(164, '1596694810-20046095.jpg', '2020-08-06 06:20:10'),
(165, '1596694816-20046200.JPG', '2020-08-06 06:20:16'),
(166, '1596694825-20046255.jpg', '2020-08-06 06:20:25'),
(167, '1596694831-20046262.jpg', '2020-08-06 06:20:31'),
(168, '1596696126-20045432.jpg', '2020-08-06 06:42:06'),
(169, '1596696133-20045449.jpg', '2020-08-06 06:42:13'),
(170, '1596696138-20045456.jpg', '2020-08-06 06:42:18'),
(171, '1596696143-20045463.jpg', '2020-08-06 06:42:23'),
(172, '1596696147-20045470.jpg', '2020-08-06 06:42:27'),
(173, '1596696152-20045487.jpg', '2020-08-06 06:42:32'),
(174, '1596696158-20045494.jpg', '2020-08-06 06:42:38'),
(175, '1596696163-20045500.jpg', '2020-08-06 06:42:43'),
(176, '1596780490-20045579.jpg', '2020-08-07 06:08:10'),
(177, '1596780497-20045586.jpg', '2020-08-07 06:08:17'),
(178, '1596780502-20045593.jpg', '2020-08-07 06:08:22'),
(179, '1596780507-20045609.jpg', '2020-08-07 06:08:27'),
(180, '1596780513-20045845.jpg', '2020-08-07 06:08:33'),
(182, '1597024075-20046194.jpg', '2020-08-10 01:47:55'),
(183, '1597024082-20046248.jpg', '2020-08-10 01:48:02'),
(184, '1597024087-20046316.jpg', '2020-08-10 01:48:07'),
(185, '1597024098-20046354.jpg', '2020-08-10 01:48:18'),
(186, '1597024160-20046323.JPG', '2020-08-10 01:49:20'),
(187, '1597024232-20045821.jpg', '2020-08-10 01:50:32'),
(188, '1597039298-2006884.jpg', '2020-08-10 06:01:38'),
(189, '1597039309-20014193.jpg', '2020-08-10 06:01:49'),
(190, '1597039317-20018351.jpg', '2020-08-10 06:01:57'),
(191, '1597039325-20036706.jpg', '2020-08-10 06:02:05'),
(192, '1597039334-20018436.jpg', '2020-08-10 06:02:14'),
(193, '1597039340-20036881.jpg', '2020-08-10 06:02:20'),
(194, '1597039346-20036874.jpg', '2020-08-10 06:02:26'),
(195, '1597039357-20025304.jpg', '2020-08-10 06:02:37'),
(196, '1597039364-20031282.jpg', '2020-08-10 06:02:44'),
(197, '1597039370-20036652.jpg', '2020-08-10 06:02:51'),
(198, '1597039378-20046552.jpg', '2020-08-10 06:02:58'),
(199, '1597039385-20039400.jpg', '2020-08-10 06:03:05'),
(200, '1597039391-20046606.jpg', '2020-08-10 06:03:11'),
(201, '1597039399-20039431.jpg', '2020-08-10 06:03:19'),
(202, '1597039406-20040956.jpg', '2020-08-10 06:03:26'),
(203, '1597039412-20041229.jpg', '2020-08-10 06:03:32'),
(204, '1597039417-20046590.jpg', '2020-08-10 06:03:37'),
(205, '1597039433-20046613.jpg', '2020-08-10 06:03:53'),
(206, '1597039440-20046620.jpg', '2020-08-10 06:04:00'),
(207, '1597039448-20046637.jpg', '2020-08-10 06:04:08'),
(208, '1597039454-20046651.jpg', '2020-08-10 06:04:14'),
(209, '1597039461-20046682.jpg', '2020-08-10 06:04:21'),
(210, '1597039466-20047085.jpg', '2020-08-10 06:04:26'),
(211, '1597039472-20046705.jpg', '2020-08-10 06:04:32'),
(212, '1597204960-20006907.jpg', '2020-08-12 04:02:40'),
(213, '1597204969-20014186.jpg', '2020-08-12 04:02:49'),
(214, '1597204984-20018405.jpg', '2020-08-12 04:03:04'),
(215, '1597204991-20025342.jpg', '2020-08-12 04:03:11'),
(216, '1597204998-20025359.jpg', '2020-08-12 04:03:18'),
(217, '1597205005-20025380.jpg', '2020-08-12 04:03:25'),
(218, '1597205014-20025403.jpg', '2020-08-12 04:03:34'),
(219, '1597205023-20031237.jpg', '2020-08-12 04:03:43'),
(220, '1597205030-20031251.jpg', '2020-08-12 04:03:50'),
(221, '1597205036-20031268.jpg', '2020-08-12 04:03:57'),
(222, '1597205044-20031275.jpg', '2020-08-12 04:04:04'),
(223, '1597205050-20032135.jpg', '2020-08-12 04:04:10'),
(224, '1597205061-20036669.jpg', '2020-08-12 04:04:21'),
(225, '1597205061-20036737.jpg', '2020-08-12 04:04:21'),
(226, '1597205061-20036768.jpg', '2020-08-12 04:04:21'),
(227, '1597205062-20036836.jpg', '2020-08-12 04:04:22'),
(228, '1597205080-20039394.jpg', '2020-08-12 04:04:40'),
(229, '1597205080-20039417.jpg', '2020-08-12 04:04:40'),
(230, '1597205080-20036843.jpg', '2020-08-12 04:04:40'),
(231, '1597205080-20039424.jpg', '2020-08-12 04:04:40'),
(232, '1597205081-20039448.jpg', '2020-08-12 04:04:41'),
(233, '1597205081-20039455.jpg', '2020-08-12 04:04:41'),
(234, '1597205081-20039462.jpg', '2020-08-12 04:04:41'),
(235, '1597205081-20039479.jpg', '2020-08-12 04:04:41'),
(236, '1597205081-20042240.jpg', '2020-08-12 04:04:41'),
(237, '1597205082-20042264.jpg', '2020-08-12 04:04:42'),
(238, '1597205082-20042271.jpg', '2020-08-12 04:04:42'),
(239, '1597205082-20042288.jpg', '2020-08-12 04:04:42'),
(240, '1597205098-20042295.jpg', '2020-08-12 04:04:58'),
(241, '1597205098-20046545.jpg', '2020-08-12 04:04:58'),
(242, '1597205098-20046569.jpg', '2020-08-12 04:04:58'),
(243, '1597205099-20046583.jpg', '2020-08-12 04:04:59'),
(244, '1597205099-20046644.jpg', '2020-08-12 04:04:59'),
(245, '1597205099-20046668.jpg', '2020-08-12 04:04:59'),
(246, '1597205099-20046675.jpg', '2020-08-12 04:04:59'),
(247, '1597205099-20046699.jpg', '2020-08-12 04:04:59'),
(248, '1597205099-20046712.jpg', '2020-08-12 04:04:59'),
(249, '1597205100-20047092.jpg', '2020-08-12 04:05:00'),
(250, '1597205100-20047108.jpg', '2020-08-12 04:05:00'),
(251, '1597205100-20047139.jpg', '2020-08-12 04:05:00'),
(252, '1597205115-20047153.jpg', '2020-08-12 04:05:15'),
(253, '1597205116-20047146.jpg', '2020-08-12 04:05:16'),
(254, '1597205116-20047184.jpg', '2020-08-12 04:05:16'),
(255, '1597205128-20047160.jpg', '2020-08-12 04:05:28'),
(256, '1597205161-20047177.jpg', '2020-08-12 04:06:01'),
(257, '1597205169-20014124.jpg', '2020-08-12 04:06:09'),
(258, '1597386834-20036966.jpg', '2020-08-14 06:33:54'),
(259, '1597386868-20039356.jpg', '2020-08-14 06:34:29'),
(260, '1597386905-20025274.jpg', '2020-08-14 06:35:06'),
(261, '1597386914-20040864.jpg', '2020-08-14 06:35:15'),
(262, '1597386923-20046392.jpg', '2020-08-14 06:35:23'),
(263, '1597386957-20042189.jpg', '2020-08-14 06:35:57'),
(264, '1597386957-20042196.jpg', '2020-08-14 06:35:57'),
(265, '1597387053-20039363.jpg', '2020-08-14 06:37:33'),
(266, '1597387059-20040840.jpg', '2020-08-14 06:37:39'),
(267, '1597387065-20040895.jpg', '2020-08-14 06:37:45'),
(268, '1597387071-20042172.jpg', '2020-08-14 06:37:51'),
(269, '1597387078-20046408.jpg', '2020-08-14 06:37:58'),
(270, '1597387084-20046453.jpg', '2020-08-14 06:38:04'),
(271, '1597387164-20039349.JPG', '2020-08-14 06:39:24'),
(272, '1597387171-20040871.jpg', '2020-08-14 06:39:31'),
(273, '1597387180-20046446.jpg', '2020-08-14 06:39:40'),
(275, '1597387202-20046460.jpg', '2020-08-14 06:40:02'),
(276, '1597387208-20046514.jpg', '2020-08-14 06:40:08'),
(277, '1597387227-20046484.jpg', '2020-08-14 06:40:27'),
(278, '1597387233-20046521.jpg', '2020-08-14 06:40:33'),
(279, '1597387239-20046538.jpg', '2020-08-14 06:40:39'),
(280, '1597387245-20046491.jpg', '2020-08-14 06:40:45'),
(281, '1597387330-20046415.jpg', '2020-08-14 06:42:10'),
(282, '1597387336-20046477.JPG', '2020-08-14 06:42:16'),
(283, '1598327782-20019815.jpg', '2020-08-25 03:56:22'),
(284, '1598327791-20006488.jpg', '2020-08-25 03:56:31'),
(285, '1598327809-20031152.jpg', '2020-08-25 03:56:49'),
(286, '1598327815-20031190.jpg', '2020-08-25 03:56:55'),
(287, '1598327822-20031206.jpg', '2020-08-25 03:57:03'),
(288, '1598327844-20037031.jpg', '2020-08-25 03:57:24'),
(289, '1598327850-20037055.jpg', '2020-08-25 03:57:30'),
(290, '1598327858-20037062.jpg', '2020-08-25 03:57:39'),
(291, '1598327868-20042233.jpg', '2020-08-25 03:57:48'),
(292, '1598327868-20040833.jpg', '2020-08-25 03:57:48'),
(293, '1598327882-20037079.jpg', '2020-08-25 03:58:02'),
(294, '1598327891-20037109.jpg', '2020-08-25 03:58:11'),
(295, '1598328144-20048747.jpg', '2020-08-25 04:02:24'),
(296, '1598328150-20046507.jpg', '2020-08-25 04:02:30'),
(297, '1598328158-20046439.jpg', '2020-08-25 04:02:38'),
(298, '1598328182-20039318.jpg', '2020-08-25 04:03:02'),
(299, '1598332476-20025540.JPG', '2020-08-25 05:14:36'),
(300, '1598332487-20025557.JPG', '2020-08-25 05:14:47'),
(302, '1598332610-20042578.JPG', '2020-08-25 05:16:50'),
(303, '1598332619-20040949.JPG', '2020-08-25 05:16:59'),
(304, '1598332627-20040901.jpg', '2020-08-25 05:17:07'),
(305, '1598414027-20006501.jpg', '2020-08-26 03:53:47'),
(306, '1598414033-20006723.jpg', '2020-08-26 03:53:53'),
(307, '1598414041-20019808.jpg', '2020-08-26 03:54:01'),
(308, '1598414047-20025564.jpg', '2020-08-26 03:54:07'),
(309, '1598414052-20031121.jpg', '2020-08-26 03:54:12'),
(310, '1598414058-20036935.jpg', '2020-08-26 03:54:18'),
(311, '1598414064-20036942.jpg', '2020-08-26 03:54:24'),
(312, '1598414070-20036959.jpg', '2020-08-26 03:54:30'),
(313, '1598414076-20037024.jpg', '2020-08-26 03:54:36'),
(314, '1598414083-20037086.jpg', '2020-08-26 03:54:43'),
(315, '1598414108-20037093.jpg', '2020-08-26 03:55:08'),
(316, '1598414113-20039035.jpg', '2020-08-26 03:55:13'),
(317, '1598414118-20039059.jpg', '2020-08-26 03:55:18'),
(318, '1598414126-20039097.jpg', '2020-08-26 03:55:26'),
(319, '1598414131-20040826.jpg', '2020-08-26 03:55:31'),
(320, '1598414136-20042202.jpg', '2020-08-26 03:55:36'),
(321, '1598414144-20048877.jpg', '2020-08-26 03:55:44'),
(322, '1598509888-20046118.jpg', '2020-08-27 06:31:28'),
(323, '1598510063-20036553.jpg', '2020-08-27 06:34:23'),
(324, '1598578212-20046989.jpg', '2020-08-28 01:30:12'),
(325, '1598584253-20045388.jpg', '2020-08-28 03:10:53'),
(326, '1598584362-20045395.jpg', '2020-08-28 03:12:42'),
(327, '1598584443-20045401.jpg', '2020-08-28 03:14:03'),
(329, '1598584660-20045517.jpg', '2020-08-28 03:17:40'),
(330, '1598584665-20045531.jpg', '2020-08-28 03:17:45'),
(331, '1598584670-20045548.jpg', '2020-08-28 03:17:50'),
(332, '1598584818-20045524.jpg', '2020-08-28 03:20:18'),
(333, '1598585249-20046347.jpg', '2020-08-28 03:27:29'),
(334, '1598585898-20006884.jpg', '2020-08-28 03:38:18'),
(335, '1598937707-20007140.jpg', '2020-09-01 05:21:47'),
(336, '1598937714-20007201.jpg', '2020-09-01 05:21:54'),
(337, '1598937722-20007256.jpg', '2020-09-01 05:22:02'),
(338, '1598937729-20007331.jpg', '2020-09-01 05:22:09'),
(339, '1598937735-20007348.jpg', '2020-09-01 05:22:15'),
(340, '1598937755-20018467.jpg', '2020-09-01 05:22:35'),
(341, '1598937763-20018498.jpg', '2020-09-01 05:22:43'),
(342, '1598937770-20031299.jpg', '2020-09-01 05:22:50'),
(343, '1598937777-20031312.jpg', '2020-09-01 05:22:57'),
(344, '1598937784-20031329.jpg', '2020-09-01 05:23:04'),
(345, '1598937790-20031343.jpg', '2020-09-01 05:23:10'),
(346, '1598937798-20037208.jpg', '2020-09-01 05:23:18'),
(347, '1598937804-20037345.jpg', '2020-09-01 05:23:24'),
(348, '1598937813-20037352.jpg', '2020-09-01 05:23:33'),
(349, '1598937820-20037369.jpg', '2020-09-01 05:23:40'),
(350, '1598937826-20039073.jpg', '2020-09-01 05:23:46'),
(351, '1598937832-20039493.jpg', '2020-09-01 05:23:52'),
(352, '1598937838-20039509.jpg', '2020-09-01 05:23:58'),
(353, '1598937850-20039554.jpg', '2020-09-01 05:24:10'),
(354, '1598937856-20040994.jpg', '2020-09-01 05:24:17'),
(355, '1598937864-20048891.jpg', '2020-09-01 05:24:24'),
(356, '1598937870-20048914.jpg', '2020-09-01 05:24:30'),
(357, '1598937877-20048938.jpg', '2020-09-01 05:24:37'),
(358, '1598937883-20048945.jpg', '2020-09-01 05:24:43'),
(359, '1598937890-20048969.jpg', '2020-09-01 05:24:50'),
(360, '1598937897-20048976.jpg', '2020-09-01 05:24:57'),
(361, '1598937903-20049010.jpg', '2020-09-01 05:25:04'),
(362, '1598937911-20049027.jpg', '2020-09-01 05:25:11'),
(363, '1598937918-20049034.jpg', '2020-09-01 05:25:18'),
(364, '1598937925-20049041.jpg', '2020-09-01 05:25:25'),
(366, '1598940649-20016128.jpg', '2020-09-01 06:10:49'),
(367, '1598940655-20016142.jpg', '2020-09-01 06:10:55'),
(368, '1598940661-20039530.jpg', '2020-09-01 06:11:01'),
(369, '1599006704-20007058.jpg', '2020-09-02 00:31:44'),
(370, '1599006711-20037130.jpg', '2020-09-02 00:31:51'),
(371, '1599006717-20037185.jpg', '2020-09-02 00:31:57'),
(372, '1599100341-20007126.jpg', '2020-09-03 02:32:22'),
(373, '1599100348-20007294.jpg', '2020-09-03 02:32:28'),
(374, '1599100355-20007287.jpg', '2020-09-03 02:32:35'),
(375, '1599100361-20007317.jpg', '2020-09-03 02:32:41'),
(376, '1599100368-20018450.jpg', '2020-09-03 02:32:48'),
(377, '1599100375-20016074.jpg', '2020-09-03 02:32:55'),
(378, '1599100381-20031336.jpg', '2020-09-03 02:33:01'),
(379, '1599100387-20035983.jpg', '2020-09-03 02:33:07'),
(380, '1599100394-20037154.jpg', '2020-09-03 02:33:14'),
(381, '1599100400-20037239.jpg', '2020-09-03 02:33:20'),
(382, '1599100407-20037246.jpg', '2020-09-03 02:33:28'),
(383, '1599100413-20037253.jpg', '2020-09-03 02:33:33'),
(384, '1599100419-20037277.jpg', '2020-09-03 02:33:39'),
(385, '1599100427-20037284.jpg', '2020-09-03 02:33:47'),
(386, '1599100434-20037307.jpg', '2020-09-03 02:33:54'),
(387, '1599100442-20037314.jpg', '2020-09-03 02:34:02'),
(388, '1599100450-20037338.jpg', '2020-09-03 02:34:10'),
(389, '1599100457-20037376.jpg', '2020-09-03 02:34:17'),
(390, '1599100465-20039516.jpg', '2020-09-03 02:34:25'),
(391, '1599100470-20039523.jpg', '2020-09-03 02:34:31'),
(392, '1599100477-20039547.jpg', '2020-09-03 02:34:38'),
(393, '1599100485-20041533.jpg', '2020-09-03 02:34:45'),
(394, '1599100496-20018535.jpg', '2020-09-03 02:34:56'),
(396, '1599546255-20047368.jpg', '2020-09-08 06:24:15'),
(397, '1599546269-20047375.jpg', '2020-09-08 06:24:29'),
(398, '1599546277-20047382.jpg', '2020-09-08 06:24:37'),
(399, '1599546285-20047634.jpg', '2020-09-08 06:24:46'),
(400, '1599546293-20047641.jpg', '2020-09-08 06:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'a@b.c', 1, '2020-04-08 10:47:37', '2020-05-14 05:32:11'),
(2, 'a@b.com', 1, '2020-04-08 10:47:58', '2020-05-14 05:32:11'),
(9, 'f.khk', 1, '2020-04-08 10:55:00', '2020-05-14 05:32:11'),
(10, 'aa@bb.com', 1, '2020-05-18 14:58:53', '2020-05-18 14:58:53'),
(11, 'cc@ff.com', 1, '2020-05-18 14:59:39', '2020-05-18 14:59:39'),
(12, 'info@cdmcg.com.au', 0, '2020-05-18 15:01:12', '2020-05-18 15:01:12'),
(13, 'kam@cdmcg.com.au', 0, '2020-05-18 15:02:01', '2020-05-18 15:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `guest_email` varchar(100) DEFAULT NULL,
  `guest_contact` varchar(100) DEFAULT NULL,
  `order_number` varchar(100) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `payment_mode` varchar(100) NOT NULL,
  `promocodeId` int(11) NOT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=pending, 2= complete, 3=>cancelled',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>pending,2=>progress,3=>completed',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `processed_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `refunded_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_email`, `guest_contact`, `order_number`, `price`, `payment_mode`, `promocodeId`, `discount`, `payment_id`, `payment_status`, `status`, `created_at`, `updated_at`, `processed_at`, `completed_at`, `cancelled_at`, `refunded_at`) VALUES
(1, 0, 'parvez.tbwebnet@gmail.com', '659644844848', 'ORDER3000303321', 85, 'cash', 0, '0', NULL, 2, 2, '2020-04-18 12:32:22', '2020-07-24 11:57:22', NULL, '2020-07-23 23:57:22', NULL, NULL),
(2, 0, 'parvezkhan03@gmail.com', '98765542112', 'ORDER1007912206', 68, 'cash', 1, '17', NULL, 1, 1, '2020-04-18 12:34:00', '2020-07-28 09:51:27', NULL, NULL, NULL, NULL),
(3, 27, '', '', 'ORDER7164294803', 246.5, 'cash', 2, '43.5', NULL, 2, 2, '2020-04-18 12:37:03', '2020-04-18 15:05:56', NULL, NULL, NULL, NULL),
(4, 0, 'kam@cdmcg.com.au', '0433322125', 'ORDER5664260483', 200, 'zippay', 0, '0', NULL, 2, 2, '2020-05-09 11:51:00', '2020-07-24 11:56:48', NULL, '2020-07-23 23:56:48', NULL, NULL),
(5, 0, 'kam@cdmcg.com.au', '0433322125', 'ORDER8088306667', 200, 'paypal', 0, '0', NULL, 1, 1, '2020-05-09 11:58:45', '2020-05-09 11:58:45', NULL, NULL, NULL, NULL),
(6, 35, '', '', 'ORDER9166622735', 180, 'cash', 0, '0', NULL, 1, 1, '2020-05-10 07:27:10', '2020-05-10 07:27:10', NULL, NULL, NULL, NULL),
(7, 36, '', '', 'ORDER0628983464', 250, 'paypal', 0, '0', NULL, 2, 2, '2020-05-14 09:20:17', '2020-08-18 06:37:55', '2020-07-23 23:56:25', '2020-08-17 18:37:55', NULL, NULL),
(8, 27, '', '', 'ORDER6708081753', 450, 'paypal', 0, '0', NULL, 2, 2, '2020-05-18 09:25:33', '2020-07-28 09:54:54', NULL, '2020-07-27 21:54:54', NULL, '2020-07-27 21:52:27'),
(9, 27, '', '', 'ORDER3048262712', 54, 'afterpay', 0, '0', '', 2, 1, '2020-05-23 07:30:31', '2020-05-23 07:31:47', NULL, NULL, NULL, NULL),
(10, 27, '', '', 'ORDER7428668951', 54, 'zippay', 0, '0', NULL, 2, 2, '2020-05-23 07:36:17', '2020-05-25 06:53:14', NULL, NULL, NULL, NULL),
(11, 27, '', '', 'ORDER2254693029', 54, 'afterpay', 0, '0', '', 2, 4, '2020-05-23 07:42:55', '2020-06-08 01:51:42', NULL, NULL, NULL, NULL),
(12, 27, '', '', 'ORDER9472062844', 54, 'zippay', 0, '0', '', 2, 4, '2020-05-23 08:05:19', '2020-07-14 09:57:21', '2020-07-13 21:27:26', '2020-07-13 21:31:18', '2020-07-13 21:40:40', '2020-07-13 21:57:21'),
(13, 27, '', '', 'ORDER0546221961', 180, 'paypal', 0, '0', NULL, 2, 1, '2020-06-15 04:52:37', '2020-08-18 06:34:04', NULL, '2020-08-17 18:33:55', '2020-07-27 21:51:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `item`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'ORDER3000303321', 0, 6, 1, 85, '2020-04-18 12:32:23', '2020-04-18 12:32:23'),
(2, 'ORDER1007912206', 0, 6, 1, 85, '2020-04-18 12:34:00', '2020-04-18 12:34:00'),
(3, 'ORDER7164294803', 0, 3, 1, 120, '2020-04-18 12:37:03', '2020-04-18 12:37:03'),
(4, 'ORDER7164294803', 0, 6, 2, 85, '2020-04-18 12:37:03', '2020-04-18 12:37:03'),
(5, 'ORDER7428668951', NULL, 9, 1, 54, '2020-05-23 07:36:17', '2020-05-23 07:36:17'),
(6, 'ORDER2254693029', NULL, 9, 1, 54, '2020-05-23 07:42:55', '2020-05-23 07:42:55'),
(7, 'ORDER9472062844', NULL, 9, 1, 54, '2020-05-23 08:05:19', '2020-05-23 08:05:19'),
(8, 'ORDER0546221961', NULL, 1, 1, 180, '2020-06-15 04:52:37', '2020-06-15 04:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 => INactive, 1=> Active',
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `image`, `title`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'pricing-policy', '5e91a195bba6075791586602389.png', 'Pricing Policy', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Pricing Policy', 'christina pricing policy', 'christina pricing policy', 1, 0, '2020-03-28 09:19:40', '2020-05-14 17:49:52'),
(2, 'privacy-policy', '5e91953b26d4121691586599227.png', 'Privacy Policy', '<p><span style=\"font-size:18px\"><strong>Our Privacy Policy</strong></span></p>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 1, 0, '2020-03-28 09:19:40', '2020-05-14 17:50:25'),
(3, 'terms-and-conditions', 'default.png', 'Terms and Conditions', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Exchange and Returns', '', '', 1, 0, '2020-03-28 09:19:40', '2020-04-13 20:11:52'),
(4, 'payment-options', 'default.png', 'Payment Options', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Payment Options', '', '', 1, 0, '2020-03-28 09:19:40', '2020-04-13 20:12:13'),
(5, 'faq', 'default.png', 'FAQ', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Frequently Asked Questions', '', '', 1, 0, '2020-03-28 09:19:40', '2020-08-28 01:06:43'),
(6, 'about-us', '5f4e4996ae8b630351598966166.png', 'About us', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'About us', '', '', 1, 0, '2020-04-03 21:47:23', '2020-09-01 23:16:06'),
(7, 'exchange-and-returns', 'default.png', 'Exchange and Returns', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'Exchange and Returns', '', '', 1, 0, '2020-03-28 09:19:40', '2020-04-13 20:15:51'),
(8, 'careers', 'default.png', 'Careers', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 'careers', '', '', 1, 0, '2020-03-28 09:19:40', '2020-05-01 15:40:18'),
(9, '24-hour-helpline', 'default.png', '24 HOUR HELPLINE', '<p>sfsbfdh thy etyuyettyetyte tytey</p>\r\n', '', '', '', 1, 1, '2020-04-11 16:37:21', '2020-04-13 20:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 => INactive, 1=> Active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default.png', 'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', 1, '2020-03-28 09:19:40', '2020-04-01 06:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(100) NOT NULL DEFAULT 'default.png',
  `actual_price` double NOT NULL,
  `discount` int(11) NOT NULL,
  `discounted_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `mtype` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `gemstone` varchar(100) DEFAULT NULL,
  `cutting` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `case_size` varchar(100) DEFAULT NULL,
  `case_thickness` varchar(100) DEFAULT NULL,
  `dial_colour` varchar(100) DEFAULT NULL,
  `water_resistance` varchar(100) DEFAULT NULL,
  `case_material` varchar(100) DEFAULT NULL,
  `case_finish` varchar(100) DEFAULT NULL,
  `case_colour` varchar(100) DEFAULT NULL,
  `movement` varchar(100) DEFAULT NULL,
  `strap_type` varchar(100) DEFAULT NULL,
  `strap_colour` varchar(100) DEFAULT NULL,
  `height` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `resizable` tinyint(4) NOT NULL,
  `in_sale` int(11) NOT NULL DEFAULT '0',
  `sale_period` tinyint(4) NOT NULL DEFAULT '0',
  `sale_start` varchar(100) NOT NULL DEFAULT '0',
  `sale_end` varchar(100) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(500) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 0=>Inactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>no, 1=>yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_id`, `category_id`, `name`, `description`, `image`, `actual_price`, `discount`, `discounted_price`, `quantity`, `brand`, `product_code`, `color`, `type`, `mtype`, `size`, `length`, `weight`, `gemstone`, `cutting`, `style`, `case_size`, `case_thickness`, `dial_colour`, `water_resistance`, `case_material`, `case_finish`, `case_colour`, `movement`, `strap_type`, `strap_colour`, `height`, `width`, `resizable`, `in_sale`, `sale_period`, `sale_start`, `sale_end`, `is_featured`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Bracelet Bangles', 'Bracelet Bangles', '5eb8e59dd461234411589175709.png', 200, 10, 180, 96, 'Evermore', 'p4598', 'Silver', 'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', 0, 1, 1, '2020-05-02', '2020-05-30', 1, 'Bracelet Bangles', 'Bracelet Bangles', 'Silver Bracelet Bangles', 0, 0, '2020-02-26 11:48:26', '2020-02-26 11:48:26', '2020-02-26 11:48:26'),
(2, 1, 11, 'Necklace', 'Golden Colour Necklace', '5eabd40b58eb618591588319243.png', 150, 20, 120, 0, 'Tartan', 'p4592', 'Silver', 'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 1, 1, '2020-05-01', '2020-05-10', 0, 'Necklace', 'Necklace', 'Golden Colour Necklace', 0, 0, '2020-02-26 11:51:20', '2020-02-26 11:51:20', '2020-02-26 11:51:20'),
(3, 1, 11, 'Platinum Necklace', 'Platinum  Coated Necklace', '5eabd3f42a48840611588319220.png', 150, 20, 120, 47, 'Prelude', 'p4698', '', 'Diamond', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 1, 'Platinum Necklace', 'Platinum Necklace', 'Platinum  Coated Necklace', 0, 0, '2020-02-26 11:51:20', '2020-02-26 11:51:20', '2020-02-26 11:51:20'),
(4, 1, 10, 'Platinum Bracelet', 'Bracelet Bangles', '5eabd3301103c19211588319024.png', 250, 10, 225, 0, 'Evermore', 'p4518', 'Silver', 'Platinum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 1, 'Platinum Bracelet', 'Platinum Bracelet', 'Bracelet Bangles', 0, 0, '2020-02-26 11:48:26', '2020-02-26 11:48:26', '2020-02-26 11:48:26'),
(5, 1, 1, 'Platinum Ring', 'Platinum Ring', '5eabd22d1506c29301588318765.png', 120, 15, 102, 0, 'Evermore', 'p4568', 'Silver', 'Platinum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 0, 'Platinum Ring', 'Platinum Ring', 'Platinum Ring', 0, 0, '2020-02-26 11:48:26', '2020-02-26 11:48:26', '2020-02-26 11:48:26'),
(6, 1, 1, 'Diamond Ring ', 'Diamond Ring', '5eabd28e8c34012061588318862.png', 100, 15, 85, 88, 'Prelude', 'p3598', '', 'Diamond', '10ct Gold', 'k,k 1/2,L,L 1/2,M,M 1/2', NULL, '', 'Amethyst', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 1, 'Diamond Ring ', 'Diamond Ring ', 'Diamond Ring', 0, 0, '2020-02-26 11:48:26', '2020-02-26 11:48:26', '2020-02-26 11:48:26'),
(8, 1, 27, 'ear ring11', 'desccc12', '5f1a7663c0f8069331595569763.png', 100, 3, 97, 4, 'Tartan', 'P00121', 'Black', '', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '111211', '111221', 1, 1, 2, '0', '0', 0, 'ear ring11', 'ear ring11', 'desccc12', 0, 0, '2020-04-01 09:14:38', '2020-04-01 09:14:38', '2020-04-01 15:14:29'),
(9, 1, 12, 'Gold Ring ', ' Beautiful  Golden Ring for Bridal', '5eabd2cd2d61140171588318925.png', 60, 10, 54, 96, 'Prelude', 'P2536', 'Silver', 'Gold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '2', 0, 1, 2, '0', '0', 0, 'golden rings', 'rings , jewelleries', 'Beautiful Golden Rings', 0, 0, '2020-04-15 12:38:42', '2020-04-15 12:38:42', '2020-04-15 12:38:42'),
(10, 1, 1, 'Diamond Ring', ' Beautiful  Diamond Ring for Bridal', '5eabd2f69112b18471588318966.png', 80, 10, 72, 100, 'Evermore', 'P2563', 'Silver', 'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '2', 1, 0, 0, '0', '0', 0, 'diamond ring', 'rings , all jewelleries', 'Bridaln diamond ring', 0, 0, '2020-04-15 12:38:42', '2020-04-15 12:38:42', '2020-04-15 12:38:42'),
(11, 1, 19, 'Gold Tone Stainless Steel Watch', 'Ladies Gold Tone Stainless Steel Watch', '5eb657de97dc192831589008350.png', 250, 20, 200, 98, 'Christina', 'P13546', 'Silver', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, 1, 1, '2020-05-10', '2020-05-31', 1, 'Gold Tone Stainless Steel Watch', 'Gold Tone Stainless Steel Watch', 'Gold Tone Stainless Steel Watch', 1, 0, '2020-05-09 07:12:30', '2020-05-09 07:12:30', '2020-05-09 07:12:30'),
(12, 1, 20, 'Mens Watches', 'Men\'s Watches', '5eb8f1660202d41021589178726.png', 250, 0, 250, 199, 'Christina', 'p88645', 'Black', 'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, 0, 0, '0', '0', 0, 'Men\'s Watches', 'Men\'s Watches', 'Men\'s Watches', 1, 0, '2020-05-11 06:32:06', '2020-05-11 06:32:06', '2020-05-11 06:32:06'),
(13, 1, 15, 'Promise Ring', 'Promise Ring', '5eb8f2c9b7a6c43281589179081.png', 500, 10, 450, 99, 'Christina', 'p986854', 'Silver', 'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, 0, 0, '0', '0', 0, 'Promise Ring', 'Promise Ring', 'Promise Ring', 0, 0, '2020-05-11 06:38:01', '2020-05-11 06:38:01', '2020-05-11 06:38:01'),
(14, 1, 1, 'Gold Ring ', ' Beautiful  Golden Ring for Bridal', 'p1.jpg', 60, 10, 54, 100, 'Prelude', 'P285368', 'Yellow', 'Gold', '10ct Gold', 'L,M,M 1/2', NULL, '', '', 'Round', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '2', 0, 1, 1, '2020-05-10', '2020-12-31', 0, 'golden rings', 'rings, jewelleries', 'Beautiful Golden Rings', 1, 1, '2020-07-16 05:28:05', '2020-07-16 05:28:05', '2020-07-29 00:04:26'),
(15, 0, 1, 'Diamond Ring', ' Beautiful  Diamond Ring for Bridal', 'p2.jpg', 80, 10, 72, 100, 'Evermore', 'P256693', 'White', 'Diamond', '', '', '', '3/4 - 2 Carat', 'Aquamarine', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '2', 1, 0, 0, '0', '0', 0, 'diamond ring', 'rings , all jewelleries', 'Bridaln diamond ring', 1, 1, '2020-07-16 05:28:05', '2020-07-16 05:28:05', '2020-07-29 00:04:35'),
(16, 1, 10, 'CZ Cross Bracelet', 'Ellani Collections Sterling Silver CZ Pave Set Cross Bracelet & Rhodium Plated.', '1594783921-20042011.jpg', 99, 5, 94.05, 10, 'Ellani Collections', 'B189', 'White', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23mm', '15mm', 0, 1, 2, '0', '0', 0, 'Cross Bracelet', 'Bracelet', 'Sterling Silver CZ Cross Bracelet', 1, 0, '2020-07-16 05:32:47', '2020-07-16 05:32:47', '2020-07-16 05:32:47'),
(17, 1, 10, 'Infinity Bracelet', 'Ellani Collections Sterling Silver CZ Infinity Bracelet with Rose gold & Rhodium Plated. ', '1594789999-20040567.jpg', 119, 10, 107.1, 10, '', 'B185R', 'White', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.5mm', '7.2mm', 1, 1, 2, '0', '0', 0, 'Infinity Bracelet ', 'Bracelet', 'Sterling Silver CZ Infinity Bracelet', 1, 0, '2020-07-16 05:32:47', '2020-07-16 05:32:47', '2020-07-16 05:32:47'),
(18, 0, 10, 'Infinity Bracelet', 'Ellani Collections Sterling Silver CZ Infinity Bracelet Rhodium Plated', '1594790117-20036645.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'B185S', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.5mm', '7.2mm', 0, 0, 0, '0', '0', 0, 'Infinity Bracelet ', 'Bracelet', 'Sterling Silver CZ Infinity Bracelet', 1, 0, '2020-07-16 05:32:47', '2020-07-16 05:32:47', '2020-07-16 05:32:47'),
(19, 0, 10, 'Eye Bracelet', 'Ellani Collections Sterling Silver Blue and White CZ Eye Bracelet Rhodium Plated', '1594790231-20040581.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'B196', 'White/Blue', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.5mm', '8mm', 0, 0, 0, '0', '0', 0, 'Eye Bracelet', 'Bracelet', 'Steling Silver CZ Eye Bracelet', 1, 0, '2020-07-16 05:32:47', '2020-07-16 05:32:47', '2020-07-16 05:32:47'),
(20, 0, 10, 'Four Leaf Clover', 'Ellani Collections Sterling Silver CZ Four Leaf Clover Bracelet Rhodium Plated', '1594790699-20040628.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'B212', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.6mm', '12.6mm', 0, 0, 0, '0', '0', 0, 'Four Leaf Clover Bracelet', 'Bracelet', 'Sterling Silver CZ four Leaf Clover Bracelet', 1, 0, '2020-07-16 05:32:47', '2020-07-16 05:32:47', '2020-07-16 05:32:47'),
(21, 0, 10, 'Pearl Bracelet', 'Ellani Collections Sterling Silver Fresh Water Pearl Bracelet Rhodium Plated', '1594787809-20024888.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'B209', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '7.5mm', 1, 0, 0, '0', '0', 0, 'Fresh Water Pearls Bracelet', 'Bracelet', 'Sterling Silver and Fresh Water Pearl Bracelet', 1, 0, '2020-07-16 05:32:48', '2020-07-16 05:32:48', '2020-07-16 05:32:48'),
(22, 0, 10, 'Double Heart Bracelet', 'Ellani Collections Sterling Silver CZ Double Heart Bracelet Rhodium Plated ', '1595306413-20006402.jpg', 109, 0, 109, 1, 'ELLANI COLLECTION', 'B188', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24mm', '10.2mm', 1, 0, 0, '0', '0', 0, 'Double Heart Bracelet', 'Bracelet', 'Sterling Silver  double Heart Bracelet', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(23, 0, 10, 'Tennis Bracelet Gold Plated', 'Ellani Collections Sterling Silver CZ Tennis Bracelet Claw Setting Yellow Gold Plated', '1595306469-20039233.jpg', 329, 0, 329, 2, 'ELLANI COLLECTION', 'B201G', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.8mm', '3.8mm', 0, 0, 0, '0', '0', 0, 'Tennis Bracelet', 'Bracelet', 'Sterling Silver Tennis Bracelet Yellow  Gold Plated', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(24, 0, 10, 'Tennis Bracelet ', 'Ellani Collections Sterling Silver CZ Tennis Bracelet Claw Setting Rhodium Plated', '1595306648-20027704.jpg', 269, 0, 269, 20, 'ELLANI COLLECTION', 'B201S', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.8mm', '3.8mm', 0, 0, 0, '0', '0', 0, 'Tennis Bracelet', 'Bracelet', 'Sterling Silver Tennis Bracelet Rhodium Plated', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(25, 0, 10, 'Tennis Bracelet ', 'Ellani Collections Sterling Silver Bezal Crown Setting Tennis Bracelet Rhodium Plated', '1595306860-20039257.jpg', 289, 0, 289, 1, 'ELLANI COLLECTION', 'B205', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.8mm', '4.8mm', 0, 0, 0, '0', '0', 0, 'Tennis Bracelet Bezel Setting', 'Bracelet', 'Sterling Silver Tennis Bracelet Crown Setting ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(26, 0, 10, 'CZ Open Tear Bracelet', 'Ellani Collections Sterling Silver CZ Pave Set Open Tear Bracelet Rhodium Plated', '1595307363-20045234.jpg', 269, 0, 269, 10, 'ELLANI COLLECTION', 'B202', 'White', 'Cubic Zircona', 'sterling silver', '', '200mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.7mm', '11mm', 0, 0, 0, '0', '0', 0, 'Open Tear CZ Bracelet', 'Bracelet', 'Sterling Silver OpenTear Bracelet ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(27, 0, 10, 'CZ 4 Row Pave set Bangel', 'Ellani Collections Sterling Silver CZ 4 Row Pave Setting Bangel Rhodium Plated', '1595306359-20036621.jpg', 369, 0, 369, 10, 'ELLANI COLLECTION', 'B215', 'white', 'Cubic Zircona', 'sterling silver', 'Dia 60mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.7mm', '6.2mm', 0, 0, 0, '0', '0', 0, ' CZ Pave set Bangel', 'Bangel', 'Sterling Silver CZ Pave set Bangel', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(28, 0, 10, 'CZ 5 Row Pave Set Bangel', 'Ellani Collections Sterling Silver CZ 5 Row Pave Setting Bangel Rhodium Plated', '1595308129-20039226.jpg', 349, 0, 349, 1, 'ELLANI COLLECTION', 'B128', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 60mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.4mm', '8mm', 0, 0, 0, '0', '0', 0, ' CZ Pave set Bangel', 'Bangel', 'Sterling Silver CZ Pave set Bangel', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(29, 0, 10, 'Shell Pearl Bracelet', 'Ellani Collections Shell Pearl Bracelet with CZ Heart Charm Rhodium Plated', '1595309252-20036638.jpg', 79, 0, 79, 1, 'ELLANI COLLECTION', 'B146W', 'White', 'Shell Pearl', 'sterling silver', 'Dia 62mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.4mm', '10.4mm', 0, 0, 0, '0', '0', 0, 'Shell Pearl Bracelet', 'Bracelet', 'Shell Pearl Bracelet with CZ Heart Charm', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(30, 0, 27, 'CZ Pave 3 Row Huggies', 'Ellani Collections Sterling Silver CZ 3 Row pave set Huggies Rhodium Plated', '1595385808-20039271.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E272', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 14.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.6mm', '4.7mm', 0, 0, 0, '0', '0', 0, 'Pave 3 Row Huggies', 'Earrings', 'Sterling Silver CZ Pave Set Earrings', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(31, 0, 27, 'CZ Pave 2 Row Huggies', 'Ellani Collections Sterling Silver CZ 2 Row pave set Huggies Rhodium Plated', '1595386190-20040642.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'E226', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 17.7mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17.5mm', '3.6mm', 0, 0, 0, '0', '0', 0, 'Pave 2 Row Huggies', 'Earrings', 'Sterling Silver CZ Pave Set Earrings', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(32, 0, 27, 'CZ Claw Setting Huggies ', 'Ellani Collections Sterling Silver CZ Claw set Huggies Rhodium Plated', '20040697.jpg', 69, 0, 69, 10, 'ELLANI COLLECTION', 'E391S', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 15.2mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.2mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(33, 0, 27, 'CZ Claw Setting Huggies Gold Plated', 'Ellani Collections Sterling Silver CZ Claw set Huggies Gold Plated', '1595569148-20045241.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E391G', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 15.2mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.2mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies Gold Plated', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies Gold Plated', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(34, 1, 27, 'CZ Claw Setting Huggies Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Claw set Huggies Rose Gold Plated', '1595569347-20045258.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E391R', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 15.2mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.2mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies Rose Gold Plated', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(35, 0, 27, 'CZ Claw Setting Huggies ', 'Ellani Collections Sterling Silver CZ Claw set Huggies Rhodium Plated', '1596171801-20040727.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E417', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 15.4mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14mm', '2.8mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(36, 0, 27, 'CZ Claw Setting Huggies ', 'Ellani Collections Sterling Silver CZ Claw set Huggies Rhodium Plated', '1596161232-20040703.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'E392', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 20mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18mm', '2.7mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(37, 0, 27, 'CZ Channel set Huggies', 'Ellani Collections Sterling Silver CZ Channel Setting Huggies Rhodium Plated', '1595396224-20040659.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'E251S', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 14mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.6mm', 0, 0, 0, '0', '0', 0, 'CZ Channel Setting Huggies ', 'Earrings', 'Sterling Silver CZ Channel Setting Huggies ', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(38, 0, 27, 'CZ Channel set Huggies Gold Plated', 'Ellani Collections Sterling Silver CZ Channel Setting Huggies Gold Plated', '1595396716-20002305.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'E251G', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 14mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.6mm', 0, 0, 0, '0', '0', 0, 'CZ Channel Setting Huggies Gold Plated', 'Earrings', 'Sterling Silver CZ Channel Setting Huggies Gold Plated', 1, 0, '2020-07-31 05:12:43', '2020-07-31 05:12:43', '2020-07-31 05:12:43'),
(39, 0, 27, 'CZ Channel set Huggies Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Channel Setting Huggies Rose Gold Plated', '1595396656-20045265.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'E251R', 'White', 'Cubic Zircona', 'sterling silver', 'Dia 14mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15mm', '2.6mm', 0, 0, 0, '0', '0', 0, 'CZ Channel Setting Huggies Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Channel Setting Huggies Rose Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(40, 0, 27, 'CZ Pave Set Huggies', 'Ellani Collections Sterling Silver CZ Pave Set Huggies Rhodium Plated', '1595397236-20040819.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'E499S', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 16.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15.2mm', '2.8mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Huggies', 'Earrings', 'Sterling Silver CZ Pave Set Huggies', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(41, 1, 27, 'CZ Pave Set Huggies Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Set Huggies Gold Plated', '1595398214-20040802.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'E499G', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 16.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15.2mm', '2.8mm', 0, 0, 0, '0', '0', 1, 'CZ Pave Set Huggies Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Set Huggies Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(42, 0, 27, 'CZ Pave Set Huggies Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Set Huggies Rose Gold Plated', '1595398400-20045272.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'E499R', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia16.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15.2mm', '2.8mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Huggies Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Set Huggies Rose Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(43, 0, 27, 'CZ Claw Setting Huggies ', 'Ellani Collections Sterling Silver CZ Claw Set Huggies Rhodium Plated', '1596161658-20040666.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E319', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 12.6mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.4mm', '2mm', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Huggies', 'Earrings', 'Sterling Silver CZ Claw Setting Huggies ', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(44, 0, 27, 'CZ Crown Setting Huggies', 'Ellani Collections Sterling Silver CZ Crown Setting Huggies Rhodium Plated', '1596161480-20036348.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'E491S', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 14.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13mm', '3mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Huggies', 'Earrings', 'Sterling Silver CZ Crown Setting Huggies', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(45, 0, 27, 'CZ Crown Setting Huggies Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Setting Huggies Gold Plated', '1596161338-20045289.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E491G', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 14.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13mm', '3mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Huggies Gold Plated ', 'Earrings', 'Sterling Silver CZ Crown Setting Huggies Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(46, 0, 27, 'CZ Crown Setting Huggies Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Setting Huggies Rose Gold Plated', '1596161379-20045296.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E491R', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 14.3mm', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13mm', '3mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Huggies Rose Gold Plated ', 'Earrings', 'Sterling Silver CZ Crown Setting Huggies Rose Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(47, 0, 27, 'CZ Long Drop Halo Earrings', 'Ellani Collections Sterling Silver CZ Pear Halo Drop Earrings Rhodium Plated', '1595401888-20042028.jpg', 139, 0, 139, 5, 'ELLANI COLLECTION', 'E320w', 'White', 'Cubic Zircona', 'Sterling Silver', '', '30mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 0, 'CZ Long Drop Halo Earrings', 'Earrings', 'Sterling Silver CZ Drop Halo Earrings', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(48, 0, 27, 'CZ Pear Drop Earrings', 'Ellani Collections Sterling Silver CZ Pear Drop Earrings Rhodium Plated', '1596171807-20042134.jpg', 129, 0, 129, 3, 'ELLANI COLLECTION', 'E373S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '34mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, 0, '0', '0', 0, 'CZ Long Pear Drop Earrings', 'Earrings', 'Sterling Silver CZ Long Pear Drop Earrings', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(49, 0, 27, 'CZ Long Tear Drop Earrings', 'Ellani Collections Sterling Silver CZ Long Tear Drop Earrings Rhodium Plated', '1596171563-20036539.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E522s', 'White', 'Cubic Zircona', 'Sterling Silver', '', '36mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36mm', '8.3mm', 0, 0, 0, '0', '0', 0, 'CZ Tear Drop Earrings', 'Earrings', 'Sterling Silver CZ Long Tear Drop Earrings', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(50, 0, 27, 'CZ Round & Pear Shape Halo Earring', 'Ellani Collections Sterling Silver CZ Round & Pear Shape Halo Drop Earrings Rhodium Plated', '1596171460-20036379.jpg', 139, 0, 139, 1, 'ELLANI COLLECTION', 'E276', 'White', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Round & Pear Shape Halo Earring', 'Earrings', 'Sterling Silver CZ Round & Pear Shape Halo Earring', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(51, 0, 27, 'CZ Double Halo Pear Drop Earring', 'Ellani Collections Sterling Silver CZ Double Halo Pear Drop Earring Rhodium Plated', '1596171471-20036430.jpg', 159, 0, 159, 1, 'ELLANI COLLECTION', 'E408W', 'White', 'Cubic Zircona', 'Sterling Silver', '', '25mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25mm', '10mm', 0, 0, 0, '0', '0', 0, 'CZ Double Halo Pear Drop Earring', 'Earrings', 'Sterling Silver CZ Double Halo Pear Drop Earring ', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(52, 0, 27, 'CZ Bar & Chain Drop Earrings', 'Ellani Collections Sterling Silver CZ Bar & Chain Drop Earrings Rhodium Plated', '1596171121-20002381.jpg', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E480s', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42mm', '1.6mm', 0, 0, 0, '0', '0', 0, 'CZ Bar & Chain Drop Earrings', 'Earrings', 'Sterling Silver CZ Bar & Chain Drop Earrings ', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(53, 0, 27, 'CZ Pear Halo Drop Earrings', 'Ellani Collections Sterling Silver CZ Pear Halo Drop Earrings Gold Plated', '1596171363-20025014.JPG', 139, 0, 139, 1, 'ELLANI COLLECTION', 'E327GP', 'White', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Pear Halo Drop Earrings', 'Earrings', 'Sterling Silver CZ Pear Halo Drop Earrings ', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(54, 0, 27, 'Light Blue CZ Pear Halo Drop Earrings', 'Ellani Collections Sterling Silver Light Blue CZ Pear Halo Drop Earrings Rhodium Plated', '1596171792-20040673.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E327BL', 'White/Blue', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '8mm', 0, 0, 0, '0', '0', 0, 'Light Blue CZ Pear Halo Drop Earrings', 'Earrings', 'Sterling Silver Light Blue CZ Pear Halo Drop Earrings', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(55, 0, 27, 'CZ Open Tear Drop Earrings', 'Ellani Collections Sterling Silver CZ Open Tear Drop Earrings Gold Plated', '1596171273-20025069.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E469G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '24.5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24.5mm', '11.5mm', 0, 0, 0, '0', '0', 0, 'CZ Open Tear Drop Earrings', 'Earrings', 'Sterling Silver CZ Open Tear Drop Earrings Gold Plated', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(56, 0, 27, 'CZ & Freshwater Pear Drop Earring', 'Ellani Collections Sterling Silver CZ & Freshwater Pear Drop Earring Rhodium Plated', '1596171163-20014339.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E461', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '24mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24mm', '7.5mm', 0, 0, 0, '0', '0', 0, 'CZ & Freshwater Pear Drop Earring', 'Earrings', 'Sterling Silver CZ & Freshwater Pear Drop Earring', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(57, 0, 27, 'CZ Open Tear Drop Earrings With Freshwater Pearl Earrings', 'Ellani Collections Sterling Silver  CZ Open Tear Drop Earrings With Freshwater Pearl Earrings Rhodium Plated', '1596171237-20019716.JPG', 99, 0, 99, 2, 'ELLANI COLLECTION', 'E481S', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '24mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24mm', '8.5mm', 0, 0, 0, '0', '0', 0, 'CZ Open Tear Drop Earrings With Freshwater Pearl Earrings', 'Earrings', 'Sterling Silver  CZ Open Tear Drop Earrings With Freshwater Pearl Earrings', 1, 0, '2020-07-31 05:12:44', '2020-07-31 05:12:44', '2020-07-31 05:12:44'),
(58, 0, 27, 'CZ & Shell Pearl Drop Earrings', 'Ellani Collections Sterling Silver CZ & Shell Pearl Drop Earrings Rhodium Plated', '1596171778-20040680.jpg', 99, 0, 99, 2, 'ELLANI COLLECTION', 'E354', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '32mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32mm', '12mm', 0, 0, 0, '0', '0', 0, 'CZ & Shell Pearl Drop Earrings', 'Earrings', 'Sterling Silver CZ & Shell Pearl Drop Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(59, 0, 27, 'CZ & Freshwater Pearl Drop Earrings', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl Drop Earrings Rhodium Plated', '1596171765-20039042.jpg', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E526S', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '25mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25mm', '7.7mm', 0, 0, 0, '0', '0', 0, 'CZ & Freshwater Pearl Drop Earrings', 'Earrings', 'Sterling Silver CZ & Freshwater Pearl Drop Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(60, 0, 27, 'CZ & Fresh Water Pearl Fancy Drop Earrings', 'Ellani Collections Sterling Silver CZ & Fresh Water Pearl Fancy Drop Earrings Rhodium Plated', '1596171812-20042141.jpg', 139, 0, 139, 1, 'ELLANI COLLECTION', 'E534', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '42mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42mm', '15mm', 0, 0, 0, '0', '0', 0, 'CZ & Fresh Water Pearl Fancy Drop Earrings', 'Earrings', 'Sterling Silver CZ & Fresh Water Pearl Fancy Drop Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(61, 0, 27, 'Shell Pearl Drop Earrings', 'Ellani Collections Sterling Silver Shell Pearl Drop Earrings Rhodium Plated', '1596171553-20036515.jpg', 79, 0, 79, 1, 'ELLANI COLLECTION', 'E233G', 'White', 'Shell Pearl', 'Sterling Silver', '', '28mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28mm', '12mm', 0, 0, 0, '0', '0', 0, 'Shell Pearl Drop Earrings', 'Earrings', 'Sterling Silver Shell Pearl Drop Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(62, 1, 27, 'CZ & Freahwater Pearl Stud Earrings', 'Ellani Collections Sterling Silver CZ & Freahwater Pearl Stud Earrings Rhodium Plated', '1596171754-20036584.JPG', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E505S', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '14.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.6mm', '7.3mm', 0, 0, 0, '0', '0', 0, 'CZ & Freahwater Pearl Stud Earrings ', 'Earrings', 'Sterling Silver CZ & Freahwater Pearl Stud Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(63, 0, 27, 'CZ & Freahwater Pearl Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ & Freahwater Pearl Stud Earrings Gold Plated', '1596171225-20018269.JPG', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E505G', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '14.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.6mm', '7.3mm', 0, 0, 0, '0', '0', 0, 'CZ & Freahwater Pearl Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ & Freahwater Pearl Stud Earrings Gold Plated', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(64, 0, 27, 'CZ & Freahwater Pearl Stud Earrings', 'Ellani Collections Sterling Silver CZ & Freahwater Pearl Stud Earrings Rhodium Plated', '1596171547-20036461.JPG', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E423S', 'White', 'Cubic Zircona & Pearl', 'Sterling Silver', '', '13.4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.4mm', '7.6mm', 0, 0, 0, '0', '0', 0, 'CZ & Freahwater Pearl Stud Earrings ', 'Earrings', 'Sterling Silver CZ & Freahwater Pearl Stud Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(65, 0, 27, 'CZ 11mm Pave Set Bar Stud Earrings', 'Ellani Collections Sterling Silver CZ 11mm Pave Set Bar Stud Earrings Rhodium Plated', '1596171867-20046033.JPG', 69, 0, 69, 5, 'ELLANI COLLECTION', 'E466S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '11mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11mm', '1.7mm', 0, 0, 0, '0', '0', 0, 'CZ 11mm Pave Set Bar Stud Earrings', 'Earrings', 'Sterling Silver CZ 11mm Pave Set Bar Stud Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(66, 0, 27, 'CZ 11mm Pave Set Bar Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 11mm Pave Set Bar Stud Earrings Rose Gold Plated', '1596171108-20002145.JPG', 79, 0, 79, 5, 'ELLANI COLLECTION', 'E466R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '11mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11mm', '1.7mm', 0, 0, 0, '0', '0', 0, 'CZ 11mm Pave Set Bar Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 11mm Pave Set Bar Stud Earrings Rose Gold Plated', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(67, 0, 27, 'CZ Circle Pave Set On Drop Bar Stud Earrings', 'Ellani Collections Sterling Silver  CZ Circle Pave Set On Drop Bar Stud Earrings Rhodium Plated', '1596171454-20025090.jpg', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E470S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '12.7mm', 0, 0, 0, '0', '0', 0, 'CZ Circle Pave Set On Drop Bar Stud Earrings', 'Earrings', 'Sterling Silver  CZ Circle Pave Set On Drop Bar Stud Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(68, 0, 27, 'CZ Circle Pave Set On Drop Bar Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Circle Pave Set On Drop Bar Stud Earrings Rose Gold Plated', '1596171014-2002583.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E470R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '12.7mm', 0, 0, 0, '0', '0', 0, 'CZ Circle Pave Set On Drop Bar Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Circle Pave Set On Drop Bar Stud Earrings Rose Gold Plated', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(69, 0, 27, 'Pink & White CZ Cushion Cut Halo Drop Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver Pink & White CZ Cushion Cut Halo Drop Earrings Rose Gold Plated', '1596171376-20019723.JPG', 149, 0, 149, 1, 'ELLANI COLLECTION', 'E500rm', 'White/Pink', 'Cubic Zircona', 'Sterling Silver', '', '22mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22mm', '10mm', 0, 0, 0, '0', '0', 0, 'Pink & White CZ Cushion Cut Halo Drop Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver Pink & White CZ Cushion Cut Halo Drop Earrings Rose Gold Plated', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(70, 0, 27, 'London Blue & White CZ Princess Cut Halo Stud Earrings', 'Ellani Collections Sterling Silver London Blue & White CZ Princess Cut Halo Stud Earrings Rhodium Plated', '1596171558-20036522.jpg', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E523LB', 'White/Blue', 'Cubic Zircona', 'Sterling Silver', '', '9mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9mm', '9mm', 0, 0, 0, '0', '0', 0, 'London Blue & White CZ Princess Cut Halo Stud Earrings', 'Earrings', 'Sterling Silver London Blue & White CZ Princess Cut Halo Stud Earrings ', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(71, 0, 27, 'Pink & White CZ Cushion Cut Double Halo Drop Earrings', 'Ellani Collections Sterling Silver Pink & White CZ Cushion Cut Double Halo Drop Earrings Rhodium Plated', '1596171824-20046101.jpg', 149, 0, 149, 1, 'ELLANI COLLECTION', 'E489', 'White/Pink', 'Cubic Zircona', 'Sterling Silver', '', '12mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12mm', '12mm', 0, 0, 0, '0', '0', 0, 'Pink & White CZ Cushion Cut Double Halo Drop Earrings', 'Earrings', '', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(72, 0, 27, 'CZ Cushion Cut Halo Stud Earrings', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Stud Earrings Rhodium Plated', '1598510063-20036553.jpg', 129, 0, 129, 1, 'ELLANI COLLECTION', 'E510R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '9.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.8mm', '9.8mm', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Halo Stud Earrings', 'Earrings', 'Sterling Silver CZ Cushion Cut Halo Stud Earrings', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(73, 0, 27, 'CZ Emerald Cut Halo Stud Earrings', 'Ellani Collections Sterling Silver CZ Emerald Cut Halo Stud Earrings Rhodium Plated', '1596171478-20036454.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E471S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '10mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Emerald Cut Halo Stud Earrings', 'Earrings', 'Sterling Silver CZ Emerald Cut Halo Stud Earrings ', 1, 0, '2020-07-31 05:12:45', '2020-07-31 05:12:45', '2020-07-31 05:12:45'),
(74, 0, 27, 'CZ  Princess Cut Halo Stud Earrings', 'Ellani Collections Sterling Silver CZ  Princess Cut Halo Stud Earrings Rhodium Plated', '1596171466-20036409.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E472S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '9.3mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.3mm', '9.3mm', 0, 0, 0, '0', '0', 0, 'CZ  Princess Cut Halo Stud Earrings', 'Earrings', 'Sterling Silver CZ  Princess Cut Halo Stud Earrings ', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(75, 0, 27, 'Pink & White CZ Cushion Cut Halo Stud Earrings', 'Ellani Collections Sterling Silver Pink & White CZ Cushion Cut Halo Stud Earrings Rhodium Plated', '1596171369-20019785.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'E388LP', 'White', 'Cubic Zircona', 'Sterling Silver', '', '9mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9mm', '9mm', 0, 0, 0, '0', '0', 0, 'Pink & White Cushion Cut Halo Stud Earrings', 'Earrings', 'Sterling Silver Pink & White CZ Cushion Cut Halo Stud Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(76, 0, 27, 'CZ Inside Out Hoop Earrings', 'Ellani Collections Sterling Silver CZ Inside Out Hoop Earrings Rhodium Plated', '1596173388-20045692.jpg', 149, 0, 149, 2, 'ELLANI COLLECTION', 'E183S', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 30mm', '30mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30mm', '2.6mm', 0, 0, 0, '0', '0', 0, 'CZ Inside Out Hoop Earrings', 'Earrings', 'Sterling Silver CZ Inside Out Hoop Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(77, 0, 27, 'CZ Inside Out Hoop Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Inside Out Hoop Earrings Gold Plated', '1596173396-20045685.jpg', 189, 0, 189, 1, 'ELLANI COLLECTION', 'E183G', 'White', 'Cubic Zircona', 'Sterling Silver', 'Dia 30mm', '30mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30mm', '2.6mm', 0, 0, 0, '0', '0', 0, 'CZ Inside Out Hoop Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Inside Out Hoop Earrings Gold Plated', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(78, 0, 27, 'Multi Colour CZ Chanel Set Hoop Earrings With White CZ Surround', 'Ellani Collections Sterling Silver Multi Colour CZ Chanel Set Hoop Earrings With White CZ Surround Rhodium Plated', '1596176815-2004330.jpg', 149, 0, 149, 1, 'ELLANI COLLECTION', 'E525M', 'Multi ', 'Cubic Zircona', 'Sterling Silver', '18mm', '18mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18mm', '5mm', 0, 0, 0, '0', '0', 0, 'Multi Colour CZ Chanel Set Hoop Earrings With White CZ Surround', 'Earrings', 'Sterling Silver Multi Colour CZ Chanel Set Hoop Earrings With White CZ Surround', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(79, 0, 27, 'Blue Tones CZ Circle Claw Setting Stud Earrings', 'Ellani Collections Sterling Silver Blue Tones CZ Circle Claw Setting Stud Earrings Rhodium Plated', '1596176823-20042066.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E528BL', 'Blue', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, 'Blue Tones CZ Circle Claw Setting Stud Earrings', 'Earrings', 'Sterling Silver Blue Tones CZ Circle Claw Setting Stud Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(80, 0, 27, 'Multi CZ Circle Claw Setting Stud Earrings', 'Ellani Collections Sterling Silver Multi CZ Circle Claw Setting Stud EarringsRhodium Plated', '1596176830-20042073.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E528M', 'Multi ', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, 'Multi CZ Circle Claw Setting Stud Earrings', 'Earrings', 'Sterling Silver Multi CZ Circle Claw Setting Stud Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(81, 0, 27, 'Pink Tones CZ Circle Claw Setting Stud Earrings', 'Ellani Collections Sterling Silver Pink Tones CZ Circle Claw Setting Stud Earrings Rhodium Plated', '1598578212-20046989.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E528PK', 'Pink ', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, 'Pink Tones CZ Circle Claw Setting Stud Earrings', 'Earrings', 'Sterling Silver Pink Tones CZ Circle Claw Setting Stud Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(82, 0, 27, 'CZ Cirlce Chanel Setting Look Stud Earrings', 'Ellani Collections Sterling SilverCZ Cirlce Chanel Setting Look Stud Earrings Rhodium Plated', '1596176835-20042110.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E531S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, 'CZ Cirlce Chanel Setting Look Stud Earrings', 'Earrings', 'Sterling Silver CZ Cirlce Chanel Setting Look Stud Earrings', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(83, 0, 27, 'CZ Cirlce Chanel Setting Look Stud Earrings Rose Gold', 'Ellani Collections Sterling Silver CZ Cirlce Chanel Setting Look Stud Earrings Rose Plated', '1596176842-20046385.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E531R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, 'CZ Cirlce Chanel Setting Look Stud Earrings Rose Gold plated', 'Earrings', 'Sterling Silver CZ Cirlce Chanel Setting Look Stud Earrings Rose Gold plated', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(84, 0, 27, 'CZ Bezal Setting Circle Stud Earrings', 'Ellani Collections Sterling Silver CZ Bezal Setting Circle Stud Earrings Rhodium Plated', '1596177781-20025458.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E497S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.7mm', '8.7mm', 0, 0, 0, '0', '0', 0, 'CZ Bezal Setting Circle Stud Earrings', 'Earrings', 'Sterling Silver CZ Bezal Setting Circle Stud Earrings ', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(85, 0, 27, 'CZ Bezal Setting Circle Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Bezal Setting Circle Stud Earrings Gold Plated', '1596177763-20025434.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E497G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.7mm', '8.7mm', 0, 0, 0, '0', '0', 0, 'CZ Bezal Setting Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Bezal Setting Circle Stud Earrings Gold Plated', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(86, 0, 27, 'CZ Bezal Setting Circle Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Bezal Setting Circle Stud Earrings Rose Gold Plated', '1596177774-20025441.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E497R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.7mm', '8.7mm', 0, 0, 0, '0', '0', 0, 'CZ Bezal Setting Circle Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Bezal Setting Circle Stud Earrings Rose Gold Plated', 1, 0, '2020-07-31 07:17:40', '2020-07-31 07:17:40', '2020-07-31 07:17:40'),
(87, 0, 27, 'CZ Thin Circle Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Thin Circle Stud Earrings Gold Plated ', '1596178561-20025175.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E476G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '10mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10mm', '10mm', 0, 0, 0, '0', '0', 0, 'CZ Thin Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Thin Circle Stud Earrings Gold Plated', 1, 0, '2020-07-31 07:17:41', '2020-07-31 07:17:41', '2020-07-31 07:17:41'),
(88, 0, 27, 'CZ Thin Circle Stud Earrings ', 'Ellani Collections Sterling Silver CZ Thin Circle Stud Earrings Rhodium Plated ', '1596178577-20046996.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E476S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '10mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10mm', '10mm', 0, 0, 0, '0', '0', 0, 'CZ Thin Circle Stud Earrings ', 'Earrings', 'Sterling Silver CZ Thin Circle Stud Earrings ', 1, 0, '2020-07-31 07:17:41', '2020-07-31 07:17:41', '2020-07-31 07:17:41'),
(89, 0, 27, 'CZ 4mm Crown Set Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 4mm Crown Set Earrings Rose Gold Plated', '1596523898-20045807.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E355R-4', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.7mm', '4.7mm', 0, 0, 0, '0', '0', 0, 'CZ 4mm Crown Set Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 4mm Crown Set Earrings Rose Gold Plated', 1, 0, '2020-07-31 07:17:41', '2020-07-31 07:17:41', '2020-07-31 07:17:41'),
(90, 0, 27, 'CZ 4mm Crown Set Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 4mm Crown Set Earrings Gold Plated', '1596179646-20045777.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E355G-4 ', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4mm', '4mm', 0, 0, 0, '0', '0', 0, 'CZ 4mm Crown Set Earrings', 'Earrings', 'Sterling Silver CZ 4mm Crown Set Earrings', 1, 0, '2020-08-04 04:49:23', '2020-08-04 04:49:23', '2020-08-04 04:49:23'),
(91, 0, 27, 'CZ Pear Shape Halo Earrings', 'Ellani Collections Sterling Silver CZ Pear Shape Halo Earrings Rhodium Plated', '1596506815-20036393.jpg', 99, 0, 99, 1, 'ELLANI COLLECTION', 'E269S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '11mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11mm', '7.8mm', 0, 0, 0, '0', '0', 0, 'CZ Pear Shape Halo Earrings', 'Earrings', 'Sterling Silver CZ Pear Shape Halo Earrings ', 1, 0, '2020-08-04 04:51:13', '2020-08-04 04:51:13', '2020-08-04 04:51:13'),
(92, 0, 27, 'CZ Pave Round Stud Earrings With Crown Surrounding ', 'Ellani Collections Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding Rhodium Plated', '1596506809-20018245.jpg', 79, 0, 79, 1, 'ELLANI COLLECTION', 'E502S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4mm', '8.4mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Round Stud Earrings With Crown Surrounding ', 'Earrings', 'Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding ', 1, 0, '2020-08-04 04:51:13', '2020-08-04 04:51:13', '2020-08-04 04:51:13');
INSERT INTO `products` (`id`, `admin_id`, `category_id`, `name`, `description`, `image`, `actual_price`, `discount`, `discounted_price`, `quantity`, `brand`, `product_code`, `color`, `type`, `mtype`, `size`, `length`, `weight`, `gemstone`, `cutting`, `style`, `case_size`, `case_thickness`, `dial_colour`, `water_resistance`, `case_material`, `case_finish`, `case_colour`, `movement`, `strap_type`, `strap_colour`, `height`, `width`, `resizable`, `in_sale`, `sale_period`, `sale_start`, `sale_end`, `is_featured`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(93, 0, 27, 'CZ Pave Round Stud Earrings With Crown Surrounding ', 'Ellani Collections Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding Rose Gold Plated', '1596506841-20046187.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E502R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4mm', '8.4mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Round Stud Earrings With Crown Surrounding Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding Rose Gold Plated', 1, 0, '2020-08-04 04:51:13', '2020-08-04 04:51:13', '2020-08-04 04:51:13'),
(94, 0, 27, 'CZ Pave Round Stud Earrings With Crown Surrounding ', 'Ellani Collections Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding Gold Plated', '1596506835-20046170.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E502G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4mm', '8.4mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Round Stud Earrings With Crown Surrounding  Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Round Stud Earrings With Crown Surrounding Gold Plated', 1, 0, '2020-08-04 04:51:13', '2020-08-04 04:51:13', '2020-08-04 04:51:13'),
(95, 0, 27, 'CZ Infinity Studs Earrings', 'Ellani Collections Sterling Silver CZ Infinity Studs Earrings Rhodium Plated', '1596506827-20039288.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E380', 'White', 'Cubic Zircona', 'Sterling Silver', '', '14.2mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '14.2mm', 0, 0, 0, '0', '0', 0, 'CZ Infinity Studs Earrings', 'Earrings', 'Sterling Silver CZ Infinity Studs Earrings', 1, 0, '2020-08-04 04:51:13', '2020-08-04 04:51:13', '2020-08-04 04:51:13'),
(96, 0, 27, 'CZ Fancy Stud Earrings', 'Ellani Collections Sterling Silver CZ Fancy Stud Earrings Rhodium Plated', '1596506822-20036546.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E506S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '16.4mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16.4mm', '12mm', 0, 0, 0, '0', '0', 0, 'CZ Fancy Stud Earrings', 'Earrings', 'Sterling Silver CZ Fancy Stud Earrings ', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(97, 0, 27, '3 CZ Circle Studs Earrings', 'Ellani Collections Sterling Silver 3 CZ Circle Studs Earrings Rhodium Plated', '1596512036-20042080.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E530S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, '3 CZ Circle Studs Earrings', 'Earrings', 'Sterling Silver 3 CZ Circle Studs Earrings ', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(98, 0, 27, '3 CZ Circle Studs Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver 3 CZ Circle Studs Earrings Rose Gold Plated', '1596512041-20042097.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E530R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, '3 CZ Circle Studs Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver 3 CZ Circle Studs Earrings Rose Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(99, 0, 27, '3 CZ Circle Studs Earrings Gold Plated', 'Ellani Collections Sterling Silver 3 CZ Circle Studs Earrings Gold Plated', '1596512046-20042103.jpg', 59, 0, 59, 1, 'ELLANI COLLECTION', 'E530G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.8mm', '8.8mm', 0, 0, 0, '0', '0', 0, '3 CZ Circle Studs Earrings Gold Plated', 'Earrings', 'Sterling Silver 3 CZ Circle Studs Earrings Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(100, 0, 27, 'CZ Small Circle Stud Earrings', 'Ellani Collections Sterling Silver CZ Small Circle Stud Earrings Gold Plated', '1596512022-20040758.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E494G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.8mm', '7.8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver  CZ Small Circle Stud Earrings Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(101, 0, 27, 'CZ Small Circle Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Small Circle Stud Earrings Rose Gold Plated', '1596512027-20040765.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E494R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.8mm', '7.8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Circle Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Small Circle Stud Earrings Rose Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(102, 0, 27, 'CZ Small Circle Stud Earrings ', 'Ellani Collections Sterling Silver CZ Small Circle Stud Earrings Rhodium Plated', '1596512032-20040772.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E494S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.8mm', '7.8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Circle Stud Earrings ', 'Earrings', 'Sterling Silver CZ Small Circle Stud Earrings ', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(103, 0, 27, 'CZ Small Claw Setting Open Circle Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings Gold Plated', '1596512011-20040734.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E493G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Claw Setting Open Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(104, 0, 27, 'CZ Small Claw Setting Open Circle Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings Rose Gold Plated', '1596512016-20040741.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E493R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Claw Setting Open Circle Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings Rose Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(105, 0, 27, 'CZ Small Claw Setting Open Circle Stud Earrings', 'Ellani Collections Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings Rhodium Plated', '1596512005-20036324.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E493S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Small Claw Setting Open Circle Stud Earrings', 'Earrings', 'Sterling Silver CZ Small Claw Setting Open Circle Stud Earrings', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(106, 0, 27, 'CZ Cross Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Cross Stud Earrings Rose Gold Plated', '1596516453-20040789.jpg', 49, 0, 49, 2, 'ELLANI COLLECTION', 'E496R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Cross Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Cross Stud Earrings Rose Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(107, 0, 27, 'CZ Cross Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Cross Stud Earrings Gold Plated', '1596516442-20025472.jpg', 49, 0, 49, 2, 'ELLANI COLLECTION', 'E496G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Cross Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Cross Stud Earrings Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(108, 0, 27, 'CZ Cross Stud Earrings ', 'Ellani Collections Sterling Silver CZ Cross Stud Earrings Rhodium Plated', '1596516459-20040796.jpg', 49, 0, 49, 2, 'ELLANI COLLECTION', 'E496S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Cross Stud Earrings ', 'Earrings', 'Sterling Silver CZ Cross Stud Earrings ', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(109, 0, 27, 'Open Bubble Circle Stud Earrings', 'Ellani Collections Sterling Silver Open Bubble Circle Stud Earrings Rhodium Plated', '1596516448-20031107.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E507S', 'White', '', 'Sterling Silver', '', '9mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9mm', '9mm', 0, 0, 0, '0', '0', 0, 'Open Bubble Circle Stud Earrings', 'Earrings', 'Sterling Silver Open Bubble Circle Stud Earrings', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(110, 0, 27, 'Open Bubble Circle Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver Open Bubble Circle Stud Earrings Gold Plated', '1596516464-20047009.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E507G', 'White', '', 'Sterling Silver', '', '9mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9mm', '9mm', 0, 0, 0, '0', '0', 0, 'Open Bubble Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver Open Bubble Circle Stud Earrings Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(111, 0, 27, 'Open Bubble Circle Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver Open Bubble Circle Stud Earrings Rose Gold Plated', '1596516470-20047016.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E507R', 'White', '', 'Sterling Silver', '', '9mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9mm', '9mm', 0, 0, 0, '0', '0', 0, 'Open Bubble Circle Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver Open Bubble Circle Stud Earrings Rose Gold Plated', 1, 0, '2020-08-04 04:51:14', '2020-08-04 04:51:14', '2020-08-04 04:51:14'),
(112, 0, 27, 'CZ Pave Setting 8mm Round Stud Earrings', 'Ellani Collections Sterling Silver CZ Pave Setting 8mm Round Stud Earrings Rhodium Plated', '1596518575-20025151.jpg', 69, 0, 69, 10, 'ELLANI COLLECTION', 'E475S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting Round Stud Earrings', 'Earrings', 'Sterling Silver CZ Pave Setting Round Stud Earrings', 1, 0, '2020-08-06 02:06:10', '2020-08-06 02:06:10', '2020-08-06 02:06:10'),
(113, 0, 27, 'CZ Pave Setting 8mm Round Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Setting 8mm Round Stud Earrings Gold Plated', '1596518570-20025137.jpg', 69, 0, 69, 10, 'ELLANI COLLECTION', 'E475G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting Round Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Setting Round Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(114, 0, 27, 'CZ Pave Setting 8mm Round Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Setting 8mm Round Stud Earrings Rose Gold Plated', '1596518588-20046088.jpg', 69, 0, 69, 10, 'ELLANI COLLECTION', 'E475R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting Round Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Setting Round Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(115, 0, 27, 'CZ Pave Setting 6mm Round Stud Earrings', 'Ellani Collections Sterling Silver CZ Pave Setting 6mm Round Stud Earrings', '1596518580-20046071.jpg', 59, 0, 59, 25, 'ELLANI COLLECTION', 'E474S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting 6mm Round Stud Earrings', 'Earrings', 'Sterling Silver CZ Pave Setting 6mm Round Stud Earrings', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(116, 0, 27, 'CZ Pave Setting 6mm Round Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Setting 6mm Round Stud Earrings Rose Gold Plated', '1596518557-20014261.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E474R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting 6mm Round Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Setting 6mm Round Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(117, 0, 27, 'CZ Pave Setting 6mm Round Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Setting 6mm Round Stud Earrings Gold Plated', '1596518563-20025106.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E474G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Pave Setting 6mm Round Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Pave Setting 6mm Round Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(118, 0, 27, 'CZ Crown Cluster set 6mm Stud Earrings', 'Ellani Collections Sterling Silver CZ Crown Cluster set 6mm Stud Earrings Rhodium Plated', '1596523684-20014223.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E490S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Cluster set 6mm Stud Earrings', 'Earrings', 'Sterling Silver CZ Crown Cluster set 6mm Stud Earrings', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(119, 0, 27, 'CZ Crown Cluster set 6mm Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Cluster set 6mm Stud Earrings Gold Plated', '1596523912-20046125.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E490G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Cluster set 6mm Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Crown Cluster set 6mm Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(120, 0, 27, 'CZ Crown Cluster set 6mm Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Cluster set 6mm Stud Earrings Rose Gold Plated', '1596523920-20046132.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E490R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ Crown Cluster set 6mm Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ Crown Cluster set 6mm Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(121, 0, 27, 'CZ 6mm Crown Set Earrings ', 'Ellani Collections Sterling Silver CZ 6mm Crown Set Earrings Rhodium Plated', '1596523887-20045746.jpg', 45, 0, 45, 10, 'ELLANI COLLECTION', 'E355-6', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7mm', '7mm', 0, 0, 0, '0', '0', 0, 'CZ 6mm Crown Set Earrings ', 'Earrings', 'Sterling Silver CZ 6mm Crown Set Earrings ', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(122, 0, 27, 'CZ 5mm Crown Set Earrings ', 'Ellani Collections Sterling Silver CZ 5mm Crown Set Earrings  Rhodium Plated', '1596523881-20045739.jpg', 39, 0, 39, 10, 'ELLANI COLLECTION', 'E355-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Set Earrings ', 'Earrings', 'Sterling Silver CZ 5mm Crown Set Earrings ', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(123, 0, 27, 'CZ 4mm Crown Set Earrings ', 'Ellani Collections Sterling Silver CZ 4mm Crown Set Earrings  Rhodium Plated', '1596523875-20045722.jpg', 37, 0, 37, 10, 'ELLANI COLLECTION', 'E355-4', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.7mm', '4.7mm', 0, 0, 0, '0', '0', 0, 'CZ 4mm Crown Set Earrings ', 'Earrings', 'Sterling Silver CZ 4mm Crown Set Earrings ', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(124, 0, 27, 'CZ Flat Pave Setting Heart Stud Earrings', 'Ellani Collections Sterling Silver CZ Flat Pave Setting Heart Stud Earrings Rhodium Plated', '1596523908-20045920.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E419S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6.8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.8mm', '7.2mm', 0, 0, 0, '0', '0', 0, 'CZ Flat Pave Setting Heart Stud Earrings', 'Earrings', 'Sterling Silver CZ Flat Pave Setting Heart Stud Earrings', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(125, 0, 27, 'CZ 5mm Crown Set Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Crown Set Earrings Gold Plated', '1596523892-20045791.jpg', 54, 0, 54, 10, 'ELLANI COLLECTION', 'E355G-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Set Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Crown Set Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(126, 0, 27, 'CZ 4mm Crown Set Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 4mm Crown Set Earrings Rose Gold Plated', '1596523898-20045807.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E355R-4', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4.7mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.7mm', '4.7mm', 0, 0, 0, '0', '0', 0, 'CZ 4mm Crown Set Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 4mm Crown Set Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(127, 0, 27, 'CZ 5mm Crown Set Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Crown Set Earrings Rose Gold Plated', '1596523902-20045814.jpg', 54, 0, 54, 10, 'ELLANI COLLECTION', 'E355R-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6mm', '6mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Set Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Crown Set Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(128, 0, 27, 'CZ 5mm Bezal Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Bezal Stud Earrings Gold Plated', '1596682049-20045418.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E125G-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.6mm', '6.6mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Bezal Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Bezal Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(129, 0, 27, 'CZ 5mm Bezal Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Bezal Stud Earrings Rose Gold Plated', '1596682055-20045425.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E125R-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.6mm', '6.6mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Bezal Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Bezal Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(130, 0, 27, 'CZ 5mm Claw Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Claw Stud Earrings Rose Gold Plated', '1596682066-20045562.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E130R-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5mm', '5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Claw Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Claw Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(131, 0, 27, 'CZ 5mm Claw Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Claw Stud Earrings Gold Plated', '1596682061-20045555.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E130G-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5mm', '5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Claw Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Claw Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:11', '2020-08-06 02:06:11', '2020-08-06 02:06:11'),
(132, 0, 27, 'CZ 5mm Princess Cut Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Princess Cut Stud Earrings Gold Plated', '1596682071-20045647.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E133G-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5mm', '5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Princess Cut Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Princess Cut Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(133, 0, 27, 'CZ 5mm Princess Cut Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Princess Cut Stud Earrings Rose Gold Plated', '1596682141-20045654.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E133R-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5mm', '5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Princess Cut Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Princess Cut Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(134, 0, 27, 'Half CZ  Circle Stud Earrings', 'Ellani Collections Sterling Silver Half CZ  Circle Stud Earrings Rhodium Plated', '1596682034-20036560.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E520S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.6mm', '8.6mm', 0, 0, 0, '0', '0', 0, 'Half CZ  Circle Stud Earrings', 'Earrings', 'Sterling Silver Half CZ  Circle Stud Earrings', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(135, 0, 27, 'Half CZ  Circle Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver Half CZ  Circle Stud Earrings Gold Plated', '1596682044-20039011.jpg', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E520G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8.6mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.6mm', '8.6mm', 0, 0, 0, '0', '0', 0, 'Half CZ  Circle Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver Half CZ  Circle Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(136, 0, 27, 'CZ Square Cluster Stud Earrings Rose Gold', 'Ellani Collections Sterling Silver CZ Square Cluster Stud Earrings Rhodium Plated', '1596682255-20046149.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'E495R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Square Cluster Stud Earrings Rose Gold', 'Earrings', 'Sterling Silver  CZ Square Cluster Stud Earrings Rose Gold', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(137, 0, 27, 'CZ Square Cluster Stud Earrings', 'Ellani Collections Sterling Silver CZ Square Cluster Stud Earrings Rhodium Plated', '1596682260-20046156.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'E495S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Square Cluster Stud Earrings', 'Earrings', 'Sterling Silver  CZ Square Cluster Stud Earrings', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(138, 0, 27, 'CZ Square Cluster Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ Square Cluster Stud Earrings Gold Plated', '1596682039-20036591.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'E495G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '8mm', 0, 0, 0, '0', '0', 0, 'CZ Square Cluster Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ Square Cluster Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(139, 0, 27, 'CZ 8mm Pave Set Bar Stud Earrings', 'Ellani Collections Sterling Silver CZ 8mm Pave Set Bar Stud Earrings', '1596682231-20046002.JPG', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E465S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '1.6mm', 0, 0, 0, '0', '0', 0, 'CZ 8mm Pave Set Bar Stud Earrings', 'Earrings', 'Sterling Silver CZ 8mm Pave Set Bar Stud Earrings', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(140, 0, 27, 'CZ 8mm Pave Set Bar Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 8mm Pave Set Bar Stud Earrings Gold Plated', '1596682238-20046019.JPG', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E465G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '1.6mm', 0, 0, 0, '0', '0', 0, 'CZ 8mm Pave Set Bar Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 8mm Pave Set Bar Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(141, 0, 27, 'CZ 8mm Pave Set Bar Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 8mm Pave Set Bar Stud Earrings Rose Gold Plated', '1596682244-20046026.JPG', 59, 0, 59, 10, 'ELLANI COLLECTION', 'E465R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8mm', '1.6mm', 0, 0, 0, '0', '0', 0, 'CZ 8mm Pave Set Bar Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 8mm Pave Set Bar Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(142, 0, 27, 'CZ 5mm Crown Cluster Stud Earrings', 'Ellani Collections Sterling Silver CZ 5mm Crown Cluster Stud Earrings Rhodium Plated', '1596682278-20046293.jpg', 49, 0, 49, 5, 'ELLANI COLLECTION', 'E517S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5.5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.5mm', '5.5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Cluster Stud Earrings', 'Earrings', 'Sterling Silver CZ 5mm Crown Cluster Stud Earrings', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(143, 0, 27, 'CZ 5mm Crown Cluster Stud Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Crown Cluster Stud Earrings Gold Plated', '1596682266-20046279.jpg', 49, 0, 49, 5, 'ELLANI COLLECTION', 'E517G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5.5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.5mm', '5.5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Cluster Stud Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Crown Cluster Stud Earrings Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(144, 0, 27, 'CZ 5mm Crown Cluster Stud Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 5mm Crown Cluster Stud Earrings Rose Gold Plated', '1596682272-20046286.jpg', 49, 0, 49, 5, 'ELLANI COLLECTION', 'E517R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5.5mm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.5mm', '5.5mm', 0, 0, 0, '0', '0', 0, 'CZ 5mm Crown Cluster Stud Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 5mm Crown Cluster Stud Earrings Rose Gold Plated', 1, 0, '2020-08-06 02:06:12', '2020-08-06 02:06:12', '2020-08-06 02:06:12'),
(145, 0, 27, 'CZ Single Row Pave Set Hoopm Earrings', 'Ellani Collections Sterling Silver CZ Single Row Pave Set Hoop Earrings Rhodium Plated', '1596694825-20046255.jpg', 79, 0, 79, 20, 'ELLANI COLLECTION', 'E512S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '15', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', '15', 0, 0, 0, '0', '0', 0, 'CZ Single Row Pave Set Hoop Earrings', 'Earrings', 'Sterling Silver CZ Single Row Pave Set Hoop Earrings', 1, 0, '2020-08-10 00:57:45', '2020-08-10 00:57:45', '2020-08-10 00:57:45'),
(146, 0, 27, 'CZ Shepards Hook Earrings Tear Drop', 'Ellani Collections Sterling Silver CZ Shepards Hook Earrings Tear Drop Rhodium Plated', '1596694655-20045975.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'E441S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '24', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24', '6', 0, 0, 0, '0', '0', 0, 'CZ Shepards Hook Earrings Tear Drop', 'Earrings', 'Sterling Silver CZ Shepards Hook Earrings Tear Drop', 1, 0, '2020-08-10 00:57:45', '2020-08-10 00:57:45', '2020-08-10 00:57:45'),
(147, 0, 27, 'Shephards Hook Earrings With Freshwater Pearl Rose Gold Plated', 'Ellani Collections Sterling Silver Shephards Hook Earrings With Freshwater Pearl Rose Gold Plated', '1596694668-20045999.jpg', 59, 0, 59, 2, 'ELLANI COLLECTION', 'E463R', 'White', 'Pearl', 'Sterling Silver', '', '25', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25', '7.6', 0, 0, 0, '0', '0', 0, 'Shephards Hook Earrings With Freshwater Pearl Rose Gold Plated', 'Earrings', 'Sterling Silver Shephards Hook Earrings With Freshwater Pearl Rose Gold Plated', 1, 0, '2020-08-10 00:57:45', '2020-08-10 00:57:45', '2020-08-10 00:57:45'),
(148, 0, 27, 'CZ Drop Shepards Hook Earrings With Freshwater Pearl ', 'Ellani Collections Sterling Silver CZ Drop Shepards Hook Earrings With Freshwater Pearl Rhodium Plated', '1596694831-20046262.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E514S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '7.5', 0, 0, 0, '0', '0', 0, 'CZ Drop Shepards Hook Earrings With Freshwater Pearl ', 'Earrings', 'Sterling Silver CZ Drop Shepards Hook Earrings With Freshwater Pearl ', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(149, 0, 27, 'CZ Cushion Cut CZ Surround Drop Earrings', 'Ellani Collections Sterling Silver CZ Cushion Cut CZ Surround Drop Earrings Rhodium Plated', '1596694804-20046064.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'E473S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '20', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '9', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut CZ Surround Drop Earrings', 'Earrings', 'Sterling Silver CZ Cushion Cut CZ Surround Drop Earrings', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(150, 0, 27, 'CZ Shepards Hook Earrings 7mm Round CZ Drop', 'Ellani Collections Sterling Silver CZ Shepards Hook Earrings 7mmRound CZ Drop Rhodium Plated', '1596694650-20045968.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'E439S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '22', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '7', 0, 0, 0, '0', '0', 0, 'CZ Shepards Hook Earrings 7mm Round CZ Drop', 'Earrings', 'Sterling Silver CZ Shepards Hook Earrings 7mm Round CZ Drop', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(151, 0, 27, 'CZ 20mm Curved Drop Earrings', 'Ellani Collections Sterling Silver  CZ 20mm Curved Drop Earrings Rhodium Plated', '1596694797-20046040.JPG', 79, 0, 79, 5, 'ELLANI COLLECTION', 'E468S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '20', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '2', 0, 0, 0, '0', '0', 0, 'CZ 20mm Curved Drop Earrings', 'Earrings', 'Sterling Silver CZ 20mm Curved Drop Earrings', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(152, 0, 27, 'CZ Drop Bar Earrings ', 'Ellani Collections Sterling Silver CZ Drop Bar Earrings Rhodium Plated', '1596694810-20046095.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'E477S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '40', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '1.6', 0, 0, 0, '0', '0', 0, 'CZ Drop Bar Earrings ', 'Earrings', 'Sterling Silver CZ Drop Bar Earrings ', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(153, 0, 27, 'CZ Tree Of Life Shepards Hook Earrings', 'Ellani Collections Sterling Silver CZ Tree Of Life Shepards Hook Earrings Rhodium Plated', '1694618-20045883.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'E400S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '29', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29', '14.5', 0, 0, 0, '0', '0', 0, 'CZ Tree Of Life Shepards Hook Earrings', 'Earrings', 'Sterling Silver CZ Tree Of Life Shepards Hook Earrings', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(154, 0, 27, 'CZ Tree Of Life Shepards Hook Earrings With CZ Surround', 'Ellani Collections Sterling Silver CZ Tree Of Life Shepards Hook Earrings With CZ Surround Rhodium Plated', '1596694663-20045982.JPG', 129, 0, 129, 2, 'ELLANI COLLECTION', 'E457S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '29', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29', '14.5', 0, 0, 0, '0', '0', 0, 'CZ Tree Of Life Shepards Hook Earrings With CZ Surround', 'Earrings', 'Sterling Silver CZ Tree Of Life Shepards Hook Earrings With CZ Surround', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(155, 0, 27, 'CZ 3 Row Pave Set Huggie Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 3 Row Pave Set Huggie Earrings Gold Plated', '1596694612-20045678.jpg', 129, 0, 129, 5, 'ELLANI COLLECTION', 'E182S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '12.4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.4', '5', 0, 0, 0, '0', '0', 0, 'CZ 3 Row Pave Set Huggie Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 3 Row Pave Set Huggie Earrings Gold Plated', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(156, 0, 27, 'CZ 2 Row Pave Set Huggie Earrings', 'Ellani Collections Sterling Silver CZ 2 Row Pave Set Huggie Earrings Rhodium Plated', '	1596694623-20045890.jpg', 119, 0, 119, 2, 'ELLANI COLLECTION', 'E418S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '14', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '4', 0, 0, 0, '0', '0', 0, 'CZ 2 Row Pave Set Huggie Earrings', 'Earrings', 'Sterling Silver CZ 2 Row Pave Set Huggie Earrings', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(157, 0, 27, 'CZ 2 Row Pave Set Huggie Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 2 Row Pave Set Huggie Earrings Gold Plated', '1596694628-20045906.jpg', 129, 0, 129, 1, 'ELLANI COLLECTION', 'E418G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '14', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '4', 0, 0, 0, '0', '0', 0, 'CZ 2 Row Pave Set Huggie Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 2 Row Pave Set Huggie Earrings Gold Plated', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(158, 0, 27, 'CZ 2 Row Pave Set Huggie Earrings Rose Gold Plated', 'Ellani Collections Sterling Silver CZ 2 Row Pave Set Huggie Earrings Rose Gold Plated', '1596694638-20045913.jpg', 129, 0, 129, 1, 'ELLANI COLLECTION', 'E418R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '14', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '4', 0, 0, 0, '0', '0', 0, 'CZ 2 Row Pave Set Huggie Earrings Rose Gold Plated', 'Earrings', 'Sterling Silver CZ 2 Row Pave Set Huggie Earrings Rose Gold Plated', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(159, 0, 27, 'CZ 3 Row Pave Set Huggie Earrings Gold Plated', 'Ellani Collections Sterling Silver CZ 3 Row Pave Set Huggie Earrings Gold Plated', '1596694612-20045678.jpg', 129, 0, 129, 5, 'ELLANI COLLECTION', 'E182S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '12.4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.4', '5', 0, 0, 0, '0', '0', 0, 'CZ 3 Row Pave Set Huggie Earrings Gold Plated', 'Earrings', 'Sterling Silver CZ 3 Row Pave Set Huggie Earrings Gold Plated', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(160, 0, 27, '3 CZ Drop With Fresh Water Pearl Earrings', 'Ellani Collections Sterling Silver 3 CZ Drop With Fresh Water Pearl Earrings Rhodium Plated', '1596694645-20045951.jpg', 69, 0, 69, 1, 'ELLANI COLLECTION', 'E429', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '20', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '7.5', 0, 0, 0, '0', '0', 0, '3 CZ Drop With Fresh Water Pearl Earrings', 'Earrings', 'Sterling Silver 3 CZ Drop With Fresh Water Pearl Earrings', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(161, 0, 27, 'CZ Open Drop V Studs With Freshwater Pearl', 'Ellani Collections Sterling Silver CZ Open Drop V Studs With Freshwater Pearl Rhodium Plated', '1596694816-20046200.JPG', 89, 0, 89, 2, 'ELLANI COLLECTION', 'E504S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '16', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '7.4', 0, 0, 0, '0', '0', 0, 'CZ Open Drop V Studs With Freshwater Pearl', 'Earrings', 'Sterling Silver CZ Open Drop V Studs With Freshwater Pearl', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(162, 0, 27, 'CZ 3mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 3mm Round Claw Setting Studs Rhodium Plated', '1596696126-20045432.jpg', 27, 0, 27, 10, 'ELLANI COLLECTION', 'E130-3', 'White', 'Cubic Zircona', 'Sterling Silver', '', '3', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', 0, 0, 0, '0', '0', 0, 'CZ 3mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 3mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(163, 0, 27, 'CZ 4mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 4mm Round Claw Setting Studs Rhodium Plated', '1596696133-20045449.jpg', 29, 0, 29, 10, 'ELLANI COLLECTION', 'E130-4', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', 0, 0, 0, '0', '0', 0, 'CZ 4mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 4mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(164, 0, 27, 'CZ 5mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 5mm Round Claw Setting Studs Rhodium Plated', '1596696138-20045456.jpg', 35, 0, 35, 10, 'ELLANI COLLECTION', 'E130-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', 0, 0, 0, '0', '0', 0, 'CZ 5mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 5mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(165, 0, 27, 'CZ 6mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 6mm Round Claw Setting Studs Rhodium Plated', '1596696143-20045463.jpg', 37, 0, 37, 10, 'ELLANI COLLECTION', 'E130-6', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '6', 0, 0, 0, '0', '0', 0, 'CZ 6mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 6mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:46', '2020-08-10 00:57:46', '2020-08-10 00:57:46'),
(166, 0, 27, 'CZ 7mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 7mm Round Claw Setting Studs Rhodium Plated', '1596696147-20045470.jpg', 39, 0, 39, 10, 'ELLANI COLLECTION', 'E130-7', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '7', 0, 0, 0, '0', '0', 0, 'CZ 7mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 7mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(167, 0, 27, 'CZ 8mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 8mm Round Claw Setting Studs Rhodium Plated', '1596696152-20045487.jpg', 45, 0, 45, 10, 'ELLANI COLLECTION', 'E130-8', 'White', 'Cubic Zircona', 'Sterling Silver', '', '8', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '8', 0, 0, 0, '0', '0', 0, 'CZ 8mm Round Claw Setting Studs', 'Earrings', 'Sterling SilverCZ 8mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(168, 0, 27, 'CZ 9mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 9mm Round Claw Setting Studs Rhodium Plated', '1596696158-20045494.jpg', 49, 0, 49, 10, 'ELLANI COLLECTION', 'E130-9', 'White', 'Cubic Zircona', 'Sterling Silver', '', '9', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '9', 0, 0, 0, '0', '0', 0, 'CZ 9mm Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 9mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(169, 0, 27, 'CZ 10mm Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 10mm Round Claw Setting Studs Rhodium Plated', '1596696163-20045500.jpg', 54, 0, 54, 5, 'ELLANI COLLECTION', 'E130-10', 'White', 'Cubic Zircona', 'Sterling Silver', '', '10', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '10', 0, 0, 0, '0', '0', 0, 'CZ 10mm Round Claw Setting Studs', 'Earrings', 'Sterling SilverCZ 10mm Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(170, 0, 27, 'CZ 5mm Bezal Studs', 'Ellani Collections Sterling Silver CZ 5mm Bezal Studs Rhodium Plated', '1598584253-20045388.jpg', 39, 0, 39, 2, 'ELLANI COLLECTION', 'E125-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', 0, 0, 0, '0', '0', 0, 'CZ 5mm Bezal Studs', 'Earrings', 'Sterling Silver CZ 5mm Bezal Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(171, 0, 27, 'CZ 6mm Bezal Studs', 'Ellani Collections Sterling Silver CZ 6mm Bezal Studs Rhodium Plated', '1598584362-20045395.jpg', 45, 0, 45, 2, 'ELLANI COLLECTION', 'E125-6', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '6', 0, 0, 0, '0', '0', 0, 'CZ 6mm Bezal Studs', 'Earrings', 'Sterling Silver CZ 6mm Bezal Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(172, 0, 27, 'CZ 7mm Bezal Studs', 'Ellani Collections Sterling Silver CZ 7mm Bezal Studs Rhodium Plated', '1598584443-20045401.jpg', 49, 0, 49, 1, 'ELLANI COLLECTION', 'E125-7', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '7', 0, 0, 0, '0', '0', 0, 'CZ 7mm Bezal Studs', 'Earrings', 'Sterling Silver CZ 7mm Bezal Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(173, 0, 27, 'CZ 4mm Black Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 4mm Black Round Claw Setting Studs Rhodium Plated', '1598584660-20045517.jpg', 29, 0, 29, 1, 'ELLANI COLLECTION', 'E130B-4', 'Black', 'Cubic Zircona', 'Sterling Silver', '', '4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', 0, 0, 0, '0', '0', 0, 'CZ 4mm Black Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 4mm Black Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(174, 0, 27, 'CZ 5mm Black Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 5mm Black Round Claw Setting Studs Rhodium Plated', '1598584818-20045524.jpg', 35, 0, 35, 1, 'ELLANI COLLECTION', 'E130B-5', 'Black', 'Cubic Zircona', 'Sterling Silver', '', '5', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', 0, 0, 0, '0', '0', 0, 'CZ 5mm Black Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 5mm Black Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(175, 0, 27, 'CZ 6mm Black Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 6mm Black Round Claw Setting Studs Rhodium Plated', '1598584665-20045531.jpg', 37, 0, 37, 1, 'ELLANI COLLECTION', 'E130B-6', 'Black', 'Cubic Zircona', 'Sterling Silver', '', '6', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '6', 0, 0, 0, '0', '0', 0, 'CZ 6mm Black Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 6mm Black Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(176, 0, 27, 'CZ 7mm Black Round Claw Setting Studs', 'Ellani Collections Sterling Silver CZ 7mm Black Round Claw Setting Studs Rhodium Plated', '1598584670-20045548.jpg', 39, 0, 39, 1, 'ELLANI COLLECTION', 'E130B-7', 'Black', 'Cubic Zircona', 'Sterling Silver', '', '7', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '7', 0, 0, 0, '0', '0', 0, 'CZ 7mm Black Round Claw Setting Studs', 'Earrings', 'Sterling Silver CZ 7mm Black Round Claw Setting Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(177, 0, 27, 'CZ 4mm Princess cut Studs', 'Ellani Collections Sterling Silver CZ 4mm Princess cut Studs Rhodium Plated', '1596780490-20045579.jpg', 32, 0, 32, 2, 'ELLANI COLLECTION', 'E133-4', 'White', 'Cubic Zircona', 'Sterling Silver', '', '4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', 0, 0, 0, '0', '0', 0, 'CZ 4mm Princess cut Studs', 'Earrings', 'Sterling Silver CZ 4mm Princess cut Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(178, 0, 27, 'CZ 5mm Princess cut Studs', 'Ellani Collections Sterling Silver CZ 5mm Princess cut Studs Rhodium Plated', '1596780497-20045586.jpg', 37, 0, 37, 2, 'ELLANI COLLECTION', 'E133-5', 'White', 'Cubic Zircona', 'Sterling Silver', '', '5', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', 0, 0, 0, '0', '0', 0, 'CZ 5mm Princess cut Studs', 'Earrings', 'Sterling Silver CZ 5mm Princess cut Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47');
INSERT INTO `products` (`id`, `admin_id`, `category_id`, `name`, `description`, `image`, `actual_price`, `discount`, `discounted_price`, `quantity`, `brand`, `product_code`, `color`, `type`, `mtype`, `size`, `length`, `weight`, `gemstone`, `cutting`, `style`, `case_size`, `case_thickness`, `dial_colour`, `water_resistance`, `case_material`, `case_finish`, `case_colour`, `movement`, `strap_type`, `strap_colour`, `height`, `width`, `resizable`, `in_sale`, `sale_period`, `sale_start`, `sale_end`, `is_featured`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(179, 0, 27, 'CZ 6mm Princess cut Studs', 'Ellani Collections Sterling Silver CZ 6mm Princess cut Studs Rhodium Plated', '1596780502-20045593.jpg', 39, 0, 39, 1, 'ELLANI COLLECTION', 'E133-6', 'White', 'Cubic Zircona', 'Sterling Silver', '', '6', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '6', 0, 0, 0, '0', '0', 0, 'CZ 6mm Princess cut Studs', 'Earrings', 'Sterling Silver CZ 6mm Princess cut Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(180, 0, 27, 'CZ 7mm Princess cut Studs', 'Ellani Collections Sterling Silver CZ 7mm Princess cut Studs Rhodium Plated', '1596780507-20045609.jpg', 43, 0, 43, 2, 'ELLANI COLLECTION', 'E133-7', 'White', 'Cubic Zircona', 'Sterling Silver', '', '7', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '7', 0, 0, 0, '0', '0', 0, 'CZ 7mm Princess cut Studs', 'Earrings', 'Sterling Silver CZ 7mm Princess cut Studs', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(181, 0, 27, 'CZ Round Halo Stud Earrings', 'Ellani Collections Sterling Silver CZ Round Halo Stud Earrings Rhodium Plated', '1596780513-20045845.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'E390W', 'White', 'Cubic Zircona', 'Sterling Silver', '', '9', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '9', 0, 0, 0, '0', '0', 0, 'CZ Round Halo Stud Earrings', 'Earrings', 'Sterling Silver CZ Round Halo Stud Earrings', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(182, 0, 27, 'CZ Open Circle Drop Earrings', 'Ellani Collections Sterling Silver CZ Open Circle Drop Earrings Rhodium Plated', '1597024082-20046248.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'E509S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '18', 0, 0, 0, '0', '0', 0, ' CZ Open Circle Drop Earrings', 'Earrings', 'Sterling Silver CZ Open Circle Drop Earrings', 1, 0, '2020-08-10 00:57:47', '2020-08-10 00:57:47', '2020-08-10 00:57:47'),
(183, 0, 27, '2 Oval Drops Earrings with CZ Rose Gold Plated', 'Ellani Collections Sterling Silver 2 Oval Drops Earrings with CZ Rose Gold Plated', '1597024160-20046323.JPG', 149, 0, 149, 10, 'ELLANI COLLECTION', 'E521R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '40', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '19', 0, 0, 0, '0', '0', 0, '2 Oval Drops Earrings with CZ Rose Gold Plated', 'Earrings', '2 Oval Drops Earrings with CZ Rose Gold Plated', 1, 0, '2020-08-10 00:57:48', '2020-08-10 00:57:48', '2020-08-10 00:57:48'),
(184, 0, 27, 'CZ Open Abstract Drop Earrings ', 'Ellani Collections Sterling Silver CZ Open Abstract Drop Earrings Rhodium Plated', '1597024098-20046354.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'E529S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '45', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '26', 0, 0, 0, '0', '0', 0, 'CZ Open Abstract Drop Earrings ', 'Earrings', 'Sterling Silver CZ Open Abstract Drop Earrings ', 1, 0, '2020-08-10 00:57:48', '2020-08-10 00:57:48', '2020-08-10 00:57:48'),
(185, 0, 27, 'CZ Double Open Tear Drop Earrings', 'Ellani Collections Sterling Silver  CZ Double Open Tear Drop Earrings Rhodium Plated', '1597024232-20045821.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'E385S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '34', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34', '11', 0, 0, 0, '0', '0', 0, 'CZ Double Open Tear Drop Earrings', 'Earrings', 'Sterling Silver CZ Double Open Tear Drop Earrings ', 1, 0, '2020-08-10 00:57:48', '2020-08-10 00:57:48', '2020-08-10 00:57:48'),
(186, 0, 27, 'CZ 25mm Hoop Earrings', 'Ellani Collections Sterling Silver CZ 25mm Hoop Earrings  Rhodium Plated', '1597024087-20046316.jpg', 119, 0, 119, 11, 'ELLANI COLLECTION', 'E519S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '25', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25', '2', 0, 0, 0, '0', '0', 0, 'CZ 25mm Hoop Earrings', 'Earrings', ' Sterling Silver CZ 25mm Hoop Earrings', 1, 0, '2020-08-10 00:57:48', '2020-08-10 00:57:48', '2020-08-10 00:57:48'),
(187, 0, 27, 'CZ 20mm Hoop Earrings', 'Ellani Collections Sterling Silver CZ 20mm Hoop Earrings  Rhodium Plated', '1598585249-20046347.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'E527S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '20', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '2', 0, 0, 0, '0', '0', 0, 'CZ 20mm Hoop Earrings', 'Earrings', ' Sterling Silver CZ 20mm Hoop Earrings', 1, 0, '2020-08-10 00:57:48', '2020-08-10 00:57:48', '2020-08-10 00:57:48'),
(188, 0, 27, 'CZ Solitare With Double Round And Square Halo Stud Earrings', 'Ellani Collections Sterling Silver CZ Solitare With Double Round And Square Halo Stud Earrings rhodium Plated', '1597024075-20046194.jpg', 129, 0, 129, 1, 'ELLANI COLLECTION', 'E503S', 'White & Yellow', 'Cubic Zircona', 'Sterling Silver', '', '11', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '11', 0, 0, 0, '0', '0', 0, 'CZ Solitare With Double Round And Square Halo Stud Earrings', 'Earrings', 'Sterling Silver CZ Solitare With Double Round And Square Halo Stud Earrings', 1, 0, '2020-08-10 06:08:36', '2020-08-10 06:08:36', '2020-08-10 06:08:36'),
(189, 0, 27, 'CZ White & Yellow Double Halo Cusion Cut Stud Earrings', 'Ellani Collections Sterling Silver CZ White & Yellow Double Halo Cusion Cut Stud Earrings Rhodium Plated', '1598509888-20046118.jpg', 149, 0, 149, 1, 'ELLANI COLLECTION', 'E489Y', 'White & Yellow', 'Cubic Zircona', 'Sterling Silver', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', '12', 0, 0, 0, '0', '0', 0, 'CZ White & Yellow Double Halo Cusion Cut Stud Earrings', 'Earrings', 'Sterling Silver CZ White & Yellow Double Halo Cusion Cut Stud Earrings', 1, 0, '2020-08-10 06:08:36', '2020-08-10 06:08:36', '2020-08-10 06:08:36'),
(190, 0, 1, 'CZ Wide Band Multi Size Stones Bezal Set & Pave Set Band Ring ', 'Ellani Collections Sterling Silver CZ Wide Band Multi Size Stones Bezal Set & Pave Set Band Ring Rhodium Plated', '1597204998-20025359.jpg', 189, 0, 189, 1, 'ELLANI COLLECTION', 'R414', 'White', 'Cubic Zircona', 'Sterling Silver', '10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.5', '11', 0, 0, 0, '0', '0', 0, 'CZ Wide Band Multi Size Stones Bezal Set & Pave Set Band Ring ', 'Rings', 'Sterling Silver CZ Wide Band Multi Size Stones Bezal Set & Pave Set Band Ring ', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(191, 0, 11, 'CZ Dove Pendant With Chain', 'Ellani Collections Sterling Silver CZ Dove Pendant With Chain Rhodium Plated', '1597387078-20046408.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'P678', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '12', 0, 0, 0, '0', '0', 0, 'CZ Dove Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Dove Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(192, 0, 11, 'CZ & Freshwater Pearl Pendant With Chain', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl Pendant With Chain Rhodium Plated', '1597387180-20046446.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'P753S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.6', '8.8', 0, 0, 0, '0', '0', 0, 'CZ & Freshwater Pearl Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(193, 0, 11, 'CZ & Freshwater Pearl V Shaped Pendant With Chain ', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl V Shaped Pendant With Chain Rhodium Plated', '1597387245-20046491.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'P821S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '8', 0, 0, 0, '0', '0', 0, 'CZ & Freshwater Pearl V Shaped Pendant With Chain ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl V Shaped Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(194, 0, 11, 'CZ Double Oval Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Double Oval Drop Pendant With Chain Rhodium Plated', '1597387208-20046514.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P829S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '19.7', 0, 0, 0, '0', '0', 0, 'CZ Double Oval Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Double Oval Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(195, 0, 11, 'CZ Fairy Pendant With Chain', 'Ellani Collections Sterling Silver CZ Fairy Pendant With Chain Rhodium Plated', '1597387059-20040840.jpg', 119, 0, 119, 2, 'ELLANI COLLECTION', 'P506PK', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '33', '12', 0, 0, 0, '0', '0', 0, 'CZ Fairy Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Fairy Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(196, 1, 11, 'CZ London Blue 7mm Princess Cut Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ London Blue 7mm Princess Cut Halo Pendant With Chain Rhodium Plated', '1597387233-20046521.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P831LB', 'White & Blue', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '10', 0, 0, 0, '0', '0', 1, 'CZ London Blue 7mm Princess Cut Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ London Blue 7mm Princess Cut Halo Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(197, 0, 11, 'CZ Tear Drop Pendant With Freshwater Pearl & Surrounded by CZ With Chain', 'Ellani Collections Sterling Silver CZ Tear Drop Pendant With Freshwater Pearl & Surrounded by CZ With Chain Rhodium Plated', '1597387202-20046460.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'P802S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27', '10', 0, 0, 0, '0', '0', 0, 'CZ Tear Drop Pendant With Freshwater Pearl & Surrounded by CZ With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Tear Drop Pendant With Freshwater Pearl & Surrounded by CZ With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(198, 0, 11, 'CZ Double Tear Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Double Tear Drop Pendant With Chain Rhodium Plated', '1597387330-20046415.jpg', 99, 0, 99, 2, 'ELLANI COLLECTION', 'P713S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34', '11', 0, 0, 0, '0', '0', 0, 'CZ Double Tear Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Double Tear Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(199, 0, 11, 'CZ Pear Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ Pear Halo Pendant With Chain  Rhodium Plated', '1597386923-20046392.jpg', 99, 0, 99, 2, 'ELLANI COLLECTION', 'P545G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '10.5', 0, 0, 0, '0', '0', 0, 'CZ Pear Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pear Halo Pendant With Chain  Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(200, 0, 11, 'CZ Cushion Cut Halo Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Drop Pendant With Chain Rhodium Plated', '1597387084-20046453.jpg', 119, 0, 119, 5, 'ELLANI COLLECTION', 'P794S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '10', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Halo Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(201, 0, 11, 'Freshwater Pearl Necklaceon 42cm Box Chain With Extention', 'Ellani Collections Sterling Silver Freshwater Pearl Necklace on 42cm Box Chain With Extention Rhodium  Plated', '1597387227-20046484.jpg', 119, 0, 119, 2, 'ELLANI COLLECTION', 'P811', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '6', 0, 0, 0, '0', '0', 0, 'Freshwater Pearl Necklaceon 42cm Box Chain With Extention', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Freshwater Pearl Necklace on 42cm Box Chain With Extention Rhodium  Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(202, 0, 11, 'CZ Open Abstract Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Open Abstract Drop Pendant With Chain Rhodium  Plated', '1597387239-20046538.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P836S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42', '25', 0, 0, 0, '0', '0', 0, 'CZ Open Abstract Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Open Abstract Drop Pendant With Chain Rhodium  Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(203, 0, 11, 'Green & White CZ Tear Drop Halo Pendant With Chain', 'Ellani Collections Sterling Silver Green & White CZ Tear Drop Halo Pendant With Chain Rhodium Plated', '597386914-20040864.jpg', 109, 0, 109, 4, 'ELLANI COLLECTION', 'P637G', 'White & Green', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23', '8.7', 0, 0, 0, '0', '0', 0, 'Green & White CZ Tear Drop Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Green & White CZ Tear Drop Halo Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(204, 0, 11, 'CZ Infinity Necklace With Rose Gold Plating', 'Ellani Collections Sterling Silver CZ Infinity Necklace With Rose Gold Plating & Rhodium Plating', '1597387171-20040871.jpg', 139, 0, 139, 1, 'ELLANI COLLECTION', 'P669R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.5', '21', 0, 0, 0, '0', '0', 0, 'CZ Infinity Necklace With Rose Gold Plating', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Infinity Necklace With Rose Gold Plating & Rhodium Plating', 1, 0, '2020-08-25 03:05:36', '2020-08-25 03:05:36', '2020-08-25 03:05:36'),
(205, 0, 11, 'CZ Infinity Necklace ', 'Ellani Collections Sterling Silver CZ Infinity Necklace Rhodium Plating', '1597386834-20036966.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'P669S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.5', '21', 0, 0, 0, '0', '0', 0, 'CZ Infinity Necklace ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Infinity Necklace Rhodium Plating', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(206, 0, 11, 'CZ Pave Set Cross With Chain', 'Ellani Collections Sterling Silver CZ Pave Set Cross With Chain Rhodium Plating', '1597387065-20040895.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'P639', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '13', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Cross With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pave Set Cross With Chain Rhodium Plating', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(207, 0, 11, 'CZ Small Double Cross Pendant With Chain', 'Ellani Collections Sterling Silver CZ Small Double Cross Pendant With Chain Rhodium Plated', '20039080.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'P624', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', '9', 0, 0, 0, '0', '0', 0, 'CZ Small Double Cross Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Small Double Cross Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(208, 0, 11, 'CZ Pave Cross With Cross With Silver Cross Over With Chain', 'Ellani Collections Sterling Silver CZ Pave Cross With Cross With Silver Cross Over With Chain Rhodium Plating', '1597386868-20039356.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'P775S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '11', 0, 0, 0, '0', '0', 0, 'CZ Pave Cross With Cross With Silver Cross Over With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pave Cross With Cross With Silver Cross Over With Chain Rhodium Plating', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(209, 0, 11, 'CZ Half Set Circle Pendant With Chain Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Half Set Circle Pendant With Chain Rose Gold Plated', '1597387053-20039363.jpg', 89, 0, 89, 2, 'ELLANI COLLECTION', 'P828R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Half Set Circle Pendant With Chain Rose Gold Plated', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Half Set Circle Pendant With Chain Rose Gold Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(210, 0, 11, 'CZ Full Circle Pendant With Chain Gold Plated', 'Ellani Collections Sterling Silver CZ Full Circle Pendant With Chain Gold Plated', '1597387164-20039349.JPG', 99, 0, 99, 3, 'ELLANI COLLECTION', 'P615-2G', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Full Circle Pendant With Chain Gold Plated', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Full Circle Pendant With Chain Gold Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(211, 0, 11, 'CZ Snow Flake Pendant With Chain', 'Ellani Collections Sterling Silver CZ Snow Flake Pendant With Chain Rhodium Plated', '1597386905-20025274.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P728', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '19', 0, 0, 0, '0', '0', 0, 'CZ Snow Flake Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Snow Flake Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(212, 0, 11, 'CZ Multi Colour Circle Pendant With Chain', 'Ellani Collections Sterling Silver CZ Multi Colour Circle Pendant With Chain Rhodium Plated', '1597387071-20042172.jpg', 79, 0, 79, 3, 'ELLANI COLLECTION', 'P832M', 'Multi ', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '16', 0, 0, 0, '0', '0', 0, 'CZ Multi Colour Circle Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Multi Colour Circle Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(213, 0, 11, 'CZ Blue Tones Circle Pendant With Chain', 'Ellani Collections Sterling Silver CZ Blue Tones Circle Pendant With Chain Rhodium Plated', '1597386957-20042189.jpg', 79, 0, 79, 4, 'ELLANI COLLECTION', 'P835BL', 'White & Blue', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', '15', 0, 0, 0, '0', '0', 0, 'CZ Blue Tones Circle Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Blue Tones Circle Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(214, 0, 11, 'CZ Pink Tones Circle Pendant With Chain', 'Ellani Collections Sterling Silver CZ Pink Tones Circle Pendant With Chain Rhodium Plated', '1597386957-20042196.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'P835PK', 'White & Pink ', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', '15', 0, 0, 0, '0', '0', 0, 'CZ Pink Tones Circle Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pink Tones Circle Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(215, 0, 11, 'CZ Small Full Circle Necklace', 'Ellani Collections Sterling Silver CZ Small Circle Necklace Rhodium Plated', '1597387336-20046477.JPG', 59, 0, 59, 4, 'ELLANI COLLECTION', 'P810S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '10', 0, 0, 0, '0', '0', 0, 'CZ Small Full Circle Necklace', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Small Circle Necklace Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(216, 0, 11, 'CZ Double Heart With One Heart Rose Gold Plated Necklace', 'Ellani Collections Sterling Silver CZ Double Heart With One Heart Rose Gold Plated Necklace Rodium Plated', '1598327822-20031206.jpg', 129, 0, 129, 5, 'ELLANI COLLECTION', 'P826R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '17', 0, 0, 0, '0', '0', 0, 'CZ Double Heart With One Heart Rose Gold Plated Necklace', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Double Heart With One Heart Rose Gold Plated Necklace Rodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(217, 0, 11, 'CZ Pave Set Heart Pendant With Chain', 'Ellani Collections Sterling Silver CZ Pave Set Heart Pendant With Chain Rhodium Plated', '1598328158-20046439.jpg', 69, 0, 69, 4, 'ELLANI COLLECTION', 'P749S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '8.6', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Heart Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pave Set Heart Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(218, 0, 11, 'CZ Double Heart Necklace', 'Ellani Collections Sterling Silver CZ Double Heart Necklace Rhodium Plated', '1598327809-20031152.jpg', 129, 0, 129, 3, 'ELLANI COLLECTION', 'P616S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '22', 0, 0, 0, '0', '0', 0, 'CZ Double Heart Necklace', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Double Heart Necklace Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(219, 0, 11, 'CZ Tree Of Life Pendant With Rose Gold Plating', 'Ellani Collections Sterling Silver CZ Tree Of Life Pendant &Chain Rose Gold Plating Chain Rhodium Plated', '1598332619-20040949.JPG', 99, 0, 99, 1, 'ELLANI COLLECTION', 'P820R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '15', 0, 0, 0, '0', '0', 0, 'CZ Tree Of Life Pendant With Rose Gold Plating', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Tree Of Life Pendant &Chain Rose Gold Plating Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(220, 0, 11, 'CZ Open Circle 20mm Pendant With Chain', 'Ellani Collections Sterling Silver CZ Open Circle 20mm Pendant With Chain Rhodium Plated', '1598328150-20046507.jpg', 79, 0, 79, 2, 'ELLANI COLLECTION', 'P824S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Open Circle 20mm Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Open Circle 20mm Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(221, 0, 11, 'CZ Round Halo Necklace', 'Ellani Collections Sterling Silver CZ Round Halo Necklace Rhodium Plated', '1598332610-20042578.JPG', 79, 0, 79, 2, 'ELLANI COLLECTION', 'P808S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '9', 0, 0, 0, '0', '0', 0, 'CZ Round Halo Necklace', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Round Halo Necklace Rhodium Plated', 1, 0, '2020-08-25 03:05:37', '2020-08-25 03:05:37', '2020-08-25 03:05:37'),
(222, 0, 11, 'CZ Dragon Fly Pendant With Chain', 'Ellani Collections Sterling Silver CZ Dragon Fly Pendant With Chain Rhodium Plated', '1598332627-20040901.jpg', 69, 0, 69, 2, 'ELLANI COLLECTION', 'P715', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '18', 0, 0, 0, '0', '0', 0, 'CZ Dragon Fly Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Dragon Fly Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(223, 0, 11, 'CZ Frog Pendant With Chain', 'Ellani Collections Sterling Silver CZ Frog Pendant With Chain Rhodium Plated', '1598327791-20006488.jpg', 129, 0, 129, 1, 'ELLANI COLLECTION', 'P613', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32', '12', 0, 0, 0, '0', '0', 0, 'CZ Frog Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Frog Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(224, 0, 11, 'CZ Bar with Freshwater Pearl Drop pendant', 'Ellani Collections Sterling Silver CZ Bar with Freshwater Pearl Drop pendant & Chain Rhodium Plated', '1598327882-20037079.jpg', 69, 0, 69, 4, 'ELLANI COLLECTION', 'P822S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '7.8', 0, 0, 0, '0', '0', 0, 'CZ Bar with Freshwater Pearl Drop pendant', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Bar with Freshwater Pearl Drop pendant & Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(225, 0, 11, 'CZ Circle Pave Set Pendant With Chain', 'Ellani Collections Sterling Silver CZ Circle Pave Set Pendant With Chain Rhodium Plated', '1598327850-20037055.jpg', 79, 0, 79, 2, 'ELLANI COLLECTION', 'P814S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '13', 0, 0, 0, '0', '0', 0, 'CZ Circle Pave Set Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Circle Pave Set Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(226, 0, 11, 'CZ Open Pear Shape Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Open Pear Shape Drop Pendant With Chain Rhodium Plated', '1598327891-20037109.jpg', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P830S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '8', 0, 0, 0, '0', '0', 0, 'CZ Open Pear Shape Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Open Pear Shape Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(227, 0, 11, 'Over Sized White Shell Pearl Pendant With Chain', 'Ellani Collections Sterling Silver Over Sized White Shell Pearl Pendant With Chain Rhodium Plated', '1598328182-20039318.jpg', 79, 0, 79, 2, 'ELLANI COLLECTION', 'P442W', 'White', 'Shell Pearl', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23.6', '14', 0, 0, 0, '0', '0', 0, 'Over Sized White Shell Pearl Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Over Sized White Shell Pearl Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(228, 0, 11, 'Over Sized Grey Shell Pearl Pendant With Chain', 'Ellani Collections Sterling Silver Over Sized  Grey Shell Pearl Pendant With Chain Rhodium Plated', '1598328144-20048747.jpg', 79, 0, 79, 1, 'ELLANI COLLECTION', 'P442G', 'White', 'Shell Pearl', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23.6', '14', 0, 0, 0, '0', '0', 0, 'Over Sized Grey Shell Pearl Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Over Sized  Grey Shell Pearl Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(229, 0, 11, 'CZ Bubble Open Circle With Chain  Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Bubble Open Circle With Chain  Rose Gold Plated', '1598332487-20025557.JPG', 89, 0, 89, 1, 'ELLANI COLLECTION', 'P807R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '19', 0, 0, 0, '0', '0', 0, 'CZ Bubble Open Circle With Chain  Rose Gold Plated', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Bubble Open Circle With Chain  Rose Gold Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(230, 0, 11, 'CZ Bubble Open Circle With Chain ', 'Ellani Collections Sterling Silver CZ Bubble Open Circle With Chain  Rhodium Plated', '1598332476-20025540.JPG', 79, 0, 79, 1, 'ELLANI COLLECTION', 'P807S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '19', 0, 0, 0, '0', '0', 0, 'CZ Bubble Open Circle With Chain ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Bubble Open Circle With Chain  Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(231, 0, 11, 'CZ Cushion Cut Halo Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Drop Pendant With Chain Rhodium Plated', '1598327815-20031190.jpg', 119, 0, 119, 2, 'ELLANI COLLECTION', 'P825R', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.4', '11.6', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Halo Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(232, 0, 11, 'CZ V Necklace', 'Ellani Collections Sterling Silver CZ V Necklace Rhodium Plated', '1598327868-20042233.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'P839S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.5', '17', 0, 0, 0, '0', '0', 0, 'CZ V Necklace', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ V Necklace Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(233, 0, 11, 'CZ Double Cross With Chain', 'Ellani Collections Sterling Silver CZ Double Cross With Chain Rhodium Plated', '1598327868-20040833.jpg', 119, 0, 119, 2, 'ELLANI COLLECTION', 'P379', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '15', 0, 0, 0, '0', '0', 0, 'CZ Double Cross With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Double Cross With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(234, 0, 11, 'CZ Emerald Cut Halo Plendant', 'Ellani Collections Sterling Silver CZ Emerald Cut Halo Plendant Rhodium Plated', '1598327844-20037031.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'P792S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '9.3', 0, 0, 0, '0', '0', 0, 'CZ Emerald Cut Halo Plendant', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Emerald Cut Halo Plendant Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(235, 0, 11, 'CZ Round & Square Halo Pendant', 'Ellani Collections Sterling Silver CZ Round & Square Halo Pendant Rhodium Plated', '1598327858-20037062.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'P815', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '14', 0, 0, 0, '0', '0', 0, 'CZ Round & Square Halo Pendant', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Round & Square Halo Pendant Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(236, 0, 11, 'CZ Yellow & White Cushion Cut Double Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ Yellow & White Cushion Cut Double Halo Pendant With Chain Rhodium Plated', '1598327782-20019815.jpg', 119, 0, 119, 1, 'ELLANI COLLECTION', 'P806Y', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '14', 0, 0, 0, '0', '0', 0, 'CZ Yellow & White Cushion Cut Double Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Yellow & White Cushion Cut Double Halo Pendant With Chain Rhodium Plated', 1, 0, '2020-08-25 03:05:38', '2020-08-25 03:05:38', '2020-08-25 03:05:38'),
(237, 0, 11, 'CZ Claw Setting Open Circle Necklace ', 'Ellani Collections Sterling Silver CZ Claw Setting Open Circle Necklace Rhodium Plated', '1598414083-20037086.jpg', 99, 0, 99, 2, 'ELLANI COLLECTIONS', 'P823S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Open Circle Necklace ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Claw Setting Open Circle Necklace Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(238, 0, 11, 'Half Way CZ Open Circle Pendant ', 'Ellani Collections Sterling Silver Half Way CZ Open Circle Pendant  With Chain Rhodium Plated', '1598414108-20037093.jpg', 79, 0, 79, 2, 'ELLANI COLLECTIONS', 'P827S', 'White ', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '18', 0, 0, 0, '0', '0', 0, 'Half Way CZ Open Circle Pendant ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Half Way CZ Open Circle Pendant  With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(239, 0, 11, 'CZ Multi Coloured Open Circle Pendant With White CZ Surrounding With Chain', 'Ellani Collections Sterling Silver CZ Multi Coloured Open Circle Pendant With White CZ Surrounding With Chain Rhodium pPlated', '1598414126-20039097.jpg', 119, 0, 119, 1, 'ELLANI COLLECTIONS', 'P833M', 'White & Multi Coloured', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Multi Coloured Open Circle Pendant With White CZ Surrounding With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Multi Coloured Open Circle Pendant With White CZ Surrounding With Chain Rhodium pPlated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(240, 0, 11, 'CZ Horse Shoe Necklace ', 'Ellani Collections Sterling Silver CZ Horse Shoe Necklace Rhodium Plated', '1598414027-20006501.jpg', 129, 0, 129, 1, 'ELLANI COLLECTIONS', 'P419', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '13.4', 0, 0, 0, '0', '0', 0, 'CZ Horse Shoe Necklace ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Horse Shoe Necklace Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(241, 0, 11, 'CZ Pave Set Pendant Cut Out Heart Pendant With Chain', 'Ellani Collections Sterling Silver CZ Pave Set Pendant Cut Out Heart Pendant With Chain Rhodium Plated', '11598414033-20006723.jpg', 99, 0, 99, 2, 'ELLANI COLLECTIONS', 'P784', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', '14', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Pendant Cut Out Heart Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pave Set Pendant Cut Out Heart Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(242, 0, 11, 'CZ Long Pear Shape Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ Long Pear Shape Halo Pendant With Chain Rhodium Plated', '1598414058-20036935.jpg', 119, 0, 119, 10, 'ELLANI COLLECTIONS', 'P610W', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '8.4', 0, 0, 0, '0', '0', 0, 'CZ Long Pear Shape Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Long Pear Shape Halo Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(243, 0, 11, 'CZ Pear Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ Pear Halo Pendant With Chain Rgodium Plated', '1598414070-20036959.jpg', 109, 0, 109, 10, 'ELLANI COLLECTIONS', 'P637W', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '8.5', 0, 0, 0, '0', '0', 0, 'CZ Pear Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Pear Halo Pendant With Chain Rgodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(244, 0, 11, 'CZ White & Pink Round Halo Pendant With Chain', 'Ellani Collections Sterling Silver CZ White & Pink Round Halo Pendant With Chain Rhodium Plated', '1598414144-20048877.jpg', 79, 0, 79, 5, 'ELLANI COLLECTIONS', 'P720LP', 'White & Pink ', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.6', '7.6', 0, 0, 0, '0', '0', 0, 'CZ White & Pink Round Halo Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ White & Pink Round Halo Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(245, 0, 11, 'CZ London Blue & White Pear Shape Pendant With Chain', 'Ellani Collections Sterling Silver CZ London Blue & White Pear Shape Pendant With Chain Rhodium Plated', '1598414136-20042202.jpg', 99, 0, 99, 5, 'ELLANI COLLECTIONS', 'P837LB', 'White & London Blue', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34', '8.5', 0, 0, 0, '0', '0', 0, 'CZ London Blue & White Pear Shape Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ London Blue & White Pear Shape Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(246, 0, 11, 'One Side CZ Open Heart Pendant With Chain ', 'Ellani Collections Sterling Silver One Side CZ Open Heart Pendant With Chain Rhodium Plated', '1598414076-20037024.jpg', 69, 0, 69, 10, 'ELLANI COLLECTIONS', 'P748S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16.7', '15', 0, 0, 0, '0', '0', 0, 'One Side CZ Open Heart Pendant With Chain ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver One Side CZ Open Heart Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(247, 0, 11, 'CZ Open Circle Claw Setting Pendant With Chain', 'Ellani Collections Sterling Silver CZ Open Circle Claw Setting Pendant With Chain Rhodium Plated', '1598414064-20036942.jpg', 89, 0, 89, 5, 'ELLANI COLLECTIONS', 'P615-2S', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '20', 0, 0, 0, '0', '0', 0, 'CZ Open Circle Claw Setting Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Open Circle Claw Setting Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:34', '2020-08-26 03:59:34', '2020-08-26 03:59:34'),
(248, 0, 11, 'Full Bubble CZ  Pave Set Heart Pendant With Chain', 'Ellani Collections Sterling Silver Full Bubble CZ  Pave Set Heart Pendant With Chain Rhodium Plated', '1598414131-20040826.jpg', 119, 0, 119, 5, 'ELLANI COLLECTIONS', '323W', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', '15', 0, 0, 0, '0', '0', 0, 'Full Bubble CZ  Pave Set Heart Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver Full Bubble CZ  Pave Set Heart Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:35', '2020-08-26 03:59:35', '2020-08-26 03:59:35'),
(249, 0, 11, 'CZ Triple Hearts Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ Triple Hearts Drop Pendant With Chain Rhodium Plated', '1598414052-20031121.jpg', 119, 0, 119, 5, 'ELLANI COLLECTIONS', 'P325', 'White', 'Cubic Zircona', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28', '20', 0, 0, 0, '0', '0', 0, 'CZ Triple Hearts Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ Triple Hearts Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:35', '2020-08-26 03:59:35', '2020-08-26 03:59:35'),
(250, 0, 11, 'CZ & Freshwater Pearl Drop Pendant With Chain', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl Drop Pendant With Chain Rhodium Plated', '1598414118-20039059.jpg', 89, 0, 89, 5, 'ELLANI COLLECTIONS', 'P834S', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28', '9', 0, 0, 0, '0', '0', 0, 'CZ & Freshwater Pearl Drop Pendant With Chain', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ & Freshwater Pearl Drop Pendant With Chain Rhodium Plated', 1, 0, '2020-08-26 03:59:35', '2020-08-26 03:59:35', '2020-08-26 03:59:35'),
(251, 0, 11, 'CZ V Shaped Necklace With Freshwater Pearl ', 'Ellani Collections Sterling Silver CZ V Shaped Necklace With Freshwater Pearl Rhodium Plated', '1598414047-20025564.jpg', 119, 0, 119, 2, 'ELLANI COLLECTIONS', 'P803', 'White', 'Cubic Zircona & Freshwater Pearl', 'Sterling Silver', '', '42cm + 5cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', '20', 0, 0, 0, '0', '0', 0, 'CZ V Shaped Necklace With Freshwater Pearl ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ V Shaped Necklace With Freshwater Pearl Rhodium Plated', 1, 0, '2020-08-26 03:59:35', '2020-08-26 03:59:35', '2020-08-26 03:59:35'),
(252, 1, 11, 'CZ  Bar & Large Shell Pearl Drop Pendant ', 'Ellani Collections Sterling Silver CZ  Bar & Large Shell Pearl Drop Pendant Rhodium Plated', '1598414113-20039035.jpg', 89, 0, 89, 10, 'ELLANI COLLECTIONS', 'P704', 'White', 'Cubic Zircona & Shell Pearl', 'Sterling Silver', '', '42cm ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '12', 0, 0, 0, '0', '0', 0, 'CZ  Bar & Large Shell Pearl Drop Pendant ', 'Necklaces & Pendants', 'Ellani Collections Sterling Silver CZ  Bar & Large Shell Pearl Drop Pendant Rhodium Plated', 1, 0, '2020-08-26 03:59:35', '2020-08-26 03:59:35', '2020-08-26 03:59:35'),
(253, 1, 1, 'CZ London Blue 7mm Princess Cut Halo With Split Band Ring', 'Ellani Collections Sterling Silver CZ London Blue 7mm Princess Cut Halo With Split Band Ring Rhodium Plated', '1597039472-20046705.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'R493LB', 'White & Blue', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.4', '10.4', 0, 0, 0, '0', '0', 1, 'CZ London Blue 7mm Princess Cut Halo With Split Band Ring', 'Rings', 'Sterling Silver CZ London Blue 7mm Princess Cut Halo With Split Band Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(254, 0, 1, 'CZ Solitare Ring', 'Ellani Collections Sterling Silver CZ Solitare Ring Rhodium Plated', '1597039399-20039431.jpg', 89, 0, 89, 10, 'ELLANI COLLECTION', 'R468', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '7', 0, 0, 0, '0', '0', 0, 'CZ Solitare Ring', 'Rings', 'Sterling Silver CZ Solitare Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(255, 0, 1, 'CZ Round Halo Ring ', 'Ellani Collections Sterling Silver CZ Round Halo Ring Rhodium Plated', '1597039378-20046552.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'R338', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.3', '11.5', 0, 0, 0, '0', '0', 0, 'CZ Round Halo Ring ', 'Rings', 'Sterling Silver CZ Round Halo Ring ', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(256, 0, 1, 'CZ Cushion Cut Halo Ring', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo Ring Rhodium Plated & Gold Plated', '1597039454-20046651.jpg', 149, 0, 149, 10, 'ELLANI COLLECTION', 'R464G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.5', '11', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Halo Ring', 'Rings', 'Sterling Silver CZ Cushion Cut Halo Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(257, 0, 1, 'CZ Cushion Cut Halo With Split Band Ring ', 'Ellani Collections Sterling Silver CZ Cushion Cut Halo With Split Band Ring Rhodium Plated & Rose Gold Plated', '1597039364-20031282.jpg', 169, 0, 169, 10, 'ELLANI COLLECTION', 'R488R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '12.7', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Halo With Split Band Ring ', 'Rings', 'Sterling Silver CZ Cushion Cut Halo With Split Band Ring ', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(258, 0, 1, 'CZ Yellow Pear Double Halo Ring', 'Ellani Collections Sterling Silver CZ Yellow Pear Double Halo Ring Rhodium Plated', '1597039448-20046637.jpg', 149, 0, 149, 10, 'ELLANI COLLECTION', 'R444C', 'White & Yellow', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.2', '13', 0, 0, 0, '0', '0', 0, 'CZ Yellow Pear Double Halo Ring', 'Rings', 'Sterling Silver CZ Yellow Pear Double Halo Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02');
INSERT INTO `products` (`id`, `admin_id`, `category_id`, `name`, `description`, `image`, `actual_price`, `discount`, `discounted_price`, `quantity`, `brand`, `product_code`, `color`, `type`, `mtype`, `size`, `length`, `weight`, `gemstone`, `cutting`, `style`, `case_size`, `case_thickness`, `dial_colour`, `water_resistance`, `case_material`, `case_finish`, `case_colour`, `movement`, `strap_type`, `strap_colour`, `height`, `width`, `resizable`, `in_sale`, `sale_period`, `sale_start`, `sale_end`, `is_featured`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(259, 0, 1, 'CZ Pear Double Halo Ring', 'Ellani Collections Sterling Silver CZ Pear Double Halo Ring Rhodium Plated', '1597039406-20040956.jpg', 149, 0, 149, 10, 'ELLANI COLLECTION', 'R444W', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.2', '13', 0, 0, 0, '0', '0', 0, 'CZ Pear Double Halo Ring', 'Rings', 'Sterling Silver CZ Pear Double Halo Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(260, 0, 1, 'CZ White & Pink Cushion Cut With Double Halo Split Band Ring', 'Ellani Collections Sterling Silver CZ White & Pink Cushion Cut With Double Halo Split Band Ring Rhodium Plated & Rose Gold Plated', '1597039461-20046682.jpg', 169, 0, 169, 10, 'ELLANI COLLECTION', 'R476', 'White & Pink ', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '14', 0, 0, 0, '0', '0', 0, 'CZ White & Pink Cushion Cut With Double Halo Split Band Ring', 'Rings', ' Sterling Silver CZ White & Pink Cushion Cut With Double Halo Split Band Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(261, 0, 1, 'CZ Pear Halo Ring', 'Ellani Collections Sterling Silver CZ Pear Halo Ring Rhodium Plated', '1597039417-20046590.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'R362G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.8', '9.6', 0, 0, 0, '0', '0', 0, 'CZ Pear Halo Ring', 'Rings', 'Sterling Silver CZ Pear Halo Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(262, 0, 1, 'CZ Round Halo Split Band Ring', 'Ellani Collections Sterling Silver CZ Round Halo Split Band Ring Rhodium Plated', '1597039370-20036652.jpg', 169, 0, 169, 10, 'ELLANI COLLECTION', 'R459R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.3', '10.7', 0, 0, 0, '0', '0', 0, 'CZ Round Halo Split Band Ring', 'Rings', 'Sterling Silver CZ Round Halo Split Band Ring', 1, 0, '2020-08-28 05:36:02', '2020-08-28 05:36:02', '2020-08-28 05:36:02'),
(263, 0, 1, 'CZ Trio Halo Ring', 'Ellani Collections Sterling Silver CZ Trio Halo Ring Rhodium Plated', '1597039357-20025304.jpg', 129, 0, 129, 10, 'ELLANI COLLECTION', 'R340', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.3', '20', 0, 0, 0, '0', '0', 0, 'CZ Trio Halo Ring', 'Rings', 'Sterling Silver CZ Trio Halo Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(264, 0, 1, 'Half Side CZ Infinity Ring', 'Ellani Collections Sterling Silver Half Side CZ Infinity Ring Rhodium Plated', '1597039385-20039400.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'R428S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.3', '17.5', 0, 0, 0, '0', '0', 0, 'Half Side CZ Infinity Ring', 'Rings', 'Sterling Silver Half Side CZ Infinity Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(265, 0, 1, 'CZ Half Side Infinity With Half Side Rose Gold Plated Ring', 'Ellani Collections Sterling Silver  CZ Half Side Infinity With Half Side Rose Gold Plated & Rhodium Plated Ring', '1597039433-20046613.jpg', 99, 0, 99, 10, 'ELLANI COLLECTION', 'R428R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.3', '17.5', 0, 0, 0, '0', '0', 0, 'CZ Half Side Infinity With Half Side Rose Gold Plated', 'Rings', 'Sterling Silver CZ Half Side Infinity With Half Side Rose Gold Plated', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(266, 0, 1, 'CZ 2 Row Flat Pave Set Band Ring', 'Ellani Collections Sterling Silver CZ 2 Row Flat Pave Set Band Ring Rhodium Plated Ring', '1597039391-20046606.jpg', 109, 0, 109, 10, 'ELLANI COLLECTION', 'R417', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.6', '3.4', 0, 0, 0, '0', '0', 0, 'CZ 2 Row Flat Pave Set Band Ring', 'Rings', 'Sterling Silver CZ 2 Row Flat Pave Set Band Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(267, 0, 1, 'CZ Round Center Stone With Claw Setting Shoulders Ring', 'Ellani Collections Sterling Silver CZ Round Center Stone With Claw Setting Shoulders Rhodium Plated Ring', '1597039346-20036874.jpg', 69, 0, 69, 10, 'ELLANI COLLECTION', 'R484S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.2', '6.5', 0, 0, 0, '0', '0', 0, 'CZ Round Center Stone With Claw Setting Shoulders', 'Rings', 'Sterling Silver CZ Round Center Stone With Claw Setting Shoulders', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(268, 0, 1, 'CZ Round Center Stone With Claw Setting Shoulders Gold Plated Ring', 'Ellani Collections Sterling Silver CZ Round Center Stone With Claw Setting Shoulders Gold Plated Ring', '1597039334-20018436.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'R848G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.2', '6.5', 0, 0, 0, '0', '0', 0, 'CZ Round Center Stone With Claw Setting Shoulders Gold Plated', 'Rings', 'Sterling Silver CZ Round Center Stone With Claw Setting Shoulders Gold Plated', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(269, 0, 1, 'CZ Round Center Stone With Claw Setting Shoulders Rose Gold Plated Ring', 'Ellani Collections Sterling Silver CZ Round Center Stone With Claw Setting Shoulders Rose Gold Plated Ring', '1597039340-20036881.jpg', 79, 0, 79, 10, 'ELLANI COLLECTION', 'R484R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.2', '6.5', 0, 0, 0, '0', '0', 0, 'CZ Round Center Stone With Claw Setting Shoulders Rose Gold Plated', 'Rings', 'Sterling Silver CZ Round Center Stone With Claw Setting Shoulders Rose Gold Plated', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(270, 0, 1, 'CZ Round Halo Ring With Claw Setting Shoulders', 'Ellani Collections Sterling Silver CZ Round Halo Ring With Claw Setting Shoulders Rhodium Plated', '1598585898-20006884.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'R445W', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.9', '10', 0, 0, 0, '0', '0', 0, 'CZ Round Halo Ring With Claw Setting Shoulders', 'Rings', 'Sterling Silver CZ Round Halo Ring With Claw Setting Shoulders', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(271, 0, 1, 'CZ Solitare With Double Round And Square Halo Ring', 'Ellani Collections Sterling Silver CZ Solitare With Double Round And Square Halo Ring Rhodium Plated', '1597039317-20018351.jpg', 169, 0, 169, 10, 'ELLANI COLLECTION', 'R480', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '14.6', 0, 0, 0, '0', '0', 0, 'CZ Solitare With Double Round And Square Halo Ring', 'Rings', 'Sterling Silver CZ Solitare With Double Round And Square Halo Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(272, 0, 1, 'CZ Cushion Cut Ring With Pave Set Shoulders Ring', 'Ellani Collections Sterling Silver CZ Cushion Cut Ring With Pave Set Shoulders Ring Rhodium Plated', '1597039309-20014193.jpg', 119, 0, 119, 10, 'ELLANI COLLECTION', 'R451', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '8', 0, 0, 0, '0', '0', 0, 'CZ Cushion Cut Ring With Pave Set Shoulders Ring', 'Rings', 'Sterling Silver CZ Cushion Cut Ring With Pave Set Shoulders Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(273, 0, 1, 'CZ Dark Blue & White Halo Ring', 'Ellani Collections Sterling Silver CZ Dark Blue & White Halo Ring Rhodium Plated', '1597039412-20041229.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R440DB', 'White & Blue', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.2', '10', 0, 0, 0, '0', '0', 0, 'CZ Dark Blue & White Halo Ring', 'Rings', 'Sterling Silver CZ Dark Blue & White Halo Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(274, 0, 1, 'CZ Pink & White Cushion Cut Halo With Split Band Ring ', 'Ellani Collections Sterling Silver CZ Pink & White Cushion Cut Halo With Split Band Ring Rhodium Plated', '1597039440-20046620.jpg', 169, 0, 169, 8, 'ELLANI COLLECTION', 'R435LP', 'White & Pink ', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '13', 0, 0, 0, '0', '0', 0, 'CZ Pink & White Cushion Cut Halo With Split Band', 'Rings', 'Sterling Silver CZ Pink & White Cushion Cut Halo With Split Band', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(275, 0, 1, 'CZ Round Center Stone With Pave Shoulder Ring', 'Ellani Collections Sterling Silver CZ Round Center Stone With Pave Shoulder Ring Rhodium Plated', '1597039466-20047085.jpg', 129, 0, 129, 8, 'ELLANI COLLECTION', 'R344', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.6', '8', 0, 0, 0, '0', '0', 0, 'CZ Round Center Stone With Pave Shoulder Ring', 'Rings', 'Sterling Silver CZ Round Center Stone With Pave Shoulder Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(276, 0, 1, 'CZ 5 Row Pave Set Band Ring', 'Ellani Collections Sterling Silver CZ 5 Row Pave Set Band Ring Rhodium Plated', '1597039325-20036706.jpg', 149, 0, 149, 5, 'ELLANI COLLECTION', 'R265', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '7.6', 0, 0, 0, '0', '0', 0, 'CZ 5 Row Pave Set Band Ring', 'Rings', 'Sterling Silver CZ 5 Row Pave Set Band Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(277, 0, 1, 'CZ Multi Rows Pave Set & Plain Row Band Ring', 'Ellani Collections Sterling Silver  CZ Multi Rows Pave Set & Plain Row Band Ring Rhodium Plated', '1597205080-20039394.jpg', 169, 0, 169, 5, 'ELLANI COLLECTION', 'R385', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.5', '13', 0, 0, 0, '0', '0', 0, 'CZ Multi Rows Pave Set & Plain Row Band Ring', 'Rings', 'Sterling Silver CZ Multi Rows Pave Set & Plain Row Band Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(278, 0, 1, 'CZ 6 Row Flat Pave Set Ring', 'Ellani Collections Sterling Silver  CZ 6 Row Flat Pave Set Ring Rhodium Plated', '1597205014-20025403.jpg', 189, 0, 189, 5, 'ELLANI COLLECTION', 'R467', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '8.5', 0, 0, 0, '0', '0', 0, 'CZ 6 Row Flat Pave Set Ring', 'Rings', 'Sterling Silver CZ 6 Row Flat Pave Set Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(279, 0, 1, 'CZ 4 Row Flat Pave Set Ring', 'Ellani Collections Sterling Silver  CZ 4 Row Flat Pave Set Ring Rhodium Plated', '1597205099-20046675.jpg', 149, 0, 149, 5, 'ELLANI COLLECTION', 'R466', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '6', 0, 0, 0, '0', '0', 0, 'CZ 4 Row Flat Pave Set Ring', 'Rings', 'Sterling Silver CZ 4 Row Flat Pave Set Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(280, 0, 1, 'CZ 2 Row Flat Pave Set Ring', 'Ellani Collections Sterling Silver  CZ 2 Row Flat Pave Set Ring Rhodium Plated', '1597205099-20046668.jpg', 119, 0, 119, 6, 'ELLANI COLLECTION', 'R465', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '3.5', 0, 0, 0, '0', '0', 0, 'CZ 2 Row Flat Pave Set Ring', 'Rings', 'Sterling Silver CZ 2 Row Flat Pave Set Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(281, 0, 1, 'CZ Multi Cross Over Ring', 'Ellani Collections Sterling Silver CZ Multi Cross Over Ring Rhodium Plated', '1597205098-20046545.jpg', 219, 0, 219, 5, 'ELLANI COLLECTION', 'R323', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.2', '12.6', 0, 0, 0, '0', '0', 0, 'CZ Multi Cross Over Ring', 'Rings', 'Sterling Silver CZ Multi Cross Over Ring', 1, 0, '2020-08-28 05:36:03', '2020-08-28 05:36:03', '2020-08-28 05:36:03'),
(282, 0, 1, 'CZ Half Round Pave Set Ring', 'Ellani Collections Sterling Silver CZ Half Round Pave Set Ring Rhodium Plated', '1597204991-20025342.jpg', 139, 0, 139, 4, 'ELLANI COLLECTION', 'R398', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.2', '7.8', 0, 0, 0, '0', '0', 0, 'CZ Half Round Pave Set Ring', 'Rings', 'Sterling Silver CZ Half Round Pave Set Ring', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(283, 0, 1, 'CZ Pave Set Ring', 'Ellani Collections Sterling Silver CZ Pave Set Ring Rhodium Plated', '1597205061-20036669.jpg', 169, 0, 169, 5, 'ELLANI COLLECTION', 'R447', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '11.7', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Ring', 'Rings', 'Sterling Silver CZ Pave Set Ring', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(284, 0, 1, 'CZ Cross Over Ring With Pave Setting Ring', 'Ellani Collections Sterling Silver CZ Cross Over Ring With Pave Setting Ring Rhodium Plated', '1597205080-20039417.jpg', 129, 0, 129, 8, 'ELLANI COLLECTION', 'R448', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.2', '15', 0, 0, 0, '0', '0', 0, 'CZ Cross Over Ring With Pave Setting Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Cross Over Ring With Pave Setting Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(285, 0, 1, 'CZ Split Band Arrow With Center Bar Ring', 'Ellani Collections Sterling Silver CZ Split Band Arrow With Center Bar Ring Rhodium Plated', '1597205099-20046583.jpg', 129, 0, 129, 5, 'ELLANI COLLECTION', 'R462', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.2', '14.6', 0, 0, 0, '0', '0', 0, 'CZ Split Band Arrow With Center Bar Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Split Band Arrow With Center Bar Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(286, 0, 1, 'CZ Cross Over Ring ', 'Ellani Collections Sterling Silver CZ Cross Over Ring  Rhodium Plated', '1597204960-20006907.jpg', 199, 0, 199, 4, 'ELLANI COLLECTION', 'R463', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.8', '13.6', 0, 0, 0, '0', '0', 0, 'CZ Cross Over Ring ', 'Rings', 'Ellani Collections Sterling Silver CZ Cross Over Ring  Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(287, 0, 1, 'CZ Double Band Ring', 'Ellani Collections Sterling Silver  CZ Double Band Ring Rhodium Plated', '1597205099-20046699.jpg', 89, 0, 89, 8, 'ELLANI COLLECTION', 'R492S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '4.2', 0, 0, 0, '0', '0', 0, 'CZ Double Band Ring', 'Rings', 'Ellani Collections Sterling Silver  CZ Double Band Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(288, 0, 1, 'CZ Double Band Ring Gold Plated', 'Ellani Collections Sterling Silver  CZ Double Band Ring Gold Plated', '1597205100-20047108.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R492G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '4.2', 0, 0, 0, '0', '0', 0, 'CZ Double Band Ring Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Double Band Ring Gold Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(289, 0, 1, 'CZ Multi Coloured Stones Chanel Set With White Pave Set CZ Ring', 'Ellani Collections Sterling Silver CZ Multi Coloured Stones Chanel Set With White CZ Surrounding Ring Rhodium Pated', '1597205099-20046712.jpg', 139, 0, 139, 5, 'ELLANI COLLECTION', 'R495M', 'White & Multi', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.5', '6.2', 0, 0, 0, '0', '0', 0, 'CZ Multi Coloured Stones Chanel Set With White Pave Set CZ Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Multi Coloured Stones Chanel Set With White CZ Surrounding Ring Rhodium Pated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(290, 0, 1, 'CZ Chanel Set Round Stones Band', 'Ellani Collections Sterling Silver CZ Chanel Set Round Stones Band Rhodium Plated', '1597205098-20046569.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R341', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.6', '3', 0, 0, 0, '0', '0', 0, 'CZ Chanel Set Round Stones Band', 'Rings', 'Ellani Collections Sterling Silver CZ Chanel Set Round Stones Band Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(291, 0, 1, 'CZ Diamond Shape Ring', 'Ellani Collections Sterling Silver CZ Diamond Shape Ring Rhodium Plated', '1597205005-20025380.jpg', 119, 0, 119, 5, 'ELLANI COLLECTION', 'R454', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '25', 0, 0, 0, '0', '0', 0, 'CZ Diamond Shape Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Diamond Shape Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(292, 0, 1, 'CZ Cross Ring', 'Ellani Collections Sterling Silver CZ Cross Ring Rhodium Plated', '1597205061-20036737.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R456', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.5', '8.3', 0, 0, 0, '0', '0', 0, 'CZ Cross Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Cross Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(293, 0, 1, 'CZ Open Double Bar Ring', 'Ellani Collections Sterling Silver CZ Open Double Bar Ring Rhodium Plated', '1597205099-20046644.jpg', 69, 0, 69, 6, 'ELLANI COLLECTION', 'R457', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.4', '7', 0, 0, 0, '0', '0', 0, 'CZ Open Double Bar Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Open Double Bar Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(294, 0, 1, 'CZ Crown Setting Never Ending Ring', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Rhodium Plated', '1597205100-20047139.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R482S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.4', '2.8', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Never Ending Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(295, 0, 1, 'CZ Crown Setting Never Ending Ring Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Gold Plated', '1597205080-20036843.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R482G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.4', '2.8', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Never Ending Ring Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Gold Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(296, 0, 1, 'CZ Crown Setting Never Ending Ring Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Rose Gold Plated', '1597205062-20036836.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R482R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.4', '2.8', 0, 0, 0, '0', '0', 0, 'CZ Crown Setting Never Ending Ring Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Crown Setting Never Ending Ring Rose Gold Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(297, 0, 1, 'CZ Claw Setting Band', 'Ellani Collections Sterling Silver CZ Claw Setting Band Rhodium Plated', '1597205081-20039448.jpg', 89, 0, 89, 4, 'ELLANI COLLECTION', 'R469', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.6', '2.4', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Band', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Setting Band Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(298, 0, 1, 'CZ Claw Set Band', 'Ellani Collections Sterling Silver CZ Claw Set Band Rhodium Plated', '1597205098-20042295.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R497S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.5', '2.3', 0, 0, 0, '0', '0', 0, 'CZ Claw Set Band', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Set Band Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(299, 0, 1, 'CZ Claw Set Band Gold Plated', 'Ellani Collections Sterling Silver CZ Claw Set Band Gold Plated', '1597205082-20042271.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R497G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.5', '2.3', 0, 0, 0, '0', '0', 0, 'CZ Claw Set Band Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Set Band Gold Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(300, 0, 1, 'CZ Claw Set Band Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Claw Set Band Rose Gold Plated', '1597205082-20042288.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R497R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.5', '2.3', 0, 0, 0, '0', '0', 0, 'CZ Claw Set Band Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Set Band Rose Gold Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(301, 0, 1, 'CZ Claw Setting Wavy Ring ', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Rhodium Plated', '1597205128-20047160.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R496S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '1.9', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Wavy Ring ', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:04', '2020-08-28 05:36:04', '2020-08-28 05:36:04'),
(302, 0, 1, 'CZ Claw Setting Wavy Ring Gold Plated', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Gold Plated', '1597205115-20047153.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R496G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '1.9', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Wavy Ring Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(303, 0, 1, 'CZ Claw Setting Wavy Ring Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Rose Gold Plated', '1597205116-20047146.jpg', 89, 0, 89, 6, 'ELLANI COLLECTION', 'R496R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.8', '1.9', 0, 0, 0, '0', '0', 0, 'CZ Claw Setting Wavy Ring Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Claw Setting Wavy Ring Rose Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(304, 0, 1, 'CZ Double Ring Attached Pave Band & Double Pear Shape', 'Ellani Collections Sterling Silver CZ Double Ring Attached Pave Band & Double Pear Shape Rhodium Plated', '1597204969-20014186.jpg', 99, 0, 99, 5, 'ELLANI COLLECTION', 'R475', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '9.6', 0, 0, 0, '0', '0', 0, 'CZ Double Ring Attached Pave Band & Double Pear Shape', 'Rings', 'Ellani Collections Sterling Silver CZ Double Ring Attached Pave Band & Double Pear Shape Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(305, 0, 1, 'CZ Double Band Pave Set', 'Ellani Collections Sterling Silver CZ Double Band Pave Set Rhodium Plated', '1597205169-20014124.jpg', 119, 0, 119, 3, 'ELLANI COLLECTION', 'R473', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '5.2', 0, 0, 0, '0', '0', 0, 'CZ Double Band Pave Set', 'Rings', 'Ellani Collections Sterling Silver CZ Double Band Pave Set Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(306, 1, 1, 'CZ Circle Pave Set Ring', 'Ellani Collections Sterling Silver CZ Circle Pave Set Ring Rhodium Plated', '1597205044-20031275.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R487', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.6', '10.4', 0, 0, 0, '0', '0', 1, 'CZ Circle Pave Set Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Circle Pave Set Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(307, 0, 1, 'CZ Pave Set V Shaped Ring', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Rhodium Plated', '1597205081-20039455.jpg', 69, 0, 69, 5, 'ELLANI COLLECTION', 'R490S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '1.8', 0, 0, 0, '0', '0', 0, 'CZ Pave Set V Shaped Ring', 'Rings', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(308, 0, 1, 'CZ Pave Set V Shaped Ring Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Gold Plated', '1597205081-20039479.jpg', 79, 0, 79, 8, 'ELLANI COLLECTION', 'R490G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '1.8', 0, 0, 0, '0', '0', 0, 'CZ Pave Set V Shaped Ring Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(309, 0, 1, 'CZ Pave Set V Shaped Ring Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Rose Gold Plated', '1597205081-20039462.jpg', 79, 0, 79, 6, 'ELLANI COLLECTION', 'R490R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.1', '1.8', 0, 0, 0, '0', '0', 0, 'CZ Pave Set V Shaped Ring Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Pave Set V Shaped Ring Rose Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(310, 0, 1, 'CZ Stackable Band', 'Ellani Collections Sterling Silver CZ Stackable Band Rhodium Plated', '1597205050-20032135.jpg', 69, 0, 69, 3, 'ELLANI COLLECTION', 'R485S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.6', '2.2', 0, 0, 0, '0', '0', 0, 'CZ Stackable Band', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Band Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(311, 0, 1, 'CZ Stackable Band Gold Plated', 'Ellani Collections Sterling Silver CZ Stackable Band Gold Plated', '1597205023-20031237.jpg', 79, 0, 79, 8, 'ELLANI COLLECTION', 'R485G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.6', '2.2', 0, 0, 0, '0', '0', 0, 'CZ Stackable Band Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Band Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(312, 0, 1, 'CZ Stackable Band Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Stackable Band Rose Gold Plated', '1597205161-20047177.jpg', 79, 0, 79, 7, 'ELLANI COLLECTION', 'R485R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.6', '2.2', 0, 0, 0, '0', '0', 0, 'CZ Stackable Band Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Band Rose Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(313, 0, 1, 'CZ Stackable Double Band', 'Ellani Collections Sterling Silver CZ Stackable Double Band Rhodium Plated', '1597205036-20031268.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R486S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.2', '4', 0, 0, 0, '0', '0', 0, 'CZ Stackable Double Band', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Double Band Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(314, 0, 1, 'CZ Stackable Double Band Gold Plated', 'Ellani Collections Sterling Silver CZ Stackable Double Band Gold Plated', '1597205030-20031251.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R486G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.2', '4', 0, 0, 0, '0', '0', 0, 'CZ Stackable Double Band Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Double Band Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(315, 0, 1, 'CZ Stackable Double Band Rose Gold Plated', 'Ellani Collections Sterling Silver CZ Stackable Double Band Rose Gold Plated', '1597205116-20047184.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R486R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.2', '4', 0, 0, 0, '0', '0', 0, 'CZ Stackable Double Band Rose Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Stackable Double Band Rose Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(316, 0, 1, 'CZ Bubble Stackable Band', 'Ellani Collections Sterling Silver CZ Bubble Stackable Band Rhodium Plated', '1597205082-20042264.jpg', 69, 0, 69, 7, 'ELLANI COLLECTION', 'R491S', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.7', '3', 0, 0, 0, '0', '0', 0, 'CZ Bubble Stackable Band', 'Rings', 'Ellani Collections Sterling Silver CZ Bubble Stackable Band Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(317, 0, 1, 'CZ Bubble Stackable Band Gold Plated', 'Ellani Collections Sterling Silver CZ Bubble Stackable Band Gold Plated', '1597205081-20042240.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R491G', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.7', '3', 0, 0, 0, '0', '0', 0, 'CZ Bubble Stackable Band Gold Plated', 'Rings', 'Ellani Collections Sterling Silver CZ Bubble Stackable Band Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(318, 0, 1, 'Band With Hammer Setting CZ Rose Gold Plated', ' Ellani Collections Sterling Silver Band With Hammer Setting CZ Rose Gold Plated', '1597204984-20018405.jpg', 89, 0, 89, 5, 'ELLANI COLLECTION', 'R483R', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.2', '2.6', 0, 0, 0, '0', '0', 0, 'Band With Hammer Setting CZ Rose Gold Plated', 'Rings', ' Ellani Collections Sterling Silver Band With Hammer Setting CZ Rose Gold Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(319, 0, 1, 'CZ Pave Set Band', 'Ellani Collections Sterling Silver CZ Pave Set Band Rhodium Plated', '1597205061-20036768.jpg', 79, 0, 79, 5, 'ELLANI COLLECTION', 'R452', 'White', 'Cubic Zircona', 'Sterling Silver', '6,7,8,9,10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '1.9', 0, 0, 0, '0', '0', 0, 'CZ Pave Set Band', 'Rings', 'Ellani Collections Sterling Silver CZ Pave Set Band Rhodium Plated', 1, 0, '2020-08-28 05:36:05', '2020-08-28 05:36:05', '2020-08-28 05:36:05'),
(320, 0, 10, 'Stainless Steel Bangel', 'Ellani Collections Stainless Steel Bangel', '1599006717-20037185.jpg', 39, 0, 39, 1, 'Ellani Collections', 'SB151S', '', '', 'Stainless Steel', '65,68', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.5', '7.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bangel', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Bangel', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(321, 0, 10, 'Stainless Steel Bangel Gold Plated', 'Ellani Collections Stainless Steel Bangel Gold Plated', '1598937864-20048891.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SB151G', '', '', 'Stainless Steel', '65,68', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.5', '7.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bangel Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Bangel Gold Plated', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(322, 0, 10, 'Stainless Steel Bangel Rose Gold Plated', 'Ellani Collections Stainless Steel Bangel Rose Gold Plated', '1598937870-20048914.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SB1561R', '', '', 'Stainless Steel', '65,68', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.5', '7.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bangel Rose Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Bangel Rose Gold Plated', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(323, 0, 10, 'Stainless Steel Cross Over Bangel Rose Gold Plated', 'Ellani Collections Stainless Steel Cross Over Cuff Rose Gold Plated', '1598937798-20037208.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB1678R', '', '', 'Stainless Steel', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.6', '25', 0, 0, 0, '0', '0', 0, 'Stainless Steel Cross Over Bangel Rose Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Cross Over Cuff Rose Gold Plated', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(324, 0, 10, 'Stainless Steel & Beads Bracelet', 'Ellani Collections Rose Gold Plated Stainless Steel & Beads Bracelet ', '1598937856-20040994.jpg', 59, 0, 59, 5, 'Ellani Collections', 'SB196', '', 'Beads', 'Stainless Steel ', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '8', 0, 0, 0, '0', '0', 0, 'Stainless Steel & Beads Bracelet', 'Bracelet & Bangels', 'Ellani Collections Rose Gold Plated Stainless Steel & Beads Bracelet ', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(325, 0, 10, 'Stainless Steel Beads Bracelet With Heart Lock', 'Elliani Collections Stainless Steel Beads Bracelet With Heart Lock', '1598937763-20018498.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB163S', '', '', 'Stainless Steel ', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28', '7.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Beads Bracelet With Heart Lock', 'Bracelet & Bangels', 'Elliani Collections Stainless Steel Beads Bracelet With Heart Lock', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(326, 0, 10, 'Stainless Steel Beads Bracelet With Heart Lock Gold Plated', 'Elliani Collections Stainless Steel Beads Bracelet With Heart Lock Gold Plated', '1598937755-20018467.jpg', 89, 0, 89, 1, 'Ellani Collections', 'SB163G', '', '', 'Stainless Steel ', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28', '7.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Beads Bracelet With Heart Lock Gold Plated', 'Bracelet & Bangels', 'Elliani Collections Stainless Steel Beads Bracelet With Heart Lock Gold Plated', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(327, 0, 10, 'Stainless Steel Beads Bracelet ', 'Ellani Collections Stainless Steel Beads Bracelet ', '1598937838-20039509.jpg', 69, 0, 69, 1, 'Ellani Collections', 'SB176S', '', '', 'Stainless Steel ', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.6', '4.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Beads Bracelet ', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Beads Bracelet ', 1, 0, '2020-09-04 04:44:22', '2020-09-04 04:44:22', '2020-09-04 04:44:22'),
(328, 0, 10, 'Stainless Steel Beads Bracelet Gold Plated', 'Ellani Collections Stainless Steel Beads Bracelet Gold Plated', '1598937832-20039493.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB176G', '', '', 'Stainless Steel ', 'One Size', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.6', '4.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Beads Bracelet Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Beads Bracelet Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(329, 0, 10, 'Stainless Steel Small Bead Bracelet With Charm Heart ', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart ', '1598937925-20049041.jpg', 49, 0, 49, 5, 'Ellani Collections', 'SB195S', '', '', 'Stainless Steel ', '', '18cm+2cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.7', '3', 0, 0, 0, '0', '0', 0, 'Stainless Steel Small Bead Bracelet With Charm Heart ', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart ', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(330, 0, 10, 'Stainless Steel Small Bead Bracelet With Charm Heart Gold Plated', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart Gold Plated', '1598937877-20048938.jpg', 49, 0, 49, 5, 'Ellani Collections', 'SB195G', '', '', 'Stainless Steel ', '', '18cm+2cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.7', '3', 0, 0, 0, '0', '0', 0, 'Stainless Steel Small Bead Bracelet With Charm Heart Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(331, 0, 10, 'Stainless Steel Small Bead Bracelet With Charm Heart Rose Gold Plated', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart Rose Gold Plated', '1598937770-20031299.jpg', 49, 0, 49, 5, 'Ellani Collections', 'SB195R', '', '', 'Stainless Steel ', '', '18cm+2cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.7', '3', 0, 0, 0, '0', '0', 0, 'Stainless Steel Small Bead Bracelet With Charm Heart Rose Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Small Bead Bracelet With Charm Heart Rose Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(332, 0, 27, 'Stainless Steel Tear Drop Earrings', 'Ellani Collections Stainless Steel Tear Drop Earrings', '1598937777-20031312.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE180W-S', '', 'Cubic Zirconia', 'Stainless Steel ', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', '8', 0, 0, 0, '0', '0', 0, 'Stainless Steel Tear Drop Earrings', 'Earrings', 'Ellani Collections Stainless Steel Tear Drop Earrings', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(333, 0, 27, 'Stainless Steel Tear Drop Earrings Gold Plated', 'Ellani Collections Stainless Steel Tear Drop Earrings Gold Plated', '1598937883-20048945.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE180W-G', '', 'Cubic Zirconia', 'Stainless Steel ', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', '8', 0, 0, 0, '0', '0', 0, 'Stainless Steel Tear Drop Earrings Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Tear Drop Earrings Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(334, 0, 27, 'Stainless Steel Earring', 'Ellani Collections Stainless Steel Earring', '1598937784-20031329.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE186S', '', '', 'Stainless Steel ', '13', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', '7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Earring', 'Earrings', 'Ellani Collections Stainless Steel Earring', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(335, 0, 27, 'Stainless Steel Round CZ Shepards Drop Earrings', 'Elliani Collections Stainless Steel Round CZ Shepards Drop Earrings', '1598937735-20007348.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE118W-S', '', 'Cubic Zirconia', 'Stainless Steel ', '22', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '8.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Round CZ Shepards Drop Earrings', 'Earrings', 'Elliani Collections Stainless Steel Round CZ Shepards Drop Earrings', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(336, 0, 27, 'Stainless Steel Round CZ Shepards Drop Earrings Gold Plated', 'Elliani Collections Stainless Steel Round CZ Shepards Drop Earrings Gold Plated', '1598937729-20007331.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE118W-G', '', 'Cubic Zirconia', 'Stainless Steel ', '22', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '8.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Round CZ Shepards Drop Earrings Gold Plated', 'Earrings', 'Elliani Collections Stainless Steel Round CZ Shepards Drop Earrings Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(337, 0, 27, 'Stainless Steel Drop Earring Rose Gold Plated', 'Ellani Collections Stainless Steel Drop Earring Rose Gold Plated', '1598937826-20039073.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE140R', '', '', 'Stainless Steel ', '22', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22', '6.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Drop Earring Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Drop Earring Rose Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(338, 0, 27, 'Stainless Steel Half Round Stud', 'Ellani Collections Stainless Steel Half Round Stud', '1598940655-20016142.jpg', 29, 0, 29, 5, 'Ellani Collections', 'SE138S', '', '', 'Stainless Steel ', '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '8', 0, 0, 0, '0', '0', 0, 'Stainless Steel Half Round Stud', 'Earrings', 'Ellani Collections Stainless Steel Half Round Stud', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(339, 0, 27, 'Stainless Steel Half Round Stud Gold Plated', 'Ellani Collections Stainless Steel Half Round Stud Gold Plated', '1598940649-20016128.jpg', 39, 0, 39, 5, 'Ellani Collections', 'SE138G', '', '', 'Stainless Steel ', '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '8', 0, 0, 0, '0', '0', 0, 'Stainless Steel Half Round Stud Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Half Round Stud Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(340, 0, 27, 'Stainless Steel Long Drop Earring Gold Plated', 'Ellani Collections Stainless Steel Long Drop Earring Gold Plated', '1598937722-20007256.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE136G', '', '', 'Stainless Steel ', '37.4', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4', '6.4', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earring Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Drop Earring Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(341, 0, 27, 'Stainless Steel Long Drop Earrings With Rose Quartz ', 'Ellani Collections Stainless Steel Long Drop Earrings With Rose Quartz ', '1598937890-20048969.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE167S', '', 'Rose Quartz', 'Stainless Steel ', '41', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41', '12', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earrings With Rose Quartz ', 'Earrings', 'Ellani Collections Stainless Steel Long Drop Earrings With Rose Quartz ', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(342, 0, 27, 'Stainless Steel Long Drop Earrings With Rose Quartz Rose Gold Plated', 'Ellani Collections Stainless Steel Long Drop Earrings With Rose Quartz Rose Gold Plated', '1598937804-20037345.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE167R', '', 'Rose Quartz', 'Stainless Steel ', '41', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41', '12', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earrings With Rose Quartz Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Drop Earrings With Rose Quartz Rose Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(343, 0, 27, 'Stainless Steel Two Toned Long Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Two Toned Long Drop Earrings Rose Gold Plated', '1598937820-20037369.jpg', 54, 0, 54, 2, 'Ellani Collections', 'SE169R', '', '', 'Stainless Steel ', '40', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '12', 0, 0, 0, '0', '0', 0, 'Stainless Steel Two Toned Long Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Two Toned Long Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(344, 0, 27, 'Stainless Steel Long Drop Earrings ', 'Ellani Collectoions Stainless Steel Long Drop Earrings ', '1598937813-20037352.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE168S', '', '', 'Stainless Steel ', '40', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '12', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earrings ', 'Earrings', 'Ellani Collectoions Stainless Steel Long Drop Earrings ', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23');
INSERT INTO `products` (`id`, `admin_id`, `category_id`, `name`, `description`, `image`, `actual_price`, `discount`, `discounted_price`, `quantity`, `brand`, `product_code`, `color`, `type`, `mtype`, `size`, `length`, `weight`, `gemstone`, `cutting`, `style`, `case_size`, `case_thickness`, `dial_colour`, `water_resistance`, `case_material`, `case_finish`, `case_colour`, `movement`, `strap_type`, `strap_colour`, `height`, `width`, `resizable`, `in_sale`, `sale_period`, `sale_start`, `sale_end`, `is_featured`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(345, 0, 27, 'Stainless Steel Long Drop Earrings Gold Plated', 'Ellani Collections Stainless Steel Long Drop Earrings Gold Plated', '1598937897-20048976.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE168G', '', '', 'Stainless Steel ', '40', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', '12', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earrings Gold Plated', 'Earrings', 'Ellani Collectoions Stainless Steel Long Drop Earrings Gold Plated', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(346, 0, 27, 'Stainless Steel Hoop Earrings with Rose Gold Plated Beads ', 'Ellani Collections Stainless Steel Hoop Earrings with Rose Gold Plated Beads ', '1598937850-20039554.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE190S-R', '', '', 'Stainless Steel ', '35', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', '5.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Hoop Earrings with Rose Gold Plated Beads ', 'Earrings', 'Ellani Collections Stainless Steel Hoop Earrings with Rose Gold Plated Beads ', 1, 0, '2020-09-04 04:44:23', '2020-09-04 04:44:23', '2020-09-04 04:44:23'),
(347, 0, 27, 'Stainless Steel Open Circle With Little Discs Stud Earrings', 'Ellani Collections Stainless Steel Open Circle With Little Discs Stud Earrings', '1598940661-20039530.jpg', 69, 0, 69, 1, 'Ellani Collections', 'SE179S', '', '', 'Stainless Steel ', '45', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '29', 0, 0, 0, '0', '0', 0, 'Stainless Steel Open Circle With Little Discs Stud Earrings', 'Earrings', 'Ellani Collections Stainless Steel Open Circle With Little Discs Stud Earrings', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(348, 0, 27, 'Stainless Steel Double Open Circle Studs', 'Ellani Collections Stainless Steel Double Open Circle Studs Gold Plated', '1598937714-20007201.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE165G', '', '', 'Stainless Steel ', '27', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27', '20', 0, 0, 0, '0', '0', 0, 'Stainless Steel Double Open Circle Studs', 'Earrings', 'Ellani Collections Stainless Steel Double Open Circle Studs Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(349, 0, 27, 'Stainless Steel Long Wavy Drop Earrings', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings', '1598937918-20049034.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE193S', '', '', 'Stainless Steel ', '77', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '77', '6.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Wavy Drop Earrings', 'Earrings', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(350, 0, 27, 'Stainless Steel Long Wavy Drop Earrings Gold Plated', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings Gold Plated', '1598937911-20049027.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE193G', '', '', 'Stainless Steel ', '77', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '77', '6.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Wavy Drop Earrings Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(351, 0, 27, 'Stainless Steel Long Wavy Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings Rose Gold Plated', '1598937903-20049010.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE193R', '', '', 'Stainless Steel ', '77', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '77', '6.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Wavy Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Wavy Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(352, 0, 27, 'Stainless Steel Long Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Long Drop Earrings Rose Gold Plated', '1599100470-20039523.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE171R', '', '', 'Stainless Steel ', '68', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68', '19.6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(353, 0, 27, 'Stainless Steel Long Drop Flower Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Long Drop Flower Earrings Rose Gold Plated', '1599100427-20037284.jpg', 39, 0, 39, 1, 'Ellani Collections', 'SE111R', '', '', 'Stainless Steel ', '49', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '49', '17', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Drop Flower Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Long Drop Flower Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(354, 0, 27, 'Stainless Steel Thread Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Thread Drop Earrings Rose Gold Plated', '1599100485-20041533.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE157R', '', '', 'Stainless Steel ', '70', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70', '10', 0, 0, 0, '0', '0', 0, 'Stainless Steel Thread Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Thread Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(355, 0, 27, 'Stainless Steel Thread Pear CZ Drop Earrings', 'Ellani Collections Stainless Steel Thread Pear CZ Drop Earrings', '1599100413-20037253.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE160S', '', '', 'Stainless Steel ', '70', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70', '6', 0, 0, 0, '0', '0', 0, 'Stainless Steel Thread Pear CZ Drop Earrings', 'Earrings', 'Ellani Collections Stainless Steel Thread Pear CZ Drop Earrings', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(356, 0, 27, 'Stainless Steel Two Tone Drop Earrings ', 'Ellani Collections Stainless Steel Two Tone Drop Earrings ', '1599100381-20031336.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE192G', '', '', 'Stainless Steel ', '55.6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55.6', '11.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Two Tone Drop Earrings ', 'Earrings', 'Ellani Collections Stainless Steel Two Tone Drop Earrings ', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(357, 0, 27, 'Stainless Steel Two Tone Drop Earrings ', 'Ellani Collections Stainless Steel Two Tone Drop Earrings ', '1599100341-20007126.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE191S-R', '', '', 'Stainless Steel ', '56', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56', '18', 0, 0, 0, '0', '0', 0, 'Stainless Steel Two Tone Drop Earrings ', 'Earrings', 'Ellani Collections Stainless Steel Two Tone Drop Earrings ', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(358, 0, 27, 'Stainless Steel Fancy Pear Drop Earrings', 'Ellani Collections Stainless Steel Fancy Pear Drop Earrings', '1599100442-20037314.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE117S', '', '', 'Stainless Steel ', '52', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52', '25', 0, 0, 0, '0', '0', 0, 'Stainless Steel Fancy Pear Drop Earrings', 'Earrings', 'Ellani Collections Stainless Steel Fancy Pear Drop Earrings', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(359, 0, 27, 'Stainless Steel Fancy Pear Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Fancy Pear Drop Earrings Rose Gold Plated', '1599100434-20037307.jpg', 69, 0, 69, 1, 'Ellani Collections', 'SE117R', '', '', 'Stainless Steel ', '52', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52', '25', 0, 0, 0, '0', '0', 0, 'Stainless Steel Fancy Pear Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Fancy Pear Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(360, 0, 27, 'Stainless Steel Fancy Drop Earrings Gold Plated', 'Ellani Collections Stainless Steel Fancy Drop Earrings Gold Plated', '1599100419-20037277.jpg', 69, 0, 69, 1, 'Ellani Collections', 'SE133G', '', '', 'Stainless Steel ', '52', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52', '23', 0, 0, 0, '0', '0', 0, 'Stainless Steel Fancy Drop Earrings Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Fancy Drop Earrings Gold Plated', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(361, 0, 27, 'Stainless Steel Pear Shape Drop Earrings Gold Plated With Silver Glitter', 'Ellani Collections Stainless Steel Pear Shape Drop Earrings Gold Plated With Silver Glitter ', '1599100457-20037376.jpg', 89, 0, 89, 1, 'Ellani Collections', 'SE176G', '', '', 'Stainless Steel ', '50', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', '20', 0, 0, 0, '0', '0', 0, 'Stainless Steel Pear Shape Drop Earrings Gold Plated With Silver Glitter', 'Earrings', 'Ellani Collections Stainless Steel Pear Shape Drop Earrings Gold Plated With Silver Glitter ', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(362, 0, 27, 'Stainless Steel Long Rain Drop Thread Through Earrings ', 'Ellani Collections Stainless Steel Long Rain Drop Thread Through Earrings ', '1599100477-20039547.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SE182S', '', '', 'Stainless Steel ', '54', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '54', '4', 0, 0, 0, '0', '0', 0, 'Stainless Steel Long Rain Drop Thread Through Earrings ', 'Earrings', 'Ellani Collections Stainless Steel Long Rain Drop Thread Through Earrings ', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(363, 0, 27, 'Stainless Steel CZ & Chain Drop Earrings ', 'Ellani Collections Stainless Steel CZ & Chain Drop Earrings ', '1599100450-20037338.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE144S', '', '', 'Stainless Steel ', '48', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '48', '4.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel CZ & Chain Drop Earrings ', 'Earrings', 'Ellani Collections Stainless Steel CZ & Chain Drop Earrings ', 1, 0, '2020-09-04 04:44:24', '2020-09-04 04:44:24', '2020-09-04 04:44:24'),
(364, 0, 27, 'Stainless Steel Black CZ Pear Drop Earrings Rose Gold Plated', 'Ellani CollectionsStainless Steel Black CZ Pear Drop Earrings Rose Gold Plated', '1599100361-20007317.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE155BK-R', '', '', 'Stainless Steel ', '26.5', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26.5', '11.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Black CZ Pear Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani CollectionsStainless Steel Black CZ Pear Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(365, 0, 27, 'Stainless Steel Pink CZ Pear Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Pink CZ Pear Drop Earrings Rose Gold Plated', '1599100355-20007287.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE155PK-R', '', '', 'Stainless Steel ', '26.5', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26.5', '11.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Pink CZ Pear Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Pink CZ Pear Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(366, 0, 27, 'Stainless Steel Purple CZ Pear Drop Earrings Rose Gold Plated', 'Ellani Collections Stainless Steel Purple CZ Pear Drop Earrings Rose Gold Plated', '1599100348-20007294.jpg', 49, 0, 49, 1, 'Ellani Collections', 'SE155A-R', '', '', 'Stainless Steel ', '26.5', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26.5', '11.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Purple CZ Pear Drop Earrings Rose Gold Plated', 'Earrings', 'Ellani Collections Stainless Steel Purple CZ Pear Drop Earrings Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(367, 0, 10, 'Stainless Steel Wide Designed Cuff', 'Ellani Collections Stainless Steel Wide Designed Cuff', '1599100394-20037154.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SB132S', '', '', 'Stainless Steel ', '66', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '63', '40', 0, 0, 0, '0', '0', 0, 'Stainless Steel Wide Designed Cuff', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Wide Designed Cuff', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(368, 0, 10, 'Stainless Steel Wide Bangel Rose Gold Plated', 'Ellani Collections Stainless Steel Wide Bangel Rose Gold Plated', '1599100375-20016074.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB152R', '', '', 'Stainless Steel ', '65', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65', '17.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Wide Bangel Rose Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Wide Bangel Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(369, 0, 10, 'Stainless Steel Wide Bangel Gold Plated', 'Ellani Collections Stainless Steel Wide Bangel Gold Plated', '1599100368-20018450.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB152G', '', '', 'Stainless Steel ', '65', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65', '17.5', 0, 0, 0, '0', '0', 0, 'Stainless Steel Wide Bangel Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Wide Bangel Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(370, 0, 10, 'Stainless Steel Bar & Bead Adjustable Bracelet Rose Gold Plated', 'Ellani Collections Stainless Steel Bar & Bead Adjustable Bracelet Rose Gold Plated', '1599100387-20035983.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB178R', '', '', 'Stainless Steel ', 'ONE SIZE FITS ALL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '3.2', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bar & Bead Adjustable Bracelet Rose Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Bar & Bead Adjustable Bracelet Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(371, 0, 10, 'Stainless Steel Bar & Bead Adjustable Bracelet Gold Plated', 'Ellani Collections Stainless Steel Bar & Bead Adjustable Bracelet Gold Plated', '1599100496-20018535.jpg', 79, 0, 79, 1, 'Ellani Collections', 'SB178G', '', '', 'Stainless Steel ', 'ONE SIZE FITS ALL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '3.2', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bar & Bead Adjustable Bracelet Gold Plated', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Bar & Bead Adjustable Bracelet Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(372, 0, 10, 'Stainless Steel Double Bracelet With Crystals', 'Ellani Collections Stainless Steel Double Bracelet With Crystals', '1599100465-20039516.jpg', 89, 0, 89, 1, 'Ellani Collections', 'SB193S', '', '', 'Stainless Steel ', '18cm + 3cm extention', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.3', '11', 0, 0, 0, '0', '0', 0, 'Stainless Steel Double Bracelet With Crystals', 'Bracelet & Bangels', 'Ellani Collections Stainless Steel Double Bracelet With Crystals', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(373, 0, 10, 'Stainless Steel Bracelet With Crystals', 'Stainless Steel Bracelet With Crystals', '1599100400-20037239.jpg', 59, 0, 59, 1, 'Ellani Collections', 'SB184S', '', '', 'Stainless Steel ', '18.5cm + 3cm Extention', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '0.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bracelet With Crystals', 'Bracelet & Bangels', 'Stainless Steel Bracelet With Crystals', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(374, 1, 10, 'Stainless Steel Bracelet With Crystals Rose Gold Plated', 'Stainless Steel Bracelet With Crystals Rose Gold Plated', '1599100407-20037246.jpg', 69, 0, 69, 1, 'Ellani Collections', 'SB184R', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '0.7', 0, 0, 0, '0', '0', 0, 'Stainless Steel Bracelet With Crystals Rose Gold Plated', 'Bracelet & Bangels', 'Stainless Steel Bracelet With Crystals Rose Gold Plated', 1, 0, '2020-09-04 04:44:25', '2020-09-04 04:44:25', '2020-09-04 04:44:25'),
(375, 0, 11, 'Sterling Silver Round Eye Pendant With Chain', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Rhodium Plated', '1599546304-20047665.jpg', 110, 0, 110, 1, 'Vina', '20047665', 'White', 'Mother Of Pearl', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4', '8.4', 0, 0, 0, '0', '0', 0, 'Sterling Silver Round Eye Pendant With Chain', 'Necklaces & Pendants', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Rhodium Plated', 1, 0, '2020-09-08 06:35:13', '2020-09-08 06:35:13', '2020-09-08 06:35:13'),
(376, 0, 11, 'Sterling Silver Round Eye Pendant With Chain Gold Plated', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Gold Plated', '1599546285-20047634.jpg', 110, 0, 110, 1, 'Vina', '20047634', 'White', 'Mother Of Pearl', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4', '8.4', 0, 0, 0, '0', '0', 0, 'Sterling Silver Round Eye Pendant With Chain Gold Plated', 'Necklaces & Pendants', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Gold Plated', 1, 0, '2020-09-08 06:35:13', '2020-09-08 06:35:13', '2020-09-08 06:35:13'),
(377, 0, 11, 'Sterling Silver Round Eye Pendant With Chain Rose Gold Plated', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Rose Gold Plated', '1599546293-20047641.jpg', 110, 0, 110, 1, 'Vina', '20047641', 'White', 'Mother Of Pearl', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.4', '8.4', 0, 0, 0, '0', '0', 0, 'Sterling Silver Round Eye Pendant With Chain Rose Gold Plated', 'Necklaces & Pendants', 'Vina Collection Sterling Silver Round Mother Of Pearl And Enamel Eye Pendant & Chain Rose Gold Plated', 1, 0, '2020-09-08 06:35:14', '2020-09-08 06:35:14', '2020-09-08 06:35:14'),
(378, 0, 11, 'Sterling Silver CZ Eye Pendant With Chain', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Rhodium Plated', '1599546255-20047368.jpg', 100, 0, 100, 1, 'Vina', '20047368', 'White', 'Cubic Zirconia', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.2', '12.2', 0, 0, 0, '0', '0', 0, 'Sterling Silver CZ Eye Pendant With Chain', 'Necklaces & Pendants', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Rhodium Plated', 1, 0, '2020-09-08 06:35:14', '2020-09-08 06:35:14', '2020-09-08 06:35:14'),
(379, 0, 11, 'Sterling Silver CZ Eye Pendant With Chain Gold Plated', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Gold Plated', '1599546277-20047382.jpg', 100, 0, 100, 1, 'Vina', '20047382', 'White', 'Cubic Zirconia', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.2', '12.2', 0, 0, 0, '0', '0', 0, 'Sterling Silver CZ Eye Pendant With Chain Gold Plated', 'Necklaces & Pendants', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Gold Plated', 1, 0, '2020-09-08 06:35:14', '2020-09-08 06:35:14', '2020-09-08 06:35:14'),
(380, 0, 11, 'Sterling Silver CZ Eye Pendant With Chain Rose Gold Plated', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Rose Gold Plated', '1599546269-20047375.jpg', 100, 0, 100, 1, 'Vina', '20047375', 'White', 'Cubic Zirconia', 'Sterling Silver', '', '42cm + 3cm extention', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.2', '12.2', 0, 0, 0, '0', '0', 0, 'Sterling Silver CZ Eye Pendant With Chain Rose Gold Plated', 'Necklaces & Pendants', 'Vina Collection Sterling Silver CZ Eye Pendant With Chain Rose Gold Plated', 1, 0, '2020-09-08 06:35:14', '2020-09-08 06:35:14', '2020-09-08 06:35:14'),
(381, 1, 11, 'Ellani', 'Ellani test', '5f572d411e72474341599548737.png', 100, 10, 90, 10, 'Ellani Collections', 'test123', 'White', '', '18ct Gold', NULL, '40cm', 'Under 1/4 Carat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '11', 0, 1, 2, '0', '0', 0, '', '', '', 1, 0, '2020-09-08 07:05:37', '2020-09-08 07:05:37', '2020-09-08 07:05:37'),
(382, 1, 11, 'tets', 'testing', '5f572e150efc951821599548949.png', 20, 0, 20, 10, 'Ellani Collections', '54554', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, 0, 0, '0', '0', 0, '', '', '', 1, 0, '2020-09-08 07:09:09', '2020-09-08 07:09:09', '2020-09-08 07:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `product_code`, `created_at`) VALUES
(10, 0, '1587029252-p_1.jpg', NULL, '2020-04-16 09:27:32'),
(11, 0, '1587029252-about.png', NULL, '2020-04-16 09:27:32'),
(12, 0, '1587029252-p_2.jpg', NULL, '2020-04-16 09:27:32'),
(13, 0, '1587029252-p_3.jpg', NULL, '2020-04-16 09:27:32'),
(14, 0, '1587029252-p_4.jpg', NULL, '2020-04-16 09:27:32'),
(15, 0, '1587029252-p_5.jpg', NULL, '2020-04-16 09:27:32'),
(16, 0, '1587029252-p_6.jpg', NULL, '2020-04-16 09:27:32'),
(17, 0, '1587029252-prod_single.jpg', NULL, '2020-04-16 09:27:32'),
(20, 11, '1589008380-14244247_2.jpg', NULL, '2020-05-09 07:13:00'),
(21, 11, '1589008382-14244247_1.jpg', NULL, '2020-05-09 07:13:02'),
(22, 12, '1589178734-14227608_1.jpg', NULL, '2020-05-11 06:32:14'),
(23, 12, '1589178802-14227608_2.jpg', NULL, '2020-05-11 06:33:22'),
(24, 13, '1589179104-C16214477-25_3.jpg', NULL, '2020-05-11 06:38:24'),
(25, 13, '1589179133-C16214477-25_2.jpg', NULL, '2020-05-11 06:38:53'),
(26, 14, 'p11.jpg', NULL, '2020-05-14 07:41:45'),
(27, 14, 'p12.jpg', NULL, '2020-05-14 07:41:45'),
(28, 15, 'p21.jpg', NULL, '2020-05-14 07:41:45'),
(29, 15, 'p23.jpg', NULL, '2020-05-14 07:41:45'),
(30, 16, 'p11.jpg', NULL, '2020-05-24 08:52:48'),
(31, 16, 'p12.jpg', NULL, '2020-05-24 08:52:48'),
(32, 17, 'p21.jpg', NULL, '2020-05-24 08:52:48'),
(33, 17, 'p23.jpg', NULL, '2020-05-24 08:52:48'),
(34, 18, 'p11.jpg', NULL, '2020-05-24 09:10:05'),
(35, 18, 'p12.jpg', NULL, '2020-05-24 09:10:05'),
(36, 19, 'p21.jpg', NULL, '2020-05-24 09:10:05'),
(37, 19, 'p23.jpg', NULL, '2020-05-24 09:10:05'),
(38, 14, 'p11.jpg', NULL, '2020-07-16 05:28:05'),
(39, 14, 'p12.jpg', NULL, '2020-07-16 05:28:05'),
(40, 15, 'p21.jpg', NULL, '2020-07-16 05:28:05'),
(41, 15, 'p23.jpg', NULL, '2020-07-16 05:28:05'),
(346, 320, '', NULL, '2020-09-04 04:44:22'),
(347, 321, '', NULL, '2020-09-04 04:44:22'),
(348, 322, '', NULL, '2020-09-04 04:44:22'),
(349, 323, '', NULL, '2020-09-04 04:44:22'),
(350, 324, '', NULL, '2020-09-04 04:44:22'),
(351, 325, '', NULL, '2020-09-04 04:44:22'),
(352, 326, '', NULL, '2020-09-04 04:44:22'),
(353, 327, '', NULL, '2020-09-04 04:44:23'),
(354, 328, '', NULL, '2020-09-04 04:44:23'),
(355, 329, '', NULL, '2020-09-04 04:44:23'),
(356, 330, '', NULL, '2020-09-04 04:44:23'),
(357, 331, '', NULL, '2020-09-04 04:44:23'),
(358, 332, '', NULL, '2020-09-04 04:44:23'),
(359, 333, '', NULL, '2020-09-04 04:44:23'),
(360, 334, '', NULL, '2020-09-04 04:44:23'),
(361, 335, '', NULL, '2020-09-04 04:44:23'),
(362, 336, '', NULL, '2020-09-04 04:44:23'),
(363, 337, '', NULL, '2020-09-04 04:44:23'),
(364, 338, '', NULL, '2020-09-04 04:44:23'),
(365, 339, '', NULL, '2020-09-04 04:44:23'),
(366, 340, '', NULL, '2020-09-04 04:44:23'),
(367, 341, '', NULL, '2020-09-04 04:44:23'),
(368, 342, '', NULL, '2020-09-04 04:44:23'),
(369, 343, '', NULL, '2020-09-04 04:44:23'),
(370, 344, '', NULL, '2020-09-04 04:44:23'),
(371, 345, '', NULL, '2020-09-04 04:44:23'),
(372, 346, '', NULL, '2020-09-04 04:44:23'),
(373, 347, '', NULL, '2020-09-04 04:44:24'),
(374, 348, '', NULL, '2020-09-04 04:44:24'),
(375, 349, '', NULL, '2020-09-04 04:44:24'),
(376, 350, '', NULL, '2020-09-04 04:44:24'),
(377, 351, '', NULL, '2020-09-04 04:44:24'),
(378, 352, '', NULL, '2020-09-04 04:44:24'),
(379, 353, '', NULL, '2020-09-04 04:44:24'),
(380, 354, '', NULL, '2020-09-04 04:44:24'),
(381, 355, '', NULL, '2020-09-04 04:44:24'),
(382, 356, '', NULL, '2020-09-04 04:44:24'),
(383, 357, '', NULL, '2020-09-04 04:44:24'),
(384, 358, '', NULL, '2020-09-04 04:44:24'),
(385, 359, '', NULL, '2020-09-04 04:44:24'),
(386, 360, '', NULL, '2020-09-04 04:44:24'),
(387, 361, '', NULL, '2020-09-04 04:44:24'),
(388, 362, '', NULL, '2020-09-04 04:44:24'),
(389, 363, '', NULL, '2020-09-04 04:44:25'),
(390, 364, '', NULL, '2020-09-04 04:44:25'),
(391, 365, '', NULL, '2020-09-04 04:44:25'),
(392, 366, '', NULL, '2020-09-04 04:44:25'),
(393, 367, '', NULL, '2020-09-04 04:44:25'),
(394, 368, '', NULL, '2020-09-04 04:44:25'),
(395, 369, '', NULL, '2020-09-04 04:44:25'),
(396, 370, '', NULL, '2020-09-04 04:44:25'),
(397, 371, '', NULL, '2020-09-04 04:44:25'),
(398, 372, '', NULL, '2020-09-04 04:44:25'),
(399, 373, '', NULL, '2020-09-04 04:44:25'),
(400, 374, '', NULL, '2020-09-04 04:44:25'),
(401, 375, '', NULL, '2020-09-08 06:35:13'),
(402, 376, '', NULL, '2020-09-08 06:35:14'),
(403, 377, '', NULL, '2020-09-08 06:35:14'),
(404, 378, '', NULL, '2020-09-08 06:35:14'),
(405, 379, '', NULL, '2020-09-08 06:35:14'),
(406, 380, '', NULL, '2020-09-08 06:35:14'),
(407, 381, '1599548770-P669S.jpg', NULL, '2020-09-08 07:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `min_amount` double NOT NULL,
  `description` varchar(1000) NOT NULL,
  `product_id` int(11) NOT NULL,
  `starttime` varchar(100) NOT NULL,
  `endtime` varchar(100) NOT NULL,
  `startdate` timestamp NULL DEFAULT NULL,
  `enddate` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=>inactive,1=>active',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`id`, `code`, `image`, `discount`, `min_amount`, `description`, `product_id`, `starttime`, `endtime`, `startdate`, `enddate`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'CHRISTINA20', '5f0d6bea7bb5f77081594715114.png', 20, 200, 'Get 20% off on all products.', 0, '1586473200', '1598914800', '2020-04-09 18:30:00', '2020-08-31 18:30:00', 1, 0, '2020-08-31 11:19:55', '2020-03-13 13:33:20'),
(2, 'OFFER15', NULL, 15, 150, '15 % discount', 0, '1585958400', '1589760000', '2020-04-03 18:30:00', '2020-05-17 18:30:00', 1, 0, '2020-04-14 06:21:22', '2020-04-01 07:17:11'),
(3, 'CHRISTINA10', NULL, 10, 100, 'Get 10% off on all products', 0, '1586473200', '1599433200', '2020-04-09 18:30:00', '2020-09-06 18:30:00', 1, 0, '2020-08-31 11:24:01', '2020-04-11 09:21:19'),
(4, 't', '5f0d6fec3de4c23701594716140.png', 10, 0, 't', 0, '1586457000', '1590777000', '2020-04-09 14:00:00', '2020-05-29 14:00:00', 0, 1, '2020-07-14 08:42:38', '2020-07-14 08:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `product_id`, `rating`, `created_at`) VALUES
(1, 1, 1, 3, '2020-04-03 10:01:05'),
(2, 5, 1, 4, '2020-04-03 10:01:23'),
(3, 1, 2, 4, '2020-04-03 14:55:56'),
(4, 1, 3, 5, '2020-04-03 14:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `product_id`, `review`, `created_at`) VALUES
(1, 1, 1, 'Nice Product', '2020-04-03 09:57:48'),
(2, 1, 3, 'Good material at good price', '2020-04-03 14:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Fine Jewellery', 'Fashion jewelleries', 'Latest jewellery, Bridal jewelleries, Engagement rings, Gifts', '2020-04-13 15:08:08', '2020-09-07 02:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `field_key` varchar(100) NOT NULL,
  `field_value` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field_key`, `field_value`, `created_at`, `updated_at`) VALUES
(1, 'website_email', 'info@christinajewellery.com.au', '2020-05-06 09:07:11', '2020-05-12 09:51:12'),
(2, 'website_contact', '1800 94 5252', '2020-05-06 09:08:05', '2020-05-12 09:50:29'),
(3, 'company_address', 'Shop 7/100 Bonnyrigg Avenue, Bonyyrigg NSW 2177', '2020-05-06 09:08:22', '2020-05-14 04:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_detail`
--

CREATE TABLE `shipping_detail` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `postal` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_company_name` varchar(100) DEFAULT NULL,
  `b_country` varchar(100) DEFAULT NULL,
  `b_state` varchar(100) DEFAULT NULL,
  `b_city` varchar(100) DEFAULT NULL,
  `b_postal` varchar(100) DEFAULT NULL,
  `b_phone` varchar(100) DEFAULT NULL,
  `b_address` varchar(255) DEFAULT NULL,
  `b_address2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_detail`
--

INSERT INTO `shipping_detail` (`id`, `order_id`, `name`, `company_name`, `country`, `state`, `city`, `address`, `postal`, `phone`, `address2`, `payment_mode`, `b_name`, `b_company_name`, `b_country`, `b_state`, `b_city`, `b_postal`, `b_phone`, `b_address`, `b_address2`, `created_at`) VALUES
(1, 'ORDER3000303321', 'parvez', NULL, NULL, NULL, 'Indore', 'Palasia', '452001', '98965656', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 12:32:23'),
(2, 'ORDER1007912206', 'parvez', NULL, NULL, NULL, 'Indore', 'Palasia', '452001', '98965656', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 12:34:00'),
(3, 'ORDER7164294803', 'parvez', NULL, NULL, NULL, 'Indore', 'Palasia', '452001', '98965656', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 12:37:03'),
(4, 'ORDER5664260483', 'Kamal Askaro', NULL, NULL, NULL, 'Liverpool', '8/46-50 Hoxton park road', '2170', '0433322125', NULL, 'zippay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 11:51:00'),
(5, 'ORDER8088306667', 'jdkjkj', NULL, NULL, NULL, 'dqkadhki', 'wfhifjowfjosfo', '5656', '042332322323', NULL, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 11:58:46'),
(6, 'ORDER9166622735', 'parvez', NULL, NULL, NULL, 'Indore', 'Palasia', '452001', '98965656', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 07:27:10'),
(7, 'ORDER0628983464', 'Kam', NULL, NULL, NULL, 'Liverpool', '8/46 Hoxt', '2170', '0433322125', NULL, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 09:20:17'),
(8, 'ORDER6708081753', 'parvez khan', NULL, NULL, NULL, 'Indore', 'Palasia', '452001', '98965656', NULL, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-18 09:25:33'),
(9, 'ORDER3048262712', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', 'Palasia', '452001', '98965656', NULL, 'afterpay', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, '2020-05-23 07:30:32'),
(10, 'ORDER7428668951', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', 'Palasia', '452001', '98965656', NULL, 'zippay', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, '2020-05-23 07:36:17'),
(11, 'ORDER2254693029', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', 'Palasia', '452001', '98965656', NULL, 'afterpay', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, '2020-05-23 07:42:55'),
(12, 'ORDER9472062844', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', 'Palasia', '452001', '98965656', NULL, 'zippay', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, '2020-05-23 08:05:19'),
(13, 'ORDER0546221961', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', 'Palasia', '452001', '98965656', NULL, 'paypal', 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, '2020-06-15 04:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(700) NOT NULL DEFAULT 'default.png',
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `description`, `slug`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '5e90696561acb23061586522469.png', 'Banner', 'Banner description', 'necklaced', 1, 0, '2020-03-27 18:46:03', '2020-07-13 16:41:44'),
(2, '5e905b97ca06194641586518935.png', 'Banner Kjhc lorem', 'Banner description', NULL, 1, 0, '2020-03-27 18:46:03', '2020-04-10 17:12:15'),
(3, '5e906d84ef2f722181586523524.png', 'Banner heading', 'subheading', NULL, 1, 1, '2020-04-10 18:28:44', '2020-04-10 18:30:36'),
(4, '5e906e22b75aa93941586523682.png', 'heading', 'sub heading', NULL, 1, 0, '2020-04-10 18:31:22', '2020-04-10 18:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=>inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `title` varchar(700) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 => Active, 0 => Not Active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default.png', 'Terms and condition.', '<p>d ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pari.atur?&quot;</p>\r\n', 1, '2020-03-28 17:58:06', '2020-04-01 06:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `image` varchar(700) NOT NULL DEFAULT 'default.png',
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `title`, `description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '5e91536e889f550981586582382.png', 'Sofia Johnsons', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, '2020-03-27 18:46:03', '2020-04-11 10:50:17'),
(2, '5e9153193582c91171586582297.png', 'John Doe', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.', 1, 0, '2020-03-27 18:46:03', '2020-04-11 10:48:17'),
(3, '5e915330c3e1d36141586582320.png', 'Lily Johnsons', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa', 1, 0, '2020-03-27 18:46:03', '2020-04-11 10:48:40'),
(4, '5e915344b205735481586582340.png', 'Madison Taylor', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete', 1, 0, '2020-03-27 18:46:03', '2020-04-11 10:49:00'),
(5, '5e9155182ff3566501586582808.png', 'a', 'xvcbcb', 1, 1, '2020-04-11 10:56:48', '2020-04-11 10:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `image` varchar(100) DEFAULT 'default.png',
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `country` tinyint(4) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `city` int(11) NOT NULL DEFAULT '0',
  `ship_name` varchar(100) DEFAULT NULL,
  `ship_company_name` varchar(100) DEFAULT NULL,
  `ship_country` varchar(100) DEFAULT NULL,
  `ship_state` varchar(100) DEFAULT NULL,
  `ship_city` varchar(100) DEFAULT NULL,
  `ship_zipcode` varchar(100) DEFAULT NULL,
  `ship_phone` varchar(100) DEFAULT NULL,
  `ship_address` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `bill_name` varchar(100) DEFAULT NULL,
  `bill_company_name` varchar(100) DEFAULT NULL,
  `bill_country` varchar(100) DEFAULT NULL,
  `bill_state` varchar(100) DEFAULT NULL,
  `bill_city` varchar(100) DEFAULT NULL,
  `bill_zipcode` varchar(100) DEFAULT NULL,
  `bill_phone` varchar(100) DEFAULT NULL,
  `bill_address` varchar(255) DEFAULT NULL,
  `bill_address2` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=>inactive,1=>active',
  `is_verified` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Yes, 0= No',
  `key` varchar(255) DEFAULT NULL,
  `key_expire` varchar(100) DEFAULT NULL,
  `token` varchar(1024) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `contact`, `address`, `country`, `state`, `city`, `ship_name`, `ship_company_name`, `ship_country`, `ship_state`, `ship_city`, `ship_zipcode`, `ship_phone`, `ship_address`, `ship_address2`, `bill_name`, `bill_company_name`, `bill_country`, `bill_state`, `bill_city`, `bill_zipcode`, `bill_phone`, `bill_address`, `bill_address2`, `lat`, `long`, `status`, `is_verified`, `key`, `key_expire`, `token`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'parvez', 'parvez@gmail.com', '$2b$10$rKdVir3vfGZhgu28PCQ8EeNu7qr6AS0btkr/IM53hsz6YVMIgAP8y', 'default.png', '9994456897', 'indore', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 1, '2020-03-02 08:00:52', '2020-07-22 09:13:09', '2020-07-22 04:43:09'),
(5, 'parvez', 'parvezkhan@gmail.com', '$2b$10$1lIdYBu8mVk9RmHmJTOh5u6KvKxmVb2s0vo2ycyOPcB/p5FOwZG9.', 'default.png', '585456765765', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 1, '2020-03-04 07:54:01', '2020-07-22 09:13:16', '2020-07-22 04:43:16'),
(6, 'test1', 'test@mailinator.com', '$2a$10$BK4s0zkEoQzx.gQ.2ZjKrO/vgn5rSQanh/ugJD3YVjieFQhPFkhHm', 'default.png', '9686547598', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 1, '2020-03-26 09:01:56', '2020-07-22 09:13:23', '2020-07-22 04:43:23'),
(7, 'test', 'test@uk.com', '$2a$10$V65.tdyouWucEFJxxcxeoumFtyparMhIX52W/ymEpLzS4o126MtJm', 'default.png', '12345645', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, '2020-03-26 10:23:07', '2020-04-01 06:54:33', '2020-04-01 12:24:33'),
(27, 'parvez', 'parvezkhan03@gmail.com', '$2a$10$L1IReqykEPW6o6wI3x737ecujFEx/uZLGdXOtHvmvMmVlGKEQBoj2', 'default.png', '98965656', NULL, 0, 0, 0, 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, 'parvez khan', 'Carol Data', 'India', 'Andaman and Nicobar Islands', 'Indore', '452001', '98965656', 'Palasia', NULL, NULL, NULL, 1, 1, NULL, NULL, 'GAVGB1SRVYFLKDC22G7EWVFHN7G333', 1, '2020-04-17 14:43:39', '2020-07-22 09:13:49', '2020-07-22 04:43:49'),
(28, 'Parvez', 'parvez.tbwebnet@gmail.com', '$2a$10$PS48wYn.bf2L7RAAe6mQteF/nX9y0ASB59Q5sLdtH1awmFjEEG11G', 'default.png', '987565232', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'F1BZB2KIMPNWJSP94WZOA56UOQ07Y2', 1, '2020-04-18 08:53:49', '2020-07-22 09:13:31', '2020-07-22 04:43:31'),
(29, 'Kamal Askari', 'kamaskri@gmail.com', '$2a$10$jWMwlsIqsb5rO3xAkS6iQuqCces74hUi6GbKdLtqysmUwPmS37N8y', 'default.png', '433322125', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'EIN8F0SLF6SKL48XW7UCDA2Z5J0OKS', 1, '2020-05-07 13:58:25', '2020-09-04 11:05:19', '2020-07-22 04:44:05'),
(30, 'parvez', 'parvez.tbwebnet+1@gmail.com', '$2a$10$clPGy6KB6X7woYh7kBEW1.DlLlAYbygs1Zqo.jUYYHbsA1VMW9KeK', 'default.png', '989656569565', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2TG4LTMGIUBR37JLNSKE1BMMIOT68E', 1, '2020-05-10 05:56:11', '2020-07-22 09:13:58', '2020-07-22 04:43:58'),
(31, 'parvez', 'parvez.tbwebnet+2@gmail.com', '$2a$10$cI3diH/VZql8EopyIr6L2.wQ8QS34vz5SqCGYQ/bLThy6q9t.odxi', 'default.png', '9896565689', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'LSFO5CKTDSDZ6L55IIKJE2BPYUTU75', 1, '2020-05-10 06:05:38', '2020-07-22 09:14:11', '2020-07-22 04:44:11'),
(32, 'parvez', 'parvez.tbwebnet+3@gmail.com', '$2a$10$rYrl9s9Pqo4fDmKK8J6she.glZK6k9Ao59rcOQ4j/LiQ5PjCDrAD2', 'default.png', '9896565636', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'NFHUT48QRIN91FXPGVRFCAESWSUHMO', 1, '2020-05-10 06:11:57', '2020-07-22 09:14:25', '2020-07-22 04:44:25'),
(33, 'parvez', 'parvez.tbwebnet+4@gmail.com', '$2a$10$AnUgWdJ/i/hQs2RGwfIBIuNVJH2kYwv2kneAwo9tnGEusWNlCsAsS', 'default.png', '98965656898', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'TXZ6CMBZZWNN4POXXQS9EC0YHIN31T', 1, '2020-05-10 06:30:25', '2020-07-22 09:13:02', '2020-07-22 04:43:02'),
(34, 'parvez', 'mss.parvezkhan@gmail.com', '$2a$10$31htxXM8tpv3jTfZrjVaNOBkiYw8gSG849i.GahArDdFtgmyMlAES', 'default.png', '9896565669', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'DWVVLEPG6BRRRQCG2ZFES5QINTO3L5', 1, '2020-05-10 06:36:58', '2020-07-22 09:14:19', '2020-07-22 04:44:19'),
(35, 'parvez', 'mss.parvezkhan+2@gmail.com', '$2a$10$an4jg8iJuObqvqsTmHjFBuDG.LJQ.JLk4mMSFowwS1Tm6tQtnZMSi', 'default.png', '9896565645', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'PBC9JVBY332EII4H1BYLBWXYS24U3F', 1, '2020-05-10 07:19:45', '2020-07-22 09:13:42', '2020-07-22 04:43:42'),
(36, 'kam', 'info@cdmcg.com.au', '$2a$10$sX8tK8w/z2ulguDTfQl.zOurkn0cI3SygCOfW1pqf/lgyHU5ntByq', 'default.png', '0433322125', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '4GR8PGZGDXE6JTKLYQNFO2R30SMA31', 1, '2020-05-14 09:17:06', '2020-07-22 09:14:31', '2020-07-22 04:44:31'),
(37, 'Kam ask', 'kamalas@hotmail.com', '$2a$10$eexmWF8wNv6EKV3UxinT2.7prgy8VfrxspyhLeshsc1ffeJC6eTwC', 'default.png', '4333221250', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'T5UAWO5C4VCMSPCMXE7B93XCVA1FZV', 0, '2020-08-26 07:19:03', '2020-08-26 07:27:00', '2020-08-26 07:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `diet_type` varchar(100) DEFAULT NULL,
  `favorite_kitchen` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 36, 9, '2020-05-14 09:28:22'),
(3, 36, 12, '2020-05-18 15:35:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_return`
--
ALTER TABLE `exchange_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_section`
--
ALTER TABLE `footer_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lower_section`
--
ALTER TABLE `lower_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multipleimages`
--
ALTER TABLE `multipleimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_return`
--
ALTER TABLE `exchange_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `footer_section`
--
ALTER TABLE `footer_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lower_section`
--
ALTER TABLE `lower_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `multipleimages`
--
ALTER TABLE `multipleimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
