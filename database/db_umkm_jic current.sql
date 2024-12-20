-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 04:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_umkm_jic`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `fullname`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 15, 'Lala Land', '081331081813', 'Jakarta Barat', '2024-12-10 00:30:22', '2024-12-10 00:30:22'),
(2, 15, 'Five Part', '11112222233', 'Surabaya', '2024-12-10 00:31:08', '2024-12-10 00:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageCtg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `imageCtg`) VALUES
(1, 'catalog/AzKvTh12A1z0YG8nvuOXlrav1stsjlB05vncXsu4.png'),
(2, 'catalog/Vd2jKLe6qSmRtxwtCHg3SSgl6NLbAwiKLK8MXI6z.png'),
(3, 'catalog/B2hWDyUPikG8MPWPzIOqIU9TtzTaYcRULOVGYDps.png'),
(4, 'catalog/JEYWzWvVnv26Agp9rv2v0Z2WTk9HH5DnPZ4jpldL.png'),
(5, 'catalog/qB8lQBw4z8PLkn48JZqnyjbqa61wGoY5dWwNQq2b.png'),
(6, 'catalog/h0nfuv6hyu7ly7kWmD4NlLMZ325ZDLlzbSZGp6iE.png');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `product_id`, `color_name`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cream', '#D9C4A7', '2024-12-06 12:50:59', '2024-12-12 06:01:26'),
(2, 1, 'Sage Green', '#9CB69B', '2024-12-06 12:59:38', '2024-12-12 06:02:07'),
(4, 1, 'Black', '#000000', '2024-12-06 13:31:40', '2024-12-12 06:02:17'),
(5, 2, 'Grey', '#E0E1E5', '2024-12-12 06:03:20', '2024-12-12 06:03:20'),
(6, 2, 'Black', '#000000', '2024-12-12 06:03:41', '2024-12-12 06:03:41'),
(7, 2, 'Cream', '#DCC9B3', '2024-12-12 06:03:56', '2024-12-12 06:03:56'),
(8, 2, 'Pink', '#E4C0C8', '2024-12-12 06:04:23', '2024-12-12 06:04:23'),
(9, 2, 'Red Wine', '#852629', '2024-12-12 06:05:07', '2024-12-12 06:05:07'),
(10, 3, 'Cream', '#D5B18E', '2024-12-12 06:06:38', '2024-12-12 06:06:38'),
(11, 3, 'Pink', '#EDCDD0', '2024-12-12 06:07:41', '2024-12-12 06:07:41'),
(12, 3, 'Brown', '#A8632A', '2024-12-12 06:08:17', '2024-12-12 06:08:17'),
(13, 3, 'Black', '#000000', '2024-12-12 06:08:30', '2024-12-12 06:08:30'),
(14, 4, 'Brown', '#794429', '2024-12-12 06:12:09', '2024-12-12 06:12:09'),
(15, 4, 'Green', '#02643E', '2024-12-12 06:12:24', '2024-12-12 06:12:24'),
(16, 4, 'Black', '#000000', '2024-12-12 06:12:39', '2024-12-12 06:12:39'),
(17, 5, 'Pink', '#DAA99F', '2024-12-12 06:13:35', '2024-12-12 06:13:35'),
(18, 5, 'Blue', '#9CAFC2', '2024-12-12 06:13:59', '2024-12-12 06:13:59'),
(19, 5, 'Orange', '#CD8C4F', '2024-12-12 06:14:23', '2024-12-12 06:14:23'),
(20, 5, 'Black', '#000000', '2024-12-12 06:14:33', '2024-12-12 06:14:33'),
(21, 6, 'Brown', '#794429', '2024-12-12 06:15:06', '2024-12-12 06:15:06'),
(22, 6, 'Cream', '#EAE2DA', '2024-12-12 06:15:43', '2024-12-12 06:15:43'),
(23, 6, 'Black', '#000000', '2024-12-12 06:15:54', '2024-12-12 06:15:54'),
(24, 7, 'Black', '#000000', '2024-12-12 06:16:23', '2024-12-12 06:16:23'),
(25, 7, 'Pink', '#E4C0C8', '2024-12-12 06:16:41', '2024-12-12 06:16:41'),
(26, 7, 'Red Wine', '#642C3A', '2024-12-12 06:17:05', '2024-12-12 06:17:05'),
(27, 8, 'Grey', 'A8A6AF', '2024-12-12 06:18:49', '2024-12-12 06:18:49'),
(28, 8, 'Brown', '#543D2A', '2024-12-12 06:19:21', '2024-12-12 06:19:21'),
(29, 8, 'Navy', '#1D2541', '2024-12-12 06:19:55', '2024-12-12 06:19:55'),
(30, 9, 'Red Wine', '#852629', '2024-12-12 06:20:34', '2024-12-12 06:20:34'),
(31, 9, 'Cream', '#DCC9B3', '2024-12-12 06:20:50', '2024-12-12 06:20:50'),
(32, 9, 'Black', '#000000', '2024-12-12 06:21:02', '2024-12-12 06:21:02'),
(33, 10, 'Cream', '#EBDBD4', '2024-12-12 06:21:44', '2024-12-12 06:21:44'),
(34, 10, 'Grey', '#E0E1E5', '2024-12-12 06:22:09', '2024-12-12 06:22:09'),
(35, 10, 'Black', '#000000', '2024-12-12 06:22:18', '2024-12-12 06:22:18'),
(36, 11, 'Grey', '#DFE0E4', '2024-12-12 06:23:02', '2024-12-12 06:23:02'),
(37, 11, 'Cream', '#F8F2EC', '2024-12-12 06:23:21', '2024-12-12 06:23:21'),
(38, 11, 'Black', '#000000', '2024-12-12 06:23:33', '2024-12-12 06:23:33'),
(39, 12, 'Cream', '#F3E9DE', '2024-12-12 06:24:10', '2024-12-12 06:24:10'),
(40, 12, 'Pink', '#E4C0C8', '2024-12-12 06:24:23', '2024-12-12 06:24:23'),
(41, 12, 'Black', '#000000', '2024-12-12 06:24:36', '2024-12-12 06:24:36'),
(42, 13, 'Sage Green', '#921E23', '2024-12-12 06:25:05', '2024-12-12 06:25:05'),
(43, 13, 'Red', '#8DA28C', '2024-12-12 06:25:29', '2024-12-12 06:25:29'),
(44, 13, 'Black', '#000000', '2024-12-12 06:25:43', '2024-12-12 06:25:43'),
(45, 14, 'Blue', '#9CAFC2', '2024-12-12 06:26:21', '2024-12-12 06:26:21'),
(46, 14, 'Black', '#000000', '2024-12-12 06:26:36', '2024-12-12 06:26:36'),
(47, 14, 'Pink', '#E4C0C8', '2024-12-12 06:26:51', '2024-12-12 06:26:51'),
(48, 15, 'Black', '#000000', '2024-12-12 06:28:55', '2024-12-12 06:28:55'),
(49, 15, 'Blue', '#9CAFC2', '2024-12-12 06:29:12', '2024-12-12 06:29:12'),
(50, 15, 'Tosca', '#7FB2A4', '2024-12-12 06:29:33', '2024-12-12 06:29:33'),
(51, 15, 'Purple', '#816D88', '2024-12-12 06:29:57', '2024-12-12 06:29:57'),
(52, 16, 'Black', '#000000', '2024-12-12 06:32:45', '2024-12-12 06:32:59'),
(53, 16, 'Cream', '#DAD3CC', '2024-12-12 06:33:21', '2024-12-12 06:33:21'),
(54, 16, 'Pink', '#D6A8B2', '2024-12-12 06:33:54', '2024-12-12 06:33:54'),
(55, 16, 'Blue', '#9CAFC2', '2024-12-12 06:34:09', '2024-12-12 06:34:09'),
(56, 17, 'Black', '#000000', '2024-12-12 06:46:11', '2024-12-12 06:46:11'),
(57, 17, 'Pink', '#EDCDD0', '2024-12-12 06:46:26', '2024-12-12 06:46:26'),
(58, 17, 'Cream', '#F8F2EC', '2024-12-12 06:46:41', '2024-12-12 06:46:41'),
(59, 18, 'Navy', '#1D2541', '2024-12-12 06:47:13', '2024-12-12 06:47:13'),
(60, 18, 'Sage Green', '#BDD2AF', '2024-12-12 06:47:33', '2024-12-12 06:47:33'),
(61, 18, 'Black', '#000000', '2024-12-12 06:47:50', '2024-12-12 06:47:50'),
(62, 19, 'Pink', '#D6A8B2', '2024-12-12 06:48:22', '2024-12-12 06:48:22'),
(63, 19, 'Cream', '#EAE2DA', '2024-12-12 06:48:36', '2024-12-12 06:48:36'),
(64, 19, 'Black', '#000000', '2024-12-12 06:48:43', '2024-12-12 06:48:43'),
(65, 20, 'Brown', '#674F49', '2024-12-12 06:49:10', '2024-12-12 06:49:10'),
(66, 20, 'Black', '#000000', '2024-12-12 06:49:20', '2024-12-12 06:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_img_1` text NOT NULL,
  `color_img_2` text NOT NULL,
  `color_img_3` text NOT NULL,
  `detail_img_1` varchar(255) DEFAULT NULL,
  `detail_img_2` text NOT NULL,
  `detail_img_3` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `product_id`, `color_img_1`, `color_img_2`, `color_img_3`, `detail_img_1`, `detail_img_2`, `detail_img_3`, `created_at`, `updated_at`) VALUES
(1, 1, 'detail_product/Fgmu46USnKXOmNqIgOFSyqxQcwXZKi5mdPlRBOWD.png', 'detail_product/Wiy77qa4XueXjnqNKOEoqibPwOeq0DcqmplAT1RJ.png', 'detail_product/jqPOOe1Qxk3R8sLbXI17hnF43wqCiEY9i7WSyvBN.png', 'detail_product/3zrx7dEvnhs0PRDx16AHwrspg5kAxfQSOskSVELM.png', 'detail_product/QaO2nnq3kYNqn8iDBg6BViOigiP9hYyyYapzKmb8.png', 'detail_product/Ffo4vX2PU0YcZYoFYc3uQX9Sm4gf0M9ob2oF1Cn5.png', '2024-06-04 11:10:25', '2024-12-12 10:07:22'),
(2, 2, 'detail_product/2dIJWTF7iZqpEdwaV1uL8w26hPPHJ8qoaAujYTwR.png', 'detail_product/Lnr7zaowFFokixGDqEvRCS2OFUN7SlZqGaeDDjDE.png', 'detail_product/btsgOyoQzcq4bQVVLW9kj8B9VWZnnzpPcBy0k74y.png', 'detail_product/rOKKV9fXvObQR0k4wo6ySksDBGJALqQ6GQ34eS0H.png', 'detail_product/6G1icccykGB2fsKH5T9VjgbAGJBilI7QStGie1mv.png', 'detail_product/HaPqnMvXzJWGwj54KaaOceLXp9yKkjJQjXguWDFi.png', '2024-06-04 11:11:03', '2024-12-12 10:09:12'),
(3, 3, 'detail_product/ioOiOr9HHdDfowjI6o2AsesSyOA3XvxCXNFCrUK4.png', 'detail_product/7yo1DFu3CwnEBTUVBtRpMOrcmXyBDbDHmaRFgY3M.png', 'detail_product/X5C6309wrugnBg3QMQJba1bsdhE4NSEldqJx8E5e.png', 'detail_product/LJJDH0hDP4uiW2bKFLCWZan6Af04SR3SgVCGGXcT.png', 'detail_product/UAVTkTaB3t8GPsU5xpWn5hw0WtxSyXJuwc8I34IX.png', 'detail_product/Of0BTlh5apdJtPHC6Iat7nMXBnpb6fXippRjW54a.png', '2024-06-04 11:11:38', '2024-12-12 10:10:28'),
(4, 4, 'detail_product/O07SyjSZWWFE6OwQaeCoXioszwwvrysSlkmxHvVk.png', 'detail_product/4JWvbCy1HQozu9uN93PeClVhNRPTBWEzcy5OmBix.png', 'detail_product/lrUGA8QdtbLaEkU8HcaoIazmvX5u9crW0snu2OX5.png', 'detail_product/AWzSRjJuOQHdnukKB9GlGNgqqvbm4se7xltk3ooe.png', 'detail_product/dvzrXptPY7mZxaS66S46FyV0J2X4aiIvv0Y6bWrT.png', 'detail_product/Tkzp9wXSPXlpmuepudyaZFITg0mcZoi3ZWYwgRmB.png', '2024-06-04 11:12:40', '2024-12-12 10:11:49'),
(5, 5, 'detail_product/kqWyYxVCrsEmcTFnjFCpEgk1RXxe4qqIfbaKiwLH.png', 'detail_product/7OgmjceJ86TnS6QhY7nRmhEuXZf5XDRbqb7q7WaS.png', 'detail_product/NRM0djzkZZjXnPyH5MzqsfW2yZjcGK9nddQt3hvJ.png', 'detail_product/I5jxHJAMVLTtkXWItqcX1D3OxBIZk7AVvQiBKrJP.png', 'detail_product/QN1asEcsGCyUwI5r84tWMZInNkP53289Xhtp7qns.png', 'detail_product/J2q2AAApoiLaAH4eFmQs3BpzIVjQD4HFYqVH6ekd.png', '2024-06-04 11:13:15', '2024-12-12 10:12:55'),
(6, 6, 'detail_product/zpYV3tNgpReWYnwPbpCK3ik7nHzTb0A2fCIiRJTc.png', 'detail_product/qtz1xNbaQZaYbw2F8XQZewTWh3gY57NDYg0zwlDi.png', 'detail_product/SnCKQNFtjT4IR5AlqcZbdCr3XNFtdnzMFsHq2oTW.png', 'detail_product/MT9ybqsZhwcEzDHnIaNnkn9NudOpjynkxy5pZd9O.png', 'detail_product/q9VmqRaYBCaVLacK6mX30AOCE2oxrNenXAFtkHg2.png', 'detail_product/DoyY9XWC9f1PlsWjA73CKVYbe1C6BCaIZjA4ST4Q.png', '2024-06-04 11:14:21', '2024-12-12 10:13:53'),
(7, 7, 'detail_product/vtnuuQjnA5YknN5Iw6LsHfMtbBnzAqPPe3hlTDNU.png', 'detail_product/QYI2Woz7qTxgEpTrxpHjHxTIuh6oB4Ij5KMfgkX7.png', 'detail_product/QGVQpHYaU7STSEiJ1N8IOriU8br9vTruFV5zgD2a.png', 'detail_product/5BLDlYOHZ0GvTKc49OSCmmF4P88OlCfOxBOnecnK.png', 'detail_product/F36uAY68AWvOBve0sgvHlLPHGkSMivQsBsCvDwqz.png', 'detail_product/drRWK6wLEJsNp6Mn4RgGLuQq7FA4UL8kPicTZz88.png', '2024-06-04 11:15:47', '2024-12-12 10:14:51'),
(8, 8, 'detail_product/025HrpsoGgFdQngx4ZDP47AYcOg30wVbGHyPfdS3.png', 'detail_product/wyhhxExVL1dtvJlZDJsza8a1WGIhpKOUnnlrDL3i.png', 'detail_product/tq3lrYV84KJa6aRwBxJRWkr33Dtv4ftemeueh0gL.png', 'detail_product/PRWLhRv11H0nU0Ibc70rOy37NhV5ilt96UfNTYlG.png', 'detail_product/oIpaJgWhqx3Fsnb8JBdMxvq9w43btWUQmyeOb9Mn.png', 'detail_product/kM7YPdUAgZNyoZ9Z8vTYn2zGz5qJENW2fsWpl7us.png', '2024-06-04 11:17:47', '2024-12-12 10:15:57'),
(9, 9, 'detail_product/I0Oe1Xm4tovq59fWIg4zNNynoircI3EOxKFp3Z0Y.png', 'detail_product/e1TBHypYzs9KzfxcC4SOa22XlNnjAUweryQgvsmU.png', 'detail_product/N7GvhFKqM0Vtvky8HtfDGKQwrnBo8eujNc6zGtR1.png', 'detail_product/nGmdrGeXfWPCNnCQ7eXjnaTNYlv351NbBdS0C8EY.png', 'detail_product/SLc7fA9znWa7P2GUWxg5cnKEalOnmCZ1BGoibr5R.png', 'detail_product/LRWk7bdpgv4uTUNWnnxsmYMbAhDJzcztaybmlRq5.png', '2024-06-04 11:18:22', '2024-12-12 10:17:04'),
(10, 10, 'detail_product/bLfNxqiuHfUmz50QtoKZ6tHHExEU5Hab2cZG6a7j.png', 'detail_product/v9wTP10oE79Ks845IMmoMMRUJlw016m3qlczZQKQ.png', 'detail_product/akjCNhr6h0cmCDGGqoPAS9peqKicMgkgfRA85IbK.png', 'detail_product/x1pTyR3gVpNHWj47wNmFSfiZY63B85DsmKZiyLcD.png', 'detail_product/Fo6b3Ml9CnFBMvvtKRP9uCkEPqpe4XcC09JF8vrL.png', 'detail_product/vUZ53bSV5Yz0uQSN2ni6IEqzWmEYwd3jlmJDx2rR.png', '2024-06-04 14:22:24', '2024-12-12 10:17:56'),
(11, 11, 'detail_product/CAqAWvMJmG6InvmLH8N4TTd4sbrPcUwQXSXga4Dl.png', 'detail_product/AyCx5WNsWRNumgMzRqsdINCok3mVYYsQYVpBuqXR.png', 'detail_product/HfILhnlw8niUAVO4tA4FGIvxVBtIYQonVyWkuDi9.png', 'detail_product/hZKEL6iuKTsSgCoc5tHxp4SkIPTNtelRtSNw4T99.png', 'detail_product/oRmNC40JHSsKr0z6sePTYumuOZ2RM6v1FaPQJxBI.png', 'detail_product/D6OUHIWgTLlug4iSiT1pU8d9UdxmLzIIOb5OvaW5.png', '2024-06-04 14:22:57', '2024-12-12 10:18:54'),
(12, 12, 'detail_product/J3CYD8Bc87S11hE7QvT0EGyAeSYiTWo9nVa8A4La.png', 'detail_product/DuElH01daErH3g953nzTRJzYKBug6kPdNR5ihbCP.png', 'detail_product/RSPwtgcangTE45J3SQM8GVahdJhJ0xGQZBnTUlsl.png', 'detail_product/JI7PZiHvnSwNNQZv7hYtKYQCgndCq5tQp1MeWZW8.png', 'detail_product/xX3chPkeIqlBJO3x4zLGFIoc73k6ofQ9PFoq9oFc.png', 'detail_product/THlwvhkuYOdSVfLxbJNdEnHfwRKPOSUvWktEccNi.png', '2024-06-04 14:23:25', '2024-12-12 10:21:14'),
(13, 13, 'detail_product/1ZQNrg9f4phpkreRb2LzdVxetEAsAsoPMWxnlKDq.png', 'detail_product/CXFBvXStD8ipdQYez51Uh9RumeSpLT97YWKHgIL0.png', 'detail_product/yWjk8U8XfpWB4FOxV2UGvw0kPAGFUOCw294NlR7I.png', 'detail_product/gGnkbOPqelbXijJRn8cshRFXZL7RcH0zqmypxCQu.png', 'detail_product/Hv8KO0unbzSXpyV3qM1QuJIwTQgn6LIl6p3B9qr3.png', 'detail_product/fdSN1SDrrwfjzhHodUtGpBqqO5A6AU7RkExCLxBX.png', '2024-06-04 14:30:06', '2024-12-12 10:22:14'),
(14, 14, 'detail_product/8W72tDnPe8nLVHgd16JI33tqjUVyfhMBhLiXYI9E.png', 'detail_product/1mS9yqQNzhkTX2FYJVpcpcVXXGohIFEieL2KzCNs.png', 'detail_product/Ph06a98day8EncaZSG4R0VDU7bV5PtjG9HCuNuwt.png', 'detail_product/3TpQ3h52Gl1NwM4h7dQLDrfldXAYBN3xOJoEem7C.png', 'detail_product/0PJihAys0SC4KDEs6CEzkaCrq6w3bx2szrBdxkir.png', 'detail_product/mvZlGWB5VYoOSYvlTjsfh7vQAeJv46uQpRyo3yQt.png', '2024-06-04 14:30:46', '2024-12-12 10:23:19'),
(15, 15, 'detail_product/6yzfou77Jc6ZHVASHCQLLvNCTqFUqPstKOIHBLX5.png', 'detail_product/wgyZboxsh4a0GS3vFFPRHeMURCLp94Ghx8qWFuE4.png', 'detail_product/IOWfB0ROp8JM8ckLn2ddHGy8KTpXT9izzv7HHKjR.png', 'detail_product/zd2WhDSbILzva563qHKEjUScWffwZN2V0r1KwwlY.png', 'detail_product/N4gE82wxRWD4TDbYt2EPR3TXPNr4HTMgixYT4mTG.png', 'detail_product/OHEWZOd13fQznYy9yvrYsGkTvdhvQPths9eYTVj0.png', '2024-06-04 14:31:14', '2024-12-12 10:24:22'),
(16, 16, 'detail_product/BW6SBue3LPFGbGrWbuIQjbHykvvHCO0rlccFYnVK.png', 'detail_product/viyXIfb7e2KYV0FzYQXMoUgG7XIQqFShMMcIRAtm.png', 'detail_product/hq4F0nRbazOa2UEzmZaGcDv0py6E7YqAGowmVptK.png', 'detail_product/IAgGieMhWv4PfObdsOxteokE3q4bmbKKbP4yOek0.png', 'detail_product/6I3NFCSnMS2hck4EWnXztgWmPWkDSVDpeXuOXBFM.png', 'detail_product/qylYX74Pb7XxrwDGU9d3ITKqGo07rcy4P7gC9IeS.png', '2024-06-04 14:31:43', '2024-12-12 10:25:03'),
(17, 17, 'detail_product/ZLUjh8CCObcfY0453W2kNIxiyyQupJxVrP3FSZg1.png', 'detail_product/fOnFSppWizXldmp2aY5We4cXyZgpVtqVJzKgXCsl.png', 'detail_product/OjxDkPQU5XlzvjzWaof06kDgVJeNA3j527UmsTvG.png', 'detail_product/DtLSwwrhY42L76REaO8VO1TDDrqh71UvGDWKbP86.png', 'detail_product/yGpU1MUQcncPJAEBJKD7oIxtQmn5NG7a4JMUKIhF.png', 'detail_product/r7nDUk53s1WXNlp7xOMVi1Hgs1L9hCZrlnZvOOaq.png', '2024-12-12 06:43:14', '2024-12-12 10:25:56'),
(18, 18, 'detail_product/APsUfMDg4X1XXTMvEFRMCDlZ7wDjZR1J0pgFBFSq.png', 'detail_product/MOftGmGVUnAUX9jLImshLQmJRQ7aL6nKIsnh7vxA.png', 'detail_product/6tKhTAi577ZLi6EzEosjXviMtfsB5DFzAOgYT5d1.png', 'detail_product/BnQECfyqEK8Wueme9qt2vAv9sy6x5q4WL459oWUx.png', 'detail_product/uEFzCa0HWNh0UiXtyGQCf9li5TJhmoAqOxpA06dB.png', 'detail_product/XSSU5UODHauJmWi7vbO1l9UBc7e5BFm1JgIMbOqr.png', '2024-12-12 06:44:00', '2024-12-12 10:26:47'),
(19, 19, 'detail_product/NUFir6ltNBzNvactxIJwMMyiqwpdGHk7BdK7k5KY.png', 'detail_product/VhvpJI9zjqBVyg9gfkT3mK7eZmKrv4GtGEhY0eKI.png', 'detail_product/NUAcWq5AX4CBYMNkPJH4iy3HhJCCKj7cTWNfn73M.png', 'detail_product/nFjUKrMEUyRDR5TTPlnWTMDDcbvEflHm64BKgeQw.png', 'detail_product/407AlDlRQnOjZ4ye5eFSfCGChRoXpXQWWcmgqmuU.png', 'detail_product/eZQcw0i1ZgaGFKxw71cBmhy5tVRoBMtZs5wBLuFo.png', '2024-12-12 06:44:44', '2024-12-12 10:27:31'),
(20, 20, 'detail_product/aRplPmuzg8SqmVdLDCEHkDqC9gdhXRunnXvL3VqN.png', 'detail_product/lq6R6EoV7s2tADJtyPDRbUVBpgukWHuhnsUbnXzK.png', 'detail_product/jH4inVzYW6yYPI5daZPkMnmf8yexghm4W2dAU2lB.png', 'detail_product/Am9oLLL8kdOaEH8xTHND3zDEYJ21mJvWciY39gm6.png', 'detail_product/KORoG8Y11tJ3aatDhQQh3VrJFDUea7W8FAxCUrp3.png', 'detail_product/5lqPFeyPpiiCsCc0sA75v30yuhk5u9eJHzsKW8V6.png', '2024-12-12 06:45:16', '2024-12-12 10:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_23_155210_create_products_table', 2),
(5, '2024_05_23_160249_create_products_table', 3),
(6, '2024_05_23_160438_create_products_table', 4),
(7, '2024_05_27_170148_create_catalogs_table', 5),
(8, '2024_05_27_170855_create_catalogs_table', 6),
(9, '2024_06_03_181914_create_details_table', 7),
(10, '2024_11_22_060708_add_category_to_products_table', 8),
(11, '2024_11_22_061041_add_category_to_products_table', 9),
(12, '2024_11_26_074223_add_level_to_users_table', 10),
(13, '2024_11_26_172007_add_usertype_to_users_table', 11),
(14, '2024_12_06_182956_create_colors_table', 12),
(15, '2024_12_10_065115_create_addresses_table', 13),
(16, '2024_12_14_015405_create_orders_table', 14),
(17, '2024_12_14_021715_create_order_items_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT '2024-12-13 18:55:01',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `total_amount`, `order_number`, `order_date`, `created_at`, `updated_at`) VALUES
(3, 15, 2, 399000.00, 'ORD-49SIZMC3', '2024-12-13 19:08:31', '2024-12-13 19:08:31', '2024-12-13 19:08:31'),
(4, 15, 2, 399000.00, 'ORD-IMNYVZT1', '2024-12-13 19:10:33', '2024-12-13 19:10:33', '2024-12-13 19:10:33'),
(26, 15, 1, 399000.00, 'ORD-ELVWFJKO', '2024-12-13 19:43:10', '2024-12-13 19:43:10', '2024-12-13 19:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `category` enum('Short Wallet','Long Wallet','Card Holder','Sling Bag','Hand Bag','Tote Bag') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `category`) VALUES
(1, 'Akira', '55000', 'product/c07UAZiuC2qGkeOZFSgmHqebTtRwFik1EIKjb6PW.png', 'Card Holder Akira ini memiliki arti Cahaya yang mencerminkan produk ini. Akira sendiri terbuat dari bahan PU Leather (yang tahan air) serta terdapat emboss pada logo dan pada bagian produk, memiliki 5 sekat yang mana sekat digunakan untuk menyimpan kartu. Terdiri dari beberapa warna.', 'Card Holder'),
(2, 'Jasmine', '69000', 'product/nNMHR56vheU47ebFO4gR6y9ft4NmVqSm1LgMi4Bw.png', 'Jasmine diambil dari arti nama bunga melati yaitu kemewahan dan keanggunan. Dompet ini dibuat dari bahan PU Leather (yang tahan air), terdapat Logo’s chain yang unik dan jarang ditemui dipasaran, dilengkapi dengan magnetic button, serta terdapat emboss pada bagian resleting dompet. Jasmine memiliki 8 slot untuk kartu, 1 slot cash, dan 1 slot zipper bag .', 'Short Wallet'),
(3, 'Ivy', '60000', 'product/ZSsa2hhjmLAZNBcj1EiCZuTr7L5eMEvJ48oc1JNR.png', 'IVY diambil dari bahasa Yunani yang berarti perhiasan. Dompet ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan dilengkapi dengan magnetic button. Ivy memiliki desain yang elegan dan memiliki 7 slot untuk kartu, 1 slot untuk cash .', 'Short Wallet'),
(4, 'Yuki', '99000', 'product/6H42zG3uVNtGuhNJxW9nxx7AtzCkGztpiapN057N.png', 'Arti nama Alice diambil dari bahasa Jepang yang keberuntungan. Yuki dibuat dari bahan PU Leather (yang tahan air), terdapat magnetic button, Strap dan emboss logo pada bagian depan dompet serta terdapat emboss pada bagian resleting dompet. Alice memiliki 3 slot untuk cash, 8 slot untuk kartu dan 1 slot zipper bag. Dompet ini dapat memberikan kesan elegan dan elegan bagi para penggunanya. Yuki terdiri dari beberapa warna.', 'Long Wallet'),
(5, 'Daisy', '86000', 'product/ESPHYLOFCQlF7inAmKJhxdw28b8aUQlEdGiJLXqU.png', 'Dompet ini adalah bukti bahwa keajaiban sering kali ditemukan dalam hal sederhana. Daisy sendiri terbuat dari bahan PU Leather (yang tahan air) serta terdapat emboss pada logo dan pada bagian resleting dompet, memiliki 2 sekat yang mana sekat utamanya terdapat 2 ruang, di sekat lainnya dilengkapi dengan magnetic button. Di dalam dompet daisy juga terdapat 8 slot untuk menyimpan kartu. Terdiri dari beberapa warna.', 'Short Wallet'),
(6, 'Alice', '100000', 'product/2lL43bQmWKiSqjK8WovEDOcA55Vy58yV9IKXIayk.png', 'Alice diambil dari bahasa Jerman yang keindahan. Alice dibuat dari bahan PU Leather (yang tahan air), terdapat magnetic button, Strap yang bisa dilepas pasang, emboss logo pada bagian depan dompet serta terdapat emboss pada bagian resleting dompet. Alice memiliki 2 slot untuk cash, 8 slot untuk kartu dan 1 slot zipper bag. Dompet ini dapat memberikan kesan indah dan elegan bagi para penggunanya.', 'Short Wallet'),
(7, 'Seira', '100000', 'product/HgWz09X8miH9iwRElFpqZcCcABa9cKlM4zGf8L34.png', 'Seira diambil dari bahasa Jepang yang berarti suci dan berkharisma. Seira dibuat dari bahan PU Leather (yang tahan air), terdapat Logo’s chain yang unik dan jarang ditemui dipasaran, dilengkapi dengan magnetic button, serta terdapat emboss pada bagian resleting dompet. Seira memiliki 6 slot untuk cash, 12 slot untuk kartu dan 1 slot zipper bag. Dompet ini dapat memberikan kesan tegas bagi para penggunanya.', 'Long Wallet'),
(8, 'Grace', '60000', 'product/4GKVAHcQPZzAxT1RDSYs7Inx3vIdnsA6N0StwpVw.png', 'Card holder Grace membuktikan bahwa keanggunan sejati sering kali ditemukan dalam hal-hal sederhana. Terbuat dari PU Leather yang tahan air, Grace hadir dengan desain elegan dan fungsionalitas maksimal.serta terdapat emboss pada logo dan pada bagian resleting dompet, memiliki 6 sekat yang mana sekat utamanya terdapat 3 ruang, di sekat lainnya dilengkapi dengan Terdiri dari beberapa warna.', 'Short Wallet'),
(9, 'Ryu', '73200', 'product/uuKllZMkYvfLyMIJeHlOZC1Ts7eSbKEK8HN1GXrk.png', 'Card holder Ryu adalah bukti bahwa keajaiban sering kali ditemukan dalam hal sederhana. Ryu sendiri terbuat dari bahan PU Leather (yang tahan air) serta terdapat emboss pada logo dan pada bagian resleting dompet, Di dalam Card holder Ryu juga terdapat 9 slot untuk menyimpan kartu. Terdiri dari beberapa warna.', 'Card Holder'),
(10, 'Adora', '130000', 'product/VR8OIuRHuygdIqq1YyxGRykRnBRBHBoeUUojPkh9.png', 'Adora diambil dari bahasa bahasa Latin yang berarti banyak di sukai. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan dilengkapi dengan emboss pada zipper. Adora memiliki desain yang elegan dan memiliki 2 mini pocket, 1 zipper pocket dan pada bagian belakang terdapat 1 zipper pocket.', 'Tote Bag'),
(11, 'Ellie', '106000', 'product/FgO2HFj1Lr7if40MWJqcErCTDYIGTLsO3WtRzu3e.png', 'Ellie diambil dari bahasa Yunani yang berarti bersinar terang. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan dilengkapi dengan metal lock. Ellie memiliki desain yang elegan dan memiliki 1 ruang yang di dalamnya terdapat 1 mini pocket dan zipper pocket.', 'Sling Bag'),
(12, 'Chayla', '113000', 'product/fyO6EwiO258kDVWxI7faX2VPYCdqIKL07sPMisA2.png', 'Chalya diambil dari bahasa Yunani yang berarti peri. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan zipper. Chalya memiliki desain yang elegan dan memiliki 3 ruang tedapat mini pocket dan zipper pocket.', 'Hand Bag'),
(13, 'Sora', '55000', 'product/BCkasquhRBOJGXF9S24SvMYhouyGjD60cdD9H1mm.png', 'Sora diambil dari bahasa Jepang yaitu langit yang menggambarkan pesona yang glamour sesuai dengan tampilannya. Terbuat dari bahan PU Leather (yang tahan air) serta terdapat emboss pada logo dan pada bagian resleting dompet. Terdapat 4 slot kartu dan 1 slot koin/ cash dengan zipper. Sora terdiri dari beberapa warna.', 'Card Holder'),
(14, 'Bohemian', '70000', 'product/OaY8XSRPaS4V8ymudnGoI4X3wdwcXQtyfkn4XNOy.png', 'Bohemian memiliki arti nama Seni yang di gambarkan dalam sebuah dompet. Bohemian dibuat dari bahan PU Leather (yang tahan air), dilengkapi dengan magnetic button, emboss pada bagian logo, serta terdapat emboss pada bagian resleting dompet. Bohemian memiliki 5 slot untuk cash, 16 slot untuk kartu dan 1 slot zipper bag. Dompet ini dapat memberikan kesan tegas bagi para penggunanya.', 'Long Wallet'),
(15, 'Mahen', '65000', 'product/LKZEktFxM4M5lyKBq4jQEZoxFzRiCl7teucLETkH.png', 'Mahen diambil dari bahasa Persia yang artinya terbaik. Dompet ini dibuat dari bahan PU Leather (yang tahan air), dilengkapi dengan magnetic button, serta terdapat emboss pada logo dan pada bagian resleting dompet. Mahen memiliki 17 slot untuk kartu, 1 slot cash, dan 1 slot zipper bag .', 'Short Wallet'),
(16, 'Fella', '112000', 'product/XoQAUUUZIRUZkTUxwJQ0L7hRYjXLz0lM1wSCVNBi.png', 'Nama Fella diambil dari bahasa Arab yang berarti keindahan dan kelembutan. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat  emboss logo pada zipper bagian dalam. Fella memiliki desain yang elegan dan terdapat 1 ruang di dalamnya terdapat 1 mini pocket  dan 1 zipper pocket. Fella terdiri dari tiga warna.', 'Sling Bag'),
(17, 'Alina', '112000', 'product/35JX6wwk2x1r31goPlaYTvbzU0pgeEwiHWtw0kIp.png', 'Nama Alina diambil dari bahasa Arab yang berarti cerah. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan dilengkapi dengan metal lock. Alina memiliki desain yang elegan dan memiliki . 1 ruang yang di dalmnya terdapat mini pocket dan zipper pocket, alina terdiri dari beberapa warna.', 'Sling Bag'),
(18, 'Viona', '120000', 'product/4fWlZMA1zCgXzj4lywRtraVOjlWyg7xT1vfMCxIO.png', 'Nama Viona diambil dari variasi nama yang berarti murni. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan zipper. viona memiliki desain yang elegan dan memiliki 1 ruang dan di dalamnya terdapat 1 mini pocket dan zipper pocket . Viona terdiri dari beberapa warna.', 'Hand Bag'),
(19, 'Carissa', '134000', 'product/jcenDoLfRjJ048a21Dpz78wSE63O8FuTl5v1fqMt.png', 'Nama Carrisa diambil dari variasi nama yang berarti lembut. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat emboss pada logo dan zipper. carrisa memiliki desain yang elegan dan memiliki 3 ruang dan di dalamnya terdapat 3 zipper pocket dan memiliki 2 jenis tali yang bervariasi. Carrisa terdiri dari beberapa warna.', 'Sling Bag'),
(20, 'Clara', '134000', 'product/KFuEBsxV5IPzrJSrz2WIfQKoHFH4q4fgCPdHzTIS.png', 'Nama Clara diambil dari bahasa Jerman yang berarti Elegant dan kharismatik. Tas ini didesain menggunakan bahan PU Leather (yang tahan air), terdapat metalic lock berbentuk unik dan terdapat emboss logo pada zipper bagian dalam. Clara memiliki desain yang elegan dan terdapat 3 ruang di dalamnya terdapat 1 mini pocket  dan 1 zipper pocket. Aika terdiri dari dua warna.', 'Hand Bag');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PxeDvfWzP6eEIzrA0vkdnUFonuWz3pGWq2hpbGpZ', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNEN1ZzZRTFBWOTZOMGdvSW12eW9NeldadWYzTjhYM2M1OUFmMkxoTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTtzOjQ6InVzZXIiO2E6MTp7czo0OiJjYXJ0IjthOjM6e2k6MDthOjY6e3M6MTA6InByb2R1Y3RfaWQiO3M6MToiMSI7czoxMjoicHJvZHVjdF9uYW1lIjtzOjU6IkFraXJhIjtzOjEzOiJwcm9kdWN0X3ByaWNlIjtzOjU6IjU1MDAwIjtzOjU6ImltYWdlIjtzOjUyOiJwcm9kdWN0L2MwN1VBWml1QzJxR2tlT1pGU2dtSHFlYlR0UndGaWsxRUlLamI2UFcucG5nIjtzOjU6ImNvbG9yIjtzOjE6IjIiO3M6ODoicXVhbnRpdHkiO2k6Mjt9aToxO2E6Njp7czoxMDoicHJvZHVjdF9pZCI7czoxOiIxIjtzOjEyOiJwcm9kdWN0X25hbWUiO3M6NToiQWtpcmEiO3M6MTM6InByb2R1Y3RfcHJpY2UiO3M6NToiNTUwMDAiO3M6NToiaW1hZ2UiO3M6NTI6InByb2R1Y3QvYzA3VUFaaXVDMnFHa2VPWkZTZ21IcWViVHRSd0ZpazFFSUtqYjZQVy5wbmciO3M6NToiY29sb3IiO3M6MToiNCI7czo4OiJxdWFudGl0eSI7aTo0O31pOjI7YTo2OntzOjEwOiJwcm9kdWN0X2lkIjtzOjE6IjIiO3M6MTI6InByb2R1Y3RfbmFtZSI7czo3OiJKYXNtaW5lIjtzOjEzOiJwcm9kdWN0X3ByaWNlIjtzOjU6IjY5MDAwIjtzOjU6ImltYWdlIjtzOjUyOiJwcm9kdWN0L25OTUhSNTZ2aGVVNDdlYkZPNGdSNnk5ZnQ0Tm1WcVNtMUxnTWk0QncucG5nIjtzOjU6ImNvbG9yIjtzOjE6IjgiO3M6ODoicXVhbnRpdHkiO2k6MTt9fX19', 1734145716);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'caa', 'erclutvian004@gmail.com', 'user', NULL, '$2y$12$ktPD6NctmeblN.MC/8ObaOtPSWsmxyeosYa32U80.EAndCN6p/NBu', NULL, '2024-05-05 10:26:50', '2024-05-05 10:26:50'),
(14, 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$12$WyBe82Uo8Cpw7jMNolLFDOAiTDr6xenYdyz/OCC72Nqxh/v9AVM2i', NULL, '2024-11-26 10:24:31', '2024-11-26 10:24:31'),
(15, 'User', 'user@gmail.com', 'user', NULL, '$2y$12$cOu.ceACETLaC0D0sr8Hcu340y.fPIdc/mTM4lKjyLD4ekKQrjkHG', NULL, '2024-11-26 10:25:35', '2024-11-26 10:25:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors_product_id_foreign` (`product_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
