-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 03:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apsi`
--
CREATE DATABASE IF NOT EXISTS `apsi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apsi`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Tuyosilog', 60, 'TUYOSILOG.jpg'),
(2, 'Bagetsilog', 90, 'BAGETSILOG.jpg'),
(3, 'Chicksilog', 90, 'CHICKSILOG.jpg'),
(4, 'Bacsha', 95, 'BACSHA.jpg'),
(5, 'Shatap', 100, 'SHATAP.jpg'),
(6, 'Hamdog', 70, 'HAMDOG.jpg'),
(7, 'Shanghaisilog', 60, 'SHANGHAISILOG.jpg'),
(8, 'Hotsilog', 60, 'HOTSILOG.jpg'),
(9, 'Sisiglog', 90, 'SISIGLOG.jpg'),
(10, 'Torikatsilog', 95, 'TORIKATSILOG.jpg'),
(11, 'Nagetsmoba', 90, 'NAGETSMOBA.jpg'),
(12, 'Napa-shabac', 130, 'NAPA-SHABAC.jpg'),
(13, 'Chickfiletsilog', 95, 'CHICKFILETSILOG.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'admin', 'admin@ad.min', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'user', 'user@u.ser', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `danilo_db`
--
CREATE DATABASE IF NOT EXISTS `danilo_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `danilo_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(12, '192.168.3.9', 0, 5, 1),
(31, '::1', 0, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(3, 'Glass & Aluminum Windows'),
(7, 'Glass & Aluminum Doors'),
(8, 'Shower Enclosures'),
(9, 'Glass Roofing'),
(10, 'Glass & Aluminum Railings'),
(11, '');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `eventdt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `schedule` datetime NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `schedule`, `email`, `status`) VALUES
(1, 'James Smith', 'adasdasd asdadasd', '4756463215', '0000-00-00 00:00:00', 'jsmith@sample.com', 1),
(2, 'James Smith', 'adasdasd asdadasd', '4756463215', '0000-00-00 00:00:00', 'jsmith@sample.com', 1),
(3, 'Lester BoBo', 'tagabundok', '9924423684', '0000-00-00 00:00:00', 'lesterbaho123@gmail.com', 1),
(4, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 1),
(5, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 1),
(6, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 1),
(7, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 1),
(11, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 1),
(12, 'theyarra jasmin', 'dyan lang po', '1764009880', '0000-00-00 00:00:00', 'they@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 1, 3, 1),
(4, 1, 6, 3),
(5, 2, 1, 2),
(6, 3, 1, 1),
(7, 4, 3, 1),
(8, 5, 11, 1),
(9, 6, 7, 1),
(10, 7, 17, 1),
(11, 7, 16, 2),
(12, 8, 7, 1),
(13, 9, 19, 2),
(14, 10, 20, 1),
(15, 11, 20, 1),
(16, 12, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(7, 3, 'Awning Window', 'FREE ESTIMATE                       sizes: 100x20 - 90x25                   Price Range : 5,000 - 8,000																																																										', 0, '1654087440_Awning Window.jpg', 1),
(15, 3, 'Sliding Window', 'Free Estimate Free Quotation\r\nsizes: 100x20 - 30x40\r\nPrice Range : 1,000-7,000	', 0, '1654087620_Sliding Window.jpg', 1),
(16, 7, 'Sliding Door', 'Free Estimate.  Free Estimate  Free\r\nsizes: 100x20 - 30x40\r\nPrice Range : 1,000-7,000', 0, '1654087860_Sliding Door.jpg', 1),
(17, 3, 'Jalousies', 'Free Estimate \r\nSizes : 100 x 20 - 30 x 40\r\nPrice Range : 1,000 - 7,000', 0, '1654088040_Jalousie.jpg', 1),
(18, 8, 'Shower Enclosures', 'Free Estimate\r\nsizes: 100 x 20 - 30 x 40\r\nPrice Range : 1,000 - 7,000', 0, '1654088160_Shower Enclosure.jpg', 1),
(19, 7, 'Frameless Door', 'Free Estimate \r\nsizes: 100 x 20 - 30 x 40\r\nPrice Range : 1,000 - 7,000', 0, '1654088220_Frameless Door.jpg', 1),
(20, 7, 'Screen Door', 'Free Estimate \r\nsizes: 100 x 20 - 30 x 40\r\nPrice Range : 1,000 - 7,000', 0, '1654088280_Screen Door.jpg', 1),
(21, 7, 'Swing door', 'Free Estimate\r\nsizes: 80 x 20 - 30 x 40\r\nPrice Range : 1,000 - 3,000', 0, '1654088340_Table Top Glass.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Danilo DB Glass & Aluminum Works', 'dbGlass@gmail.com', '09282070885', '1653750480_1653347220_1653279120_1652200800_bg1.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;span style=&quot;font-size:16px;background: transparent; position: relative;&quot;&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Danilo T. Briones Glass and Aluminum Works, was founded by Danilo Briones as a proprietor, he really had a hands on experience in dealing with this kind of business. Before, he worked in various business establishment such as SENG SENG Kimpit Glass Aluminum from 1986-1993, Anita Glass Aluminum from 1994-2001, and lastly Kimpit Glass Aluminum from 2001-2008, in order to gain skills in preparation of Glass and Aluminum Works.&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;He tried to work some complicated task with regards to his work in designing doors and windows made if glass and aluminum. Thus, from those experiences he got. He assess himself having confidence to his expertise in working with glass doors and windows. So he planned for a business which he think would really apply his expertise. From that time on, he started to put up his own small business.&amp;nbsp;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;br style=&quot;font-size: 16px;&quot;&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Year 2009, DB Glass and Aluminum Works was established, they started with two employees including his self to do glass and aluminum works.&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Our shop offers quality products and provide services made by talented individuals. Currently, the shop is employing about 10 hardworking individuals. As the shop grows, it is hopeful to invite and help more deserving and talented individuals.&amp;nbsp;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;br style=&quot;font-size: 16px;&quot;&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Danilo DB Glass and Aluminum Works is located at B27 L2 Main Rd. Phase 3 West Camella Springville Molino 3 Bacoor City, Cavite. The company has already been serving residential and commercial clients.&lt;/h4&gt;&lt;/span&gt;&lt;h4 style=&quot;background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative;&quot;&gt;Values:&lt;/h4&gt;&lt;span style=&quot;font-size:16px;background: transparent; position: relative;&quot;&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Energy&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;-Capture oportunities and make things happen&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Exellence&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;-Do things better than anyone else in our industry&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;Excitement&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;-Foster openness, respect and trust to create excitement.&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;br style=&quot;font-size: 16px;&quot;&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size:18px;background: transparent; position: relative;&quot;&gt;Mission&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;-We provide good quality product to enhance satisfaction of our customers, whilst creating unique product that benefit both the customer and the environment.&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;br style=&quot;font-size: 16px;&quot;&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-size:18px;background: transparent; position: relative;&quot;&gt;Vision&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;background: transparent; position: relative; font-size: 16px;&quot;&gt;-We will be the most valued business partner of all customers.&lt;/h4&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;p&gt;&lt;/p&gt;&lt;/span&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'James', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '4756463215', 'adasdasd asdadasd'),
(2, 'Lester', 'BoBo', 'lesterbaho123@gmail.com', 'fb658553d51bfb30a68d1450f6e744cb', '9924423684', 'tagabundok'),
(3, 'theyarra', 'jasmin', 'they@gmail.com', '2bb3d86d95234affa7c5bd68c4bab606', '1764009880', 'dyan lang po');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `danilo_projects`
--
CREATE DATABASE IF NOT EXISTS `danilo_projects` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `danilo_projects`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date_today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `eid`, `time_in`, `time_out`, `date_today`) VALUES
(21, 4, '10:41:25', '12:36:24', '2018-03-15'),
(23, 2, '11:04:43', '11:27:27', '2018-03-15'),
(24, 2, '07:52:02', '00:00:00', '2018-03-16'),
(25, 2, '07:52:58', '07:53:00', '2018-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `midname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pid` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ecode` varchar(10) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `e_pic` varchar(100) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `lastname`, `firstname`, `midname`, `bday`, `contact_no`, `address`, `pid`, `status`, `gender`, `ecode`, `date_added`, `e_pic`, `io`) VALUES
(1, 'Administrator', 'Admin', '', '1987-06-23', '12345678', 'Sample', 1, 'Single', 'Male', '78945', '0000-00-00', '9642_avatar.jpg', 1),
(2, 'Smith', 'John', '', '1993-06-23', '1321', 'Sample', 1, 'Single', 'Male', '78946', '2020-10-05', '9274_CYMERA_20200401_162924.jpg', 1),
(3, 'Wilson', 'George', '', '1990-07-11', '+54545', 'Sample', 2, 'Married', 'Male', '78947', '2020-10-05', 'no_image.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pid` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `p_type` varchar(15) NOT NULL,
  `daily_rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pid`, `position`, `p_type`, `daily_rate`) VALUES
(1, 'Foreman', '', '1500'),
(2, 'Mason', '', '500');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `overall_cost` varchar(10) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `site_pic` varchar(100) NOT NULL,
  `tid` int(10) NOT NULL,
  `proposed_project` int(5) NOT NULL,
  `date_added` date NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project`, `location`, `overall_cost`, `start_date`, `deadline`, `site_pic`, `tid`, `proposed_project`, `date_added`, `io`) VALUES
(4, 'Sample Project', 'Sample', '30000000', '2022-05-31', '2022-06-06', '8842_blank.jpg', 1, 1, '2020-10-05', 3),
(5, 'sliding Door', 'DYAN LANG', '7000', '2022-05-27', '2022-06-11', '8641_1653279360_Sliding Door.jpg', 1, 1, '2022-05-28', 1),
(6, 'sliding Door', 'SA TABI', '6000', '2022-05-28', '2022-06-10', 'no_image.jpg', 1, 2, '2022-05-28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_division`
--

CREATE TABLE `project_division` (
  `pd_id` int(11) NOT NULL,
  `division` varchar(100) NOT NULL,
  `project_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_division`
--

INSERT INTO `project_division` (`pd_id`, `division`, `project_type`) VALUES
(1, 'Layout', 1),
(2, 'Floor', 1),
(3, 'Roof', 1),
(4, 'windows', 1),
(5, 'Sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_partition`
--

CREATE TABLE `project_partition` (
  `pp_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `pd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_partition`
--

INSERT INTO `project_partition` (`pp_id`, `project_id`, `pd_id`) VALUES
(1, 2, 5),
(2, 3, 2),
(3, 3, 1),
(4, 4, 2),
(5, 3, 3),
(6, 4, 1),
(7, 4, 3),
(8, 3, 5),
(9, 4, 5),
(10, 3, 4),
(11, 4, 4),
(12, 5, 2),
(13, 5, 1),
(14, 5, 3),
(15, 5, 5),
(16, 5, 4),
(17, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `project_progress`
--

CREATE TABLE `project_progress` (
  `prog_id` int(10) NOT NULL,
  `pp_id` int(10) NOT NULL,
  `progress` int(2) NOT NULL,
  `date_added` date NOT NULL,
  `partition_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_progress`
--

INSERT INTO `project_progress` (`prog_id`, `pp_id`, `progress`, `date_added`, `partition_img`) VALUES
(1, 0, 0, '2020-10-05', ''),
(2, 0, 0, '2020-10-05', 'no_image.jpg'),
(3, 0, 0, '2020-10-05', 'no_image.jpg'),
(4, 0, 0, '2020-10-05', ''),
(5, 0, 0, '2020-10-05', ''),
(6, 0, 0, '2020-10-05', ''),
(7, 0, 0, '2020-10-05', ''),
(8, 0, 0, '2020-10-05', ''),
(9, 0, 0, '2020-10-05', ''),
(10, 0, 0, '2020-10-05', 'no_image.jpg'),
(11, 0, 0, '2020-10-05', ''),
(12, 0, 0, '2020-10-05', 'no_image.jpg'),
(13, 1, 80, '2020-10-05', '4703_blank.jpg'),
(14, 0, 0, '2020-10-05', 'no_image.jpg'),
(15, 0, 0, '2020-10-05', 'no_image.jpg'),
(16, 4, 80, '2020-10-05', '6536_blank.jpg'),
(17, 6, 100, '2020-10-05', '1907_blank.jpg'),
(18, 7, 90, '2020-10-05', '8358_blank.jpg'),
(19, 7, 10, '2020-10-05', '9062_blank.jpg'),
(20, 9, 90, '2020-10-05', '3728_blank.jpg'),
(21, 11, 80, '2020-10-05', '9689_blank.jpg'),
(22, 0, 0, '2022-05-28', 'no_image.jpg'),
(23, 16, 1, '2022-05-28', '3405_Sliding Door.jpg'),
(24, 0, 0, '2022-05-28', 'no_image.jpg'),
(25, 15, 1, '2022-05-28', '6778_Jalousie.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_team`
--

CREATE TABLE `project_team` (
  `tid` int(10) NOT NULL,
  `date_added` date NOT NULL,
  `eid` int(10) NOT NULL,
  `pio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_team`
--

INSERT INTO `project_team` (`tid`, `date_added`, `eid`, `pio`) VALUES
(1, '2020-10-05', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `tm_id` int(10) NOT NULL,
  `tid` int(10) NOT NULL,
  `eid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`tm_id`, `tid`, `eid`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `eid` int(5) NOT NULL,
  `user_type` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `eid`, `user_type`, `username`, `password`, `io`) VALUES
(1, 1, 1, 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_division`
--
ALTER TABLE `project_division`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `project_partition`
--
ALTER TABLE `project_partition`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `project_progress`
--
ALTER TABLE `project_progress`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `project_team`
--
ALTER TABLE `project_team`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_division`
--
ALTER TABLE `project_division`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_partition`
--
ALTER TABLE `project_partition`
  MODIFY `pp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `project_progress`
--
ALTER TABLE `project_progress`
  MODIFY `prog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `project_team`
--
ALTER TABLE `project_team`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `tm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `isdb`
--
CREATE DATABASE IF NOT EXISTS `isdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `isdb`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(66, 2, 'asus rog azoth', 13450, 1, 'Screenshot_2024-10-23_065630-removebg-preview.png'),
(67, 2, 'LENOVO 27', 13800, 2, 'ASUS_ROG_Strix_Scope_II_96_Wireless_Gaming_Keyboard__Black_-removebg-preview-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 2, 'Win', '639667066647', 'user@u.ser', 'cash on delivery', '2323, ,  - ', ', Win (1) ', 2, '22-Oct-2024', 'pending'),
(11, 2, 'asasas', '1212', 'a@a', 'credit card', '2121, ,  - ', ', Logitech G733 Lightspeed  (2) ', 18250, '28-Oct-2024', 'completed'),
(14, 5, 'asdsad', '756765', 'user@u.ser', 'cash on delivery', 'dsadasd', ', Razer DeathAdder V3 Pro (1) ', 2543, '16-Jan-2025', 'pending'),
(15, 2, 'fdgfdg', '7567', 'gfxgdf@fset.ytyt', 'cash on delivery', '45345', ', Razer DeathAdder V3 Pro (23) ', 58489, '16-Jan-2025', 'pending'),
(16, 2, 'www', '232323', 'cdcdcds@dede', 'cash on delivery', '123', ', Razer DeathAdder V3 Pro (1) ', 2543, '16-Jan-2025', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category`) VALUES
(14, 'Razer Basilisk V3', 2445, 'Razer_Basilisk_V3-removebg-preview.png', 'Mouse'),
(15, 'Razer DeathAdder V3 Pro', 2543, 'Razer_DeathAdder_V3_Pro-removebg-preview.png', 'Mouse'),
(16, 'Corsair Katar Pro XT', 3245, 'Corsair_Katar_Pro_XT-removebg-preview.png', 'Mouse'),
(17, 'Redragon M686 Vampire Elite', 5463, 'Redragon_M686_Vampire_Elite-removebg-preview.png', 'Mouse'),
(18, 'Logitech G502 X Plus', 6546, 'Logitech_G502_X_Plus-removebg-preview.png', 'Mouse'),
(19, 'ASUS ROG Strix Scope (Black)', 7700, 'ASUS_ROG_Strix_Scope_II_96_Wireless_Gaming_Keyboard__Black_-removebg-preview.png', 'Keyboard'),
(20, 'asus rog azoth', 13450, 'Screenshot_2024-10-23_065630-removebg-preview.png', 'Keyboard'),
(21, 'Logitech G733 Lightspeed ', 9125, 'logitech-g733-lightspeed-wireless-gaming-headset-4-removebg-preview.png', 'Headset'),
(22, 'LENOVO 27\" R27Q-30 Legion', 13800, 'ASUS_ROG_Strix_Scope_II_96_Wireless_Gaming_Keyboard__Black_-removebg-preview-removebg-preview.png', 'Monitor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'admin', 'admin@ad.min', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'user', 'user@u.ser', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(5, 'userr', 'user@u.serr', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(6, 'Win', 'win@win', '0b08bd98d279b88859b628cd8c061ae0', 'user'),
(7, 'Win2', 'win2@win2', '75240c038beb3bf51802933ca3c12baf', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `ovps`
--
CREATE DATABASE IF NOT EXISTS `ovps` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ovps`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admission`
--

CREATE TABLE `tbl_admission` (
  `id` int(11) NOT NULL,
  `orphan_id` varchar(100) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `registered_date` date DEFAULT NULL,
  `referrer` varchar(100) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `houseparent` varchar(100) DEFAULT NULL,
  `social_worker` varchar(100) DEFAULT NULL,
  `s_worker` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `timex` time DEFAULT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admission`
--

INSERT INTO `tbl_admission` (`id`, `orphan_id`, `firstname`, `middlename`, `lastname`, `registered_date`, `referrer`, `birthdate`, `age`, `address`, `houseparent`, `social_worker`, `s_worker`, `director`, `timex`, `parent`, `statuss`) VALUES
(1, NULL, 'Mikasa', 'Simp', 'Ackerman', NULL, 'Eren Jaeger', '2000-01-13', 22, 'Tokyo, Japan', 'Carla Ackerman', 'Levi Ackerman', NULL, 'Isayama', NULL, 'Basta Ackerman', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archive`
--

CREATE TABLE `tbl_archive` (
  `arc_id` int(11) NOT NULL,
  `orphan_id` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orphan_type` varchar(20) DEFAULT NULL,
  `or_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `fage` int(10) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `mage` int(10) DEFAULT NULL,
  `referrer` varchar(100) DEFAULT NULL,
  `houseparent` varchar(100) DEFAULT NULL,
  `social_worker` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_archive`
--

INSERT INTO `tbl_archive` (`arc_id`, `orphan_id`, `picture`, `firstname`, `middlename`, `lastname`, `nickname`, `birthplace`, `birthdate`, `age`, `statuss`, `nationality`, `gender`, `purok`, `address`, `orphan_type`, `or_type`, `remarks`, `date`, `father`, `fage`, `mother`, `mage`, `referrer`, `houseparent`, `social_worker`, `director`, `guardian`, `civil_status`, `religion`) VALUES
(5, '785L3KA', '130220221243531.png', 'Rachel', 'Rovillos', 'Aquino', '', 'Polong, Bugallon, Pangasinan', '2006-01-17', 16, '', 'FIlipino', 'Female', 'Purok 1', 'Salomague Norte, Bugallon, Pangasinan', 'Indigent', 1, '', '2022-01-03', 'Juan Aquino', 55, 'Anna Aquino', 54, '', '', '', '', '', 'ss', 'ss'),
(6, 'Filipino', '130220221245362.png', 'Raineir', 'Terbio', 'Mendoza', 'Rain', 'Alaminos', '2004-Feb-05', 18, '', 'CJFZPEI', 'Male', '', 'Bugallon, Pangasinan', 'Indigent', 1, '', '2022-02-13', 'Juan Mendoza', 50, 'Anna Mendoza', 50, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chcofficials`
--

CREATE TABLE `tbl_chcofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `taskmanager` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chcofficials`
--

INSERT INTO `tbl_chcofficials` (`id`, `name`, `taskmanager`, `position`, `termstart`, `termend`, `status`) VALUES
(9, 'dddd', '4', '1', '2021-09-08', '2021-12-03', 'Active'),
(10, 'ss', '4', '1', '2021-09-01', '2022-02-04', 'Active'),
(11, 'dsasa', '4', '2', '2021-11-30', '2022-03-08', 'Active'),
(12, 'sss', '4', '1', '2021-12-10', '2022-03-10', 'Active'),
(13, 'wwww', '4', '1', '2021-11-29', '2021-12-01', 'Active'),
(14, 'ADik Sau', '7', '1', '2021-12-01', '2021-12-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chcposition`
--

CREATE TABLE `tbl_chcposition` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chcposition`
--

INSERT INTO `tbl_chcposition` (`id`, `position`, `order`) VALUES
(1, 'CHC Director', 1),
(2, 'CHC Social Worker', 2),
(3, 'CHC Houseparent', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cofficials`
--

CREATE TABLE `tbl_cofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `chc_position` varchar(50) DEFAULT NULL,
  `taskmanager` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cofficials`
--

INSERT INTO `tbl_cofficials` (`id`, `name`, `chc_position`, `taskmanager`, `termstart`, `termend`, `status`) VALUES
(5, 'Atty. Junas T. Sagurit', '1', '7', '2021-09-08', NULL, NULL),
(6, 'Cyrill Grace M. Alipio, RSW', '2', '7', '2021-09-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orphan`
--

CREATE TABLE `tbl_orphan` (
  `id` int(11) NOT NULL,
  `orphan_id` varchar(20) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orphan_type` varchar(20) DEFAULT NULL,
  `or_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `date` date NOT NULL,
  `father` varchar(20) DEFAULT NULL,
  `fage` int(10) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mage` int(10) DEFAULT NULL,
  `referrer` varchar(50) DEFAULT NULL,
  `houseparent` varchar(50) DEFAULT NULL,
  `social_worker` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `guardian` varchar(50) DEFAULT NULL,
  `civil_status` text DEFAULT NULL,
  `religion` text DEFAULT NULL,
  `rel1` text DEFAULT NULL,
  `edu1` text DEFAULT NULL,
  `oc1` text DEFAULT NULL,
  `rel2` text DEFAULT NULL,
  `edu2` text DEFAULT NULL,
  `oc2` text DEFAULT NULL,
  `fam3` text DEFAULT NULL,
  `rel3` text DEFAULT NULL,
  `age3` text DEFAULT NULL,
  `edu3` text DEFAULT NULL,
  `oc3` text DEFAULT NULL,
  `fam4` text DEFAULT NULL,
  `rel4` text DEFAULT NULL,
  `age4` text DEFAULT NULL,
  `edu4` text DEFAULT NULL,
  `oc4` text DEFAULT NULL,
  `fam5` text DEFAULT NULL,
  `rel5` text DEFAULT NULL,
  `age5` text DEFAULT NULL,
  `edu5` text DEFAULT NULL,
  `oc5` text DEFAULT NULL,
  `fam6` text DEFAULT NULL,
  `rel6` text DEFAULT NULL,
  `age6` text NOT NULL,
  `edu6` text DEFAULT NULL,
  `oc6` text DEFAULT NULL,
  `fam7` text DEFAULT NULL,
  `rel7` text DEFAULT NULL,
  `age7` text DEFAULT NULL,
  `edu7` text DEFAULT NULL,
  `oc7` text DEFAULT NULL,
  `fam8` text DEFAULT NULL,
  `rel8` text DEFAULT NULL,
  `age8` text DEFAULT NULL,
  `edu8` text DEFAULT NULL,
  `oc8` text DEFAULT NULL,
  `fam9` text DEFAULT NULL,
  `rel9` text DEFAULT NULL,
  `age9` text DEFAULT NULL,
  `edu9` text DEFAULT NULL,
  `oc9` text DEFAULT NULL,
  `toothbrush1` text DEFAULT NULL,
  `toothbrush2` text DEFAULT NULL,
  `toothbrush3` text DEFAULT NULL,
  `toothbrush4` text DEFAULT NULL,
  `toothbrush5` text DEFAULT NULL,
  `toothpaste1` text DEFAULT NULL,
  `toothpaste2` text DEFAULT NULL,
  `toothpaste3` text DEFAULT NULL,
  `toothpaste4` text DEFAULT NULL,
  `toothpaste5` text DEFAULT NULL,
  `shampoo1` text DEFAULT NULL,
  `shampoo2` text DEFAULT NULL,
  `shampoo3` text DEFAULT NULL,
  `shampoo4` text DEFAULT NULL,
  `shampoo5` text DEFAULT NULL,
  `soap1` text DEFAULT NULL,
  `soap2` text DEFAULT NULL,
  `soap3` text DEFAULT NULL,
  `soap4` text DEFAULT NULL,
  `soap5` text DEFAULT NULL,
  `oil1` text DEFAULT NULL,
  `oil2` text DEFAULT NULL,
  `oil3` text DEFAULT NULL,
  `oil4` text DEFAULT NULL,
  `oil5` text DEFAULT NULL,
  `powder1` text DEFAULT NULL,
  `powder2` text DEFAULT NULL,
  `powder3` text DEFAULT NULL,
  `powder4` text DEFAULT NULL,
  `powder5` text DEFAULT NULL,
  `deo1` text DEFAULT NULL,
  `deo2` text DEFAULT NULL,
  `deo3` text DEFAULT NULL,
  `deo4` text DEFAULT NULL,
  `deo5` text DEFAULT NULL,
  `napkin1` text DEFAULT NULL,
  `napkin2` text DEFAULT NULL,
  `napkin3` text DEFAULT NULL,
  `napkin4` text DEFAULT NULL,
  `napkin5` text DEFAULT NULL,
  `lotion1` text DEFAULT NULL,
  `lotion2` text DEFAULT NULL,
  `lotion3` text DEFAULT NULL,
  `lotion4` text DEFAULT NULL,
  `lotion5` text DEFAULT NULL,
  `cologne1` text DEFAULT NULL,
  `cologne2` text DEFAULT NULL,
  `cologne3` text DEFAULT NULL,
  `cologne4` text DEFAULT NULL,
  `cologne5` text DEFAULT NULL,
  `behave1` text DEFAULT NULL,
  `behave2` text DEFAULT NULL,
  `behave3` text DEFAULT NULL,
  `behave4` text DEFAULT NULL,
  `inter1` text DEFAULT NULL,
  `inter2` text DEFAULT NULL,
  `inter3` text DEFAULT NULL,
  `inter4` text DEFAULT NULL,
  `person1` text DEFAULT NULL,
  `person2` text DEFAULT NULL,
  `person3` text DEFAULT NULL,
  `person4` text DEFAULT NULL,
  `prog1` text DEFAULT NULL,
  `prog2` text DEFAULT NULL,
  `prog3` text DEFAULT NULL,
  `prog4` text DEFAULT NULL,
  `remarks1` text DEFAULT NULL,
  `remarks2` text DEFAULT NULL,
  `remarks3` text DEFAULT NULL,
  `remarks4` text DEFAULT NULL,
  `brush1` text DEFAULT NULL,
  `brush2` text DEFAULT NULL,
  `brush3` text DEFAULT NULL,
  `brush4` text DEFAULT NULL,
  `brush5` text DEFAULT NULL,
  `brush6` text DEFAULT NULL,
  `brush7` text DEFAULT NULL,
  `brush8` text DEFAULT NULL,
  `brush9` text DEFAULT NULL,
  `brush10` text DEFAULT NULL,
  `brush11` text DEFAULT NULL,
  `brush12` text DEFAULT NULL,
  `paste1` text DEFAULT NULL,
  `paste2` text DEFAULT NULL,
  `paste3` text DEFAULT NULL,
  `paste4` text DEFAULT NULL,
  `paste5` text DEFAULT NULL,
  `paste6` text DEFAULT NULL,
  `paste7` text DEFAULT NULL,
  `paste8` text DEFAULT NULL,
  `paste9` text DEFAULT NULL,
  `paste10` text DEFAULT NULL,
  `paste11` text DEFAULT NULL,
  `paste12` text DEFAULT NULL,
  `poo1` text DEFAULT NULL,
  `poo2` text DEFAULT NULL,
  `poo3` text DEFAULT NULL,
  `poo4` text DEFAULT NULL,
  `poo5` text DEFAULT NULL,
  `poo6` text DEFAULT NULL,
  `poo7` text DEFAULT NULL,
  `poo8` text DEFAULT NULL,
  `poo9` text DEFAULT NULL,
  `poo10` text DEFAULT NULL,
  `poo11` text DEFAULT NULL,
  `poo12` text DEFAULT NULL,
  `sop1` text DEFAULT NULL,
  `sop2` text DEFAULT NULL,
  `sop3` text DEFAULT NULL,
  `sop4` text DEFAULT NULL,
  `sop5` text DEFAULT NULL,
  `sop6` text DEFAULT NULL,
  `sop7` text DEFAULT NULL,
  `sop8` text DEFAULT NULL,
  `sop9` text DEFAULT NULL,
  `sop10` text DEFAULT NULL,
  `sop11` text DEFAULT NULL,
  `sop12` text DEFAULT NULL,
  `oi1` text DEFAULT NULL,
  `oi2` text DEFAULT NULL,
  `oi3` text DEFAULT NULL,
  `oi4` text DEFAULT NULL,
  `oi5` text DEFAULT NULL,
  `oi6` text DEFAULT NULL,
  `oi7` text DEFAULT NULL,
  `oi8` text DEFAULT NULL,
  `oi9` text DEFAULT NULL,
  `oi10` text DEFAULT NULL,
  `oi11` text DEFAULT NULL,
  `oi12` text DEFAULT NULL,
  `pow1` text DEFAULT NULL,
  `pow2` text DEFAULT NULL,
  `pow3` text DEFAULT NULL,
  `pow4` text DEFAULT NULL,
  `pow5` text DEFAULT NULL,
  `pow6` text DEFAULT NULL,
  `pow7` text DEFAULT NULL,
  `pow8` text DEFAULT NULL,
  `pow9` text DEFAULT NULL,
  `pow10` text DEFAULT NULL,
  `pow11` text DEFAULT NULL,
  `pow12` text DEFAULT NULL,
  `rant1` text DEFAULT NULL,
  `rant2` text DEFAULT NULL,
  `rant3` text DEFAULT NULL,
  `rant4` text DEFAULT NULL,
  `rant5` text DEFAULT NULL,
  `rant6` text DEFAULT NULL,
  `rant7` text DEFAULT NULL,
  `rant8` text DEFAULT NULL,
  `rant9` text DEFAULT NULL,
  `rant10` text DEFAULT NULL,
  `rant11` text DEFAULT NULL,
  `rant12` text DEFAULT NULL,
  `kin1` text DEFAULT NULL,
  `kin2` text DEFAULT NULL,
  `kin3` text DEFAULT NULL,
  `kin4` text DEFAULT NULL,
  `kin5` text DEFAULT NULL,
  `kin6` text DEFAULT NULL,
  `kin7` text DEFAULT NULL,
  `kin8` text DEFAULT NULL,
  `kin9` text DEFAULT NULL,
  `kin10` text DEFAULT NULL,
  `kin11` text DEFAULT NULL,
  `kin12` text DEFAULT NULL,
  `tion1` text DEFAULT NULL,
  `tion2` text DEFAULT NULL,
  `tion3` text DEFAULT NULL,
  `tion4` text DEFAULT NULL,
  `tion5` text DEFAULT NULL,
  `tion6` text DEFAULT NULL,
  `tion7` text DEFAULT NULL,
  `tion8` text DEFAULT NULL,
  `tion9` text DEFAULT NULL,
  `tion10` text DEFAULT NULL,
  `tion11` text DEFAULT NULL,
  `tion12` text DEFAULT NULL,
  `col1` text DEFAULT NULL,
  `col2` text DEFAULT NULL,
  `col3` text DEFAULT NULL,
  `col4` text DEFAULT NULL,
  `col5` text DEFAULT NULL,
  `col6` text DEFAULT NULL,
  `col7` text DEFAULT NULL,
  `col8` text DEFAULT NULL,
  `col9` text DEFAULT NULL,
  `col10` text DEFAULT NULL,
  `col11` text DEFAULT NULL,
  `col12` text DEFAULT NULL,
  `gel1` text DEFAULT NULL,
  `gel2` text DEFAULT NULL,
  `gel3` text DEFAULT NULL,
  `gel4` text DEFAULT NULL,
  `gel5` text DEFAULT NULL,
  `gel6` text DEFAULT NULL,
  `gel7` text DEFAULT NULL,
  `gel8` text DEFAULT NULL,
  `gel9` text DEFAULT NULL,
  `gel10` text DEFAULT NULL,
  `gel11` text DEFAULT NULL,
  `gel12` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orphan`
--

INSERT INTO `tbl_orphan` (`id`, `orphan_id`, `picture`, `firstname`, `middlename`, `lastname`, `nickname`, `birthplace`, `birthdate`, `age`, `statuss`, `nationality`, `gender`, `purok`, `address`, `orphan_type`, `or_type`, `remarks`, `date`, `father`, `fage`, `mother`, `mage`, `referrer`, `houseparent`, `social_worker`, `director`, `guardian`, `civil_status`, `religion`, `rel1`, `edu1`, `oc1`, `rel2`, `edu2`, `oc2`, `fam3`, `rel3`, `age3`, `edu3`, `oc3`, `fam4`, `rel4`, `age4`, `edu4`, `oc4`, `fam5`, `rel5`, `age5`, `edu5`, `oc5`, `fam6`, `rel6`, `age6`, `edu6`, `oc6`, `fam7`, `rel7`, `age7`, `edu7`, `oc7`, `fam8`, `rel8`, `age8`, `edu8`, `oc8`, `fam9`, `rel9`, `age9`, `edu9`, `oc9`, `toothbrush1`, `toothbrush2`, `toothbrush3`, `toothbrush4`, `toothbrush5`, `toothpaste1`, `toothpaste2`, `toothpaste3`, `toothpaste4`, `toothpaste5`, `shampoo1`, `shampoo2`, `shampoo3`, `shampoo4`, `shampoo5`, `soap1`, `soap2`, `soap3`, `soap4`, `soap5`, `oil1`, `oil2`, `oil3`, `oil4`, `oil5`, `powder1`, `powder2`, `powder3`, `powder4`, `powder5`, `deo1`, `deo2`, `deo3`, `deo4`, `deo5`, `napkin1`, `napkin2`, `napkin3`, `napkin4`, `napkin5`, `lotion1`, `lotion2`, `lotion3`, `lotion4`, `lotion5`, `cologne1`, `cologne2`, `cologne3`, `cologne4`, `cologne5`, `behave1`, `behave2`, `behave3`, `behave4`, `inter1`, `inter2`, `inter3`, `inter4`, `person1`, `person2`, `person3`, `person4`, `prog1`, `prog2`, `prog3`, `prog4`, `remarks1`, `remarks2`, `remarks3`, `remarks4`, `brush1`, `brush2`, `brush3`, `brush4`, `brush5`, `brush6`, `brush7`, `brush8`, `brush9`, `brush10`, `brush11`, `brush12`, `paste1`, `paste2`, `paste3`, `paste4`, `paste5`, `paste6`, `paste7`, `paste8`, `paste9`, `paste10`, `paste11`, `paste12`, `poo1`, `poo2`, `poo3`, `poo4`, `poo5`, `poo6`, `poo7`, `poo8`, `poo9`, `poo10`, `poo11`, `poo12`, `sop1`, `sop2`, `sop3`, `sop4`, `sop5`, `sop6`, `sop7`, `sop8`, `sop9`, `sop10`, `sop11`, `sop12`, `oi1`, `oi2`, `oi3`, `oi4`, `oi5`, `oi6`, `oi7`, `oi8`, `oi9`, `oi10`, `oi11`, `oi12`, `pow1`, `pow2`, `pow3`, `pow4`, `pow5`, `pow6`, `pow7`, `pow8`, `pow9`, `pow10`, `pow11`, `pow12`, `rant1`, `rant2`, `rant3`, `rant4`, `rant5`, `rant6`, `rant7`, `rant8`, `rant9`, `rant10`, `rant11`, `rant12`, `kin1`, `kin2`, `kin3`, `kin4`, `kin5`, `kin6`, `kin7`, `kin8`, `kin9`, `kin10`, `kin11`, `kin12`, `tion1`, `tion2`, `tion3`, `tion4`, `tion5`, `tion6`, `tion7`, `tion8`, `tion9`, `tion10`, `tion11`, `tion12`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `col9`, `col10`, `col11`, `col12`, `gel1`, `gel2`, `gel3`, `gel4`, `gel5`, `gel6`, `gel7`, `gel8`, `gel9`, `gel10`, `gel11`, `gel12`) VALUES
(53, 'UXTHM0E', '130220221324201.png', 'Rachel', 'Rovillos', 'Aquino', 'Shane', 'Lingayen', '2004-Feb-10', 18, NULL, 'Filipino', 'Female', '', 'Salomague', 'Indigent', 1, '', '2022-02-13', 'Juan Aquino', 50, 'Anna Aquino', 50, 'dsd', 'sds', 'sdsd', 'dsds', 'sdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '189RO0Q', '130220221342142.png', 'Rainier', 'Terbio', 'Mendoza', 'Rain', 'Alaminos', '2008-Feb-14', 14, NULL, 'Filipino', 'Male', '', 'Bugallon Pangasinan', 'Abandoned', 1, '', '2022-02-13', 'Juan Mendoza', 50, 'Anna Mendoza', 50, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orphanage_info`
--

CREATE TABLE `tbl_orphanage_info` (
  `id` int(11) NOT NULL,
  `o_name` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `logo1` varchar(200) NOT NULL,
  `logo2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orphanage_info`
--

INSERT INTO `tbl_orphanage_info` (`id`, `o_name`, `province`, `town`, `brgy_name`, `number`, `text1`, `text2`, `image`, `logo1`, `logo2`) VALUES
(1, 'Christ\'s Happy Childhaven, Inc.', 'Pangasinan', 'Bugallon', 'Salomague Sur', '159', '1. To provide a good Christian home environment for orphans, abandoned, neglected & indigent children.\r\n                                                                                                                                                                                                                                                                                             \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n           \r\n2. To provide an opportunity for Christians to practice pure and undefiled religion 3. To enable the children to have a home of their own where they\r\n\r\nare loved, respected and educated.\r\n\r\n4. To give an opportunity of children to be safe, secured and to be\r\n\r\nsuccessful in life and to become Christians and go to Heaven the\r\n\r\nhome of the soul.\r\n', 'To provide a dual opportunity: Firstly, to provide a good Christian home environment for orphaned, totally abandoned, and totally neglected children; Secondly, to provide an opportunity for Christians to practice pure and undefiled religion (James 1:27).', '26092021224131logo.jpeg.jpeg', '23102021221821logo.1.png', '13022022124016logo1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purok`
--

CREATE TABLE `tbl_purok` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_purok`
--

INSERT INTO `tbl_purok` (`id`, `name`, `details`) VALUES
(1, 'Purok 1', 'ddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `organization` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taskmanager`
--

CREATE TABLE `tbl_taskmanager` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taskmanager`
--

INSERT INTO `tbl_taskmanager` (`id`, `title`) VALUES
(4, 'CHC Administrator'),
(7, 'CHC Official');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `avatar`, `created_at`) VALUES
(4, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '26092021221949TWICE-Mina-princess-last.jpg', '2021-09-26 20:19:49'),
(5, 'admin1', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '2609202122210126092021220925e96237362365163a3214a7e51c7985cc4339ee6ev2_hq.jpg', '2021-09-26 20:21:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  ADD PRIMARY KEY (`arc_id`);

--
-- Indexes for table `tbl_chcofficials`
--
ALTER TABLE `tbl_chcofficials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chcposition`
--
ALTER TABLE `tbl_chcposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cofficials`
--
ALTER TABLE `tbl_cofficials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orphan`
--
ALTER TABLE `tbl_orphan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orphanage_info`
--
ALTER TABLE `tbl_orphanage_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purok`
--
ALTER TABLE `tbl_purok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_taskmanager`
--
ALTER TABLE `tbl_taskmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  MODIFY `arc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_chcofficials`
--
ALTER TABLE `tbl_chcofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_chcposition`
--
ALTER TABLE `tbl_chcposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cofficials`
--
ALTER TABLE `tbl_cofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_orphan`
--
ALTER TABLE `tbl_orphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_orphanage_info`
--
ALTER TABLE `tbl_orphanage_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_purok`
--
ALTER TABLE `tbl_purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_taskmanager`
--
ALTER TABLE `tbl_taskmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ovpshost_ovps`
--
CREATE DATABASE IF NOT EXISTS `ovpshost_ovps` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ovpshost_ovps`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admission`
--

CREATE TABLE `tbl_admission` (
  `id` int(11) NOT NULL,
  `orphan_id` varchar(100) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `registered_date` date DEFAULT NULL,
  `referrer` varchar(100) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `houseparent` varchar(100) DEFAULT NULL,
  `social_worker` varchar(100) DEFAULT NULL,
  `s_worker` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `timex` time DEFAULT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admission`
--

INSERT INTO `tbl_admission` (`id`, `orphan_id`, `firstname`, `middlename`, `lastname`, `registered_date`, `referrer`, `birthdate`, `age`, `address`, `houseparent`, `social_worker`, `s_worker`, `director`, `timex`, `parent`, `statuss`) VALUES
(1, NULL, 'Mikasa', 'Simp', 'Ackerman', NULL, 'Eren Jaeger', '2000-01-13', 22, 'Tokyo, Japan', 'Carla Ackerman', 'Levi Ackerman', NULL, 'Isayama', NULL, 'Basta Ackerman', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archive`
--

CREATE TABLE `tbl_archive` (
  `arc_id` int(11) NOT NULL,
  `orphan_id` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orphan_type` varchar(20) DEFAULT NULL,
  `or_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `fage` int(10) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `mage` int(10) DEFAULT NULL,
  `referrer` varchar(100) DEFAULT NULL,
  `houseparent` varchar(100) DEFAULT NULL,
  `social_worker` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chcofficials`
--

CREATE TABLE `tbl_chcofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `taskmanager` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chcofficials`
--

INSERT INTO `tbl_chcofficials` (`id`, `name`, `taskmanager`, `position`, `termstart`, `termend`, `status`) VALUES
(10, 'ss', '4', '1', '2021-09-01', '2022-02-04', 'Active'),
(11, 'dsasa', '4', '2', '2021-11-30', '2022-03-08', 'Active'),
(12, 'sss', '4', '1', '2021-12-10', '2022-03-10', 'Active'),
(13, 'wwww', '4', '1', '2021-11-29', '2021-12-01', 'Active'),
(14, 'ADik Sau', '7', '1', '2021-12-01', '2021-12-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chcposition`
--

CREATE TABLE `tbl_chcposition` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chcposition`
--

INSERT INTO `tbl_chcposition` (`id`, `position`, `order`) VALUES
(1, 'CHC Director', 1),
(2, 'CHC Social Worker', 2),
(3, 'CHC Houseparent', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cofficials`
--

CREATE TABLE `tbl_cofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `chc_position` varchar(50) DEFAULT NULL,
  `taskmanager` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orphan`
--

CREATE TABLE `tbl_orphan` (
  `id` int(11) NOT NULL,
  `orphan_id` varchar(20) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orphan_type` varchar(20) DEFAULT NULL,
  `or_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `date` date NOT NULL,
  `father` varchar(20) DEFAULT NULL,
  `fage` int(10) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mage` int(10) DEFAULT NULL,
  `referrer` varchar(50) DEFAULT NULL,
  `houseparent` varchar(50) DEFAULT NULL,
  `social_worker` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `guardian` varchar(50) DEFAULT NULL,
  `civil_status` text DEFAULT NULL,
  `religion` text DEFAULT NULL,
  `rel1` text DEFAULT NULL,
  `edu1` text DEFAULT NULL,
  `oc1` text DEFAULT NULL,
  `rel2` text DEFAULT NULL,
  `edu2` text DEFAULT NULL,
  `oc2` text DEFAULT NULL,
  `fam3` text DEFAULT NULL,
  `rel3` text DEFAULT NULL,
  `age3` text DEFAULT NULL,
  `edu3` text DEFAULT NULL,
  `oc3` text DEFAULT NULL,
  `fam4` text DEFAULT NULL,
  `rel4` text DEFAULT NULL,
  `age4` text DEFAULT NULL,
  `edu4` text DEFAULT NULL,
  `oc4` text DEFAULT NULL,
  `fam5` text DEFAULT NULL,
  `rel5` text DEFAULT NULL,
  `age5` text DEFAULT NULL,
  `edu5` text DEFAULT NULL,
  `oc5` text DEFAULT NULL,
  `fam6` text DEFAULT NULL,
  `rel6` text DEFAULT NULL,
  `age6` text NOT NULL,
  `edu6` text DEFAULT NULL,
  `oc6` text DEFAULT NULL,
  `fam7` text DEFAULT NULL,
  `rel7` text DEFAULT NULL,
  `age7` text DEFAULT NULL,
  `edu7` text DEFAULT NULL,
  `oc7` text DEFAULT NULL,
  `fam8` text DEFAULT NULL,
  `rel8` text DEFAULT NULL,
  `age8` text DEFAULT NULL,
  `edu8` text DEFAULT NULL,
  `oc8` text DEFAULT NULL,
  `fam9` text DEFAULT NULL,
  `rel9` text DEFAULT NULL,
  `age9` text DEFAULT NULL,
  `edu9` text DEFAULT NULL,
  `oc9` text DEFAULT NULL,
  `toothbrush1` text DEFAULT NULL,
  `toothbrush2` text DEFAULT NULL,
  `toothbrush3` text DEFAULT NULL,
  `toothbrush4` text DEFAULT NULL,
  `toothbrush5` text DEFAULT NULL,
  `toothpaste1` text DEFAULT NULL,
  `toothpaste2` text DEFAULT NULL,
  `toothpaste3` text DEFAULT NULL,
  `toothpaste4` text DEFAULT NULL,
  `toothpaste5` text DEFAULT NULL,
  `shampoo1` text DEFAULT NULL,
  `shampoo2` text DEFAULT NULL,
  `shampoo3` text DEFAULT NULL,
  `shampoo4` text DEFAULT NULL,
  `shampoo5` text DEFAULT NULL,
  `soap1` text DEFAULT NULL,
  `soap2` text DEFAULT NULL,
  `soap3` text DEFAULT NULL,
  `soap4` text DEFAULT NULL,
  `soap5` text DEFAULT NULL,
  `oil1` text DEFAULT NULL,
  `oil2` text DEFAULT NULL,
  `oil3` text DEFAULT NULL,
  `oil4` text DEFAULT NULL,
  `oil5` text DEFAULT NULL,
  `powder1` text DEFAULT NULL,
  `powder2` text DEFAULT NULL,
  `powder3` text DEFAULT NULL,
  `powder4` text DEFAULT NULL,
  `powder5` text DEFAULT NULL,
  `deo1` text DEFAULT NULL,
  `deo2` text DEFAULT NULL,
  `deo3` text DEFAULT NULL,
  `deo4` text DEFAULT NULL,
  `deo5` text DEFAULT NULL,
  `napkin1` text DEFAULT NULL,
  `napkin2` text DEFAULT NULL,
  `napkin3` text DEFAULT NULL,
  `napkin4` text DEFAULT NULL,
  `napkin5` text DEFAULT NULL,
  `lotion1` text DEFAULT NULL,
  `lotion2` text DEFAULT NULL,
  `lotion3` text DEFAULT NULL,
  `lotion4` text DEFAULT NULL,
  `lotion5` text DEFAULT NULL,
  `cologne1` text DEFAULT NULL,
  `cologne2` text DEFAULT NULL,
  `cologne3` text DEFAULT NULL,
  `cologne4` text DEFAULT NULL,
  `cologne5` text DEFAULT NULL,
  `behave1` text DEFAULT NULL,
  `behave2` text DEFAULT NULL,
  `behave3` text DEFAULT NULL,
  `behave4` text DEFAULT NULL,
  `inter1` text DEFAULT NULL,
  `inter2` text DEFAULT NULL,
  `inter3` text DEFAULT NULL,
  `inter4` text DEFAULT NULL,
  `person1` text DEFAULT NULL,
  `person2` text DEFAULT NULL,
  `person3` text DEFAULT NULL,
  `person4` text DEFAULT NULL,
  `prog1` text DEFAULT NULL,
  `prog2` text DEFAULT NULL,
  `prog3` text DEFAULT NULL,
  `prog4` text DEFAULT NULL,
  `remarks1` text DEFAULT NULL,
  `remarks2` text DEFAULT NULL,
  `remarks3` text DEFAULT NULL,
  `remarks4` text DEFAULT NULL,
  `brush1` text DEFAULT NULL,
  `brush2` text DEFAULT NULL,
  `brush3` text DEFAULT NULL,
  `brush4` text DEFAULT NULL,
  `brush5` text DEFAULT NULL,
  `brush6` text DEFAULT NULL,
  `brush7` text DEFAULT NULL,
  `brush8` text DEFAULT NULL,
  `brush9` text DEFAULT NULL,
  `brush10` text DEFAULT NULL,
  `brush11` text DEFAULT NULL,
  `brush12` text DEFAULT NULL,
  `paste1` text DEFAULT NULL,
  `paste2` text DEFAULT NULL,
  `paste3` text DEFAULT NULL,
  `paste4` text DEFAULT NULL,
  `paste5` text DEFAULT NULL,
  `paste6` text DEFAULT NULL,
  `paste7` text DEFAULT NULL,
  `paste8` text DEFAULT NULL,
  `paste9` text DEFAULT NULL,
  `paste10` text DEFAULT NULL,
  `paste11` text DEFAULT NULL,
  `paste12` text DEFAULT NULL,
  `poo1` text DEFAULT NULL,
  `poo2` text DEFAULT NULL,
  `poo3` text DEFAULT NULL,
  `poo4` text DEFAULT NULL,
  `poo5` text DEFAULT NULL,
  `poo6` text DEFAULT NULL,
  `poo7` text DEFAULT NULL,
  `poo8` text DEFAULT NULL,
  `poo9` text DEFAULT NULL,
  `poo10` text DEFAULT NULL,
  `poo11` text DEFAULT NULL,
  `poo12` text DEFAULT NULL,
  `sop1` text DEFAULT NULL,
  `sop2` text DEFAULT NULL,
  `sop3` text DEFAULT NULL,
  `sop4` text DEFAULT NULL,
  `sop5` text DEFAULT NULL,
  `sop6` text DEFAULT NULL,
  `sop7` text DEFAULT NULL,
  `sop8` text DEFAULT NULL,
  `sop9` text DEFAULT NULL,
  `sop10` text DEFAULT NULL,
  `sop11` text DEFAULT NULL,
  `sop12` text DEFAULT NULL,
  `oi1` text DEFAULT NULL,
  `oi2` text DEFAULT NULL,
  `oi3` text DEFAULT NULL,
  `oi4` text DEFAULT NULL,
  `oi5` text DEFAULT NULL,
  `oi6` text DEFAULT NULL,
  `oi7` text DEFAULT NULL,
  `oi8` text DEFAULT NULL,
  `oi9` text DEFAULT NULL,
  `oi10` text DEFAULT NULL,
  `oi11` text DEFAULT NULL,
  `oi12` text DEFAULT NULL,
  `pow1` text DEFAULT NULL,
  `pow2` text DEFAULT NULL,
  `pow3` text DEFAULT NULL,
  `pow4` text DEFAULT NULL,
  `pow5` text DEFAULT NULL,
  `pow6` text DEFAULT NULL,
  `pow7` text DEFAULT NULL,
  `pow8` text DEFAULT NULL,
  `pow9` text DEFAULT NULL,
  `pow10` text DEFAULT NULL,
  `pow11` text DEFAULT NULL,
  `pow12` text DEFAULT NULL,
  `rant1` text DEFAULT NULL,
  `rant2` text DEFAULT NULL,
  `rant3` text DEFAULT NULL,
  `rant4` text DEFAULT NULL,
  `rant5` text DEFAULT NULL,
  `rant6` text DEFAULT NULL,
  `rant7` text DEFAULT NULL,
  `rant8` text DEFAULT NULL,
  `rant9` text DEFAULT NULL,
  `rant10` text DEFAULT NULL,
  `rant11` text DEFAULT NULL,
  `rant12` text DEFAULT NULL,
  `kin1` text DEFAULT NULL,
  `kin2` text DEFAULT NULL,
  `kin3` text DEFAULT NULL,
  `kin4` text DEFAULT NULL,
  `kin5` text DEFAULT NULL,
  `kin6` text DEFAULT NULL,
  `kin7` text DEFAULT NULL,
  `kin8` text DEFAULT NULL,
  `kin9` text DEFAULT NULL,
  `kin10` text DEFAULT NULL,
  `kin11` text DEFAULT NULL,
  `kin12` text DEFAULT NULL,
  `tion1` text DEFAULT NULL,
  `tion2` text DEFAULT NULL,
  `tion3` text DEFAULT NULL,
  `tion4` text DEFAULT NULL,
  `tion5` text DEFAULT NULL,
  `tion6` text DEFAULT NULL,
  `tion7` text DEFAULT NULL,
  `tion8` text DEFAULT NULL,
  `tion9` text DEFAULT NULL,
  `tion10` text DEFAULT NULL,
  `tion11` text DEFAULT NULL,
  `tion12` text DEFAULT NULL,
  `col1` text DEFAULT NULL,
  `col2` text DEFAULT NULL,
  `col3` text DEFAULT NULL,
  `col4` text DEFAULT NULL,
  `col5` text DEFAULT NULL,
  `col6` text DEFAULT NULL,
  `col7` text DEFAULT NULL,
  `col8` text DEFAULT NULL,
  `col9` text DEFAULT NULL,
  `col10` text DEFAULT NULL,
  `col11` text DEFAULT NULL,
  `col12` text DEFAULT NULL,
  `gel1` text DEFAULT NULL,
  `gel2` text DEFAULT NULL,
  `gel3` text DEFAULT NULL,
  `gel4` text DEFAULT NULL,
  `gel5` text DEFAULT NULL,
  `gel6` text DEFAULT NULL,
  `gel7` text DEFAULT NULL,
  `gel8` text DEFAULT NULL,
  `gel9` text DEFAULT NULL,
  `gel10` text DEFAULT NULL,
  `gel11` text DEFAULT NULL,
  `gel12` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orphanage_info`
--

CREATE TABLE `tbl_orphanage_info` (
  `id` int(11) NOT NULL,
  `o_name` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `logo1` varchar(200) NOT NULL,
  `logo2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orphanage_info`
--

INSERT INTO `tbl_orphanage_info` (`id`, `o_name`, `province`, `town`, `brgy_name`, `number`, `text1`, `text2`, `image`, `logo1`, `logo2`) VALUES
(1, 'Christ\'s Happy Childhaven, Inc.', 'Pangasinan', 'Bugallon', 'Salomague', '1594', '', '', '130220221537102018_09_07_53245_1536304041._large.jpg', '13022022164505logo1.png', '13022022164320logo1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purok`
--

CREATE TABLE `tbl_purok` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `organization` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`id`, `name`, `phone`, `email`, `organization`, `address`) VALUES
(17, 'Rachel Aquino', '09164295025', 'Tsyhtema.chel26@gmail.com', 'Psu', 'Lingayen '),
(18, 'Johnrey', '09055643912', 'tshrsrthrth@gamil.com', 'Kdkdk', 'Dk'),
(19, 'Rachel Aquino', '09164295025', 'tsyhtema.chel26@gmail.com', 'PSU', 'Lingayen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taskmanager`
--

CREATE TABLE `tbl_taskmanager` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taskmanager`
--

INSERT INTO `tbl_taskmanager` (`id`, `title`) VALUES
(4, 'CHC Administrator'),
(7, 'CHC Official');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `avatar`, `created_at`) VALUES
(4, 'adminovps', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '150220220055252048px-User_icon_2.svg.png', '2021-09-26 20:19:49'),
(5, 'admin1', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '2609202122210126092021220925e96237362365163a3214a7e51c7985cc4339ee6ev2_hq.jpg', '2021-09-26 20:21:01'),
(7, 'chcadmin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', NULL, '2022-02-14 04:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  ADD PRIMARY KEY (`arc_id`);

--
-- Indexes for table `tbl_chcofficials`
--
ALTER TABLE `tbl_chcofficials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chcposition`
--
ALTER TABLE `tbl_chcposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cofficials`
--
ALTER TABLE `tbl_cofficials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orphan`
--
ALTER TABLE `tbl_orphan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orphanage_info`
--
ALTER TABLE `tbl_orphanage_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purok`
--
ALTER TABLE `tbl_purok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_taskmanager`
--
ALTER TABLE `tbl_taskmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  MODIFY `arc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_chcofficials`
--
ALTER TABLE `tbl_chcofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_chcposition`
--
ALTER TABLE `tbl_chcposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cofficials`
--
ALTER TABLE `tbl_cofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_orphan`
--
ALTER TABLE `tbl_orphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tbl_orphanage_info`
--
ALTER TABLE `tbl_orphanage_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_purok`
--
ALTER TABLE `tbl_purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_taskmanager`
--
ALTER TABLE `tbl_taskmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"isdb\",\"table\":\"users\"},{\"db\":\"isdb\",\"table\":\"orders\"},{\"db\":\"isdb\",\"table\":\"products\"},{\"db\":\"isdb\",\"table\":\"cart\"},{\"db\":\"isdb\",\"table\":\"message\"},{\"db\":\"ovps\",\"table\":\"tbl_users\"},{\"db\":\"apsi\",\"table\":\"users\"},{\"db\":\"shopping\",\"table\":\"usertrackhistory\"},{\"db\":\"shopping\",\"table\":\"ordertrackhistory\"},{\"db\":\"shopping\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-01-23 14:50:36', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled`
--

CREATE TABLE `cancelled` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` bigint(100) NOT NULL,
  `quotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Glass', 'Best Glass', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Aluminum', 'Best Aluminum', '2017-01-24 19:19:32', '11-08-2022 03:16:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` int(100) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `fname`, `address`, `contact`, `status`, `image`) VALUES
(8, 'Test', 'test', 9924423684, 'ACTIVE', 'Screenshot (7).png'),
(9, 'employee ii', 'bacoor', 12212414124, 'ACTIVE', 'Screenshot (7).png');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` bigint(100) NOT NULL,
  `quotation` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `orderid`, `productname`, `description`, `name`, `address`, `contact`, `quotation`, `user_id`) VALUES
(33, 0, 'test', 'test', 'test', 'test', 1224241, 'test', 9),
(34, 0, 'Awning Window', 'testing', 'test', 'test', 12321321, 'test2', 8),
(35, 0, 'Awning Window', '3x3', 'test', 'test', 0, 'test', 10),
(36, 0, 'Awning Window', '4x4', 'test1', 'test1', 0, 'test1', 11),
(37, 0, 'Screen Window 3', '1x1', 'ian', 'demo', 0, 'demo', 12),
(38, 0, 'Screen Window 1', '5x5', 'test2', 'test2', 0, 'test2', 10),
(39, 0, 'Sliding Door 2', '4x4', 'test', 'test', 0, 'test', 13),
(40, 0, 'Swing Door', '6x6', 'test', 'test', 0, 'test', 1),
(41, 0, 'Screen Window 2', '7x7', 'test', 'test', 0, 'test', 14),
(42, 0, 'Sliding Window', '1x1', 'test', 'test', 0, 'test', 1),
(43, 0, 'Sliding Door 2', '3x3', 'test', 'test', 0, 'test', 15),
(44, 0, 'Screen Window - Ian', '9x9', 'ian', 'ian', 0, 'ian', 16),
(45, 0, 'Screen Door - new', '60x60', 'test', 'test', 0, 'test', 17),
(46, 0, 'Sliding Door 2', '4x4', 'test', 'test2', 0, 'test', 17),
(47, 0, 'Sliding Window - they', '4x4', 'ian', 'test1', 0, 'test', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quotation` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `quotation`, `price`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 7, '1', 1, 'sample sample', NULL, '2022-10-03 06:35:41', 'COD', NULL),
(15, 7, '28', 1, 'mahaba', NULL, '2022-10-03 07:22:04', 'Gcash', NULL),
(16, 5, '30', 1, 'sample sample', NULL, '2022-10-03 07:45:13', 'Gcash', 'Delivered');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(23, 23, 'Delivered', 'welcme', '2022-10-15 15:31:21'),
(24, 24, 'Delivered', 'done', '2022-10-16 05:47:55'),
(25, 27, 'Delivered', 'Thank you!', '2022-10-22 16:10:53'),
(26, 28, 'Delivered', 'Thank you', '2022-10-22 16:11:06'),
(27, 41, 'Start Project', 'Project start', '2022-12-20 09:13:08'),
(28, 42, 'Start Project', 'ok', '2022-12-20 09:15:41'),
(29, 45, 'Start Project', 'ok', '2022-12-20 10:32:47'),
(30, 47, 'Start Project', 'go', '2022-12-20 14:22:44');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 3, 'Awning Window', 3000, 6000, '<b><font size=\"4\">Size:<br>20x10<br>30x40<br>40x40</font></b><br>', 'awningwindow.jpg', 'In Stock', '2022-08-20 02:36:50', NULL),
(22, 4, 'Screen Door', 3500, 7000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'screendoor.jpg', 'In Stock', '2022-08-22 13:12:53', NULL),
(23, 4, 'Screen Window 1', 3000, 6000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'Screenwindow1.jpg', 'In Stock', '2022-08-22 13:21:14', NULL),
(24, 4, 'Screen Window 2', 3500, 7000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'Screenwindow2.jpg', 'In Stock', '2022-08-22 13:25:25', NULL),
(25, 4, 'Screen Window 3', 4000, 8000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'Screenwindow3.jpg', 'In Stock', '2022-08-22 13:54:18', NULL),
(26, 4, 'Screen Window 4', 4000, 8000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'screenwindow4.jpg', 'In Stock', '2022-08-22 14:21:36', NULL),
(27, 3, 'Sliding Door', 5000, 10000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'slidingdoor.jpg', 'In Stock', '2022-08-22 14:22:48', NULL),
(28, 3, 'Sliding Door 2', 5000, 10000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'slidingdoor2.jpg', 'In Stock', '2022-08-22 14:23:45', NULL),
(29, 3, 'Sliding Window', 4000, 8000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'Slidingwindow.jpg', 'In Stock', '2022-08-22 14:24:27', NULL),
(30, 3, 'Swing Door', 5000, 10000, '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font size=\"4\" style=\"box-sizing: border-box;\">Size:<br style=\"box-sizing: border-box;\">20x10<br style=\"box-sizing: border-box;\">30x40<br style=\"box-sizing: border-box;\">40x40</font></span><br>', 'swingdoor.jpg', 'In Stock', '2022-08-22 14:26:11', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(34, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-26 11:57:51', NULL, 1),
(35, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-03 06:35:25', NULL, 1),
(36, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-03 07:41:11', '03-10-2022 01:14:16 PM', 1),
(37, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-03 07:44:37', '04-10-2022 09:43:39 AM', 1),
(38, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-04 07:30:32', '04-10-2022 01:12:03 PM', 1),
(39, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-04 07:42:18', '04-10-2022 02:07:55 PM', 1),
(40, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-04 08:38:02', '04-10-2022 02:08:06 PM', 1),
(41, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-04 08:38:14', '04-10-2022 05:03:35 PM', 1),
(42, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-04 11:34:27', NULL, 1),
(43, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-10 07:22:12', '10-10-2022 10:56:48 PM', 1),
(44, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-10 17:27:00', '11-10-2022 11:15:08 AM', 1),
(45, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 05:45:21', '11-10-2022 11:52:05 AM', 1),
(46, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 06:22:11', '11-10-2022 12:04:38 PM', 1),
(47, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 06:34:44', NULL, 1),
(48, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 06:34:56', '11-10-2022 04:21:45 PM', 1),
(49, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 10:51:53', '11-10-2022 05:20:09 PM', 1),
(50, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 11:50:19', '11-10-2022 05:22:50 PM', 1),
(51, 'sample@localhost.com', 0x3a3a3100000000000000000000000000, '2022-10-11 11:52:57', '11-10-2022 05:25:50 PM', 1),
(52, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 11:55:58', '11-10-2022 08:04:22 PM', 1),
(53, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 14:34:39', NULL, 0),
(54, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 14:34:43', '11-10-2022 08:31:33 PM', 1),
(55, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 15:26:29', '11-10-2022 08:57:04 PM', 1),
(56, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 17:51:58', '12-10-2022 11:22:16 PM', 1),
(57, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 17:52:51', '13-10-2022 12:22:11 AM', 1),
(58, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 18:52:17', '13-10-2022 02:33:55 PM', 1),
(59, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:05:25', '13-10-2022 02:39:09 PM', 1),
(60, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:09:17', '13-10-2022 02:56:39 PM', 1),
(61, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:26:49', '13-10-2022 03:02:22 PM', 1),
(62, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:32:34', '13-10-2022 03:26:04 PM', 1),
(63, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:56:13', '13-10-2022 03:28:56 PM', 1),
(64, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 09:59:02', '13-10-2022 03:30:20 PM', 1),
(65, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 10:00:30', '13-10-2022 07:13:41 PM', 1),
(66, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-13 13:55:43', '14-10-2022 06:40:46 AM', 1),
(67, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-14 01:10:52', '14-10-2022 07:10:02 AM', 1),
(68, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-14 01:40:13', '15-10-2022 08:57:26 PM', 1),
(69, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-15 15:27:33', '16-10-2022 07:19:08 AM', 1),
(70, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 01:49:14', '16-10-2022 07:20:16 AM', 1),
(71, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 01:50:22', '16-10-2022 07:50:18 AM', 1),
(72, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 02:20:24', NULL, 1),
(73, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 06:43:07', NULL, 1),
(74, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 06:50:37', '22-10-2022 01:48:27 PM', 1),
(75, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 15:36:08', '22-10-2022 10:23:04 PM', 1),
(76, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 16:54:58', '22-10-2022 10:29:42 PM', 1),
(77, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 16:59:58', '22-10-2022 10:30:38 PM', 1),
(78, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 17:00:45', NULL, 1),
(79, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-25 18:19:27', '26-10-2022 11:40:12 AM', 1),
(80, 'TEST@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2022-11-22 14:43:42', NULL, 1),
(81, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-23 03:08:49', NULL, 1),
(82, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-24 12:37:42', NULL, 1),
(83, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-26 08:23:56', '26-11-2022 01:57:23 PM', 1),
(84, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-26 08:28:12', '26-11-2022 02:40:49 PM', 1),
(85, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-26 09:10:56', '26-11-2022 02:42:12 PM', 1),
(86, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-26 09:12:27', NULL, 1),
(87, 'yai@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:06:37', NULL, 0),
(88, 'nai@nai.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:06:45', NULL, 0),
(89, 'ian@ian.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:07:36', '20-12-2022 01:38:45 PM', 1),
(90, 'nai@nai.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:09:16', '20-12-2022 01:42:18 PM', 1),
(91, 'ian@ian.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:12:31', '20-12-2022 01:45:54 PM', 1),
(92, 'nai@nai.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:16:03', '20-12-2022 01:47:14 PM', 1),
(93, 'ian@ian.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:17:25', '20-12-2022 01:47:40 PM', 1),
(94, 'ain@ain.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:18:27', '20-12-2022 01:49:44 PM', 1),
(95, 'ian@ian.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:19:56', '20-12-2022 02:09:37 PM', 1),
(96, 'testacc@test.com', 0x3a3a3100000000000000000000000000, '2022-12-20 08:40:14', '20-12-2022 02:40:21 PM', 1),
(97, 'lebron@lebron.com', 0x3a3a3100000000000000000000000000, '2022-12-20 09:11:01', '20-12-2022 03:29:54 PM', 1),
(98, 'main@main.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:00:27', '20-12-2022 03:33:34 PM', 1),
(99, 'mario@mario.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:04:13', '20-12-2022 03:44:43 PM', 1),
(100, 'mario@mario.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:14:55', NULL, 1),
(101, 'mario@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:16:09', NULL, 0),
(102, 'mario@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:16:14', NULL, 0),
(103, 'mario@mario.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:16:23', '20-12-2022 03:47:52 PM', 1),
(104, 'test@test.com', 0x3a3a3100000000000000000000000000, '2022-12-20 10:18:33', NULL, 1),
(105, 'test@test.com', 0x3a3a3100000000000000000000000000, '2022-12-20 14:04:51', '20-12-2022 07:47:31 PM', 1),
(106, 'they@they.com', 0x3a3a3100000000000000000000000000, '2022-12-20 14:18:10', NULL, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Jerico Rosales', 'sample@gmail.com', 987654321, '59f11d694b35f824c658f7653ba18d9e', '#61 CASTILLO COMPOUND PAMPLONA DOS LAS PIÑAS CITY', 'NCR, FOURTH DISTRICT', 'CITY OF LAS PIÑAS', 1999, '#61 CASTILLO COMPOUND PAMPLONA DOS LAS PIÑAS CITY', 'NCR, FOURTH DISTRICT', 'CITY OF LAS PIÑAS', 1999, '2022-09-26 08:57:15', NULL),
(7, 'Neil Geremias', 'sample@localhost.com', 9876543211, '81dc9bdb52d04dc20036dbd8313ed055', '#61 CASTILLO COMPOUND PAMPLONA DOS LAS PIÑAS CITY', 'NCR, FOURTH DISTRICT', 'CITY OF LAS PIÑAS', 1999, '#61 CASTILLO COMPOUND PAMPLONA DOS LAS PIÑAS CITY', 'NCR, FOURTH DISTRICT', 'CITY OF LAS PIÑAS', 1999, '2022-10-03 06:35:19', NULL),
(8, 'Jem Malanday', 'test@gmail.com', 992442368, '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22 14:39:31', NULL),
(9, 'test2', 'test2@gmail.com', 123, 'ad0234829205b9033196ba818f7a872b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26 08:27:54', NULL),
(10, 'ian', 'ian@ian.com', 912345667, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:07:01', NULL),
(11, 'nai', 'nai@nai.com', 1231231231, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:09:05', NULL),
(12, 'ain', 'ain@ain.com', 213213213, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:18:17', NULL),
(13, 'testacc', 'testacc@test.com', 613613613, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:40:03', NULL),
(14, 'leb', 'lebron@lebron.com', 311311311, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 09:10:51', NULL),
(15, 'main', 'main@main.com', 912121212, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 10:00:17', NULL),
(16, 'Mario', 'mario@mario.com', 9090909090, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 10:03:59', NULL),
(17, 'Test', 'test@test.com', 1091091091, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 10:18:19', NULL),
(18, 'theye', 'they@they.com', 912345677, 'b04db1e316fcf9dee2747b5d44317126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 14:17:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertrackhistory`
--

CREATE TABLE `usertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `productprice` int(100) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymethod` varchar(100) DEFAULT NULL,
  `proof` varchar(100) DEFAULT NULL,
  `pstatus` varchar(100) DEFAULT NULL,
  `orderStatus` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usertrackhistory`
--

INSERT INTO `usertrackhistory` (`id`, `orderId`, `name`, `productname`, `description`, `productprice`, `status`, `remark`, `postingDate`, `paymethod`, `proof`, `pstatus`, `orderStatus`, `user_id`) VALUES
(80, 30, 'test', 'Screen Window 1', 'test', 20000, 'Approved', 'test', '2022-11-23 03:48:15', 'Gcash', 'receipt 1.png', 'Down Payment', '', NULL),
(81, 40, 'test', 'Swing Door', '6x6', 5000, 'Approved', 'go', '2022-12-20 09:06:17', 'Gcash', 'receipt 1.png', 'Down Payment', '', NULL),
(82, 41, 'test', 'Screen Window 2', '7x7', 3000, 'Approved', 'ok', '2022-12-20 09:12:08', 'Gcash', 'receipt 1.png', 'Down Payment', 'Start Project', NULL),
(83, 42, 'test', 'Sliding Window', '1x1', 5000, 'Approved', 'ok', '2022-12-20 09:15:01', 'Gcash', 'receipt 1.png', 'Down Payment', 'Start Project', NULL),
(84, 42, 'test', 'Sliding Window', '1x1', 5000, 'Approved', 'ok', '2022-12-20 09:40:31', 'Gcash', 'receipt 1.png', 'Down Payment', '', NULL),
(85, 41, 'test', 'Screen Window 2', '7x7', 3000, 'Approved', 'ok', '2022-12-20 09:46:27', 'Gcash', 'receipt 1.png', 'Down Payment', '', NULL),
(86, 42, 'test', 'Sliding Window', '1x1', 5000, 'Approved', 'ok', '2022-12-20 09:51:04', 'Gcash', 'receipt 1.png', 'Down Payment', '', 0),
(87, 42, 'test', 'Sliding Window', '1x1', 5000, 'Approved', 'ok', '2022-12-20 09:53:05', 'Gcash', 'receipt 1.png', 'Down Payment', '', 1),
(88, 43, 'test', 'Sliding Door 2', '3x3', 1000, 'Approved', 'goo', '2022-12-20 10:02:07', 'Gcash', 'receipt 1.png', 'Down Payment', '', 15),
(89, 44, 'ian', 'Screen Window - Ian', '9x9', 2000, 'Approved', 'ok', '2022-12-20 10:05:36', 'Gcash', 'receipt 1.png', 'Down Payment', '', 16),
(90, 45, 'test', 'Screen Door - new', '60x60', 3000, 'Approved', 'ok', '2022-12-20 10:20:12', 'Gcash', 'receipt 1.png', 'Down Payment', 'Start Project', 17),
(91, 45, 'test', 'Screen Door - new', '60x60', 3000, 'Approved', 'ok', '2022-12-20 10:29:45', 'Gcash', 'receipt 1.png', 'Down Payment', 'Start Project', 17),
(92, 46, 'test', 'Sliding Door 2', '4x4', 50, 'Approved', 'go', '2022-12-20 14:06:21', 'Gcash', 'receipt 1.png', 'Down Payment', '', 17),
(93, 47, 'ian', 'Sliding Window - they', '4x4', 6, 'Approved', 'go', '2022-12-20 14:19:59', 'Gcash', 'receipt 1.png', 'Down Payment', 'Start Project', 18);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
-- Indexes for table `cancelled`
--
ALTER TABLE `cancelled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
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
-- Indexes for table `usertrackhistory`
--
ALTER TABLE `usertrackhistory`
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
-- AUTO_INCREMENT for table `cancelled`
--
ALTER TABLE `cancelled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `usertrackhistory`
--
ALTER TABLE `usertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
