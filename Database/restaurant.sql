-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 06:02 AM
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
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancle_orders_history`
--

CREATE TABLE `cancle_orders_history` (
  `id` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `items` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `items_amount` varchar(300) NOT NULL,
  `discount` double NOT NULL,
  `waiter` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `current_orders`
--

CREATE TABLE `current_orders` (
  `id` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `items` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `items_amount` varchar(300) NOT NULL,
  `discount` int(11) NOT NULL,
  `waiter` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_num` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `leave_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile_num`, `salary`, `roll`, `join_date`, `leave_date`) VALUES
(3, 'Jamshed', '', '', '', 1, '', ''),
(4, 'Sherry', '', '', '', 1, '', ''),
(5, 'Zulfiqar', '', '', '', 1, '', ''),
(6, 'Mustafa', '', '', '', 1, '', ''),
(7, 'Babar', '', '', '', 1, '', ''),
(8, 'Zain Ali', '', '', '', 1, '', ''),
(9, 'Azhar', '', '', '', 1, '', ''),
(10, 'Taufeeq', '', '', '', 1, '', ''),
(11, 'Mukhtiyar', '', '', '', 1, '', ''),
(12, 'Bilawal', '', '', '', 1, '', ''),
(13, 'New 1', '', '', '', 1, '', ''),
(14, 'New 2', '', '', '', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `cat_name`) VALUES
(1, 'Paratha'),
(2, 'Chai Karak'),
(3, 'BBQ'),
(4, 'Roll'),
(5, 'Karhai'),
(6, 'Broast'),
(7, 'Fast Food'),
(8, 'Fries'),
(9, 'Naan Roti'),
(10, 'Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_image` varchar(1000) NOT NULL,
  `item_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `item_name`, `item_image`, `item_cat`) VALUES
(1, 'ALOO PARATHA', '/restaurant/assets/img/1/1.jpg', 1),
(2, 'ALOO CHEESE PARATHA', '/restaurant/assets/img/1/2.jpg', 1),
(3, 'CHICKEN PARATHA', '/restaurant/assets/img/1/3.jpg', 1),
(4, 'CHICKEN CHEESE PARATHA', '/restaurant/assets/img/1/4.jpg', 1),
(5, 'BBQ PARATHA', '/restaurant/assets/img/1/5.jpg', 1),
(6, 'BBQ CHEESE PARATHA', '/restaurant/assets/img/1/6.jpg', 1),
(7, 'FAJEETA PARATHA', '/restaurant/assets/img/1/7.jpg', 1),
(8, 'OMELET PARATHA', '/restaurant/assets/img/1/8.jpg', 1),
(9, 'OMELET CHEESE PARATHA', '/restaurant/assets/img/1/9.jpg', 1),
(10, 'PARATHA and KARAK SPECIAL', '/restaurant/assets/img/1/10.jpg', 1),
(11, '', '/restaurant/assets/img/2/11.jpg', 2),
(12, 'MATKA CHAI', '/restaurant/assets/img/2/12.jpg', 2),
(13, 'ELAICHI CHAI', '/restaurant/assets/img/2/13.jpg', 2),
(14, 'GINGER CHAI', '/restaurant/assets/img/2/14.jpg', 2),
(15, 'KASHMIRI CHAI', '/restaurant/assets/img/2/15.jpg', 2),
(16, 'SULEMANI CHAI', '/restaurant/assets/img/2/16.jpg', 2),
(17, 'SABZ CHAI (QAHWA)', '/restaurant/assets/img/2/17.jpg', 2),
(18, 'COFFEE ESPRESSO', '/restaurant/assets/img/2/18.jpg', 2),
(19, 'CHICKEN TIKKA', '/restaurant/assets/img/3/19.jpg', 3),
(20, 'CHICKEN GREEN TIKKA', '/restaurant/assets/img/3/20.jpg', 3),
(21, 'CHICKEN BOTI (Boneless)', '/restaurant/assets/img/3/21.jpg', 3),
(22, 'CHICKEN MALAI BOTI (Boneless)', '/restaurant/assets/img/3/22.jpg', 3),
(23, 'CHICKEN BEHARI BOTI (Boneless)', '/restaurant/assets/img/3/23.jpg', 3),
(24, 'CHICKEN GREEN BOTI (Boneless)', '/restaurant/assets/img/3/24.jpg', 3),
(25, 'CHICKEN RESHMI KABAB', '/restaurant/assets/img/3/25.jpg', 3),
(26, 'CHICKEN CHATNI ROLL', '/restaurant/assets/img/4/26.jpg', 4),
(27, 'CHICKEN BEHARI ROLL', '/restaurant/assets/img/4/27.jpg', 4),
(28, 'CHICKEN MALAI BOTI ROLL', '/restaurant/assets/img/4/28.jpg', 4),
(29, 'CHICKEN CHAPATI ROLL', '/restaurant/assets/img/4/29.jpg', 4),
(30, 'CHICKEN BROAST ROLL', '/restaurant/assets/img/4/30.jpg', 4),
(31, 'CHICKEN GARLIC MAYO ROLL', '/restaurant/assets/img/4/31.jpg', 4),
(32, 'VEGETABLE ROLL', '/restaurant/assets/img/4/32.jpg', 4),
(33, 'CHICKEN KARAHI', '/restaurant/assets/img/5/33.jpg', 5),
(34, 'CHICKEN BROWN KARAHI', '/restaurant/assets/img/5/34.jpg', 5),
(35, 'CHICKEN WHITE KARAHI', '/restaurant/assets/img/5/35.jpg', 5),
(36, 'MUTTON KARAHI', '/restaurant/assets/img/5/36.jpg', 5),
(37, 'MUTTON BROWN KARAHI', '/restaurant/assets/img/5/37.jpg', 5),
(38, 'MUTTON WHITE KARAHI', '/restaurant/assets/img/5/38.jpg', 5),
(39, 'CRISPY BROAST', '/restaurant/assets/img/6/39.jpg', 6),
(40, 'SPICY BROAST', '/restaurant/assets/img/6/40.jpg', 6),
(41, 'GARLIC MAYO BROAST', '/restaurant/assets/img/6/41.jpg', 6),
(42, 'CHICKEN BURGER', '/restaurant/assets/img/7/42.jpg', 7),
(43, 'CHICKEN CHEESE BURGER', '/restaurant/assets/img/7/43.jpg', 7),
(44, 'ZINGER BURGER', '/restaurant/assets/img/7/44.jpg', 7),
(45, 'ZINGER BURGER WITH CHEESE', '/restaurant/assets/img/7/45.jpg', 7),
(46, 'EXTREME ZINGER BURGER', '/restaurant/assets/img/7/46.jpg', 7),
(47, 'CHICKEN BBQ BURGER', '/restaurant/assets/img/7/47.jpg', 7),
(48, 'CHICKEN MALAI BURGER', '/restaurant/assets/img/7/48.jpg', 7),
(49, 'CHICKEN SANDWICH', '/restaurant/assets/img/7/49.jpg', 7),
(50, 'CHICKEN CLUB SANDWICH', '/restaurant/assets/img/7/50.jpg', 7),
(51, 'CHICKEN BBQ CLUB SANDWICH', '/restaurant/assets/img/7/51.jpg', 7),
(52, 'BBQ MALAI CLUB SANDWICH', '/restaurant/assets/img/7/52.jpg', 7),
(53, 'HOT JUMBO FRIES', '/restaurant/assets/img/8/53.jpg', 8),
(54, 'SPICY FRIES', '/restaurant/assets/img/8/54.jpg', 8),
(55, 'SPICY MAYO GARLIC FRIES', '/restaurant/assets/img/8/55.jpg', 8),
(56, 'NAAN', '/restaurant/assets/img/9/56.jpg', 9),
(57, 'GARLIC NAAN', '/restaurant/assets/img/9/57.jpg', 9),
(58, 'ROGHANI NAAN', '/restaurant/assets/img/9/58.jpg', 9),
(59, 'CHAPATI', '/restaurant/assets/img/9/59.jpg', 9),
(60, 'SALAD', '/restaurant/assets/img/9/60.jpg', 9),
(61, 'RAITA', '/restaurant/assets/img/9/61.jpg', 9),
(62, 'REGULAR COLD DRINK', '/restaurant/assets/img/10/62.jpg', 10),
(63, 'CAN', '/restaurant/assets/img/10/63.jpg', 10),
(64, 'DISPOSABLE COLD DRINK', '/restaurant/assets/img/10/64.jpg', 10),
(65, 'MINERAL WATER SMALL', '/restaurant/assets/img/10/65.jpg', 10),
(66, 'MINERAL WATER LARGE', '/restaurant/assets/img/10/66.jpg', 10),
(67, 'SADA PARATHA', '/restaurant/assets/img/1/67.jpg', 1),
(68, 'CHEESE PARATHA', '/restaurant/assets/img/1/68.jpg', 1),
(69, 'LACHAY PARATHA', '/restaurant/assets/img/1/69.jpg', 1),
(70, 'SHAHAD PARATHA', '/restaurant/assets/img/1/70.jpg', 1),
(71, 'SHAHAD CHEESE PARATHA', '/restaurant/assets/img/1/71.jpg', 1),
(72, 'ARABIC PARATHA', '/restaurant/assets/img/1/72.jpg', 1),
(73, 'ZEERA PARATHA', '/restaurant/assets/img/1/73.jpg', 1),
(74, 'MEETHA PARATHA', '/restaurant/assets/img/1/74.jpg', 1),
(75, 'NUETELLA PARATHA', '/restaurant/assets/img/1/75.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_history`
--

CREATE TABLE `orders_history` (
  `id` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `items` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `items_amount` varchar(300) NOT NULL,
  `discount` double NOT NULL,
  `waiter` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_history`
--

INSERT INTO `orders_history` (`id`, `table_no`, `items`, `quantity`, `size`, `total_amount`, `items_amount`, `discount`, `waiter`, `type`, `date`, `time`) VALUES
(44, 7, 'ALOO PARATHA,CHEESE PARATHA', '3,1', '1,1', 480, '360,120', 15, 'Zain Ali', '', '2020-12-17', '03:46pm'),
(45, 0, 'CHICKEN MALAI BOTI ROLL,CHICKEN GARLIC MAYO ROLL', '1,1', '1,1', 240, '110,130', 0, 'Zulfiqar', 'Delivery', '2020-12-19', '05:35pm'),
(46, 21, 'ALOO CHEESE PARATHA', '1', '1', 150, '150', 0, 'Jamshed', '', '2020-12-20', '07:49pm'),
(47, 0, 'COFFEE ESPRESSO', '3', '1', 240, '240', 0, 'Mukhtiyar', 'Take Away', '2020-12-20', '07:50pm'),
(48, 7, 'ALOO CHEESE PARATHA', '1', '1', 150, '150', 0, 'Jamshed', '', '2020-12-20', '08:01pm'),
(49, 21, 'CHEESE PARATHA', '2', '1', 240, '240', 0, 'Jamshed', '', '2020-12-20', '08:03pm'),
(50, 1, 'ALOO CHEESE PARATHA', '1', '1', 150, '150', 0, 'Jamshed', '', '2020-12-20', '08:05pm'),
(51, 3, 'CHEESE PARATHA', '1', '1', 120, '120', 10, 'Jamshed', '', '2020-12-20', '08:18pm'),
(52, 2, 'MEETHA PARATHA', '1', '1', 100, '100', 10, 'Jamshed', '', '2020-12-20', '08:24pm'),
(53, 5, 'ALOO CHEESE PARATHA', '1', '1', 150, '150', 10, 'Jamshed', '', '2020-12-20', '08:38pm'),
(54, 0, 'ALOO CHEESE PARATHA', '2', '1', 300, '300', 10, 'Jamshed', 'Delivery', '2020-12-20', '08:41pm'),
(55, 0, 'BBQ PARATHA', '1', '1', 250, '250', 10, 'Jamshed', 'Take Away', '2020-12-20', '08:41pm'),
(56, 1, 'ALOO PARATHA', '1', '1', 120, '120', 12, 'Jamshed', '', '2020-12-20', '08:45pm'),
(57, 0, 'ALOO CHEESE PARATHA', '1', '1', 150, '150', 10, 'Jamshed', 'Delivery', '2020-12-20', '08:47pm'),
(58, 0, 'FAJEETA PARATHA', '1', '1', 250, '250', 10, 'Jamshed', 'Take Away', '2020-12-20', '08:47pm'),
(59, 7, 'CHEESE PARATHA,FAJEETA PARATHA', '1,1', '1,1', 370, '120,250', -32, 'Jamshed', '', '2020-12-20', '08:52pm'),
(60, 2, 'BBQ PARATHA', '3', '1', 750, '750', 0, 'Jamshed', '', '2020-12-20', '08:55pm'),
(61, 0, 'BBQ PARATHA', '3', '1', 750, '750', 0, 'Jamshed', 'Delivery', '2020-12-20', '08:56pm'),
(62, 0, 'CHICKEN CHEESE PARATHA', '1', '1', 250, '250', 0, 'Jamshed', 'Take Away', '2020-12-20', '08:56pm'),
(63, 1, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-20', '09:02pm'),
(64, 6, 'CHICKEN CHEESE PARATHA', '1', '1', 250, '250', 0, 'Jamshed', '', '2020-12-20', '09:03pm'),
(65, 1, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-20', '09:05pm'),
(66, 5, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-20', '09:06pm'),
(67, 2, 'CHEESE PARATHA', '3', '1', 360, '360', 0, 'Jamshed', '', '2020-12-21', '11:03am'),
(68, 7, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-21', '11:06am'),
(69, 19, 'ALOO PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-21', '11:09am'),
(70, 0, 'BBQ PARATHA', '1', '1', 250, '250', 0, 'Jamshed', 'Delivery', '2020-12-21', '11:11am'),
(71, 0, 'BBQ PARATHA', '1', '1', 250, '250', 0, 'Jamshed', 'Take Away', '2020-12-21', '11:11am'),
(72, 10, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-21', '11:13am'),
(73, 12, 'CHEESE PARATHA,FAJEETA PARATHA', '1,1', '1,1', 370, '120,250', 0, 'Jamshed', '', '2020-12-21', '11:18am'),
(74, 8, 'ALOO PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-21', '12:08pm'),
(75, 1, 'CHEESE PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-21', '12:10pm'),
(76, 0, 'BBQ PARATHA', '1', '1', 250, '250', 0, 'Jamshed', 'Delivery', '2020-12-21', '12:11pm'),
(77, 0, 'LACHAY PARATHA', '1', '1', 40, '40', 10, 'Jamshed', 'Take Away', '2020-12-21', '12:11pm'),
(78, 1, 'ALOO PARATHA,BBQ PARATHA', '1,1', '1,1', 370, '120,250', 10, 'Jamshed', '', '2020-12-21', '12:37pm'),
(79, 12, 'BBQ PARATHA', '1', '1', 250, '250', 10, 'Jamshed', '', '2020-12-21', '12:38pm'),
(80, 1, 'BBQ PARATHA', '1', '1', 250, '250', 10, 'Jamshed', '', '2020-12-22', '09:10am'),
(81, 3, 'ALOO PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-22', '09:10am'),
(82, 2, 'ALOO PARATHA,CHEESE PARATHA', '3,1', '1,1', 480, '360,120', 0, 'Jamshed', '', '2020-12-22', '09:30am'),
(83, 8, 'ALOO PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-22', '09:31am'),
(84, 1, 'BBQ PARATHA', '1', '1', 250, '250', 10, 'Jamshed', '', '2020-12-22', '09:32am'),
(85, 3, 'ALOO PARATHA', '1', '1', 120, '120', 0, 'Jamshed', '', '2020-12-22', '09:36am'),
(86, 1, 'ALOO PARATHA,CHEESE PARATHA', '3,5', '1,1', 960, '360,600', 0, 'Jamshed', '', '2020-12-22', '09:39am'),
(87, 0, 'CHICKEN CHEESE PARATHA,LACHAY PARATHA', '1,1', '1,1', 290, '250,40', 0, 'Jamshed', 'Take Away', '2020-12-22', '09:47am'),
(88, 0, 'CHEESE PARATHA', '4', '1', 480, '480', 0, 'Jamshed', 'Delivery', '2020-12-22', '09:47am'),
(89, 10, 'CHICKEN WHITE KARAHI', '2', 'HALF', 1100, '1100', 0, 'Jamshed', '', '2020-12-22', '09:50am'),
(90, 5, 'CHEESE PARATHA', '11', '1', 1320, '1320', 0, 'Jamshed', '', '2020-12-22', '09:51am'),
(91, 77, 'ALOO PARATHA', '1', '1', 120, '120', 50, 'Jamshed', '', '2020-12-22', '09:56am'),
(92, 13, 'ALOO PARATHA', '3', '1', 360, '360', 0, 'Jamshed', '', '2020-12-22', '09:58am'),
(93, 6, 'ALOO PARATHA,CHEESE PARATHA', '1,1', '1,1', 240, '120,120', 0, 'Mustafa', '', '2020-12-22', '09:59am'),
(94, 11, 'ALOO PARATHA,CHEESE PARATHA', '1,1', '1,1', 240, '120,120', 10, 'Mustafa', '', '2020-12-22', '10:00am');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `item_id`, `size`, `price`) VALUES
(1, 1, '1', 120),
(2, 2, '1', 150),
(3, 3, '1', 200),
(4, 4, '1', 250),
(5, 5, '1', 250),
(6, 6, '1', 300),
(7, 7, '1', 250),
(8, 8, '1', 100),
(9, 9, '1', 150),
(10, 10, '1', 350),
(11, 11, '1', 50),
(12, 12, '1', 100),
(13, 13, '1', 50),
(14, 14, '1', 50),
(15, 15, '1', 80),
(16, 16, '1', 70),
(17, 17, '1', 40),
(18, 18, '1', 80),
(19, 19, '1', 190),
(20, 20, '1', 210),
(21, 21, '1', 350),
(22, 22, '1', 350),
(23, 23, '1', 350),
(24, 24, '1', 350),
(25, 25, '1', 350),
(30, 26, '1', 110),
(31, 27, '1', 110),
(32, 28, '1', 110),
(40, 29, '1', 110),
(41, 30, '1', 140),
(42, 31, '1', 130),
(43, 32, '1', 70),
(44, 33, 'HALF', 500),
(45, 33, 'FULL', 990),
(46, 34, 'HALF', 500),
(47, 34, 'FULL', 990),
(48, 35, 'HALF', 550),
(49, 35, 'FULL', 1050),
(50, 36, 'HALF', 1500),
(51, 36, 'FULL', 1850),
(52, 37, 'HALF', 950),
(53, 37, 'FULL', 1850),
(54, 38, 'HALF', 950),
(55, 38, 'FULL', 1850),
(56, 39, '1', 230),
(57, 40, '1', 250),
(58, 41, '1', 270),
(59, 42, '1', 170),
(60, 43, '1', 200),
(61, 44, '1', 250),
(62, 45, '1', 270),
(63, 46, '1', 450),
(64, 47, '1', 190),
(65, 48, '1', 220),
(66, 49, '1', 150),
(67, 50, '1', 200),
(68, 51, '1', 220),
(69, 52, '1', 220),
(70, 53, '1', 120),
(71, 54, '1', 140),
(72, 55, '1', 170),
(73, 56, '1', 20),
(74, 57, '1', 30),
(75, 58, '1', 30),
(76, 59, '1', 20),
(78, 61, '1', 50),
(79, 62, '1', 40),
(80, 63, '1', 80),
(81, 64, '1', 70),
(82, 65, '1', 40),
(83, 66, '1', 60),
(84, 67, '1', 30),
(85, 68, '1', 120),
(86, 69, '1', 40),
(87, 70, '1', 100),
(88, 71, '1', 150),
(89, 72, '1', 200),
(90, 73, '1', 100),
(91, 74, '1', 100),
(92, 75, '1', 150),
(98, 34, 'Quater', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_num` int(11) NOT NULL,
  `current_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_num`, `current_status`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0),
(26, 26, 0),
(27, 27, 0),
(28, 28, 0),
(29, 29, 0),
(30, 30, 0),
(31, 31, 0),
(32, 32, 0),
(33, 33, 0),
(34, 34, 0),
(35, 35, 0),
(36, 36, 0),
(37, 37, 0),
(38, 38, 0),
(39, 39, 0),
(40, 40, 0),
(41, 41, 0),
(42, 42, 0),
(43, 43, 0),
(44, 44, 0),
(45, 45, 0),
(46, 46, 0),
(47, 47, 0),
(48, 48, 0),
(49, 49, 0),
(50, 50, 0),
(51, 51, 0),
(52, 52, 0),
(53, 53, 0),
(54, 54, 0),
(55, 55, 0),
(56, 56, 0),
(57, 57, 0),
(58, 58, 0),
(59, 59, 0),
(60, 60, 0),
(61, 61, 0),
(62, 62, 0),
(63, 63, 0),
(64, 64, 0),
(65, 65, 0),
(66, 66, 0),
(67, 67, 0),
(68, 68, 0),
(69, 69, 0),
(70, 70, 0),
(71, 71, 0),
(72, 72, 0),
(73, 73, 0),
(74, 74, 0),
(75, 75, 0),
(76, 76, 0),
(77, 77, 0),
(78, 78, 0),
(79, 79, 0),
(80, 80, 0),
(81, 81, 0),
(83, 82, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax`, `value`) VALUES
(1, 'gst', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `roll`) VALUES
(1, 'admin', '123', 1),
(2, 'waiter', '123', 2),
(3, 'Kitchen', '123', 3),
(4, 'counter', '123', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancle_orders_history`
--
ALTER TABLE `cancle_orders_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_orders`
--
ALTER TABLE `current_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_history`
--
ALTER TABLE `orders_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancle_orders_history`
--
ALTER TABLE `cancle_orders_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `current_orders`
--
ALTER TABLE `current_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders_history`
--
ALTER TABLE `orders_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
