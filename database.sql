-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2023 at 06:07 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `femviral_favv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`) VALUES
(31, '3', 'Admin990', 'supersafe@gmail.com', 'admin', 'admin', '1234567653', '0000-00-00 00:00:00', '2023-08-22 10:43:48', '42.105.213.95', '2', '{\"admin_access\":\"1\",\"users\":\"1\",\"orders\":\"1\",\"subscriptions\":\"1\",\"dripfeed\":\"1\",\"services\":\"1\",\"payments\":\"1\",\"tickets\":\"1\",\"reports\":\"1\",\"general_settings\":\"1\",\"pages\":\"1\",\"payments_settings\":\"1\",\"bank_accounts\":\"1\",\"payments_bonus\":\"1\",\"alert_settings\":\"1\",\"providers\":\"1\",\"themes\":\"1\",\"child-panels\":\"1\",\"language\":\"1\",\"meta\":\"1\",\"twice\":\"1\",\"files\":\"1\",\"coupon\":\"1\",\"admins\":\"1\",\"update-prices\":\"1\",\"bulk\":\"1\",\"bulkc\":\"1\",\"synced-logs\":\"1\",\"refill\":\"1\",\"referral\":\"1\",\"broadcast\":\"1\",\"logs\":\"1\",\"videop\":\"1\",\"updates\":\"1\",\"menu\":\"1\",\"inte\":\"1\",\"currency\":\"1\",\"news\":\"1\",\"blog\":\"1\",\"modules\":\"1\",\"subject\":\"1\",\"super_admin\":\"1\",\"tasks\":\"1\",\"decoration\":\"1\",\"currency-manager\":\"1\"}', 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `published_at`, `image_file`, `status`, `blog_get`, `updated_at`) VALUES
(1, 'Testing', 'Social marketing is a strategic approach to promoting behavior change for social good. It involves the application of marketing principles and techniques to address social issues such as public health, environmental conservation, and social justice. The goal of social marketing is to influence and persuade individuals, communities, and organizations to adopt positive behaviors or attitudes that benefit society as a whole. It often involves identifying target audiences, conducting research, developing and implementing marketing campaigns, and evaluating the impact of these efforts. Social marketing aims to create sustainable behavior change by addressing the underlying factors that influence people\'s choices and actions.', '2023-08-19 12:36:47', 'https://jongtasmm.com/img/files/c17fc5811eeff60d91cca72f3c2c727e.png', '1', 'testing', '2023-08-20 08:37:18'),
(2, 'demo', 'Marketing online, also known as digital marketing or internet marketing, refers to the practice of promoting and selling products or services using digital channels such as websites, social media, search engines, email, and mobile apps. It involves various strategies and tactics aimed at reaching and engaging a target audience, driving traffic to websites or landing pages, generating leads, and ultimately converting them into customers. Online marketing encompasses a wide range of activities, including search engine optimization (SEO), content marketing, social media marketing, email marketing, pay-per-click (PPC) advertising, affiliate marketing, and more. It allows businesses to reach a global audience, track and measure results, and personalize marketing efforts based on user preferences and behaviors.', '2023-08-19 10:26:06', 'https://jongtasmm.com/img/files/6f6249911e492e384cf38833dc33499f.png', '1', 'demo1', '2023-08-20 08:38:24'),
(3, 'demo2', 'Digital marketing is the practice of promoting products or services using digital technologies and online platforms. It involves various strategies and tactics such as search engine optimization (SEO), social media marketing, content marketing, email marketing, influencer marketing, and online advertising. The aim of digital marketing is to reach and engage with a target audience, drive website traffic, generate leads, and ultimately convert those leads into customers. It also involves analyzing data and metrics to measure the effectiveness of marketing campaigns and make data-driven decisions.', '2023-08-19 10:26:38', 'https://jongtasmm.com/img/files/f701d6a12137ce96f57929431711496e.png', '1', 'demo2', '2023-08-20 08:39:09'),
(4, 'digi', 'There are several ways to learn social media marketing online. Here are some steps you can follow:\n\n\n\n1. Research and identify reputable online courses or certifications: Look for courses offered by renowned institutions, industry experts, or specialized platforms. Some popular options include Udemy, Coursera, LinkedIn Learning, and HubSpot Academy.\n\n\n\n2. Choose a course that suits your needs: Consider factors like your current skill level, budget, and desired outcome. Look for courses that cover various aspects of social media marketing, such as strategy development, content creation, advertising, analytics, and community management.\n\n\n\n3. Enroll in the course: Once you\'ve selected a course, enroll and start learning. Many online courses offer self-paced learning, allowing you to study at your own convenience.\n\n\n\n4. Participate in online communities: Join social media marketing groups or forums to connect with fellow learners and professionals. Engaging in discussions and sharing experiences can enhance your learning process.\n\n\n\n5. Stay updated with industry trends: Follow influential social media marketing blogs, podcasts, and YouTube channels to keep yourself informed about the latest trends and best practices in the field.\n\n\n\n6. Practice hands-on: Apply the knowledge gained from your online course by creating and managing social media accounts for personal projects or small businesses. Experiment with different strategies, content formats, and advertising techniques to gain practical experience.\n\n\n\n7. Monitor and analyze results: Use social media analytics tools to track the performance of your campaigns. Analyzing data and metrics will help you understand what works and what doesn\'t, allowing you to optimize your strategies.\n\n\n\n8. Continuously learn and adapt: Social media platforms and trends evolve rapidly. Stay updated by regularly learning new techniques, attending webinars, or participating in online workshops.\n\n\n\nRemember, practice and experimentation are crucial for mastering social media marketing. By continuously learning, adapting, and applying your knowledge, you can become proficient in this field.', '2023-08-20 08:40:28', 'https://jongtasmm.com/img/files/f8c07f807b2d5433c17130653befb7d9.png', '1', 'way-to-learning', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') NOT NULL DEFAULT '2',
  `category_icon` text NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_line`, `category_type`, `category_secret`, `category_icon`, `is_refill`) VALUES
(403, '𝗦𝗽𝗼𝘁𝗶𝗳𝘆 Plays', 43, '2', '2', '', '1'),
(404, '𝗦𝗽𝗼𝘁𝗶𝗳𝘆 Monthly Listeners', 44, '2', '2', '', '1'),
(405, '𝗦𝗽𝗼𝘁𝗶𝗳𝘆 Search Plays', 45, '2', '2', '', '1'),
(406, '𝗦𝗽𝗼𝘁𝗶𝗳𝘆 Saves', 46, '2', '2', '', '1'),
(402, '𝗦𝗽𝗼𝘁𝗶𝗳𝘆 Followers', 42, '2', '2', '', '1'),
(401, '𝗙𝗮𝗰𝗲𝗯𝗼𝗼𝗸 Profile Followers', 41, '2', '2', '', '1'),
(400, '𝗙𝗮𝗰𝗲𝗯𝗼𝗼𝗸 Followers [ Classic Page ]', 40, '2', '2', '', '1'),
(399, '𝗧𝗶𝗸𝗧𝗼𝗸 Followers - [ Guaranteed ]', 39, '2', '2', '', '1'),
(398, '𝗧𝗶𝗸𝗧𝗼𝗸 Followers', 38, '2', '2', '', '1'),
(396, '𝗧𝗶𝗸𝗧𝗼𝗸 Likes', 36, '2', '2', '', '1'),
(397, '𝗧𝗶𝗸𝗧𝗼𝗸 Likes - [ Guaranteed ]', 37, '2', '2', '', '1'),
(395, '𝗧𝗶𝗸𝗧𝗼𝗸 Video Views + Likes + Engagement | 𝐏𝐫𝐨𝐯𝐢𝐝𝐞𝐫', 35, '2', '2', '', '1'),
(393, '𝗧𝗶𝗸𝗧𝗼𝗸 Video Views + Share | 𝐏𝐫𝐨𝐯𝐢𝐝𝐞𝐫', 33, '2', '2', '', '1'),
(394, '𝗧𝗶𝗸𝗧𝗼𝗸 Video Views + Likes + Share | 𝐏𝐫𝐨𝐯𝐢𝐝𝐞𝐫', 34, '2', '2', '', '1'),
(367, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Views', 7, '2', '2', '', '1'),
(368, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Followers [ All Time Working ]', 8, '2', '2', '', '1'),
(369, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Followers - [ 365 Guaranteed ]', 9, '2', '2', '', '1'),
(370, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Likes', 10, '2', '2', '', '1'),
(371, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Likes [ Guaranteed ]', 11, '2', '2', '', '1'),
(372, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Story Views', 12, '2', '2', '', '1'),
(373, '𝗜𝗻𝘀𝘁𝗮𝗴𝗿𝗮𝗺 Story Others', 13, '2', '2', '', '1'),
(374, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Views', 14, '2', '2', '', '1'),
(375, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Shorts', 15, '2', '2', '', '1'),
(376, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Likes', 16, '2', '2', '', '1'),
(377, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Likes [ Guranteed ]', 17, '2', '2', '', '1'),
(378, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Likes - [ Country Targeted ]', 18, '2', '2', '', '1'),
(379, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Subscribers - [ No Refill ] ', 19, '2', '2', '', '1'),
(380, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Subscribers - [ Guaranteed ]', 20, '2', '2', '', '1'),
(381, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Watchtime - [ Guaranteed ]', 21, '2', '2', '', '1'),
(382, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Watchtime - [ Fast ] ᴺᴱᵂ', 22, '2', '2', '', '1'),
(383, '𝗬𝗼𝘂𝗧𝘂𝗯𝗲 Comments', 23, '2', '2', '', '1'),
(384, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Services ', 24, '2', '2', '', '1'),
(385, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Members - [ Non Drop ] [ 3 - 60 Days ]', 25, '2', '2', '', '1'),
(386, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Reactions - [ Cheapest ]', 26, '2', '2', '', '1'),
(387, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Views', 27, '2', '2', '', '1'),
(388, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Views - [ Last Post ]', 28, '2', '2', '', '1'),
(389, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Views - [ Last Post ] cheapest', 29, '2', '2', '', '1'),
(390, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Views [ Last Post  ] 𝗖𝗵𝗲𝗮𝗽 ᴺᴱᵂ', 30, '2', '2', '', '1'),
(391, '𝗧𝗲𝗹𝗲𝗴𝗿𝗮𝗺 Start Robot - [ +SEO ]', 31, '2', '2', '', '1'),
(392, '𝗧𝗶𝗸𝗧𝗼𝗸 Views', 32, '2', '2', '', '1'),
(366, '𝗧𝗵𝗿𝗲𝗮𝗱𝘀 Followers [ Verified Account ]', 6, '2', '2', '', '1'),
(361, 'New Services', 1, '2', '2', '', '1'),
(362, 'Smm Wings | Free Promotion ', 2, '2', '2', '', '1'),
(363, '𝗧𝗵𝗿𝗲𝗮𝗱𝘀 Followers', 3, '2', '2', '', '1'),
(364, '𝗧𝗵𝗿𝗲𝗮𝗱𝘀 Likes', 4, '2', '2', '', '1'),
(365, '𝗧𝗵𝗿𝗲𝗮𝗱𝘀 Reshare [ Verified Account ]', 5, '2', '2', '', '1'),
(407, 'Kick Services', 47, '2', '2', '', '1'),
(408, 'Private API', 48, '2', '2', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `child_username` varchar(191) NOT NULL,
  `child_password` varchar(191) NOT NULL,
  `charge` double NOT NULL,
  `status` enum('Pending','Active','Frozen','Suspended') NOT NULL DEFAULT 'Pending',
  `renewal_date` date NOT NULL,
  `date_created` datetime NOT NULL,
  `dreampanel_id` int(11) NOT NULL,
  `keyc` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `spent` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `coustm_rate` int(11) NOT NULL,
  `broadcast_id` text NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `admin_type`, `password`, `telephone`, `balance`, `spent`, `balance_type`, `debit_limit`, `register_date`, `login_date`, `login_ip`, `apikey`, `tel_type`, `email_type`, `client_type`, `access`, `lang`, `timezone`, `currency_type`, `ref_code`, `ref_by`, `change_email`, `resend_max`, `currency`, `passwordreset_token`, `coustm_rate`, `broadcast_id`) VALUES
(1, '', 'admin@smmwings.com', 'smmwings', '2', '7991980841033a87cac865da1f8e0218', '', '0.0000', '0.0000', '2', NULL, '2023-08-21 17:21:46', NULL, NULL, '5e96bbafa7da00ad210a12f3d5349711', '1', '2', '2', NULL, 'en', 0, 'USD', '5d96f0', NULL, '2', 0, '1', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `client_report`
--

INSERT INTO `client_report` (`id`, `client_id`, `action`, `report_ip`, `report_date`) VALUES
(1, 1, '\r\n    User registered.', '27.97.1.176', '2023-08-21 17:21:46'),
(2, 1, 'API Key changed', '42.105.205.164', '2023-08-21 20:57:58'),
(3, 1, 'API Key changed', '42.105.205.58', '2023-08-22 11:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(100) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `symbol_position` varchar(10) DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `currency_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'Indian Rupee', 'INR', '₹', 'left', 83.099451896888, 0.012033773715389, 1, 'fb62a4f7c4747614699e835de53e6a479f64d07f'),
(2, 'U.S. Dollar', 'USD', '$', 'left', 0.012031031705754, 83.118391211764, 1, '53cd2b56cdafa88052802f5edf4c817fef84aee4'),
(5, 'Russian Rouble', 'RUB', '₽', 'left', 1.1300844875485, 0.88488959101573, 1, 'd6c56b5be7c27cec2a2d53e08ff932829ed78087'),
(6, 'Brazilian Real', 'BRL', 'R$', 'left', 0.059356252156033, 16.847424890831, 1, 'c79988744b4f3cbe2b8f0e9ed6aa10cae327c0cf'),
(7, 'South Korean Won', 'KRW', '₩', 'left', 16.132200203303, 0.061987824809866, 1, '1336efa4a31aef57ca03090d5501d9de6755be36'),
(8, 'Saudi Riyal', 'SAR', '﷼', 'left', 0.045126596642515, 22.159880744427, 1, '26eb60eae54b0464b8000cc724ee72a04d8460d0'),
(10, 'Vietnamese Dong', 'VND', '₫', 'left', 285.8001686902, 0.0034989482496911, 1, '0df8c1e5c329617a1b4cf17d779442009d742b30'),
(11, 'Kuwaiti Dinar', 'KWD', 'د.ك', 'left', 0.0037055553612213, 269.86508161908, 1, '9d3bde4851e87b8a37fc3c06b2eb9b577eb721aa'),
(12, 'Egyptian Pound', 'EGP', '£', 'left', 0.37191439121042, 2.6887908175465, 1, '5ba2f8278564b4508aa8f68171c9ae8dd89792c4'),
(13, 'Pakistani Rupee', 'PKR', '₨', 'left', 3.4750133685499, 0.28776867710794, 1, 'e184c69a462944c64dab4ff8ae94cc990fdef20c'),
(17, 'Nigerian Naira', 'NGN', '₦', 'left', 9.1591041272732, 0.1091809838718, 1, '7791d370718fde1a2431cee866c20944e0c9c45b'),
(20, 'Colombian Peso', 'COP', '$', 'left', 49.420884731419, 0.020234360542806, 1, '2ba8cfe05a04f3c3ba987490fb58db4ee8c02ded');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `symbol` text DEFAULT NULL,
  `value` double DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `default` enum('2','1') NOT NULL DEFAULT '2',
  `nouse` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `symbol`, `value`, `name`, `status`, `default`, `nouse`) VALUES
(1, '$', 1, 'USD', '1', '1', '1'),
(7, '฿', 36.33, 'Baht', '1', '2', '2'),
(8, '₹', 79, 'INR', '1', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int(11) NOT NULL,
  `snow_data` text NOT NULL,
  `snow_data_array` text NOT NULL,
  `snow_status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text NOT NULL,
  `orders_count_increase` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0'),
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(11) NOT NULL,
  `snow_effect` int(3) NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int(3) NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int(2) NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int(2) NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text DEFAULT NULL,
  `fire_works` text DEFAULT NULL,
  `toys` text DEFAULT NULL,
  `snowflakes` int(10) NOT NULL,
  `snow_speed` int(20) NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int(20) NOT NULL,
  `toy_quantity` int(50) NOT NULL,
  `toy_speed` int(10) NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#ffffff', 0, '', '\n<style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style>\n<!-- developed by Raj Patel-->\n      \n<!-- developed by Raj Patel-->  \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" >\n       window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>\n    \n        \n    <script type=\"text/javascript\" >\n       window.modules.signin = [];     </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" >\n       document.addEventListener(\'DOMContentLoaded\', function() { \nvar newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\"', '', 0, '', '', '', 0, 'true', '', 'true', '', 50, 10, 'pear', 'style3', '0.95', 'medium', 80, 100, 6, 'infinite', '1', '1', '', '', '', '', '', '', '', '1', '1', 'dukesmm.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 1024, 20, '2', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '<script type=\"text/javascript\" src=\"https://ebot24.com/js/2waychat/plugin-169174345879.js\"></script><div style=\"z-index:9999999\"><div class=\"fb-customerchat\" page_id=\"103922508803437\" ref=\"jongtasmm\" greeting_dialog_display=\"show\" theme_color=\"#FFFFFF\"></div></div>', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', '/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) NOT NULL DEFAULT '2',
  `icon` varchar(225) DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') NOT NULL DEFAULT 'Internal',
  `active` varchar(225) NOT NULL,
  `tiptext` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'New Order', 1, '2', '/', 'fa fa-shopping-bag', '1', 'Internal', 'neworder', ''),
(2, 'Mass Order', 2, '2', '/massorder', 'fas fa-cart-plus', '1', 'Internal', 'massorder', 'Shown only if Mass Order system enabled for use'),
(3, 'Orders ', 3, '2', '/orders', 'fas fa-server', '1', 'Internal', 'orders', ''),
(4, 'Refill', 4, '2', '/refill', 'fas fa-recycle', '1', 'Internal', 'refill', 'Shown only if user have at least one refill task'),
(5, 'Login', 1, '2', '/', 'fas fa-address-card', '1', 'External', 'login', ''),
(6, 'Services', 5, '2', '/services', 'fas fa-file-alt', '1', 'Internal', 'services', ''),
(7, 'Add Funds', 6, '2', '/addfunds', 'fab fa-cc-amazon-pay', '1', 'Internal', 'addfunds', ''),
(8, 'Api', 9, '2', '/api', 'fal fa-plug', '1', 'Internal', 'api', ''),
(9, 'Tickets ', 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'Re-Seller | $ 28/M |', 10, '2', '/child-panels', 'fas fa-child ', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(14, 'Signup ', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(24, 'Services', 14, '2', '/services', 'fas fa-file-alt', '1', 'External', 'services', ''),
(31, 'Earn & Referral', 15, '2', '/refer', 'fas fa-sitemap', '1', 'Internal', 'refer', ''),
(32, 'Updates', 16, '2', '/updates', 'fad fa-calendar-check', '1', 'Internal', 'updates', ''),
(33, 'Transfer Funds', 17, '2', '/transferfunds', 'fad fa-random', '1', 'Internal', 'transferfunds', ''),
(34, 'Blog', 18, '2', '/blog', 'fab fa-blogger', '1', 'External', 'blog', ''),
(35, 'Blog', 19, '2', '/blog', 'fab fa-blogger', '1', 'Internal', 'blog', ''),
(36, 'APi', 20, '2', '/api', 'fal fa-plug', '1', 'External', 'api', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_icon`, `news_title`, `news_content`, `news_date`) VALUES
(6, 'facebook', 'Hello Facebook', 'Hello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello FacebookHello Facebook', '2023-08-18 19:02:07'),
(7, 'instagram', 'Hello Instagram', 'Hello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello InstagramHello Instagram', '2023-08-19 09:02:18'),
(8, 'tiktok', 'Hello TikTok', 'Hello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello TikTokHello Tik', '2023-08-19 09:02:48'),
(9, 'telegram', 'Hello Telegram', 'Hello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello TelegramHello Telegram', '2023-08-19 09:04:44'),
(10, 'youtube', 'Hello Youtube', 'Hello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello YoutubeHello Youtube', '2023-08-19 09:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text DEFAULT NULL,
  `action_link` text DEFAULT NULL,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '', '1', '1', '', '', '', '2023-08-21 05:26:35', '2', '<h3>Best Smm Provider: <a href=\"http://smmwings.com\" target=\"_blank\">smmwings.com</a></h3>'),
(787, 'Login', 'auth', '', '1', '1', 'Login', '', '', '2023-08-20 06:23:20', '2', ''),
(9, 'New Order', 'neworder', '', '1', '1', '', '', '', '2023-08-20 04:02:25', '2', ''),
(14, 'Terms', 'terms', '', '1', '1', '', '', '', '2022-02-07 08:41:16', '2', ''),
(789, 'Mass Order', 'massorder', '', '1', '1', '', '', '', '2023-08-20 04:02:02', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', '', '', '', '2022-02-07 08:53:20', '2', ''),
(791, 'Services', 'services', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(793, 'API', 'api', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(795, 'Blog', 'blog', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text NOT NULL,
  `panel_plan` text NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'thundersmm.xyz', 'A', 'Active', 1449, 1449, '2022-01-24 10:58:08', 'b1fbedd6f1266a8990bf648919068680', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manuel','Otomatik','Auto') NOT NULL DEFAULT 'Otomatik',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `client_id`, `client_balance`, `payment_amount`, `payment_privatecode`, `payment_method`, `payment_status`, `payment_delivery`, `payment_note`, `payment_mode`, `payment_create_date`, `payment_update_date`, `payment_ip`, `payment_extra`, `payment_bank`, `t_id`) VALUES
(113, 205, '0.00', '1000.0000', 0, 31, '1', '1', 'No', 'Auto', '2023-08-19 08:01:57', '0000-00-00 00:00:00', '103.172.252.205', '1692412317', 0, ''),
(114, 203, '0.00', '50.0000', 0, 31, '1', '1', 'No', 'Auto', '2023-08-19 09:09:23', '0000-00-00 00:00:00', '152.58.190.31', '1692416363', 0, ''),
(115, 203, '0.00', '50.0000', 0, 1, '3', '2', 'No', 'Manuel', '2023-08-19 19:20:20', '2023-08-19 19:20:20', '152.58.190.28', ' sad', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `bonus_id` int(11) NOT NULL,
  `bonus_method` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `bonus_amount` double NOT NULL,
  `bonus_type` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `method_get` varchar(225) NOT NULL,
  `method_min` double NOT NULL,
  `method_max` double NOT NULL,
  `method_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF	',
  `method_extras` text NOT NULL,
  `method_line` double NOT NULL,
  `nouse` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `method_get`, `method_min`, `method_max`, `method_type`, `method_extras`, `method_line`, `nouse`) VALUES
(1, 'Paypal', 'paypal', 10, 10000, '2', '{\"method_type\":\"1\",\"name\":\"Paypal ( USD ) ( International Payments ) [ 10% Charge ]\",\"min\":\"10\",\"max\":\"10000\",\"client_id\":\"AR3wtI3dxA0qU2dme-kQdC6csRL4whF8SNWzJ2jilchyZvQsBJ7URF4UqktveDp67guIenYYX-e0zuCz\",\"client_secret\":\"EMFtatHjrBMf9EYcec0WZqKwGwO2aum03w62b9tZZWPB2G__WoFuBMkMu0z97NR8ooRJNXR0FqrtagrD\",\"fee\":\"0\"}', 8, '2'),
(2, 'Stripe', 'stripe', 1, 100, '2', '{\"method_type\":\"2\",\"name\":\"Credit card\\/ Debit cards \\/Meeza cards\\/Mobile Wallets (5%BONUS FROM 10$)(Ramdan Offer)\",\"min\":\"1\",\"max\":\"100\",\"stripe_publishable_key\":\"pk_live_51HiUnRLjkQAtcIW0F983imoO8qhftSSMSj7oB9xTjGHB51su6vnuDmGNs5l2NNZz1XE1Ogf1svxqjtdasRYr3atk00wEAHHKNT\",\"stripe_secret_key\":\"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\",\"stripe_webhooks_secret\":\"whsec_gSvhMz0eOIOTk5S9uzzzDgpHeclOmiDe\",\"fee\":\"10\",\"currency\":\"USD\"}', 5, '2'),
(3, 'Shopier', 'shopier', 5, 0, '2', '{\"method_type\":\"1\",\"name\":\"Kredi \\/ Banka Kart\\u0131 ile \\u00d6de\",\"min\":\"5\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"website_index\":\"1\",\"processing_fee\":\"1\",\"fee\":\"10\",\"currency\":\"USD\"}', 12, '2'),
(5, 'Paywant', 'paywant', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Paywant\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\",\"currency\":\"USD\",\"commissionType\":\"2\",\"payment_type\":[\"1\",\"2\",\"3\"]}', 13, '2'),
(7, 'PayTR', 'paytr', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Paytr\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 14, '2'),
(8, 'Coinpayments', 'coinpayments', 10, 0, '2', '{\"method_type\":\"2\",\"name\":\"CoinPayments ( Cryptocurrency )\",\"min\":\"10\",\"max\":\"0\",\"coinpayments_public_key\":\"5a6f3154ddf28c2017df7ad00ce5c1f2b872822beb1ed32f52e0009a2425ecfd\",\"coinpayments_private_key\":\"da16CB5D8Ce6d90eD7181b5907F2103739ef0D5dbF591Ddf22d8f93649170E2F\",\"coinpayments_currency\":\"BTC\",\"merchant_id\":\"db74662404abc41263c87ed221718ce3\",\"ipn_secret\":\"5566\",\"fee\":\"0\",\"currency\":\"USD\"}', 26, '2'),
(9, '2checkout', '2checkout', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"2checkout\",\"min\":\"1\",\"max\":\"0\",\"seller_id\":\"\",\"private_key\":\"\",\"fee\":\"1\",\"currency\":\"USD\"}', 4, '2'),
(10, 'Payoneer', 'payoneer', 0, 0, '2', '{\"method_type\":\"2\",\"name\":\"Payoneer\",\"email\":\"aibrain24@gmail.com\"}', 2, '2'),
(11, 'Mollie', 'mollie', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Mollie\",\"min\":\"1\",\"max\":\"0\",\"live_api_key\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 15, '2'),
(12, 'PayTM', 'paytm', 1, 100000, '2', '{\"method_type\":\"2\",\"name\":\"PayTM ( INR )( UPI \\/ NET BANKING \\/ DEBIT \\/ CREDIT CARD)\",\"min\":\"1\",\"max\":\"100000\",\"merchant_key\":\"jDCzC20@UXWt9vkG\",\"merchant_mid\":\"jKsJRS16218831858725\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"INR\"}', 9, '2'),
(13, 'Instamojo', 'instamojo', 0, 0, '2', '{\"method_type\":\"2\",\"name\":\"Instamojo\",\"min\":\"0\",\"max\":\"0\",\"api_key\":\"a2bdf5035c16ad6db389caeb5ceb5273\",\"live_auth_token_key\":\"81ef2affdc5ecfde9b88b13e1cd67cd8\",\"fee\":\"0\",\"currency\":\"INR\"}', 16, '2'),
(14, 'Paytm Business', 'paytmqr', 1, 1000000, '2', '{\"method_type\":\"2\",\"name\":\"PAYTM BUSINESS QR\",\"min\":\"1\",\"max\":\"1000000\",\"merchant_key\":\"https:\\/\\/cdn.panelsupply.in\\/public\\/uploads\\/1c42588c87e16a3cffc8838d8d2fccbc.jpg\",\"merchant_mid\":\"\",\"merchant_website\":\"DEFAULT\",\"fee\":\"5\"}', 10, '2'),
(15, 'Razorpay', 'razorpay', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Razorpay\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"INR\"}', 17, '2'),
(16, 'Iyzico', 'iyzico', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Iyzico\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 18, '2'),
(17, 'Authorize.net', 'authorize-net', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Authorize.net\",\"min\":\"1\",\"max\":\"0\",\"api_login_id\":\"0\",\"secret_transaction_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 19, '2'),
(20, 'Ravepay', 'ravepay', 1, 10, '2', '{\"method_type\":\"2\",\"name\":\"Ravepay\",\"min\":\"1\",\"max\":\"10\",\"public_api_key\":\"0\",\"secret_api_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 20, '2'),
(21, 'Pagseguro', 'pagseguro', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"Pagseguro\",\"min\":\"1\",\"max\":\"0\",\"email_id\":\"0\",\"live_production_token\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 23, '2'),
(22, 'Cashmaal', 'Cashmaal', 10, 10000, '2', '{\"method_type\":\"2\",\"name\":\"CashMaal (USD)(JAZZCASH)(EASYPAISA)\",\"min\":\"10\",\"max\":\"10000\",\"web_id\":\"5396\",\"fee\":\"0\",\"currency\":\"USD\"}', 27, '2'),
(25, 'Refer & earn', 'refer', 0, 0, '1', '{\"method_type\":\"2\",\"name\":\"Do Not Use\",\"min\":\"1\",\"max\":\"10000\",\"merchant_key\":\"P#n%aKfB3&DRAMqH\",\"merchant_mid\":\"DBWvgX98800736620578\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"\"}', 25, '1'),
(26, 'payumoney', 'payumoney', 10, 0, '2', '{\"method_type\":\"2\",\"name\":\"Payumoney\",\"min\":\"10\",\"max\":\"0\",\"merchant_key\":\"L5is3x\",\"salt_key\":\"hKCK47h9\",\"fee\":\"10\",\"currency\":\"INR\"}', 21, '2'),
(30, 'Freebalance', 'Freebalance', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Freebalance\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 30, '1'),
(31, 'Perfect Money', 'perfectmoney', 0.1, 10000, '2', '{\"method_type\":\"1\",\"name\":\"Perfect Money\",\"min\":\"0.10\",\"max\":\"10000\",\"passphrase\":\"\",\"usd\":\"\",\"merchant_website\":\"smmxmonky\",\"fee\":\"1\"}', 3, '2'),
(32, 'Coinbase', 'Coinbase', 15, 1500, '2', '{\"method_type\":\"2\",\"name\":\"Coinbase commerce | BTC, LTC, USDT, ETH | Min 15 - Max 1500\",\"min\":\"15\",\"max\":\"1500\",\"api_key\":\"4ef2601e-af71-423f-88ba-16b9087e5e16\",\"webhook_api\":\"71381b16-999d-43f8-989c-ad7688069a60\",\"fee\":\"10\"}', 1, '2'),
(33, 'Webmoney', 'Webmoney', 1, 1, '2', '{\"method_type\":\"2\",\"name\":\"Webmoney\",\"min\":\"1\",\"max\":\"1\",\"wmid\":\"\",\"purse\":\"\",\"fee\":\"0\"}', 22, '2'),
(34, 'UnitPay', 'UnityPay', 1, 0, '2', '{\"method_type\":\"1\",\"name\":\"UnitPay\",\"min\":\"1\",\"max\":\"0\",\"secret_key\":\"\",\"reg_email\":\"\",\"fee\":\"0\"}', 24, '2'),
(35, 'Payeer', 'payeer', 10, 0, '2', '{\"method_type\":\"2\",\"name\":\"Payeer\",\"min\":\"1\",\"max\":\"100000\",\"account\":\"P1059667343\",\"client_secret\":\"tQCaSXyX94pRgpOt\",\"user_id\":\"1654044737\",\"user_pass\":\"tQCaSXyX94pRgpOt\",\"m_shop\":\"1652134607\"}', 6, '2'),
(36, '<b>FundsSystem</b>', 'funds', 1, 0, '2', '{}', 25, '2'),
(37, 'opay', 'opay', 1, 1000, '2', '{\"method_type\":\"2\",\"is_demo\":\"1\",\"name\":\"opay - Visa - Mastercard - Mobile Wallets\",\"min\":\"1\",\"max\":\"1000\",\"merchant_id\":\"281822041448063\",\"secret_key\":\"OPAYPRV16499350091410.788976381970694\",\"public_key\":\"OPAYPUB16499350091410.6534196662876502\",\"dollar_rate\":\"18.5\"}', 7, '2'),
(39, 'Phonepe', 'phonepe', 1, 10000, '2', '{\"method_type\":\"1\",\"name\":\"Phone Pe\",\"min\":\"1\",\"max\":\"10000\",\"phonepe_qr_link\":\"https:\\/\\/i.ibb.co\\/jzStZvZ\\/photo-2022-12-23-17-10-12.jpg\",\"email\":\"amitbhatijsm@gmail.com\",\"pass\":\"fgjhjghfjg\"}', 11, '2');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methodsold`
--

CREATE TABLE `payment_methodsold` (
  `id` int(11) NOT NULL,
  `method_name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `method_get` varchar(225) NOT NULL,
  `method_min` double NOT NULL,
  `method_max` double NOT NULL,
  `method_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF	',
  `method_extras` text NOT NULL,
  `method_line` double NOT NULL,
  `nouse` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_methodsold`
--

INSERT INTO `payment_methodsold` (`id`, `method_name`, `method_get`, `method_min`, `method_max`, `method_type`, `method_extras`, `method_line`, `nouse`) VALUES
(1, 'Paypal', 'paypal', 10, 10000, '2', '{\"method_type\":\"2\",\"name\":\"Paypal ( USD ) ( International Payments ) [ 10% Charge ]\",\"min\":\"10\",\"max\":\"10000\",\"client_id\":\"AWWRCH4eG0dDMY_84cDXJVKVsBGSzJpnezbgAB4Qm49cTQ2dJwZWMaWzNAbUv4ojUunW-pgicoYTMA0l\",\"client_secret\":\"EMiHDg3EejaX_ns8h3ybEkgBcm_mbFfPoK_EeNyW_UGX_LJlKxa3lpW9nDf7-gRrQMV1kyUWS1J48NxC\",\"fee\":\"10\"}', 3, '2'),
(2, 'Stripe', 'stripe', 1, 100, '1', '{\"method_type\":\"2\",\"name\":\"Stripe\",\"min\":\"1\",\"max\":\"100\",\"stripe_publishable_key\":\"pk_live_51HiUnRLjkQAtcIW0F983imoO8qhftSSMSj7oB9xTjGHB51su6vnuDmGNs5l2NNZz1XE1Ogf1svxqjtdasRYr3atk00wEAHHKNT\",\"stripe_secret_key\":\"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\",\"stripe_webhooks_secret\":\"whsec_gSvhMz0eOIOTk5S9uzzzDgpHeclOmiDe\",\"fee\":\"10\",\"currency\":\"USD\"}', 4, '2'),
(3, 'Shopier', 'shopier', 5, 0, '1', '{\"method_type\":\"1\",\"name\":\"Kredi \\/ Banka Kart\\u0131 ile \\u00d6de\",\"min\":\"5\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"website_index\":\"1\",\"processing_fee\":\"1\",\"fee\":\"10\",\"currency\":\"USD\"}', 5, '2'),
(5, 'Paywant', 'paywant', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Paywant\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\",\"currency\":\"USD\",\"commissionType\":\"2\",\"payment_type\":[\"1\",\"2\",\"3\"]}', 6, '2'),
(7, 'PayTR', 'paytr', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Paytr\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 7, '2'),
(8, 'Coinpayments', 'coinpayments', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Coinpayments\",\"min\":\"1\",\"max\":\"0\",\"coinpayments_public_key\":\"\",\"coinpayments_private_key\":\"\",\"coinpayments_currency\":\"LTCT\",\"merchant_id\":\"\",\"ipn_secret\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 8, '2'),
(9, '2checkout', '2checkout', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"2checkout\",\"min\":\"1\",\"max\":\"0\",\"seller_id\":\"\",\"private_key\":\"\",\"fee\":\"1\",\"currency\":\"USD\"}', 9, '2'),
(10, 'Payoneer', 'payoneer', 1, 0, '1', '{\"method_type\":\"2\",\"name\":\"Payoneer\",\"email\":\"fazilakbulut@outlook.com\"}', 10, '2'),
(11, 'Mollie', 'mollie', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Mollie\",\"min\":\"1\",\"max\":\"0\",\"live_api_key\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 11, '2'),
(12, 'PayTM', 'paytm', 10, 100000, '2', '{\"method_type\":\"2\",\"name\":\"PayTM ( INR )( UPI \\/ NET BANKING \\/ DEBIT \\/ CREDIT CARD)\",\"min\":\"10\",\"max\":\"100000\",\"merchant_key\":\"IR6iRT5L0tOxBte4\",\"merchant_mid\":\"gVkWqH50536759745964\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"\"}', 2, '2'),
(13, 'Instamojo', 'instamojo', 0, 0, '1', '{\"method_type\":\"2\",\"name\":\"Instamojo\",\"min\":\"0\",\"max\":\"0\",\"api_key\":\"a2bdf5035c16ad6db389caeb5ceb5273\",\"live_auth_token_key\":\"81ef2affdc5ecfde9b88b13e1cd67cd8\",\"fee\":\"0\",\"currency\":\"INR\"}', 12, '2'),
(14, 'Paytm Business', 'paytmqr', 10, 1000000, '2', '{\"method_type\":\"2\",\"name\":\"PayTM QR (5% Bonus From 2000rs)\",\"min\":\"10\",\"max\":\"1000000\",\"merchant_key\":\"https:\\/\\/i.imgur.com\\/mlAI1qX.png\",\"merchant_mid\":\"HYJEZD46937702834501\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\"}', 1, '2'),
(15, 'Razorpay', 'razorpay', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Razorpay\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"INR\"}', 13, '2'),
(16, 'Iyzico', 'iyzico', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Iyzico\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 14, '2'),
(17, 'Authorize.net', 'authorize-net', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Authorize.net\",\"min\":\"1\",\"max\":\"0\",\"api_login_id\":\"0\",\"secret_transaction_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 15, '2'),
(20, 'Ravepay', 'ravepay', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Ravepay\",\"min\":\"1\",\"max\":\"0\",\"public_api_key\":\"0\",\"secret_api_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 17, '2'),
(21, 'Pagseguro', 'pagseguro', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Pagseguro\",\"min\":\"1\",\"max\":\"0\",\"email_id\":\"0\",\"live_production_token\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 18, '2'),
(22, 'Cashmaal', 'Cashmaal', 1, 10000, '2', '{\"method_type\":\"2\",\"name\":\"CashMaal (USD)(JAZZCASH)(EASYPAISA)\",\"min\":\"1\",\"max\":\"10000\",\"web_id\":\"5396\",\"fee\":\"0\",\"currency\":\"USD\"}', 19, '2'),
(25, 'Refer & earn', 'refer', 0, 0, '1', '{\"method_type\":\"2\",\"name\":\"Do Not Use\",\"min\":\"1\",\"max\":\"10000\",\"merchant_key\":\"P#n%aKfB3&DRAMqH\",\"merchant_mid\":\"DBWvgX98800736620578\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"\"}', 25, '1'),
(26, 'payumoney', 'payumoney', 10, 0, '1', '{\"method_type\":\"2\",\"name\":\"Payumoney\",\"min\":\"10\",\"max\":\"0\",\"merchant_key\":\"Mv4ctvrc\",\"salt_key\":\"pWUvDRU8CT\",\"fee\":\"10\",\"currency\":\"INR\"}', 16, '2'),
(30, 'Freebalance', 'Freebalance', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Freebalance\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 30, '1');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`referral_id`, `referral_client_id`, `referral_clicks`, `referral_sign_up`, `referral_totalFunds_byReffered`, `referral_earned_commision`, `referral_requested_commision`, `referral_total_commision`, `referral_status`, `referral_code`, `referral_rejected_commision`) VALUES
(255, 194, 0, 0, 0, 0, '0', 0, '1', 'd899af', 0),
(256, 195, 0, 0, 0, 0, '0', 0, '1', '407c5e', 0),
(257, 196, 0, 0, 0, 0, '0', 0, '1', '6e71c2', 0),
(258, 197, 0, 0, 0, 0, '0', 0, '1', '52bcd9', 0),
(259, 198, 0, 0, 0, 0, '0', 0, '1', '0e64d9', 0),
(260, 199, 0, 0, 0, 0, '0', 0, '1', '11d031', 0),
(261, 200, 0, 0, 0, 0, '0', 0, '1', '99ffd4', 0),
(262, 201, 0, 0, 0, 0, '0', 0, '1', 'd00f13', 0),
(263, 202, 0, 0, 0, 0, '0', 0, '1', '681f3d', 0),
(264, 203, 0, 0, 0, 0, '0', 0, '1', 'faee93', 0),
(265, 204, 0, 0, 0, 0, '0', 0, '1', 'a33348', 0),
(266, 205, 0, 0, 0, 0, '0', 0, '1', '4ec41d', 0),
(267, 206, 0, 0, 0, 0, '0', 0, '1', '37a613', 0),
(268, 207, 0, 0, 0, 0, '0', 0, '1', '1ca51b', 0),
(269, 208, 0, 0, 0, 0, '0', 0, '1', '61b73f', 0),
(270, 209, 0, 0, 0, 0, '0', 0, '1', '6faa97', 0),
(271, 210, 0, 0, 0, 0, '0', 0, '1', 'a978d8', 0),
(272, 211, 0, 0, 0, 0, '0', 0, '1', 'd459bc', 0),
(273, 212, 0, 0, 0, 0, '0', 0, '1', 'af476c', 0),
(274, 213, 0, 0, 0, 0, '0', 0, '1', '3e30d8', 0),
(275, 214, 0, 0, 0, 0, '0', 0, '1', '59a381', 0),
(276, 215, 0, 0, 0, 0, '0', 0, '1', '014532', 0),
(277, 216, 0, 0, 0, 0, '0', 0, '1', '35d3fd', 0),
(278, 217, 0, 0, 0, 0, '0', 0, '1', '732126', 0),
(279, 218, 0, 0, 0, 0, '0', 0, '1', '8ffc31', 0),
(280, 219, 0, 0, 0, 0, '0', 0, '1', '3dd408', 0),
(281, 220, 0, 0, 0, 0, '0', 0, '1', '13e067', 0),
(282, 221, 0, 0, 0, 0, '0', 0, '1', 'fa4a96', 0),
(283, 222, 0, 0, 0, 0, '0', 0, '1', '8f9133', 0),
(284, 223, 0, 0, 0, 0, '0', 0, '1', 'd1e8a7', 0),
(285, 224, 0, 0, 0, 0, '0', 0, '1', 'a73a31', 0),
(286, 225, 0, 0, 0, 0, '0', 0, '1', 'e0873a', 0),
(287, 226, 0, 0, 0, 0, '0', 0, '1', '345dea', 0),
(288, 227, 0, 0, 0, 0, '0', 0, '1', '6f0c2e', 0),
(289, 228, 0, 0, 0, 0, '0', 0, '1', '3ad8c1', 0),
(290, 229, 0, 0, 0, 0, '0', 0, '1', '32462d', 0),
(291, 230, 0, 0, 0, 0, '0', 0, '1', '71b9ad', 0),
(292, 1, 0, 0, 0, 0, '0', 0, '1', '5d96f0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refill_status`
--

CREATE TABLE `refill_status` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `refill_apiid` int(11) DEFAULT NULL,
  `order_url` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') DEFAULT 'Pending',
  `order_apiid` int(11) DEFAULT 0,
  `refill_response` text DEFAULT NULL,
  `refill_where` enum('site','api') DEFAULT 'site'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` varchar(225) DEFAULT 'en',
  `description_lang` text DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL,
  `price_profit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(1, 34, 466, '2', '{\"min\":\"100\",\"max\":\"1000000000\",\"rate\":\"1.16\",\"currency\":\"INR\"}', 361, 1, '2', '1', 'Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT ★ 0-15 Min ★ 30M Per Day ]', '✶ Start: Instant\r\n✶ Speed: 30M+ Per Day\r\n✶ Drop: No Drop', '1.1716', 100, 1000000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT \\u2605 0-15 Min \\u2605 30M Per Day ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: 30M+ Per Day\\r\\n\\u2736 Drop: No Drop\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(2, 34, 465, '2', '{\"min\":\"100\",\"max\":\"500000000\",\"rate\":\"1.29\",\"currency\":\"INR\"}', 361, 2, '2', '1', 'Instagram Video Views - [ All Video ★ No-Drop ] [ 5M ★ INSTANT ]', '✶ Start: Instant\r\n✶ Speed: Fast 3M+/ Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Now instant and super fast can delay later\r\n◉ No Cancel After Order So order carefully', '1.3029', 100, 500000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ All Video \\u2605 No-Drop ] [ 5M \\u2605 INSTANT ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: Fast 3M+\\/ Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Now instant and super fast can delay later\\r\\n\\u25c9 No Cancel After Order So order carefully\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(3, 34, 467, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"24.02\",\"currency\":\"INR\"}', 361, 3, '2', '1', 'Instagram Followers - [ Real ★ 365 Days Refill ] [ 25K+ Per Day ★ Best Speed ]', '✶ Start: INSTANT\r\n✶ Speed: 25K+ Per Day\r\n✶ Quality: Real Accounts\r\n✶ Drop: Non Drop [ 0-5% ]\r\n✶ Refill: 365 Days \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '24.2602', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real \\u2605 365 Days Refill ] [ 25K+ Per Day \\u2605 Best Speed ]\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 25K+ Per Day\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Drop: Non Drop [ 0-5% ]\\r\\n\\u2736 Refill: 365 Days \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(4, 34, 270, '2', '{\"min\":\"100\",\"max\":\"500\",\"rate\":\"0\",\"currency\":\"INR\"}', 362, 4, '2', '1', 'TikTok Views Free', '', '0', 100, 500, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views Free\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(5, 34, 400, '2', '{\"min\":\"50\",\"max\":\"50000\",\"rate\":\"42.7583\",\"currency\":\"INR\"}', 363, 5, '2', '1', 'Threads Followers - [ Max 5K ★ 30 Days Refill ] [ 0-1 H ★ Fast Delivery ]', '', '43.185883', 50, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Followers - [ Max 5K \\u2605 30 Days Refill ] [ 0-1 H \\u2605 Fast Delivery ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(6, 34, 393, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"171.62\",\"currency\":\"INR\"}', 363, 6, '2', '1', 'Threads Followers - [ Max 500K ] [ Non Drop ★ 365 Days Refill ] [ 50K+ Per Day ] Ultra INSTANT', '✶ Start: 0-1 Hours\r\n✶ Speed: 50K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '173.3362', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Followers - [ Max 500K ] [ Non Drop \\u2605 365 Days Refill ] [ 50K+ Per Day ] Ultra INSTANT\"}', '{\"en\":\"\\u2736 Start: 0-1 Hours\\r\\n\\u2736 Speed: 50K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(7, 34, 359, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"344.02\",\"currency\":\"INR\"}', 363, 7, '2', '1', 'Threads Followers - [ Max 50K ] [ Non Drop ★ 365 Days Refill ] [ Real Users ] INSTANT ', '✶ Start: Ultra Instant\r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '347.4602', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Followers - [ Max 50K ] [ Non Drop \\u2605 365 Days Refill ] [ Real Users ] INSTANT \"}', '{\"en\":\"\\u2736 Start: Ultra Instant\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(8, 34, 313, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"462.9321\",\"currency\":\"INR\"}', 363, 8, '2', '1', 'Threads Followers - [ Max 10K ] [ 100% Real ] [ 30 Days Guaranteed ] [ SuperFast ]', '✶ Start: 0-10 Min\r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Link: Username\r\n✶ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '467.561421', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Followers - [ Max 10K ] [ 100% Real ] [ 30 Days Guaranteed ] [ SuperFast ]\"}', '{\"en\":\"\\u2736 Start: 0-10 Min\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Link: Username\\r\\n\\u2736 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(9, 34, 375, '2', '{\"min\":\"100\",\"max\":\"1000\",\"rate\":\"122.8032\",\"currency\":\"INR\"}', 364, 9, '2', '1', 'Threads Likes - [ Max 1K ] [ NR ]', '✶ Start: 0-30 Min\r\n✶ Speed: SUPERFAST\r\n✶ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '124.031232', 100, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 1K ] [ NR ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Min\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(10, 34, 376, '2', '{\"min\":\"10\",\"max\":\"30000\",\"rate\":\"180.4673\",\"currency\":\"INR\"}', 364, 10, '2', '1', 'Threads Likes - [ Max 30K ] [ NR ] Ultra Instant', '✶ Start: Instant\r\n✶ Speed: SUPERFAST\r\n✶ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '182.271973', 10, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 30K ] [ NR ] Ultra Instant\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(11, 34, 377, '2', '{\"min\":\"10\",\"max\":\"200000\",\"rate\":\"261.625\",\"currency\":\"INR\"}', 364, 11, '2', '1', 'Threads Likes - [ Max 20K ] [ NR ] Ultra Instant', '✶ Start: INSTANT\r\n✶ Speed: SUPERFAST\r\n✶ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '264.24125', 10, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 20K ] [ NR ] Ultra Instant\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(12, 34, 378, '2', '{\"min\":\"20\",\"max\":\"100000\",\"rate\":\"299\",\"currency\":\"INR\"}', 364, 12, '2', '1', 'Threads Likes - [ Max 100K ] [ 100% Real ★ NR ]', '✶ Start: Instant \r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '301.99', 20, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 100K ] [ 100% Real \\u2605 NR ]\"}', '{\"en\":\"\\u2736 Start: Instant \\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(13, 34, 379, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"347.0532\",\"currency\":\"INR\"}', 364, 13, '2', '1', 'Threads Likes - [ Max 50K ] [ 100% Real ★ NR ]', '✶ Start: Instant\r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '350.523732', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 50K ] [ 100% Real \\u2605 NR ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(14, 34, 392, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"146.34\",\"currency\":\"INR\"}', 364, 14, '2', '1', 'Threads Likes - [ Max 500K ] [ Non Drop ★ 365 Days Guaranteed ] [ 50K+ Per Day ] Ultra Instant', '✶ Start: 0-1 Hours\r\n✶ Speed: 50K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '147.8034', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 500K ] [ Non Drop \\u2605 365 Days Guaranteed ] [ 50K+ Per Day ] Ultra Instant\"}', '{\"en\":\"\\u2736 Start: 0-1 Hours\\r\\n\\u2736 Speed: 50K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(15, 34, 381, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"312.04\",\"currency\":\"INR\"}', 364, 15, '2', '1', 'Threads Likes - [ Max 50K ] [ Non Drop ] [ 100% Real Users ★ 365 Days Guaranteed ] Ultra Instant', '✶ Start: 0-10 Min\r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '315.1604', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 50K ] [ Non Drop ] [ 100% Real Users \\u2605 365 Days Guaranteed ] Ultra Instant\"}', '{\"en\":\"\\u2736 Start: 0-10 Min\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(16, 34, 380, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"480.5359\",\"currency\":\"INR\"}', 364, 16, '2', '1', 'Threads Likes - [ Max 10000 ] [ 100% Real ★ 30 Days Guaranteed ]', '✶ Start: Instant\r\n✶ Speed: SUPERFAST\r\n✶ Quality: Real Accounts\r\n✶ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '485.341259', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Likes - [ Max 10000 ] [ 100% Real \\u2605 30 Days Guaranteed ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: SUPERFAST\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(17, 34, 341, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"41.2412\",\"currency\":\"INR\"}', 365, 17, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 1 Reshare', '', '41.653612', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 1 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(18, 34, 342, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"82.3745\",\"currency\":\"INR\"}', 365, 18, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 2 Reshare', '', '83.198245', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 2 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(19, 34, 343, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"107.3982\",\"currency\":\"INR\"}', 365, 19, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 3 Reshare', '', '108.472182', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 3 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(20, 34, 344, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"164.6411\",\"currency\":\"INR\"}', 365, 20, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 4 Reshare', '', '166.287511', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 4 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(21, 34, 345, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"205.7757\",\"currency\":\"INR\"}', 365, 21, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 5 Reshare', '', '207.833457', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 5 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(22, 34, 346, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"247.0156\",\"currency\":\"INR\"}', 365, 22, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 6 Reshare', '', '249.485756', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 6 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(23, 34, 347, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"288.1502\",\"currency\":\"INR\"}', 365, 23, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 7 Reshare', '', '291.031702', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 7 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(24, 34, 348, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"329.2835\",\"currency\":\"INR\"}', 365, 24, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 8 Reshare', '', '332.576335', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 8 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(25, 34, 349, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"354.4151\",\"currency\":\"INR\"}', 365, 25, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 9 Reshare', '', '357.959251', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 9 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(26, 34, 350, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"411.5501\",\"currency\":\"INR\"}', 365, 26, '2', '2', 'Threads Reshare - From VERIFIED ACCOUNT | 10 Reshare', '', '415.665601', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads Reshare - From VERIFIED ACCOUNT | 10 Reshare\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(27, 34, 322, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"224.40\",\"currency\":\"INR\"}', 366, 27, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 1 FOLLOW', '', '226.644', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 1 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(28, 34, 323, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"450.60\",\"currency\":\"INR\"}', 366, 28, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 2 FOLLOW', '', '455.106', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 2 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(29, 34, 324, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"677.16\",\"currency\":\"INR\"}', 366, 29, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | | 3 FOLLOW', '', '683.9316', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | | 3 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(30, 34, 325, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"903.46\",\"currency\":\"INR\"}', 366, 30, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 4 FOLLOW', '', '912.4946', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 4 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(31, 34, 326, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"1299.2538\",\"currency\":\"INR\"}', 366, 31, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 5 FOLLOW', '', '1312.246338', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 5 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(32, 34, 327, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"1526.0427\",\"currency\":\"INR\"}', 366, 32, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 6 FOLLOW', '', '1541.303127', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 6 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(33, 34, 328, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"1732.302\",\"currency\":\"INR\"}', 366, 33, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 7 FOLLOW', '', '1749.62502', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 7 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(34, 34, 329, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"1938.5613\",\"currency\":\"INR\"}', 366, 34, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 8 FOLLOW', '', '1957.946913', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 8 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(35, 34, 330, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"2144.714\",\"currency\":\"INR\"}', 366, 35, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 9 FOLLOW', '', '2166.16114', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 9 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(36, 34, 331, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"2350.9733\",\"currency\":\"INR\"}', 366, 36, '2', '2', 'Threads - 🇹🇷 Turkish Followers | From Verified Account | 10 FOLLOW', '', '2374.483033', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Threads - \\ud83c\\uddf9\\ud83c\\uddf7 Turkish Followers | From Verified Account | 10 FOLLOW\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(37, 34, 397, '2', '{\"min\":\"100\",\"max\":\"15000000\",\"rate\":\"1.82\",\"currency\":\"INR\"}', 367, 37, '2', '1', 'Instagram Video Views - [ All Video ★ No-Drop ] [ 0-15 Min ★ 10M Per Day ]', '', '1.8382', 100, 15000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ All Video \\u2605 No-Drop ] [ 0-15 Min \\u2605 10M Per Day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(38, 34, 387, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"1.94\",\"currency\":\"INR\"}', 367, 38, '2', '1', 'Instagram Video Views - [ REEL ] [ No-Drop ] [ INSTANT ★ 1M Per Day ]', '', '1.9594', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ REEL ] [ No-Drop ] [ INSTANT \\u2605 1M Per Day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(39, 34, 388, '2', '{\"min\":\"100\",\"max\":\"20000000\",\"rate\":\"2.26\",\"currency\":\"INR\"}', 367, 39, '2', '1', 'Instagram Video Views - [ REELS ] [ No-Drop ] [ INSTANT ★ 2M Per Day ]', '', '2.2826', 100, 20000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ REELS ] [ No-Drop ] [ INSTANT \\u2605 2M Per Day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(40, 34, 360, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"2.28\",\"currency\":\"INR\"}', 367, 40, '2', '1', 'Instagram View - [ Video+ Reel + IGTV ] [ Max 100K ] INSTANT ', '', '2.3028', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram View - [ Video+ Reel + IGTV ] [ Max 100K ] INSTANT \"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(41, 34, 389, '2', '{\"min\":\"100\",\"max\":\"30000000\",\"rate\":\"2.36\",\"currency\":\"INR\"}', 367, 41, '2', '1', 'Instagram Video Views - [ ALL VİDEO ] [ No-Drop ] [ INSTANT ★ 30M Day ]', '', '2.3836', 100, 30000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ ALL V\\u0130DEO ] [ No-Drop ] [ INSTANT \\u2605 30M Day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(42, 34, 390, '2', '{\"min\":\"100\",\"max\":\"500000000\",\"rate\":\"2.82\",\"currency\":\"INR\"}', 367, 42, '2', '1', 'Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT ★ 30M Per Day ]', '', '2.8482', 100, 500000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT \\u2605 30M Per Day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(43, 34, 391, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"8.86\",\"currency\":\"INR\"}', 367, 43, '2', '1', 'Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT ★ 50M Day  ] ULTRA FAST COMPLETED', '', '8.9486', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Video Views - [ All Video ] [ No-Drop ] [ INSTANT \\u2605 50M Day  ] ULTRA FAST COMPLETED\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(44, 34, 373, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"45.1775\",\"currency\":\"INR\"}', 368, 44, '2', '1', 'Instagram Followers - [ Real ★ 50K Per Day ] [ 60 Days Refill ]', '', '45.629275', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real \\u2605 50K Per Day ] [ 60 Days Refill ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(45, 34, 374, '2', '{\"min\":\"10\",\"max\":\"5000000\",\"rate\":\"50.31125\",\"currency\":\"INR\"}', 368, 45, '2', '1', 'Instagram Followers - [ Real ★ 100K Per Day ] [ Non Drop ★ 365 Days Refill ]', '', '50.8143625', 10, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real \\u2605 100K Per Day ] [ Non Drop \\u2605 365 Days Refill ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(46, 34, 332, '2', '{\"min\":\"50\",\"max\":\"5000000\",\"rate\":\"72.34375\",\"currency\":\"INR\"}', 368, 46, '2', '1', '💎 Instagram Followers - [ Max - 5M ] [ 30k Per Day ] [ Reliable Service ] [ Stable & High Quality ] [ 1 Year Refill Guarantee ] INSTANT', '★ Powerful Service, Worked In Biggest Updates Since 2021\r\n★ Instantly Process & Start Refills\r\n★ There Is No Better Service Or Compition Of This In World, For Long Term Reliable Instagram Followers With Aged Accounts\r\n\r\n✶ Start: Instant\r\n✶ Speed: 30k Per Day\r\n✶ Quality: Aged Accounts with Posts\r\n✶ Refill: 365 Days Refill Guarantee\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Reliable & Top Selling Service In Market From Last 2-3 Years\r\n◉ You Can Order Upto 10M Followers From This Service, New Data Add Always Too\r\n◉ Drop Ratio - 1-3% As Of Now, In Insta Updates Drop Ratio Can Change But We Will Provide Refill Always', '73.0671875', 50, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc8e Instagram Followers - [ Max - 5M ] [ 30k Per Day ] [ Reliable Service ] [ Stable & High Quality ] [ 1 Year Refill Guarantee ] INSTANT\"}', '{\"en\":\"\\u2605 Powerful Service, Worked In Biggest Updates Since 2021\\r\\n\\u2605 Instantly Process & Start Refills\\r\\n\\u2605 There Is No Better Service Or Compition Of This In World, For Long Term Reliable Instagram Followers With Aged Accounts\\r\\n\\r\\n\\u2736 Start: Instant\\r\\n\\u2736 Speed: 30k Per Day\\r\\n\\u2736 Quality: Aged Accounts with Posts\\r\\n\\u2736 Refill: 365 Days Refill Guarantee\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Reliable & Top Selling Service In Market From Last 2-3 Years\\r\\n\\u25c9 You Can Order Upto 10M Followers From This Service, New Data Add Always Too\\r\\n\\u25c9 Drop Ratio - 1-3% As Of Now, In Insta Updates Drop Ratio Can Change But We Will Provide Refill Always\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(47, 34, 333, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"77.51125\",\"currency\":\"INR\"}', 368, 47, '2', '1', 'Instagram Followers - [ Max - 150k ] [ 50k Per Day ] [ 365 Days Refill ] INSTANT', '', '78.2863625', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Max - 150k ] [ 50k Per Day ] [ 365 Days Refill ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(48, 34, 334, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"67.17625\",\"currency\":\"INR\"}', 368, 48, '2', '1', 'Instagram Followers - [ Max - 150k ] [ 50k Per Day ] [ 60 Days Refill ] INSTANT', '', '67.8480125', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Max - 150k ] [ 50k Per Day ] [ 60 Days Refill ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(49, 34, 383, '2', '{\"min\":\"20\",\"max\":\"1000000\",\"rate\":\"29.62\",\"currency\":\"INR\"}', 369, 49, '2', '1', 'Instagram Followers - [ Real ★ 365 Days Refill ]  [ 40K Per Day ] INSTANT', '✶ Start: INSTANT\r\n✶ Speed: 40K+/Day\r\n✶ Quality: Real Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '29.9162', 20, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real \\u2605 365 Days Refill ]  [ 40K Per Day ] INSTANT\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 40K+\\/Day\\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(50, 34, 384, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"36.62\",\"currency\":\"INR\"}', 369, 50, '2', '1', 'Instagram Followers - [ Real ★ OLD ACCOUNT ★ 365 Days Refill ] [ 50K Per Day ] INSTANT', '✶ Start: INSTANT\r\n✶ Speed: 50K+/Day\r\n✶ Quality: Real OLD Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '36.9862', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real \\u2605 OLD ACCOUNT \\u2605 365 Days Refill ] [ 50K Per Day ] INSTANT\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 50K+\\/Day\\r\\n\\u2736 Quality: Real OLD Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(51, 34, 431, '2', '{\"min\":\"10\",\"max\":\"5000000\",\"rate\":\"46.28\",\"currency\":\"INR\"}', 369, 51, '2', '1', 'Instagram Followers - [ Real ] [ Non Drop ★ 365 Days Refill ] [ 100K+ Per Day ★ Instant ] Recommend', '✶ Start: INSTANT\r\n✶ Speed: 100K+/Day \r\n✶ Quality: Real Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '46.7428', 10, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ Real ] [ Non Drop \\u2605 365 Days Refill ] [ 100K+ Per Day \\u2605 Instant ] Recommend\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 100K+\\/Day \\r\\n\\u2736 Quality: Real Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(52, 34, 386, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"48.82\",\"currency\":\"INR\"}', 369, 52, '2', '1', 'Instagram Followers - [ OLD ACCOUNT ★ 365 Days Refill ] [ 50K Per Day ] INSTANT', '✶ Start: INSTANT\r\n✶ Speed: 50K+/Day - [ 1 Minute 10K Followers ]\r\n✶ Quality: OLD Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '49.3082', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ OLD ACCOUNT \\u2605 365 Days Refill ] [ 50K Per Day ] INSTANT\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 50K+\\/Day - [ 1 Minute 10K Followers ]\\r\\n\\u2736 Quality: OLD Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(53, 34, 385, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"56.06\",\"currency\":\"INR\"}', 369, 53, '2', '1', 'Instagram Followers - [ BOT ★ OLD ACCOUNT ★ 365 Days Refill ] [ 50K Per Day ] INSTANT', '✶ Start: INSTANT\r\n✶ Speed: 50K+/Day\r\n✶ Quality: BOT OLD Accounts\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '56.6206', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers - [ BOT \\u2605 OLD ACCOUNT \\u2605 365 Days Refill ] [ 50K Per Day ] INSTANT\"}', '{\"en\":\"\\u2736 Start: INSTANT\\r\\n\\u2736 Speed: 50K+\\/Day\\r\\n\\u2736 Quality: BOT OLD Accounts\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(54, 34, 86, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"1.99\",\"currency\":\"INR\"}', 370, 54, '2', '1', 'Instagram Likes - [ Max - 100k ] [ Non-drop ] [ 100k/day ] INSTANT', '- Start: Instant ( 1 click start )\r\n- Speed: 100K+/Day\r\n- Quality: Mix Quality\r\n- Drop: 0-5%\r\n- Guaranteed: No', '2.0099', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes - [ Max - 100k ] [ Non-drop ] [ 100k\\/day ] INSTANT\"}', '{\"en\":\"- Start: Instant ( 1 click start )\\r\\n- Speed: 100K+\\/Day\\r\\n- Quality: Mix Quality\\r\\n- Drop: 0-5%\\r\\n- Guaranteed: No\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(55, 34, 354, '2', '{\"min\":\"25\",\"max\":\"2147483647\",\"rate\":\"3.64\",\"currency\":\"INR\"}', 371, 55, '2', '1', 'Instagram Likes - [ Real ★ STABLE ] [ 30 Days Refill ] [ Fast Delivery ] INSTANT ', '✶ Start: Instant\r\n✶ Speed: Superfast\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 90 Days Refill \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '3.6764', 25, 2147483647, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes - [ Real \\u2605 STABLE ] [ 30 Days Refill ] [ Fast Delivery ] INSTANT \"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: Superfast\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 90 Days Refill \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(56, 34, 355, '2', '{\"min\":\"25\",\"max\":\"2147483647\",\"rate\":\"4.02\",\"currency\":\"INR\"}', 371, 56, '2', '1', 'Instagram Likes - [ Real ★ STABLE ] [ 60 Days Refill ] [ Fast Delivery ] INSTANT ', '✶ Start: Instant\r\n✶ Speed: Superfast\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 60 Days Refill \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '4.0602', 25, 2147483647, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes - [ Real \\u2605 STABLE ] [ 60 Days Refill ] [ Fast Delivery ] INSTANT \"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: Superfast\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 60 Days Refill \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(57, 34, 356, '2', '{\"min\":\"25\",\"max\":\"2147483647\",\"rate\":\"4.86\",\"currency\":\"INR\"}', 371, 57, '2', '1', 'Instagram Likes - [ Real ★ STABLE ] [ 90 Days Refill ] [ Fast Delivery ] INSTANT ', '✶ Start: Instant\r\n✶ Speed: Superfast\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 90 Days Refill \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '4.9086', 25, 2147483647, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes - [ Real \\u2605 STABLE ] [ 90 Days Refill ] [ Fast Delivery ] INSTANT \"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: Superfast\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 90 Days Refill \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(58, 34, 357, '2', '{\"min\":\"10\",\"max\":\"2147483647\",\"rate\":\"5.27\",\"currency\":\"INR\"}', 371, 58, '2', '1', 'Instagram Likes - [ Real ★ STABLE ] - [ 365 Days Refill ] [ Fast Delivery ] INSTANT ', '✶ Start: Instant\r\n✶ Speed: Superfast\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 Days Refill \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '5.3227', 10, 2147483647, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes - [ Real \\u2605 STABLE ] - [ 365 Days Refill ] [ Fast Delivery ] INSTANT \"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: Superfast\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 Days Refill \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(59, 34, 382, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"7.24\",\"currency\":\"INR\"}', 371, 59, '2', '1', 'Instagram Like - [ Indian ★ Real ] [ 30% Mix ] [ Non Drop ★ 30 Days Refill ] [ 10K Per Day ]', '✶ Start: Instant\r\n✶ Speed: 10K Per Day\r\n✶ Quality: Indian - Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '7.3124', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Like - [ Indian \\u2605 Real ] [ 30% Mix ] [ Non Drop \\u2605 30 Days Refill ] [ 10K Per Day ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: 10K Per Day\\r\\n\\u2736 Quality: Indian - Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(60, 34, 108, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"0.30777262183691\",\"currency\":\"INR\"}', 372, 60, '2', '1', 'Instagram Story Views [Mix] [All Stories] [100K/D] [0-10/M]', '', '0.31085034805528', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views [Mix] [All Stories] [100K\\/D] [0-10\\/M]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(61, 34, 109, '2', '{\"min\":\"100\",\"max\":\"15000\",\"rate\":\"0.92331786551071\",\"currency\":\"INR\"}', 372, 61, '2', '1', 'IG Story Views [Mix] [All Stories] [15K/D] [Instant]', '', '0.93255104416582', 100, 15000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"IG Story Views [Mix] [All Stories] [15K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(62, 34, 110, '2', '{\"min\":\"10\",\"max\":\"15000\",\"rate\":\"66.684068064663\",\"currency\":\"INR\"}', 372, 62, '2', '1', '5526 - Instagram Story Views + Likes [Real]', '', '67.35090874531', 10, 15000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"5526 - Instagram Story Views + Likes [Real]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(63, 34, 111, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"15.02\",\"currency\":\"INR\"}', 373, 63, '2', '1', '4181 - IG Story Poll Votes No [25K/D] [Instant]', '', '15.1702', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"4181 - IG Story Poll Votes No [25K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(64, 34, 112, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"15.68\",\"currency\":\"INR\"}', 373, 64, '2', '1', '4180 - IG Story Poll Votes Yes [25K/D] [Instant]', '', '15.8368', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"4180 - IG Story Poll Votes Yes [25K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(65, 34, 113, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"18.466357310214\",\"currency\":\"INR\"}', 373, 65, '2', '1', '4182 - IG Story Likes [25K/D] [Instant]', '', '18.651020883316', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"4182 - IG Story Likes [25K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(66, 34, 114, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"23.595901007496\",\"currency\":\"INR\"}', 373, 66, '2', '1', '1191 - IG Story Slider', '', '23.831860017571', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"1191 - IG Story Slider\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(67, 34, 115, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"23.595901007496\",\"currency\":\"INR\"}', 373, 67, '2', '1', '1028 - IG Story Shares', '', '23.831860017571', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"1028 - IG Story Shares\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(68, 34, 116, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"23.595901007496\",\"currency\":\"INR\"}', 373, 68, '2', '1', '988 - IG Story Poll Votes [First Answer] [Mix] [10K/D] [Instant]', '', '23.831860017571', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"988 - IG Story Poll Votes [First Answer] [Mix] [10K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(69, 34, 117, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"23.595901007496\",\"currency\":\"INR\"}', 373, 69, '2', '1', '989 - IG Story Poll Votes [Second Answer] [Mix] [5K/D] [Instant]', '', '23.831860017571', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"989 - IG Story Poll Votes [Second Answer] [Mix] [5K\\/D] [Instant]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(70, 34, 118, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"42.06225831771\",\"currency\":\"INR\"}', 373, 70, '2', '1', '2879 - IG Story Url Click', '', '42.482880900887', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"2879 - IG Story Url Click\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(71, 34, 119, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"42.06225831771\",\"currency\":\"INR\"}', 373, 71, '2', '1', '1192 - IG Story Trend + Impression + Profile Visit + Share + Next + Exit', '', '42.482880900887', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"1192 - IG Story Trend + Impression + Profile Visit + Share + Next + Exit\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(72, 34, 395, '2', '{\"min\":\"100\",\"max\":\"5000000\",\"rate\":\"32.82\",\"currency\":\"INR\"}', 374, 72, '2', '1', 'YouTube Views + Likes - [ Lifetime Guarantee ★ 10K Per Day ★ 0 - 1 Hours ]', '✶ Start: 0-1 Hours\r\n✶ Speed: 5 - 10K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: 0-5% possible can be more ask refill\r\n✶ Refill: Lifetime Gauranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '33.1482', 100, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views + Likes - [ Lifetime Guarantee \\u2605 10K Per Day \\u2605 0 - 1 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0-1 Hours\\r\\n\\u2736 Speed: 5 - 10K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: 0-5% possible can be more ask refill\\r\\n\\u2736 Refill: Lifetime Gauranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(73, 34, 272, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"32.77875\",\"currency\":\"INR\"}', 374, 73, '2', '1', 'YouTube Views - [ Traffic source: External ] [ 800-1000/Day ] [ Non Drop ] [ Lifetime Guarantee ] INSTANT', '◉ Start: 0-5 Min\r\n◉ Speed: 500-800/Day\r\n◉ Quality: Real\r\n◉ Drop: Non-Drop (rarely~10%)\r\n◉ Guarantee: 30 Days\r\n◉ Cancel Button: Disabled but manually cancel or partial no problem\r\n', '33.1065375', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views - [ Traffic source: External ] [ 800-1000\\/Day ] [ Non Drop ] [ Lifetime Guarantee ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: 0-5 Min\\r\\n\\u25c9 Speed: 500-800\\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non-Drop (rarely~10%)\\r\\n\\u25c9 Guarantee: 30 Days\\r\\n\\u25c9 Cancel Button: Disabled but manually cancel or partial no problem\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(74, 34, 273, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"34.82625\",\"currency\":\"INR\"}', 374, 74, '2', '1', 'YouTube Views - [ External + Direct ] [ 1K per Day ] [ Bonus Likes ] [ Lifetime Guarantee ] INSTANT', '◉ Start: 0-20 Min\r\n◉ Speed: 2k-4k/Day\r\n◉ Quality: Real\r\n◉ Drop: Non-Drop (rarely~2-5%)\r\n◉ Guarantee: 30 Days Guarantee with Refill and Manual Lifetime Guarantee\r\n◉ Cancel Button: Disabled but manually cancel or partial no problem', '35.1745125', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views - [ External + Direct ] [ 1K per Day ] [ Bonus Likes ] [ Lifetime Guarantee ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: 0-20 Min\\r\\n\\u25c9 Speed: 2k-4k\\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non-Drop (rarely~2-5%)\\r\\n\\u25c9 Guarantee: 30 Days Guarantee with Refill and Manual Lifetime Guarantee\\r\\n\\u25c9 Cancel Button: Disabled but manually cancel or partial no problem\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(75, 34, 274, '2', '{\"min\":\"100\",\"max\":\"130000\",\"rate\":\"37.9\",\"currency\":\"INR\"}', 374, 75, '2', '1', 'YouTube Views [ Mixed ] [ Bonus likes ] [ 400-1000/Day ] [ Lifetime Guarantee ] INSTANT ', '◉ Start: 1-5 Min\r\n◉ Speed: 2k-5k/Day\r\n◉ Quality: Real\r\n◉ Drop: Non-Drop or Low-Drop (rarely~2-8%). We always add more views!\r\n◉ Guarantee: Lifetime Guarantee\r\n◉ Cancel Button: Disabled (Manual cancellation is possible at any time)', '38.279', 100, 130000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views [ Mixed ] [ Bonus likes ] [ 400-1000\\/Day ] [ Lifetime Guarantee ] INSTANT \"}', '{\"en\":\"\\u25c9 Start: 1-5 Min\\r\\n\\u25c9 Speed: 2k-5k\\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non-Drop or Low-Drop (rarely~2-8%). We always add more views!\\r\\n\\u25c9 Guarantee: Lifetime Guarantee\\r\\n\\u25c9 Cancel Button: Disabled (Manual cancellation is possible at any time)\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(76, 34, 275, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"39.94875\",\"currency\":\"INR\"}', 374, 76, '2', '1', 'YouTube Views [ External + Direct ] [ 1K-3K per Day ] [ 90 Days Refill ] INSTANT', '◉ Start: 1-10 Min\r\n◉ Speed: 1k-3k/Day\r\n◉ Quality: Real\r\n◉ Drop: Non-Drop or Low-Drop (rarely~2-7%)\r\n◉ Guarantee: Lifetime Guarantee\r\n◉ Cancel Button: Disabled (Manual cancellation is possible at any time)', '40.3482375', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views [ External + Direct ] [ 1K-3K per Day ] [ 90 Days Refill ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: 1-10 Min\\r\\n\\u25c9 Speed: 1k-3k\\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non-Drop or Low-Drop (rarely~2-7%)\\r\\n\\u25c9 Guarantee: Lifetime Guarantee\\r\\n\\u25c9 Cancel Button: Disabled (Manual cancellation is possible at any time)\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(77, 34, 407, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"118.68\",\"currency\":\"INR\"}', 374, 77, '2', '1', 'YouTube Views - [ Non Drop ★ Lifetime ] [ 10K Per Day ] Recommend', '✶ Start: 0 - 1 Hours\r\n✶ Speed: 5-10K+ /Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime\r\n\r\n★ Link: Yt Video Link', '119.8668', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Views - [ Non Drop \\u2605 Lifetime ] [ 10K Per Day ] Recommend\"}', '{\"en\":\"\\u2736 Start: 0 - 1 Hours\\r\\n\\u2736 Speed: 5-10K+ \\/Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime\\r\\n\\r\\n\\u2605 Link: Yt Video Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(78, 34, 144, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"74.57\",\"currency\":\"INR\"}', 375, 78, '2', '1', 'YouTube Short Likes - [ 30 Days Refill ] [ 5-10K/D ] [ Non Drop ] INSTANT', '', '75.3157', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Short Likes - [ 30 Days Refill ] [ 5-10K\\/D ] [ Non Drop ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(79, 34, 141, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"79.897\",\"currency\":\"INR\"}', 375, 79, '2', '1', 'YouTube Short Views - [ Lifetime ] [ 100-200/D ] [ Non Drop ] INSTANT', '', '80.69597', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Short Views - [ Lifetime ] [ 100-200\\/D ] [ Non Drop ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(80, 34, 142, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"126.529\",\"currency\":\"INR\"}', 375, 80, '2', '1', 'YouTube Short Views - [ Lifetime ] [ 500-800/D ] [ Non Drop ] INSTANT', '', '127.79429', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Short Views - [ Lifetime ] [ 500-800\\/D ] [ Non Drop ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(81, 34, 143, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"170.447\",\"currency\":\"INR\"}', 375, 81, '2', '1', 'YouTube Short Views - [ Lifetime ] [ 40-50K/D ] [ Non Drop ] INSTANT ', '', '172.15147', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Short Views - [ Lifetime ] [ 40-50K\\/D ] [ Non Drop ] INSTANT \"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(82, 34, 353, '2', '{\"min\":\"10\",\"max\":\"2000\",\"rate\":\"9.08\",\"currency\":\"INR\"}', 376, 82, '2', '1', 'Youtube Likes - [ Real ] [ 2k Per Hour ] [ Super Instant ]', '◉ Start: Instant\r\n◉ Speed: 2k+ Per Hour\r\n◉ Quality: Real\r\n◉ Drop: low to Medium\r\n◉ Guarantee: No\r\n\r\n𝗡𝗢𝗧𝗘\r\n◉ Link: YT Video link\r\n◉ Example link: https://www.youtube.com/xyz\r\n◉ Nice server and very cheap', '9.1708', 10, 2000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Likes - [ Real ] [ 2k Per Hour ] [ Super Instant ]\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 2k+ Per Hour\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: low to Medium\\r\\n\\u25c9 Guarantee: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8\\r\\n\\u25c9 Link: YT Video link\\r\\n\\u25c9 Example link: https:\\/\\/www.youtube.com\\/xyz\\r\\n\\u25c9 Nice server and very cheap\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(83, 34, 174, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"27.02\",\"currency\":\"INR\"}', 377, 83, '2', '1', 'YouTube Likes - [ Cheapest ] [ Non-drop ] [ 30 Days Refill ] [ 1K-5K+/Hour ] [ Max : 100K ] INSTANT', '◉ Start: 0-1 Hours\r\n◉ Speed: 1-5k/H\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Can be get extra likes\r\n◉ Support avilable', '27.2902', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Cheapest ] [ Non-drop ] [ 30 Days Refill ] [ 1K-5K+\\/Hour ] [ Max : 100K ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: 0-1 Hours\\r\\n\\u25c9 Speed: 1-5k\\/H\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Can be get extra likes\\r\\n\\u25c9 Support avilable\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(84, 34, 138, '2', '{\"min\":\"10\",\"max\":\"2000\",\"rate\":\"31.959\",\"currency\":\"INR\"}', 377, 84, '2', '1', 'YouTube Likes - [ Max - 2k ] [ 2k/day ] [ 30 Days Refill ] INSTANT', '◉ Start: 0-1 Hours\r\n◉ Speed: 2000/Day\r\n◉ Drop : Low or medium\r\n◉ Quality : Real\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Can be get extra likes\r\n◉ Support avilable', '32.27859', 10, 2000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Max - 2k ] [ 2k\\/day ] [ 30 Days Refill ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: 0-1 Hours\\r\\n\\u25c9 Speed: 2000\\/Day\\r\\n\\u25c9 Drop : Low or medium\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Can be get extra likes\\r\\n\\u25c9 Support avilable\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(85, 34, 177, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"38.193\",\"currency\":\"INR\"}', 377, 85, '2', '1', 'YouTube Likes - [ HQ ] [ Non Drop ] [ 30 Days Refill ] [ 50K+/Day ] [ 0-1 Hour ] [ Max - 100K ]', '◉ Start: 0-1 Hours\r\n◉ Speed: 1-10k/H\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Can be get extra likes\r\n◉ Support avilable', '38.57493', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ HQ ] [ Non Drop ] [ 30 Days Refill ] [ 50K+\\/Day ] [ 0-1 Hour ] [ Max - 100K ]\"}', '{\"en\":\"\\u25c9 Start: 0-1 Hours\\r\\n\\u25c9 Speed: 1-10k\\/H\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Can be get extra likes\\r\\n\\u25c9 Support avilable\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(86, 34, 178, '2', '{\"min\":\"100\",\"max\":\"85000\",\"rate\":\"46.392\",\"currency\":\"INR\"}', 377, 86, '2', '1', 'YouTube Likes - [ Best ] [ Non-Drop ] [ 45 Days Refill ] [ 5K+/Hour ] [  Max : 85K ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50-100k/day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 45 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Can be get extra likes\r\n◉ Support avilable\r\n', '46.85592', 100, 85000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Best ] [ Non-Drop ] [ 45 Days Refill ] [ 5K+\\/Hour ] [  Max : 85K ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50-100k\\/day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 45 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Can be get extra likes\\r\\n\\u25c9 Support avilable\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(87, 34, 175, '2', '{\"min\":\"100\",\"max\":\"500000\",\"rate\":\"75.4\",\"currency\":\"INR\"}', 377, 87, '2', '1', 'YouTube Likes - [ Stable ] [ Non-Drop ] [ 1 Year Refill ] [ 50-80K+/Day ] [ Max - 500K ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 100k+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 1 Year\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Can be get extra likes\r\n◉ Support avilable', '76.154', 100, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Stable ] [ Non-Drop ] [ 1 Year Refill ] [ 50-80K+\\/Day ] [ Max - 500K ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 100k+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 1 Year\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Can be get extra likes\\r\\n\\u25c9 Support avilable\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(88, 34, 176, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"82.94\",\"currency\":\"INR\"}', 377, 88, '2', '1', 'YouTube Likes - [ HQ ] [ Non-Drop ] [ Lifetime Refill ] [ 5K-10K/Hour ] [ Max - 1M ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 100k+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : Lifetime\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Support avilable\r\n', '83.7694', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ HQ ] [ Non-Drop ] [ Lifetime Refill ] [ 5K-10K\\/Hour ] [ Max - 1M ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 100k+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : Lifetime\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Support avilable\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(89, 34, 154, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 89, '2', '1', 'YouTube Likes - [ Vietnam ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Vietnam ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(90, 34, 155, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 90, '2', '1', 'YouTube Likes - [ Indonesia ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Indonesia ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(91, 34, 156, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 91, '2', '1', 'YouTube Likes - [ Bangladesh ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Bangladesh ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(92, 34, 157, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 92, '2', '1', 'YouTube Likes - [ USA ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ USA ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(93, 34, 158, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 93, '2', '1', 'YouTube Likes - [ India ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ India ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(94, 34, 159, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 94, '2', '1', 'YouTube Likes - [ UK ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ UK ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(95, 34, 160, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 95, '2', '1', 'YouTube Likes - [ Australia ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Australia ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(96, 34, 161, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 96, '2', '1', 'YouTube Likes - [ Canada ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Canada ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(97, 34, 162, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 97, '2', '1', 'YouTube Likes - [ Brazil ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Brazil ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(98, 34, 163, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 98, '2', '1', 'YouTube Likes - [ Egypt ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Egypt ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(99, 34, 164, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 99, '2', '1', 'YouTube Likes - [ Belgium ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Belgium ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(100, 34, 165, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 100, '2', '1', 'YouTube Likes - [ France ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ France ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(101, 34, 166, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 101, '2', '1', 'YouTube Likes - [ Germany ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Germany ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(102, 34, 167, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 102, '2', '1', 'YouTube Likes - [ Morocco ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Morocco ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(103, 34, 168, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 103, '2', '1', 'YouTube Likes - [ Italy ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Italy ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(104, 34, 169, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 104, '2', '1', 'YouTube Likes - [ Russia ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Russia ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(105, 34, 170, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 105, '2', '1', 'YouTube Likes - [ Saudi Arabia ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Saudi Arabia ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(106, 34, 171, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 106, '2', '1', 'YouTube Likes - [ Japan ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Japan ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(107, 34, 172, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 107, '2', '1', 'YouTube Likes - [ Turkey ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ Turkey ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(108, 34, 173, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"107.5945\",\"currency\":\"INR\"}', 378, 108, '2', '1', 'YouTube Likes - [ South Korea ] [ Lifetime Guaranteed ] [ 50K/D ] INSTANT', '◉ Start: Instant\r\n◉ Speed: 50k/Day\r\n◉ Drop : Non Drop\r\n◉ Quality : Real\r\n◉ Refill : Lifetime Guaranteed\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Good Speed \r\n◉ Support available', '108.670445', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Likes - [ South Korea ] [ Lifetime Guaranteed ] [ 50K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start: Instant\\r\\n\\u25c9 Speed: 50k\\/Day\\r\\n\\u25c9 Drop : Non Drop\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime Guaranteed\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Good Speed \\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(109, 34, 120, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"48.887\",\"currency\":\"INR\"}', 379, 109, '2', '1', 'YouTube Subscribers [ HQ ] [ [ No-Refill ]  [ No-Support ] [ 20K+/Day ] [ 0-30 Minutes ] [ Max : 35K ]', '🕜Average Time : 1 Hours & 10 Minutes\r\n💦Drop Rate : High Drop ( 0-100% )\r\n⏳Start Time : 0-60 Minutes\r\n🚅Speed : 20K-30K+/Day\r\n✨Quality : Mix Quality\r\n❌ Cancel : Disable\r\n⚠️ Guranteed : No\r\n♻️ Refill : No\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n📝 Note : Don\\\'t complain after order this service, even if it not delivered!!!\r\n📝 Note : No partial / no speed up / no cancel in any case\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', '49.37587', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers [ HQ ] [ [ No-Refill ]  [ No-Support ] [ 20K+\\/Day ] [ 0-30 Minutes ] [ Max : 35K ]\"}', '{\"en\":\"\\ud83d\\udd5cAverage Time : 1 Hours & 10 Minutes\\r\\n\\ud83d\\udca6Drop Rate : High Drop ( 0-100% )\\r\\n\\u23f3Start Time : 0-60 Minutes\\r\\n\\ud83d\\ude85Speed : 20K-30K+\\/Day\\r\\n\\u2728Quality : Mix Quality\\r\\n\\u274c Cancel : Disable\\r\\n\\u26a0\\ufe0f Guranteed : No\\r\\n\\u267b\\ufe0f Refill : No\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\ud83d\\udcdd Note : Don\\\\\'t complain after order this service, even if it not delivered!!!\\r\\n\\ud83d\\udcdd Note : No partial \\/ no speed up \\/ no cancel in any case\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(110, 34, 121, '2', '{\"min\":\"200\",\"max\":\"50000\",\"rate\":\"80.431\",\"currency\":\"INR\"}', 379, 110, '2', '1', 'Youtube Subscribers [ Bot ] [ High Drop ] [ No-Refill ] [ 1-3K+/Day ] [ 0-1 Hour ] [ Max : 50K ]', '🕜Average Time : 12 Hours & 10 Minutes\r\n💦Drop Rate : Random Drop\r\n⏳Start Time : 0-12 Hours\r\n🚅Speed : 1K-2K+/Day\r\n✨Quality : Mix Quality\r\n❌ Cancel : Disable\r\n⚠️ Guranteed : No\r\n♻️ Refill : No\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n📝Note : The Services In This Category Of No Gaurentee So They Can Drop 0-100% No Complaints Accepted In Any Case\r\n📝Note : No Refill Services Can Have Delays Sometimes Due To Over Load\r\n📝 Note : Don\\\'t complain after ordering this service, even if it not delivered!\r\n📝 Note : No partial / no speed up / no cancel in any case\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', '81.23531', 200, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Subscribers [ Bot ] [ High Drop ] [ No-Refill ] [ 1-3K+\\/Day ] [ 0-1 Hour ] [ Max : 50K ]\"}', '{\"en\":\"\\ud83d\\udd5cAverage Time : 12 Hours & 10 Minutes\\r\\n\\ud83d\\udca6Drop Rate : Random Drop\\r\\n\\u23f3Start Time : 0-12 Hours\\r\\n\\ud83d\\ude85Speed : 1K-2K+\\/Day\\r\\n\\u2728Quality : Mix Quality\\r\\n\\u274c Cancel : Disable\\r\\n\\u26a0\\ufe0f Guranteed : No\\r\\n\\u267b\\ufe0f Refill : No\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\ud83d\\udcddNote : The Services In This Category Of No Gaurentee So They Can Drop 0-100% No Complaints Accepted In Any Case\\r\\n\\ud83d\\udcddNote : No Refill Services Can Have Delays Sometimes Due To Over Load\\r\\n\\ud83d\\udcdd Note : Don\\\\\'t complain after ordering this service, even if it not delivered!\\r\\n\\ud83d\\udcdd Note : No partial \\/ no speed up \\/ no cancel in any case\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(111, 34, 468, '2', '{\"min\":\"100\",\"max\":\"120000\",\"rate\":\"244.046\",\"currency\":\"INR\"}', 380, 111, '2', '1', 'YouTube Subscribers - [ Max - 120K ] [ 300/Day ] [ Non/Less Drop ] [ 90 Days Auto Refill ] INSTANT', '✶ Start: 0 - 1 Hours\r\n✶ Speed: 300+ Per Day\r\n✶ Quality: Real \r\n✶ Drop: Non/Less Drop\r\n✶ Refill: 90 Days Auto Refill\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Link: YouTube Channel link\r\n◉ Example link: https://www.youtube.com/@user', '246.48646', 100, 120000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers - [ Max - 120K ] [ 300\\/Day ] [ Non\\/Less Drop ] [ 90 Days Auto Refill ] INSTANT\"}', '{\"en\":\"\\u2736 Start: 0 - 1 Hours\\r\\n\\u2736 Speed: 300+ Per Day\\r\\n\\u2736 Quality: Real \\r\\n\\u2736 Drop: Non\\/Less Drop\\r\\n\\u2736 Refill: 90 Days Auto Refill\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Link: YouTube Channel link\\r\\n\\u25c9 Example link: https:\\/\\/www.youtube.com\\/@user\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(112, 34, 302, '2', '{\"min\":\"100\",\"max\":\"120000\",\"rate\":\"298.44\",\"currency\":\"INR\"}', 380, 112, '2', '1', 'Youtube Subscribers - [ 500+ per Day ] [ Lifetime Guarantee and 90 Days Auto Refill ] [ HQ ] INSTANT ', '◉ Start: 1-5 Min\r\n◉ Speed: 500 per Day\r\n◉ Drop : Rarely 10% [ Normally Non Drop ]\r\n◉ Quality : Real\r\n◉ Refill : Lifetime [ 90 days auto refill ]\r\n', '301.4244', 100, 120000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Subscribers - [ 500+ per Day ] [ Lifetime Guarantee and 90 Days Auto Refill ] [ HQ ] INSTANT \"}', '{\"en\":\"\\u25c9 Start: 1-5 Min\\r\\n\\u25c9 Speed: 500 per Day\\r\\n\\u25c9 Drop : Rarely 10% [ Normally Non Drop ]\\r\\n\\u25c9 Quality : Real\\r\\n\\u25c9 Refill : Lifetime [ 90 days auto refill ]\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(113, 34, 90, '2', '{\"min\":\"100\",\"max\":\"120000\",\"rate\":\"324.471\",\"currency\":\"INR\"}', 380, 113, '2', '1', 'YouTube Subscribers - [ Max - 10k ] [100-200/D] [ 30 Days Refill ] [ 0-6Hr ]', '⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n⏱️ Start: 0 - 6 Hours\r\n⚡ Speed: 100 - 200 /Day\r\n🔥 Quality: Real\r\n💧 Drop: Low medium high usually low\r\n♻️ Refill: 30 Days\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n🖇️ Link: YouTube Channel link\r\n🖇️ Example link: https://www.youtube.com/channel/UCrCO5doeAQRfNTglHj0\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n𝐍𝐨𝐭𝐞:\r\n🔸 However please do not forget these are just estimations', '327.71571', 100, 120000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers - [ Max - 10k ] [100-200\\/D] [ 30 Days Refill ] [ 0-6Hr ]\"}', '{\"en\":\"\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\u23f1\\ufe0f Start: 0 - 6 Hours\\r\\n\\u26a1 Speed: 100 - 200 \\/Day\\r\\n\\ud83d\\udd25 Quality: Real\\r\\n\\ud83d\\udca7 Drop: Low medium high usually low\\r\\n\\u267b\\ufe0f Refill: 30 Days\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud83d\\udd87\\ufe0f Link: YouTube Channel link\\r\\n\\ud83d\\udd87\\ufe0f Example link: https:\\/\\/www.youtube.com\\/channel\\/UCrCO5doeAQRfNTglHj0\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38 However please do not forget these are just estimations\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(114, 34, 91, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"378.26\",\"currency\":\"INR\"}', 380, 114, '2', '1', 'YouTube Subscribers - [ Max - 100k ] [100-200/D] [90 Days Refill] [0-1/H]', '⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n⏱️ Start: 0 - 1 Hours\r\n⚡ Speed: 100 - 200 /Day\r\n🔥 Quality: Real Mix\r\n💧 Drop: Less Drop Sometimes Medium \r\n♻️ Refill: 90 Days\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n🖇️ Link: YouTube Channel link\r\n🖇️ Example link: https://www.youtube.com/channel/UCrCO5doeAQRfNTglHj0\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n𝐍𝐨𝐭𝐞:\r\n🔸 However please do not forget these are just estimations\r\n', '382.0426', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers - [ Max - 100k ] [100-200\\/D] [90 Days Refill] [0-1\\/H]\"}', '{\"en\":\"\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\u23f1\\ufe0f Start: 0 - 1 Hours\\r\\n\\u26a1 Speed: 100 - 200 \\/Day\\r\\n\\ud83d\\udd25 Quality: Real Mix\\r\\n\\ud83d\\udca7 Drop: Less Drop Sometimes Medium \\r\\n\\u267b\\ufe0f Refill: 90 Days\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud83d\\udd87\\ufe0f Link: YouTube Channel link\\r\\n\\ud83d\\udd87\\ufe0f Example link: https:\\/\\/www.youtube.com\\/channel\\/UCrCO5doeAQRfNTglHj0\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38 However please do not forget these are just estimations\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(115, 34, 299, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"448.20\",\"currency\":\"INR\"}', 380, 115, '2', '1', 'YouTube Subscribers - [ No Drop ] [ 1 Year Refill ] [ 100-200/D ] [ 0-24/H ]', '◉ Start: 0-24 Hours\r\n◉ Speed: 100-200+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Refill : 1 Year\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Support available', '452.682', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers - [ No Drop ] [ 1 Year Refill ] [ 100-200\\/D ] [ 0-24\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0-24 Hours\\r\\n\\u25c9 Speed: 100-200+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Refill : 1 Year\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(116, 34, 300, '2', '{\"min\":\"100\",\"max\":\"750000\",\"rate\":\"676.94625\",\"currency\":\"INR\"}', 380, 116, '2', '1', 'YouTube Subscribers - [ Lifetime ] [ 10-100K/D ] [ 0-24/H ]', '◉ Start: 0-24 Hours\r\n◉ Speed: 10-100k per Day\r\n◉ Drop : Rarely drop [ Auto Refill Working]\r\n◉ Quality : Real High\r\n◉ Refill : Lifetime \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Works for all type of channels including channels without videos\r\n◉ Link - https://www.youtube.com/channel/UCrCO5doeAQRfNTglHj0\r\n◉ Support available', '683.7157125', 100, 750000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers - [ Lifetime ] [ 10-100K\\/D ] [ 0-24\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0-24 Hours\\r\\n\\u25c9 Speed: 10-100k per Day\\r\\n\\u25c9 Drop : Rarely drop [ Auto Refill Working]\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Refill : Lifetime \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Works for all type of channels including channels without videos\\r\\n\\u25c9 Link - https:\\/\\/www.youtube.com\\/channel\\/UCrCO5doeAQRfNTglHj0\\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(117, 34, 301, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"846.1825\",\"currency\":\"INR\"}', 380, 117, '2', '1', 'YouTube Subscribers + Views - [ Real ] [ 60 Days Auto Refill ] [ 5000-10000 per Day ] [ Limited Time ]', '★ For 1000 subs you will get 2000 free views\r\n★ Majority subs from Asia real users\r\n\r\n◉ Start: 0-24 Hours\r\n◉ Speed: 10-100k per Day\r\n◉ Drop : Rarely drop [ Auto Refill Working]\r\n◉ Quality : Real High\r\n◉ Refill : Lifetime \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Have at least 1 video unrestricted or order will be canceled\r\n◉ Support available', '854.644325', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Subscribers + Views - [ Real ] [ 60 Days Auto Refill ] [ 5000-10000 per Day ] [ Limited Time ]\"}', '{\"en\":\"\\u2605 For 1000 subs you will get 2000 free views\\r\\n\\u2605 Majority subs from Asia real users\\r\\n\\r\\n\\u25c9 Start: 0-24 Hours\\r\\n\\u25c9 Speed: 10-100k per Day\\r\\n\\u25c9 Drop : Rarely drop [ Auto Refill Working]\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Refill : Lifetime \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Have at least 1 video unrestricted or order will be canceled\\r\\n\\u25c9 Support available\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(118, 34, 136, '2', '{\"min\":\"1000\",\"max\":\"10000\",\"rate\":\"292.99953598873\",\"currency\":\"INR\"}', 381, 118, '2', '1', 'YouTube Watchtime - [ Any Video Length ] [ Max - 10k ] [ 500+ Hour/Day ] [ Lifetime Guarantee ] Recommended', '★ Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\r\n★ 1000 Quantity = 1000 hours\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n⏱️ Start: 12 - 48 Hours\r\n⚡ Speed: 400 - 600 /Day\r\n🔥 Quality: Organic Gain\r\n💧 Drop: Non-drop\r\n♻️ Refill: Lifetime Refill\r\n🔰 Monetization Friendly\r\n🌎 Target Country: Worldwide\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n𝐍𝐨𝐭𝐞:\r\n🔸Always Working\r\n🔸Link Example: Use Channel Link Only For Order ( System will randomly pick videos that are available on the channel )\r\n🔸You can also use our watch time service on monetized channels. It will increase your video views duration(retention) to a considerable level, and hope your channel will grow\r\n🔸If you want to watch hours on specific videos, please create a playlist within your channel and put the videos there, and place an order with the playlist link\r\n🔸If your channel has two videos will work best\r\n🔸A screenshot of your channel analytics is required for every refill request, from 1st order date to the current date\r\n🔸As your watch time is complete. Would you mind applying for monetization fast, monetization if watch time drops,\r\nThen No issue that will not affect your channel.\r\n🔸If the video is made private or removed, no refund.\r\n🔸We cannot cancel any Running order\r\n🔸it is just a refillable service, no refunds, refill start time 24+ Hours\r\n\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', '295.92953134862', 1000, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Watchtime - [ Any Video Length ] [ Max - 10k ] [ 500+ Hour\\/Day ] [ Lifetime Guarantee ] Recommended\"}', '{\"en\":\"\\u2605 Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\\r\\n\\u2605 1000 Quantity = 1000 hours\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\u23f1\\ufe0f Start: 12 - 48 Hours\\r\\n\\u26a1 Speed: 400 - 600 \\/Day\\r\\n\\ud83d\\udd25 Quality: Organic Gain\\r\\n\\ud83d\\udca7 Drop: Non-drop\\r\\n\\u267b\\ufe0f Refill: Lifetime Refill\\r\\n\\ud83d\\udd30 Monetization Friendly\\r\\n\\ud83c\\udf0e Target Country: Worldwide\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38Always Working\\r\\n\\ud83d\\udd38Link Example: Use Channel Link Only For Order ( System will randomly pick videos that are available on the channel )\\r\\n\\ud83d\\udd38You can also use our watch time service on monetized channels. It will increase your video views duration(retention) to a considerable level, and hope your channel will grow\\r\\n\\ud83d\\udd38If you want to watch hours on specific videos, please create a playlist within your channel and put the videos there, and place an order with the playlist link\\r\\n\\ud83d\\udd38If your channel has two videos will work best\\r\\n\\ud83d\\udd38A screenshot of your channel analytics is required for every refill request, from 1st order date to the current date\\r\\n\\ud83d\\udd38As your watch time is complete. Would you mind applying for monetization fast, monetization if watch time drops,\\r\\nThen No issue that will not affect your channel.\\r\\n\\ud83d\\udd38If the video is made private or removed, no refund.\\r\\n\\ud83d\\udd38We cannot cancel any Running order\\r\\n\\ud83d\\udd38it is just a refillable service, no refunds, refill start time 24+ Hours\\r\\n\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(119, 34, 137, '2', '{\"min\":\"500\",\"max\":\"8000\",\"rate\":\"443.19257544514\",\"currency\":\"INR\"}', 381, 119, '2', '1', 'YouTube Watchtime - [ Any Video Length ] [500-800 Hours/Day ] [ Lifetime - Non Drop ] [ 0-6 Hour ]', '★ Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\r\n★ 1000 Quantity = 1000 hours\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n⏱️ Start: 12 - 24 Hours\r\n⚡ Speed: 500 - 1000 /Day\r\n🔥 Quality: Organic Gain [ Monetization Friendly ]\r\n💧 Drop: Non-Drop ( 5 - 10% in some cases )\r\n🔰 Extra Delivery: 15%\r\n♻️ Refill: Lifetime Guarantee + 30 Days Auto Refill Button. \r\n🌎 Target Country: Worldwide\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n𝐍𝐨𝐭𝐞:\r\n🔸Always Working\r\n🔸Link Example: Use Channel Link Only For Order (System will randomly pick videos that are available on the channel)\r\n🔸You can also use our watch time service on monetized channels. It will increase your video views duration(retention) to a considerable level and hope your channel will grow\r\n🔸If you want to watch hours on specific videos, please create a playlist within your channel and put the videos there, and place an order with the playlist link\r\n🔸If your channel has two videos will work best\r\n🔸A screenshot of your channel analytics is required for every refill request, from 1st order date to the current date\r\n🔸As your watch time is complete. Would you mind applying for monetization fast, monetization if watch time drops,\r\nThen No issue that will not affect your channel.\r\n\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', '447.62450119959', 500, 8000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Watchtime - [ Any Video Length ] [500-800 Hours\\/Day ] [ Lifetime - Non Drop ] [ 0-6 Hour ]\"}', '{\"en\":\"\\u2605 Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\\r\\n\\u2605 1000 Quantity = 1000 hours\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\u23f1\\ufe0f Start: 12 - 24 Hours\\r\\n\\u26a1 Speed: 500 - 1000 \\/Day\\r\\n\\ud83d\\udd25 Quality: Organic Gain [ Monetization Friendly ]\\r\\n\\ud83d\\udca7 Drop: Non-Drop ( 5 - 10% in some cases )\\r\\n\\ud83d\\udd30 Extra Delivery: 15%\\r\\n\\u267b\\ufe0f Refill: Lifetime Guarantee + 30 Days Auto Refill Button. \\r\\n\\ud83c\\udf0e Target Country: Worldwide\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38Always Working\\r\\n\\ud83d\\udd38Link Example: Use Channel Link Only For Order (System will randomly pick videos that are available on the channel)\\r\\n\\ud83d\\udd38You can also use our watch time service on monetized channels. It will increase your video views duration(retention) to a considerable level and hope your channel will grow\\r\\n\\ud83d\\udd38If you want to watch hours on specific videos, please create a playlist within your channel and put the videos there, and place an order with the playlist link\\r\\n\\ud83d\\udd38If your channel has two videos will work best\\r\\n\\ud83d\\udd38A screenshot of your channel analytics is required for every refill request, from 1st order date to the current date\\r\\n\\ud83d\\udd38As your watch time is complete. Would you mind applying for monetization fast, monetization if watch time drops,\\r\\nThen No issue that will not affect your channel.\\r\\n\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(120, 34, 132, '2', '{\"min\":\"1000\",\"max\":\"10000\",\"rate\":\"845.62\",\"currency\":\"INR\"}', 381, 120, '2', '1', 'YouTube Watchtime - [ For All Video Lengths ] [ 30 Days Refill ] [ 200-800H/D ] [ 0-48/H ] Read Description', '★ Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\r\n★ 1000 Quantity = 1000 hours\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n⏱️ Start: 0 - 48 Hours\r\n⚡ Speed: 200 - 800 /Day\r\n🔥 Quality: Organic Gain\r\n💧 Drop: Non-drop\r\n♻️ Refill: 30 Days\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n𝐍𝐨𝐭𝐞:\r\n🔸Channel or video link accepted, we will send hours to your channel\r\n🔸Running order cannot be partial without valid reason\r\n🔸This service is good only for monetization. In future the hours can drop completely with a youtube update. Important thing is to get the hours and monetize the channel\r\n🔸We will support refill for 30 days so there will be no short deliveries and total delivery for the ordered hours will be guaranteed\r\n🔸Please note: after 30 days there will be strictly no support\r\n🔸Watch hour may update in 48-96 hours on studio analytics after order is done\r\n🔸However please do not forget these are just estimations\r\n\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', '854.0762', 1000, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Watchtime - [ For All Video Lengths ] [ 30 Days Refill ] [ 200-800H\\/D ] [ 0-48\\/H ] Read Description\"}', '{\"en\":\"\\u2605 Use Any Video Length Like - 5 Mints, 10, or 60 Minutes all accepted.\\r\\n\\u2605 1000 Quantity = 1000 hours\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\u23f1\\ufe0f Start: 0 - 48 Hours\\r\\n\\u26a1 Speed: 200 - 800 \\/Day\\r\\n\\ud83d\\udd25 Quality: Organic Gain\\r\\n\\ud83d\\udca7 Drop: Non-drop\\r\\n\\u267b\\ufe0f Refill: 30 Days\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38Channel or video link accepted, we will send hours to your channel\\r\\n\\ud83d\\udd38Running order cannot be partial without valid reason\\r\\n\\ud83d\\udd38This service is good only for monetization. In future the hours can drop completely with a youtube update. Important thing is to get the hours and monetize the channel\\r\\n\\ud83d\\udd38We will support refill for 30 days so there will be no short deliveries and total delivery for the ordered hours will be guaranteed\\r\\n\\ud83d\\udd38Please note: after 30 days there will be strictly no support\\r\\n\\ud83d\\udd38Watch hour may update in 48-96 hours on studio analytics after order is done\\r\\n\\ud83d\\udd38However please do not forget these are just estimations\\r\\n\\r\\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(121, 34, 401, '2', '{\"min\":\"100\",\"max\":\"4000\",\"rate\":\"1224.02\",\"currency\":\"INR\"}', 381, 121, '2', '1', 'YouTube Watchtime [ No Drop ★ 30 Days Refill ] [ 1 Hour+ Video ★ 100 Hours + Per Day ] [ No Delay ]', '✶ Start: 0 - 2 Hours\r\n✶ Speed: 100+ Hours Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non-drop\r\n✶ Refill: 30 Days\r\n\r\n★ 1000 Quantity = 1000 hours\r\n★ Link: Yt 60 Min+ Video link\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Embed must be enabled\r\n◉ No restrictions on video\r\n◉ Don\'t use other sources and don\'t mix other views during the process\r\nOtherwise you will not get enough watch hour and in this case refill is not guaranteed', '1236.2602', 100, 4000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Watchtime [ No Drop \\u2605 30 Days Refill ] [ 1 Hour+ Video \\u2605 100 Hours + Per Day ] [ No Delay ]\"}', '{\"en\":\"\\u2736 Start: 0 - 2 Hours\\r\\n\\u2736 Speed: 100+ Hours Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non-drop\\r\\n\\u2736 Refill: 30 Days\\r\\n\\r\\n\\u2605 1000 Quantity = 1000 hours\\r\\n\\u2605 Link: Yt 60 Min+ Video link\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Don\'t use other sources and don\'t mix other views during the process\\r\\nOtherwise you will not get enough watch hour and in this case refill is not guaranteed\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(122, 34, 458, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"340.05\",\"currency\":\"INR\"}', 382, 122, '2', '1', 'Youtube Watch Time - [ 15 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 250 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '343.4505', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 15 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 250 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(123, 34, 459, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"580.57\",\"currency\":\"INR\"}', 382, 123, '2', '1', 'Youtube Watch Time - [ 30 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 500 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '586.3757', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 30 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 500 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(124, 34, 460, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"763.04\",\"currency\":\"INR\"}', 382, 124, '2', '1', 'Youtube Watch Time - [ 45 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 750 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '770.6704', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 45 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 750 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(125, 34, 461, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"928.92\",\"currency\":\"INR\"}', 382, 125, '2', '1', 'Youtube Watch Time - [ 60 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 1000 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '938.2092', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 60 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 1000 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(126, 34, 462, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"1360.25\",\"currency\":\"INR\"}', 382, 126, '2', '1', 'Youtube Watch Time - [ 90 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 1500 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done\r\n', '1373.8525', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 90 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 1500 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(127, 34, 463, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"1857.84\",\"currency\":\"INR\"}', 382, 127, '2', '1', 'Youtube Watch Time - [ 120 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 2000 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '1876.4184', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 120 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 2000 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(128, 34, 464, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"2189.68\",\"currency\":\"INR\"}', 382, 128, '2', '1', 'Youtube Watch Time - [ 150 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]', '◉ 1000 Quantity = 2500 Hours Watchtime\r\n◉ Start: 0-2 Hours\r\n◉ Speed: 500-1000+/Day\r\n◉ Drop : Non-Drop\r\n◉ Quality : Real High\r\n◉ Cancel : Disable\r\n◉ Refill : 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Take screenshots with date for refund Issues!\r\n◉ Running order can be canceled\r\n◉ If Video Is Deleted No Refund\r\n◉ No restrictions on video\r\n◉ Embed must be enabled\r\n◉ Watch hour may update in 24-72 hours on studio analytics after order id done', '2211.5768', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Youtube Watch Time - [ 150 Minutes+ Video ] [ 1000H Per Day | 30 Days Refill ]\"}', '{\"en\":\"\\u25c9 1000 Quantity = 2500 Hours Watchtime\\r\\n\\u25c9 Start: 0-2 Hours\\r\\n\\u25c9 Speed: 500-1000+\\/Day\\r\\n\\u25c9 Drop : Non-Drop\\r\\n\\u25c9 Quality : Real High\\r\\n\\u25c9 Cancel : Disable\\r\\n\\u25c9 Refill : 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Take screenshots with date for refund Issues!\\r\\n\\u25c9 Running order can be canceled\\r\\n\\u25c9 If Video Is Deleted No Refund\\r\\n\\u25c9 No restrictions on video\\r\\n\\u25c9 Embed must be enabled\\r\\n\\u25c9 Watch hour may update in 24-72 hours on studio analytics after order id done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(129, 34, 126, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"115.115\",\"currency\":\"INR\"}', 383, 129, '2', '2', 'YouTube Comment - From Blue Tick Verified Brazilian [0-48/H] [ Quantity - 1 ]', '⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n⏱️ Start: 0 - 48 Hours\r\n💧 Drop: Non-drop\r\n♻️ Refill: 30 Days\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n𝐍𝐨𝐭𝐞:\r\n🔸 Don\'t order for any content that can damage the celebrity\'s profile', '116.26615', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Comment - From Blue Tick Verified Brazilian [0-48\\/H] [ Quantity - 1 ]\"}', '{\"en\":\"\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\u23f1\\ufe0f Start: 0 - 48 Hours\\r\\n\\ud83d\\udca7 Drop: Non-drop\\r\\n\\u267b\\ufe0f Refill: 30 Days\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38 Don\'t order for any content that can damage the celebrity\'s profile\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(130, 34, 129, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"342.42\",\"currency\":\"INR\"}', 383, 130, '2', '3', 'YouTube Comments - [ Max - 10k ] [ 1-5K/D ]  [ 30 Days Refill ] [ 0-1/H ]', '⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n⏱️ Start: 0 - 1 Hours\r\n⚡ Speed: 1-5k /Day\r\n🔥 Quality: Real\r\n💧 Drop: Not observed so far\r\n♻️ Refill: 30 Days\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n𝐍𝐨𝐭𝐞:\r\n🔸 However please do not forget these are just estimations', '345.8442', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Comments - [ Max - 10k ] [ 1-5K\\/D ]  [ 30 Days Refill ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\u23f1\\ufe0f Start: 0 - 1 Hours\\r\\n\\u26a1 Speed: 1-5k \\/Day\\r\\n\\ud83d\\udd25 Quality: Real\\r\\n\\ud83d\\udca7 Drop: Not observed so far\\r\\n\\u267b\\ufe0f Refill: 30 Days\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38 However please do not forget these are just estimations\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(131, 34, 131, '2', '{\"min\":\"5\",\"max\":\"5000\",\"rate\":\"444.808\",\"currency\":\"INR\"}', 383, 131, '2', '3', 'YouTube Comments - Replys [ Custom ] [ Max - 5k ] [ 1K/D ] [ 30 Days Refill ] [ 0-1/H ]', '⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n⏱️ Start: 0 - 1 Hours\r\n⚡ Speed: 1k /Day\r\n🔥 Quality: Real\r\n💧 Drop: Not expected\r\n♻️ Refill: 30 Days\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\nSupport available\r\n⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝⇝\r\n𝐍𝐨𝐭𝐞:\r\n🔸 However please do not forget these are just estimations', '449.25608', 5, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"YouTube Comments - Replys [ Custom ] [ Max - 5k ] [ 1K\\/D ] [ 30 Days Refill ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\u23f1\\ufe0f Start: 0 - 1 Hours\\r\\n\\u26a1 Speed: 1k \\/Day\\r\\n\\ud83d\\udd25 Quality: Real\\r\\n\\ud83d\\udca7 Drop: Not expected\\r\\n\\u267b\\ufe0f Refill: 30 Days\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\nSupport available\\r\\n\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\u21dd\\r\\n\\ud835\\udc0d\\ud835\\udc28\\ud835\\udc2d\\ud835\\udc1e:\\r\\n\\ud83d\\udd38 However please do not forget these are just estimations\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(132, 34, 394, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"98.20\",\"currency\":\"INR\"}', 384, 132, '2', '1', 'Telegram Members - [ 100-200K Per Day ] [ No Drop ★ 365 Days Refill ] [ Unlimited Base ] INSTANT', '✶ Start: Instant\r\n✶ Speed: 100-200K+ Per Day\r\n✶ Quality: Real - High Quality [ Worldwide ]\r\n✶ Drop: Non Drop\r\n✶ Refill: 365 days For Fresh Link\r\n✶ Link Format : https://t.me/username ¦ @username\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.\r\n◉ In case of any problems with the service, please contact support.', '99.182', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 100-200K Per Day ] [ No Drop \\u2605 365 Days Refill ] [ Unlimited Base ] INSTANT\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: 100-200K+ Per Day\\r\\n\\u2736 Quality: Real - High Quality [ Worldwide ]\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 365 days For Fresh Link\\r\\n\\u2736 Link Format : https:\\/\\/t.me\\/username \\u00a6 @username\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(133, 34, 179, '2', '{\"min\":\"100\",\"max\":\"30000\",\"rate\":\"33.0239\",\"currency\":\"INR\"}', 385, 133, '2', '1', 'Telegram Members - [ 3 Days No Drop ] [ 10-30K/D ] INSTANT', '★ Start: Instant \r\n★ Speed: 10 - 30K Per Day \r\n★ Quality: Real \r\n★ Drop: Real Can Drop After 3 Days\r\n★ Refill: 3 Day Auto Refill \r\n\r\n★ Support on the service is good \r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops', '33.354139', 100, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 3 Days No Drop ] [ 10-30K\\/D ] INSTANT\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10 - 30K Per Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Real Can Drop After 3 Days\\r\\n\\u2605 Refill: 3 Day Auto Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(134, 34, 180, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"37.2853\",\"currency\":\"INR\"}', 385, 134, '2', '1', 'Telegram Members - [ 7 Days Refill ]', '★ Start: Instant \r\n★ Speed: 10-30k/Day \r\n★ Quality: Real \r\n★ Drop: Real Can Drop After 7 Days\r\n★ Refill: 7 Day Refill \r\n\r\n★ Support on the service is good \r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops', '37.658153', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 7 Days Refill ]\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10-30k\\/Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Real Can Drop After 7 Days\\r\\n\\u2605 Refill: 7 Day Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(135, 34, 181, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"42.6114\",\"currency\":\"INR\"}', 385, 135, '2', '1', 'Telegram Members - [ 7 Days No Drop ] [ 10-30K/D ] INSTANT', '★ Start: Instant \r\n★ Speed: 10 - 30K Per Day \r\n★ Quality: Real \r\n★ Drop: Real Can Drop After 7 Days\r\n★ Refill: 7 Day Auto Refill \r\n\r\n★ Support on the service is good \r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops', '43.037514', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 7 Days No Drop ] [ 10-30K\\/D ] INSTANT\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10 - 30K Per Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Real Can Drop After 7 Days\\r\\n\\u2605 Refill: 7 Day Auto Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(136, 34, 182, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"54.3296\",\"currency\":\"INR\"}', 385, 136, '2', '1', 'Telegram Members - [ 14 Days No Drop ] [ 10-30K/D ] INSTANT', '★ Start: Instant \r\n★ Speed: 10 - 30K Per Day \r\n★ Quality: Real \r\n★ Drop: Real Can Drop After 14 Days\r\n★ Refill: 14 Day Auto Refill \r\n\r\n★ Support on the service is good \r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops', '54.872896', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 14 Days No Drop ] [ 10-30K\\/D ] INSTANT\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10 - 30K Per Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Real Can Drop After 14 Days\\r\\n\\u2605 Refill: 14 Day Auto Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(137, 34, 184, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"60.7217\",\"currency\":\"INR\"}', 385, 137, '2', '1', 'Telegram Members - [ 30 Days No Drop ] [10-30K/D] INSTANT', '★ Start: Instant \r\n★ Speed: 10 - 30K Per Day \r\n★ Quality: Real \r\n★ Drop: Real Can Drop After 30 Days\r\n★ Refill: 30 Day Auto Refill \r\n\r\n★ Support on the service is good \r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops', '61.328917', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 30 Days No Drop ] [10-30K\\/D] INSTANT\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10 - 30K Per Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Real Can Drop After 30 Days\\r\\n\\u2605 Refill: 30 Day Auto Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(138, 34, 185, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"101.2024\",\"currency\":\"INR\"}', 385, 138, '2', '1', 'Telegram No Drop Members [English Mix Names] [ 30 Days Refill ] [ 3-5K/D ] [ 0-1/H ]', '★ Start: Instant \r\n★ Speed: 10 - 30K Per Day \r\n★ Quality: Real \r\n★ Drop: Non Drop\r\n★ Refill: 30 Days Refill \r\n\r\n★ Support on the service is good \r\n★ There can be refill on fresh links for 30 days, won\'t cover old drops', '102.214424', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram No Drop Members [English Mix Names] [ 30 Days Refill ] [ 3-5K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u2605 Start: Instant \\r\\n\\u2605 Speed: 10 - 30K Per Day \\r\\n\\u2605 Quality: Real \\r\\n\\u2605 Drop: Non Drop\\r\\n\\u2605 Refill: 30 Days Refill \\r\\n\\r\\n\\u2605 Support on the service is good \\r\\n\\u2605 There can be refill on fresh links for 30 days, won\'t cover old drops\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(139, 34, 186, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"103.3331\",\"currency\":\"INR\"}', 385, 139, '2', '1', 'Telegram Members - [ 60 Days No Drop ] [ 10-30K/D ] INSTANT', '★ Start: Instant\r\n★ Speed: 10 - 30K Per Day\r\n★ Quality: Real\r\n★ Drop: Real Can Drop After 60 Days\r\n★ Refill: 60 Day Auto Refill\r\n\r\n★ Support on the service is good\r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\r\n', '104.366431', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ 60 Days No Drop ] [ 10-30K\\/D ] INSTANT\"}', '{\"en\":\"\\u2605 Start: Instant\\r\\n\\u2605 Speed: 10 - 30K Per Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Drop: Real Can Drop After 60 Days\\r\\n\\u2605 Refill: 60 Day Auto Refill\\r\\n\\r\\n\\u2605 Support on the service is good\\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(140, 34, 187, '2', '{\"min\":\"100\",\"max\":\"500000\",\"rate\":\"111.8559\",\"currency\":\"INR\"}', 385, 140, '2', '1', 'Telegram Members - [ Refill for 100% Value ] [ 1-3K/D ] [ 0-1/H ]', '★ Start: 0-1 Hour\r\n★ Speed: High speed\r\n★ Quality: Real\r\n★ Drop: 0-10% normal\r\n★ Refill: only one time refill for 100% of the ordered amount\r\n\r\n★ Support on the service is good\r\n★ Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\r\n', '112.974459', 100, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Members - [ Refill for 100% Value ] [ 1-3K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u2605 Start: 0-1 Hour\\r\\n\\u2605 Speed: High speed\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Drop: 0-10% normal\\r\\n\\u2605 Refill: only one time refill for 100% of the ordered amount\\r\\n\\r\\n\\u2605 Support on the service is good\\r\\n\\u2605 Important note: it won\'t cover old drops, we will refuse to refill drops belongs to other services. We are able to understand our drops\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(141, 34, 231, '2', '{\"min\":\"50\",\"max\":\"100000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 141, '2', '1', 'Telegram Post Reactions + Views [ Positive] [Mixed 👍🤩🎉🔥❤️ ] [ Refill - 365 Days ][ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [ Positive] [Mixed \\ud83d\\udc4d\\ud83e\\udd29\\ud83c\\udf89\\ud83d\\udd25\\u2764\\ufe0f ] [ Refill - 365 Days ][ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(142, 34, 232, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 142, '2', '1', 'Telegram Post Reactions + Views [👍] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udc4d] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(143, 34, 233, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 143, '2', '1', 'Telegram Post Reactions + Views [🔥] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udd25] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(144, 34, 234, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 144, '2', '1', 'Telegram Post Reactions + Views [🤩] [ Refill 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83e\\udd29] [ Refill 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(145, 34, 235, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 145, '2', '1', 'Telegram Post Reactions + Views [❤️] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\u2764\\ufe0f] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(146, 34, 236, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 146, '2', '1', 'Telegram Post Reactions + Views [🎉] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83c\\udf89] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(147, 34, 237, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 147, '2', '1', 'Telegram Post Reactions + Views [😍] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\ude0d] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(148, 34, 238, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 148, '2', '1', 'Telegram Post Reactions + Views [🥰] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83e\\udd70] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(149, 34, 239, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 149, '2', '1', 'Telegram Post Reactions + Views [👏] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udc4f] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(150, 34, 240, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 150, '2', '1', 'Telegram Post Reactions + Views [👌] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udc4c] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(151, 34, 241, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 151, '2', '1', 'Telegram Post Reactions + Views [ Negative ] [ Mixed 👎😁😢💩🤮 ] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [ Negative ] [ Mixed \\ud83d\\udc4e\\ud83d\\ude01\\ud83d\\ude22\\ud83d\\udca9\\ud83e\\udd2e ] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(152, 34, 242, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 152, '2', '1', 'Telegram Post Reactions + Views [👎] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udc4e] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(153, 34, 243, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 153, '2', '1', 'Telegram Post Reactions + Views [🤬] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83e\\udd2c] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(154, 34, 244, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 154, '2', '1', 'Telegram Post Reactions + Views [😁] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\ude01] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(155, 34, 245, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 155, '2', '1', 'Telegram Post Reactions + Views [😢] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\ude22] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(156, 34, 246, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 156, '2', '1', 'Telegram Post Reactions + Views [😱] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\ude31] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(157, 34, 247, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 157, '2', '1', 'Telegram Post Reactions + Views [🤮] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83e\\udd2e] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(158, 34, 248, '2', '{\"min\":\"50\",\"max\":\"1000000\",\"rate\":\"1.5834\",\"currency\":\"INR\"}', 386, 158, '2', '1', 'Telegram Post Reactions + Views [💩] [ Refill - 365 Days ] [ FAST ]', '★ Start: 0 - 30 Min\r\n★ Speed: 500k Day\r\n★ Quality: Real\r\n★ Guarantee: 365 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever\r\n★ Enter Post link for the reaction.\r\n★ Example Link: https://t.me/channel/PostID', '1.599234', 50, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Reactions + Views [\\ud83d\\udca9] [ Refill - 365 Days ] [ FAST ]\"}', '{\"en\":\"\\u2605 Start: 0 - 30 Min\\r\\n\\u2605 Speed: 500k Day\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 365 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\\r\\n\\u2605 Enter Post link for the reaction.\\r\\n\\u2605 Example Link: https:\\/\\/t.me\\/channel\\/PostID\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(159, 34, 201, '2', '{\"min\":\"1000\",\"max\":\"100000000\",\"rate\":\"0.09396\",\"currency\":\"INR\"}', 387, 159, '2', '1', 'Telegram Post Views - INSTANT', '', '0.0948996', 1000, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(160, 34, 202, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"0.09594\",\"currency\":\"INR\"}', 387, 160, '2', '1', 'Telegram Post Views - [ 1 Post ] INSTANT', '', '0.0968994', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ 1 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(161, 34, 203, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"0.12779\",\"currency\":\"INR\"}', 387, 161, '2', '1', 'Telegram Post Views - [ 1 Post ] INSTANT', '', '0.1290679', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ 1 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(162, 34, 204, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"0.26637\",\"currency\":\"INR\"}', 387, 162, '2', '1', 'Telegram Post Views - [ 1 Post ] INSTANT', '', '0.2690337', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ 1 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(163, 34, 205, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"0.63921\",\"currency\":\"INR\"}', 387, 163, '2', '1', 'Telegram Post Views - [ With Start Count ] [ 1 Post ] INSTANT', '', '0.6456021', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ With Start Count ] [ 1 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(164, 34, 206, '2', '{\"min\":\"1000\",\"max\":\"500000\",\"rate\":\"0.85228\",\"currency\":\"INR\"}', 387, 164, '2', '1', 'Telegram Post Views - [ 1 Post ] [ Cancel Enabled ] INSTANT', '', '0.8608028', 1000, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ 1 Post ] [ Cancel Enabled ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(165, 34, 207, '2', '{\"min\":\"100\",\"max\":\"300000\",\"rate\":\"2.1307\",\"currency\":\"INR\"}', 387, 165, '2', '1', 'Telegram Post Views - [ Last 5 Post ] [ Cancel Enabled ] INSTANT', '', '2.152007', 100, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 5 Post ] [ Cancel Enabled ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(166, 34, 208, '2', '{\"min\":\"100\",\"max\":\"300000\",\"rate\":\"4.2614\",\"currency\":\"INR\"}', 387, 166, '2', '1', 'Telegram Post Views - [ Last 10 Post ] [ Cancel Enabled ] INSTANT', '', '4.304014', 100, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 10 Post ] [ Cancel Enabled ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(167, 34, 209, '2', '{\"min\":\"100\",\"max\":\"300000\",\"rate\":\"15.9796\",\"currency\":\"INR\"}', 387, 167, '2', '1', 'Telegram Post Views-  [ Last 20 Post ] INSTANT', '', '16.139396', 100, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views-  [ Last 20 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(168, 34, 210, '2', '{\"min\":\"1000\",\"max\":\"300000\",\"rate\":\"29.8285\",\"currency\":\"INR\"}', 387, 168, '2', '1', 'Telegram Post Views  - [ Last 50 Post ] INSTANT', '', '30.126785', 1000, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views  - [ Last 50 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(169, 34, 211, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"61.7864\",\"currency\":\"INR\"}', 387, 169, '2', '1', 'Telegram Post Views - [ Last 100 Post ] INSTANT', '', '62.404264', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 100 Post ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(170, 34, 212, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"47.9375\",\"currency\":\"INR\"}', 387, 170, '2', '1', 'Telegram Post Views - [ Last 200 Post ] [ Cancel Enabled ] INSTANT', '', '48.416875', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 200 Post ] [ Cancel Enabled ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(171, 34, 213, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"106.5298\",\"currency\":\"INR\"}', 387, 171, '2', '1', 'Telegram Post Views - [ Last 500 Post ] [ Cancel Enabled ] INSTANT', '', '107.595098', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 500 Post ] [ Cancel Enabled ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(172, 34, 214, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"3.1954\",\"currency\":\"INR\"}', 387, 172, '2', '1', 'Telegram Views - [ Arab ] INSTANT', '', '3.227354', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ Arab ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(173, 34, 215, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"6.3921\",\"currency\":\"INR\"}', 387, 173, '2', '1', 'Telegram Views - [ USA ] [ Real ] INSTANT', '', '6.456021', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ USA ] [ Real ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(174, 34, 216, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"6.3921\",\"currency\":\"INR\"}', 387, 174, '2', '1', 'Telegram Views - [ Iran ] [ Real ] INSTANT', '', '6.456021', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ Iran ] [ Real ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(175, 34, 217, '2', '{\"min\":\"10\",\"max\":\"15000\",\"rate\":\"6.3921\",\"currency\":\"INR\"}', 387, 175, '2', '1', 'Telegram Views - [ Ukraine ] [ Real ] INSTANT', '', '6.456021', 10, 15000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ Ukraine ] [ Real ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(176, 34, 218, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"6.3921\",\"currency\":\"INR\"}', 387, 176, '2', '1', 'Telegram Views - [ Indian ] INSTANT', '', '6.456021', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ Indian ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(177, 34, 219, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"6.3921\",\"currency\":\"INR\"}', 387, 177, '2', '1', 'Telegram Views - [ Kazakhstan ] [ Real ] INSTANT', '', '6.456021', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Views - [ Kazakhstan ] [ Real ] INSTANT\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(178, 34, 249, '2', '{\"min\":\"100\",\"max\":\"100000000\",\"rate\":\"0.0574\",\"currency\":\"INR\"}', 388, 178, '2', '1', 'Telegram Post Views - [ Last 1 ] [ Max 50M ] [No Drop] NEW', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: No\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '0.057974', 100, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 1 ] [ Max 50M ] [No Drop] NEW\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: No\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(179, 34, 250, '2', '{\"min\":\"100\",\"max\":\"100000000\",\"rate\":\"0.17206\",\"currency\":\"INR\"}', 388, 179, '2', '1', 'Telegram Post Views - [ Last 1 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '0.1737806', 100, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 1 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(180, 34, 251, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"1.239\",\"currency\":\"INR\"}', 388, 180, '2', '1', 'Telegram Post Views - [ Last 5 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '1.25139', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 5 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(181, 34, 252, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"3.0282\",\"currency\":\"INR\"}', 388, 181, '2', '1', 'Telegram Post Views - [ Last 10 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '3.058482', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 10 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(182, 34, 253, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"6.4708\",\"currency\":\"INR\"}', 388, 182, '2', '1', 'Telegram Post Views - [ Last 20 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '6.535508', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 20 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(183, 34, 254, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"13.7662\",\"currency\":\"INR\"}', 388, 183, '2', '1', 'Telegram Post Views - [ Last 50 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '13.903862', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 50 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(184, 34, 255, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"24.78\",\"currency\":\"INR\"}', 388, 184, '2', '1', 'Telegram Post Views - [ Last 100 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '25.0278', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 100 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(185, 34, 256, '2', '{\"min\":\"10\",\"max\":\"100000000\",\"rate\":\"59.32\",\"currency\":\"INR\"}', 388, 185, '2', '1', 'Telegram Post Views - [ Last 200 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '59.9132', 10, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 200 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(186, 34, 257, '2', '{\"min\":\"10\",\"max\":\"100000000\",\"rate\":\"96.3676\",\"currency\":\"INR\"}', 388, 186, '2', '1', 'Telegram Post Views - [ Last 500 ] [ Refill 60D ] [ Non-Drop ]', '★ Start: 0 - 1 Hours\r\n★ Speed: Instant\r\n★ Quality: Real\r\n★ Guarantee: 60 Days\r\n★ Drop: No\r\n\r\n\r\n★ This service works only on public account\r\n★ No refill / refund if order start count goes down ever', '97.331276', 10, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 500 ] [ Refill 60D ] [ Non-Drop ]\"}', '{\"en\":\"\\u2605 Start: 0 - 1 Hours\\r\\n\\u2605 Speed: Instant\\r\\n\\u2605 Quality: Real\\r\\n\\u2605 Guarantee: 60 Days\\r\\n\\u2605 Drop: No\\r\\n\\r\\n\\r\\n\\u2605 This service works only on public account\\r\\n\\u2605 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(187, 34, 363, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"0.02\",\"currency\":\"INR\"}', 389, 187, '2', '1', 'Telegram Post View - [ Last 1 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 1 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '0.0202', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 1 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 1 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(188, 34, 364, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"0.55\",\"currency\":\"INR\"}', 389, 188, '2', '1', 'Telegram Post View - [ Last 5 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 5 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '0.5555', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 5 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 5 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(189, 34, 365, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"1.64\",\"currency\":\"INR\"}', 389, 189, '2', '1', 'Telegram Post View - [ Last 10 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 10 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '1.6564', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 10 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 10 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(190, 34, 366, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"3.44\",\"currency\":\"INR\"}', 389, 190, '2', '1', 'Telegram Post View - [ Last 20 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 20 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '3.4744', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 20 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 20 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(191, 34, 367, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"7.24\",\"currency\":\"INR\"}', 389, 191, '2', '1', 'Telegram Post View - [ Last 50 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 50 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '7.3124', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 50 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 50 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(192, 34, 368, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"14.42\",\"currency\":\"INR\"}', 389, 192, '2', '1', 'Telegram Post View - [ Last 100 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 100 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '14.5642', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 100 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 100 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(193, 34, 369, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"49.60\",\"currency\":\"INR\"}', 389, 193, '2', '1', 'Telegram Post View - [ Last 500 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 500 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '50.096', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 500 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 500 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(194, 34, 370, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"69.52\",\"currency\":\"INR\"}', 389, 194, '2', '1', 'Telegram Post View - [ Last 750 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 750 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '70.2152', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 750 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 750 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(195, 34, 371, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"90.54\",\"currency\":\"INR\"}', 389, 195, '2', '1', 'Telegram Post View - [ Last 1000 Post ] [ SuperFast ★ Always Working ]', '★ Example Link: https://t.me/xyz/4\r\n★ Speed: Day 100K+\r\n★ Drop : No\r\n★ Last 1000 Post\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ When the service is busy, the starting speed of the process changes.\r\n◉ Do not place the second order on the same link before your order is completed in the system.', '91.4454', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post View - [ Last 1000 Post ] [ SuperFast \\u2605 Always Working ]\"}', '{\"en\":\"\\u2605 Example Link: https:\\/\\/t.me\\/xyz\\/4\\r\\n\\u2605 Speed: Day 100K+\\r\\n\\u2605 Drop : No\\r\\n\\u2605 Last 1000 Post\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 When the service is busy, the starting speed of the process changes.\\r\\n\\u25c9 Do not place the second order on the same link before your order is completed in the system.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(196, 34, 448, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"0.016\",\"currency\":\"INR\"}', 390, 196, '2', '1', 'Telegram Post Views - [ Last 1 Post ★ Best ★ Always Working ]', '', '0.01616', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 1 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(197, 34, 449, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"0.26\",\"currency\":\"INR\"}', 390, 197, '2', '1', 'Telegram Post Views - [ Last 5 Post ★ Best ★ Always Working ]', '', '0.2626', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 5 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(198, 34, 450, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"0.74\",\"currency\":\"INR\"}', 390, 198, '2', '1', 'Telegram Post Views - [ Last 10 Post ★ Best ★ Always Working ]', '', '0.7474', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 10 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(199, 34, 451, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"1.9\",\"currency\":\"INR\"}', 390, 199, '2', '1', 'Telegram Post Views - [ Last 20 Post ★ Best ★ Always Working ]', '', '1.919', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 20 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(200, 34, 452, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"4.03\",\"currency\":\"INR\"}', 390, 200, '2', '1', 'Telegram Post Views - [ Last 50 Post ★ Best ★ Always Working ]', '', '4.0703', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 50 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(201, 34, 453, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"8.17\",\"currency\":\"INR\"}', 390, 201, '2', '1', 'Telegram Post Views - [ Last 100 Post ★ Best ★ Always Working ]', '', '8.2517', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 100 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(202, 34, 454, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"29.89\",\"currency\":\"INR\"}', 390, 202, '2', '1', 'Telegram Post Views - [ Last 200 Post ★ Best ★ Always Working ]', '', '30.1889', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 200 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(203, 34, 455, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"36.24\",\"currency\":\"INR\"}', 390, 203, '2', '1', 'Telegram Post Views - [ Last 500 Post ★ Best ★ Always Working ]', '', '36.6024', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 500 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(204, 34, 456, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"46.54\",\"currency\":\"INR\"}', 390, 204, '2', '1', 'Telegram Post Views - [ Last 750 Post ★ Best ★ Always Working ]', '', '47.0054', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 750 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(205, 34, 457, '2', '{\"min\":\"10\",\"max\":\"50000000\",\"rate\":\"56.88\",\"currency\":\"INR\"}', 390, 205, '2', '1', 'Telegram Post Views - [ Last 1000 Post ★ Best ★ Always Working ]', '', '57.4488', 10, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Telegram Post Views - [ Last 1000 Post \\u2605 Best \\u2605 Always Working ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(206, 34, 408, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 206, '2', '1', '🤖Bot Start - Mix Country + Accept Referral Code 🌎🔝', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start - Mix Country + Accept Referral Code \\ud83c\\udf0e\\ud83d\\udd1d\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(207, 34, 409, '2', '{\"min\":\"15\",\"max\":\"13500\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 207, '2', '1', '🤖Bot Start [ Ukraine 🇺🇦 + Accept Refernal Code ]', '', '22.9472', 15, 13500, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ Ukraine \\ud83c\\uddfa\\ud83c\\udde6 + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(208, 34, 410, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 208, '2', '1', '🤖Bot Start [ China 🇨🇳  + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ China \\ud83c\\udde8\\ud83c\\uddf3  + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(209, 34, 411, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 209, '2', '1', '🤖Bot Start [ israel 🇮🇱 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ israel \\ud83c\\uddee\\ud83c\\uddf1 + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(210, 34, 412, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 210, '2', '1', '🤖Bot Start [ Arabic 🇸🇦🇦🇪 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ Arabic \\ud83c\\uddf8\\ud83c\\udde6\\ud83c\\udde6\\ud83c\\uddea + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(211, 34, 413, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 211, '2', '1', '🤖Bot Start [ India 🇮🇳 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ India \\ud83c\\uddee\\ud83c\\uddf3 + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(212, 34, 414, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 212, '2', '1', '🤖Bot Start [ Russia 🇷🇺 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ Russia \\ud83c\\uddf7\\ud83c\\uddfa + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(213, 34, 415, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 213, '2', '1', '🤖Bot Start [ UK-US 🇬🇧 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ UK-US \\ud83c\\uddec\\ud83c\\udde7 + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(214, 34, 416, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 214, '2', '1', '🤖Bot Start [ Turkey 🇹🇷 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ Turkey \\ud83c\\uddf9\\ud83c\\uddf7 + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(215, 34, 417, '2', '{\"min\":\"15\",\"max\":\"1000000\",\"rate\":\"22.72\",\"currency\":\"INR\"}', 391, 215, '2', '1', '🤖Bot Start [ Germany 🇩🇪 + Accept Refernal Code ]', '', '22.9472', 15, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83e\\udd16Bot Start [ Germany \\ud83c\\udde9\\ud83c\\uddea + Accept Refernal Code ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(216, 34, 398, '2', '{\"min\":\"100\",\"max\":\"100000000\",\"rate\":\"0.01\",\"currency\":\"INR\"}', 392, 216, '2', '1', 'TikTok Video Views - [ Non-Drop ★ Instant Start ★ 100M Per day ]', '', '0.0101', 100, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ Non-Drop \\u2605 Instant Start \\u2605 100M Per day ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(217, 34, 297, '2', '{\"min\":\"1000\",\"max\":\"100000000\",\"rate\":\"0.02\",\"currency\":\"INR\"}', 392, 217, '2', '1', 'Tiktok Views - [ Cheapest ] [ 500k+ per Day ] INSTANT ', '', '0.0202', 1000, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ Cheapest ] [ 500k+ per Day ] INSTANT \"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(218, 34, 469, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.072\",\"currency\":\"INR\"}', 393, 218, '2', '1', 'Tiktok Views - [ +10% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 10% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.\r\n', '0.07272', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ +10% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 10% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(219, 34, 470, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.120\",\"currency\":\"INR\"}', 393, 219, '2', '1', 'Tiktok Views - [ 20% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 20% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.\r\n', '0.1212', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 20% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 20% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(220, 34, 471, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.180\",\"currency\":\"INR\"}', 393, 220, '2', '1', 'Tiktok Views - [ 30% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 30% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.1818', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 30% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 30% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(221, 34, 472, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.216\",\"currency\":\"INR\"}', 393, 221, '2', '1', 'Tiktok Views - [ 40% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 40% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.21816', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 40% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 40% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(222, 34, 473, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.265\",\"currency\":\"INR\"}', 393, 222, '2', '1', 'Tiktok Views - [ 50% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 50% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.\r\n', '0.26765', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 50% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 50% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(223, 34, 474, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.325\",\"currency\":\"INR\"}', 393, 223, '2', '1', 'Tiktok Views - [ 60% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 60% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.32825', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 60% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 60% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(224, 34, 475, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.362\",\"currency\":\"INR\"}', 393, 224, '2', '1', 'Tiktok Views - [ 70% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 70% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.36562', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 70% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 70% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(225, 34, 476, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.41\",\"currency\":\"INR\"}', 393, 225, '2', '1', 'Tiktok Views - [ 80% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 80% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.4141', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 80% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 80% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(226, 34, 477, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.468\",\"currency\":\"INR\"}', 393, 226, '2', '1', 'Tiktok Views - [ 90% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 90% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.47268', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 90% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 90% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(227, 34, 478, '2', '{\"min\":\"500\",\"max\":\"10000000\",\"rate\":\"0.530\",\"currency\":\"INR\"}', 393, 227, '2', '1', 'Tiktok Views - [ 100% Share ] [ Max 10M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Share: 100% on 1000 quantity\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are getting views and likes\r\n◉ This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\r\n◉ In case of any problems with the service, please contact support.', '0.5353', 500, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Views - [ 100% Share ] [ Max 10M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Share: 100% on 1000 quantity\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are getting views and likes\\r\\n\\u25c9 This Service is Video Viewing Service. Posts that are not video likes are lost and in this case, no cancellation is possible.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(228, 34, 479, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"1.842\",\"currency\":\"INR\"}', 394, 228, '2', '1', 'TikTok Video Views - [ 10% Like + 5% Share ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 10%\r\n✶ Share: 5%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '1.86042', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ 10% Like + 5% Share ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 10%\\r\\n\\u2736 Share: 5%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(229, 34, 480, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"3.614\",\"currency\":\"INR\"}', 394, 229, '2', '1', 'TikTok Video Views - [ 20% Like + 10% Share ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 20%\r\n✶ Share: 10%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '3.65014', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ 20% Like + 10% Share ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 20%\\r\\n\\u2736 Share: 10%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(230, 34, 481, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"5.495\",\"currency\":\"INR\"}', 394, 230, '2', '1', 'TikTok Video Views - [ 30% Like + 15% Share ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 30%\r\n✶ Share: 15%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '5.54995', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ 30% Like + 15% Share ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 30%\\r\\n\\u2736 Share: 15%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(231, 34, 482, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"7.302\",\"currency\":\"INR\"}', 394, 231, '2', '1', 'TikTok Video Views - [ 40% Like + 20% Share ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 40%\r\n✶ Share: 20%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '7.37502', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ 40% Like + 20% Share ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 40%\\r\\n\\u2736 Share: 20%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(232, 34, 483, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"10.122\",\"currency\":\"INR\"}', 394, 232, '2', '1', 'TikTok Video Views - [ 50% Like + 25% Share ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 50%\r\n✶ Share: 25%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '10.22322', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Video Views - [ 50% Like + 25% Share ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 50%\\r\\n\\u2736 Share: 25%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(233, 34, 484, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"5.362\",\"currency\":\"INR\"}', 395, 233, '2', '1', 'TikTok Views - [ 10% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 10%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '5.41562', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views - [ 10% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 10%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(234, 34, 485, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"7.818\",\"currency\":\"INR\"}', 395, 234, '2', '1', 'TikTok Views - [ 20% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 20%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '7.89618', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views - [ 20% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 20%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(235, 34, 486, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"11.182\",\"currency\":\"INR\"}', 395, 235, '2', '1', 'TikTok Views - [ 30% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 30%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '11.29382', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views - [ 30% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 30%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(236, 34, 487, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"15.641\",\"currency\":\"INR\"}', 395, 236, '2', '1', 'TikTok Views - [ 40% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 40%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '15.79741', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views - [ 40% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 40%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(237, 34, 488, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"17.882\",\"currency\":\"INR\"}', 395, 237, '2', '1', 'TikTok Views - [ 50% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]', '✶ Start: 0-30 Minutes\r\n✶ Speed: 1M+ Per Day\r\n✶ Quality: High Quality \r\n✶ Link: Video Link\r\n✶ Location: Global\r\n✶ Likes: 50%\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Links are viewed and liked\r\n◉ This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\r\n◉ In case of any problems with the service, please contact support.', '18.06082', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Views - [ 50% Likes + Engagement ] [ Max 1M ] [ 1M+ Per Day ]\"}', '{\"en\":\"\\u2736 Start: 0-30 Minutes\\r\\n\\u2736 Speed: 1M+ Per Day\\r\\n\\u2736 Quality: High Quality \\r\\n\\u2736 Link: Video Link\\r\\n\\u2736 Location: Global\\r\\n\\u2736 Likes: 50%\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Links are viewed and liked\\r\\n\\u25c9 This Service is Video Watch Service. Posts without video likes are lost and there is no cancellation in this case.\\r\\n\\u25c9 In case of any problems with the service, please contact support.\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(238, 34, 291, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"11.3575\",\"currency\":\"INR\"}', 396, 238, '2', '1', 'TikTok Likes - [ Max - 300k ][ 20k Day ] [ No Refill ] [ Fast ] NEW', '◉ Start:  0 - 1 Hour\r\n◉ Speed: 20k Day\r\n◉ Quality: Mix\r\n◉ Drop: No\r\n◉ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '11.471075', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Max - 300k ][ 20k Day ] [ No Refill ] [ Fast ] NEW\"}', '{\"en\":\"\\u25c9 Start:  0 - 1 Hour\\r\\n\\u25c9 Speed: 20k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(239, 34, 292, '2', '{\"min\":\"50\",\"max\":\"100000\",\"rate\":\"17.36\",\"currency\":\"INR\"}', 396, 239, '2', '1', 'TikTok Likes - [ Max - 40k ][ Fast ] UPDATED', '◉ Start:  0 - 1 Hour\r\n◉ Speed: 10k Day\r\n◉ Quality: Mix\r\n◉ Drop: No\r\n◉ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '17.5336', 50, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Max - 40k ][ Fast ] UPDATED\"}', '{\"en\":\"\\u25c9 Start:  0 - 1 Hour\\r\\n\\u25c9 Speed: 10k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(240, 34, 294, '2', '{\"min\":\"50\",\"max\":\"100000\",\"rate\":\"21.6337\",\"currency\":\"INR\"}', 396, 240, '2', '1', 'TikTok Likes - [ Max - 15k ] [ Very Fast ]', '◉ Start: 0- 30 Min\r\n◉ Speed: 15k Day\r\n◉ Quality: Mix\r\n◉ Drop: No\r\n◉ Refill: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '21.850037', 50, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Max - 15k ] [ Very Fast ]\"}', '{\"en\":\"\\u25c9 Start: 0- 30 Min\\r\\n\\u25c9 Speed: 15k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(241, 34, 280, '2', '{\"min\":\"10\",\"max\":\"200000\",\"rate\":\"21.62375\",\"currency\":\"INR\"}', 397, 241, '2', '1', 'TikTok Likes - [ Max - 200k ] [ 30k-40k Day ] [ 30 Days Refill ] [ FAST ]', '◉ Start:  0 - 1 Hour\r\n◉ Speed: 30k - 40k Day\r\n◉ Quality: Mix\r\n◉ Drop: No\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '21.8399875', 10, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Max - 200k ] [ 30k-40k Day ] [ 30 Days Refill ] [ FAST ]\"}', '{\"en\":\"\\u25c9 Start:  0 - 1 Hour\\r\\n\\u25c9 Speed: 30k - 40k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(242, 34, 277, '2', '{\"min\":\"20\",\"max\":\"25000\",\"rate\":\"25.6075\",\"currency\":\"INR\"}', 397, 242, '2', '1', 'TikTok Likes - [ No Drop ] [ 30 Days Refill ] [ 5-10K/D ] INSTANT', '◉ Start:  INSTANT\r\n◉ Speed: Superfast\r\n◉ Quality: Real\r\n◉ Drop: No\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '25.863575', 20, 25000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ No Drop ] [ 30 Days Refill ] [ 5-10K\\/D ] INSTANT\"}', '{\"en\":\"\\u25c9 Start:  INSTANT\\r\\n\\u25c9 Speed: Superfast\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(243, 34, 278, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"28.68125\",\"currency\":\"INR\"}', 397, 243, '2', '1', 'TikTok Likes - [ 30 Days Refill ] [ 5-10K/D ] [ 0-1/H ]', '◉ Start: 0 - 1 Hours\r\n◉ Speed: 5k - 10k /Day\r\n◉ Quality: Real\r\n◉ Drop: No\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Reorder available after completion\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '28.9680625', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ 30 Days Refill ] [ 5-10K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0 - 1 Hours\\r\\n\\u25c9 Speed: 5k - 10k \\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Reorder available after completion\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(244, 34, 282, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"30.63\",\"currency\":\"INR\"}', 397, 244, '2', '1', 'TikTok Likes - [ Max - 1M ] [ Real ] [ Very Fast ] [ Refill 30D ]', '◉ Start:  0- 30 Min\r\n◉ Speed: 20k -30k Day\r\n◉ Quality: Real\r\n◉ Drop: No\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '30.9363', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Max - 1M ] [ Real ] [ Very Fast ] [ Refill 30D ]\"}', '{\"en\":\"\\u25c9 Start:  0- 30 Min\\r\\n\\u25c9 Speed: 20k -30k Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(245, 34, 279, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"32.77875\",\"currency\":\"INR\"}', 397, 245, '2', '1', 'Tiktok Likes - [ Low Drop ] [ 30 Days Refill ] [ 100K/D ] [ 0-1/H ]', '◉ Start: 0 - 1 Hours\r\n◉ Speed: 100k /Day\r\n◉ Quality: Real\r\n◉ Drop: No\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Reorder available after completion\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever\r\n◉ sometimes service can take wrong start count or less delivery can happen in this case you can get refill or refund', '33.1065375', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Tiktok Likes - [ Low Drop ] [ 30 Days Refill ] [ 100K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0 - 1 Hours\\r\\n\\u25c9 Speed: 100k \\/Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: No\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Reorder available after completion\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\\r\\n\\u25c9 sometimes service can take wrong start count or less delivery can happen in this case you can get refill or refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(246, 34, 296, '2', '{\"min\":\"10\",\"max\":\"5000000\",\"rate\":\"40.5625\",\"currency\":\"INR\"}', 397, 246, '2', '1', 'TikTok Likes - [ Real ] [ Max - 5M ] [ Very Fast ] [ Refill 365D ] [ 0-30Min ]', '', '40.968125', 10, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Likes - [ Real ] [ Max - 5M ] [ Very Fast ] [ Refill 365D ] [ 0-30Min ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(247, 34, 288, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"146.24\",\"currency\":\"INR\"}', 398, 247, '2', '1', 'TikTok Followers - [ Max - 100k ] [ Speed 2k - 5k - Day ] [ No Refill ] NEW', '◉ Start: 0 - 30 Min\r\n◉ Speed: 2k - 5k Day\r\n◉ Quality: Mix\r\n◉ Drop:  0-15%\r\n◉ Guarantee: No\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '147.7024', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Followers - [ Max - 100k ] [ Speed 2k - 5k - Day ] [ No Refill ] NEW\"}', '{\"en\":\"\\u25c9 Start: 0 - 30 Min\\r\\n\\u25c9 Speed: 2k - 5k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop:  0-15%\\r\\n\\u25c9 Guarantee: No\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(248, 34, 283, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"197.8989\",\"currency\":\"INR\"}', 399, 248, '2', '1', 'TikTok Followers - [ No Drop ] [ 30 Days Refill ] [ 100-1K/D ] [ 0-1/H ]', '◉ Start: 0 - 1 Hour\r\n◉ Speed: 100-1k Per Day\r\n◉ Quality: Real\r\n◉ Drop: Non Drop\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '199.877889', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Followers - [ No Drop ] [ 30 Days Refill ] [ 100-1K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0 - 1 Hour\\r\\n\\u25c9 Speed: 100-1k Per Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non Drop\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(249, 34, 286, '2', '{\"min\":\"10\",\"max\":\"80000\",\"rate\":\"250.0307\",\"currency\":\"INR\"}', 399, 249, '2', '1', 'TikTok Followers - [ No Drop ] [ Max - 80k ] [ Speed 5k - 10k Day ] [ 30 Days Refill ] [ 0-1H ] NEW', '◉ Start: 0 - 1 Hour\r\n◉ Speed: 5k - 10k Day\r\n◉ Quality: Mix\r\n◉ Drop: Non Drop [ sometimes 0-10% ]\r\n◉ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '252.531007', 10, 80000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Followers - [ No Drop ] [ Max - 80k ] [ Speed 5k - 10k Day ] [ 30 Days Refill ] [ 0-1H ] NEW\"}', '{\"en\":\"\\u25c9 Start: 0 - 1 Hour\\r\\n\\u25c9 Speed: 5k - 10k Day\\r\\n\\u25c9 Quality: Mix\\r\\n\\u25c9 Drop: Non Drop [ sometimes 0-10% ]\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(250, 34, 284, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"471.187\",\"currency\":\"INR\"}', 399, 250, '2', '1', 'TikTok Followers - [ High Quality ] [ Lifetime ] [ 15-35K/D ] [ 0-1/H ]', '◉ Start: 0 - 1 Hour\r\n◉ Speed: 15k - 30k Per Day\r\n◉ Quality: Real\r\n◉ Drop: Non Drop\r\n◉ Refill: Lifetime\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service works only on public account\r\n◉ No refill / refund if order start count goes down ever', '475.89887', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"TikTok Followers - [ High Quality ] [ Lifetime ] [ 15-35K\\/D ] [ 0-1\\/H ]\"}', '{\"en\":\"\\u25c9 Start: 0 - 1 Hour\\r\\n\\u25c9 Speed: 15k - 30k Per Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non Drop\\r\\n\\u25c9 Refill: Lifetime\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service works only on public account\\r\\n\\u25c9 No refill \\/ refund if order start count goes down ever\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(251, 34, 361, '2', '{\"min\":\"500\",\"max\":\"1000000\",\"rate\":\"85.8352\",\"currency\":\"INR\"}', 400, 251, '2', '1', 'Facebook Page Followers - [ Non Drop ★ 30 Days Refill] [ 3-5K Per Day ] Classic Page', '◉ Start: 0 - 12Hours\r\n◉ Speed: 3-5K+/Day\r\n◉ Quality: Real High Quality\r\n◉ Drop: Non Drop\r\n◉ Refill: 30 Days\r\n\r\n★ Link: Facebook Page link\r\n★ Example link: https://www.facebook.com/xyz\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ This service work only on public classic profile\r\n◉ Order will consider as completed if insert wrong link\r\n◉ Order will consider as completed if link change / removed', '86.693552', 500, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Facebook Page Followers - [ Non Drop \\u2605 30 Days Refill] [ 3-5K Per Day ] Classic Page\"}', '{\"en\":\"\\u25c9 Start: 0 - 12Hours\\r\\n\\u25c9 Speed: 3-5K+\\/Day\\r\\n\\u25c9 Quality: Real High Quality\\r\\n\\u25c9 Drop: Non Drop\\r\\n\\u25c9 Refill: 30 Days\\r\\n\\r\\n\\u2605 Link: Facebook Page link\\r\\n\\u2605 Example link: https:\\/\\/www.facebook.com\\/xyz\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 This service work only on public classic profile\\r\\n\\u25c9 Order will consider as completed if insert wrong link\\r\\n\\u25c9 Order will consider as completed if link change \\/ removed\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(252, 34, 362, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"108.4237\",\"currency\":\"INR\"}', 400, 252, '2', '1', 'Facebook Page Likes + Followers - [ Non Drop ★ Lifetime ] [ 100-1K Per Day ] [ HQ ]', '◉ Start: 0 - 72 Hours\r\n◉ Speed: 100-1K / Day\r\n◉ Quality: Real\r\n◉ Drop: Non Drop\r\n◉ Refill: Lifetime\r\n\r\n★ Link: Facebook Page link\r\n★ Example link: https://www.Facebook.com/Page\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Support on the server is good', '109.507937', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Facebook Page Likes + Followers - [ Non Drop \\u2605 Lifetime ] [ 100-1K Per Day ] [ HQ ]\"}', '{\"en\":\"\\u25c9 Start: 0 - 72 Hours\\r\\n\\u25c9 Speed: 100-1K \\/ Day\\r\\n\\u25c9 Quality: Real\\r\\n\\u25c9 Drop: Non Drop\\r\\n\\u25c9 Refill: Lifetime\\r\\n\\r\\n\\u2605 Link: Facebook Page link\\r\\n\\u2605 Example link: https:\\/\\/www.Facebook.com\\/Page\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Support on the server is good\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(253, 34, 352, '2', '{\"min\":\"500\",\"max\":\"10000\",\"rate\":\"118.14\",\"currency\":\"INR\"}', 401, 253, '2', '1', 'FB Profile Followers - [ No Drop ★ Lifetime Guarantee ] [ 5-10k Per Day ]', '★ Start: 0-48 Hours\r\n★ Speed: 5-10k+ /Day\r\n★ Quality: Nice\r\n★ Drop: No\r\n★ Refill: Lifetime\r\n\r\n★ Never Drop server', '119.3214', 500, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"FB Profile Followers - [ No Drop \\u2605 Lifetime Guarantee ] [ 5-10k Per Day ]\"}', '{\"en\":\"\\u2605 Start: 0-48 Hours\\r\\n\\u2605 Speed: 5-10k+ \\/Day\\r\\n\\u2605 Quality: Nice\\r\\n\\u2605 Drop: No\\r\\n\\u2605 Refill: Lifetime\\r\\n\\r\\n\\u2605 Never Drop server\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(254, 34, 422, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"22.64\",\"currency\":\"INR\"}', 402, 254, '2', '1', 'Spotify Followers - [ 30 Days Refill ★ All Links Work ] [ 20-50K Per Day ★ Instant ]', '★ Followers/User/Artist/Podcast work for all\r\n\r\n✶ Start: 0 - 1 Hours\r\n✶ Speed: 50K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 30 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Playlist Followers will update in 0-1 Hours \r\n◉ User & Artist Followers will update in 1-48 Hours\r\n◉ Artist & Podcast Start Count is 0', '22.8664', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Followers - [ 30 Days Refill \\u2605 All Links Work ] [ 20-50K Per Day \\u2605 Instant ]\"}', '{\"en\":\"\\u2605 Followers\\/User\\/Artist\\/Podcast work for all\\r\\n\\r\\n\\u2736 Start: 0 - 1 Hours\\r\\n\\u2736 Speed: 50K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 30 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Playlist Followers will update in 0-1 Hours \\r\\n\\u25c9 User & Artist Followers will update in 1-48 Hours\\r\\n\\u25c9 Artist & Podcast Start Count is 0\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(255, 34, 423, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"23.64\",\"currency\":\"INR\"}', 402, 255, '2', '1', 'Spotify Followers - [ 90 Days Refill ★ All Links ] [ 20-50K Per Day ★ Instant ]', '★ Followers/User/Artist/ work for all\r\n\r\n✶ Start: 0 - 1 Hours\r\n✶ Speed: 50K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 90 Days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Playlist Followers will update in 0-1 Hours \r\n◉ User & Artist Followers will update in 1-48 Hours\r\n◉ Artist & Podcast Start Count is 0', '23.8764', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Followers - [ 90 Days Refill \\u2605 All Links ] [ 20-50K Per Day \\u2605 Instant ]\"}', '{\"en\":\"\\u2605 Followers\\/User\\/Artist\\/ work for all\\r\\n\\r\\n\\u2736 Start: 0 - 1 Hours\\r\\n\\u2736 Speed: 50K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 90 Days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Playlist Followers will update in 0-1 Hours \\r\\n\\u25c9 User & Artist Followers will update in 1-48 Hours\\r\\n\\u25c9 Artist & Podcast Start Count is 0\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(256, 34, 424, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"26.48\",\"currency\":\"INR\"}', 402, 256, '2', '1', 'Spotify Followers - [ 1 Year Refill ★ All Links ] [ 20-50K Per Day ★ Instant ]', '★ Followers/User/Artist/ work for all\r\n\r\n✶ Start: 0 - 1 Hours\r\n✶ Speed: 50K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: 1 Year\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Playlist Followers will update in 0-1 Hours \r\n◉ User & Artist Followers will update in 1-48 Hours\r\n◉ Artist & Podcast Start Count is 0', '26.7448', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Followers - [ 1 Year Refill \\u2605 All Links ] [ 20-50K Per Day \\u2605 Instant ]\"}', '{\"en\":\"\\u2605 Followers\\/User\\/Artist\\/ work for all\\r\\n\\r\\n\\u2736 Start: 0 - 1 Hours\\r\\n\\u2736 Speed: 50K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: 1 Year\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Playlist Followers will update in 0-1 Hours \\r\\n\\u25c9 User & Artist Followers will update in 1-48 Hours\\r\\n\\u25c9 Artist & Podcast Start Count is 0\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(257, 34, 425, '2', '{\"min\":\"20\",\"max\":\"100000\",\"rate\":\"38.52\",\"currency\":\"INR\"}', 402, 257, '2', '1', 'Spotify Followers - [ Lifetime ★ Non Drop ] [ 1K+ Per Day ★ 0-12 Hours ]', '✶ Start: 0 - 12 Hours\r\n✶ Speed: 500 - 1K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Best Service in the Market\r\n◉ In this server we can\'t cancel after order so be careful\r\n◉ Followers from TIER 1 countries only! USA/CA/EU/AU/NZ/UK', '38.9052', 20, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Followers - [ Lifetime \\u2605 Non Drop ] [ 1K+ Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 500 - 1K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Best Service in the Market\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\\r\\n\\u25c9 Followers from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(258, 34, 426, '2', '{\"min\":\"20\",\"max\":\"100000000\",\"rate\":\"39.02\",\"currency\":\"INR\"}', 402, 258, '2', '1', 'Spotify Playlist Followers - [ Lifetime ★ Non Drop ] [ 1k+ Per Day ★ 0-12 Hours ]', '✶ Start: 0 - 12 Hours\r\n✶ Speed: 500 - 1K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Best Service in the Market\r\n◉ In this server we can\'t cancel after order so be careful\r\n◉ Followers from TIER 1 countries only! USA/CA/EU/AU/NZ/UK', '39.4102', 20, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Playlist Followers - [ Lifetime \\u2605 Non Drop ] [ 1k+ Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 500 - 1K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Best Service in the Market\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\\r\\n\\u25c9 Followers from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(259, 34, 427, '2', '{\"min\":\"20\",\"max\":\"100000000\",\"rate\":\"39.04\",\"currency\":\"INR\"}', 402, 259, '2', '1', 'Spotify User Followers - [ Lifetime ★ Non Drop ] [ 20-50K Per Day ★ 0-12 Hours ]', '✶ Start: 0 - 12 Hours\r\n✶ Speed: 20 - 50K+ Per Day\r\n✶ Quality: HQ\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Followers from TIER 1 countries only! USA/CA/EU/AU/NZ/UK\r\n◉ USER PROFILES ONLY!\r\n◉ In this server we can\'t cancel after order so be careful', '39.4304', 20, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify User Followers - [ Lifetime \\u2605 Non Drop ] [ 20-50K Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 20 - 50K+ Per Day\\r\\n\\u2736 Quality: HQ\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Followers from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\\r\\n\\u25c9 USER PROFILES ONLY!\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`) VALUES
(260, 34, 428, '2', '{\"min\":\"1000\",\"max\":\"1000000000\",\"rate\":\"15.14\",\"currency\":\"INR\"}', 403, 260, '2', '1', 'Spotify Free Plays - [ No Drop ★ Real ] [ 1-2K Per Day ★ 0-12 Hours ]', '★ Free account plays\r\n\r\n✶ Start: 0 - 12 Hours\r\n✶ Speed: 1 -2K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Plays can update 24-72 hours after order is done', '15.2914', 1000, 1000000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Free Plays - [ No Drop \\u2605 Real ] [ 1-2K Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2605 Free account plays\\r\\n\\r\\n\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 1 -2K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Plays can update 24-72 hours after order is done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(261, 34, 429, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"19.84\",\"currency\":\"INR\"}', 403, 261, '2', '1', 'Spotify Free Plays - [ Lifetime Guaranteed ] [ 5-10K Per Day ★ 0-12 Hours ]', '★ Free plays from TIER 1 countries only! USA/CA/EU/AU/NZ/UK\r\n\r\n✶ Start: 0 - 12 Hours\r\n✶ Speed: 5 -10K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime \r\n✶ Details: Royalties Eligible!\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Best Service in the Market\r\n◉ In this server we can\'t cancel after order so be careful', '20.0384', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Free Plays - [ Lifetime Guaranteed ] [ 5-10K Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2605 Free plays from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\\r\\n\\r\\n\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 5 -10K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime \\r\\n\\u2736 Details: Royalties Eligible!\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Best Service in the Market\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(262, 34, 430, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"22.68\",\"currency\":\"INR\"}', 403, 262, '2', '1', 'Spotify Free Real Plays - [ Real ★ No Drop ] [ 2K Per Day ★ Instant ]', '★ Real free account plays from TIER 1 countries\r\n★ Retention from 60 sec to 3 minutes\r\n\r\n✶ Start: 0 - 12 Hours\r\n✶ Speed: 1 -2K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: Non Drop\r\n✶ Refill: Lifetime \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Plays can update 24-72 hours after order is done', '22.9068', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Free Real Plays - [ Real \\u2605 No Drop ] [ 2K Per Day \\u2605 Instant ]\"}', '{\"en\":\"\\u2605 Real free account plays from TIER 1 countries\\r\\n\\u2605 Retention from 60 sec to 3 minutes\\r\\n\\r\\n\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 1 -2K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: Non Drop\\r\\n\\u2736 Refill: Lifetime \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Plays can update 24-72 hours after order is done\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(263, 34, 432, '2', '{\"min\":\"500\",\"max\":\"75000\",\"rate\":\"86.41\",\"currency\":\"INR\"}', 404, 263, '2', '1', 'Spotify Monthly Listeners - [ 500-1K Per Day ★ 0-12 Hours ]', '★ Best Service in the Market\r\n★ TIER 1 countries only! USA/CA/EU/AU/NZ/UK.\r\n\r\n✶ Start: 0 - 12 Hours\r\n✶ Speed: 500 -1K+ Per Day\r\n✶ Drop: low medium high no refill in any case\r\n✶ Refill: No \r\n✶ Details: Royalties Eligible!\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ In this server we can\'t cancel after order so be careful', '87.2741', 500, 75000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Monthly Listeners - [ 500-1K Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2605 Best Service in the Market\\r\\n\\u2605 TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK.\\r\\n\\r\\n\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 500 -1K+ Per Day\\r\\n\\u2736 Drop: low medium high no refill in any case\\r\\n\\u2736 Refill: No \\r\\n\\u2736 Details: Royalties Eligible!\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(264, 34, 433, '2', '{\"min\":\"1000\",\"max\":\"100000\",\"rate\":\"119.24\",\"currency\":\"INR\"}', 404, 264, '2', '1', 'Spotify Monthly Listeners - [ No Drop ] [ 100-1K Per Day ★ 0-48 Hours ]', '✶ Start: 0 - 48 Hours\r\n✶ Speed: 100 -1K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: No\r\n✶ Refill: No \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Support avilable ', '120.4324', 1000, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Monthly Listeners - [ No Drop ] [ 100-1K Per Day \\u2605 0-48 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0 - 48 Hours\\r\\n\\u2736 Speed: 100 -1K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: No\\r\\n\\u2736 Refill: No \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Support avilable \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(265, 34, 434, '2', '{\"min\":\"500\",\"max\":\"50000\",\"rate\":\"121.62\",\"currency\":\"INR\"}', 404, 265, '2', '1', 'Spotify Monthly Listeners - [ 1-5K Per Day ★ 0-12 Hours]', '★ TIER 1 countries only! USA/CA/EU/AU/NZ/UK.\r\n\r\n✶ Start: 0 - 12 Hours\r\n✶ Speed: 1-5K+ Per Day\r\n✶ Quality: Real\r\n✶ Drop: No or Very Low Drop\r\n✶ Refill: No \r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ In this server we can\'t cancel after order so be careful', '122.8362', 500, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Monthly Listeners - [ 1-5K Per Day \\u2605 0-12 Hours]\"}', '{\"en\":\"\\u2605 TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK.\\r\\n\\r\\n\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 1-5K+ Per Day\\r\\n\\u2736 Quality: Real\\r\\n\\u2736 Drop: No or Very Low Drop\\r\\n\\u2736 Refill: No \\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(266, 34, 435, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"45.28\",\"currency\":\"INR\"}', 405, 266, '2', '1', 'Spotify Search Plays - [ Lifetime ] [ 500-1.5K Per Day ★ 0-12 Hours ]', '✶ Start: 0 - 12 Hours\r\n✶ Speed: 1K+ Per Day\r\n✶ Quality: Real HQ\r\n✶ Refill: Lifetime\r\n✶ Details: Royalties Eligible!\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Free plays from TIER 1 countries only! USA/CA/EU/AU/NZ/UK\r\n◉ Plays come from the search bar which increases the chances of your track getting found on Spotify!\r\n◉In this server we can\'t cancel after order so be careful', '45.7328', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Search Plays - [ Lifetime ] [ 500-1.5K Per Day \\u2605 0-12 Hours ]\"}', '{\"en\":\"\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 1K+ Per Day\\r\\n\\u2736 Quality: Real HQ\\r\\n\\u2736 Refill: Lifetime\\r\\n\\u2736 Details: Royalties Eligible!\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Free plays from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\\r\\n\\u25c9 Plays come from the search bar which increases the chances of your track getting found on Spotify!\\r\\n\\u25c9In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(267, 34, 436, '2', '{\"min\":\"1000\",\"max\":\"10000000\",\"rate\":\"49.42\",\"currency\":\"INR\"}', 405, 267, '2', '1', 'Spotify Premium Search Plays - [ Lifetime ] [ 500-1.5K Per Day ★ 0-12 Hours]', '✶ Start: 0 - 12 Hours\r\n✶ Speed: 1K+ Per Day\r\n✶ Quality: Real HQ\r\n✶ Refill: Lifetime\r\n✶ Details: Royalties Eligible!\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Free plays from TIER 1 countries only! USA/CA/EU/AU/NZ/UK\r\n◉ Plays come from the search bar which increases the chances of your track getting found on Spotify!\r\n◉In this server we can\'t cancel after order so be careful', '49.9142', 1000, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Premium Search Plays - [ Lifetime ] [ 500-1.5K Per Day \\u2605 0-12 Hours]\"}', '{\"en\":\"\\u2736 Start: 0 - 12 Hours\\r\\n\\u2736 Speed: 1K+ Per Day\\r\\n\\u2736 Quality: Real HQ\\r\\n\\u2736 Refill: Lifetime\\r\\n\\u2736 Details: Royalties Eligible!\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Free plays from TIER 1 countries only! USA\\/CA\\/EU\\/AU\\/NZ\\/UK\\r\\n\\u25c9 Plays come from the search bar which increases the chances of your track getting found on Spotify!\\r\\n\\u25c9In this server we can\'t cancel after order so be careful\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(268, 34, 437, '2', '{\"min\":\"20\",\"max\":\"100000000\",\"rate\":\"21.86\",\"currency\":\"INR\"}', 406, 268, '2', '1', 'Spotify Saves - [ For Track/Album/Episode ] [ 20-50K Per Day ★ Instant ]', '✶ Start: Instant\r\n✶ Speed: 20 - 50K+ Per Day\r\n✶ Drop: not expected\r\n✶ Refill: 30 days\r\n\r\n𝗡𝗢𝗧𝗘 :\r\n◉ Track/Album/Episode work for all\r\n◉ Real Look quality\r\n◉ Start Count is 0', '22.0786', 20, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Spotify Saves - [ For Track\\/Album\\/Episode ] [ 20-50K Per Day \\u2605 Instant ]\"}', '{\"en\":\"\\u2736 Start: Instant\\r\\n\\u2736 Speed: 20 - 50K+ Per Day\\r\\n\\u2736 Drop: not expected\\r\\n\\u2736 Refill: 30 days\\r\\n\\r\\n\\ud835\\udde1\\ud835\\udde2\\ud835\\udde7\\ud835\\uddd8 :\\r\\n\\u25c9 Track\\/Album\\/Episode work for all\\r\\n\\u25c9 Real Look quality\\r\\n\\u25c9 Start Count is 0\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(269, 34, 418, '2', '{\"min\":\"10\",\"max\":\"1000\",\"rate\":\"2510.64\",\"currency\":\"INR\"}', 407, 269, '2', '1', 'Kick Live Viewers - [ Stable viewers ★ HQ ★ Instant Start ] [ Upto 60 Min ]', '', '2535.7464', 10, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Kick Live Viewers - [ Stable viewers \\u2605 HQ \\u2605 Instant Start ] [ Upto 60 Min ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(270, 34, 419, '2', '{\"min\":\"10\",\"max\":\"1000\",\"rate\":\"4707.48\",\"currency\":\"INR\"}', 407, 270, '2', '1', 'Kick Live Viewers - [ Stable viewers ★ HQ ★ Instant Start ] [ Upto 120 Min ]', '', '4754.5548', 10, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Kick Live Viewers - [ Stable viewers \\u2605 HQ \\u2605 Instant Start ] [ Upto 120 Min ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(271, 34, 420, '2', '{\"min\":\"10\",\"max\":\"1000\",\"rate\":\"7126.42\",\"currency\":\"INR\"}', 407, 271, '2', '1', 'Kick Live Viewers - [ Stable viewers ★ HQ ★ Instant Start ] [ Upto 180 Min ]', '', '7197.6842', 10, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Kick Live Viewers - [ Stable viewers \\u2605 HQ \\u2605 Instant Start ] [ Upto 180 Min ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(272, 34, 266, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"500\",\"currency\":\"INR\"}', 408, 272, '2', '1', 'Test', '', '505', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Test\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1),
(273, 34, 396, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"1\",\"currency\":\"INR\"}', 408, 273, '2', '1', 'Test [do not use]', '', '1.01', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Test [do not use]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` enum('INR','USD') DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `service_api`
--

INSERT INTO `service_api` (`id`, `api_name`, `api_url`, `api_key`, `api_type`, `api_limit`, `currency`, `api_alert`, `status`) VALUES
(34, 'smmwings.com', 'https://smmwings.com/api/v2', 'Xyz', 1, 0, 'INR', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT 0,
  `site_update_rates_automatically` int(10) NOT NULL DEFAULT 0,
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `ns1` varchar(191) DEFAULT NULL,
  `ns2` varchar(191) DEFAULT NULL,
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `csymbol` text NOT NULL,
  `inr_symbol` text NOT NULL,
  `inr_value` double NOT NULL DEFAULT 0,
  `usd_symbol` text NOT NULL,
  `inr_convert` double NOT NULL DEFAULT 0,
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `orders` int(255) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text DEFAULT NULL,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `fake_order_min` int(11) DEFAULT NULL,
  `fake_order_max` int(11) DEFAULT NULL,
  `panel_orders` int(11) DEFAULT NULL,
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `ns1`, `ns2`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `csymbol`, `inr_symbol`, `inr_value`, `usd_symbol`, `inr_convert`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `orders`, `orders_id`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `downloaded_category_icons`) VALUES
(1, 'Smmwings.com | Cheap Price | #1 Provider in The World', 'Smmwings.com', 'Smmwings.com Best and Cheap SMM Panel for Instagram, Tiktok, Facebook, Youtube and Twitter. Buy IG Reels views and Followers, Buy Instagram Likes, Views and Comments, Buy TikTok Likes and Followers, Buy Facebook Likes and Comments, Buy Youtube Likes, Views and Subscribers.\r\n\r\n\r\n\r\n', 'Smmwings.com , smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller Panel,Cheapest SMM Panel Paytm,Cheapest SMM Panel Paytm,indian smm panel,IndianSMM Reseller Panel,Best SMM panel,Best SMM Panel India,Top SMM Panel', 'public/images/e00da03b685a0dd18fb6a08af0923de0.png', 'Smmwings.com', 'INR', 'INR', 1, 1, '2023-08-22 11:21:02', 'public/images/a17554a0d2b15a664c0e73900184544f19e70227.png', 'en', 'Simplify', 'Green', '1', '6LegoTMjAAAAADYk7cwkkNHxFWjagJy3tb9SEIgw', '6LegoTMjAAAAAO3G1lX0hbGgmrSYc7cVL3AdwN_I', '', '', '1', '2', '1', '2', 82.750063, 0, 'verify-no-reply@smmwings.com', 'Erryuioo', 'mail.smmwings.com', '465', 'ssl', '2', '2', '2', '2', '2', '2', 'bizimsms', '', '', '', '1', 'verify-no-reply@smmwings.com', '', '2', '1', '2', '2', 'asc', 500, 2500, 10000, 15000, 'ns1.smmwings.com', 'ns2.smmwings.com', 28, '', '', '1', 5, 10, '2', '2', 3, '2', '2', '$', '₹', 74.87, '$', 0.013, '0', '1', '1', '2', '2', '1', 0, '2', '2', 2, 0, 0, '0', '1', '{\"pages\":{\"clients\":{\"name\":\"Clients\",\"value\":\"clients\"},\"Admin\":{\"name\":\"Admin\",\"value\":\"admin_access\"},\"orders\":{\"name\":\"Orders\",\"value\":\"orders\"},\"subscriptions\":{\"name\":\"Subscriptions\",\"value\":\"subscriptions\"},\"dripfeed\":{\"name\":\"Dripfeed\",\"value\":\"dripfeed\"},\"services\":{\"name\":\"Services\",\"value\":\"services\"},\"payments\":{\"name\":\"Payments\",\"value\":\"payments\"},\"support\":{\"name\":\"Support\",\"value\":\"support\"},\"broadcast\":{\"name\":\"Broadcast\",\"value\":\"broadcast\"},\"tasks\":{\"name\":\"Tasks\",\"value\":\"tasks\"},\"statistics\":{\"name\":\"Statistics\",\"value\":\"statistics\"},\"referral\":{\"name\":\"Referral\",\"value\":\"referral\"},\"child\":{\"name\":\"Child\",\"value\":\"child\"},\"user_logs\":{\"name\":\"User Logs\",\"value\":\"user_logs\"},\"admin_logs\":{\"name\":\"Admin Logs\",\"value\":\"admin_logs\"},\"service_logs\":{\"name\":\"Service Logs\",\"value\":\"service_logs\"}},\"appearance\":{\"appearance\":{\"name\":\"Appearance\",\"value\":\"appearance\"},\"pages\":{\"name\":\"Pages\",\"value\":\"pages\"},\"annoucements\":{\"name\":\"Announcements\",\"value\":\"announcements\"},\"languages\":{\"name\":\"Languages\",\"value\":\"languages\"},\"themes\":{\"name\":\"Themes\",\"value\":\"themes\"},\"blogs\":{\"name\":\"Blogs\",\"value\":\"blogs\"},\"menu\":{\"name\":\"Menu\",\"value\":\"menus\"},\"files\":{\"name\":\"Files\",\"value\":\"files\"}},\"settings\":{\"general\":{\"name\":\"General\",\"value\":\"general\"},\"providers\":{\"name\":\"Providers\",\"value\":\"providers\"},\"methods\":{\"name\":\"Payment Methods\",\"value\":\"methods\"},\"modules\":{\"name\":\"Modules\",\"value\":\"modules\"},\"integrations\":{\"name\":\"Integrations\",\"value\":\"integrations\"},\"bonuses\":{\"name\":\"Bonuses\",\"value\":\"bonuses\"},\"coupons\":{\"name\":\"Coupons\",\"value\":\"coupons\"},\"notifications\":{\"name\":\"Notifications\",\"value\":\"notifications\"},\"currency\":{\"name\":\"Currency\",\"value\":\"currency\"},\"subjects\":{\"name\":\"Tickets Subjects\",\"value\":\"subjects\"}}}', 0, 1, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_api` int(255) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text DEFAULT NULL,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text DEFAULT NULL,
  `check_refill_status` int(10) DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1',
  `site_theme_alt` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`, `site_theme_alt`) VALUES
(1, 'Simplify', 'Simplify', '{\"stylesheets\":[\"public/pro/panel/1607327652/bootstrap.css\",\"public/pro/pro/panel/style.css\",\"https:\\/\\/stackpath.bootstrapcdn.com\\/font-awesome\\/4.7.0\\/css\\/font-awesome.min.css\"],\"scripts\":[\"public/pro/script.js\",\"public/ajax.js\"]}', '2023-08-21 01:34:19', '{% include \'header.twig\' %}\n\n	<br><br><br>\n\n	\n\n	<div class=\"container-fluid container-fluid-spacious\">\n\n		<div class=\"row\">\n\n			<div class=\"col-md-12\">\n\n			{% if contentText %}\n\n{{ contentText }}\n\n{% endif %}\n\n				{% if contentText2 %}\n\n{{ contentText2 }}\n\n{% endif %}\n\n				\n\n			</div>\n\n		</div>\n\n	</div>\n\n   \n\n      \n\n        \n\n   ', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 20, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`u_id`, `service_id`, `action`, `date`, `description`) VALUES
(3, 788, 'Activated', '2023-08-19 12:28:01', 'Refill Button has been activated'),
(4, 788, 'Activated', '2023-08-19 12:28:07', 'Cancel Button has been activated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methodsold`
--
ALTER TABLE `payment_methodsold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `refill_status`
--
ALTER TABLE `refill_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1147;

--
-- AUTO_INCREMENT for table `payment_methodsold`
--
ALTER TABLE `payment_methodsold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refill_status`
--
ALTER TABLE `refill_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53367;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
