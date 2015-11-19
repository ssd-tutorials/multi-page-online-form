-- phpMyAdmin SQL Dump
-- version 2.11.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2010 at 06:41 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `multi_page_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` VALUES(1, 'Black');
INSERT INTO `colours` VALUES(2, 'White');
INSERT INTO `colours` VALUES(3, 'Red');
INSERT INTO `colours` VALUES(4, 'Blue');
INSERT INTO `colours` VALUES(5, 'Green');
INSERT INTO `colours` VALUES(6, 'Yellow');
INSERT INTO `colours` VALUES(7, 'Purple');
INSERT INTO `colours` VALUES(8, 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` VALUES(1, 'Afghanistan');
INSERT INTO `countries` VALUES(2, 'Albania');
INSERT INTO `countries` VALUES(3, 'Algeria');
INSERT INTO `countries` VALUES(4, 'American Samoa');
INSERT INTO `countries` VALUES(5, 'Andorra');
INSERT INTO `countries` VALUES(6, 'Angola');
INSERT INTO `countries` VALUES(7, 'Anguilla');
INSERT INTO `countries` VALUES(8, 'Antarctica');
INSERT INTO `countries` VALUES(9, 'Antigua and Barbuda');
INSERT INTO `countries` VALUES(10, 'Argentina');
INSERT INTO `countries` VALUES(11, 'Armenia');
INSERT INTO `countries` VALUES(12, 'Aruba');
INSERT INTO `countries` VALUES(13, 'Ashmore and Cartier');
INSERT INTO `countries` VALUES(14, 'Australia');
INSERT INTO `countries` VALUES(15, 'Austria');
INSERT INTO `countries` VALUES(16, 'Azerbaijan');
INSERT INTO `countries` VALUES(17, 'The Bahamas');
INSERT INTO `countries` VALUES(18, 'Bahrain');
INSERT INTO `countries` VALUES(19, 'Baker Island');
INSERT INTO `countries` VALUES(20, 'Bangladesh');
INSERT INTO `countries` VALUES(21, 'Barbados');
INSERT INTO `countries` VALUES(22, 'Bassas da India');
INSERT INTO `countries` VALUES(23, 'Belarus');
INSERT INTO `countries` VALUES(24, 'Belgium');
INSERT INTO `countries` VALUES(25, 'Belize');
INSERT INTO `countries` VALUES(26, 'Benin');
INSERT INTO `countries` VALUES(27, 'Bermuda');
INSERT INTO `countries` VALUES(28, 'Bhutan');
INSERT INTO `countries` VALUES(29, 'Bolivia');
INSERT INTO `countries` VALUES(30, 'Bosnia and Herzegovina');
INSERT INTO `countries` VALUES(31, 'Botswana');
INSERT INTO `countries` VALUES(32, 'Bouvet Island');
INSERT INTO `countries` VALUES(33, 'Brazil');
INSERT INTO `countries` VALUES(34, 'British Indian Ocean Territory');
INSERT INTO `countries` VALUES(35, 'British Virgin Islands');
INSERT INTO `countries` VALUES(36, 'Brunei Darussalam');
INSERT INTO `countries` VALUES(37, 'Bulgaria');
INSERT INTO `countries` VALUES(38, 'Burkina Faso');
INSERT INTO `countries` VALUES(39, 'Burma');
INSERT INTO `countries` VALUES(40, 'Burundi');
INSERT INTO `countries` VALUES(41, 'Cambodia');
INSERT INTO `countries` VALUES(42, 'Cameroon');
INSERT INTO `countries` VALUES(43, 'Canada');
INSERT INTO `countries` VALUES(44, 'Cape Verde');
INSERT INTO `countries` VALUES(45, 'Cayman Islands');
INSERT INTO `countries` VALUES(46, 'Central African Republic');
INSERT INTO `countries` VALUES(47, 'Chad');
INSERT INTO `countries` VALUES(48, 'Chile');
INSERT INTO `countries` VALUES(49, 'China');
INSERT INTO `countries` VALUES(50, 'Christmas Island');
INSERT INTO `countries` VALUES(51, 'Clipperton Island');
INSERT INTO `countries` VALUES(52, 'Cocos (Keeling) Islands');
INSERT INTO `countries` VALUES(53, 'Colombia');
INSERT INTO `countries` VALUES(54, 'Comoros');
INSERT INTO `countries` VALUES(55, 'Congo');
INSERT INTO `countries` VALUES(56, 'Congo');
INSERT INTO `countries` VALUES(57, 'Cook Islands');
INSERT INTO `countries` VALUES(58, 'Coral Sea Islands');
INSERT INTO `countries` VALUES(59, 'Costa Rica');
INSERT INTO `countries` VALUES(60, 'Cote d''Ivoire');
INSERT INTO `countries` VALUES(61, 'Croatia');
INSERT INTO `countries` VALUES(62, 'Cuba');
INSERT INTO `countries` VALUES(63, 'Cyprus');
INSERT INTO `countries` VALUES(64, 'Czech Republic');
INSERT INTO `countries` VALUES(65, 'Denmark');
INSERT INTO `countries` VALUES(66, 'Djibouti');
INSERT INTO `countries` VALUES(67, 'Dominica');
INSERT INTO `countries` VALUES(68, 'Dominican Republic');
INSERT INTO `countries` VALUES(69, 'East Timor');
INSERT INTO `countries` VALUES(70, 'Ecuador');
INSERT INTO `countries` VALUES(71, 'Egypt');
INSERT INTO `countries` VALUES(72, 'El Salvador');
INSERT INTO `countries` VALUES(73, 'Equatorial Guinea');
INSERT INTO `countries` VALUES(74, 'Eritrea');
INSERT INTO `countries` VALUES(75, 'Estonia');
INSERT INTO `countries` VALUES(76, 'Ethiopia');
INSERT INTO `countries` VALUES(77, 'Europa Island');
INSERT INTO `countries` VALUES(78, 'Falkland Islands (Islas Malvinas)');
INSERT INTO `countries` VALUES(79, 'Faroe Islands');
INSERT INTO `countries` VALUES(80, 'Fiji');
INSERT INTO `countries` VALUES(81, 'Finland');
INSERT INTO `countries` VALUES(82, 'France');
INSERT INTO `countries` VALUES(83, 'French Guiana');
INSERT INTO `countries` VALUES(84, 'French Polynesia');
INSERT INTO `countries` VALUES(85, 'French Southern and Antarctic Lands');
INSERT INTO `countries` VALUES(86, 'Gabon');
INSERT INTO `countries` VALUES(87, 'The Gambia');
INSERT INTO `countries` VALUES(88, 'Gaza Strip');
INSERT INTO `countries` VALUES(89, 'Georgia');
INSERT INTO `countries` VALUES(90, 'Germany');
INSERT INTO `countries` VALUES(91, 'Ghana');
INSERT INTO `countries` VALUES(92, 'Gibraltar');
INSERT INTO `countries` VALUES(93, 'Glorioso Islands');
INSERT INTO `countries` VALUES(94, 'Greece');
INSERT INTO `countries` VALUES(95, 'Greenland');
INSERT INTO `countries` VALUES(96, 'Grenada');
INSERT INTO `countries` VALUES(97, 'Guadeloupe');
INSERT INTO `countries` VALUES(98, 'Guam');
INSERT INTO `countries` VALUES(99, 'Guatemala');
INSERT INTO `countries` VALUES(100, 'Guernsey');
INSERT INTO `countries` VALUES(101, 'Guinea');
INSERT INTO `countries` VALUES(102, 'Guinea-Bissau');
INSERT INTO `countries` VALUES(103, 'Guyana');
INSERT INTO `countries` VALUES(104, 'Haiti');
INSERT INTO `countries` VALUES(105, 'Heard Island and McDonald Islands');
INSERT INTO `countries` VALUES(106, 'Holy See (Vatican City)');
INSERT INTO `countries` VALUES(107, 'Honduras');
INSERT INTO `countries` VALUES(108, 'Hong Kong (SAR)');
INSERT INTO `countries` VALUES(109, 'Howland Island');
INSERT INTO `countries` VALUES(110, 'Hungary');
INSERT INTO `countries` VALUES(111, 'Iceland');
INSERT INTO `countries` VALUES(112, 'India');
INSERT INTO `countries` VALUES(113, 'Indonesia');
INSERT INTO `countries` VALUES(114, 'Iran');
INSERT INTO `countries` VALUES(115, 'Iraq');
INSERT INTO `countries` VALUES(116, 'Ireland');
INSERT INTO `countries` VALUES(117, 'Israel');
INSERT INTO `countries` VALUES(118, 'Italy');
INSERT INTO `countries` VALUES(119, 'Jamaica');
INSERT INTO `countries` VALUES(120, 'Jan Mayen');
INSERT INTO `countries` VALUES(121, 'Japan');
INSERT INTO `countries` VALUES(122, 'Jarvis Island');
INSERT INTO `countries` VALUES(123, 'Jersey');
INSERT INTO `countries` VALUES(124, 'Johnston Atoll');
INSERT INTO `countries` VALUES(125, 'Jordan');
INSERT INTO `countries` VALUES(126, 'Juan de Nova Island');
INSERT INTO `countries` VALUES(127, 'Kazakhstan');
INSERT INTO `countries` VALUES(128, 'Kenya');
INSERT INTO `countries` VALUES(129, 'Kingman Reef');
INSERT INTO `countries` VALUES(130, 'Kiribati');
INSERT INTO `countries` VALUES(131, 'Korea');
INSERT INTO `countries` VALUES(132, 'Korea');
INSERT INTO `countries` VALUES(133, 'Kuwait');
INSERT INTO `countries` VALUES(134, 'Kyrgyzstan');
INSERT INTO `countries` VALUES(135, 'Laos');
INSERT INTO `countries` VALUES(136, 'Latvia');
INSERT INTO `countries` VALUES(137, 'Lebanon');
INSERT INTO `countries` VALUES(138, 'Lesotho');
INSERT INTO `countries` VALUES(139, 'Liberia');
INSERT INTO `countries` VALUES(140, 'Libya');
INSERT INTO `countries` VALUES(141, 'Liechtenstein');
INSERT INTO `countries` VALUES(142, 'Lithuania');
INSERT INTO `countries` VALUES(143, 'Luxembourg');
INSERT INTO `countries` VALUES(144, 'Macao');
INSERT INTO `countries` VALUES(145, 'Macedonia');
INSERT INTO `countries` VALUES(146, 'Madagascar');
INSERT INTO `countries` VALUES(147, 'Malawi');
INSERT INTO `countries` VALUES(148, 'Malaysia');
INSERT INTO `countries` VALUES(149, 'Maldives');
INSERT INTO `countries` VALUES(150, 'Mali');
INSERT INTO `countries` VALUES(151, 'Malta');
INSERT INTO `countries` VALUES(152, 'Man');
INSERT INTO `countries` VALUES(153, 'Marshall Islands');
INSERT INTO `countries` VALUES(154, 'Martinique');
INSERT INTO `countries` VALUES(155, 'Mauritania');
INSERT INTO `countries` VALUES(156, 'Mauritius');
INSERT INTO `countries` VALUES(157, 'Mayotte');
INSERT INTO `countries` VALUES(158, 'Mexico');
INSERT INTO `countries` VALUES(159, 'Micronesia');
INSERT INTO `countries` VALUES(160, 'Midway Islands');
INSERT INTO `countries` VALUES(161, 'Miscellaneous (French)');
INSERT INTO `countries` VALUES(162, 'Moldova');
INSERT INTO `countries` VALUES(163, 'Monaco');
INSERT INTO `countries` VALUES(164, 'Mongolia');
INSERT INTO `countries` VALUES(165, 'Montenegro');
INSERT INTO `countries` VALUES(166, 'Montserrat');
INSERT INTO `countries` VALUES(167, 'Morocco');
INSERT INTO `countries` VALUES(168, 'Mozambique');
INSERT INTO `countries` VALUES(169, 'Myanmar');
INSERT INTO `countries` VALUES(170, 'Namibia');
INSERT INTO `countries` VALUES(171, 'Nauru');
INSERT INTO `countries` VALUES(172, 'Navassa Island');
INSERT INTO `countries` VALUES(173, 'Nepal');
INSERT INTO `countries` VALUES(174, 'Netherlands');
INSERT INTO `countries` VALUES(175, 'Netherlands Antilles');
INSERT INTO `countries` VALUES(176, 'New Caledonia');
INSERT INTO `countries` VALUES(177, 'New Zealand');
INSERT INTO `countries` VALUES(178, 'Nicaragua');
INSERT INTO `countries` VALUES(179, 'Niger');
INSERT INTO `countries` VALUES(180, 'Nigeria');
INSERT INTO `countries` VALUES(181, 'Niue');
INSERT INTO `countries` VALUES(182, 'Norfolk Island');
INSERT INTO `countries` VALUES(183, 'Northern Mariana Islands');
INSERT INTO `countries` VALUES(184, 'Norway');
INSERT INTO `countries` VALUES(185, 'Oman');
INSERT INTO `countries` VALUES(186, 'Pakistan');
INSERT INTO `countries` VALUES(187, 'Palau');
INSERT INTO `countries` VALUES(188, 'Palmyra Atoll');
INSERT INTO `countries` VALUES(189, 'Panama');
INSERT INTO `countries` VALUES(190, 'Papua New Guinea');
INSERT INTO `countries` VALUES(191, 'Paracel Islands');
INSERT INTO `countries` VALUES(192, 'Paraguay');
INSERT INTO `countries` VALUES(193, 'Peru');
INSERT INTO `countries` VALUES(194, 'Philippines');
INSERT INTO `countries` VALUES(195, 'Pitcairn Islands');
INSERT INTO `countries` VALUES(196, 'Poland');
INSERT INTO `countries` VALUES(197, 'Portugal');
INSERT INTO `countries` VALUES(198, 'Puerto Rico');
INSERT INTO `countries` VALUES(199, 'Qatar');
INSERT INTO `countries` VALUES(200, 'R&eacute;union');
INSERT INTO `countries` VALUES(201, 'Romania');
INSERT INTO `countries` VALUES(202, 'Russia');
INSERT INTO `countries` VALUES(203, 'Rwanda');
INSERT INTO `countries` VALUES(204, 'Saint Helena');
INSERT INTO `countries` VALUES(205, 'Saint Kitts and Nevis');
INSERT INTO `countries` VALUES(206, 'Saint Lucia');
INSERT INTO `countries` VALUES(207, 'Saint Pierre and Miquelon');
INSERT INTO `countries` VALUES(208, 'Saint Vincent and the Grenadines');
INSERT INTO `countries` VALUES(209, 'Samoa');
INSERT INTO `countries` VALUES(210, 'San Marino');
INSERT INTO `countries` VALUES(211, 'S&atilde;o Tom&eacute; and Pr&iacute;ncipe');
INSERT INTO `countries` VALUES(212, 'Saudi Arabia');
INSERT INTO `countries` VALUES(213, 'Senegal');
INSERT INTO `countries` VALUES(214, 'Serbia');
INSERT INTO `countries` VALUES(215, 'Serbia and Montenegro');
INSERT INTO `countries` VALUES(216, 'Seychelles');
INSERT INTO `countries` VALUES(217, 'Sierra Leone');
INSERT INTO `countries` VALUES(218, 'Singapore');
INSERT INTO `countries` VALUES(219, 'Slovakia');
INSERT INTO `countries` VALUES(220, 'Slovenia');
INSERT INTO `countries` VALUES(221, 'Solomon Islands');
INSERT INTO `countries` VALUES(222, 'Somalia');
INSERT INTO `countries` VALUES(223, 'South Africa');
INSERT INTO `countries` VALUES(224, 'South Georgia and the South Sandwich Islands');
INSERT INTO `countries` VALUES(225, 'Spain');
INSERT INTO `countries` VALUES(226, 'Spratly Islands');
INSERT INTO `countries` VALUES(227, 'Sri Lanka');
INSERT INTO `countries` VALUES(228, 'Sudan');
INSERT INTO `countries` VALUES(229, 'Suriname');
INSERT INTO `countries` VALUES(230, 'Svalbard');
INSERT INTO `countries` VALUES(231, 'Swaziland');
INSERT INTO `countries` VALUES(232, 'Sweden');
INSERT INTO `countries` VALUES(233, 'Switzerland');
INSERT INTO `countries` VALUES(234, 'Syria');
INSERT INTO `countries` VALUES(235, 'Taiwan');
INSERT INTO `countries` VALUES(236, 'Tajikistan');
INSERT INTO `countries` VALUES(237, 'Tanzania');
INSERT INTO `countries` VALUES(238, 'Thailand');
INSERT INTO `countries` VALUES(239, 'Togo');
INSERT INTO `countries` VALUES(240, 'Tokelau');
INSERT INTO `countries` VALUES(241, 'Tonga');
INSERT INTO `countries` VALUES(242, 'Trinidad and Tobago');
INSERT INTO `countries` VALUES(243, 'Tromelin Island');
INSERT INTO `countries` VALUES(244, 'Tunisia');
INSERT INTO `countries` VALUES(245, 'Turkey');
INSERT INTO `countries` VALUES(246, 'Turkmenistan');
INSERT INTO `countries` VALUES(247, 'Turks and Caicos Islands');
INSERT INTO `countries` VALUES(248, 'Tuvalu');
INSERT INTO `countries` VALUES(249, 'Uganda');
INSERT INTO `countries` VALUES(250, 'Ukraine');
INSERT INTO `countries` VALUES(251, 'United Arab Emirates');
INSERT INTO `countries` VALUES(252, 'United Kingdom');
INSERT INTO `countries` VALUES(253, 'United States');
INSERT INTO `countries` VALUES(254, 'United States Minor Outlying Islands');
INSERT INTO `countries` VALUES(255, 'Uruguay');
INSERT INTO `countries` VALUES(256, 'Uzbekistan');
INSERT INTO `countries` VALUES(257, 'Vanuatu');
INSERT INTO `countries` VALUES(258, 'Venezuela');
INSERT INTO `countries` VALUES(259, 'Vietnam');
INSERT INTO `countries` VALUES(260, 'Virgin Islands');
INSERT INTO `countries` VALUES(261, 'Virgin Islands (UK)');
INSERT INTO `countries` VALUES(262, 'Virgin Islands (US)');
INSERT INTO `countries` VALUES(263, 'Wake Island');
INSERT INTO `countries` VALUES(264, 'Wallis and Futuna');
INSERT INTO `countries` VALUES(265, 'West Bank');
INSERT INTO `countries` VALUES(266, 'Western Sahara');
INSERT INTO `countries` VALUES(267, 'Western Samoa');
INSERT INTO `countries` VALUES(268, 'World');
INSERT INTO `countries` VALUES(269, 'Yemen');
INSERT INTO `countries` VALUES(270, 'Yugoslavia');
INSERT INTO `countries` VALUES(271, 'Zaire');
INSERT INTO `countries` VALUES(272, 'Zambia');
INSERT INTO `countries` VALUES(273, 'Zimbabwe');
INSERT INTO `countries` VALUES(274, 'Palestinian Territory');
INSERT INTO `countries` VALUES(275, 'Victoria');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` VALUES(1, 'Arts and Literature');
INSERT INTO `interests` VALUES(2, 'Astrology');
INSERT INTO `interests` VALUES(3, 'Boating');
INSERT INTO `interests` VALUES(4, 'Body Piercing');
INSERT INTO `interests` VALUES(5, 'Cake Decorating');
INSERT INTO `interests` VALUES(6, 'Camping');
INSERT INTO `interests` VALUES(7, 'Coin Collecting');
INSERT INTO `interests` VALUES(8, 'Coloring Pages');
INSERT INTO `interests` VALUES(9, 'Computers and Internet');
INSERT INTO `interests` VALUES(10, 'Cooking');
INSERT INTO `interests` VALUES(11, 'Christmas Crafts');
INSERT INTO `interests` VALUES(12, 'Christmas Decorating');
INSERT INTO `interests` VALUES(13, 'Creative Writing');
INSERT INTO `interests` VALUES(14, 'Cruising');
INSERT INTO `interests` VALUES(15, 'Dancing');
INSERT INTO `interests` VALUES(16, 'Diving / Snorkeling');
INSERT INTO `interests` VALUES(17, 'Drawing / Sketching');
INSERT INTO `interests` VALUES(18, 'Embroidery');
INSERT INTO `interests` VALUES(19, 'Exercise and Fitness Activities');
INSERT INTO `interests` VALUES(20, 'Fishing');
INSERT INTO `interests` VALUES(21, 'Flower Arranging');
INSERT INTO `interests` VALUES(22, 'Gardening');
INSERT INTO `interests` VALUES(23, 'Graffiti');
INSERT INTO `interests` VALUES(24, 'Hiking');
INSERT INTO `interests` VALUES(25, 'Ice Skating');
INSERT INTO `interests` VALUES(26, 'Jewelry Making');
INSERT INTO `interests` VALUES(27, 'Kayaking');
INSERT INTO `interests` VALUES(28, 'Kitesurfing / Kiteboarding');
INSERT INTO `interests` VALUES(29, 'Kids Art Activities');
INSERT INTO `interests` VALUES(30, 'Kids Crafts');
INSERT INTO `interests` VALUES(31, 'Knitting');
INSERT INTO `interests` VALUES(32, 'Listening Music');
INSERT INTO `interests` VALUES(33, 'Online Chatting');
INSERT INTO `interests` VALUES(34, 'Origami');
INSERT INTO `interests` VALUES(35, 'Palm Reading');
INSERT INTO `interests` VALUES(36, 'Painting');
INSERT INTO `interests` VALUES(37, 'Paper Crafts');
INSERT INTO `interests` VALUES(38, 'Paragliding');
INSERT INTO `interests` VALUES(39, 'Pets and Animals');
INSERT INTO `interests` VALUES(40, 'Photography Techniques');
INSERT INTO `interests` VALUES(41, 'Play Online Games');
INSERT INTO `interests` VALUES(42, 'Playing Computer Games');
INSERT INTO `interests` VALUES(43, 'Playing Pranks');
INSERT INTO `interests` VALUES(44, 'Poetry and Poems');
INSERT INTO `interests` VALUES(45, 'Quilting');
INSERT INTO `interests` VALUES(46, 'Reading');
INSERT INTO `interests` VALUES(47, 'Reading Tarot Cards');
INSERT INTO `interests` VALUES(48, 'Riddles');
INSERT INTO `interests` VALUES(49, 'Sewing');
INSERT INTO `interests` VALUES(50, 'Singing');
INSERT INTO `interests` VALUES(51, 'Stamp Collecting');
INSERT INTO `interests` VALUES(52, 'Rock and Mountain Climbing');
INSERT INTO `interests` VALUES(53, 'Sailing');
INSERT INTO `interests` VALUES(54, 'Scrapbooking');
INSERT INTO `interests` VALUES(55, 'Scuba Diving');
INSERT INTO `interests` VALUES(56, 'Skateboarding');
INSERT INTO `interests` VALUES(57, 'Skydiving / Parachuting');
INSERT INTO `interests` VALUES(58, 'Snow Skiing');
INSERT INTO `interests` VALUES(59, 'Snowboarding');
INSERT INTO `interests` VALUES(60, 'Speed Skating');
INSERT INTO `interests` VALUES(61, 'Sports and Recreation');
INSERT INTO `interests` VALUES(62, 'Star Astronomy');
INSERT INTO `interests` VALUES(63, 'Surfing');
INSERT INTO `interests` VALUES(64, 'Tattoos / Body Art');
INSERT INTO `interests` VALUES(65, 'Travel');
INSERT INTO `interests` VALUES(66, 'Whitewater / River Rafting');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL auto_increment,
  `file` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `modules`
--


-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `link_name` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `identity` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` VALUES(1, 'Home page', '<h1>Home page</h1>\r\n<p>Cum sociis natoque penatibus et magnis dis. Sed tortor enim, congue quis pharetra et, lobortis scelerisque est. senectus et netus et malesuada fames ac turpis egestas. Curabitur porta nunc a mi convallis ac rhoncus tellus ullamcorper. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Curabitur porta nunc a mi convallis ac rhoncus tellus ullamcorper. Vestibulum consectetur in turpis pulvinar facilisis. Ut felis.</p>\r\n<div class="sbm sbm_register btn_register mr_b14"><a href="?p=submission_form" class="sbm btn_register">Register Now</a></div>', 'index');
INSERT INTO `pages` VALUES(2, 'Submission form', '<h1>Submission form</h1>', 'submission_form');
INSERT INTO `pages` VALUES(3, 'Submissions', '<h1>Submissions</h1>', 'submissions');

-- --------------------------------------------------------

--
-- Table structure for table `pages_modules`
--

CREATE TABLE `pages_modules` (
  `page` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  PRIMARY KEY  (`page`,`module`),
  KEY `FK_PAGE` (`page`),
  KEY `FK_MODULE` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_modules`
--


-- --------------------------------------------------------

--
-- Table structure for table `search_engines`
--

CREATE TABLE `search_engines` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `search_engines`
--

INSERT INTO `search_engines` VALUES(1, 'Google');
INSERT INTO `search_engines` VALUES(2, 'Yahoo');
INSERT INTO `search_engines` VALUES(3, 'MSN');
INSERT INTO `search_engines` VALUES(4, 'Ask Jeeves');
INSERT INTO `search_engines` VALUES(5, 'All the Web');
INSERT INTO `search_engines` VALUES(6, 'Alta Vista');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(10) NOT NULL auto_increment,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `age` tinyint(3) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `country` int(11) NOT NULL,
  `colour` int(11) NOT NULL,
  `search_engine` int(11) NOT NULL,
  `date_submitted` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `FK_COUNTRY` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `survey`
--


-- --------------------------------------------------------

--
-- Table structure for table `survey_interests`
--

CREATE TABLE `survey_interests` (
  `survey` int(10) NOT NULL,
  `interest` int(11) NOT NULL,
  PRIMARY KEY  (`survey`,`interest`),
  KEY `FK_SURVEY` (`survey`),
  KEY `FK_INTEREST` (`interest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_interests`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `pages_modules`
--
ALTER TABLE `pages_modules`
  ADD CONSTRAINT `pages_modules_ibfk_1` FOREIGN KEY (`page`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_modules_ibfk_2` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey`
--
ALTER TABLE `survey`
  ADD CONSTRAINT `survey_ibfk_1` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey_interests`
--
ALTER TABLE `survey_interests`
  ADD CONSTRAINT `survey_interests_ibfk_2` FOREIGN KEY (`interest`) REFERENCES `interests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `survey_interests_ibfk_3` FOREIGN KEY (`survey`) REFERENCES `survey` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
