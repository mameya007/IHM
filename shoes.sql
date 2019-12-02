-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 11:02 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us', '<h4><span style=\"color: rgb(112, 122, 129); font-family: CaeciliaLTPro-55Roman, \" palatino=\"\" linotype\",=\"\" \"book=\"\" antiqua\",=\"\" palatino,=\"\" serif;=\"\" letter-spacing:=\"\" 0.4px;\"=\"\">Welcome to the all-new OnlineShoes! Weâ€™re back under new operation and offer a wide variety of high quality footwear, apparel, and accessories. Simplify your shopping experience with free shipping, along </span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">ï»¿</span><span style=\"color: rgb(112, 122, 129); font-family: CaeciliaLTPro-55Roman, \" palatino=\"\" linotype\",=\"\" \"book=\"\" antiqua\",=\"\" palatino,=\"\" serif;=\"\" letter-spacing:=\"\" 0.4px;\"=\"\">with hundreds of great deals on the styles youâ€™ve been searching for.</span></h4>', '<p style=\"box-sizing: content-box; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.35; font-family: proxima-nova, \"Helvetica Neue\", Helvetica, sans-serif; color: rgb(83, 86, 90);\"><a href=\"https://www.shoestn.com/\" style=\"box-sizing: content-box; color: rgb(0, 122, 185);\">SHOESTN</a>Â is your place for athletic and casual shoes for the whole family from hundreds of name brands. You\'ll find styles for women, men and kids from brands like Nike, Converse, Vans, Sperry, Madden Girl, Skechers, ASICS and more! With stores in Tunisia and even more selection online at <a href=\"https://www.shoestn.com/\" style=\"box-sizing: content-box; color: rgb(0, 122, 185);\">SHOESTN.com</a>, Famous Footwear is a leading family footwear destination for the famous brands you know and love.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Shishir Sarder', 'admin.ecom@gmail.com', 'admin123', 'mee.jpg', '1723795078', 'Bangladesh', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(11, 'Troliste', 'mameya.mseddi@gmail.com', '1996medmsd', 'Me.jpg', '99481394', 'Tunisia', 'Php Developer', 'I am Mseddi Mohamed'),
(21, 'Amine Chebil', 'amine.chebil@yahoo.com', '12345678', 'Japan.jpg', '9999999', 'Tunisi', 'Designer', 'PHOTOSHOP , ADOBE ILLUSTRATOR'),
(31, 'Houssem Triki', 'houssem.triki@gmail.com', '12345678', 'Japan.jpg', '9999999', 'Tunisi', 'Designer', 'PHOTOSHOP , ADOBE ILLUSTRATOR');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` varchar(100) NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'WE LOVE OUR CUSTOMERS', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.'),
(2, 'BEST PRICES', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.'),
(3, '100% SATISFICTION & GUARENTED', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(1, 'Relation 1', 1, 15),
(2, 'Relation 2', 2, 15),
(3, 'Relation 3', 4, 15),
(4, 'Relation 4', 10, 15),
(5, 'Test Relation', 2, 1),
(6, 'Test Relation 2', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `product_price`, `size`, `color`) VALUES
(171, '::1', 1, '30', '37', 'black'),
(181, '::1', 1, '80', '39', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `cat_top` varchar(100) NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'Yes', 'image1.jpg'),
(2, 'Women', 'Yes', 'jean-boyfriend-patche-femme--pp305883-s3-produit-493x530.jpg'),
(3, 'Kids', 'No', '666823-01-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'devzani.roy11@gmail.com', 'Contact Us ', 'If you have any questions, please feel free to <a href=\"http://localhost/ecommerce/contact.php\" target=\"_blank\">contact us</a>. Our customer service is working for you 24/7');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(10) NOT NULL,
  `coupon_used` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(1, 1, 'New T-Shirt Coupon Code', '20', 'NEWCOUPON1', 5, 0),
(2, 15, 'Test Coupon', '55', 'NEW55', 6, 2),
(3, 13, 'Dynamic Test Coupon', '70', 'LARAVEL70', 10, 1),
(4, 12, 'Test 1', '65', 'NEW65', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(4, 'Shishir Sarder', 'shishir.srdr16@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH', 'mee.jpg', '::1', ''),
(5, 'Jarin Ritu', 'jarin.ritu@gmail.com', 'jarin123', 'Bangladesh', 'Dhaka', '01841795079', 'Fajilatunnessa Hall', 'ritu.jpg', '2', ''),
(7, 'Maruf Hossain', 'maruf@gmail.com', '12345', 'Bangladesh', 'Savar', '01723795045', 'RTH', 'sam.jpg', '::1', '24234365678'),
(8, 'Rimon Rana', 'rimon.rana@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH, 503', '61YDYbR5w2L._UX385_.jpg', '::1', '45787524575'),
(9, 'Manun Sarder', 'mamun.srdr@gmail.com', '1234567890', 'India', 'Kolkata', '10258225741', 'Koklata -2345', '119566765lblackgymlegoriginalimaeryjghpnfqeym1495278822.jpg', '::1', '24532453434'),
(12, 'Demo User', 'rimonmon10@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH, 503', '6420282559364.jpg', '::1', ''),
(31, 'Mseddi Mohamed', 'mameya.mseddi@gmail.com', '1996medmsd', 'Tunisia', 'Sfax', '99481394', 'Route Tunis km2.5', 'Me.jpg', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 5, 68, 679423457, 2, 'medium', '2018-10-07 17:25:38', 'Complete'),
(2, 5, 12, 679423457, 1, 'large', '2018-10-07 13:24:28', 'pending'),
(3, 4, 24, 72826274, 2, 'medium', '2018-10-23 06:00:46', 'pending'),
(4, 4, 240, 72826274, 2, 'small', '2018-10-23 06:00:47', 'pending'),
(5, 4, 100, 72826274, 1, 'medium', '2018-10-23 06:00:47', 'pending'),
(6, 4, 50, 72826274, 1, 'medium', '2018-10-23 06:00:47', 'pending'),
(7, 4, 75, 72826274, 1, 'small', '2018-10-23 06:00:48', 'pending'),
(8, 4, 70, 1039424096, 1, 'large', '2018-10-23 13:23:36', 'pending'),
(9, 4, 90, 1178884563, 1, 'small', '2018-10-25 16:09:31', 'Complete'),
(10, 4, 10, 795767235, 1, 'medium', '2018-10-25 16:16:08', 'Complete'),
(11, 4, 34, 795767235, 1, 'large', '2018-10-25 16:16:08', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_type`
--

INSERT INTO `enquiry_type` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order Support'),
(2, 'Technical Supports'),
(3, 'Price Concern'),
(4, 'Delivery Problems');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 15, 'Icon 1', 'icon1.png'),
(2, 14, 'Icon 2', 'icon2.png'),
(3, 13, 'Icon 3', 'icon3.png'),
(4, 12, 'Icon 4', 'icon4.png'),
(5, 1, 'New Icon', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png'),
(7, 13, 'New Icon', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` varchar(100) NOT NULL,
  `manufacturer_top` varchar(100) NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Lacoste', 'Yes', 'd7c9aa5f72e8e407c09d8598cde3899c_preview_featured.webp'),
(2, 'Nike', 'Yes', '29dceecd7f13a9869c30a8d3b8a86064.jpg'),
(3, 'New Balance', 'Yes', '7e30717f5dacd08585e139b670726397.jpg'),
(4, 'RALPH LAUREN', 'Yes', '11c697f3682ba0b0dad311b31be8a76f.jpg'),
(5, 'SEBAGO', 'Yes', 'berghen-1472759170.png'),
(6, 'S.M Group', 'Yes', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png'),
(11, 'Adidas', 'Yes', 'Adidas_Logo_Flower__83153.1337144903.380.380.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(3, 358702546, 120, 'UBL/Omni Paisa', 32423423, 3432535, '2018-10-02'),
(4, 358702546, 248, 'Bank Code', 12345, 32145656, '2018-10-03'),
(6, 1998298965, 98, 'Bank Code', 4345654, 4564567, '2018-10-08'),
(7, 624563821, 100, 'Uestern Union', 4235325, 43534646, '2018-10-05'),
(8, 1862962682, 300, 'Bank Code', 2147483647, 3423424, '2018-10-07'),
(9, 1650288053, 360, 'Bank Code', 646554, 0, '2018-10-11'),
(10, 696263413, 100, 'Uestern Union', 21234325, 0, '2018-10-16'),
(11, 679423457, 68, 'Bank Code', 324235435, 2535345, '2018-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 5, 679423457, 4, 2, 'medium', 'Complete'),
(2, 5, 679423457, 10, 1, 'large', 'pending'),
(3, 4, 72826274, 10, 2, 'medium', 'pending'),
(4, 4, 72826274, 13, 2, 'small', 'pending'),
(5, 4, 72826274, 12, 1, 'medium', 'pending'),
(6, 4, 72826274, 14, 1, 'medium', 'pending'),
(7, 4, 72826274, 15, 1, 'small', 'pending'),
(8, 4, 1039424096, 11, 1, 'large', 'pending'),
(9, 4, 1178884563, 13, 1, 'small', 'Complete'),
(10, 4, 795767235, 10, 1, 'medium', 'Complete'),
(11, 4, 795767235, 4, 1, 'large', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` varchar(255) NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` varchar(100) NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `colors` varchar(500) NOT NULL DEFAULT 'Black,Brown',
  `sizes` varchar(500) NOT NULL DEFAULT '38,39'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `add_date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`, `colors`, `sizes`) VALUES
(1, 3, 1, 5, '2019-12-01 16:25:22', 'mocassins-chaussures-bateau edit1', 'product_url1', 'ZA812C001-K11_12.png', 'ZA812C001-E11_8.png', 'ZA812C001-H11_8.png', 56, 45, 'mocassins-chaussures-bateau edit1 56 Sale Black,red 39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'shoes', 'Sale', 'bundle', 'Black,red', '39,40,41,42,43,44'),
(2, 3, 1, 5, '2019-12-01 16:26:28', 'Derbies et Richelieus4', 'product_url2', 'PI912M03D-C11_12.png', 'PI912M03D-K11_8.png', 'PI912M03D-Q11_9.png', 100, 50, 'Derbies et Richelieus4 100 Gift Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'shoes', 'Gift', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(4, 1, 2, 5, '2019-12-01 16:27:45', 'Derbies et Richelieus 3', 'product_url3', 'BS312M00K-O11_12.png', 'BS312M00K-Q11_12.png', '', 50, 40, 'Derbies et Richelieus 3 34 New Black,Brown 38,39', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p><p><br></p><ul><li>LIst 1</li><li>List 2</li><li>List 3</li><li>List 4<br></li></ul>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/IQBHvifde6A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(5, 2, 1, 5, '2019-12-01 16:29:15', 'mocassins-chaussures-bateau44', 'product_url1', 'ZA812C005-G11_8.png', 'ZA812C005-O11_17.png', 'ZA812C005-Q11_2.png', 90, 60, 'mocassins-chaussures-bateau44 90 Sale Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'shoes', 'Sale', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(6, 2, 1, 5, '2019-12-01 16:29:34', 'mocassins-chaussures-bateau2', 'product_url1', 'ZI112C0AF-K11_9.png', 'ZI112C0AF-O11_2.png', '', 90, 60, 'mocassins-chaussures-bateau2 90 Sale Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'shoes', 'Sale', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(7, 3, 1, 6, '2019-12-01 16:30:07', 'Sandales1', 'product_url1', 'PI912G00H-O11_11.png', 'RI912G00H-O11_7.png', 'ZI112G00N-O11_12.png', 60, 40, 'Sandales1 60 New Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sandales', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(8, 2, 1, 6, '2019-12-01 16:30:43', 'Sandales', 'product_url1', 'DI112G009-M11_10.png', 'EA812G005-Q11_9.png', 'EL912G002-A11_12.png', 40, 30, 'Sandales 40 New Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sandales', 'New', 'Product', 'Black,Brown', '38,39,40,41,42,43,44'),
(9, 2, 1, 6, '2019-12-01 16:31:02', 'Sandales2', 'product_url1', 'BU112G00N-Q11_7.png', 'GE112G00M-C11_12.png', 'GE112G00M-K11_12.png', 30, 20, 'Sandales2 30 New Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sandales', 'New', 'Product', 'Black,Brown', '38,39,40,41,42,43,44'),
(10, 2, 1, 4, '2019-12-01 16:31:49', 'Derbies et Richelieus 2', 'product_url4', 'CL612M008-B11_12.png', 'CL612M008-K11_12.png', 'CL612M008-Q11_12.png', 60, 50, 'Derbies et Richelieus 2 12 Sale Black,Brown 38,39', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'Sale', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(11, 2, 1, 4, '2019-12-01 16:32:12', 'Derbies et Richelieus 1', 'product_url5', 'CL612K002-B12_4.png', 'CL612K002-H11_10.png', 'CL612K002-Q11_8.png', 98, 70, 'Derbies et Richelieus 1 98 Gift Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(12, 2, 1, 4, '2019-12-01 16:36:23', 'Bottines 2019', 'product_url6', 'M1012D009-O11_7.png', 'M1012D009-O12_12.png', '', 100, 70, 'Bottines 2019 100 New Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Ralph', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(13, 2, 1, 6, '2019-12-01 16:37:29', 'Botta', 'product_url7', 'S4812K00E-K11_10.png', 'S4812K00E-O11_8.png', 'S4812K00E-O12_8.png', 120, 90, 'Botta 120 Sale Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Botta', 'Sale', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(14, 5, 1, 5, '2019-12-01 16:37:44', 'Bote AAZea', 'product_url8', 'TP812K00U-B11_10.png', 'TP812K00U-Q11_8.png', '', 50, 39, 'Bote AAZea 50 New Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'T-Shirts', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(15, 2, 1, 6, '2019-12-01 16:38:11', 'Bottines', 'product_url9', 'YO112DA19-O11@12.jpg', 'YO112DA19-O12_12.jpg', 'YO112DA19-Q13_10.jpg', 75, 60, 'Bottines 75 Bundle Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'S.M Group', 'New', 'product', 'Black,Brown', '38,39,40,41,42,43,44'),
(16, 3, 1, 2, '2019-12-01 16:38:34', 'Sandales3', 'ZA812C001-K11_12.png', 'BI112G00X-Q11_8.png', 'BI115F02D-K11_12.png', 'BI115F02G-C11_12.png', 30, 20, 'Sandales3 30 New Black,Brown 38,39', 'eagegaeagr', 'zrgzrzgrz', 'Sandales', 'New', 'Product', 'Black,Brown', '38,39,40,41,42,43,44'),
(20, 3, 1, 6, '2019-12-01 16:38:50', 'Sandales22', 'product_url1', 'ZI112G01D-O11_9.png', 'ZI112G01D-O12_8.png', 'ZI112G012-O11_12.png', 50, 40, 'Sandales22 50 Sale Black,Brown 38,39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sandles', 'Sale', 'Product', 'Black,Brown', '38,39,40,41,42,43,44'),
(61, 11, 3, 11, '2019-12-01 16:39:06', 'sport1', 'product_url1', 'AD543A1Z6-J11_3.png', 'AD543A1Z6-K11_3.png', 'AD543A1Z6-Q11_3.png', 50, 40, 'sport1 50 New Black,Red,Bleu 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'sport1', 'New', 'Product', 'Black,Red,Bleu', '30,31,32,33,34'),
(62, 11, 3, 2, '2019-12-01 16:39:14', 'sport2', 'product_url1', 'N1243A0PN-G11_11.png', 'N1243A0PN-K11_11.png', 'N1243A0PN-K12_11.png', 40, 30, 'sport2 40 New Black,Red,Gray 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'sport2', 'New', 'Product', 'Black,Red,Gray', '30,31,32,33,34'),
(63, 11, 3, 5, '2019-12-01 14:13:40', 'sport3', 'product_url1', 'N1243A10U-K11_3.png', 'N1243A10U-K11_7.png', 'N1243A10U-K11_9.png', 55, 40, 'sport3 55 New Bleu 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sport3', 'New', 'Product', 'Bleu', '30,31,32,33,34'),
(64, 11, 3, 11, '2019-12-01 14:13:40', 'sport4', 'product_url1', 'AD543A27P-C11_3.png', 'AD543A27P-J11_8.png', 'AD543A27P-Q11_7.png', 72, 65, 'sport4 72 New Black,Gray,Pink 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'sport4', 'New', 'Product', 'Black,Gray,Pink', '30,31,32,33,34'),
(65, 12, 3, 5, '2019-12-01 14:13:40', 'snow1', 'product_url1', 'TI116I012-B11_14.png', 'TI116I012-C12_12.png', 'TI116I012-N11_10.png', 80, 60, 'snow1 80 New Gray,Brown,Camel 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'snow1', 'New', 'Product', 'Gray,Brown,Camel', '30,31,32,33,34'),
(66, 12, 3, 3, '2019-12-01 14:13:40', 'snow2', 'product_url1', 'SO616K013-C11_11.png', 'SO616K013-K11_3.png', 'SO616K013-Q11_11.png', 69, 56, 'snow2 69 New Black,Bleu,Gray 30,31,32,33,34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Snow2', 'New', 'Product', 'Black,Bleu,Gray', '30,31,32,33,34'),
(67, 12, 3, 4, '2019-12-01 16:41:48', 'Snow2', 'product_url1', 'NX313K009-C11_15.png', 'NX313K009-O11_13.png', 'ZI112G012-O11_12.png', 60, 54, 'Snow2 60 New Gray,Camel 29,30,31,32,33,34,35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'snow3', 'New', 'Product', 'Gray,Camel', '29,30,31,32,33,34,35'),
(70, 9, 3, 11, '2019-12-01 16:42:18', 'City2', 'product_url1', 'AD116D01S-Q11_9.png', 'AD116D01S-Q11_11.png', 'AD116D01S-Q11_12_1_.png', 80, 80, 'City2 80 New Black 29,30,31,32,33,34,35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'City2', 'New', 'Product', 'Black', '29,30,31,32,33,34,35'),
(71, 9, 3, 6, '2019-12-01 16:43:11', 'city3', 'product_url1', 'NX314B02M-G11_29.png', 'NX314B02M-O11_28.png', 'ZI112G012-O11_12.png', 40, 39, 'city3 40 New Red,Camel 29,30,31,32,33,34,35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'city3', 'New', 'Product', 'Red,Camel', '29,30,31,32,33,34,35'),
(72, 9, 3, 6, '2019-12-01 14:13:40', 'City4', 'product_url1', 'NX314E01J-K11_17.1.png', 'NX314E01J-K11_16.1.png', 'NX314E01J-K11_12.1.png', 120, 97, 'City4 120 New Blue 29,30,31,32,33,34,35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'city4', 'New', 'Product', 'Blue', '29,30,31,32,33,34,35'),
(73, 9, 3, 5, '2019-12-01 16:42:55', 'City5', 'product_url1', 'CL113I00B-O11@9.jpg', 'PU116F007-G12_9.png', 'ZI112G012-O11_12.png', 45, 40, 'City5 45 New Gray,Camel 29,30,31,32,33,34,35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'city5', 'New', 'Product', 'Gray,Camel', '29,30,31,32,33,34,35'),
(74, 10, 3, 2, '2019-12-01 14:13:40', 'bebe1', 'product_url1', 'N1243A0XW-J11_10.1.jpg', 'N1243A0XW-K11_3.jpg', 'ZI112G012-O11_12.png', 50, 40, 'bebe1 50 New Gray,Bleu 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©', 'New', 'Product', 'Gray,Bleu', '18,19,20,21,22,24,25,26,27'),
(75, 10, 3, 2, '2019-12-01 16:42:37', 'bÃ©bÃ©', 'product_url1', 'NI114D0CY-A12_3.png', 'NI114D0CY-B11_3.png', 'NI114D0CY-Q11_3.png', 43, 32, 'bÃ©bÃ© 43 New Black,Camel,White 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©', 'New', 'Product', 'Black,Camel,White', '18,19,20,21,22,24,25,26,27'),
(76, 10, 3, 3, '2019-12-01 16:42:45', 'bÃ©bÃ©2', 'product_url1', 'NX314K006-E11_12_1_.png', 'NX314K006-K11_12.1.png', 'NX314K006-O11_16.png', 70, 60, 'bÃ©bÃ©2 70 New Camle,Brown,Bleu 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©2', 'New', 'Product', 'Camle,Brown,Bleu', '18,19,20,21,22,24,25,26,27'),
(77, 10, 3, 11, '2019-12-01 16:45:51', 'bÃ©bÃ©3', 'product_url1', 'AD116F000-A11_11.2.png', 'AD116F000-A12_12.png', 'ZI112G012-O11_12.png', 40, 31, 'bÃ©bÃ©3 40 New White 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©3', 'New', 'Product', 'White', '18,19,20,21,22,24,25,26,27'),
(78, 10, 3, 11, '2019-12-01 16:46:01', 'bÃ©bÃ©4', 'product_url1', 'AD116D0IV-A11_3.png', 'AD116D0IV-Q11_12.png', 'AD116D0IV-Q12_3.png', 60, 55, 'bÃ©bÃ©4 60 New Black,White 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©4', 'New', 'Product', 'Black,White', '18,19,20,21,22,24,25,26,27'),
(79, 10, 3, 6, '2019-12-01 16:46:09', 'bÃ©bÃ©5', 'product_url1', 'CO416F00S-K11_9.png', 'CO416F00S-A11_10.png', 'hhhh.webp', 50, 45, 'bÃ©bÃ©5 50 New Bleu,Pink,White 18,19,20,21,22,24,25,26,27', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'BÃ©bÃ©5', 'New', 'Product', 'Bleu,Pink,White', '18,19,20,21,22,24,25,26,27'),
(86, 1, 1, 11, '2019-12-01 16:46:17', 'Sneakers4', 'product_url1', 'AD115O0BS-A11_9.png', 'AD115O0BS-A12_11.png', 'AD115O0BS-A13_10.png', 50, 40, 'Sneakers4 50 New Orange,Bleu,Green 38,39,40,41,42,43,44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Orange,Bleu,Green', '38,39,40,41,42,43,44'),
(87, 1, 1, 3, '2019-12-01 16:46:43', 'Sneakers3', 'product_url1', 'NE215O03F-G11_8.png', 'NE215O03F-K11_2.png', 'NE215O03F-N11_2.png', 50, 40, 'Sneakers3 50 New Black,Bleu,Green 38,39,40,41,42,43,44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Black,Bleu,Green', '38,39,40,41,42,43,44'),
(88, 1, 1, 4, '2019-12-01 16:46:53', 'Sneakers2', 'product_url1', 'PO212O026-A11_8.png', 'PO212O026-B11_5.png', 'PO212O026-Q11_10.png', 50, 40, 'Sneakers2 50 New Black,Brown,White 38,39,40,41,42,43,44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Black,Brown,White', '38,39,40,41,42,43,44'),
(89, 1, 1, 4, '2019-12-01 16:47:01', 'Sneakers1', 'product_url1', 'PO212O01P-G11_11.png', 'PO212O01P-K11_12.png', 'PO212O01P-N11_8.png', 50, 40, 'Sneakers1 50 New Bleu,Brown,Red 38,39,40,41,42,43,44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Bleu,Brown,Red', '38,39,40,41,42,43,44'),
(90, 4, 1, 1, '2019-12-01 14:13:40', 'Sandales4', 'product_url1', 'LA211A0DG-M11_10.1.png', 'EA812G008-Q11_8.png', 'SU212G017-T11_6.1.png', 30, 22, 'Sandales4 30 New Black,Green,Red 38,39,40,41,42,43,44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sandles', 'New', 'Product', 'Black,Green,Red', '38,39,40,41,42,43,44'),
(91, 1, 2, 6, '2019-12-01 16:47:13', 'basket1', 'product_url1', 'CO411A0ZM-Q11_5.png', 'CO411A100-F11_3.png', 'CO411A112-G11_3.png', 60, 15, 'basket1 60 New Black,YellowRed 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'basket', 'New', 'Product', 'Black,YellowRed', '37,38,39,40'),
(101, 1, 2, 5, '2019-12-01 16:47:22', 'basket2', 'product_url1', 'ES111A0HQ-O12_9.png', 'ES111A0HQ-C11_25.png', 'ES111A0HQ-O11_9.png', 45, 30, 'basket2 45 New Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'basket', 'New', 'Product', 'Brown', '37,38,39,40'),
(111, 1, 2, 4, '2019-12-01 14:13:40', 'basket3', 'product_url1', 'NI111A0DD-K12_9.png', 'NI111A0DD-N11_12.png', 'PU111A0C7-Q11_9.png', 60, 40, 'basket3 60 New Black,Green,Bleu 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Black,Green,Bleu', '37,38,39,40'),
(121, 1, 2, 4, '2019-12-01 14:13:40', 'basket4', 'product_url1', 'PU111A094-A11_3.png', 'PU111A094-Q11_3.png', 'PU111A0CB-A11_9.png', 60, 40, 'basket4 60 New White,Black 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'White,Black', '37,38,39,40'),
(131, 1, 2, 6, '2019-12-01 14:13:40', 'basket5', 'product_url1', 'NE211A08V-C11_12.png', 'NE211A08V-M11_13.png', 'NE211A09V-C11_10.png', 70, 40, 'basket5 70 New Black,Green,Gray 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Sneakers', 'New', 'Product', 'Black,Green,Gray', '37,38,39,40'),
(141, 6, 2, 3, '2019-12-01 14:13:40', 'Botte1', 'product_url1', '4JO11A00S-K13_8.png', '4JO11A00S-Q11_9.png', '4JO11A00S-G11_8.png', 60, 37, 'Botte1 60 New Black,Green,Red 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Bottes', 'New', 'Product', 'Black,Green,Red', '37,38,39,40'),
(151, 6, 2, 4, '2019-12-01 14:13:40', 'Botte2', 'product_url1', '4T011A02B-M11_3.png', 'AN611A0LB-G11_7.png', 'AN611A0LB-Q11_6.png', 64, 40, 'Botte2 64 New Black,Green,Red 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Bottes', 'New', 'Product', 'Black,Green,Red', '37,38,39,40'),
(161, 6, 2, 3, '2019-12-01 14:13:40', 'Botte4', 'product_url1', 'AN611A0LA-O11@9.jpg', 'AN611A0LA-Q11@8.jpg', 'K4511A019-O11@11.jpg', 60, 50, 'Botte4 60 New Black,Grey,Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Bottes', 'New', 'Product', 'Black,Grey,Brown', '37,38,39,40'),
(171, 6, 2, 4, '2019-12-01 14:13:40', 'Botte5', 'product_url1', 'UG111X00K-O11@13.jpg', 'UG111X00K-Q11@13.jpg', 'UG111X00K-C11@9.jpg', 30, 22, 'Botte5 30 New Black,Grey,Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Bottes', 'New', 'Product', 'Black,Grey,Brown', '37,38,39,40'),
(181, 5, 2, 6, '2019-12-01 14:13:40', 'Talon1', 'product_url1', 'PI911B06B-G11_13.png', 'PI911B06B-I11_13.png', 'PI911B06B-K11_3.png', 80, 70, 'Talon1 80 New Black,Pink,Red 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Talons', 'New', 'Product', 'Black,Pink,Red', '37,38,39,40'),
(191, 5, 2, 4, '2019-12-01 14:13:40', 'Talons2', 'product_url1', 'PS911B000-T11_3.png', 'C7311B01J-J11_12.png', 'BB111B01P-K11_11.png', 90, 79, 'Talons2 90 New Black,White 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Talons', 'New', 'Product', 'Black,White', '37,38,39,40'),
(201, 5, 2, 1, '2019-12-01 14:13:40', 'Talon3', 'product_url1', 'BEF11B01R-Q11_13.png', 'BEF11B01R-A11_11.png', 'BEF11B01R-Q11_8.png', 70, 40, 'Talon3 70 New Black,White 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Talons', 'New', 'Product', 'Black,White', '37,38,39,40'),
(211, 5, 2, 1, '2019-12-01 14:13:40', 'Talon4', 'product_url1', 'BEF11N02M-Q11_10.png', 'BEF11N02M-Q11_9.png', 'BEF11N02M-J11_13.png', 80, 60, 'Talon4 80 New Black,Gray 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Talons', 'New', 'Product', 'Black,Gray', '37,38,39,40'),
(221, 2, 2, 4, '2019-12-01 14:13:40', 'Derbie1', 'product_url1', 'BU211E00G-G11_3.png', 'BU211E00G-N11_3.png', 'BU211E00G-K11_8.png', 80, 67, 'Derbie1 80 New Orange,Blue,Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'Product', 'Orange,Blue,Brown', '37,38,39,40'),
(231, 2, 2, 4, '2019-12-01 14:13:40', 'Derbie2', 'product_url1', 'DO211E01O-C11_13.png', 'NL011E063-G11_3.png', 'NL011E063-G11_3.png', 80, 59, 'Derbie2 80 New Gray,Red 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Talons', 'New', 'Product', 'Gray,Red', '37,38,39,40');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `add_date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`, `colors`, `sizes`) VALUES
(241, 2, 2, 6, '2019-12-01 14:13:40', 'Derbie3', 'product_url1', 'AN611E056-C11_3.png', 'AN611E056-J11_5.png', 'M3211E01A-O11_7.png', 80, 69, 'Derbie3 80 New Gray,Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'Product', 'Gray,Brown', '37,38,39,40'),
(251, 2, 2, 5, '2019-12-01 14:13:40', 'Derbie4', 'product_url1', 'AN611E015-G11_13.png', 'AN611E015-Q11_13.png', 'AN611E015-J11_13.png', 80, 65, 'Derbie4 80 New Black,Brown 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'Product', 'Black,Brown', '37,38,39,40'),
(261, 8, 1, 3, '2019-12-01 14:13:40', 'Mocassin1', 'product_url1', 'ZI111E03T-Q11_4.png', 'ZI111E03T-E11_8.png', 'ZI111E03T-N11_4.png', 40, 30, 'Mocassin1 40 New Black,Green,Yellow 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Mocassin', 'New', 'Product', 'Black,Green,Yellow', '37,38,39,40'),
(271, 8, 2, 1, '2019-12-01 14:13:40', 'Mocassin2', 'product_url1', 'WL511E008-Q11_12.png', 'WL511E008-K11_9.png', 'WL511E008-J11_8.png', 80, 60, 'Mocassin2 80 New Black,Blue,Pink 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Mocassin', 'New', 'Product', 'Black,Blue,Pink', '37,38,39,40'),
(281, 8, 2, 5, '2019-12-01 14:13:40', 'Mocassin3', 'product_url1', 'AN611E04T-Q11_8.png', 'AN611E04T-K11_9.png', 'AN611E04T-G11_8.png', 80, 60, 'Mocassin3 80 New Black,Blue,Red 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Derbies', 'New', 'Product', 'Black,Blue,Red', '37,38,39,40'),
(291, 8, 2, 2, '2019-12-01 14:13:40', 'Mocassin4', 'product_url1', 'RI911E04O-H11_3.png', 'RI911E04O-Q11_12.png', 'WL511E008-C11_14.png', 80, 48, 'Mocassin4 80 New Black,Gray 37,38,39,40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/xWi8nDUjHGA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Mocassin', 'New', 'Product', 'Black,Gray', '37,38,39,40');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` varchar(100) NOT NULL,
  `p_cat_top` varchar(100) NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Sneakers', 'Yes', 'TO112C033-K11_9.png'),
(2, 'Derbies and Oxfords', 'No', 'CL612K002-Q11_8.png'),
(3, 'Moccasins and boat shoes', 'No', 'TP812K00U-B11_10.png'),
(4, 'Sandals', 'No', 'GE112G00M-C11_12.png'),
(5, 'Heel shoe', 'Yes', 'TP812K00U-B11_10.png'),
(6, 'Boots', 'Yes', 'TP812K00U-B11_10.png'),
(7, 'Derbies', 'No', 'TP812K00U-B11_10.png'),
(8, 'Mocassins', 'Yes', 'TP812K00U-B11_10.png'),
(9, 'City shoes', 'No', 'TO112C033-K11_9.png'),
(10, 'Baby shoes', 'No', 'TO112C033-K11_9.png'),
(11, 'Sport shoes', 'Yes', 'TO112C033-K11_9.png'),
(12, 'Snow shoes', 'No', 'TO112C033-K11_9.png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(1, 'Gift Package', 'service1.jpg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p> All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'Contact for Details', 'http://www.obydullahshishir.com'),
(2, 'Love Serprices', 'service2.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'Contact for Details &amp; Rates', 'http://www.obydullahshishir.com'),
(7, 'New Service 2', 'product3.png', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It \r\nhas roots in a piece of classical Latin literature from 45 BC, making it\r\n over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. </p><p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p>', 'Contact for More', 'http://localhost/ecommerce/services.php');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_text` varchar(255) NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_title`, `slide_text`, `slide_url`) VALUES
(1, 'Slide Number 1', 'slide12.jpg', ' ', '     ', 'http://www.'),
(15, 'Slide 2', 'slide6.jpg', '', '', 'http://www.'),
(16, 'Slide 4', 'slide11.jpg', ' ', '  ', 'http://www'),
(18, 'Slide 3', 'sliderhero-1130-momentum.jpg', ' ', ' ', 'http://www.');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(150) NOT NULL,
  `term_link` varchar(255) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'Link1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro qui ad veniam, commodi. Numquam, id inventore odio ipsum, dolore natus. Voluptatem, explicabo architecto quis reiciendis libero! Error, hic excepturi, maiores voluptate quod officiis quam, asperiores earum ipsam ipsum totam modi deserunt incidunt aliquam eligendi quia harum recusandae illo rem.</p>\r\n<p>Velit, ratione nostrum consequuntur commodi maxime? Dolorem consequatur nihil eligendi culpa autem necessitatibus, provident quidem minima quod quibusdam maxime a molestiae fugit. Iure exercitationem facilis totam incidunt eveniet enim alias accusamus cum sapiente. Veritatis fuga non, porro aperiam neque. Nisi, ipsa dolore, necessitatibus sit atque deserunt culpa sapiente reiciendis voluptate nemo aliquid tenetur perferendis. Quibusdam, qui quisquam soluta eos quidem officia eligendi, aut quae voluptatibus laborum facilis ab necessitatibus. Deleniti quis ab repudiandae dolores qui reprehenderit odio sint neque rem sit, autem necessitatibus sequi possimus expedita praesentium tempora sed in. Pariatur a, voluptatem ratione magni possimus aliquam atque ab porro ipsum mollitia odio maxime, exercitationem, sed quasi eligendi laboriosam voluptatibus blanditiis unde nemo optio tempore.</p>\r\n<p>Eius exercitationem quos magnam quisquam harum possimus temporibus officia maiores, veniam voluptates eum, ex optio aspernatur sit necessitatibus omnis repellat doloremque aut unde, ab sunt architecto. Quod animi necessitatibus atque id nostrum quos, ipsam error repellendus! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro qui ad veniam, commodi. Numquam, id inventore odio ipsum, dolore natus. Voluptatem, explicabo architecto quis reiciendis libero! Error, hic excepturi, maiores voluptate quod officiis quam, asperiores earum ipsam ipsum totam modi deserunt incidunt aliquam eligendi quia harum recusandae illo rem. Velit, ratione nostrum consequuntur commodi maxime? Dolorem consequatur nihil eligendi culpa autem necessitatibus, provident quidem minima quod quibusdam maxime a molestiae fugit. Iure exercitationem facilis totam incidunt eveniet enim alias accusamus cum sapiente. Veritatis fuga non, porro aperiam neque.</p>\r\n<p>Nisi, ipsa dolore, necessitatibus sit atque deserunt culpa sapiente reiciendis voluptate nemo aliquid tenetur perferendis. Quibusdam, qui quisquam soluta eos quidem officia eligendi, aut quae voluptatibus laborum facilis ab necessitatibus. Deleniti quis ab repudiandae dolores qui reprehenderit odio sint neque rem sit, autem necessitatibus sequi possimus expedita praesentium tempora sed in. Pariatur a, voluptatem ratione magni possimus aliquam atque ab porro ipsum mollitia odio maxime, exercitationem, sed quasi eligendi laboriosam voluptatibus blanditiis unde nemo optio tempore.</p>\r\n<p>Eius exercitationem quos magnam quisquam harum possimus temporibus officia maiores, veniam voluptates eum, ex optio aspernatur sit necessitatibus omnis repellat doloremque aut unde, ab sunt architecto. Quod animi necessitatibus atque id nostrum quos, ipsam error repellendus!</p>'),
(2, 'Refund Policy', 'Link2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam.</p>\r\n<p>Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod.</p>\r\n<p>Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima?</p>\r\n<p>Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet.</p>\r\n<p>Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero.</p>'),
(3, 'Pricing & Promotions Policy', 'Link3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati!</p>\r\n<p>Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati!</p>\r\n<p>Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(3, 4, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
