-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 07:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'krunal', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Laptop', 'laptop', '2022-11-17 18:30:48', '18-11-2022 12:01:41 AM'),
(8, 'Mobile', 'Phone', '2022-11-17 18:32:05', '18-11-2022 12:25:50 AM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '23', 1, '2022-11-22 18:49:07', 'Internet Banking', NULL),
(8, 4, '26', 1, '2022-11-22 18:56:31', 'COD', NULL),
(9, 4, '21', 1, '2022-11-26 04:44:36', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 9, 'in Process', 'hhn', '2022-11-26 16:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(21, 7, 13, 'HP Gaming Laptop', 'HP', 84, 91, '<h6 style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">HP Gaming Laptop i5, 10th, 8GB, 512GB SSD, 4GB, 15.6 FHD, W10 OMEN 15-EK0015TX Shadow Black&nbsp;| 4GB - NVIDIA GTX 1650</font></h6>', '1.jpeg', '2.jpeg', '6.jpeg', 0, 'In Stock', '2022-11-17 19:13:49', NULL),
(23, 7, 13, 'Asus Gaming Laptop', 'Asus', 66099, 88990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Asus Gaming Laptop i7, 10th, 8GB, 512GB SSD, 4GB-1650, 15.6 FHD, W10 Vivobook F571LH-BQ436T Star Black&nbsp;| NVIDIA GeForce GTX 1650, Backlit KB</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 19:27:28', NULL),
(24, 7, 13, 'Lenovo Gaming Laptop', 'Lenovo', 80000, 100000, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Lenovo Gaming Laptop i5-11300H, 11th, 16GB, 512GB SSD, 4GB-3050, 15.6 FHD, W11, MSO IdeaPad Gaming 3 82K1019BIN Shadow Black&nbsp;| NVIDIA GeForce RTX 3050 4GB GDDR6, Backlit KB</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 19:29:17', NULL),
(25, 7, 13, 'Dell Gaming laptop', 'Dell', 82000, 85000, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Dell Gaming Laptop i5, 10th, 16GB, 512 GB SSD, 4GB-1650, 15.6 FHD, W10, MSO G15 5510 D560473WIN9B Dark Shadow Grey&nbsp;| DELL G15 5510, i5, 10th, 16GB, 512 GB SSD, 4GB NVIDIA GEFORCE GTX 1650, Backlit</font></h1>', '1', '2', '3', 0, 'Out of Stock', '2022-11-17 19:35:47', NULL),
(26, 7, 15, 'Macbook Laptop', 'Apple', 90000, 0, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Apple MacBook Laptop M1, 8GB, 256GB, 13.3 Air MGND3HN/A Gold&nbsp;| M1 Chip, 8GB RAM, 256GB SSD, 13.3 inch</font></h1>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2022-11-17 19:41:53', NULL),
(27, 7, 15, 'Macbook Laptop M2', 'Apple', 112000, 119500, '<font size=\"3\"><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">APPLE 2022 MacBook AIR M2 - (8 GB/256 GB SSD/Mac OS Monterey) MLY33HN/A</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">&nbsp;&nbsp;(13.6 Inch, Midnight, 1.24 Kg)</span></font><br>', '4', '5', '6', 0, 'In Stock', '2022-11-17 19:48:33', NULL),
(28, 7, 17, 'HP Window Laptop', 'HP', 60429, 68926, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); font-size: 22px; max-width: 70%;\">HP Windows Laptop i5, 11th, 8GB, 1TB HDD, 2GB, 15.6FHD, W10, MSO 15S-DU3060TX Jet Black&nbsp;| 2GB - MX350 GFX</h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 19:55:56', NULL),
(29, 7, 17, 'Dell windows laptop', 'Dell', 45000, 0, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Dell Windows Laptop i3, 11th, 8GB, 1TB HDD, 15.6 FHD, W10, MSO Ins 3501 D560424WIN9S Soft Mint&nbsp;| Integrated Graphics</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 19:59:12', NULL),
(30, 7, 17, 'Lenovo Windows Laptop', 'Lenovo', 90000, 99990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Lenovo Windows Laptop R7-5700U, 16GB, 512GB SSD, 15.6 FHD, W10, MSO IdeaPad 5 15ALC05 82LN00F3IN Graphite Grey&nbsp;| Integrated Graphics</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 20:04:09', NULL),
(31, 7, 17, 'Asus Windows Laptop', 'Asus', 63000, 78000, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Asus Windows Laptop R5-5500U, 16GB, 512GB SSD, 17.3 FHD, W10, MSO VivoBook 17 M712UA-AU521TS Transparent Silver&nbsp;| AMD Radeon Graphics</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-17 20:07:02', NULL),
(32, 7, 18, 'Dell Convertible laptop', 'Dell', 62000, 76258, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Dell Convertible Laptop i3, 11th, 8GB, 512GB SSD, 14 FHD, W10, MSO Inspiron 5410 D560625WIN9S Platinum Silver&nbsp;| Dell Active Pen, Backlit Keyboard + FP Reader</font></h1>', '4', '5', '6', 0, 'In Stock', '2022-11-17 20:12:31', NULL),
(33, 7, 18, 'HP Convertible Laptop', 'HP', 84769, 98051, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">HP Convertible Laptop R5-5600U, 16GB, 512GB SSD, 13.3 FHD, W11, MSO ENVY - X360 13-AY1038AU Natural Silver&nbsp;| Backlit KBD, FP Reader, Pen, Alexa Built-in</font></h1>', '4', '5', '6', 0, 'In Stock', '2022-11-17 20:16:36', NULL),
(34, 7, 18, 'Lenovo Convertible Laptop', 'Lenovo', 55000, 90890, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Lenovo Convertible Laptop i5, 10th, 8GB, 512GB SSD, 14 FHD, W10, MSO Ideapad C340 81TK00GTIN Platinium Grey&nbsp;| Ideapad C340, Intel Core i5, 10th Gen, 14\" FHD 2 in 1, 8GB, 512GB SSD, W10</font></h1>', '4.jpeg', '5.jpeg', '6.jpeg', 0, 'In Stock', '2022-11-17 20:19:33', NULL),
(35, 7, 19, 'Dell Thin & light laptop', 'Dell', 50799, 64964, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Dell Thin &amp; Light Laptop R5-3450U, 8GB, 512GB SSD, 15.6 FHD, Backlit KB, W11, MSO Inspiron 3515 D560791WIN9BD Mist Blue Speckle&nbsp;| Backlit Keyboard, VEGA GRAPHICS</font></h1>', '7', '8', '9', 0, 'In Stock', '2022-11-17 20:24:13', NULL),
(36, 7, 19, 'Asus Thin & Light Laptop', 'Asus', 45987, 57999, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Asus Thin &amp; Light Laptop R5-3500U, 8GB, 512GB SSD, 15.6 FHD, W11, MSO M515DA-BQ512WS Transparent Silver&nbsp;| Integrated Graphics, FP Reader</font></h1>', '4', '5', '6', 0, 'In Stock', '2022-11-17 20:27:30', NULL),
(37, 7, 19, 'Lenovo Thin & Light Laptop', 'Lenovo', 104299, 146890, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Lenovo Thin &amp; Light Laptop i7, 11th, 16GB, 1TB SSD, 14 FHD, W11, MSO 21 Yoga Slim 7 82A300BEIN Slate Grey&nbsp;| Backlit KB, Integrated Graphics</font></h1>', '7', '8', '9', 0, 'In Stock', '2022-11-17 20:30:49', NULL),
(38, 7, 19, 'Asus Thin & Light Laptop', 'Asus', 48299, 62990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Asus Thin &amp; Light Laptop i5, 10th, 8GB, 512GB SSD, 32GB Optane, 15.6 FHD, W Vivobook 15 X515JA-EJ562WS Transparent Silver&nbsp;| 32GB Optane Memory, Integrated Graphics, FP Reader</font></h1>', '7', '8', '9', 0, 'In Stock', '2022-11-17 20:33:57', NULL),
(39, 7, 19, 'Asus Thin & Light Laptop', 'Asus', 48299, 62990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Asus Thin &amp; Light Laptop i5, 10th, 8GB, 512GB SSD, 32GB Optane, 15.6 FHD, W Vivobook 15 X515JA-EJ562WS Transparent Silver&nbsp;| 32GB Optane Memory, Integrated Graphics, FP Reader</font></h1>', '7', '8', '9', 0, 'In Stock', '2022-11-17 20:34:47', NULL),
(40, 8, 20, 'iphone 14', 'Apple', 89000, 0, 'Apple iPhone Mobile 14 (256ROM) MPWP3HN/A Blue', '1', '2', '3', 0, 'In Stock', '2022-11-18 17:56:39', NULL),
(41, 8, 20, 'iphone 13', 'Apple', 69000, 0, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Apple iPhone Mobile 13 (128GB ROM) MLPF3HN/A Midnight Black&nbsp;| IOS 15/ 6.1 Super Retina XDR Display/ 12 MP Dual Rear Camera/ 12 MP Front Camera</font></h1>', '4', '5', '6', 0, 'In Stock', '2022-11-18 17:59:54', NULL),
(42, 8, 20, 'iphone 12', 'Apple', 64900, 0, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Apple iPhone Mobile 12 (128GB ROM) MGJC3HN/A White</font></h1>', '7', '8.jpg', '9.jpg', 0, 'In Stock', '2022-11-18 18:02:59', NULL),
(43, 8, 20, 'iphone 11', 'Apple', 39999, 43900, '<p><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font size=\"3\">64 GB ROM</font></li></ul><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font size=\"3\">15.49 cm (6.1 inch) Liquid Retina HD Display</font></li></ul><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font size=\"3\">12MP + 12MP | 12MP Front Camera</font></li></ul><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\"><font size=\"3\">A13 Bionic Chip Processor</font></li></ul></p>', '10', '11', '12', 0, 'In Stock', '2022-11-18 18:11:15', NULL),
(44, 8, 21, 'vivo v23', 'VIVO', 38900, 41990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Vivo Android Smartphone V23 Pro 5G (8GB RAM, 128GB Storage/ROM) V2132 Stardust Black&nbsp;| 6.56 inch Full HD+, Rear Camera 108 MP + 8 MP + 2 MP, Front Camera 50 MP + 8 MP</font></h1>', '1', '2', '3', 0, 'In Stock', '2022-11-18 18:24:54', NULL),
(45, 8, 21, 'realme 8', 'Realme', 15999, 16999, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Realme Android Smartphone 8 (4GB RAM, 128GB Storage/ROM) RMX3085 Silver&nbsp;| Front Camera 16 MP, Android 11, Helio G95 Octa Core 2 GHz, 5000 mAh, 4G</font></h1>', '4.jpeg', '5.jpeg', '6.jpeg', 0, 'In Stock', '2022-11-18 18:27:15', NULL),
(46, 8, 21, 'Oppo A16k', 'OPPO', 9999, 15990, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Oppo Android Smartphone A16k (4GB RAM, 64GB Storage/ROM) CPH2349 Black&nbsp;| 6.52 inch HD+, Rear Camera 13 MP, Front Camera 5 MP, Android 11</font></h1>', '7', '8', '9', 0, 'In Stock', '2022-11-18 18:31:10', NULL),
(47, 8, 21, 'Samsung S22', 'Samsung', 67999, 72999, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Samsung Android Smartphone S22 5G (8GB RAM, 128GB Storage/ROM) S901ED Phantom Black&nbsp;| 6.1 inch Full HD+, Rear Camera 50 MP + 12 MP + 10 MP, Front Camera 10 MP</font></h1>', '10', '11', '12', 0, 'In Stock', '2022-11-18 18:35:33', NULL),
(48, 8, 21, 'Vivo v25', 'VIVO', 35000, 39999, '<h1 _ngcontent-lotuselectronics-c370=\"\" style=\"box-sizing: border-box; font-weight: 500; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 27px; color: rgb(33, 37, 41); max-width: 70%;\"><font size=\"3\">Vivo Android Smartphone V25 Pro 5G (8GB RAM, 128GB Storage/ROM) V2158 Sailing Blue&nbsp;| 6.56 inch FHD+ 3D Curved, Rear Camera 64 MP + 8 MP + 2 MP, Front Camera 32 MP</font></h1>', '13', '14', '15', 0, 'In Stock', '2022-11-18 18:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(13, 7, 'Gaming', '2022-11-17 18:36:26', NULL),
(15, 7, 'Macbook', '2022-11-17 18:47:21', NULL),
(17, 7, 'Windows', '2022-11-17 18:51:33', NULL),
(18, 7, 'Convertible', '2022-11-17 18:52:12', NULL),
(19, 7, 'Thin & Light', '2022-11-17 18:53:44', NULL),
(20, 8, 'Iphone', '2022-11-17 18:56:18', NULL),
(21, 8, 'Android phone', '2022-11-17 18:56:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'kr@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-21 04:01:50', NULL, 1),
(25, 'krunal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 03:10:41', NULL, 0),
(26, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 03:10:51', NULL, 1),
(27, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 03:23:32', NULL, 1),
(28, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 09:06:50', NULL, 1),
(29, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 18:43:36', '22-11-2022 07:53:27 PM', 1),
(30, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 18:54:20', '23-11-2022 06:44:28 AM', 1),
(31, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-26 04:44:07', NULL, 1),
(32, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-27 08:09:27', '27-11-2022 09:20:17 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'abc', 'abc@gmail.com', 1234567890, 'e10adc3949ba59abbe56e057f20f883e', 'kherva,mehsana', 'Gujarat', 'mehsana', 328786, '404 bunglows,mumbai', 'maharastra', 'mumbai', 380000, '2022-11-17 15:40:03', NULL),
(5, 'krunal', 'kr@gmail.com', 1234567890, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 04:01:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
