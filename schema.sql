-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2024 at 01:10 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cfitzpatrick126`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `job_seeker_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `application_status_id` int(11) DEFAULT NULL,
  `date_submitted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`job_seeker_id`, `job_id`, `application_status_id`, `date_submitted`) VALUES
(1, 3, 2, '2024-03-01'),
(1, 32, 1, '2024-03-06'),
(2, 48, 1, '2024-03-07'),
(3, 4, 2, '2024-03-01'),
(5, 11, 1, '2024-03-02'),
(6, 17, 3, '2024-03-06'),
(6, 31, 3, '2024-03-05'),
(7, 42, 1, '2024-03-09'),
(9, 56, 1, '2024-03-09'),
(10, 12, 1, '2024-03-06'),
(11, 47, 1, '2024-03-07'),
(12, 56, 1, '2024-03-09'),
(13, 51, 1, '2024-03-07'),
(14, 10, 2, '2024-03-01'),
(16, 19, 1, '2024-03-05'),
(17, 52, 1, '2024-03-08'),
(18, 13, 3, '2024-03-04'),
(19, 57, 1, '2024-03-08'),
(23, 7, 1, '2024-03-02'),
(23, 9, 3, '2024-03-02'),
(24, 56, 1, '2024-03-08'),
(25, 27, 1, '2024-03-06'),
(27, 54, 1, '2024-03-07'),
(28, 42, 1, '2024-03-06'),
(29, 1, 2, '2024-03-03'),
(31, 34, 1, '2024-03-06'),
(31, 39, 1, '2024-03-07'),
(31, 47, 1, '2024-03-06'),
(33, 34, 1, '2024-03-05'),
(34, 3, 3, '2024-03-03'),
(35, 55, 1, '2024-03-09'),
(37, 54, 1, '2024-03-07'),
(41, 53, 1, '2024-03-09'),
(42, 53, 1, '2024-03-08'),
(43, 9, 2, '2024-03-04'),
(44, 22, 2, '2024-03-06'),
(44, 41, 1, '2024-03-06'),
(45, 12, 1, '2024-03-03'),
(46, 22, 2, '2024-03-06'),
(48, 48, 1, '2024-03-08'),
(49, 56, 1, '2024-03-07'),
(50, 43, 2, '2024-03-08'),
(52, 22, 3, '2024-03-05'),
(52, 47, 1, '2024-03-08'),
(53, 51, 1, '2024-03-07'),
(54, 41, 1, '2024-03-09'),
(56, 5, 1, '2024-03-04'),
(57, 33, 3, '2024-03-06'),
(58, 54, 1, '2024-03-07'),
(60, 28, 3, '2024-03-06'),
(61, 37, 1, '2024-03-09'),
(61, 42, 1, '2024-03-08'),
(62, 54, 1, '2024-03-09'),
(63, 49, 1, '2024-03-07'),
(63, 57, 1, '2024-03-09'),
(64, 56, 1, '2024-03-07'),
(65, 38, 1, '2024-03-09'),
(66, 50, 1, '2024-03-09'),
(66, 51, 1, '2024-03-07'),
(68, 7, 1, '2024-03-04'),
(68, 23, 2, '2024-03-05'),
(69, 50, 1, '2024-03-07'),
(70, 34, 1, '2024-03-08'),
(70, 43, 3, '2024-03-09'),
(71, 39, 1, '2024-03-06'),
(72, 8, 3, '2024-03-04'),
(72, 48, 1, '2024-03-09'),
(72, 49, 1, '2024-03-08'),
(73, 49, 1, '2024-03-08'),
(73, 52, 1, '2024-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `application_status_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_status`
--

INSERT INTO `application_status` (`application_status_id`, `status`) VALUES
(3, 'Approved'),
(2, 'Denied'),
(1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `job_seeker_id` int(11) NOT NULL,
  `qualification_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`job_seeker_id`, `qualification_title`) VALUES
(1, 'Information Technology BSc'),
(1, 'Software Engineering BEng'),
(2, 'Accounting MSc'),
(2, 'Business Administration BBA'),
(2, 'Information Technology MSc'),
(3, 'Business Studies BSc'),
(4, 'Mathematics MSc'),
(4, 'Physics A2'),
(5, 'Warehousing and Storage HNC'),
(6, 'Construction HND'),
(7, 'Computer Science MSc'),
(8, 'Environmental Science BSc'),
(8, 'Geography A2'),
(8, 'Geography PhD'),
(9, 'Business Administration BBA'),
(10, 'Driver Certificate of Professional Competence'),
(11, 'Construction NVD'),
(12, 'Information Technology BSc'),
(13, 'Mechanical Engineering Meng'),
(13, 'Physics A2'),
(14, 'Human Resources'),
(15, 'Architecture BSc'),
(16, 'Construction HNC'),
(16, 'Plumbing HND'),
(16, 'Repair and Maintenance HND'),
(17, 'Construction HND'),
(18, 'Water Management Systems HND'),
(19, 'Plastering HND'),
(20, 'History and Law BSc'),
(21, 'Finance and Statistics MSc'),
(22, 'Computer Science MSc'),
(22, 'Information Technology A2'),
(23, 'Driver Certificate of Professional Competence'),
(24, 'Business Administration BBA'),
(24, 'Business Studies A2'),
(25, 'Business Studies A2'),
(25, 'English BA'),
(25, 'Mathematics A2'),
(25, 'Media Studies A2'),
(26, 'Biological Science BSc'),
(27, 'Accounting BSc'),
(28, 'Business Administration BBA'),
(29, 'Accounting MSc'),
(30, 'German BA'),
(31, 'Construction NVD'),
(32, 'French MA'),
(32, 'Spanish BA'),
(33, 'Joinery HND'),
(34, 'Computer Engineering Beng'),
(35, 'Accounting BSc'),
(35, 'Business Administration MAA'),
(36, 'English and History BA'),
(37, 'Accounting BSc'),
(37, 'Business Administration BAA'),
(37, 'Mathematics BSc'),
(38, 'Camera and Filmmaking Techniques'),
(38, 'Film MA'),
(39, 'Social Media Studies'),
(40, 'Warehousing and Storage HND'),
(41, 'Networks and Wireless Communication'),
(42, 'Computer Science BSc'),
(43, 'Business Administration BAA'),
(43, 'Business Studies A2'),
(44, 'Light Vehicle Maintenance HNC'),
(45, 'Vehicular Studies HND'),
(46, 'Mechanical Engineering BEng'),
(46, 'Repair for Engineering and Manufacturing'),
(47, 'Mathematics BSc'),
(48, 'Human Resources'),
(49, 'Business Administration MAA'),
(49, 'GDPR and Data Safety Training'),
(50, 'Mechanical Engineering MEng'),
(50, 'Quality Assurance and Control Training'),
(51, 'Spanish BA'),
(52, 'Light Vehicle Maintenance'),
(53, 'Engineering Beng'),
(54, 'Large Scale Project Management'),
(55, 'Mathematics A2'),
(55, 'Nuclear Physics BSc'),
(55, 'Physics A2'),
(56, 'Business Studies BSc'),
(56, 'History A2'),
(56, 'Mathematics A2'),
(57, 'On-site Construction'),
(58, 'Statistical Analysis'),
(59, 'Recreation and Sports'),
(60, 'Statistical Analysis'),
(61, 'Major Project Leadership Certificate'),
(62, 'Accounting for Law BSc'),
(63, 'Construction'),
(63, 'Warehousing and Storage'),
(64, 'Major Project Leadership Certificate'),
(64, 'Quality Assurance and Control Training'),
(65, 'Business Accounting BSc'),
(66, 'Engineering and Construction BEng'),
(67, 'Chemistry BSc'),
(68, 'Handling and Transport Certificate'),
(69, 'Fire Hazard Training'),
(69, 'Health and Safety on Construction Site Certificate'),
(69, 'Plastering HND'),
(70, 'Technology BSc'),
(71, 'Carpentry and Joinery HND'),
(72, 'Forklife Certificate'),
(72, 'Manual Labour and Storage Handling'),
(73, 'Human Resources'),
(73, 'Warehousing and Storage HND');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employer_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `email_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`employer_id`, `company_name`, `phone_num`, `email_address`, `city`, `country`) VALUES
(1, 'Google Ireland', '0725874136', 'info@google.com', 'Dublin', 'Ireland'),
(2, 'Apple UK ', '0719568234', 'info@apple.com', 'London', 'UK'),
(3, 'Nestle UK', '0783629145', 'info@nestle.com', 'London', 'UK'),
(4, 'Hasbro UK', '0734182956', 'info@hasbro.com', 'London', 'UK'),
(5, 'Dell UK', '0775314862', 'info@dell.com', 'London', 'UK'),
(6, 'Microsoft UK', '0792548163', 'info@microsoft.com', 'London', 'UK'),
(7, 'Kia UK', '0762815943', 'info@kia.com', 'London', 'UK'),
(8, 'Samsung UK', '0746952138', 'info@samsung.com', 'London', 'UK'),
(9, 'Instil', '0758146392', 'info@instil.com', 'Belfast', 'UK'),
(10, 'Tesco', '0773591862', 'info@tesco.com', 'Dublin', 'Ireland'),
(11, 'Liberty IT', '0714986325', 'info@libertyit.com', 'Belfast', 'UK'),
(12, 'Asda Ireland', '0763589142', 'info@asda.com', 'Dublin', 'Ireland'),
(13, 'Lidl UK', '0741285936', 'info@lidl.com', 'Brighton', 'UK'),
(14, 'Spar', '0784653129', 'info@spar.com', 'Belfast', 'UK'),
(15, 'Kainos', '0729315684', 'info@kainos.com', 'Belfast', 'UK'),
(16, 'Spirit Aerosystems', '0751849362', 'info@spiritaerosystems.com', 'Belfast', 'UK'),
(17, 'Nike UK', '0735821496', 'info@nike.com', 'London', 'UK'),
(18, 'Adidas UK', '0794253618', 'info@adidas.com', 'London', 'UK'),
(19, 'Hollister UK', '0771869453', 'info@hollister.com', 'London', 'UK'),
(20, 'Pull & Bear UK', '0715482396', 'info@pullandbear.com', 'London', 'UK'),
(21, 'Amazon UK', '0758194263', 'info@amazon.com', 'London', 'UK'),
(22, 'IKEA Belfast', '0729451836', 'info@ikea.com', 'Belfast', 'UK'),
(23, 'Savers', '0782659314', 'info@savers.com', 'Belfast', 'UK'),
(24, 'Primark', '0741963285', 'info@primark.com', 'London', 'UK'),
(25, 'B&Q', '0774395812', 'info@bandq.com', 'London', 'UK'),
(26, 'Pets at Home', '0713652849', 'info@petsathome.com', 'London', 'UK'),
(27, 'Home Bargains', '0731826945', 'info@homebargains.com', 'London', 'UK'),
(28, 'TK Maxx', '0796451382', 'info@tkmaxx.com', 'London', 'UK'),
(29, 'Poundland', '0762859143', 'info@poundland.com', 'London', 'UK'),
(30, 'Carpetright', '0724586319', 'info@carpetright.com', 'London', 'UK'),
(31, 'Martin Phillips', '0781964253', 'info@martinphillips.com', 'London', 'UK'),
(32, 'Go Outdoors Belfast', '0758614923', 'info@gooutdoors.com', 'Belfast', 'UK'),
(33, 'SSE', '0739182465', 'info@sse.com', 'London', 'UK'),
(34, 'Electricity Ireland', '0712589634', 'info@electricityireland.com', 'Dublin', 'Ireland'),
(35, 'BT', '0793146825', 'info@bt.com', 'Dublin', 'Ireland'),
(36, 'BP UK', '0778451936', 'info@bp.com', 'London', 'UK'),
(37, 'Maxol UK', '0729458136', 'info@maxol.com', 'London', 'UK'),
(38, 'Build-a-Bear', '0741896352', 'info@buildabear.com', 'London', 'UK'),
(39, 'Cosmo', '0765843219', 'info@cosmo.com', 'Belfast', 'UK'),
(40, 'Starbucks', '0713649852', 'info@starbucks.com', 'London', 'UK'),
(41, 'Costa', '0781563249', 'info@costa.com', 'London', 'UK'),
(42, 'Russells', '0754918632', 'info@russells.com', 'Belfast', 'UK'),
(43, 'Greggs', '0738541962', 'info@greggs.com', 'London', 'UK'),
(44, 'Centra', '0794658123', 'info@centra.com', 'Dublin', 'Ireland'),
(45, 'Tribal', '0779253618', 'info@tribal.com', 'Belfast', 'UK'),
(46, 'H&M', '0723985614', 'info@hm.com', 'London', 'UK'),
(47, 'Next', '0742513869', 'info@next.com', 'London', 'UK'),
(48, 'Zara', '0765912483', 'info@zara.com', 'London', 'UK'),
(49, 'Wineflair', '0716948325', 'info@wineflair.com', 'London', 'UK'),
(50, 'Applegreen Ireland', '0784261593', 'info@applegreen.com', 'Dublin', 'Ireland'),
(51, 'Decathalon', '0735189426', 'info@decathlon.com', 'London', 'UK'),
(52, 'Sports Direct', '0796853124', 'info@sportsdirect.com', 'London', 'UK'),
(53, 'McDonalds UK', '0773149652', 'info@mcdonalds.com', 'London', 'UK'),
(54, 'KFC UK', '0728354169', 'info@kfc.com', 'London', 'UK'),
(55, 'Burger King UK', '0759612384', 'info@burgerking.com', 'London', 'UK'),
(56, 'Subway UK', '0714689253', 'info@subway.com', 'London', 'UK'),
(57, 'Apache Pizza', '0762395814', 'info@apachepizza.com', 'London', 'UK'),
(58, 'Little Wing', '0748916235', 'info@littlewing.com', 'London', 'UK'),
(59, 'Wetherspoons', '0785692143', 'info@wetherspoons.com', 'London', 'UK'),
(60, 'Matalan Belfast', '0731584962', 'info@matalan.com', 'Belfast', 'UK'),
(61, 'B&M', '0796428135', 'info@bmstores.com', 'London', 'UK'),
(62, 'Curry\'s PC World', '0772951836', 'info@currys.co.uk', 'Brighton', 'UK'),
(63, 'Nationwide', '0725498316', 'info@nationwide.co.uk', 'London', 'UK'),
(64, 'Danske Bank', '0758143962', 'info@danskebank.co.uk', 'Belfast', 'UK'),
(65, 'Ulster Bank', '0713625849', 'info@ulsterbank.co.uk', 'Belfast', 'UK'),
(66, 'Bank of Ireland', '0762985413', 'info@bankofireland.com', 'Dublin', 'Ireland'),
(67, 'Intel UK', '0748369215', 'info@intel.com', 'London', 'UK'),
(68, 'Coca-Cola UK', '0785641293', 'info@coca-cola.co.uk', 'London', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `employer_id` int(11) NOT NULL,
  `hourly_salary` decimal(5,2) NOT NULL,
  `date_posted` date NOT NULL,
  `application_deadline` date NOT NULL,
  `on_site` tinyint(1) NOT NULL,
  `full_time` tinyint(1) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_title`, `sector_id`, `employer_id`, `hourly_salary`, `date_posted`, `application_deadline`, `on_site`, `full_time`, `city`, `country`) VALUES
(1, 'Junior Accountant', 6, 63, 30.00, '2024-03-01', '2024-03-08', 1, 1, 'Belfast', 'UK'),
(2, 'Project Manager', 5, 15, 32.00, '2024-03-01', '2024-03-06', 1, 1, 'Lisburn', 'UK'),
(3, 'Software Engineer', 7, 1, 35.00, '2024-03-01', '2024-03-06', 0, 1, NULL, NULL),
(4, 'Sales Assistant', 8, 12, 21.00, '2024-03-01', '2024-03-09', 1, 0, 'Carrickfergus', 'UK'),
(5, 'Sales Assistant', 8, 10, 19.50, '2024-03-01', '2024-03-11', 1, 1, 'Whitehead', 'UK'),
(6, 'Network Engineer', 7, 1, 24.50, '2024-03-01', '2024-03-15', 0, 1, NULL, NULL),
(7, 'Fleet Manager', 2, 24, 22.25, '2024-03-01', '2024-03-15', 1, 1, 'Belfast', 'UK'),
(8, 'Senior Sales Assistant', 8, 24, 29.70, '2024-03-01', '2024-03-05', 1, 1, 'Moira', 'UK'),
(9, 'Project Manager', 5, 22, 24.50, '2024-03-01', '2024-03-07', 0, 1, NULL, NULL),
(10, 'Recruitment Officer', 3, 60, 19.00, '2024-03-01', '2024-03-08', 1, 0, 'Belfast', 'UK'),
(11, 'Warehouse Operative', 1, 21, 17.30, '2024-03-02', '2024-03-16', 1, 0, 'Larne', 'UK'),
(12, 'Transport Operative', 1, 21, 24.50, '2024-03-02', '2024-03-14', 1, 1, 'Larne', 'UK'),
(13, 'Senior Accountant', 6, 66, 36.50, '2024-03-02', '2024-03-09', 1, 1, 'Belfast', 'UK'),
(14, 'Sales Assistant', 8, 26, 10.75, '2024-03-02', '2024-03-09', 1, 1, 'Belfast', 'UK'),
(15, 'Payroll Specialist', 6, 62, 20.50, '2024-03-03', '2024-03-17', 0, 1, NULL, NULL),
(16, 'Clericial Officer', 2, 43, 18.20, '2024-03-03', '2024-03-17', 1, 1, 'Belfast', 'UK'),
(17, 'Plasterer', 4, 14, 15.00, '2024-03-03', '2024-03-10', 1, 0, 'Carrickfergus', 'UK'),
(18, 'Plumber', 4, 9, 14.50, '2024-03-03', '2024-03-09', 1, 0, 'Larne', 'UK'),
(19, 'Plumber', 4, 16, 16.25, '2024-03-04', '2024-03-14', 1, 1, 'Portadown', 'UK'),
(20, 'Planning Officer', 2, 18, 23.50, '2024-03-04', '2024-03-08', 1, 1, 'Belfast', 'UK'),
(21, 'Joiner', 4, 22, 17.00, '2024-03-04', '2024-03-09', 1, 0, 'Larne', 'UK'),
(22, 'Mechanic', 4, 22, 22.30, '2024-03-04', '2024-03-07', 1, 0, 'Belfast', 'UK'),
(23, 'Warehouse Operative', 1, 52, 11.00, '2024-03-04', '2024-03-08', 1, 0, 'Belfast', 'UK'),
(24, 'Stores Admin', 2, 51, 13.50, '2024-03-04', '2024-03-07', 1, 1, 'Lisburn', 'UK'),
(25, 'Electrician', 4, 39, 12.00, '2024-03-04', '2024-03-18', 1, 0, 'Newtownabbey', 'UK'),
(26, 'Plumber', 4, 46, 12.20, '2024-03-04', '2024-03-10', 1, 1, 'Newtownabbey', 'UK'),
(27, 'Sales Assistant', 8, 47, 10.00, '2024-03-04', '2024-03-09', 1, 1, 'Moira', 'UK'),
(28, 'Accountant', 6, 64, 34.20, '2024-03-04', '2024-03-08', 1, 1, 'Belfast', 'UK'),
(29, 'Mainentance Officer', 4, 5, 23.00, '2024-03-05', '2024-03-14', 0, 1, NULL, NULL),
(30, 'Senior Project Manager', 5, 8, 29.80, '2024-03-05', '2024-03-19', 1, 1, 'Belfast', 'UK'),
(31, 'Warehouse Operative', 1, 29, 10.25, '2024-03-05', '2024-03-10', 1, 0, 'Belfast', 'UK'),
(32, 'IMS Officer', 5, 34, 16.00, '2024-03-05', '2024-03-14', 1, 1, 'Belfast', 'UK'),
(33, 'Plasterer', 4, 27, 12.00, '2024-03-05', '2024-03-09', 1, 1, 'Newtownabbey', 'UK'),
(34, 'Joiner', 4, 31, 13.40, '2024-03-05', '2024-03-19', 1, 0, 'Carrickfergus', 'UK'),
(35, 'Transport Operative', 1, 36, 13.40, '2024-03-05', '2024-03-10', 1, 1, 'Larne', 'UK'),
(36, 'Warehouse Operative', 1, 50, 11.75, '2024-03-05', '2024-03-12', 1, 1, 'Larne', 'UK'),
(37, 'Sales Assistant', 8, 50, 10.25, '2024-03-06', '2024-03-14', 1, 1, 'Belfast', 'UK'),
(38, 'Level 2 Accountant', 6, 64, 25.00, '2024-03-06', '2024-03-11', 0, 1, NULL, NULL),
(39, 'Joiner', 4, 32, 18.60, '2024-03-07', '2024-03-13', 1, 0, 'Belfast', 'UK'),
(40, 'Plumber', 4, 32, 15.00, '2024-03-07', '2024-03-19', 1, 1, 'Lisburn', 'UK'),
(41, 'Senior Planning Officer', 2, 61, 23.00, '2024-03-07', '2024-03-12', 1, 1, 'Belfast', 'UK'),
(42, 'Junior Project Manager', 5, 16, 27.00, '2024-03-07', '2024-03-13', 1, 1, 'Belfast', 'UK'),
(43, 'Technical Inspector', 2, 1, 21.50, '2024-03-07', '2024-03-09', 0, 1, NULL, NULL),
(44, 'CSU Advisor', 2, 4, 24.00, '2024-03-07', '2024-03-11', 1, 1, 'Ballyclare', 'UK'),
(45, 'Handyperson', 4, 68, 18.70, '2024-03-07', '2024-03-12', 1, 0, 'Carryduff', 'UK'),
(46, 'Project Manager', 5, 38, 24.00, '2024-03-08', '2024-03-13', 1, 1, 'Belfast', 'UK'),
(47, 'Labourer', 4, 43, 23.50, '2024-03-08', '2024-03-14', 1, 0, 'Ballyclare', 'UK'),
(48, 'Band 3 Secretary', 2, 28, 31.00, '2024-03-08', '2024-03-15', 0, 1, NULL, NULL),
(49, 'Warehouse Operative', 1, 20, 19.75, '2024-03-08', '2024-03-13', 1, 1, 'Lisburn', 'UK'),
(50, 'Plasterer', 4, 33, 15.00, '2024-03-08', '2024-03-16', 1, 0, 'Carrickfergus', 'UK'),
(51, 'Mechanic', 4, 7, 18.40, '2024-03-08', '2024-03-10', 1, 1, 'Larne', 'UK'),
(52, 'HR Business Partner', 2, 44, 22.00, '2024-03-08', '2024-03-11', 0, 1, NULL, NULL),
(53, 'IMS Consultant', 2, 57, 23.00, '2024-03-08', '2024-03-14', 1, 0, 'Newtownabbey', 'UK'),
(54, 'Payroll Specialist', 6, 63, 18.50, '2024-03-08', '2024-03-14', 1, 1, 'Coleraine', 'UK'),
(55, 'Accounts Technician', 6, 63, 23.25, '2024-03-08', '2024-03-15', 1, 1, 'Belfast', 'UK'),
(56, 'Clerical Officer', 2, 18, 19.90, '2024-03-09', '2024-03-14', 1, 1, 'Belfast', 'UK'),
(57, 'Plasterer', 4, 22, 17.50, '2024-03-09', '2024-03-20', 1, 0, 'Belfast', 'UK');

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobs_closing_this_week`
-- (See below for the actual view)
--
CREATE TABLE `jobs_closing_this_week` (
`job_id` int(11)
,`job_title` varchar(50)
,`sector_title` varchar(50)
,`company_name` varchar(50)
,`email_address` varchar(50)
,`hourly_salary` decimal(5,2)
,`on_site` tinyint(1)
,`city` varchar(50)
,`country` varchar(50)
,`date_posted` date
,`application_deadline` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobs_in_trades`
-- (See below for the actual view)
--
CREATE TABLE `jobs_in_trades` (
`job_id` int(11)
,`job_title` varchar(50)
,`sector_title` varchar(50)
,`company_name` varchar(50)
,`email_address` varchar(50)
,`hourly_salary` decimal(5,2)
,`on_site` tinyint(1)
,`city` varchar(50)
,`country` varchar(50)
,`date_posted` date
,`application_deadline` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `job_applications`
-- (See below for the actual view)
--
CREATE TABLE `job_applications` (
`job_seeker_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`email_address` varchar(50)
,`phone_num` varchar(15)
,`certificates_in` mediumtext
,`date_submitted` date
,`status` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `job_seeker_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `email_address` varchar(50) NOT NULL,
  `address_line` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `min_hourly_salary` decimal(5,2) DEFAULT 0.00,
  `full_time` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`job_seeker_id`, `first_name`, `last_name`, `DOB`, `phone_num`, `email_address`, `address_line`, `city`, `country`, `postcode`, `min_hourly_salary`, `full_time`) VALUES
(1, 'Calum', 'Fitzpatrick', '2004-07-26', '07586726523', 'cfitzpatrick79@gmail.com', '30 Egg Fields', 'Belfast', 'UK', 'BT12 6YD', 9.50, 1),
(2, 'Jason', 'Currie', '2005-03-16', '07562349876', 'jcurrie854@gmail.com', '28 Ice Lane', 'Lisburn', 'UK', 'BT37 8PD', 9.50, 0),
(3, 'Hannah', 'Dennis', '2005-06-30', '07865357281', 'hdennis206@gmail.com', '31B Baker Street', 'Belfast', 'UK', 'BT2 3LZ', 9.50, 1),
(4, 'Ewan', 'Gracey', '2004-07-21', NULL, 'egracey538@gmail.com', '3 Loughview Road', 'Belfast', 'UK', 'BT7 5TH', 9.50, 1),
(5, 'Jess', 'Dunbar', '2005-01-15', '07877123897', 'jdunbar92@gmail.com', '5 Loughview Road', 'Belfast', 'UK', 'BT10 4JK', 17.25, 1),
(6, 'Elena', 'Eickhoff-Fernandez', '2004-05-12', '07467865289', 'eeickhofffernandez366@gmail.com', '64 Zoo Lane', 'Belfast', 'UK', 'BT9 9RE', 23.50, 0),
(7, 'Jonathan', 'Irwin', '2004-04-23', NULL, 'jirwin301@gmail.com', '15 Marble Avenue', 'Portadown', 'UK', 'BT23 7FL', NULL, 1),
(8, 'Matthew', 'Elkin', '2005-05-14', '07987829861', 'melkin70@gmail.com', '6 Yolk Road', 'Portaferry', 'UK', 'BT15 0YU', 11.75, 0),
(9, 'Adam', 'Ferris', '2004-09-07', NULL, 'aferris675@gmail.com', '8 Wheelhouse Fields', 'Belfast', 'UK', 'BT1 6YS', 9.50, 1),
(10, 'Luke', 'Hamilton', '2002-04-05', NULL, 'lhamilton786@outlook.co.uk', '34A Grass Lane', 'Carrickfergus', 'UK', 'BT33 7BN', 13.00, 1),
(11, 'Kai', 'Claydon', '1996-11-23', '07563712376', 'kclaydon1@gmail.com', '9 Muffin Street', 'Carrickfergus', 'UK', 'BT32 2JI', 12.25, 1),
(12, 'Ollie', 'Oregan', '1989-04-08', '07865273781', 'ooregan103@gmail.com', '78 Soup Road', 'Whitehead', 'UK', 'BT37 5VC', NULL, 1),
(13, 'Saif', 'Khan', '1983-03-31', '07455671982', 'skhan825@gmail.com', '12 Apple Lane', 'Portrush', 'UK', 'BT25 1WA', 9.50, 1),
(14, 'Stephen', 'Glass', '1993-12-07', '07536748617', 'sglass77@gmail.com', '36 Lasagna Crescent', 'Belfast', 'UK', 'BT9 5ZG', 15.00, 0),
(15, 'Ewan', 'Fitzpatrick', '2001-01-13', '07978812976', 'efitzpatrick186@gmail.com', '72 Chilli-Pepper Drive', 'Belfast', 'UK', 'BT9 4KP', 14.50, 1),
(16, 'Devonne', 'Fitzpatrick', '1995-12-15', '07564768391', 'dfitzpatrick732@outlook.co.uk', '5 Carbonara Avenue', 'Ballyclare', 'UK', 'BT17 3TH', 10.25, 0),
(17, 'Matthew', 'Smith', '2004-12-18', '07486739102', 'msmith517@gmail.com', '9 Crisps Street', 'Whiteabbey', 'UK', 'BT20 6AD', 14.35, 0),
(18, 'John', 'Arch', '2002-04-05', '07257837172', 'jarch972@gmail.com', '23C Pizza Town', 'Lisburn', 'UK', 'BT38 2KU', 12.75, 1),
(19, 'Patrick', 'Star', '1983-04-16', '07486793972', 'pstar40@gmail.com', '67 Noodle Road', 'Larne', 'UK', 'BT36 1FX', 9.50, 1),
(20, 'Matthew', 'Reed', '1992-04-25', '07567823810', 'mreed692@gmail.com', '98 Croissant Crescent', 'Belfast', 'UK', 'BT6 9PW', 9.50, 1),
(21, 'James', 'Rea', '1992-05-11', '07366478192', 'jrea236@outlook.co.uk', '1 Stirfry Lane', 'Ballyclare', 'UK', 'BT17 5GR', 19.50, 1),
(22, 'Joshua', 'McCreedy', '2001-04-18', '07456738919', 'jmccreedy720@gmail.com', '56 Drumstick Fields', 'Belfast', 'UK', 'BT38 5YP', 9.50, 0),
(23, 'Freya', 'Fitzpatrick', '1995-11-29', '07678291293', 'ffitzpatrick246@gmail.com', '5 Roast Potato Road', 'Bangor', 'UK', 'BT41 3HY', 13.00, 0),
(24, 'Lee', 'Walker', '1990-12-07', '07897271829', 'lwalker37@gmail.com', '8D Carrot Street', 'Newry', 'UK', 'BT42 7XE', NULL, 1),
(25, 'James', 'Nicholl', '2003-09-02', NULL, 'jnicholl809@gmail.com', '7 Basil Lane', 'Derry', 'UK', 'BT29 5LY', 16.25, 1),
(26, 'LJ', 'Barit', '1998-09-21', NULL, 'ljbarit248@gmail.com', '82 Mackerel Street', 'Coleraine', 'UK', 'BT24 3ME', 17.00, 1),
(27, 'Simon', 'Moore', '1994-03-06', '07511757081', 'smoore149@gmail.com', '32 Pickle Corner', 'Belfast', 'UK', 'BT3 6GD', 13.50, 1),
(28, 'Daniel', 'Fisher', '2000-03-15', NULL, 'dfisher992@gmail.com', '22 Mutton Avenue', 'Belfast', 'UK', 'BT3 8RZ', 14.00, 1),
(29, 'Riley', 'Price', '1991-12-26', '07176389021', 'rprice981@gmail.com', '2 Chocolate Road', 'Ballymena', 'UK', 'BT18 9ZJ', 9.50, 0),
(30, 'Gemma', 'Glover', '1996-08-08', '07678192033', 'gglover2@gmail.com', '34 Skittle Drive', 'Derry', 'UK', 'BT29 5LY', 12.65, 1),
(31, 'Callum', 'Climb', '1999-05-19', '07987729313', 'cclimb842@gmail.com', '65 Grape Corner', 'Belfast', 'UK', 'BT5 7HR', 13.50, 1),
(32, 'Oliver', 'Tree', '2004-01-22', '07512930812', 'otree556@gmail.com', '23e Olive Avenue', 'Ballymoney', 'UK', 'BT22 2HF', 9.50, 1),
(33, 'Taylor', 'Swift', '1993-07-10', NULL, 'tswift578@gmail.com', '14 Cherry Lane', 'Belfast', 'UK', 'BT7 8QN', 9.75, 1),
(34, 'Richard', 'Clarke', '1997-04-30', NULL, 'rclarke729@gmail.com', '37 Peanut Avenue', 'Belfast', 'UK', 'BT6 8JM', 9.50, 1),
(35, 'Luke', 'Thompson', '2002-11-11', NULL, 'lthompson863@gmail.com', '28 Kiwi Street', 'Downpatrick', 'UK', 'BT13 4FW', 10.25, 0),
(36, 'Hannah', 'Reed', '1995-07-24', '07611757092', 'hreed854@gmail.com', '19 Sushi Way', 'Downpatrick', 'UK', 'BT13 5WK', 13.65, 0),
(37, 'Ewan', 'Pound', '1990-02-14', '07466712020', 'epound714@outlook.co.uk', '53 Fish Corner', 'Carrickfergus', 'UK', 'BT32 0GQ', NULL, 0),
(38, 'Harvey', 'Coin', '1996-09-04', '07911087263', 'hcoin234@gmail.com', '9 Donut Drive', 'Craigavon', 'UK', 'BT14 3LY', NULL, 1),
(39, 'Mike', 'Watt', '2001-06-17', '07100982732', 'mwatt137@gmail.com', '64 Hazelnut Crescent', 'Belfast', 'UK', 'BT5 4XT', 14.25, 0),
(40, 'Stephen', 'McCleod', '1992-10-03', '07713082539', 'smccleod632@gmail.com', '22 Lobster Lane', 'Newcastle', 'UK', 'BT39 6UJ', 10.20, 1),
(41, 'Andrew', 'Webb', '1998-03-12', NULL, 'awebb91@gmail.com', '48 Pineapple Road', 'Lisburn', 'UK', 'BT38 6CK', 9.50, 0),
(42, 'Phillip', 'Mann', '1994-08-27', '07511726793', 'pmann546@gmail.com', '35 Pomegranate Lane', 'Moira', 'UK', 'BT38 1AB', 9.50, 1),
(43, 'Edward', 'Sheeran', '1990-08-05', '07298638189', 'esheeran359@gmail.com', '26 Tofu Street', 'Portadown', 'UK', 'BT23 7BG', 9.80, 1),
(44, 'Adam', 'Lavery', '1997-11-01', '07233497182', 'alavery235@gmail.com', '17 Cucumber Crescent', 'Belfast', 'UK', 'BT6 4FL', 17.00, 1),
(45, 'Adam', 'Hamilton', '2000-10-20', '07982939100', 'ahamilton239@gmail.com', '31 Oatmeal Avenue', 'Belfast', 'UK', 'BT8 5ZD', NULL, 1),
(46, 'Kyle', 'Leighton', '1993-02-04', '07456617821', 'kleighton842@gmail.com', '44 Cabbage Drive', 'Derry', 'UK', 'BT29 5FO', 23.00, 0),
(47, 'Patrick', 'Gardner', '1990-11-23', '07812290387', 'pgardner4@gmail.com', '58 Chestnut Lane', 'Newry', 'UK', 'BT42 5JD', 17.40, 1),
(48, 'Isaac', 'Field', '1996-06-07', '07789230911', 'ifield692@gmail.com', '21 Cranberry Road', 'Belfast', 'UK', 'BT4 2HB', 18.50, 0),
(49, 'Spencer', 'McWebb', '2002-02-18', '07238974918', 'smcwebb892@gmail.com', '39 Orange Street', 'Belfast', 'UK', 'BT6 5UZ', 21.00, 0),
(50, 'Ella', 'Henderson', '1994-09-30', '07822930183', 'ehenderson21@gmail.com', '45 Lettuce Lane', 'Larne', 'UK', 'BT36 8LF', 9.50, 0),
(51, 'Brian', 'Griffin', '1998-06-12', '07387231129', 'bgriffin431@outlook.co.uk', '27 Walnut Way', 'Whitehead', 'UK', 'BT37 6QW', 19.25, 1),
(52, 'Joshua', 'Terry', '1991-03-25', NULL, 'jterry935@gmail.com', '36 Oatmeal Lane', 'Portaferry', 'UK', 'BT15 7IT', 17.50, 0),
(53, 'Lily', 'Pond', '2003-08-12', NULL, 'lpond874@gmail.com', '49 Yogurt Road', 'Belfast', 'UK', 'BT2 2VN', NULL, 1),
(54, 'Luca', 'Pond', '1997-08-13', '07611762839', 'lpond30@gmail.com', '13 Radicchio Avenue', 'Carrickfergus', 'UK', 'BT32 4DL', 23.50, 0),
(55, 'Jack', 'Stalk', '1992-05-26', '07432298123', 'jstalk951@gmail.com', '57 Lentil Lane', 'Newtownabbey', 'UK', 'BT20 6BG', 22.25, 0),
(56, 'Theo', 'McKnight', '1999-01-29', '07129830012', 'tmcknight283@gmail.com', '24 Plum Corner', 'Greenisland', 'UK', 'BT21 6QR', 18.65, 1),
(57, 'Madeline', 'Mace', '2002-10-10', '07912098397', 'mmace530@gmail.com', '38 Dragonfruit Drive', 'Belfast', 'UK', 'BT4 2HB', 10.50, 0),
(58, 'Lily', 'Richardson', '1995-04-23', '07829390181', 'lrichardson901@outlook.co.uk', '16 Beetroot Street', 'Belfast', 'UK', 'BT3 5FD', 16.85, 0),
(59, 'Grace', 'Poe', '1991-05-11', '07673947122', 'gpoe438@gmail.com', '51 Lemon Avenue', 'Greenisland', 'UK', 'BT21 7KB', 17.50, 1),
(60, 'Noah', 'Horowitz', '1998-07-18', '07645537628', 'nhorowitz671@gmail.com', '29 Couscous Road', 'Belfast', 'UK', 'BT6 5HS', 9.50, 1),
(61, 'John', 'Todd', '1996-01-02', '07937784718', 'jtodd195@gmail.com', '42 Saffron Way', 'Newtownabbey', 'UK', 'BT20 3KX', 12.20, 1),
(62, 'Freya', 'Sato', '2001-09-14', '07283718372', 'fsato6@gmail.com', '23 Curry Terrace', 'Craigavon', 'UK', 'BT14 2HV', 20.30, 1),
(63, 'George', 'Clue', '1993-06-27', '07787283712', 'gclue891@gmail.com', 'Kiwi Towers 3A', 'Newtownabbey', 'UK', 'BT20 2RF', 21.70, 1),
(64, 'Olivia', 'Rodrigio', '1990-03-20', '07526378182', 'orodrigio758@gmail.com', '54 Raisin Road', 'Belfast', 'UK', 'BT5 8DB', 15.00, 0),
(65, 'Jack', 'Reacher', '1997-02-12', '07384918228', 'jreacher948@outlook.co.uk', '52 Mango Avenue', 'Portrush', 'UK', 'BT25 8VO', 23.00, 0),
(66, 'Simon', 'Best', '2000-05-08', '07183972322', 'sbest461@gmail.com', '15 Blueberry Lane', 'Belfast', 'UK', 'BT2 7TA', 9.50, 1),
(67, 'David', 'Greeves', '1994-05-15', NULL, 'dgreeves734@gmail.com', '33 Pineapple Street', 'Coleraine', 'UK', 'BT24 6NG', 9.50, 1),
(68, 'Tori', 'Montgomery', '1991-01-18', '07239748123', 'tmontgomery79@gmail.com', '46 Chip Drive', 'Carrickfergus', 'UK', 'BT32 9SQ', 22.00, 1),
(69, 'Heather', 'Graham', '1996-10-31', '07898394102', 'hgraham129@gmail.com', '18 Fry Drive', 'Belfast', 'UK', 'BT4 8JX', NULL, 1),
(70, 'Cierra', 'Acorn', '2002-04-13', '07909384712', 'cacorn315@outlook.co.uk', '25 Bread Lane', 'Portadown', 'UK', 'BT23 5AU', 12.30, 0),
(71, 'Matthew', 'McComb', '2003-12-07', '07678293125', 'mmccomb268@gmail.com', '41 Raspberry Road', 'Belfast', 'UK', 'BT3 8DM', 9.50, 0),
(72, 'Jason', 'Dome', '2000-10-20', NULL, 'jdome849@gmail.com', '59 Spinach Lane', 'Belfast', 'UK', 'BT4 0IS', 24.50, 1),
(73, 'Jessica', 'Statham', '1997-11-01', '07346471092', 'jstatham82@gmail.com', '12 Radish Lane', 'Belfast', 'UK', 'BT1 5RJ', 9.50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `sector_id` int(11) NOT NULL,
  `sector_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_title`) VALUES
(2, 'Administrative'),
(6, 'Finance'),
(7, 'IT'),
(5, 'Project Management'),
(3, 'Recruitment'),
(8, 'Retail'),
(4, 'Trades'),
(1, 'Warehousing');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sector_statistics`
-- (See below for the actual view)
--
CREATE TABLE `sector_statistics` (
`sector_title` varchar(50)
,`average_salary` decimal(6,2)
,`applications_made` bigint(21)
,`number_of_jobs` bigint(21)
,`applications_per_job` decimal(23,2)
);

-- --------------------------------------------------------

--
-- Structure for view `jobs_closing_this_week`
--
DROP TABLE IF EXISTS `jobs_closing_this_week`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cfitzpatrick126`@`localhost` SQL SECURITY DEFINER VIEW `jobs_closing_this_week`  AS SELECT `job`.`job_id` AS `job_id`, `job`.`job_title` AS `job_title`, `sector`.`sector_title` AS `sector_title`, `employer`.`company_name` AS `company_name`, `employer`.`email_address` AS `email_address`, `job`.`hourly_salary` AS `hourly_salary`, `job`.`on_site` AS `on_site`, `job`.`city` AS `city`, `job`.`country` AS `country`, `job`.`date_posted` AS `date_posted`, `job`.`application_deadline` AS `application_deadline` FROM ((`job` join `employer` on(`employer`.`employer_id` = `job`.`employer_id`)) join `sector` on(`sector`.`sector_id` = `job`.`sector_id`)) WHERE `job`.`application_deadline` between curdate() and curdate() + 7 ORDER BY `job`.`application_deadline` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `jobs_in_trades`
--
DROP TABLE IF EXISTS `jobs_in_trades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cfitzpatrick126`@`localhost` SQL SECURITY DEFINER VIEW `jobs_in_trades`  AS SELECT `job`.`job_id` AS `job_id`, `job`.`job_title` AS `job_title`, `sector`.`sector_title` AS `sector_title`, `employer`.`company_name` AS `company_name`, `employer`.`email_address` AS `email_address`, `job`.`hourly_salary` AS `hourly_salary`, `job`.`on_site` AS `on_site`, `job`.`city` AS `city`, `job`.`country` AS `country`, `job`.`date_posted` AS `date_posted`, `job`.`application_deadline` AS `application_deadline` FROM ((`job` join `employer` on(`employer`.`employer_id` = `job`.`employer_id`)) join `sector` on(`sector`.`sector_id` = `job`.`sector_id`)) WHERE `job`.`hourly_salary` >= '12' AND `job`.`full_time` = 1 AND `job`.`sector_id` = '4' AND `job`.`application_deadline` >= curdate() ORDER BY `job`.`job_id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `job_applications`
--
DROP TABLE IF EXISTS `job_applications`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cfitzpatrick126`@`localhost` SQL SECURITY DEFINER VIEW `job_applications`  AS SELECT `job_seeker`.`job_seeker_id` AS `job_seeker_id`, `job_seeker`.`first_name` AS `first_name`, `job_seeker`.`last_name` AS `last_name`, `job_seeker`.`email_address` AS `email_address`, `job_seeker`.`phone_num` AS `phone_num`, group_concat(`certificate`.`qualification_title` separator ',') AS `certificates_in`, `application`.`date_submitted` AS `date_submitted`, `application_status`.`status` AS `status` FROM (((`application` join `job_seeker` on(`job_seeker`.`job_seeker_id` = `application`.`job_seeker_id`)) left join `application_status` on(`application_status`.`application_status_id` = `application`.`application_status_id`)) left join `certificate` on(`certificate`.`job_seeker_id` = `application`.`job_seeker_id`)) WHERE `application`.`job_id` = '56' GROUP BY `job_seeker`.`job_seeker_id` ORDER BY `job_seeker`.`job_seeker_id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `sector_statistics`
--
DROP TABLE IF EXISTS `sector_statistics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cfitzpatrick126`@`localhost` SQL SECURITY DEFINER VIEW `sector_statistics`  AS SELECT `sector`.`sector_title` AS `sector_title`, round(avg(`job`.`hourly_salary`),2) AS `average_salary`, count(`application`.`job_id`) AS `applications_made`, count(0) AS `number_of_jobs`, if(count(0) = 0,0,round(count(`application`.`job_id`) / count(`job`.`sector_id`),2)) AS `applications_per_job` FROM ((`job` join `sector` on(`sector`.`sector_id` = `job`.`sector_id`)) left join `application` on(`application`.`job_id` = `job`.`job_id`)) GROUP BY `sector`.`sector_title` ORDER BY round(avg(`job`.`hourly_salary`),2) DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`job_seeker_id`,`job_id`),
  ADD KEY `date_submitted` (`date_submitted`),
  ADD KEY `fk_job_application` (`job_id`),
  ADD KEY `fk_application_status` (`application_status_id`);

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`application_status_id`),
  ADD UNIQUE KEY `status` (`status`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`job_seeker_id`,`qualification_title`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employer_id`),
  ADD UNIQUE KEY `email_address` (`email_address`),
  ADD KEY `company_name` (`company_name`),
  ADD KEY `email_address_2` (`email_address`),
  ADD KEY `city` (`city`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_title` (`job_title`),
  ADD KEY `city` (`city`),
  ADD KEY `fk_sector_job` (`sector_id`),
  ADD KEY `fk_employer_job` (`employer_id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`job_seeker_id`),
  ADD UNIQUE KEY `email_address` (`email_address`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `email_address_2` (`email_address`),
  ADD KEY `city` (`city`),
  ADD KEY `postcode` (`postcode`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sector_id`),
  ADD UNIQUE KEY `sector_title` (`sector_title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_status`
--
ALTER TABLE `application_status`
  MODIFY `application_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `job_seeker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_application_status` FOREIGN KEY (`application_status_id`) REFERENCES `application_status` (`application_status_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_job_application` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_seeker_application` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `fk_seeker_qualification` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `fk_employer_job` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sector_job` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
