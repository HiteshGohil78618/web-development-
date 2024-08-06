-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 08:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@gmail.com', '11111', 'th (1).jpeg', '7777775500', 'Morocco', 'Front-End Developer', '   Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical   ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'yes', 'othericon.png'),
(5, 'Men', 'yes', 'malelg.png'),
(6, 'Women', 'yes', 'feminelg.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'SwiftShop@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

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
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 5, 'Sale', '10', 'CASTRO', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(6, 'Sample Customer', 'customer@gmail.com', '11111', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126'),
(11, 'Gohil Hitesh B', 'hitesh@gmail.com', '22222', 'india', 'surat', '1111111111', 'xyz', 'th (3).jpeg', '::1', '229425262'),
(12, 'harshil', 'harshil@gmail.com', '22222', 'indiaa', 'surata', '11111111112', 'xyza', 'th (3).jpeg', '::1', '1937679547'),
(18, 'aa@gmail.com', 'aa@gmail.com', '11111', 'india', 'surat', '11111111112', 'xyz', 'Adicolor_Classics_SST_Track_Jacket_Black_IM4545_21_model.avif', '::1', '1144871628');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `p_id` int(20) NOT NULL,
  `invoice_no` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `total_bill` int(40) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `p_id`, `invoice_no`, `qty`, `size`, `total_bill`, `order_date`, `order_status`) VALUES
(208, 12, 5, 'in_1OxRJuSH5BobXVDqA1dMoA0M', 2, 'Medium', 70, '2024-03-23 09:57:07', 'Completed'),
(209, 12, 5, 'in_1OxRJuSH5BobXVDqA1dMoA0M', 1, 'Small', 500, '2024-03-23 09:57:07', 'Completed'),
(210, 12, 5, 'in_1OxRkRSH5BobXVDqNmO8B2NU', 1, 'Small', 75, '2024-03-23 10:24:31', 'Completed'),
(211, 18, 41, 'in_1OxkvLSH5BobXVDqYzj8IwVp', 1, 'Small', 4000, '2024-03-24 06:53:06', 'Completed'),
(212, 11, 59, 'in_1OyWNwSH5BobXVDqqgSUdD7a', 2, 'Small', 1600, '2024-03-26 09:33:45', 'Completed'),
(213, 12, 59, 'in_1OzYv2SH5BobXVDq6bieHbq4', 1, 'Medium', 800, '2024-03-29 06:28:14', 'Completed'),
(214, 12, 59, 'in_1OzZ82SH5BobXVDqdnzWmbF7', 1, 'Small', 800, '2024-03-29 06:41:40', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` text NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `payment_status`, `payment_date`) VALUES
(29, 'in_1OxRJuSH5BobXVDqA1dMoA0M', 70, 'Card', 'Paid', '2024-03-23 15:27:07'),
(30, 'in_1OxRJuSH5BobXVDqA1dMoA0M', 500, 'Card', 'Paid', '2024-03-23 15:27:07'),
(31, 'in_1OxRkRSH5BobXVDqNmO8B2NU', 75, 'Card', 'Paid', '2024-03-23 15:54:31'),
(32, 'in_1OxkvLSH5BobXVDqYzj8IwVp', 4000, 'Card', 'Paid', '2024-03-24 12:23:06'),
(33, 'in_1OyWNwSH5BobXVDqqgSUdD7a', 1600, 'Card', 'Paid', '2024-03-26 15:03:45'),
(34, 'in_1OzYv2SH5BobXVDq6bieHbq4', 800, 'Card', 'Paid', '2024-03-29 11:58:14'),
(35, 'in_1OzZ82SH5BobXVDqdnzWmbF7', 800, 'Card', 'Paid', '2024-03-29 12:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(5, 7, 4, 2, '2024-03-23 11:07:39', 'Denim Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '\r\n\r\n\r\n\r\n\r\n\r\n\r\nThe \"Denim Borg Lined Western Jacket\" is a stylish and versatile outerwear piece that combines the classic appeal of denim with the cozy warmth of Borg lining.\r\n\r\nThis jacket features a rugged denim exterior, typically in a classic blue hue, offering durability and a timeless aesthetic. The Western-inspired design elements such as front flap pockets, contrast stitching, and a pointed collar add a touch of vintage charm and character.\r\n\r\nThe Borg lining, which lines the interior of the jacket, provides exceptional insulation and comfort, making it ideal for colder weather. Borg is a soft and plush material often made from synthetic fibers or wool, resembling sheepskin, and it adds a luxurious feel to the jacket while keeping you warm and snug.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YNthA3roRUY\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'Gift', 'product'),
(41, 7, 5, 2, '2024-03-24 03:40:58', 'ADICOLOR CLASSICS SST TRACK JACKET', 'ADICOLOR-CLASSICS-SST-TRACK-JACKET', 'Adicolor_Classics_SST_Track_Jacket_Black_IM4545_01_laydown.avif', 'Adicolor_Classics_SST_Track_Jacket_Black_IM4545_21_model.avif', 'Adicolor_Classics_SST_Track_Jacket_Black_IM4545_23_hover_model.avif', 6000, 4000, '\r\n\r\nA TRACK JACKET MADE IN PART WITH A BLEND OF RECYCLED AND RENEWABLE MATERIALS.\r\nEveryone needs a good track jacket. Made from soft interlock fabric, this must-have stays true to the archive design it is inspired by. An embroidered Trefoil logo and 3-Stripes honor classic adidas style while the ribbed hem and cuffs keep the fit tailored in all the right places. A full-zip front lets you layer for warmth or wear it open with your favorite tee underneath. A minimum of 70% of this product is a blend of recycled and renewable materials.\r\n\r\n', '\r\nSlim fit,\r\nFull zip with ribbed stand up collar,\r\n70% recycled polyester, 30% cotton interlock,\r\nZip pockets,\r\nRibbed hem and cuffs,\r\nImported,\r\nProduct color: Black / White\r\n\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_6FF4ZRA5eo\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(42, 9, 5, 2, '2024-03-24 12:24:30', '3 STRIPES FRENCH TERRY TAPERED PANT', '3-STRIPES-FRENCH-TERRY-TAPERED-PANT', '3_STRIPES_FRENCH_TERRY_TAPERED_PANT_Black_HB0947_21_model.avif', '3_STRIPES_FRENCH_TERRY_TAPERED_PANT_Black_HB0947_22_model.avif', '3_STRIPES_FRENCH_TERRY_TAPERED_PANT_Black_HB0947_25_model.avif', 3999, 1999, '\r\nATHLETIC PANTS THAT ELEVATE YOUR EVERYDAY EXPERIENCE.\r\nMade for everyday wear, these athletic pants deliver big on the comfort front. Throw them on for running around town or a quiet day at home. adidas 3-Stripes on the tapered legs give them a sporty feel and a slightly more fitted look.This product is made with recycled content as part of our ambition to end plastic waste. Our cotton products support sustainable cotton farming.\r\n\r\n\r\n', '\r\n53% cotton, 36% recycled polyester, 11% viscose French terry\r\nRegular tapered fit,\r\nDrawcord on elastic waist,\r\nSide pockets,\r\nCuffed hems,\r\nMid rise,\r\nFrench terry,\r\n\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5khCejjrk9I\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(43, 5, 5, 8, '2024-03-24 12:44:05', 'Softstyle Crewneck Sweatshirt', 'Softstyle-Crewneck-Sweatshirt', 'gisf000_1_wht.jpg', 'gisf000-1.jpg', 'gisf000-2.jpg', 899, 599, 'The Softstyle Crewneck Sweatshirt by Gildan is a soft yet affordable standard sweatshirt. This sweatshirt, along with the entire line of Softstyle products, is made with higher quality ring-spun cotton giving it a softer, smoother feel. The fleece interior is extremely soft and comfortable and an overall mid-weight material make it great throughout the seasons. A standard fit and slightly dropped shoulders leave you room for layering.\r\n\r\n', '8.4 oz. cotton-poly fleece,\r\nDropped shoulder,\r\nRib-knit sleeve cuffs and hem band,\r\nTear-away label,\r\nStandard fit,\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dzNqHFvCGbE\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(44, 5, 6, 8, '2024-03-24 12:57:56', 'Gildan 18000 Heavy Blend™ Crewneck Sweatshirt', 'Gildan-18000-Heavy-Blen-Crewneck-Sweatshirt', '12792119_source_1603494002.jpg', 'Gildan 18000 Heavy.png', 'Crewneck-Sweatshirt.png', 899, 599, 'Nothing beats a high quality crewneck at an unbeatable price. The Gildan 18000 Heavyweight Blend Crew offers Great Gildan quality at an even better price\r\n\r\nIt is a 50% Cotton /50% polyester, 13.5oz fleece. It features a double-needle collar, shoulders, and armholes. It also features double-needle cuffs, a banded bottom, set-in sleeves and a quarter-turned body and 1X1 Athletic rib with Lycra®. The Gildan Heavyweight Blend Crew features air jet yarn which means a softer feel and reduced pilling! Check out a few reviews and stock up today.\r\n\r\n', '8 oz.(US) 13.3 oz.(CA), 50/50 preshrunk cotton/polyester,\r\nAir jet yarn = softer feel and reduced pilling,\r\nDouble needle stitching at shoulder, armhole, neck, waistband and cuffs,\r\n1 x 1 rib with spandex,\r\nQuarter-turned to eliminate center crease,\r\nSafety Green: Compliant with ANSI / ISEA 107,\r\nTearaway label,\r\nAlso known as: G180\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VzmCAs3Fdko\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(45, 9, 5, 2, '2024-03-24 13:17:19', 'RUN WOVEN ASTRO PANTS', 'RUN-WOVEN-ASTRO-PANTS', 'Own_the_Run_Woven_Astro_Pants_Black_HR6611_HM1.avif', 'Own_the_Run_Woven_Astro_Pants_Black_HR6611_HM3_hover.avif', 'Own_the_Run_Woven_Astro_Pants_Black_HR6611_HM7.avif', 799, 699, 'RUNNING PANTS WITH ZIPPED POCKETS AND A DRAWCORD WAIST.\r\nWhether you are hitting the pavement with your community or on your own, there iss nothing quite like the joyful rush of a runner is high. One things for sure: comfort and support are paramount in maximizing your daily run.\r\n\r\nIntroducing the Own the Run Woven Astro Pants — the ultimate running companion when it is too cold out for shorts. Crafted from a comfy weave fabric, they are cut for a regular fit with a drawcord waist to keep them in place. Sweat-wicking AEROREADY helps keep you feeling dry, while various pockets allow you to stash essentials on the go. Reflective details shine in low light, so you can fit your run schedule around your busy everyday life.\r\n\r\n', 'Regular fit,\r\nDrawcord on elastic waist,\r\n100% recycled polyester plain weave,\r\nMoisture-absorbing AEROREADY,\r\nSide pockets with zip coin pocket inside one pocket,\r\nMesh leg pocket,\r\nReflective details,\r\nColour-Black\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UrCSWvQyWAw\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(46, 7, 6, 2, '2024-03-26 04:27:31', 'FUTURE ICONS 3-STRIPES PANTS', 'FUTURE-ICONS-3-STRIPES-PANTS', 'Future_Icons_3-Stripes_Pants_Purple_IL3043_21_model.avif', 'Future_Icons_3-Stripes_Pants_Purple_IL3043_41_detail.avif', 'Future_Icons_3-Stripes_Pants_Purple_IL3043_01_laydown.avif', 899, 799, '\r\nVERSATILE PANTS MADE WITH A BLEND OF RECYCLED AND RENEWABLE MATERIALS.\r\nWhen you are on the move, you need pants that move with you. And that is exactly what you get with these adidas 3-Stripes pants. They are made from a soft knit fabric, with an elastic waist that never distracts you from what you are up to. Running errands, meeting up with friends or grabbing coffee after yoga class, you are wrapped in iconic 3-Stripes style.\r\n\r\nA minimum of 70% of this product is a blend of recycled and renewable materials.\r\n\r\n\r\n', '\r\nSlim fit,\r\nElastic waist,\r\n74% cotton, 26% recycled polyester spacer,\r\nSide seam zip pockets,\r\nColor : Shadow Violet.\r\n\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(47, 5, 6, 2, '2024-03-26 04:32:35', 'BIG LOGO BOYFRIEND TEE', 'BIG-LOGO-BOYFRIEND-TEE', 'BIG_LOGO_BOYFRIEND_TEE_Turquoise_IM7632_21_model.avif', 'BIG_LOGO_BOYFRIEND_TEE_Turquoise_IM7632_23_hover_model.avif', 'BIG_LOGO_BOYFRIEND_TEE_Turquoise_IM7632_22_model.avif', 599, 459, 'VERSATILE PANTS MADE WITH A BLEND OF RECYCLED AND RENEWABLE MATERIALS.\r\nWhen you are on the move, you need pants that move with you. And that is exactly what you get with these adidas 3-Stripes pants. They are made from a soft knit fabric, with an elastic waist that never distracts you from what you are up to. Running errands, meeting up with friends or grabbing coffee after yoga class, you are wrapped in iconic 3-Stripes style.\r\n\r\nA minimum of 70% of this product is a blend of recycled and renewable materials.\r\n\r\n', 'Slim fit,\r\nElastic waist,\r\n74% cotton, 26% recycled polyester spacer,\r\nSide seam zip pockets,\r\nColor: Light Aqua.\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(48, 5, 5, 3, '2024-03-26 04:38:05', 'Nike Sportswear Mens T-Shirt', 'Nike-Sportswear-Men-T-Shirt', 'sportswear-t-shirt-qpsCJg.png', 'sportswear-t-shirt-qpsCJg (1).png', 'sportswear-t-shirt-qpsCJg (2).png', 559, 499, 'This tee features premium, midweight cotton and our signature Max90 fit, which gives you some room through the sleeves and body for comfort and style. Now pull on this tee and rock it with your favourite Dunks.\r\n\r\n\r\nBenefits\r\n\r\nThe midweight cotton feels soft and slightly structured for durable, daily comfort.\r\nDropped shoulders, longer sleeves and a roomy fit through the body and hips give the Max90 tee a relaxed and casual look.\r\n\r\n', 'Ribbed collar,\r\nEmbroidered patch on the left side of the chest,\r\n100% cotton,\r\nMachine wash,\r\nImported,\r\nColour Shown: White\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(49, 7, 5, 3, '2024-03-26 04:41:26', 'Nike Swoosh Mens Woven Jacket', 'Nike-Swoosh-Men-Woven-Jacket', 'swoosh-woven-jacket-MkRDpr.png', 'swoosh-woven-jacket-MkRDpr (1).png', 'swoosh-woven-jacket-MkRDpr (2).png', 899, 799, 'Go bigger with the Swoosh. Our full-zip, woven jacket is a versatile, water-repellent outer layer that helps shield you from the elements. It has a concealed hood you can unpack for those windy, rainy days.\r\n\r\n', 'Elastic cuffs and hem,\r\nPockets,\r\nEmbroidered Swoosh logo on left chest,\r\nBody/Lining: 100% polyester,\r\nMachine wash,\r\nImported.\r\n\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(50, 7, 5, 3, '2024-03-26 04:45:19', 'Nike Repel Windrunner Mens UV Running Jacket', 'Nike-Repel-Windrunner-Men-UV-Running-Jacket', 'repel-windrunner-uv-running-jacket-mrVpJ3.jpeg', 'repel-windrunner-uv-running-jacket-mrVpJ3 (1).jpeg', 'repel-windrunner-uv-running-jacket-mrVpJ3.png', 899, 799, 'Celebrate conquering the Ekiden in an updated version of our iconic Windrunner Jacket. With a water-repellent finish and UV treatment, it stands up to the elements to help keep you dry and comfortable on both wet or sunny runs. When it comes time to layer down, it packs tidily into a back pouch for compact and convenient storage.\r\n\r\n', 'Front pockets,\r\nReflective design details,\r\nBody: 93% polyester/7% elastane. Side pocket knuckle side/panels lining: 100% polyester,\r\nMachine wash,\r\nImported,\r\nNot intended for use as Personal Protective Equipment (PPE),\r\nColour Shown: Medium Ash/Light Bone/Hyper Pink/Light Bone,\r\nCountry/Region of Origin: Vietnam\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(51, 7, 5, 3, '2024-03-26 04:49:41', 'Nike Life Men Woven MA1 Flight Jacket', 'Nike-Life-Men-Woven-MA1-Flight-Jacket', 'life-woven-ma1-flight-jacket-b4Qj9K.jpeg', 'life-woven-ma1-flight-jacket-b4Qj9K (1).jpeg', 'life-woven-ma1-flight-jacket-b4Qj9K.png', 1999, 1859, 'The MA1 flight jacket from our Nike Life Collection re-imagines an iconic piece originally designed by the United States Air Force for pilots and flight crews. The exterior is made from soft cotton twill, while the liner fabric is a smooth woven taffeta that lets you layer with ease. The wash treatment softens the look and feel, while the high-vis orange lining lends a vibrant flash of colour and nods to the original.\r\n\r\n', 'Flap-over pockets with press stud closure\r\nUtility pocket on the left sleeve with vertical zip\r\nBody: 98% cotton/2% elastane. Lining: 100% polyester. Fill: 100% polyester.\r\nMachine wash\r\nImported\r\nColour Shown: Medium Olive/Black\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(52, 9, 5, 3, '2024-03-26 04:53:28', 'Jordan Essentials Men Woven Trousers', 'Jordan-Essentials-Men-Woven-Trousers', 'jordan-essentials-woven-trousers-FQfwpp.png', 'jordan-essentials-woven-trousers-FQfwpp (1).png', 'jordan-essentials-woven-trousers-FQfwpp.jpeg', 500, 400, 'School, work, whatever—these are trousers for everywhere you go. Centre seams and an extra cargo pocket give you a look with just enough distinction. And the woven material is lightweight and airy so you can wear em all day, no problem.\r\n\r\n', '62% cotton/38% nylon\r\nMachine wash\r\nImported\r\nColour Shown: Legend Light Brown/White\r\nCountry/Region of Origin: China\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(53, 9, 5, 3, '2024-03-26 04:58:08', 'Nike Tour Repel Flex Men Slim Golf Trousers', 'Nike-Tour-Repel-Flex-Men-Slim-Golf-Trousers', 'tour-repel-flex-slim-golf-trousers-9MZHqr.png', 'tour-repel-flex-slim-golf-trousers-9MZHqr (1).png', 'tour-repel-flex-slim-golf-trousers-9MZHqr.jpeg', 800, 700, 'From the range to the course to your plans post-round, the Nike Tour chino trousers provide comfort you can take anywhere. The slim fit and fabric with a smooth, stretchy feel help give you the confidence to swing your best. They are water-repellent too, so the rain cut your round short. Equipped with pockets all around for your tees, scorecard and glove, they help you stay prepared when you are next up on the box.\r\n\r\n', 'Front zip\r\nBelt loops\r\nBody: 90% polyester/10% elastane. Pocket bags: 100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Light Bone/Black\r\nCountry/Region of Origin: Indonesia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(54, 7, 5, 3, '2024-03-26 05:01:05', 'Jordan Essentials Men Chicago Jacket', 'Jordan-Essentials-Men-Chicago-Jacket', 'jordan-essentials-chicago-jacket-656qLG.jpeg', 'jordan-essentials-chicago-jacket-656qLG (1).jpeg', 'jordan-essentials-chicago-jacket-656qLG.png', 800, 700, 'Stay ready for anything spring brings. This workwear-inspired jacket is made from breathable cotton. An all-over wash treatment gives it a perfectly worn-in look. Wear it open or closed—it layers like a dream.\r\n\r\n', '100% cotton\r\nMachine wash\r\nImported\r\nColour Shown: Blue Grey\r\nCountry/Region of Origin: China\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(55, 9, 3, 3, '2024-03-26 05:06:37', 'Nike Sportswear Older Kids', 'Nike-Sportswear-Older-Kids', 'sportswear-older-dri-fit-loose-fleece-joggers-NLNgzh.jpeg', 'sportswear-older-dri-fit-loose-fleece-joggers-NLNgzh (1).jpeg', 'sportswear-older-dri-fit-loose-fleece-joggers-NLNgzh (2).jpeg', 700, 600, 'Swap out your heavy joggers for these lightweight ones to stay comfy when warmer weather arrives. Made to feel airy and comfortable, their looser fit helps you step and stretch with ease. Plus, sweat-wicking tech helps you stay cool and comfortable.\r\n\r\n', 'Body: 62% cotton/38% polyester. Pocket bags: 100% polyester.\r\nSide pockets\r\nMachine wash\r\nImported\r\nColour Shown: Light Bone\r\nCountry/Region of Origin: Malaysia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(56, 9, 6, 3, '2024-03-26 05:10:48', 'nike-s trousers', 'nike-s-trousers', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 500, 400, 'Swap out your heavy joggers for these lightweight ones to stay comfy when warmer weather arrives. Made to feel airy and comfortable, their looser fit helps you step and stretch with ease. Plus, sweat-wicking tech helps you stay cool and comfortable.\r\n\r\n', 'Body: 62% cotton/38% polyester. Pocket bags: 100% polyester.\r\nSide pockets\r\nMachine wash\r\nImported\r\nColour Shown: Light Bone\r\nCountry/Region of Origin: Malaysia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(57, 9, 5, 4, '2024-03-26 05:12:51', 'Black pant man', 'Black-pant-man', '519BRGh1niL._SX679_.jpg', '51PVxO4zVaL._SX679_.jpg', '813AvawqWZL._SX679_.jpg', 1000, 900, 'Swap out your heavy joggers for these lightweight ones to stay comfy when warmer weather arrives. Made to feel airy and comfortable, their looser fit helps you step and stretch with ease. Plus, sweat-wicking tech helps you stay cool and comfortable.\r\n\r\n', 'Body: 62% cotton/38% polyester. Pocket bags: 100% polyester.\r\nSide pockets\r\nMachine wash\r\nImported\r\nColour Shown: black\r\nCountry/Region of Origin: Malaysia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(58, 7, 0, 5, '2024-03-26 05:14:30', 'Black Blouse Versace Coat1', 'Black-Blouse-Versace', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 900, 800, 'Swap out your heavy joggers for these lightweight ones to stay comfy when warmer weather arrives. Made to feel airy and comfortable, their looser fit helps you step and stretch with ease. Plus, sweat-wicking tech helps you stay cool and comfortable.\r\n\r\n', 'Body: 62% cotton/38% polyester. Pocket bags: 100% polyester.\r\nSide pockets\r\nMachine wash\r\nImported\r\nColour Shown: black\r\nCountry/Region of Origin: Malaysia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product'),
(59, 7, 5, 7, '2024-03-26 05:17:35', 'man white jackets', 'man-white-jackets', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 1000, 800, 'Swap out your heavy joggers for these lightweight ones to stay comfy when warmer weather arrives. Made to feel airy and comfortable, their looser fit helps you step and stretch with ease. Plus, sweat-wicking tech helps you stay cool and comfortable.\r\n\r\n', 'Body: 62% cotton/38% polyester. Pocket bags: 100% polyester.\r\nSide pockets\r\nMachine wash\r\nImported\r\nColour Shown: Light white\r\nCountry/Region of Origin: Malaysia\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K4TOrB7at0Y\" frameborder=\"0\" allowfullscreen></iframe>', 'sale', 'Sale', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'coaticn.png'),
(5, 'T-Shirts', 'no', 'tshirticn.png'),
(6, 'Sweater', 'no', 'sweatericn.png'),
(7, 'jackets', 'yes', 'jacketicn.png'),
(8, 'Sneakers', 'yes', 'sneakericn.png'),
(9, 'Trousers', 'no', 'trousericn.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(17, 18, 41),
(18, 12, 59),
(19, 11, 46);

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

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
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

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
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

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
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
