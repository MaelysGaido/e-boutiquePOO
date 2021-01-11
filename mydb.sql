-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2020 at 09:15 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'winter collection', NULL),
(2, 'Christmas wears', 'Metus elit congue eros, vel ultricies augue mauris at arcu. Morbi tempus risus quam, eu hendrerit nisl luctus vel. Nulla a odio id elit maximus auctor eget ut sapien'),
(3, 'black Friday sales', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(90) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `zip`, `city`) VALUES
(1, 'Chuck', 'Norris', NULL, NULL, NULL),
(2, 'Charlize', 'Theron', NULL, NULL, NULL),
(3, 'Ryan', 'Gosling', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `date`, `total`, `customer_id`) VALUES
(1, 9876, '2020-12-11 15:30:51', '120.00', 1),
(2, 8765, '2020-12-07 15:52:29', '600.00', 1),
(3, 7654, '2020-12-09 15:52:29', '150.00', 2),
(4, 6543, '2020-12-05 16:06:02', '520.00', 2),
(5, 5432, '2020-12-11 16:09:43', '600.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`product_id`, `order_id`, `quantity`) VALUES
(1, 1, 1),
(3, 1, 2),
(9, 2, 2),
(8, 2, 1),
(1, 3, 1),
(10, 3, 1),
(3, 1, 1),
(4, 1, 1),
(4, 4, 1),
(3, 4, 1),
(9, 4, 1),
(1, 5, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `price` decimal(8,2) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `weight` int(6) NOT NULL,
  `quantity` int(6) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `picture`, `weight`, `quantity`, `available`, `category_id`) VALUES
(1, 'jupe Peonie', NULL, '100.00', 'jupe.jpg', 1000, 10, 1, 1),
(2, 'robe Lucie', NULL, '100.00', 'robe.jpg', 1000, 10, 1, 1),
(3, 'pantalon Dummie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat, erat sit amet rutrum convallis, metus elit congue eros, vel ultricies augue mauris at arcu. Morbi tempus risus quam, eu hendrerit nisl luctus vel. Nulla a odio id elit maximus auctor eget ut sapien', '10.00', 'pantalon_dummie.jpg', 500, 1, 1, 1),
(4, 'short Marcus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat, erat sit amet rutrum convallis, metus elit congue eros, vel ultricies augue mauris at arcu. Morbi tempus risus quam, eu hendrerit nisl luctus vel. Nulla a odio id elit maximus auctor eget ut sapien', '10.00', 'short_Marcus', 500, 1, 1, 1),
(5, 'bonnet Bobby', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '13.00', 'bonnet_bobby.jpg', 500, 0, 1, 2),
(6, 'gants Jenny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '13.00', 'gants_jenny.jpg', 500, 0, 1, 2),
(7, 'manteau Albert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '50.00', 'manteau_albert.jpg', 1200, 2, 1, 2),
(8, 'manteau Nicolas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '50.00', 'manteau_Nicolas.jpg', 1200, 2, 1, 2),
(9, 'Bottes Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '500.00', 'bottes_maria.jpg', 1200, 5, 1, 3),
(10, 'escarpins LadyG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elit nisi, elementum a rhoncus nec, iaculis ac ante. Suspendisse consequat', '500.00', 'escarpins_ladyg.jpg', 1200, 5, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_customers1_idx` (`customer_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD KEY `fk_Products_has_Orders_Orders1_idx` (`order_id`),
  ADD KEY `fk_Products_has_Orders_Products1_idx` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Products_category1_idx` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `fk_Products_has_Orders_Orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Products_has_Orders_Products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_Products_category1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
