-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2016 at 12:43 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adjmeth`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_admin`
--

CREATE TABLE `adjmeth_admin` (
  `id` int(5) NOT NULL,
  `FirstName` varchar(50) NOT NULL DEFAULT '',
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `FullName` varchar(120) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `PassSalt` varchar(200) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Level` varchar(20) NOT NULL DEFAULT 'editor',
  `Role` int(5) DEFAULT NULL,
  `SecureQuestion` varchar(200) DEFAULT NULL,
  `SecureAnswer` varchar(200) DEFAULT NULL,
  `LastAccess` datetime DEFAULT '0000-00-00 00:00:00',
  `log_ipaddress` varchar(20) NOT NULL,
  `log_browser` varchar(500) NOT NULL,
  `log_session` varchar(500) NOT NULL,
  `Activated` tinyint(1) DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_admin`
--

INSERT INTO `adjmeth_admin` (`id`, `FirstName`, `LastName`, `FullName`, `Username`, `Password`, `PassSalt`, `Email`, `Level`, `Role`, `SecureQuestion`, `SecureAnswer`, `LastAccess`, `log_ipaddress`, `log_browser`, `log_session`, `Activated`, `status`) VALUES
(1, 'Super', 'Administrator', 'Super Administrator', 'morgan', '693cfed9dd8adf7c63afbf53cf3a8043', '59171', 'emmallob14@gmail.com.com', 'super', 1, NULL, NULL, '2016-07-18 10:35:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', '3Q/mIywZTd9M2jsMuOqf5YPGOl7FnaFsXf0xUFWIVI1xVrSo2tKyg5WCxpKFI1rtkLl6riiQ+O2FPCirnW4Whg==', 1, '1'),
(3, 'Obeng', 'Emmanuel', 'Obeng Emmanuel', 'emmallob', '693cfed9dd8adf7c63afbf53cf3a8043', NULL, 'emmallob14@gmail.com', 'editor', NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_admin_questions`
--

CREATE TABLE `adjmeth_admin_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `palias` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_admin_questions`
--

INSERT INTO `adjmeth_admin_questions` (`id`, `question`, `palias`, `answer`) VALUES
(1, 'Where did you have your wedding?', 'where-did-you-have-your-wedding', ''),
(2, 'Whats the name of your pet?', 'whats-the-name-of-your-pet', ''),
(3, 'Who blessed your wedding?', 'who-blessed-your-wedding', ''),
(4, 'How did you join your church?', 'how-did-you-join-your-church', '');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_admin_roles`
--

CREATE TABLE `adjmeth_admin_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_admin_roles`
--

INSERT INTO `adjmeth_admin_roles` (`id`, `name`) VALUES
(1, 'Super Administrator'),
(2, 'Administrator'),
(3, 'Editor'),
(4, 'Finance'),
(5, 'Welfare');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_class`
--

CREATE TABLE `adjmeth_class` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `class_leader` varchar(15) NOT NULL,
  `class_leader_assist` varchar(10) NOT NULL,
  `class_secretary` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `deleted_details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_class`
--

INSERT INTO `adjmeth_class` (`id`, `parent`, `name`, `slug`, `class_leader`, `class_leader_assist`, `class_secretary`, `status`, `deleted_details`) VALUES
(1, 0, 'Twi Class', 'twi-class', '0', '0', '0', '1', ''),
(2, 0, 'English Class', 'english-class', 'AMC1912', '0', 'AMC117', '1', ''),
(3, 0, 'Ga Class', 'ga-class', '0', '0', '0', '1', ''),
(4, 0, 'Ewe Class', 'ewe-class', 'AMC6822', '0', '0', '1', ''),
(5, 0, 'Transition Class', 'transition-class', '', '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_countries`
--

CREATE TABLE `adjmeth_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adjmeth_countries`
--

INSERT INTO `adjmeth_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'YU', 'Yugoslavia'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_days`
--

CREATE TABLE `adjmeth_days` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_days`
--

INSERT INTO `adjmeth_days` (`id`, `name`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_education_level`
--

CREATE TABLE `adjmeth_education_level` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_education_level`
--

INSERT INTO `adjmeth_education_level` (`id`, `name`, `slug`, `level`) VALUES
(1, 'Creche', 'creche', ''),
(2, 'Nursery', 'nursery', ''),
(3, 'Kindergarten', 'kindergatten', ''),
(4, 'Primary', 'primary', ''),
(5, 'JHS', 'jhs', ''),
(6, 'SHS', 'shs', ''),
(7, 'Tertiary', 'tertiary', '');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_events`
--

CREATE TABLE `adjmeth_events` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text NOT NULL,
  `ministry` varchar(50) NOT NULL,
  `ministry_slug` varchar(50) NOT NULL,
  `e_status` enum('Cancelled','Pending','Past') NOT NULL DEFAULT 'Pending',
  `entry` date NOT NULL,
  `deleted_details` varchar(500) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_events`
--

INSERT INTO `adjmeth_events` (`id`, `name`, `slug`, `start_date`, `end_date`, `details`, `ministry`, `ministry_slug`, `e_status`, `entry`, `deleted_details`, `status`) VALUES
(1, 'Inauguration At Immanuel Methodist Church', 'inauguration-at-immanuel-methodist-church-2016-02-27', '2016-02-27', '2016-02-27', 'This is the inauguration of Immanuel Methodist Church', 'Entire Church', 'entire-church', 'Past', '2016-02-26', '', '1'),
(2, 'Enrollment Service At Bathsheba Presbyterian Church - Bawaleshie East Legon', 'enrollment-service-at-bathsheba-presbyterian-church-bawaleshie-east-legon-2016-03-20', '2016-03-20', '2016-03-20', 'The Boys and Girls Brigade will be attending an enrollment service on Sunday 20th March 2016 at the Bathsheba Congregation of the Presbyterian Church of Ghana. This is a part of their responsibility to be part of the District.', 'Boys and Girls Brigade', 'boys-and-girls-brigade', 'Cancelled', '2016-02-26', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_finances`
--

CREATE TABLE `adjmeth_finances` (
  `id` int(11) NOT NULL,
  `trancid` varchar(25) NOT NULL,
  `tran_type` int(11) NOT NULL,
  `tran_type2` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mem_id` varchar(25) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `editor_id` varchar(25) NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `fulldate` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `converted` varchar(15) NOT NULL,
  `comments` text NOT NULL,
  `status` enum('0','1') DEFAULT '1',
  `admin_status` enum('0','1') NOT NULL DEFAULT '1',
  `finance_status` enum('0','1') NOT NULL DEFAULT '1',
  `super_status` enum('0','1') NOT NULL DEFAULT '1',
  `backup` enum('0','1') NOT NULL DEFAULT '0',
  `backup_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_finances`
--

INSERT INTO `adjmeth_finances` (`id`, `trancid`, `tran_type`, `tran_type2`, `username`, `mem_id`, `user_id`, `editor_id`, `day`, `month`, `year`, `fulldate`, `date`, `date_modified`, `currency`, `amount`, `converted`, `comments`, `status`, `admin_status`, `finance_status`, `super_status`, `backup`, `backup_date`) VALUES
(1, 'TRAN25411542', 5, 0, 'Emmanuel Kwesi Obeng', 'CPIC54087571', '1', '1', '05', '01', '2015', '2015-01-05', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '1', '50', '', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(2, 'TRAN25411545', 5, 0, 'Emmanuel Kwesi Obeng', 'CPIC54087571', '1', '1', '05', '01', '2015', '2015-01-05', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '1', '100', '', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(3, 'TRAN25411500', 5, 0, 'Fredrick Oppong Amponsah', 'CPIC54087571', '1', '1', '05', '01', '2015', '2015-01-05', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '1', '1700.25', '1700.25', '<br>				 				 				 				 				 				 				 				 				 ', '1', '1', '1', '1', '0', '0000-00-00'),
(4, 'TRAN25011500', 5, 0, 'Naomi  Amoah', 'CPIC54087571', '1', '1', '05', '01', '2015', '2015-01-05', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '1', '190', '', '<br>				 ', '1', '1', '1', '1', '0', '0000-00-00'),
(5, 'TRAN25011590', 5, 0, 'Gideon Osam Dickson', 'CPIC54087571', '1', '1', '05', '01', '2015', '2015-01-05', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '3', '90', '414', '<br>				 				 ', '1', '1', '1', '1', '0', '0000-00-00'),
(7, 'TRAN95441128', 5, 0, 'Robert  Charwey', 'CPIC54087571', '1', '1', '24', '06', '2014', '2014-06-24', '2015-01-24 00:00:00', '0000-00-00 00:00:00', '2', '800', '2560', 'This is own comments concerning this post. Please Admin if you see this message, work on it for me thanks<br>				 				 				 				 ', '1', '1', '1', '1', '0', '0000-00-00'),
(9, 'TRAN25400500', 6, 0, '', 'CPIC54087571', '1', '', '30', '01', '2015', '2015-01-30', '2015-01-30 00:00:00', '0000-00-00 00:00:00', '1', '1800', '', '', '1', '1', '1', '1', '0', '0000-00-00'),
(13, 'TRAN9405857620', 6, 0, '', 'CPIC54087571', '1', '', '14', '01', '2015', '2015-01-14', '2015-01-14 00:00:00', '0000-00-00 00:00:00', '1', '5250.00', '5250', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(14, 'TRAN4473266812', 6, 0, '', 'CPIC54087571', '1', '', '14', '01', '2015', '2015-01-14', '2015-01-14 00:00:00', '0000-00-00 00:00:00', '1', '700', '2240', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(15, 'TRAN9281898983', 6, 0, '', 'CPIC54087571', '1', '', '14', '01', '2015', '2015-01-14', '2015-01-14 00:00:00', '0000-00-00 00:00:00', '1', '300', '1380', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(16, 'TRAN6060900557', 6, 0, '', 'CPIC54087571', '1', '1', '02', '04', '2014', '2014-04-02', '2015-02-02 00:00:00', '0000-00-00 00:00:00', '1', '4580', '4580', '<br>										', '1', '1', '1', '1', '0', '0000-00-00'),
(17, 'TRAN49517723', 5, 0, 'Priscilla Adwoa Mansah', 'CPIC54087571', '1', '', '02', '02', '2015', '2015-02-02', '2015-02-02 00:00:00', '0000-00-00 00:00:00', '1', '215', '215', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(18, 'TRAN71520761', 1, 0, 'Frank Amoah', 'CPIC54087571', '1', '1', '02', '02', '2015', '2015-02-02', '2015-02-02 00:00:00', '0000-00-00 00:00:00', '1', '254', '254', 'The grace of God has been abundant over my life and my family. We are most grateful to the Lord for how far He has brought us. We hope for a much better new year coupled with strength and the manifestation of His divine healing.			', '1', '1', '1', '1', '0', '0000-00-00'),
(19, 'TRAN15351496', 1, 0, 'Robert  Charwey', 'CPIC54087571', '1', '1', '02', '02', '2015', '2015-02-02', '2015-02-02 00:00:00', '0000-00-00 00:00:00', '2', '180', '576', '<br>								', '1', '1', '1', '1', '0', '0000-00-00'),
(20, 'TRAN8719232332', 6, 0, '', 'CPIC54087571', '1', '7', '02', '02', '2015', '2015-02-02', '2015-02-02 00:00:00', '2015-03-17 18:58:03', '1', '3540.02', '1801', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(21, 'TRAN8378987', 1, 0, 'Fredrick Oppong Amponsah', 'CPIC54087571', '1', '7', '02', '02', '2015', '2015-02-02', '2015-02-02 00:00:00', '2015-03-17 19:38:24', '1', '1520', '1520', 'I thank the Lord for His wonders and grace', '1', '1', '1', '1', '0', '0000-00-00'),
(22, 'TRAN7420015', 1, 0, 'Emmanuel Kwesi Obeng', 'CPIC54087571', '1', '', '06', '03', '2005', '2005-03-06', '2015-02-02 00:00:00', '0000-00-00 00:00:00', '1', '180', '180', 'No reason.. I am just happy for the gift of life', '1', '1', '1', '1', '0', '0000-00-00'),
(23, 'HARV3370212533', 3, 1, '', 'CPIC54087571', '1', '7', '10', '11', '2013', '2013-11-10', '2015-02-02 00:00:00', '2015-03-17 20:15:36', '1', '16500', '16500', '', '1', '1', '1', '1', '0', '0000-00-00'),
(24, 'HARV51628568', 3, 1, '', 'CPIC54087571', '1', '7', '08', '12', '2013', '2013-12-08', '2015-02-02 00:00:00', '2015-03-17 20:12:26', '1', '245480', '17500', 'heehe', '1', '1', '1', '1', '0', '0000-00-00'),
(26, 'TITH01114008', 5, 0, 'Seth Kwaku Nabla', 'CPIC54087571', '1', '7', '22', '02', '2015', '2015-02-22', '2015-03-17 00:00:00', '2015-03-17 19:24:25', '1', '50', '', 'This tithe needs some corrections', '1', '1', '1', '1', '0', '0000-00-00'),
(27, 'TITH91219825', 5, 0, 'Fredrick Oppong Amponsah', 'CPIC54087571', '1', '7', '08', '03', '2015', '2015-03-08', '2015-03-17 18:46:25', '2015-03-17 18:50:41', '1', '500', '', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(28, 'SILV94543028', 6, 0, '', 'CPIC54087571', '1', '7', '17', '03', '2015', '2015-03-17', '2015-03-17 19:00:34', '2015-03-17 19:00:34', '1', '7805', '', '<br>', '1', '1', '1', '1', '0', '0000-00-00'),
(29, 'SILV40273587', 6, 0, '', 'CPIC54087571', '1', '7', '01', '03', '2015', '2015-03-01', '2015-03-17 19:08:00', '2015-03-17 19:12:00', '1', '3894.12', '', '', '1', '1', '1', '1', '0', '0000-00-00'),
(30, 'TITH63200546', 5, 0, 'Fredrick Oppong Amponsah', 'CPIC54087571', '1', '7', '15', '02', '2015', '2015-02-15', '2015-03-17 19:27:31', '2015-03-17 19:27:50', '1', '120', '', '', '1', '1', '1', '1', '0', '0000-00-00'),
(31, 'TITH07188287', 5, 0, 'Emmanuel Kwesi Hyde Nyarko', 'CPIC54087571', '1', '7', '15', '02', '2015', '2015-02-15', '2015-03-17 19:30:13', '2015-03-17 19:30:54', '1', '35', '', '', '1', '1', '1', '1', '0', '0000-00-00'),
(32, 'THANKS69566451', 1, 0, 'Fredrick Oppong Amponsah', 'CPIC54087571', '1', '7', '08', '03', '2015', '2015-03-08', '2015-03-17 19:43:46', '2015-03-17 19:44:33', '1', '500', '', 'The Lord has given me a promotion in my workplace', '1', '1', '1', '1', '0', '0000-00-00'),
(33, 'THANKS12994304', 1, 0, 'Emmanuel Kwesi Hyde Nyarko', 'CPIC54087571', '1', '7', '08', '03', '2015', '2015-03-08', '2015-03-17 19:45:17', '2015-03-17 19:45:17', '1', '500', '', 'I am thankful to the Lord for His mercies and love shown towards my family and i', '1', '1', '1', '1', '0', '0000-00-00'),
(34, 'THANKS57188002', 1, 0, 'Emmanuel Kwesi Hyde Nyarko', 'CPIC54087571', '1', '7', '08', '03', '2015', '2015-03-08', '2015-03-17 19:45:18', '2015-03-17 19:45:18', '1', '500', '', 'I am thankful to the Lord for His mercies and love shown towards my family and i', '1', '1', '1', '1', '0', '0000-00-00'),
(35, 'HARV24769843', 6, 2, '', 'CPIC54087571', '1', '7', '10', '11', '2013', '2013-11-10', '2015-03-17 20:08:53', '2015-03-17 20:08:53', '1', '17500', '', 'this was a great harvest', '1', '1', '1', '1', '0', '0000-00-00'),
(36, 'HARV36881247', 3, 1, '', 'CPIC54087571', '1', '7', '07', '12', '2014', '2014-12-07', '2015-03-17 20:18:26', '2015-03-17 20:18:26', '1', '18450.52', '', '', '1', '1', '1', '1', '0', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_finance_currency`
--

CREATE TABLE `adjmeth_finance_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `exchange` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_finance_currency`
--

INSERT INTO `adjmeth_finance_currency` (`id`, `name`, `slug`, `exchange`) VALUES
(1, 'GHc', 'ghc', '1.00'),
(2, 'USD', 'usd', '3.2'),
(3, 'GBP', 'gbp', '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_finance_pledge`
--

CREATE TABLE `adjmeth_finance_pledge` (
  `id` int(11) NOT NULL,
  `trancid` varchar(25) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `redeem_date` date NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` varbinary(10000) NOT NULL,
  `admin_id` varchar(25) NOT NULL,
  `editor_id` varchar(25) NOT NULL,
  `date` int(25) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_finance_type`
--

CREATE TABLE `adjmeth_finance_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_finance_type`
--

INSERT INTO `adjmeth_finance_type` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Thanksgivings', 'thanksgivings', '0'),
(2, 'Pledges', 'pledges', '0'),
(3, 'Harvest', 'harvest', '0'),
(5, 'Tithes', 'tithes', '0'),
(6, 'Silver Collection', 'silver-collection', '0');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_groups`
--

CREATE TABLE `adjmeth_groups` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `abbrev` varchar(10) NOT NULL,
  `ministry` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `deleted_details` varchar(500) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_groups`
--

INSERT INTO `adjmeth_groups` (`id`, `parent`, `name`, `slug`, `abbrev`, `ministry`, `description`, `deleted_details`, `status`) VALUES
(1, 0, 'Methodist Youth Fellowship', 'methodist-youth-fellowship', 'MYF', 1, '', '', '1'),
(2, 0, 'Boys and Girls Brigade', 'boys-girls-brigade', 'BB  GB', 1, 'This organization is meant for all the youth in the church.', '', '1'),
(4, 0, 'Methodist Girls Fellowship', 'methodist-girls-fellowship', 'MGF', 1, '', '', '1'),
(5, 0, 'Guild', 'guild', '', 4, '', '', '1'),
(6, 0, 'Mens Fellowship', 'mens-fellowship', 'MF', 4, '', '', '1'),
(7, 0, 'Womens Fellowship', 'womens-fellowship', 'WF', 4, '', '', '1'),
(8, 0, 'Suzanna Wesley', 'suzanna-wesley', 'SUWMA', 4, '', '', '1'),
(9, 0, 'Singing Band', 'singing-band', 'SB', 4, '', '', '1'),
(10, 0, 'Choir', 'choir', 'AMC', 4, '', '', '1'),
(11, 0, 'Sunday School', 'sunday-school', 'SS', 2, '', '', '1'),
(12, 0, 'Youth Ministry Division', 'youth-ministry-division', 'YMD', 1, 'This organization is for all the youth organizations in the church', '', '1'),
(13, 0, 'Boys And Girls Brigade', 'boys-and-girls-brigade', '', 0, '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_hometown`
--

CREATE TABLE `adjmeth_hometown` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_hometown`
--

INSERT INTO `adjmeth_hometown` (`id`, `name`, `slug`) VALUES
(1, 'Mankessim', 'mankessim'),
(2, 'Aflao', 'aflao'),
(3, 'Bodwesango Obuasi', 'bodwesango-obuasi');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_marital`
--

CREATE TABLE `adjmeth_marital` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_marital`
--

INSERT INTO `adjmeth_marital` (`id`, `status`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Divorced'),
(4, 'Widow'),
(5, 'Engaged'),
(6, 'Complicated'),
(7, 'Widower');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_members`
--

CREATE TABLE `adjmeth_members` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(10) NOT NULL,
  `title` varchar(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'main',
  `dob` date NOT NULL,
  `day_born` varchar(25) NOT NULL,
  `month_born` varchar(25) NOT NULL,
  `year_born` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `no_of_children` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `residence` varchar(30) NOT NULL,
  `country` varchar(100) NOT NULL,
  `region` varchar(40) NOT NULL,
  `region_id` int(11) NOT NULL,
  `hometown` varchar(30) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `m_class` int(11) NOT NULL,
  `wards` text NOT NULL,
  `mem_type` varchar(15) NOT NULL,
  `date_join` date NOT NULL,
  `day_join` varchar(10) NOT NULL,
  `month_join` varchar(10) NOT NULL,
  `year_join` varchar(10) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `suborganization` int(11) NOT NULL,
  `orgname` varchar(50) NOT NULL,
  `orgsub` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT '',
  `created_by` varchar(15) NOT NULL,
  `created_date` datetime NOT NULL,
  `deleted_details` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_members`
--

INSERT INTO `adjmeth_members` (`id`, `uniqueid`, `title`, `fname`, `lname`, `fullname`, `type`, `dob`, `day_born`, `month_born`, `year_born`, `gender`, `marital_status`, `no_of_children`, `slug`, `phone`, `phone1`, `address`, `residence`, `country`, `region`, `region_id`, `hometown`, `occupation`, `email`, `m_class`, `wards`, `mem_type`, `date_join`, `day_join`, `month_join`, `year_join`, `organization`, `suborganization`, `orgname`, `orgsub`, `image`, `created_by`, `created_date`, `deleted_details`, `status`) VALUES
(1, 'AMC8113', 'Mrs', 'Janet', 'Donkor', 'Donkor Janet', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'donkor-janet', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:33:21', '', '1'),
(2, 'AMC2858', 'Mrs', 'Stella', 'Adai Nimo', 'Adai Nimo Stella', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adai-nimo-stella', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:36:30', '', '1'),
(3, 'AMC4032', 'Mr', 'Francis', 'Adai Nimo', 'Adai Nimo Francis', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adai-nimo-francis', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:38:12', '', '1'),
(4, 'AMC8922', 'Mrs', 'Agnes', 'Kyei', 'Kyei Agnes', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kyei-agnes', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:39:34', '', '1'),
(5, 'AMC9888', 'Mr', 'Michael', 'Fynn', 'Fynn Michael', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'fynn-michael', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:40:29', '', '1'),
(6, 'AMC2273', 'Mrs', 'Victoria', 'Boye', 'Boye Victoria', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boye-victoria', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:40:47', '', '1'),
(7, 'AMC5855', 'Mrs', 'Mary', 'Amoah', 'Amoah Mary', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amoah-mary', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:40:56', '', '1'),
(8, 'AMC7779', 'Mrs', 'Ekua A.', 'Boadi', 'Boadi Ekua A.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boadi-ekua-a-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:41:09', '', '1'),
(9, 'AMC1250', 'Mrs', 'Beatrice', 'Otoo', 'Otoo Beatrice', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otoo-beatrice', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:41:19', '', '1'),
(10, 'AMC629', 'Mr', 'Charles', 'Mensah', 'Mensah Charles', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-charles', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:41:44', '', '1'),
(11, 'AMC3890', 'Bro', 'Moses', 'Adjetey', 'Adjetey Moses', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjetey-moses', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:42:22', '', '1'),
(12, 'AMC9438', 'Mrs', 'Margaret', 'Nunoo', 'Nunoo Margaret', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nunoo-margaret', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:44:19', '', '1'),
(13, 'AMC9108', 'Bro', 'Eric K.', 'Tetteh', 'Tetteh Eric K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tetteh-eric-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:44:35', '', '1'),
(14, 'AMC2839', 'Mr', 'Emmanuel', 'Safo Sakyiamah', 'Safo Sakyiamah Emmanuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'safo-sakyiamah-emmanuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:45:00', '', '1'),
(15, 'AMC5543', 'Mrs', 'Vivian', 'Danquah', 'Danquah Vivian', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'danquah-vivian', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:45:11', '', '1'),
(16, 'AMC403', 'Mrs', 'Christie M.', 'B&#39; Hairs', 'B&#39; Hairs Christie M.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'b39-hairs-christie-m-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:46:03', '', '1'),
(17, 'AMC9115', 'Mrs', 'Christiana', 'Laryea', 'Laryea Christiana', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'laryea-christiana', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:46:18', '', '1'),
(18, 'AMC6261', 'Mr', 'Nana Afo', 'Odai', 'Odai Nana Afo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'odai-nana-afo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:46:48', '', '1'),
(19, 'AMC4034', 'Mr', 'Sampson K.', 'Ampah', 'Ampah Sampson K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ampah-sampson-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:47:00', '', '1'),
(20, 'AMC380', 'Mr', 'Joseph', 'Odai Boye', 'Odai Boye Joseph', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'odai-boye-joseph', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:47:10', '', '1'),
(21, 'AMC3640', 'Mr', 'Harry', 'Bentil', 'Bentil Harry', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bentil-harry', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:47:16', '', '1'),
(22, 'AMC7709', 'Bro', 'Samuel', 'Ofori', 'Ofori Samuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ofori-samuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:47:47', '', '1'),
(23, 'AMC9104', 'Very Rev.', 'John K.', 'French', 'French John K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'french-john-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:48:04', '', '1'),
(24, 'AMC420', 'Mrs', 'Faustina O.', 'Okae', 'Okae Faustina O.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'okae-faustina-o-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:48:16', '', '1'),
(25, 'AMC891', '', 'Matha', 'Thompson', 'Thompson Matha', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'thompson-matha', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:48:33', '', '1'),
(26, 'AMC151', 'Mrs', 'Patience', 'Bilson', 'Bilson Patience', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bilson-patience', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:48:41', '', '1'),
(27, 'AMC8048', 'Mrs', 'Mary J. Ewuraba', 'Ghartey', 'Ghartey Mary J. Ewuraba', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ghartey-mary-j-ewuraba', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:49:08', '', '1'),
(28, 'AMC4213', 'Mrs', 'Adelaide', 'Bansah', 'Bansah Adelaide', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bansah-adelaide', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:49:17', '', '1'),
(29, 'AMC3829', 'Mr', 'Daniel', 'Bansah', 'Bansah Daniel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bansah-daniel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:49:29', '', '1'),
(30, 'AMC9584', '', 'Juliana', 'Apiah', 'Apiah Juliana', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Female', 'NULL', 0, 'apiah-juliana', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:49:51', '', '1'),
(31, 'AMC7426', '', 'Regina', 'Martey', 'Martey Regina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Female', 'NULL', 0, 'martey-regina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:50:04', '', '1'),
(32, 'AMC3692', 'Mrs', 'Sabina', 'Cudjoe', 'Cudjoe Sabina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'cudjoe-sabina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:50:19', '', '1'),
(33, 'AMC9590', 'Mr', 'Stephen', 'Ewusi-Yeboah', 'Ewusi-Yeboah Stephen', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ewusi-yeboah-stephen', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:50:32', '', '1'),
(34, 'AMC6533', 'Mrs', 'Vivian Akosua', 'French', 'French Vivian Akosua', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'french-vivian-akosua', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:50:47', '', '1'),
(35, 'AMC1912', 'Evang.', 'Dinah', 'Yorke', 'Yorke Dinah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'yorke-dinah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:01', '', '1'),
(36, 'AMC6144', 'Mr', 'Gerd', 'Muller', 'Muller Gerd', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'muller-gerd', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:16', '', '1'),
(37, 'AMC3792', 'Mrs', 'Joyce', 'Osei Sarpong', 'Osei Sarpong Joyce', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'osei-sarpong-joyce', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:27', '', '1'),
(38, 'AMC5470', 'Mrs', 'Emilia', 'Ocansey', 'Ocansey Emilia', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-emilia', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:38', '', '1'),
(39, 'AMC2136', 'Mr', 'Bright', 'Dey', 'Dey Bright', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dey-bright', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:43', '', '1'),
(40, 'AMC3817', 'Mrs', 'Maud', 'Duker', 'Duker Maud', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'duker-maud', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:52', '', '1'),
(41, 'AMC6628', 'Mr', 'Roger', 'Ocansey', 'Ocansey Roger', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-roger', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:51:58', '', '1'),
(42, 'AMC303', 'Mr', 'Theophilus', 'Afotey', 'Afotey Theophilus', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afotey-theophilus', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:52:09', '', '1'),
(43, 'AMC8229', 'Mrs', 'Comfort', 'Ampah', 'Ampah Comfort', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ampah-comfort', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:52:18', '', '1'),
(44, 'AMC6675', 'Mrs', 'Elizabeth', 'Amponsah', 'Amponsah Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amponsah-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:53:07', '', '1'),
(45, 'AMC8049', 'Mrs', 'Esther', 'Laryea', 'Laryea Esther', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'laryea-esther', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:55:03', '', '1'),
(46, 'AMC6996', 'Mrs', 'Angelina', 'Obeng', 'Obeng Angelina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'obeng-angelina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:55:11', '', '1'),
(47, 'AMC8634', 'Mr', 'Roger Kenneth', 'Ocansey', 'Ocansey Roger Kenneth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-roger-kenneth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:55:22', '', '1'),
(48, 'AMC1800', 'Mrs', 'Dinah', 'Essilfie-Bondzie', 'Essilfie-Bondzie Dinah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'essilfie-bondzie-dinah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-22 18:55:40', '', '1'),
(49, 'AMC5780', 'Mr', 'Isaac', 'Adu', 'Adu Isaac', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adu-isaac', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:42:35', '', '1'),
(50, 'AMC1581', 'Mrs', 'Juliana', 'Fletcher', 'Fletcher Juliana', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'fletcher-juliana', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:42:50', '', '1'),
(51, 'AMC9579', 'Mr', 'Ben', 'Baffoe Mensah', 'Baffoe Mensah Ben', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'baffoe-mensah-ben', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:43:17', '', '1'),
(52, 'AMC2350', 'Mrs', 'Emily', 'Addo-Boaten', 'Addo-Boaten Emily', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'addo-boaten-emily', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:43:32', '', '1'),
(53, 'AMC4753', 'Mr', 'Philip', 'Owusu-Acheampong', 'Owusu-Acheampong Philip', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owusu-acheampong-philip', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:43:48', '', '1'),
(54, 'AMC6183', 'Mrs', 'Hannah', 'Arhin', 'Arhin Hannah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'arhin-hannah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:43:55', '', '1'),
(55, 'AMC799', 'Mr', 'Emmanuel', 'Odai Afotey', 'Odai Afotey Emmanuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'odai-afotey-emmanuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:44:07', '', '1'),
(56, 'AMC630', 'Bro', 'Benjamin', 'Ansah', 'Ansah Benjamin', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ansah-benjamin', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:44:20', '', '1'),
(57, 'AMC5930', 'Mr', 'Collins', 'Sakyiamah', 'Sakyiamah Collins', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sakyiamah-collins', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:44:33', '', '1'),
(58, 'AMC4644', 'Mr', 'Andrews', 'Abbey', 'Abbey Andrews', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'abbey-andrews', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:44:49', '', '1'),
(59, 'AMC7961', 'Mr', 'Alex', 'Awuah-Mensah', 'Awuah-Mensah Alex', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'awuah-mensah-alex', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:45:29', '', '1'),
(60, 'AMC705', 'Mrs', 'Nancy', 'Essuman', 'Essuman Nancy', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'essuman-nancy', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:46:05', '', '1'),
(61, 'AMC8074', 'Bro', 'Jacob Nebat', 'Adjei', 'Adjei Jacob Nebat', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjei-jacob-nebat', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:46:16', '', '1'),
(62, 'AMC63', 'Mrs', 'Regina Akutu', 'Abbey', 'Abbey Regina Akutu', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Female', 'NULL', 0, 'abbey-regina-akutu', '0203317732', '', '', 'Adjiringanor', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:52:42', '', '1'),
(63, 'AMC64', 'Mrs', 'Comfort Adjoe', 'Larkai', 'Larkai Comfort Adjoe', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'larkai-comfort-adjoe', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:52:53', '', '1'),
(64, 'AMC65', 'Mr', 'Bannerman', 'Wilson', 'Wilson Bannerman', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'wilson-bannerman', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:53:02', '', '1'),
(65, 'AMC66', 'Bro', 'John', 'Amedor', 'Amedor John', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amedor-john', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:53:13', '', '1'),
(66, 'AMC67', 'Bro', 'Henry', 'Asmah', 'Asmah Henry', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asmah-henry', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:53:22', '', '1'),
(67, 'AMC68', 'Sis', 'Josephine', 'Darko', 'Darko Josephine', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'darko-josephine', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:53:37', '', '1'),
(68, 'AMC69', 'Sis', 'Juliet', 'Agyeiwaa', 'Agyeiwaa Juliet', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'agyeiwaa-juliet', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:53:54', '', '1'),
(69, 'AMC70', 'Mrs', 'Priscila Adei', 'Ashe', 'Ashe Priscila Adei', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ashe-priscila-adei', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:54:07', '', '1'),
(70, 'AMC71', 'Mr', 'Bennjamin', 'Archer', 'Archer Bennjamin', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'archer-bennjamin', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:54:16', '', '1'),
(71, 'AMC72', 'Mr', 'Emmanuel Osei', 'Asabre', 'Asabre Emmanuel Osei', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asabre-emmanuel-osei', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:54:26', '', '1'),
(72, 'AMC73', 'Mrs', 'Mary', 'Lamptey', 'Lamptey Mary', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'lamptey-mary', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:54:34', '', '1'),
(73, 'AMC74', 'Mrs', 'Patience', 'Lomo', 'Lomo Patience', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'lomo-patience', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:54:51', '', '1'),
(74, 'AMC75', 'Mrs', 'Regina', 'Klu', 'Klu Regina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'klu-regina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:55:01', '', '1'),
(75, 'AMC76', 'Mrs', 'Grace', 'Mensah', 'Mensah Grace', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-grace', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:55:09', '', '1'),
(76, 'AMC77', 'Mrs', 'Elizabeth', 'Laryea', 'Laryea Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'laryea-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:55:18', '', '1'),
(77, 'AMC78', 'Mrs', 'Mary Anobea Dwamena', 'Tetteh', 'Tetteh Mary Anobea Dwamena', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tetteh-mary-anobea-dwamena', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:56:28', '', '1'),
(78, 'AMC79', 'Mmr', 'Prince', 'Sarfo', 'Sarfo Prince', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sarfo-prince', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:56:45', '', '1'),
(79, 'AMC80', 'Mrs', 'Patricia', 'Owusu-Yeboah', 'Owusu-Yeboah Patricia', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owusu-yeboah-patricia', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:00', '', '1'),
(80, 'AMC81', 'Mrs', 'Joana Ferguson', 'Owu', 'Owu Joana Ferguson', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owu-joana-ferguson', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:13', '', '1'),
(81, 'AMC82', 'Rs', 'Erica', 'Owusu-Yeboah', 'Owusu-Yeboah Erica', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owusu-yeboah-erica', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:24', '', '1'),
(82, 'AMC83', 'Mr', 'Hildergard', 'Muller', 'Muller Hildergard', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'muller-hildergard', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:33', '', '1'),
(83, 'AMC84', 'Mr', 'Kankam', 'Bonsu', 'Bonsu Kankam', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bonsu-kankam', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:43', '', '1'),
(84, 'AMC85', 'Mrs', 'Elizabeth Sarkodie', 'Bonsu', 'Bonsu Elizabeth Sarkodie', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bonsu-elizabeth-sarkodie', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:57:54', '', '1'),
(85, 'AMC86', '', 'Isaac', 'Kumah', 'Kumah Isaac', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kumah-isaac', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:58:01', '', '1'),
(86, 'AMC87', '', 'Prince Narey', 'Marbell', 'Marbell Prince Narey', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'marbell-prince-narey', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:58:09', '', '1'),
(87, 'AMC88', '', 'Eric Idun', 'Baidoo', 'Baidoo Eric Idun', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'baidoo-eric-idun', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:58:38', '', '1'),
(88, 'AMC89', '', 'Hannah', 'Tetteh', 'Tetteh Hannah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tetteh-hannah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:58:44', '', '1'),
(89, 'AMC90', '', 'Mensah', 'Djan', 'Djan Mensah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'djan-mensah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:58:59', '', '1'),
(90, 'AMC91', '', 'Ebenezer', 'Bortey', 'Bortey Ebenezer', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bortey-ebenezer', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:59:07', '', '1'),
(91, 'AMC92', '', 'Timothy G.', 'Annan', 'Annan Timothy G.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'annan-timothy-g-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 05:59:17', '', '1'),
(92, 'AMC93', '', 'Perpetual', 'Adu-Gyamfi', 'Adu-Gyamfi Perpetual', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adu-gyamfi-perpetual', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:16', '', '1'),
(93, 'AMC94', '', 'Joyce', 'Annang', 'Annang Joyce', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'annang-joyce', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:22', '', '1'),
(94, 'AMC95', '', 'Kafui', 'Asempa', 'Asempa Kafui', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asempa-kafui', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:28', '', '1'),
(95, 'AMC96', '', 'Prince', 'Agbetor', 'Agbetor Prince', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'agbetor-prince', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:34', '', '1'),
(96, 'AMC97', '', 'Naomi', 'Mensah', 'Mensah Naomi', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-naomi', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:45', '', '1'),
(97, 'AMC98', '', 'Kojo', 'Adu Gyamfi', 'Adu Gyamfi Kojo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adu-gyamfi-kojo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:00:54', '', '1'),
(98, 'AMC99', '', 'Dickson Kwame', 'Darko', 'Darko Dickson Kwame', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'darko-dickson-kwame', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:01:00', '', '1'),
(99, 'AMC100', 'Dr.', 'Kwame', 'Asamoah', 'Asamoah Kwame', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asamoah-kwame', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:01:13', '', '1'),
(100, 'AMC101', '', 'Christiana', 'Odoom', 'Odoom Christiana', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'odoom-christiana', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:01:29', '', '1'),
(101, 'AMC102', 'Mrs', 'Jacqueline', 'Asamoah', 'Asamoah Jacqueline', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asamoah-jacqueline', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:01:44', '', '1'),
(102, 'AMC103', '', 'Thompson Tetteh', 'Anum', 'Anum Thompson Tetteh', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anum-thompson-tetteh', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:01:59', '', '1'),
(103, 'AMC104', 'Sis', 'Bernice Momo', 'Okley', 'Okley Bernice Momo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'okley-bernice-momo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:02:13', '', '1'),
(104, 'AMC105', '', 'Stephen', 'Andoh', 'Andoh Stephen', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'andoh-stephen', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:02:22', '', '1'),
(105, 'AMC106', 'Mrs', 'Alberta', 'Morgan-Eshun', 'Morgan-Eshun Alberta', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'morgan-eshun-alberta', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:02:31', '', '1'),
(106, 'AMC107', 'Mrs', 'Josephine', 'Micah', 'Micah Josephine', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'micah-josephine', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:02:43', '', '1'),
(107, 'AMC108', 'Bro', 'Yaw', 'Boakye', 'Boakye Yaw', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boakye-yaw', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:02:55', '', '1'),
(108, 'AMC109', 'Sis', 'Agnes', 'French', 'French Agnes', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'french-agnes', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:03:03', '', '1'),
(109, 'AMC110', '', 'Justa Amo', 'Baiden', 'Baiden Justa Amo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'baiden-justa-amo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:03:43', '', '1'),
(110, 'AMC111', 'Mrs', 'Rose N. A.', 'Thompson', 'Thompson Rose N. A.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'thompson-rose-n-a-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:03:54', '', '1'),
(111, 'AMC112', 'Mr', 'Jacob Adjei', 'Adjetey', 'Adjettey Jacob Adjei', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjetey-jacob-adjei', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:04:10', '', '1'),
(112, 'AMC113', '', 'Hannah', 'Mensah', 'Mensah Hannah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-hannah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:05:46', '', '1'),
(113, 'AMC114', '', 'Mayfred', 'Essandoh', 'Essandoh Mayfred', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'essandoh-mayfred', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:05:57', '', '1'),
(114, 'AMC115', '', 'Wilhemina', 'Essandoh', 'Essandoh Wilhemina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'essandoh-wilhemina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:06:05', '', '1'),
(115, 'AMC116', 'Mr', 'Rodney K.', 'Ocansey', 'Ocansey Rodney K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-rodney-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:06:20', '', '1'),
(116, 'AMC117', '', 'Kwame', 'Amedor', 'Amedor Kwame', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amedor-kwame', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:06:49', '', '1'),
(117, 'AMC118', '', 'Michael', 'Acheampong', 'Acheampong Michael', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'acheampong-michael', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:06:58', '', '1'),
(118, 'AMC119', '', 'Sheryll Ann', 'Ocansey', 'Ocansey Sheryll Ann', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-sheryll-ann', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:07:08', '', '1'),
(119, 'AMC120', '', 'Susanna', 'Asare', 'Asare Susanna', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asare-susanna', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:07:29', '', '1'),
(120, 'AMC121', '', 'Anita', 'Aboagye', 'Aboagye Anita', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aboagye-anita', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:07:37', '', '1'),
(121, 'AMC122', '', 'Victoria', 'Martinson', 'Martinson Victoria', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'martinson-victoria', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:07:46', '', '1'),
(122, 'AMC123', '', 'Helena', 'Dankwa', 'Dankwa Helena', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dankwa-helena', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:07:53', '', '1'),
(123, 'AMC124', '', 'Kojo Essel', 'Bilson', 'Bilson Kojo Essel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bilson-kojo-essel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:04', '', '1'),
(124, 'AMC125', '', 'Cynthia', 'Koomson', 'Koomson Cynthia', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'koomson-cynthia', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:16', '', '1'),
(125, 'AMC126', '', 'Cynthia Akosua', 'Effah', 'Effah Cynthia Akosua', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'effah-cynthia-akosua', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:30', '', '1'),
(126, 'AMC127', '', 'Amanda K.', 'Anum', 'Anum Amanda K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anum-amanda-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:38', '', '1'),
(127, 'AMC128', '', 'Vincent', 'Anbrah', 'Anbrah Vincent', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anbrah-vincent', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:45', '', '1'),
(128, 'AMC129', 'Hon.', 'Joe', 'Aggrey', 'Aggrey Joe', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aggrey-joe', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:08:53', '', '1'),
(129, 'AMC130', 'Mrs.', 'Angelina', 'Aggrey', 'Aggrey Angelina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aggrey-angelina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:08', '', '1'),
(130, 'AMC131', '', 'Mary Adowa', 'Pireku', 'Pireku Mary Adowa', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'pireku-mary-adowa', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:21', '', '1'),
(131, 'AMC132', '', 'Gideon Dickson', 'Osam', 'Osam Gideon Dickson', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'osam-gideon-dickson', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:31', '', '1'),
(132, 'AMC133', '', 'Comfort', 'Mensah', 'Mensah Comfort', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-comfort', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:42', '', '1'),
(133, 'AMC134', '', 'Nicholas', 'Boadi', 'Boadi Nicholas', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boadi-nicholas', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:47', '', '1'),
(134, 'AMC135', '', 'Henrietta', 'Hayforn', 'Hayforn Henrietta', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'hayforn-henrietta', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:09:59', '', '1'),
(135, 'AMC136', '', 'Peaceful', 'Ansah', 'Ansah Peaceful', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ansah-peaceful', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:10:07', '', '1'),
(136, 'AMC137', '', 'Evans', 'Adu', 'Adu Evans', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adu-evans', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:10:15', '', '1'),
(137, 'AMC138', '', 'Norgbey Kofi', 'Sithole', 'Sithole Norgbey Kofi', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sithole-norgbey-kofi', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:10:32', '', '1'),
(138, 'AMC139', '', 'Rita', 'Bilson', 'Bilson Rita', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bilson-rita', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:10:46', '', '1'),
(139, 'AMC140', 'Prof.', 'Nana Owusu', 'Frimpong', 'Frimpong Nana Owusu', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'frimpong-nana-owusu', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:11:06', '', '1'),
(140, 'AMC141', '', 'Kwamina', 'Quaidoo', 'Quaidoo Kwamina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'quaidoo-kwamina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:11:15', '', '1'),
(141, 'AMC142', '', 'Joyce A.', 'Okwan', 'Okwan Joyce A.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'okwan-joyce-a-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:11:34', '', '1'),
(142, 'AMC143', '', 'Matthew', 'Kpesu', 'Kpesu Matthew', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kpesu-matthew', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:11:40', '', '1'),
(143, 'AMC144', '', 'Ernice Amakie', 'Adjaotor', 'Adjaotor Ernice Amakie', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjaotor-ernice-amakie', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:11:53', '', '1'),
(144, 'AMC145', '', 'Dorothy', 'Mensah', 'Mensah Dorothy', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-dorothy', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:04', '', '1'),
(145, 'AMC146', '', 'Joana', 'Okyere', 'Okyere Joana', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'okyere-joana', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:13', '', '1'),
(146, 'AMC147', '', 'Eric', 'Agyei', 'Agyei Eric', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'agyei-eric', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:25', '', '1'),
(147, 'AMC148', 'Mrs', 'Gifty', 'Manu', 'Manu Gifty', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'manu-gifty', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:34', '', '1'),
(148, 'AMC149', 'Mr', 'John F.', 'Morgan-Eshun', 'Morgan-Eshun John F.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'morgan-eshun-john-f-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:43', '', '1'),
(149, 'AMC150', '', 'Ernestina', 'Ohenewa', 'Ohenewa Ernestina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ohenewa-ernestina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:12:55', '', '1'),
(150, '2537', '', 'Evelyn', 'Anim', 'Anim Evelyn', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anim-evelyn', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:08', '', '1'),
(151, 'AMC152', '', 'Bernice', 'Afram', 'Afram Bernice', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afram-bernice', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:18', '', '1'),
(152, 'AMC153', '', 'Regina', 'Tetteh', 'Tetteh Regina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tetteh-regina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:22', '', '1'),
(153, 'AMC154', '', 'Georgina', 'Badu', 'Badu Georgina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'badu-georgina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:30', '', '1'),
(154, 'AMC155', '', 'Nana Kow', 'Dadson', 'Dadson Nana Kow', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dadson-nana-kow', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:40', '', '1'),
(155, 'AMC156', '', 'Nathan Parker', 'Yanney', 'Yanney Nathan Parker', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'yanney-nathan-parker', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:13:48', '', '1'),
(156, 'AMC157', 'Sis', 'Philomena', 'Ekua Mensah', 'Ekua Mensah Philomena', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ekua-mensah-philomena', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:14:34', '', '1'),
(157, 'AMC158', 'Gyaah', 'Evelyn', 'Somuah', 'Somuah Evelyn', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'somuah-evelyn', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:14:46', '', '1'),
(158, 'AMC159', '', 'Ephraim Nii Afo', 'Adai', 'Adai Ephraim Nii Afo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adai-ephraim-nii-afo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:02', '', '1');
INSERT INTO `adjmeth_members` (`id`, `uniqueid`, `title`, `fname`, `lname`, `fullname`, `type`, `dob`, `day_born`, `month_born`, `year_born`, `gender`, `marital_status`, `no_of_children`, `slug`, `phone`, `phone1`, `address`, `residence`, `country`, `region`, `region_id`, `hometown`, `occupation`, `email`, `m_class`, `wards`, `mem_type`, `date_join`, `day_join`, `month_join`, `year_join`, `organization`, `suborganization`, `orgname`, `orgsub`, `image`, `created_by`, `created_date`, `deleted_details`, `status`) VALUES
(159, 'AMC160', '', 'Kwabena Owusu', 'Frimpong', 'Frimpong Kwabena Owusu', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'frimpong-kwabena-owusu', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:17', '', '1'),
(160, 'AMC161', 'Mr', 'Emmanuel', 'Sowah', 'Sowah Emmanuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sowah-emmanuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:27', '', '1'),
(161, 'AMC162', '', 'Samuel', 'Ackon', 'Ackon Samuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ackon-samuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:37', '', '1'),
(162, 'AMC163', '', 'Agnes H.', 'Carr', 'Carr Agnes H.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'carr-agnes-h-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:47', '', '1'),
(163, 'AMC164', '', 'Sandira', 'Sakyiamah', 'Sakyiamah Sandira', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sakyiamah-sandira', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:15:59', '', '1'),
(164, 'AMC165', '', 'Joseph', 'Mensah', 'Mensah Joseph', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-joseph', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:04', '', '1'),
(165, 'AMC166', '', 'Victoria M.', 'Kwan', 'Kwan Victoria M.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kwan-victoria-m-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:17', '', '1'),
(166, 'AMC167', '', 'Dorcas', 'Boahen', 'Boahen Dorcas', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boahen-dorcas', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:26', '', '1'),
(167, 'AMC168', 'Sis', 'Patience Aforkor', 'Anang', 'Anang Patience Aforkor', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anang-patience-aforkor', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:35', '', '1'),
(168, 'AMC169', '', 'Comfort', 'Enchill', 'Enchill Comfort', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'enchill-comfort', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:42', '', '1'),
(169, 'AMC170', '', 'Emmauel', 'Anani Yeboah', 'Anani Yeboah Emmauel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anani-yeboah-emmauel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:16:55', '', '1'),
(170, 'AMC171', '', 'Emmanuella', 'Kordie', 'Kordie Emmanuella', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kordie-emmanuella', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:17:20', '', '1'),
(171, 'AMC172', 'Bro', 'Fiifi', 'Gaduigah', 'Gaduigah Fiifi', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'gaduigah-fiifi', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:17:27', '', '1'),
(172, 'AMC173', 'Bro', 'Samuel', 'Akomeng', 'Akomeng Samuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'akomeng-samuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:17:35', '', '1'),
(173, 'AMC174', 'Bro', 'Daniel K.', 'Baoteng', 'Baoteng Daniel K.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'baoteng-daniel-k-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:17:47', '', '1'),
(174, 'AMC175', '', 'Cecilia Ofori', 'Yeboah', 'Yeboah Cecilia Ofori', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'yeboah-cecilia-ofori', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:17:58', '', '1'),
(175, 'AMC176', 'Sis', 'Judith', 'Afotey', 'Afotey Judith', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afotey-judith', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:18:06', '', '1'),
(176, 'AMC177', 'Bro', 'Derek', 'Bansah', 'Bansah Derek', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bansah-derek', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:18:12', '', '1'),
(177, 'AMC178', 'Bro', 'Darrel', 'Bansah', 'Bansah Darrel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bansah-darrel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:18:19', '', '1'),
(178, 'AMC179', 'Bro', 'Antwi-Bosiako', 'Sandomi', 'Sandomi Antwi-Bosiako', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sandomi-antwi-bosiako', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:18:38', '', '1'),
(179, 'AMC180', '', 'Isaac Awuku', 'Appiah', 'Appiah Isaac Awuku', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'appiah-isaac-awuku', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:18:57', '', '1'),
(180, 'AMC181', 'Sis', 'Patricia', 'Ofori', 'Ofori Patricia', 'main', '1993-07-02', 'Friday', 'July', '1993', 'Female', 'NULL', 0, 'ofori-patricia', '0249608829', '', '', 'Saint Peters Madina', '0', '', 0, '', 'Student', '', 1, '', '', '0000-00-00', 'Thursday', 'January', '1970', '1', 13, 'Methodist Youth Fellowship', 'Boys And Girls Brigade', '', 'morgan', '2016-03-23 06:19:19', '', '1'),
(181, 'AMC182', 'Dr.', 'David Kwame', 'Boadi', 'Boadi David Kwame', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boadi-david-kwame', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:19:48', '', '1'),
(182, 'AMC183', '', 'Smile', 'Martin', 'Martin Smile', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'martin-smile', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:19:58', '', '1'),
(183, 'AMC184', '', 'Chris B&#39;hairs', 'Dayibor', 'Dayibor Chris B&#39;hairs', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dayibor-chris-b39hairs', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:11', '', '1'),
(184, 'AMC185', '', 'Elizabeth', 'Nkrumah', 'Nkrumah Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nkrumah-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:20', '', '1'),
(185, 'AMC186', '', 'Philip', 'Mensah', 'Mensah Philip', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-philip', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:26', '', '1'),
(186, 'AMC187', '', 'Dinah', 'Adjaye', 'Adjaye Dinah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjaye-dinah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:39', '', '1'),
(187, 'AMC188', '', 'Gifty', 'Awuah-Mensah', 'Awuah-Mensah Gifty', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'awuah-mensah-gifty', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:48', '', '1'),
(188, 'AMC189', '', 'Deborah', 'Delia', 'Delia Deborah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'delia-deborah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:20:59', '', '1'),
(189, 'AMC190', '', 'Selina', 'Wallace', 'Wallace Selina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'wallace-selina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:06', '', '1'),
(190, 'AMC191', '', 'Charles', 'Kyei-Baffour', 'Kyei-Baffour Charles', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kyei-baffour-charles', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:18', '', '1'),
(191, 'AMC192', '', 'Theresa Adjetey', 'Laryea', 'Laryea Theresa Adjetey', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'laryea-theresa-adjetey', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:35', '', '1'),
(192, 'AMC193', '', 'Anita', 'Amoah', 'Amoah Anita', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amoah-anita', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:42', '', '1'),
(193, 'AMC194', '', 'Elizabeth', 'Amuzu', 'Amuzu Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amuzu-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:48', '', '1'),
(194, 'AMC195', '', 'Mercy Adjei', 'Danso', 'Danso Mercy Adjei', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'danso-mercy-adjei', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:21:56', '', '1'),
(195, 'AMC196', '', 'Matilda', 'Atinga Boya', 'Atinga Boya Matilda', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'atinga-boya-matilda', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:09', '', '1'),
(196, 'AMC197', 'Bro', 'Evans', 'Asamoah', 'Asamoah Evans', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asamoah-evans', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:16', '', '1'),
(197, 'AMC198', '', 'Jacob', 'Tetteh', 'Tetteh Jacob', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tetteh-jacob', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:31', '', '1'),
(198, 'AMC199', '', 'Comfort', 'Anokyewah', 'Anokyewah Comfort', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anokyewah-comfort', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:39', '', '1'),
(199, 'AMC200', '', 'Gifty', 'Siada', 'Siada Gifty', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'siada-gifty', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:47', '', '1'),
(200, 'AMC201', '', 'Comfort Adjei', 'Fosuaa', 'Fosuaa Comfort Adjei', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'fosuaa-comfort-adjei', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:22:57', '', '1'),
(201, 'AMC202', '', 'Emmanuel Kudjoe', 'Bedzrah', 'Bedzrah Emmanuel Kudjoe', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'bedzrah-emmanuel-kudjoe', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:23:11', '', '1'),
(202, 'AMC203', '', 'Evelyn', 'Anum', 'Anum Evelyn', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anum-evelyn', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:23:18', '', '1'),
(203, 'AMC204', '', 'Edmond', 'Kombat', 'Kombat Edmond', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kombat-edmond', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:23:24', '', '1'),
(204, 'AMC205', '', 'Baaba Bart', 'Plange', 'Plange Baaba Bart', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'plange-baaba-bart', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:23:32', '', '1'),
(205, 'AMC206', 'Sis', 'Grace', 'Obeng-yeboah', 'Obeng-yeboah Grace', 'main', '2016-06-12', 'Sunday', 'June', '2016', 'Female', 'NULL', 0, 'obeng-yeboah-grace', '0240553604', '', '', 'Shiashie', '0', '', 0, '', '', 'graceyeboah16@yahoo.com', 2, '', '', '0000-00-00', 'Thursday', 'January', '1970', '1', 4, 'Methodist Youth Fellowship', 'Methodist Girls Fellowship', '', 'morgan', '2016-03-23 06:23:44', '', '1'),
(206, 'AMC207', 'Mr.', 'Emmanuel', 'Obeng', 'Obeng Emmanuel', 'main', '1992-03-22', 'Sunday', 'March', '1992', 'Male', 'NULL', 0, 'obeng-emmanuel', '0554947764', '', '', 'Adjiringanor', '0', '', 0, '', 'Website Administrator', 'emmallob14@gmail.com', 2, '', 'teacher', '2000-05-01', 'Monday', 'May', '2000', '13', 1, 'Boys And Girls Brigade', 'Methodist Youth Fellowship', 'obengemmanuel-20160608-2816.jpg', 'morgan', '2016-03-23 06:23:51', '', '1'),
(207, 'AMC208', '', 'Georgin Aruma', 'Otu', 'Otu Georgin Aruma', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otu-georgin-aruma', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:24:14', '', '1'),
(208, 'AMC209', '', 'Anthony', 'Otu', 'Otu Anthony', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otu-anthony', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:24:19', '', '1'),
(209, 'AMC210', '', 'Alexander', 'Mensah', 'Mensah Alexander', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-alexander', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:24:26', '', '1'),
(210, 'AMC211', '', 'Selina', 'Mensah', 'Mensah Selina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-selina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:24:34', '', '1'),
(211, 'AMC212', '', 'Monica', 'Akuaku', 'Akuaku Monica', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'akuaku-monica', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:24:53', '', '1'),
(212, 'AMC213', '', 'Dinah', 'Muller', 'Muller Dinah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'muller-dinah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:01', '', '1'),
(213, 'AMC214', 'Sis', 'Sethina', 'Afotey', 'Afotey Sethina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afotey-sethina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:08', '', '1'),
(214, 'AMC215', '', 'Kwabena', 'Frimpong', 'Frimpong Kwabena', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'frimpong-kwabena', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:15', '', '1'),
(215, 'AMC216', 'Sis', 'Elizabeth', 'Otoo', 'Otoo Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otoo-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:23', '', '1'),
(216, 'AMC217', 'Bro', 'Frederick', 'French', 'French Frederick', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'french-frederick', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:32', '', '1'),
(217, 'AMC218', 'Sis', 'Dorothy', 'Adu', 'Adu Dorothy', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adu-dorothy', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:40', '', '1'),
(218, 'AMC219', 'Bro', 'Wilson Tse', 'Gbeve', 'Gbeve Wilson Tse', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'gbeve-wilson-tse', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:25:57', '', '1'),
(219, 'AMC220', '', 'Harriet', 'Nyarko', 'Nyarko Harriet', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nyarko-harriet', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:26:05', '', '1'),
(220, 'AMC221', 'Bro', 'Kelvin Arthur', 'Justice', 'Justice Kelvin Arthur', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'justice-kelvin-arthur', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:26:16', '', '1'),
(221, 'AMC222', '', 'Samuel', 'tutu', 'Tutu Samuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tutu-samuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:26:21', '', '1'),
(222, 'AMC223', '', 'Grace', 'Osei Bonsu', 'Osei Bonsu Grace', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'osei-bonsu-grace', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:27:51', '', '1'),
(223, 'AMC224', 'Sis', 'Beatrice', 'Adjetey', 'Adjetey Beatrice', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjetey-beatrice', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:03', '', '1'),
(224, 'AMC225', 'Bro', 'Sylvester', 'Nukomeko', 'Nukomeko Sylvester', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nukomeko-sylvester', '', '', '', '', '0', '', 0, '', '', '', 0, '', 'teacher', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:16', '', '1'),
(225, 'AMC226', '', 'Faustina', 'Abaidoo', 'Abaidoo Faustina', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'abaidoo-faustina', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:27', '', '1'),
(226, 'AMC227', '', 'Liza', 'Tabiri-Mensah', 'Tabiri-Mensah Liza', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tabiri-mensah-liza', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:37', '', '1'),
(227, 'AMC228', '', 'Jessica', 'Adjei', 'Adjei Jessica', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjei-jessica', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:44', '', '1'),
(228, 'AMC229', '', 'Cynthia', 'Dadzie', 'Dadzie Cynthia', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dadzie-cynthia', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:53', '', '1'),
(229, 'AMC230', '', 'Michael', 'Afful', 'Afful Michael', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afful-michael', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:28:59', '', '1'),
(230, 'AMC231', '', 'Fosu Kofi', 'Landy', 'Landy Fosu Kofi', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'landy-fosu-kofi', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:09', '', '1'),
(231, 'AMC232', '', 'Esther Baaba', 'Arkoful', 'Arkoful Esther Baaba', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'arkoful-esther-baaba', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:20', '', '1'),
(232, 'AMC233', '', 'Patricia', 'Boatemaa', 'Boatemaa Patricia', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'boatemaa-patricia', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:30', '', '1'),
(233, 'AMC234', '', 'Emmanuel', 'Owusu-Acheampong', 'Owusu-Acheampong Emmanuel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owusu-acheampong-emmanuel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:41', '', '1'),
(234, 'AMC235', '', 'Patience', 'Anyomi', 'Anyomi Patience', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anyomi-patience', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:52', '', '1'),
(235, 'AMC236', '', 'Seline', 'Anyomi', 'Anyomi Seline', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anyomi-seline', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:29:59', '', '1'),
(236, 'AMC237', '', 'Jacob Y. A.', 'Dadzie', 'Dadzie Jacob Y. A.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dadzie-jacob-y-a-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:30:09', '', '1'),
(237, 'AMC238', '', 'Bernard', 'Otchere', 'Otchere Bernard', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otchere-bernard', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:30:16', '', '1'),
(238, 'AMC239', 'Ms', 'Charlotte', 'Osafo', 'Osafo Charlotte', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'osafo-charlotte', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:30:32', '', '1'),
(239, 'AMC240', 'Mr', 'Enoch', 'Osafo', 'Osafo Enoch', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'osafo-enoch', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:30:39', '', '1'),
(240, 'AMC241', '', 'Rita Akosua', 'Goduigah', 'Goduigah Rita Akosua', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'goduigah-rita-akosua', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:04', '', '1'),
(241, 'AMC242', '', 'Judith', 'Issah', 'Issah Judith', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'issah-judith', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:13', '', '1'),
(242, 'AMC243', '', 'Beatrice', 'Kwakyewah', 'Kwakyewah Beatrice', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'kwakyewah-beatrice', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:21', '', '1'),
(243, 'AMC244', '', 'Patience', 'Sakyi', 'Sakyi Patience', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'sakyi-patience', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:28', '', '1'),
(244, 'AMC245', '', 'Kojo', 'Eshun', 'Eshun Kojo', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'eshun-kojo', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:35', '', '1'),
(245, 'AMC246', 'Bro', 'Noah Kweku', 'Aidoo', 'Aidoo Noah Kweku', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aidoo-noah-kweku', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:45', '', '1'),
(246, 'AMC247', '', 'Martha', 'Mends', 'Mends Martha', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mends-martha', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:31:53', '', '1'),
(247, 'AMC248', '', 'Stephen', 'Annan', 'Annan Stephen', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'annan-stephen', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:32:00', '', '1'),
(248, 'AMC249', '', 'Elvis', 'Blankson', 'Blankson Elvis', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'blankson-elvis', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:32:07', '', '1'),
(249, 'AMC250', '', 'Sarah', 'Blankson', 'Blankson Sarah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'blankson-sarah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:32:16', '', '1'),
(250, 'AMC251', '', 'Theresa', 'Frempomaa ', 'Frempomaa Theresa', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'frempomaa-theresa', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:32:34', '', '1'),
(251, 'AMC252', 'Sis', 'Patience', 'Otoo', 'Otoo Patience', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'otoo-patience', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:33:41', '', '1'),
(252, 'AMC253', '', 'Barbara', 'Owusu', 'Owusu Barbara', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'owusu-barbara', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:33:47', '', '1'),
(253, 'AMC254', '', 'David', 'Amoah', 'Amoah David', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amoah-david', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:33:52', '', '1'),
(254, 'AMC255', '', 'Joseph', 'Anim', 'Anim Joseph', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'anim-joseph', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:02', '', '1'),
(255, 'AMC256', '', 'Millicent', 'Aggrey-Yorke', 'Aggrey-Yorke Millicent', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aggrey-yorke-millicent', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:17', '', '1'),
(256, 'AMC257', 'Bro.', 'Bright', 'Danso', 'Danso Bright', 'main', '1994-12-11', 'Sunday', 'December', '1994', 'Male', 'NULL', 0, 'danso-bright', '0247894038', '', '', 'Adjiringanor', '0', '', 0, '', 'Student', 'brightdanso40@gmail.com', 5, '', '', '0000-00-00', 'Thursday', 'January', '1970', '13', 0, 'Boys And Girls Brigade', '', '', 'morgan', '2016-03-23 06:34:21', '', '1'),
(257, 'AMC258', 'Bro', 'Samuel Keke', 'Oduro', 'Oduro Samuel Keke', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'oduro-samuel-keke', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:29', '', '1'),
(258, 'AMC259', '', 'Janet', 'Baffoe', 'Baffoe Janet', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'baffoe-janet', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:35', '', '1'),
(259, 'AMC260', '', 'Mary', 'Adjeiwaa', 'Adjeiwaa Mary', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adjeiwaa-mary', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:41', '', '1'),
(260, 'AMC261', '', 'Alfred', 'Mensah', 'Mensah Alfred', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-alfred', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:48', '', '1'),
(261, 'AMC262', '', 'Nana Yaa', 'Asante', 'Asante Nana Yaa', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asante-nana-yaa', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:34:57', '', '1'),
(262, 'AMC263', '', 'Mary', 'Appiah', 'Appiah Mary', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'appiah-mary', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:03', '', '1'),
(263, 'AMC264', '', 'Matha', 'Affedu', 'Affedu Matha', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'affedu-matha', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:11', '', '1'),
(264, 'AMC265', '', 'Chelsea', 'Roberts', 'Roberts Chelsea', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'roberts-chelsea', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:19', '', '1'),
(265, 'AMC266', '', 'Gloria', 'Amponsah', 'Amponsah Gloria', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'amponsah-gloria', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:26', '', '1'),
(266, 'AMC267', '', 'Eric', 'Adarkwah', 'Adarkwah Eric', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'adarkwah-eric', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:34', '', '1'),
(267, 'AMC268', '', 'Charles', 'Donkor', 'Donkor Charles', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'donkor-charles', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:50', '', '1'),
(268, 'AMC269', '', 'Abigail', 'Awusi', 'Awusi Abigail', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'awusi-abigail', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:35:57', '', '1'),
(269, 'AMC270', '', 'Isaac Duah', 'Acheampong', 'Acheampong Isaac Duah', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'acheampong-isaac-duah', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:08', '', '1'),
(270, 'AMC271', '', 'John A.', 'Berko', 'Berko John A.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'berko-john-a-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:16', '', '1'),
(271, 'AMC272', '', 'Paul', 'Darko', 'Darko Paul', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'darko-paul', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:22', '', '1'),
(272, 'AMC273', '', 'John', 'Mensah', 'Mensah John', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-john', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:26', '', '1'),
(273, 'AMC274', '', 'Richard', 'Nkum', 'Nkum Richard', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nkum-richard', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:33', '', '1'),
(274, 'AMC275', '', 'Moses', 'Afari', 'Afari Moses', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'afari-moses', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:45', '', '1'),
(275, 'AMC276', '', 'Elizabeth', 'Ackon', 'Ackon Elizabeth', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ackon-elizabeth', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:52', '', '1'),
(276, 'AMC277', '', 'Francis', 'Mensah', 'Mensah Francis', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'mensah-francis', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:36:58', '', '1'),
(277, 'AMC278', '', 'Ebenezer N.', 'Tekper', 'Tekper Ebenezer N.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'tekper-ebenezer-n-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:37:16', '', '1'),
(278, 'AMC279', '', 'John', 'Biney', 'Biney John', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'biney-john', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:37:23', '', '1'),
(279, 'AMC280', '', 'Michael King', 'Aikins', 'Aikins Michael King', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'aikins-michael-king', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:37:40', '', '1'),
(280, 'AMC281', '', 'Boateng', 'Prince', 'Prince Boateng', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'prince-boateng', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:37:49', '', '1'),
(281, 'AMC282', '', 'Daniel N.', 'Donkor', 'Donkor Daniel N.', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'donkor-daniel-n-', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:06', '', '1'),
(282, 'AMC283', '', 'Paul', 'Nbon', 'Nbon Paul', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'nbon-paul', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:16', '', '1'),
(283, 'AMC284', '', 'Joyce', 'Dvedu', 'Dvedu Joyce', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'dvedu-joyce', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:24', '', '1'),
(284, 'AMC285', '', 'Daniel', 'Ocansey', 'Ocansey Daniel', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'ocansey-daniel', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:30', '', '1'),
(285, 'AMC286', '', 'Agnes', 'Eshun', 'Eshun Agnes', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'eshun-agnes', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:38', '', '1'),
(286, 'AMC287', '', 'Florence', 'Asibu', 'Asibu Florence', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'asibu-florence', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:44', '', '1'),
(287, 'AMC288', '', 'Mavis', 'Twumasi', 'Twumasi Mavis', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'twumasi-mavis', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:52', '', '1'),
(288, 'AMC289', '', 'Grace', 'Becky', 'Becky Grace', 'main', '0000-00-00', 'Thursday', 'January', '1970', 'Null', 'NULL', 0, 'becky-grace', '', '', '', '', '0', '', 0, '', '', '', 0, '', '', '0000-00-00', 'Thursday', 'January', '1970', '0', 0, '', '', '', 'morgan', '2016-03-23 06:38:57', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_members_day_borns`
--

CREATE TABLE `adjmeth_members_day_borns` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_members_day_borns`
--

INSERT INTO `adjmeth_members_day_borns` (`id`, `day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_members_day_months`
--

CREATE TABLE `adjmeth_members_day_months` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_members_day_months`
--

INSERT INTO `adjmeth_members_day_months` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_ministry`
--

CREATE TABLE `adjmeth_ministry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `abbrev` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_ministry`
--

INSERT INTO `adjmeth_ministry` (`id`, `name`, `slug`, `abbrev`) VALUES
(1, 'Youth Ministry Division', 'youth-ministry-division', 'ymd'),
(2, 'Childrens Ministry', 'childrens-ministry', 'cm'),
(3, 'Ordained Ministry', 'ordained-ministry', 'om'),
(4, 'General', 'general', 'g'),
(5, 'Pentecoast Youth Movement', 'pentecoast-youth-movement', '');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_months`
--

CREATE TABLE `adjmeth_months` (
  `id` int(11) NOT NULL,
  `mid` varchar(3) NOT NULL,
  `name` varchar(15) NOT NULL,
  `slug` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_months`
--

INSERT INTO `adjmeth_months` (`id`, `mid`, `name`, `slug`) VALUES
(1, '01', 'January', 'january'),
(2, '02', 'February', 'february'),
(3, '03', 'March', 'march'),
(4, '04', 'April', 'april'),
(5, '05', 'May', 'may'),
(6, '06', 'June', 'june'),
(7, '07', 'July', 'july'),
(8, '08', 'August', 'august'),
(9, '09', 'September', 'september'),
(10, '10', 'October', 'october'),
(11, '11', 'November', 'november'),
(12, '12', 'December', 'december');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_months_copy`
--

CREATE TABLE `adjmeth_months_copy` (
  `id` int(11) NOT NULL,
  `mid` varchar(3) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_months_copy`
--

INSERT INTO `adjmeth_months_copy` (`id`, `mid`, `name`) VALUES
(1, '01', 'January'),
(2, '02', 'February'),
(3, '03', 'March'),
(4, '04', 'April'),
(5, '05', 'May'),
(6, '06', 'June'),
(7, '07', 'July'),
(8, '08', 'August'),
(9, '09', 'September'),
(10, '10', 'October'),
(11, '11', 'November'),
(12, '12', 'December');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_occupation`
--

CREATE TABLE `adjmeth_occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_occupation`
--

INSERT INTO `adjmeth_occupation` (`id`, `name`, `slug`) VALUES
(1, 'Website Administrator', 'website-administrator'),
(2, 'Seamstress', 'seamstress'),
(3, 'Student', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_options`
--

CREATE TABLE `adjmeth_options` (
  `id` int(5) NOT NULL,
  `SiteType` varchar(50) DEFAULT NULL,
  `SiteName` varchar(255) NOT NULL,
  `SiteDomain` varchar(255) DEFAULT NULL,
  `SiteSlogan` varchar(255) DEFAULT NULL,
  `SiteDescription` text,
  `SiteEmail` varchar(255) DEFAULT NULL,
  `SitePhone` varchar(500) DEFAULT NULL,
  `SiteAddress` text,
  `SiteUrl` varchar(255) NOT NULL,
  `SiteUrlMain` varchar(255) NOT NULL,
  `SiteKeywords` text,
  `SiteHomePageText` text,
  `SiteFooterText` text,
  `SiteSEO` text NOT NULL,
  `SiteActive` tinyint(1) DEFAULT '1',
  `SiteActiveMsg` text NOT NULL,
  `Term` varchar(15) NOT NULL,
  `AcademicYear` varchar(10) NOT NULL,
  `CreatedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_options`
--

INSERT INTO `adjmeth_options` (`id`, `SiteType`, `SiteName`, `SiteDomain`, `SiteSlogan`, `SiteDescription`, `SiteEmail`, `SitePhone`, `SiteAddress`, `SiteUrl`, `SiteUrlMain`, `SiteKeywords`, `SiteHomePageText`, `SiteFooterText`, `SiteSEO`, `SiteActive`, `SiteActiveMsg`, `Term`, `AcademicYear`, `CreatedBy`) VALUES
(1, 'main', 'The Methodist Church Ghana', 'Adjiringanor Society', 'Christ Enti - Yeye Adehye', 'This is a sample Church Management Database System that is used to take records of Member information. Its still in its early stages of Development. More features are being added. With time it will be the best', 'emmallob14@gmail.com', '+233 (0) 554947764', '', 'http://localhost/adjmeth', '', 'Church Management System, Methodist Church Ghana', '', '', '', 1, '', '2', '2015/2016', 'Emmallen Networks (0554947764) - emmallob14@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_region`
--

CREATE TABLE `adjmeth_region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `area_size` varchar(255) NOT NULL,
  `population_2000` varchar(255) NOT NULL,
  `population_2010` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_region`
--

INSERT INTO `adjmeth_region` (`id`, `name`, `capital`, `area_size`, `population_2000`, `population_2010`) VALUES
(1, 'Western', 'Secondi / Takoradi', '23,921', '1,924,577', '2,376,021'),
(2, 'Central', 'Cape Coast', '9,826', '1,593,823	', '2,201,863'),
(3, 'Greater Accra', 'Accra', '3,245', '2,905,726	', '4,010,054'),
(4, 'Eastern', 'Koforidua', '19,323', '2,106,696	', '2,633,154'),
(5, 'Volta', 'Ho', '20,570	', '1,635,421', '2,118,252'),
(6, 'Ashanti', 'Kumasi', '24,389', '3,612,950	', '4,780,380'),
(7, 'Brong Ahafo', 'Sunyani', '39,557', '1,815,408', '2,310,983'),
(8, 'Northern', 'Tamale', '70,384', '1,820,806', '2,479,461'),
(9, 'Upper East', 'Bolgatanga', '8,842', '920,089', '920,089'),
(10, 'Upper West', 'Wa', '18,476', '567,583	', '702,110');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_requests`
--

CREATE TABLE `adjmeth_requests` (
  `id` int(11) NOT NULL,
  `rid` varchar(15) NOT NULL,
  `type` enum('photocopy','original') DEFAULT NULL,
  `recorder_id` varchar(15) NOT NULL,
  `comments` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `hod` varchar(255) NOT NULL,
  `hod_id` varchar(15) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `purpose` text NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` int(25) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_time` int(25) NOT NULL,
  `adminid` varchar(25) NOT NULL,
  `backup` enum('0','1') NOT NULL DEFAULT '0',
  `backup_date` date NOT NULL,
  `status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_requests`
--

INSERT INTO `adjmeth_requests` (`id`, `rid`, `type`, `recorder_id`, `comments`, `name`, `user_id`, `hod`, `hod_id`, `organization`, `subject`, `purpose`, `currency`, `amount`, `date`, `time`, `mod_date`, `mod_time`, `adminid`, `backup`, `backup_date`, `status`, `deleted`) VALUES
(1, 'REQT33255326', 'original', 'CPIC41881298', '<br>', 'Seth Nabla', '', 'Julian Dzikunu', '', 'instrumentals', 'Transportation Fees', 'we have been invited to participate in a sports festival hence we need finance to add the occation.<br>', 1, '152', '2015-03-05', 1425550942, '0000-00-00', 0, 'CPIC41881298', '0', '0000-00-00', 'Pending', '0'),
(2, 'REQT33255326', 'photocopy', 'CPIC41881298', 'I approve this request. Please pay to Julian a sum GHc 152 to enable them participate in the upcoming games. Thanks.', 'Seth Nabla', '', 'Julian Dzikunu', '', 'instrumentals', 'Transportation Fees', 'we have been invited to participate in a sports festival hence we need finance to add the occation.<br>   ', 1, '152', '2015-03-05', 1425550942, '2015-03-09', 1425898316, 'CPIC54087571', '0', '0000-00-00', 'Approved', '0'),
(3, 'REQT31500882', 'original', 'CPIC41881298', '', 'Benjamin Ansah', '', 'Benjamin Ansah', '', 'youth', 'Hosting of 6th Binnial Conference', 'Please the youth fellowship would be much grateful if you will extend to it a sum of GHc350 to host the upcoming 6th binnail youth conference which comes of from 6th - 10th April 2015.<br><br>We are raising some funds towards this and we will be much grateful if the church could support us in this direction.<br><br>Thank you.<br>', 1, '350', '2015-03-09', 1425926188, '0000-00-00', 0, 'CPIC41881298', '0', '0000-00-00', 'Pending', '0'),
(4, 'REQT31500882', 'photocopy', 'CPIC41881298', 'Please i want you to pay to the Youth Fellowship a sum to the tune of GHc350 to enable them host the said programme', 'Benjamin Ansah', '', 'Benjamin Ansah', '', 'Youth', 'Hosting of 6th Binnial Conference', 'Please the youth fellowship would be much grateful if you will extend to it a sum of GHc350 to host the upcoming 6th binnail youth conference which comes of from 6th - 10th April 2015.<br><br>We are raising some funds towards this and we will be much grateful if the church could support us in this direction.<br><br>Thank you.<br> ', 1, '350', '2015-03-09', 1425926188, '2015-03-09', 1425926774, 'CPIC54087571', '0', '0000-00-00', 'Approved', '0');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_requests_history`
--

CREATE TABLE `adjmeth_requests_history` (
  `id` int(11) NOT NULL,
  `rid` varchar(15) NOT NULL,
  `type` enum('photocopy','original') DEFAULT NULL,
  `recorder_id` varchar(25) NOT NULL,
  `comments` varbinary(10000) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `hod` varchar(255) NOT NULL,
  `hod_id` varchar(15) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `subject` varbinary(10000) NOT NULL,
  `purpose` varbinary(10000) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` int(25) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_time` int(25) NOT NULL,
  `adminid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_requests_history`
--

INSERT INTO `adjmeth_requests_history` (`id`, `rid`, `type`, `recorder_id`, `comments`, `name`, `user_id`, `hod`, `hod_id`, `organization`, `subject`, `purpose`, `currency`, `amount`, `date`, `time`, `mod_date`, `mod_time`, `adminid`) VALUES
(1, 'REQT143033', '', 'CPIC54087571', 0x2b5642586f534e7263724e6247734836386347533136784d766b42424a5237693235517a6745435545306735645570502f4a4c75494137493949764f3354614e5563797354485549423932616a5735746e7556462f673d3d, 'Emmanuel Obeng', '', 'Solomon Nkansah', '', 'youth', 0x4f4f2f50754349495541494b662f79787a2f4e796351785a5730794269736b595161726d72356e447931304d636e324b57614a6e6253384a5a4b55694d344c513050472f354c6372444839374f634934512b737556413d3d, 0x36715174316f336b5777523045497a7456497935464b4e576a6f77697668614d3263454a7a74634b6831614752456c506c577a56592b2b74745475674167365849656875766242486857716872375453346741664c31302b50646e573242503447536e34376e445062634a48394a41516e5044677556444a59373077346b5a4d, 1, '540', '2015-01-16', 1421422406, '0000-00-00', 0, 'CPIC54087571'),
(2, 'REQT143033', '', 'CPIC54087571', 0x4c513376636d577642546b314c30556f58504846644e50353059634f526132622f4d3373306d78704950703844525358584a764d7147496b3731543238704761784b6f5a49354f5463624968634e486f687a67307a673d3d, 'Emmanuel Obeng', '', 'Solomon Nkansah', '', 'youth', 0x346c69484e574b6e715066492f6f485855583651467561775a46764d71542b794974727777796a49574431353670776851336a4d5a6e784661625844614f6f786b4d366e735a4c72616c697a63326f5365767a547a413d3d, 0x664141395530697363744573665a4845703038385a33384a556353574f644648364136524943655a6d7570396f436d44654259514c37654878773636703748514e67764b3242454d38365830486c5148704a34304464594a34397a56326142736669486151564f2f77524e323678385575527a47383951534630432f526b4555, 1, '540', '2015-01-16', 1421422419, '0000-00-00', 0, 'CPIC54087571'),
(3, 'REQT143033', '', 'CPIC54087571', 0x3045536e43767331324f4f546c34742f6a477932707037654355446f694538315a707375652b4f777875554a70635031474d4b366f6273544c6232394d536168437668516b4732684d37686b766e5873312b6b434f673d3d, 'Emmanuel Obeng', '', 'Solomon Nkansah', '', 'youth', 0x594c657632313175666b2b386a774538796369584774656b49775247513752357573367238494c4c576a67695738626757486a6f366958346a4956564e4d6831476931444536776c7a664c4b5836485364794c4874513d3d, 0x45516c2b776876596f5246376b523738476e4c57525669555358354f766a736e6f6833732f575256354949716e4e63744465543633425375504f4472774b614637526f485757574659552f7452646d2b586b696d5474696b5245424c7067656e467158647a3573434443454f546a2b596234544a745173795554303858356456, 1, '540', '2015-01-20', 1421754554, '0000-00-00', 0, 'CPIC54087571'),
(4, 'REQT143033', '', 'CPIC54087571', 0x73624c5447507479706931736145322b78757231753964475a3857774f3336667454547a557054706c47593d, 'Emmanuel Obeng', '', 'Solomon Nkansah', '', 'youth', 0x30796234665a4a62646e4b62714d684549686f673636392f564e4b6e686d616d574c6a2b4e346f46544d453d, 0x576d6e58424f755a614d52363562744e396941524b417443647147537552434f4141504d526e6263734c6a334f4a684564494b472f6a444f54425a37484b314f386c4d5757566e787050426678357453693679464e673d3d, 1, '540', '2015-01-21', 1421859751, '0000-00-00', 0, 'CPIC54087571'),
(5, 'REQT80099740', '', 'CPIC54087571', 0x486579207768617420746865206865636b20646f20796f75206e6565642074686973206d6f6e657920666f7220616761696e3c62723e20, 'Seth Nabla', '', 'Julian Dzikunu', '', 'registry', 0x5472616e73706f72746174696f6e2046656573, 0x57652077616e6e612074726176656c206f7574736964652074686520636f756e74727920666f722061206669656c6420747269703c62723e20, 1, '152', '2015-06-07', 1433664397, '0000-00-00', 0, 'CPIC54087571'),
(6, 'REQT80099740', '', 'CPIC54087571', 0x486579207768617420746865206865636b20646f20796f75206e6565642074686973206d6f6e657920666f7220616761696e3c62723e2020, 'Seth Nabla', '', 'Julian Dzikunu', '', 'registry', 0x5472616e73706f72746174696f6e2046656573, 0x57652077616e6e612074726176656c206f7574736964652074686520636f756e74727920666f722061206669656c6420747269703c62723e2020, 1, '152', '2015-06-07', 1433664413, '0000-00-00', 0, 'CPIC54087571'),
(7, 'REQT33255326', '', 'CPIC54087571', 0x68656c6c6f20776f726c6420, 'Seth Nabla', '', 'Julian Dzikunu', '', 'instrumentals', 0x5472616e73706f72746174696f6e2046656573, 0x77652068617665206265656e20696e766974656420746f20706172746963697061746520696e20612073706f72747320666573746976616c2068656e6365207765206e6565642066696e616e636520746f2061646420746865206f63636174696f6e2e3c62723e20, 1, '152', '2015-03-05', 1425553295, '0000-00-00', 0, 'CPIC54087571'),
(8, 'REQT33255326', '', 'CPIC54087571', 0x68656c6c6f20776f726c6420, 'Seth Nabla', '', 'Julian Dzikunu', '', 'instrumentals', 0x5472616e73706f72746174696f6e2046656573, 0x77652068617665206265656e20696e766974656420746f20706172746963697061746520696e20612073706f72747320666573746976616c2068656e6365207765206e6565642066696e616e636520746f2061646420746865206f63636174696f6e2e3c62723e2020, 1, '152', '2015-03-09', 1425898130, '0000-00-00', 0, 'CPIC54087571'),
(9, 'REQT33255326', '', 'CPIC54087571', 0x4920617070726f7665207468697320726571756573742e20506c656173652070617920746f204a756c69616e20612073756d204748632031353220746f20656e61626c65207468656d20706172746963697061746520696e20746865207570636f6d696e672067616d65732e205468616e6b732e, 'Seth Nabla', '', 'Julian Dzikunu', '', 'instrumentals', 0x5472616e73706f72746174696f6e2046656573, 0x77652068617665206265656e20696e766974656420746f20706172746963697061746520696e20612073706f72747320666573746976616c2068656e6365207765206e6565642066696e616e636520746f2061646420746865206f63636174696f6e2e3c62723e202020, 1, '152', '2015-03-09', 1425898316, '0000-00-00', 0, 'CPIC54087571'),
(10, 'REQT31500882', '', 'CPIC54087571', 0x506c6561736520692077616e7420796f7520746f2070617920746f2074686520596f7574682046656c6c6f777368697020612073756d20746f207468652074756e65206f662047486333353020746f20656e61626c65207468656d20686f73742074686520736169642070726f6772616d6d65, 'Benjamin Ansah', '', 'Benjamin Ansah', '', 'Youth', 0x486f7374696e67206f66203674682042696e6e69616c20436f6e666572656e6365, 0x506c656173652074686520796f7574682066656c6c6f777368697020776f756c64206265206d75636820677261746566756c20696620796f752077696c6c20657874656e6420746f20697420612073756d206f662047486333353020746f20686f737420746865207570636f6d696e67203674682062696e6e61696c20796f75746820636f6e666572656e636520776869636820636f6d6573206f662066726f6d20367468202d203130746820417072696c20323031352e3c62723e3c62723e5765206172652072616973696e6720736f6d652066756e647320746f7761726473207468697320616e642077652077696c6c206265206d75636820677261746566756c206966207468652063687572636820636f756c6420737570706f727420757320696e207468697320646972656374696f6e2e3c62723e3c62723e5468616e6b20796f752e3c62723e20, 1, '350', '2015-03-09', 1425926774, '0000-00-00', 0, 'CPIC54087571');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_request_form`
--

CREATE TABLE `adjmeth_request_form` (
  `id` int(11) NOT NULL,
  `request_id` varchar(255) NOT NULL,
  `mem_id` int(15) NOT NULL,
  `organization` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `purpose` text NOT NULL,
  `head_of_department` varchar(255) NOT NULL,
  `seen_status` enum('0','1') NOT NULL DEFAULT '0',
  `seen_uid` int(11) NOT NULL,
  `status` enum('Served','Pending','Not-served') NOT NULL DEFAULT 'Not-served',
  `date` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_residence`
--

CREATE TABLE `adjmeth_residence` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_residence`
--

INSERT INTO `adjmeth_residence` (`id`, `name`, `slug`) VALUES
(1, 'Adjiringanor', 'adjiringanor'),
(2, 'School Junction', 'school-junction'),
(3, 'Shiashie', 'shiashie'),
(4, 'Saint Peters Madina', 'saint-peters-madina'),
(5, 'Sasso Adjiringanor', 'sasso-adjiringanor');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_sessions`
--

CREATE TABLE `adjmeth_sessions` (
  `id` int(11) NOT NULL,
  `sessions` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_sessions`
--

INSERT INTO `adjmeth_sessions` (`id`, `sessions`) VALUES
(1, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-4796482771456749496'),
(13, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-4661517841458731979'),
(15, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3956947601458738181'),
(17, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3846400661459412651'),
(18, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-687599631459515339'),
(19, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-4489481941459958570'),
(20, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-2424385241460033766'),
(21, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3105869371464193802'),
(23, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-4739877411464508496'),
(25, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-1186836701464873509'),
(29, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3819096901465212531'),
(30, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3311646501465213819'),
(31, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-2233480891465323148'),
(32, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-635146529978307951'),
(33, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-6918628791465386839'),
(34, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-1954449771466518122'),
(36, '2ZzRwM2g5eGZuOHNxMDNoczIyMzQy-4853754081467550299'),
(37, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-6010057281468788519'),
(38, '1ZzRwM2g5eGZuOHNxMDNoczIyMzQx-3807331861468838125');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_stock`
--

CREATE TABLE `adjmeth_stock` (
  `id` int(11) NOT NULL,
  `stock_id` varchar(12) NOT NULL,
  `stock_name` varchar(50) NOT NULL,
  `palias` varchar(50) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `company_price` varchar(15) NOT NULL,
  `selling_price` varchar(15) NOT NULL,
  `category` int(11) NOT NULL,
  `category_sub` int(11) NOT NULL,
  `category_subsub` int(11) NOT NULL,
  `entry_by` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `modified_by` varchar(15) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_stock_avail`
--

CREATE TABLE `adjmeth_stock_avail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `palias` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_stock_category`
--

CREATE TABLE `adjmeth_stock_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_parent` int(11) NOT NULL,
  `category_sparent` int(11) NOT NULL,
  `category_alias` varchar(100) NOT NULL,
  `category_description` varchar(500) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_stock_category`
--

INSERT INTO `adjmeth_stock_category` (`id`, `category_name`, `category_parent`, `category_sparent`, `category_alias`, `category_description`, `status`) VALUES
(1, 'Microphones', 0, 0, 'microphones', 'This category will be for the various microphones that have been purchased', '1'),
(2, 'Batteries', 0, 0, 'batteries-0', 'This category will handle all the batteries that will be boughtrn', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_sunday_school_class`
--

CREATE TABLE `adjmeth_sunday_school_class` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_sunday_school_class`
--

INSERT INTO `adjmeth_sunday_school_class` (`id`, `name`, `alias`) VALUES
(1, 'Timothy Class', 'timothy-class'),
(2, 'Middle Class', 'middle-class'),
(3, 'Beginners Class', 'beginners-class');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_sunday_school_members`
--

CREATE TABLE `adjmeth_sunday_school_members` (
  `id` int(11) NOT NULL,
  `studentid` varchar(15) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `day_born` varchar(15) NOT NULL,
  `month_born` varchar(15) NOT NULL,
  `year_born` int(4) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `m_class` varchar(30) NOT NULL,
  `date_join` date NOT NULL,
  `day_join` varchar(15) NOT NULL,
  `month_join` varchar(15) NOT NULL,
  `year_join` int(4) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `parent_id` varchar(15) NOT NULL,
  `pcontact` varchar(100) NOT NULL,
  `presidence` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `school` varchar(100) NOT NULL,
  `schoollocation` varchar(100) NOT NULL,
  `schclass` varchar(100) NOT NULL,
  `edulevel` varchar(100) NOT NULL,
  `residence` varchar(30) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_sunday_school_members`
--

INSERT INTO `adjmeth_sunday_school_members` (`id`, `studentid`, `surname`, `firstname`, `fullname`, `dob`, `day_born`, `month_born`, `year_born`, `gender`, `slug`, `phone`, `address`, `m_class`, `date_join`, `day_join`, `month_join`, `year_join`, `parent`, `parent_id`, `pcontact`, `presidence`, `paddress`, `school`, `schoollocation`, `schclass`, `edulevel`, `residence`, `hometown`, `region`, `remarks`, `created_by`, `created_date`, `status`) VALUES
(1, 'AMC1', 'Setsofia', 'Paula', 'Setsofia Paula', '2000-04-07', 'Friday', 'April', 2000, 'Female', 'setsofia-paula', '05549857854', 'P. O. Box AF 2582, Adentan', 'Timothy Class', '2016-07-07', 'Thursday', 'July', 2016, 'Mr Setsofia Bismark', '', '0203317732', 'Adjiringanor', 'P. O. Box AF 2582, Adentan', 'Future Vip School', 'Dzen Ayoor', 'form 1', 'JHS', 'Adjiringanor', 'Aflao', 'Volta Region', 'this is my remarks concerning this child', 'morgan', '2016-04-01 14:38:48', '1'),
(2, 'AMC2', 'Nii Afotey', 'Francis Odai', 'Nii Afotey Francis Odai', '2009-06-25', 'Thursday', 'June', 2009, 'Male', 'nii-afotey-francis-odai', '', 'P. O. Box AF 2582, Adentan', 'Middle Class', '2016-06-16', 'Thursday', 'June', 2016, 'Odai Boye Joseph', 'AMC380', '', '', '', 'Kay Billie Klaer', '', '', '', 'Adjiringanor', '', '', '', 'morgan', '2016-05-25 16:42:41', '1'),
(3, 'AMC3', 'Emmanuella', 'Boateng', 'Emmanuella Boateng', '2003-07-04', 'Friday', 'July', 2003, 'Female', 'emmanuella-boateng', '05549857854', '', 'Timothy Class', '2014-07-04', 'Friday', 'July', 2014, 'Mrs. Roseline Boateng', '', '', '', '', 'New Morning Rising Start', '', '', '', 'Sasso Adjiringanor', 'Mankessim', 'Eastern Region', '', 'emmallob', '2016-07-03 09:59:10', '1'),
(4, 'AMC4', 'Obeng', 'Emmanuel', 'Obeng Emmanuel', '1992-03-22', 'Sunday', 'March', 1992, 'Male', 'obeng-emmanuel', '05549857854', 'Remarks Remarks Remarks Remarks', 'Timothy Class', '2005-07-01', 'Friday', 'July', 2005, 'Obeng Angelina', '', '0203317732', 'shiashie', 'P. O. Box Af 2582 Adentan', 'Kwame Nkrumah University Of Science And Technology', 'kumasi', 'graduate', 'Tertiary', 'Adjiringanor', 'Bodwesango Obuasi', 'ashanti region', 'remarks remarks remarks remarks remarks remarks', 'emmallob', '2016-07-03 12:47:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_sunday_school_schools`
--

CREATE TABLE `adjmeth_sunday_school_schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_sunday_school_schools`
--

INSERT INTO `adjmeth_sunday_school_schools` (`id`, `name`, `slug`) VALUES
(19, 'Future Vip School', 'future-vip-school'),
(20, 'Kwame Nkrumah University Of Science And Technology', 'kwame-nkrumah-university-of-science-and-technology');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_sunday_school_teachers`
--

CREATE TABLE `adjmeth_sunday_school_teachers` (
  `id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_sunday_school_teachers`
--

INSERT INTO `adjmeth_sunday_school_teachers` (`id`, `member_id`, `status`) VALUES
(6, 'AMC207', '1'),
(7, 'AMC138', '1'),
(8, 'AMC3890', '1'),
(9, 'AMC69', '1'),
(10, 'AMC120', '1'),
(11, 'AMC145', '1'),
(12, 'AMC225', '1'),
(13, 'AMC134', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_supplier_details`
--

CREATE TABLE `adjmeth_supplier_details` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(500) NOT NULL,
  `supplier_address` text NOT NULL,
  `supplier_contact1` varchar(15) NOT NULL,
  `supplier_contact2` varchar(15) NOT NULL,
  `palias` varchar(50) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `deleted_details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_welfare`
--

CREATE TABLE `adjmeth_welfare` (
  `id` int(11) NOT NULL,
  `member_id` varchar(15) NOT NULL,
  `member` varchar(70) NOT NULL,
  `type` varchar(20) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(4) NOT NULL,
  `amount` decimal(60,2) NOT NULL DEFAULT '0.00',
  `paid_by` varchar(60) NOT NULL,
  `paid_byid` varchar(15) NOT NULL,
  `received_by` varchar(30) NOT NULL,
  `date_added` date NOT NULL,
  `date_paid` datetime NOT NULL,
  `date_joined` date NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_welfare`
--

INSERT INTO `adjmeth_welfare` (`id`, `member_id`, `member`, `type`, `month`, `year`, `amount`, `paid_by`, `paid_byid`, `received_by`, `date_added`, `date_paid`, `date_joined`, `status`) VALUES
(1, 'AMC207', 'Emmanuel Hyde Kwesi Obeng ', 'member', 'January', '2016', '5.00', 'Emmanuel Obeng', 'AMC207', 'Alex Awuah', '0000-00-00', '2016-02-02 06:16:26', '0000-00-00', '1'),
(2, 'AMC207', 'Emmanuel Hyde Kwesi Obeng ', 'member', 'February', '2016', '5.00', 'Emmanuel Obeng', 'AMC207', 'Alex Awuah', '0000-00-00', '2016-02-09 06:16:26', '0000-00-00', '1'),
(3, 'AMC121', 'Anita Aboagye', 'member', 'February', '2016', '5.00', 'Dorcas Boahen', 'AMC167', 'Alex Awuah', '0000-00-00', '2016-02-09 06:16:26', '0000-00-00', '1'),
(4, 'AMC258', 'Oduro Samuel Keke', 'member', 'January', '2016', '5.00', 'Adu Evans', 'AMC137', 'Morgan Morgan Eshun', '0000-00-00', '2016-06-06 11:17:17', '0000-00-00', '1'),
(5, 'AMC258', 'Oduro Samuel Keke', 'member', 'February', '2016', '5.00', 'Obeng Emmanuel', 'AMC207', 'Morgan Morgan Eshun', '0000-00-00', '2016-06-06 11:23:18', '0000-00-00', '1'),
(6, 'AMC137', 'Adu Evans', 'member', 'April', '2016', '5.00', 'Adu Evans', 'AMC137', 'Morgan Morgan Eshun', '0000-00-00', '2016-06-06 11:23:41', '0000-00-00', '1'),
(7, 'AMC137', 'Adu Evans', 'member', 'May', '2016', '5.00', 'Adu Evans', 'AMC137', 'Morgan Morgan Eshun', '0000-00-00', '2016-06-06 11:24:01', '0000-00-00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adjmeth_welfare_history`
--

CREATE TABLE `adjmeth_welfare_history` (
  `id` int(11) NOT NULL,
  `query` varchar(5000) NOT NULL,
  `date` datetime NOT NULL,
  `admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjmeth_welfare_history`
--

INSERT INTO `adjmeth_welfare_history` (`id`, `query`, `date`, `admin`) VALUES
(1, 'A Payment for the period January 2016 was inserted. It was paid\n				by Adu Evans with ID AMC137 on behalf of Oduro Samuel Keke with ID AMC258.\n				The amount paid was 5 and received by Morgan Morgan Eshun.\n				', '2016-06-06 11:17:17', 'Morgan Morgan Eshun'),
(2, 'A Payment for the period February 2016 was inserted. It was paid by Obeng Emmanuel with ID AMC207 on behalf of Oduro Samuel Keke with ID AMC258. The amount paid was 5 and received by Morgan Morgan Eshun.', '2016-06-06 11:23:18', 'Morgan Morgan Eshun'),
(3, 'A Payment for the period April 2016 was inserted. It was paid by Adu Evans with ID AMC137 on behalf of Adu Evans with ID AMC137. The amount paid was 5 and received by Morgan Morgan Eshun.', '2016-06-06 11:23:42', 'Morgan Morgan Eshun'),
(4, 'A Payment for the period May 2016 was inserted. It was paid by Adu Evans with ID AMC137 on behalf of Adu Evans with ID AMC137. The amount paid was 5 and received by Morgan Morgan Eshun.', '2016-06-06 11:24:01', 'Morgan Morgan Eshun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjmeth_admin`
--
ALTER TABLE `adjmeth_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usr_role_fk` (`Role`);

--
-- Indexes for table `adjmeth_admin_questions`
--
ALTER TABLE `adjmeth_admin_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_admin_roles`
--
ALTER TABLE `adjmeth_admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_class`
--
ALTER TABLE `adjmeth_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_countries`
--
ALTER TABLE `adjmeth_countries`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `adjmeth_days`
--
ALTER TABLE `adjmeth_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_education_level`
--
ALTER TABLE `adjmeth_education_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_events`
--
ALTER TABLE `adjmeth_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_finances`
--
ALTER TABLE `adjmeth_finances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_finance_currency`
--
ALTER TABLE `adjmeth_finance_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_finance_pledge`
--
ALTER TABLE `adjmeth_finance_pledge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_finance_type`
--
ALTER TABLE `adjmeth_finance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_groups`
--
ALTER TABLE `adjmeth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_hometown`
--
ALTER TABLE `adjmeth_hometown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_marital`
--
ALTER TABLE `adjmeth_marital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_members`
--
ALTER TABLE `adjmeth_members`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `adjmeth_members_day_borns`
--
ALTER TABLE `adjmeth_members_day_borns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_members_day_months`
--
ALTER TABLE `adjmeth_members_day_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_ministry`
--
ALTER TABLE `adjmeth_ministry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_months`
--
ALTER TABLE `adjmeth_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_months_copy`
--
ALTER TABLE `adjmeth_months_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_occupation`
--
ALTER TABLE `adjmeth_occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_options`
--
ALTER TABLE `adjmeth_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `adjmeth_region`
--
ALTER TABLE `adjmeth_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_requests`
--
ALTER TABLE `adjmeth_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_requests_history`
--
ALTER TABLE `adjmeth_requests_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_request_form`
--
ALTER TABLE `adjmeth_request_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mem_id` (`mem_id`);

--
-- Indexes for table `adjmeth_residence`
--
ALTER TABLE `adjmeth_residence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_sessions`
--
ALTER TABLE `adjmeth_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_stock`
--
ALTER TABLE `adjmeth_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_stock_avail`
--
ALTER TABLE `adjmeth_stock_avail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_stock_category`
--
ALTER TABLE `adjmeth_stock_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_sunday_school_class`
--
ALTER TABLE `adjmeth_sunday_school_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_sunday_school_members`
--
ALTER TABLE `adjmeth_sunday_school_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_sunday_school_schools`
--
ALTER TABLE `adjmeth_sunday_school_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_sunday_school_teachers`
--
ALTER TABLE `adjmeth_sunday_school_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_supplier_details`
--
ALTER TABLE `adjmeth_supplier_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_welfare`
--
ALTER TABLE `adjmeth_welfare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjmeth_welfare_history`
--
ALTER TABLE `adjmeth_welfare_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjmeth_admin`
--
ALTER TABLE `adjmeth_admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adjmeth_admin_questions`
--
ALTER TABLE `adjmeth_admin_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `adjmeth_admin_roles`
--
ALTER TABLE `adjmeth_admin_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `adjmeth_class`
--
ALTER TABLE `adjmeth_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `adjmeth_days`
--
ALTER TABLE `adjmeth_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adjmeth_education_level`
--
ALTER TABLE `adjmeth_education_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adjmeth_events`
--
ALTER TABLE `adjmeth_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `adjmeth_finances`
--
ALTER TABLE `adjmeth_finances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `adjmeth_finance_currency`
--
ALTER TABLE `adjmeth_finance_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adjmeth_finance_pledge`
--
ALTER TABLE `adjmeth_finance_pledge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adjmeth_finance_type`
--
ALTER TABLE `adjmeth_finance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `adjmeth_groups`
--
ALTER TABLE `adjmeth_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `adjmeth_hometown`
--
ALTER TABLE `adjmeth_hometown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adjmeth_marital`
--
ALTER TABLE `adjmeth_marital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adjmeth_members`
--
ALTER TABLE `adjmeth_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT for table `adjmeth_members_day_borns`
--
ALTER TABLE `adjmeth_members_day_borns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adjmeth_members_day_months`
--
ALTER TABLE `adjmeth_members_day_months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `adjmeth_ministry`
--
ALTER TABLE `adjmeth_ministry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `adjmeth_months`
--
ALTER TABLE `adjmeth_months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `adjmeth_months_copy`
--
ALTER TABLE `adjmeth_months_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `adjmeth_occupation`
--
ALTER TABLE `adjmeth_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adjmeth_options`
--
ALTER TABLE `adjmeth_options`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `adjmeth_region`
--
ALTER TABLE `adjmeth_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `adjmeth_requests`
--
ALTER TABLE `adjmeth_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `adjmeth_requests_history`
--
ALTER TABLE `adjmeth_requests_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `adjmeth_request_form`
--
ALTER TABLE `adjmeth_request_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adjmeth_residence`
--
ALTER TABLE `adjmeth_residence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `adjmeth_sessions`
--
ALTER TABLE `adjmeth_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `adjmeth_stock`
--
ALTER TABLE `adjmeth_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adjmeth_stock_avail`
--
ALTER TABLE `adjmeth_stock_avail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adjmeth_stock_category`
--
ALTER TABLE `adjmeth_stock_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `adjmeth_sunday_school_class`
--
ALTER TABLE `adjmeth_sunday_school_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adjmeth_sunday_school_members`
--
ALTER TABLE `adjmeth_sunday_school_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `adjmeth_sunday_school_schools`
--
ALTER TABLE `adjmeth_sunday_school_schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `adjmeth_sunday_school_teachers`
--
ALTER TABLE `adjmeth_sunday_school_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `adjmeth_supplier_details`
--
ALTER TABLE `adjmeth_supplier_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adjmeth_welfare`
--
ALTER TABLE `adjmeth_welfare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `adjmeth_welfare_history`
--
ALTER TABLE `adjmeth_welfare_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
