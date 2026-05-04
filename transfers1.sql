-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2026 at 10:10 AM
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
-- Database: `transfers1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `addon_name`, `rate`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Baby Seat', 20.00, NULL, '2025-10-15 04:55:43', '2025-10-15 07:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_number` varchar(50) DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_category` varchar(100) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `flight_number` varchar(50) DEFAULT NULL,
  `return_datetime` datetime DEFAULT NULL,
  `number_of_passengers` int(11) DEFAULT 1,
  `number_of_luggage` int(11) DEFAULT 0,
  `pickup_location` text DEFAULT NULL,
  `dropoff_location` text DEFAULT NULL,
  `return_pickup_location` text DEFAULT NULL,
  `return_dropoff_location` text DEFAULT NULL,
  `travel_datetime` datetime DEFAULT NULL,
  `price_per_km` decimal(10,2) DEFAULT 0.00,
  `first_trip_distance` decimal(10,2) DEFAULT NULL,
  `first_trip_charge` decimal(10,2) DEFAULT NULL,
  `second_trip_distance` decimal(10,2) DEFAULT NULL,
  `second_trip_charge` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT 0.00,
  `addons` text DEFAULT NULL,
  `invoice_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_number`, `vehicle_id`, `vehicle_category`, `customer_name`, `email`, `phone`, `flight_number`, `return_datetime`, `number_of_passengers`, `number_of_luggage`, `pickup_location`, `dropoff_location`, `return_pickup_location`, `return_dropoff_location`, `travel_datetime`, `price_per_km`, `first_trip_distance`, `first_trip_charge`, `second_trip_distance`, `second_trip_charge`, `total_price`, `addons`, `invoice_file`, `created_at`, `updated_at`) VALUES
(14, 'SR/RENT-2025/11/0014', 4, 'People Carrier', 'Patrik Plamínek', 'patrikplam@centrum.cz', '+420 730848579', 'G9508', '0000-00-00 00:00:00', 3, 3, 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Šrí Lanka', 'OYO 241 Chami Villa Bentota, Pitaramba Road, Bentota, Šrí Lanka', '', '', '2025-12-20 15:30:00', 0.60, 66.00, 39.60, 0.00, 0.00, 39.60, '', 'https://srilankatransfer.lk//invoices/0014.pdf', '2025-11-18 07:57:41', '2025-11-18 07:57:42'),
(26, 'SR/RENT-2025/11/0026', 5, 'Private Van', 'RAJAT GUPTA', 'rajatguptarg@gmail.com', '+60 125332170', 'UL139', '0000-00-00 00:00:00', 5, 6, 'BIA Arrival Terminal, Katunayake, Sri Lanka', 'Cabin 7000 feet Nuwaraeliya, Lake Road, Nuwara Eliya, Sri Lanka', '', '', '2025-12-13 11:00:00', 0.00, 0.00, 0.00, 0.00, 0.00, 111.30, '', 'https://srilankatransfer.lk//invoices/0026.pdf', '2025-11-23 05:08:30', '2025-11-23 05:08:30'),
(29, 'SR/RENT-2025/12/0029', 4, 'Private MPV', 'muruga bharti', 'mbarathy@gmail.com', '+91 9840055955', 'UL 122', '0000-00-00 00:00:00', 4, 3, 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', '', '', '2025-12-31 11:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 13.44, '', 'https://srilankatransfer.lk//invoices/0029.pdf', '2025-12-22 06:48:34', '2025-12-22 06:48:58'),
(30, 'SR/RENT-2025/12/0030', 4, 'Private MPV', 'MURUGA BHARTI', 'mbarathy@gmail.com', '+91 9840055955', 'UL 122', '0000-00-00 00:00:00', 4, 3, 'Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', '', '', '2025-12-31 11:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 28.16, '', 'https://srilankatransfer.lk//invoices/0030.pdf', '2025-12-22 06:50:15', '2025-12-22 06:50:39'),
(31, 'SR/RENT-2025/12/0031', 5, 'Private Van', 'Shanil Toolsee', 'ronal@toolsee.co.za', '+973 36315057', 'QR661', '0000-00-00 00:00:00', 5, 6, 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', '', '', '2025-12-23 07:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 15.96, '', 'https://srilankatransfer.lk/invoices/0031.pdf', '2025-12-22 14:04:13', '2025-12-22 14:04:13'),
(32, 'SR/RENT-2025/12/0032', 5, 'Private Van', 'Shanil Toolsee', 'ronal@toolsee.co.za', '+973 36315057', 'QR661', '0000-00-00 00:00:00', 5, 6, 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', '', '', '2025-12-23 07:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 15.96, '', 'https://srilankatransfer.lk/invoices/0032.pdf', '2025-12-22 14:04:39', '2025-12-22 14:04:39'),
(33, 'SR/RENT-2025/12/0033', 5, 'Private Van', 'Shanil Toolsee', 'ronal@toolsee.co.za', '+973 36315057', 'QR661', '0000-00-00 00:00:00', 5, 6, 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', '', '', '2025-12-23 07:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 15.96, '', 'https://srilankatransfer.lk/invoices/0033.pdf', '2025-12-22 14:04:49', '2025-12-22 14:04:49'),
(34, 'SR/RENT-2025/12/0034', 5, 'Private Van', 'Shanil Toolsee', 'ronal@toolsee.co.za', '+973 36315057', 'QR661', '0000-00-00 00:00:00', 5, 6, 'Shangri-La Colombo, One Galle Face Drive, Colombo, Sri Lanka', 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', '', '', '2025-12-23 07:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 15.96, '', 'https://srilankatransfer.lk/invoices/0034.pdf', '2025-12-22 14:05:59', '2025-12-22 14:05:59'),
(35, 'SR/RENT-2026/02/0035', 5, 'Private Van', 'kishore viriyala', 'kishore.vr@gmail.com', '+91 8317018732', 'UL144', '0000-00-00 00:00:00', 5, 5, 'Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka', 'Grand Oriental Hotel, York Street, Colombo, Sri Lanka', '', '', '2026-03-10 23:45:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'https://srilankatransfer.lk//invoices/0035.pdf', '2026-02-11 16:12:11', '2026-02-11 16:12:38'),
(36, 'SR/RENT-2026/02/0036', 1, 'Private Express', 'Chaquita D. Lee ', 'quital_06@yahoo.com', '+1 6013165671', '503', '2026-03-15 07:00:00', 3, 3, 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', 'Hotel Riu Sri Lanka, Galle Road, Ahungalla, Sri Lanka', 'Hotel Riu Sri Lanka, Galle Road, Ahungalla, Sri Lanka', 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', '2026-03-11 13:15:00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 'https://srilankatransfer.lk//invoices/0036.pdf', '2026-02-12 05:47:43', '2026-02-12 05:48:34'),
(37, 'SR/RENT-2026/03/0037', 4, 'Private MPV', 'Aron Dyer', 'arondyer@gmail.com', '+61 427940812', 'NA', '0000-00-00 00:00:00', 4, 3, 'The Kingslayer Resort, palagathura lane, Negombo, Sri Lanka', 'River Retreat Sigiriya, Madu Maldeniya Opposite Barista, Near The Rest-house, Sigiriya, Sri Lanka', '', '', '2026-03-22 11:36:00', 0.00, 0.00, 0.00, 0.00, 0.00, 118.40, '', 'https://srilankatransfer.lk//invoices/0037.pdf', '2026-03-08 06:09:45', '2026-03-08 06:10:49'),
(38, 'SR/RENT-2026/03/0038', 1, 'Private Express', 'Kenny kim', 'wtgkorea@gmail.com', '+82 1044075737', 'UL471', '0000-00-00 00:00:00', 2, 2, 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, 스리랑카', 'Hilton Colombo, Sir Chittampalam A Gardiner Mawatha, 콜롬보 스리랑카', '', '', '2026-04-03 17:30:00', 0.00, 0.00, 0.00, 0.00, 0.00, 20.58, '', 'https://srilankatransfer.lk//invoices/0038.pdf', '2026-03-20 23:45:25', '2026-03-20 23:45:48'),
(39, 'SR/RENT-2026/03/0039', 4, 'Private MPV', 'Sanjeewa Muhandiram', 'madhuranga17@gmail.com', '+94 767560689', 'UL605', '0000-00-00 00:00:00', 3, 4, 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', 'Malabe, Sri Lanka', '', '', '2026-03-30 22:40:00', 0.00, 0.00, 0.00, 0.00, 0.00, 53.20, 'Baby Seat x1 ($20)', 'https://srilankatransfer.lk/invoices/0039.pdf', '2026-03-30 16:47:55', '2026-03-30 16:47:55'),
(40, 'SR/RENT-2026/04/0040', 1, 'Private Express', 'oliver rauch', 'mag.oliver.rauch@gmail.com', '+43 69910881424', 'AK47', '0000-00-00 00:00:00', 2, 2, 'Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka', 'Negombo, Sri Lanka', '', '', '2026-04-02 22:58:00', 0.00, 0.00, 0.00, 0.00, 0.00, 4.80, '', 'https://srilankatransfer.lk//invoices/0040.pdf', '2026-04-01 11:00:29', '2026-04-01 11:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE `country_codes` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`id`, `country_name`, `country_code`) VALUES
(1, 'USA', '+1'),
(2, 'Austria', '+43'),
(3, 'Australia', '+61'),
(4, 'Belgium', '+32'),
(5, 'Brazil', '+55'),
(6, 'Bulgaria', '+359'),
(7, 'Bahrain', '+973'),
(8, 'Burkina Faso', '+226'),
(9, 'Burundi', '+257'),
(10, 'Vatican City', '+379'),
(11, 'Cambodia', '+855'),
(12, 'Canada', '+1'),
(13, 'Cape Verde', '+238'),
(14, 'Chile', '+56'),
(15, 'China', '+86'),
(16, 'Colombia', '+57'),
(17, 'Costa Rica', '+506'),
(18, 'Côte d\'Ivoire', '+225'),
(19, 'Cyprus', '+357'),
(20, 'Czech Republic', '+420'),
(21, 'Denmark', '+45'),
(22, 'Djibouti', '+253'),
(23, 'Dominican Republic', '+1'),
(24, 'Ecuador', '+593'),
(25, 'Egypt', '+20'),
(26, 'El Salvador', '+503'),
(27, 'Equatorial Guinea', '+240'),
(28, 'Eritrea', '+291'),
(29, 'Estonia', '+372'),
(30, 'Finland', '+358'),
(31, 'France', '+33'),
(32, 'Germany', '+49'),
(33, 'Ghana', '+233'),
(34, 'Greece', '+30'),
(35, 'Guatemala', '+502'),
(36, 'Guinea', '+224'),
(37, 'Guinea-Bissau', '+245'),
(38, 'Guyana', '+592'),
(39, 'Honduras', '+504'),
(40, 'Hungary', '+36'),
(41, 'Iceland', '+354'),
(42, 'India', '+91'),
(43, 'Indonesia', '+62'),
(44, 'Iraq', '+964'),
(45, 'Ireland', '+353'),
(46, 'Israel', '+972'),
(47, 'Italy', '+39'),
(48, 'Japan', '+81'),
(49, 'Jordan', '+962'),
(50, 'Kenya', '+254'),
(51, 'Kiribati', '+686'),
(52, 'Kuwait', '+965'),
(53, 'Kyrgyzstan', '+996'),
(54, 'Latvia', '+371'),
(55, 'Lebanon', '+961'),
(56, 'Lesotho', '+266'),
(57, 'Liberia', '+231'),
(58, 'Libya', '+218'),
(59, 'Liechtenstein', '+423'),
(60, 'Lithuania', '+370'),
(61, 'Luxembourg', '+352'),
(62, 'Macao', '+853'),
(63, 'North Macedonia', '+389'),
(64, 'Madagascar', '+261'),
(65, 'Malawi', '+265'),
(66, 'Malaysia', '+60'),
(67, 'Maldives', '+960'),
(68, 'Mali', '+223'),
(69, 'Malta', '+356'),
(70, 'Marshall Islands', '+692'),
(71, 'Martinique', '+596'),
(72, 'Mauritania', '+222'),
(73, 'Mauritius', '+230'),
(74, 'Mayotte', '+262'),
(75, 'Mexico', '+52'),
(76, 'Micronesia', '+691'),
(77, 'Moldova', '+373'),
(78, 'Monaco', '+377'),
(79, 'Mongolia', '+976'),
(80, 'Montenegro', '+382'),
(81, 'Montserrat', '+1'),
(82, 'Morocco', '+212'),
(83, 'Mozambique', '+258'),
(84, 'Myanmar', '+95'),
(85, 'Namibia', '+264'),
(86, 'Nauru', '+674'),
(87, 'Nepal', '+977'),
(88, 'Netherlands', '+31'),
(89, 'New Zealand', '+64'),
(90, 'Nicaragua', '+505'),
(91, 'Niger', '+227'),
(92, 'Nigeria', '+234'),
(93, 'Niue', '+683'),
(94, 'Norfolk Island', '+672'),
(95, 'Norway', '+47'),
(96, 'Oman', '+968'),
(97, 'Pakistan', '+92'),
(98, 'Palau', '+680'),
(99, 'Palestine', '+970'),
(100, 'Panama', '+507'),
(101, 'Papua New Guinea', '+675'),
(102, 'Paraguay', '+595'),
(103, 'Peru', '+51'),
(104, 'Philippines', '+63'),
(105, 'Poland', '+48'),
(106, 'Portugal', '+351'),
(107, 'Puerto Rico', '+1787'),
(108, 'Qatar', '+974'),
(109, 'Réunion', '+262'),
(110, 'Romania', '+40'),
(111, 'Russia', '+7'),
(112, 'Rwanda', '+250'),
(113, 'San Marino', '+378'),
(114, 'São Tomé and Príncipe', '+239'),
(115, 'Saudi Arabia', '+966'),
(116, 'Senegal', '+221'),
(117, 'Serbia', '+381'),
(118, 'Seychelles', '+248'),
(119, 'Sierra Leone', '+232'),
(120, 'Singapore', '+65'),
(121, 'Slovakia', '+421'),
(122, 'Slovenia', '+386'),
(123, 'Solomon Islands', '+677'),
(124, 'Somalia', '+252'),
(125, 'South Africa', '+27'),
(126, 'South Korea', '+82'),
(127, 'South Sudan', '+211'),
(128, 'Spain', '+34'),
(129, 'Sri Lanka', '+94'),
(130, 'St. Kitts and Nevis', '+1'),
(131, 'St. Lucia', '+758'),
(132, 'St. Vincent and the Grenadines', '+1'),
(133, 'Suriname', '+597'),
(134, 'Swaziland', '+268'),
(135, 'Sweden', '+46'),
(136, 'Switzerland', '+41'),
(137, 'Syria', '+963'),
(138, 'Tajikistan', '+992'),
(139, 'Tanzania', '+255'),
(140, 'Thailand', '+66'),
(141, 'Timor-Leste', '+670'),
(142, 'Togo', '+228'),
(143, 'Tonga', '+676'),
(144, 'Trinidad and Tobago', '+1'),
(145, 'Tunisia', '+216'),
(146, 'Turkey', '+90'),
(147, 'Turkmenistan', '+993'),
(148, 'Turks and Caicos Islands', '+1'),
(149, 'Tuvalu', '+688'),
(150, 'Uganda', '+256'),
(151, 'Ukraine', '+380'),
(152, 'United Arab Emirates', '+971'),
(153, 'United Kingdom', '+44'),
(154, 'United States', '+1'),
(155, 'Uruguay', '+598'),
(156, 'Uzbekistan', '+998'),
(157, 'Vanuatu', '+678'),
(158, 'Venezuela', '+58'),
(159, 'Vietnam', '+84'),
(160, 'Wallis and Futuna', '+681'),
(161, 'Yemen', '+967'),
(162, 'Zambia', '+260'),
(163, 'Zimbabwe', '+263');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'MODX\\Revolution\\modUserGroup', 0, 9999, 3),
(2, 'mgr', 'MODX\\Revolution\\modUserGroup', 1, 0, 2),
(3, 'web', 'MODX\\Revolution\\modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'language', 'perm.language_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'mgr_log_view', 'perm.mgr_log_view_desc', 1),
(77, 1, 'mgr_log_erase', 'perm.mgr_log_erase_desc', 1),
(78, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(79, 1, 'menu_security', 'perm.menu_security_desc', 1),
(80, 1, 'menu_site', 'perm.menu_site_desc', 1),
(81, 1, 'menu_support', 'perm.menu_support_desc', 1),
(82, 1, 'menu_system', 'perm.menu_system_desc', 1),
(83, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(84, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(85, 1, 'menu_user', 'perm.menu_user_desc', 1),
(86, 1, 'menus', 'perm.menus_desc', 1),
(87, 1, 'messages', 'perm.messages_desc', 1),
(88, 1, 'namespaces', 'perm.namespaces_desc', 1),
(89, 1, 'new_category', 'perm.new_category_desc', 1),
(90, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(91, 1, 'new_context', 'perm.new_context_desc', 1),
(92, 1, 'new_document', 'perm.new_document_desc', 1),
(93, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(94, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(95, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(96, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(97, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(98, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(99, 1, 'new_role', 'perm.new_role_desc', 1),
(100, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(101, 1, 'new_template', 'perm.new_template_desc', 1),
(102, 1, 'new_tv', 'perm.new_tv_desc', 1),
(103, 1, 'new_user', 'perm.new_user_desc', 1),
(104, 1, 'packages', 'perm.packages_desc', 1),
(105, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(106, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(107, 1, 'policy_new', 'perm.policy_new_desc', 1),
(108, 1, 'policy_save', 'perm.policy_save_desc', 1),
(109, 1, 'policy_view', 'perm.policy_view_desc', 1),
(110, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(111, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(112, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(113, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(114, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(115, 1, 'property_sets', 'perm.property_sets_desc', 1),
(116, 1, 'providers', 'perm.providers_desc', 1),
(117, 1, 'publish_document', 'perm.publish_document_desc', 1),
(118, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(119, 1, 'remove', 'perm.remove_desc', 1),
(120, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(121, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(122, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(123, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(124, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(125, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(126, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(127, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(128, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(129, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(130, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(131, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(132, 1, 'save', 'perm.save_desc', 1),
(133, 1, 'save_category', 'perm.save_category_desc', 1),
(134, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(135, 1, 'save_context', 'perm.save_context_desc', 1),
(136, 1, 'save_document', 'perm.save_document_desc', 1),
(137, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(138, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(139, 1, 'save_role', 'perm.save_role_desc', 1),
(140, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(141, 1, 'save_template', 'perm.save_template_desc', 1),
(142, 1, 'save_tv', 'perm.save_tv_desc', 1),
(143, 1, 'save_user', 'perm.save_user_desc', 1),
(144, 1, 'search', 'perm.search_desc', 1),
(145, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(146, 1, 'settings', 'perm.settings_desc', 1),
(147, 1, 'events', 'perm.events_desc', 1),
(148, 1, 'source_save', 'perm.source_save_desc', 1),
(149, 1, 'source_delete', 'perm.source_delete_desc', 1),
(150, 1, 'source_edit', 'perm.source_edit_desc', 1),
(151, 1, 'source_view', 'perm.source_view_desc', 1),
(152, 1, 'sources', 'perm.sources_desc', 1),
(153, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(154, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(155, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(156, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(157, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(158, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(159, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(160, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(161, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(162, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(163, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(164, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(165, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(166, 1, 'view', 'perm.view_desc', 1),
(167, 1, 'view_category', 'perm.view_category_desc', 1),
(168, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(169, 1, 'view_context', 'perm.view_context_desc', 1),
(170, 1, 'view_document', 'perm.view_document_desc', 1),
(171, 1, 'view_element', 'perm.view_element_desc', 1),
(172, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(173, 1, 'view_offline', 'perm.view_offline_desc', 1),
(174, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(175, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(176, 1, 'view_role', 'perm.view_role_desc', 1),
(177, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(178, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(179, 1, 'view_template', 'perm.view_template_desc', 1),
(180, 1, 'view_tv', 'perm.view_tv_desc', 1),
(181, 1, 'view_user', 'perm.view_user_desc', 1),
(182, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(183, 1, 'workspaces', 'perm.workspaces_desc', 1),
(184, 2, 'add_children', 'perm.add_children_desc', 1),
(185, 2, 'copy', 'perm.copy_desc', 1),
(186, 2, 'create', 'perm.create_desc', 1),
(187, 2, 'delete', 'perm.delete_desc', 1),
(188, 2, 'list', 'perm.list_desc', 1),
(189, 2, 'load', 'perm.load_desc', 1),
(190, 2, 'move', 'perm.move_desc', 1),
(191, 2, 'publish', 'perm.publish_desc', 1),
(192, 2, 'remove', 'perm.remove_desc', 1),
(193, 2, 'save', 'perm.save_desc', 1),
(194, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(195, 2, 'undelete', 'perm.undelete_desc', 1),
(196, 2, 'unpublish', 'perm.unpublish_desc', 1),
(197, 2, 'view', 'perm.view_desc', 1),
(198, 3, 'load', 'perm.load_desc', 1),
(199, 3, 'list', 'perm.list_desc', 1),
(200, 3, 'view', 'perm.view_desc', 1),
(201, 3, 'save', 'perm.save_desc', 1),
(202, 3, 'remove', 'perm.remove_desc', 1),
(203, 4, 'add_children', 'perm.add_children_desc', 1),
(204, 4, 'create', 'perm.create_desc', 1),
(205, 4, 'copy', 'perm.copy_desc', 1),
(206, 4, 'delete', 'perm.delete_desc', 1),
(207, 4, 'list', 'perm.list_desc', 1),
(208, 4, 'load', 'perm.load_desc', 1),
(209, 4, 'remove', 'perm.remove_desc', 1),
(210, 4, 'save', 'perm.save_desc', 1),
(211, 4, 'view', 'perm.view_desc', 1),
(212, 5, 'create', 'perm.create_desc', 1),
(213, 5, 'copy', 'perm.copy_desc', 1),
(214, 5, 'list', 'perm.list_desc', 1),
(215, 5, 'load', 'perm.load_desc', 1),
(216, 5, 'remove', 'perm.remove_desc', 1),
(217, 5, 'save', 'perm.save_desc', 1),
(218, 5, 'view', 'perm.view_desc', 1),
(219, 6, 'load', 'perm.load_desc', 1),
(220, 6, 'list', 'perm.list_desc', 1),
(221, 6, 'view', 'perm.view_desc', 1),
(222, 6, 'save', 'perm.save_desc', 1),
(223, 6, 'remove', 'perm.remove_desc', 1),
(224, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(225, 6, 'copy', 'perm.copy_desc', 1),
(226, 7, 'list', 'perm.list_desc', 1),
(227, 7, 'load', 'perm.load_desc', 1),
(228, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'policy_resource_desc', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'policy_administrator_desc', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'policy_load_only_desc', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'policy_load_list_and_view_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'policy_object_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'policy_element_desc', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'policy_content_editor_desc', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true}', 'permissions'),
(8, 'Media Source Admin', 'policy_media_source_admin_desc', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'policy_media_source_user_desc', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'policy_developer_desc', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'policy_context_desc', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'policy_hidden_namespace_desc', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'policy_template_administrator_desc', 'permissions'),
(2, 3, 'ResourceTemplate', 'policy_template_resource_desc', 'permissions'),
(3, 2, 'ObjectTemplate', 'policy_template_object_desc', 'permissions'),
(4, 4, 'ElementTemplate', 'policy_template_element_desc', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'policy_template_mediasource_desc', 'permissions'),
(6, 7, 'ContextTemplate', 'policy_template_context_desc', 'permissions'),
(7, 6, 'NamespaceTemplate', 'policy_template_namespace_desc', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'policy_template_group_administrator_desc'),
(2, 'Object', 'policy_template_group_object_desc'),
(3, 'Resource', 'policy_template_group_resource_desc'),
(4, 'Element', 'policy_template_group_element_desc'),
(5, 'MediaSource', 'policy_template_group_mediasource_desc'),
(6, 'Namespace', 'policy_template_group_namespace_desc'),
(7, 'Context', 'policy_template_group_context_desc');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `for_parent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(9, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(11, 'resource/update', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(12, 'resource/update', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(13, 'resource/update', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(14, 'resource/update', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(15, 'resource/update', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(18, 'resource/update', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(19, 'resource/update', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(20, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(21, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(22, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(23, 'resource/update', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(24, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(25, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(26, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(27, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(28, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(29, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(30, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(31, 'resource/update', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(32, 'resource/update', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(33, 'resource/update', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(34, 'resource/update', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(35, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(36, 'resource/update', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(37, 'resource/update', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(38, 'resource/update', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(39, 'resource/update', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(42, 'resource/update', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(43, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(44, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13),
(45, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(46, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(47, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(54, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(64, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(68, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(69, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(70, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(71, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(72, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(73, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(76, 'resource/create', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(78, 'resource/create', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(79, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(80, 'resource/create', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(81, 'resource/create', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(82, 'resource/create', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(83, 'resource/create', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(84, 'resource/create', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(85, 'resource/create', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(86, 'resource/create', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(87, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(88, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(11) NOT NULL DEFAULT 0,
  `id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `depth` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `icon`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', 'icon-xml', NULL, 0),
(3, 'Text', 'Plain text content', 'text/plain', '.txt', 'icon-txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', 'icon-css', NULL, 0),
(5, 'JavaScript', 'JavaScript content', 'text/javascript', '.js', 'icon-js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', 'icon-rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', 'icon-json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', 'icon-pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'MODX\\Revolution\\modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `customizable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`, `customizable`) VALUES
(1, 'Default', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  `permission` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `properties`, `namespace`, `lexicon`, `size`, `permission`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', NULL, 'core', 'core:dashboards', 'two-thirds', 'view_document'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', NULL, 'core', 'core:dashboards', 'full', ''),
(6, 'w_buttons', 'w_buttons_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.buttons.php', '{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}', 'core', 'core:dashboards', 'full', ''),
(7, 'w_updates', 'w_updates_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.updates.php', NULL, 'core', 'core:dashboards', 'one-third', 'workspaces');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `widget` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` varchar(255) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`user`, `dashboard`, `widget`, `rank`, `size`) VALUES
(0, 1, 1, 2, 'one-third'),
(0, 1, 2, 3, 'one-third'),
(0, 1, 3, 5, 'one-third'),
(0, 1, 4, 6, 'two-thirds'),
(0, 1, 5, 1, 'full'),
(0, 1, 6, 0, 'full'),
(0, 1, 7, 4, 'one-third'),
(1, 1, 1, 2, 'one-third'),
(1, 1, 2, 3, 'one-third'),
(1, 1, 3, 5, 'one-third'),
(1, 1, 4, 6, 'two-thirds'),
(1, 1, 5, 1, 'full'),
(1, 1, 6, 0, 'full'),
(1, 1, 7, 4, 'one-third'),
(2, 1, 1, 2, 'one-third'),
(2, 1, 2, 3, 'one-third'),
(2, 1, 3, 5, 'one-third'),
(2, 1, 4, 6, 'two-thirds'),
(2, 1, 5, 1, 'full'),
(2, 1, 6, 0, 'full'),
(2, 1, 7, 4, 'one-third');

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_call`
--

CREATE TABLE `modx_deprecated_call` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `call_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `caller` varchar(191) NOT NULL DEFAULT '',
  `caller_file` varchar(191) NOT NULL DEFAULT '',
  `caller_line` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_deprecated_call`
--

INSERT INTO `modx_deprecated_call` (`id`, `method`, `call_count`, `caller`, `caller_file`, `caller_line`) VALUES
(1, 1, 4, 'MODX\\Revolution\\Registry\\modRegistry::_initRegister', 'C:\\xampp\\htdocs\\sr-transfers\\core\\src\\Revolution\\Registry\\modRegistry.php', 173);

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_method`
--

CREATE TABLE `modx_deprecated_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `definition` varchar(191) NOT NULL DEFAULT '',
  `since` varchar(191) NOT NULL DEFAULT '',
  `recommendation` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_deprecated_method`
--

INSERT INTO `modx_deprecated_method` (`id`, `definition`, `since`, `recommendation`) VALUES
(1, 'registry.modDbRegister', '3.0', 'Replace references to class registry.modDbRegister with MODX\\Revolution\\Registry\\modDbRegister to take advantage of PSR-4 autoloading.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(11) NOT NULL DEFAULT 0,
  `document` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occurred` datetime NOT NULL DEFAULT current_timestamp(),
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2025-11-12 06:49:57', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(2, 1, '2025-11-12 06:52:38', 'chunk_create', 'MODX\\Revolution\\modChunk', '1'),
(3, 1, '2025-11-12 06:52:58', 'chunk_create', 'MODX\\Revolution\\modChunk', '2'),
(4, 1, '2025-11-12 06:58:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(5, 1, '2025-11-12 06:58:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(6, 1, '2025-11-12 06:58:27', 'chunk_create', 'MODX\\Revolution\\modChunk', '3'),
(7, 1, '2025-11-12 06:58:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(8, 1, '2025-11-12 06:58:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(9, 1, '2025-11-12 06:59:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(10, 1, '2025-11-12 07:00:01', 'template_create', 'MODX\\Revolution\\modTemplate', '2'),
(11, 1, '2025-11-12 07:00:17', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(12, 1, '2025-11-12 07:00:52', 'directory_create', '', 'Filesystem: assets\\css'),
(13, 1, '2025-11-12 07:01:09', 'file_create', '', 'Filesystem: assets\\css\\main.css'),
(14, 1, '2025-11-12 07:01:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(15, 1, '2025-11-12 07:01:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(16, 1, '2025-11-12 07:03:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(17, 1, '2025-11-12 07:03:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(18, 1, '2025-11-12 07:03:17', 'directory_create', '', 'Filesystem: assets\\js'),
(19, 1, '2025-11-12 07:03:30', 'file_create', '', 'Filesystem: assets\\js\\main.js'),
(20, 1, '2025-11-12 07:10:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(21, 1, '2025-11-12 07:10:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(22, 1, '2025-11-12 07:11:33', 'resource_create', 'MODX\\Revolution\\modDocument', '2'),
(23, 1, '2025-11-12 07:12:08', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(24, 1, '2025-11-12 07:12:41', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(25, 1, '2025-11-12 07:12:46', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(26, 1, '2025-11-12 07:13:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(27, 1, '2025-11-12 07:13:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(28, 1, '2025-11-12 07:15:17', 'resource_create', 'MODX\\Revolution\\modDocument', '3'),
(29, 1, '2025-11-12 07:15:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(30, 1, '2025-11-12 07:16:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(31, 1, '2025-11-12 07:16:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(32, 1, '2025-11-12 07:18:37', 'resource_create', 'MODX\\Revolution\\modDocument', '4'),
(33, 1, '2025-11-12 07:19:01', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(34, 1, '2025-11-12 07:19:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(35, 1, '2025-11-12 07:19:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(36, 1, '2025-11-12 07:25:07', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(37, 1, '2025-11-12 07:40:28', 'resource_create', 'MODX\\Revolution\\modDocument', '5'),
(38, 1, '2025-11-12 07:40:50', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(39, 1, '2025-11-12 07:40:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(40, 1, '2025-11-12 07:41:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(41, 1, '2025-11-12 07:41:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(42, 1, '2025-11-12 07:46:22', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(43, 1, '2025-11-12 07:46:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(44, 1, '2025-11-12 07:46:36', 'resource_create', 'MODX\\Revolution\\modDocument', '6'),
(45, 1, '2025-11-12 07:50:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(46, 1, '2025-11-12 07:50:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(47, 1, '2025-11-12 07:51:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(48, 1, '2025-11-12 07:51:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(49, 1, '2025-11-12 07:51:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(50, 1, '2025-11-12 07:51:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(51, 1, '2025-11-12 07:51:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(52, 1, '2025-11-12 07:52:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(53, 1, '2025-11-12 07:52:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(54, 1, '2025-11-12 07:53:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(55, 1, '2025-11-12 07:53:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(56, 1, '2025-11-12 07:54:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(57, 1, '2025-11-12 07:56:34', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(58, 1, '2025-11-12 07:57:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(59, 1, '2025-11-12 07:57:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(60, 1, '2025-11-12 07:59:38', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(61, 1, '2025-11-12 08:01:51', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(62, 1, '2025-11-12 08:04:28', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(63, 1, '2025-11-12 08:05:19', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(64, 1, '2025-11-12 08:09:31', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(65, 1, '2025-11-12 08:09:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(66, 1, '2025-11-12 08:12:24', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(67, 1, '2025-11-12 08:13:29', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(68, 1, '2025-11-12 08:17:21', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(69, 1, '2025-11-12 08:25:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(70, 1, '2025-11-12 08:25:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(71, 1, '2025-11-12 08:25:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(72, 1, '2025-11-12 08:25:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(73, 1, '2025-11-12 08:26:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(74, 1, '2025-11-12 08:26:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(75, 1, '2025-11-12 08:27:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(76, 1, '2025-11-12 08:27:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(77, 1, '2025-11-12 08:30:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(78, 1, '2025-11-12 08:30:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(79, 1, '2025-11-12 08:42:09', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(80, 1, '2025-11-12 08:44:27', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(81, 1, '2025-11-12 08:46:42', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(82, 1, '2025-11-12 08:50:41', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(83, 1, '2025-11-12 08:51:10', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(84, 1, '2025-11-12 08:53:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(85, 1, '2025-11-12 08:58:01', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(86, 1, '2025-11-12 08:59:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(87, 1, '2025-11-12 09:02:13', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(88, 1, '2025-11-12 10:18:48', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(89, 1, '2025-11-12 10:19:22', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(90, 1, '2025-11-12 10:21:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(91, 1, '2025-11-12 10:33:15', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(92, 1, '2025-11-12 10:35:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(93, 1, '2025-11-12 10:37:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(94, 1, '2025-11-12 10:37:52', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(95, 1, '2025-11-12 10:40:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(96, 1, '2025-11-12 10:40:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(97, 1, '2025-11-12 10:51:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(98, 1, '2025-11-12 10:55:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(99, 1, '2025-11-12 10:58:09', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(100, 1, '2025-11-12 11:08:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(101, 1, '2025-11-12 11:09:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(102, 1, '2025-11-12 11:12:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(103, 1, '2025-11-12 11:12:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(104, 1, '2025-11-12 11:17:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(105, 1, '2025-11-12 11:20:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(106, 1, '2025-11-12 11:21:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(107, 1, '2025-11-12 11:22:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(108, 1, '2025-11-12 11:24:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(109, 1, '2025-11-12 11:26:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(110, 1, '2025-11-12 11:27:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(111, 1, '2025-11-12 11:28:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(112, 1, '2025-11-12 11:29:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(113, 1, '2025-11-12 11:30:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(114, 1, '2025-11-12 11:49:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(115, 1, '2025-11-12 11:51:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(116, 1, '2025-11-12 11:56:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(117, 1, '2025-11-12 11:56:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(118, 1, '2025-11-12 11:56:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(119, 1, '2025-11-12 11:56:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(120, 1, '2025-11-12 11:57:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(121, 1, '2025-11-12 11:57:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(122, 1, '2025-11-12 11:59:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(123, 1, '2025-11-12 11:59:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(124, 1, '2025-11-12 12:00:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(125, 1, '2025-11-12 12:00:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(126, 1, '2025-11-12 12:01:25', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(127, 1, '2025-11-12 12:01:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(128, 1, '2025-11-12 12:02:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(129, 1, '2025-11-12 12:02:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(130, 1, '2025-11-12 12:02:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(131, 1, '2025-11-12 12:02:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(132, 1, '2025-11-12 12:07:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(133, 1, '2025-11-12 12:07:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(134, 1, '2025-11-12 12:10:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(135, 1, '2025-11-12 12:10:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(136, 1, '2025-11-12 12:11:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(137, 1, '2025-11-12 12:11:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(138, 1, '2025-11-12 12:20:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(139, 1, '2025-11-12 12:20:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(140, 1, '2025-11-12 12:25:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(141, 1, '2025-11-12 12:25:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(142, 1, '2025-11-12 12:25:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(143, 1, '2025-11-12 12:25:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(144, 1, '2025-11-12 12:29:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(145, 1, '2025-11-12 12:29:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(146, 1, '2025-11-12 12:31:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(147, 1, '2025-11-12 12:31:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(148, 1, '2025-11-12 12:33:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(149, 1, '2025-11-12 12:33:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(150, 1, '2025-11-12 12:38:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(151, 1, '2025-11-12 12:38:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(152, 1, '2025-11-12 12:40:51', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(153, 1, '2025-11-12 12:40:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(154, 1, '2025-11-12 12:43:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(155, 1, '2025-11-12 12:43:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(156, 1, '2025-11-12 12:43:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(157, 1, '2025-11-12 12:43:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(158, 1, '2025-11-12 12:46:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(159, 1, '2025-11-12 12:46:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(160, 1, '2025-11-12 12:46:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(161, 1, '2025-11-12 12:46:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(162, 1, '2025-11-12 12:48:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(163, 1, '2025-11-12 12:48:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(164, 1, '2025-11-12 12:48:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(165, 1, '2025-11-12 12:48:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(166, 1, '2025-11-12 12:50:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(167, 1, '2025-11-12 12:50:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(168, 1, '2025-11-12 12:52:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(169, 1, '2025-11-12 12:52:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(170, 1, '2025-11-12 13:01:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(171, 1, '2025-11-12 13:01:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(172, 1, '2025-11-12 13:01:47', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(173, 1, '2025-11-12 13:01:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(174, 1, '2025-11-12 13:07:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(175, 1, '2025-11-12 13:07:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(176, 1, '2025-11-12 13:08:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(177, 1, '2025-11-12 13:08:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(178, 1, '2025-11-12 13:09:36', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(179, 1, '2025-11-12 13:09:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(180, 1, '2025-11-12 13:10:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(181, 1, '2025-11-12 13:10:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(182, 1, '2025-11-12 13:11:10', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(183, 1, '2025-11-12 13:13:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(184, 1, '2025-11-12 13:14:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(185, 1, '2025-11-12 13:15:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(186, 1, '2025-11-12 13:16:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(187, 1, '2025-11-12 13:17:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(188, 1, '2025-11-12 13:18:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(189, 1, '2025-11-12 13:18:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(190, 1, '2025-11-12 13:28:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(191, 1, '2025-11-13 04:38:02', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(192, 1, '2025-11-13 04:41:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(193, 1, '2025-11-13 04:41:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(194, 1, '2025-11-13 04:43:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(195, 1, '2025-11-13 04:43:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(196, 1, '2025-11-13 04:47:26', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(197, 1, '2025-11-13 04:47:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(198, 1, '2025-11-13 04:51:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(199, 1, '2025-11-13 04:51:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(200, 1, '2025-11-13 04:53:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(201, 1, '2025-11-13 04:53:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(202, 1, '2025-11-13 04:53:21', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(203, 1, '2025-11-13 04:53:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(204, 1, '2025-11-13 04:54:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(205, 1, '2025-11-13 04:54:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(206, 1, '2025-11-13 04:56:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(207, 1, '2025-11-13 04:56:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(208, 1, '2025-11-13 04:57:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(209, 1, '2025-11-13 04:57:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(210, 1, '2025-11-13 04:57:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(211, 1, '2025-11-13 04:57:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(212, 1, '2025-11-13 04:58:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(213, 1, '2025-11-13 04:58:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(214, 1, '2025-11-13 04:59:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(215, 1, '2025-11-13 04:59:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(216, 1, '2025-11-13 05:00:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(217, 1, '2025-11-13 05:00:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(218, 1, '2025-11-13 05:05:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(219, 1, '2025-11-13 05:05:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(220, 1, '2025-11-13 05:06:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(221, 1, '2025-11-13 05:06:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(222, 1, '2025-11-13 05:30:52', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(223, 1, '2025-11-13 05:33:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(224, 1, '2025-11-13 05:34:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(225, 1, '2025-11-13 05:36:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(226, 1, '2025-11-13 05:39:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(227, 1, '2025-11-13 05:40:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(228, 1, '2025-11-13 05:41:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(229, 1, '2025-11-13 05:44:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(230, 1, '2025-11-13 05:47:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(231, 1, '2025-11-13 05:50:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(232, 1, '2025-11-13 05:52:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(233, 1, '2025-11-13 05:54:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(234, 1, '2025-11-13 05:58:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(235, 1, '2025-11-13 06:22:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(236, 1, '2025-11-13 06:22:31', 'snippet_create', 'MODX\\Revolution\\modSnippet', '1'),
(237, 1, '2025-11-13 06:36:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(238, 1, '2025-11-13 06:36:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(239, 1, '2025-11-13 06:37:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(240, 1, '2025-11-13 06:39:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(241, 1, '2025-11-13 06:42:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(242, 1, '2025-11-13 06:44:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(243, 1, '2025-11-13 06:49:57', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(244, 1, '2025-11-13 06:51:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(245, 1, '2025-11-13 06:59:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(246, 1, '2025-11-13 06:59:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(247, 1, '2025-11-13 07:01:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(248, 1, '2025-11-13 07:01:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(249, 1, '2025-11-13 07:03:20', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(250, 1, '2025-11-13 07:03:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(251, 1, '2025-11-13 07:03:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(252, 1, '2025-11-13 07:03:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(253, 1, '2025-11-13 07:05:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(254, 1, '2025-11-13 07:05:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(255, 1, '2025-11-13 07:06:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(256, 1, '2025-11-13 07:06:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(257, 1, '2025-11-13 07:17:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(258, 1, '2025-11-13 07:17:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(259, 1, '2025-11-13 07:19:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(260, 1, '2025-11-13 07:19:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(261, 1, '2025-11-13 07:19:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(262, 1, '2025-11-13 07:19:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(263, 1, '2025-11-13 07:20:31', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(264, 1, '2025-11-13 07:21:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(265, 1, '2025-11-13 07:21:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(266, 1, '2025-11-13 07:22:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(267, 1, '2025-11-13 07:22:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(268, 1, '2025-11-13 07:27:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(269, 1, '2025-11-13 07:33:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(270, 1, '2025-11-13 07:35:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(271, 1, '2025-11-13 07:36:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(272, 1, '2025-11-13 07:38:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(273, 1, '2025-11-13 07:39:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(274, 1, '2025-11-13 07:43:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(275, 1, '2025-11-13 07:44:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(276, 1, '2025-11-13 07:45:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(277, 1, '2025-11-13 07:46:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(278, 1, '2025-11-13 07:47:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(279, 1, '2025-11-13 07:51:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(280, 1, '2025-11-13 07:51:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(281, 1, '2025-11-13 07:54:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(282, 1, '2025-11-13 07:56:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(283, 1, '2025-11-13 07:57:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(284, 1, '2025-11-13 08:07:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(285, 1, '2025-11-13 08:16:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(286, 1, '2025-11-13 08:17:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(287, 1, '2025-11-13 08:20:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(288, 1, '2025-11-13 08:25:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(289, 1, '2025-11-13 08:30:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(290, 1, '2025-11-13 08:31:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(291, 1, '2025-11-13 08:34:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(292, 1, '2025-11-13 09:25:53', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(293, 1, '2025-11-13 09:26:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(294, 1, '2025-11-13 09:32:38', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(295, 1, '2025-11-13 09:35:15', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(296, 1, '2025-11-13 09:38:31', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(297, 1, '2025-11-13 09:39:48', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(298, 1, '2025-11-13 09:44:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(299, 1, '2025-11-13 09:45:35', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(300, 1, '2025-11-13 09:47:02', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(301, 1, '2025-11-13 09:48:05', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(302, 1, '2025-11-13 09:52:53', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(303, 1, '2025-11-13 09:54:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(304, 1, '2025-11-13 09:57:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(305, 1, '2025-11-13 10:01:34', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(306, 1, '2025-11-13 10:40:41', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(307, 1, '2025-11-13 10:41:36', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(308, 1, '2025-11-13 10:42:21', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(309, 1, '2025-11-13 10:46:25', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(310, 1, '2025-11-13 11:21:33', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(311, 1, '2025-11-13 11:23:36', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(312, 1, '2025-11-13 11:28:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(313, 1, '2025-11-13 11:29:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(314, 1, '2025-11-13 11:30:13', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(315, 1, '2025-11-13 11:33:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(316, 1, '2025-11-13 11:34:28', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(317, 1, '2025-11-13 11:41:37', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(318, 1, '2025-11-13 11:41:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(319, 1, '2025-11-13 11:42:28', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(320, 1, '2025-11-13 11:43:40', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(321, 1, '2025-11-13 11:57:07', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(322, 1, '2025-11-13 12:07:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(323, 1, '2025-11-13 12:08:21', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(324, 1, '2025-11-13 12:08:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(325, 1, '2025-11-13 12:28:49', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(326, 1, '2025-11-13 12:30:03', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(327, 1, '2025-11-13 12:35:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(328, 1, '2025-11-13 12:35:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(329, 1, '2025-11-13 12:54:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(330, 1, '2025-11-13 13:01:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(331, 1, '2025-11-13 13:02:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(332, 1, '2025-11-13 13:31:07', 'user_create', 'MODX\\Revolution\\modUser', '2'),
(333, 2, '2025-11-13 13:33:45', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(334, 1, '2025-11-14 04:42:41', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(335, 1, '2025-11-14 04:47:18', 'resource_create', 'MODX\\Revolution\\modDocument', '7'),
(336, 1, '2025-11-14 04:47:22', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(337, 1, '2025-11-14 04:54:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(338, 1, '2025-11-14 04:56:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(339, 1, '2025-11-14 04:57:45', 'snippet_create', 'MODX\\Revolution\\modSnippet', '2'),
(340, 1, '2025-11-14 04:58:25', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(341, 1, '2025-11-14 05:09:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(342, 1, '2025-11-14 05:09:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(343, 1, '2025-11-14 05:12:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(344, 1, '2025-11-14 05:12:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(345, 1, '2025-11-14 05:18:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(346, 1, '2025-11-14 05:18:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(347, 1, '2025-11-14 05:24:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(348, 1, '2025-11-14 05:24:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(349, 1, '2025-11-14 05:26:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(350, 1, '2025-11-14 05:26:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(351, 1, '2025-11-14 05:27:39', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(352, 1, '2025-11-14 05:30:11', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(353, 1, '2025-11-14 05:30:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(354, 1, '2025-11-14 05:30:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(355, 1, '2025-11-14 05:31:46', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(356, 1, '2025-11-14 05:33:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(357, 1, '2025-11-14 05:33:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(358, 1, '2025-11-14 05:33:49', 'snippet_create', 'MODX\\Revolution\\modSnippet', '3'),
(359, 1, '2025-11-14 05:35:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(360, 1, '2025-11-14 05:35:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(361, 1, '2025-11-14 05:35:20', 'snippet_create', 'MODX\\Revolution\\modSnippet', '4'),
(362, 1, '2025-11-14 05:35:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(363, 1, '2025-11-14 05:35:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(364, 1, '2025-11-14 05:38:58', 'snippet_create', 'MODX\\Revolution\\modSnippet', '5'),
(365, 1, '2025-11-14 05:46:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(366, 1, '2025-11-14 05:46:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(367, 1, '2025-11-14 05:46:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(368, 1, '2025-11-14 05:46:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(369, 1, '2025-11-14 05:52:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(370, 1, '2025-11-14 05:52:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(371, 2, '2025-11-14 06:07:06', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(372, 1, '2025-11-14 06:09:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(373, 1, '2025-11-14 06:09:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(374, 1, '2025-11-14 06:40:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(375, 1, '2025-11-14 06:40:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(376, 1, '2025-11-14 06:40:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(377, 1, '2025-11-14 06:40:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(378, 1, '2025-11-14 06:41:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(379, 1, '2025-11-14 06:41:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(380, 1, '2025-11-14 06:51:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(381, 1, '2025-11-14 06:51:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(382, 1, '2025-11-14 06:59:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(383, 1, '2025-11-14 06:59:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(384, 1, '2025-11-14 07:01:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(385, 1, '2025-11-14 07:01:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(386, 1, '2025-11-14 07:03:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(387, 1, '2025-11-14 07:03:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(388, 1, '2025-11-14 07:08:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(389, 1, '2025-11-14 07:08:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(390, 1, '2025-11-14 07:10:20', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(391, 1, '2025-11-14 07:10:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(392, 1, '2025-11-14 07:17:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(393, 1, '2025-11-14 07:17:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(394, 1, '2025-11-14 07:19:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(395, 1, '2025-11-14 07:19:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(396, 1, '2025-11-14 07:20:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(397, 1, '2025-11-14 07:20:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(398, 1, '2025-11-14 07:20:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(399, 1, '2025-11-14 07:20:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(400, 1, '2025-11-14 07:20:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(401, 1, '2025-11-14 07:20:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(402, 1, '2025-11-14 07:22:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(403, 1, '2025-11-14 07:22:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(404, 1, '2025-11-14 07:23:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(405, 1, '2025-11-14 07:23:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(406, 1, '2025-11-14 07:26:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(407, 1, '2025-11-14 07:26:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(408, 1, '2025-11-14 07:28:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(409, 1, '2025-11-14 07:28:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(410, 1, '2025-11-14 07:34:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(411, 1, '2025-11-14 07:34:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(412, 1, '2025-11-14 07:47:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(413, 1, '2025-11-14 07:47:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(414, 1, '2025-11-14 07:50:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(415, 1, '2025-11-14 07:50:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(416, 1, '2025-11-14 07:52:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(417, 1, '2025-11-14 07:52:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(418, 1, '2025-11-14 07:52:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(419, 1, '2025-11-14 07:52:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(420, 1, '2025-11-14 07:57:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(421, 1, '2025-11-14 07:57:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(422, 1, '2025-11-14 08:05:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(423, 1, '2025-11-14 08:05:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(424, 1, '2025-11-14 08:05:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(425, 1, '2025-11-14 08:05:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(426, 2, '2025-11-14 08:08:44', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(427, 1, '2025-11-14 08:09:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(428, 1, '2025-11-14 08:09:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(429, 1, '2025-11-14 08:23:17', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(430, 1, '2025-11-14 08:23:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(431, 1, '2025-11-14 08:23:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(432, 1, '2025-11-14 08:23:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(433, 2, '2025-11-14 08:23:57', 'file_remove', '', 'Filesystem: assets/img/flash-deal.jpg'),
(434, 1, '2025-11-14 08:24:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(435, 1, '2025-11-14 08:24:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(436, 2, '2025-11-14 08:25:59', 'file_upload', '', 'Filesystem: assets\\img/\\'),
(437, 2, '2025-11-14 08:27:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(438, 2, '2025-11-14 08:28:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(439, 2, '2025-11-14 08:30:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(440, 1, '2025-11-14 08:34:43', 'snippet_create', 'MODX\\Revolution\\modSnippet', '6'),
(441, 1, '2025-11-14 08:39:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(442, 1, '2025-11-14 08:39:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(443, 2, '2025-11-14 09:14:55', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(444, 2, '2025-11-14 09:15:05', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(445, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(446, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(447, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(448, 1, '2025-11-14 09:17:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(449, 1, '2025-11-14 09:17:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(450, 1, '2025-11-14 09:18:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(451, 1, '2025-11-14 09:18:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(452, 2, '2025-11-14 09:20:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(453, 1, '2025-11-14 09:20:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(454, 1, '2025-11-14 09:20:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(455, 1, '2025-11-14 09:21:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(456, 1, '2025-11-14 09:21:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(457, 1, '2025-11-14 09:22:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(458, 1, '2025-11-14 09:22:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(459, 2, '2025-11-14 09:22:43', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(460, 1, '2025-11-14 09:23:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(461, 1, '2025-11-14 09:23:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(462, 1, '2025-11-14 09:23:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(463, 1, '2025-11-14 09:23:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(464, 1, '2025-11-14 09:24:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(465, 1, '2025-11-14 09:24:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(466, 1, '2025-11-14 09:27:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(467, 1, '2025-11-14 09:27:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(468, 2, '2025-11-14 09:29:30', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(469, 1, '2025-11-14 09:32:45', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(470, 2, '2025-11-14 09:33:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(471, 2, '2025-11-14 09:34:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(472, 2, '2025-11-14 09:36:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(473, 1, '2025-11-14 09:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(474, 2, '2025-11-14 09:38:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(475, 2, '2025-11-14 09:39:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(476, 2, '2025-11-14 09:40:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(477, 2, '2025-11-14 09:41:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(478, 1, '2025-11-14 09:42:19', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(479, 2, '2025-11-14 09:42:27', 'directory_remove', '', 'Filesystem: assets/img\\travel\\'),
(480, 2, '2025-11-14 09:42:32', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(481, 2, '2025-11-14 09:42:59', 'directory_create', '', 'Filesystem: assets\\img\\intro'),
(482, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(483, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(484, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(485, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(486, 2, '2025-11-14 09:43:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(487, 1, '2025-11-14 09:44:54', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(488, 2, '2025-11-14 09:46:34', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(489, 2, '2025-11-14 09:48:36', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(490, 2, '2025-11-14 09:48:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(491, 1, '2025-11-14 09:49:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(492, 1, '2025-11-14 09:49:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(493, 1, '2025-11-14 09:50:04', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(494, 1, '2025-11-14 09:52:51', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(495, 1, '2025-11-14 10:04:27', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(496, 2, '2025-11-14 10:05:51', 'directory_remove', '', 'Filesystem: assets/img\\intro\\'),
(497, 2, '2025-11-14 10:05:56', 'directory_create', '', 'Filesystem: assets\\img\\intro'),
(498, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(499, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(500, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(501, 2, '2025-11-14 10:07:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(502, 1, '2025-11-14 10:07:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(503, 2, '2025-11-14 10:07:42', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(504, 2, '2025-11-14 10:08:51', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(505, 1, '2025-11-14 10:09:24', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(506, 2, '2025-11-14 10:10:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(507, 1, '2025-11-14 10:10:20', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(508, 2, '2025-11-14 10:10:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(509, 2, '2025-11-14 10:12:27', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(510, 1, '2025-11-14 10:13:00', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(511, 1, '2025-11-14 10:13:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(512, 1, '2025-11-14 10:15:58', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(513, 1, '2025-11-14 10:16:36', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(514, 2, '2025-11-14 10:16:56', 'directory_create', '', 'Filesystem: assets\\img\\main'),
(515, 1, '2025-11-14 10:19:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(516, 1, '2025-11-14 10:22:37', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(517, 1, '2025-11-14 10:32:28', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(518, 1, '2025-11-14 10:33:59', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(519, 1, '2025-11-14 10:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(520, 2, '2025-11-14 10:41:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(521, 1, '2025-11-14 10:53:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(522, 1, '2025-11-14 10:53:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(523, 1, '2025-11-14 10:54:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(524, 1, '2025-11-14 10:54:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(525, 1, '2025-11-14 10:58:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(526, 1, '2025-11-14 10:58:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(527, 2, '2025-11-14 10:59:59', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(528, 1, '2025-11-14 11:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(529, 2, '2025-11-14 11:01:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(530, 2, '2025-11-14 11:01:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(531, 2, '2025-11-14 11:06:19', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(532, 2, '2025-11-14 11:07:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(533, 2, '2025-11-14 11:07:52', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(534, 1, '2025-11-14 11:08:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(535, 1, '2025-11-14 11:08:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(536, 2, '2025-11-14 11:09:03', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(537, 2, '2025-11-14 11:10:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(538, 2, '2025-11-14 11:15:17', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(539, 2, '2025-11-14 11:15:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(540, 2, '2025-11-14 11:21:06', 'file_remove', '', 'Filesystem: assets/img/who_we/1.png'),
(541, 2, '2025-11-14 11:21:30', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(542, 2, '2025-11-14 11:22:32', 'file_remove', '', 'Filesystem: assets/img/who_we/1.png'),
(543, 2, '2025-11-14 11:22:37', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(544, 2, '2025-11-14 11:26:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(545, 2, '2025-11-14 11:27:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(546, 2, '2025-11-14 11:30:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(547, 2, '2025-11-14 11:31:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(548, 2, '2025-11-14 11:32:17', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(549, 1, '2025-11-14 11:34:33', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(550, 1, '2025-11-14 11:34:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(551, 2, '2025-11-14 11:35:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(552, 1, '2025-11-14 11:36:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(553, 1, '2025-11-14 11:36:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(554, 1, '2025-11-14 11:37:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(555, 1, '2025-11-14 11:37:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(556, 1, '2025-11-14 12:02:30', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(557, 1, '2025-11-14 12:02:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(558, 1, '2025-11-14 12:08:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(559, 1, '2025-11-14 12:08:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(560, 1, '2025-11-14 12:09:46', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(561, 1, '2025-11-14 12:10:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(562, 1, '2025-11-14 12:10:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(563, 1, '2025-11-14 12:43:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(564, 1, '2025-11-14 12:43:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(565, 1, '2025-11-14 12:45:05', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(566, 1, '2025-11-14 12:53:23', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(567, 1, '2025-11-14 12:54:19', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(568, 1, '2025-11-14 12:57:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(569, 1, '2025-11-14 13:09:59', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(570, 2, '2025-11-16 14:33:39', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(571, 2, '2025-11-16 14:34:28', 'user_update', 'MODX\\Revolution\\modUser', '1'),
(572, 2, '2025-11-16 14:35:01', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(573, 2, '2025-11-16 14:41:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(574, 2, '2025-11-16 14:44:09', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(575, 2, '2025-11-16 14:47:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(576, 2, '2025-11-16 15:03:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(577, 2, '2025-11-16 15:22:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(578, 2, '2025-11-16 15:27:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(579, 2, '2025-11-16 15:34:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(580, 2, '2025-11-16 15:39:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(581, 2, '2025-11-16 15:42:02', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(582, 2, '2025-11-16 15:44:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(583, 2, '2025-11-16 15:45:27', 'snippet_create', 'MODX\\Revolution\\modSnippet', '7'),
(584, 2, '2025-11-16 15:45:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(585, 2, '2025-11-16 15:45:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(586, 2, '2025-11-16 15:46:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(587, 2, '2025-11-16 15:48:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(588, 2, '2025-11-16 15:48:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(589, 2, '2025-11-16 15:48:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(590, 2, '2025-11-16 15:48:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(591, 2, '2025-11-16 15:50:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(592, 2, '2025-11-16 15:50:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(593, 2, '2025-11-16 15:51:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(594, 2, '2025-11-16 15:52:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(595, 2, '2025-11-16 15:54:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(596, 2, '2025-11-16 15:57:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(597, 2, '2025-11-16 15:58:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(598, 2, '2025-11-16 16:00:17', 'resource_create', 'MODX\\Revolution\\modDocument', '8'),
(599, 2, '2025-11-16 16:00:27', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(600, 2, '2025-11-16 16:01:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(601, 2, '2025-11-16 16:01:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(602, 2, '2025-11-16 16:02:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(603, 2, '2025-11-16 16:04:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(604, 2, '2025-11-16 16:06:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(605, 2, '2025-11-16 16:06:39', 'delete_resource', 'MODX\\Revolution\\modDocument', '8'),
(606, 2, '2025-11-16 16:41:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(607, 2, '2025-11-16 16:44:55', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(608, 2, '2025-11-16 16:47:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(609, 2, '2025-11-16 16:47:54', 'unpublish_resource', 'MODX\\Revolution\\modResource', '8'),
(610, 2, '2025-11-16 16:48:04', 'empty_trash', 'MODX\\Revolution\\modResource', '8'),
(611, 2, '2025-11-16 16:49:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(612, 2, '2025-11-16 16:54:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(613, 2, '2025-11-16 16:59:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(614, 2, '2025-11-16 17:02:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(615, 2, '2025-11-16 17:03:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(616, 2, '2025-11-16 17:05:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(617, 2, '2025-11-16 17:06:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(618, 2, '2025-11-16 17:33:52', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(619, 1, '2025-11-17 04:46:18', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(620, 1, '2025-11-17 04:49:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(621, 1, '2025-11-17 04:50:03', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(622, 1, '2025-11-17 04:50:55', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(623, 1, '2025-11-17 04:54:46', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(624, 1, '2025-11-17 05:00:36', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(625, 1, '2025-11-17 05:01:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(626, 1, '2025-11-17 05:10:48', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(627, 1, '2025-11-17 05:11:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(628, 1, '2025-11-17 05:12:06', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(629, 1, '2025-11-17 05:12:08', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(630, 1, '2025-11-17 05:12:47', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(631, 1, '2025-11-17 05:14:20', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(632, 1, '2025-11-17 05:14:56', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(633, 1, '2025-11-17 05:18:09', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(634, 1, '2025-11-17 05:18:25', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(635, 1, '2025-11-17 05:19:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(636, 1, '2025-11-17 05:20:47', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(637, 1, '2025-11-17 05:21:42', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(638, 1, '2025-11-17 05:28:46', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(639, 1, '2025-11-17 05:30:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(640, 1, '2025-11-17 05:33:29', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(641, 1, '2025-11-17 05:33:51', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(642, 1, '2025-11-17 05:33:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(643, 1, '2025-11-17 05:35:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(644, 1, '2025-11-17 05:39:42', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(645, 1, '2025-11-17 05:41:02', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(646, 1, '2025-11-17 05:49:55', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(647, 1, '2025-11-17 05:55:39', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(648, 1, '2025-11-17 05:58:12', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(649, 1, '2025-11-17 06:01:47', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(650, 1, '2025-11-17 06:04:05', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(651, 1, '2025-11-17 06:06:19', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(652, 1, '2025-11-17 06:10:18', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(653, 1, '2025-11-17 06:10:38', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(654, 1, '2025-11-17 06:11:00', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(655, 1, '2025-11-17 06:15:51', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(656, 1, '2025-11-17 06:16:19', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(657, 1, '2025-11-17 06:16:43', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(658, 1, '2025-11-17 06:17:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(659, 1, '2025-11-17 06:18:38', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(660, 1, '2025-11-17 06:20:15', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(661, 1, '2025-11-17 06:22:46', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(662, 1, '2025-11-17 06:36:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(663, 1, '2025-11-17 06:36:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(664, 1, '2025-11-17 06:36:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(665, 1, '2025-11-17 06:36:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(666, 1, '2025-11-17 06:37:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(667, 1, '2025-11-17 06:37:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(668, 1, '2025-11-17 06:37:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(669, 1, '2025-11-17 06:37:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(670, 1, '2025-11-17 06:37:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(671, 1, '2025-11-17 06:37:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(672, 1, '2025-11-17 06:37:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(673, 1, '2025-11-17 06:37:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(674, 1, '2025-11-17 06:38:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(675, 1, '2025-11-17 06:38:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(676, 1, '2025-11-17 06:39:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(677, 1, '2025-11-17 06:39:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(678, 1, '2025-11-17 06:39:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(679, 1, '2025-11-17 06:39:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(680, 2, '2025-11-17 06:42:36', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(681, 2, '2025-11-17 06:44:03', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(682, 2, '2025-11-17 06:44:42', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(683, 1, '2025-11-17 07:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(684, 1, '2025-11-17 07:02:07', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(685, 1, '2025-11-17 07:04:29', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(686, 1, '2025-11-17 07:13:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(687, 1, '2025-11-17 07:20:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(688, 1, '2025-11-17 07:21:03', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(689, 1, '2025-11-17 07:22:00', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(690, 1, '2025-11-17 07:27:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(691, 1, '2025-11-17 07:27:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(692, 1, '2025-11-17 07:27:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(693, 1, '2025-11-17 07:27:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(694, 1, '2025-11-17 07:31:57', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(695, 1, '2025-11-17 08:02:34', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(696, 1, '2025-11-17 08:03:13', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(697, 1, '2025-11-17 08:03:54', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(698, 1, '2025-11-17 08:11:54', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(699, 1, '2025-11-17 08:17:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(700, 1, '2025-11-17 08:17:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(701, 1, '2025-11-17 08:28:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(702, 1, '2025-11-17 08:37:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(703, 1, '2025-11-17 08:42:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(704, 1, '2025-11-17 08:49:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(705, 1, '2025-11-17 08:50:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(706, 1, '2025-11-17 08:52:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(707, 1, '2025-11-17 08:54:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(708, 1, '2025-11-17 09:10:53', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(709, 1, '2025-11-17 10:02:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(710, 1, '2025-11-17 10:25:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(711, 1, '2025-11-17 10:25:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(712, 1, '2025-11-17 10:26:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(713, 1, '2025-11-17 10:26:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(714, 1, '2025-11-17 10:51:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(715, 1, '2025-11-17 10:51:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(716, 1, '2025-11-17 10:53:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(717, 1, '2025-11-17 10:53:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(718, 1, '2025-11-17 10:54:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(719, 1, '2025-11-17 10:57:15', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(720, 1, '2025-11-17 11:12:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(721, 1, '2025-11-17 11:13:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(722, 1, '2025-11-17 11:23:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(723, 1, '2025-11-17 11:32:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(724, 1, '2025-11-17 11:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(725, 1, '2025-11-17 11:44:17', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(726, 1, '2025-11-17 11:44:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(727, 1, '2025-11-17 11:45:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(728, 1, '2025-11-17 11:45:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(729, 1, '2025-11-17 11:53:12', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(730, 1, '2025-11-17 11:54:26', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(731, 1, '2025-11-17 11:54:49', 'snippet_create', 'MODX\\Revolution\\modSnippet', '8'),
(732, 1, '2025-11-17 11:55:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(733, 1, '2025-11-17 11:56:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(734, 1, '2025-11-17 11:57:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(735, 1, '2025-11-17 11:57:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(736, 1, '2025-11-17 11:57:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(737, 1, '2025-11-17 11:57:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(738, 1, '2025-11-17 11:58:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(739, 1, '2025-11-17 11:58:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(740, 1, '2025-11-17 11:58:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(741, 1, '2025-11-17 11:59:01', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(742, 1, '2025-11-17 12:00:32', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(743, 1, '2025-11-17 12:02:03', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(744, 1, '2025-11-17 12:03:18', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(745, 1, '2025-11-17 12:04:35', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(746, 1, '2025-11-17 12:06:46', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(747, 1, '2025-11-17 12:07:43', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(748, 1, '2025-11-17 12:18:58', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(749, 1, '2025-11-17 12:19:47', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(750, 1, '2025-11-17 12:20:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(751, 1, '2025-11-17 12:27:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(752, 1, '2025-11-17 12:28:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(753, 1, '2025-11-17 12:31:17', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(754, 1, '2025-11-17 12:31:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(755, 1, '2025-11-17 12:35:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(756, 1, '2025-11-17 12:35:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(757, 1, '2025-11-18 03:20:45', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(758, 1, '2025-11-18 03:23:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(759, 1, '2025-11-18 03:24:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(760, 1, '2025-11-18 03:25:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(761, 1, '2025-11-18 03:32:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(762, 1, '2025-11-18 03:37:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(763, 2, '2025-11-18 04:56:14', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(764, 2, '2025-11-18 05:00:06', 'file_update', '', 'Filesystem: assets/css/main.css'),
(765, 2, '2025-11-18 06:17:16', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(766, 1, '2025-11-18 06:29:10', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(767, 1, '2025-11-18 06:30:20', 'directory_create', '', 'Filesystem: assets/img/about-us'),
(768, 1, '2025-11-18 06:30:37', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(769, 1, '2025-11-18 06:30:38', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(770, 1, '2025-11-18 06:30:38', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(771, 1, '2025-11-18 06:30:39', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(772, 1, '2025-11-18 06:30:39', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(773, 1, '2025-11-18 06:30:39', 'file_upload', '', 'Filesystem: assets/img/about-us/'),
(774, 1, '2025-11-18 06:30:52', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(775, 1, '2025-11-18 06:32:07', 'file_update', '', 'Filesystem: assets/css/main.css'),
(776, 1, '2025-11-18 06:32:40', 'file_update', '', 'Filesystem: assets/css/main.css'),
(777, 1, '2025-11-18 06:33:51', 'file_update', '', 'Filesystem: assets/css/main.css'),
(778, 1, '2025-11-18 06:35:45', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(779, 1, '2025-11-18 06:35:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(780, 1, '2025-11-18 06:56:38', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(781, 1, '2025-11-18 06:56:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(782, 1, '2025-11-18 08:02:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(783, 1, '2025-11-18 08:02:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(784, 1, '2025-11-18 08:04:30', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(785, 1, '2025-11-18 08:04:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(786, 1, '2025-11-18 08:05:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(787, 1, '2025-11-18 08:05:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(788, 1, '2025-11-18 08:07:18', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(789, 1, '2025-11-18 08:07:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(790, 1, '2025-11-18 08:07:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(791, 1, '2025-11-18 08:08:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(792, 1, '2025-11-18 08:08:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(793, 1, '2025-11-18 08:08:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(794, 1, '2025-11-18 08:10:55', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(795, 1, '2025-11-18 08:10:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(796, 1, '2025-11-18 08:11:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(797, 1, '2025-11-18 08:11:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(798, 1, '2025-11-18 09:17:28', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(799, 1, '2025-11-18 09:17:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(800, 1, '2025-11-18 09:22:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(801, 1, '2025-11-18 09:22:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(802, 1, '2025-11-18 09:24:28', 'file_update', '', 'Filesystem: assets/css/main.css'),
(803, 1, '2025-11-18 09:25:25', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(804, 1, '2025-11-18 09:25:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(805, 1, '2025-11-18 09:29:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(806, 1, '2025-11-18 09:29:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(807, 1, '2025-11-18 09:44:30', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(808, 1, '2025-11-18 11:46:27', 'file_rename', '', 'Filesystem: assets/img/logo copy.png -> assets/img/logo-pdf.png'),
(809, 1, '2025-11-18 11:53:47', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(810, 1, '2025-11-18 12:12:44', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(811, 1, '2025-11-19 04:28:32', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(812, 1, '2025-11-19 04:34:24', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(813, 1, '2025-11-19 04:40:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(814, 1, '2025-11-19 04:40:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(815, 1, '2025-11-19 04:41:57', 'file_update', '', 'Filesystem: assets/css/main.css'),
(816, 1, '2025-11-19 04:42:20', 'file_update', '', 'Filesystem: assets/css/main.css'),
(817, 1, '2025-11-19 05:24:01', 'file_update', '', 'Filesystem: assets/css/main.css'),
(818, 1, '2025-11-19 05:24:35', 'file_update', '', 'Filesystem: assets/css/main.css'),
(819, 1, '2025-11-19 05:25:11', 'file_upload', '', 'Filesystem: assets/img/'),
(820, 1, '2025-11-19 05:25:27', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(821, 1, '2025-11-19 05:29:10', 'file_update', '', 'Filesystem: assets/css/main.css'),
(822, 1, '2025-11-19 05:30:13', 'file_update', '', 'Filesystem: assets/css/main.css'),
(823, 1, '2025-11-19 05:42:41', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(824, 1, '2025-11-19 05:43:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(825, 1, '2025-11-19 05:43:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(826, 1, '2025-11-19 05:44:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(827, 1, '2025-11-19 05:44:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(828, 1, '2025-11-19 05:50:53', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(829, 1, '2025-11-19 05:56:23', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(830, 1, '2025-11-19 07:08:07', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(831, 1, '2025-11-19 07:10:50', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(832, 2, '2025-11-19 08:16:06', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(833, 2, '2025-11-19 08:19:23', 'file_update', '', 'Filesystem: assets/css/main.css'),
(834, 2, '2025-11-19 08:30:35', 'file_update', '', 'Filesystem: assets/css/main.css'),
(835, 1, '2025-11-19 08:49:46', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(836, 1, '2025-11-19 09:13:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(837, 1, '2025-11-19 09:35:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(838, 1, '2025-11-19 09:36:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(839, 1, '2025-11-19 09:36:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(840, 1, '2025-11-19 09:37:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(841, 1, '2025-11-19 09:37:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(842, 1, '2025-11-19 09:39:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(843, 1, '2025-11-19 09:39:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(844, 1, '2025-11-19 09:40:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(845, 1, '2025-11-19 09:40:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(846, 1, '2025-11-19 09:50:43', 'file_update', '', 'Filesystem: assets/css/main.css'),
(847, 1, '2025-11-19 09:54:06', 'file_update', '', 'Filesystem: assets/css/main.css'),
(848, 2, '2025-11-19 09:59:13', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(849, 2, '2025-11-19 10:01:18', 'file_remove', '', 'Filesystem: assets/img/navbar/2.png'),
(850, 2, '2025-11-19 10:01:42', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(851, 2, '2025-11-19 10:04:13', 'file_remove', '', 'Filesystem: assets/img/navbar/2.png'),
(852, 2, '2025-11-19 10:04:26', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(853, 2, '2025-11-19 10:07:56', 'file_remove', '', 'Filesystem: assets/img/vehicles/5.png'),
(854, 2, '2025-11-19 10:08:10', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(855, 2, '2025-11-19 10:10:13', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(856, 2, '2025-11-19 10:11:57', 'file_remove', '', 'Filesystem: assets/img/vehicles/5.jpg'),
(857, 2, '2025-11-19 10:13:02', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(858, 2, '2025-11-19 10:30:22', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(859, 2, '2025-11-19 10:31:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(860, 2, '2025-11-19 10:31:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(861, 1, '2025-11-19 11:15:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(862, 1, '2025-11-19 11:15:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(863, 1, '2025-11-19 11:17:30', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(864, 1, '2025-11-19 11:18:02', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(865, 1, '2025-11-19 11:20:56', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(866, 1, '2025-11-19 11:21:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(867, 1, '2025-11-19 11:21:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(868, 2, '2025-11-19 11:28:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(869, 2, '2025-11-19 11:28:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(870, 2, '2025-11-19 11:35:41', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(871, 2, '2025-11-19 11:40:45', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(872, 1, '2025-11-19 11:49:33', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(873, 1, '2025-11-19 11:49:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(874, 1, '2025-11-19 11:51:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(875, 1, '2025-11-19 11:51:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(876, 1, '2025-11-19 11:53:47', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(877, 1, '2025-11-19 12:13:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(878, 1, '2025-11-19 12:14:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(879, 1, '2025-11-19 12:14:32', 'file_update', '', 'Filesystem: assets/css/main.css'),
(880, 1, '2025-11-20 03:50:03', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(881, 1, '2025-11-20 05:51:11', 'directory_create', '', 'Filesystem: /classes'),
(882, 1, '2025-11-20 05:52:46', 'file_upload', '', 'Filesystem: /'),
(883, 1, '2025-11-20 05:52:46', 'file_upload', '', 'Filesystem: /'),
(884, 1, '2025-11-20 05:52:46', 'file_upload', '', 'Filesystem: /'),
(885, 1, '2025-11-20 05:53:16', 'file_remove', '', 'Filesystem: readme.md'),
(886, 1, '2025-11-20 05:53:21', 'file_remove', '', 'Filesystem: security.md'),
(887, 1, '2025-11-20 05:53:32', 'file_remove', '', 'Filesystem: smtputf8.md'),
(888, 1, '2025-11-20 05:54:32', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(889, 1, '2025-11-20 05:55:40', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(890, 1, '2025-11-20 05:56:12', 'snippet_create', 'MODX\\Revolution\\modSnippet', '9'),
(891, 1, '2025-11-20 10:32:58', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(892, 2, '2025-11-20 10:46:49', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(893, 1, '2025-11-20 10:49:48', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(894, 1, '2025-11-20 10:49:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(895, 1, '2025-11-20 10:50:26', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(896, 1, '2025-11-20 10:50:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(897, 1, '2025-11-20 10:50:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(898, 1, '2025-11-20 10:50:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(899, 1, '2025-11-20 11:21:45', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(900, 1, '2025-11-20 11:38:03', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(901, 1, '2025-11-20 11:41:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(902, 1, '2025-11-20 11:49:59', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(903, 1, '2025-11-20 12:04:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(904, 1, '2025-11-20 12:07:40', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(905, 1, '2025-11-20 12:07:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(906, 1, '2025-11-20 12:08:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(907, 1, '2025-11-20 12:08:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(908, 1, '2025-11-20 12:09:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(909, 1, '2025-11-20 12:09:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(910, 1, '2025-11-20 12:24:31', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(911, 2, '2025-11-20 12:29:06', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(912, 1, '2025-11-20 12:33:00', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(913, 1, '2025-11-20 12:39:26', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(914, 1, '2025-11-20 12:39:31', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(915, 1, '2025-11-21 09:21:07', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(916, 1, '2025-11-21 09:21:54', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(917, 1, '2025-11-21 09:21:54', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(918, 1, '2025-11-21 09:21:54', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(919, 1, '2025-11-21 09:22:13', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(920, 1, '2025-11-21 09:22:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(921, 1, '2025-11-21 09:29:27', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(922, 1, '2025-11-21 09:29:29', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(923, 1, '2025-11-21 09:29:32', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(924, 1, '2025-11-21 09:29:46', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(925, 1, '2025-11-21 09:30:50', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(926, 1, '2025-11-21 09:37:30', 'file_upload', '', 'Filesystem: assets/img/vehicles/'),
(927, 1, '2025-11-21 12:26:34', 'file_update', '', 'Filesystem: assets/css/main.css'),
(928, 1, '2025-11-21 12:27:21', 'file_update', '', 'Filesystem: assets/css/main.css'),
(929, 1, '2025-11-21 12:28:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(930, 1, '2025-11-21 12:28:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(931, 1, '2025-11-21 12:28:33', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(932, 1, '2025-11-21 12:28:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(933, 1, '2025-11-21 12:29:21', 'file_update', '', 'Filesystem: assets/css/main.css'),
(934, 1, '2025-11-21 12:31:33', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(935, 1, '2025-11-21 12:31:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(936, 1, '2025-11-21 12:33:06', 'file_remove', '', 'Filesystem: assets/img/navbar/1.png'),
(937, 1, '2025-11-21 12:33:17', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(938, 1, '2025-11-21 12:35:58', 'file_remove', '', 'Filesystem: assets/img/navbar/5.png'),
(939, 1, '2025-11-21 12:36:08', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(940, 1, '2025-11-21 12:37:13', 'file_remove', '', 'Filesystem: assets/img/navbar/4.png'),
(941, 1, '2025-11-21 12:37:21', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(942, 1, '2025-11-25 04:07:27', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(943, 1, '2025-11-25 04:09:45', 'file_upload', '', 'Filesystem: assets/img/navbar/'),
(944, 1, '2025-11-25 04:10:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(945, 1, '2025-11-25 04:10:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(946, 1, '2025-11-25 04:33:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(947, 1, '2025-11-25 04:33:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(948, 2, '2025-11-25 05:25:50', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(949, 1, '2025-11-25 12:14:05', 'directory_create', '', 'Filesystem: /libs'),
(950, 1, '2025-11-25 12:14:11', 'directory_create', '', 'Filesystem: libs/PHPMailer'),
(951, 1, '2025-11-25 12:16:28', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(952, 1, '2025-11-25 12:19:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(953, 1, '2025-11-25 12:19:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(954, 1, '2025-11-26 04:00:52', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(955, 1, '2025-11-26 08:42:43', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(956, 1, '2025-11-26 08:42:53', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(957, 1, '2025-11-26 09:44:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(958, 1, '2025-11-26 09:44:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(959, 1, '2025-11-26 09:44:56', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(960, 1, '2026-02-05 11:39:12', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(961, 1, '2026-02-06 12:06:33', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(962, 1, '2026-02-06 12:07:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(963, 1, '2026-02-06 12:07:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(964, 1, '2026-02-06 12:08:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(965, 1, '2026-02-06 12:08:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(966, 1, '2026-02-10 17:01:09', 'snippet_create', 'MODX\\Revolution\\modSnippet', '10'),
(967, 1, '2026-02-10 17:01:29', 'resource_create', 'MODX\\Revolution\\modDocument', '9'),
(968, 1, '2026-02-10 17:01:42', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(969, 1, '2026-02-10 17:01:48', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(970, 1, '2026-02-10 17:02:42', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(971, 1, '2026-02-10 17:04:21', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(972, 1, '2026-02-10 17:06:00', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(973, 1, '2026-02-10 17:06:57', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(974, 1, '2026-02-10 17:09:09', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(975, 1, '2026-02-10 17:11:55', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(976, 1, '2026-02-10 17:11:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(977, 1, '2026-02-10 17:14:48', 'directory_create', '', 'Filesystem: assets/logs'),
(978, 1, '2026-02-10 17:16:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(979, 1, '2026-02-10 17:16:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(980, 1, '2026-02-10 17:17:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(981, 1, '2026-02-10 17:17:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(982, 1, '2026-02-10 17:20:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(983, 1, '2026-02-10 17:20:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(984, 1, '2026-02-10 17:23:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(985, 1, '2026-02-10 17:23:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(986, 1, '2026-02-10 17:26:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(987, 1, '2026-02-10 17:26:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(988, 1, '2026-02-10 17:27:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '10'),
(989, 1, '2026-02-10 17:27:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 10 Default'),
(990, 1, '2026-02-13 08:51:20', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(991, 1, '2026-02-13 08:53:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(992, 1, '2026-02-13 08:53:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(993, 1, '2026-02-13 08:55:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(994, 1, '2026-02-13 08:55:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(995, 1, '2026-02-13 09:03:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(996, 1, '2026-02-13 09:03:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(997, 1, '2026-02-25 07:28:39', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(998, 1, '2026-02-25 07:30:34', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(999, 1, '2026-02-25 07:30:51', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(1000, 1, '2026-03-06 13:12:11', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1001, 1, '2026-03-06 13:14:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1002, 1, '2026-03-06 13:15:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1003, 1, '2026-03-20 09:41:57', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1004, 1, '2026-03-20 09:42:17', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1005, 1, '2026-03-20 09:48:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1006, 2, '2026-04-29 13:29:44', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1007, 2, '2026-04-29 13:33:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1008, 2, '2026-04-30 05:44:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1009, 2, '2026-04-30 05:45:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1010, 2, '2026-04-30 05:46:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1011, 2, '2026-04-30 10:42:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(1012, 2, '2026-04-30 10:42:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1013, 2, '2026-04-30 10:47:51', 'chunk_update', 'MODX\\Revolution\\modChunk', '3');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1014, 2, '2026-04-30 10:47:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1015, 2, '2026-04-30 10:48:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(1016, 2, '2026-04-30 10:48:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1017, 2, '2026-04-30 10:55:27', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1018, 2, '2026-04-30 10:56:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1019, 2, '2026-04-30 10:57:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1020, 2, '2026-04-30 11:04:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(1021, 2, '2026-04-30 11:04:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1022, 2, '2026-04-30 11:05:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(1023, 2, '2026-04-30 11:05:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1024, 2, '2026-04-30 12:46:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(1025, 2, '2026-04-30 12:46:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(1026, 1, '2026-05-04 09:42:28', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1027, 1, '2026-05-04 09:42:57', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(1028, 1, '2026-05-04 09:43:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(1029, 1, '2026-05-04 09:43:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(1030, 1, '2026-05-04 09:45:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1031, 1, '2026-05-04 09:45:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1032, 1, '2026-05-04 09:52:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(1033, 1, '2026-05-04 09:53:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(1034, 1, '2026-05-04 09:54:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(1035, 1, '2026-05-04 09:54:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(1036, 1, '2026-05-04 09:55:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(1037, 1, '2026-05-04 09:55:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(1038, 1, '2026-05-04 09:57:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(1039, 1, '2026-05-04 09:57:25', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(1040, 1, '2026-05-04 10:00:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(1041, 1, '2026-05-04 10:00:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default'),
(1042, 1, '2026-05-04 10:00:44', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(1043, 1, '2026-05-04 10:01:24', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(1044, 1, '2026-05-04 10:01:36', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(1045, 1, '2026-05-04 10:01:47', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(1046, 1, '2026-05-04 10:02:40', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(1047, 1, '2026-05-04 10:03:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '9'),
(1048, 1, '2026-05-04 10:03:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 9 Default');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', 'about_desc', '<i class=\"icon-question-circle icon\"></i>', 3, '', '', 'help', 'core'),
('access', 'usernav', '', '', '<i class=\"icon-user-lock icon\"></i>', 1, '', '', 'access_permissions', 'core'),
('acls', 'access', 'security/permission', 'acls_desc', '', 2, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon\"></i>', 2, '', '', 'settings', 'core'),
('components', 'topnav', '', '', '<i class=\"icon-cube icon\"></i>', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 4, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 4, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 5, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 3, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 1, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'access', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n                            title: _(\'flush_access\')\n                            ,text: _(\'flush_access_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/access/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n                                \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n                            }\n                        });', 'access_permissions', 'core'),
('flush_sessions', 'access', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n                            title: _(\'flush_sessions\')\n                            ,text: _(\'flush_sessions_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n                            }\n                        });', 'flush_sessions', 'core'),
('form_customization', 'admin', 'security/forms', 'form_customization_desc', '', 1, '', '', 'customize_forms', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('language', 'admin', '', 'language_desc', '', 8, '', '', 'language', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('media', 'topnav', '', '', '<i class=\"icon-file-image-o icon\"></i>', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 6, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 2, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'site', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'site', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'admin', '', 'reports_desc', '', 9, '', '', 'menu_reports', 'core'),
('resource_groups', 'access', 'security/resourcegroup', 'resource_groups_desc', '', 1, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '<i class=\"icon-file-text-o icon\"></i>', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'site', 'resource/site_schedule', 'site_schedule_desc', '', 3, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('trash', 'site', 'resource/trash', 'trash_desc', '', 5, '', '', 'menu_trash', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\" title=\"{$username}\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 0, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 1, '', '', '', 'core'),
('users', 'access', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 0, '', '', 'mgr_log_view', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 2, '', '', 'view_sysinfo', 'core'),
('{$username}', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(11) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_messages`
--

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, 'c9f0f895fb98ab9159f51fd0297e236d', '2025-11-16 16:47:54', '2025-11-16 16:47:54', NULL, 0, 1763308434, 'if (time() > 1763308434) return null;\nreturn 2;\n', 0),
(3, '33c944966a4757fc9aa6dce7459801e5', '2025-11-16 14:32:35', '2025-11-16 14:32:35', NULL, 0, 1763386355, 'if (time() > 1763386355) return null;\nreturn \'admin\';\n', 0),
(3, '3fb14844d392af55ad83bbbf101279d8', '2026-04-27 07:00:02', '2026-04-27 07:00:02', NULL, 0, 1777359602, 'if (time() > 1777359602) return null;\nreturn \'admin\';\n', 0),
(3, 'ea0eb96e79218cbe79f62775f6e1285a', '2025-11-16 14:32:26', '2025-11-16 14:32:26', NULL, 0, 1763386346, 'if (time() > 1763386346) return null;\nreturn \'admin\';\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}'),
(3, 'user', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2025-11-12 06:50:12', NULL, NULL),
(2, 2, '/resourcereload/', '2025-11-12 07:00:15', NULL, NULL),
(3, 3, '/pwd/change/', '2025-11-16 14:32:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(10) UNSIGNED NOT NULL,
  `data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('00dp57ikm3u6s09d6fgp8bqbdf', 1774072021, 'modx.user.contextTokens|a:0:{}'),
('00oq2q6416664tme7kltgs75o2', 1774093079, 'modx.user.contextTokens|a:0:{}'),
('01d9tq6dj8v8kdagqu51kjiuq1', 1774984335, 'modx.user.contextTokens|a:0:{}'),
('01n6f9qis4ds82oem2ks4bmiap', 1775002861, 'modx.user.contextTokens|a:0:{}'),
('01n8qit1atlb1pd9lnlmaihdbd', 1774072548, 'modx.user.contextTokens|a:0:{}'),
('0210rp1khkkjm1rbnb9elieeov', 1775587109, 'modx.user.contextTokens|a:0:{}'),
('02c6j563spv1dl6tds342mhfc3', 1775060673, 'modx.user.contextTokens|a:0:{}'),
('0315hb53o6g0gfdvtvtnnkv4fp', 1774471929, 'modx.user.contextTokens|a:0:{}'),
('032q86s95dljoq00makovqvf8b', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('03alci6o1uj8nbhms16e5ohq9n', 1775006498, 'modx.user.contextTokens|a:0:{}'),
('03lcdnm62ks9bmp31kodao9o23', 1777315120, 'modx.user.contextTokens|a:0:{}'),
('03uniha9rjbroejhn4de02r4t2', 1775153384, 'modx.user.contextTokens|a:0:{}'),
('045raef2tug4445bpr3bipol98', 1775531750, 'modx.user.contextTokens|a:0:{}'),
('056c54bojq55v238aos9gua0v2', 1774864291, 'modx.user.contextTokens|a:0:{}'),
('05o32o6h6n49ts4n5tljjlj28o', 1775758156, 'modx.user.contextTokens|a:0:{}'),
('05om8jjbmehg83hi36em9mburm', 1775895379, 'modx.user.contextTokens|a:0:{}'),
('0651dtl91n8b7lv2fi3vpivmm1', 1776791295, 'modx.user.contextTokens|a:0:{}'),
('066cd0bmilb1nfdqidnlv3akha', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('06inl9jqh1qrrlf640vhcdhuod', 1775929414, 'modx.user.contextTokens|a:0:{}'),
('06mgv8la2h7bp5pb0hhgeit57g', 1776024755, 'modx.user.contextTokens|a:0:{}'),
('078uosksfn6os7tnrgmveu62i1', 1774196102, 'modx.user.contextTokens|a:0:{}'),
('07e2gkgv2u5tqbm5tipq0g98b3', 1776476395, 'modx.user.contextTokens|a:0:{}'),
('07u4bmotp04nui5jjfegsu9pc6', 1776604670, 'modx.user.contextTokens|a:0:{}'),
('081c0pj747ea0deh9t8d223lql', 1776752766, 'modx.user.contextTokens|a:0:{}'),
('087fue0jkvd719e7fg5c1o2ec7', 1777355416, 'modx.user.contextTokens|a:0:{}'),
('09nh04r4ub1m9ie3kgiqa19b7v', 1775436532, 'modx.user.contextTokens|a:0:{}'),
('09sn1hkppach9vi5ten5qjnrsv', 1774513241, 'modx.user.contextTokens|a:0:{}'),
('09ud7637er193v8nri9g2ob9uf', 1774090351, 'modx.user.contextTokens|a:0:{}'),
('0a5boco28njsvo0qd3vv4qt777', 1774368067, 'modx.user.contextTokens|a:0:{}'),
('0angdrca8s3sj8acl6slich5t1', 1777383237, 'modx.user.contextTokens|a:0:{}'),
('0aorgtg9fbs1r0f16v629p4j7d', 1774911967, 'modx.user.contextTokens|a:0:{}'),
('0atso468dp5p414klc75j78ls6', 1775746449, 'modx.user.contextTokens|a:0:{}'),
('0b07tnh3s1sorkoic695u5kh4t', 1776678992, 'modx.user.contextTokens|a:0:{}'),
('0bhptgsviko5m7461sh42sbu7h', 1777328430, 'modx.user.contextTokens|a:0:{}'),
('0bk4mic1tfmvhhn60m0dmb9e1o', 1774263779, 'modx.user.contextTokens|a:0:{}'),
('0bqjmrob9r77b4e7o4ebvjve33', 1776064832, 'modx.user.contextTokens|a:0:{}'),
('0c9o1bvlurnp8h20bj82fb02dg', 1777260387, 'modx.user.contextTokens|a:0:{}'),
('0clmtk56tni3tp7vm4ur98auus', 1775186884, 'modx.user.contextTokens|a:0:{}'),
('0csrngpau8to481s672enngamd', 1774729998, 'modx.user.contextTokens|a:0:{}'),
('0dbip0sgif7j2mud46ok2lvfvr', 1777061320, 'modx.user.contextTokens|a:0:{}'),
('0ds3iqk5qib8ivttst5bqng9lg', 1774879555, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('0e29lnk17q8tfhq3s2mfo6mhml', 1773968606, 'modx.user.contextTokens|a:0:{}'),
('0ejmkebqphhmadnng2f4846lee', 1776112802, 'modx.user.contextTokens|a:0:{}'),
('0elgnv15t0hmca1rdt474mujc1', 1777226711, 'modx.user.contextTokens|a:0:{}'),
('0etc7kr8mb0up9tnl802be3agj', 1776325157, 'modx.user.contextTokens|a:0:{}'),
('0f4r2bufir6sl3kobj37pijsq6', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('0fqrvbj3vpnehjr19k620pfcb6', 1777035287, 'modx.user.contextTokens|a:0:{}'),
('0frci51pnf2rgl4gqa80t6stao', 1777027555, 'modx.user.contextTokens|a:0:{}'),
('0fvg1j2udgecqufl8ilq8kvio4', 1776154865, 'modx.user.contextTokens|a:0:{}'),
('0g3dkiuuhr5g2vjponaovh0cr5', 1773971404, 'modx.user.contextTokens|a:0:{}'),
('0g554l228t3c0dmad0dbbf1mes', 1775802714, 'modx.user.contextTokens|a:0:{}'),
('0g5l0ph4d653f6beck1o55ac9l', 1774504313, 'modx.user.contextTokens|a:0:{}'),
('0g5v8renaom1v8qiqma4bmdujh', 1775704168, 'modx.user.contextTokens|a:0:{}'),
('0gf0ue3p00p4g42qi28ugi17al', 1777125259, 'modx.user.contextTokens|a:0:{}'),
('0gpadus9feefcth04d2tcn3lq7', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('0h5fvtajqv5fjkpa3a2g5vd6qd', 1775808947, 'modx.user.contextTokens|a:0:{}'),
('0h7918bsh41hsmjksq6hheev5j', 1774620162, 'modx.user.contextTokens|a:0:{}'),
('0h9sdq3dk6ngm1bi4b6rpcnb4r', 1776579429, 'modx.user.contextTokens|a:0:{}'),
('0ho2s9lqfjv4sgdihuvrirali4', 1775950677, 'modx.user.contextTokens|a:0:{}'),
('0hpog8je1mu7o7safcock4o81a', 1774033061, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('0i14r8penu4m6bi02jhvvv2trq', 1776837463, 'modx.user.contextTokens|a:0:{}'),
('0i48gcm1u7on0icpth2e9pbtjm', 1774105236, 'modx.user.contextTokens|a:0:{}'),
('0ibqhjgmu972ni6kint6kj9pe9', 1774568386, 'modx.user.contextTokens|a:0:{}'),
('0idghj5ingfrroanvnvlq323ai', 1776502305, 'modx.user.contextTokens|a:0:{}'),
('0istp502459pqnh490ff4oe6rm', 1774195001, 'modx.user.contextTokens|a:0:{}'),
('0j10sv5o9g1lrvfbrs1movhc6e', 1774309727, 'modx.user.contextTokens|a:0:{}'),
('0jiju7h7v96ce0tjj1mfo050tt', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('0jv692uu8p5p4bmqf8hb8ispbu', 1775644309, 'modx.user.contextTokens|a:0:{}'),
('0kbdc56j39oggooi29s3eqgd8g', 1776717431, 'modx.user.contextTokens|a:0:{}'),
('0kjred2096obs60dijtalr7ik0', 1776833772, 'modx.user.contextTokens|a:0:{}'),
('0kvlanirg1grlngm649isi7p40', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('0lgi2skh3k4am9vdqeusrjgd9f', 1776131012, 'modx.user.contextTokens|a:0:{}'),
('0miim2dko9uad9b2kr9qehh4au', 1775053765, 'modx.user.contextTokens|a:0:{}'),
('0mip2o4mk24sapp0pu6rbgsh4m', 1775362873, 'modx.user.contextTokens|a:0:{}'),
('0mm35ljj3pjjmaaf05d7iabl3b', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('0mp5q3ml3i2dhbeptn3fhmq6m5', 1774924153, 'modx.user.contextTokens|a:0:{}'),
('0n218ufmdpnsroh900jolmseps', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('0n3osm11b3o3gnf9vgr3p2dp8q', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('0o20ae818hioeubtqrh8mqsa0j', 1775060002, 'modx.user.contextTokens|a:0:{}'),
('0oi5vvefst7jd2rnncr3lks71g', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('0pao2gtinjej47quad596qljg7', 1776207868, 'modx.user.contextTokens|a:0:{}'),
('0plj77c6vmjqj7kb05jmgf8l6v', 1774264824, 'modx.user.contextTokens|a:0:{}'),
('0pp3n2c9gajot02jqnpqjgb7p6', 1776253227, 'modx.user.contextTokens|a:0:{}'),
('0q928sujddbegvv3e2eu40rehg', 1775535231, 'modx.user.contextTokens|a:0:{}'),
('0r59joohq1rjr3022ovtpjnu1o', 1775548768, 'modx.user.contextTokens|a:0:{}'),
('0rqs7ci65i24g21i2ioui82hor', 1776975303, 'modx.user.contextTokens|a:0:{}'),
('0s0knpa6rt971nsftdjlj6ilqe', 1775557103, 'modx.user.contextTokens|a:0:{}'),
('0s0o0akqb9a5e1vi9kdvbhpvmr', 1774502835, 'modx.user.contextTokens|a:0:{}'),
('0s26v2ktrgu2ptg0t0rl1j2gu3', 1774106944, 'modx.user.contextTokens|a:0:{}'),
('0u2socj4uiefrbh2v3keniab6k', 1777345334, 'modx.user.contextTokens|a:0:{}'),
('0un5n9vfrn9arhtnovfeosgu8a', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('0utbef8sbmbksfvlgbtabv2enf', 1774918802, 'modx.user.contextTokens|a:0:{}'),
('0v52vehcur1m474bakptb26fro', 1775621827, 'modx.user.contextTokens|a:0:{}'),
('0v7em4as8aeqhbpuln85p3udg5', 1777011497, 'modx.user.contextTokens|a:0:{}'),
('0vhhbjag28tu71f66b2agj5v08', 1777081147, 'modx.user.contextTokens|a:0:{}'),
('0vk33pumjmqfokf44vlojkq4vg', 1775306631, 'modx.user.contextTokens|a:0:{}'),
('0vko7gmst29pt4f9t2ls9t30ov', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('10n63behou720ddre2kf2h3iai', 1776582010, 'modx.user.contextTokens|a:0:{}'),
('113tif2iniit680s6gc6338jsb', 1774734126, 'modx.user.contextTokens|a:0:{}'),
('118op3gr6ddi0luiuog6ctvp4p', 1774481962, 'modx.user.contextTokens|a:0:{}'),
('11p8rob6dcmdquequ3jja64kne', 1775604944, 'modx.user.contextTokens|a:0:{}'),
('11vj83672hgg9ti1pklgi88r90', 1774010129, 'modx.user.contextTokens|a:0:{}'),
('12jfhjlleloejt4ooc94qjlk56', 1774477124, 'modx.user.contextTokens|a:0:{}'),
('12p4qq0m9qoeait48ub941f2u3', 1775997840, 'modx.user.contextTokens|a:0:{}'),
('12pfb0qpdpjtgpum6r08kkdngo', 1774502849, 'modx.user.contextTokens|a:0:{}'),
('12qbidaadg53rc5h2vkicu17ir', 1777199243, 'modx.user.contextTokens|a:0:{}'),
('13brdiahrht52donhk1m5kt7v5', 1774356657, 'modx.user.contextTokens|a:0:{}'),
('13croeiuqi65kjc0dbvrdmn6a0', 1776459800, 'modx.user.contextTokens|a:0:{}'),
('14ebpln2erd9ojhe1qnj7kj5u3', 1776860125, 'modx.user.contextTokens|a:0:{}'),
('14ijbkkvnp60js3tbk7ptks4k4', 1775276317, 'modx.user.contextTokens|a:0:{}'),
('14tv7i2327mu9d8patcmkhiddd', 1777250454, 'modx.user.contextTokens|a:0:{}'),
('14u62tmm56108da6l9kn35h3l1', 1774622349, 'modx.user.contextTokens|a:0:{}'),
('15ao8fa6f5hjim2g5mqvurqach', 1775516575, 'modx.user.contextTokens|a:0:{}'),
('15ellquistm71hpj02ebre2rl2', 1776419041, 'modx.user.contextTokens|a:0:{}'),
('15hn35bc5aqkfa0vg1hdapcvvk', 1774552091, 'modx.user.contextTokens|a:0:{}'),
('15ie01groji2pturiqc1iaq95p', 1775917143, 'modx.user.contextTokens|a:0:{}'),
('1604gtb6t2374pk5k45ssamfs3', 1776378164, 'modx.user.contextTokens|a:0:{}'),
('16eep3rku6baqc6r5bjba1elic', 1774106941, 'modx.user.contextTokens|a:0:{}'),
('16uf5mqqjc3o8k88u3d05vhrg8', 1774196223, 'modx.user.contextTokens|a:0:{}'),
('171ns8h9pt0tobboehh7g61vs6', 1775005741, 'modx.user.contextTokens|a:0:{}'),
('177hughf88gb1vfdf8ff24ih19', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('18ih8v83h0qct9vdu7fdh49bhk', 1775371672, 'modx.user.contextTokens|a:0:{}'),
('18p03bhauj0p2lqj7jid3g2h57', 1774333172, 'modx.user.contextTokens|a:0:{}'),
('1abalrs30mmhebr6mtahk3mo2u', 1776203239, 'modx.user.contextTokens|a:0:{}'),
('1abu2k3f6jtap4soea7jf36880', 1776104957, 'modx.user.contextTokens|a:0:{}'),
('1aj9p7gjcod9q10m2m22ijon7d', 1776205093, 'modx.user.contextTokens|a:0:{}'),
('1anhl1b58uf02bh3hv46grdqvt', 1777311659, 'modx.user.contextTokens|a:0:{}'),
('1b52p265v5569a0u3017js375h', 1774368818, 'modx.user.contextTokens|a:0:{}'),
('1baq5k3k3skoo8clgoe7eevmtg', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('1be869s69b4s0du018p08ig5pi', 1775811309, 'modx.user.contextTokens|a:0:{}'),
('1cj9301s1l096635baq8k4ihs3', 1776198467, 'modx.user.contextTokens|a:0:{}'),
('1cr15rirfg5itsj3r3e7mis8qd', 1774087914, 'modx.user.contextTokens|a:0:{}'),
('1d3a3328chdl16bhcrp8dpm935', 1775073549, 'modx.user.contextTokens|a:0:{}'),
('1d6f2bkb3in25n2avgjl93gu1a', 1775290165, 'modx.user.contextTokens|a:0:{}'),
('1dtnt5p5vf2pqn26op3m1k3rtu', 1774080764, 'modx.user.contextTokens|a:0:{}'),
('1e3fp3ha2db20nrivf6i05kbp4', 1775283443, 'modx.user.contextTokens|a:0:{}'),
('1ea35jf2fs1a8v1na25c8rkuv2', 1777103453, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:92:\"Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka\";s:7:\"dropoff\";s:38:\"Nabeta, nabeta, Melsiripura, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-28T11:30\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('1ee1t7qesvk6ltcv81iu5u4v7e', 1774108897, 'modx.user.contextTokens|a:0:{}'),
('1el4g6gbbra8ac8jiq89vop89f', 1776841335, 'modx.user.contextTokens|a:0:{}'),
('1f3q5oe42lcukdh1sd7324r1hf', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('1ffaje4muse35h529fmlesdm4v', 1776518258, 'modx.user.contextTokens|a:0:{}'),
('1fmdbpqbe8ivjievojkujlusdp', 1776494625, 'modx.user.contextTokens|a:0:{}'),
('1fpu1b37pihtpi979ik96i3p69', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('1g0j6hfe2gtaq4g54h64f6isd6', 1775306633, 'modx.user.contextTokens|a:0:{}'),
('1g3cchsntv5q28jua0tcsou1qg', 1774013936, 'modx.user.contextTokens|a:0:{}'),
('1gqvt7jb11fms23h1trqrqqbai', 1776913327, 'modx.user.contextTokens|a:0:{}'),
('1h7qqogcd2c2vug3qln52en382', 1776581092, 'modx.user.contextTokens|a:0:{}'),
('1hj3dpqpbiq6fuaal8nnl051ev', 1776464047, 'modx.user.contextTokens|a:0:{}'),
('1icrmc249okbph8uuadpdgvq1n', 1776524067, 'modx.user.contextTokens|a:0:{}'),
('1ikvr1g57q5i7kevcjqcs1el54', 1774106947, 'modx.user.contextTokens|a:0:{}'),
('1in0p0laf9m10lr0qfaovsknbj', 1777409901, 'modx.user.contextTokens|a:0:{}'),
('1j7j0qlbke3n2nv52kh4qsqa20', 1774502669, 'modx.user.contextTokens|a:0:{}'),
('1jbttkr08s9u8mqhi36qmoqn29', 1775594992, 'modx.user.contextTokens|a:0:{}'),
('1jif80ubv7psdd5rk8bp9qtrui', 1776034470, 'modx.user.contextTokens|a:0:{}'),
('1jmit2q62qt0amrtt42rl5s2c8', 1775997821, 'modx.user.contextTokens|a:0:{}'),
('1jojfio4qqf2opcq5ndjrems01', 1774667278, 'modx.user.contextTokens|a:0:{}'),
('1kh224ss9smaagp72m2e0g6rdk', 1777062923, 'modx.user.contextTokens|a:0:{}'),
('1lcfugdrop0pqf9klltt8urhuo', 1774090254, 'modx.user.contextTokens|a:0:{}'),
('1lk8ld7a42q5lnuak3pvs5j3r3', 1775927544, 'modx.user.contextTokens|a:0:{}'),
('1m6clqncokr3ko5tu3m01qpfj4', 1776450279, 'modx.user.contextTokens|a:0:{}'),
('1m71dma04vt09f9o71ft9lse76', 1776010641, 'modx.user.contextTokens|a:0:{}'),
('1mdsg4bkiudacphk4s7ngtgqou', 1775060675, 'modx.user.contextTokens|a:0:{}'),
('1nc20ne269md1dtcjgrl4hsstr', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('1nvska9v10ghtu2hinpl8ug34b', 1774206404, 'modx.user.contextTokens|a:0:{}'),
('1o3gimdqeit6te9tlohc7nsfpt', 1774156409, 'modx.user.contextTokens|a:0:{}'),
('1okttgt3bd61rj60anrra8rbcm', 1774602458, 'modx.user.contextTokens|a:0:{}'),
('1p0n7p4eg1h88i01edbmc111e6', 1777388627, 'modx.user.contextTokens|a:0:{}'),
('1pprqr0h5b9ruudsufsk6psan1', 1774801375, 'modx.user.contextTokens|a:0:{}'),
('1prcj2slphl2j5c1a723hkblan', 1774575306, 'modx.user.contextTokens|a:0:{}'),
('1q44pkvhtfmvr7gaogk13qairg', 1775193933, 'modx.user.contextTokens|a:0:{}'),
('1q95enk7cj4rap6ktsceec0dql', 1774199015, 'modx.user.contextTokens|a:0:{}'),
('1qaaorvbgjj252ti7doea1ua8q', 1777164349, 'modx.user.contextTokens|a:0:{}'),
('1qh2t5l5tgdo4jao660seq1f6h', 1774497550, 'modx.user.contextTokens|a:0:{}'),
('1r1k0pd58cdj4vjr7ou46k3h11', 1775414633, 'modx.user.contextTokens|a:0:{}'),
('1r3o0pef5riknm1knishmd828d', 1774654811, 'modx.user.contextTokens|a:0:{}'),
('1rkukbqp9ovmdupftqug9pfhqu', 1775157020, 'modx.user.contextTokens|a:0:{}'),
('1s6tqak66ofebaq2g93qc1iqis', 1776217793, 'modx.user.contextTokens|a:0:{}'),
('1s7i2c5q5cbtflbesp1obm2rvt', 1774853919, 'modx.user.contextTokens|a:0:{}'),
('1scqivl9fm5ui0keapi6kbvfbu', 1774796967, 'modx.user.contextTokens|a:0:{}'),
('1skslto3uqeanpjeqpllpj9ha0', 1773921181, 'modx.user.contextTokens|a:0:{}'),
('1tkotjqgumrr9jhk01mo5lj4gi', 1776604674, 'modx.user.contextTokens|a:0:{}'),
('1tnjoj4bvj53thdnt2tuvem81t', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('1um1vgghhb5nsein69v6fh96dk', 1775910786, 'modx.user.contextTokens|a:0:{}'),
('1uoq175s981461a3l5uboq275q', 1775109563, 'modx.user.contextTokens|a:0:{}'),
('1usfppsvr9vs82oqd6pgl0ohjn', 1774635985, 'modx.user.contextTokens|a:0:{}'),
('1v0qt6n6dtq71no6n6vtt4f8v1', 1774507554, 'modx.user.contextTokens|a:0:{}'),
('1v3er6ieqtlsdp1qdthq8ufpaq', 1775622414, 'modx.user.contextTokens|a:0:{}'),
('1va2h6n7sjjnk1qmkmii4gee71', 1774510056, 'modx.user.contextTokens|a:0:{}'),
('1vml5573ni6g7eff6ueuofg50u', 1776736288, 'modx.user.contextTokens|a:0:{}'),
('1vsqqpifca3bs335gfagivoljp', 1774695134, 'modx.user.contextTokens|a:0:{}'),
('1vtd685h8nb1iecf47qe8rvfmv', 1776232914, 'modx.user.contextTokens|a:0:{}'),
('20212hei95glrk63f15ilhoa88', 1775557081, 'modx.user.contextTokens|a:0:{}'),
('20gl81oqr1ef1met4837hip0um', 1775017967, 'modx.user.contextTokens|a:0:{}'),
('20udgacreq2gg47mrn7g7kpeno', 1777067485, 'modx.user.contextTokens|a:0:{}'),
('20va7frgf4tbmih3ufihb2lmlq', 1775481296, 'modx.user.contextTokens|a:0:{}'),
('214pmcpfupuntrr5gra223tnnq', 1776020411, 'modx.user.contextTokens|a:0:{}'),
('21db77vjlvi2ukodlap8vnj2r9', 1774609524, 'modx.user.contextTokens|a:0:{}'),
('2207oepvom20avk9218so7ap4m', 1775429982, 'modx.user.contextTokens|a:0:{}'),
('22l4hqstsn5tlp9pghm0k13pft', 1775328444, 'modx.user.contextTokens|a:0:{}'),
('22ri0jnfl0eh5ps1bbj6vaqj1h', 1774090368, 'modx.user.contextTokens|a:0:{}'),
('23948uqkrqbubs60oksab3462k', 1775374878, 'modx.user.contextTokens|a:0:{}'),
('23l1dp5dupn68pahru1fpbp0o8', 1776022342, 'modx.user.contextTokens|a:0:{}'),
('23mn17q8dhe11bnodrfm90bt7g', 1776375372, 'modx.user.contextTokens|a:0:{}'),
('241ojsst5ibrghe3l1ifq62hrb', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('2430qsbqe2n1socot6lbckeo66', 1774776986, 'modx.user.contextTokens|a:0:{}'),
('244263srdrmup0di4sa6tmm9dv', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('24f1bd405sndbvs7unei2hac2m', 1776645667, 'modx.user.contextTokens|a:0:{}'),
('24il190u7204b1phcoiu3pjj5e', 1774917687, 'modx.user.contextTokens|a:0:{}'),
('24rturm87juoh1t6kq82si30u9', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('24sdc3pbqbuqf30a18ou1bml7p', 1775529655, 'modx.user.contextTokens|a:0:{}'),
('24tvud2r1lq2gmdlv75nig32u0', 1776106303, 'modx.user.contextTokens|a:0:{}'),
('257fom569g0928cp8hj8t5heil', 1774212835, 'modx.user.contextTokens|a:0:{}'),
('258e7ae2lh030j44pihl0j8l04', 1776279634, 'modx.user.contextTokens|a:0:{}'),
('258j14hqbi5oh6jq2tbha6gp5r', 1777072023, 'modx.user.contextTokens|a:0:{}'),
('266vpmhungjrg4eqq3phi4r558', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('26om8jnhmpmk96mg6miqa2325i', 1775213769, 'modx.user.contextTokens|a:0:{}'),
('27011at44k62bjip2kmql2ke4m', 1775995042, 'modx.user.contextTokens|a:0:{}'),
('276dfarlmvnm72h04foofuunvb', 1774239641, 'modx.user.contextTokens|a:0:{}'),
('279h9por7pann3dgi1pdc5b2ql', 1775042880, 'modx.user.contextTokens|a:0:{}'),
('27cnppmjr8d6nbq549t8l98b7b', 1774073113, 'modx.user.contextTokens|a:0:{}'),
('27e2q55v0vbfdrblka2a4vk3ht', 1775060039, 'modx.user.contextTokens|a:0:{}'),
('27gcs6g00mo9l8n6oh17jb12nr', 1777090506, 'modx.user.contextTokens|a:0:{}'),
('27kld7m8bc6bh9ishva3k99dd8', 1775417478, 'modx.user.contextTokens|a:0:{}'),
('27o8iuacmg8gd047motgpb2evb', 1774060480, 'modx.user.contextTokens|a:0:{}'),
('27ogoe3ah05qda40enbpho8rtu', 1776958262, 'modx.user.contextTokens|a:0:{}'),
('288vmf05l9hdkv2edb9rql7qv5', 1777351390, 'modx.user.contextTokens|a:0:{}'),
('28kgtq233md99mqoran05982qm', 1776477885, 'modx.user.contextTokens|a:0:{}'),
('29e1f456h36pp01npilorpdd66', 1776249545, 'modx.user.contextTokens|a:0:{}'),
('29eelqb7hgnavm1tqoas0lpagp', 1773902338, 'modx.user.contextTokens|a:0:{}'),
('29uoef99moplv87ulu2gede22u', 1774368067, 'modx.user.contextTokens|a:0:{}'),
('2a71ela9cl1nbspl79ioe0uksv', 1776711822, 'modx.user.contextTokens|a:0:{}'),
('2ahvf73ds9m5f37u0r03ula3s8', 1777063485, 'modx.user.contextTokens|a:0:{}'),
('2ajvap8cumsiuju01ov5felcnp', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('2akctgiasj0vu2jhm32on4vm7t', 1776151765, 'modx.user.contextTokens|a:0:{}'),
('2ancpibdlsugcjfc6v22gca0dh', 1776245958, 'modx.user.contextTokens|a:0:{}'),
('2au3k6eka74la6ttcn33s70j29', 1775918675, 'modx.user.contextTokens|a:0:{}'),
('2bpn19fsafppkg8amma1bko2vq', 1777374467, 'modx.user.contextTokens|a:0:{}'),
('2bs3b3p4urg7c795kha2t577rv', 1774999023, 'modx.user.contextTokens|a:0:{}'),
('2co898tk8d9s1fhgckbj61cdo2', 1775519809, 'modx.user.contextTokens|a:0:{}'),
('2ctgtc8va131oqjeudm5jjak9s', 1774156325, 'modx.user.contextTokens|a:0:{}'),
('2d175nl0g514453dej5msqhdd4', 1774538245, 'modx.user.contextTokens|a:0:{}'),
('2e6pi1fsb49und94376df271k8', 1776689036, 'modx.user.contextTokens|a:0:{}'),
('2ed8ocmbqeu2u74mf820i019ad', 1775838130, 'modx.user.contextTokens|a:0:{}'),
('2eojvkpvdthh2nu3d1a4bv1scr', 1777328441, 'modx.user.contextTokens|a:0:{}'),
('2f277l9ils0oscjli8cqn6kkdl', 1774926556, 'modx.user.contextTokens|a:0:{}'),
('2f9v1d6c7kvqtva5psb0263mvo', 1774736231, 'modx.user.contextTokens|a:0:{}'),
('2ffufa9osvp8qa4uk1b6rhu48o', 1775570563, 'modx.user.contextTokens|a:0:{}'),
('2fjtimav0lnf54hsfg9oc1l17s', 1775429537, 'modx.user.contextTokens|a:0:{}'),
('2flfi9m4l1jge01osrvgtooepm', 1777301373, 'modx.user.contextTokens|a:0:{}'),
('2g593nv9l3c6fvj9oeul29m481', 1774722014, 'modx.user.contextTokens|a:0:{}'),
('2gh2humfn8nupg3i1mt0skqqnp', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('2gk17fem61d232b6lfqk542bjj', 1776937755, 'modx.user.contextTokens|a:0:{}'),
('2h23h1kd14m5cgc6poogp3k16h', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('2h8pt7sjfgo2krgtd5e5ld3ltq', 1775181616, 'modx.user.contextTokens|a:0:{}'),
('2hdpbq1g37a0egoa575pop7cst', 1775582995, 'modx.user.contextTokens|a:0:{}'),
('2hetajmk22f0c5ilpec7l6qhip', 1774191873, 'modx.user.contextTokens|a:0:{}'),
('2houssd9lihmjqgrlh8l3jirtt', 1776250844, 'modx.user.contextTokens|a:0:{}'),
('2i0ff3vdf8ol433q848d1k3rdp', 1775426561, 'modx.user.contextTokens|a:0:{}'),
('2i4aspgj3lmns5l5slf00ed032', 1776090677, 'modx.user.contextTokens|a:0:{}'),
('2j23lf8d9eejs4qnui5nntrtu8', 1774090301, 'modx.user.contextTokens|a:0:{}'),
('2j7um3a1o95geqkpqrgmbetp4m', 1774095694, 'modx.user.contextTokens|a:0:{}'),
('2jsbefct6ptbgnta836tpscunm', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('2jvg2osf0dd13nteujknnhjgj7', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('2lff3s4saf84ko028oq1foakv2', 1774111166, 'modx.user.contextTokens|a:0:{}'),
('2lm984htlul67ebm0tj39193fc', 1775678695, 'modx.user.contextTokens|a:0:{}'),
('2m0als26eilmj9osef6avl5tco', 1775250787, 'modx.user.contextTokens|a:0:{}'),
('2m4ndrfqaqj0igappfiidbin46', 1774373494, 'modx.user.contextTokens|a:0:{}'),
('2mr20prspldr7rt5rvdn1l58jc', 1777241816, 'modx.user.contextTokens|a:0:{}'),
('2n50pvpnqi47j35b4rpni10br5', 1773877748, 'modx.user.contextTokens|a:0:{}'),
('2n9dc848asocnusgcl936o8g4t', 1777448888, 'modx.user.contextTokens|a:0:{}'),
('2ngneglcja43tl8i7ijl5p5kbt', 1774166242, 'modx.user.contextTokens|a:0:{}'),
('2nrm5aqar58tfl919mv1nhtf76', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('2nsfr83a1pd8tdk114q58h7gqf', 1776664918, 'modx.user.contextTokens|a:0:{}'),
('2o0kash2bugbc3oro4sdb6u2d1', 1777278601, 'modx.user.contextTokens|a:0:{}'),
('2oqgev3r0qf0im90hsgtuk3i4q', 1774013423, 'modx.user.contextTokens|a:0:{}'),
('2p0enb6bnji4sium7uo442t09j', 1774676120, 'modx.user.contextTokens|a:0:{}'),
('2p10k1theblon83nelc4letrdi', 1775432887, 'modx.user.contextTokens|a:0:{}'),
('2p1o2lt7hai1dblk3697plpaj7', 1777019596, 'modx.user.contextTokens|a:0:{}'),
('2p34t4ibg74kqs5la3021t4025', 1776333315, 'modx.user.contextTokens|a:0:{}'),
('2p7ios4e3orb1agdbjsj909c6n', 1774429623, 'modx.user.contextTokens|a:0:{}'),
('2qbf5ui9reklcd55q943s41822', 1774764411, 'modx.user.contextTokens|a:0:{}'),
('2qd08bb72s4nqk057ffd6tpbsj', 1775545936, 'modx.user.contextTokens|a:0:{}'),
('2rqvk9icb5ad7cm2fq6tnfjhrc', 1776894532, 'modx.user.contextTokens|a:0:{}'),
('2rtd97n88jfo6kgbuu439s7kvs', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('2t5cf0rpgs0ng110g1h1krolak', 1776399707, 'modx.user.contextTokens|a:0:{}'),
('2tprlhf15n7g80163flqsqohqq', 1777388627, 'modx.user.contextTokens|a:0:{}'),
('2v6pkqj5vqjn63o7bdc37f5oub', 1775765437, 'modx.user.contextTokens|a:0:{}'),
('2ve3huh7c8opufs8lji3cn8mpv', 1776717430, 'modx.user.contextTokens|a:0:{}'),
('2vi1ja3pk238pqf7eap760g30j', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('2vndgsmo6fm76diusuucpbebug', 1774307772, 'modx.user.contextTokens|a:0:{}'),
('2vrjntu6qq48lurgn26bq5iatn', 1777423824, 'modx.user.contextTokens|a:0:{}'),
('30s9fog7di6g0h12omudsob4n3', 1776414857, 'modx.user.contextTokens|a:0:{}'),
('30sq1idd6qg5685n3do157ud1s', 1774190588, 'modx.user.contextTokens|a:0:{}'),
('30vr709q7cvrsp11hm0v23qnjt', 1775757113, 'modx.user.contextTokens|a:0:{}'),
('310aodb80buft17apdpfvjn879', 1776812125, 'modx.user.contextTokens|a:0:{}'),
('312fe50u9h6pqo30ios1l5gjm3', 1777296201, 'modx.user.contextTokens|a:0:{}'),
('312fkc6l8im9gdppgi3cnv5uig', 1776426622, 'modx.user.contextTokens|a:0:{}'),
('31i9b1mbiuib5s5sqbqdfatf3j', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('31kpg82l5uka1vslm3l0eigalp', 1774090521, 'modx.user.contextTokens|a:0:{}'),
('31ml3ouarfnqsr3t696668hhpk', 1775131403, 'modx.user.contextTokens|a:0:{}'),
('31qin2vdvto5m18rg0j6jfsl5s', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('31vdi1jg6l7cmacvbjvetsl5jf', 1777135903, 'modx.user.contextTokens|a:0:{}'),
('322vv1n321o4nkcmth32fk87q1', 1777417788, 'modx.user.contextTokens|a:0:{}'),
('327mff8sivprn92533bsnhqqeb', 1776622358, 'modx.user.contextTokens|a:0:{}'),
('333ns4c8hercp6uspkbhm1mdh5', 1777156401, 'modx.user.contextTokens|a:0:{}'),
('33g37b4ks6ihtb01d4aj4ral6j', 1776426537, 'modx.user.contextTokens|a:0:{}'),
('33ksb7l39vvgb88uhgc8pp5298', 1777243301, 'modx.user.contextTokens|a:0:{}'),
('33m7v5523pf6g7lffsib32b55o', 1774339584, 'modx.user.contextTokens|a:0:{}'),
('33sf1cnbao8l60dodlotrakcdo', 1776208109, 'modx.user.contextTokens|a:0:{}'),
('33t20jptojhunjsdjihe57oott', 1776149911, 'modx.user.contextTokens|a:0:{}'),
('341potrkgqgcddd7coh74lug4b', 1776962353, 'modx.user.contextTokens|a:0:{}'),
('342s1nk09v9cbsr5iq16pab4qo', 1776157555, 'modx.user.contextTokens|a:0:{}'),
('344pri0po6s67aig6uv0mfvroe', 1774904669, 'modx.user.contextTokens|a:0:{}'),
('3498oqbp7r7j05vi422nj99hlo', 1776334673, 'modx.user.contextTokens|a:0:{}'),
('34hkfhhkmqhhh5k3ucdc86ifq1', 1775772211, 'modx.user.contextTokens|a:0:{}'),
('359qh2rnhe2bg16aiophgshvcf', 1775350107, 'modx.user.contextTokens|a:0:{}'),
('35g521bhmqqtlenka2crlucssc', 1774498115, 'modx.user.contextTokens|a:0:{}'),
('362uo6f1fkd0s4ndcsd1a01v6h', 1774520577, 'modx.user.contextTokens|a:0:{}'),
('364t6kiqjm514b02ncc0ftm343', 1777011496, 'modx.user.contextTokens|a:0:{}'),
('3697gq7e1nbuh751td46v5klhq', 1774764083, 'modx.user.contextTokens|a:0:{}'),
('36cvtfslqpoeqsn7nue4ej2j9a', 1777382388, 'modx.user.contextTokens|a:0:{}'),
('36g4o36jn18o99osiktgq0glt7', 1774147361, 'modx.user.contextTokens|a:0:{}'),
('36mna31to92at2h5tm9phu6t8q', 1777206648, 'modx.user.contextTokens|a:0:{}'),
('36p2gpnetss9o1n5qb1p90proi', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('38174jj619d9t62lp97d7a4sc4', 1775652140, 'modx.user.contextTokens|a:0:{}'),
('388evrun2qrn49669vm8fs3u4o', 1775411957, 'modx.user.contextTokens|a:0:{}'),
('38g92i7reumm9smnlplpuktupf', 1777212666, 'modx.user.contextTokens|a:0:{}'),
('38l9svlokvac719k6o4po3eqo6', 1773968582, 'modx.user.contextTokens|a:0:{}'),
('394i2seaasnb4guvvg4qopggrl', 1777126813, 'modx.user.contextTokens|a:0:{}'),
('39rnfjiusabv20mbn46veb1tik', 1775017329, 'modx.user.contextTokens|a:0:{}'),
('3b7qb3lhbhtjtilt0mmi9oskqk', 1774856370, 'modx.user.contextTokens|a:0:{}'),
('3bdf12kqohvaq2h69eapfkb05v', 1775059964, 'modx.user.contextTokens|a:0:{}'),
('3bjsn2cldot9fvssod3mc809e3', 1777454501, 'modx.user.contextTokens|a:0:{}'),
('3cef29mfpqjff2srafk7kjrrs7', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('3chjna97dm2k2ult0satbuatnh', 1774108955, 'modx.user.contextTokens|a:0:{}'),
('3cin8b2e0i3bt0ld4ad2vn5b20', 1775386744, 'modx.user.contextTokens|a:0:{}'),
('3cj7jhcrt1jrj3k5rvsqasj65u', 1776766837, 'modx.user.contextTokens|a:0:{}'),
('3clp5h07bt6lr2vn01vibpn782', 1776614279, 'modx.user.contextTokens|a:0:{}'),
('3d0etvp8chn3rqcg72fci0i713', 1777133306, 'modx.user.contextTokens|a:0:{}'),
('3d1h5i6mtmvhcjj25cbgmb7sr4', 1775083341, 'modx.user.contextTokens|a:0:{}'),
('3d2hpc5qb1rtf16nlbcahej9hj', 1775601284, 'modx.user.contextTokens|a:0:{}'),
('3dsqmphscbqa8fmo7vs2rbr8sq', 1775019310, 'modx.user.contextTokens|a:0:{}'),
('3einugu5he3mm0324rhtg65mkj', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('3ekognmn191n0t3ie5nbga3b4r', 1775072008, 'modx.user.contextTokens|a:0:{}'),
('3et7utfsnnchute388kg98otc5', 1776728798, 'modx.user.contextTokens|a:0:{}'),
('3etv3g63r7b6rrmrqgteonff62', 1776835104, 'modx.user.contextTokens|a:0:{}'),
('3f08qd61a37ndhhl7qatd0gnc9', 1776249570, 'modx.user.contextTokens|a:0:{}'),
('3fl6g7ona6hsa9fpm4m554vpi4', 1775142501, 'modx.user.contextTokens|a:0:{}'),
('3fvkacbcdvpi51kh8sl9fvnsvg', 1774195461, 'modx.user.contextTokens|a:0:{}'),
('3fvoqfj082k33016v6hvntnku2', 1774417638, 'modx.user.contextTokens|a:0:{}'),
('3g0cnk0ag37j8fdatl353hp8mk', 1775535231, 'modx.user.contextTokens|a:0:{}'),
('3g9r0275i5mp3apgj8njuf9stb', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('3gg69bfrd9rv14c619to4b1bop', 1775865614, 'modx.user.contextTokens|a:0:{}'),
('3giluirvrbo351ap1t1cj3ices', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('3hljgk3aq0dqhn4klc3jse1fup', 1777364931, 'modx.user.contextTokens|a:0:{}'),
('3ho7b9l81u94i7rk6hc7l9tnvb', 1776052703, 'modx.user.contextTokens|a:0:{}'),
('3hr9j671i9rr653mb3ep750vlb', 1775585057, 'modx.user.contextTokens|a:0:{}'),
('3i5u9co243n1qpe6q88srqno3e', 1775583130, 'modx.user.contextTokens|a:0:{}'),
('3i77m0o8k7umv2h3v1iblr4o7c', 1775859491, 'modx.user.contextTokens|a:0:{}'),
('3kfo998b206re21j935v97ag7n', 1774845266, 'modx.user.contextTokens|a:0:{}'),
('3l98h0dlf20kpq2b81mkml2750', 1777299159, 'modx.user.contextTokens|a:0:{}'),
('3mglprtqkctjt76oiv9ar86kfl', 1774454712, 'modx.user.contextTokens|a:0:{}'),
('3n1fb77ont4er0qm5k4a3hm90p', 1774236111, 'modx.user.contextTokens|a:0:{}'),
('3n8pjr37imu980k4bcagb2n7hd', 1775692657, 'modx.user.contextTokens|a:0:{}'),
('3na043mgp204ce3h79ji6tfvf3', 1775312063, 'modx.user.contextTokens|a:0:{}'),
('3nhp9ki7vekpm5dse0i8encaj4', 1775996345, 'modx.user.contextTokens|a:0:{}'),
('3o3u95uept54qsud5p6js0d2vu', 1776658625, 'modx.user.contextTokens|a:0:{}'),
('3orqvaeftn70m9590qk9a5t09q', 1775718777, 'modx.user.contextTokens|a:0:{}'),
('3osn1fci6b3qdp4pgd7cpbj5hr', 1777461772, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('3otr6990qdjj13tp0dd4uj3o00', 1774248980, 'modx.user.contextTokens|a:0:{}'),
('3p6256811dj1qm16fe4h9dujnb', 1774988384, 'modx.user.contextTokens|a:0:{}'),
('3pc7mm75rs6lm0tk2o318e2cas', 1776185489, 'modx.user.contextTokens|a:0:{}'),
('3pgpmpct1qomg6up435ejm868n', 1774715193, 'modx.user.contextTokens|a:0:{}'),
('3pnbuebh1j0nj39gignn0v0cjc', 1776106290, 'modx.user.contextTokens|a:0:{}'),
('3prd0ppggei19sgmp2ksh20kch', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('3q0tmathngnb4oadla77lpn10b', 1774983451, 'modx.user.contextTokens|a:0:{}'),
('3q3egssv8v90jfsqr29oogum7l', 1774334441, 'modx.user.contextTokens|a:0:{}'),
('3qq3t8qf4uquvjet9d7ho362c9', 1775143863, 'modx.user.contextTokens|a:0:{}'),
('3r4baq9nri9q3lp79gfe7u4o59', 1774706033, 'modx.user.contextTokens|a:0:{}'),
('3r8jse4kpfcl2b84gtv5rfiind', 1774802814, 'modx.user.contextTokens|a:0:{}'),
('3rae11sn5ec4lcrkepgh4octks', 1774001907, 'modx.user.contextTokens|a:0:{}'),
('3rbe9gq8joju5ido16ajg1qba1', 1775916069, 'modx.user.contextTokens|a:0:{}'),
('3rcbv77au5gop8f2euibbehrj9', 1774384195, 'modx.user.contextTokens|a:0:{}'),
('3rh11uhit6m8uvvuktr7jta8ie', 1774060479, 'modx.user.contextTokens|a:0:{}'),
('3rj8ih4j9ldl6fhafjmrlgrucq', 1776450279, 'modx.user.contextTokens|a:0:{}'),
('3rminjvdsiu1qb6sja1u39mh93', 1775275247, 'modx.user.contextTokens|a:0:{}'),
('3satvsgk5qa6bu917lbg11tqc5', 1775287851, 'modx.user.contextTokens|a:0:{}'),
('3t9uqdtvvecii37603kk3h642p', 1774455825, 'modx.user.contextTokens|a:0:{}'),
('3tghibmh6pqa42tr0emmd94v4u', 1776526236, 'modx.user.contextTokens|a:0:{}'),
('3tnubqolcfukvkv45r521quad5', 1776999968, 'modx.user.contextTokens|a:0:{}'),
('3u76s4cm13eqc6r90rmgnvoqvt', 1777308713, 'modx.user.contextTokens|a:0:{}'),
('3ulcvkg50e79mir5suvuftu6ll', 1774347031, 'modx.user.contextTokens|a:0:{}'),
('3vfsmi9jjamuub53fq2nupbck7', 1777013401, 'modx.user.contextTokens|a:0:{}'),
('3vqo7qnojeo6i34gk1q01d8pn4', 1775751584, 'modx.user.contextTokens|a:0:{}'),
('4022ae3ku6tlqtu3u84i9ldthd', 1776026503, 'modx.user.contextTokens|a:0:{}'),
('403rh6bdd6o3euev0n2ed6a0qj', 1776489229, 'modx.user.contextTokens|a:0:{}'),
('407sgudjpkfb5jajj0dnt8s0t7', 1773995352, 'modx.user.contextTokens|a:0:{}'),
('40s343nu3bjt7ftkbloludt91c', 1775263533, 'modx.user.contextTokens|a:0:{}'),
('413c0hai70pehacv10u95ri7pm', 1774096497, 'modx.user.contextTokens|a:0:{}'),
('42bir4jfd9s4n7fvvh9lglfh04', 1776622356, 'modx.user.contextTokens|a:0:{}'),
('432sb914032tdkldd0ocq1rubq', 1776106642, 'modx.user.contextTokens|a:0:{}'),
('43dc40ddclpq1icd7kjdgi9q15', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('43spoi2g6vhldnra9anp4u2b3a', 1773930468, 'modx.user.contextTokens|a:0:{}'),
('443ia2kb5cfatgbguiq7cv1ds1', 1776097712, 'modx.user.contextTokens|a:0:{}'),
('4443vtd6m3i6skatlqnhs4pdkh', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('44a18ddi2ff571ufq996r4v1i4', 1777226709, 'modx.user.contextTokens|a:0:{}'),
('44db4p0k2b8f8444naf3gfsce1', 1776827242, 'modx.user.contextTokens|a:0:{}'),
('44fjlvdhrndn3pqhgmp5ae5frv', 1776279623, 'modx.user.contextTokens|a:0:{}'),
('4503nlk0dfsdp8rb2jbsgm9m9a', 1777881759, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_169f84de40b4b16.74515026\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:10:{i:0;s:23:\"69f84df545e479.02349474\";i:1;s:23:\"69f84e8103adb4.89284889\";i:2;s:23:\"69f85008bc2967.10186543\";i:3;s:23:\"69f850ab9b0d87.39060715\";i:4;s:23:\"69f850b066b652.72690548\";i:5;s:23:\"69f850f5749937.77655348\";i:6;s:23:\"69f8513f2ebc79.55801305\";i:7;s:23:\"69f852285db1e7.92548189\";i:8;s:23:\"69f85251b5e7a1.05230255\";i:9;s:23:\"69f8529f1e4956.26398197\";}'),
('450vh6ditt15po147g3vh8ja9u', 1775300661, 'modx.user.contextTokens|a:0:{}'),
('4571mur3qvi3r67jlmt8no47df', 1773934769, 'modx.user.contextTokens|a:0:{}'),
('45b7ke6qi9mjmlcrbuikd0fkon', 1775874006, 'modx.user.contextTokens|a:0:{}'),
('45rhfhp1tasunn7b19dd52u62d', 1775117992, 'modx.user.contextTokens|a:0:{}'),
('4673s7f8hroev5atekfkda9m33', 1777295921, 'modx.user.contextTokens|a:0:{}'),
('46ls26qkmku28faubqdtctluan', 1774269576, 'modx.user.contextTokens|a:0:{}'),
('46qlp2vusgs88eb76hitmolqdh', 1774412182, 'modx.user.contextTokens|a:0:{}'),
('46rb035itcs4bbc6ipqpj130c9', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('489mcjfsrdskvo74drkmn851go', 1774817783, 'modx.user.contextTokens|a:0:{}'),
('48tmfg46dndf6ik5s01aqld5bh', 1774518317, 'modx.user.contextTokens|a:0:{}'),
('495dbge02mpvl86mi5ed3i9lvu', 1775744869, 'modx.user.contextTokens|a:0:{}'),
('49bnfh1olq682e92b7mqs1q266', 1775492987, 'modx.user.contextTokens|a:0:{}'),
('49tosmu7m2r5remc553fa5nah2', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('4a3hmvbvfge5o7fqrvi14vm9qj', 1774100044, 'modx.user.contextTokens|a:0:{}'),
('4a4ukkv29vlqtgrs3su86l9t28', 1777456719, 'modx.user.contextTokens|a:0:{}'),
('4a9hvm4c3h8rs1jom3ed7nh5ak', 1774347031, 'modx.user.contextTokens|a:0:{}'),
('4alv0jgedr89mpe0dn09vckahg', 1775766631, 'modx.user.contextTokens|a:0:{}'),
('4b3r63nar89gftee0gqb1o104o', 1776628559, 'modx.user.contextTokens|a:0:{}'),
('4baleobu0cfbrtcs4qel0e5jv8', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('4bd6g1fpicqasdvms56bp18s20', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('4bi5ajha3tqu97h4g3m3atpdbq', 1775988995, 'modx.user.contextTokens|a:0:{}'),
('4bjf4p9dhpuk6f7bbbnppqafgg', 1774617484, 'modx.user.contextTokens|a:0:{}'),
('4bn56mv8gsfmhe57nh7e2dqko9', 1775516575, 'modx.user.contextTokens|a:0:{}'),
('4bt7pog7rul2hjbgmrnkc6lkac', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('4c62jf8f4ku6qa257327koifi7', 1774090292, 'modx.user.contextTokens|a:0:{}'),
('4c6s69ak3ob34nl3fprj2l3rug', 1774091442, 'modx.user.contextTokens|a:0:{}'),
('4cci5eh8j88o0mvg089lqoh1b0', 1775776296, 'modx.user.contextTokens|a:0:{}'),
('4cd1v043sdlgjjqcn9aubb8chg', 1775728304, 'modx.user.contextTokens|a:0:{}'),
('4cqnbni1jejpga9gd95tuq5h9p', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('4db82lj44ob9klnafsbh01lpkk', 1777261399, 'modx.user.contextTokens|a:0:{}'),
('4dgu9u3s3k0u67dmbmk95et2jb', 1774615557, 'modx.user.contextTokens|a:0:{}'),
('4dtatrs7rcud5od3mcu92mnad3', 1776841694, 'modx.user.contextTokens|a:0:{}'),
('4e60nbmv4sbirppep5opvbpqsd', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('4ea65n27uhltd23g2u0hj9le6m', 1777081166, 'modx.user.contextTokens|a:0:{}'),
('4efgrgkp88cvckemlikuksaed8', 1777423824, 'modx.user.contextTokens|a:0:{}'),
('4fqao904opjoe8ilr47fesag6t', 1775936584, 'modx.user.contextTokens|a:0:{}'),
('4fr0liahg4rm20tc3df6rl3tjj', 1774510354, 'modx.user.contextTokens|a:0:{}'),
('4fvek34don0mcbl64i9bp2cb2j', 1777441137, 'modx.user.contextTokens|a:0:{}'),
('4g0spavmf28tfajq904rncst0f', 1775733451, 'modx.user.contextTokens|a:0:{}'),
('4g4ch3ilqttb6t6ic3qc363qa4', 1776865886, 'modx.user.contextTokens|a:0:{}'),
('4gihcdtmruekba7sdrfp8f60av', 1777132714, 'modx.user.contextTokens|a:0:{}'),
('4gset6t87slstb9ntu34oo9adc', 1774390732, 'modx.user.contextTokens|a:0:{}'),
('4hcu6p7o2r3api9pq0etvrb40m', 1776524400, 'modx.user.contextTokens|a:0:{}'),
('4hj41q0d0po4aq9l6r9dr4a7rg', 1774143743, 'modx.user.contextTokens|a:0:{}'),
('4huhci1er41in21ov880suh806', 1775077903, 'modx.user.contextTokens|a:0:{}'),
('4i0eauedogt82ilt3s7ovucdf5', 1774534794, 'modx.user.contextTokens|a:0:{}'),
('4i36idctdsd34ah66knjavgh1c', 1774575621, 'modx.user.contextTokens|a:0:{}'),
('4i4n78mpd1p06nn0id3lp9716g', 1775770018, 'modx.user.contextTokens|a:0:{}'),
('4i81r65jhocdtl60lirvkvjkbc', 1774449353, 'modx.user.contextTokens|a:0:{}'),
('4id5t6qe6j9m1end0827j8rtep', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('4ig8s8m4js9iskh4ev36uqbck0', 1775470609, 'modx.user.contextTokens|a:0:{}'),
('4iuucnno03gvi0ib5afq9fcut1', 1776446020, 'modx.user.contextTokens|a:0:{}'),
('4j3re2b5hh8255hobglkno970q', 1773924132, 'modx.user.contextTokens|a:0:{}'),
('4j5ep1g2rof8reudlbstoi037i', 1776024867, 'modx.user.contextTokens|a:0:{}'),
('4ja7mg8svng0hpr3otq8unrn6k', 1776708888, 'modx.user.contextTokens|a:0:{}'),
('4jqliad51thfdrh97s644jdujq', 1776737770, 'modx.user.contextTokens|a:0:{}'),
('4jvq63q770ql94p71gg7a8glj6', 1776029273, 'modx.user.contextTokens|a:0:{}'),
('4jvts9n642dast2drvf3dasjdk', 1774474355, 'modx.user.contextTokens|a:0:{}'),
('4k6dlkmjvj5cgcdu6ttq2gop0a', 1775819159, 'modx.user.contextTokens|a:0:{}'),
('4keh7vkqd6d6deq3lk18jtlk3h', 1777038575, 'modx.user.contextTokens|a:0:{}'),
('4l12r1lsolktnlcgbha2fr74ro', 1775514024, 'modx.user.contextTokens|a:0:{}'),
('4l2hpsre6t5qo1ma8vou7us3mr', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('4ldfpl1vk8g6ho8mm4lkqin7h6', 1777204765, 'modx.user.contextTokens|a:0:{}'),
('4lu7iajcf8b3vg68c1e2n75l74', 1774615557, 'modx.user.contextTokens|a:0:{}'),
('4m2m8176mrn30a8gndo193ltvf', 1775261210, 'modx.user.contextTokens|a:0:{}'),
('4mefnv1mojtoapk7fiao4lamcp', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('4moul8tcn468u60pm77c5909iv', 1777345334, 'modx.user.contextTokens|a:0:{}'),
('4msftc3gk4nqk0j7rnq1k53vd1', 1776419025, 'modx.user.contextTokens|a:0:{}'),
('4nh5ghnaa24j7g52vlu7rgtprv', 1776428395, 'modx.user.contextTokens|a:0:{}'),
('4nij5bm3b63r3bbaf4oj9h7njf', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('4nu820muso73po2qdvtt8feaq7', 1776831399, 'modx.user.contextTokens|a:0:{}'),
('4oas75a1mq6p247vci7sqtli05', 1775019459, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:67:\"Anantara Kalutara Resort, Saint Sebastian Road, Kalutara, Sri Lanka\";s:7:\"dropoff\";s:146:\"Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-02T07:00\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('4obd08gdhrmpv1muapmiunq0oj', 1775683267, 'modx.user.contextTokens|a:0:{}'),
('4phv0d0lheggncuh2vsmqj8jk1', 1775882010, 'modx.user.contextTokens|a:0:{}'),
('4ptuvpdrjrkp72na8g0gdmquif', 1773972896, 'modx.user.contextTokens|a:0:{}'),
('4q8nepq8nh0795p6b92r9oi17r', 1774057627, 'modx.user.contextTokens|a:0:{}'),
('4qkifo23nrc5tf1pc3qfe0spu0', 1775297142, 'modx.user.contextTokens|a:0:{}'),
('4qsdfv98nuu7hada0c9j93ai98', 1774941944, 'modx.user.contextTokens|a:0:{}'),
('4qtbd9jrl4106q3gvda3g830ge', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('4qv4bhlfgdeclavt7l2epdnhdl', 1776537158, 'modx.user.contextTokens|a:0:{}'),
('4r4gfsjf2ec1132ur4bh1uscak', 1774095345, 'modx.user.contextTokens|a:0:{}'),
('4rfjbeceeu3pp389m35kprl0fe', 1774660848, 'modx.user.contextTokens|a:0:{}'),
('4rv3uvhcattptg5uitf7se14vk', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('4sfe5dktqgt0hnk5n2a3cl8mp3', 1776829882, 'modx.user.contextTokens|a:0:{}'),
('4si0cukvhvtgohm3pmp89rujoq', 1774857830, 'modx.user.contextTokens|a:0:{}'),
('4sir0l8us5ajjqvpdpvnkva330', 1775628768, 'modx.user.contextTokens|a:0:{}'),
('4softblk81cd6v6m0hgplhohla', 1775492267, 'modx.user.contextTokens|a:0:{}'),
('4t5km2jomiv4pj8gfluugsre3b', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('4ubvkgi1akulb3s81j2aro036q', 1776870424, 'modx.user.contextTokens|a:0:{}'),
('4udsso9nvmahjbt3u7d4vlfam2', 1774593465, 'modx.user.contextTokens|a:0:{}'),
('4uoonpgtpe7ahqtnrdodgjc4kn', 1774263108, 'modx.user.contextTokens|a:0:{}'),
('4uu4u37d666dva68kggn00m1s9', 1775450622, 'modx.user.contextTokens|a:0:{}'),
('4v5g9p8goobmvn89run9vq5e6e', 1774798085, 'modx.user.contextTokens|a:0:{}'),
('4v6uf9n3kpimmt8lf749kt3oat', 1777215652, 'modx.user.contextTokens|a:0:{}'),
('4v8ajb28sr8i3o9ro08gn4qleh', 1774801353, 'modx.user.contextTokens|a:0:{}'),
('4v8l43oesv8um75tj6j4ho1jmf', 1777004493, 'modx.user.contextTokens|a:0:{}'),
('4vfdhlfk9o1v6qf28mp9j8jp1u', 1775149268, 'modx.user.contextTokens|a:0:{}'),
('4vj0s15jmvge6r8sjkbvse7l4b', 1775997851, 'modx.user.contextTokens|a:0:{}'),
('5029po8ub528ktjolkcdjjif3s', 1774144059, 'modx.user.contextTokens|a:0:{}'),
('50f10v349mdl93g0gd12i7ckaj', 1775256558, 'modx.user.contextTokens|a:0:{}'),
('50kt1ukoti09k9m1862v9lq9l4', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('50uil3n8tqdnbstmle1v9hraj4', 1774745243, 'modx.user.contextTokens|a:0:{}'),
('5130d60lhmun4oe450ga28p6ht', 1774417640, 'modx.user.contextTokens|a:0:{}'),
('519meqvfmb005jmg1ivntf1lpv', 1774991058, 'modx.user.contextTokens|a:0:{}'),
('51s6vheaapsql3s3qu6g25sh0g', 1774170756, 'modx.user.contextTokens|a:0:{}'),
('51ujsi970n3o33ip244glrpp4f', 1774903384, 'modx.user.contextTokens|a:0:{}'),
('529t7p1c5kpdh6kgc4d84v91r3', 1773857433, 'modx.user.contextTokens|a:0:{}'),
('52c51419ueuam1c9ddr85cidqa', 1774085012, 'modx.user.contextTokens|a:0:{}'),
('52kgt72jfas6o58h8m2teed79q', 1776400669, 'modx.user.contextTokens|a:0:{}'),
('533a9rdb0hdatotjb46he5dkju', 1775856373, 'modx.user.contextTokens|a:0:{}'),
('538hhacgsfrvugmehe45ns96o5', 1774706032, 'modx.user.contextTokens|a:0:{}'),
('53983cl1e64jmcphu9t30gqn0u', 1775649477, 'modx.user.contextTokens|a:0:{}'),
('53nk82qrq3npt81fhldlpgsp1j', 1776365533, 'modx.user.contextTokens|a:0:{}'),
('53rtivasn7dna982alo7jsiob4', 1775002994, 'modx.user.contextTokens|a:0:{}'),
('53vcra6tho5jkf4cbmb0ejifmr', 1775910428, 'modx.user.contextTokens|a:0:{}'),
('542s6h0j0osqak8e40dl13sknk', 1773940480, 'modx.user.contextTokens|a:0:{}'),
('54kmba9enql4nmug9vpk4urkko', 1775295327, 'modx.user.contextTokens|a:0:{}'),
('54tml6c9epjsdgibvfummh1ia2', 1773999717, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:2;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_169bd1665ac8769.70350468\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('5552fcc875cvmqlat4bo3sfvdn', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('556lr7snbs024bkd1gkakfo6el', 1774196102, 'modx.user.contextTokens|a:0:{}'),
('5573g8jji8i5ftqkpu6fvicspg', 1775438583, 'modx.user.contextTokens|a:0:{}'),
('55kjes7ucaeae8ttjd0s027qd8', 1774195017, 'modx.user.contextTokens|a:0:{}'),
('55su2k4sbsctnb7bj0vbdlll6j', 1774856955, 'modx.user.contextTokens|a:0:{}'),
('56i1qrjhboro8261tn1cta9am6', 1776203781, 'modx.user.contextTokens|a:0:{}'),
('56inevp9f0ru058q53s874b25v', 1776711820, 'modx.user.contextTokens|a:0:{}'),
('57k7cum8qi80bu02v6i06voomq', 1776786515, 'modx.user.contextTokens|a:0:{}'),
('57mc5gev6eqnei0mlv4kgdv6q4', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('5930k309fr2ucg1q7g1id0drvs', 1774285023, 'modx.user.contextTokens|a:0:{}'),
('5969smkpj2rm4s5gq7pbsb8li4', 1774031972, 'modx.user.contextTokens|a:0:{}'),
('596obe31p8vjeehiigmuva6rkf', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('59atverdp2ereufv9m8edl4mec', 1774373494, 'modx.user.contextTokens|a:0:{}'),
('59pgvi947q97p5jlhqj4ab5e2e', 1775635641, 'modx.user.contextTokens|a:0:{}'),
('5a9lod44gf2e7l0vkob2rs2kr2', 1774801353, 'modx.user.contextTokens|a:0:{}'),
('5ac5s7soqupsj7kh328no6kkqg', 1777278302, 'modx.user.contextTokens|a:0:{}'),
('5af2jath6k0r9dhhfnht481rnd', 1776717672, 'modx.user.contextTokens|a:0:{}'),
('5b0ques8schjn7dn4mcuvl7lad', 1775350107, 'modx.user.contextTokens|a:0:{}'),
('5bctgj77kb3bbnm63ub49iu36u', 1774362236, 'modx.user.contextTokens|a:0:{}'),
('5bjf87c2kbvtetl74cm3jdqkg6', 1777203497, 'modx.user.contextTokens|a:0:{}'),
('5blu1ndjck8cbll04p2dnkei7j', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('5c18mv87t2rtfbp6uqe9vk2rev', 1775644311, 'modx.user.contextTokens|a:0:{}'),
('5cpfrbp2a9ar7bsugrofg1l7js', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('5csgmdgmvhd7k2sti1phm6mp44', 1776118853, 'modx.user.contextTokens|a:0:{}'),
('5d2fssu2vj5ar4p5ln48cukkak', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('5d67mkd5mg9p7qijtao4l4uju6', 1775773180, 'modx.user.contextTokens|a:0:{}'),
('5d7kaooh32322ngehcdfbi594g', 1776400815, 'modx.user.contextTokens|a:0:{}'),
('5d96gjtnt497pmcji7pd6uc7mo', 1774088217, 'modx.user.contextTokens|a:0:{}'),
('5dhn0r5scc832eop7t4cp639ja', 1776461983, 'modx.user.contextTokens|a:0:{}'),
('5dkp07b08vbi5sguj109cgq92u', 1775501124, 'modx.user.contextTokens|a:0:{}'),
('5dtqlt8m9g82hf2dur4mpotfmn', 1775372039, 'modx.user.contextTokens|a:0:{}'),
('5e8aqt11c2541galhdotpvj9io', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('5e9udekdr2efrndn1djbn3en01', 1775438584, 'modx.user.contextTokens|a:0:{}'),
('5echn0ngdj32su8ace0uf64bo0', 1775184589, 'modx.user.contextTokens|a:0:{}'),
('5efq8n0j1cmmludio3068raivt', 1773850658, 'modx.user.contextTokens|a:0:{}'),
('5eqv8dtfqnt8qg5v0v2kgk8ou1', 1774974160, 'modx.user.contextTokens|a:0:{}'),
('5eut93d9npfc4944b7mfv2rnqj', 1776547779, 'modx.user.contextTokens|a:0:{}'),
('5fhkfv1bb3s25mntrqsj3esv8e', 1777067459, 'modx.user.contextTokens|a:0:{}'),
('5fndsjgdea7362kv7ha4unino5', 1774942911, 'modx.user.contextTokens|a:0:{}'),
('5ga98h25jahc0fciv4bm8esqp7', 1775547418, 'modx.user.contextTokens|a:0:{}'),
('5geaiecbkb3vg1jbrpbot4p667', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('5hernoocu2ks3uvgtb234460qi', 1775263016, 'modx.user.contextTokens|a:0:{}'),
('5i42796jmoefro7p5jgfhb4n7e', 1776850935, 'modx.user.contextTokens|a:0:{}'),
('5ir9vpj5r79mu1pk4gfe6avqgs', 1776460350, 'modx.user.contextTokens|a:0:{}'),
('5j3vpt4ei8490knec66ajiovk9', 1775208324, 'modx.user.contextTokens|a:0:{}'),
('5j6uah7h0n6hc65n721vcrbrbe', 1774017045, 'modx.user.contextTokens|a:0:{}'),
('5j9lvvjja27k1ppk9ai2nc3q1e', 1775256826, 'modx.user.contextTokens|a:0:{}'),
('5ju4hoinj8co66sbooub00vtnk', 1776399706, 'modx.user.contextTokens|a:0:{}'),
('5k8cuctd0h7069ghjb8r4b4ba0', 1774917300, 'modx.user.contextTokens|a:0:{}'),
('5kdbcf5c3f8qocmnsum713q932', 1776591936, 'modx.user.contextTokens|a:0:{}'),
('5lfppti3b6cigeppb631cq3u0e', 1776097239, 'modx.user.contextTokens|a:0:{}'),
('5lga26dn53og8kn7f6gp22v3qh', 1774584918, 'modx.user.contextTokens|a:0:{}'),
('5lgkfcnpfkn5fg67kvh5eg58lf', 1776677770, 'modx.user.contextTokens|a:0:{}'),
('5lkcltrqc5645ubh1hvm7krj9n', 1774195855, 'modx.user.contextTokens|a:0:{}'),
('5m0nuqi96eg9j3jae0ad9qn0jf', 1775019545, 'modx.user.contextTokens|a:0:{}'),
('5mk8cnm5oct078slsq7rofqsai', 1775570562, 'modx.user.contextTokens|a:0:{}'),
('5mn2h9i5966bp67of3kmg58g02', 1775077809, 'modx.user.contextTokens|a:0:{}'),
('5n0gl08sdg09hfjo1096bp8uuo', 1774605365, 'modx.user.contextTokens|a:0:{}'),
('5n2ejl4f1ofi6evcf5n9l7a8mo', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('5n5u53nc3sbp8qs4p9kdckjlsh', 1776266971, 'modx.user.contextTokens|a:0:{}'),
('5nj5fj9em1tojifstta2rh83j7', 1776812125, 'modx.user.contextTokens|a:0:{}'),
('5o1nbnnnojr7t03dvl029dlt22', 1774841532, 'modx.user.contextTokens|a:0:{}'),
('5o1oh2giccmu89sas85mnjmjli', 1775406064, 'modx.user.contextTokens|a:0:{}'),
('5o9ig1lkbj2if0moa2tbn77j6c', 1774971241, 'modx.user.contextTokens|a:0:{}'),
('5ougjese5974umbrksfhivh05a', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('5pb4jqrooaorobo59l41r3koh2', 1776354316, 'modx.user.contextTokens|a:0:{}'),
('5pbin14evju86gf81c1e4b2o2o', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('5pip2iba9cbdfvtg80od7ncb7d', 1777147878, 'modx.user.contextTokens|a:0:{}'),
('5q22ugisli0p5rrp1nb6d4e302', 1773849977, 'modx.user.contextTokens|a:0:{}'),
('5qfcgb0mr4qsvljo95ekblm48h', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('5qq6nam47rd70u2ofoil50et2m', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('5rp6f04v61n09ccm99eqj3dn5v', 1775885544, 'modx.user.contextTokens|a:0:{}'),
('5rvkmh15icef36f188c3vir4d7', 1773847308, 'modx.user.contextTokens|a:0:{}'),
('5s4hc9ibebksrkn8ltu3d50ne4', 1774679524, 'modx.user.contextTokens|a:0:{}'),
('5s9khpjtbb9moiumb7n9es0leb', 1774318394, 'modx.user.contextTokens|a:0:{}'),
('5scbclcod8fgnf9rrgp70h5l1p', 1775115970, 'modx.user.contextTokens|a:0:{}'),
('5su77b56892f13ackrjqqfsnai', 1776925060, 'modx.user.contextTokens|a:0:{}');
INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('5t6a2kcnlavj7nnib0atamflgi', 1775384407, 'modx.user.contextTokens|a:0:{}'),
('5tpspriq2f6clfsbjtspo9i1d3', 1775127607, 'modx.user.contextTokens|a:0:{}'),
('5tqrnha3p9r1q9uctprk7i9kvf', 1776869426, 'modx.user.contextTokens|a:0:{}'),
('5u4b0djfe5k31i3r90q8v42apc', 1775495886, 'modx.user.contextTokens|a:0:{}'),
('5u5j7v1j3aviq6c81sj2ddfmr4', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('5ul8g0sj2goqjtp4mart71uv2u', 1776859006, 'modx.user.contextTokens|a:0:{}'),
('5vmcan25h14nm8t2mnqt5kr4c0', 1776785895, 'modx.user.contextTokens|a:0:{}'),
('60fu7jofuugur1b9k10sllooj3', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('60tpfto1mhohlic29omqhpe56f', 1776266972, 'modx.user.contextTokens|a:0:{}'),
('615t8vsp3js5oh7g99jj0f3805', 1774924362, 'modx.user.contextTokens|a:0:{}'),
('61am2a1e25qlre9mlq6pg1sr9j', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('61fc7dpbun42cc5bl7vmci7mpt', 1775631154, 'modx.user.contextTokens|a:0:{}'),
('61h92hork2vukb89u7t421svhk', 1774014616, 'modx.user.contextTokens|a:0:{}'),
('61v6hcv11o7r5qseihdidleu3e', 1775115971, 'modx.user.contextTokens|a:0:{}'),
('6281rh67s1khteu5pq52japddv', 1774098263, 'modx.user.contextTokens|a:0:{}'),
('62871v16nf9a3t0mlo04rn5sld', 1774199014, 'modx.user.contextTokens|a:0:{}'),
('629kd2lsaec1k9hbvsanl6o0v6', 1777092042, 'modx.user.contextTokens|a:0:{}'),
('62l4l3qmif13v6j19keo2gr13d', 1777009359, 'modx.user.contextTokens|a:0:{}'),
('62leo9v6762lm4utrgtldor1ap', 1774374077, 'modx.user.contextTokens|a:0:{}'),
('62ug2vvh2igcek5hjujuh8th5l', 1774471927, 'modx.user.contextTokens|a:0:{}'),
('6326b1cdlrrlmtnae72pt1kk4r', 1775198674, 'modx.user.contextTokens|a:0:{}'),
('63f3berfko1p59flb00cdd3vs4', 1776920763, 'modx.user.contextTokens|a:0:{}'),
('63t49e033bbo9lu9e8607vl69u', 1777047199, 'modx.user.contextTokens|a:0:{}'),
('64clrompkhh8872p3n2d5d7hpa', 1774001937, 'modx.user.contextTokens|a:0:{}'),
('64ib9vetaq3aramtpkl5t66od5', 1776600156, 'modx.user.contextTokens|a:0:{}'),
('64k4850a9o7jk73ib7vb41e7f1', 1776602169, 'modx.user.contextTokens|a:0:{}'),
('65ic8a4rrt3bfsh4tsf3mpsjh9', 1775427149, 'modx.user.contextTokens|a:0:{}'),
('65kq9h7o1spk7ef8i62u4ta70i', 1776388044, 'modx.user.contextTokens|a:0:{}'),
('65octeg8rojrf1cn6setm40omf', 1774989871, 'modx.user.contextTokens|a:0:{}'),
('67d6d19hm6ri36p434il7da8oe', 1775201157, 'modx.user.contextTokens|a:0:{}'),
('680nqfjbsqk140or457fucmm21', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('68a01soislea0ksmla6ivg1uk6', 1773921407, 'modx.user.contextTokens|a:0:{}'),
('69bkfvda1c9045lfo7s94i8h9j', 1774527342, 'modx.user.contextTokens|a:0:{}'),
('6a0m3f3re090d6pj3iaqplu7fk', 1776106305, 'modx.user.contextTokens|a:0:{}'),
('6a0m78b3c59j1u2kk95qcun4gh', 1774657324, 'modx.user.contextTokens|a:0:{}'),
('6a102fatibmr3komp1oev7r8cg', 1774856373, 'modx.user.contextTokens|a:0:{}'),
('6b11kq8v0gnibn4it888c81b6h', 1777389699, 'modx.user.contextTokens|a:0:{}'),
('6bchutfqq26efl4850jc31ejue', 1773921182, 'modx.user.contextTokens|a:0:{}'),
('6bcnni4vdeq2b425edoq35r96u', 1774248078, 'modx.user.contextTokens|a:0:{}'),
('6cqbkvq7as2o01vu197qs913p7', 1776118862, 'modx.user.contextTokens|a:0:{}'),
('6d5ad0pot820g78i26hmeler3i', 1775038757, 'modx.user.contextTokens|a:0:{}'),
('6dgesd7n0hdcclc5ha6jdkttk9', 1777098823, 'modx.user.contextTokens|a:0:{}'),
('6e2n1hc2s1ml82j446m3cdr43m', 1775744132, 'modx.user.contextTokens|a:0:{}'),
('6e2nfe51d4e0mcuqgp8gs97nvf', 1775754213, 'modx.user.contextTokens|a:0:{}'),
('6ej4be6s7jkbm0g5n0ogeqkrb5', 1774045021, 'modx.user.contextTokens|a:0:{}'),
('6fn6sh9jgjdrmjcb9t4n7likib', 1775566898, 'modx.user.contextTokens|a:0:{}'),
('6gdna5ucmd902046rcbm8mm27j', 1775748754, 'modx.user.contextTokens|a:0:{}'),
('6gfa72bkmefcdbvf7bedjno36j', 1776813015, 'modx.user.contextTokens|a:0:{}'),
('6h28rc8sfvopbikisorccqqafs', 1775145087, 'modx.user.contextTokens|a:0:{}'),
('6hei5to4gn4bkn3rajcdr4h246', 1775993690, 'modx.user.contextTokens|a:0:{}'),
('6hi99plhifvmdvbhl4i38e8v97', 1775218497, 'modx.user.contextTokens|a:0:{}'),
('6hm8sraekjhhs4m619b80rdivg', 1777266617, 'modx.user.contextTokens|a:0:{}'),
('6hqtq4q94mf8c93lpsi43r5d3h', 1775415197, 'modx.user.contextTokens|a:0:{}'),
('6infks1or58ss55hfovrg0u0sc', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('6iugl4echlei5feq9rmc81glco', 1776863310, 'modx.user.contextTokens|a:0:{}'),
('6j3h698aptvkr7do3fi10rp5sv', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('6jnjkg60c7782ik49in01t6pge', 1774639802, 'modx.user.contextTokens|a:0:{}'),
('6kc8qmjajajo8akvinur82m1b2', 1777156361, 'modx.user.contextTokens|a:0:{}'),
('6kqkp2omos9t53dbkt03lrlm04', 1774498836, 'modx.user.contextTokens|a:0:{}'),
('6lqj2c3f9n6nst2dd0fhpcuso8', 1774481962, 'modx.user.contextTokens|a:0:{}'),
('6lv8nkiugiv9dr20kq3rli8qqa', 1774563503, 'modx.user.contextTokens|a:0:{}'),
('6m1s21ntr349ct6ubn9854jjjh', 1777274475, 'modx.user.contextTokens|a:0:{}'),
('6mbaij438ln72143tmd51amh5n', 1774849258, 'modx.user.contextTokens|a:0:{}'),
('6mo497jff9on5vr6alm0mojmlc', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('6nss84m11m3984qkjlsp2stjlc', 1775045076, 'modx.user.contextTokens|a:0:{}'),
('6nulom8gaut12c1tspl2htlqal', 1774144431, 'modx.user.contextTokens|a:0:{}'),
('6nv9bqnd1mj3q3bj8to3gtj9fj', 1775207731, 'modx.user.contextTokens|a:0:{}'),
('6o2flp9c6nokm55ok4eokrnvs9', 1776677565, 'modx.user.contextTokens|a:0:{}'),
('6o5ldpvb9b7escbls2qt8u9udv', 1774629606, 'modx.user.contextTokens|a:0:{}'),
('6orskf8s5to1bfpm6sdvsaihr7', 1774756676, 'modx.user.contextTokens|a:0:{}'),
('6os8uon3bn1pg3v58hg8p7kgbh', 1774953828, 'modx.user.contextTokens|a:0:{}'),
('6p091gde25poe64cqq6vt39tq9', 1773926748, 'modx.user.contextTokens|a:0:{}'),
('6p8mrfuu5s16sv05nst0lgoct6', 1774535668, 'modx.user.contextTokens|a:0:{}'),
('6pq7a5mgj45p5lh5nsf314skhc', 1775379422, 'modx.user.contextTokens|a:0:{}'),
('6pr47j53v1vlke0llss9ls7vlh', 1774853917, 'modx.user.contextTokens|a:0:{}'),
('6pscsgciot365adutjp8alp5t2', 1776205457, 'modx.user.contextTokens|a:0:{}'),
('6q24ipeoglncmk86hu4lgmgca2', 1776920759, 'modx.user.contextTokens|a:0:{}'),
('6qenaon3m7hlh0ucc5v66vgb4d', 1775561050, 'modx.user.contextTokens|a:0:{}'),
('6qp5ivqtdlutnoo2cdi0gksqeg', 1773915512, 'modx.user.contextTokens|a:0:{}'),
('6rm7eb26ifq6uese74pfep4gk7', 1776118846, 'modx.user.contextTokens|a:0:{}'),
('6s9sb68236rs82es5img0sj2bd', 1776961060, 'modx.user.contextTokens|a:0:{}'),
('6sbvmotd43478jm520rssv849u', 1776584676, 'modx.user.contextTokens|a:0:{}'),
('6strq7587at32oeidt49th0t4b', 1775885302, 'modx.user.contextTokens|a:0:{}'),
('6t57428v6n4ejnr6sme8fph6ku', 1775801708, 'modx.user.contextTokens|a:0:{}'),
('6tescmv200h053d0fkp1n3sa4n', 1773986198, 'modx.user.contextTokens|a:0:{}'),
('6u7qqd19uoncjk4hkvbu7lnk3r', 1776288900, 'modx.user.contextTokens|a:0:{}'),
('6u7rdr7d3lp5n7c9qkvqab8tlo', 1773856524, 'modx.user.contextTokens|a:0:{}'),
('6u97jilr55m3n4s3t7vk43ba2t', 1776106290, 'modx.user.contextTokens|a:0:{}'),
('6u9f03m68qfcq1j9edhakn3o5g', 1777228178, 'modx.user.contextTokens|a:0:{}'),
('6ufjr06ftsjo13c2bumaeav3ab', 1777395370, 'modx.user.contextTokens|a:0:{}'),
('6ulnmkvggfde8113uth35h2vr8', 1776745053, 'modx.user.contextTokens|a:0:{}'),
('6um6d774qdk6e9ql1bqdakp9it', 1774481962, 'modx.user.contextTokens|a:0:{}'),
('70603tnojev3v3dfkgj9lvfct7', 1776076979, 'modx.user.contextTokens|a:0:{}'),
('706oorfd9mvd2r5e9uibll3sko', 1777109153, 'modx.user.contextTokens|a:0:{}'),
('70f7q6fj95g15r4qkgkf8i135t', 1776025477, 'modx.user.contextTokens|a:0:{}'),
('712fss8u5ssavor85nb4dpt2ol', 1774686425, 'modx.user.contextTokens|a:0:{}'),
('717u3mdgpebfkmnpibpgpanept', 1774725872, 'modx.user.contextTokens|a:0:{}'),
('71b0hdua2ij1u17vosdimprdve', 1774194997, 'modx.user.contextTokens|a:0:{}'),
('71qek2930a57ler6ktuj102kiq', 1774143871, 'modx.user.contextTokens|a:0:{}'),
('71vkthp3i81u66b6fjon759rf4', 1776033396, 'modx.user.contextTokens|a:0:{}'),
('725gk3ngdjd5rfl9lem6ii8euf', 1775859493, 'modx.user.contextTokens|a:0:{}'),
('729lvookiqe7kr6d80u4i7lvvk', 1774547443, 'modx.user.contextTokens|a:0:{}'),
('72aspta969uetn7q3le92cdtdb', 1774044723, 'modx.user.contextTokens|a:0:{}'),
('72kls4rlbigipvq8ptst0olopg', 1776577852, 'modx.user.contextTokens|a:0:{}'),
('73109mmblg6ihrd4tghjiule7f', 1773893764, 'modx.user.contextTokens|a:0:{}'),
('73lakad5k8ifb3sh7t85stoo44', 1776607844, 'modx.user.contextTokens|a:0:{}'),
('740ghjku64nknac8natlgbv65o', 1774190184, 'modx.user.contextTokens|a:0:{}'),
('741sjkor397t1qd1jao3r6ifp1', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('746qla14carqhsogj19li603h8', 1776137418, 'modx.user.contextTokens|a:0:{}'),
('750k6m73gkunvn0nuiph4r21bf', 1775601102, 'modx.user.contextTokens|a:0:{}'),
('75lt54nqapoq89csphk1vvv3qf', 1773918939, 'modx.user.contextTokens|a:0:{}'),
('75oc833kotnp0achliembdn1l7', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('75ubctsc2gu25gm0hu4st4qjhc', 1774520609, 'modx.user.contextTokens|a:0:{}'),
('76btrgrisckkh62a6im5imm394', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('76je19rp4220ia5ja67d573m90', 1774306909, 'modx.user.contextTokens|a:0:{}'),
('76u4qo7ont8uhp5lrekppk98dn', 1774014211, 'modx.user.contextTokens|a:0:{}'),
('773oqknqtkvr0eeoeaptbmdbvo', 1774406027, 'modx.user.contextTokens|a:0:{}'),
('77ln838jqbqt825uhfmj0nvvbl', 1775607353, 'modx.user.contextTokens|a:0:{}'),
('77oaa8d0labnabs1r7uc0t8j80', 1774502850, 'modx.user.contextTokens|a:0:{}'),
('781jf8o68mbhpesahj8b710enj', 1777415003, 'modx.user.contextTokens|a:0:{}'),
('78vaa1kmn63sh7oqtjd74223qe', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('79ien1u156ovf7qjkjeuo2ib97', 1773877715, 'modx.user.contextTokens|a:0:{}'),
('79srofg4u01tj59bgskhrs4mea', 1775203364, 'modx.user.contextTokens|a:0:{}'),
('7a3bbf1v2u45tmghaepr6s5795', 1776998779, 'modx.user.contextTokens|a:0:{}'),
('7ar8ve943ttcj9bildbgrif7nt', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('7cetg1dgudf0a23p0ka8hshnqr', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('7crrck157hu6nvtujipr4132pj', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('7ctjj4gh2c4icnr3tl5ntkhda1', 1775874023, 'modx.user.contextTokens|a:0:{}'),
('7d3pka7j27b6tqb9lrq36krb18', 1774867359, 'modx.user.contextTokens|a:0:{}'),
('7d4usgt0i135vdjdt5pim8fhjk', 1774270919, 'modx.user.contextTokens|a:0:{}'),
('7dd683hleoocle2m409e4o04p5', 1777378182, 'modx.user.contextTokens|a:0:{}'),
('7deuqjmlt7dsqhk564sv58h1u0', 1775455444, 'modx.user.contextTokens|a:0:{}'),
('7dfd6jlbsevt4pjs4k3d20goch', 1776771380, 'modx.user.contextTokens|a:0:{}'),
('7dsis2sode7hra55cdqq5bno2b', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('7e3ebq8h4mrbrmqj4l3f6a3onj', 1776073158, 'modx.user.contextTokens|a:0:{}'),
('7e4rlqht49s4p46hvhaha8o01q', 1777442669, 'modx.user.contextTokens|a:0:{}'),
('7e79dv96fhckk5oq81radlqnm9', 1775369315, 'modx.user.contextTokens|a:0:{}'),
('7epd6butd8qenil5ito0usg32m', 1775115861, 'modx.user.contextTokens|a:0:{}'),
('7f3m7a3qoosa3pmvpn5g2bpocr', 1775280024, 'modx.user.contextTokens|a:0:{}'),
('7f478a3f6j3agk7am9981obtu4', 1774979364, 'modx.user.contextTokens|a:0:{}'),
('7f8i0e9g0cfsbih3tahj93trdg', 1774107026, 'modx.user.contextTokens|a:0:{}'),
('7f96brbf416p5it8nuu0ahjs7e', 1775128809, 'modx.user.contextTokens|a:0:{}'),
('7fcecp2t6sedul3sos1eha9qd4', 1773862259, 'modx.user.contextTokens|a:0:{}'),
('7fl4to6nf7eppjap83ts790fr9', 1777338394, 'modx.user.contextTokens|a:0:{}'),
('7fqjc2u2rcjqt140fhuo6f77u7', 1776207868, 'modx.user.contextTokens|a:0:{}'),
('7ftma4fd76u7lc28i2hoiouunp', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('7g26kvls3lnnmeb4737u3s5l0m', 1775246135, 'modx.user.contextTokens|a:0:{}'),
('7gbfvbsn9qappcgvqshslep6ld', 1775476163, 'modx.user.contextTokens|a:0:{}'),
('7gg6s9gac21uostjm19h20ospo', 1774490543, 'modx.user.contextTokens|a:0:{}'),
('7ic1godm20ulu252q331t5t1bu', 1774199690, 'modx.user.contextTokens|a:0:{}'),
('7ih3aqb174oc3oh56cur3bjuvn', 1776183424, 'modx.user.contextTokens|a:0:{}'),
('7irn63nopvc7j3g7f9taag1h6c', 1775495138, 'modx.user.contextTokens|a:0:{}'),
('7j0ijdnoa0qe4dt9ldeeg3u3dt', 1777037732, 'modx.user.contextTokens|a:0:{}'),
('7j31ljbu379n8s1vjj46vg0h6l', 1777459825, 'modx.user.contextTokens|a:0:{}'),
('7j3m2nk2nnv91aodjfv50ej68n', 1775450623, 'modx.user.contextTokens|a:0:{}'),
('7j7udit8u9469bm67ce69fcvtk', 1773928971, 'modx.user.contextTokens|a:0:{}'),
('7j9hmdd00t99gkcnjvtj9qkun0', 1775295326, 'modx.user.contextTokens|a:0:{}'),
('7k0riio5nfcuq8hl5iuc6ge9i2', 1777404074, 'modx.user.contextTokens|a:0:{}'),
('7k4iped0ffc2tpu85piafdec96', 1777258406, 'modx.user.contextTokens|a:0:{}'),
('7k4s1tm3ckdgljgthu5c09aj71', 1777399923, 'modx.user.contextTokens|a:0:{}'),
('7k6gid7rohm4ovmi806ss2lo6s', 1777384870, 'modx.user.contextTokens|a:0:{}'),
('7kl8soeaocja7ps9epidbuqb4a', 1776326875, 'modx.user.contextTokens|a:0:{}'),
('7lk5ludc73mpdeoj4sv0477bgs', 1773995353, 'modx.user.contextTokens|a:0:{}'),
('7nkuteaj9g5ucg9k8vca77gigl', 1774251895, 'modx.user.contextTokens|a:0:{}'),
('7nv0fhjl0975r9nf5f1ajfa2t8', 1775893188, 'modx.user.contextTokens|a:0:{}'),
('7obhuok8674ubbjtf5knl60vc3', 1773983804, 'modx.user.contextTokens|a:0:{}'),
('7odg60f14jsai97b4g2rjlulea', 1776131012, 'modx.user.contextTokens|a:0:{}'),
('7ov9gffengnmel22c9i5e1peog', 1776225466, 'modx.user.contextTokens|a:0:{}'),
('7p6m51nd82e8dinopt1lmvhql8', 1776204787, 'modx.user.contextTokens|a:0:{}'),
('7p97lq7c1anqlrmft3922j0b1d', 1776076985, 'modx.user.contextTokens|a:0:{}'),
('7q0ouobcr74i2blfoe3bgkcqqc', 1774966705, 'modx.user.contextTokens|a:0:{}'),
('7q1ki90k64u5uifhhj7kna07nt', 1774191191, 'modx.user.contextTokens|a:0:{}'),
('7q1n7mthsp0ajj9eba7jjp2qfr', 1776274951, 'modx.user.contextTokens|a:0:{}'),
('7qr9mpshc194me632pg85mohrs', 1776976278, 'modx.user.contextTokens|a:0:{}'),
('7rb333cg2l0138go5o5kmegrsp', 1775103513, 'modx.user.contextTokens|a:0:{}'),
('7rg7dod5hkaflb87m0nphig9ch', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('7rj8egl9ro85lvchfcqsbb4oqt', 1776461981, 'modx.user.contextTokens|a:0:{}'),
('7rsuea3irj48lks0sasnbdoh1r', 1774248380, 'modx.user.contextTokens|a:0:{}'),
('7s5leemequhvgf9i5t55obh2qn', 1774226488, 'modx.user.contextTokens|a:0:{}'),
('7sa7aqkec2951pp6vb50djc7e6', 1774888802, 'modx.user.contextTokens|a:0:{}'),
('7savdh78227j2tnpk0k42urg78', 1774773918, 'modx.user.contextTokens|a:0:{}'),
('7sf2gm17o45lj0b2g26dorh8ku', 1776401773, 'modx.user.contextTokens|a:0:{}'),
('7shsmmfb0vdn3h22rni6ivbors', 1775777768, 'modx.user.contextTokens|a:0:{}'),
('7sp7sbjann3f1ubmm49olh2msi', 1777281731, 'modx.user.contextTokens|a:0:{}'),
('7t1liha6159tl60v71etivcjt5', 1774094569, 'modx.user.contextTokens|a:0:{}'),
('7trjq66ue8537ofvkv9nuuu2ch', 1775060671, 'modx.user.contextTokens|a:0:{}'),
('7tt7c0ojn7f0faona6rup9a3c5', 1776399703, 'modx.user.contextTokens|a:0:{}'),
('7u9ghigdr4f4fdi3m7b4dioh6t', 1774650056, 'modx.user.contextTokens|a:0:{}'),
('7ufot0r2urelvi6r4slvtivodf', 1774652439, 'modx.user.contextTokens|a:0:{}'),
('7ul8cioicjslvfk8am9q4svf0k', 1775368031, 'modx.user.contextTokens|a:0:{}'),
('7uoe79alie3b2amk2hpdqe9s8a', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('7up8662r99cp4adb930ddae9jp', 1775607377, 'modx.user.contextTokens|a:0:{}'),
('7v51jdjcbo5qij93eqc58l9k99', 1775189804, 'modx.user.contextTokens|a:0:{}'),
('7v6bo8mrn41ee625758957ov1n', 1777194417, 'modx.user.contextTokens|a:0:{}'),
('7vdt0lp5h3u3m12v52orqht3q9', 1775332750, 'modx.user.contextTokens|a:0:{}'),
('7vmkeo4tfrdpbkr8kie58kgmbc', 1777373562, 'modx.user.contextTokens|a:0:{}'),
('7vqnd7lkceq83637o3sl9kf2lh', 1774318395, 'modx.user.contextTokens|a:0:{}'),
('803cqdk0a1qi3chh1if03k00qe', 1774859693, 'modx.user.contextTokens|a:0:{}'),
('8078jm8aans74t7fekaaodbocs', 1775329407, 'modx.user.contextTokens|a:0:{}'),
('81ti0tkjnl760cqlfeifn7b7g6', 1776219902, 'modx.user.contextTokens|a:0:{}'),
('81v7034m07craraa681ctu5rje', 1775361644, 'modx.user.contextTokens|a:0:{}'),
('8272utr3di5n2obisks7n0vtvd', 1774263764, 'modx.user.contextTokens|a:0:{}'),
('82h5vhgeftd7ggtuananmaa9nt', 1777409901, 'modx.user.contextTokens|a:0:{}'),
('82kjdtnj6mbv7d5af8j3f7gbtu', 1777108478, 'modx.user.contextTokens|a:0:{}'),
('82u4n51lt0kmivarrus4lqkt60', 1774454712, 'modx.user.contextTokens|a:0:{}'),
('83390busnhlep5pf3iopfflkrm', 1776069841, 'modx.user.contextTokens|a:0:{}'),
('836eg13icnaob12guavg6dq3k9', 1775628771, 'modx.user.contextTokens|a:0:{}'),
('83ecu83ck7tbsi9rbomgjcfv1j', 1776983139, 'modx.user.contextTokens|a:0:{}'),
('83mqj351uep1c6cb25n5v2s5ql', 1774498886, 'modx.user.contextTokens|a:0:{}'),
('83s7kor9qfftsn64nd6sv1oc4f', 1777439992, 'modx.user.contextTokens|a:0:{}'),
('840r1ne59q9hkvutb8cdjaqglc', 1774797516, 'modx.user.contextTokens|a:0:{}'),
('84eekr1t7b36gio4atiib1c441', 1777260114, 'modx.user.contextTokens|a:0:{}'),
('84mmlnb0n000ls8rdjgl8tkqrq', 1777130565, 'modx.user.contextTokens|a:0:{}'),
('8500s2oho6c0q67763671h9k85', 1775450622, 'modx.user.contextTokens|a:0:{}'),
('85q66o2vgrjojej2cfkttn8880', 1774026151, 'modx.user.contextTokens|a:0:{}'),
('85qrvjcp9414c3cjfnar4juus7', 1776097710, 'modx.user.contextTokens|a:0:{}'),
('85tunretuisjlmhph79v4hkvsm', 1774434028, 'modx.user.contextTokens|a:0:{}'),
('869o2gjrmctsrcflage3qjuc90', 1774652439, 'modx.user.contextTokens|a:0:{}'),
('86hbn3jbn0gmtlua0m1mks7o94', 1777067465, 'modx.user.contextTokens|a:0:{}'),
('86hgr0urloms2nu9m7bpj78b43', 1776329089, 'modx.user.contextTokens|a:0:{}'),
('86p4t37miii8fnma9m62mm0bpu', 1775112328, 'modx.user.contextTokens|a:0:{}'),
('87ehj31ftmflka7b1v2khoiho8', 1775916071, 'modx.user.contextTokens|a:0:{}'),
('87jdssglcdnecllsff3ju6u8sd', 1774196102, 'modx.user.contextTokens|a:0:{}'),
('87nt9ahqt9naqi2noad659da4p', 1775680756, 'modx.user.contextTokens|a:0:{}'),
('88camq0lvi9npu3668g1cjt53c', 1776257737, 'modx.user.contextTokens|a:0:{}'),
('88dj8qq316pug41s2offhvnnbt', 1777208753, 'modx.user.contextTokens|a:0:{}'),
('88so3ce6q3jh69jse59h0k2fqv', 1774274071, 'modx.user.contextTokens|a:0:{}'),
('89ktnl8d8noelf6me0jo2r91dr', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('89qbsudlvt4dtj67mtmulbvuau', 1775679049, 'modx.user.contextTokens|a:0:{}'),
('89tvvq7vobtt56m9ktuua18pos', 1775820565, 'modx.user.contextTokens|a:0:{}'),
('89u4il56n5boim960pam1o49v9', 1775375057, 'modx.user.contextTokens|a:0:{}'),
('8a5sov8n1ccmi7jgpnjl7dseau', 1774630285, 'modx.user.contextTokens|a:0:{}'),
('8aarc1qqvu0iaubva224jnisse', 1775582436, 'modx.user.contextTokens|a:0:{}'),
('8amdcqgvp279vo9d6vdhp94nl6', 1774100044, 'modx.user.contextTokens|a:0:{}'),
('8arefq63ag1nrhonlj3718n409', 1777376310, 'modx.user.contextTokens|a:0:{}'),
('8bdcg03blvhhb0gmmlbtv8u4j0', 1776297158, 'modx.user.contextTokens|a:0:{}'),
('8c17o6vlfusav9fbtn3al9hg29', 1776413005, 'modx.user.contextTokens|a:0:{}'),
('8c910eoail8ve35d32ttkim2tg', 1777095301, 'modx.user.contextTokens|a:0:{}'),
('8cd140jdcttqgefrsfofimeh7l', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('8cm8voc550satc2sr4ciivmqto', 1777095778, 'modx.user.contextTokens|a:0:{}'),
('8cu67i31tmcgeq9nag8t0clj5s', 1776462012, 'modx.user.contextTokens|a:0:{}'),
('8d0t6mu0ivv7mkn0ke25t55h4n', 1775368018, 'modx.user.contextTokens|a:0:{}'),
('8d5r3e3dc0uagmd5al15pmobpa', 1774420517, 'modx.user.contextTokens|a:0:{}'),
('8de4iacua9tsal6l3sp3g8ngg7', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('8dg6c0gdbd657004reo36ndaop', 1774364978, 'modx.user.contextTokens|a:0:{}'),
('8doapaoj9tu2uk5b76podqk9dh', 1776126772, 'modx.user.contextTokens|a:0:{}'),
('8dqj301se3eihf5utr8dcfpum2', 1774666869, 'modx.user.contextTokens|a:0:{}'),
('8dvk3bgt3qo5vatnf51dl1dirq', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('8ecbbf30l0lau9k2o7m8eubhkg', 1776939566, 'modx.user.contextTokens|a:0:{}'),
('8eh6vo9dae9pb5osfpb6b57gdn', 1776968158, 'modx.user.contextTokens|a:0:{}'),
('8ev6tg607qgmh85mrrcd8jh4qv', 1775989675, 'modx.user.contextTokens|a:0:{}'),
('8fic1a03lhbugji40fc8he4197', 1773980193, 'modx.user.contextTokens|a:0:{}'),
('8fit7baktn7iuo2q860up5a9p0', 1776675016, 'modx.user.contextTokens|a:0:{}'),
('8gsgjkum11tnd77hmjcvbvfo6g', 1776156564, 'modx.user.contextTokens|a:0:{}'),
('8h1ep7suis39hbup8i3cltlgur', 1775929413, 'modx.user.contextTokens|a:0:{}'),
('8h2785m4ngfo7accmfgbaniqks', 1774615512, 'modx.user.contextTokens|a:0:{}'),
('8h2uvumkj21si8i28flj9ecgpg', 1775069943, 'modx.user.contextTokens|a:0:{}'),
('8h9pp307k5rvemt03mcae5tdin', 1776599886, 'modx.user.contextTokens|a:0:{}'),
('8hbk2k60lok56ot64ft1kn6t9n', 1776775687, 'modx.user.contextTokens|a:0:{}'),
('8hc1gbbcqu544lvsoqgdog4s75', 1774882812, 'modx.user.contextTokens|a:0:{}'),
('8hk5nc8b9cf25ss2em4rgnvi8b', 1776028912, 'modx.user.contextTokens|a:0:{}'),
('8htar1civd8hgvgu9n4na409ha', 1776584675, 'modx.user.contextTokens|a:0:{}'),
('8i7b0gck1ghe70hlq2kfc9ctgi', 1773997470, 'modx.user.contextTokens|a:0:{}'),
('8ijogp9mj04pb6qobvmj0cvj9f', 1773850002, 'modx.user.contextTokens|a:0:{}'),
('8in3q3kp31edipc7ph50r0eq95', 1775189143, 'modx.user.contextTokens|a:0:{}'),
('8iou8bbi5bqm14srki2kc36mu0', 1775175322, 'modx.user.contextTokens|a:0:{}'),
('8ivkq4ket0d4pdmfdl74bs3m9u', 1777008271, 'modx.user.contextTokens|a:0:{}'),
('8jhln4rtqafb8rt395o5lfisrr', 1775568882, 'modx.user.contextTokens|a:0:{}'),
('8jjuobjv5aakc5i91frl8vko71', 1777004260, 'modx.user.contextTokens|a:0:{}'),
('8jou50blmnf4u9m1msqtpqen0u', 1774326120, 'modx.user.contextTokens|a:0:{}'),
('8jufo69jrfp41agfqd0h7msjcu', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('8k977iu957rkb3kl7v17eheiua', 1774504348, 'modx.user.contextTokens|a:0:{}'),
('8kpi2gu7bng6tpd6i370ag93mo', 1775772966, 'modx.user.contextTokens|a:0:{}'),
('8l0ai07nmegpe651updu3rhpki', 1775069942, 'modx.user.contextTokens|a:0:{}'),
('8l5dr8spuldg23i5toovfo79o9', 1776701826, 'modx.user.contextTokens|a:0:{}'),
('8lr2haj801chqagi3rofoh493e', 1775612717, 'modx.user.contextTokens|a:0:{}'),
('8mglrhngd0ccmdu1catkoh71a3', 1774535668, 'modx.user.contextTokens|a:0:{}'),
('8mjh5u0l13e1jtokn9068rfi81', 1774416397, 'modx.user.contextTokens|a:0:{}'),
('8mmch7fg6mtd2ju77cdvemsnkb', 1776464045, 'modx.user.contextTokens|a:0:{}'),
('8mp4rrgacvdk3nuhdgartp55me', 1773936966, 'modx.user.contextTokens|a:0:{}'),
('8muhi9cshqh4ag8eumndgu5re9', 1776106639, 'modx.user.contextTokens|a:0:{}'),
('8nltgb4d94gtc3e5h8lp4fq9ic', 1775894387, 'modx.user.contextTokens|a:0:{}'),
('8nnl42i27277mi048ju17pse8n', 1775811263, 'modx.user.contextTokens|a:0:{}'),
('8noe00fiicqh4ff266m7en2c8v', 1776239926, 'modx.user.contextTokens|a:0:{}'),
('8o1s27f0hcplmht8angvj1f0ch', 1775497737, 'modx.user.contextTokens|a:0:{}'),
('8o4qqbea9cr8s8ddhfub1k64u5', 1775155392, 'modx.user.contextTokens|a:0:{}'),
('8odppf0eh3jiqt80fiu8cgbce8', 1776205455, 'modx.user.contextTokens|a:0:{}'),
('8out653pjqoaf7cvflcn58t9e9', 1774095694, 'modx.user.contextTokens|a:0:{}'),
('8p1c682jr46g3ju8k429fjvs6a', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('8p8halaegiat06r3557rd5jdgj', 1774199426, 'modx.user.contextTokens|a:0:{}'),
('8pg95tevj3i52jancdtr12bfh0', 1776028959, 'modx.user.contextTokens|a:0:{}'),
('8pi5fnr3cok2l71ih1bgd2bt71', 1774449725, 'modx.user.contextTokens|a:0:{}'),
('8r30ekajnbs38vjb4ev44819n5', 1774959607, 'modx.user.contextTokens|a:0:{}'),
('8r6s71gcv9ok2fe3kk59i2fhh9', 1777128826, 'modx.user.contextTokens|a:0:{}'),
('8rga1hv2v6g1q05hrql5t2n7nj', 1775045093, 'modx.user.contextTokens|a:0:{}'),
('8rvvrmgute879n1491k257m5d2', 1774106947, 'modx.user.contextTokens|a:0:{}'),
('8s37hdjctpp3kqabjf47o0cala', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('8s51ndrgclvrh6h17betjo92rr', 1774304077, 'modx.user.contextTokens|a:0:{}'),
('8s52eslclneul89e9qpv04qc7s', 1774989873, 'modx.user.contextTokens|a:0:{}'),
('8sica39c550kmib6djdjkclj39', 1776239927, 'modx.user.contextTokens|a:0:{}'),
('8tdhilafghn5ldir4868jgd093', 1776605968, 'modx.user.contextTokens|a:0:{}'),
('8thgrq64ibmilmuioe9c4gf5aj', 1773968583, 'modx.user.contextTokens|a:0:{}'),
('8u1aldk9jc93u5lsalook8sju8', 1774075279, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('8ufss5g6uvbjs8t6surmjdjoia', 1775001299, 'modx.user.contextTokens|a:0:{}'),
('8uqup7ku1r6r3iokmg9jpk755m', 1774248389, 'modx.user.contextTokens|a:0:{}'),
('8uuua1qe910abf3db5hh6irpvf', 1775335363, 'modx.user.contextTokens|a:0:{}'),
('8v1p950abc39t8lhctpbcf19ko', 1776160498, 'modx.user.contextTokens|a:0:{}'),
('8v27lukfgbklmc7cm5bfnin3r6', 1775285215, 'modx.user.contextTokens|a:0:{}'),
('8vou8uco9vh7siab7ku7to7p95', 1773893791, 'modx.user.contextTokens|a:0:{}'),
('8vs86ahgkcth67qcn0fog9sh7k', 1774058823, 'modx.user.contextTokens|a:0:{}'),
('90i5ek3sci4af5cb6k5fon3vm4', 1776774066, 'modx.user.contextTokens|a:0:{}'),
('90krnlkl9hsnatgf4257qq6i0o', 1774540573, 'modx.user.contextTokens|a:0:{}'),
('90vbarnt3ghvebft5d6ighl7g0', 1775436730, 'modx.user.contextTokens|a:0:{}'),
('9115ol80s8alggoms0s69ohlg3', 1776172723, 'modx.user.contextTokens|a:0:{}'),
('91fcdt0pskomh1gbntngo2tdvh', 1775485072, 'modx.user.contextTokens|a:0:{}'),
('91k0og9os7qld9fa7e5p7bas2d', 1776476389, 'modx.user.contextTokens|a:0:{}'),
('91qau5irmakda6joivmtjn5jbc', 1775174658, 'modx.user.contextTokens|a:0:{}'),
('91r88hhtjut3fb48b33pn2i4lu', 1775406069, 'modx.user.contextTokens|a:0:{}'),
('91um25or9he14u9dk23n4k5mal', 1777026880, 'modx.user.contextTokens|a:0:{}'),
('923is483viud7pp4o7kiug77vo', 1774498115, 'modx.user.contextTokens|a:0:{}'),
('92g5b6nqeb55kl0t17v67au056', 1774773156, 'modx.user.contextTokens|a:0:{}'),
('92h0n1b3rhscq89hc2lj0mupr8', 1774185414, 'modx.user.contextTokens|a:0:{}'),
('92ou5s65b97dljg9vqk03gcr0j', 1774340129, 'modx.user.contextTokens|a:0:{}'),
('93159ohglpk91rt5p8ml7a91ie', 1776869009, 'modx.user.contextTokens|a:0:{}'),
('934hjnc6bpmqmatuvnql5ans8i', 1776921730, 'modx.user.contextTokens|a:0:{}'),
('937c3bq29tgfs9imai156iqqli', 1775757843, 'modx.user.contextTokens|a:0:{}'),
('93lsa73qhoj8clacqqmf12i5fu', 1774751146, 'modx.user.contextTokens|a:0:{}'),
('93r1ornohkco4ugm3d8bhd2uo9', 1776697384, 'modx.user.contextTokens|a:0:{}'),
('94l11hkpf6pd3pjap0h5ootev5', 1774121742, 'modx.user.contextTokens|a:0:{}'),
('94mp0ttdmse4mb02ceaargkutj', 1775599070, 'modx.user.contextTokens|a:0:{}'),
('95dqcam9pqkq00e18j6loovlvn', 1774194982, 'modx.user.contextTokens|a:0:{}'),
('95s471nfonf4lgcc4dsof1gurh', 1776446580, 'modx.user.contextTokens|a:0:{}'),
('9643sbum5e9kjl92lfkffhs3oh', 1775233103, 'modx.user.contextTokens|a:0:{}'),
('968m6dgqc7oioghuah8vlepbg5', 1774354345, 'modx.user.contextTokens|a:0:{}'),
('974ug0j1pi2vmoet7kok8kiunc', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('9794ook0ul0i0cgdicn257ljvm', 1777004583, 'modx.user.contextTokens|a:0:{}'),
('97jp493gd9dqdabrkvcm6sqqfb', 1775446513, 'modx.user.contextTokens|a:0:{}'),
('98o40ebtfd57fef42tu0umfb4c', 1777198770, 'modx.user.contextTokens|a:0:{}'),
('98q1fdo9slm1o1alo9bo62odit', 1774228935, 'modx.user.contextTokens|a:0:{}'),
('98qde1e36o3bbtb44543mvd6nc', 1776231145, 'modx.user.contextTokens|a:0:{}'),
('99032e1beo9kjhe1nsbspj3kme', 1777261461, 'modx.user.contextTokens|a:0:{}'),
('992c6d6g3menme9dldhp88m39d', 1774904670, 'modx.user.contextTokens|a:0:{}'),
('994bq3ulacel55hoq68de7ihs8', 1777089159, 'modx.user.contextTokens|a:0:{}'),
('99c0c21o8urqm0rvo6r3avm083', 1774156328, 'modx.user.contextTokens|a:0:{}'),
('9aasv0ptuvt78r2sve6d2tt49j', 1776392203, 'modx.user.contextTokens|a:0:{}'),
('9apg5kp7urdidhp1jm55dehsl1', 1774098306, 'modx.user.contextTokens|a:0:{}'),
('9apmvg4l778lh7a5vm7kjd5grn', 1774497551, 'modx.user.contextTokens|a:0:{}'),
('9b1vs0dshsp2iqocad3923lq11', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('9b61k36beujq1f1bsn8q97ukm9', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('9b9nt4l2n0k75v51p2nce2m0mo', 1775883918, 'modx.user.contextTokens|a:0:{}'),
('9bm15qvdef5ibnmvlg6i02fq60', 1774808504, 'modx.user.contextTokens|a:0:{}'),
('9br4m2rk8c91cod0remc2dn67n', 1776626194, 'modx.user.contextTokens|a:0:{}'),
('9cdr78dcmuotd4ut553pevendb', 1777036813, 'modx.user.contextTokens|a:0:{}'),
('9chd009h7ss871svkb8l48d157', 1775146907, 'modx.user.contextTokens|a:0:{}'),
('9cpj3rcuu9lslrqok5mil8qjl1', 1775777639, 'modx.user.contextTokens|a:0:{}'),
('9ctmu0am4fenfioqjbdtp3qf03', 1776291446, 'modx.user.contextTokens|a:0:{}'),
('9d3jhof21cqjpm9d61ousjddmq', 1774502853, 'modx.user.contextTokens|a:0:{}'),
('9djlnmb71r2kagvvnbba8tru3e', 1775365728, 'modx.user.contextTokens|a:0:{}'),
('9fc4m75vrm1jh7jej32vvetakg', 1777203865, 'modx.user.contextTokens|a:0:{}'),
('9fpg7ij0gn3drea9tvgs8r2fvv', 1774868368, 'modx.user.contextTokens|a:0:{}'),
('9fptcver3lmmkavigbunha8rl0', 1776412473, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;'),
('9frb8q5s2edp7n4ae6s6vv0fjf', 1775723543, 'modx.user.contextTokens|a:0:{}'),
('9gevnsmhshc3fnh21egj4dg678', 1776365531, 'modx.user.contextTokens|a:0:{}'),
('9ghlkkgticff5c30mut5k6570l', 1774585241, 'modx.user.contextTokens|a:0:{}'),
('9gm6m6n3obka64uhp4re1aa3b6', 1776024845, 'modx.user.contextTokens|a:0:{}'),
('9hgmmsv1v9lakn0dnjekmtjiv6', 1774730428, 'modx.user.contextTokens|a:0:{}'),
('9huma8b4135imbiull9eidu8ck', 1774191191, 'modx.user.contextTokens|a:0:{}'),
('9icjo4ch94kf99hshb0o7jn8bv', 1775791721, 'modx.user.contextTokens|a:0:{}'),
('9irif95b1rd1670u0vb9da7dcp', 1777399686, 'modx.user.contextTokens|a:0:{}'),
('9j60q2pqv73unjosv01t182t7d', 1774801360, 'modx.user.contextTokens|a:0:{}'),
('9jd9c0jh96k4npda792fqaskqc', 1774383556, 'modx.user.contextTokens|a:0:{}'),
('9jtdajh08som206j6ommam6s1d', 1775384304, 'modx.user.contextTokens|a:0:{}'),
('9jtl0ah1d2gp8oa3auiruj89lj', 1774651720, 'modx.user.contextTokens|a:0:{}'),
('9k4u1jq5itamui78d3p46pd7nr', 1775261992, 'modx.user.contextTokens|a:0:{}'),
('9k71mjfdv51n1lftaodlf00kdl', 1776845234, 'modx.user.contextTokens|a:0:{}'),
('9l43jvhbg6l36u1u1fb97nr8ja', 1776587007, 'modx.user.contextTokens|a:0:{}'),
('9lrrqbh82cj014iqdtvqo062dc', 1775361642, 'modx.user.contextTokens|a:0:{}'),
('9ltj6pqfnum9qbnld9celta1qj', 1776419011, 'modx.user.contextTokens|a:0:{}'),
('9m2pamkoj2iv1i96g9jabeictf', 1775115970, 'modx.user.contextTokens|a:0:{}'),
('9mrbvr96fis7p97kt40hepgo95', 1776992097, 'modx.user.contextTokens|a:0:{}'),
('9mvvgina8fu3d8ntoe9fnl1c67', 1774695234, 'modx.user.contextTokens|a:0:{}'),
('9n47f8va7vm2ej8l1git64bo3o', 1775306156, 'modx.user.contextTokens|a:0:{}'),
('9nb561h845f3p0fvge5shu4ql0', 1776977307, 'modx.user.contextTokens|a:0:{}'),
('9ncve5u6aa13e6sdpkp5ji2crm', 1774285023, 'modx.user.contextTokens|a:0:{}'),
('9ne1ngbhi2r16npik99jcdmltv', 1777109884, 'modx.user.contextTokens|a:0:{}'),
('9nsgbil9gu3duk6icae5cvjsm3', 1775089521, 'modx.user.contextTokens|a:0:{}'),
('9nssbfpcmk0n9buv41sopt67j2', 1774203009, 'modx.user.contextTokens|a:0:{}'),
('9o2ql05f4qapcf6d8esv4qu1nm', 1776106640, 'modx.user.contextTokens|a:0:{}'),
('9o7h6er3rd7u2oa5t6er17qkq8', 1777448243, 'modx.user.contextTokens|a:0:{}'),
('9p4qsu8fhjdk0svpa8quusvo6a', 1774206149, 'modx.user.contextTokens|a:0:{}'),
('9p5ln90g7gc7efplmrrklgk69j', 1774759192, 'modx.user.contextTokens|a:0:{}'),
('9p9urk091q3djqj22m2be9r011', 1776587007, 'modx.user.contextTokens|a:0:{}'),
('9pbgrf2di3oibijfvvu196p789', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('9ptrt4n4m45502l6ijvahpg4tl', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('9qj8vof6v75m03i3eut0l8i15o', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('9qmbsroeoa0s7qhuppbdpsvad7', 1777355416, 'modx.user.contextTokens|a:0:{}'),
('9r9v0pv7jfbngg3rntq1d2ffu1', 1776261544, 'modx.user.contextTokens|a:0:{}'),
('9rdg6iv0hlqv3uqsn5qukcf0rf', 1777105997, 'modx.user.contextTokens|a:0:{}'),
('9rf9ppb9gl2v933lobnito9dd1', 1775451250, 'modx.user.contextTokens|a:0:{}'),
('9rk231523hfqi0fpplvdda7hli', 1777001443, 'modx.user.contextTokens|a:0:{}'),
('9s9uij9vk496n479faihu6eoq7', 1777061491, 'modx.user.contextTokens|a:0:{}'),
('9smvllop3bq88m701r46tkcthg', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('9sphl72b7l8k1fcbo78lfouk99', 1774194923, 'modx.user.contextTokens|a:0:{}'),
('9tc3conjcfoflpt6jeq004vfb5', 1776600510, 'modx.user.contextTokens|a:0:{}'),
('9tegjnqel9t3dv137h7vpko2dp', 1774966705, 'modx.user.contextTokens|a:0:{}'),
('9ti6mfmd36cnh492nvfkf8frbr', 1775368021, 'modx.user.contextTokens|a:0:{}'),
('9ulmhnq8jqmluq0cpf0kvs13li', 1776460731, 'modx.user.contextTokens|a:0:{}'),
('9v50e47je16q61fb70u78957gb', 1776656769, 'modx.user.contextTokens|a:0:{}'),
('9va61m6calatbu9nfrsbtkjp12', 1774924153, 'modx.user.contextTokens|a:0:{}'),
('9vgd89makhjsk6e8damlj5t5si', 1773929002, 'modx.user.contextTokens|a:0:{}'),
('9vpkmpdr639mp8mnstd3lpgbca', 1776908377, 'modx.user.contextTokens|a:0:{}'),
('9vrh36akd1e6vjnruuj782ppm3', 1777448888, 'modx.user.contextTokens|a:0:{}'),
('a03adspqolabbtdmtqchtcmvv9', 1775175554, 'modx.user.contextTokens|a:0:{}'),
('a06a87m3e9i73md0u9osi624u9', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('a0af109i7bfng760bc70ga65ae', 1776205428, 'modx.user.contextTokens|a:0:{}'),
('a0c0a4u7nt4mvhvf4a6oab5vpt', 1775766258, 'modx.user.contextTokens|a:0:{}'),
('a0kmfgnvev3oibnh9n8c71uut1', 1775091630, 'modx.user.contextTokens|a:0:{}'),
('a0onbaohnsghnmrp6arepcc17v', 1776313073, 'modx.user.contextTokens|a:0:{}'),
('a157q6hp8l92j9ovpuipjfn7fp', 1776717432, 'modx.user.contextTokens|a:0:{}'),
('a1d0lfl63ffc0rhdtcv10o21hd', 1775368017, 'modx.user.contextTokens|a:0:{}'),
('a1df9vrhm7iurmpqv0hik2i1qb', 1774026151, 'modx.user.contextTokens|a:0:{}'),
('a1gs0v24q5nilcunj2gb4o5fp4', 1773999750, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:2;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_169bd1679d52622.85683003\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"69bd16862db646.81912048\";}'),
('a1plpb6p2e5mgd16jc3l3hf4pc', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('a1ung0a7j6hdvc0q6qlja7tei4', 1775863916, 'modx.user.contextTokens|a:0:{}'),
('a22embjrccgrulm77rb6fuqbma', 1774248345, 'modx.user.contextTokens|a:0:{}'),
('a2g8352l9eamou7tktrtrl89du', 1777027569, 'modx.user.contextTokens|a:0:{}'),
('a31u8a569oaa9s6ndcnmp7cjhh', 1775652164, 'modx.user.contextTokens|a:0:{}'),
('a35mobb5q1lui2qi7im8vf035v', 1776494659, 'modx.user.contextTokens|a:0:{}'),
('a3a5h3kso6ad6rkl8j7uq91f6i', 1775366181, 'modx.user.contextTokens|a:0:{}'),
('a3i70hddj252ebnpmvtgmvbe6g', 1774796860, 'modx.user.contextTokens|a:0:{}'),
('a49phtghm2pkcr022ba1q8uvio', 1774666870, 'modx.user.contextTokens|a:0:{}'),
('a4d76fmagto97kr4if7923afpu', 1774790414, 'modx.user.contextTokens|a:0:{}'),
('a50qrcksa4iftdni5m9detf5oc', 1773916515, 'modx.user.contextTokens|a:0:{}'),
('a5f71p1nscgcjdlmtfmupdlib3', 1774814768, 'modx.user.contextTokens|a:0:{}'),
('a5gvsdoc0k4tqbhk1baq7pnrgn', 1776717432, 'modx.user.contextTokens|a:0:{}'),
('a63ch25luuktj7l5o65ass27ko', 1776696787, 'modx.user.contextTokens|a:0:{}'),
('a67kd3sqqqe58evdk8thf8j6n9', 1774319471, 'modx.user.contextTokens|a:0:{}'),
('a689ddhmjhs5gtrqd2o72845jk', 1776203781, 'modx.user.contextTokens|a:0:{}'),
('a6cm1gnak3ic310a77krl6302g', 1774615864, 'modx.user.contextTokens|a:0:{}'),
('a6ntmupmlcfthgllbh6l5endhd', 1775230141, 'modx.user.contextTokens|a:0:{}'),
('a70d1ljuvbvv4gfd2uqposh1ij', 1777067447, 'modx.user.contextTokens|a:0:{}'),
('a770m5lol7ria869p603uc26pp', 1776025477, 'modx.user.contextTokens|a:0:{}'),
('a7dnj19s38r71holtlv87j72f0', 1774706279, 'modx.user.contextTokens|a:0:{}'),
('a7k16tgptue3s0joed993a9k8t', 1776715751, 'modx.user.contextTokens|a:0:{}'),
('a7n76t04p59rvb0gaen8bbpp2k', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('a7s0713inad5hjgfj2bkugp414', 1777118092, 'modx.user.contextTokens|a:0:{}'),
('a95k0e7oacrftuv2p474s1c3va', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('a9m57chb8detosnupal4v5q4ii', 1776416454, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('a9tt6srtv8gk4k50sj3ul0dlg0', 1774026116, 'modx.user.contextTokens|a:0:{}'),
('a9vag1tljsdlfiimjohvi5epti', 1774954741, 'modx.user.contextTokens|a:0:{}'),
('aa07dofbobnfmo01ou2ulcs3gk', 1777091353, 'modx.user.contextTokens|a:0:{}'),
('ab4453k2icgt21qa1f9fg95dr5', 1776868890, 'modx.user.contextTokens|a:0:{}'),
('ab49if5adj5m9rav3cldghrapt', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('abi4h56s3c018da4ljj7q48nuf', 1774100100, 'modx.user.contextTokens|a:0:{}'),
('acmiglsqnd2jp9r1cf94mpini8', 1775356996, 'modx.user.contextTokens|a:0:{}'),
('actpf71ac8a3nr9tbatq522i5u', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('adsqgnjgjckcpfdfe3pvu82fd5', 1775017966, 'modx.user.contextTokens|a:0:{}'),
('advsl18iphq37i4vk1llljnjh2', 1775342234, 'modx.user.contextTokens|a:0:{}'),
('ae0fsf142g3ei9j0hfnb37clca', 1774658612, 'modx.user.contextTokens|a:0:{}'),
('ae6g74bhskl6bu8m6b1ev4r1mn', 1773940481, 'modx.user.contextTokens|a:0:{}'),
('ae7kg1v4iidlh97urrk5qmc566', 1775853472, 'modx.user.contextTokens|a:0:{}'),
('aesa7cdpljt0uhgjmpvdd3o5oi', 1775950675, 'modx.user.contextTokens|a:0:{}'),
('af3r763a89169viknathqcsve3', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('afafh4ji8qp8agnoc7loql8mpc', 1775362765, 'modx.user.contextTokens|a:0:{}'),
('afal034shfl5j2n72q4175uut1', 1776708888, 'modx.user.contextTokens|a:0:{}'),
('afhgljc299dsnpa5klj5ctjad6', 1776831412, 'modx.user.contextTokens|a:0:{}'),
('agagtmen3mibr4898fhr4qov8p', 1775585321, 'modx.user.contextTokens|a:0:{}'),
('agg6ibv8rrs5ns2hbtm82utith', 1776683233, 'modx.user.contextTokens|a:0:{}'),
('aggeihskeglo5verhd17l3u143', 1775450623, 'modx.user.contextTokens|a:0:{}'),
('agnscae4ojbit1qlh7rau8o8tj', 1775189875, 'modx.user.contextTokens|a:0:{}'),
('aha66a6ff8oond26fj753vjf9e', 1775888801, 'modx.user.contextTokens|a:0:{}'),
('ahdeha0cee0pvols6d0gjp288c', 1777378353, 'modx.user.contextTokens|a:0:{}'),
('ahh2fl058qrpbet6sl8oulpflc', 1775636740, 'modx.user.contextTokens|a:0:{}'),
('aidaulenuo3orqg8hsj7jqb1sm', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('aieh0gpd4hbpjqo67eqfpig19e', 1774758103, 'modx.user.contextTokens|a:0:{}'),
('ailhivjo1p2qk8uflq131a44g1', 1774729999, 'modx.user.contextTokens|a:0:{}'),
('airsbppfsgl8d9j0icgogdbuil', 1777070313, 'modx.user.contextTokens|a:0:{}'),
('aiuvgb7h5h5uge8tctlpbv5fjn', 1776212804, 'modx.user.contextTokens|a:0:{}'),
('ajdfnk4j2m3s7kp12otjaeaoij', 1774329722, 'modx.user.contextTokens|a:0:{}'),
('ak30gljdpbd2qm13tac6p3vnvf', 1774618435, 'modx.user.contextTokens|a:0:{}'),
('ak3vn1cad1klg283g337rb3mr7', 1773926840, 'modx.user.contextTokens|a:0:{}'),
('ak5usg8ceg4ahv6ar7a0e835fm', 1774145194, 'modx.user.contextTokens|a:0:{}'),
('ak8jt3upo1tk0jt6tecgpg8mik', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('ak9nhueb2thba1hbjdtof434k9', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('akbju73jbt0d4petn2i293pv45', 1777138714, 'modx.user.contextTokens|a:0:{}'),
('akc78a077aabt2j0dquh4uhp2g', 1775152096, 'modx.user.contextTokens|a:0:{}'),
('ake2uprus7esk13rlekkj3488m', 1774251885, 'modx.user.contextTokens|a:0:{}'),
('aks657icg7pj0d42l287m0e530', 1773918939, 'modx.user.contextTokens|a:0:{}'),
('akvl1d16l71rtp5bkecngtrmbd', 1774883934, 'modx.user.contextTokens|a:0:{}'),
('alhnpsnn1ivjvf6st4l7f9nguk', 1774239627, 'modx.user.contextTokens|a:0:{}'),
('alq1qo24u1a8a1nv5bcvutp4do', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('am0gltns2hshmb5j6ksh74o380', 1776717428, 'modx.user.contextTokens|a:0:{}'),
('aml4a45m44fjfaqekqa440kan5', 1777131911, 'modx.user.contextTokens|a:0:{}'),
('amlhubqhf317aqnjgh5pop463p', 1775891117, 'modx.user.contextTokens|a:0:{}'),
('an8bc3db5k3kkofh1moeur9c02', 1776201113, 'modx.user.contextTokens|a:0:{}'),
('an8hh8qjfp9tbhlpoq3k8a657b', 1776326874, 'modx.user.contextTokens|a:0:{}'),
('antan24oeiftc0rvgi49u8iijs', 1776028956, 'modx.user.contextTokens|a:0:{}'),
('ao8l1mvgvpi2bdt9g8490a7d6s', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('ap33euqrhtbtlkv2hbkuejndga', 1774819897, 'modx.user.contextTokens|a:0:{}'),
('ap72u18cak05lbdtdnijnjreta', 1775381125, 'modx.user.contextTokens|a:0:{}'),
('ap9vnr3nph92j9lqd5jf62ges3', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('apb48ovjk997fidhhj1kksaalt', 1775560748, 'modx.user.contextTokens|a:0:{}'),
('apm2kc4rqra7r5kb5eqh7qcvnm', 1774602477, 'modx.user.contextTokens|a:0:{}'),
('aqsq39ro6r89f9apj3l8547sj2', 1774431161, 'modx.user.contextTokens|a:0:{}'),
('ar30sik9d24jresm4bcr7nedef', 1775991237, 'modx.user.contextTokens|a:0:{}'),
('arfeamplp5uu3geos0mvhuiue2', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('arld7ucu1kopleklp0q7jlb3fp', 1777052284, 'modx.user.contextTokens|a:0:{}'),
('as3s3o6bkrplfo3viguhfap9f7', 1776419039, 'modx.user.contextTokens|a:0:{}'),
('asckpgpbi18qi0sealuq4auoir', 1777119309, 'modx.user.contextTokens|a:0:{}'),
('at164jbovg3cein85febst0vcb', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('at3folevegogvqcg2jm465hd0c', 1777388627, 'modx.user.contextTokens|a:0:{}'),
('atku1m805763dv5krsvkggvrlv', 1775090664, 'modx.user.contextTokens|a:0:{}'),
('aub278fmbn5cgckqs5bk6d97s2', 1776547781, 'modx.user.contextTokens|a:0:{}'),
('augica5mkcbe37hqp0jcdbhudp', 1774386656, 'modx.user.contextTokens|a:0:{}'),
('auglse5745evh66jkbon6nmlr7', 1777378182, 'modx.user.contextTokens|a:0:{}'),
('aur07l4po7gpp52g207bdj0rrr', 1774200134, 'modx.user.contextTokens|a:0:{}'),
('av3905um1ui2set6uodb1kq1oj', 1775585183, 'modx.user.contextTokens|a:0:{}'),
('av4freigh85ompuo1osc8u99ip', 1776324293, 'modx.user.contextTokens|a:0:{}'),
('av66ciijhd3603q53j98fak8vl', 1775880427, 'modx.user.contextTokens|a:0:{}'),
('av8jqh1shutdps4pgf14f39ltm', 1776701810, 'modx.user.contextTokens|a:0:{}'),
('avk1n6367l7q0lj56hn6fbu9q3', 1774490545, 'modx.user.contextTokens|a:0:{}'),
('b0e0n154ke9k9ge907tfj14tgh', 1776824570, 'modx.user.contextTokens|a:0:{}'),
('b0jq5alph34iumsler4tdaonn1', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('b0mvu9mobl1o2jilpk3f0d7jbq', 1777343657, 'modx.user.contextTokens|a:0:{}'),
('b0qankgba2rkfhs03hiodk7bsf', 1776309895, 'modx.user.contextTokens|a:0:{}'),
('b1i6taf4sc50m5ururmnbso73o', 1774525178, 'modx.user.contextTokens|a:0:{}'),
('b1ibagragu36dkd0r18r1coitf', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('b1lku4mvgdul0lm51p9uh7nus4', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('b2u0dtut7sshpcjobudnb0c400', 1775529373, 'modx.user.contextTokens|a:0:{}'),
('b44n21vbh1ooq7e1bium9rore8', 1774024943, 'modx.user.contextTokens|a:0:{}'),
('b4e4vta2a9eq328i04rhrors8e', 1774306392, 'modx.user.contextTokens|a:0:{}'),
('b4eiahiepuefni54ood3cd0g22', 1774443377, 'modx.user.contextTokens|a:0:{}'),
('b4ispvuj5tttojiu203pnas4th', 1773926864, 'modx.user.contextTokens|a:0:{}'),
('b4n3mvnl6n2r68qq29edkl6q5a', 1775618886, 'modx.user.contextTokens|a:0:{}'),
('b51rb1b219cp8sq6odnf1gcv43', 1775629267, 'modx.user.contextTokens|a:0:{}'),
('b5dk3iioiqakegfi6mkpffms04', 1774547923, 'modx.user.contextTokens|a:0:{}'),
('b5ecrhlbtvd2jp5gg1iftnqdoa', 1777231041, 'modx.user.contextTokens|a:0:{}'),
('b5gm079e9n0vthv315edqtld3g', 1777061028, 'modx.user.contextTokens|a:0:{}'),
('b60ascflfjeb91pooj1aqqpl0g', 1776416452, 'modx.user.contextTokens|a:0:{}'),
('b61u29keoghodq9maul9e10r8k', 1777004582, 'modx.user.contextTokens|a:0:{}'),
('b66l6t9kf8igh0hrvtdlandf4m', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('b67b4b90ik2d3l4gp07rffsqto', 1775734977, 'modx.user.contextTokens|a:0:{}'),
('b6fvtthhmirq52p7ldpbdrtnp1', 1776157385, 'modx.user.contextTokens|a:0:{}'),
('b6sqcjtd925jbi23teln1haig1', 1774651915, 'modx.user.contextTokens|a:0:{}'),
('b79ekt6ioki8870e96qkgb7ea4', 1775138728, 'modx.user.contextTokens|a:0:{}'),
('b7doae36loguqnghvrrae0vll1', 1775250797, 'modx.user.contextTokens|a:0:{}'),
('b7g0lpqb43asieh9ak4opuu72q', 1776375331, 'modx.user.contextTokens|a:0:{}'),
('b8jhk29h6j1724q6o5p95tt4fh', 1776664919, 'modx.user.contextTokens|a:0:{}'),
('b8vap2i4phooikjlpd1bi59ssk', 1775751570, 'modx.user.contextTokens|a:0:{}'),
('b8vhjndpccjv53vbsamsddl1db', 1775335378, 'modx.user.contextTokens|a:0:{}'),
('b9a5i82b8oa4kemtsm2iqm23n9', 1774477295, 'modx.user.contextTokens|a:0:{}'),
('b9srh2u2f40l7s8ggg3n573lqp', 1774985491, 'modx.user.contextTokens|a:0:{}'),
('ba51do7ijmi0bt9rsppqm4d1ok', 1774420519, 'modx.user.contextTokens|a:0:{}'),
('ba5pqgvv4a9nf767po2k7dfkmd', 1776921731, 'modx.user.contextTokens|a:0:{}'),
('ba7fcb6ns5kmr4vm991dknpd36', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('baem2fb5nej81t4v0p42f2ok4t', 1775796718, 'modx.user.contextTokens|a:0:{}'),
('bakoc42brspt57loq13usellai', 1775292522, 'modx.user.contextTokens|a:0:{}'),
('bbj829elj7osk1r9cgfsef5ke6', 1776028782, 'modx.user.contextTokens|a:0:{}'),
('bbqjpu34tdonjt2r4oi3s5ors9', 1775270515, 'modx.user.contextTokens|a:0:{}'),
('bckpb35sgm8icjs7l4khverdi9', 1775940640, 'modx.user.contextTokens|a:0:{}'),
('bcmlbs7ij8e3ivtq3tbsec7fdb', 1774457686, 'modx.user.contextTokens|a:0:{}'),
('bcnus8v57mgkvnq215ntctbsip', 1774731964, 'modx.user.contextTokens|a:0:{}'),
('bct9b6ags8mldapck2ceehjr59', 1775910559, 'modx.user.contextTokens|a:0:{}'),
('bd0tp9vrslohp169as9ejol0a2', 1774090294, 'modx.user.contextTokens|a:0:{}'),
('bd42tq3onsuln84agknrietatn', 1774723831, 'modx.user.contextTokens|a:0:{}'),
('bdcju6esoee46jc3jrtlomsmrj', 1774690998, 'modx.user.contextTokens|a:0:{}'),
('bdgtj13teim2723a5e5q66o3l8', 1775044211, 'modx.user.contextTokens|a:0:{}'),
('bdn7o6us3gpfglpa875p1cevub', 1775576154, 'modx.user.contextTokens|a:0:{}'),
('bdnvhrl6dltb2e4h3mqugi4ecl', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('bdrdh6r7cmnc8a19aimrbi68tq', 1774977171, 'modx.user.contextTokens|a:0:{}'),
('beanrqk1e5lklfh3id176am3ri', 1774604470, 'modx.user.contextTokens|a:0:{}'),
('belt2a2vc8kbet8nies2ev24nt', 1774609354, 'modx.user.contextTokens|a:0:{}'),
('bervuh8quq8fn36an1knu70vfr', 1775643400, 'modx.user.contextTokens|a:0:{}'),
('bf69gkn4fg2erph6tbf408qupq', 1774261238, 'modx.user.contextTokens|a:0:{}'),
('bf7t024255l37dtsbvqkp1irfq', 1774903384, 'modx.user.contextTokens|a:0:{}'),
('bg3eih5spdvopaqrtkjf37242f', 1774087764, 'modx.user.contextTokens|a:0:{}'),
('bhdgshl05c8otumhc9605civj4', 1776717429, 'modx.user.contextTokens|a:0:{}'),
('bhktghlmiimghdl9mbrq4v5nqi', 1775438634, 'modx.user.contextTokens|a:0:{}'),
('bhuujkgoig10bd8e91fpkehp5v', 1774194997, 'modx.user.contextTokens|a:0:{}'),
('bi14isnus3fegu31qkfnb3b7sc', 1774088202, 'modx.user.contextTokens|a:0:{}'),
('bi59ocp203fiuqe0li82rkup4o', 1773856526, 'modx.user.contextTokens|a:0:{}'),
('bii7t5r0nma1p6irm3loq554ei', 1774701610, 'modx.user.contextTokens|a:0:{}'),
('biit9o95p0lq2o3n309vu88e7u', 1777404073, 'modx.user.contextTokens|a:0:{}'),
('bim8v99sjaek62fsnisvidbqmv', 1776301749, 'modx.user.contextTokens|a:0:{}'),
('bjan7760afdoju8rj5v6bs5fjl', 1776937139, 'modx.user.contextTokens|a:0:{}'),
('bjbv8q69mkkovhohu3l8s4lu6o', 1774481962, 'modx.user.contextTokens|a:0:{}'),
('bjlb31hq42h6e69nph7d5fnah4', 1774927035, 'modx.user.contextTokens|a:0:{}'),
('bjmmcofhl6umvr5fc5g9h8cqsq', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('bjqal8r6lu2k4vn0269b81md8g', 1776161843, 'modx.user.contextTokens|a:0:{}'),
('bk4fl3i7u7fir9p6jsopnmdisd', 1775112330, 'modx.user.contextTokens|a:0:{}'),
('bkkg15sm0ans5kp1jmuo1ck45c', 1776626505, 'modx.user.contextTokens|a:0:{}'),
('bkthdo1hie1efqn99g9icb3der', 1774592463, 'modx.user.contextTokens|a:0:{}'),
('bkuboa07j2p29m7l12qu2kolki', 1774188231, 'modx.user.contextTokens|a:0:{}'),
('bl5l8mbao4ilpchsjltv4pl19k', 1776718333, 'modx.user.contextTokens|a:0:{}'),
('blqnbt944a7qnm6ls658hoonsn', 1776191640, 'modx.user.contextTokens|a:0:{}'),
('bm89snvcjetm7akir6p6823obc', 1777539528, 'modx.user.contextTokens|a:0:{}'),
('bmgv8nto5tn23991qlndhcf6a9', 1776870428, 'modx.user.contextTokens|a:0:{}'),
('bn4m44804hca38l6ouelq0fug8', 1774930593, 'modx.user.contextTokens|a:0:{}'),
('bnjnopvjkq6oqhr316jts3nfig', 1776245959, 'modx.user.contextTokens|a:0:{}'),
('bo4sffvdr4th7rl0u5m8l0995p', 1774602477, 'modx.user.contextTokens|a:0:{}'),
('bo9btqs892u7aup643sci33etc', 1774498116, 'modx.user.contextTokens|a:0:{}'),
('bocfb93apiadi3t51ns7m7anfj', 1777206168, 'modx.user.contextTokens|a:0:{}'),
('boi86f6qidhgp8a1fmaiperr3h', 1775422844, 'modx.user.contextTokens|a:0:{}'),
('bopao3s48in8pei7e98tjochvq', 1776609130, 'modx.user.contextTokens|a:0:{}'),
('boqs26phmujvu33mu3ea3gm0ua', 1776009465, 'modx.user.contextTokens|a:0:{}'),
('bosak4kj0aumh2bra36ln9urkv', 1775723543, 'modx.user.contextTokens|a:0:{}'),
('bpd02jnper0albu2o15se4qjev', 1774094318, 'modx.user.contextTokens|a:0:{}'),
('bq1ck2m39300hv9aoogbstgp34', 1776148339, 'modx.user.contextTokens|a:0:{}'),
('bq5pd7pb5381kium5qfunflcms', 1776646342, 'modx.user.contextTokens|a:0:{}'),
('bq7pnrk27u2okg2lna7eteh41k', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('br49hbg385uvp3f5vu5s8rq0c4', 1776751188, 'modx.user.contextTokens|a:0:{}'),
('br96jjmkiilpk1qmflsno6u23f', 1774695134, 'modx.user.contextTokens|a:0:{}'),
('bre6o30oqde1cjii45j9sptqlu', 1774498772, 'modx.user.contextTokens|a:0:{}'),
('bs6pdfkqaftqsd2fc62nbjpb1b', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('bs76fefdaio09kqrj54n9mocbf', 1774107030, 'modx.user.contextTokens|a:0:{}'),
('bslmbeq6p2v6mtmqmjc6mgcd91', 1776509505, 'modx.user.contextTokens|a:0:{}'),
('bslv1vc8rptr3gtmo91pedfbl4', 1774306909, 'modx.user.contextTokens|a:0:{}'),
('bsmvuh7qdr2f98fm6s3g7rv4uo', 1777067491, 'modx.user.contextTokens|a:0:{}'),
('bsu3n06s9ikfng5o8u1hoonfhr', 1775368014, 'modx.user.contextTokens|a:0:{}'),
('bt8jvn9n7ds96gqfhgvop1tnl6', 1775208322, 'modx.user.contextTokens|a:0:{}'),
('btfmajucqn8r5779iencoa05cb', 1773939304, 'modx.user.contextTokens|a:0:{}'),
('btpqs4k0274h784pqo6d79o607', 1775814299, 'modx.user.contextTokens|a:0:{}'),
('bu2pc2hcc6ft26seaurjkj9n8h', 1777448888, 'modx.user.contextTokens|a:0:{}'),
('bu5fd14duoj8fqs0o96bkc253s', 1775853703, 'modx.user.contextTokens|a:0:{}'),
('bvpnsg5j7iu67tb00fpkbpee1j', 1775224353, 'modx.user.contextTokens|a:0:{}'),
('c07ama03dpi0m2an131oke534b', 1776924600, 'modx.user.contextTokens|a:0:{}'),
('c0jljn5gpr1cmcjqc0l7pi8fuv', 1776468839, 'modx.user.contextTokens|a:0:{}');
INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('c13v7riad6cohm5tfhh0h508qa', 1776493712, 'modx.user.contextTokens|a:0:{}'),
('c14h90lbn8kggfmsbam08k2g79', 1773914630, 'modx.user.contextTokens|a:0:{}'),
('c188eh5mn1ib5lu7trdp1qhsau', 1774534130, 'modx.user.contextTokens|a:0:{}'),
('c195766portohmhqjo7f3l7u3u', 1776515055, 'modx.user.contextTokens|a:0:{}'),
('c1qsfi4fiimsrn9ntqftk0083v', 1774423645, 'modx.user.contextTokens|a:0:{}'),
('c1tvhvcr7n40o4ps0se6i1kg71', 1774635188, 'modx.user.contextTokens|a:0:{}'),
('c227ru9c2ta44qgp8c50r0krm5', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('c23a2uevh9luh3e0l7kp1f0gfv', 1775880441, 'modx.user.contextTokens|a:0:{}'),
('c2kji0s1oso0kku7ed9qpa1rj6', 1777022394, 'modx.user.contextTokens|a:0:{}'),
('c30jid8l9cvfakkp8uubr5vqjb', 1777118041, 'modx.user.contextTokens|a:0:{}'),
('c35cs3npt4k75kd5l9ebevpqfh', 1776145370, 'modx.user.contextTokens|a:0:{}'),
('c3qk2qcl1thjnq8dtciluek3gr', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('c49v4n99rs0i59csakkh1it18a', 1776889691, 'modx.user.contextTokens|a:0:{}'),
('c4m0gin5gk5uerjjtal6e1q8hj', 1774999234, 'modx.user.contextTokens|a:0:{}'),
('c4p97j7lvban4rqdq1jsc1g5mj', 1774540866, 'modx.user.contextTokens|a:0:{}'),
('c4ulqdsueq5a4cus2mna75gpd4', 1776826995, 'modx.user.contextTokens|a:0:{}'),
('c5ffbd271b4783vknoerrhbngd', 1774206417, 'modx.user.contextTokens|a:0:{}'),
('c5g1mmff94pgsrud6i7nbdov8e', 1775997841, 'modx.user.contextTokens|a:0:{}'),
('c63gdskimvn45t30hbnb43o5tl', 1775628603, 'modx.user.contextTokens|a:0:{}'),
('c6dspggrm2lrab0ijqjfvh1e2h', 1774106941, 'modx.user.contextTokens|a:0:{}'),
('c6fkjltdl3gb9hv0vukvpfcn00', 1775295918, 'modx.user.contextTokens|a:0:{}'),
('c6mp57fqlksvdl733ddrmcr6i2', 1776489773, 'modx.user.contextTokens|a:0:{}'),
('c6vbrq6gesq5e92l57s6q1kvji', 1775431739, 'modx.user.contextTokens|a:0:{}'),
('c707c0kho0j54r751qmh0t71k2', 1775945624, 'modx.user.contextTokens|a:0:{}'),
('c81m5epsrat8sclg7fsh3glpe6', 1775208328, 'modx.user.contextTokens|a:0:{}'),
('c8s9b8r5bg4t91vibb8603bh02', 1775716201, 'modx.user.contextTokens|a:0:{}'),
('c8sfbvbbpf56p04bsej8tvahfo', 1776583311, 'modx.user.contextTokens|a:0:{}'),
('c94ecp94bcbl3ud6v7bpvhdvpi', 1775744130, 'modx.user.contextTokens|a:0:{}'),
('c97ekvrdq1ae0t1kca7bi35rlc', 1775229993, 'modx.user.contextTokens|a:0:{}'),
('c9eos9e3ecsjemrsprbot8h856', 1776766819, 'modx.user.contextTokens|a:0:{}'),
('ca8fikgcji8uqtu8vocf6o4gbn', 1773861740, 'modx.user.contextTokens|a:0:{}'),
('cabfkl0biiklj946dim4rjk0fa', 1776832020, 'modx.user.contextTokens|a:0:{}'),
('cae3ofqvnl0u3cpmun6gqhqtrc', 1775850664, 'modx.user.contextTokens|a:0:{}'),
('cam3c0nu04pfvmpobbelprulfc', 1775212038, 'modx.user.contextTokens|a:0:{}'),
('caqq8cpjgrnht9jmjgmnvr973q', 1773857413, 'modx.user.contextTokens|a:0:{}'),
('cbo5149hneg2d6j6aurqlkue4d', 1775814299, 'modx.user.contextTokens|a:0:{}'),
('cbr3g86l7o9p3jjsbtn1c86ufg', 1776075636, 'modx.user.contextTokens|a:0:{}'),
('cchquoug2cjkpfc33ivamu951s', 1775342205, 'modx.user.contextTokens|a:0:{}'),
('cdhtlmncbs2djvbe7ghrgtoegs', 1777284180, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:3;'),
('ce904vsg4mgaiipab71oguqvaa', 1775438828, 'modx.user.contextTokens|a:0:{}'),
('cevtvv4kcgs0ed3b2d8qtgt3b8', 1777067455, 'modx.user.contextTokens|a:0:{}'),
('cf52rnletbsb56q4bjq2sbbppp', 1774403085, 'modx.user.contextTokens|a:0:{}'),
('cfp55mkobubki9eanhetp1o1is', 1776175203, 'modx.user.contextTokens|a:0:{}'),
('cg1ptn5r1u16g92t9cth0fk6ui', 1775686896, 'modx.user.contextTokens|a:0:{}'),
('cgid8arrngju9fph3rinota6a2', 1776489222, 'modx.user.contextTokens|a:0:{}'),
('chn2sgq22jsk27abc4hadd1acs', 1774261238, 'modx.user.contextTokens|a:0:{}'),
('ci16ccmk05khhrqtnqnrp84kcl', 1775091629, 'modx.user.contextTokens|a:0:{}'),
('cio6oh9ijpvdeasm9g9fhfsj3e', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('cj7tlodrapmi1rkq8dnvgbgp3r', 1776512468, 'modx.user.contextTokens|a:0:{}'),
('cjjbjkod7u146udibuf1igjs6a', 1776707985, 'modx.user.contextTokens|a:0:{}'),
('ckkg9sufh0or43j4m610h6463j', 1776963039, 'modx.user.contextTokens|a:0:{}'),
('ckro63j1lh3nol4f8a71ke2dla', 1774541835, 'modx.user.contextTokens|a:0:{}'),
('ckv9dfm3a93pinu2sjqiqcmh12', 1777441034, 'modx.user.contextTokens|a:0:{}'),
('cl056hjjp61datb8pcc0nkn4eu', 1776249582, 'modx.user.contextTokens|a:0:{}'),
('clujtb7g5c45lam0u1f49n3rj6', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('cm884mapv4nqb52i33o45h4ag1', 1776292777, 'modx.user.contextTokens|a:0:{}'),
('cmtfgkq4eilbnfvu4edh0ft2sp', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('cmvbf65r1rrulrc0k2sui2k758', 1777134359, 'modx.user.contextTokens|a:0:{}'),
('cnvo2qfge68cout6u036qfq313', 1775115972, 'modx.user.contextTokens|a:0:{}'),
('co7doa806ra5mstmvttgnkv8gc', 1774497551, 'modx.user.contextTokens|a:0:{}'),
('cocteuot8lqlnc9552ooc0f3c3', 1773958680, 'modx.user.contextTokens|a:0:{}'),
('cor7mc34fj3bnrhsfe4bgghipu', 1776568822, 'modx.user.contextTokens|a:0:{}'),
('cp0rtdrs7bjupubrprcu0ta6mn', 1775450623, 'modx.user.contextTokens|a:0:{}'),
('cpj150i1841jjakh3p5k3ilr91', 1775967976, 'modx.user.contextTokens|a:0:{}'),
('cpn8vuatr44aucj198055cp67v', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('cppg1t1o892f1runkmbtbpn8gu', 1777436726, 'modx.user.contextTokens|a:0:{}'),
('cq28fjvo4dhm749vh32rghs7bh', 1773997926, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('cqp9n1ab78uak2it91fdvif5eg', 1777212853, 'modx.user.contextTokens|a:0:{}'),
('cqupictol519sd6cp3gjkho4so', 1776924601, 'modx.user.contextTokens|a:0:{}'),
('cr1jsurunrrh7c2666188o4cov', 1776589580, 'modx.user.contextTokens|a:0:{}'),
('crcbj9pg8kf1emgmriq6ju6v0a', 1774049219, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:157:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, 스리랑카\";s:7:\"dropoff\";s:75:\"Hilton Colombo, Sir Chittampalam A Gardiner Mawatha, 콜롬보 스리랑카\";s:4:\"date\";s:16:\"2026-04-03T11:30\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('cro157d1cisj6kengcg7itcvs2', 1775041139, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:18:\"Negombo, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-02T22:58\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('cs63tmpbp151m6h5msldts7aqd', 1774801376, 'modx.user.contextTokens|a:0:{}'),
('csi8u9m2uhjqj3hmvqhsn03rgs', 1776997514, 'modx.user.contextTokens|a:0:{}'),
('csvankcq3oosv17vr273aqnnof', 1777274626, 'modx.user.contextTokens|a:0:{}'),
('ctb7dm595hve0sp3eerhdbaf6k', 1774797516, 'modx.user.contextTokens|a:0:{}'),
('ctg65977nokh2f3g860f7ku0g2', 1775732389, 'modx.user.contextTokens|a:0:{}'),
('cu62t7nrhh2sv4lgok64phsa31', 1775881330, 'modx.user.contextTokens|a:0:{}'),
('cuc26j8f6cs9tb24qva4i2mj5k', 1775647976, 'modx.user.contextTokens|a:0:{}'),
('cun0g08enr16al0flofrt4a4de', 1774304077, 'modx.user.contextTokens|a:0:{}'),
('cvbbpij274gcp77qqfp61tm7vg', 1777308142, 'modx.user.contextTokens|a:0:{}'),
('cvcd5p3kdaeoo8td8lse7lmpse', 1774448206, 'modx.user.contextTokens|a:0:{}'),
('d03dob3m4ga9qgt49lg8t7dgpv', 1774674116, 'modx.user.contextTokens|a:0:{}'),
('d0cabagq1lnsubs68nden11nbq', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('d0dd0gbv1iinoi0ersl6b60im1', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('d0p5vkub2k9kmbiu8jfooe89dg', 1776846783, 'modx.user.contextTokens|a:0:{}'),
('d2ku46493jjtn4bgpbm06nvg76', 1775716647, 'modx.user.contextTokens|a:0:{}'),
('d3b39sjmov278kb4de4j7d3ng2', 1776419040, 'modx.user.contextTokens|a:0:{}'),
('d43cash2od5f1in6ik0qpgluck', 1774124631, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('d49ne6haqj8c8avukba1m59p0u', 1775319502, 'modx.user.contextTokens|a:0:{}'),
('d4irg9lr6i7k6jtiqmgjj7fba6', 1775449144, 'modx.user.contextTokens|a:0:{}'),
('d4s72sc748jdo610tgd1hr26ks', 1774417633, 'modx.user.contextTokens|a:0:{}'),
('d51rb7t1uekg1s293orhk7tehf', 1776838447, 'modx.user.contextTokens|a:0:{}'),
('d52ekfrq1a0nbh0hbf8g3ig9ab', 1775208322, 'modx.user.contextTokens|a:0:{}'),
('d5lsgh0be8sa01sncdalt6e6r9', 1775060014, 'modx.user.contextTokens|a:0:{}'),
('d60kkbraatvmov0m8pvc4kumoj', 1775893188, 'modx.user.contextTokens|a:0:{}'),
('d6np0d5b50cpq3i19bjdjf5ai7', 1777390824, 'modx.user.contextTokens|a:0:{}'),
('d7cd1d9ucrfja3683vsa6tbvob', 1774113400, 'modx.user.contextTokens|a:0:{}'),
('d7fkqd27lgffa0lqk4ohdds5vd', 1776595102, 'modx.user.contextTokens|a:0:{}'),
('d7i39dhk39b65el9saqecg00i9', 1775736165, 'modx.user.contextTokens|a:0:{}'),
('d7ue4f2boh8hbt8bpc7qti64d7', 1774799822, 'modx.user.contextTokens|a:0:{}'),
('d7v2216i2sjfi182p6do1gq3hr', 1775853469, 'modx.user.contextTokens|a:0:{}'),
('d86em1ces5er3qd4fr1usc8jac', 1777220154, 'modx.user.contextTokens|a:0:{}'),
('d8oequ8r5r3c9gffc1nr3ibmrt', 1776865936, 'modx.user.contextTokens|a:0:{}'),
('d9kgluoeru75ckm8l26te3lc5h', 1777073744, 'modx.user.contextTokens|a:0:{}'),
('dagd87b7e7a58mlncpve22t5fu', 1775580627, 'modx.user.contextTokens|a:0:{}'),
('daq8342fnupl8k07rs0lt72gl8', 1776564347, 'modx.user.contextTokens|a:0:{}'),
('db1piuuk3s1miscntmqd5im5ub', 1776044313, 'modx.user.contextTokens|a:0:{}'),
('dbhncak3jgtqql733h6ojgq1j2', 1775404268, 'modx.user.contextTokens|a:0:{}'),
('dboii5dap5aolh4u1ooe24n85i', 1775390207, 'modx.user.contextTokens|a:0:{}'),
('dbufmht7fqplp2vciej54ju85d', 1776414650, 'modx.user.contextTokens|a:0:{}'),
('dc95d6pivd78412gjosibqsnc2', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('dc9q474uk9ofhej9hn26dr4fff', 1777343658, 'modx.user.contextTokens|a:0:{}'),
('dcbm8hh724pheqmjv4algspvn6', 1774090474, 'modx.user.contextTokens|a:0:{}'),
('dco0uhh9kebpo18b9r9hu5nrg9', 1774006654, 'modx.user.contextTokens|a:0:{}'),
('dd5t06djvdu43gk055nf6gr0re', 1774900323, 'modx.user.contextTokens|a:0:{}'),
('ddabf1nqaqb13053vn67jvcliv', 1774403085, 'modx.user.contextTokens|a:0:{}'),
('ddf6qjkm7tg2j06ohm48alop2u', 1774971147, 'modx.user.contextTokens|a:0:{}'),
('ddu29sinebbk6h2smso4i16j2q', 1777308142, 'modx.user.contextTokens|a:0:{}'),
('de2mosag9v7058bpv08hoha7mc', 1775170109, 'modx.user.contextTokens|a:0:{}'),
('deat6gq7uc1r7nv4170nqeaar8', 1776939557, 'modx.user.contextTokens|a:0:{}'),
('deisiba80kfi38b88ju7c6q84q', 1776090678, 'modx.user.contextTokens|a:0:{}'),
('det5krkjkavdn761onggj14bhs', 1775826879, 'modx.user.contextTokens|a:0:{}'),
('df2b7lqmv523ais7t60o3j4rb5', 1774546967, 'modx.user.contextTokens|a:0:{}'),
('df4kg2c6ofa1714b4se2nojmeq', 1774383556, 'modx.user.contextTokens|a:0:{}'),
('dfi1n47r6r8rpqkdt26vkv1thg', 1774260843, 'modx.user.contextTokens|a:0:{}'),
('dg00324mrg1qjjuce2tcdphqjs', 1775485072, 'modx.user.contextTokens|a:0:{}'),
('dgc1jkkdsuotofdjuqqaam5uq8', 1774534141, 'modx.user.contextTokens|a:0:{}'),
('dgioc71uvsaokphjs21b2pn2bc', 1775384284, 'modx.user.contextTokens|a:0:{}'),
('dgkt5mnljruon8n9ivqh67j7i6', 1776104617, 'modx.user.contextTokens|a:0:{}'),
('dglr5s9dr15nfo1vmq3doakukt', 1777390823, 'modx.user.contextTokens|a:0:{}'),
('dgn1spdi9p9lcn1q2ut1u3rb6u', 1775600110, 'modx.user.contextTokens|a:0:{}'),
('dh2t5dfvq142ed2pjg87msji0k', 1777196852, 'modx.user.contextTokens|a:0:{}'),
('dh77lbdc5viadu9fd0llfe687f', 1774992351, 'modx.user.contextTokens|a:0:{}'),
('dhnal2h0s9s44t6hocqhicbgt7', 1776106640, 'modx.user.contextTokens|a:0:{}'),
('dhoi3erakqm0h2t41cms06rp2c', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('dhp0hbok3ds9b7jeo7hdgj3q0l', 1777028335, 'modx.user.contextTokens|a:0:{}'),
('di9g0o6d024dtopvd3794613j2', 1776626196, 'modx.user.contextTokens|a:0:{}'),
('dih4qgt6oi0nrl687e1ei4o5vm', 1774510354, 'modx.user.contextTokens|a:0:{}'),
('dimedq6664tl7oc0pnhu39pnrf', 1774455341, 'modx.user.contextTokens|a:0:{}'),
('dip5miihoap14i7bqnj6bg3rt9', 1774539917, 'modx.user.contextTokens|a:0:{}'),
('djcnhifknb46a8hkfgdjirdubn', 1775459835, 'modx.user.contextTokens|a:0:{}'),
('dk1g9kae0648g3d4n5uk55k6s2', 1776350070, 'modx.user.contextTokens|a:0:{}'),
('dkghv3osvf34b6gnq4m6bt0n31', 1777351628, 'modx.user.contextTokens|a:0:{}'),
('dkglkc6aaobc3vchsh01f8329p', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('dksrqo4mv4iqtgp8feclh4ug00', 1775822139, 'modx.user.contextTokens|a:0:{}'),
('dlre1qmjiq22cfsffs88sdnptc', 1777435322, 'modx.user.contextTokens|a:0:{}'),
('dmgatbk7f1kin50lm8v438bgj7', 1774106945, 'modx.user.contextTokens|a:0:{}'),
('dmjgdjnj0vff6hfmfma6qm4dhd', 1774095719, 'modx.user.contextTokens|a:0:{}'),
('dmkpr3g26jc5gfm4p57v32pal3', 1775641896, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:92:\"Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka\";s:7:\"dropoff\";s:62:\"Shangri-La Colombo, Galle Face Center Road, Colombo, Sri Lanka\";s:4:\"date\";s:16:\"2026-08-10T11:35\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('dmmnli90fbr6pp1t3fn6alpu0g', 1777135527, 'modx.user.contextTokens|a:0:{}'),
('dms30nsstn99fff2irduat5dcv', 1777261460, 'modx.user.contextTokens|a:0:{}'),
('dmum24k2nj3828q0vcgser5ucf', 1775946224, 'modx.user.contextTokens|a:0:{}'),
('dns5naohs2r6g0g3dopkvv58l8', 1773849990, 'modx.user.contextTokens|a:0:{}'),
('dog0l6608csmcr23dc0jgbo9b8', 1775129017, 'modx.user.contextTokens|a:0:{}'),
('dogleve4vpvoq306f3h9jl5ppt', 1777327790, 'modx.user.contextTokens|a:0:{}'),
('doi34ukrhtvkvb3s4hn093durr', 1777297943, 'modx.user.contextTokens|a:0:{}'),
('dp0qdb00fiutm3ujrsanve181a', 1775365797, 'modx.user.contextTokens|a:0:{}'),
('dp23jcg9ekvagf92bk32p2nj5i', 1774985488, 'modx.user.contextTokens|a:0:{}'),
('dqaduplb4uitam55va52u7je7h', 1774864290, 'modx.user.contextTokens|a:0:{}'),
('dr479681ddcspfv3s11u38q9ui', 1775489594, 'modx.user.contextTokens|a:0:{}'),
('dr4hrte0anssqj6ojjfb7vc3s1', 1774354335, 'modx.user.contextTokens|a:0:{}'),
('dro88201dkqua52p9sdp1tolup', 1774547923, 'modx.user.contextTokens|a:0:{}'),
('drtn943j12pe3mur2kctk5on5u', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('ds7ihmilo1s5i5slmve1v9f5lb', 1775326462, 'modx.user.contextTokens|a:0:{}'),
('dsgsn589ca00n6mgttfnc3glm9', 1777306852, 'modx.user.contextTokens|a:0:{}'),
('dsinnuffi1o9dc5hj43ms4h4qr', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('dti0gumv880hu84nc0j93k9sro', 1775769959, 'modx.user.contextTokens|a:0:{}'),
('dtvg2kbjo3a6qedo7bqc3144ll', 1776313215, 'modx.user.contextTokens|a:0:{}'),
('du0369dm88vvrsabhdo5qliihf', 1775222257, 'modx.user.contextTokens|a:0:{}'),
('duge7pt23t9u6rb3qvl9mlv70c', 1774497548, 'modx.user.contextTokens|a:0:{}'),
('duhvb0lqtr3jn2nhpdeunv9li3', 1774915353, 'modx.user.contextTokens|a:0:{}'),
('dumiva90gt6stbmin687bo8ig9', 1775293877, 'modx.user.contextTokens|a:0:{}'),
('duoh317r4ai482403vf5lj9juk', 1774260665, 'modx.user.contextTokens|a:0:{}'),
('duti4ll651b1lkv0iio8r5lr5t', 1774587070, 'modx.user.contextTokens|a:0:{}'),
('dv2847pr3j92r6h7k8guvpn5q5', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('dv8ba2hr1v6gt7aeck8ohji36d', 1776524062, 'modx.user.contextTokens|a:0:{}'),
('dv8cnqgqssg9h3u4raektdhkpk', 1776507294, 'modx.user.contextTokens|a:0:{}'),
('dv9kar9moitkf09tf9gudltr5a', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('dvd1pfua4r1h1pcc1i7aikq58l', 1777417506, 'modx.user.contextTokens|a:0:{}'),
('dvto97kkooam9utlj2s8adh763', 1776344899, 'modx.user.contextTokens|a:0:{}'),
('e0n5pqmronfqb5fnvcg8sh15kp', 1777379169, 'modx.user.contextTokens|a:0:{}'),
('e18clli6hpdb72jjnvd87nqotj', 1775583601, 'modx.user.contextTokens|a:0:{}'),
('e18oeabg9ql2etkse3vat7c2u9', 1777395023, 'modx.user.contextTokens|a:0:{}'),
('e1igg1una066smksgaa44mvijl', 1777102014, 'modx.user.contextTokens|a:0:{}'),
('e270pad92223tjh8vjtheu27rp', 1776534267, 'modx.user.contextTokens|a:0:{}'),
('e2br40ptkh8ljbi46d7lihgve3', 1775083350, 'modx.user.contextTokens|a:0:{}'),
('e2pi6mp747gcngd84ul2bee489', 1777263412, 'modx.user.contextTokens|a:0:{}'),
('e31tr30v9t2f024nolqrrqqn40', 1777018430, 'modx.user.contextTokens|a:0:{}'),
('e3i53kmdgd8lds69glap5p778h', 1776648298, 'modx.user.contextTokens|a:0:{}'),
('e3trm3g7qcfh86mfncve4vkras', 1774517502, 'modx.user.contextTokens|a:0:{}'),
('e5dvors89hrdmlk2vjolusj760', 1774974133, 'modx.user.contextTokens|a:0:{}'),
('e5hr9fo9ai1m7ev4grcmn074os', 1774947141, 'modx.user.contextTokens|a:0:{}'),
('e5vh1in6rhmrfdk8qvi52qf90f', 1775678695, 'modx.user.contextTokens|a:0:{}'),
('e654ahli56q0ruvta5ripg9ien', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('e6d1e24667f72ho278ln21446a', 1777226601, 'modx.user.contextTokens|a:0:{}'),
('e6dhla7hs4p5l754v0376dqopr', 1775816366, 'modx.user.contextTokens|a:0:{}'),
('e6equp1mek9q7kfap3fri0hfsg', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('e6hdcsmce7hs09cq65dognhlrh', 1774837648, 'modx.user.contextTokens|a:0:{}'),
('e734d4vere2l4febvli5q2uou2', 1777323152, 'modx.user.contextTokens|a:0:{}'),
('e75kf6ml1ci3lo4e0j19b5geo3', 1775368018, 'modx.user.contextTokens|a:0:{}'),
('e7aj0r5vrf6shs2r47r2b9pmf0', 1774936731, 'modx.user.contextTokens|a:0:{}'),
('e806s9vhnj535deoofmhe3a9i8', 1774174632, 'modx.user.contextTokens|a:0:{}'),
('e846gb7n6tu772dot944so1v5c', 1776269942, 'modx.user.contextTokens|a:0:{}'),
('e8epk9hcelm1mjgo8botjdcse2', 1775765517, 'modx.user.contextTokens|a:0:{}'),
('e97oatpr53912qsso4ub97ksh3', 1774248980, 'modx.user.contextTokens|a:0:{}'),
('e97ugej4mdhddidpe1h6gmj3s5', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('e9aq0ak2kt06frkqr7jsudgfnq', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('eaf3430c0mjbqp0t7j8lb1dbga', 1776044312, 'modx.user.contextTokens|a:0:{}'),
('eb41v0j9s66loubftf8i5ruk1t', 1777380303, 'modx.user.contextTokens|a:0:{}'),
('ebeaok5eo2oerp72e24i4k4ivt', 1776594925, 'modx.user.contextTokens|a:0:{}'),
('ebqb1frevlkkfdcc0nrf3l84gh', 1775489594, 'modx.user.contextTokens|a:0:{}'),
('ec1le3vor6vl5cnrg1p75ovlcm', 1777258999, 'modx.user.contextTokens|a:0:{}'),
('ec91pi7o8kj79ap1ruge9kpad7', 1776729682, 'modx.user.contextTokens|a:0:{}'),
('ecat0p6ciom7bpo7iaurj9birq', 1775735675, 'modx.user.contextTokens|a:0:{}'),
('eco46dr9s7h8duvrg4al8j8hnq', 1776339063, 'modx.user.contextTokens|a:0:{}'),
('ed6pnotvmfa9dpo173u1mkrt0q', 1775436322, 'modx.user.contextTokens|a:0:{}'),
('edfs3nolqfg5l3lbagq7d2gunb', 1775282346, 'modx.user.contextTokens|a:0:{}'),
('edg2pvro91550ahkqskumj07ar', 1774835081, 'modx.user.contextTokens|a:0:{}'),
('edlp3kt9tbpe6tmpi7qpl6jf77', 1776109160, 'modx.user.contextTokens|a:0:{}'),
('edn07q08r47d8ij20qsbeu3rbm', 1776752110, 'modx.user.contextTokens|a:0:{}'),
('eedvm3rk5hari0ais0u1t3na0m', 1773851170, 'modx.user.contextTokens|a:0:{}'),
('eehsilfgmamjhco1h862vckapc', 1775238150, 'modx.user.contextTokens|a:0:{}'),
('eerv3jmoshhlcrvv2icdb36a5u', 1774210898, 'modx.user.contextTokens|a:0:{}'),
('ef5pbi1un19uugbhpcakd97b6r', 1775663825, 'modx.user.contextTokens|a:0:{}'),
('efuipb9b9trqmsvopuc91b1kvi', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('eg1daefjj39vvjkspgr93gijr3', 1776247841, 'modx.user.contextTokens|a:0:{}'),
('egh2colqj56sejl9sibesvv1s8', 1775600112, 'modx.user.contextTokens|a:0:{}'),
('egqja2sb21tpma4b3ep4uuj01k', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('egvk4fae3opafat6fi9r92o8ki', 1776375373, 'modx.user.contextTokens|a:0:{}'),
('ei0p1d6qlej3jafo0qlk0vai7n', 1775666556, 'modx.user.contextTokens|a:0:{}'),
('eik91nuf122kfvfdefu0u4t0bc', 1775704169, 'modx.user.contextTokens|a:0:{}'),
('eior3vej6c0oh2omescno57b3f', 1777213059, 'modx.user.contextTokens|a:0:{}'),
('eitdpu96pu6ibk4jass09p2kv5', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('eiu12dc7ljhkofqeknckiav8et', 1776717431, 'modx.user.contextTokens|a:0:{}'),
('ejamrj5s7vcokcl48tjdufldv2', 1776192474, 'modx.user.contextTokens|a:0:{}'),
('ejfr3gtvu9923nc6i0qnci5sub', 1777296172, 'modx.user.contextTokens|a:0:{}'),
('ekefn7opl1ef6t31ud6ikhtkha', 1777338393, 'modx.user.contextTokens|a:0:{}'),
('ekglgssmrjj66su221veaeqvm3', 1776680307, 'modx.user.contextTokens|a:0:{}'),
('el4os602h24l7ek1pfsb8uat1h', 1777208754, 'modx.user.contextTokens|a:0:{}'),
('elc4bbjoa0lg4c5sg30p2u777d', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('elvugg5bd89905msipoas6da3n', 1776123636, 'modx.user.contextTokens|a:0:{}'),
('em3insmhu7sb6cmeidhu7moj26', 1774970742, 'modx.user.contextTokens|a:0:{}'),
('em4erj8nq0oiujqe1e1a14j0dr', 1775680166, 'modx.user.contextTokens|a:0:{}'),
('em5re7hs99kbqnrrctc50shm1u', 1776975596, 'modx.user.contextTokens|a:0:{}'),
('em9p049he7guplh1m29skugj3o', 1774819608, 'modx.user.contextTokens|a:0:{}'),
('emjd8ae100jcr76t0b3r2fmc8d', 1774601212, 'modx.user.contextTokens|a:0:{}'),
('en14j5hh0g9nfvaknsje2k9lor', 1776737600, 'modx.user.contextTokens|a:0:{}'),
('en9819m5i3b5loqimq4s63sef3', 1777145252, 'modx.user.contextTokens|a:0:{}'),
('enkf9j0u9fn5jm3fun2fo6oecd', 1776748860, 'modx.user.contextTokens|a:0:{}'),
('enpstllmr69lcpeqodjspkg4tg', 1776485786, 'modx.user.contextTokens|a:0:{}'),
('enqkfj7qq3d74pe3b83v1er6t9', 1775286454, 'modx.user.contextTokens|a:0:{}'),
('eo16j71h1v6hgq60tsf960qijl', 1774552091, 'modx.user.contextTokens|a:0:{}'),
('eo62egqj8i536qbf6j6mb85jb3', 1774737687, 'modx.user.contextTokens|a:0:{}'),
('eob308qa0efj47vi6eapbdpmah', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('eobv5a0opm1stitc1n94osb2p7', 1775852203, 'modx.user.contextTokens|a:0:{}'),
('eokbq71ljqvelb7cu6iac6165j', 1776775687, 'modx.user.contextTokens|a:0:{}'),
('eolv901d0kpcd6jhjkm9udc49q', 1774074809, 'modx.user.contextTokens|a:0:{}'),
('eommhu7vm240drvfquq9hl4g6k', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('ep133r4u1r17n3p1bo1iljpidp', 1775399157, 'modx.user.contextTokens|a:0:{}'),
('ep9oon2ln2h149b88p3968rmje', 1774106946, 'modx.user.contextTokens|a:0:{}'),
('epl5ujnvhupn82ir7f24r8qhi1', 1774094318, 'modx.user.contextTokens|a:0:{}'),
('epo7espb45qnufbtp6i9q95alm', 1775917143, 'modx.user.contextTokens|a:0:{}'),
('eprqks6ttdk19fsrft2m83tooa', 1775940640, 'modx.user.contextTokens|a:0:{}'),
('eptel4ddej2mr2sci749br9qls', 1775286203, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('eq8n8n6hae12h3o2k7gkfmr20m', 1775365798, 'modx.user.contextTokens|a:0:{}'),
('eqb91lgbsui4mp5sj1gqpd1ll9', 1776344900, 'modx.user.contextTokens|a:0:{}'),
('eqk1o7veabugcng4b3c2kpstbf', 1774613379, 'modx.user.contextTokens|a:0:{}'),
('er0ag5o77snkgc6pi0m2sg1bu4', 1777220167, 'modx.user.contextTokens|a:0:{}'),
('ercpq8dm47cuepnn7ulblo7qh2', 1775600108, 'modx.user.contextTokens|a:0:{}'),
('erpr6rvpls8lpn9ataltighd9p', 1774516866, 'modx.user.contextTokens|a:0:{}'),
('erubchsojq38nf78jrogvkj5h8', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('et1mq6o0vhsrg7pf1vrblg02g4', 1776975610, 'modx.user.contextTokens|a:0:{}'),
('euq64b29m64nsgireqjt9837ct', 1775747383, 'modx.user.contextTokens|a:0:{}'),
('ev9n7po97oh9eq2bloui78m26e', 1776785895, 'modx.user.contextTokens|a:0:{}'),
('evajqg4213acqpmqg9ooni67kq', 1773968583, 'modx.user.contextTokens|a:0:{}'),
('f003gq2c5c2tka9vrhnjhv3fjo', 1775535231, 'modx.user.contextTokens|a:0:{}'),
('f0210s7tgmmjsakija2557jn47', 1776964254, 'modx.user.contextTokens|a:0:{}'),
('f07rjhtndvn9nnvs6sadrgo3b9', 1775117991, 'modx.user.contextTokens|a:0:{}'),
('f0jlfrgqiestvfnlk3hvh5u5vn', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('f0l85f06uvr7m8bj3rc0r6b4e1', 1776454978, 'modx.user.contextTokens|a:0:{}'),
('f0lf5o7cj5mt5mu3uvtaunvcir', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('f0melesotp2mbkj77nvhndvaie', 1774304972, 'modx.user.contextTokens|a:0:{}'),
('f0oh006sj8e95lc3rkb3jqvk6n', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('f1o56po62mmouq8qbj2oj221mc', 1774856368, 'modx.user.contextTokens|a:0:{}'),
('f21me321qa5qbkunlvcfidu1n7', 1774274071, 'modx.user.contextTokens|a:0:{}'),
('f26tssselk28l9nd89tk9j8ate', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('f2dgbvju7vivfmvcleh8vbidnj', 1775850664, 'modx.user.contextTokens|a:0:{}'),
('f2hk8nfu3hnlvtovk5pj1phots', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('f39u9srmh9e6p6tt0m058uiejp', 1776294395, 'modx.user.contextTokens|a:0:{}'),
('f3c2m42q5tie90ctf30rtpcidu', 1774686426, 'modx.user.contextTokens|a:0:{}'),
('f3fsjresfnpb0g2vfksmca0jj8', 1777441093, 'modx.user.contextTokens|a:0:{}'),
('f3t7034q2e3s7iio8j5vm8ohfi', 1777436244, 'modx.user.contextTokens|a:0:{}'),
('f462papk3nht0pmcjn7ki14u9d', 1774535134, 'modx.user.contextTokens|a:0:{}'),
('f4b63liul7c3qc74ko8p08fc6g', 1776680306, 'modx.user.contextTokens|a:0:{}'),
('f4fvhvgnd7ljq3ia77jgrtj574', 1777011754, 'modx.user.contextTokens|a:0:{}'),
('f4i2v63oe2vvmsqgl0cgg3pemm', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('f4rmbvj42gjfa80u5qgepercoj', 1774706279, 'modx.user.contextTokens|a:0:{}'),
('f5234uq6vclq350dlpu0il8ckv', 1774195016, 'modx.user.contextTokens|a:0:{}'),
('f56shjv7tochj00pen7f5o8a3o', 1777448888, 'modx.user.contextTokens|a:0:{}'),
('f5r9qn52b7m9bn8ni7c03h59j1', 1774947139, 'modx.user.contextTokens|a:0:{}'),
('f5vl6vkgqnmh7it4ssiqdpdmmv', 1775887657, 'modx.user.contextTokens|a:0:{}'),
('f64red0sedd3c66n57vje0nqcb', 1776537157, 'modx.user.contextTokens|a:0:{}'),
('f6bur29a4pbkagm98dht5anhff', 1777439981, 'modx.user.contextTokens|a:0:{}'),
('f6c81n58doqki4ro7br2jjkht1', 1776609131, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('f6h8hn9uqfbnh8itd738iq1bt3', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('f79ntbps564j1vsgmr1tvojqfd', 1775340391, 'modx.user.contextTokens|a:0:{}'),
('f7r43cq04kssfpfuae30ft3kn0', 1776171224, 'modx.user.contextTokens|a:0:{}'),
('f85jloaqis90kcurgsoek0d4hb', 1776748859, 'modx.user.contextTokens|a:0:{}'),
('f8eqpk41v773ced8isuqd7dt2t', 1774160559, 'modx.user.contextTokens|a:0:{}'),
('f99ngj1b5fps9k9qhn73n0p7mv', 1775945860, 'modx.user.contextTokens|a:0:{}'),
('f9bh82g1678i26veai8t6jt6ji', 1774074843, 'modx.user.contextTokens|a:0:{}'),
('f9cmt7btfh25kh0i90n9lpcron', 1774075487, 'modx.user.contextTokens|a:0:{}'),
('f9e5jerm02lbe9e2m74kgp37ij', 1774179091, 'modx.user.contextTokens|a:0:{}'),
('f9nkf6dsra4a3dqdm7oa8u5vhm', 1774221258, 'modx.user.contextTokens|a:0:{}'),
('f9rrqfoh4o644k042v72lrfjmr', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('fae9d1ug79p8nv6sc3mig498nq', 1773977760, 'modx.user.contextTokens|a:0:{}'),
('fag2f2gq31rgjsr99mhldbo40d', 1776874635, 'modx.user.contextTokens|a:0:{}'),
('fao0njf14s0krrmvrd8dh2d1ho', 1774754822, 'modx.user.contextTokens|a:0:{}'),
('farsn54r4d91g65hvsouh8bj05', 1775883791, 'modx.user.contextTokens|a:0:{}'),
('fav7cdt4kcteet3qhcmmets8ga', 1775496773, 'modx.user.contextTokens|a:0:{}'),
('fb46ram04li1sqqmu75uom7f0d', 1777351630, 'modx.user.contextTokens|a:0:{}'),
('fb6j8ac3ah8ii4lmeosbljg69c', 1775207731, 'modx.user.contextTokens|a:0:{}'),
('fbblsg344g4l8lpmn8h5lpufm6', 1774195226, 'modx.user.contextTokens|a:0:{}'),
('fbjlcii6nhcv4vups5ufufsqj6', 1773935542, 'modx.user.contextTokens|a:0:{}'),
('fc0v62q87er7b2a7qoto9tk4au', 1775422844, 'modx.user.contextTokens|a:0:{}'),
('fc2stl0s85r9rsa857rv4d4vnl', 1774055654, 'modx.user.contextTokens|a:0:{}'),
('fcb17608vr3e593hajak97ruu4', 1774651915, 'modx.user.contextTokens|a:0:{}'),
('fcng5676kqmf08i9a2opfi4hgq', 1776183701, 'modx.user.contextTokens|a:0:{}'),
('fdjth1miqrsa8sbfbso6352lfs', 1775758954, 'modx.user.contextTokens|a:0:{}'),
('febhdqrkdl47qlnh61htlk3ril', 1776645666, 'modx.user.contextTokens|a:0:{}'),
('feo8ghtet3gmj155b55qu1iseg', 1774613378, 'modx.user.contextTokens|a:0:{}'),
('feu4e4k4roamotnbi2vkc5cvg7', 1776419027, 'modx.user.contextTokens|a:0:{}'),
('ff7oh2m93du8rnn8kug73h77kq', 1777118090, 'modx.user.contextTokens|a:0:{}'),
('fff7tj8qlbqd3avcmbdgt9ec9i', 1773978472, 'modx.user.contextTokens|a:0:{}'),
('ffi0gqbh63cliipdj2sbois50c', 1776203228, 'modx.user.contextTokens|a:0:{}'),
('ffrihiqotv631uan74rkg8p1lp', 1774584996, 'modx.user.contextTokens|a:0:{}'),
('fg018h7rrvilk8m5bctmvpkc6i', 1776952995, 'modx.user.contextTokens|a:0:{}'),
('fg280dpmhveo6d4lmr3rk4jroe', 1776959524, 'modx.user.contextTokens|a:0:{}'),
('fg4cl20icnb1rsqg5t6mtingf9', 1775404272, 'modx.user.contextTokens|a:0:{}'),
('fgquh9rkuk79cm0pk9s8d9d9bp', 1774718254, 'modx.user.contextTokens|a:0:{}'),
('fh81cfc6tfm0gtq6mkvc5m1krl', 1775357870, 'modx.user.contextTokens|a:0:{}'),
('fhabkccqviic8mnj9vs0i5nqks', 1776607773, 'modx.user.contextTokens|a:0:{}'),
('fhb9i8nit616umn4d8cvmtv6l0', 1775996950, 'modx.user.contextTokens|a:0:{}'),
('fivct9vdllgn5pqgcdeiq8l5v8', 1773849940, 'modx.user.contextTokens|a:0:{}'),
('fjdr7sl8kg86ha2o60ef5qfgk7', 1777063485, 'modx.user.contextTokens|a:0:{}'),
('fk68ahkmbd5q9d3k871r0fp7hh', 1774535347, 'modx.user.contextTokens|a:0:{}'),
('fk70atj5v0qosua7bihd8iqglu', 1774551573, 'modx.user.contextTokens|a:0:{}'),
('fkk0o5p1jh4im81bu3sh2f52bv', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('flcl08r4slmmsqo1iiuvfomh52', 1777132708, 'modx.user.contextTokens|a:0:{}'),
('flnp219m5up1dlescgai826srq', 1775996343, 'modx.user.contextTokens|a:0:{}'),
('fm3p590eoa15ohs50087f16tco', 1774819902, 'modx.user.contextTokens|a:0:{}'),
('fm99hhroch96deri1voc3t27ms', 1776545295, 'modx.user.contextTokens|a:0:{}'),
('fmd7958bpj3hvmt9cvi27a5an6', 1776327405, 'modx.user.contextTokens|a:0:{}'),
('fmnakm76p6br947uiagvgp8kt1', 1776646717, 'modx.user.contextTokens|a:0:{}'),
('fmpifhmc77ikqsauqrbumhek28', 1774926273, 'modx.user.contextTokens|a:0:{}'),
('fmv8i76n1p46v1r1jgtmp43rmo', 1774498758, 'modx.user.contextTokens|a:0:{}'),
('fnfld5gld6njq9n3cn0pgskbsv', 1775821299, 'modx.user.contextTokens|a:0:{}'),
('fnrndeb8d207c1a2ri8ka41lrk', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('fo20ssmj02p5l27c02kcoqq8mq', 1774057162, 'modx.user.contextTokens|a:0:{}'),
('fo3vnr8gis1osq4a0skohhpo7t', 1777424145, 'modx.user.contextTokens|a:0:{}'),
('foviarr04l4te2pv967e8de27n', 1776029269, 'modx.user.contextTokens|a:0:{}'),
('fpmf37gnk7uf1ikva2le3au2ed', 1776143513, 'modx.user.contextTokens|a:0:{}'),
('fq0k8krfbq7oqr8u4n3509284e', 1775847378, 'modx.user.contextTokens|a:0:{}'),
('fq28ksff3s4bt8d6up67ngej8s', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('fq3rgmqageqj4cat3qn2ub162u', 1775575809, 'modx.user.contextTokens|a:0:{}'),
('fqolu361ntvcpj9t41la5dsjod', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('frau88vbdvoc2njua7m7aj02j9', 1777251805, 'modx.user.contextTokens|a:0:{}'),
('fs53b5gcf5t4t9ptkss3ep9h6l', 1776838447, 'modx.user.contextTokens|a:0:{}'),
('fs6p9otkqlgg20acanphrf7u7f', 1777349687, 'modx.user.contextTokens|a:0:{}'),
('ftbf7pgo6lt7aj5n01b1jesisg', 1774327498, 'modx.user.contextTokens|a:0:{}'),
('ftll2sam6m9osg93cunm4i3kqf', 1776958262, 'modx.user.contextTokens|a:0:{}'),
('ftlo9r0d78ln4ma2cuelvvokik', 1776300204, 'modx.user.contextTokens|a:0:{}'),
('ftvcsa3rtbi8eflv08rka43ckq', 1773939893, 'modx.user.contextTokens|a:0:{}'),
('fu498dtj025tj63ckcm174luvq', 1777448244, 'modx.user.contextTokens|a:0:{}'),
('fu5vktvlr01i7skks7o4u8g50p', 1773862480, 'modx.user.contextTokens|a:0:{}'),
('fu8n8kpe408oesltq7lk2mb9ak', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('fulp1ttgptm10tosg1l3e64kqd', 1774884499, 'modx.user.contextTokens|a:0:{}'),
('fvcp6buf321u5e2svf459gj76f', 1774937286, 'modx.user.contextTokens|a:0:{}'),
('fviestd4lsj7uv81ji0hni17kl', 1774380214, 'modx.user.contextTokens|a:0:{}'),
('fvn1pqtr62nr4irnk2251jfbo7', 1776680303, 'modx.user.contextTokens|a:0:{}'),
('g04kfl5v2prt0oasdapmdu3pov', 1777001440, 'modx.user.contextTokens|a:0:{}'),
('g0d5bnep9oejgq142cdc682am9', 1774199015, 'modx.user.contextTokens|a:0:{}'),
('g0ou1vottchr5393qq4ql16fm6', 1774427181, 'modx.user.contextTokens|a:0:{}'),
('g0p1dgb7jskhq34j1gn8qln35g', 1777251809, 'modx.user.contextTokens|a:0:{}'),
('g0voftq0qm1os31ofl50bb3836', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('g136fapeh26t2urpfss0devr7t', 1775435771, 'modx.user.contextTokens|a:0:{}'),
('g17omomvdlb4t3cmvo22c8bk8r', 1774397690, 'modx.user.contextTokens|a:0:{}'),
('g1imv27tndqs5ij5dk1gd7j901', 1774819903, 'modx.user.contextTokens|a:0:{}'),
('g229ua4osa1jioorh4pk6of9sq', 1775838150, 'modx.user.contextTokens|a:0:{}'),
('g2n5o9p9efhi3ockl1n7u045qm', 1774593307, 'modx.user.contextTokens|a:0:{}'),
('g2ujg6un891cf2r62op0idvtgi', 1776961056, 'modx.user.contextTokens|a:0:{}'),
('g31j8g2a9ioj4q3lt2bv2f1ns7', 1775289786, 'modx.user.contextTokens|a:0:{}'),
('g3o952gu0i542qind26fqph4r8', 1776715751, 'modx.user.contextTokens|a:0:{}'),
('g45i15sa3s5l7498gtlojno3c8', 1774815038, 'modx.user.contextTokens|a:0:{}'),
('g4974o8rbq6ucaul52db6crkal', 1777309344, 'modx.user.contextTokens|a:0:{}'),
('g4ugsapp72m9ehofc5f73ncs8c', 1777283970, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:11;searchData|a:7:{s:6:\"pickup\";s:49:\"SDTI Campus, High Level Road, Nugegoda, Sri Lanka\";s:7:\"dropoff\";s:19:\"Dambulla, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-28T14:38\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('g596847dcrl78dp62jebkile2k', 1775576153, 'modx.user.contextTokens|a:0:{}'),
('g5fbjdhb0qnthdvf8j6kq41rhg', 1774033060, 'modx.user.contextTokens|a:0:{}'),
('g5rbsr2r4jel85k3kbc1icu86u', 1776810158, 'modx.user.contextTokens|a:0:{}'),
('g6260e60av3begetcnicitj4ri', 1774191874, 'modx.user.contextTokens|a:0:{}'),
('g6537e6hr3ram91q23piki0n8e', 1775528647, 'modx.user.contextTokens|a:0:{}'),
('g69gr7sjrdq1tul10r187u7lv0', 1775329485, 'modx.user.contextTokens|a:0:{}'),
('g6a25ef2egjdaboqdmu0g599c8', 1777212666, 'modx.user.contextTokens|a:0:{}'),
('g6evisqpbrvh163omkr67mqtla', 1774887344, 'modx.user.contextTokens|a:0:{}'),
('g6fpdpelu51b6d3jtgsoq3no1m', 1776285551, 'modx.user.contextTokens|a:0:{}'),
('g6njoq66qdhlimmm7a812ib47l', 1776863494, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('g821ojsuodnhe1f719j7i582c7', 1775297952, 'modx.user.contextTokens|a:0:{}'),
('g8mfjqhk1uknhg55707lkauaqg', 1776865935, 'modx.user.contextTokens|a:0:{}'),
('g9g9a19iepu5mlanm654br6a3j', 1773852801, 'modx.user.contextTokens|a:0:{}'),
('g9h9oidcn9g8elfsk5v3vdi7oc', 1775256595, 'modx.user.contextTokens|a:0:{}'),
('g9ivd88mddeqn4446chtnjvlq7', 1774546967, 'modx.user.contextTokens|a:0:{}'),
('g9mb0qata1f62j6ogkk5na6g1q', 1776916591, 'modx.user.contextTokens|a:0:{}'),
('g9q67qvs6mm5i6lric9frlclev', 1774350364, 'modx.user.contextTokens|a:0:{}'),
('ga0g9gacqaotldr8hk1j3runbi', 1777004259, 'modx.user.contextTokens|a:0:{}'),
('ga5btdnfuba3hnvhtfgrq7lurr', 1777306065, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:71:\"Hilton Colombo, Sir Chittampalam A Gardiner Mawatha, Colombo, Sri Lanka\";s:4:\"date\";s:16:\"2026-10-28T11:00\";s:12:\"returnPickup\";s:71:\"Hilton Colombo, Sir Chittampalam A Gardiner Mawatha, Colombo, Sri Lanka\";s:13:\"returnDropoff\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:10:\"returnDate\";s:16:\"2026-10-30T07:00\";s:11:\"isRoundtrip\";i:0;}'),
('gbbv0q2r34qm9lbupj9b6ddg61', 1774882814, 'modx.user.contextTokens|a:0:{}'),
('gbh3c4emttfa21dhlpbhmfi1sk', 1776235695, 'modx.user.contextTokens|a:0:{}'),
('gbrrhpimic172cr2peuneu0kac', 1774848140, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:160:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, 卡图纳耶克斯里蘭卡\";s:7:\"dropoff\";s:57:\"Summerside Residence, Palangathure, 內貢博斯里蘭卡\";s:4:\"date\";s:16:\"2026-04-05T00:30\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('gcs1vaeg4hk0vd3nt51u8o8a46', 1774270921, 'modx.user.contextTokens|a:0:{}'),
('gcsmvnknj14tr4b8kivqo31j6m', 1776585041, 'modx.user.contextTokens|a:0:{}'),
('gcv8l105e6fg3f1mpbfk6uda88', 1775292483, 'modx.user.contextTokens|a:0:{}'),
('gd35jiibil18lkl5m1hsplq9ee', 1775291819, 'modx.user.contextTokens|a:0:{}'),
('gdd4lchd7965vfgrkrd3t5hsqj', 1774265631, 'modx.user.contextTokens|a:0:{}'),
('gdel0vckhgdhu495eib7std08g', 1775002881, 'modx.user.contextTokens|a:0:{}'),
('gdol3s2fqm7ceiu7s6uik8shtp', 1777309340, 'modx.user.contextTokens|a:0:{}'),
('geidvfnjp1a9bo0pbs0i8slmrr', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('gekmhabmgrpl2n5alpileuvjdu', 1777364249, 'modx.user.contextTokens|a:0:{}'),
('geor1t240r50k7fdnj6edrb6u5', 1777037731, 'modx.user.contextTokens|a:0:{}'),
('gerre1e9g95fmasqa0pp6h4d1n', 1774098398, 'modx.user.contextTokens|a:0:{}'),
('gf4kptt66ekfuvil0hjkf5g4e5', 1773910598, 'modx.user.contextTokens|a:0:{}'),
('gfeig2f84aj24ollhg40iqiioq', 1777460363, 'modx.user.contextTokens|a:0:{}'),
('gfghnii1hjg9tqsk7sn9p8th6r', 1777441289, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:18:\"Colombo, Sri Lanka\";s:7:\"dropoff\";s:16:\"Kandy, Sri Lanka\";s:4:\"date\";s:16:\"2026-05-07T07:20\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('gfk4fp166nq9ut09u0brsedksp', 1774260843, 'modx.user.contextTokens|a:0:{}'),
('gfn4g5ulg5bbi6c9nikfinspgm', 1774310368, 'modx.user.contextTokens|a:0:{}'),
('gg13ai4hgqudc0jmo963u93m04', 1776909104, 'modx.user.contextTokens|a:0:{}'),
('gg1tgeb7148mk53gngtuni6hht', 1774897372, 'modx.user.contextTokens|a:0:{}'),
('ggbe3gercmrogfck9fm33th1id', 1776017580, 'modx.user.contextTokens|a:0:{}'),
('gh0p5sak27ta1t3h03csi1phj5', 1777259414, 'modx.user.contextTokens|a:0:{}'),
('gh2ht4jr44b40ad1evj6tv11ic', 1777261465, 'modx.user.contextTokens|a:0:{}'),
('ghori29qnotu9ci422b9nmf8kb', 1774819901, 'modx.user.contextTokens|a:0:{}'),
('gi5tas7luv293evjfrhk4vek90', 1775909894, 'modx.user.contextTokens|a:0:{}'),
('gi71tap0iebk4130s5pl8luvs8', 1775809708, 'modx.user.contextTokens|a:0:{}'),
('giac8f8qlrkiauhck9jupvlkln', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('giuicngqn4ncqm57bhko6db29r', 1774092033, 'modx.user.contextTokens|a:0:{}'),
('gjhmr3flkomb50d4tmi2e2dvao', 1775449171, 'modx.user.contextTokens|a:0:{}'),
('gkc0sc4kaf90tbnb8f8aatarav', 1774075810, 'modx.user.contextTokens|a:0:{}'),
('gkmdp9mn4ieviqvl204ijlhotu', 1775146226, 'modx.user.contextTokens|a:0:{}'),
('gl89gcjqcd3oiaea5fnlpp3nb6', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('glhv17dd8n095a4b7kjuake9l0', 1776264321, 'modx.user.contextTokens|a:0:{}'),
('glm7htdgo74lqe1s74836nlo5r', 1777301786, 'modx.user.contextTokens|a:0:{}'),
('glqd96ia3gfhpltsgbbdg7b9l2', 1776129618, 'modx.user.contextTokens|a:0:{}'),
('glrfpngebo12ob7n0vr19lpaha', 1776896501, 'modx.user.contextTokens|a:0:{}'),
('gm0fijo69ldourfc8uf56qj83c', 1777044221, 'modx.user.contextTokens|a:0:{}'),
('gm6b6gca24ic4qfn0vl2jvsudt', 1774968311, 'modx.user.contextTokens|a:0:{}'),
('gmc45hduror4dtsq1gr5mdssjo', 1776346737, 'modx.user.contextTokens|a:0:{}'),
('gmc4crkkka8rttgi2uvtrsais6', 1774901609, 'modx.user.contextTokens|a:0:{}'),
('gnc8f6otfkhhjg7672hkp0g7fk', 1775149450, 'modx.user.contextTokens|a:0:{}'),
('gnk9kdsiu4ph3un9q1q7pflvct', 1776377969, 'modx.user.contextTokens|a:0:{}'),
('go8aopjuhe5jonal1s60p24h77', 1775910426, 'modx.user.contextTokens|a:0:{}'),
('gohgks6qk9ermcp1e1mgnlc1qq', 1774784717, 'modx.user.contextTokens|a:0:{}'),
('gp5fm0q003urtflijhum1re3ib', 1775818778, 'modx.user.contextTokens|a:0:{}'),
('gp6qcbpn4e79fnph7qosvr46oo', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('gp6t8oa850f9mv2i07dllotukl', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('gpe6i2gdl4gtl6tjnbcmhcffqg', 1775004581, 'modx.user.contextTokens|a:0:{}'),
('gpi0nerjjk0rrgno6mspuu5h88', 1777286307, 'modx.user.contextTokens|a:0:{}'),
('gq87k0blcfuj1qg3asm1d70obo', 1774983452, 'modx.user.contextTokens|a:0:{}'),
('gq8d4disc321lsbnvmrjil6ade', 1775005371, 'modx.user.contextTokens|a:0:{}'),
('gqf3u4dtecj078ot2dj1frv1n8', 1776073155, 'modx.user.contextTokens|a:0:{}'),
('gra1u6t6ku4kk2hbvp4rdnh1jo', 1774951323, 'modx.user.contextTokens|a:0:{}'),
('grkg5slmlemgieoj30t5rstgcl', 1777168536, 'modx.user.contextTokens|a:0:{}'),
('gsqdl6qghlu1qd8tpr3dej36ns', 1774153200, 'modx.user.contextTokens|a:0:{}'),
('gsusgjjlh2k3v6cuntf0uoadfs', 1774196209, 'modx.user.contextTokens|a:0:{}'),
('gticq5ii85kln219j5nrdi1gi0', 1775022155, 'modx.user.contextTokens|a:0:{}'),
('gtm0naehf4d3s38uj7lfkaom85', 1775004728, 'modx.user.contextTokens|a:0:{}'),
('gu4kfhrqag6pun5ufrf5vb1tla', 1775360696, 'modx.user.contextTokens|a:0:{}'),
('guti9i44mt653nhvhr36upttq0', 1775576020, 'modx.user.contextTokens|a:0:{}'),
('gv3c5uvoti54le7kdb3h7v8n1h', 1777424145, 'modx.user.contextTokens|a:0:{}'),
('gv6kbpr09hke741og3ppsntlf3', 1773862460, 'modx.user.contextTokens|a:0:{}'),
('gv7132adls20jtbj93pc0d58nr', 1774106951, 'modx.user.contextTokens|a:0:{}'),
('gvp08q43ie25n1o34mj5q80t33', 1775893434, 'modx.user.contextTokens|a:0:{}'),
('gvuvnbrcu0u6quhvm5kqho27h2', 1777257981, 'modx.user.contextTokens|a:0:{}'),
('h0bm3opkifjulaub2v1m6lnoip', 1774327646, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:18:\"Bentota, Sri Lanka\";s:7:\"dropoff\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:4:\"date\";s:16:\"2026-03-26T22:20\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('h0gddv7p7sm9t9mj3hb3tv96lu', 1775038722, 'modx.user.contextTokens|a:0:{}'),
('h11307phogmmujrlal4vll5ln2', 1774095689, 'modx.user.contextTokens|a:0:{}'),
('h1lhf8obv6la5t5g420i5uim0j', 1776591179, 'modx.user.contextTokens|a:0:{}'),
('h1tb72qqa54lk2nccofc3cjfp9', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('h225vams1rm9i4prv5hnenflr5', 1774952472, 'modx.user.contextTokens|a:0:{}'),
('h24ks6an75g8o2tb7vu59osvs2', 1775060027, 'modx.user.contextTokens|a:0:{}'),
('h2gtp8vb21b2td476cecfoin28', 1774433959, 'modx.user.contextTokens|a:0:{}'),
('h2ut7uracotblm1fkv48dovv13', 1774230375, 'modx.user.contextTokens|a:0:{}'),
('h36nshk14ni1tbl9qrvnk73386', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('h3oqcqmaavvrfit1bvaursb62b', 1775553425, 'modx.user.contextTokens|a:0:{}'),
('h48q6g3r5uec4qbpkv17udlegt', 1776203783, 'modx.user.contextTokens|a:0:{}'),
('h495qh591brgq2u9trgpmu6k6j', 1775115971, 'modx.user.contextTokens|a:0:{}'),
('h4tarplejp1919ai100mtaorlt', 1776235695, 'modx.user.contextTokens|a:0:{}'),
('h58rbf4end9pt3a08k7g53jsdf', 1775772952, 'modx.user.contextTokens|a:0:{}'),
('h5q8o870mocfnuqscgq45ab2aa', 1776442592, 'modx.user.contextTokens|a:0:{}'),
('h644u1a3nm71tntl77nv2tokp9', 1776901527, 'modx.user.contextTokens|a:0:{}'),
('h6rkv30esbfh4rigi5qcoaifin', 1776308489, 'modx.user.contextTokens|a:0:{}'),
('h6vvke2tt6sfesfntf8ijltulb', 1777067471, 'modx.user.contextTokens|a:0:{}'),
('h7dh2rsj53p6e6kucmjps036cs', 1774823017, 'modx.user.contextTokens|a:0:{}'),
('h7mfrp68qe73gg19g8ru0h7b67', 1774764388, 'modx.user.contextTokens|a:0:{}'),
('h7s1l5nmmohit9pik1vphpc426', 1773848949, 'modx.user.contextTokens|a:0:{}'),
('h842oquf7vkfo333v140295125', 1776263918, 'modx.user.contextTokens|a:0:{}'),
('h8i4oil8p0pves8ets84pkppbp', 1775088170, 'modx.user.contextTokens|a:0:{}'),
('h8i5p6fbojqa4onhjae9ljckib', 1774793051, 'modx.user.contextTokens|a:0:{}'),
('h8ljfm355r7io9ahlun48k4bd6', 1774605065, 'modx.user.contextTokens|a:0:{}'),
('h8uk0cbkr9b435easgqdnvik9a', 1775640130, 'modx.user.contextTokens|a:0:{}'),
('h96obgc1221qqg6qsoivndf55t', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('h9kb5g4gdntqieaebd7vla2uof', 1776129616, 'modx.user.contextTokens|a:0:{}'),
('h9tbngmo13hfoki0ssg0pd4sgr', 1774534793, 'modx.user.contextTokens|a:0:{}'),
('ha9i5j066q3k609ltjd9dm4ssq', 1775306159, 'modx.user.contextTokens|a:0:{}'),
('haq8ds48rttl9h945imha45t2g', 1775335369, 'modx.user.contextTokens|a:0:{}'),
('hasf1tlbbaek2vjv05hqorup8e', 1776375332, 'modx.user.contextTokens|a:0:{}'),
('havc3i279va2522l1sq4s40593', 1776298174, 'modx.user.contextTokens|a:0:{}'),
('hb1rmmu1mmki03qrkh1s2ekmv5', 1775948270, 'modx.user.contextTokens|a:0:{}'),
('hbgn7fjbkt0qeebiebjlkm9k4l', 1775256559, 'modx.user.contextTokens|a:0:{}'),
('hc0jtihk3lp5diqrc8ev5n9j0q', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('hc0ppa1jimfhoqtgbrj7d702j3', 1776148342, 'modx.user.contextTokens|a:0:{}'),
('hch9jqlvb2f7s4a76i7h4du3ct', 1774518258, 'modx.user.contextTokens|a:0:{}'),
('hd08fmkvaugjq8tvd1vrkkdlvl', 1776185489, 'modx.user.contextTokens|a:0:{}'),
('hd1l9k89ng1iqp36tdhtahtkae', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('hd53oi69rsusvt8sbmqh5qi779', 1775095738, 'modx.user.contextTokens|a:0:{}'),
('hdich17g7pe1q1utsijr5l77lg', 1774660876, 'modx.user.contextTokens|a:0:{}'),
('hdjsur3td844v2v5bpkqiata6f', 1774587084, 'modx.user.contextTokens|a:0:{}'),
('he40c4u4mpqgstilg8u3sjgc31', 1776141142, 'modx.user.contextTokens|a:0:{}'),
('hej74mlqr692fe8dk656snu1s4', 1775741126, 'modx.user.contextTokens|a:0:{}'),
('heqnloomb4ti9kld1e63n008jb', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('hf1liiaf581bq4p6p35tr4uam9', 1777309344, 'modx.user.contextTokens|a:0:{}'),
('hf9s960kl3lbgi4o4huc2vu36j', 1776942647, 'modx.user.contextTokens|a:0:{}'),
('hfa8a5l8g90cemnd54omre8fmj', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('hfavri6n9qjk4bcrdgtpm1p6sp', 1777051378, 'modx.user.contextTokens|a:0:{}'),
('hfc5bh1ovasnuh22v15p9lnjbk', 1776666790, 'modx.user.contextTokens|a:0:{}'),
('hfjaru7s6t4vomuibt7tns5p6k', 1775623599, 'modx.user.contextTokens|a:0:{}'),
('hfotg54vkvpj8j3jakod8i506t', 1776723307, 'modx.user.contextTokens|a:0:{}'),
('hg4la8j44o6tbvhk73o7g6rv7i', 1774057629, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('hg5mnjajil15stmnr0npisi2uj', 1774235476, 'modx.user.contextTokens|a:0:{}'),
('hgloee864qmauc2l811enk8f1d', 1774737688, 'modx.user.contextTokens|a:0:{}'),
('hgmqmg3qa35b3mrrva0ht1hp4i', 1775254621, 'modx.user.contextTokens|a:0:{}'),
('hgrvk950vj7sg5tjnrpr32hmg4', 1777018419, 'modx.user.contextTokens|a:0:{}'),
('hh5jhcfuhkpmgej80futcdg5ei', 1775830487, 'modx.user.contextTokens|a:0:{}'),
('hh8ga69jida7b2gdpri5et50td', 1777034617, 'modx.user.contextTokens|a:0:{}'),
('hig4ah1msgulehfh3luj3qvknn', 1775046658, 'modx.user.contextTokens|a:0:{}'),
('hjilobc7eeh6nrh81289te67n6', 1774241621, 'modx.user.contextTokens|a:0:{}'),
('hjjevmdo2d18v22d8r8e06u649', 1776604598, 'modx.user.contextTokens|a:0:{}'),
('hjlp1oaj3ed9i5maamoh9aklho', 1775147890, 'modx.user.contextTokens|a:0:{}'),
('hk9bg6mlp6lrpvehm9gcnmter8', 1776982799, 'modx.user.contextTokens|a:0:{}'),
('hka2mmusegg8r1eha00p5tk4m7', 1776075636, 'modx.user.contextTokens|a:0:{}'),
('hkiaovp3q6gdtcqakcl49joflj', 1775766820, 'modx.user.contextTokens|a:0:{}'),
('hkn5noh479ghradt1j3ojimsbj', 1777109253, 'modx.user.contextTokens|a:0:{}'),
('hltmo4gs5sr4jpbofl5t82qqdp', 1774107027, 'modx.user.contextTokens|a:0:{}'),
('hm547ll4e28cf1as1m601p25gf', 1777345334, 'modx.user.contextTokens|a:0:{}'),
('hmdpj8l22h2k60g5ni1do9iq9j', 1774006713, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('hmg2gfsbkroap7s3mjrs8e8rkk', 1776028956, 'modx.user.contextTokens|a:0:{}');
INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('hmikunqu2voh6g52rmuiql41o9', 1773850694, 'modx.user.contextTokens|a:0:{}'),
('hmoh67dge2uhqhhi471hfqtgs9', 1777113971, 'modx.user.contextTokens|a:0:{}'),
('hmp767b6mv6e3h0c6c3svb7fcn', 1775157021, 'modx.user.contextTokens|a:0:{}'),
('hn9hhdfkvjpo17v8n7fmbm4r84', 1776028909, 'modx.user.contextTokens|a:0:{}'),
('hnarhh4ht7erjsg1465omj6otj', 1774962458, 'modx.user.contextTokens|a:0:{}'),
('hnd1b1btvu0inetn74m8gp6qur', 1777177232, 'modx.user.contextTokens|a:0:{}'),
('ho1c6b8hm4nog2gpsk08rbcdqv', 1774160556, 'modx.user.contextTokens|a:0:{}'),
('ho9djq1odmks0koptdcqfr48il', 1774599070, 'modx.user.contextTokens|a:0:{}'),
('hoicts3lo0u8rtmv2h81ilg39u', 1777188280, 'modx.user.contextTokens|a:0:{}'),
('hokk5jq3sc732tnsovct741ium', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('hon2rshcsiiduifbtnauhlv9iu', 1777038587, 'modx.user.contextTokens|a:0:{}'),
('hoqpouutc6th0qkqppjvloa3a5', 1774934137, 'modx.user.contextTokens|a:0:{}'),
('hpp6pcr4j99v9k4jdeaf948qlq', 1777364931, 'modx.user.contextTokens|a:0:{}'),
('hq6l9nu5ea7986d64kuh1l9hp8', 1776866088, 'modx.user.contextTokens|a:0:{}'),
('hrel3b91l7q3jljgn5vvju630s', 1776961068, 'modx.user.contextTokens|a:0:{}'),
('hrlit81afkn5dpqspusp32nb4i', 1774156363, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:146:\"Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:5:\"Aluth\";s:4:\"date\";s:16:\"2026-03-23T10:42\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('hrplen0sm8c7vdqsn4kvtj8l9h', 1775665113, 'modx.user.contextTokens|a:0:{}'),
('hs9jrgkaofc1dse3hr0cacr0nu', 1776975917, 'modx.user.contextTokens|a:0:{}'),
('ht9s37n43omhrpk1jotdj727gv', 1774527342, 'modx.user.contextTokens|a:0:{}'),
('htesuq1lla27e6il56479jboon', 1775297142, 'modx.user.contextTokens|a:0:{}'),
('htghsh70opsqn06b6cjqbdjo05', 1774239628, 'modx.user.contextTokens|a:0:{}'),
('htu1v1arfnv65ms764929ltive', 1776123636, 'modx.user.contextTokens|a:0:{}'),
('htul0b8hvm9omankkurpjm7hs5', 1774102122, 'modx.user.contextTokens|a:0:{}'),
('hu2bcjj7gdmcjp6jfhku32civ9', 1777213017, 'modx.user.contextTokens|a:0:{}'),
('hu3t5geks0sipgl55ikrpf2gbo', 1776460731, 'modx.user.contextTokens|a:0:{}'),
('i0drrs2rsr7kvba0jg5co9i1p7', 1776266147, 'modx.user.contextTokens|a:0:{}'),
('i0f613pvmthidaqr1nqhiqrd0u', 1775858288, 'modx.user.contextTokens|a:0:{}'),
('i0pjgfv4f6hl5pnrduv5b1vs1q', 1777205073, 'modx.user.contextTokens|a:0:{}'),
('i0scct46sc29eue6okp46nh58j', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('i0u71k5tpth7f61ulhl4un94g0', 1774826223, 'modx.user.contextTokens|a:0:{}'),
('i14tias2mg97kol8dgjmgh04ot', 1775888098, 'modx.user.contextTokens|a:0:{}'),
('i16hn434pc81dcev4s7pprj3s8', 1774951820, 'modx.user.contextTokens|a:0:{}'),
('i195nc02aop7889lvhl2cqhkv2', 1775417637, 'modx.user.contextTokens|a:0:{}'),
('i1guqrabpv5c95ep41j7in1d1l', 1774777851, 'modx.user.contextTokens|a:0:{}'),
('i1t072mr19cogo1pfe1ko7utml', 1774498006, 'modx.user.contextTokens|a:0:{}'),
('i1tio2ok4to8h48njthe8qv9mh', 1774199070, 'modx.user.contextTokens|a:0:{}'),
('i228sgsp9gveapf25i7h5373eb', 1776424705, 'modx.user.contextTokens|a:0:{}'),
('i2b4dllsmiq88bbd75kst6a792', 1773917577, 'modx.user.contextTokens|a:0:{}'),
('i2utaogpd7952c8qbb0ik99jai', 1776777580, 'modx.user.contextTokens|a:0:{}'),
('i3stoctgqlco11ae6u5bbpm5jm', 1775365730, 'modx.user.contextTokens|a:0:{}'),
('i3tl38jd1gee22019niu518dqc', 1776928800, 'modx.user.contextTokens|a:0:{}'),
('i42gm9fjkkd8of7b9a9r24akl7', 1777235957, 'modx.user.contextTokens|a:0:{}'),
('i4k7g1k5l1lmp3kirh9vms19uj', 1777437347, 'modx.user.contextTokens|a:0:{}'),
('i56eums4bvjl7p3j86sujbv2lt', 1774106944, 'modx.user.contextTokens|a:0:{}'),
('i720uqd64l0b49u60raqnnlcs5', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('i7pfehugk8nvki92j21ha6elnq', 1776775689, 'modx.user.contextTokens|a:0:{}'),
('i86cho9knp835gcq1feutt9m42', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('i8984to8nr6bbakdqljkqlsmmb', 1774260663, 'modx.user.contextTokens|a:0:{}'),
('i91bvdk6ukekpi8d9eoeenp5j0', 1774615513, 'modx.user.contextTokens|a:0:{}'),
('i95007se6p3knenek4cc0np9fg', 1776180968, 'modx.user.contextTokens|a:0:{}'),
('i9c2rp08og3c7c5sfua938s0ea', 1776003901, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:92:\"Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka\";s:7:\"dropoff\";s:49:\"Habarana Village by Cinnamon, Habarana, Sri Lanka\";s:4:\"date\";s:16:\"2026-07-16T06:00\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('i9jgbp2dn6fl9b04s7f85cn2nn', 1775254142, 'modx.user.contextTokens|a:0:{}'),
('i9thp7hvsjolm1ph8uikeqolhp', 1776785349, 'modx.user.contextTokens|a:0:{}'),
('ib7ccf99qp6akq4kd91uess67c', 1775371672, 'modx.user.contextTokens|a:0:{}'),
('icdhng9a2075c5u0omptns0mk0', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('idh8iieud898jop3a6l0b5jlu7', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('idhlmr983h36vq8b36jh2t0uar', 1775438589, 'modx.user.contextTokens|a:0:{}'),
('idmap60ig2isk7vumaggr8d0h5', 1775368022, 'modx.user.contextTokens|a:0:{}'),
('idrvp81nsvhmpjn064iilhv9vr', 1773910875, 'modx.user.contextTokens|a:0:{}'),
('if0jl86hkdmvrj7lse7oanfhba', 1773971381, 'modx.user.contextTokens|a:0:{}'),
('ih4nib330i59oq41umdc97oeit', 1773910876, 'modx.user.contextTokens|a:0:{}'),
('ihfbc16k5029ka19bggrr8vnkm', 1773914015, 'modx.user.contextTokens|a:0:{}'),
('ihlkgmmelc85brg27jniujpbi9', 1777067448, 'modx.user.contextTokens|a:0:{}'),
('ihnd685ag7hkht3u9h6r4cduog', 1777194408, 'modx.user.contextTokens|a:0:{}'),
('ihounjqd6ft14drkkpuca7gb47', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('ihu6krfvpab80u5o8j22ukp9i1', 1777069010, 'modx.user.contextTokens|a:0:{}'),
('ihvho29jv8hvr0m57nofl2dtv0', 1776171223, 'modx.user.contextTokens|a:0:{}'),
('ii9vb2u89oqti5i827mk3hd8fm', 1774663416, 'modx.user.contextTokens|a:0:{}'),
('iiedfco4kjo4h0q0uv7ggllqmh', 1775929412, 'modx.user.contextTokens|a:0:{}'),
('iimeucm4oelt125hh2o2esoan1', 1776961482, 'modx.user.contextTokens|a:0:{}'),
('iiopkfgavpoqbbd9tgh1tf3d7i', 1775858289, 'modx.user.contextTokens|a:0:{}'),
('ij7icf3s7rpdjho6hk6k6cjvgu', 1776132806, 'modx.user.contextTokens|a:0:{}'),
('ijimbg8g9tcookroh9itbp9mmq', 1774572759, 'modx.user.contextTokens|a:0:{}'),
('ijjaonj7hpdnf1ira07rcmd99r', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('ik05rlb5n85g6kf6m9h0iddgib', 1774071921, 'modx.user.contextTokens|a:0:{}'),
('ik1l8rlofi0nlsu838slvt2dj5', 1776223129, 'modx.user.contextTokens|a:0:{}'),
('ik68b5574fkfvgtelkldaqhfvk', 1775368025, 'modx.user.contextTokens|a:0:{}'),
('ik9dsa80qpqjqm3l9qniuurtn4', 1774108903, 'modx.user.contextTokens|a:0:{}'),
('ikue16ip06t8nduigd0883nana', 1777457176, 'modx.user.contextTokens|a:0:{}'),
('ild713m2pvo72dp0r7fo8vkrjj', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('ilmbhpb358pl5tabdch47ea90c', 1774565970, 'modx.user.contextTokens|a:0:{}'),
('ilr3l38ore9bnkpibat6sc1hj0', 1774348589, 'modx.user.contextTokens|a:0:{}'),
('im02qanv1q3328pcjnobn234mv', 1776999432, 'modx.user.contextTokens|a:0:{}'),
('im0sa68mf0ur5gl2s2skh8i6qe', 1775600179, 'modx.user.contextTokens|a:0:{}'),
('im5bjah47l6tiskc6o3p5vh3ge', 1775647977, 'modx.user.contextTokens|a:0:{}'),
('imktu6u13l2jr97s7npn2launl', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('imlpn77f6iqtrvbhibrg8ngeuk', 1777263398, 'modx.user.contextTokens|a:0:{}'),
('in25v6v6am7bi68lpdonb8gaa5', 1777004480, 'modx.user.contextTokens|a:0:{}'),
('in9s2vammh13jfl96ca7asiqtk', 1774066580, 'modx.user.contextTokens|a:0:{}'),
('inn190bidi7opeq21v68m3mihp', 1774354443, 'modx.user.contextTokens|a:0:{}'),
('inniiu2s7l2ai3tanq1ici4hk5', 1774817492, 'modx.user.contextTokens|a:0:{}'),
('io5a9pve8o0bn3umcqno67rian', 1777123381, 'modx.user.contextTokens|a:0:{}'),
('ionv6j539psruoc12l2u0u5s71', 1774356986, 'modx.user.contextTokens|a:0:{}'),
('ipdgctev9id54o7jj30e1mosc8', 1774613376, 'modx.user.contextTokens|a:0:{}'),
('iporfotqd3aeuhdmfk63mef07v', 1776852954, 'modx.user.contextTokens|a:0:{}'),
('iqddgc05gu6p5alp35fhkjqt1v', 1777112232, 'modx.user.contextTokens|a:0:{}'),
('iqfarmfs2hc6hv726omv0v8boc', 1776024845, 'modx.user.contextTokens|a:0:{}'),
('iqmaq4k7lqdocssebjfvvmb6qt', 1774601472, 'modx.user.contextTokens|a:0:{}'),
('ir1eertjm0crm5o0jl468k53dp', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('ir5uouafcl28mmcio88hcn8jqp', 1774879547, 'modx.user.contextTokens|a:0:{}'),
('irhpqbngm06dcbfdedqg121jtq', 1774815057, 'modx.user.contextTokens|a:0:{}'),
('irqta3hv4ja7o0v2t52kl73gph', 1774528246, 'modx.user.contextTokens|a:0:{}'),
('irtnvk1t445f6ka1krpejhkfl9', 1775989760, 'modx.user.contextTokens|a:0:{}'),
('is70nsubp7291bsqstuq20csol', 1775275176, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:92:\"Colombo International Airport Ratmalana, New Airport Road, Dehiwala-Mount Lavinia, Sri Lanka\";s:7:\"dropoff\";s:23:\"Anuradhapura, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-11T10:00\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('is9phgn85grkpgbgtqnulh4a8j', 1776486900, 'modx.user.contextTokens|a:0:{}'),
('isgtukjg8kt6biupfg9nov4m4n', 1776489462, 'modx.user.contextTokens|a:0:{}'),
('isq7rqg0utg8pthircca93m7ki', 1775414632, 'modx.user.contextTokens|a:0:{}'),
('isrq3glo4m5ut3ls9mdi59hh75', 1776507763, 'modx.user.contextTokens|a:0:{}'),
('issq9igd351enuv0fuhgrs1bmg', 1775820564, 'modx.user.contextTokens|a:0:{}'),
('isti5a8utpjsobscupnrmfu4ju', 1775735499, 'modx.user.contextTokens|a:0:{}'),
('it3ob6rsc2kfit9ps3v525fe66', 1774121741, 'modx.user.contextTokens|a:0:{}'),
('itfrr0valvo9tqa4s8lohhbbe2', 1774653266, 'modx.user.contextTokens|a:0:{}'),
('iud8urj8hm2klioj7r78anccq9', 1775459835, 'modx.user.contextTokens|a:0:{}'),
('iur52jko4c55eeoliehfvlnf0l', 1776698425, 'modx.user.contextTokens|a:0:{}'),
('iv664if4vgh6vrusa5g900a0k4', 1775585057, 'modx.user.contextTokens|a:0:{}'),
('ivt7c0n82tet0orc3e313o5de3', 1775918891, 'modx.user.contextTokens|a:0:{}'),
('j11jdne99tjuf6uisjpp5tjisi', 1776468795, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:19:\"Sigiriya, Sri Lanka\";s:4:\"date\";s:16:\"2026-05-07T11:32\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('j16ooce4p3katemd5747id4ieb', 1777399404, 'modx.user.contextTokens|a:0:{}'),
('j1bna24t0k7paei4v251r1rsdr', 1777314735, 'modx.user.contextTokens|a:0:{}'),
('j1c8ospfp5na1pl6jmno2i5hsi', 1775306592, 'modx.user.contextTokens|a:0:{}'),
('j1scinltnr009enkfr0bdd0c83', 1774184846, 'modx.user.contextTokens|a:0:{}'),
('j25l0hd3u49g45cq8kp4jddq9a', 1776593770, 'modx.user.contextTokens|a:0:{}'),
('j27c745cgod21k78nsv6l1b60l', 1776149910, 'modx.user.contextTokens|a:0:{}'),
('j2fr0sd3jokei2h3u4quono9fd', 1775145087, 'modx.user.contextTokens|a:0:{}'),
('j2mfm5suaj1n3u8fpea7vcijse', 1774096423, 'modx.user.contextTokens|a:0:{}'),
('j2u3a8ps5nu2o2arbvi2fidioh', 1776388045, 'modx.user.contextTokens|a:0:{}'),
('j3aj6geqp8f6mgp5if7uu2t6h0', 1776810148, 'modx.user.contextTokens|a:0:{}'),
('j3c7u0bj5l3bs6qivvb9gd0qc6', 1776845234, 'modx.user.contextTokens|a:0:{}'),
('j3e73j7p7m6u1mpprcd9j0i7kc', 1775208328, 'modx.user.contextTokens|a:0:{}'),
('j3lsi1rtg17bfjl8sjsknucv2d', 1775917143, 'modx.user.contextTokens|a:0:{}'),
('j48k411hncv2tcdhrpr1726rqb', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('j4pk6ta8203vna4cp0jj5ins62', 1776953217, 'modx.user.contextTokens|a:0:{}'),
('j57qmhb7ehdbe7opevsd59jfhs', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('j5cfcjd6n8pjh6srejv14buf4d', 1774984343, 'modx.user.contextTokens|a:0:{}'),
('j5grh0lgk5kd3qcfrt3pt80buh', 1773862260, 'modx.user.contextTokens|a:0:{}'),
('j6hpm398peuggg0ip9q2ra2qdb', 1775989009, 'modx.user.contextTokens|a:0:{}'),
('j74v49b7jg4scs7lesjnv7mle9', 1775941675, 'modx.user.contextTokens|a:0:{}'),
('j77fb820qf1tn0vgc3h50ree6m', 1775821298, 'modx.user.contextTokens|a:0:{}'),
('j7cfqluchmkushqmna3trivgep', 1774841512, 'modx.user.contextTokens|a:0:{}'),
('j7etamf8gqa3l9tigt9th572pg', 1774199691, 'modx.user.contextTokens|a:0:{}'),
('j7j35rgnrqqeinuu7ikg498sq4', 1777394458, 'modx.user.contextTokens|a:0:{}'),
('j7lf0mhg44h0m6cj8eou5u5f00', 1774107030, 'modx.user.contextTokens|a:0:{}'),
('j7lt62d27647en6c8n6sm5pa1u', 1777125259, 'modx.user.contextTokens|a:0:{}'),
('j7n09epm3o10cdbucd392g9nnb', 1777212660, 'modx.user.contextTokens|a:0:{}'),
('j8fs5svkbvurk4n18ks933q15o', 1775125294, 'modx.user.contextTokens|a:0:{}'),
('j9aru6ujfr3au7leqbkr8t10hp', 1774498005, 'modx.user.contextTokens|a:0:{}'),
('j9cei2sasof757h3avhi0ki9rt', 1776547775, 'modx.user.contextTokens|a:0:{}'),
('j9ukbdaudnlujvn4m0t5st5hkj', 1776831194, 'modx.user.contextTokens|a:0:{}'),
('jbf8i70viveas7i0uoao4ffb1a', 1776637718, 'modx.user.contextTokens|a:0:{}'),
('jbn1hmc6tnhqoo2j6pusue04jf', 1773846798, 'modx.user.contextTokens|a:0:{}'),
('jbs8uasai2dueacph7n3nm7lel', 1777092040, 'modx.user.contextTokens|a:0:{}'),
('jc4h2s5nluk69bimf61i3aabg8', 1773989948, 'modx.user.contextTokens|a:0:{}'),
('jc7oc9j1ridue2dkb21mlh8fog', 1776591182, 'modx.user.contextTokens|a:0:{}'),
('jcksgaodk629albprm1s55uplq', 1775073552, 'modx.user.contextTokens|a:0:{}'),
('jdj2k6klg77ond7d26ae4icdar', 1777417349, 'modx.user.contextTokens|a:0:{}'),
('jdo2qolgsdf0mekvjq4bphi1e3', 1774620149, 'modx.user.contextTokens|a:0:{}'),
('jf8luj30d8s5t61g7kjcoupl5j', 1776215131, 'modx.user.contextTokens|a:0:{}'),
('jfakvhfv97ltffigdi6uio8d8d', 1776594924, 'modx.user.contextTokens|a:0:{}'),
('jfl1pdmestbouj60q2ini5tiou', 1776864078, 'modx.user.contextTokens|a:0:{}'),
('jg63kqo6bt22h1dalhuv11fnv9', 1773982687, 'modx.user.contextTokens|a:0:{}'),
('jgol0vort019d1ld7mc98qaudu', 1776453378, 'modx.user.contextTokens|a:0:{}'),
('jgugba3pr3md5rn6m73piddpf0', 1774316338, 'modx.user.contextTokens|a:0:{}'),
('jhd9r192abnuc7daggl8cju1mc', 1776203781, 'modx.user.contextTokens|a:0:{}'),
('jhfvvo2u32sf4k6cdpa35ul081', 1777105063, 'modx.user.contextTokens|a:0:{}'),
('jhv0q9sej2tu5ht4oiicukbim8', 1774051264, 'modx.user.contextTokens|a:0:{}'),
('ji2g3ir6siohi8p5oeau414uo3', 1776590058, 'modx.user.contextTokens|a:0:{}'),
('jioou3jo3vs2dbpjgvs2es1ue6', 1774698046, 'modx.user.contextTokens|a:0:{}'),
('jiuslnllnh6r6c99dls1vvkpg3', 1776365531, 'modx.user.contextTokens|a:0:{}'),
('jj67ju0is2hv5um8jdbs5dhes8', 1776203783, 'modx.user.contextTokens|a:0:{}'),
('jjg30d8pdo51rque4frmfqmieh', 1775580664, 'modx.user.contextTokens|a:0:{}'),
('jjjiv9tivvtk9t3r3v1ng0agqp', 1775184590, 'modx.user.contextTokens|a:0:{}'),
('jjnl1inbstgjjcjhoe7qgsrald', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('jjth2e4ecjqki463q0qjb3p9hu', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('jk2tisgvbvjr84fogguns42a31', 1774762385, 'modx.user.contextTokens|a:0:{}'),
('jk62jqst5t7rfa3bjm2oksrqr7', 1774444648, 'modx.user.contextTokens|a:0:{}'),
('jk6vrvsv2a8fbc027pu1b4d8qm', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('jlbio9ru9uqfqbc75ncttrk0kp', 1774091500, 'modx.user.contextTokens|a:0:{}'),
('jmncq697lfmlsujocpk83kv226', 1776264814, 'modx.user.contextTokens|a:0:{}'),
('jmnf88o4id9db7as5hsnd47rof', 1773914015, 'modx.user.contextTokens|a:0:{}'),
('jmp1p9isn0d0nkulpn3qdtor4b', 1775982367, 'modx.user.contextTokens|a:0:{}'),
('jmpt3b148jjscijciob7jqbak4', 1776020411, 'modx.user.contextTokens|a:0:{}'),
('jn04f35k3qvlkkdvgsbpf80m1r', 1775824384, 'modx.user.contextTokens|a:0:{}'),
('jn27pvrtifmoq86djdoi50i69j', 1777345333, 'modx.user.contextTokens|a:0:{}'),
('jn8ehlo5e66rd7oa9e9ieajfhe', 1776920763, 'modx.user.contextTokens|a:0:{}'),
('jn9vf7ef863h9gpb8dlgmvvfv9', 1775149266, 'modx.user.contextTokens|a:0:{}'),
('jneii5isi83im9l482iloe2leb', 1777109060, 'modx.user.contextTokens|a:0:{}'),
('jnqcvg3aedrr7kf75megc1b3jc', 1774195049, 'modx.user.contextTokens|a:0:{}'),
('jo1p3sqjkr6jhrr34vlmilohia', 1776924617, 'modx.user.contextTokens|a:0:{}'),
('jo51cr672b71kpe8bi9ef49q0s', 1776619815, 'modx.user.contextTokens|a:0:{}'),
('jo5g9gq5tbr8bb3jp8clkto4g3', 1775112798, 'modx.user.contextTokens|a:0:{}'),
('jo7lt026m4rntvi524j2ving75', 1776281488, 'modx.user.contextTokens|a:0:{}'),
('jont285qvchp5jrqt7n56kthgg', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('joskjana3ou700suee3rkkuc6i', 1773964228, 'modx.user.contextTokens|a:0:{}'),
('jp2klr85squjkmi7gfvpo6qni3', 1776194084, 'modx.user.contextTokens|a:0:{}'),
('jp3415oarpdoobae4qfoh0gg4q', 1774115619, 'modx.user.contextTokens|a:0:{}'),
('jpjb5pg0sbi41t3mm9ketqi9fo', 1777260032, 'modx.user.contextTokens|a:0:{}'),
('jrb17ja57s15tjsqpicf60k7u8', 1775649130, 'modx.user.contextTokens|a:0:{}'),
('js8s7g8clis9nfun3s1hqnccqt', 1774866416, 'modx.user.contextTokens|a:0:{}'),
('jsb0fas7s52v108jvj2md2ocue', 1776127904, 'modx.user.contextTokens|a:0:{}'),
('jsc9r0uthi83q6gv8a696a9jkt', 1774518317, 'modx.user.contextTokens|a:0:{}'),
('jsf62ol2k60rtul1onghqjtpdv', 1774417637, 'modx.user.contextTokens|a:0:{}'),
('jsh2g3pvstnkdnq1oh1o28kn6n', 1775083654, 'modx.user.contextTokens|a:0:{}'),
('jshic5pvhb67eagcd5dmevs22d', 1776852939, 'modx.user.contextTokens|a:0:{}'),
('jt58a4dtifha8rhmfia67075d7', 1774090367, 'modx.user.contextTokens|a:0:{}'),
('jtsh6unkebe5p13ho7n68f71fi', 1777035974, 'modx.user.contextTokens|a:0:{}'),
('juc7tqiolbpg60tv4n8n8bfsi1', 1774528246, 'modx.user.contextTokens|a:0:{}'),
('jufpmm4fq27i8g312obcl4kae7', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('juj7c37ls5m8juv1e2i7lh4rc6', 1774822275, 'modx.user.contextTokens|a:0:{}'),
('juohs2nol9oreprlcbbhcks2jq', 1775450623, 'modx.user.contextTokens|a:0:{}'),
('jvc333pmnmnunht938r4osmj5s', 1775686497, 'modx.user.contextTokens|a:0:{}'),
('jvdm6veit90fu06ujmgvmr7t0d', 1776272434, 'modx.user.contextTokens|a:0:{}'),
('jvpjgv114fcbj6h89nve8l956k', 1774720235, 'modx.user.contextTokens|a:0:{}'),
('k005gjq9jgpkamp8n2cvtr53od', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('k01sgt2qg3n5839ftq6c74fj6q', 1773914537, 'modx.user.contextTokens|a:0:{}'),
('k027165cff41ocgr2sp0p9ui1a', 1774309728, 'modx.user.contextTokens|a:0:{}'),
('k04obfulhpum20c0meb5kjjo5l', 1774592776, 'modx.user.contextTokens|a:0:{}'),
('k0a2ibp7calrfld415hrifebgv', 1773912593, 'modx.user.contextTokens|a:0:{}'),
('k0apqnots35e3hachjnrcmtsng', 1774449353, 'modx.user.contextTokens|a:0:{}'),
('k0jd8vf8btlps4cdmervbs7beb', 1774497551, 'modx.user.contextTokens|a:0:{}'),
('k0l7b4kutan8i182m7jjmn2ihi', 1774416396, 'modx.user.contextTokens|a:0:{}'),
('k12blgimpgen9uc89154b5f3bs', 1776965883, 'modx.user.contextTokens|a:0:{}'),
('k1d5iv743um5bfj007k0ttoth0', 1774609381, 'modx.user.contextTokens|a:0:{}'),
('k2a3le19le6b95t39dgq4jdt26', 1773893763, 'modx.user.contextTokens|a:0:{}'),
('k2e9bs3l7p530brgtitnt6792h', 1776226746, 'modx.user.contextTokens|a:0:{}'),
('k3133i4ajse7ltjgcvjfdb3o4k', 1775340391, 'modx.user.contextTokens|a:0:{}'),
('k3dk0s5tljbur17l5sv6qtpj5f', 1777539228, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";login_failed|i:1;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_269f1eba84811a6.83552689\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:4:{i:0;s:23:\"69f1ec3a27cfc9.96284913\";i:1;s:23:\"69f1ec6e669867.35201346\";i:2;s:23:\"69f2d00dc83580.09854458\";i:3;s:23:\"69f3189a0be690.70597449\";}'),
('k3ue5frr9l2nlile5gvqaodvot', 1776513744, 'modx.user.contextTokens|a:0:{}'),
('k4i40bun2sa8hjan6mv5qu7bgp', 1776375368, 'modx.user.contextTokens|a:0:{}'),
('k4vf7h6paqslvaa2t3uhohgtqg', 1774801348, 'modx.user.contextTokens|a:0:{}'),
('k5sgcmiuvg9qmg3f7rjjhik6an', 1777393180, 'modx.user.contextTokens|a:0:{}'),
('k63s8d2j91gu6248g0hgmgbrjj', 1773862502, 'modx.user.contextTokens|a:0:{}'),
('k6l1n3cuh8bp72t56r17e155qf', 1774029321, 'modx.user.contextTokens|a:0:{}'),
('k6vmrfbqngve989gqedn3tr4d8', 1775201881, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:49:\"EKHO Surf Bentota, Beach Road, Bentota, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-08T07:50\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('k71c076n66us8g92nj0b9t98h7', 1774222894, 'modx.user.contextTokens|a:0:{}'),
('k76gvrupk2qr0gftclglr8l48m', 1775224354, 'modx.user.contextTokens|a:0:{}'),
('k7i48dikcsag5lpq9lpbdnlksr', 1775004009, 'modx.user.contextTokens|a:0:{}'),
('k7re1rggubui6kr8di7513kbb9', 1773862483, 'modx.user.contextTokens|a:0:{}'),
('k853t6kt96eqlr2b4r3nko343t', 1774429622, 'modx.user.contextTokens|a:0:{}'),
('ka0fo2p6otdie50i65kgkm025v', 1776915103, 'modx.user.contextTokens|a:0:{}'),
('ka1mrc6fm52725e6odvvaaac6f', 1777241816, 'modx.user.contextTokens|a:0:{}'),
('karphldnenpgmohd59trn9493c', 1777447818, 'modx.user.contextTokens|a:0:{}'),
('kb927dv6k0lq3445hv68asif72', 1777078077, 'modx.user.contextTokens|a:0:{}'),
('kbtag7eveblnsjfq9e0mgbemvj', 1775005294, 'modx.user.contextTokens|a:0:{}'),
('kc0b53q8kntmap7smc0bpn306g', 1774074625, 'modx.user.contextTokens|a:0:{}'),
('kcc79f261ehhp9mmec51p4kt62', 1773937016, 'modx.user.contextTokens|a:0:{}'),
('kcjroa0iov14et7lh5thobsqad', 1774947466, 'modx.user.contextTokens|a:0:{}'),
('kcpo7lcjq29ti09kdug0nnitb4', 1774072563, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('kcuoo6s5g78hkevrv123q72cv6', 1775881029, 'modx.user.contextTokens|a:0:{}'),
('kdaolbt1u0ffccmgg3sr9in8m7', 1775993690, 'modx.user.contextTokens|a:0:{}'),
('kdfnapkd928j6a50sns5nc34sa', 1775895377, 'modx.user.contextTokens|a:0:{}'),
('kdpn75grgclktmnu0sdss0pdtq', 1776476395, 'modx.user.contextTokens|a:0:{}'),
('kdq6ledni78bsquveoe3ia1mhm', 1774092352, 'modx.user.contextTokens|a:0:{}'),
('kdueuvmeneni5rddivegl2vb13', 1776766820, 'modx.user.contextTokens|a:0:{}'),
('kebq4ldtmj5bed635truotgp2s', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('kfb86arpj8716e4s0a7m9scg8k', 1773968583, 'modx.user.contextTokens|a:0:{}'),
('kfl62g1p3s1anh9mcnu5u7lc3q', 1774706278, 'modx.user.contextTokens|a:0:{}'),
('kfv6rvs2aktjq66lihajrhehf2', 1776524403, 'modx.user.contextTokens|a:0:{}'),
('kgs4pc2735g8mf5trquo599adi', 1774359067, 'modx.user.contextTokens|a:0:{}'),
('khafqehcvh5e8o63j1oa9mcosv', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('khfl7ljbgfddjlhssk74lv03a9', 1774984624, 'modx.user.contextTokens|a:0:{}'),
('khmooaacss4jf8v5c0738q8dv0', 1774817667, 'modx.user.contextTokens|a:0:{}'),
('kho5qe7a0ub00enn08g6dfce2l', 1775119111, 'modx.user.contextTokens|a:0:{}'),
('khpv7rt3qvcnqpoqcv02u0e7n3', 1776534267, 'modx.user.contextTokens|a:0:{}'),
('khtvva80r1m67a25out9j2ka3q', 1774911966, 'modx.user.contextTokens|a:0:{}'),
('kjiscte65u0ddutildsbt9hd5r', 1774796961, 'modx.user.contextTokens|a:0:{}'),
('kjjl9808fuug5l6q912uk5et94', 1776317590, 'modx.user.contextTokens|a:0:{}'),
('kknfmd4j5kg3u8u6kj6sftq2d0', 1775556996, 'modx.user.contextTokens|a:0:{}'),
('kl4qshk84aoqv2uc41os26fnqa', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('kl56m2lnolq1rud84itp0gor68', 1776924617, 'modx.user.contextTokens|a:0:{}'),
('kli7s8cfcd2p9uafo7b7qcjafq', 1776745067, 'modx.user.contextTokens|a:0:{}'),
('klj12dhidg66hsth0jsemm5acu', 1775810272, 'modx.user.contextTokens|a:0:{}'),
('klsp819s11ckpvhe8pmo889ekd', 1776760097, 'modx.user.contextTokens|a:0:{}'),
('km2hers2qkaerjcv3jv2uc6sfk', 1776747135, 'modx.user.contextTokens|a:0:{}'),
('km466v7ltkkb2dk1ls8gu54psm', 1776668425, 'modx.user.contextTokens|a:0:{}'),
('kn7dbijn1qkpsqlifla8vva5t6', 1775929413, 'modx.user.contextTokens|a:0:{}'),
('konvl52fqvn0ull2oak4to95rq', 1774930579, 'modx.user.contextTokens|a:0:{}'),
('kpafgvg0uj8t3i5ne70n6hn8h6', 1776944294, 'modx.user.contextTokens|a:0:{}'),
('kpc6cebvrkuc0tqnc5tm3jkuub', 1774917200, 'modx.user.contextTokens|a:0:{}'),
('kphprf6dj457gp57qa8h688jpb', 1775262661, 'modx.user.contextTokens|a:0:{}'),
('kpidkmkmt0lrhtvq0d2i9sqnav', 1776764946, 'modx.user.contextTokens|a:0:{}'),
('kpn9pmp5vblimea4849sh42mbq', 1775006043, 'modx.user.contextTokens|a:0:{}'),
('kpoda5j2vfc1dj970ivn5uheg1', 1775335378, 'modx.user.contextTokens|a:0:{}'),
('kppgtj95dcsufkdl1r5p3dv3ip', 1775279049, 'modx.user.contextTokens|a:0:{}'),
('kq67u6obb1sv1q1nh1trsd6720', 1774042979, 'modx.user.contextTokens|a:0:{}'),
('kqc27qgrlu1plhmds7p8uaevsg', 1777450443, 'modx.user.contextTokens|a:0:{}'),
('kr0ok8g56klvn6lotphucqgj9b', 1777447814, 'modx.user.contextTokens|a:0:{}'),
('kr1vsfjqede8lj2rkgkrb0spsd', 1774801366, 'modx.user.contextTokens|a:0:{}'),
('kr26d3jk9m6qhu0nd3bcfmnek9', 1775866113, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:22:\"Trincomalee, Sri Lanka\";s:7:\"dropoff\";s:21:\"Arugam Bay, Sri Lanka\";s:4:\"date\";s:16:\"2026-07-09T10:07\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('kr2vpc6rpejb1tkio19jcffi4p', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('kruu4glh6h0cn0f0edc4imkl9r', 1774998260, 'modx.user.contextTokens|a:0:{}'),
('ks2mhmeddd3f3qgoel3f28dov1', 1776715100, 'modx.user.contextTokens|a:0:{}'),
('kthngkvuj3m6urinph1rguhk6j', 1777067478, 'modx.user.contextTokens|a:0:{}'),
('kv0qab00eanu4rda7801sp57h4', 1776656726, 'modx.user.contextTokens|a:0:{}'),
('kv8gnne7q2q3497f5a787lc484', 1775217970, 'modx.user.contextTokens|a:0:{}'),
('kvedv049qi1jdflid50qudbru0', 1775492989, 'modx.user.contextTokens|a:0:{}'),
('kvfok76igp02oib7d2lkqqsip7', 1775364333, 'modx.user.contextTokens|a:0:{}'),
('l0dqjbpv3otrmari2vudaighu9', 1774734186, 'modx.user.contextTokens|a:0:{}'),
('l0fkvsi0efo1h4qb7mdrba43j7', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('l2i4880idst9jfese60lucjisi', 1776223127, 'modx.user.contextTokens|a:0:{}'),
('l3jgpjj27mm1u6r8q23hg7cvsk', 1777035287, 'modx.user.contextTokens|a:0:{}'),
('l43bqk4te9b90q7bgpc0tcund2', 1775881331, 'modx.user.contextTokens|a:0:{}'),
('l4fdmltl6h3j49s0b1d1t6un24', 1774924153, 'modx.user.contextTokens|a:0:{}'),
('l4mpdpvs52k9tjbsduovmorvfc', 1774544494, 'modx.user.contextTokens|a:0:{}'),
('l56ev6tp4lghjq1ghu5vhfprmd', 1776648298, 'modx.user.contextTokens|a:0:{}'),
('l5n8epv58arpg1arrk0v82u9qk', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('l5p2llj79kg5tv3h94ltc67p1r', 1775186883, 'modx.user.contextTokens|a:0:{}'),
('l5rj8l7p303c0s4pigpt6qsbv9', 1774679522, 'modx.user.contextTokens|a:0:{}'),
('l5tbarnm4kt87n5nd9m0h5gc99', 1774974119, 'modx.user.contextTokens|a:0:{}'),
('l6hckomk8vnsgefrfvsj0svum3', 1774248391, 'modx.user.contextTokens|a:0:{}'),
('l6iu3vsk1gar04dtk2av4hh3q8', 1774156126, 'modx.user.contextTokens|a:0:{}'),
('l6vemqvlpsnt63u89d71ubqumm', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('l72433bbo0a1glf2qjllqrdusj', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('l7jd9dpnhl2t0n3vh2vhofe45i', 1775368020, 'modx.user.contextTokens|a:0:{}'),
('l80dqdh1gs93h5o6l80ajn3sir', 1775979993, 'modx.user.contextTokens|a:0:{}'),
('l869icah87gu638c4ht53g90lc', 1775937818, 'modx.user.contextTokens|a:0:{}'),
('l8i62s13qhmlmss2tru3gi2hfk', 1774001723, 'modx.user.contextTokens|a:0:{}'),
('l8pbrfepc348f46oj6tkcf63i3', 1774797832, 'modx.user.contextTokens|a:0:{}'),
('l992k65r2ojkt7t1q9hq4scbm9', 1773862459, 'modx.user.contextTokens|a:0:{}'),
('l9jd8t2q2m7dolnu606hndmnmc', 1777119327, 'modx.user.contextTokens|a:0:{}'),
('la0e6q80onbb6ammons530ia0s', 1775457352, 'modx.user.contextTokens|a:0:{}'),
('la1vb8s1asa8id4q9trtg3484m', 1775218495, 'modx.user.contextTokens|a:0:{}'),
('la6vvnikef8volquepponcike7', 1775637390, 'modx.user.contextTokens|a:0:{}'),
('la9n0pb9d3k2g8aid9b2h6angm', 1777197582, 'modx.user.contextTokens|a:0:{}'),
('labsh3h4ajhrjektu7u7ejg2is', 1775528701, 'modx.user.contextTokens|a:0:{}'),
('lb030cu9fn3jt60otcckha6te6', 1777359630, 'modx.user.contextTokens|a:0:{}'),
('lb1eed4kvsajje5ih7n5h2mfot', 1776263950, 'modx.user.contextTokens|a:0:{}'),
('lbb3as4mhjk7mvvsfdn8jt37ll', 1776277646, 'modx.user.contextTokens|a:0:{}'),
('lbjtvo8ia5gsva94qqm5tl03uv', 1774581765, 'modx.user.contextTokens|a:0:{}'),
('lc4uhcio1hbabgg10qdklib44m', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('lc4vnk50iln711sqsudkbkuggk', 1774538446, 'modx.user.contextTokens|a:0:{}'),
('ld9o1gl408127ar3p6bjcnk3uq', 1776660265, 'modx.user.contextTokens|a:0:{}'),
('len7gqo7f1p473a0quq07s3b0t', 1775450622, 'modx.user.contextTokens|a:0:{}'),
('lenlim25nhrlmqnfuu38huc06p', 1776468832, 'modx.user.contextTokens|a:0:{}'),
('lfa7ij1sk3mohnlec59c3jdr1a', 1775754852, 'modx.user.contextTokens|a:0:{}'),
('lfgi885cpn25oku7gui1gkjait', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('lgb1f0jt91cfmpiql4t9pqh0bj', 1774594215, 'modx.user.contextTokens|a:0:{}'),
('lgj36acmkvjtbfq08tevqf376e', 1775199979, 'modx.user.contextTokens|a:0:{}'),
('lh1s9qolsj879epqajbn67i6v4', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('lh2tf1l22gc0k22jsij8pentrm', 1774567581, 'modx.user.contextTokens|a:0:{}'),
('lhadledq7cn0dln5q207aqlejr', 1776248523, 'modx.user.contextTokens|a:0:{}'),
('lhd8ebcg5tvdmga7uh2qcoud6r', 1775260970, 'modx.user.contextTokens|a:0:{}'),
('lhme6fp2ka0h1sinlg84r5jp3u', 1774745134, 'modx.user.contextTokens|a:0:{}'),
('lhnr7717kbni7db96daago0g7q', 1776695935, 'modx.user.contextTokens|a:0:{}'),
('li30nfnhskv381qaffrpen8okj', 1776324292, 'modx.user.contextTokens|a:0:{}'),
('li5jjpt2hu5s58ma07hh0nqsjh', 1773902196, 'modx.user.contextTokens|a:0:{}'),
('li8infq3d7ib0ns9n5q8gkuqca', 1775583931, 'modx.user.contextTokens|a:0:{}'),
('libdilp7bg36q9d7ec4qurf321', 1775528701, 'modx.user.contextTokens|a:0:{}'),
('lie6n7g9dknjkc8oavcumkeg7l', 1776024433, 'modx.user.contextTokens|a:0:{}'),
('lj1ga7cprqoitslroicebbg891', 1776294395, 'modx.user.contextTokens|a:0:{}'),
('lj2au7jpe01is6huuu8lic1ct2', 1774968888, 'modx.user.contextTokens|a:0:{}'),
('lj3iq1m6p3bnilel6rm5dodqef', 1774124767, 'modx.user.contextTokens|a:0:{}'),
('lj5nfsjpokqv8rd1v4jem0l1lr', 1776342006, 'modx.user.contextTokens|a:0:{}'),
('ljgefefcvdar121gn53okcjpfh', 1774105236, 'modx.user.contextTokens|a:0:{}'),
('ljt8feunpu52ve0anhhhbnk1d0', 1774924153, 'modx.user.contextTokens|a:0:{}'),
('ljuob2gicr7d23obas4mqrhr4u', 1777155268, 'modx.user.contextTokens|a:0:{}'),
('lk01uiru3bdfg90vtd8e5sm2e4', 1776751640, 'modx.user.contextTokens|a:0:{}'),
('lkr7p5hqcl77bgr3iu9ve85sd9', 1774239518, 'modx.user.contextTokens|a:0:{}'),
('lla4cvjkr0ucat01jfodg0j1s4', 1774359068, 'modx.user.contextTokens|a:0:{}'),
('llbvfe7oft2a6sh3mevdfcushc', 1773850215, 'modx.user.contextTokens|a:0:{}'),
('llgfk3lmgd8fle3dsp8nadbv6c', 1774153012, 'modx.user.contextTokens|a:0:{}'),
('lm4acbp8vavsifg9qki715sug1', 1774091442, 'modx.user.contextTokens|a:0:{}'),
('lm5l9a8cj7h23oe4gat1d5tphn', 1775686880, 'modx.user.contextTokens|a:0:{}'),
('lmqq2oolcoj2usgemp85i9bv2n', 1774681529, 'modx.user.contextTokens|a:0:{}'),
('lms678gro1c5d5nfte1mer5mhk', 1777298849, 'modx.user.contextTokens|a:0:{}'),
('lmu066dpdon4vq74pvdj79er6u', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('lmuor8cjbo0d0o25r3b5qfmmsq', 1774615225, 'modx.user.contextTokens|a:0:{}'),
('lnobghdov98o4tcf90bt0chprc', 1777084252, 'modx.user.contextTokens|a:0:{}'),
('lnu2fhbc7le480idsk2h0hv0us', 1774731964, 'modx.user.contextTokens|a:0:{}'),
('lo3nvs5ra1dj16cmihvqppnggj', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('lo6m5hvmfl22qubr0cive7pimd', 1774505254, 'modx.user.contextTokens|a:0:{}'),
('lo756ufiiqbookid3gnoi33ta6', 1775668059, 'modx.user.contextTokens|a:0:{}'),
('locf8gt937b7o1b5ot6fr9rokf', 1774333065, 'modx.user.contextTokens|a:0:{}'),
('loggn7gpr4thjs3skau3343s4l', 1774605065, 'modx.user.contextTokens|a:0:{}'),
('lokb0dj30k5qa4dk9llr532q39', 1775433154, 'modx.user.contextTokens|a:0:{}'),
('lon9ho3pps99jr38ti4huic6nn', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('loni16hih99b95ps1qve8ml448', 1774229733, 'modx.user.contextTokens|a:0:{}'),
('lpad6ndqotsorftrq53trbvp17', 1776135792, 'modx.user.contextTokens|a:0:{}'),
('lplc9nfkrra8flgihupd4i2pg1', 1776324307, 'modx.user.contextTokens|a:0:{}'),
('lpoo8msgmug5q0j5bb92tmpcel', 1777406780, 'modx.user.contextTokens|a:0:{}'),
('lpp8atkr77rt57jdcl7rmtmh92', 1774071922, 'modx.user.contextTokens|a:0:{}'),
('lqa1vcam83geilphehn9vjad67', 1777067450, 'modx.user.contextTokens|a:0:{}'),
('lqg728f5i822bn3nsvm38hclkc', 1776717673, 'modx.user.contextTokens|a:0:{}'),
('lqhdkjn0lrk0hphofns0tlac34', 1777212873, 'modx.user.contextTokens|a:0:{}'),
('lqnqgjprcn1psrcnh5383kmmem', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('lqr6qral0397ooqr3lk04cr41d', 1776684412, 'modx.user.contextTokens|a:0:{}'),
('lr6dkeeufso483hcr50uhm8ecr', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('lre3nsgeri4qmokias54hn7i61', 1777008446, 'modx.user.contextTokens|a:0:{}'),
('lrltjmj1ckh3blcukmmlu4i4cb', 1777334983, 'modx.user.contextTokens|a:0:{}'),
('lrt8r7eoemhdurdinkmcvf54vk', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('lsvk3hlr0p477rouqvb4tta173', 1775328308, 'modx.user.contextTokens|a:0:{}'),
('ltjf1cfb5uvc3fttg9vo6040u3', 1774647661, 'modx.user.contextTokens|a:0:{}'),
('lttfhjn5juvab8h5fptl2ck5a5', 1774071454, 'modx.user.contextTokens|a:0:{}'),
('luqmvd34djnluq5uh1jebbtvd2', 1774434256, 'modx.user.contextTokens|a:0:{}'),
('lv9vjrjtm6umn4eduhm8ie80p2', 1774319472, 'modx.user.contextTokens|a:0:{}'),
('lvf0aie7trhr73qdcef9d1juav', 1777349708, 'modx.user.contextTokens|a:0:{}'),
('lvu68k7mj6b3vgeanc4s90d8e1', 1774336225, 'modx.user.contextTokens|a:0:{}'),
('m074i90adadrcoc153107ts4tj', 1774770190, 'modx.user.contextTokens|a:0:{}'),
('m094ki6g21flf3dc8r0sg70rmm', 1777127594, 'modx.user.contextTokens|a:0:{}'),
('m0i4kgghii455uj3lluef2et5g', 1775201158, 'modx.user.contextTokens|a:0:{}'),
('m0o271r3ou8h0qmf5basg8o490', 1777035858, 'modx.user.contextTokens|a:0:{}'),
('m0vlv06714496hp1fcdijllemd', 1774822563, 'modx.user.contextTokens|a:0:{}'),
('m11aqnfdnh2ailnh03d6srrnkr', 1774520579, 'modx.user.contextTokens|a:0:{}'),
('m18fqbcrje9cl64mln6pk9ko6v', 1776680305, 'modx.user.contextTokens|a:0:{}'),
('m21nggp8mve5iha9nabcldpe4l', 1776140324, 'modx.user.contextTokens|a:0:{}'),
('m2e1v27685hmgk80vbhgtc341l', 1773850452, 'modx.user.contextTokens|a:0:{}'),
('m2hhdv69oj3cb6scv48k4olvq8', 1775231661, 'modx.user.contextTokens|a:0:{}'),
('m2r174fub484ea83h8ucn926em', 1776685257, 'modx.user.contextTokens|a:0:{}'),
('m3caoaa4h3a4h6da1r52ri3bnu', 1777089160, 'modx.user.contextTokens|a:0:{}'),
('m3fe7adqi60pgu2kmeped4e3kj', 1777135149, 'modx.user.contextTokens|a:0:{}'),
('m3relenilcqpdbs7k3pl4n9ajb', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('m43lsvvpl52kfv5cd9vccc48tl', 1774417632, 'modx.user.contextTokens|a:0:{}'),
('m47t5kkj214n3rib3j7itma7og', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('m48b78i6lmguo51egiuav8hmcp', 1774799823, 'modx.user.contextTokens|a:0:{}'),
('m4a45qr8hhva0h2f5214ma5oud', 1776344193, 'modx.user.contextTokens|a:0:{}'),
('m4br0liv4tpocn0q7m05rv0hcs', 1774602496, 'modx.user.contextTokens|a:0:{}'),
('m4ctnqgfegi6emk64lspl01bn9', 1774801392, 'modx.user.contextTokens|a:0:{}'),
('m4d77hj21r5qd67dvm7vn9nj9r', 1776494361, 'modx.user.contextTokens|a:0:{}'),
('m4hksu4n4k5oo8jdg2vs4fs93o', 1774448779, 'modx.user.contextTokens|a:0:{}'),
('m4rmiba863lh8eg1ik2efuinbr', 1775300660, 'modx.user.contextTokens|a:0:{}'),
('m4tilbd2e44n3ufqv3k93rhh4h', 1776225515, 'modx.user.contextTokens|a:0:{}'),
('m51ddbdoqqlq4303e2m2va7mra', 1776677627, 'modx.user.contextTokens|a:0:{}'),
('m53sqrjmnpf0ngf44g5qn4d8bh', 1775731316, 'modx.user.contextTokens|a:0:{}'),
('m55f0gg9jnco8vsrr7miqk315r', 1777349296, 'modx.user.contextTokens|a:0:{}'),
('m57jc8d6sdm39nt56v30je31m5', 1774500559, 'modx.user.contextTokens|a:0:{}'),
('m5d46scunhg5nr17tm2rs2r8jp', 1777394460, 'modx.user.contextTokens|a:0:{}'),
('m6ef3l3447gotfk80232fv8kvb', 1777299160, 'modx.user.contextTokens|a:0:{}'),
('m6f524lkn5ok2p8l9mth8elilt', 1774429622, 'modx.user.contextTokens|a:0:{}'),
('m6kc5g3ujj88eqfkelrci5rug7', 1776656724, 'modx.user.contextTokens|a:0:{}'),
('m6p4ngefaj63ki9210a1mh4sg8', 1776509505, 'modx.user.contextTokens|a:0:{}'),
('m72eu5id42ekdbb6108hlbg23s', 1776024866, 'modx.user.contextTokens|a:0:{}'),
('m72vjkd4uair16fa65pokvdfll', 1776275448, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('m7be04cns8c201fook2nop44n3', 1776261543, 'modx.user.contextTokens|a:0:{}'),
('m7thpp9hp7fl7pkbponcunpd97', 1774195003, 'modx.user.contextTokens|a:0:{}'),
('m8l8dt68so6849gqjefrrmduvj', 1775288511, 'modx.user.contextTokens|a:0:{}'),
('m8thk1ikl9tp078k3flfulkfvg', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('m8tlpt3ntmr0aslrd13ah7pgf3', 1773989946, 'modx.user.contextTokens|a:0:{}'),
('m92pkf4e5e71sd0ctq3fpj26p8', 1776829882, 'modx.user.contextTokens|a:0:{}'),
('m9c5fon9ftkom6mgnqdr7labok', 1775642035, 'modx.user.contextTokens|a:0:{}'),
('m9fj0hld8j5iihn4phvdb0p0as', 1776266991, 'modx.user.contextTokens|a:0:{}'),
('m9g9js5pnsv7v61sr8spin47l7', 1777372796, 'modx.user.contextTokens|a:0:{}'),
('m9hic1anq7rp61tn2le5etsa05', 1774600824, 'modx.user.contextTokens|a:0:{}'),
('m9hnsoieo2847nc5hi90rr6q9j', 1777055190, 'modx.user.contextTokens|a:0:{}'),
('m9o69j30ob3sp5koklfrjuoq2t', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('mabfnn3rj2islbco4hifo7vde9', 1775240325, 'modx.user.contextTokens|a:0:{}'),
('mabufj2eq1sn5f89a1v01bnl0k', 1775179494, 'modx.user.contextTokens|a:0:{}'),
('macjoo9tf1trot7pbtf66erj06', 1777009359, 'modx.user.contextTokens|a:0:{}'),
('matsngf90itt2q63t2hh7qc4m6', 1776977299, 'modx.user.contextTokens|a:0:{}'),
('mcriq3g0p6gis8htik2ufljcuo', 1777105292, 'modx.user.contextTokens|a:0:{}'),
('mda74hgucsdss1ae69i11sh9b0', 1774541109, 'modx.user.contextTokens|a:0:{}'),
('mebdghqahu0hu08n13ar6u6r19', 1777238831, 'modx.user.contextTokens|a:0:{}'),
('mf6ue19nqiiukevet27lfl0p36', 1776841696, 'modx.user.contextTokens|a:0:{}'),
('mfkrq1a638ipnj604783upqpf4', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('mfmba67bi8nkcfq4bnm1fnbvrk', 1774683939, 'modx.user.contextTokens|a:0:{}'),
('mgro0uiqul8lda83n2vf4u0ap4', 1775640130, 'modx.user.contextTokens|a:0:{}'),
('mhlf4l8omppve9d3iuf944q9c6', 1774776076, 'modx.user.contextTokens|a:0:{}'),
('mhug2c2atflpggnv2t8dp3mpsd', 1775541632, 'modx.user.contextTokens|a:0:{}'),
('mi45278pi7eqabu47d5ujutud1', 1775025087, 'modx.user.contextTokens|a:0:{}'),
('mia8mt6blfq4kdej9fl79b5tfn', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('midad3033qi4m0jrqqlihgpkns', 1775036389, 'modx.user.contextTokens|a:0:{}'),
('mie6nke7kf4kfle9mdcafepspa', 1774166242, 'modx.user.contextTokens|a:0:{}'),
('minjsqfp03mvj23a93srsvdi7e', 1777349296, 'modx.user.contextTokens|a:0:{}'),
('mj7363rh7gartuqhnlhgq842ba', 1774095302, 'modx.user.contextTokens|a:0:{}'),
('mjd00vn9tlcekbi81pftvqjur5', 1774090474, 'modx.user.contextTokens|a:0:{}'),
('mk5vl445hs5kp516qufuuoe6ul', 1775859510, 'modx.user.contextTokens|a:0:{}'),
('mklrdqfv3nqub2fkbcusimr09t', 1774087914, 'modx.user.contextTokens|a:0:{}'),
('ml4mhodhrdk0taf9auv81ot1im', 1777028335, 'modx.user.contextTokens|a:0:{}'),
('mla75j5um9dkqhjpftsfrbrs5t', 1777369257, 'modx.user.contextTokens|a:0:{}'),
('mlgj1csd75db5b5uccfn2ip46f', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('mlguka88skbn8ni1ii6c5muqm2', 1776759554, 'modx.user.contextTokens|a:0:{}'),
('mlm836i5fbv36h4kn9pj7bhcic', 1773849952, 'modx.user.contextTokens|a:0:{}'),
('mm5uu9rgc01iqiv8ih7f7lr5fs', 1775772217, 'modx.user.contextTokens|a:0:{}'),
('mme3k11u8h72nno76i1fbvjefu', 1774417231, 'modx.user.contextTokens|a:0:{}'),
('mmt8b597c1gam0rkbcf2vj72p7', 1774350370, 'modx.user.contextTokens|a:0:{}'),
('mn3v5gad3ov64215eesh8qtht0', 1776249532, 'modx.user.contextTokens|a:0:{}'),
('mneevqb9k28ec901aa1dkkgo7s', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('mng9a62u27fqee3a4enveaietu', 1775146226, 'modx.user.contextTokens|a:0:{}'),
('mnn9e3kjam6s157pv06srdschf', 1774801340, 'modx.user.contextTokens|a:0:{}'),
('mo2ksvfsjbkpnvoro09naonaki', 1773929489, 'modx.user.contextTokens|a:0:{}'),
('moj1n7hqe1ave2grf057el0pvb', 1774935325, 'modx.user.contextTokens|a:0:{}'),
('mos6nophlnfktqc5lqmh1g7uhq', 1777417777, 'modx.user.contextTokens|a:0:{}'),
('mp1vs40dh77l7d1lue8oohjk56', 1775073551, 'modx.user.contextTokens|a:0:{}'),
('mpntht6ajtt6jn742drelkjibb', 1776583310, 'modx.user.contextTokens|a:0:{}'),
('mpv4osiev9meqna592kk47hd8m', 1774016063, 'modx.user.contextTokens|a:0:{}'),
('mq1uotcf47m6a98864ascnm4sr', 1774403085, 'modx.user.contextTokens|a:0:{}'),
('mq6lum8h0e2vmbg6ommavhjs3f', 1775421326, 'modx.user.contextTokens|a:0:{}'),
('mqjsc93f5eolrp7kk6lkulsc3d', 1776356500, 'modx.user.contextTokens|a:0:{}'),
('mqupcrqad0c35qlm93r09dps6h', 1775910788, 'modx.user.contextTokens|a:0:{}'),
('mr0vpj3absio7gnvu98a2r2e35', 1774698046, 'modx.user.contextTokens|a:0:{}'),
('mr4f3inbqjrfmlc9sj7g7tnt0v', 1774001937, 'modx.user.contextTokens|a:0:{}'),
('mr89remf7s4t6140cil4641hjg', 1776173283, 'modx.user.contextTokens|a:0:{}'),
('mrn7fkprk2ht7su8vqi7qsbiie', 1777278601, 'modx.user.contextTokens|a:0:{}'),
('ms7tlcar873rpbis42chf6cveu', 1774106945, 'modx.user.contextTokens|a:0:{}'),
('ms8ov4bql1ljs31s0866r0bgmv', 1776545295, 'modx.user.contextTokens|a:0:{}'),
('msaig15btukbfa7ccdvcnlosq9', 1774907875, 'modx.user.contextTokens|a:0:{}'),
('msjv525kl8skjkd9u0sudbvepd', 1774602655, 'modx.user.contextTokens|a:0:{}'),
('mstq3tgligibv0bvvc0l7c184c', 1774819898, 'modx.user.contextTokens|a:0:{}'),
('mt8ve6ggal0d8d02nermkq83nj', 1777038562, 'modx.user.contextTokens|a:0:{}'),
('mtph9hqc3badbk6stgqche9ge6', 1776264320, 'modx.user.contextTokens|a:0:{}'),
('mu45b18nbrimcrjs4g4hrr5l7d', 1777285000, 'modx.user.contextTokens|a:0:{}'),
('muact6rpvmrdog2sg3sh5ugk3m', 1776890503, 'modx.user.contextTokens|a:0:{}'),
('muejigpve05b2do3kv82e8qkfq', 1774090351, 'modx.user.contextTokens|a:0:{}'),
('muh9mmg8o66d1blkp6957pfo66', 1774514120, 'modx.user.contextTokens|a:0:{}'),
('muultok3r7fev5v1o5ejoc9ans', 1777005013, 'modx.user.contextTokens|a:0:{}'),
('mv61pmu05d75mfp19pr773ee10', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('mv7rqvfmg6eoiqqrvs5tekteaf', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('mv960rbjv39da41o2oblh067n5', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('n0lee1s9ifvopof92a8s6m9d3s', 1775470582, 'modx.user.contextTokens|a:0:{}'),
('n0m258r657jodan65qj0jo1jht', 1775796704, 'modx.user.contextTokens|a:0:{}'),
('n0qdr1oqum1mrg30euk0etj6ab', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('n0tv0eoqempr7tep390klpdsfj', 1775365798, 'modx.user.contextTokens|a:0:{}'),
('n15etq47ndqebbn8n96arlke4e', 1775174669, 'modx.user.contextTokens|a:0:{}'),
('n1aab9pgc67um43eq6p0ihshlh', 1774690773, 'modx.user.contextTokens|a:0:{}'),
('n1af01db684c63q7na90h38dkv', 1777420531, 'modx.user.contextTokens|a:0:{}'),
('n1bnl3nlr8us5o3s2657lvkq79', 1777217958, 'modx.user.contextTokens|a:0:{}'),
('n1rgme877i7daln1vcilhbjkv7', 1775215758, 'modx.user.contextTokens|a:0:{}'),
('n25kiokss1r35600osimuht31s', 1776518259, 'modx.user.contextTokens|a:0:{}'),
('n2giapme4s5v38ees6sv3a9lgv', 1774962456, 'modx.user.contextTokens|a:0:{}'),
('n2qptngig0bvnkl4opfe0vi4o8', 1774087732, 'modx.user.contextTokens|a:0:{}'),
('n431l8rar0k6os3dbn7irpti57', 1775088958, 'modx.user.contextTokens|a:0:{}'),
('n4kde10q3s0sg39cchqb41smgh', 1773932985, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('n58jsr3gsv4j5la337btjgpkp2', 1773877721, 'modx.user.contextTokens|a:0:{}'),
('n5qbv5am4g6os3r36rb40c2045', 1777024561, 'modx.user.contextTokens|a:0:{}'),
('n6bqcec70arkuoog65gos6d1nm', 1774616162, 'modx.user.contextTokens|a:0:{}'),
('n6fq8svjgvl0a9ikd6nll9krh5', 1775288123, 'modx.user.contextTokens|a:0:{}'),
('n6t8goq4f76mljl65t5isqmh39', 1774286567, 'modx.user.contextTokens|a:0:{}'),
('n7f6omag0hauu8nf3c04sdp75u', 1773906846, 'modx.user.contextTokens|a:0:{}'),
('n7ja9446eihike2e1ng5curps2', 1775281908, 'modx.user.contextTokens|a:0:{}'),
('n7mmq082l8f1s718sddk49tgno', 1775881013, 'modx.user.contextTokens|a:0:{}'),
('n85chvbo1t9cdgsp1hb9r3s76e', 1777114583, 'modx.user.contextTokens|a:0:{}'),
('n8ntc6n399952ddl8fs3fld5i6', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('n975uv13kl0ebo6c2mnu3lk41l', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('n99taouo1tnijp80s7rojldj3g', 1776757711, 'modx.user.contextTokens|a:0:{}'),
('n9cg0knh46khn8j3r5onk94v5e', 1774628661, 'modx.user.contextTokens|a:0:{}'),
('n9eqcdrbdj5bnt0ekji0mfmqkn', 1774086492, 'modx.user.contextTokens|a:0:{}'),
('n9js7pibfh2v7n6iqpm3c1vnfq', 1776512466, 'modx.user.contextTokens|a:0:{}'),
('n9p3arl9n2mbd8qo9gfp4vjso1', 1775091567, 'modx.user.contextTokens|a:0:{}'),
('n9p5ldpklpib5nor8ldd27c8jr', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('na7bp8mjdgloh43qqtmb59v2ro', 1775368036, 'modx.user.contextTokens|a:0:{}'),
('naau2pkkdnmnj96ttcpelbemif', 1777067498, 'modx.user.contextTokens|a:0:{}'),
('nacg51191263ij8ii630qi0cib', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('nakk4pedpqjion505iumlnngi0', 1776777579, 'modx.user.contextTokens|a:0:{}'),
('nalb51pr0vcvtpjp2ichefvjp6', 1773931431, 'modx.user.contextTokens|a:0:{}'),
('nbftr2e27g1fn2s2h3qec2tihi', 1774243836, 'modx.user.contextTokens|a:0:{}'),
('nbs104k112bj44btqssgdvu1l9', 1776399746, 'modx.user.contextTokens|a:0:{}'),
('nc1mp1r1in6k472og9dbneqf5r', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('nc5ot5v9niovc6ojbrgvm9p6hb', 1774752927, 'modx.user.contextTokens|a:0:{}'),
('nc961uraqffd6dook2bkfbuugm', 1775286454, 'modx.user.contextTokens|a:0:{}'),
('ncbeuqk72m5ivo7icn93o7fkci', 1776364478, 'modx.user.contextTokens|a:0:{}'),
('ncd4uat42ajksvjpib598u583f', 1775481362, 'modx.user.contextTokens|a:0:{}'),
('ndf25i0tijsdei6pem0u6qa2al', 1775057472, 'modx.user.contextTokens|a:0:{}'),
('ndkussftq8lmkkomscvu7338pq', 1774706261, 'modx.user.contextTokens|a:0:{}'),
('ne3eog6erhj2m8qc6mh0ni3v0r', 1777102041, 'modx.user.contextTokens|a:0:{}'),
('nej340pu2hqej43gqhb6egrbh2', 1777309697, 'modx.user.contextTokens|a:0:{}'),
('netg0e778avs6347el6bk2f264', 1776917777, 'modx.user.contextTokens|a:0:{}'),
('neua509142oc91cm84n1dsfe3e', 1777105292, 'modx.user.contextTokens|a:0:{}'),
('nf2b59r42ac78npjbmgttsfjjj', 1774621347, 'modx.user.contextTokens|a:0:{}'),
('nf52hqkniv1509n62l4fehht4e', 1774309728, 'modx.user.contextTokens|a:0:{}'),
('nfckofrp3cer0rcvir6m9dkejm', 1774057146, 'modx.user.contextTokens|a:0:{}'),
('nfp5bqokk1tlvmjev7uq2tbib6', 1773902215, 'modx.user.contextTokens|a:0:{}'),
('nfp8m46bq14atffignfh6qisc3', 1777235960, 'modx.user.contextTokens|a:0:{}'),
('nfs8ne50qt6co3aksjsd484142', 1773903340, 'modx.user.contextTokens|a:0:{}'),
('ng33qnu43lnksbfmm3i1s8r9mp', 1774601212, 'modx.user.contextTokens|a:0:{}'),
('nggvp91d6p89h52r7s1m5dtu81', 1776291401, 'modx.user.contextTokens|a:0:{}'),
('ngll69nj6fttjd6o2q9384mv5h', 1776909544, 'modx.user.contextTokens|a:0:{}'),
('ngtlblhmsvcf3grua2pk6fk12s', 1775590932, 'modx.user.contextTokens|a:0:{}'),
('nhb1j5vadi4qhc59hturmkode1', 1775924312, 'modx.user.contextTokens|a:0:{}'),
('nhn4gvjljf0ven7gg0s6cuordc', 1777217958, 'modx.user.contextTokens|a:0:{}'),
('nhv0puvfq2v52u041420c2f367', 1774780026, 'modx.user.contextTokens|a:0:{}'),
('ni57omudp1tgabc5t2f5h040s4', 1775632921, 'modx.user.contextTokens|a:0:{}'),
('nigehoi68mto5tc08pjdd9gu73', 1777444543, 'modx.user.contextTokens|a:0:{}'),
('nj0bp8tsarccohmunvllbn4d45', 1774802826, 'modx.user.contextTokens|a:0:{}'),
('nj0vbj9gipkpsh0r8s7adstu6b', 1774195017, 'modx.user.contextTokens|a:0:{}'),
('nj1703nov398iomn1tk4gdep1u', 1776032476, 'modx.user.contextTokens|a:0:{}'),
('njapb8ub4quarnr4u6tos0oeld', 1775258861, 'modx.user.contextTokens|a:0:{}'),
('nkjmiudm3uqcgclibe1s7asglj', 1776670910, 'modx.user.contextTokens|a:0:{}'),
('nkjnlka0c1vtor73t3p9c1lg4i', 1773872368, 'modx.user.contextTokens|a:0:{}'),
('nkp6bjf1ajtcs79f80jknrb82f', 1775774779, 'modx.user.contextTokens|a:0:{}'),
('nks4i3itaml4vtgqern21uqkiu', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('nkujta2alnru1opl6njgetvpkb', 1774605376, 'modx.user.contextTokens|a:0:{}'),
('nl91qjffbhmsq8hss5j7bgdbiv', 1776017576, 'modx.user.contextTokens|a:0:{}'),
('nli5nin98maf0s07n6jfvdd10s', 1774290083, 'modx.user.contextTokens|a:0:{}'),
('nlqmklk10h275dtlp9ceg51efc', 1777384328, 'modx.user.contextTokens|a:0:{}'),
('nmnfb3s97e2fbntnvl858gd70e', 1774606730, 'modx.user.contextTokens|a:0:{}'),
('nmrgi27rtuvabudgrmgrv6ud66', 1777029530, 'modx.user.contextTokens|a:0:{}'),
('nn8v14b13r27r3en9pema09h7j', 1775089520, 'modx.user.contextTokens|a:0:{}'),
('nn93isu83rp1t8i83ki3e3p52r', 1774498005, 'modx.user.contextTokens|a:0:{}'),
('nnarbbfeics69lnk8s7vves9su', 1777067455, 'modx.user.contextTokens|a:0:{}'),
('nnete57ifnmu1l5d8eue192hbe', 1776301748, 'modx.user.contextTokens|a:0:{}'),
('nnpu5l32j1kh6iukcmkh3civ82', 1775822140, 'modx.user.contextTokens|a:0:{}'),
('no4kjcbng9b0aiasbbcsoc3ku3', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('no5hcu9eaegb9nmdo52ptlk058', 1774248387, 'modx.user.contextTokens|a:0:{}'),
('nom2a17g01qpg88p8mr0qcaqkd', 1774973818, 'modx.user.contextTokens|a:0:{}'),
('noojumtr1lql6jn14urvomqr29', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('noqdlkhcf3pb5r12acv7fo786r', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('nou3irktgt8mc41efb3qpr52u8', 1775042536, 'modx.user.contextTokens|a:0:{}'),
('np1gcoea25k1b9orr1gbqgq876', 1774983835, 'modx.user.contextTokens|a:0:{}'),
('np3d841saml073ugrn9tnt1ehn', 1777441137, 'modx.user.contextTokens|a:0:{}');
INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('npvm6e7bdnr95bjr9aavt2gh0f', 1777067449, 'modx.user.contextTokens|a:0:{}'),
('nqvlidhd8jtjj0lpne999snu45', 1777102906, 'modx.user.contextTokens|a:0:{}'),
('nr59b4rve2n9r6ea4t4r3plmqb', 1775229993, 'modx.user.contextTokens|a:0:{}'),
('nrge606tpi0c6cfts060qh1ir8', 1773895663, 'modx.user.contextTokens|a:0:{}'),
('nrgrht8hu9su1fr13091o9a573', 1774339032, 'modx.user.contextTokens|a:0:{}'),
('nrm1r2hpnlv44b8h4a0sjn250n', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('nruv9lk5jbpb5sjceq88f08a01', 1774968888, 'modx.user.contextTokens|a:0:{}'),
('nsfk8rikld0mfaiqff6osv9h3u', 1775394491, 'modx.user.contextTokens|a:0:{}'),
('nss1cd4kbklvu40cgajkfmm35q', 1776937697, 'modx.user.contextTokens|a:0:{}'),
('ntba7pepmk7gp6n56hehsn7evb', 1774093079, 'modx.user.contextTokens|a:0:{}'),
('ntff70ocs263acdbhl2ja9d8kj', 1774098307, 'modx.user.contextTokens|a:0:{}'),
('nto3u1b3bavc0rajdrf8tn3ptq', 1774356657, 'modx.user.contextTokens|a:0:{}'),
('ntp5o0ipmfsv3ernr4j8g9eudl', 1776818008, 'modx.user.contextTokens|a:0:{}'),
('nu6bth4uq8ctfa7eebqqkq1sne', 1776285550, 'modx.user.contextTokens|a:0:{}'),
('nu8tjkc8p3eeuhmdp5qld2ubq2', 1775088155, 'modx.user.contextTokens|a:0:{}'),
('nuoeg96gmdatc4pe3ba3fph8qb', 1775059989, 'modx.user.contextTokens|a:0:{}'),
('nuolv93fh420fp3uirld49bnkn', 1775783627, 'modx.user.contextTokens|a:0:{}'),
('nv1ntu25sl4312stugp0tvvjdh', 1774924361, 'modx.user.contextTokens|a:0:{}'),
('nv2ca5htnbt8ijc3a6nthr963h', 1777165880, 'modx.user.contextTokens|a:0:{}'),
('nv3id6hn4nc4659n6tlc06e529', 1775388846, 'modx.user.contextTokens|a:0:{}'),
('nvuhmeena04bpval8k091lgdbc', 1775897600, 'modx.user.contextTokens|a:0:{}'),
('o0a4vd8afuhm3jr1vdp58d6uk7', 1775379419, 'modx.user.contextTokens|a:0:{}'),
('o0hna3gbjm8rd1vefgolj7eb59', 1773910597, 'modx.user.contextTokens|a:0:{}'),
('o2n4baog6nqnqr91inak2aq42g', 1777136502, 'modx.user.contextTokens|a:0:{}'),
('o2tlnlg1407ktbif0abrtsf1uf', 1774247639, 'modx.user.contextTokens|a:0:{}'),
('o2v6kninchqjsu2058j4vrkgno', 1775175347, 'modx.user.contextTokens|a:0:{}'),
('o3m3lh2qg9tgod3r5jco3964ni', 1774903017, 'modx.user.contextTokens|a:0:{}'),
('o3p4kcjpjgjcg8g14b53gk2hdb', 1777053963, 'modx.user.contextTokens|a:0:{}'),
('o53j82n8p3lcl1sgbm4s4qoqef', 1776239960, 'modx.user.contextTokens|a:0:{}'),
('o5hcf99gud2b8orm92j6qpbdhm', 1774071921, 'modx.user.contextTokens|a:0:{}'),
('o5mltn42cbaa00ur0uis2dr8n3', 1774092303, 'modx.user.contextTokens|a:0:{}'),
('o5rpn4cth95gk9ujrhvkvkug1a', 1774814768, 'modx.user.contextTokens|a:0:{}'),
('o65dkv8i6b00m5o3atsentjfn3', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('o68bcvjujhpvflhkceg60hcd4h', 1774998260, 'modx.user.contextTokens|a:0:{}'),
('o77hluhui6od2jlp5nl5g9hs3p', 1776619928, 'modx.user.contextTokens|a:0:{}'),
('o791rqco5h3kfd6o62ibhk58hl', 1774072700, 'modx.user.contextTokens|a:0:{}'),
('o7k2mt3tjl4bp14o1soo3c6lb7', 1774194997, 'modx.user.contextTokens|a:0:{}'),
('o7pvpgj2kb0frqlk25o3dshsni', 1776707774, 'modx.user.contextTokens|a:0:{}'),
('o8ircagv5sjeuri2oblc83i49d', 1775335365, 'modx.user.contextTokens|a:0:{}'),
('o8r0tqpshr09jrq8uhg3u3g1gv', 1775189142, 'modx.user.contextTokens|a:0:{}'),
('o8upauf15he6hkjhd98hnq23qq', 1777047439, 'modx.user.contextTokens|a:0:{}'),
('o99u040umsq36vihn742qn6m5l', 1776419011, 'modx.user.contextTokens|a:0:{}'),
('o9mdu2sau9u2v8v4hghbf427bi', 1774223024, 'modx.user.contextTokens|a:0:{}'),
('o9nivmtoe1ldhgq9h56hpih6od', 1775398986, 'modx.user.contextTokens|a:0:{}'),
('oafqf0lpk43lhvrc5dr8m2tgr1', 1776496312, 'modx.user.contextTokens|a:0:{}'),
('oai9360gm92hojseojlp0ft7n1', 1774417637, 'modx.user.contextTokens|a:0:{}'),
('oal52jar0qf428gmuufgskl998', 1774255147, 'modx.user.contextTokens|a:0:{}'),
('oal91tvbhc784c4cvjlej23cn0', 1776320716, 'modx.user.contextTokens|a:0:{}'),
('oar9ujg9ek2b9noddgl5u8uslh', 1776492052, 'modx.user.contextTokens|a:0:{}'),
('ob42sucbkumi670gaoaa5qd9g5', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('obpsuu5hrjo393u5f5kvst540n', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('obu18dfm4bbtbhmvn6fleugkmb', 1774734223, 'modx.user.contextTokens|a:0:{}'),
('oc36hunef82t9s0hbges5l89ti', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('ocfsjb8911j7one28hglvkk4mv', 1776313476, 'modx.user.contextTokens|a:0:{}'),
('ocli5invc9if0ovu4ddm4pq3v0', 1774301562, 'modx.user.contextTokens|a:0:{}'),
('odg3n5c3o25sp80bl5n81lg7kq', 1777362571, 'modx.user.contextTokens|a:0:{}'),
('oducbche1j1a5jrf8nqokj20in', 1774417638, 'modx.user.contextTokens|a:0:{}'),
('oe1uacafhnq8un7gg05k3h9opd', 1775217970, 'modx.user.contextTokens|a:0:{}'),
('oe8idef5o7fsqsjg8dsat2jocv', 1776752109, 'modx.user.contextTokens|a:0:{}'),
('oess3e00cqu4gqjag7mqqvl6v8', 1774620162, 'modx.user.contextTokens|a:0:{}'),
('oet0fp3r4p2ldobrhdrr8m4oo7', 1776058696, 'modx.user.contextTokens|a:0:{}'),
('ofdnfra1gprsm6b88ac7g66oqk', 1777067454, 'modx.user.contextTokens|a:0:{}'),
('ofdslj95ee08826g18qhp311mg', 1777241816, 'modx.user.contextTokens|a:0:{}'),
('offe9s5j9mq8pfie5j3p3vjkkt', 1775766820, 'modx.user.contextTokens|a:0:{}'),
('og4h3fg6jiet7e97roqf0590u3', 1774857718, 'modx.user.contextTokens|a:0:{}'),
('ogf8iaf23ekkrsfgn23j153fe5', 1775211311, 'modx.user.contextTokens|a:0:{}'),
('ogn28hld6pcvv0olucnrk2gjcg', 1775967976, 'modx.user.contextTokens|a:0:{}'),
('ogr4ev1r9ibf3vugv4talg6ud5', 1774605404, 'modx.user.contextTokens|a:0:{}'),
('ogv94ulv833m190uvjdcokdpuk', 1775218861, 'modx.user.contextTokens|a:0:{}'),
('ogvep86fqm8bg3laj19sgkktnm', 1774867359, 'modx.user.contextTokens|a:0:{}'),
('oh32n5efv9sekf2l3o684bip75', 1776533525, 'modx.user.contextTokens|a:0:{}'),
('ohu07pc39hc6r5munt6rq5kh0s', 1774406029, 'modx.user.contextTokens|a:0:{}'),
('oisfgfiatnpupgqatvidqp9o1u', 1774587070, 'modx.user.contextTokens|a:0:{}'),
('oisp3erp60em414ica9sei2igg', 1774762845, 'modx.user.contextTokens|a:0:{}'),
('oj7d7ltnu3hbg0chlq593nv88u', 1774884493, 'modx.user.contextTokens|a:0:{}'),
('ojkadhms6sgfrk8cfjpj4no4g2', 1777011280, 'modx.user.contextTokens|a:0:{}'),
('ojkep8l9kjrbbu70737vbgpl20', 1774000105, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;'),
('ojmadircfmmq3j5u6k9058inkq', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('ojorndi5eoi502hlsp56bqkrmp', 1773849965, 'modx.user.contextTokens|a:0:{}'),
('okpqsgi5fbc8bq3qeqtg5e2l7m', 1775375571, 'modx.user.contextTokens|a:0:{}'),
('olatvc2nl1858h7s889t9s0qsc', 1776755130, 'modx.user.contextTokens|a:0:{}'),
('om4urafn9ujcpeq10pu56h1at3', 1773924133, 'modx.user.contextTokens|a:0:{}'),
('omg9cpd2qedgmlk1n4iosjh0ks', 1773902333, 'modx.user.contextTokens|a:0:{}'),
('on59num2qt8uk23rke2it9eoi6', 1776969785, 'modx.user.contextTokens|a:0:{}'),
('on7in9cen86f55jt187o87a83p', 1777102013, 'modx.user.contextTokens|a:0:{}'),
('onegj23sqemhbjtafpujcql147', 1775290166, 'modx.user.contextTokens|a:0:{}'),
('opab35he4mltr3b4kfl5dm2qfi', 1775718882, 'modx.user.contextTokens|a:0:{}'),
('opb1466t7cqc6shugkobsahf18', 1774124738, 'modx.user.contextTokens|a:0:{}'),
('opekc7o8h3g6eh4k8k5uvh0e2n', 1775335414, 'modx.user.contextTokens|a:0:{}'),
('ops6ij0umitd4udau5ng6mpquv', 1775535357, 'modx.user.contextTokens|a:0:{}'),
('oq0ih2emfjq2gkmc9o0vobkv0u', 1775909895, 'modx.user.contextTokens|a:0:{}'),
('oq8smirtvqp1vrv020u1fovckh', 1776537431, 'modx.user.contextTokens|a:0:{}'),
('oqt5m8dg48flmo13g1q9uvi3k5', 1775428867, 'modx.user.contextTokens|a:0:{}'),
('or0sj97r5bous8g88am7094kcp', 1776913326, 'modx.user.contextTokens|a:0:{}'),
('or19t1qptdmeesvrrnmase97fa', 1775428879, 'modx.user.contextTokens|a:0:{}'),
('or1o732ssovc8cfeaqing7jv9r', 1774247639, 'modx.user.contextTokens|a:0:{}'),
('or7dai4m6501bng1uod7prk5gt', 1774635187, 'modx.user.contextTokens|a:0:{}'),
('orlk8sgkeepihcrmopo314ndk7', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('os4sungetbbrnv06nr6d85tjjc', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('os5mgiun36i2nkhsroqfdinaeb', 1777101296, 'modx.user.contextTokens|a:0:{}'),
('oslohkchuj9a782r3ue1m4pi4s', 1776106640, 'modx.user.contextTokens|a:0:{}'),
('otgonvlf4s6sfbn475f694vpfj', 1774613249, 'modx.user.contextTokens|a:0:{}'),
('otr4tt9k73t27b001n860dccsd', 1774362234, 'modx.user.contextTokens|a:0:{}'),
('ou5jbh0to2krdukvqg8utq1n8c', 1777001239, 'modx.user.contextTokens|a:0:{}'),
('ougp58uvhj3b8kc4b8j3aqi2ru', 1775128694, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:20:\"Aluthgama, Sri Lanka\";s:4:\"date\";s:16:\"2026-04-30T16:44\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('oujas89hb2i42em0ukkfpl2en8', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('ouom48kfmvaqaqrc38mmd2naeh', 1775628767, 'modx.user.contextTokens|a:0:{}'),
('ov75ctg8bif6l1dmv6kkfoqc17', 1774801359, 'modx.user.contextTokens|a:0:{}'),
('ovavep7evf3dqeakplfhoqt6i3', 1773908161, 'modx.user.contextTokens|a:0:{}'),
('ovrcb8o80tkq6kfr1a9ogkeg5b', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('p0f8j10ehh9d7lbfmjgb42fev9', 1774068664, 'modx.user.contextTokens|a:0:{}'),
('p17mkr9fpmu8kqvlf30msbms46', 1773978473, 'modx.user.contextTokens|a:0:{}'),
('p19r25nmd4j6nc6kcdi70dn7t7', 1774537331, 'modx.user.contextTokens|a:0:{}'),
('p1dnddack7l8aq8tu81af7fgnv', 1777072560, 'modx.user.contextTokens|a:0:{}'),
('p1mr7t4utgamgjdaht4gfaoqbf', 1774660013, 'modx.user.contextTokens|a:0:{}'),
('p20lq4h3od6iniro13ihqcbvqf', 1775772675, 'modx.user.contextTokens|a:0:{}'),
('p254v29bis2j4f3fc17oc1vn7g', 1777105292, 'modx.user.contextTokens|a:0:{}'),
('p29o34inrbfoj18csrjj7jpmno', 1777001441, 'modx.user.contextTokens|a:0:{}'),
('p2e2cq0eopf8j86mikr7mhf247', 1776191629, 'modx.user.contextTokens|a:0:{}'),
('p2smdq9qck9dnu5e5gkf4cuvdj', 1775481469, 'modx.user.contextTokens|a:0:{}'),
('p3bvblsq50kh7on4oei9q46826', 1776837462, 'modx.user.contextTokens|a:0:{}'),
('p3dv7s3obq8n88t1q7j0irkq3u', 1777281730, 'modx.user.contextTokens|a:0:{}'),
('p3lcodap4p79dejr05sr6p5o8h', 1774023983, 'modx.user.contextTokens|a:0:{}'),
('p3p6riu4cmdf0stmu95clp3glt', 1774351156, 'modx.user.contextTokens|a:0:{}'),
('p3tvs3jrf8i1caojofjjugl146', 1776390321, 'modx.user.contextTokens|a:0:{}'),
('p4cgsmu71t310ctirqec5p9b8s', 1777043845, 'modx.user.contextTokens|a:0:{}'),
('p4kgoq87fluq3lmb31qfkfn7l9', 1775880181, 'modx.user.contextTokens|a:0:{}'),
('p4ltb410fkfbqh4tg1v2dhuhaj', 1776796044, 'modx.user.contextTokens|a:0:{}'),
('p4luk4q2533ufurnl517ornld1', 1777134159, 'modx.user.contextTokens|a:0:{}'),
('p5b33hn9qa8h9f2jvpiv5soatt', 1776032466, 'modx.user.contextTokens|a:0:{}'),
('p5t7lteg8hi13rl3ei4tlpvl58', 1777388415, 'modx.user.contextTokens|a:0:{}'),
('p67j3ernbvutg5lu44s0mtj86t', 1776497744, 'modx.user.contextTokens|a:0:{}'),
('p69v7otvgn947e0itm8oojqj4d', 1776952999, 'modx.user.contextTokens|a:0:{}'),
('p804c7ceovhpg5m13libgb0gd0', 1775256826, 'modx.user.contextTokens|a:0:{}'),
('p84f2vutdcnun9hjf7p6dpd5ha', 1774131360, 'modx.user.contextTokens|a:0:{}'),
('p85nod2919jihg5rjfboe26h39', 1775553425, 'modx.user.contextTokens|a:0:{}'),
('p8amqfb1bro1mn9ji9fs02ac1c', 1776494357, 'modx.user.contextTokens|a:0:{}'),
('p8gaqkn3tje2gf5012nqqebrm1', 1776728086, 'modx.user.contextTokens|a:0:{}'),
('p8nau21tad2k6vs3uvbat8htad', 1775295764, 'modx.user.contextTokens|a:0:{}'),
('p8tam83h1t1iveo4ap34a05njg', 1775749708, 'modx.user.contextTokens|a:0:{}'),
('p9jkk2kfmh1iv1or6dst3kcp8l', 1774815234, 'modx.user.contextTokens|a:0:{}'),
('pa1pc1kjlapbdqoc9fo0vep3ct', 1776360872, 'modx.user.contextTokens|a:0:{}'),
('pa4f96v88h8ktrnjb7m4t0d8ig', 1776626191, 'modx.user.contextTokens|a:0:{}'),
('pbppp7o6uu4o2o7e2bfsuv49mv', 1775794694, 'modx.user.contextTokens|a:0:{}'),
('pc59he06hqggg8hs61b3a99qo2', 1777259006, 'modx.user.contextTokens|a:0:{}'),
('pc6cquh85jj6j1au4ehdvcigur', 1776106639, 'modx.user.contextTokens|a:0:{}'),
('pc706cjdd2su25vu6hto3hij5g', 1774219634, 'modx.user.contextTokens|a:0:{}'),
('pcafugpb2q4ehf6ukdfn0aget6', 1774185241, 'modx.user.contextTokens|a:0:{}'),
('pch0s4783n59o5refuepd7j42c', 1775175327, 'modx.user.contextTokens|a:0:{}'),
('pck94lflnr3a81i776kfs9t6ot', 1774593309, 'modx.user.contextTokens|a:0:{}'),
('pdgkj3g0jp0n94h8q73k51nopn', 1776735933, 'modx.user.contextTokens|a:0:{}'),
('pds1kqolh1f5alc5eli6am7qv6', 1774196052, 'modx.user.contextTokens|a:0:{}'),
('pe7bscleuu8t1huo6nq7vmjkl0', 1774227731, 'modx.user.contextTokens|a:0:{}'),
('pfc4bnhub0fe5u8kuh46oimru1', 1776646489, 'modx.user.contextTokens|a:0:{}'),
('pg2vh5nc86nlqjodnvfma46qhu', 1774090437, 'modx.user.contextTokens|a:0:{}'),
('pgb2q8prpfhdn3a97f31rce4sv', 1775000019, 'modx.user.contextTokens|a:0:{}'),
('pgohg3ftgopubifhb99paqrmel', 1774477124, 'modx.user.contextTokens|a:0:{}'),
('ph5qannvseppgcrt2ejig5oeef', 1776764948, 'modx.user.contextTokens|a:0:{}'),
('phh5aodn4bjm5dbhko6rp45p37', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('phkku8sbq19rtrvcouaq72o90l', 1776846783, 'modx.user.contextTokens|a:0:{}'),
('phmtev601or14gh7kj57fqe0k7', 1775043299, 'modx.user.contextTokens|a:0:{}'),
('pi6m76fv1eo6lb2kkrrme3p0do', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('piajciv75d011h5bq275t23ebv', 1776407466, 'modx.user.contextTokens|a:0:{}'),
('pii9v0fk4kv56drdt8onap48b7', 1775549367, 'modx.user.contextTokens|a:0:{}'),
('pj44trivdtc6qdikigeqkkb7vn', 1775438363, 'modx.user.contextTokens|a:0:{}'),
('pjc3oclmgv47nvgl6fnmr2575i', 1777026880, 'modx.user.contextTokens|a:0:{}'),
('pjt58gvbrbmgl263757ke7ukhu', 1776542428, 'modx.user.contextTokens|a:0:{}'),
('pk0q1b4jgncoiapa2psvdqlh75', 1776288891, 'modx.user.contextTokens|a:0:{}'),
('pkedu5hrk9pai9691s0pc17ssi', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('pkjn514qfpgq73vghsktd9a3h1', 1775368021, 'modx.user.contextTokens|a:0:{}'),
('pkl5u92bbqujnjhugrtnprqf8v', 1775059977, 'modx.user.contextTokens|a:0:{}'),
('pklpsh56hntn0v5ipp6q6h6uq8', 1774460449, 'modx.user.contextTokens|a:0:{}'),
('pkujk63rt2juraaf91fqomq3dh', 1775451249, 'modx.user.contextTokens|a:0:{}'),
('pl6pc50qi3stm363qau3emsn2o', 1774190967, 'modx.user.contextTokens|a:0:{}'),
('pladonaqpqgo29k4np95m47po6', 1774845281, 'modx.user.contextTokens|a:0:{}'),
('plaq32878gvrgubppboub4bdin', 1777135282, 'modx.user.contextTokens|a:0:{}'),
('pld93u2vbm4qq565titm1asruf', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('pljlhrjktp1rk50bm7160qnpth', 1773976386, 'modx.user.contextTokens|a:0:{}'),
('plp16gokb4gk6nlq7v2coip37k', 1777407604, 'modx.user.contextTokens|a:0:{}'),
('plspngghutl168su68tl8acbkv', 1775306593, 'modx.user.contextTokens|a:0:{}'),
('plvh86lrsui82ckavdsqdb55dr', 1776317590, 'modx.user.contextTokens|a:0:{}'),
('pmc54un9cavj2c63oiv9nr5lr2', 1776493989, 'modx.user.contextTokens|a:0:{}'),
('pnl8gjppbi5kr1rgj4pj0jid7j', 1774457686, 'modx.user.contextTokens|a:0:{}'),
('po25u611pru0b35t7els2cudkc', 1777001442, 'modx.user.contextTokens|a:0:{}'),
('pojhskpmepv3o7fvtnltu264b7', 1777057964, 'modx.user.contextTokens|a:0:{}'),
('pq2qj4bq684m291r64sg96l6nb', 1777294147, 'modx.user.contextTokens|a:0:{}'),
('pqgs4e3liu7865s7l7e396akqd', 1774094568, 'modx.user.contextTokens|a:0:{}'),
('pqs1fcndjttli87l0nr7lijvdp', 1777090902, 'modx.user.contextTokens|a:0:{}'),
('pr7po6cbrrp7akm480ss4a3vgd', 1774251895, 'modx.user.contextTokens|a:0:{}'),
('prsqqk5nrepu9hq875kt8nrtsb', 1776640682, 'modx.user.contextTokens|a:0:{}'),
('prv6c6ku27dqv3e77ebfj9aqld', 1774023377, 'modx.user.contextTokens|a:0:{}'),
('pspmc5efhkk8rdaseu05a0ratn', 1777135151, 'modx.user.contextTokens|a:0:{}'),
('pt2vcrjn97mjj2s05r5gcgi8vk', 1775398988, 'modx.user.contextTokens|a:0:{}'),
('ptkdatddsihga5sfo2lpm9act6', 1775893434, 'modx.user.contextTokens|a:0:{}'),
('ptp6ogshr16ninh16oade6kdb5', 1776313056, 'modx.user.contextTokens|a:0:{}'),
('pu6lj9slii6as4s3fc6vng6lbl', 1773972863, 'modx.user.contextTokens|a:0:{}'),
('pum75atffeub2udm9u7jn1gjp0', 1775692653, 'modx.user.contextTokens|a:0:{}'),
('pusk7sfv7g7jnufjl24sn7vfda', 1774658998, 'modx.user.contextTokens|a:0:{}'),
('pvirev8d0qeta24gu4vhvng28k', 1774156368, 'modx.user.contextTokens|a:0:{}'),
('q020t0k2iqfn04b7f2vutir5ta', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('q0chfe5c28pfuolo5crre68kbu', 1775946230, 'modx.user.contextTokens|a:0:{}'),
('q0vqf1f8lflq64qupe4060i3pa', 1775596249, 'modx.user.contextTokens|a:0:{}'),
('q11olar6kltgf3qtok5ju6dgsp', 1776866772, 'modx.user.contextTokens|a:0:{}'),
('q13hqkb3om9jui5bt34vq50ptv', 1775380956, 'modx.user.contextTokens|a:0:{}'),
('q1b3d70qo8co2641q0jhvv3375', 1774426441, 'modx.user.contextTokens|a:0:{}'),
('q1f3kll5kbar8prsm3551sg64a', 1774074828, 'modx.user.contextTokens|a:0:{}'),
('q1jfd9u7628a78g5revo7u24n5', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('q1onj1141rnant7jt1retu1o1o', 1775780673, 'modx.user.contextTokens|a:0:{}'),
('q25c7d39mn9ot37vc97q96n0q2', 1774981701, 'modx.user.contextTokens|a:0:{}'),
('q27ve7rvk325k0smpc3c63bn64', 1777428119, 'modx.user.contextTokens|a:0:{}'),
('q39rf7vg7fqmdh9o6r9v053lfh', 1775999443, 'modx.user.contextTokens|a:0:{}'),
('q3nv32qc8egqe2mh13vdcte17a', 1775497738, 'modx.user.contextTokens|a:0:{}'),
('q40qa7jeosh0to37brgtp7oafm', 1775482886, 'modx.user.contextTokens|a:0:{}'),
('q45rq32eps6quq2t7d2u629jru', 1774090292, 'modx.user.contextTokens|a:0:{}'),
('q49dp46revr24bf9aiedifi41b', 1774188144, 'modx.user.contextTokens|a:0:{}'),
('q579rvfdcf86jun8kr838dkmk6', 1777355175, 'modx.user.contextTokens|a:0:{}'),
('q5dun39afg20ik1d6fhiqa53fh', 1774309727, 'modx.user.contextTokens|a:0:{}'),
('q5ghccfb7l3mgq3jbf62p7db0h', 1773931395, 'modx.user.contextTokens|a:0:{}'),
('q5i5s34fmlv6kblb5aajn5kb56', 1775293878, 'modx.user.contextTokens|a:0:{}'),
('q6apuhf7hn017orgfs1dron1nh', 1774622349, 'modx.user.contextTokens|a:0:{}'),
('q6iia5staefki3nn7gcnh413qq', 1775525351, 'modx.user.contextTokens|a:0:{}'),
('q8gtgnssnoq8c314863n4tmq05', 1774096422, 'modx.user.contextTokens|a:0:{}'),
('q97s8dbddp7pdc92dcl6222nqn', 1776944293, 'modx.user.contextTokens|a:0:{}'),
('q990ka9jl8cn83u6k15cmdvhms', 1777220884, 'modx.user.contextTokens|a:0:{}'),
('qae1q5ip7rtrauif8tc8n71niv', 1775312194, 'modx.user.contextTokens|a:0:{}'),
('qai4hauv9nij5r8ieia6r7dth4', 1775365798, 'modx.user.contextTokens|a:0:{}'),
('qakoe8ku3a5ifgg4qna11gaaa7', 1775543332, 'modx.user.contextTokens|a:0:{}'),
('qarvbt30n5l7klm2e041019r5s', 1774016780, 'modx.user.contextTokens|a:0:{}'),
('qb4o3gerfd3m8nfigd47g8abk0', 1774195856, 'modx.user.contextTokens|a:0:{}'),
('qbe3v04abc7b636n8915f6l68o', 1775246135, 'modx.user.contextTokens|a:0:{}'),
('qbld4i70negsk190pjs4h9eb4t', 1776867640, 'modx.user.contextTokens|a:0:{}'),
('qbvo5lvnf2n35g2fik26t937gj', 1777308713, 'modx.user.contextTokens|a:0:{}'),
('qcssdmnqjnhir3pppdo1sb23iq', 1777085333, 'modx.user.contextTokens|a:0:{}'),
('qdt3crkdl3dngapq90tev2grk6', 1775819604, 'modx.user.contextTokens|a:0:{}'),
('qe6lmir01ain8l3iv19d4plleh', 1774410735, 'modx.user.contextTokens|a:0:{}'),
('qe9cfa60ad17iultl5ijnn340g', 1775531750, 'modx.user.contextTokens|a:0:{}'),
('qep6vlgmcsunk4dhs43gslj8n6', 1776999433, 'modx.user.contextTokens|a:0:{}'),
('qesd7kcbm8qorana3fr6adghh2', 1776051130, 'modx.user.contextTokens|a:0:{}'),
('qfhcvg4nc9o85ajlutdpqqs60g', 1776607847, 'modx.user.contextTokens|a:0:{}'),
('qg3rgqb8njijomgtqes5k5vkk4', 1775335399, 'modx.user.contextTokens|a:0:{}'),
('qgom2b8iqum29ep16bqr7nf3g1', 1776745728, 'modx.user.contextTokens|a:0:{}'),
('qgtj25n1guvu7qqog94norga4o', 1774480372, 'modx.user.contextTokens|a:0:{}'),
('qgup7r2v0tho4tpplnoh3ckv7f', 1777420532, 'modx.user.contextTokens|a:0:{}'),
('qh2enuti9636peuclmojqo5dts', 1774156411, 'modx.user.contextTokens|a:0:{}'),
('qiqch769u052stb0qfalbloif2', 1776600019, 'modx.user.contextTokens|a:0:{}'),
('qj0gr7c2k5h81h5jog8bs4lisp', 1774561538, 'modx.user.contextTokens|a:0:{}'),
('qjs5j5q3fm2mbh94434okas6l7', 1777443336, 'modx.user.contextTokens|a:0:{}'),
('qk1iim5aj2ljk74uv0ivlrknul', 1775450622, 'modx.user.contextTokens|a:0:{}'),
('qke5t3cj01kdte3kbvv6e6vde6', 1775859489, 'modx.user.contextTokens|a:0:{}'),
('qkqmjm2lgdbt9s8healrs5do23', 1774230374, 'modx.user.contextTokens|a:0:{}'),
('qlo33e516886is53g41sffe374', 1776649670, 'modx.user.contextTokens|a:0:{}'),
('qls4buon37f9edogu1aqvnmk8h', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('qm4oirqrvce9of7n0mqk2q31h3', 1777013402, 'modx.user.contextTokens|a:0:{}'),
('qmmhr9g8r9oebsec9atc1t8ov9', 1773931430, 'modx.user.contextTokens|a:0:{}'),
('qmu5g5gqvgiih71at1h78latfk', 1777032371, 'modx.user.contextTokens|a:0:{}'),
('qn44hd5a5bkhpf1k6scj9j1lh6', 1776890559, 'modx.user.contextTokens|a:0:{}'),
('qn5fqliafsr0tftous6er7e8k2', 1775335366, 'modx.user.contextTokens|a:0:{}'),
('qnlidrup5qj0nkcmsuqccd45lb', 1776900228, 'modx.user.contextTokens|a:0:{}'),
('qnq9ism3jdm734f4mvo22tm2q5', 1775061308, 'modx.user.contextTokens|a:0:{}'),
('qnrhr3pteq9mdarn0p3ktu6gn6', 1774369302, 'modx.user.contextTokens|a:0:{}'),
('qns4kcv48edmrfrf2rfvfslbgh', 1776589580, 'modx.user.contextTokens|a:0:{}'),
('qoe7fonn29erm3omnqavepg6fq', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('qorji27ihieljq9fd4gk603ojm', 1774822262, 'modx.user.contextTokens|a:0:{}'),
('qp9f06did9dam5ta64glh0t0f5', 1774347782, 'modx.user.contextTokens|a:0:{}'),
('qpmhs60506n06rip1uidtcbjss', 1775802714, 'modx.user.contextTokens|a:0:{}'),
('qqbjpqb2fp3uo70mmogbajmlaq', 1775149450, 'modx.user.contextTokens|a:0:{}'),
('qqo1ndv78g3mg16tn9tqnqjjas', 1774587076, 'modx.user.contextTokens|a:0:{}'),
('qqs4mdqjlvlivo9i10d5h15uf3', 1777162960, 'modx.user.contextTokens|a:0:{}'),
('qr4isjsda5u350kgcd58pduc9s', 1775950675, 'modx.user.contextTokens|a:0:{}'),
('qr92l6h3e6kfb6v41li94vpl13', 1774106946, 'modx.user.contextTokens|a:0:{}'),
('qrlobtc6cda8sd631pqvp73klt', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('qs2j4090ajnokvlq937b36lrvj', 1777215652, 'modx.user.contextTokens|a:0:{}'),
('qs7jnes2jjttnvlloaj9ggmlso', 1774014210, 'modx.user.contextTokens|a:0:{}'),
('qthrahv4srsafdpeb4ur3cfu2d', 1775003040, 'modx.user.contextTokens|a:0:{}'),
('qtvs3uebq1u9h32r7uma6nr05q', 1776859007, 'modx.user.contextTokens|a:0:{}'),
('qu4fjkvpemajogf0419ku0j6hh', 1774865946, 'modx.user.contextTokens|a:0:{}'),
('qua5431oi6db1ic9at9t1dvpb4', 1776278320, 'modx.user.contextTokens|a:0:{}'),
('quon20vs543at6ih7c4fbh2b3e', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('quq9fhklcfp1jbmmjr3lbllsrd', 1773870894, 'modx.user.contextTokens|a:0:{}'),
('qvno6hmgs7a7us5m6tnd9qvo3l', 1775910787, 'modx.user.contextTokens|a:0:{}'),
('r02n6urg3j8c0h6q0pk4u4vkes', 1774889218, 'modx.user.contextTokens|a:0:{}searchData|a:7:{s:6:\"pickup\";s:154:\"Colombo Bandaranaike International Airport (CMB), Airport and Aviation Services (Sri Lanka) (Private) Limited, Canada Friendship Rd, Katunayake, Sri Lanka\";s:7:\"dropoff\";s:17:\"Malabe, Sri Lanka\";s:4:\"date\";s:16:\"2026-03-30T22:40\";s:12:\"returnPickup\";s:0:\"\";s:13:\"returnDropoff\";s:0:\"\";s:10:\"returnDate\";s:0:\"\";s:11:\"isRoundtrip\";i:0;}'),
('r04epc299bu282c8oh2h7i7538', 1775979993, 'modx.user.contextTokens|a:0:{}'),
('r0qktdvvjcgv2s4me7vlk9d0pt', 1776595103, 'modx.user.contextTokens|a:0:{}'),
('r10ks9n5arr7theen3sdtklsk4', 1776305354, 'modx.user.contextTokens|a:0:{}'),
('r11loqh8mel9bncpp6406sdk6p', 1776893953, 'modx.user.contextTokens|a:0:{}'),
('r1cvehn6c99iqe6ee7m87c5u9t', 1774951323, 'modx.user.contextTokens|a:0:{}'),
('r1h48cj4kt06gffdobgpal6etb', 1775708473, 'modx.user.contextTokens|a:0:{}'),
('r1hpoqbcb4j238e5m0qf8k6nhs', 1775572563, 'modx.user.contextTokens|a:0:{}'),
('r24qqltd60ta3ud5ois8ecrn78', 1775643849, 'modx.user.contextTokens|a:0:{}'),
('r34s4dd139r4gmdot1r2gd6cej', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('r38usdajbimgfs0a9v1n9q940i', 1774763290, 'modx.user.contextTokens|a:0:{}'),
('r3hg8uuic91o9i3npo5onf70sr', 1776579430, 'modx.user.contextTokens|a:0:{}'),
('r454gt2dqdgaf7ve5h4bif4hmi', 1775329408, 'modx.user.contextTokens|a:0:{}'),
('r45eqamt1fm2v0lmkn21bu135j', 1775572561, 'modx.user.contextTokens|a:0:{}'),
('r4ha3cq0r1b0cqo77lb92eeeke', 1776005465, 'modx.user.contextTokens|a:0:{}'),
('r4lp8uk23gi60k8pbvp4ice0kk', 1777037731, 'modx.user.contextTokens|a:0:{}'),
('r50v7bkbab304c8ufdcp0a0hmg', 1776496313, 'modx.user.contextTokens|a:0:{}'),
('r5fid820j8sqpag36gpgfuh8a0', 1775427152, 'modx.user.contextTokens|a:0:{}'),
('r5isru60ic3fm59kr35ljtedcl', 1773851169, 'modx.user.contextTokens|a:0:{}'),
('r5k3u3tvbjff82h3730be2s97i', 1774224544, 'modx.user.contextTokens|a:0:{}'),
('r6vjnl4gi06j7plnh6svg6hepj', 1774156126, 'modx.user.contextTokens|a:0:{}'),
('r70dub28k663d8algpjbmi38uc', 1775882009, 'modx.user.contextTokens|a:0:{}'),
('r76cvb3ggmiebl31egcs8loidf', 1776375331, 'modx.user.contextTokens|a:0:{}'),
('r7t3scp4qjmlb3e982be0b02qq', 1774545106, 'modx.user.contextTokens|a:0:{}'),
('r8c5jhogssmgqnqvvjj1t6tt8d', 1775385972, 'modx.user.contextTokens|a:0:{}'),
('r8c8eem94emgttd6of95g12sb2', 1777260387, 'modx.user.contextTokens|a:0:{}'),
('r90ghs7niao3k1i7qcc6un6m58', 1774590045, 'modx.user.contextTokens|a:0:{}'),
('r91np91dqm5mqbj9gjli9e32jj', 1776718334, 'modx.user.contextTokens|a:0:{}'),
('r96tm2a31hvs5scuq2o922nequ', 1774620164, 'modx.user.contextTokens|a:0:{}'),
('r96vf3fn8c78c6n7isurl0eusr', 1774195017, 'modx.user.contextTokens|a:0:{}'),
('r9j6tvahkhodv4ol5p0q7rbrlg', 1776825655, 'modx.user.contextTokens|a:0:{}'),
('r9lhh8m2h4tdufe6o7onkqtvjr', 1775222256, 'modx.user.contextTokens|a:0:{}'),
('r9qlqv38oo65msj6g9sbh99l84', 1777067454, 'modx.user.contextTokens|a:0:{}'),
('rapgmm5g8setbghfhlpu7hqb1i', 1776984154, 'modx.user.contextTokens|a:0:{}'),
('rbau7093qvo0dsi3upqjc439fh', 1775338967, 'modx.user.contextTokens|a:0:{}'),
('rbdgi5jf5t6ri6e0hb5cbtve9v', 1776021499, 'modx.user.contextTokens|a:0:{}'),
('rbf3ejbti5l05dovnf61nfonfe', 1777309232, 'modx.user.contextTokens|a:0:{}'),
('rbh77r8aqegp0qlsasr59635f0', 1775373332, 'modx.user.contextTokens|a:0:{}'),
('rbj41cbutvk74lrglps8t9oi7h', 1777352748, 'modx.user.contextTokens|a:0:{}'),
('rbq11b4i14f16pv6k042i5a9tj', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('rbr01fgahl6sqrpmsd482347jc', 1774210900, 'modx.user.contextTokens|a:0:{}'),
('rbvifocoe5r2ih4ejlko8f6fp4', 1775001884, 'modx.user.contextTokens|a:0:{}'),
('rbvr2a1ico3s2db2il1043pnaj', 1775858288, 'modx.user.contextTokens|a:0:{}'),
('rd4efnt20lp1bbtu9vt02ei7sn', 1774498835, 'modx.user.contextTokens|a:0:{}'),
('rdjv6028lom18aoni3n8um6hdi', 1777154680, 'modx.user.contextTokens|a:0:{}'),
('rdqh03kndisj4uv9952c84152r', 1774514593, 'modx.user.contextTokens|a:0:{}'),
('re24kpd7v8p83rhsa07usrgbi1', 1776961061, 'modx.user.contextTokens|a:0:{}'),
('reidkled06kqnqos5rh1u9e6el', 1774836101, 'modx.user.contextTokens|a:0:{}'),
('reog0kqloe5sqd2mua6i90hkuf', 1775077809, 'modx.user.contextTokens|a:0:{}'),
('rf6e55lomibmm8hebf3te7olh5', 1777458677, 'modx.user.contextTokens|a:0:{}'),
('rfg40739rv8ur4n5lq6q0b32n3', 1776207868, 'modx.user.contextTokens|a:0:{}'),
('rg3s3984j0374e1cakb121mi03', 1776481263, 'modx.user.contextTokens|a:0:{}'),
('rg4t11p8ad4nco8fofhlom1um8', 1774822578, 'modx.user.contextTokens|a:0:{}'),
('rg5tmubbvhd1skrv551mu09muv', 1775767910, 'modx.user.contextTokens|a:0:{}'),
('rgrd86oj6s1tggailo2rhlqf49', 1773986197, 'modx.user.contextTokens|a:0:{}'),
('rh2la7nm73bvgj943lqb1er2js', 1775446525, 'modx.user.contextTokens|a:0:{}'),
('rhe0vvoeischhf7g2j9amtg66q', 1774801360, 'modx.user.contextTokens|a:0:{}'),
('rhg5b1upbaa4sj68n8ffscnu6n', 1775967448, 'modx.user.contextTokens|a:0:{}'),
('rhp3165a34ds1kkmp0ivevjvbb', 1774513864, 'modx.user.contextTokens|a:0:{}'),
('rhqat5ltr8idj3jfhnl83umar5', 1775359619, 'modx.user.contextTokens|a:0:{}'),
('rhrq81leuklc1fuj9cbeeadm7b', 1777091353, 'modx.user.contextTokens|a:0:{}'),
('rj3vlahigc1t4knv4be3bc8oti', 1774602495, 'modx.user.contextTokens|a:0:{}'),
('rj4qn02m0abfe08dfjei5u29j5', 1774307412, 'modx.user.contextTokens|a:0:{}'),
('rjgb4t97g3krmvpi3evbriguj8', 1774827855, 'modx.user.contextTokens|a:0:{}'),
('rjkb258ofr95m57f4c9nahehm0', 1776570290, 'modx.user.contextTokens|a:0:{}'),
('rjn3erefs55cour291v1emci55', 1775313132, 'modx.user.contextTokens|a:0:{}'),
('rjnu64nrncpkoh5mmoeu09hlh3', 1777393194, 'modx.user.contextTokens|a:0:{}'),
('rk2f33q7p84cjeafoes838f5rv', 1775642035, 'modx.user.contextTokens|a:0:{}'),
('rk7art8kghm3i5sv7deq81f5mu', 1776453379, 'modx.user.contextTokens|a:0:{}'),
('rkoomn9sdtfph1kiug19g2cvi6', 1776532229, 'modx.user.contextTokens|a:0:{}'),
('rkp16r25j6h7a4rgkav6gcnph4', 1774642863, 'modx.user.contextTokens|a:0:{}'),
('rl9g8jol1sblrbruu2aa1sdu08', 1774206417, 'modx.user.contextTokens|a:0:{}'),
('rlc5eb51l4mf0revff542ltcc6', 1775427878, 'modx.user.contextTokens|a:0:{}'),
('rlmlcvvl0lrp89gadi8t4nhh8l', 1775594995, 'modx.user.contextTokens|a:0:{}'),
('rls489u440b8eje21osobggmt3', 1775768775, 'modx.user.contextTokens|a:0:{}'),
('rm3sjsu0aaolme2t82giupg1fr', 1774090656, 'modx.user.contextTokens|a:0:{}'),
('rme2vvrpik3lm9ac07pj00smbs', 1774498886, 'modx.user.contextTokens|a:0:{}'),
('rmeh7kv8t4sdpnj7ua7o3pts35', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('rnm59s71phlab95hg1h9mva0oq', 1775576848, 'modx.user.contextTokens|a:0:{}'),
('rnmnhbsiga9879011vnookovi4', 1777123382, 'modx.user.contextTokens|a:0:{}'),
('rnsnohss1q9qe1c5kt3fdmv2lb', 1774248388, 'modx.user.contextTokens|a:0:{}'),
('rolvhijf6ik7gq92m2ig6qcjvm', 1774546256, 'modx.user.contextTokens|a:0:{}'),
('ron1tqr6heinql4m850527uri5', 1774290083, 'modx.user.contextTokens|a:0:{}'),
('rork7jeunbfuc1me14iud2pk04', 1776051212, 'modx.user.contextTokens|a:0:{}'),
('rp5e8aj3hoj24kparocn90apr6', 1774076489, 'modx.user.contextTokens|a:0:{}'),
('rpa2odvok2umsuvudr083ufp4d', 1774725875, 'modx.user.contextTokens|a:0:{}'),
('rpcv0gcfuseus7irqpj1ohv147', 1774780027, 'modx.user.contextTokens|a:0:{}'),
('rq0cqkpb0o15nfgse7cfturtc7', 1774174643, 'modx.user.contextTokens|a:0:{}'),
('rq83668uu5qs8v81ossqg0vo1v', 1774823182, 'modx.user.contextTokens|a:0:{}'),
('rr35vuh6vslo74rkspktir37un', 1775289787, 'modx.user.contextTokens|a:0:{}'),
('rrgt23m9hihiobiacel7l5frb1', 1774457681, 'modx.user.contextTokens|a:0:{}'),
('rsb4ahsv7440oeb9ikro0b5k31', 1774477124, 'modx.user.contextTokens|a:0:{}'),
('rsd8hoegbo6v9ppehudce6tblf', 1776760109, 'modx.user.contextTokens|a:0:{}'),
('rsp35albmnnqp61nq0bmj091i8', 1776118847, 'modx.user.contextTokens|a:0:{}'),
('rspa9rponc4bi1sg5uqd4ds8cg', 1776282271, 'modx.user.contextTokens|a:0:{}'),
('rsvb66d47kpin4jqgs90i5b9bb', 1776334861, 'modx.user.contextTokens|a:0:{}'),
('rt32s2td7p3rk06ief1tlqep6t', 1773931435, 'modx.user.contextTokens|a:0:{}'),
('rt5kjivvo54099qnudptc0195o', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('rtjv5qv5s8of5nlebtm566foha', 1774006653, 'modx.user.contextTokens|a:0:{}'),
('rv1pu88v2faaoqiboh01k79fo9', 1774093141, 'modx.user.contextTokens|a:0:{}'),
('rvc67e0rr4mggtibnecbumuceg', 1774516821, 'modx.user.contextTokens|a:0:{}'),
('rvem75knem18t0fe6dfqupk00i', 1774977633, 'modx.user.contextTokens|a:0:{}'),
('rvhat2tbfbf1ur55kal9egcdgn', 1774962457, 'modx.user.contextTokens|a:0:{}'),
('s00rfmvpdvg6ude2cfhvt6lbi3', 1774822288, 'modx.user.contextTokens|a:0:{}'),
('s06oo46kohi23jtk0vn7o4q4hd', 1774446549, 'modx.user.contextTokens|a:0:{}'),
('s15klkc8bik0ecqm3obiduei6u', 1776204788, 'modx.user.contextTokens|a:0:{}'),
('s172sr63go8ngmb9lb7f5mgvb8', 1774205907, 'modx.user.contextTokens|a:0:{}'),
('s1nbqkj6tr64t483b0j98co65c', 1777126072, 'modx.user.contextTokens|a:0:{}'),
('s23it8vh0h537k4foe3ug60nvo', 1774248077, 'modx.user.contextTokens|a:0:{}'),
('s2du5d7mqv7ntq0bis8kirserk', 1775399367, 'modx.user.contextTokens|a:0:{}'),
('s32ett3vvpjiqgsul1h7gq3lp4', 1776648593, 'modx.user.contextTokens|a:0:{}'),
('s38d5hfofi2gku81dkqabesgln', 1774087770, 'modx.user.contextTokens|a:0:{}'),
('s3b88ljnb79evq4p65c8mge81d', 1774241615, 'modx.user.contextTokens|a:0:{}'),
('s3ilnpb64j810flt4m0m2974c1', 1777154267, 'modx.user.contextTokens|a:0:{}'),
('s4cc3bkonjh5niv1orgj506ecm', 1775060702, 'modx.user.contextTokens|a:0:{}'),
('s4vet94j0139pf79lh2d7oknvh', 1775623599, 'modx.user.contextTokens|a:0:{}'),
('s52vrbgcf7745b8bj90emb8os2', 1776813013, 'modx.user.contextTokens|a:0:{}'),
('s6ifpshmc0aah90nqe2ejhpv7g', 1774010127, 'modx.user.contextTokens|a:0:{}'),
('s6ofsakgkfkgglf9gauip3oni4', 1775947763, 'modx.user.contextTokens|a:0:{}'),
('s78oa2oori8uapaemq10ghe655', 1777309344, 'modx.user.contextTokens|a:0:{}'),
('s7oeectj24g3g9f8eomf6oqkrp', 1774075638, 'modx.user.contextTokens|a:0:{}'),
('s7t3flcrs18c4t37nptnhcrhj0', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('s8vh3njsaon00rsmbreh5hanq2', 1774072700, 'modx.user.contextTokens|a:0:{}'),
('s95n2v4h10vppvg72noo05kjfn', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('s9f4js4efcjevp46de48s3dft5', 1773931428, 'modx.user.contextTokens|a:0:{}'),
('s9smdbsl0mnmhlcv16i9acvr2n', 1775600111, 'modx.user.contextTokens|a:0:{}'),
('sa0p5s5efe51pmovmcodq548dm', 1774693019, 'modx.user.contextTokens|a:0:{}'),
('sa400u5mnf8vmfdf6d0r7ch5pn', 1774007625, 'modx.user.contextTokens|a:0:{}'),
('sa4fq5irqs6e1ag6mlf7pacjc6', 1776048437, 'modx.user.contextTokens|a:0:{}'),
('sa5snin6mdrat17t3ilqoklms8', 1774106944, 'modx.user.contextTokens|a:0:{}'),
('sae0bom4id9b8qr3p53ao59tk2', 1775288122, 'modx.user.contextTokens|a:0:{}'),
('saouj3ts3kc7eqn9vce26ip3i7', 1774980967, 'modx.user.contextTokens|a:0:{}'),
('sb3t5a89ftf5mbpaeq670cvsbu', 1775030913, 'modx.user.contextTokens|a:0:{}'),
('sb5o5evje466kr8959bkeom07b', 1775232996, 'modx.user.contextTokens|a:0:{}'),
('sbg1ke9nsb340vtf4q8urvmhnk', 1774866807, 'modx.user.contextTokens|a:0:{}'),
('sbqdp02vajjap7kctd41haaedg', 1776464037, 'modx.user.contextTokens|a:0:{}'),
('sc9n4bdih4amq8bllop662kk1s', 1777338903, 'modx.user.contextTokens|a:0:{}'),
('scct2acm08rqouusfmtngpmn7u', 1773931433, 'modx.user.contextTokens|a:0:{}'),
('scdimupieek38aqbvqlhc0urh1', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('sddhum9hms4alnv62iqsepmd6h', 1774615053, 'modx.user.contextTokens|a:0:{}'),
('sdgogi6v1dvi8it6hi824fvlvp', 1774815056, 'modx.user.contextTokens|a:0:{}'),
('sdsoqr9ffg07bd0spp0dpa2o1m', 1775301600, 'modx.user.contextTokens|a:0:{}'),
('seqnk92llfsej7q2uqi1ttdv9j', 1775429980, 'modx.user.contextTokens|a:0:{}'),
('ser08m80kc7fl6fj5gi9vuf0ev', 1775335331, 'modx.user.contextTokens|a:0:{}'),
('sf08tcmg36t385srb7peubep90', 1774194997, 'modx.user.contextTokens|a:0:{}'),
('sf8g7dqap4o6vq0nr9a8r8nthg', 1774090300, 'modx.user.contextTokens|a:0:{}'),
('sf8vtag277c6omt3sldjduvanc', 1774602458, 'modx.user.contextTokens|a:0:{}'),
('sf996bokaph1nnuqskd7o707bj', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('sg3e94dqtupr5481dlvb9aiqd6', 1775596237, 'modx.user.contextTokens|a:0:{}'),
('sgbjstr93r0ukcj8t31lte52fo', 1777137353, 'modx.user.contextTokens|a:0:{}'),
('sgeq331a1lp8riajg52uvk5sa2', 1775731317, 'modx.user.contextTokens|a:0:{}'),
('sghm9ouut0k3fjagijjeco4gpf', 1776250371, 'modx.user.contextTokens|a:0:{}'),
('sgirgs4r0b2v6gjm1tce2reu7m', 1777241816, 'modx.user.contextTokens|a:0:{}'),
('sgodngkpq4anib00lr11cmvmmf', 1775997819, 'modx.user.contextTokens|a:0:{}'),
('sgvqv1jfb8utm8vb877ofpgl9a', 1774819902, 'modx.user.contextTokens|a:0:{}'),
('shglj3a0e111d0fdl84ia4tium', 1775404268, 'modx.user.contextTokens|a:0:{}'),
('siam4k7csk7pke79htlbph7a4h', 1776600157, 'modx.user.contextTokens|a:0:{}'),
('sidfpd3q0v2dj56rsa6v2ik4bo', 1773931427, 'modx.user.contextTokens|a:0:{}'),
('sifpn0t5cci85pqlve21rksfvl', 1774457684, 'modx.user.contextTokens|a:0:{}'),
('siju5o0bcov0gne3s3edk1rr16', 1774417638, 'modx.user.contextTokens|a:0:{}'),
('sik8n49567hbaf5u9lfe1keti7', 1773872371, 'modx.user.contextTokens|a:0:{}'),
('silr4dj86vdlk56a8855ddvinf', 1776660264, 'modx.user.contextTokens|a:0:{}'),
('sjbadqfvba5vu44klnmsfa51d9', 1776210724, 'modx.user.contextTokens|a:0:{}'),
('sjnq4e9admugqnfg2kq7pfrl3t', 1774373812, 'modx.user.contextTokens|a:0:{}'),
('sjud2pm4iv1agc4r1oe67n7k3d', 1774151446, 'modx.user.contextTokens|a:0:{}'),
('sjur88uogpccpqcgbqkgq4bfdb', 1777296201, 'modx.user.contextTokens|a:0:{}'),
('sk3f3h3kr1rif8m03lub3u4ce0', 1775415197, 'modx.user.contextTokens|a:0:{}'),
('skh617ut5thqa1qbndcdilleem', 1774291683, 'modx.user.contextTokens|a:0:{}'),
('skid5e4llf6vd676d4sd265nrl', 1774093125, 'modx.user.contextTokens|a:0:{}'),
('skiea45uudui3i4l3kl9dkdoe9', 1775910825, 'modx.user.contextTokens|a:0:{}'),
('skupv0c627f7reb9el8ur5un4m', 1774282673, 'modx.user.contextTokens|a:0:{}'),
('slih7u9p6bbjb41escs7bp39do', 1774013424, 'modx.user.contextTokens|a:0:{}'),
('sm59nn4g3nhr9q91280pvd6918', 1776239959, 'modx.user.contextTokens|a:0:{}'),
('smvi7fe7vl2hd59ka6ehb5fpm1', 1774151447, 'modx.user.contextTokens|a:0:{}'),
('snhfudosdnihh0ked2eo8ic2ch', 1775628857, 'modx.user.contextTokens|a:0:{}'),
('snq28mkn209bjfn0ke22ei5fp7', 1777448850, 'modx.user.contextTokens|a:0:{}'),
('snu8mo1pire1f97bvri3uoad4u', 1777241851, 'modx.user.contextTokens|a:0:{}'),
('sogpcohh1gn1pvosbh5r99nseb', 1774708840, 'modx.user.contextTokens|a:0:{}'),
('sp99ig6vt859mhb78vfmloc0fa', 1775637307, 'modx.user.contextTokens|a:0:{}'),
('sq5nobs4bmcv0r0c4qor7dglhq', 1774448205, 'modx.user.contextTokens|a:0:{}'),
('sr1de9rk0og5jre3i4mbknrclu', 1775194049, 'modx.user.contextTokens|a:0:{}'),
('sr9vpo4m9td46arkjgrchf4e3m', 1775801708, 'modx.user.contextTokens|a:0:{}'),
('ss887r4ehmhvr09odl0gc9vb2i', 1775132721, 'modx.user.contextTokens|a:0:{}'),
('ssvcdcbrp6fqmma8so72atg8hd', 1776841336, 'modx.user.contextTokens|a:0:{}'),
('st45164erpeen8m1389mhcke04', 1774156366, 'modx.user.contextTokens|a:0:{}'),
('st4svhmmqmhiucgj3ipa8e0iva', 1777127423, 'modx.user.contextTokens|a:0:{}'),
('su1aglg804pimfe01tvv99mu96', 1776547653, 'modx.user.contextTokens|a:0:{}'),
('su25smodfcs4e03amgf9ot532e', 1776717154, 'modx.user.contextTokens|a:0:{}'),
('suq9jafl100f4opv8krhhvtmdq', 1774935322, 'modx.user.contextTokens|a:0:{}'),
('suvttk84k9v5mci9kj37f89t14', 1775063976, 'modx.user.contextTokens|a:0:{}'),
('svnqb9ul0h661vo4qt31q5edt4', 1777004719, 'modx.user.contextTokens|a:0:{}'),
('svrhc5km103asqijdu0q6ai04g', 1773884224, 'modx.user.contextTokens|a:0:{}'),
('svskk7cavti1dhh56ah8074u78', 1774620149, 'modx.user.contextTokens|a:0:{}'),
('svsl368hunm22cpjtog6m6hk5o', 1775880181, 'modx.user.contextTokens|a:0:{}'),
('t0s4ivhpj92e7qpdbd3o01lleq', 1774404603, 'modx.user.contextTokens|a:0:{}'),
('t0uld21b0ind563vlq2d8q7fhr', 1775170149, 'modx.user.contextTokens|a:0:{}'),
('t1nrabk0hnletvu0iedrialb6a', 1775879875, 'modx.user.contextTokens|a:0:{}'),
('t1po4hoof343kg1kb9p9h6afvm', 1775309184, 'modx.user.contextTokens|a:0:{}'),
('t22q7n31cil8c5ghp4kf26qdet', 1774189992, 'modx.user.contextTokens|a:0:{}'),
('t2m2bc8ngo6t3aeugbvkp6tinm', 1776996478, 'modx.user.contextTokens|a:0:{}'),
('t2sjkdgkudr6ab4ekd68b746i0', 1776076845, 'modx.user.contextTokens|a:0:{}'),
('t2so4su6r5d5htjl9a7sdsfsrg', 1775331055, 'modx.user.contextTokens|a:0:{}'),
('t3ujv38jv1fecf5057ig9b53qr', 1774781260, 'modx.user.contextTokens|a:0:{}'),
('t41tvl8sgghactrfiqio23mepi', 1775042501, 'modx.user.contextTokens|a:0:{}'),
('t4c620loh2b9dhjmi6dogncf6m', 1774840437, 'modx.user.contextTokens|a:0:{}'),
('t55p9u1l75g1e31p05l3qv6btr', 1775091630, 'modx.user.contextTokens|a:0:{}'),
('t5eu3juk68bn02rjnr5eftkvfr', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('t5hhddvek9a3a3b2fkdpfr2i72', 1776291430, 'modx.user.contextTokens|a:0:{}'),
('t6f7u34b17b16da0uevfr0krj6', 1776461982, 'modx.user.contextTokens|a:0:{}'),
('t6hgt4lta2sisv79oemhhh8mmo', 1776976176, 'modx.user.contextTokens|a:0:{}'),
('t6ltitljjep88v16m2kmo4748v', 1775373332, 'modx.user.contextTokens|a:0:{}'),
('t6md3vdf5kop0dbvrj94dksiu2', 1775966300, 'modx.user.contextTokens|a:0:{}'),
('t6n2l46snukqn99g7le2qtvusk', 1777338406, 'modx.user.contextTokens|a:0:{}'),
('t7it24h2m1ijejcqhbjhmgabkd', 1776982701, 'modx.user.contextTokens|a:0:{}'),
('t7jvolem21mi2n7cnd9vogisb0', 1774006654, 'modx.user.contextTokens|a:0:{}'),
('t7o0vdq3qvdj2rvdjavusfjbhr', 1775668922, 'modx.user.contextTokens|a:0:{}'),
('t850obu4k5qaobpjjq0g1i042o', 1777259006, 'modx.user.contextTokens|a:0:{}'),
('t87lua191f9q4dap1ku53cd22h', 1775365468, 'modx.user.contextTokens|a:0:{}'),
('t8mof18aakkjdir2lapde57qev', 1774828913, 'modx.user.contextTokens|a:0:{}'),
('t8nsbvkfkvdahfjnn1dt8051ec', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('t8oc47m3gg514mt6dv9elijnoi', 1773912587, 'modx.user.contextTokens|a:0:{}'),
('t9nltinih1ichqdh8regu4e6pl', 1774124631, 'modx.user.contextTokens|a:0:{}'),
('t9qcphl75tbj6adu1ibo2krc8c', 1777004724, 'modx.user.contextTokens|a:0:{}'),
('t9sqjh9ei5eumv3dfu97jgi0c6', 1774630277, 'modx.user.contextTokens|a:0:{}'),
('tak4tout2ho9sa6gu3cca8c887', 1774908681, 'modx.user.contextTokens|a:0:{}'),
('tb431t0dk14tgu9bgatvg5fom3', 1774417638, 'modx.user.contextTokens|a:0:{}'),
('tbnhvj0539ggaimugf0cv7fi3r', 1775215946, 'modx.user.contextTokens|a:0:{}'),
('tc33fd3h32qbmh7v02e6ssfuu9', 1776138465, 'modx.user.contextTokens|a:0:{}'),
('tc4pd318t4m9n9k12h6gaenl2c', 1775436191, 'modx.user.contextTokens|a:0:{}'),
('tcqjmeho3epc9nh498ih2shdh5', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('te6r2da0b2vocldm0h66667auk', 1775578621, 'modx.user.contextTokens|a:0:{}'),
('te70evg0s5u4ih8n2tbparoenj', 1776396456, 'modx.user.contextTokens|a:0:{}'),
('tek9j4k1qcugm922u5b5futgq6', 1774979365, 'modx.user.contextTokens|a:0:{}'),
('tenss8drn9h8l9l527815sdqut', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('tesopb74ekck5f0i4cs613elsj', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('tfh0dgslg2iafust1jl7tfkclf', 1774482271, 'modx.user.contextTokens|a:0:{}'),
('tg21nj7ffg1tknfek1pinrvk2p', 1774189992, 'modx.user.contextTokens|a:0:{}'),
('tganjg0eh1jhjkjue2vcvrslg4', 1774776988, 'modx.user.contextTokens|a:0:{}'),
('tgie8k7iqo5mknrc9okii2l660', 1776908378, 'modx.user.contextTokens|a:0:{}'),
('tgp0go99pls8ku0kvd0p4escdr', 1776392202, 'modx.user.contextTokens|a:0:{}'),
('th9a2c8npq8pf26o8vkl50m6ls', 1775663823, 'modx.user.contextTokens|a:0:{}'),
('th9ek4u4lkolf4hdssgefmfh8j', 1775159875, 'modx.user.contextTokens|a:0:{}'),
('thjbtslhl6eek76mivh46rpt1s', 1773902196, 'modx.user.contextTokens|a:0:{}'),
('tira84kfek8vuocg5hl82ka8tn', 1777120138, 'modx.user.contextTokens|a:0:{}'),
('tj01a388suggtkijrf4imc4fvs', 1774449725, 'modx.user.contextTokens|a:0:{}'),
('tjknms8k1348pmq3nkbtauto0e', 1776825655, 'modx.user.contextTokens|a:0:{}'),
('tk03ms91hfavomlnbg8vn1usa1', 1775258860, 'modx.user.contextTokens|a:0:{}'),
('tk4p06ivj0j23d9gt4vqb5rbgp', 1775596990, 'modx.user.contextTokens|a:0:{}'),
('tketksv63ih1t0r1pjdpicq47n', 1774203008, 'modx.user.contextTokens|a:0:{}'),
('tklgmpb27hkn2dnta7megt3te2', 1776932406, 'modx.user.contextTokens|a:0:{}'),
('tl1ap25hkcanbeunue2s04mje2', 1775077902, 'modx.user.contextTokens|a:0:{}'),
('tl3judi6ssfvlje89q74u0eh2n', 1773931429, 'modx.user.contextTokens|a:0:{}'),
('tl44mr6aq1dsnsiouqd6golt4i', 1774044723, 'modx.user.contextTokens|a:0:{}'),
('tlc2ro8q4hhg2h6t5pa31o13ik', 1775729879, 'modx.user.contextTokens|a:0:{}'),
('tln0c96uci8hmad1uu023ob739', 1776683233, 'modx.user.contextTokens|a:0:{}'),
('tlnt4qss0m4to14hp4mbtnq7el', 1775850663, 'modx.user.contextTokens|a:0:{}'),
('tlpplncjnbb2i3fus8e4ke3u5i', 1777371383, 'modx.user.contextTokens|a:0:{}'),
('tm3bdd65o95q8hrc145bqp8l87', 1776581097, 'modx.user.contextTokens|a:0:{}'),
('tmfajp30buqrmhq05v682kgo2u', 1775291987, 'modx.user.contextTokens|a:0:{}'),
('tmgbe8qf3m27fsqs445299draa', 1776588546, 'modx.user.contextTokens|a:0:{}'),
('tmikj4macs5b3nk4p15j2iuj3f', 1774918802, 'modx.user.contextTokens|a:0:{}'),
('tncgmh8l9d82m7nvvbv91qm675', 1775115970, 'modx.user.contextTokens|a:0:{}'),
('tnti9aouu80m4ik1mala95mmvc', 1774457685, 'modx.user.contextTokens|a:0:{}'),
('tnvgdspe7jfuschaiq8muuqodj', 1777021072, 'modx.user.contextTokens|a:0:{}'),
('to1ogbibv9btn0oraei0fqaudc', 1774099795, 'modx.user.contextTokens|a:0:{}'),
('to94j09u7909hnplb0e8lun457', 1775692657, 'modx.user.contextTokens|a:0:{}'),
('toef8d1d16vfj5pk2v9d2m55pu', 1775837943, 'modx.user.contextTokens|a:0:{}'),
('tonidfgp7ticuaothelc8bt6qr', 1773980205, 'modx.user.contextTokens|a:0:{}'),
('topg279b5h07so8ngfmrqdo2c3', 1776982784, 'modx.user.contextTokens|a:0:{}'),
('topioeec3fnm3nam837j5v7ik5', 1774808502, 'modx.user.contextTokens|a:0:{}'),
('tottcsntpmjoa35gt0skla0u1t', 1774857719, 'modx.user.contextTokens|a:0:{}'),
('tp01jlqahpn71800hnvm23anap', 1776521651, 'modx.user.contextTokens|a:0:{}'),
('tpftmpbfeqjvun86makqhatrje', 1775561050, 'modx.user.contextTokens|a:0:{}'),
('tpm411jvhv711djihg133b9k71', 1774174666, 'modx.user.contextTokens|a:0:{}'),
('tpsoe1ntpm88amreanmm4gu03t', 1774326242, 'modx.user.contextTokens|a:0:{}'),
('tpula5031uqcc9vrqlb4trq21t', 1775438635, 'modx.user.contextTokens|a:0:{}'),
('tq6b82je1vfbqa4o5jbd3gc0hh', 1776961058, 'modx.user.contextTokens|a:0:{}'),
('tq9skojllddclbb23l5mh4fagp', 1775436992, 'modx.user.contextTokens|a:0:{}'),
('tqm4br2vjnotrnpemhks9fd67u', 1774143778, 'modx.user.contextTokens|a:0:{}'),
('trdrom6hh9htesla5fpvah4olg', 1775754214, 'modx.user.contextTokens|a:0:{}'),
('truf3425ddpf0adr6b9g4agtqk', 1774384204, 'modx.user.contextTokens|a:0:{}'),
('trvmjb6knbjt2ohcl0f0du84e9', 1775417478, 'modx.user.contextTokens|a:0:{}'),
('tsfikjsnr3dt90pj1deq2m6mnf', 1775758165, 'modx.user.contextTokens|a:0:{}'),
('ttdtlhr2asq9l06gsbcklvtjtj', 1777359626, 'modx.user.contextTokens|a:0:{}'),
('ttt73r5b5sopntl0r4t6sa5uuv', 1775019551, 'modx.user.contextTokens|a:0:{}'),
('tu32vkttuaaahnlv3j8akqvga3', 1775335368, 'modx.user.contextTokens|a:0:{}'),
('tuphdtbd46omjin4mtpb8illvm', 1774621346, 'modx.user.contextTokens|a:0:{}'),
('tvfm8hla9k6924fia16vbd0teb', 1777188278, 'modx.user.contextTokens|a:0:{}'),
('u047v836r57pkkocebc3p2ckqs', 1773930469, 'modx.user.contextTokens|a:0:{}'),
('u0kjd3e3qulp5fidkthnf6e6gs', 1774107030, 'modx.user.contextTokens|a:0:{}'),
('u0l4ft8jjeq0qlogdrjka57rrv', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('u0u6vrkk73tkh9qdrt2v2p36bn', 1774497549, 'modx.user.contextTokens|a:0:{}'),
('u18hr8cfl6ualk4507f9fgq82q', 1777001441, 'modx.user.contextTokens|a:0:{}'),
('u1oev2kl4bhiddqbmgm3he7v7b', 1774984343, 'modx.user.contextTokens|a:0:{}'),
('u21n7770213rd6hoa0e4m5i30j', 1777296174, 'modx.user.contextTokens|a:0:{}'),
('u2pdca3cag7kb80rq1pqabkc8l', 1776776380, 'modx.user.contextTokens|a:0:{}'),
('u39sc7cd12d882dgrumo1s143k', 1776953217, 'modx.user.contextTokens|a:0:{}'),
('u3e2li4tekcm9qpop8669nibm4', 1774170757, 'modx.user.contextTokens|a:0:{}'),
('u3j88teqpmb15ujt6mv7n9pkpc', 1775777757, 'modx.user.contextTokens|a:0:{}'),
('u4bf36m024rfvagqp9h1m75udq', 1774106945, 'modx.user.contextTokens|a:0:{}'),
('u4fg2i9b52srpnbke919tr582c', 1777194984, 'modx.user.contextTokens|a:0:{}'),
('u4nqv3j4uh6jbgub34djuue629', 1777384878, 'modx.user.contextTokens|a:0:{}'),
('u5a934g0ckqui6lhck2pmshgek', 1774291683, 'modx.user.contextTokens|a:0:{}'),
('u5ciqnat1k9kao8pffvoioq9a4', 1775357870, 'modx.user.contextTokens|a:0:{}'),
('u6b44dmg5e2si7igeh92g17vf7', 1774908681, 'modx.user.contextTokens|a:0:{}'),
('u6bc63db01pdhnupmokc1t49pu', 1774064599, 'modx.user.contextTokens|a:0:{}'),
('u6c9a5mc5bb0rpc27bfevphrvv', 1775853716, 'modx.user.contextTokens|a:0:{}'),
('u6esca84bncm2muqkrv7mpbhrp', 1777449778, 'modx.user.contextTokens|a:0:{}'),
('u71pthq0mbhs5enr48putdm6l2', 1774917196, 'modx.user.contextTokens|a:0:{}'),
('u81ms754thgld08h6lkjie3mv5', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('u8dcl370fs8dgdomhtds9e75gg', 1774780040, 'modx.user.contextTokens|a:0:{}'),
('u8qg7c47mpstil3tji2cv7nd71', 1776151765, 'modx.user.contextTokens|a:0:{}'),
('u9174iblfkdg52vkk7sfe44fm9', 1774474225, 'modx.user.contextTokens|a:0:{}'),
('u92j1fij9d2lnkr0oie9sfl4k0', 1777197582, 'modx.user.contextTokens|a:0:{}'),
('u9kig8tlqtde8n1l0oq62push2', 1774457683, 'modx.user.contextTokens|a:0:{}'),
('ua1j4b9gjq30fphqonkopiocnn', 1774781344, 'modx.user.contextTokens|a:0:{}'),
('uaau3dgd06d4uhtjgd6sk78gbc', 1777448242, 'modx.user.contextTokens|a:0:{}'),
('uaee92ahkckvfb52581do5insk', 1773931434, 'modx.user.contextTokens|a:0:{}'),
('uagnk0onq7s9v8ne477mbood0m', 1776888038, 'modx.user.contextTokens|a:0:{}'),
('uah626b7iakhhsdk0oqqplh59c', 1777334980, 'modx.user.contextTokens|a:0:{}'),
('uahd4bejso0bo062rlm09hl701', 1776076856, 'modx.user.contextTokens|a:0:{}'),
('uajikviqk2kbdo56dmafo7foah', 1776932406, 'modx.user.contextTokens|a:0:{}'),
('uajp7811fvt0nsbkgem9kv9vug', 1775793241, 'modx.user.contextTokens|a:0:{}'),
('ub0sdo8u046d8bia6u285g9bh0', 1775335367, 'modx.user.contextTokens|a:0:{}'),
('ub5lv142rk05joa6akstqp31a9', 1774009623, 'modx.user.contextTokens|a:0:{}'),
('ubhbanp1l9u36le7r75renr64d', 1775510054, 'modx.user.contextTokens|a:0:{}'),
('ubl4a7erec27sqspnm7qn6ttln', 1774714173, 'modx.user.contextTokens|a:0:{}'),
('ucl6toe0od7fp0fqn0q3bnbh9g', 1777246681, 'modx.user.contextTokens|a:0:{}'),
('ucqho6qjdogdqrk1he65dpl0km', 1774781261, 'modx.user.contextTokens|a:0:{}'),
('ude2iam332ok75mt1rvkg2ta4m', 1774457679, 'modx.user.contextTokens|a:0:{}'),
('udo144jkkefj9gvn914d6697h6', 1775945868, 'modx.user.contextTokens|a:0:{}'),
('udtt7kq0r6vvf2s81v2423s6q1', 1775233089, 'modx.user.contextTokens|a:0:{}'),
('ue3v1ihlb1u88ep254d8v2hpq3', 1777139583, 'modx.user.contextTokens|a:0:{}'),
('uf0dhucf3u4jl2aac509ccnn70', 1777228176, 'modx.user.contextTokens|a:0:{}'),
('ufs0k4kq05gu3k0gocvn4bj4f3', 1775950677, 'modx.user.contextTokens|a:0:{}'),
('ug0faelpmssc0sgdscnb85fm0u', 1776156563, 'modx.user.contextTokens|a:0:{}'),
('ugb6cl2gaoo3v8e23k706qnsm7', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('ugbsqei2lqtefrsgprn2cai3an', 1777448886, 'modx.user.contextTokens|a:0:{}'),
('uh88h5rvun8eo30scpvqfb81q8', 1777188276, 'modx.user.contextTokens|a:0:{}'),
('uhl568lmqcvu7a8rnlvqjmquem', 1777090482, 'modx.user.contextTokens|a:0:{}'),
('uhlojfta2sol2sc3rh6mj6hk4u', 1777194720, 'modx.user.contextTokens|a:0:{}'),
('uhsdnmd9i79c7db6tfbp3o7ub4', 1775088810, 'modx.user.contextTokens|a:0:{}'),
('ui5jtcje1ke069vrdd8ro8e3l1', 1774856373, 'modx.user.contextTokens|a:0:{}'),
('uicgcs28g6vrjq79bagt2s3824', 1775254636, 'modx.user.contextTokens|a:0:{}'),
('uj4t17e1n30cj2935n6aeqr73d', 1774828630, 'modx.user.contextTokens|a:0:{}'),
('ujfugpfjgl1kp3469gv1akk2b7', 1774101093, 'modx.user.contextTokens|a:0:{}'),
('ujqaepmjbudmqmv8ksg0dl5klb', 1776729682, 'modx.user.contextTokens|a:0:{}'),
('ujqokllpbrjtggf2boh9aftc7c', 1776104620, 'modx.user.contextTokens|a:0:{}'),
('uk2evnbc19erspe01rb57rpe4k', 1775918888, 'modx.user.contextTokens|a:0:{}'),
('uk5luqqkej6oqrukliif1m6f9q', 1776141143, 'modx.user.contextTokens|a:0:{}'),
('ukbbhf5vl24iu0npnd7mvs9c6c', 1774970742, 'modx.user.contextTokens|a:0:{}'),
('ukcq5fnc5895lv2plio8qkd5gb', 1776888033, 'modx.user.contextTokens|a:0:{}'),
('ukuipim6bqv70k7uu9boosr3tb', 1776021501, 'modx.user.contextTokens|a:0:{}'),
('ulsmd3f07e0ubntjjomhfscqdh', 1774380246, 'modx.user.contextTokens|a:0:{}'),
('um00mfno2fi9av6n6a2hi1u4d1', 1774918802, 'modx.user.contextTokens|a:0:{}'),
('umjb0i1ie1jl90phn7dqre5poj', 1773958693, 'modx.user.contextTokens|a:0:{}'),
('umtriech816dsh3do23rk4b6e6', 1774358534, 'modx.user.contextTokens|a:0:{}'),
('un0h1e329jvdblg9l8uvu95kbf', 1774208281, 'modx.user.contextTokens|a:0:{}'),
('unckcu23nij9juig9f1198rii1', 1774042978, 'modx.user.contextTokens|a:0:{}');
INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('uni7ckbtb2ofubu19c59nlf3aj', 1776995831, 'modx.user.contextTokens|a:0:{}'),
('up8h3p616l0s3likrrqgl5bue8', 1777231040, 'modx.user.contextTokens|a:0:{}'),
('upa2f9q4vcfm8j9198no7ihn8a', 1775061306, 'modx.user.contextTokens|a:0:{}'),
('upmniigt00gscrmi1lu3dlqr2j', 1775208328, 'modx.user.contextTokens|a:0:{}'),
('uprm6ljhvdkqt1dl37gq3bsv7h', 1774255147, 'modx.user.contextTokens|a:0:{}'),
('uq63rtgpm9i5qgav7n0t7mbboe', 1774236124, 'modx.user.contextTokens|a:0:{}'),
('uqrrqhd8bnv42g1qbfhmagst3m', 1775225115, 'modx.user.contextTokens|a:0:{}'),
('ur5bphfrh1r4l11s4qu31tavaq', 1774354345, 'modx.user.contextTokens|a:0:{}'),
('urgigrgsk1khdnavqi2b33etlk', 1775133927, 'modx.user.contextTokens|a:0:{}'),
('urrj4bir7irreac052dhq0tqgu', 1774390721, 'modx.user.contextTokens|a:0:{}'),
('usmo9fc5ms7egrom64smnnbem2', 1774094323, 'modx.user.contextTokens|a:0:{}'),
('usoq0a6csi50oco9alemua550d', 1776249557, 'modx.user.contextTokens|a:0:{}'),
('uta4lnn0nrv4q1sjj7debvg1m3', 1774648068, 'modx.user.contextTokens|a:0:{}'),
('utg60b5n9hsugpkj3oru21l033', 1775275247, 'modx.user.contextTokens|a:0:{}'),
('utqn1bpt4sav6akl3d1tgtlnme', 1774457678, 'modx.user.contextTokens|a:0:{}'),
('uuek8kfd3eqpcj46tibbogi81n', 1775339001, 'modx.user.contextTokens|a:0:{}'),
('uuekvqj52mhv97gonjk3497d3u', 1775859492, 'modx.user.contextTokens|a:0:{}'),
('uv0bts01vrq9ds5e5tjt8rnlf4', 1775808976, 'modx.user.contextTokens|a:0:{}'),
('uvmblqaheg63sq4e98s6jvd5ar', 1774248077, 'modx.user.contextTokens|a:0:{}'),
('v0gl4d34tpv11n78b93at0158b', 1776896512, 'modx.user.contextTokens|a:0:{}'),
('v0jvhnkirj2l2j21m88j4crgse', 1776871779, 'modx.user.contextTokens|a:0:{}'),
('v0me9hro1e1ome7m19qrcrpujt', 1773917576, 'modx.user.contextTokens|a:0:{}'),
('v0s8i3s2471bb7c62rbbls3ehr', 1774779995, 'modx.user.contextTokens|a:0:{}'),
('v0tfs3r8esj70t3j68nrrtl5nu', 1776202323, 'modx.user.contextTokens|a:0:{}'),
('v1b4f2275knkqetcsa7jn5ucnm', 1775004440, 'modx.user.contextTokens|a:0:{}'),
('v1dhmbvn7tl3enb3buiog2e9t7', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('v1umck3rfmfie0lmh6q7go2kp9', 1775638595, 'modx.user.contextTokens|a:0:{}'),
('v29sq32d9nr55c25mn4n0otpis', 1776010655, 'modx.user.contextTokens|a:0:{}'),
('v2cgjet9ftpfdqhe12j9l8j6a3', 1773853700, 'modx.user.contextTokens|a:0:{}'),
('v2d34nj8046hpg2gngu64ln1s4', 1776580703, 'modx.user.contextTokens|a:0:{}'),
('v2l6cintre8rd14g1gjmnfl46c', 1774197385, 'modx.user.contextTokens|a:0:{}'),
('v48lh3e5vaitc2e77kvnhn0ist', 1774513865, 'modx.user.contextTokens|a:0:{}'),
('v4eia5prp9l1cu9enlrro8mmr4', 1775338965, 'modx.user.contextTokens|a:0:{}'),
('v4lkoqq2idbdph2j0d62vd1jog', 1776649674, 'modx.user.contextTokens|a:0:{}'),
('v5bgklelf903v3kjlv6o4f7mj2', 1774856956, 'modx.user.contextTokens|a:0:{}'),
('v5itvmh5pqr6sjbi5b48tbbjtv', 1776430811, 'modx.user.contextTokens|a:0:{}'),
('v5qc6g1p2j1t7bslg924l5m2up', 1776818008, 'modx.user.contextTokens|a:0:{}'),
('v5u3rehid0k0h7vt0t6iifd8k3', 1774152999, 'modx.user.contextTokens|a:0:{}'),
('v63mu0frb2973rdvn145n858as', 1776143512, 'modx.user.contextTokens|a:0:{}'),
('v66j1pi7el5j771sk8vmernemr', 1774205671, 'modx.user.contextTokens|a:0:{}'),
('v6hfi1i56a8er6fggm4j0v23ve', 1774628661, 'modx.user.contextTokens|a:0:{}'),
('v6svpb0kgb0mjns2g9s64s876f', 1774734187, 'modx.user.contextTokens|a:0:{}'),
('v760raqllvaknnurnd7epuc0tf', 1774217901, 'modx.user.contextTokens|a:0:{}'),
('v7brferkg8pg3d0qvhq0fkjldd', 1776692726, 'modx.user.contextTokens|a:0:{}'),
('v7t1lnbj5akcqkgglan22ngkhn', 1773867497, 'modx.user.contextTokens|a:0:{}'),
('v828gbqs146roi1q8qpaoh646v', 1776207868, 'modx.user.contextTokens|a:0:{}'),
('v8416k3e2cs234psek497hj42m', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('v8c5hcp0bhlhvj07u9gj1at2ne', 1776212803, 'modx.user.contextTokens|a:0:{}'),
('v8pge4k4ur1bjio3ffhuprv4a5', 1775545936, 'modx.user.contextTokens|a:0:{}'),
('v95t7764jjlb0iq5n5thuku2bk', 1776759555, 'modx.user.contextTokens|a:0:{}'),
('v98ktob662ft98lm498v6g3jhf', 1776760098, 'modx.user.contextTokens|a:0:{}'),
('v9otiv0m4s8tq9kci7fonfeou9', 1775215070, 'modx.user.contextTokens|a:0:{}'),
('vbc4tin2rk45e34m0cge3ro1mk', 1776928801, 'modx.user.contextTokens|a:0:{}'),
('vbgjqgql564vc84tb6na21nffd', 1777089340, 'modx.user.contextTokens|a:0:{}'),
('vbrupnje4dgi6svs547unda2st', 1777335603, 'modx.user.contextTokens|a:0:{}'),
('vc3dbg84ik6ekgkdph76ufdq7r', 1773852802, 'modx.user.contextTokens|a:0:{}'),
('vc769jdhu4pl8b4fjlcl4sc0kv', 1776464437, 'modx.user.contextTokens|a:0:{}'),
('vcgbojk2bdl050qk7e0s1brefq', 1774952473, 'modx.user.contextTokens|a:0:{}'),
('vd4j7oo0jp7evdbajuaeennsiv', 1775086406, 'modx.user.contextTokens|a:0:{}'),
('vd5v7opahlcql06h2k3nfesakq', 1777456221, 'modx.user.contextTokens|a:0:{}'),
('vd97c6vs0fp741ostlpjupqmvn', 1777284991, 'modx.user.contextTokens|a:0:{}'),
('vdc5i4735f2db6pcpoe2vf2vsc', 1776874261, 'modx.user.contextTokens|a:0:{}'),
('ve2q0sdaj9rlhqjn5mdp9n9lai', 1774274598, 'modx.user.contextTokens|a:0:{}'),
('vf1n85o3040pivsm9g3c33mfup', 1776722023, 'modx.user.contextTokens|a:0:{}'),
('vfemhl3nqueqqe3k040f7ra9br', 1776375374, 'modx.user.contextTokens|a:0:{}'),
('vfq6q981q296i2g690lshc4fjp', 1775214358, 'modx.user.contextTokens|a:0:{}'),
('vgijdu77s7emi72vphpkarirvp', 1774982130, 'modx.user.contextTokens|a:0:{}'),
('vgl08nrtklmpti2uhr1k2mji2d', 1775535231, 'modx.user.contextTokens|a:0:{}'),
('vh004cdfn82d2qcpr50rujgqju', 1776615541, 'modx.user.contextTokens|a:0:{}'),
('vh5b1nqah55bap6mvislc5rv9f', 1773960700, 'modx.user.contextTokens|a:0:{}'),
('vhir26bstqnsdvn9enr96cs0gm', 1776028440, 'modx.user.contextTokens|a:0:{}'),
('vhmnsfdd1n92gghu69umvdu35v', 1774999009, 'modx.user.contextTokens|a:0:{}'),
('vhp2ufap3vjp67q5e6rr21tg77', 1774474907, 'modx.user.contextTokens|a:0:{}'),
('vi3166dmmfdknto9286j2923me', 1777120137, 'modx.user.contextTokens|a:0:{}'),
('vi77a2445pnhrh6nodbl7lb4lj', 1777037731, 'modx.user.contextTokens|a:0:{}'),
('via8o0qh3og7i6hub1vnqou06p', 1774592464, 'modx.user.contextTokens|a:0:{}'),
('vie5plooe33b748h6khcm11189', 1777091354, 'modx.user.contextTokens|a:0:{}'),
('vihkph4hnre6qg66pi8dtpl4ne', 1775069853, 'modx.user.contextTokens|a:0:{}'),
('vj9f32s11uagog8j6eu3nqvfr6', 1775109563, 'modx.user.contextTokens|a:0:{}'),
('vk4m6l2crudu0f0cg71ka8a4ml', 1776589580, 'modx.user.contextTokens|a:0:{}'),
('vkbv0pi13vfeag7goc5ji7rbkh', 1776205092, 'modx.user.contextTokens|a:0:{}'),
('vla9g88t2q50brnkj01tcio68d', 1774358530, 'modx.user.contextTokens|a:0:{}'),
('vm2fhfm421jc4t0h426hvms1ae', 1773929002, 'modx.user.contextTokens|a:0:{}'),
('vmh5bgj7pk7al1sn4t4o6trit0', 1774856369, 'modx.user.contextTokens|a:0:{}'),
('vn1qe04dus3902pcmbc4u2j89p', 1773884226, 'modx.user.contextTokens|a:0:{}'),
('vp6v8qe95he56mr11g4s0vakan', 1775438623, 'modx.user.contextTokens|a:0:{}'),
('vp76l2aadgeno563rad1gb5gee', 1773931432, 'modx.user.contextTokens|a:0:{}'),
('vprtsvc66k0no4tm07tj8p337v', 1773902140, 'modx.user.contextTokens|a:0:{}'),
('vps3rp4q0loc0brrvk1rurst0k', 1775901436, 'modx.user.contextTokens|a:0:{}'),
('vq1vjr556adaq2cv4o4pjddenf', 1776199718, 'modx.user.contextTokens|a:0:{}'),
('vq3jo97rdmclu5lc6nkv2o2kaj', 1776126494, 'modx.user.contextTokens|a:0:{}'),
('vqlbuhrrpmik2qoe437gn7mkf7', 1775218861, 'modx.user.contextTokens|a:0:{}'),
('vqu8m7t5sph4g1j4k9ci2josqh', 1776679608, 'modx.user.contextTokens|a:0:{}'),
('vr89orqgndcavqdbb1np61mo16', 1774457680, 'modx.user.contextTokens|a:0:{}'),
('vris859hsdkjh7dhe7qrnd4lsc', 1775204108, 'modx.user.contextTokens|a:0:{}'),
('vrl28sh3gohc2c0k2thi3f41ah', 1777125910, 'modx.user.contextTokens|a:0:{}'),
('vrsjhaevo0ondspngopdl2dhvs', 1774457682, 'modx.user.contextTokens|a:0:{}'),
('vs2gnn3mvipubs6857o22el69c', 1777385720, 'modx.user.contextTokens|a:0:{}'),
('vt23igrhaq629j32ket3clutek', 1774736231, 'modx.user.contextTokens|a:0:{}'),
('vt6m9jvb7oa44l3l3n4etsg9d6', 1775910785, 'modx.user.contextTokens|a:0:{}'),
('vtagk8tvvji9m9h55hht57sfc4', 1774260665, 'modx.user.contextTokens|a:0:{}'),
('vtgtcpg5ji0ln4tcjp8ckpn2mp', 1774153200, 'modx.user.contextTokens|a:0:{}'),
('vvjct570aijln4n9ld1lerdp81', 1776901529, 'modx.user.contextTokens|a:0:{}'),
('vvos9o6koqs19oe3hl1k6pkf3a', 1776628559, 'modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pub_date` int(11) NOT NULL DEFAULT 0,
  `unpub_date` int(11) NOT NULL DEFAULT 0,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isfolder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 0,
  `menuindex` int(11) NOT NULL DEFAULT 0,
  `searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `cacheable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `createdby` int(11) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedby` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deletedon` int(11) NOT NULL DEFAULT 0,
  `deletedby` int(11) NOT NULL DEFAULT 0,
  `publishedon` int(11) NOT NULL DEFAULT 0,
  `publishedby` int(11) NOT NULL DEFAULT 0,
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL,
  `alias_visible` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(1, 'document', 'Home', 'Congratulations!', '', 'index', '', 1, 0, 0, 0, 0, '', '<body class=\"index-page\">\r\n\r\n  <main class=\"main\">\r\n\r\n    <!-- Travel Hero Section -->\r\n    <section id=\"travel-hero\" class=\"travel-hero section dark-background\">\r\n        <div class=\"hero-background\">\r\n            <video autoplay=\"\" muted=\"\" loop=\"\">\r\n                <source src=\"assets/video/preview.mp4\" type=\"video/mp4\">\r\n            </video>\r\n            <div class=\"hero-overlay\"></div>\r\n        </div>\r\n\r\n        <div class=\"container position-relative\" style=\"bottom: 26%;\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-7 col-xl-5\">\r\n                    <div class=\"booking-form-wrapper\" data-aos=\"fade-left\" data-aos-delay=\"200\">\r\n                        <div class=\"booking-form\">\r\n                            <h3 class=\"form-title\">Schedule Your Ride</h3>\r\n                            <form action=\"[[~7]]\" method=\"post\">\r\n                                <!-- Pickup / Drop-off Row -->\r\n                                <div class=\"row g-2 align-items-center\">\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"text\" name=\"pickupLocation\" id=\"pickupLocation\" class=\"form-control\" placeholder=\"Arrival airport\" required>\r\n                                    </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"text\" name=\"dropoffLocation\" id=\"dropoffLocation\" class=\"form-control\" placeholder=\"Going to\" required>\r\n                                    </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <!-- Departure Date & Roundtrip Checkbox -->\r\n                                <div class=\"row g-2 align-items-center mb-3\">\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"datetime-local\" name=\"date\" id=\"date\" class=\"form-control\" required>\r\n                                    </div>\r\n                                    </div>\r\n                                    <div class=\"col-md-6 d-flex align-items-center justify-content-center\">\r\n                                    <div class=\"form-check\">\r\n                                        <input type=\"checkbox\" class=\"form-check-input\" id=\"roundtripCheck\">\r\n                                        <label class=\"form-check-label\" for=\"roundtripCheck\">Roundtrip</label>\r\n                                    </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <!-- Return Trip Fields (hidden by default) -->\r\n                                <div id=\"returnDetails\" style=\"display:none;\">\r\n                                    <div class=\"row g-2 align-items-center\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"form-group mb-3\">\r\n                                            <input type=\"text\" name=\"returnPickup\" id=\"returnPickup\" class=\"form-control\" placeholder=\"Return Pickup Location\">\r\n                                            </div>\r\n                                        </div>\r\n\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"form-group mb-3\">\r\n                                            <input type=\"text\" name=\"returnDropoff\" id=\"returnDropoff\" class=\"form-control\" placeholder=\"Return Drop-off Location\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                        <div class=\"form-group mb-3\">\r\n                                        <input type=\"datetime-local\" name=\"returnDate\" id=\"returnDate\" class=\"form-control\">\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <button type=\"submit\" class=\"btn btn-primary w-100\">Find Your Transfer</button>\r\n                            </form>\r\n       <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyB7vPsBQR4bp2RDm7Iz5u6hN1VzGnqtwsI&libraries=places&callback=initAutocomplete\" async defer></script>\r\n                            <!-- Google Maps Autocomplete + Roundtrip -->\r\n                            <script>\r\n                            const pickupInput = document.getElementById(\'pickupLocation\');\r\n                            const dropoffInput = document.getElementById(\'dropoffLocation\');\r\n                            const returnPickup = document.getElementById(\'returnPickup\');\r\n                            const returnDropoff = document.getElementById(\'returnDropoff\');\r\n                            const roundtripCheck = document.getElementById(\'roundtripCheck\');\r\n                            const returnDetails = document.getElementById(\'returnDetails\');\r\n\r\n                            // Show/hide return details\r\n                            roundtripCheck.addEventListener(\'change\', () => {\r\n                                returnDetails.style.display = roundtripCheck.checked ? \'block\' : \'none\';\r\n                            });\r\n\r\n                            function initAutocomplete() {\r\n                                const options = { componentRestrictions: { country: \'lk\' } };\r\n                                new google.maps.places.Autocomplete(pickupInput, options);\r\n                                new google.maps.places.Autocomplete(dropoffInput, options);\r\n\r\n                                if(returnPickup) new google.maps.places.Autocomplete(returnPickup, options);\r\n                                if(returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options);\r\n                            }\r\n\r\n                            window.initAutocomplete = initAutocomplete;\r\n                            </script>\r\n\r\n                     \r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <!-- Travel Hero Section -->\r\n\r\n\r\n    <!-- Why Us Section -->\r\n    <section id=\"why-us\" class=\"why-us section\">\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n\r\n        <!-- About Us Content -->\r\n        <div id=\"contentImageSlider\" class=\"carousel slide\" data-bs-ride=\"carousel\">\r\n\r\n          <div class=\"carousel-inner\">\r\n\r\n            <!-- SLIDE 1 -->\r\n            <div class=\"carousel-item active\">\r\n              <div class=\"row align-items-center mb-5\">\r\n                \r\n                <!-- CONTENT -->\r\n                <div class=\"col-lg-6\" data-aos=\"fade-right\" data-aos-delay=\"200\">\r\n                  <div class=\"content\">\r\n                    <h3>Explore the World with Confidence</h3>\r\n                    <p class=\"mb-0\">Enjoy hassle-free airport transfers with reliable, comfortable, and punctual service every time.</p>\r\n                    <p>Whether you\'re arriving or departing, we ensure a smooth, safe, and stress-free journey to your destination.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Professional and Experienced Drivers</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Wide Range of Well-Maintained Vehicles</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> 24/7 Customer Support</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <!-- IMAGE -->\r\n                <div class=\"col-lg-6\" data-aos=\"fade-left\" data-aos-delay=\"300\">\r\n                  <div class=\"about-image position-relative\">\r\n                    <img class=\"intro\" src=\"assets/img/intro/1.jpg\"  alt=\"\">\r\n                    <div class=\"experience-badge\">\r\n                      <div class=\"experience-number\">15+</div>\r\n                      <div class=\"experience-text\">Years of Excellence</div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n              </div>\r\n            </div>\r\n            <!-- END SLIDE 1 -->\r\n\r\n\r\n            <!-- SLIDE 2 -->\r\n            <div class=\"carousel-item\">\r\n              <div class=\"row align-items-center mb-5\">\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"content\">\r\n                    <h3>Seamless Travel Solutions</h3>\r\n                    <p>Experience smooth and stress-free airport transfers with timely pickups, comfortable vehicles, and friendly service from start to finish.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Reliable Service</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Affordable Prices</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Islandwide Support</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"about-image position-relative\">\r\n                    <img class=\"intro\" src=\"assets/img/intro/2.jpg\"  alt=\"\">\r\n                  </div>\r\n                </div>\r\n\r\n              </div>\r\n            </div>\r\n            <!-- END SLIDE 2 -->\r\n\r\n\r\n            <!-- SLIDE 3 -->\r\n            <div class=\"carousel-item\">\r\n              <div class=\"row align-items-center mb-5\">\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"content\">\r\n                    <h3>Your Journey, Our Priority</h3>\r\n                    <p>We ensure every ride is safe, comfortable, and perfectly timed to match your travel needs.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> On-time Airport Pickups & Drop-offs</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Clean, Comfortable Vehicles</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Friendly & Professional Drivers</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <img class=\"intro\" src=\"assets/img/intro/3.jpg\"  alt=\"\">\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <!-- CONTROLS -->\r\n          <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#contentImageSlider\" data-bs-slide=\"prev\">\r\n            <span class=\"carousel-control-prev-icon\"></span>\r\n          </button>\r\n\r\n          <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#contentImageSlider\" data-bs-slide=\"next\">\r\n            <span class=\"carousel-control-next-icon\"></span>\r\n          </button>\r\n        </div>\r\n        <!-- End About Us Content -->\r\n\r\n        <div id=\"call-to-action\" class=\"call-to-action section light-background\" style=\"padding: 30px 0;\">\r\n          <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n            <div class=\"hero-content\" data-aos=\"zoom-in\" data-aos-delay=\"200\">\r\n               <div class=\"visual-element\">\r\n                <img src=\"assets/img/flash-deal.jpg\" alt=\"Airport Transfer Flash Deal\" class=\"hero-image d-none d-md-block\" loading=\"lazy\">\r\n                <!-- <img src=\"assets/img/flash-deal-sm.jpg\" alt=\"Airport Transfer Flash Deal\" class=\"hero-image d-block d-md-none\" loading=\"lazy\"> -->\r\n                <!-- <div class=\"image-overlay\">\r\n                  <div class=\"stat-item\">\r\n                    <span class=\"stat-number\">25%</span>\r\n                    <span class=\"stat-label\">Off This Week</span>\r\n                  </div>\r\n                  <div class=\"stat-item\">\r\n                    <span class=\"stat-number\">24/7</span>\r\n                    <span class=\"stat-label\">Service Available</span>\r\n                  </div>\r\n                </div> -->\r\n              </div>\r\n              <div class=\"content-wrapper\">\r\n                <div class=\"badge-wrapper\">\r\n                  \r\n                 \r\n                  <span class=\"promo-badge\">Limited Time Offer</span>\r\n                </div>\r\n\r\n                <h4>Save Big on Airport Transfers!</h4>\r\n                <p>\r\n                  Book your ride now and enjoy exclusive discounts on airport and city transfers across Sri Lanka. \r\n                  Fast, reliable, and affordable — your next trip starts with savings!\r\n                </p>\r\n\r\n               <!-- <div class=\"action-section\">\r\n                  <div class=\"main-actions\">\r\n                     <a href=\"deals.html\" class=\"btn btn-deals\">\r\n                      <i class=\"bi bi-percent\"></i>\r\n                      View Flash Deals\r\n                    </a> \r\n                    <a href=\"[[~2]]\" class=\"btn btn-explore\">\r\n                      <i class=\"bi bi-calendar-check\"></i>\r\n                      Book Now\r\n                    </a>\r\n                  </div>\r\n\r\n                  <div class=\"quick-contact\">\r\n                    <span class=\"contact-label\">Need assistance?</span>\r\n                    <a href=\"tel:+94777786729\" class=\"contact-link\">\r\n                      <i class=\"bi bi-telephone\"></i>\r\n                      Call +94 77 778 6729\r\n                    </a>\r\n                  </div>\r\n                </div>-->\r\n              </div>\r\n\r\n             \r\n            </div>\r\n          </div>\r\n        </div>\r\n\r\n        <!-- Why Choose Us -->\r\n        <div class=\"why-choose-section\">\r\n            <div class=\"row justify-content-center\">\r\n                <div class=\"col-lg-8 text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                    <h3>Why Choose Us</h3>\r\n                    <p>We pride ourselves on delivering reliable, comfortable, and affordable transfers across Sri Lanka. With professional drivers, well-maintained vehicles, and 24/7 customer support, we ensure your journey is smooth from start to finish.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row g-4\">\r\n              <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                <div class=\"feature-card\">\r\n                  <div class=\"feature-icon\">\r\n                        <img src=\"assets/img/who_we/1.png\" alt=\"Safe & Reliable\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Safe & Reliable</h4>\r\n                    <p>Your safety is our top priority with experienced, professional chauffeurs</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"250\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                        <img src=\"assets/img/who_we/2.png\" alt=\"Luxury Fleet\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Luxury Fleet</h4>\r\n                    <p>Choose from our well-maintained, chauffeur-driven premium vehicles.</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                      <img src=\"assets/img/who_we/3.png\" alt=\"24/7 Support\" class=\"ss\">\r\n                    </div>\r\n                    <h4>24/7 Support</h4>\r\n                    <p>Our friendly team is available around the clock for any assistance.</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"350\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                      <img src=\"assets/img/who_we/4.png\" alt=\"Meet & Greet Service\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Meet & Greet Service</h4>\r\n                    <p>Our chauffeurs will welcome you at the airport and escort you with care.</p>\r\n                  </div>\r\n                </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n    </section>\r\n    <!-- /Why Us Section -->\r\n\r\n    <!-- Gallery Slider Section -->\r\n    <section id=\"gallery-slider\" class=\"gallery-slider section pt-0\">\r\n      <div class=\"container section-title pb-3\" data-aos=\"fade-up\">\r\n        <h2>Our Fleet</h2>\r\n        <div><span>Comfortable</span> <span class=\"description-title\">Airport Transfer Rides</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n        <div class=\"gallery-container py-0\">\r\n          <div class=\"swiper init-swiper\">\r\n\r\n            <!-- Swiper Configuration -->\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 800,\r\n                \"autoplay\": { \"delay\": 4000 },\r\n                \"effect\": \"coverflow\",\r\n                \"grabCursor\": true,\r\n                \"centeredSlides\": true,\r\n                \"slidesPerView\": \"auto\",\r\n                \"coverflowEffect\": {\r\n                  \"rotate\": 50,\r\n                  \"stretch\": 0,\r\n                  \"depth\": 100,\r\n                  \"modifier\": 1,\r\n                  \"slideShadows\": true\r\n                },\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"navigation\": {\r\n                  \"nextEl\": \".swiper-button-next\",\r\n                  \"prevEl\": \".swiper-button-prev\"\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": { \"slidesPerView\": 1, \"spaceBetween\": 10 },\r\n                  \"768\": { \"slidesPerView\": 2, \"spaceBetween\": 20 },\r\n                  \"1024\": { \"slidesPerView\": 3, \"spaceBetween\": 30 }\r\n                }\r\n              }\r\n            </script>\r\n\r\n\r\n            <!-- ========== SWIPER SLIDES ========== -->\r\n            <div class=\"swiper-wrapper\">\r\n\r\n              <!-- Vehicle 1 -->\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Bussiness</div>\r\n                    <img src=\"assets/img/vehicles/1.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                            <div class=\"info-item\">\r\n                                <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage :  1 Large | 2 Medium\r\n                            </div>\r\n\r\n                            <div class=\"info-item\">\r\n                                <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 3\r\n                            </div>\r\n\r\n                            <div class=\"info-item\">\r\n                                <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                            </div>\r\n                        </div>\r\n\r\n                        <button class=\"vehicle-overlay-btn\"\r\n                            data-vehicle=\'{\r\n                                \"title\":\"Private Bussiness\",\r\n                                \"img\":\"assets/img/vehicles/1.png\",\r\n                                \"desc\":\"Perfect for business travelers and couples seeking premium comfort.\",\r\n                                \"features\":[\"Leather Seats\",\"USB Charging\",\"Complimentary Water\",\"Climate Control\"],\r\n                                \"capacity\":\"1–3 passengers\"\r\n                                }\'>\r\n                            View Details\r\n                        </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Express</div>\r\n                    <img src=\"assets/img/vehicles/2.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 1 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 3\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Express\",\r\n                          \"img\":\"assets/img/vehicles/2.png\",\r\n                          \"desc\":\"Ideal for families and groups needing space and luxury.\",\r\n                          \"features\":[\"Premium Leather\",\"Rear AC\",\"Spacious Seats\",\"All-Terrain Safety\"],\r\n                          \"capacity\":\"1–3 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Coach (45 Seater)</div>\r\n                    <img src=\"assets/img/vehicles/3.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>LuggagePax : 25 Large | 20 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 45\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Coach (45 Seater)\",\r\n                          \"img\":\"assets/img/vehicles/3.png\",\r\n                          \"desc\":\"Perfect for corporate travel with extra luggage capacity.\",\r\n                          \"features\":[\"Conference Seating\",\"Tinted Windows\",\"USB Ports\",\"Large Trunk\"],\r\n                          \"capacity\":\"45 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private SUV</div>\r\n                    <img src=\"assets/img/vehicles/4.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 2 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 2\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private SUV\",\r\n                          \"img\":\"assets/img/vehicles/4.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–2 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Business</div>\r\n                    <img src=\"assets/img/vehicles/1.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 1 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 3\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Business\",\r\n                          \"img\":\"assets/img/vehicles/1.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–3 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Premium</div>\r\n                    <img src=\"assets/img/vehicles/9.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 1 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 3\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Premium\",\r\n                          \"img\":\"assets/img/vehicles/9.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–3 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Coach (35 Seater)</div>\r\n                    <img src=\"assets/img/vehicles/8.jpg\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Pax : 10 Large | 15 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 35\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Coach (35 Seater)\",\r\n                          \"img\":\"assets/img/vehicles/8.jpg\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"12 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private MPV</div>\r\n                    <img src=\"assets/img/vehicles/5.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 2 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 6\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private MPV\",\r\n                          \"img\":\"assets/img/vehicles/5.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–2 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Van</div>\r\n                    <img src=\"assets/img/vehicles/6.jpg\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 5 Large | 2 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 6\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Van\",\r\n                          \"img\":\"assets/img/vehicles/6.jpg\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1-6 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <div class=\"vehicle-name\">Private Mini Bus</div>\r\n                    <img src=\"assets/img/vehicles/7.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-suitcase\" style=\"color:#25D366; margin-right:6px;\"></i>Luggage : 10 Large | 6 Medium\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-users\" style=\"color:#25D366; margin-right:6px;\"></i>Passengers : 12\r\n                          </div>\r\n                          <div class=\"info-item\">\r\n                            <i class=\"fa fa-check-circle\" style=\"color:#25D366; margin-right:6px;\"></i>Free Cancellation\r\n                          </div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Private Mini Bus\",\r\n                          \"img\":\"assets/img/vehicles/7.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1-12 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n            <div class=\"swiper-button-prev\"></div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>\r\n\r\n    <style>\r\n        .vehicle-name {\r\n            position: absolute;\r\n            left: 50%;\r\n            transform: translateX(-50%);\r\n            background: rgb(241 241 241 / 88%);\r\n            color: #fff;\r\n            padding: 6px 15px;\r\n            border-radius: 6px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            opacity: 0;\r\n            transition: 0.3s ease-in-out;\r\n            z-index: 4;\r\n            width: 100%;\r\n            color: #000080;\r\n            text-align: center;\r\n        }\r\n\r\n        .gallery-img-overlay:hover .vehicle-name {\r\n            opacity: 1;\r\n            transform: translate(-50%, 0);\r\n        }\r\n\r\n      .vehicle-info {\r\n        position: absolute;\r\n        background: rgb(241 241 241 / 88%);\r\n        padding: 12px 18px;\r\n        border-radius: 10px;\r\n        width: 100%;\r\n        text-align: left;\r\n        color: #fff;\r\n        opacity: 0;\r\n        transform: translateY(10px);\r\n        transition: 0.35s ease;\r\n        display: flex;\r\n        flex-direction: column;\r\n        gap: 6px;\r\n        font-size: 14px;\r\n        z-index: 3;\r\n      }\r\n\r\n      .gallery-img-overlay:hover .vehicle-info {\r\n        opacity: 1;\r\n        transform: translateY(0px);\r\n      }\r\n\r\n      .info-item {\r\n        display: flex;\r\n        align-items: center;\r\n        gap: 6px;\r\n        font-weight: 500;\r\n        color: #010b40;\r\n      }\r\n\r\n      .gallery-img-overlay:hover img {\r\n        transform: scale(1.05);\r\n        opacity: 1;\r\n      }\r\n\r\n      .gallery-img-overlay:hover .vehicle-overlay-btn {\r\n        transform: translateY(-100px);\r\n      }\r\n\r\n      .passenger-count, .cancellation, .suitcases {\r\n        position: absolute;\r\n        bottom: 0;\r\n        background: rgba(0, 0, 0, 1);\r\n        color: #fff;\r\n        padding: 6px 14px;\r\n        border-radius: 6px;\r\n        font-size: 14px;\r\n        font-weight: 600;\r\n        opacity: 0;\r\n        transform: translateY(10px);\r\n        transition: 0.3s ease;\r\n      }\r\n\r\n      .gallery-img-overlay:hover .passenger-count, .cancellation, .suitcases {\r\n        opacity: 1;\r\n        transform: translateY(0px);\r\n      }\r\n\r\n      .vehicle-overlay-btn {\r\n        padding: 10px 22px;\r\n        background: #ffffff38;\r\n        color: #fff;\r\n        border: none;\r\n        font-size: 16px;\r\n        border-radius: 8px;\r\n        font-weight: 600;\r\n        cursor: pointer;\r\n        box-shadow: 0 4px 15px rgba(0,0,0,0.3);\r\n        transition: 0.3s ease;\r\n        width: 100%;\r\n        position: relative;\r\n        z-index: 2;\r\n      }\r\n\r\n      .vehicle-overlay {\r\n        position: absolute;\r\n        inset: 0;\r\n        display: flex;\r\n        flex-direction: column;\r\n        justify-content: end;\r\n        align-items: center;\r\n      }\r\n    </style>\r\n\r\n    <div class=\"modal fade\" id=\"vehicleModal\" tabindex=\"-1\">\r\n      <div class=\"modal-dialog modal-lg modal-dialog-centered\">\r\n        <div class=\"modal-content\">\r\n\r\n          <div class=\"modal-header\">\r\n            <h5 class=\"modal-title\" id=\"vehicleTitle\"></h5>\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\"></button>\r\n          </div>\r\n\r\n          <div class=\"modal-body\">\r\n            <img id=\"vehicleImg\" class=\"modal-vehicle-img mb-3\">\r\n            <p id=\"vehicleDesc\"></p>\r\n\r\n            <h6 class=\"mt-3\">Features:</h6>\r\n            <ul id=\"vehicleFeatures\"></ul>\r\n\r\n            <p class=\"mt-2 mb-0\"><strong>Capacity: </strong><span id=\"vehicleCapacity\"></span></p>\r\n          </div>\r\n\r\n          <div class=\"modal-footer\">\r\n            <button class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n            <a href=\"[[~7]]\" class=\"btn btn-primary\">Book Now</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <script>\r\n      document.querySelectorAll(\".vehicle-overlay-btn\").forEach(btn => {\r\n        btn.addEventListener(\"click\", () => {\r\n          const v = JSON.parse(btn.getAttribute(\"data-vehicle\"));\r\n\r\n          document.getElementById(\"vehicleTitle\").innerText = v.title;\r\n          document.getElementById(\"vehicleImg\").src = v.img;\r\n          document.getElementById(\"vehicleDesc\").innerText = v.desc;\r\n\r\n          const list = document.getElementById(\"vehicleFeatures\");\r\n          list.innerHTML = \"\";\r\n          v.features.forEach(f => {\r\n            list.innerHTML += `<li class=\"vehicle-feature\">${f}</li>`;\r\n          });\r\n\r\n          document.getElementById(\"vehicleCapacity\").innerText = v.capacity;\r\n\r\n          new bootstrap.Modal(document.getElementById(\"vehicleModal\")).show();\r\n        });\r\n      });\r\n    </script>\r\n    <!-- /Gallery Slider Section -->\r\n\r\n\r\n    <!-- Featured Destinations Section -->\r\n    <section id=\"featured-destinations\" class=\"featured-destinations section pt-3\">\r\n      <div class=\"container section-title\">\r\n        <h2>Featured Destinations</h2>\r\n        <div><span>Most Popular</span> <span class=\"description-title\">Destinations</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-lg-6\">\r\n            <div class=\"featured-destination\">\r\n              <div class=\"destination-overlay\">\r\n                <img src=\"assets/img/travel/destination-3.jpg\" alt=\"Tropical Paradise\" class=\"img-fluid\">\r\n                <div class=\"destination-info\">\r\n                  <a href=\"[[~3]]\" class=\"explore-btn\">\r\n                    <span>Explore Now</span>\r\n                    <i class=\"bi bi-arrow-right\"></i>\r\n                  </a>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"col-lg-6\">\r\n              <div class=\"row g-3\">\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-7.jpg\" alt=\"Mountain Adventure\" class=\"img-fluid\">\r\n                      <div class=\"badge-offer\">Most Visited</div>\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                        <h4>Kandy</h4>\r\n                        <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                        <p class=\"brief\">Nestled in lush hills, Kandy enchants visitors with its sacred Temple of the Tooth, serene lakes, and timeless cultural heritage.</p>\r\n                        <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-11.jpg\" alt=\"Cultural Heritage\" class=\"img-fluid\">\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                      <h4>Sigiriya</h4>\r\n                      <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                      <p class=\"brief\">Climb the majestic Lion Rock and explore ancient frescoes, royal gardens, and the breathtaking legacy of a lost kingdom.</p>\r\n                      <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-16.jpg\" alt=\"Safari Experience\" class=\"img-fluid\">\r\n                      <div class=\"badge-offer limited\">Scenic</div>\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                      <h4>Nuwara Eliya</h4>\r\n                      <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                      <p class=\"brief\">Wander through lush tea plantations, misty hills, and charming colonial cottages in Sri Lanka’s “Little England.”</p>\r\n                      <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>\r\n    <!-- /Featured Destinations Section -->\r\n\r\n\r\n    <!-- Testimonials Home Section -->\r\n    <section id=\"testimonials-home\" class=\"testimonials-home section\">\r\n      <div class=\"container section-title\" data-aos=\"fade-up\">\r\n        <h2>Testimonials</h2>\r\n        <div><span>What Customers</span> <span class=\"description-title\">Say</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n          <div class=\"swiper init-swiper\">\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 600,\r\n                \"autoplay\": {\r\n                  \"delay\": 5000\r\n                },\r\n                \"slidesPerView\": \"auto\",\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": {\r\n                    \"slidesPerView\": 1,\r\n                    \"spaceBetween\": 40\r\n                  },\r\n                  \"1200\": {\r\n                    \"slidesPerView\": 3,\r\n                    \"spaceBetween\": 1\r\n                  }\r\n                }\r\n              }\r\n            </script>\r\n\r\n            <div class=\"swiper-wrapper\">\r\n              [[!GoogleReviews]]\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n          </div>\r\n      </div>\r\n    </section>\r\n    <!-- /Testimonials Home Section -->\r\n     \r\n  </main>\r\n\r\n</body>\r\n', 1, 2, 0, 1, 1, 1, 1762926553, 1, 1777880577, 0, 0, 0, 0, 0, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(2, 'document', 'About', '', '', 'about', '', 1, 0, 0, 0, 0, '', '<body class=\"about-page\">\r\n    <main class=\"main\">\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-1.png);\">\r\n            <div class=\"container position-relative\">\r\n                <h1>About Us</h1>\r\n                <p>SR Transfers delivers reliable and affordable airport and city transfers across Sri Lanka — with modern vehicles, skilled drivers, and a focus on comfort and safety.</p>\r\n                <nav class=\"breadcrumbs\">\r\n                    <ol>\r\n                        <li><a href=\"[[~1]]\">Home</a></li>\r\n                        <li class=\"current\">About</li>\r\n                    </ol>\r\n                </nav>\r\n            </div>\r\n        </div>\r\n\r\n        <!-- Travel About Section -->\r\n        <section id=\"travel-about\" class=\"travel-about section\">\r\n            <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-8 mx-auto text-center mb-3\">\r\n                        <div class=\"intro-content\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                            <h2>Seamless Airport Transfers,<br>Every Time You Travel</h2>\r\n                            <p class=\"lead\">Dedicated to providing reliable and comfortable airport transfers, we ensure your journey starts and ends smoothly, whether for business or leisure.</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"row align-items-center mb-5\">\r\n                    <div class=\"col-lg-5\" data-aos=\"zoom-in\" data-aos-delay=\"100\">\r\n                        <div class=\"hero-image\">\r\n                            <img src=\"assets/img/travel/showcase-7.webp\" class=\"img-fluid\" alt=\"Travel Adventure\">\r\n                            <div class=\"floating-stats\">\r\n                                <div class=\"stat-item\">\r\n                                    <span class=\"number\">50K+</span>\r\n                                    <span class=\"label\">Transfers Annualy</span>\r\n                                </div>\r\n                                <div class=\"stat-item\">\r\n                                    <span class=\"number\">150K+</span>\r\n                                    <span class=\"label\">Happy Travelers Annualy</span>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-6 offset-lg-1\" data-aos=\"slide-left\" data-aos-delay=\"400\">\r\n                        <div class=\"story-content mt-2\">\r\n                            <div class=\"story-badge\">\r\n                                <i class=\"bi bi-compass\"></i>\r\n                                <span>Our Story</span>\r\n                            </div>\r\n                            <h3 class=\"about-title\">Where Reliability Meets Comfort</h3>\r\n                            <p>What began as a small shuttle service for local travelers has grown into a trusted network of airport transfer specialists. We focus on ensuring every passenger enjoys a smooth, punctual, and stress-free journey from door to terminal and back.</p>\r\n                            <p>Our team of professional drivers and logistics experts work tirelessly to provide safe, comfortable, and timely transfers, whether you\'re traveling for business or leisure. We take pride in exceeding expectations and making every ride seamless.</p>\r\n\r\n                            <div class=\"mission-box\">\r\n                                <div class=\"mission-icon\">\r\n                                    <i class=\"bi bi-globe-americas\"></i>\r\n                                </div>\r\n                                <div class=\"mission-text\">\r\n                                    <h4>Our Vision</h4>\r\n                                    <p>\"To redefine airport transfers by combining comfort, reliability, and exceptional service for every traveler.\"</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-12\">\r\n                        <div class=\"mt-4 features-grid\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                            <div class=\"section-header text-center mb-5\">\r\n                                <h3 class=\"about-title\">What Makes Us Different</h3>\r\n                                <p>Six pillars that define every adventure we create</p>\r\n                            </div>\r\n\r\n                            <div class=\"row g-4\">\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-people\"></i> -->\r\n                                                 <img src=\"assets\\img\\about-us\\1.png\">\r\n                                            </div>\r\n                                            <h4>Professional Drivers</h4>\r\n                                            <p>Trained, licensed, and courteous drivers</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Our drivers are fully trained and background-checked, ensuring a safe, punctual, and comfortable ride every time you travel to or from the airport.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-heart-pulse\"></i> -->\r\n                                                <img src=\"assets\\img\\about-us\\2.png\">\r\n                                            </div>\r\n                                            <h4>Safety First</h4>\r\n                                            <p>Rigorous safety protocols on every ride</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>From vehicle maintenance to real-time monitoring and emergency support, your safety and peace of mind are our top priorities.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"500\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-recycle\"></i> -->\r\n                                                <img src=\"assets\\img\\about-us\\3.png\">\r\n                                            </div>\r\n                                            <h4>Punctual & Reliable</h4>\r\n                                            <p>Always on time, rain or shine</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>We track flights in real-time and adjust schedules as needed, ensuring you never miss a departure or wait unnecessarily after arrival.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-sliders\"></i> -->\r\n                                                <img src=\"assets\\img\\about-us\\4.png\">\r\n                                            </div>\r\n                                            <h4>Comfortable Vehicles</h4>\r\n                                            <p>Clean, modern, and well-maintained cars</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Travel in comfort with spacious, climate-controlled vehicles equipped with Wi-Fi, charging ports, and luggage space for all your needs.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-shield-check\"></i> -->\r\n                                                <img src=\"assets\\img\\about-us\\5.png\">\r\n                                            </div>\r\n                                            <h4>Flexible Scheduling</h4>\r\n                                            <p>We adapt to your flight times</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Late flight? Early arrival? No problem. We offer flexible pick-up and drop-off options to fit your exact travel schedule.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"500\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <!-- <i class=\"bi bi-star\"></i> -->\r\n                                                <img src=\"assets\\img\\about-us\\6.png\">\r\n                                            </div>\r\n                                            <h4>Exceptional Experience</h4>\r\n                                            <p>Service that goes the extra mile</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>From personalized greetings to assistance with luggage, we aim to make every airport transfer smooth, enjoyable, and stress-free.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                \r\n                <div class=\"row mt-5\">\r\n                    <div class=\"col-lg-12\">\r\n                        <div class=\"cta-banner\" data-aos=\"zoom-in\" data-aos-delay=\"300\">\r\n                            <div class=\"cta-overlay\">\r\n                                <div class=\"cta-content\">\r\n                                    <h3 class=\"about-title\" style=\"color:white;\">Your Next Adventure Awaits</h3>\r\n                                    <p>Join thousands of travelers who\'ve discovered the difference authentic, responsible travel makes.</p>\r\n                                    <div class=\"cta-buttons\">\r\n                                        <a href=\"[[~3]]\" class=\"btn btn-primary me-3\">Explore Destinations</a>\r\n                                        <a href=\"[[~5]]\" class=\"btn btn-outline\">Contact Us</a>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n        <!-- /Travel About Section -->\r\n    </main>\r\n</body>', 1, 2, 1, 1, 1, 1, 1762927892, 1, 1772004651, 0, 0, 0, 1762927920, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(3, 'document', 'Destinations', '', '', 'destinations', '', 1, 0, 0, 0, 0, '', '<body class=\"destinations-page\">\r\n\r\n<main class=\"main\">\r\n\r\n  <!-- Page Title -->\r\n  <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase.png);\">\r\n    <div class=\"container position-relative\">\r\n      <h1>Destinations</h1>\r\n      <p>Discover top destinations and unforgettable experiences, whether for adventure, relaxation, or culture.</p>\r\n      <nav class=\"breadcrumbs\">\r\n        <ol>\r\n          <li><a href=\"[[~1]]\">Home</a></li>\r\n          <li class=\"current\">Destinations</li>\r\n        </ol>\r\n      </nav>\r\n    </div>\r\n  </div>\r\n  <!-- End Page Title -->\r\n\r\n  <!-- Travel Destinations Section -->\r\n  <section id=\"travel-destinations\" class=\"travel-destinations section\">\r\n    <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-8 mx-auto text-center\">\r\n          <h2 style=\"font-weight:700; margin-bottom:16px;\">Uncover Captivating Sri Lankan Experiences</h2>\r\n          <p class=\"mb-5\">From golden beaches to misty mountains and ancient temples, explore Sri Lanka\'s diverse beauty. Let us craft unforgettable journeys tailored to your dreams.</p>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"isotope-layout\" data-default-filter=\"*\" data-layout=\"masonry\" data-sort=\"original-order\">\r\n        <div class=\"row gy-4 isotope-container\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n\r\n          <!-- Destination Tiles -->\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-urban\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/1.jpg\" alt=\"Colombo, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag modern\">City Life</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Colombo</h4>\r\n                    <p>The vibrant capital, blending colonial charm, bustling markets, and modern amenities.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-mountain filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/2.jpg\" alt=\"Kandy, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag cultural\">Heritage</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Kandy</h4>\r\n                    <p>Home to the sacred Temple of the Tooth and serene hill country vistas.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-historical filter-mountain\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/3.jpg\" alt=\"Sigiriya, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag ancient\">Cultural</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Sigiriya</h4>\r\n                    <p>The ancient rock fortress with stunning frescoes and panoramic landscapes.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-mountain\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/4.jpg\" alt=\"Nuwara Eliya, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag scenic\">Hill Country</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Nuwara Eliya</h4>\r\n                    <p>Lush tea plantations, rolling hills, and cool mountain air.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-wildlife\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/5.jpg\" alt=\"Yala National Park, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag wildlife\">Safari</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Yala National Park</h4>\r\n                    <p>Spot leopards, elephants, and exotic wildlife on thrilling safaris.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/6.jpeg\" alt=\"Galle, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag heritage\">Coastal</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Galle</h4>\r\n                    <p>Colonial architecture, a charming fort, and scenic beaches along the southern coast.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/7.jpg\" alt=\"Anuradhapura, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag heritage\">Sacred City</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Anuradhapura</h4>\r\n                    <p>Ancient stupas and royal ruins from Sri Lanka’s first kingdom.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/8.jpg\" alt=\"Trincomalee, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag scenic\">Beach</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Trincomalee</h4>\r\n                    <p>Pristine beaches and vibrant marine life on the eastern coast.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/9.jpg\" alt=\"Ella, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag ancient\">Scenic</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Ella</h4>\r\n                    <p>Famous for the Nine Arches Bridge, tea trails, and breathtaking views.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n          <!-- End Destination Tiles -->\r\n\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"row mt-3\">\r\n        <div class=\"col-lg-10 mx-auto text-center\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n          <div class=\"planning-assistance\">\r\n            <div class=\"assistance-content\">\r\n              <h3>Let Our Team Help Curate Your Perfect Sri Lankan Expedition</h3>\r\n              <p>Unsure which destination aligns with your travel dreams? Our travel experts design bespoke itineraries tailored to you.</p>\r\n              <div class=\"assistance-actions\">\r\n                <a href=\"[[~5]]\" class=\"btn btn-primary\">Contact Us</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n    </div>\r\n  </section>\r\n  <!-- /Travel Destinations Section -->\r\n</main>\r\n\r\n<!-- Destination Modal -->\r\n<div id=\"destinationModal\" class=\"modal\">\r\n  <div class=\"modal-content small-modal\">\r\n    <button class=\"modal-close-btn\">&times;</button>\r\n\r\n    <!-- Tabs -->\r\n    <div class=\"modal-tabs\">\r\n      <button class=\"tab-btn active\" data-tab=\"images\">Images</button>\r\n      <button class=\"tab-btn\" data-tab=\"details\">Details</button>\r\n      <button class=\"tab-btn\" data-tab=\"map\">Map</button>\r\n    </div>\r\n\r\n    <div class=\"modal-body\">\r\n      <!-- Images Tab -->\r\n      <div class=\"tab-content active\" id=\"tab-images\">\r\n        <div id=\"modal-carousel\" class=\"carousel\">\r\n          <button class=\"carousel-prev\">&#10094;</button>\r\n          <img id=\"modal-image\" class=\"img-fluid\">\r\n          <button class=\"carousel-next\">&#10095;</button>\r\n        </div>\r\n      </div>\r\n\r\n      <!-- Details Tab -->\r\n      <div class=\"tab-content\" id=\"tab-details\">\r\n        <h2 id=\"modal-title\"></h2>\r\n        <p id=\"modal-description\"></p>\r\n        <p id=\"modal-tags\" class=\"fw-bold\"></p>\r\n        <hr>\r\n        <h4>Best Time to Visit</h4>\r\n        <p id=\"modal-best-time\"></p>\r\n        <h4>Top Attractions</h4>\r\n        <ul id=\"modal-attractions\"></ul>\r\n        <h4>Things to Do</h4>\r\n        <ul id=\"modal-things\"></ul>\r\n        <h4>Weather Summary</h4>\r\n        <p id=\"modal-weather\"></p>\r\n        <a href=\"[[~7]]\" id=\"plan-trip-btn\" class=\"btn btn-primary w-100 mt-3\">Plan Your Trip</a>\r\n      </div>\r\n\r\n      <!-- Map Tab -->\r\n      <div class=\"tab-content\" id=\"tab-map\">\r\n        <div id=\"modal-map\" style=\"width:100%;height:280px;border-radius:10px;\"></div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<script>\r\n  const modal = document.getElementById(\"destinationModal\");\r\n  const modalTitle = document.getElementById(\"modal-title\");\r\n  const modalImage = document.getElementById(\"modal-image\");\r\n  const modalDescription = document.getElementById(\"modal-description\");\r\n  const modalTags = document.getElementById(\"modal-tags\");\r\n  const modalMap = document.getElementById(\"modal-map\");\r\n  const planTripBtn = document.getElementById(\"plan-trip-btn\");\r\n  const closeBtn = document.querySelector(\".modal-close-btn\");\r\n  const tabButtons = document.querySelectorAll(\".tab-btn\");\r\n  const tabContents = document.querySelectorAll(\".tab-content\");\r\n  const carouselPrev = document.querySelector(\".carousel-prev\");\r\n  const carouselNext = document.querySelector(\".carousel-next\");\r\n  let currentImages = [];\r\n  let currentIndex = 0;\r\n\r\n  const destinationsData = {\r\n    \"Colombo\": {\r\n      images: [\r\n        \"assets/img/destinations/1.jpg\",\r\n        \"assets/img/destinations/colombo-2.jpg\",\r\n        \"assets/img/destinations/colombo-3.jpg\"\r\n      ],\r\n      description: \"The vibrant capital, blending colonial charm, bustling markets, and modern amenities.\",\r\n      tags: \"City Life\",\r\n      bestTime: \"December to March\",\r\n      attractions: [\r\n        \"Galle Face Green\",\r\n        \"Gangaramaya Temple\",\r\n        \"Colombo National Museum\",\r\n        \"Lotus Tower\",\r\n        \"Dutch Hospital Shopping Precinct\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Enjoy sunset at Galle Face\",\r\n        \"Try street food & seafood\",\r\n        \"Explore Colombo’s colonial heritage\",\r\n        \"Go shopping at One Galle Face\",\r\n        \"Take a tuk-tuk city tour\"\r\n      ],\r\n      weather: \"Warm & humid year-round, with occasional rain.\",\r\n      mapCoords: { lat: 6.9271, lng: 79.8612 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Kandy\": {\r\n      images: [\r\n        \"assets/img/destinations/2.jpg\",\r\n        \"assets/img/destinations/kandy-2.jpg\",\r\n        \"assets/img/destinations/kandy-3.jpg\"\r\n      ],\r\n      description: \"Home to the sacred Temple of the Tooth and serene hill country vistas.\",\r\n      tags: \"Heritage\",\r\n      bestTime: \"December to April\",\r\n      attractions: [\r\n        \"Temple of the Tooth\",\r\n        \"Kandy Lake\",\r\n        \"Royal Botanical Gardens\",\r\n        \"Bahirawakanda Buddha Statue\",\r\n        \"Kandy Cultural Show\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Watch a traditional cultural dance\",\r\n        \"Visit the Temple of the Tooth\",\r\n        \"Explore tea museums\",\r\n        \"Take a scenic walk around the lake\"\r\n      ],\r\n      weather: \"Mild and pleasant; cooler evenings.\",\r\n      mapCoords: { lat: 7.2906, lng: 80.6337 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Sigiriya\": {\r\n      images: [\r\n        \"assets/img/destinations/3.jpg\",\r\n        \"assets/img/destinations/sigiriya-2.jpg\",\r\n        \"assets/img/destinations/sigiriya-3.jpg\"\r\n      ],\r\n      description: \"The ancient rock fortress with stunning frescoes and panoramic landscapes.\",\r\n      tags: \"Cultural\",\r\n      bestTime: \"January to April\",\r\n      attractions: [\r\n        \"Sigiriya Rock Fortress\",\r\n        \"Pidurangala Rock\",\r\n        \"Sigiriya Museum\",\r\n        \"Elephant Rock Viewpoint\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Sunrise hike at Pidurangala\",\r\n        \"Climb Sigiriya Rock\",\r\n        \"Explore ancient frescoes\",\r\n        \"Cycle through the village\"\r\n      ],\r\n      weather: \"Hot and dry climate; ideal for outdoor activities.\",\r\n      mapCoords: { lat: 7.9570, lng: 80.7603 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Nuwara Eliya\": {\r\n      images: [\r\n        \"assets/img/destinations/4.jpg\",\r\n        \"assets/img/destinations/nuwaraeliya-2.jpg\",\r\n        \"assets/img/destinations/nuwaraeliya-3.jpg\"\r\n      ],\r\n      description: \"Lush tea plantations, rolling hills, and cool mountain air.\",\r\n      tags: \"Hill Country\",\r\n      bestTime: \"February to April\",\r\n      attractions: [\r\n        \"Gregory Lake\",\r\n        \"Horton Plains\",\r\n        \"Devon Falls\",\r\n        \"Victoria Park\",\r\n        \"Pedro Tea Estate\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Visit a tea factory\",\r\n        \"Boat ride on Gregory Lake\",\r\n        \"Hike Horton Plains & World\'s End\",\r\n        \"Explore colonial buildings\"\r\n      ],\r\n      weather: \"Cold and misty; warm clothing recommended.\",\r\n      mapCoords: { lat: 6.9497, lng: 80.7891 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Yala National Park\": {\r\n      images: [\r\n        \"assets/img/destinations/5.jpg\",\r\n        \"assets/img/destinations/yala-2.jpg\",\r\n        \"assets/img/destinations/yala-3.jpg\"\r\n      ],\r\n      description: \"Spot leopards, elephants, and exotic wildlife on thrilling safaris.\",\r\n      tags: \"Wildlife / Safari\",\r\n      bestTime: \"February to July\",\r\n      attractions: [\r\n        \"Leopard Safari\",\r\n        \"Elephant Watching\",\r\n        \"Bird Watching\",\r\n        \"Kumana National Park\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Early morning safari\",\r\n        \"Photography tours\",\r\n        \"Camping under the stars\",\r\n        \"Jeep safaris\"\r\n      ],\r\n      weather: \"Hot, dry climate; peak wildlife visibility in dry months.\",\r\n      mapCoords: { lat: 6.3669, lng: 81.4994 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Galle\": {\r\n      images: [\r\n        \"assets/img/destinations/6.jpeg\",\r\n        \"assets/img/destinations/galle-2.jpg\",\r\n        \"assets/img/destinations/galle-3.jpg\"\r\n      ],\r\n      description: \"Colonial architecture, a charming fort, and scenic beaches along the southern coast.\",\r\n      tags: \"Coastal / Heritage\",\r\n      bestTime: \"December to April\",\r\n      attractions: [\r\n        \"Galle Fort\",\r\n        \"Jungle Beach\",\r\n        \"Unawatuna Beach\",\r\n        \"Lighthouse\",\r\n        \"Dutch Hospital\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Walk the fort walls\",\r\n        \"Snorkeling at Unawatuna\",\r\n        \"Beach relaxation\",\r\n        \"Visit art galleries\"\r\n      ],\r\n      weather: \"Warm and sunny; occasional coastal winds.\",\r\n      mapCoords: { lat: 6.0329, lng: 80.2168 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Anuradhapura\": {\r\n      images: [\r\n        \"assets/img/destinations/7.jpg\",\r\n        \"assets/img/destinations/anuradhapura-2.jpg\",\r\n        \"assets/img/destinations/anuradhapura-3.jpg\"\r\n      ],\r\n      description: \"Ancient stupas and royal ruins from Sri Lanka’s first kingdom.\",\r\n      tags: \"Sacred City / Heritage\",\r\n      bestTime: \"April to September\",\r\n      attractions: [\r\n        \"Ruwanweliseya\",\r\n        \"Jaya Sri Maha Bodhi\",\r\n        \"Abhayagiri Monastery\",\r\n        \"Twin Ponds (Kuttam Pokuna)\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Cycle through ancient ruins\",\r\n        \"Visit sacred temples\",\r\n        \"Explore ancient irrigation systems\"\r\n      ],\r\n      weather: \"Hot but dry; perfect for exploring historical sites.\",\r\n      mapCoords: { lat: 8.3114, lng: 80.4037 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Trincomalee\": {\r\n      images: [\r\n        \"assets/img/destinations/8.jpg\",\r\n        \"assets/img/destinations/trinco-2.jpg\",\r\n        \"assets/img/destinations/trinco-3.jpg\"\r\n      ],\r\n      description: \"Pristine beaches and vibrant marine life on the eastern coast.\",\r\n      tags: \"Beach / Scenic\",\r\n      bestTime: \"May to October\",\r\n      attractions: [\r\n        \"Nilaveli Beach\",\r\n        \"Marble Beach\",\r\n        \"Koneswaram Temple\",\r\n        \"Pigeon Island\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Snorkeling at Pigeon Island\",\r\n        \"Whale watching\",\r\n        \"Sunbathing on Nilaveli Beach\"\r\n      ],\r\n      weather: \"Hot, sunny, and perfect for water activities.\",\r\n      mapCoords: { lat: 8.5874, lng: 81.2152 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Ella\": {\r\n      images: [\r\n        \"assets/img/destinations/9.jpg\",\r\n        \"assets/img/destinations/ella-2.jpg\",\r\n        \"assets/img/destinations/ella-3.jpg\"\r\n      ],\r\n      description: \"Famous for the Nine Arches Bridge, tea trails, and breathtaking views.\",\r\n      tags: \"Scenic / Hill Country\",\r\n      bestTime: \"February to April\",\r\n      attractions: [\r\n        \"Nine Arches Bridge\",\r\n        \"Ella Rock\",\r\n        \"Little Adam’s Peak\",\r\n        \"Ravana Falls\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Hike Ella Rock\",\r\n        \"Experience the iconic train journey\",\r\n        \"Ziplining & adventure activities\",\r\n        \"Visit cafes with valley views\"\r\n      ],\r\n      weather: \"Cool mornings, warm afternoons, light showers possible.\",\r\n      mapCoords: { lat: 6.8667, lng: 81.0469 },\r\n      planLink: \"[[~7]]\"\r\n    }\r\n  };\r\n\r\n  // Open modal\r\n  document.querySelectorAll(\".destination-tile\").forEach(tile => {\r\n    tile.addEventListener(\"click\", (e) => {\r\n      e.preventDefault();\r\n      const title = tile.querySelector(\".destination-info h4\").innerText;\r\n      const data = destinationsData[title];\r\n      if (!data) return;\r\n\r\n      modalTitle.innerText = title;\r\n      currentImages = data.images;\r\n      currentIndex = 0;\r\n      modalImage.src = currentImages[0];\r\n      modalDescription.innerText = data.description;\r\n      modalTags.innerHTML = `<strong>Category:</strong> ${data.tags}`;\r\n      planTripBtn.href = data.planLink;\r\n\r\n      document.getElementById(\"modal-best-time\").innerText = data.bestTime || \"N/A\";\r\n      document.getElementById(\"modal-attractions\").innerHTML = data.attractions ? data.attractions.map(a => `<li>${a}</li>`).join(\'\') : \'\';\r\n      document.getElementById(\"modal-things\").innerHTML = data.thingsToDo ? data.thingsToDo.map(t => `<li>${t}</li>`).join(\'\') : \'\';\r\n      document.getElementById(\"modal-weather\").innerText = data.weather || \"N/A\";\r\n\r\n      // Map Tab Click\r\n      document.querySelector(\"[data-tab=\'map\']\").onclick = () => {\r\n        if (window.google) {\r\n          let map = new google.maps.Map(modalMap, { center: data.mapCoords, zoom: 12 });\r\n          new google.maps.Marker({ position: data.mapCoords, map });\r\n        }\r\n      };\r\n\r\n      modal.style.display = \"flex\";\r\n    });\r\n  });\r\n\r\n  // Carousel\r\n  carouselPrev.onclick = () => {\r\n    currentIndex = (currentIndex - 1 + currentImages.length) % currentImages.length;\r\n    modalImage.src = currentImages[currentIndex];\r\n  };\r\n  carouselNext.onclick = () => {\r\n    currentIndex = (currentIndex + 1) % currentImages.length;\r\n    modalImage.src = currentImages[currentIndex];\r\n  };\r\n\r\n  // Close modal\r\n  closeBtn.onclick = () => modal.style.display = \"none\";\r\n  window.onclick = (e) => { if (e.target === modal) modal.style.display = \"none\"; };\r\n\r\n  // Tabs\r\n  tabButtons.forEach(btn => {\r\n    btn.addEventListener(\"click\", () => {\r\n      tabButtons.forEach(b => b.classList.remove(\"active\"));\r\n      btn.classList.add(\"active\");\r\n      tabContents.forEach(c => c.classList.remove(\"active\"));\r\n      document.getElementById(\"tab-\" + btn.dataset.tab).classList.add(\"active\");\r\n    });\r\n  });\r\n</script>\r\n\r\n<!-- Google Maps API -->\r\n<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU\"></script>\r\n', 1, 2, 2, 1, 1, 1, 1762928116, 1, 1763363034, 0, 0, 0, 1762928100, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(4, 'document', 'Gallery', '', '', 'gallery', '', 1, 0, 0, 0, 0, '', '<body class=\"gallery-page\">\r\n  <main class=\"main\">\r\n\r\n    <!-- Page Title -->\r\n    <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-8.webp);\">\r\n      <div class=\"container position-relative\">\r\n        <h1>Gallery</h1>\r\n        <p>Esse dolorum voluptatum ullam est sint nemo et est ipsa porro placeat quibusdam quia assumenda numquam molestias.</p>\r\n        <nav class=\"breadcrumbs\">\r\n          <ol>\r\n            <li><a href=\"index.html\">Home</a></li>\r\n            <li class=\"current\">Gallery</li>\r\n          </ol>\r\n        </nav>\r\n      </div>\r\n    </div><!-- End Page Title -->\r\n\r\n    <!-- Gallery Slider Section -->\r\n    <section id=\"gallery-slider\" class=\"gallery-slider section\">\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n\r\n        <div class=\"gallery-container\">\r\n          <div class=\"swiper init-swiper\">\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 800,\r\n                \"autoplay\": {\r\n                  \"delay\": 4000\r\n                },\r\n                \"effect\": \"coverflow\",\r\n                \"grabCursor\": true,\r\n                \"centeredSlides\": true,\r\n                \"slidesPerView\": \"auto\",\r\n                \"coverflowEffect\": {\r\n                  \"rotate\": 50,\r\n                  \"stretch\": 0,\r\n                  \"depth\": 100,\r\n                  \"modifier\": 1,\r\n                  \"slideShadows\": true\r\n                },\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"navigation\": {\r\n                  \"nextEl\": \".swiper-button-next\",\r\n                  \"prevEl\": \".swiper-button-prev\"\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": {\r\n                    \"slidesPerView\": 1,\r\n                    \"spaceBetween\": 10\r\n                  },\r\n                  \"768\": {\r\n                    \"slidesPerView\": 2,\r\n                    \"spaceBetween\": 20\r\n                  },\r\n                  \"1024\": {\r\n                    \"slidesPerView\": 3,\r\n                    \"spaceBetween\": 30\r\n                  }\r\n                }\r\n              }\r\n            </script>\r\n            <div class=\"swiper-wrapper\">\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-3.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-3.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-1.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-1.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-5.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-5.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-7.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-7.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-2.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-2.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-4.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-4.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-6.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-6.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-8.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-8.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n            <div class=\"swiper-button-prev\"></div>\r\n          </div>\r\n        </div>\r\n\r\n      </div>\r\n\r\n    </section><!-- /Gallery Slider Section -->\r\n\r\n\r\n  </main>\r\n\r\n</body>', 1, 2, 3, 1, 1, 1, 1762928317, 1, 1762928707, 0, 0, 0, 1762928340, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(5, 'document', 'Contact', '', '', 'contact', '', 1, 0, 0, 0, 0, '', '\r\n<body class=\"contact-page\">\r\n\r\n    <main class=\"main\">\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-4.png);\">\r\n            <div class=\"container position-relative\">\r\n                <h1>Contact</h1>\r\n                <p>Book your ride with SR Transfers — safe, reliable, and hassle-free transport across Sri Lanka. Reach out today!</p>\r\n                <nav class=\"breadcrumbs\">\r\n                    <ol>\r\n                        <li><a href=\"[[~1]]\">Home</a></li>\r\n                        <li class=\"current\">Contact</li>\r\n                    </ol>\r\n                </nav>\r\n            </div>\r\n        </div>\r\n\r\n        <!-- Contact Section -->\r\n        <section id=\"contact\" class=\"contact section\">\r\n            <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                <div class=\"row gy-4 mb-5\">\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                    <div class=\"contact-info-box\">\r\n                        <div class=\"icon-box\">\r\n                        <i class=\"bi bi-geo-alt\"></i>\r\n                        </div>\r\n                        <div class=\"info-content\">\r\n                        <h4>Our Office</h4>\r\n                        <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" style=\"text-decoration: none; color: inherit;\">\r\n                            SR Transfers (Pvt) Ltd<br>\r\n                            371-5,<br>\r\n                            Negombo - Colombo Main Rd,<br>\r\n                            Seeduwa Sri Lanka\r\n                        </a>\r\n                        </div>\r\n                    </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                        <div class=\"contact-info-box\">\r\n                            <div class=\"icon-box\">\r\n                            <i class=\"bi bi-envelope\"></i>\r\n                            </div>\r\n                            <div class=\"info-content\">\r\n                            <h4>Email Us</h4>\r\n                            <a href=\"mailto:transfers@srilankarentacar.com\">transfers@srilankarentacar.com</a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                        <div class=\"contact-info-box\">\r\n                            <div class=\"icon-box\">\r\n                            <i class=\"bi bi-phone\"></i>\r\n                            </div>\r\n                            <div class=\"info-content\">\r\n                            <h4>Contact Us</h4>\r\n                            <a href=\"tel:+94767989878\">+94 76 798 9878</a><br>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"map-section\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.9719503939377!2d79.87315007581863!3d7.129241115826212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1b39f14eb6f%3A0x5a33982010ddd7e6!2sSR%20Transfers%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1762930732266!5m2!1sen!2slk\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" width=\"100%\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n            </div>\r\n\r\n            <div class=\"container form-container-overlap\">\r\n                <div class=\"row justify-content-center\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                    <div class=\"col-lg-10\">\r\n                        <div class=\"contact-form-wrapper\">\r\n                            <h2 class=\"text-center mb-4\">Get in Touch</h2>\r\n\r\n                            <div id=\"successMessage\" class=\"alert alert-success text-center\" style=\"display: none;\">\r\n                                Your message has been sent successfully!\r\n                            </div>\r\n\r\n                            <form id=\"contact-form\" action=\"[[~9]]\" method=\"POST\">\r\n                                <div class=\"row g-3\">\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-person\"></i>\r\n                                                <input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"First Name\" required>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-envelope\"></i>\r\n                                                <input type=\"email\" class=\"form-control\" name=\"email\" placeholder=\"Email Address\" required>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-phone\"></i>\r\n                                                <input type=\"text\" class=\"form-control\" name=\"phone\" placeholder=\"Contact Number\" required>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-text-left\"></i>\r\n                                                <input type=\"text\" class=\"form-control\" name=\"subject\" placeholder=\"Subject\" required>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-12\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-chat-dots message-icon\"></i>\r\n                                                <textarea class=\"form-control\" name=\"message\" placeholder=\"Write Message...\" style=\"height: 180px\" required></textarea>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <input type=\"hidden\" name=\"submit\" value=\"1\">\r\n\r\n                                    <div class=\"col-12 text-center\">\r\n                                        <button type=\"submit\" class=\"btn btn-primary btn-submit\">SEND MESSAGE</button>\r\n                                    </div>\r\n\r\n                                </div>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n    </main>\r\n\r\n    <script>\r\n        document.getElementById(\'contact-form\').addEventListener(\'submit\', async function (e) {\r\n            e.preventDefault();\r\n\r\n            const form = e.target;\r\n            const formData = new FormData(form);\r\n\r\n            try {\r\n                const res = await fetch(form.action, {\r\n                    method: \'POST\',\r\n                    body: formData,\r\n                    headers: {\r\n                        \'Accept\': \'application/json\'\r\n                    }\r\n                });\r\n\r\n                const text = await res.text();\r\n                let data = {};\r\n\r\n                try {\r\n                    data = JSON.parse(text);\r\n                } catch (err) {\r\n                    console.error(\'Invalid JSON response:\', text);\r\n                    alert(\'Server returned invalid response.\');\r\n                    return;\r\n                }\r\n\r\n                if (res.ok && data.ok === true) {\r\n                    form.reset();\r\n\r\n                    const box = document.getElementById(\'successMessage\');\r\n                    if (box) box.style.display = \'block\';\r\n\r\n                    setTimeout(() => {\r\n                        box.style.display = \'none\';\r\n                    }, 3000);\r\n                } else {\r\n                    alert(data.error || \'Failed to submit message.\');\r\n                }\r\n\r\n            } catch (err) {\r\n                console.error(err);\r\n                alert(\'Error submitting the form.\');\r\n            }\r\n        });\r\n    </script>\r\n\r\n</body>', 1, 2, 4, 1, 1, 1, 1762929628, 1, 1777881644, 0, 0, 0, 1762929600, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(6, 'document', 'FAQ', '', '', 'faq', '', 1, 0, 0, 0, 0, '', '<style>\r\n    .faq-wrapper {\r\n        display: grid;\r\n        grid-template-columns: 1fr 2fr;\r\n        gap: 40px;\r\n        align-items: start;\r\n    }\r\n\r\n    .faq-sidebar {\r\n        position: sticky;\r\n        top: 20px;\r\n    }\r\n\r\n    .faq-image {\r\n        border-radius: 12px;\r\n        margin-bottom: 30px;\r\n    }\r\n\r\n    .faq-image img {\r\n        width: 100%;\r\n        height: auto;\r\n        border-radius: 8px;\r\n    }\r\n\r\n    .contact-box {\r\n        background: #008cad;\r\n        color: white;\r\n        padding: 30px;\r\n        border-radius: 12px;\r\n        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);\r\n    }\r\n\r\n    .contact-box h3 {\r\n        font-size: 1.5rem;\r\n        margin-bottom: 15px;\r\n        display: flex;\r\n        align-items: center;\r\n        gap: 10px;\r\n        color: white;\r\n        font-weight: 700;\r\n    }\r\n\r\n    .contact-box p {\r\n        margin-bottom: 20px;\r\n        opacity: 0.95;\r\n    }\r\n\r\n    .btn-contact {\r\n        display: inline-block;\r\n        background: white;\r\n        color: #667eea;\r\n        padding: 12px 30px;\r\n        border-radius: 25px;\r\n        text-decoration: none;\r\n        font-weight: 600;\r\n        transition: transform 0.3s ease;\r\n    }\r\n\r\n    .btn-contact:hover {\r\n        transform: translateY(-2px);\r\n        box-shadow: 0 4px 12px rgba(255, 255, 255, 0.3);\r\n    }\r\n\r\n    /* Tabs */\r\n    .faq-tabs {\r\n        background: white;\r\n        border-radius: 12px;\r\n        padding: 30px;\r\n        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.08);\r\n    }\r\n\r\n    .nav-pills {\r\n        display: flex;\r\n        gap: 10px;\r\n        margin-bottom: 30px;\r\n        border-bottom: 2px solid #e9ecef;\r\n        padding-bottom: 10px;\r\n        flex-wrap: wrap;\r\n    }\r\n\r\n    .nav-pills button {\r\n        background: transparent;\r\n        border: none;\r\n        padding: 12px 24px;\r\n        border-radius: 8px;\r\n        cursor: pointer;\r\n        font-size: 0.95rem;\r\n        font-weight: 500;\r\n        color: #6c757d;\r\n        transition: all 0.3s ease;\r\n    }\r\n\r\n    .nav-pills button:hover {\r\n        background: #f8f9fa;\r\n        color: #495057;\r\n    }\r\n\r\n    .nav-pills button.active {\r\n        background: #008cad;\r\n        color: white;\r\n    }\r\n\r\n    /* Accordion */\r\n    .tab-content {\r\n        display: none;\r\n    }\r\n\r\n    .tab-content.active {\r\n        display: block;\r\n    }\r\n\r\n    .faq-item {\r\n        margin-bottom: 15px;\r\n        border: 1px solid #e9ecef;\r\n        border-radius: 8px;\r\n        overflow: hidden;\r\n        transition: box-shadow 0.3s ease;\r\n    }\r\n\r\n    .faq-item:hover {\r\n        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n    }\r\n\r\n    .accordion-header {\r\n        margin: 0;\r\n    }\r\n\r\n    .accordion-button {\r\n        width: 100%;\r\n        background: white;\r\n        border: none;\r\n        padding: 18px 20px;\r\n        text-align: left;\r\n        font-size: 1rem;\r\n        font-weight: 600;\r\n        color: #333;\r\n        cursor: pointer;\r\n        display: flex;\r\n        justify-content: space-between;\r\n        align-items: center;\r\n        transition: background 0.3s ease;\r\n    }\r\n\r\n    .accordion-button:hover {\r\n        background: #f8f9fa;\r\n    }\r\n\r\n    .accordion-button::after {\r\n        content: \'+\';\r\n        font-size: 1.5rem;\r\n        font-weight: 300;\r\n        transition: transform 0.3s ease;\r\n    }\r\n\r\n    .accordion-button.active::after {\r\n        content: \'−\';\r\n        transform: rotate(180deg);\r\n    }\r\n\r\n    .accordion-body {\r\n        padding: 0 20px;\r\n        max-height: 0;\r\n        overflow: hidden;\r\n        transition: all 0.3s ease;\r\n        background: #f8f9fa;\r\n    }\r\n\r\n    .accordion-body.show {\r\n        padding: 20px;\r\n        max-height: 500px;\r\n        padding-top: 0;\r\n    }\r\n\r\n    .accordion-body p {\r\n        margin: 0;\r\n        color: #6c757d;\r\n        line-height: 1.7;\r\n    }\r\n\r\n    .accordion-body strong {\r\n        color: #495057;\r\n    }\r\n\r\n    /* Responsive Design */\r\n    @media (max-width: 968px) {\r\n        .faq-wrapper {\r\n            grid-template-columns: 1fr;\r\n        }\r\n\r\n        .faq-sidebar {\r\n            position: static;\r\n        }\r\n\r\n        .page-title h1 {\r\n            font-size: 2rem;\r\n        }\r\n\r\n        .nav-pills {\r\n            flex-direction: column;\r\n        }\r\n\r\n        .nav-pills button {\r\n            width: 100%;\r\n            text-align: center;\r\n        }\r\n    }\r\n\r\n    @media (max-width: 576px) {\r\n        .page-title {\r\n            padding: 60px 0 40px;\r\n        }\r\n\r\n        .page-title h1 {\r\n            font-size: 1.75rem;\r\n        }\r\n\r\n        .faq-section {\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .faq-tabs {\r\n            padding: 20px;\r\n        }\r\n    }\r\n</style>\r\n\r\n<body>\r\n    <main>\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-3.png);\">\r\n            <div class=\"container position-relative\">\r\n                    <h1>Frequently Asked Questions</h1>\r\n                    <p>Got questions? We\'ve got answers! Learn everything you need to know about our services.</p>\r\n                    <nav class=\"breadcrumbs\">\r\n                        <ol>\r\n                            <li><a href=\"[[~1]]\">Home</a></li>\r\n                            <li class=\"current\">FAQ</li>\r\n                        </ol>\r\n                    </nav>\r\n                </div>\r\n            </div>\r\n            <!-- FAQ Section -->\r\n            <section class=\"faq-section\">\r\n                <div class=\"container\">\r\n                    <div class=\"faq-wrapper\">\r\n                        <!-- Sidebar -->\r\n                        <div class=\"faq-sidebar\">\r\n                            <div class=\"faq-image\">\r\n                                <img src=\"assets/img/illustration/illustration-5.webp\" alt=\"FAQ Illustration\">\r\n                            </div>\r\n                            <div class=\"contact-box\">\r\n                                <h3>\r\n                                    <span>🎧</span> Need Assistance?\r\n                                </h3>\r\n                                <p>Have questions about bookings, routes, or pricing? Our team is here to help you with prompt and reliable support.</p>\r\n                                <a href=\"[[~5]]\" class=\"btn-contact\">Connect with Support</a>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"faq-tabs\">\r\n                            <!-- Tabs -->\r\n                            <div class=\"nav-pills\">\r\n                                <button class=\"tab-button active\" data-tab=\"general\">General Inquiries</button>\r\n                                <button class=\"tab-button\" data-tab=\"booking\">Booking & Reservations</button>\r\n                                <button class=\"tab-button\" data-tab=\"pricing\">Payments & Policies</button>\r\n                            </div>\r\n\r\n                            <!-- GENERAL TAB -->\r\n                            <div id=\"general-tab\" class=\"tab-content active\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q1\">How do I book a transfer?</button>\r\n                                    <div class=\"accordion-body\" id=\"q1\">\r\n                                        <p>You can book a transfer easily through our website by selecting your pickup location, destination, date, and preferred vehicle type.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q2\">What types of vehicles are available?</button>\r\n                                    <div class=\"accordion-body\" id=\"q2\">\r\n                                        <p>We offer a range of vehicles including sedans, SUVs, vans, and luxury cars to suit your travel needs. You can choose your preferred vehicle when booking your transfer.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q3\">Can I cancel or reschedule my booking?</button>\r\n                                    <div class=\"accordion-body\" id=\"q3\">\r\n                                        <p>Yes, you can cancel or reschedule your booking. Please contact our support team at least 24 hours before your scheduled pickup to avoid any cancellation fees.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q4\">Is my personal data safe with SR Transfers?</button>\r\n                                    <div class=\"accordion-body\" id=\"q4\">\r\n                                        <p>Yes. We take data privacy seriously. Your personal and payment information is securely stored and used only for booking purposes. We never share your data with third parties.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q5\">How do I contact the driver or support team?</button>\r\n                                    <div class=\"accordion-body\" id=\"q5\">\r\n                                        <p>Once your booking is confirmed, you will receive the driver’s contact details. For any assistance, our support team is available via phone, email, or the “Connect with Support” button on our website.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!-- BOOKING TAB -->\r\n                            <div id=\"booking-tab\" class=\"tab-content\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q6\">How far in advance should I book my transfer?</button>\r\n                                    <div class=\"accordion-body\" id=\"q6\">\r\n                                        <p>We recommend booking your transfer at least 24 hours in advance to ensure vehicle availability and timely confirmation. However, same-day bookings are accepted based on availability.</p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q7\">Can I change my pickup time or location after booking?</button>\r\n                                    <div class=\"accordion-body\" id=\"q7\">\r\n                                        <p>Yes, you can modify your pickup time or location by contacting our support team. Please inform us at least 12 hours before your scheduled pickup to update your booking without any extra charges.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!-- PRICING TAB -->\r\n                            <div id=\"pricing-tab\" class=\"tab-content\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q8\">What payment methods do you accept?</button>\r\n                                    <div class=\"accordion-body\" id=\"q8\">\r\n                                        <p>We currently accept <strong>cash payments only</strong>. Please make your payment directly to the driver at the end of your transfer.</p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q9\">What is your cancellation and refund policy?</button>\r\n                                    <div class=\"accordion-body\" id=\"q9\">\r\n                                        <p>You can cancel your booking at least <strong>24 hours before</strong> your scheduled pickup time with no charges. Since we accept cash payments only, no online refund process is required. If you cancel after the driver has been dispatched, a small service fee may apply.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </section>\r\n        </div>\r\n    </main>\r\n\r\n    <script>\r\n        // TAB SWITCHING\r\n        document.querySelectorAll(\'.tab-button\').forEach(btn => {\r\n            btn.addEventListener(\'click\', () => {\r\n                document.querySelectorAll(\'.tab-button\').forEach(b => b.classList.remove(\'active\'));\r\n                document.querySelectorAll(\'.tab-content\').forEach(c => c.classList.remove(\'active\'));\r\n\r\n                btn.classList.add(\'active\');\r\n                document.getElementById(btn.dataset.tab + \'-tab\').classList.add(\'active\');\r\n            });\r\n        });\r\n\r\n        document.querySelectorAll(\'.accordion-button\').forEach(btn => {\r\n            btn.addEventListener(\'click\', () => {\r\n                const tab = btn.closest(\'.tab-content\');\r\n                const body = document.getElementById(btn.dataset.target);\r\n\r\n                // Close others\r\n                tab.querySelectorAll(\'.accordion-button\').forEach(b => b !== btn && b.classList.remove(\'active\'));\r\n                tab.querySelectorAll(\'.accordion-body\').forEach(b => b !== body && b.classList.remove(\'show\'));\r\n\r\n                // Toggle clicked\r\n                btn.classList.toggle(\'active\');\r\n                body.classList.toggle(\'show\');\r\n            });\r\n        });\r\n    </script>\r\n</body>\r\n', 1, 2, 5, 1, 1, 1, 1762929996, 1, 1763378901, 0, 0, 0, 1762930200, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(7, 'document', 'fleet', '', '', 'fleet', '', 1, 0, 0, 0, 0, '', '<div id=\"toast\"></div>\r\n\r\n<body class=\"destinations-page\">\r\n\r\n  <main class=\"main\">\r\n\r\n    <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-5.png);\">\r\n      <div class=\"container position-relative\">\r\n        <h1>Our Fleet</h1>\r\n        <p>Explore our selection of reliable, comfortable vehicles for any trip.</p>\r\n        <nav class=\"breadcrumbs\">\r\n          <ol>\r\n            <li><a href=\"[[~1]]\">Home</a></li>\r\n            <li class=\"current\">Fleet</li>\r\n          </ol>\r\n        </nav>\r\n      </div>\r\n    </div>\r\n\r\n    <section id=\"fleet\" style=\"padding:5rem 0; background: #f8f9fa;\">\r\n        <div class=\"container\">\r\n            <div class=\"row fleet-row\">\r\n\r\n                <div class=\"col-md-6 vehicle-detail\">\r\n                    <div class=\"vehicle-list d-grid\" style=\"gap: 20px; display:flex; flex-direction:column;\">\r\n                        [[!ShowVehicleData]]\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"col-md-6\">\r\n                    [[!ShowSearchData]]\r\n                    <div id=\"selectedVehicle\" class=\"mt-4\" style=\"margin-top:2%;\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js\"></script>\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.28/jspdf.plugin.autotable.min.js\"></script>\r\n\r\n    <style>\r\n        #selectedVehicle .card {\r\n            background: #fff;\r\n            border-radius: 15px;\r\n            box-shadow: 0 8px 20px rgba(0,0,0,0.1);\r\n            padding: 7px;\r\n            transition: transform 0.3s ease, box-shadow 0.3s ease;\r\n        }\r\n        #selectedVehicle .card:hover {\r\n            transform: translateY(-3px);\r\n            box-shadow: 0 12px 25px rgba(0,0,0,0.15);\r\n        }\r\n\r\n        #selectedVehicle .vehicle-info p {\r\n            margin: 5px 0;\r\n            font-size: 14px;\r\n            margin-bottom: 0 !important;\r\n        }\r\n\r\n        .vehicle-selected-info {\r\n            display: flex;\r\n            gap: 15px;\r\n            align-items: flex-start;\r\n        }\r\n        @media (max-width: 768px) {\r\n            .vehicle-selected-info {\r\n                flex-direction: column;\r\n                align-items: center;\r\n            }\r\n        }\r\n        .vehicle-selected-info img {\r\n            width: 22rem;\r\n            max-width: 100%;\r\n            height: auto;\r\n            border-radius: 8px;\r\n        }\r\n        .booking-form {\r\n            background: #ffffff;\r\n            border-radius: 15px;\r\n            box-shadow: 0 6px 20px rgba(0,0,0,0.1);\r\n            padding: 18px;\r\n            margin-top: 20px;\r\n        }\r\n        .booking-form h5 {\r\n            margin-bottom: 10px !important;\r\n            font-weight: 600;\r\n            color: #333;\r\n        }\r\n        .booking-form .form-group {\r\n            margin-bottom: 15px;\r\n        }\r\n        .booking-form input {\r\n            width: 100%;\r\n            padding: 10px 12px;\r\n            border-radius: 10px;\r\n            border: 1px solid #ddd;\r\n            outline: none;\r\n            transition: all 0.2s ease-in-out;\r\n        }\r\n        .booking-form input:focus {\r\n            border-color: #007bff;\r\n            box-shadow: 0 0 5px rgba(0,123,255,0.3);\r\n        }\r\n        .booking-form button {\r\n            background: linear-gradient(180deg, #0a277d, #1b289da3);\r\n            color: #fff;\r\n            font-weight: 600;\r\n            border: none;\r\n            padding: 12px;\r\n            border-radius: 10px;\r\n            width: 100%;\r\n            transition: background 0.3s ease, transform 0.2s ease;\r\n        }\r\n        .booking-form button:hover {\r\n            background: linear-gradient(135deg, #0056d2, #003d99);\r\n            transform: translateY(-2px);\r\n        }\r\n        .form-row {\r\n            display: flex;\r\n            gap: 10px;\r\n        }\r\n        @media (max-width: 768px) {\r\n            .form-row {\r\n                flex-direction: column;\r\n            }\r\n        }\r\n    </style>\r\n\r\n    <script>\r\n        document.addEventListener(\"DOMContentLoaded\", () => {\r\n\r\n            const distanceDisplay = document.getElementById(\"distanceResult\");\r\n            const returnPickup = document.getElementById(\"returnPickup\");\r\n            const returnDropoff = document.getElementById(\"returnDropoff\");\r\n\r\n            // Update total price & collect add-ons\r\n            function updateTotalPrice() {\r\n                const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);\r\n                const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);\r\n                const pricePerKm = window.selectedVehiclePricePerKm || 0;\r\n\r\n                let total = (mainDistance + returnDistance) * pricePerKm;\r\n\r\n                const addons = [];\r\n                document.querySelectorAll(\".addon:checked\").forEach(cb => {\r\n                    const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\r\n                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;\r\n                    const rate = parseFloat(cb.dataset.rate || 0);\r\n                    const addonTotal = rate * qty;\r\n                    total += addonTotal;\r\n\r\n                    addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });\r\n                });\r\n\r\n                const totalPriceInput = document.getElementById(\"totalPrice\");\r\n                if (totalPriceInput) totalPriceInput.value = total ? \"USD \" + total.toFixed(2) : \"\";\r\n\r\n                return { total, mainDistance, returnDistance, addons };\r\n            }\r\n\r\n            // Vehicle selection listener\r\n            document.body.addEventListener(\"click\", function(e) {\r\n                if (!e.target.classList.contains(\"select-vehicle-btn\")) return;\r\n\r\n                e.preventDefault();\r\n\r\n                const btn = e.target;\r\n                const vehicleCard = btn.closest(\".vehicle-card\");\r\n                const vehicleId = btn.dataset.id;\r\n                const name = btn.dataset.name;\r\n                const pricePerKm = parseFloat(btn.dataset.price || 0);\r\n                window.selectedVehiclePricePerKm = pricePerKm;\r\n\r\n                document.querySelectorAll(\".vehicle-card\").forEach(card => card.classList.remove(\"selected\"));\r\n                if (vehicleCard) vehicleCard.classList.add(\"selected\");\r\n\r\n                const pickupLocation = document.querySelector(\"#pickupLocation\")?.value || \"\";\r\n                const dropoffLocation = document.querySelector(\"#dropoffLocation\")?.value || \"\";\r\n                const travelDate = document.querySelector(\"#date\")?.value || \"\";\r\n\r\n                const { total, mainDistance, returnDistance, addons } = updateTotalPrice();\r\n\r\n                // Render booking form\r\n                const container = document.getElementById(\"selectedVehicle\");\r\n                container.innerHTML = `\r\n                    <form class=\"booking-form\" id=\"bookingForm\">\r\n                        <h5>Enter Your Details</h5>\r\n                        <div class=\"form-group\">\r\n                            <input type=\"text\" name=\"customerName\" placeholder=\"Full Name\" required>\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <input type=\"email\" name=\"email\" placeholder=\"Email Address\" required>\r\n                        </div>\r\n                        <div class=\"form-group\" style=\"display: flex; gap: 10px; flex: 1;\">\r\n                            <div style=\"flex: 0 0 40%;\">[[!ShowCountries]]</div>\r\n                            <input type=\"tel\" name=\"phone\" placeholder=\"Phone Number\" required style=\"flex: 1; padding: 10px; border-radius: 6px;\">\r\n                        </div>\r\n                        <div class=\"form-row\">\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"text\" name=\"flightNumber\" placeholder=\"Flight Number\" required>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"form-row\">\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"number\" name=\"numPassengers\" min=\"1\" placeholder=\"Number of Passengers\" required>\r\n                            </div>\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"number\" name=\"numLuggage\" min=\"0\" placeholder=\"Number of Suitcases\" required>\r\n                            </div>\r\n                        </div>\r\n                        <button type=\"submit\">Submit Booking</button>\r\n                    </form>\r\n                `;\r\n\r\n                // Form submit handler\r\n                document.getElementById(\"bookingForm\").addEventListener(\"submit\", async function(ev) {\r\n                    ev.preventDefault();\r\n                    const submitBtn = this.querySelector(\'button[type=\"submit\"]\');\r\n                    if (submitBtn) {\r\n                        submitBtn.disabled = true;\r\n                        submitBtn.innerText = \"Submitting...\";\r\n                        submitBtn.style.backgroundColor = \"#6c757d\"; \r\n                    }\r\n\r\n                    if (\r\n                        !document.querySelector(\"#pickupLocation\")?.value.trim() ||\r\n                        !document.querySelector(\"#dropoffLocation\")?.value.trim() ||\r\n                        !document.querySelector(\"#date\")?.value.trim()\r\n                    ) {\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = \"#dc3545\";\r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 3000);\r\n                        };\r\n\r\n                        showToast(\"⚠️ Please enter pickup, dropoff and date before booking!\", false);\r\n                        return;\r\n                    }\r\n\r\n                    // Get latest distances from your Google Maps distance script\r\n                    const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);\r\n                    const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);\r\n                    const pricePerKm = window.selectedVehiclePricePerKm || 0;\r\n\r\n                    // Compute main, return, total\r\n                    let mainPrice = mainDistance * pricePerKm;\r\n                    let returnPrice = returnDistance * pricePerKm;\r\n                    let total = mainPrice + returnPrice;\r\n\r\n                    // Collect add-ons again\r\n                    const addons = [];\r\n                    document.querySelectorAll(\".addon:checked\").forEach(cb => {\r\n                        const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\r\n                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;\r\n                        const rate = parseFloat(cb.dataset.rate || 0);\r\n                        const addonTotal = rate * qty;\r\n                        total += addonTotal;\r\n                        addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });\r\n                    });\r\n\r\n                    const selectedCountryCode = this.country?.value || \"\";\r\n                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;\r\n\r\n                    const formData = {\r\n                        vehicle_id: vehicleId,\r\n                        vehicle_category: name,\r\n                        customer_name: this.customerName.value,\r\n                        email: this.email.value,\r\n                        phone: fullPhone,\r\n                        flight_number: this.flightNumber.value,\r\n                        total_price: total,\r\n                        number_of_passengers: this.numPassengers.value,\r\n                        number_of_luggage: this.numLuggage.value,\r\n                        main_distance_km: mainDistance,\r\n                        main_price: mainPrice,\r\n                        return_distance_km: returnDistance,\r\n                        return_price: returnPrice,\r\n                        addons: addons,\r\n                        pickup_location: document.querySelector(\"#pickupLocation\")?.value || \"\",\r\n                        dropoff_location: document.querySelector(\"#dropoffLocation\")?.value || \"\",\r\n                        return_pickup_location: returnPickup?.value || \"\",\r\n                        return_dropoff_location: returnDropoff?.value || \"\",\r\n                        travel_datetime: document.querySelector(\"#date\")?.value || \"\",\r\n                        return_datetime: document.querySelector(\"#returnDate\")?.value || \"\",   \r\n                    };\r\n\r\n                    try {\r\n                        const response = await fetch(\"assets/includes/save_booking.php\", {\r\n                            method: \"POST\",\r\n                            headers: { \"Content-Type\": \"application/json\" },\r\n                            body: JSON.stringify(formData)\r\n                        });\r\n\r\n                        if (!response.ok) throw new Error(await response.text());\r\n                        const result = await response.json();\r\n                        console.log(\"Server response:\", result);\r\n\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = success ? \"#28a745\" : \"#dc3545\"; \r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 3000);\r\n                        };\r\n\r\n                        if (result.success) {\r\n                            const bookingNumber = result.booking_number;\r\n\r\n                            showToast(\"✅ Booking saved successfully!\");\r\n\r\n                            const { jsPDF } = window.jspdf;\r\n                            const doc = new jsPDF({ format: \"a5\", unit: \"pt\" });\r\n\r\n                            const pageWidth = doc.internal.pageSize.getWidth();\r\n                            const marginX = 25;\r\n                            let currentY = 15; \r\n\r\n                            // === Header ===\r\n                            const imgUrl = \"assets/img/logo-pdf.png\";\r\n                            doc.addImage(imgUrl, \"PNG\", pageWidth / 2 - 35, currentY, 70, 35);\r\n                            currentY += 38; \r\n\r\n                            doc.setDrawColor(0, 0, 128);\r\n                            doc.setLineWidth(1);\r\n                            doc.line(marginX, currentY, pageWidth - marginX, currentY);\r\n                            currentY += 12; \r\n\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(11);\r\n                            doc.text(\"SR Transfers, Sri Lanka\", pageWidth / 2, currentY, { align: \"center\" });\r\n                            currentY += 12;\r\n\r\n                            doc.setFont(\"cambria\", \"normal\");\r\n                            doc.setFontSize(8);\r\n                            doc.text(\"No. 37/15, Negombo Road, Seeduwa, Sri Lanka\", pageWidth / 2, currentY, { align: \"center\" });\r\n                            currentY += 12;\r\n                            doc.text(\"Phone: +94 76 798 9878 | transfers@srilankarentacar.com\", pageWidth / 2, currentY, { align: \"center\" });\r\n                            currentY += 12;\r\n                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, currentY, { align: \"center\" });\r\n                            currentY += 10;\r\n\r\n                            doc.setDrawColor(0, 0, 128);\r\n                            doc.setLineWidth(0.8);\r\n                            doc.line(marginX, currentY, pageWidth - marginX, currentY);\r\n                            currentY += 12; \r\n\r\n                            // === Invoice title ===\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(13);\r\n                            doc.text(\"Invoice\", pageWidth / 2, currentY, { align: \"center\" });\r\n                            currentY += 6; \r\n\r\n                            // === Table ===\r\n                            const tableColumn = [\"Description\", \"Value\"];\r\n                            const tableRows = Object.keys(formData)\r\n                                .filter(k => k !== \"vehicle_id\" && formData[k])\r\n                                .map(k => {\r\n                                    let v = formData[k];\r\n                                    if (k === \"addons\" && Array.isArray(v)) {\r\n                                        v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(\", \");\r\n                                    }\r\n                                    if ([\"price\", \"total_price\", \"main_price\", \"return_price\"].includes(k) && v) {\r\n                                        v = `$ ${parseFloat(v).toFixed(2)}`;\r\n                                    }\r\n                                    const label = k.replace(/_/g, \" \").replace(/\\b\\w/g, c => c.toUpperCase());\r\n                                    return [label, v || \"\"];\r\n                                });\r\n\r\n                            doc.autoTable({\r\n                                head: [tableColumn],\r\n                                body: tableRows,\r\n                                startY: currentY,\r\n                                theme: \"grid\",\r\n\r\n                                styles: { fontSize: 8, cellPadding: 2, font: \"cambria\",  textColor: [0, 0, 0] },\r\n                                headStyles: { fillColor: [10, 105, 168], textColor: 255, halign: \"center\", fontStyle: \"bold\", font: \"cambria\" },\r\n                                columnStyles: {\r\n                                    0: { cellWidth: 100 },\r\n                                    1: { cellWidth: pageWidth - 100 - 2 * marginX }\r\n                                },\r\n                                margin: { left: marginX, right: marginX },\r\n                                tableLineWidth: 0.5\r\n                            });\r\n\r\n                            let tableEndY = doc.lastAutoTable.finalY + 20;\r\n                            currentY = tableEndY;\r\n\r\n                            const maxWidth = pageWidth - 2 * marginX;\r\n\r\n                            // =========================\r\n                            // SECTION TITLE\r\n                            // =========================\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(10);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"TERMS & CONDITIONS\", marginX, currentY);\r\n                            currentY += 10;\r\n\r\n                            // underline\r\n                            doc.setDrawColor(0, 0, 0);\r\n                            doc.setLineWidth(0.6);\r\n                            doc.line(marginX, currentY, pageWidth - marginX, currentY);\r\n                            currentY += 12;\r\n\r\n                            doc.setFont(\"cambria\", \"normal\");\r\n                            doc.setFontSize(9);\r\n\r\n                            function bullet(text) {\r\n                                const bulletPoint = \"• \";\r\n                                const wrapped = doc.splitTextToSize(text, maxWidth - 10);\r\n\r\n                                // red bullet\r\n                                doc.setTextColor(220, 0, 0);\r\n                                doc.text(bulletPoint, marginX, currentY);\r\n\r\n                                // black text\r\n                                doc.setTextColor(0, 0, 0);\r\n                                doc.text(wrapped, marginX + 10, currentY);\r\n\r\n                                currentY += wrapped.length * 11 + 6;\r\n                            }\r\n\r\n                            bullet(\"Complimentary Waiting Time: First hour of waiting is free of charge. Thereafter, a waiting fee of $15 per hour applies.\");\r\n                            bullet(\"Airport Meet & Greet: One of our Airport Representatives will be at the arrival hall (in front of the Information Center) holding a signboard with your name near Exit Gate SL.\");\r\n                            bullet(\"Contact Information: Please contact our airport representative at +94 76 669 9877. They will hand you over to the driver.\");\r\n\r\n                            currentY += 8;\r\n                            doc.setDrawColor(0, 0, 0);\r\n                            doc.setLineWidth(0.6);\r\n                            doc.line(marginX, currentY, pageWidth - marginX, currentY);\r\n                            currentY += 18;\r\n\r\n                            // =========================\r\n                            // TOTAL CHARGE\r\n                            // =========================\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(10);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"TOTAL CHARGE : \", marginX, currentY);\r\n\r\n                            doc.setTextColor(200, 0, 0);\r\n                            doc.text(`$ ${parseFloat(formData.total_price || 0).toFixed(2)}`, pageWidth - marginX, currentY, {\r\n                                align: \"right\"\r\n                            });\r\n\r\n                            currentY += 20;\r\n\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(9);\r\n                            doc.setTextColor(3, 26, 56);\r\n                            // doc.text(\"This serves as your official booking confirmation.\", marginX, currentY);\r\n\r\n                            currentY += 20;\r\n\r\n                            // === Footer ===\r\n                            doc.setFont(\"cambria\", \"bold\");\r\n                            doc.setFontSize(9);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"Thank you for booking with SR Transfers!\", pageWidth / 2, doc.internal.pageSize.getHeight() - 20, { align: \"center\" });\r\n\r\n                            doc.save(`${formData.customer_name}_invoice.pdf`);\r\n                            const pdfBlob = doc.output(\"blob\");\r\n                            const formDataPdf = new FormData();\r\n                            formDataPdf.append(\"invoice\", pdfBlob, `${bookingNumber}.pdf`);\r\n                            formDataPdf.append(\"booking_number\", bookingNumber);\r\n\r\n                            await fetch(\"assets/includes/save_invoice.php\", {\r\n                                method: \"POST\",\r\n                                body: formDataPdf\r\n                            });\r\n                            this.reset();\r\n                            setTimeout(() => location.reload(), 1000);\r\n                        } else {\r\n                            showToast(\"❌ Error: \" + result.message, false);\r\n                        }\r\n\r\n                    } catch (err) {\r\n                        console.error(\"Error submitting booking:\", err);\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = success ? \"#28a745\" : \"#dc3545\"; \r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 1000);\r\n                        };\r\n                        showToast(\"⚠️ Something went wrong while submitting the booking.\", false);\r\n                    }  finally {\r\n                        if (submitBtn) {\r\n                            submitBtn.disabled = false;\r\n                            submitBtn.innerText = \"Submit Booking\";\r\n                        }\r\n                    }\r\n                });\r\n            });\r\n        });\r\n    </script>\r\n\r\n</main>\r\n</body>\r\n</html>\r\n', 1, 2, 6, 1, 1, 1, 1763092038, 1, 1764072988, 0, 0, 0, 1763092020, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(9, 'document', 'Contact API', '', '', 'contact-api', '', 1, 0, 0, 0, 0, '', '[[!contactForm]]', 1, 0, 7, 1, 0, 1, 1770742889, 1, 1777881760, 0, 0, 0, 1770742860, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 7, '', 0, 0, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'footer', '', 0, 0, 0, '<div class=\"toast-container position-fixed bottom-0 end-0 p-3\" style=\"z-index: 20000;\">\n    <div id=\"toast1\" class=\"toast text-bg-dark border-0\">\n        <div class=\"d-flex\">\n            <div class=\"toast-body\">⏱️ No extra charges for flight delays — we wait for you for FREE!</div>\n            <button type=\"button\" class=\"btn-close btn-close-white ms-auto me-2\" data-bs-dismiss=\"toast\"></button>\n        </div>\n    </div>\n    <div id=\"toast2\" class=\"toast text-bg-info border-0 mb-2\">\n        <div class=\"d-flex\">\n            <div class=\"toast-body\">ℹ️ Free cancellation on all bookings!</div>\n            <button type=\"button\" class=\"btn-close btn-close-white ms-auto me-2\" data-bs-dismiss=\"toast\"></button>\n        </div>\n    </div>\n    <div id=\"toast4\" class=\"toast text-bg-success border-0 mb-2\">\n        <div class=\"d-flex\">\n            <div class=\"toast-body\">✈️ Airport Pickup Available 24/7 — <strong> Book Instantly!</strong></div>\n            <button type=\"button\" class=\"btn-close btn-close-white ms-auto me-2\" data-bs-dismiss=\"toast\"></button>\n        </div>\n    </div>\n</div>\n\n\n<style>\n    .toast-container {\n        display: flex;\n        flex-direction: column-reverse; \n        gap: 10px;\n        margin-bottom: 3%;\n    }\n</style>\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function () {\n        const toastIds = [\"toast1\", \"toast2\", \"toast4\"];\n        let index = 0;\n\n        function showNextToast() {\n            if (index >= toastIds.length) return;\n\n            const toastEl = document.getElementById(toastIds[index]);\n            const toast = new bootstrap.Toast(toastEl, {\n                autohide: false,   \n                animation: true\n            });\n\n            toast.show();\n            index++;\n\n            setTimeout(showNextToast, 700); \n        }\n\n        showNextToast();\n\n        setTimeout(() => {\n            toastIds.forEach(id => {\n                const el = document.getElementById(id);\n                const t = bootstrap.Toast.getOrCreateInstance(el);\n                t.hide();\n            });\n        }, 5000); \n    });\n</script>\n\n<footer id=\"footer\" class=\"footer position-relative dark-background\">\n    <!-- <div class=\"footer-newsletter\">\n      <div class=\"container\">\n        <div class=\"row justify-content-center text-center\">\n          <div class=\"col-lg-6\">\n            <h4>Join Our Newsletter</h4>\n            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>\n            <form action=\"forms/newsletter.php\" method=\"post\" class=\"php-email-form\">\n              <div class=\"newsletter-form\"><input type=\"email\" name=\"email\"><input type=\"submit\" value=\"Subscribe\"></div>\n              <div class=\"loading\">Loading</div>\n              <div class=\"error-message\"></div>\n              <div class=\"sent-message\">Your subscription request has been sent. Thank you!</div>\n            </form>\n          </div>\n        </div>\n      </div>\n    </div> -->\n\n    <div class=\"container footer-top\">\n      <div class=\"row gy-4\">\n        <div class=\"col-lg-4 col-md-6 footer-about\">\n          <a href=\"[[~1]]\" class=\"d-flex align-items-center mb-2\">\n            <img src=\"assets/img/logo.png\" alt=\"Tour Logo\" class=\"logo me-2\" style=\"height:40px;\">\n          </a>\n          <div class=\"footer-contact pt-3\">\n            <p>SR Transfers (Pvt) Ltd</p>\n            <p>\n                <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" rel=\"noopener\" class=\"text-decoration-none\">\n                371-5,<br>\n                Negombo - Colombo Main Rd,<br>\n                Seeduwa, Sri Lanka\n                </a>\n            </p>\n            <p class=\"mt-3\">\n                <strong>Phone :</strong>\n                <a href=\"tel:+94767989878\" class=\"text-decoration-none\"> +94 76 798 9878</a>\n            </p>            \n            <p>\n                <strong>Email :</strong>\n                <a href=\"mailto:transfers@srilankarentacar.com\" class=\"text-decoration-none\"> transfers@srilankarentacar.com</a>\n            </p>          \n        </div>\n        </div>\n\n        <div class=\"col-lg-4 col-md-3 footer-links\">\n          <h4>Useful Links</h4>\n          <ul>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~1]]\">Home</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~3]]\">Destinations</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~2]]\">About Us</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~6]]\">FAQ</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~5]]\">Contact Us</a></li>\n          </ul>\n        </div>\n\n        <div class=\"col-lg-4 col-md-12\">\n          <h4>Follow Us</h4>\n          <div class=\"social-links d-flex\">\n            <a href=\"#\"><i class=\"bi bi-facebook\"></i></a>\n            <a href=\"#\"><i class=\"bi bi-instagram\"></i></a>\n            <a href=\"#\"><i class=\"bi bi-linkedin\"></i></a>\n          </div>\n        </div>\n\n      </div>\n    </div>\n\n    <div class=\"container copyright text-center mt-4\">\n      <p>© <strong class=\"px-1 sitename\">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>\n    </div>\n\n</footer>\n\n<!-- Scroll Top -->\n<a href=\"#\" id=\"scroll-top\" class=\"scroll-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n\n\n<!-- WhatsApp Chat Popup starts -->\n<div id=\"whatsapp-chat-btn\" class=\"wa-button\">\n    <i class=\"bi bi-whatsapp\"></i>\n</div>\n\n<div id=\"whatsapp-chat-popup\" class=\"wa-popup hidden\">\n    <div class=\"wa-header\">\n        <i class=\"bi bi-whatsapp\"></i> Chat With Us\n        <span id=\"close-chat\">×</span>\n    </div>\n\n    <div class=\"wa-body\">\n        <p>Hello! 👋How can we assist you today with your transfer or booking?</p>\n        <textarea id=\"wa-chat-input\" placeholder=\"Type your message...\"></textarea>\n        <button id=\"wa-send-btn\">Send</button>\n    </div>\n</div>\n\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function () {\n        const chatBtn = document.getElementById(\"whatsapp-chat-btn\");\n        const chatPopup = document.getElementById(\"whatsapp-chat-popup\");\n        const closeChat = document.getElementById(\"close-chat\");\n        const sendBtn = document.getElementById(\"wa-send-btn\");\n        const messageBox = document.getElementById(\"wa-chat-input\");\n        const phone = \"94767989878\";\n\n        // Open popup\n        chatBtn.addEventListener(\"click\", () => {\n            chatPopup.classList.remove(\"hidden\");\n        });\n\n        // Close popup\n        closeChat.addEventListener(\"click\", () => {\n            chatPopup.classList.add(\"hidden\");\n        });\n\n        // Send message\n        sendBtn.addEventListener(\"click\", () => {\n            let msg = messageBox.value.trim();\n            if (!msg) msg = \"Hello! I need more information 😊\";\n\n            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;\n            window.open(url, \"_blank\");\n\n            messageBox.value = \"\";\n            chatPopup.classList.add(\"hidden\");\n        });\n    });\n</script>\n<!-- WhatsApp Chat Popup ends -->\n\n\n<script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'header', '', 0, 0, 0, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n<!-- Google Tag Manager -->\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\n})(window,document,\'script\',\'dataLayer\',\'GTM-585QNBCZ\');</script>\n<!-- End Google Tag Manager -->\n\n  <meta charset=\"utf-8\">\n  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n  <title>SR Transfers (Pvt) Ltd</title>\n  <meta name=\"description\" content=\"\">\n  <meta name=\"keywords\" content=\"\">\n\n  <!-- Favicons -->\n  <link href=\"assets/img/favicon.png\" rel=\"icon\">\n\n  <!-- Fonts -->\n  <link href=\"https://fonts.googleapis.com\" rel=\"preconnect\">\n  <link href=\"https://fonts.gstatic.com\" rel=\"preconnect\" crossorigin>\n  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n\n  <!-- Vendor CSS Files -->\n  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n\n  <!-- Main CSS File -->\n  <link href=\"assets/css/main.css\" rel=\"stylesheet\">\n</head>\n\n<body>\n<!-- Google Tag Manager (noscript) -->\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-585QNBCZ\"\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\n<!-- End Google Tag Manager (noscript) -->\n</body>\n\n <!-- Scroll Top -->\n  <a href=\"#\" id=\"scroll-top\" class=\"scroll-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n\n  <!-- Preloader -->\n  <div id=\"preloader\"></div>\n\n  <!-- Vendor JS Files -->\n  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n  <script src=\"assets/vendor/aos/aos.js\"></script>\n  <script src=\"assets/vendor/purecounter/purecounter_vanilla.js\"></script>\n  <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n  <script src=\"assets/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\n  <script src=\"assets/vendor/imagesloaded/imagesloaded.pkgd.min.js\"></script>\n  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n\n  <!-- Main JS File -->\n  <script src=\"assets/js/main.js\"></script>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'navbar', '', 0, 0, 0, '<header class=\"header\">\n    <!-- Topbar -->\n    <div class=\"topbar text-center\">\n        <p class=\"mb-0\">\n            <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" style=\"color:white; text-decoration: none;\">\n                <i class=\"fa fa-map-marker\" style=\"color:orange; margin-right:2px;\"></i> SR Transfers, Seeduwa | Sri Lanka\n            </a>\n            &nbsp;|&nbsp;\n            <a href=\"tel:+94767989878\" style=\"color:white; text-decoration: none;\">\n                <i class=\"fa fa-phone\" style=\"color:orange; margin-right:2px;\"></i> +94 76 798 9878\n            </a>\n            &nbsp;|&nbsp;\n            <a href=\"mailto:transfers@srilankarentacar.com\" style=\"color:white; text-decoration: none;\">\n                <i class=\"fa fa-envelope\" style=\"color:orange; margin-right:2px;\"></i> transfers@srilankarentacar.com\n            </a>\n        </p>\n    </div>\n\n    <!-- Navbar -->\n    <nav class=\"navbar navbar-expand-lg navbar-light\" id=\"mainNavbar\">\n        <div class=\"container\">\n            <a class=\"navbar-brand\" href=\"index.html\">\n                <!-- Default Logo -->\n                <img src=\"assets/img/logo.png\" class=\"logo-default\" alt=\"Logo\">\n\n                <!-- Scrolled Logo -->\n                <img src=\"assets/img/logo-hover.png\" class=\"logo-scrolled\" alt=\"Scrolled Logo\">\n            </a>\n\n\n            <!-- Offcanvas Toggle -->\n            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"offcanvas\" data-bs-target=\"#mobileMenu\">\n                <span class=\"navbar-toggler-icon\"></span>\n            </button>\n\n            <!-- Offcanvas Menu -->\n            <div class=\"offcanvas offcanvas-start text-bg-dark\" tabindex=\"-1\" id=\"mobileMenu\">\n                <div class=\"offcanvas-header\">\n                    <h5 class=\"offcanvas-title\">\n                        <img src=\"assets/img/logo.png\" alt=\"Logo\" style=\"width:100px;\">\n                    </h5>\n                    <button type=\"button\" class=\"btn-close btn-close-white\" data-bs-dismiss=\"offcanvas\"></button>\n                </div>\n                <div class=\"offcanvas-body mobile-scrollable\">\n                    <ul class=\"navbar-nav ms-auto\">\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.php?id=1\">HOME</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.php?id=2\">ABOUT US</a></li>\n                        <li class=\"nav-item dropdown\">\n                            <a class=\"nav-link dropdown-toggle\" href=\"#\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">FLEET</a>\n                            <div class=\"dropdown-menu fleet-menu p-3 bg-transparent border-0\">\n                                <div class=\"fleet-container\">\n                                    <!-- Fleet Items -->\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/1.png\" alt=\"Standard Cars\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Express</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/11.png\" alt=\"People Carrier\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private MPV</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/5.png\" alt=\"Large People Carrier\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Van</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/4.png\" alt=\"Luxury Coach\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Mini Bus</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/6.png\" alt=\"Executive Cars\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private SUV</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/10.png\" alt=\"Luxury SUV\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Luxury SUV</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/9.png\" alt=\"Private Premium\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Premium</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/2.png\" alt=\"Luxury Cars\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Business</p>\n                                    </div>\n\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/8.png\" alt=\"Private Coach (35 Seater)\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Coach (33 Seater)</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/7.png\" alt=\"Private Coach (45 Seater)\" class=\"img-fluid\">\n                                        <p class=\"mb-0 text-white\">Private Coach (45 Seater)</p>\n                                    </div>\n                                </div>\n                                <div class=\"text-center mt-3\">\n                                    <a href=\"index.php?id=7\" class=\"btn btn-primary fleet-button\">Explore Our Fleet</a>\n                                </div>\n                            </div>\n                        </li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.php?id=3\">DESTINATIONS</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.php?id=6\">FAQ</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.php?id=5\">CONTACT US</a></li>\n                    </ul>\n                </div>\n            </div>\n        </div>\n    </nav>\n</header>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(11) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'GoogleReviews', '', 0, 0, 0, '$apiKey = \'AIzaSyB7vPsBQR4bp2RDm7Iz5u6hN1VzGnqtwsI\';\n$placeId = \'ChIJb-sUn7Px4joR5tfdECCYM1o\';\n$cacheFile = MODX_BASE_PATH . \'assets/cache/google_reviews_cache.json\';\n$cacheTtl = 60 * 60 * 6; // 6 hours\n\n// Load from cache if still fresh\nif (file_exists($cacheFile) && (time() - filemtime($cacheFile) < $cacheTtl)) {\n    $data = json_decode(file_get_contents($cacheFile), true);\n} else {\n    $url = \"https://maps.googleapis.com/maps/api/place/details/json?place_id=\"\n        . urlencode($placeId)\n        . \"&fields=name,rating,user_ratings_total,reviews,formatted_address,website\"\n        . \"&key=\" . urlencode($apiKey);\n\n    $opts = [\"http\" => [\"timeout\" => 10]];\n    $context = stream_context_create($opts);\n    $json = @file_get_contents($url, false, $context);\n\n    if ($json !== false) {\n        $data = json_decode($json, true);\n        if ($data) {\n            file_put_contents($cacheFile, json_encode($data));\n        }\n    }\n}\n\n$output = \'\';\n$reviews = $data[\'result\'][\'reviews\'] ?? [];\n\nif (!empty($reviews)) {\n    foreach ($reviews as $r) {\n        $avatarUrl = $modx->getOption(\'site_url\') . \'assets/components/review_proxy.php?url=\' . urlencode($r[\'profile_photo_url\']);\n        $text = htmlspecialchars($r[\'text\'] ?? \'\');\n        $name = htmlspecialchars($r[\'author_name\'] ?? \'Anonymous\');\n        $rating = intval($r[\'rating\'] ?? 0);\n        $time = htmlspecialchars($r[\'relative_time_description\'] ?? \'\');\n\n        // Create star rating icons\n        $stars = str_repeat(\'<i class=\"bi bi-star-fill text-warning\"></i>\', $rating);\n        $stars .= str_repeat(\'<i class=\"bi bi-star text-warning\"></i>\', 5 - $rating);\n\n        $output .= \'\n        <div class=\"swiper-slide\">\n          <div class=\"testimonial-item\">\n            <p>\n              <i class=\"bi bi-quote quote-icon-left\"></i>\n              \' . $text . \'\n              <i class=\"bi bi-quote quote-icon-right\"></i>\n            </p>\n            <div class=\"profile mt-auto\">\n              <img src=\"\' . $avatarUrl . \'\" class=\"testimonial-img\" alt=\"\' . $name . \'\">\n              <h3>\' . $name . \'</h3>\n              <h4>\' . $stars . \' &nbsp; <small class=\"text-muted\">\' . $time . \'</small></h4>\n            </div>\n          </div>\n        </div>\';\n    }\n} else {\n    $output = \'<div class=\"swiper-slide\"><p class=\"text-center\">No reviews available yet.</p></div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(2, 1, 0, 'ShowSearchData', '', 0, 0, 0, 'if (session_status() == PHP_SESSION_NONE) {\n    session_start();\n}\n\n// Handle form submission\nif (!empty($_POST)) {\n    unset($_SESSION[\'searchData\']);\n\n    $_SESSION[\'searchData\'] = [\n        \'pickup\'        => $_POST[\'pickupLocation\'] ?? \'\',\n        \'dropoff\'       => $_POST[\'dropoffLocation\'] ?? \'\',\n        \'date\'          => $_POST[\'date\'] ?? \'\',\n        \'returnPickup\'  => $_POST[\'returnPickup\'] ?? \'\',\n        \'returnDropoff\' => $_POST[\'returnDropoff\'] ?? \'\',\n        \'returnDate\'    => $_POST[\'returnDate\'] ?? \'\',\n        \'isRoundtrip\'   => isset($_POST[\'roundtripCheck\']) ? 1 : 0\n    ];\n}\n\n// Retrieve stored search data\n$data          = $_SESSION[\'searchData\'] ?? [];\n$pickup        = htmlspecialchars($data[\'pickup\'] ?? \'\');\n$dropoff       = htmlspecialchars($data[\'dropoff\'] ?? \'\');\n$date          = htmlspecialchars($data[\'date\'] ?? \'\');\n$returnPickup  = htmlspecialchars($data[\'returnPickup\'] ?? \'\');\n$returnDropoff = htmlspecialchars($data[\'returnDropoff\'] ?? \'\');\n$returnDate    = htmlspecialchars($data[\'returnDate\'] ?? \'\');\n$isRoundtrip   = !empty($data[\'isRoundtrip\']);\n\n// Fetch Add-ons from DB\n$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\ntry {\n    $addons = $conn->query(\"SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC\")\n                   ->fetchAll(PDO::FETCH_ASSOC);\n} catch (PDOException $e) {\n    $addons = [];\n}\n?>\n\n<style>\n    .search-summary-form { background:#fff; border-radius:20px; padding:20px; box-shadow:0 6px 20px rgba(0,0,0,0.1); position:relative; }\n    .search-summary-form h5 { text-align:center; margin:0 0 12px; font-weight:600; color:#333; }\n    .search-summary-form .row { display:flex; flex-direction:column; gap:12px; }\n    .search-summary-form .col { width:100%; }\n    @media(min-width:992px) {\n        .search-summary-form .row { flex-direction:row; gap:15px; }\n        .search-summary-form .col { flex:1; }\n    }\n    .form-group label{ font-weight:600; font-size:14px; display:block; margin-bottom:6px;}\n    .search-summary-form input, .search-summary-form select { width:100%; padding:10px 12px; border-radius:10px; border:1px solid #ddd; }\n    .map-wrapper { width:100%; height:200px; border-radius:15px; overflow:hidden; box-shadow:0 6px 20px rgba(0,0,0,0.08); background:#eaeaea; }\n    .map-wrapper.large { height:250px !important; }\n    #distanceResult { text-align:center; font-weight:600; color:#04366b; margin-top:6px; margin-bottom:6px; }\n</style>\n\n<form class=\"mt-3 mt-md-0 search-summary-form text-start\" method=\"post\" id=\"searchForm\">\n\n    <h5><i class=\"fa fa-search\"></i> Your Search Details</h5>\n\n    <!-- Main Trip -->\n    <div class=\"row\" style=\"position: relative;\">\n        <div class=\"col form-group\">\n            <label for=\"pickupLocation\">Pickup Airport <span class=\"text-danger\">*</span></label>\n            <input type=\"text\" id=\"pickupLocation\" name=\"pickupLocation\" value=\"<?= $pickup ?>\" required>\n        </div>\n\n        <div class=\"col form-group\">\n            <label for=\"dropoffLocation\">Dropoff Location <span class=\"text-danger\">*</span></label>\n            <input type=\"text\" id=\"dropoffLocation\" name=\"dropoffLocation\" value=\"<?= $dropoff ?>\" required>\n        </div>\n    </div>\n\n    <div class=\"row\" style=\"margin-top:10px;\">\n        <div class=\"col form-group\">\n            <label for=\"date\">Travel Date <span class=\"text-danger\">*</span></label>\n            <input type=\"datetime-local\" id=\"date\" name=\"date\" value=\"<?= $date ?>\" required>\n        </div>\n        <div class=\"col form-group\">\n            <label for=\"totalPrice\">Estimated Price</label>\n            <input type=\"text\" id=\"totalPrice\" name=\"totalPrice\" value=\"\" readonly style=\"background:#f1f1f1; font-weight:600;\">\n        </div>\n    </div>\n\n    <div class=\"form-check\" style=\"margin:12px 0;\">\n        <input type=\"checkbox\" class=\"form-check-input\" id=\"roundtripCheck\" name=\"roundtripCheck\" <?= $isRoundtrip ? \"checked\" : \"\" ?> style=\"width: auto;\">\n        <label for=\"roundtripCheck\" style=\"margin-left:8px; font-weight:600\">Round Trip</label>\n    </div>\n\n    <hr>\n\n    <div id=\"returnDetails\" style=\"display:<?= $isRoundtrip ? \'block\' : \'none\' ?>\">\n        <div class=\"row\">\n            <div class=\"col form-group\">\n                <label for=\"returnPickup\">Return Pickup Location</label>\n                <input type=\"text\" id=\"returnPickup\" name=\"returnPickup\" value=\"<?= $returnPickup ?>\">\n            </div>\n            <div class=\"col form-group\">\n                <label for=\"returnDropoff\">Return Drop-off Location</label>\n                <input type=\"text\" id=\"returnDropoff\" name=\"returnDropoff\" value=\"<?= $returnDropoff ?>\">\n            </div>\n        </div>\n\n        <div class=\"form-group\" style=\"margin-top:10px;\">\n            <label for=\"returnDate\">Return Date</label>\n            <input type=\"datetime-local\" id=\"returnDate\" name=\"returnDate\" value=\"<?= $returnDate ?>\" style=\"width: 50%;\">\n        </div>\n    </div>\n\n    <hr>\n\n    <!-- Add-ons -->\n    <?php if ($addons): ?>\n        <div class=\"form-group\">\n            <label style=\"font-weight:600;\">Select Add-ons</label>\n            <div style=\"display:grid; gap:10px;\">\n                <?php foreach ($addons as $a): $id = (int)$a[\'id\']; $rate = (float)$a[\'rate\']; $name = htmlspecialchars($a[\'addon_name\']); ?>\n                <label style=\"display:flex;align-items:center;justify-content:space-between;white-space:nowrap;\">\n                    <span style=\"display:flex;align-items:center;gap:8px;\">\n                        <input type=\"checkbox\" class=\"addon\" data-id=\"<?= $id ?>\" name=\"addons[]\" value=\"<?= $id ?>\" data-rate=\"<?= $rate ?>\" data-addon_name=\"<?= $name ?>\">\n                        <?= $name ?> (+$ <?= number_format($rate, 2) ?>)\n                    </span>\n                    <select name=\"addons_qty[<?= $id ?>]\" class=\"qty\" style=\"padding:3px 6px;border-radius:4px;width:20%;\" disabled>\n                        <?php for($i=1; $i<=3; $i++): ?>\n                            <option value=\"<?= $i ?>\"><?= $i ?></option>\n                        <?php endfor; ?>\n                    </select>\n                </label>\n                <?php endforeach; ?>\n            </div>\n        </div>\n    <?php endif; ?>\n\n    <hr style=\"margin:15px 0;\">\n\n    <div id=\"distanceResult\" style=\"display:none;\"></div>\n\n    <div class=\"map-wrapper\" id=\"mapWrapper\">\n        <div id=\"routeMap\" style=\"width:100%; height:100%;\"></div>\n    </div>\n</form>\n\n<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyB7vPsBQR4bp2RDm7Iz5u6hN1VzGnqtwsI&libraries=places\"></script>\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function() {\n        const pickupInput = document.getElementById(\"pickupLocation\");\n        const dropoffInput = document.getElementById(\"dropoffLocation\");\n        const returnPickup = document.getElementById(\"returnPickup\");\n        const returnDropoff = document.getElementById(\"returnDropoff\");\n        const roundtripCheck = document.getElementById(\"roundtripCheck\");\n        const returnDetails = document.getElementById(\"returnDetails\");\n        const distanceDisplay = document.getElementById(\"distanceResult\");\n        const totalPriceInput = document.getElementById(\"totalPrice\");\n        const mapWrapper = document.getElementById(\"mapWrapper\");\n        const mapEl = document.getElementById(\"routeMap\");\n\n        let directionsRendererMain;\n        let directionsRendererReturn;\n\n        let map, directionsService, directionsRenderer;\n        let mainDistance = 0, mainDuration = \"\";\n        let returnDistance = 0, returnDuration = \"\";\n        let pricePerKm = 0;\n\n        function initMap() {\n            map = new google.maps.Map(mapEl, { zoom: 7, center: { lat: 7.8731, lng: 80.7718 } });\n            directionsService = new google.maps.DirectionsService();\n            directionsRendererMain = new google.maps.DirectionsRenderer({\n                suppressMarkers: false,\n                polylineOptions: { strokeColor: \"#1A73E8\", strokeWeight: 5 }\n            });\n            directionsRendererMain.setMap(map);\n\n            directionsRendererReturn = new google.maps.DirectionsRenderer({\n                suppressMarkers: false,\n                polylineOptions: { strokeColor: \"#34A853\", strokeWeight: 5 }\n            });\n            directionsRendererReturn.setMap(map);\n        }\n\n        function initAutocomplete() {\n            const options = { componentRestrictions: { country: \"lk\" } };\n            new google.maps.places.Autocomplete(pickupInput, options).addListener(\"place_changed\", calculateAll);\n            new google.maps.places.Autocomplete(dropoffInput, options).addListener(\"place_changed\", calculateAll);\n            if (returnPickup) new google.maps.places.Autocomplete(returnPickup, options).addListener(\"place_changed\", calculateAll);\n            if (returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options).addListener(\"place_changed\", calculateAll);\n        }\n\n        initMap();\n        initAutocomplete();\n\n        async function getDistance(origin, destination) {\n            return new Promise(resolve => {\n                if (!origin || !destination) return resolve({ km:0, duration:\"\" });\n                const service = new google.maps.DistanceMatrixService();\n                service.getDistanceMatrix({\n                    origins: [origin],\n                    destinations: [destination],\n                    travelMode: google.maps.TravelMode.DRIVING,\n                    unitSystem: google.maps.UnitSystem.METRIC\n                }, (response, status) => {\n                    if (status === \"OK\") {\n                        const elem = response.rows[0].elements[0];\n                        if (elem.status === \"OK\") {\n                            let km = parseFloat(elem.distance.text.replace(\" km\", \"\"));\n                            let dur = elem.duration.text;\n                            return resolve({ km, duration: dur });\n                        }\n                    }\n                    resolve({ km:0, duration:\"\" });\n                });\n            });\n        }\n\n        async function showRouteMain(origin, destination) {\n            if (!origin || !destination) return;\n            return new Promise(resolve => {\n                directionsService.route({\n                    origin,\n                    destination,\n                    travelMode: google.maps.TravelMode.DRIVING\n                }, (result, status) => {\n                    if (status === \"OK\") {\n                        directionsRendererMain.setDirections(result);\n                    }\n                    resolve();\n                });\n            });\n        }\n\n        async function showRouteReturn(origin, destination) {\n            if (!origin || !destination) return;\n            return new Promise(resolve => {\n                directionsService.route({\n                    origin,\n                    destination,\n                    travelMode: google.maps.TravelMode.DRIVING\n                }, (result, status) => {\n                    if (status === \"OK\") {\n                        directionsRendererReturn.setDirections(result);\n                    }\n                    resolve();\n                });\n            });\n        }\n\n        async function calculateAll() {\n            const p1 = pickupInput.value.trim();\n            const d1 = dropoffInput.value.trim();\n\n            const main = await getDistance(p1, d1);\n            mainDistance = main.km;\n            mainDuration = main.duration;\n            if (mainDistance > 0) await showRouteMain(p1, d1);\n\n            if (roundtripCheck.checked) {\n                const rp = returnPickup.value.trim();\n                const rd = returnDropoff.value.trim();\n                const ret = await getDistance(rp, rd);\n                returnDistance = ret.km;\n                returnDuration = ret.duration;\n                if (returnDistance > 0) await showRouteReturn(rp, rd);\n\n            } else {\n                returnDistance = 0;\n                returnDuration = \"\";\n            }\n\n            updateDisplay();\n        }\n\n        function updateDisplay() {\n            if (mainDistance <= 0) return;\n            distanceDisplay.style.display = \"block\";\n\n            distanceDisplay.dataset.mainDistance = mainDistance;\n            distanceDisplay.dataset.returnDistance = returnDistance;\n\n            let html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;\n            if (roundtripCheck.checked && returnDistance > 0) {\n                html += `<br>🔁 <span style=\"color: green;\"><strong>Return Trip: ${returnDistance.toFixed(1)} km • ${returnDuration}</strong></span>`;\n                html += `<br>📏 <span style=\"color: red;\">Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></span>`;\n            }\n            distanceDisplay.innerHTML = html;\n            updateTotalPrice();\n        }\n\n\n        function updateTotalPrice() {\n            let totalKm = mainDistance + (returnDistance || 0); \n            let total = totalKm * pricePerKm;\n\n            document.querySelectorAll(\".addon:checked\").forEach(cb => {\n                const rate = parseFloat(cb.dataset.rate) || 0;\n                const qtySel = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                const qty = qtySel ? parseInt(qtySel.value) : 1;\n                total += rate * qty;\n            });\n\n            totalPriceInput.value = total ? \"$ \" + total.toFixed(2) : \"\";\n        }\n\n        // Vehicle selection buttons\n        document.querySelectorAll(\".select-vehicle-btn\").forEach(btn => {\n            btn.addEventListener(\"click\", async () => {\n                pricePerKm = parseFloat(btn.dataset.price);\n                document.querySelectorAll(\".select-vehicle-btn\").forEach(b => b.classList.remove(\"active\"));\n                btn.classList.add(\"active\");\n                document.querySelectorAll(\".addon\").forEach(cb => {\n                    cb.checked = false;\n                    const qtySel = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                    if(qtySel){ qtySel.disabled = true; qtySel.value = 1; }\n                });\n                await calculateAll();  \n                updateTotalPrice(); \n            });\n        });\n\n        // Inputs change listeners\n        pickupInput.addEventListener(\"change\", calculateAll);\n        dropoffInput.addEventListener(\"change\", calculateAll);\n        if(returnPickup) returnPickup.addEventListener(\"change\", calculateAll);\n        if(returnDropoff) returnDropoff.addEventListener(\"change\", calculateAll);\n\n        roundtripCheck.addEventListener(\"change\", () => {\n            returnDetails.style.display = roundtripCheck.checked ? \"block\" : \"none\";\n            calculateAll();\n        });\n\n        // Add-ons listeners\n        document.querySelectorAll(\".addon\").forEach(cb => {\n            cb.addEventListener(\"change\", () => {\n                const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                if (qtySelect) qtySelect.disabled = !cb.checked;\n                updateTotalPrice();\n            });\n        });\n        document.querySelectorAll(\"select.qty\").forEach(sel => {\n            sel.addEventListener(\"change\", updateTotalPrice);\n        });\n\n        if(pickupInput.value && dropoffInput.value) calculateAll();\n    });\n</script>\n\n\n<?php return \'\';', 0, 'a:0:{}', '', 0, ''),
(3, 1, 0, 'ClearSearchSession', '', 0, 0, 0, 'if(session_status() == PHP_SESSION_NONE) {\n    session_start();\n}\n\n// Clear the search session data\nunset($_SESSION[\'searchData\']);\nreturn \'\';', 0, 'a:0:{}', '', 0, ''),
(4, 1, 0, 'ShowAddons', '', 0, 0, 0, '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $addons = $conn->query(\"SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC\")\n                   ->fetchAll(PDO::FETCH_ASSOC);\n\n    if (!$addons) return \'<p>No add-ons found.</p>\';\n\n    $out = \'<div class=\"form-group\"><label style=\"font-weight:600;\">Select Add-ons</label>\n            <div style=\"display:grid; gap:10px;\">\';\n\n    foreach ($addons as $a) {\n        $id = (int)$a[\'id\'];\n        $rate = (float)$a[\'rate\'];\n        $name = htmlspecialchars($a[\'addon_name\']);\n        $out .= \"<label style=\'display:flex;align-items:center;justify-content:space-between;white-space:nowrap;\'>\n            <span style=\'display:flex;align-items:center;gap:8px;\'>\n                <input type=\'checkbox\' class=\'addon\' \n                       data-id=\'$id\' \n                       name=\'addons[]\' \n                       value=\'$id\' \n                       data-rate=\'$rate\' \n                       data-addon_name=\'$name\'>\n                $name (+$ \" . number_format($rate, 2) . \")\n            </span>\n            <select name=\'addons_qty[{$id}]\' class=\'qty\' style=\'padding:3px 6px;border-radius:4px;width:20%;\' disabled>\";\n\n        for ($i=1; $i<=3; $i++) $out .= \"<option value=\'$i\'>$i</option>\";\n        $out .= \"</select></label>\";\n    }\n\n\n    $out .= \'</div></div>\n    <script>\n    document.addEventListener(\"DOMContentLoaded\",()=> {\n        document.querySelectorAll(\".addon\").forEach(cb=>{\n            cb.addEventListener(\"change\",()=>{\n                const s=document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                if(s) s.disabled=!cb.checked;\n            });\n        });\n    });\n    </script>\';\n\n    return $out;\n\n} catch (PDOException $e) {\n    return \"<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>\";\n}', 0, 'a:0:{}', '', 0, ''),
(5, 1, 0, 'ShowVehicleData', '', 0, 0, 0, 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $stmt = $conn->query(\"SELECT * FROM `vehicles` ORDER BY sort_order ASC\");\n    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);\n\n    if ($vehicles) {\n        foreach ($vehicles as $vehicle) {\n            $hiddenClass = ($vehicle[\'id\'] > 6) ? \'hidden-vehicle\' : \'\';\n            echo \'<div class=\"vehicle-card-fleet \' . $hiddenClass . \'\">\';\n            \n            // Vehicle image\n            echo \'<div class=\"vehicle-image\">\';\n            echo \'<img src=\"assets/img/vehicles/\' . htmlspecialchars($vehicle[\'image\']) . \'\" alt=\"\' . htmlspecialchars($vehicle[\'name\']) . \'\" style=\"width:100%; border-radius:10px;\">\';\n            echo \'</div>\';\n\n            // Vehicle details\n            echo \'<div class=\"vehicle-details\">\';\n            echo \'<h5>\' . htmlspecialchars($vehicle[\'name\']) . \'</h5>\';\n            echo \'<p><i class=\"fa fa-user\"></i> \' . intval($vehicle[\'passengers\']) . \' Passengers</p>\';\necho \'<p><i class=\"fa fa-suitcase\"></i> \' \n    . intval($vehicle[\'large_suitcases\']) . \' Large | \' \n    . intval($vehicle[\'medium_suitcases\']) . \' Medium Suitcases</p>\';\n            echo \'</div>\';\n\n            // Vehicle price & total\n            echo \'<div class=\"vehicle-price text-end\">\';\n            echo \'<h4 class=\"estimated-total\" id=\"total-price-\' . intval($vehicle[\'id\']) . \'\" style=\"font-weight:600;color:#04366b;display:none; font-size:18px;\">Total: </h4>\';\n            echo \'<p style=\"color:black; font-weight:600; margin-bottom:0;\">$\' . number_format($vehicle[\'price\'], 2) . \' <small style=\"font-size:0.7em; font-weight:800; color:black;\">per KM</small></p>\';\n            echo \'<p class=\"text-success fw-bold\">Free Cancellation</p>\';\n\n            // Select button\n            echo \'<button class=\"btn btn-primary mt-2 select-vehicle-btn\"\n                data-id=\"\' . intval($vehicle[\'id\']) . \'\"\n                data-name=\"\' . htmlspecialchars($vehicle[\'name\']) . \'\"\n                data-price=\"\' . number_format($vehicle[\'price\'], 2, \'.\', \'\') . \'\">\n                Select Vehicle\n            </button>\';\n\n            echo \'</div>\'; // vehicle-price\n            echo \'</div>\'; // vehicle-card\n        }\n    } else {\n        echo \'<p>No vehicles found.</p>\';\n    }\n\n} catch (PDOException $e) {\n    echo \'<p style=\"color:red;\">Database error: \' . $e->getMessage() . \'</p>\';\n}\n?>\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function() {\n        const pickupInput = document.getElementById(\"pickupLocation\");\n        const dropoffInput = document.getElementById(\"dropoffLocation\");\n        const returnPickup = document.getElementById(\"returnPickup\");\n        const returnDropoff = document.getElementById(\"returnDropoff\");\n        const roundtripCheck = document.getElementById(\"roundtripCheck\");\n        const distanceDisplay = document.getElementById(\"distanceResult\");\n\n        let mainDistance = 0, returnDistance = 0, mainDuration = \'\', returnDuration = \'\';\n        let selectedVehicleId = null;\n\n        function getDistance(origin, dest) {\n            return new Promise(resolve => {\n                if (!origin || !dest) return resolve({ km: 0, duration: \'\' });\n                const service = new google.maps.DistanceMatrixService();\n                service.getDistanceMatrix({\n                    origins: [origin],\n                    destinations: [dest],\n                    travelMode: google.maps.TravelMode.DRIVING,\n                    unitSystem: google.maps.UnitSystem.METRIC\n                }, (response, status) => {\n                    if (status === \"OK\") {\n                        const elem = response.rows[0].elements[0];\n                        if (elem.status === \"OK\") {\n                            const km = parseFloat(elem.distance.text.replace(\" km\",\"\"));\n                            resolve({ km, duration: elem.duration.text });\n                            return;\n                        }\n                    }\n                    resolve({ km: 0, duration: \'\' });\n                });\n            });\n        }\n\n        async function calculateAll() {\n            const mainOrigin = pickupInput.value.trim();\n            const mainDest = dropoffInput.value.trim();\n            if (!mainOrigin || !mainDest) return;\n\n            const mainRes = await getDistance(mainOrigin, mainDest);\n            mainDistance = mainRes.km;\n            mainDuration = mainRes.duration;\n\n            if (roundtripCheck.checked) {\n                const retOrigin = returnPickup.value.trim();\n                const retDest = returnDropoff.value.trim();\n                if (retOrigin && retDest) {\n                    const retRes = await getDistance(retOrigin, retDest);\n                    returnDistance = retRes.km;\n                    returnDuration = retRes.duration;\n                } else {\n                    returnDistance = 0;\n                    returnDuration = \'\';\n                }\n            } else {\n                returnDistance = 0;\n                returnDuration = \'\';\n            }\n\n            updateDisplay();\n            updateAllVehiclePrices();\n        }\n\n        function updateDisplay() {\n            if (mainDistance <= 0) {\n                distanceDisplay.style.display = \'none\';\n                return;\n            }\n            distanceDisplay.style.display = \'block\';\n\n            let html = \'\';\n            if (roundtripCheck.checked && returnDistance > 0) {\n                html += `<div style=\"display:flex; justify-content:space-around; gap:20px;\">\n                            <div>🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}</div>\n                            <div>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}</div>\n                        </div>`;\n                html += `<div style=\"text-align:center; margin-top:5px;\">📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></div>`;\n            } else {\n                html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;\n            }\n            distanceDisplay.innerHTML = html;\n        }\n\n        function updateAllVehiclePrices() {\n            if (mainDistance <= 0) return;\n            const totalKm = mainDistance + returnDistance;\n\n            document.querySelectorAll(\'.vehicle-card-fleet\').forEach(card => {\n                const pricePerKm = parseFloat(card.querySelector(\'.select-vehicle-btn\').dataset.price) || 0;\n                const total = totalKm * pricePerKm;\n                const totalEl = card.querySelector(\'.estimated-total\');\n                if (totalEl) {\n                    totalEl.innerHTML = \'Total: $ \' + total.toFixed(2);\n                    totalEl.style.display = \'block\';\n                }\n\n                // Highlight selected vehicle\n                const vehicleId = card.querySelector(\'.select-vehicle-btn\').dataset.id;\n                if (vehicleId == selectedVehicleId) {\n                    card.style.border = \'2px solid #04366b\';\n                    card.style.boxShadow = \'0 4px 15px rgba(0,0,0,0.2)\';\n                } else {\n                    card.style.border = \'1px solid #ddd\';\n                    card.style.boxShadow = \'0 2px 6px rgba(0,0,0,0.1)\';\n                }\n            });\n        }\n\n        // Handle vehicle selection\n        document.querySelectorAll(\'.select-vehicle-btn\').forEach(btn => {\n            btn.addEventListener(\'click\', function() {\n                selectedVehicleId = this.dataset.id;\n                updateAllVehiclePrices();\n            });\n        });\n\n        // Recalculate distances on input changes\n        [pickupInput, dropoffInput, returnPickup, returnDropoff].forEach(input => {\n            input.addEventListener(\'change\', calculateAll);\n        });\n        roundtripCheck.addEventListener(\'change\', calculateAll);\n\n        calculateAll(); \n    });\n</script>\n\n<?php return \'\';', 0, 'a:0:{}', '', 0, ''),
(6, 1, 0, 'ShowCountries', '', 0, 0, 0, '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $stmt = $conn->query(\"SELECT country_name, country_code FROM country_codes ORDER BY country_name ASC\");\n    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);\n    if (!$countries) return \'<p>No countries found.</p>\';\n\n    $selectedCode = isset($selected) ? strtoupper(trim($selected)) : \'\';\n    $output = \'<div class=\"form-group\" style=\"margin-bottom:0;\">\n        <select id=\"country\" name=\"country\" style=\"width:100%;padding:8px;border-radius:6px;border:1px solid #ccc;\">\n            <option value=\"\">-- Choose a Country --</option>\';\n\n    foreach ($countries as $c) {\n        $name = htmlspecialchars($c[\'country_name\']);\n        $code = htmlspecialchars(strtoupper($c[\'country_code\']));\n        $sel = $code === $selectedCode ? \' selected\' : \'\';\n        $output .= \"<option value=\'$code\'$sel>$name ($code)</option>\";\n    }\n\n    return $output . \'</select></div>\';\n} catch (PDOException $e) {\n    return \"<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>\";\n}', 0, 'a:0:{}', '', 0, ''),
(7, 1, 0, 'getFleetVehicles', '', 0, 0, 0, '// Load your custom DB connection\n$db = include MODX_BASE_PATH . \"assets/includes/db_connect.php\";\n\n// Check DB connection\nif (!$db || !($db instanceof PDO)) {\n    return \"<strong>DB ERROR:</strong> Could not connect to the database.\";\n}\n\ntry {\n    // Get vehicles\n    $stmt = $db->query(\"SELECT * FROM vehicles ORDER BY sort_order ASC\");\n    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);\n\n    if (!$vehicles) {\n        return \"<p>No vehicles found in database.</p>\";\n    }\n} catch (Exception $e) {\n    return \"<strong>DB QUERY ERROR:</strong> \" . $e->getMessage();\n}\n\n$output = \"\";\n\n// Build HTML for each vehicle\nforeach ($vehicles as $v) {\n\n    $output .= \'\n        <div class=\"swiper-slide\"\n            data-class=\"\' . htmlspecialchars($v[\"class\"]) . \'\"\n            data-name=\"\' . htmlspecialchars($v[\"name\"]) . \'\"\n            data-desc=\"\' . htmlspecialchars($v[\"description\"]) . \'\"\n            data-pass=\"\' . htmlspecialchars($v[\"passengers\"]) . \'\"\n            data-bags=\"\' . htmlspecialchars($v[\"suitcases\"]) . \'\"\n            data-price=\"\' . htmlspecialchars($v[\"price\"]) . \'\">\n\n            <img src=\"assets/img/vehicles/\' . htmlspecialchars($v[\"image\"]) . \'\" \n                 class=\"img-fluid\"\n                 alt=\"\' . htmlspecialchars($v[\"name\"]) . \'\">\n\n            <div class=\"vehicle-info mt-3\">\n                <h5>\' . htmlspecialchars($v[\"name\"]) . \'</h5>\n                <p>\' . htmlspecialchars($v[\"description\"]) . \'</p>\n\n                <ul class=\"list-unstyled\">\n                    <li><strong>Passengers:</strong> \' . htmlspecialchars($v[\"passengers\"]) . \'</li>\n                    <li><strong>Suitcases:</strong> \' . htmlspecialchars($v[\"suitcases\"]) . \'</li>\n                    <li><strong>Price per km:</strong> $\' . htmlspecialchars($v[\"price\"]) . \'</li>\n                </ul>\n            </div>\n        </div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(8, 1, 0, 'faq', '', 0, 0, 0, '$faqData = [\n    \'general\' => [\n        \'title\' => \'General Inquiries\',\n        \'questions\' => [\n            [\n                \'question\' => \'How do I book a transfer?\',\n                \'answer\' => \'You can book a transfer easily through our website.\'\n            ],\n            [\n                \'question\' => \'What types of vehicles are available?\',\n                \'answer\' => \'We offer sedans, SUVs, vans, and luxury cars.\'\n            ]\n        ]\n    ],\n    \'booking\' => [\n        \'title\' => \'Booking & Reservations\',\n        \'questions\' => [\n            [\n                \'question\' => \'How far in advance should I book?\',\n                \'answer\' => \'We recommend booking at least 24 hours ahead.\'\n            ]\n        ]\n    ],\n    \'payment\' => [\n        \'title\' => \'Payments & Policies\',\n        \'questions\' => [\n            [\n                \'question\' => \'What payment methods do you accept?\',\n                \'answer\' => \'We currently accept cash only.\'\n            ]\n        ]\n    ]\n];\n\n$output = \'\';\n\n// TAB BUTTONS\n$output .= \'<div class=\"nav-pills\">\';\nforeach ($faqData as $key => $category) {\n    $active = $key === \'general\' ? \'active\' : \'\';\n    $output .= \'<button class=\"tab-button \'.$active.\'\" data-tab=\"\'.$key.\'\">\'.$category[\'title\'].\'</button>\';\n}\n$output .= \'</div>\';\n\n// TAB CONTENTS\nforeach ($faqData as $key => $category) {\n    $active = $key === \'general\' ? \'active\' : \'\';\n    $output .= \'<div class=\"tab-content \'.$active.\'\" id=\"\'.$key.\'-tab\">\';\n\n    foreach ($category[\'questions\'] as $index => $item) {\n        $show = $index === 0 ? \'show\' : \'\';\n        $activeBtn = $index === 0 ? \'active\' : \'\';\n\n        $output .= \'\n        <div class=\"faq-item\">\n            <h3 class=\"accordion-header\">\n                <button class=\"accordion-button \'.$activeBtn.\'\" data-target=\"\'.$key.\'-\'.$index.\'\">\n                    \'.$item[\'question\'].\'\n                </button>\n            </h3>\n            <div class=\"accordion-body \'.$show.\'\" id=\"\'.$key.\'-\'.$index.\'\">\n                <p>\'.$item[\'answer\'].\'</p>\n            </div>\n        </div>\';\n    }\n\n    $output .= \'</div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(9, 1, 0, 'contactForm', '', 0, 0, 0, '// Only run on POST\nif ($_SERVER[\'REQUEST_METHOD\'] !== \'POST\') {\n    return \'\';\n}\n\nheader(\'Content-Type: application/json; charset=utf-8\');\n\ntry {\n    // ✅ include your DB connection\n    include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\n    // Validate inputs\n    $name = trim($_POST[\'name\'] ?? \'\');\n    $email = trim($_POST[\'email\'] ?? \'\');\n    $phone = trim($_POST[\'phone\'] ?? \'\');\n    $subject = trim($_POST[\'subject\'] ?? \'\');\n    $message = trim($_POST[\'message\'] ?? \'\');\n\n    if ($name === \'\' || $email === \'\' || $phone === \'\' || $subject === \'\' || $message === \'\') {\n        echo json_encode([\n            \'ok\' => false,\n            \'error\' => \'All fields are required.\'\n        ]);\n        exit;\n    }\n\n    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {\n        echo json_encode([\n            \'ok\' => false,\n            \'error\' => \'Invalid email address.\'\n        ]);\n        exit;\n    }\n\n    // ✅ Insert into DB\n    $stmt = $conn->prepare(\"\n        INSERT INTO contact_messages\n        (name, email, phone, subject, message)\n        VALUES\n        (:name, :email, :phone, :subject, :message)\n    \");\n\n    $stmt->execute([\n        \':name\' => $name,\n        \':email\' => $email,\n        \':phone\' => $phone,\n        \':subject\' => $subject,\n        \':message\' => $message\n    ]);\n\n    echo json_encode([\n        \'ok\' => true,\n        \'message\' => \'Message saved successfully.\'\n    ]);\n    exit;\n\n} catch (Exception $e) {\n\n    error_log(\'Contact form error: \' . $e->getMessage());\n\n    echo json_encode([\n        \'ok\' => false,\n        \'error\' => \'Database error occurred.\'\n    ]);\n    exit;\n}', 0, 'a:0:{}', '', 0, ''),
(10, 1, 0, 'ContactSendJson', '', 0, 0, 0, '/**\n * MODX Contact Form – JSON + error_log logging\n * Logs ONLY to server error.log\n */\n\nheader(\'Content-Type: application/json; charset=utf-8\');\n\nfunction logMsg($msg) {\n  error_log(\'[CONTACT FORM] \' . $msg);\n}\n\nlogMsg(\'--- REQUEST START ---\');\nlogMsg(\'Method=\' . ($_SERVER[\'REQUEST_METHOD\'] ?? \'UNKNOWN\'));\nlogMsg(\'IP=\' . ($_SERVER[\'REMOTE_ADDR\'] ?? \'UNKNOWN\'));\n\n/* ---------- Only POST ---------- */\nif (($_SERVER[\'REQUEST_METHOD\'] ?? \'\') !== \'POST\') {\n  http_response_code(405);\n  echo json_encode([\'ok\' => false, \'error\' => \'Method not allowed\']);\n  logMsg(\'ERROR: Method not POST\');\n  exit;\n}\n\n/* ---------- Helpers ---------- */\nfunction clean($v) {\n  $v = trim((string)$v);\n  $v = str_replace([\"\\r\", \"\\n\"], \' \', $v);\n  return $v;\n}\n\n/* ---------- Inputs ---------- */\n$name    = clean($_POST[\'name\'] ?? \'\');\n$email   = clean($_POST[\'email\'] ?? \'\');\n$subject = clean($_POST[\'subject\'] ?? \'\');\n$phone   = clean($_POST[\'phone\'] ?? \'\');\n$message = trim((string)($_POST[\'message\'] ?? \'\'));\n\nlogMsg(\"INPUT name={$name} email={$email} phone={$phone} subject={$subject}\");\n\n/* ---------- Validate ---------- */\nif ($name === \'\' || $email === \'\' || $subject === \'\' || $phone === \'\' || $message === \'\') {\n  http_response_code(400);\n  echo json_encode([\'ok\' => false, \'error\' => \'All fields are required\']);\n  logMsg(\'ERROR: Missing fields\');\n  exit;\n}\n\nif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {\n  http_response_code(400);\n  echo json_encode([\'ok\' => false, \'error\' => \'Invalid email\']);\n  logMsg(\'ERROR: Invalid email\');\n  exit;\n}\n\n/* ---------- SMTP CONFIG (replace privately) ---------- */\n$smtpHost = \'smtp.gmail.com\';\n$smtpUser = \'navodyadivyanjali2@gmail.com\';\n$smtpPass = \'hmdn xouu ecxf vait\';\n$smtpPort = 587;\n$smtpSecure = \'tls\';\n\n$fromEmail = \'navodyadivyanjali2@gmail.com\';\n$fromName  = \'Platinum Drive Rent a Car\';\n$toEmail   = \'navodyadivyanjali2@gmail.com\';\n\nlogMsg(\"SMTP host={$smtpHost} user={$smtpUser} port={$smtpPort} secure={$smtpSecure}\");\n\n/* ---------- Email body ---------- */\n$bodyHtml = \"\n<h2>New Contact Form Message</h2>\n<p><b>Name:</b> \" . htmlspecialchars($name) . \"</p>\n<p><b>Email:</b> \" . htmlspecialchars($email) . \"</p>\n<p><b>Phone:</b> \" . htmlspecialchars($phone) . \"</p>\n<p><b>Subject:</b> \" . htmlspecialchars($subject) . \"</p>\n<hr>\n<p>\" . nl2br(htmlspecialchars($message)) . \"</p>\n\";\n\n/* ---------- Mail ---------- */\n$mail = $modx->getService(\'mail\', \'mail.modPHPMailer\');\nif (!$mail) {\n  http_response_code(500);\n  echo json_encode([\'ok\' => false, \'error\' => \'Mailer not available\']);\n  logMsg(\'ERROR: Mail service not available\');\n  exit;\n}\n\n/* Force SMTP */\n$mail->mailer->isSMTP();\n$mail->mailer->Host       = $smtpHost;\n$mail->mailer->SMTPAuth   = true;\n$mail->mailer->Username   = $smtpUser;\n$mail->mailer->Password   = $smtpPass;\n$mail->mailer->SMTPSecure = $smtpSecure;\n$mail->mailer->Port       = $smtpPort;\n\n/* SMTP debug -> error.log */\n$mail->mailer->SMTPDebug = 2;\n$mail->mailer->Debugoutput = function ($str, $level) {\n  error_log(\"[CONTACT SMTP][$level] $str\");\n};\n\n$mail->set(modMail::MAIL_FROM, $fromEmail);\n$mail->set(modMail::MAIL_FROM_NAME, $fromName);\n$mail->set(modMail::MAIL_SUBJECT, \'Contact Form: \' . $subject);\n$mail->set(modMail::MAIL_BODY, $bodyHtml);\n$mail->setHTML(true);\n\n$mail->address(\'to\', $toEmail);\n$mail->address(\'reply-to\', $email);\n\n/* ---------- Send ---------- */\nif (!$mail->send()) {\n  $err = $mail->mailer->ErrorInfo ?: \'Unknown error\';\n  $mail->reset();\n\n  http_response_code(500);\n  echo json_encode([\'ok\' => false, \'error\' => \'Mail failed\']);\n  logMsg(\'ERROR: Mail send failed: \' . $err);\n  logMsg(\'--- REQUEST END (FAIL) ---\');\n  exit;\n}\n\n$mail->reset();\nlogMsg(\'SUCCESS: Mail sent\');\nlogMsg(\'--- REQUEST END (OK) ---\');\n\necho json_encode([\'ok\' => true]);\nexit;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `preview_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(1, 0, 0, 'BaseTemplate', '', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\">\n    <meta charset=\"[[++modx_charset]]\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n\n    <style>\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n        a {\n            color: #0f7096;\n        }\n        ul {\n            padding-left: 2em;\n        }\n        img {\n            max-width: 100%;\n        }\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJysvMzc7P0NHS09TV1tfY2drb3N3e3+Dh4uPk5ebn6Onq6+zt7u/w8fLz9PX29/j5+vv8/f7rCNk1AAAXa0lEQVR4Ae3deVxU5eLH8e+wMCigqICguSSiiUiauedSmUtYXVtysbr6u+WtrpmWy22xunmte7Ml762riVppmpaauZuaqKSmLbmgoKip4CKOCrIzzPc3nDPnzHNmgQGGQJn3n3OYM/D6zGHOeeac80Cr48Sl+84YzOajXEJSDGapO+aMagaP64nXyJ1FtFiOcgk10OLqkm64bnh02k6rZeWMfoEq4+z6uD54DM+ke6KTP0XB43rwUDHdFp3HmqHm82ifSTdGZ4IvajoP7wS6NTonoabzeJBujn4xFDcAr9FTJptNGaPDjUe33d3R+QJuAN4nKDnpjRtPe6Pbo+/zuhGiH6Dk4I0YfTxtrUG5hOXSRmEbT/SabSlF22fN+NcIlEvAK2/PiD9M0QhP9BpN9yutMgajguq8RsEMT/Qard5ZWv0fKm4lrRZ5otdoTa9QdTEYFfcnWq1GjeaJfpWq3aiEdkaqvsf1whN9AyqhSQ5ViZ7otS/6Tk90T3RPdE90T3RP9BrJE13nY+WJXkui33pItat+1Uf3C2nbqVfvbu0b+8BWUMsO3Xrf0SkyCC7RBYQ1btw40NVuviGtoju2aVHfG2auRfeq08j8CiH+sOPfMLxxeAM9XKavW7euHuWir39TVCsdHPEPbx0bGxnqV+HoPanKbVSl0f06PP7BxpSMfJoVGpK+ejYKisYDXvpyb/o1I81y0hJmDghAqRoMfH3lL2mXDAZD+v41M4aEoXT1Bs5Yl5yRU2jKyzp/cM3bQyPLil633dAp8zf+euqi+RUyTiYu+GsMLCL6jH3/m90nLpgXXEjdvuBvnX1QhtYj3l390/G0tLRje755a2hzlCmk4yNT567+MfX81dxfvGCrQdy7W05czjUacy6lrH3tDr8KRe9O1eWGVRe93pA5R4zUylk9AGa3Tv7OQBvHXguFU70XpFPj4rLBcC72P6eolZ1fSvQ63SatSi2iVuHOJwMROWrOT1doY/+rzeBc2LiduRRlbvxzPTjlGzNmzp4LJiqSbKN3+DidGgcmNayp0bv/5yQdWtb1uV1GOnLqCTjWcRUd2NoPjoV9lEdHHEcPvn/eMTqWtC2HDl2aXh+OBb6UTnvHnvaGI+EPxycVUeOgNnqj/+TRzskna2J0n6FbTKyAj33hwAu5dMj4tg8cuDOVdDW6z53z0lgRh3rAkV6/0bGEaNhqNGrlJcqcRu9+hA6tCK150duygr70gi2veDr1bT3YGZlHl6N7r2VFZT8Ie2Ny6UzGIGgEvXeGAsfRh1yjE/tvruLoO1Be0UWsoBmwNY+l2KiHjbgiuh7d5wwrLH8QbD3FUuTeC1EUWWb0Pjl0Kikcish8qja6K3oiyqtdIV11zWC4aqKquA+0XqZVYVrKvr3Jp/NoNQdakQaq8k7s27xxx6Gzxc6jH2PFZbSC1mAjS3P1Vggi88qM3iSdpdjqC4uBtFpZmeghl6hKC6h49Is/xE8ZNaBrp9vuHDU9IZ8i0+HFLwzp2DKiSbMOw+Iv0WKXF0TdimiRs2T4LfW9Ae+gqKHzrGkfgki3kYpNf46qIz3UIGbk7OQqiM610Ig4x9L9Vrd80b9iqV51dMLLrMpE90uh1ZiKRv+pdyMI2i+iomjP1Nv8YNX8K1oMgMArkRbrYiBoqa7peJDDs/5PPwCRftA590fnIIg+Z1leL1f0gdQyUSv3FkgmUDC6MtHxDa0u3lbB6F/CxlRaPKWDlk6p/gUE99Nivhe0ptHieVh576XsRGvY+LUKom+BoLORZbnStBzRdTsoKnq7Y6dZ1FgMs+YfUZDdHE7EUmXwgxNjKDCMrVOh6MthazllU2Ar7CIlaYGw+p6y77xg6zPKUvRQ9aEsr7v92LuL0S+fNtCBjJQf95ygjaJoWC2mVvrCd5ZdptY/y45+2Ev4WwSPwWwyRQVtgPkGij6F6PZBVhOouvbIIKtmEASnUXTkefdE72J0upc5h7LOwnqKKMm5BXYapVPWH6r/UfY+KhQ9+Y2HY5sGRdy9lFprhsc29gHq9t1IrRehapZNjYWhAG7+jhqn6pYe3VSQs0+JHk/RIki2UPQWUEjRpRYQJbBs4yB6nBo/uCe6z1FKjvnD1jDKRkI1mbL5cOBVyj6GQm9pmNOyYtHfEVYtehcW3kupsRqqp6mxSYcSQQepMdBZ9CMLp4+9v2/ndjffBFnAKQoKYyHpr32SHwwUFN4HjY0s29PQ+Iii79wTHespyWzsdFfj7/a/dR840Drf0tEHFrcWU7IeFYv+ARSJFP3m5eSir+N6KFZTVBAL2RBqzHIWfRRs3EHRXsj8jlJQ3EkT3TAUlY6Od6si+leUFETBVnQhJf+Gov5ZSn6vA0d2UZLXChajKZtQ6eh/oSirKRQfU3StBSyC0inaBAufJIr2OYv+OGy8SNGHsJhL0TNi9PXRcEN0DDvq/ugL1J0QW7cU2EaPNZU64vAeZffCYiZld1Q6esdiCoQVDqdGJydPeA6K9ym60thJ9CdgY7HjNM9QFK9ELzy+eBDgluio/9Smi6bqiz6Ustfh0Gjbg7YVlGQ2rXT0FtcoGg5FH2r0g8XDFJm6QzFMu6CLi9F1eylK2ZEo2ZFC0Q4l+qU3m8Ad0WVdlhVWX/TxlD0Gh/pS9p7N//sT+kpHD7/sZBe3t5PoUyjKioCis4mih12MHpBGF6TAQIusRR3dFP3BnSay+qLPoOzu0r/WWawkPEjJL3B39IllRv+AIuFt1yyLoudcjN40iy64CANVua+6I3rECpLVGf1/lHWFQy2vacfAA45Tst3t0SeUGf1Tin7VQVHvAkXTXIzeroAuuAwDBZ95Vzp6ZDKrOfo8SoyxcCjsEiVbbKKvr4boyylKhKrOSYrecTH67Sa6wIDLFH0EjS0s298gapRE0eZqiB5PSX7b0qPvqgHRV1G0VfPNleh9F6P3oGvRs6kxBKLFZ9MVaRlUFZ9LS1ecfRyiudTYWn1belEMHAq1RP9eiX6Ckm3VEP0birZD5X+covfcGj0D9yw0UrDXB4LAhg0UwfdQdaVVA1VDPQTtiyhInx5TDdE/oawLHGqWqd2yfZMo2VcN0RdS9LMOiqDzFL3hYvTbiumCdAB9TlLQA07cTtXlenBiOgUrmgDVEP3flPUr/VWWweJHSlJ8/vjo/6UoxReKiCsUTXQxetsCCozHjiQ7shJm7Q20mlKZ79N1P9Bqqw+qJfqLlD1a+kUb/4XFOkouhPzx0V+hyBACRQcjRSNcjB5+lYKc1n6O6OUur9NqQWWiB52mqrAzqif6MMqmwqHhtu/u2ZQY2//x0R+nyNgRivuocYeL0fUnSjlHp5SPgrWViR6eSdUhr2qK3pWyhaV/Aj0Ei4mUPfjHR+9GjdHCLynKbu5idGynaANK0TzbXWfD5lK1HdUUPcRASZIPHNlCiTEaFv0pm/nHR2+UQdFSKPbYnoHtYvSPqTER9jo0tLS6Uv0XO7gvOnZqR2ccf+yl+tv+e9rv7TT6oSqKju8putoEstuNFC2Aq9GfoIZpEmx0nJfZVrzY4YaJPoOyt+HAWPszKRM0X3KJvPZT8rNXFUV/mRpzHY+EDnc1urxctKYHVN5tn9lcxMJWN2T0HpSdD4Ed/WHKHoFqEmVfwVbQOUo2oIqity9ycJt83/epcSnE5ehIoI3ihFfiune/Y/Djb3x5MJ9meTdmdJ/92g1H9AplZ+vD7gKf4ntg4z5tV/dHxxZqbR0/YspeasXD9ehPsXQ3bHQ8TYvxsDG8kPY/jhWUnY6ERr3fKHugyqLfyzIVxpYjenC6W6P3oqqoUc2OHpBKi3cCIfCbVETZ5aYQdC2m7FhvCKK2U3Y+uMqi67ayLPNRjuh43q3Rw8epnvKv2dHxEBVHpnSoA4lv23G/OJt34lNaFM7tGQhJo94fGmgxE1UWHR3zWLpzTcoVXb/PndE1anh0LBBHoLct/eKLL7cczqfqO29ohJ2i6uTWJV98sWrPOarOR1RhdIxj6e5DuaLj1qzaGj0gkaVIjoCNfvl0bhiqMjo+YGleQDmj4xEjS1MYeaNGR9gPdOpIJOwMLaAz01C10fEunTK9CNeiu35XjWs33bDREbSQTqyLgAMDz9Ih42RUdXSMvULHzjyACkRHnyN0akMPnX309aiEiJoRXTYqhQ6kjdPBoZu/pgP77kLVR0f0cjqQ/8lNqFB0NPjXVTpSsGYQZNrom1EJzfMqc/uR9s7fd19SdgtsRTu/mULQsz/SxsGpjeHUwDV51DAmjtbDns85imZDEVFE0RQo+lGjP+z0mn+BWqc+iIWdKGr8Bc5ETk+mjdzdr3WA1U2ZVB3QoeLEszE3orwiZsfPNZv3NOyMnj/XLH62fbJwy5MeggO6rlPXJGcV06w4J3Xjm331KFW751cdzTHRrOjqoRUvdoJDXjPi51rNHwZF/Q/FBfOsbaPihQXx8W3hQNjQd79PzSww0ZR/JXnjW4OC4UDox5pX6AHn6vad9u1BQ14xWZRz8eDGmSNaQ6Oxgaq8SFTc87RaiZpB3/TWvv379+vUrC5cUadZ57v69+/VvrEv/nh1w9t07npb6zA93MMnpFWnrl2imzf0gR3/k7SKR4U1PEqrOajRPHZQsOD2+np/X5SLTu/vHxa3j4LJqNE8PqLGmZRjs1AuDfccPZpBjf6o0Twepq2VKJewq7RxuRFqNI9Qg9tnVV6JGs4j3u3R41DDeUTnuTn6Lm/UdB5vuTe6sRdqPA//HW6NPg3XAY+IX90YfQ6uCx5ha90V3TgN1wkP3bOn3BJ9Rz9cPzwaPp2QRdkalEtYLmVpiwfrcH3xaD5o4vvzF8xf8DTKJehD83M+efupnvVRq3h4eHh4eHh4eHh4eHh4eHh4eHh4eLSIiQmBKDomJhAK/07Dnx3317iWUDWJaS+JiQyEIlJ6TBbTEhpB4rIoHWS+HR41r/f+1lA1Vtbbuh7sBcbEtIOocUxMc6iaDnpy3N9GdQmAwr99jLSy9k29YVGvU/uYAKhuiYltCUWL+8dNHHtnMGqLdUbjIbH6S0VG492QNXgt2cQS2ZsfhMVco0X+yS/7Q6L72SjYYjsVtiBJjxIBkw8YWSJvx2OweNtoUXB6eRxsDTQaC5+DVUSq0fgNLPp/e4WSE+80hayjUVaUdeDj7pCEHDFZn4IxBcbCAZDdt42kicya3wG1wyaSK6C620jyHki6JtPqi7qQLKDgvz5S9AMU7IVGHAVnpejRP9Pq22BI3qHg8zrQGqyd69Vrk/WbTp9ZtEobDEknWhXPDkKJu0zkeMiirpD/giRiNX9/o2/z8Kj75xfxdR1qgw2ay22anLFeiNHhInlt0V/j7h360g6Sq3yUOQJWvG42fcnvyuS2ut9YuOLzhbJFf4fGveSpz5Rl//YF0PIUmf/Vs0PufWDSZpIJdZU7km983ezNhakkZ0NrEM2ONoTFmzT71nqm8k9vPHTvvWPiL5H5/ZToaa+bzVybQXJroHKiY3YHlPBOIHf6osQtvxdPqANZy4Vc5ltrohf2gcR7I9XoPrvJfTGQPZFDTlCiD4UkeCaZ20qOnhkKkTb6Moh068mkrpA9eIWcoUR/GpKAV8niTg6iczlkQ0zW6I+SxS94W6JtIo8HW6LvgqTpm0XKNCz6H8k9fjB7ibwchRKhqVe7wepFLqgd0QtPkCcbo8Q/yNyzlugPk2lNxUnAzwZboj8Gi63kM3L0rBalRF8B0d3klTZQ3F/MzKaW6BOFCXtes4t+rpB8QW57njxjkqP7HRJPMw08SE60RP8RFiOLWRSLErHZ8lusS776Ryw1dQPm7d5/4MDP/+sM4A2OqBXRi+KOkWt0AOJM5LhlluhrtFPn7yZH2kYfT84qd/TPyOmwWkc+Zxt9JLnYLvoXfycL+pR0TiD3D7dE76udS/pB8hdvm+j4TJ1WdQJp7IvAA1Q26L6cAuAAf97741Hm/wnw2pseWBuis1XPYvIVeQtagTVy9AYZzL4JVs+Rn9pGf5z8pLzR/VO1cwaNIFfbRo8jV9hFX45N5PFQYCaZH9udcvTp5DuwqnuGhVG20buZmOSLEroNZEq9mWRSPUi+ueAP4JdMf0A3pOC4PzCAo2pF9E54hSy6EwlkagjWy9FvV2fKkXUh9+psos8gp1mih5cS/WsIogqZqodVmwIe87OJPoGcZRd9FZqklZQeSnI8BliiryLvh2AdeZ9tdP1x5raApEUGuTuf+d0gCc77AFL0AJitZxTgc2ZNLYmONeTReWReTyjR77OJ1TSLp+rK0UcoD50i75SjZ/eLaiNp29A++iZlWWMAvcnvIQg6z0vhcvTxkDVIIh92EB0DjeT/0sglUKPvpakjBLPIZ2yjYyvZC7KRLDEJsu4cLEevA7PveDOAxedqS/TwkywxHmr0x8h5EDQ8R0OwHH1sveDg+g1aPZFM7vaVozMvV5b3d/voxlxZ/ifyv+7VEOiPMedmOfrLJesNbvHoz2RyoKPomMYSScFqdO+jzImEYBr5kl30ZcLM4PPEcYmH2U6KntXQ17feKNNPPgBeLa4t0dG3iOQSOI/e6Lwa3XD6zJkz6Xkkz3eAHN3qn/bRVcscRT/K7JZy9Csl603LIZnZEw6je60nmd0ZanSf47x2MwSTyH/YRf+UjIPFAyZhXpBRbAWzH02nTx0/zQvdYTaRtSY6pshbkBp9OPkpBCEXeLG+HF1RtD4aluhF65Z9LVn+kH30tGVfycueBTCQXAeB/wleayFHVxgTusBxdISfIsfCGt3rEAvaQjCDfMEu+ipyAGShx8UJcOPYWYpenHQgjQkRKPFOXu2JjtXGzhCi301ugCCygMl+cvT0pCOHU0jTY4ASPTPM1cGZztYccoUrPBssRz9vXm+yiXwOcBYdd/FzCNGxnewJwXzyz3bRd9HUCbKvyHwyqx0kt3CMsiMX+vv5lijx/eFaFL35gxCjty3kCX/t6PcWyNFH++n9/BeRX1ujZzV39ZAt4iozGsCqWzF/0cnRJ/vp9foPyS3ezqNjeKgm+mfkk4DYl71toze6pE7k9ySZf892MtEXJXzT1srR6wJ/4maYhebPqjXRZUJ0v2QWd4XVB+QMS/SRUrwL8h0Zy3ucrttNDtZOIDIHcvTnYVbvBDnVaXSZEP0Z7UFGi2y5ryb6MHVCtHZZ5EuIzSH/Acl0tpGiBwL4mk8BmMqutTc6ZpFfaC/B7KYZnPk/MqNZ+aPjVc3nRsBxcrBmcOYB8lq0y9Fb5TG7LVRvkStgE13/m3I06LeL3OYFTCCLeqNERPYGAMcYBKBZFmPRXHqg1kaPLmDxSFh4LyO36TTRsZlcqUZv4nL05lnkOChmk/v9NNGxlEzwcjU6viR3BMGify55t030oGVkeiOU+Cd5OUodmEOJpzgNeGycL8zunnx7wO7cqNocHf8ii2bcDDO/XpvIwq7QRm+XTT5uiX6tY6MQWWj9MqJjEslZUTDz7voNyYHQRr8pg5zgcvTIy+SeAXVh1mRKNrkQYvTANs8cUicTvstIjlEH5j6B5GO+5Q1FRCL/hFod3W8pyazdK5esP0LS+GfYRMcr5LlwObop49x52YUVZUXHJySz965asvagieTzsImOsWRWlKvREZdD8vh3S77+wUByR30les4Bs9/zSRaPR4mGx61H6COts8m+x5/jfFEi7MXM/KGoDbaRnSH6Xtn24DP9GhWHB0O2iBwNmf5X8lsfQJdSypkz95FrYWOqgYrUYdYdxSmQ6baRiXUgiiM3QDSY3ARZzz1U5H0UCElnWiX2Rwnfb8jTYbD+GdfaQDL0GE8tmjrhzfW53BCNWuHdxJ1REM1MTLwdFlEvbz5hMGQcWDIyQA2WmDgAFj13JO7qDOg+TdypSvwPNHokJv4Ttpq/uD7VYLiU9PXoYFg8k5j4KCxitu3ccydE3RIT34aoq/CAzwPzf7loMJzeMb0DLKIsv8zWpS/3gKzH7sSdA6FotDZxz0uQ+T/y9WljccHh2b0g+X8Vbbf7yuo/YwAAAABJRU5ErkJggg==);\n        }\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwICAgMEAwICAwQFBAQEBAQFBgUFBQUFBQYGBwcIBwcGCQkKCgkJDAwMDAwMDAwMDAwMDAwMAQMDAwUEBQkGBgkNCwkLDQ8ODg4ODw8MDAwMDA8PDAwMDAwMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABLANwDAREAAhEBAxEB/8QAuwABAAMAAwEBAAAAAAAAAAAAAAcICQQFBgoDAQEBAQEBAAMBAAAAAAAAAAAAAgEDBAUGBwgQAAEDAwQABAIEBgwJDQAAAAIBAwQABQYREgcIITETCUEUUWEiFYEjtRZ2ODJCUmJyonOzlNRWGHGRobEzg3U2F6MkNGS0JTXVJsY3SBkRAAICAQIFAgEJBQkAAAAAAAABEQIDMRIhQRMEBSIUUWGxMkKi0lQGF3GBwSMV8JHhUlPDRBZG/9oADAMBAAIRAxEAPwDfygFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAV35F7Yde+J8qcwjkDkqHYMpZbZck2n5SdKJgZAI416xxYzwNKQEhIhki7VRfJUrVVsl2SJ4tF2tl/tVsvtlnsXWzXmKzOtNzimjjEiNIBHGXmjHVCEwJCRU80WsKK+5v2964ccZbLwXMuUoFoymAYNXC2jFnShjuGKEgPPxo7rLZIhJqhGip8dK1VbJdkixkeQxLjsSorwSI0lsXY77aoQG2aIQkJJ4KiouqLWFFa8v7k9YsGub1nyLmGyhcoznoyY1uGTdfScTwUHCt7MgRUV8FRV8PjVbWS7Ik/jnmTizlyLIl8bZ3aMvCGiLNjwX0WSwhfsSejHtebRfgpAiL8Kxpo1NM4PK/OfFHB8C1XLlPMY+Jxb466zaEdZkyXZBsoKu+mzEaecVAQx3Lt0TVNV8Uok2G0tSE2O/vUWS62y3zDHE3V0EnbRemgT+EbkARH8K1uxmb0WZwzO8M5FsjWR4JlFsy2xvGrY3O1yW5LQuCiKTZqCrsMdU1EtCT4pUtQanJ39xuNvtECXdLtPj2u2W9on59xlugwww0Cak4664oiAiniqquiUNKuTO8vVCDdfuZ7me0nL3bPWjxp8iLrrp/0xmMcfTw8/U0qtrJ3osdj+XYtlePx8rxnIrdf8altE/Hv0CS3IiE2Gu9fVbJR+zoqEir4KioulSVJV5/v31GjPOsOcxRiNklAyatN5dBVT9y43BIST60VUqtjJ3o/IfcC6hmYtpzA0hEqIilZb4I+P0ktvRE/CtNjG9FqYuVY1NxmLmke+wSxKbbm7vGyM3wbhlBdaR4JKvGoiLatqhblVE0qSit1w7y9ULbcvuqRzPaXJW5Q9WLGny42qf8AWo8ZxjT69+lVtZO9FhsOzjDuQrIzkmDZPbcssT5k23dLXJbkso4Gm5sibVdpjqmoloqfFKmDU5I75X7HcK8HzLXbuUc7jYtcL0yUm2wCjTJjzjIkoK4rcNh8hHciohEiIqounktak2HZIjG298+pN1ltwovMkFp51dBOZbrrDZT+E9JhtNj+Eq3azN6LV2i8Wm/2yFerFdIl6s9yaR+3XWC8EiM+0XkbTrSkBiv0otSUQhyf2m4D4Zv7WLck8iRscyB6MEwbUkOfNdFl1SQDc+SjPoG7auiEqL8a1VbJdkiNV9wPqEOmvMDXj9Fkvi/5rfW7GN6LGcbco4Dy9jQZfxxksfKcdOQ5EW4Rwda2SGkEjacafBtwCRDFdCFF0VF8lrGoNTk6jJebuLcRu8mxZBlrMK7Q9qSoYR5UhW1IUJEImGXBRdFRdNda6VwXspSPrfkPzh4nsMzw586rdaqLWj9u1NHQ/wB5ThP+24f0C4f1aq9rk+HzHh/UHwf4j7GT7o/vKcJ/23D+gXD+rU9rk+HzD9QfB/iPsZPuj+8pwn/bcP6BcP6tT2uT4fMP1B8H+I+xk+6SJ+fuH/mj+fn39H/NH0vW++9D9Pb6vo6bdu/d6n2Nu3Xd4aa1z6dt22OJ89/W+y9n73qLoRO/jGu34TO7hETPA+cH3D/1vuV/rCwfkK31dND231LZdNe59s426zcn49mMpp+9cPRCncdQX3PxlyaurxNx4IjrvJGJzibyTXYy4mibW1qbVll1vCMi73errkl5u2Q32c7c73fZj9wu9yfXV2RKkuE686a/EjMlVa6HI3J76c63zjbrvxJxzidxctV55SsscbzcY5kD7Vngw46PsgYqigslx4AVdfEBcH9tXOilna7hGbnX7pXzH2Mx+55ZiP3RYsZgPuQ495v0h6O3MlNChG1GBhh9wkHcKEaiga6oiqQkiW7JHOtGyP8Aby71F5sBHUPGOQcDmNm42DiuRZkZxBcQVJtUR6NKaVNU1TUV0XaaeDg0ZxqzQ33PsttufccdWs4s6/8AdeXQrvd4AqSEQtTYtqeECVP2w7tpfWlRTmdMjlIqBwl0i5X5/wCM7lyVgN2x5Y9vuUm1t49cZL8eZIeitNOl6ZJHNhNyPIg73BTXzVPOqdkiFRtHX9UeYsr62c/2hm5nLtVmm3ccY5Pxh9VAfSJ9YzpPNLqiPQnVVwV8C1Eg1QTNF2ylCrhl0fdd5VyVvJcE4agz3YeLHZhye+w2lURnSXpT8aML/wASFhIxEI66bj3KiqIqMY1zLyPkVn449vXmzlDiKDyvjtwx8RvcY5uN4nIlGE2bHAlFF9VG1YaJxRXYJuJ8N6hVO6TJVG1J6b28c0ziw82XTg90bgxjHJttu9tyuyOtHrbZsSE8YTiZNEVpxtW1ZPXbqhIhaqIaLrhIo+MHgeyfR/OetOHW/N8jzGw5FarpfGrHDjW0ZQSfUeYkSBdMXmhBBQY6oqIarqqedK2ky1IPP9aOn2a9nrdlVzxTKLHjzOJSosWc3dvmd7iywcMSbRhpxNERtddVSttaBWsk398eQL5hlv4t6kWrIXJePcQ4lZGc3eYFWAul4SK36KuBqS+k0ygONipabnF3aqAEmVXM275Hg+PPbv7CckccQuR7UzYbVFvUNu4Y3j10muMXCfFdTe06AiwbLaOgqEHqujqioq6IutHdIKjaPKdQeZcp678/2OHcHZdtsF7uzeMck41IImwEHX/lldeaJFQXYTq70XTdoht6ohlrtlKMq4ZZL3ZP/mfjj9Ch/KMupx6FZNSvWNdHeVsx6/tdgsautiuVkOBcLoeLes+3c0iWx+QxJIUJn0SNPlyNA9TVR8E1LQV3cpgnY4ksx7V3LmSQeRMj4alznZeIX20Sb3aYDhKQw7lDcaRwmUVdAF9oy9RE8yAF+nXLrmVjfIhz3Mv1prz+j1n/AJkq2mhmTU7/AI79s/lXkjA8Pz+1Z/icK25laIl4gw5Sz/XaamNC6IObIxDuFC0XRVTXyWjukFjbNSOv3E196c9csttd7ucTMb3EuE/Il+7WnUjC5IZjRmmtXNpkAqyhmW0dEVfDw1XKrqXSPj/NeQfjOxy9yq7nSraXy8p+SdfgpKT2R08jzi0PX0iuTl9vkc7wTirrIWTJFXtyjov29y66V8vb01cckfyx2dn3nf0eb1O+Rbp+tust398lvsrxzj4slgY/drRhMa4fn5arZi9oxU1Wc5bFm+nMbvTQEoiqsqKfAt+qJ4V4qWtEqdHM/wAD9T8n2Hjn3VcGWnbq3ucdMdcL9bx74us6ThemPg90o/XJeO8Uvl2xe2XCy4pCS550totcvDkebbW2RBcclxLm4i+mElU2CiJoeuu3wRaVyWSbTenP+BXkPA9p3ObDjyY8Fd3c7KvBKXTqm70yv6KyfRS+tMxwkiK8nj+d8e8m3kcKsuH3Hje4WsLG7Z2CjG9GnynIpR5epKjxggIW9U3a6+SeFdqzS1VLcyfV+7fb+T8d3eb2+PDbtrY9mxbW63s6Ot+Pqaidz4z8hMf/ANJv9X/7hrj/AMj+3wPtf/hv3f75j37iH633K38nYPyFb681ND9evqU/vthvOMXSTZMgtr9ou0NGykwJIqDgC82LzRKi/A2zEhXyVFRU8Kok49xtlwtMgYlzhuwJRsMSRjvCoH6MpoH2D2r4ohtmJj9KKi0Bod7kMp88y4GhEZfKx+KLO8y2q/ZQ3pEoTVE+lUbFF/wVFC78jXToxBi2/qhw0zEAQbetUmS5t+LsifJedVfrUzWotqdaaGWnuvwIrHOmCz2gQJU/CGBlqn7b0bjNQCX69C01+qrx6HPJqR32TkOyunvR915VUxhZWyir+4Zlxmw/iilatWZbRGj/ALWf6tVz/Ta6f9kg1F9S8ehkf3jt0Sz9sOZo9uBGGju8aaSB4fj5kGNKeLw+JOuktdK6HO+prL3Y6jZD2PxPCuRcDdZc5LxiyNxZFlluIyF2guD8wjLbx6C2826ZqG9UEt5IRDolc62g6XrJlpxR2U7GdPshfwqXGmR7TbnzW7cW5Sw6McFcPU3IyFtcYU1RVE2i2Eq7lE6t1TOas6m4/WbtVxP2SjXCRi8ZMaz+DHF7JcQnI388LKEgeuy+CIklhCVB3Jooqo7wDcOvO1WjtWyZXX3XE16+4av0Z9B/JlyrcepOTQjn2jv91Oa/9rWb+YlVuQzEZ0d3pL0rtZzQ6+qqY3lpkVX9wzDjtB/FFKuuhF9T6f8AHYUa24/YrdCAWocC3xY0RsPARaaaEARPqRESuB6D5gO6kViz9r+ZUtojHQb+3NRW0RNH5EZiS6fh8VdMlX66710PPfUs77qjpyOV+KpLvg5IwNlxxP3xTpRL/lWppoVk1Kv2XuNzVjnCI8B2C4Wy0YWkKZbinR4elzKLcH3X5TXzJOEKeorxgqiCEgr4Ki+NVtUyTucQaU+2r1cvOFg92Ay6VDVzK7KsHBLTDktS9sKU426/LkOMqYC4XpC2LaFuFPURxBLREi9uReOvMpl7maadpbx9eO2df+SKqpoTk1IvxfnXuRZ8bsNoxLKs8Yxe1wI8XHmIUJ5yMEJltAYBk0jkigIIiD4r4VsIxOxv31Wume5v1wwKfzNHly8wvkG4M5E1d4qRpEiMs2SzHWQxsD/SRUbXxFNyLuXzrk+D4F3x1y43S6mtk009Gnwaf7UVOyPr1yjiWbyHsPx1+92q13AJuOXQDZMSbA0dZRwXDFdweAkijoqoungqV8nXuKWr6mfzr3/5F8r2Hft9pid6VsrUtwfBOaym9Vo5XFr4HCLi/n0sy/PtcJk/nCl2S9etpGRr5tHvXRfT9TTTenlW9XFt2zwOL/Ln5hfe+99u+rv6k+mN07tJ0nkds1hnZBhm+stYjKD7+vbWRuuIMXfFujLqvDKhr6n4g1VdqqPmP2fKp34uHHRR+49VfE/matciWB/zMiy/V9ORPdvpx9D5OPq8NDk5ZivZDMrcVqueD/JwZEr5+5s22LBhfPTNFT5iUrJCrp+K+K+GvjprWUviq5TOnk/G/mbyGPpZO3ire6ypWlN9/wDNfa/Uywf/AA3zL+6x/wAP/uj/ANXfL+p90eq3u/8AF/ndm/ds3el46a+fh515+rXrbuX+B96/oHe/9T9js/nx9GV/q9SJmJ2/LrwMQ/cQ/W+5W/k7B+QrfXKmh+i31NPb10P445/i8H8o3m+z7BJDC8ZYzS0QmgMb01EgsI2pPKQmy4rSI0RohagIaIKjqsboOmxPiZQd6vDtfzA2iILbE63sMNiiCINM2uG22AomiIgiKIifQldK6HO+pa/3KsGlDivW3ktiORwX8Waxm5ykRdrTrTDUyGCr5auC5IVP4C1NGVdaEjdHe8vEmAcOW/i3l2+O4ncMIdmJYLssOVMYnQJDxyxBVitvEDrRumG0hQVBA0JS3ImWq5NpdJcSgvc3n22diuapuYY7HkMYpZbdHsGLLKH03n4sZx14pBt6rs9V59whTz2bd2haol1UIizllmO9WCzONOu3THCLkCs3SxWa7hd2CTRW5rzNtflN6fvHXCH8FTVy2VdQkSb0U7XcF8Fde7zY+RMwK3ZKGT3G5R8bjQZcqVIYdjRAaVtW2lZ1MmyRN7gomn2lRKy1W2bSySM5bzcL52c7GypsOA63c+XMwEIVuFVcKLGmSEbaAjRPFI8fTcWiJoKl4JV6I56s1Y7hd3+ZuvHMzPHOHYrjrOK2602+4QJN3jSZDtyZfFUMhNuQygNg42bKbU11Al3fBIrVNHS12md1m/bXo92C4ebc5oAm8gC3avYuFulOXu3XA2tDS1Tm2fTXRxV2GrggSInrCiajWKrT4Gu1WuJmp0Keu7XbPiRLITom9LuDc4Q10KGtulLIRxE8FFARV8fiiL5oldLaHOmpqP7rf6vmHfp9B/Jlyrnj1OmTQjj2jv8AdTmv/a1m/mJVbkMxFLPccwWfiHaHK7u8woWvP4Nvv1nf8xJPlwhyB18tyPxjVU80RRX4pVUfAm64mk/EnuPcArxHj8nkC/zrFneP2iNDv2Mhb5Ul2bLjNI0TsN1ptWFF5R3ojjg7NdC8tyw6OS1dQY1PS772e7KDLbtxDc+W8zbUbc1q4kWLKkIm0iRPEI0dPtnp+xBSWumiOWrLpe7GIjzHxqIogiOFiginkiJcJXhU49C8mpHeQdU7JfOjnHnYnC4DsfMrIFxd5EjNm66FxtwXaVEGULRKaNuRRAFLYgirW8i8RTXd3GDNvpkk/wBrjnSRjmfXrhC+3LTHs5ZcuWJMPH9li9RB3OtNa6IPzUYSUtfMmgQU1JdcuuZuN8iJvc0/Wlu36O2f+aKtpoZk1NNOvfbzrhifBXEOM5Ly9aLff7DiNpgXe3ujKJyPIjxW2zZLRlU1bVNvgunh4eFQ6uTpWyguZx3ylx7yzZpGQccZZAy6zxJJQ5cyCaqjUgQFxW3BNBIS2mK+KeS1LUFJye+rDRQCgFAKAyL7V+3vyhzjzllPKOI5li1vs+UNW1HIF4cmsyY5woLEIkRI8WQBoXob0XcPnpp4ar0rdJHK1G2am4Rj7mJYXiOKvSRmu4zZYFqdmAKgLpQozbCuIKqqohKGumtc2dUZP9k/bp5T5i5wzTkrF81xWBYMukxZKRbo5ObmR1bisx3B2MRHmz8W1UV3pqnnpXRXhHK1G2aVZpwvh/JPEo8Q55GK8WE7ZDguymV9GQ0/CABalxjVC9NwCDcPmnmJIQqQrEwzo1KgyByn2mOS2Lm+mE8n4zdbMrirFcvbcyBKFtV8BMIzMwCVE8NUJNfPRPKunUOTxssN1u9tCz8Z5bas95ayiHnN1sDwS7Fi9uYcC2NS2lQmpEh1/a4/6ZIhCHpgO5EUtyfZqXeSq441Jk7ydU807PWzjtnCsisljm4VIuZymb2Ultp8LgEZEUHIzL5IoLH8lDx3eaaeOVtBt6yZ4te0/wA9qYI9neANtqv4wwl3QyRPqFbaOv8AjSr6iI6bNA+p3Q7E+ul2XOsgviZ1ySrDke33IY/y8G1tvCoPfJtkRmTjgKoE6SouxVERFCLdNrSXWkEtdnOqWBdnMfgRMgkPY7llgRz82czhti49HF3RXGH2SUUfZJUQtikKoviBjqW7K2g21ZMupXtMcthOVuFydiEi2b9ElvhPZf2a+foCw6Ov1ep+Gr6iOfTZoh1Q6VYZ1mSdkD11LNeRbtH+VlZO6wkdmJGJUI48Jjc4oIaom8yJSLRNNiaisWtJdaQd73Q68ZN2U4rtOE4lfLZYrzaMjjXwH7v6yRnW2YsqMTSmw26YL/zhCRdhfsdPjqirhm3rKPKdH+reYdY8czuBmeQ2e+XLL7hDkMt2VZDjDDUNpwE3OyWmCIjV1fBA0TTzXXwWtJlKwSp2W6x4N2ZxGLYMnddst+sjjj+KZfEbFyTBcdREcAgJRR1l3aPqN7h12iqEJIi1lbQbasmUM32muZm55N23kfC5dsQ1QJkkrjHfUPgqsBEeFF+r1fw106iOfTZfnqd0TxPrjc3M3vd8TOeSXY7kWHdUY+XhWxl5NrqQ2iIzVxwfsk6S67VUREUI90WtJdaQeM7u9LOQey2a4hl2EZRj1oCxWRbROgXw5bKqqSXXxdbcjR5O7VHVRUUU008118NraDL0ktN194Vd4r6+4twtmUmBlJW633KDkRRwP5KU3c5cmQ6yIuoJEGyR6aqqJu010TXSpblyVVQoMwD9rrmPFOR4uScZcqY3brRYry3c8UvNwKYF2hpHfR6MRstRHGHHGtqa/jBE1TyFF0TpvRz6bJf7cdCOV+fOVW+Q8WzLFY7Uix2+33KPeCmw3PmoYEDhtjGiyx2HqhIikip5eOmq5W8Iq1G2Ve//ACg7A/2349/p11/8qreoiemzTHpJ1oyzrNgmV49mV9tN7u+S3tLkK2Un3IzTLcdtkRVyQywakqiSr9jRE08VqLWkulYLp1JYoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAf/Z);\n        }\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n    </style>\n</head>\n<body>\n<a href=\"https://modx.com\" title=\"MODX\" class=\"logo\" target=\"_blank\">MODX</a>\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/3.x/en/index\" target=\"_blank\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/3.x/en/getting-started/friendly-urls\" target=\"_blank\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\" target=\"_blank\">Package&nbsp;Management</a></li>\n            <li><a href=\"https://modx.com/blog/\" target=\"_blank\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\" target=\"_blank\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\" target=\"_blank\">MODX.today</a></li>\n        </ul>\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"https://community.modx.com\" target=\"_blank\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\" target=\"_blank\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\" target=\"_blank\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\" target=\"_blank\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"https://modx.com/professionals/\" target=\"_blank\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"https://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"https://modx.com\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '', ''),
(2, 1, 0, 'home', '', 0, 0, '', 0, '[[$header?]]\n[[$navbar?]]\n[[*content]]\n[[$footer?]]', 0, 'a:0:{}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `documentgroup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `templateid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextInit', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'sibling', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'numberfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'numberfield', 'core', 'authentication', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_db_session', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'numberfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_format', '0', 'numberfield', 'core', 'caching', NULL),
('cache_handler', 'xPDO\\Cache\\xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'numberfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('emailsender', 'navodyadivyanjali2@gmail.com', 'textfield', 'core', 'authentication', '2025-11-12 05:49:13'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '', 'combo-boolean', 'core', 'manager', NULL),
('enable_template_picker_in_tree', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'numberfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'numberfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'numberfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'numberfield', 'core', 'system', NULL),
('login_background_image', '', 'textfield', 'core', 'authentication', NULL),
('login_help_button', '', 'combo-boolean', 'core', 'authentication', NULL),
('login_logo', '', 'textfield', 'core', 'authentication', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'numberfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_dkim_domain', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_identity', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_passphrase', '', 'text-password', 'core', 'mail', NULL),
('mail_dkim_privatekeyfile', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_privatekeystring', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_selector', '', 'textfield', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_secure', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_datetime_empty_value', '—', 'textfield', 'core', 'manager', NULL),
('manager_datetime_separator', ', ', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', 'favicon.ico', 'textfield', 'core', 'manager', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_logo', '', 'textfield', 'core', 'manager', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'H:i', 'textfield', 'core', 'manager', NULL),
('manager_tooltip_delay', '2300', 'numberfield', 'core', 'manager', NULL),
('manager_tooltip_enable', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'numberfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('package_installer_at_top', '1', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('passwordless_activated', '', 'combo-boolean', 'core', 'authentication', NULL),
('passwordless_expiration', '3600', 'textfield', 'core', 'authentication', NULL),
('password_generated_length', '10', 'numberfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'numberfield', 'core', 'authentication', NULL),
('photo_profile_source', '', 'modx-combo-source', 'core', 'manager', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'numberfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('quick_search_in_content', '1', 'combo-boolean', 'core', 'manager', NULL),
('quick_search_result_max', '10', 'numberfield', 'core', 'manager', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'alias', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'numberfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'numberfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'MODX\\Revolution\\modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '3.1.2-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'numberfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', '[[%site_unavailable_message]]', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'numberfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '', 'combo-boolean', 'core', 'manager', NULL),
('unauthorized_page', '1', 'numberfield', 'core', 'site', NULL),
('upload_files', 'aac,au,avi,bmp,css,css.map,doc,docx,eot,gif,gz,htm,html,ico,jpeg,jpg,js,js.map,less,md,mp3,mp4,mpeg,mpg,odb,odf,odg,odp,ods,odt,pdf,png,ppt,pptx,psd,rar,scss,svg,svgz,tar,tgz,tiff,ttf,txt,wav,webp,wmv,woff,woff2,xls,xlsx,xml,z,zip', 'textfield', 'core', 'file', NULL),
('upload_file_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_maxsize', '41943040', 'numberfield', 'core', 'file', '2025-11-12 05:49:13'),
('upload_translit', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_translit_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '', 'combo-boolean', 'core', 'furls', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2025-11-12 05:49:13'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2025-11-12 05:49:57'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.31.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2025-04-02 10:20:59', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$ixcOe2b0McT/xaszCKeJmucDluHCd6u73UoodKEQ7RmmnRJL5P4f6', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', '56a817a79099d29d4c84a12c4cd4cdb6', 1, NULL, 1, 1762926553),
(2, 'srimal', '$2y$10$2nm/Oqiie9S1aX5ZemYQvuLU3rVm9JKMXpzGFBWwvJQUYn24b6uIG', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', 'f3585c9fb9632f9965d3918c5b0d4276', 0, NULL, 1, 1763037067);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(11) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(11) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'navodyadivyanjali2@gmail.com', '', '', 0, 1777465360, 0, 18, 1773999737, 1777880548, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '[]'),
(2, 2, '', 'it@explorevacations..lk', '', '', 0, 1777287338, 0, 18, 1764048350, 1777462184, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recipient` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2025-11-12 06:48:33', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') DEFAULT 'admin',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$c0ftdyhTpdiMZRD5UDMr5OErACX2eI2ktLChf9Ey2shxrGnR/QUL.', 'admin', 'active', '2025-10-20 06:19:02', '2026-04-27 07:11:20'),
(2, 'Dilan', 'dilan@sr.com', '$2y$10$GSx0TeCgi9o79PhYSZWD8.Ze4SkvICIiHNrOK691fKW827NU/v/lq', 'staff', 'active', '2025-10-20 07:19:59', '2026-04-29 11:25:51'),
(3, 'Lakshika', 'lakshika@sr.com', '$2y$10$43rxogpFy6pAni5vOPFtAOnRAcNiHLJ7f67UIAamt9cM67XZrsJaO', 'staff', 'active', '2025-10-20 07:19:59', '2026-04-29 11:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `passengers` int(11) NOT NULL,
  `suitcases` int(11) NOT NULL,
  `large_suitcases` int(11) NOT NULL,
  `medium_suitcases` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `lead_time` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `passengers`, `suitcases`, `large_suitcases`, `medium_suitcases`, `price`, `lead_time`, `image`, `description`, `sort_order`) VALUES
(1, 'Private Express', 3, 2, 1, 2, 0.60, '8 ', '2.png', 'Skoda Octavia or Similar', 1),
(2, 'Private SUV', 2, 2, 2, 2, 2.50, '8 ', '4.png', 'Mercedes E-Class or Similar', 5),
(3, 'Private Business', 3, 3, 1, 2, 4.50, '12 ', '1.png', 'Mercedes S-Class or Similar', 8),
(4, 'Private MPV', 6, 4, 2, 2, 0.80, '12 ', '5.png', 'Peugeot 5008 or Similar', 2),
(5, 'Private Van', 6, 6, 5, 2, 0.95, '12 ', '6.jpg', 'Ford Tourneo or Similar', 3),
(6, 'Private Mini Bus', 12, 12, 10, 6, 2.30, '12 ', '7.png', 'Renault Mater or Similar', 4),
(13, 'Private Coach (45 Seater)', 45, 29, 25, 20, 10.00, '12', '3.png', '', 10),
(15, 'Private Coach (35 Seater)', 35, 12, 10, 15, 6.00, '', '8.jpg', '', 9),
(17, 'Private Premium', 3, 3, 1, 2, 4.00, '', '9.png', '', 7),
(18, 'Private Luxury SUV', 3, 3, 3, 3, 3.30, '', '10.png', '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_codes`
--
ALTER TABLE `country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`user`,`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`),
  ADD KEY `call_count` (`call_count`),
  ADD KEY `caller` (`caller`),
  ADD KEY `caller_file` (`caller_file`),
  ADD KEY `caller_line` (`caller_line`);

--
-- Indexes for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definition` (`definition`);

--
-- Indexes for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `authority` (`authority`);

--
-- Indexes for table `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indexes for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_codes`
--
ALTER TABLE `country_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;

--
-- AUTO_INCREMENT for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
