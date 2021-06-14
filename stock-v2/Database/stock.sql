-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 10:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'Size', 1),
(7, 'Group', 1),
(10, 'Quality', 1),
(12, 'Cotton', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(14, 'M Medium', 4),
(15, 'XL Extra Large', 4),
(16, 'L Large', 4),
(17, 'SM', 7),
(18, 'XXL', 7),
(19, 'XL', 7),
(20, '100% Cotton', 12),
(21, 'Cotton and Synthetic', 12),
(22, '100% Export Quality', 10),
(23, 'Fresh Order', 10),
(24, 'Local', 10),
(25, 'S / M / L / XL / XXL', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'ST', 1),
(5, 'T-SHIRT', 1),
(6, 'SHIRT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'Man\'s Shirt', 1),
(5, 'ST', 1),
(6, 'Poradhin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'ST Knit Wear', '0', '0', 'New Market', '8801912834663', 'Bangladesh', 'Experience Better', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'Admin', 'a:34:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"updateGroup\";i:5;s:9:\"viewGroup\";i:6;s:11:\"deleteGroup\";i:7;s:11:\"createBrand\";i:8;s:11:\"updateBrand\";i:9;s:9:\"viewBrand\";i:10;s:11:\"deleteBrand\";i:11;s:14:\"createCategory\";i:12;s:14:\"updateCategory\";i:13;s:12:\"viewCategory\";i:14;s:14:\"deleteCategory\";i:15;s:11:\"createStore\";i:16;s:11:\"updateStore\";i:17;s:9:\"viewStore\";i:18;s:11:\"deleteStore\";i:19;s:15:\"createAttribute\";i:20;s:15:\"updateAttribute\";i:21;s:13:\"viewAttribute\";i:22;s:15:\"deleteAttribute\";i:23;s:13:\"createProduct\";i:24;s:13:\"updateProduct\";i:25;s:11:\"viewProduct\";i:26;s:13:\"deleteProduct\";i:27;s:11:\"createOrder\";i:28;s:11:\"updateOrder\";i:29;s:9:\"viewOrder\";i:30;s:11:\"deleteOrder\";i:31;s:11:\"viewReports\";i:32;s:13:\"updateCompany\";i:33;s:13:\"updateSetting\";}'),
(5, 'Manager', 'a:11:{i:0;s:11:\"createBrand\";i:1;s:9:\"viewBrand\";i:2;s:14:\"createCategory\";i:3;s:12:\"viewCategory\";i:4;s:9:\"viewStore\";i:5;s:15:\"createAttribute\";i:6;s:13:\"viewAttribute\";i:7;s:13:\"createProduct\";i:8;s:11:\"viewProduct\";i:9;s:11:\"createOrder\";i:10;s:9:\"viewOrder\";}'),
(6, 'Sales', 'a:4:{i:0;s:8:\"viewUser\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:9:\"viewOrder\";}'),
(7, 'Assistant Sales', 'a:1:{i:0;s:9:\"viewOrder\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(2, 'BILPR-4626', 'cash', 'New Market', '01912834663', '1604091873', '350.00', '0', '0', '0', '0', '350.00', '', 1, 1),
(3, 'BILPR-EB53', 'nuruddin', 'chitagong', '019111111111', '1604092359', '700.00', '0', '0', '0', '0', '700.00', '', 1, 6),
(4, 'BILPR-9701', 'cash', '', '', '1604152414', '12000.00', '0', '0', '0', '0', '12000.00', '', 2, 9),
(5, 'BILPR-CB12', 'Kamal', 'new Market', '0299111111', '1604153162', '4000.00', '0', '0', '0', '0', '4000.00', '', 1, 1),
(6, 'BILPR-4E29', 'anwor Vai', 'new mar', '83737373838', '1604153528', '3680.00', '0', '0', '0', '0', '3680.00', '', 1, 1),
(7, 'BILPR-F1DA', 'cash', '', '', '1604154767', '2800.00', '0', '0', '0', '0', '2800.00', '', 2, 1),
(8, 'BILPR-D9B4', 'Aslam', 'New', '', '1604419541', '6000.00', '0', '0', '0', '0', '6000.00', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(4, 2, 2, '1', '350', '350.00'),
(6, 3, 2, '2', '350', '700.00'),
(7, 4, 3, '20', '600', '12000.00'),
(9, 5, 4, '20', '200', '4000.00'),
(11, 6, 5, '12', '140', '1680.00'),
(12, 6, 4, '10', '200', '2000.00'),
(13, 7, 5, '20', '140', '2800.00'),
(14, 8, 3, '10', '600', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(2, 'Man\'s Shirt', '03', '350', '7', 'assets/images/product_image/5f9c7f6af32bb.jpg', '<p>Export Quality Shirt Input 31/10/2020</p>', '[\"14\",\"15\",\"16\",\"22\",\"20\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(3, 'Hodi Winter', '02', '600', '70', 'assets/images/product_image/5f9c89645133d.jpg', '', '[\"25\",\"22\",\"21\"]', '[\"5\"]', '[\"6\"]', 4, 1),
(4, 'Under Armor', '03', '200', '70', '<p>The file you are attempting to upload is larger than the permitted size.</p>', '', '[\"14\",\"15\",\"16\",\"22\",\"21\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(5, 'Bol Koti', '01', '140', '68', '<p>You did not select a file to upload.</p>', '', '[\"17\",\"22\",\"20\"]', '[\"4\"]', '[\"5\"]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(3, 'Main Branch', 1),
(4, 'Branch 1 T-Shirt', 1),
(5, 'Branch 2 T-Shirt', 1),
(6, 'Branch 3 ST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'ashraf', '$2y$10$CiBrRDv55nP6Guojk5x/DOgJf417qXyRdNW0cO4xpFKXFVXNuuC2W', 'ashraf@admin.com', 'Ashraful', 'Islam', '01912834663', 1),
(6, 'rubel', '$2y$10$iIXLiOuGZ/0OlHroQLBDQOb4zsFDrKLXq8uNjlXvRMc.R70mMwmmC', 'rubel@gmail.com', 'Md', 'Rubel', '01912834663', 1),
(7, 'sobuj', '$2y$10$sLeMdn1/5jO.tMR.Mohcgezxk5tYp2Dep2KS6kTokrlaflvbxGKay', 'sobuj@gmail.com', 'Md', 'Sobuj', '01912834663', 1),
(8, 'tuhin', '$2y$10$hCplqrs.KrrrWVbGq/hepuVBwfQDjD5heV0ySFr90T8EgbrJLJcYe', 'tuhin@gmail.com', 'Md', 'Tuhin', '01912834663', 1),
(9, 'nuruddin', '$2y$10$d4RZRYNsBqJ9h6Mm0fKS1uXRxp8xfQtqBrTWf6qW9gYGDkH01AwUe', 'nuruddin@gmail.com', 'Nur', 'Uddin', '01912834663', 1),
(10, 'sagor', '$2y$10$Ry6Jq2WrVvVk/0laAxJgtOjm9hBPOp1qpB92SWgFh51l2gBA19sAu', 'sagor@gmail.com', 'Md', 'Sagor', '01912834663', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 5),
(8, 7, 4),
(9, 8, 4),
(10, 9, 6),
(11, 10, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
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
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
