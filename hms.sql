-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 11:35 AM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Karthi@19', '26-01-2024 08:41:10 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 46, 9, 400, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2024-03-15 06:03:54'),
(2, 'ENT', 46, 8, 400, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, '2024-03-15 06:04:02'),
(3, 'Dental Care', 45, 8, 350, '2024-01-26', '8:30 AM', '2024-01-26 02:56:17', 1, 1, '2024-03-15 06:04:06'),
(4, 'Cardiologists', 47, 8, 600, '2024-02-29', '11:00 AM', '2024-02-27 17:29:49', 1, 1, '2024-03-15 08:43:09'),
(5, 'Cardiologists', 38, 9, 600, '2024-02-29', '12:30 PM', '2024-02-28 06:59:13', 1, 1, '2024-03-15 08:43:16'),
(6, 'Neurologists', 44, 8, 500, '2024-03-09', '9:30 AM', '2024-03-07 15:55:21', 1, 1, '2024-03-15 06:03:28'),
(7, 'Anesthesiologists', 37, 11, 150, '2024-03-29', '12:15 PM', '2024-03-15 06:43:42', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `spno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`, `spno`) VALUES
(36, 'Allergists/Immunologists', 'Priya Kapoor', '123, Serene Avenue Mumbai, Maharashtra, 400001', '250', 2109876543, 'priya@123gmail.com', 'cfb077657c9b746245f0e9106c0f7660', '2024-03-07 06:14:26', '2024-03-15 05:54:47', 18),
(37, 'Anesthesiologists', 'Rahul Sharma ', '456, Sunshine Street Delhi, Delhi, 110001', '150', 3210987654, 'rahul123@gmail.com', '14f1f0b13ca450d7da0b5bd6b39deba9', '2024-03-07 06:17:33', '2024-03-15 05:54:55', 19),
(38, 'Cardiologists', 'Anika Desai ', '789, Harmony Road Bangalore, Karnataka, 560001\r\n', '300', 4321098765, 'anika123@gmail.com', '77e814d39b317a2a3dd624f1a0506ba4', '2024-03-07 06:19:05', '2024-03-15 05:54:59', 20),
(39, 'Critical Care Medicine Specialists', 'Veer Singh ', '555, Sunflower Street Kochi, Kerala, 682001\r\n', '250', 5432109876, 'veer123@gmail.com', '2a5ad13089aa66f954cffd0a144ce0cb', '2024-03-07 06:20:41', '2024-03-15 05:55:04', 21),
(40, 'Dermatologists', 'Diya Mehta ', '444, Vitality Road Agra, Uttar Pradesh, 282001', '450', 6543210987, 'diya123@gmail.com', 'ce416f1b878c121c8fb545dba072ddc7', '2024-03-07 14:59:52', '2024-03-15 05:55:09', 22),
(41, 'Endocrinologists', 'Arjun Patel', '123, Radiance Avenue Nagpur, Maharashtra, 440001\r\n', '300', 7654321098, 'arjun123@gmail.com', '5c36316bd35b3c624d206245daf36d18', '2024-03-07 15:04:59', '2024-03-15 05:55:22', 23),
(42, 'Family Physicians', 'Maya Joshi ', '333, Harmony Lane Ludhiana, Punjab, 141001\r\n', '250', 9876543210, 'maya123@gmail.com', 'bba88c9d23e0456f88ff263a20df8c41', '2024-03-07 15:07:59', '2024-03-15 05:55:29', 24),
(43, 'Nephrologists', 'Mohsin Khan ', '999, Peaceful Road Kanpur, Uttar Pradesh, 208001\r\n', '300', 1023456789, 'mohsin123@gmail.com', '87b6310bd338f963092fa33b52f987f8', '2024-03-07 15:10:46', '2024-03-15 05:55:32', 25),
(44, 'Neurologists', 'Nisha Gupta', '555, Calm Street Jaipur, Rajasthan, 302001\r\n', '450', 7890123456, 'nisha123@gmail.com', 'df11d4d46183d5d2b2668319de0d4d42', '2024-03-07 15:13:37', '2024-03-15 05:55:36', 26),
(45, 'Dental Care', 'Kiran Raj ', '101, Glow Road Visakhapatnam, Andhra Pradesh, 530001\r\n', '400', 8901234567, 'kiran123@gmail.com', 'd65575f948e5a37162ceb1f737abf52f', '2024-03-07 15:16:40', '2024-03-15 05:55:39', 27),
(46, 'ENT', 'Ishaan Malhotra', '456, Eternal Street Indore, Madhya Pradesh, 452001\r\n', '350', 6789012345, 'ishaan123@gmail.com', '780c1f2715c854bd9ae124ad29493159', '2024-03-07 15:18:51', '2024-03-15 05:55:42', 28),
(47, 'Cardiologists', 'Anjali Das ', '888, Comfort Street Lucknow, Uttar Pradesh, 226001\r\n', '450', 2345678901, 'anjali123@gmail.com', '079f4b2c8c7ca01ad7e255e0b956ec55', '2024-03-07 15:20:21', '2024-03-15 05:55:50', 20),
(48, 'Critical Care Medicine Specialists', 'Kavya Iyer ', '333, Faith Street Hyderabad, Telangana, 500001\r\n', '150', 9012345678, 'kavya123@gmail.com', 'c2bdf70ba750d80337ac04f3d8dd94b2', '2024-03-07 15:22:40', '2024-03-15 05:55:53', 21),
(49, 'Dermatologists', 'Nikhil Bharadwaj ', '777, Love Lane Ahmedabad, Gujarat, 380001\r\n', '450', 4567890123, 'nikhil123@gmail.com', 'd1151d8d3d4f9f986a28d779799e5b61', '2024-03-07 15:24:47', '2024-03-15 05:56:01', 22),
(50, 'Endocrinologists', 'Riya Bose ', '789, Life Lane Surat, Gujarat, 395001\r\n', '300', 4567890123, 'riya123@gmail.com', '0c95957f0dec1972e330224b29cf4320', '2024-03-07 15:26:34', '2024-03-15 05:56:05', 23);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(35, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-07 15:45:11', '07-03-2024 09:23:31 PM', 1),
(36, 36, 'priya@123gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 04:39:09', NULL, 0),
(37, 36, 'priya@123gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 04:39:41', '14-03-2024 10:16:28 AM', 1),
(38, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 16:27:00', '14-03-2024 09:58:18 PM', 1),
(39, NULL, 'adithi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 06:41:16', NULL, 0),
(40, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 06:41:39', '15-03-2024 12:12:09 PM', 1),
(41, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 06:44:26', '15-03-2024 12:14:46 PM', 1),
(42, 37, 'rahul123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 06:45:34', NULL, 1),
(43, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 08:40:05', '15-03-2024 02:10:39 PM', 1),
(44, 45, 'kiran123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 09:02:54', '15-03-2024 02:33:33 PM', 1),
(45, NULL, 'adithi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-21 14:03:35', NULL, 0),
(46, NULL, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-21 14:03:56', NULL, 0),
(47, 39, 'veer123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-21 14:04:42', NULL, 1),
(48, 39, 'veer123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-21 16:47:57', '21-03-2024 10:18:39 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(18, 'Allergists/Immunologists', '2024-01-26 02:00:43', NULL),
(19, 'Anesthesiologists', '2024-01-26 02:00:52', NULL),
(20, 'Cardiologists', '2024-01-26 02:01:02', NULL),
(21, 'Critical Care Medicine Specialists', '2024-01-26 02:01:24', NULL),
(22, 'Dermatologists', '2024-01-26 02:01:33', NULL),
(23, 'Endocrinologists', '2024-01-26 02:01:47', NULL),
(24, 'Family Physicians', '2024-01-26 02:01:57', NULL),
(25, 'Nephrologists', '2024-01-26 02:02:16', NULL),
(26, 'Neurologists', '2024-01-26 02:02:33', NULL),
(27, 'Dental Care', '2024-01-26 02:03:16', NULL),
(28, 'ENT', '2024-01-26 02:03:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`, `a_id`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', 'ok', '2024-03-14 05:55:48', 1, NULL),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1, NULL),
(3, 'Adithi', 'adithi134@gmail.com', 7710049130, 'hi im testing this form', '2024-03-15 07:04:46', NULL, NULL, NULL, NULL),
(4, 'Adithi', 'adithi134@gmail.com', 7710049130, 'Hello ,\r\nI need an urgent appointment ', '2024-03-15 08:44:08', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '120/80', '120', '85', '98', 'Test', '2024-03-15 06:11:59'),
(2, 2, '110/70', '90', '40', '60', 'Normal', '2024-03-15 06:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL,
  `A_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`, `A_id`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"></li><li style=\"text-align: left;\"><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\"><b>Qure</b>, our <b>Online Doctor Appointment Booking System&nbsp;</b>is a convenient and efficient way to schedule appointments with healthcare providers. It allows you to:</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\">•<b>Search for doctors:</b> Find doctors in your area by specialty, insurance, and other criteria.</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\">•<b>View doctor availability:</b> See real-time availability and book appointments at your convenience.</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\">•<b>Schedule appointments: </b>Book appointments online 24/7, eliminating the need for phone calls or waiting on hold.</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\">•<b>Manage appointments:</b> View, reschedule, or cancel appointments easily through your online account.</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\">•<b>Receive appointment reminders: </b>Get confirmation emails and reminders to help you stay on top of your appointments.</span></font></p><p class=\"MsoNormal\"><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 13.3333px;\"><b>Qure</b> is designed to make it easier for you to access the healthcare you need, when you need it.</span></font></p><p class=\"MsoNormal\"><br></p></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL, NULL),
(2, 'contactus', 'Contact Details', 'SMVITM, Bantakal', 'maininfo@gmail.com', 9876543210, '2020-05-20 07:24:07', '9 AM to 8 PM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 45, 'Saanvi Prasad', 8765432109, 'saanvi123@gmail.com', 'female', '222, Tranquility Lane Chennai, Tamil Nadu, 600001\r\n', 35, 'Root canal', '2024-03-07 15:47:06', '2024-03-07 16:02:00'),
(2, 38, 'Ananya', 9113834620, 'ananya123@gmail.com', 'female', 'vadiraja cross road', 25, 'heart pain', '2024-03-15 05:46:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 9, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 05:59:34', NULL, 1),
(21, 11, 'saanvi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 16:29:47', NULL, 0),
(22, 9, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-14 16:30:19', '14-03-2024 10:01:06 PM', 1),
(23, 9, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 05:25:58', NULL, 0),
(24, 8, 'ananya123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 05:27:09', NULL, 0),
(25, 11, 'saanvi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 05:28:24', NULL, 0),
(26, 9, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 05:28:57', NULL, 1),
(27, 11, 'saanvi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 06:42:42', '15-03-2024 12:14:04 PM', 1),
(28, 9, 'adithi234@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 08:41:04', '15-03-2024 02:13:38 PM', 1),
(29, 11, 'saanvi123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-15 09:04:42', '15-03-2024 02:35:36 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Ananya', 'Vadhiraja Cross Road,Udupi', 'Udupi', 'female', 'ananyaacharya555@gmail.com', '58dbb946a97a72ee52f57b462b34cddb', '2024-03-07 15:54:32', NULL),
(9, 'Adithi', 'Vadhiraja Cross Road', 'Udupi', 'female', 'adithi234@gmail.com', '38ad51a884cc54b4c4ebd7d61e4776eb', '2024-03-14 05:59:05', NULL),
(11, 'Saanvi', 'Manipal', 'Udupi', 'female', 'saanvi123@gmail.com', '7165de7d50565d13cb62af508b205414', '2024-03-15 06:10:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorId` (`doctorId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spno` (`spno`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`,`specilization`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `A_id` (`A_id`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Docid` (`Docid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`spno`) REFERENCES `doctorspecilization` (`id`);

--
-- Constraints for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD CONSTRAINT `doctorslog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD CONSTRAINT `tblcontactus_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD CONSTRAINT `tblmedicalhistory_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD CONSTRAINT `tblpage_ibfk_1` FOREIGN KEY (`A_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD CONSTRAINT `tblpatient_ibfk_1` FOREIGN KEY (`Docid`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
