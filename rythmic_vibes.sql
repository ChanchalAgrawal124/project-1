-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2022 at 04:43 AM
-- Server version: 5.7.38-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rythmic_vibes`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_form`
--

CREATE TABLE `enquiry_form` (
  `id` int(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` bigint(15) NOT NULL,
  `customer_message` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_form`
--

INSERT INTO `enquiry_form` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_message`) VALUES
(2, '', 'testing@gmail.com', 7678987678, 'Testing'),
(4, '', 'testing2@gmail.com', 7898978789, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(50) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_mobile` bigint(15) NOT NULL,
  `admin_zipcode` varchar(15) NOT NULL,
  `admin_city` varchar(50) NOT NULL,
  `admin_state` varchar(50) NOT NULL,
  `admin_country` varchar(50) NOT NULL,
  `admin_dob` varchar(15) NOT NULL,
  `short_description` varchar(50000) NOT NULL,
  `admin_address` varchar(255) NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `profile_image`, `admin_email`, `admin_password`, `admin_name`, `admin_mobile`, `admin_zipcode`, `admin_city`, `admin_state`, `admin_country`, `admin_dob`, `short_description`, `admin_address`, `join_date`) VALUES
(1, '9.png', 'testing@gmail.com', 'tes#$45inG', 'testing', 7654785678, '302019', 'Jaipur', 'Rajasthan', 'India', '20-4-2021', 'Testing', 'Ram NAgar, Sodala, Jaipur, Rajasthan', '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(50) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` bigint(15) NOT NULL,
  `customer_subject` varchar(500) NOT NULL,
  `customer_message` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_subject`, `customer_message`) VALUES
(1, 'testing', 'testing@gmail.com', 7678987678, 'Testing', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(255) NOT NULL,
  `upload_date` date NOT NULL,
  `image1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `upload_date`, `image1`) VALUES
(1, '2022-07-15', '1.jpg'),
(2, '2022-07-15', '2.jpg'),
(3, '2022-07-15', '3.jpg'),
(4, '2022-07-15', '4.jpg'),
(8, '2022-07-15', '7.jpg'),
(9, '2022-07-15', '9.jpg'),
(10, '2022-07-15', '10.jpg'),
(11, '2022-07-15', '11.jpg'),
(12, '2022-07-15', '12.jpg'),
(13, '2022-07-15', '13.jpg'),
(14, '2022-07-15', '14.jpg'),
(15, '2022-07-15', '15.jpg'),
(16, '2022-07-15', '16.jpg'),
(17, '2022-07-15', '17.jpg'),
(18, '2022-07-15', '18.jpg'),
(19, '2022-07-15', '19.jpg'),
(20, '2022-07-15', '20.jpg'),
(21, '2022-07-15', '21.jpg'),
(23, '2022-07-15', '23.jpg'),
(25, '2022-07-15', '26.jpg'),
(26, '2022-07-15', '27.jpg'),
(27, '2022-07-15', '28.jpg'),
(29, '2022-07-15', '30.jpg'),
(32, '2022-07-15', '33.jpg'),
(35, '2018-07-08', 'kisangarh-branch-of-CIRC.jpg'),
(36, '2018-07-08', 'ICRC.jpg'),
(37, '2018-05-16', 'img10123.jpg'),
(38, '2018-05-16', 'Kumawat-panchayat-bhawan-16.may-2018.jpg'),
(39, '2018-05-16', 'kumawat-panchayat-bhawan.jpg'),
(40, '2018-05-23', 'img234567-23-may-2018.jpg'),
(41, '2019-07-25', 'img-90456-90-25-july-2019.jpg'),
(42, '2018-02-22', 'img-4567-234-feb-22-2018.jpg'),
(43, '2018-02-28', 'img-school-4567-feb-28-2018.jpg'),
(44, '2020-01-28', 'smaroh - 42980-jan.28.2020.jpg'),
(45, '2020-01-28', 'independence-day-1-jan-28.2020.jpg'),
(46, '2020-01-28', 'independence-day-2jan-28-2020.jpg'),
(47, '2020-01-28', 'independence-day-3-january-28-2020.jpg'),
(48, '2017-09-24', 'img-230985-sep-24-2017.jpg'),
(49, '2017-11-29', 'img-2222-nov-29-2017.jpg'),
(50, '2018-11-14', 'img-345678222-nov-14-2018.jpg'),
(51, '2018-03-08', 'img-99999-mar-8-2018.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `id` int(255) NOT NULL,
  `course_name` varchar(150) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` bigint(15) NOT NULL,
  `customer_age` varchar(15) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_state` varchar(50) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`id`, `course_name`, `customer_name`, `customer_email`, `customer_phone`, `customer_age`, `customer_city`, `customer_state`, `customer_country`, `customer_address`) VALUES
(19234, 'Power of money vibrations', 'testing', 'testing@gmail.com', 7645645457, '', '', '', '', ''),
(21223, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(22456, 'Self Love Course', 'Darshi Modi ', 'darshi1390@gmail.com', 9726388830, '32', '', '', '', 'Indiranagar  Bangalore '),
(31870, 'Life changing habits to live a perfect and happy life', 'Alka karwa', 'alkakarwa072@gmail.com', 9079004651, '49', '', '', '', 'Ram Geetam\r\nD61/A2, Sawai madho singh circle banipark Jaipur '),
(35197, '', 'Mahima', 'mahimaverma236@gmail.com', 9034584395, '', '', '', '', ''),
(35275, 'Speaking English Course', 'Bavleen Kaur', 'avtarsingh.sidhu1@gmail.com', 9582210557, '11', '', '', '', 'WZ-65 A,Guru Nanak Nagar,\r\nStreet No-02, Tilak Nagar, New Delhi - 110018 '),
(47311, 'Life changing habits to live a perfect and happy life', 'Alka karwa', 'alkakarwa072@gmail.com', 9079004651, '49', '', '', '', 'Ram Geetam\r\nD61/A2, Sawai madho singh circle banipark Jaipur '),
(47981, 'Power of money vibrations', 'testing1', 'testing1@gmail.com', 7898978789, '67', '', '', '', '.'),
(48737, 'Self Love Course', 'Saransh', 'saransh@gmail.com', 7678978789, '67', 'Jaipur', 'Rajasthan', 'India', 'sodala'),
(52389, 'Power of money vibrations', 'Honey Narayan', 'honeysharma1211@gmail.com', 9649649998, '', '', '', '', ''),
(62600, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(68211, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(71282, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(73427, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(92124, 'Power of money vibrations', 'Shubham Sharma', 'shubham@gmail.com', 8907867678, '24', '', '', '', 'Hello'),
(92377, 'Power of money vibrations', 'testing', 'testing@gmail.com', 4567, '24', '', '', '', 'Testing'),
(93713, 'Self Love Course', 'Pawan sharma', 'pawan@testing.com', 5236258008, '77', '', '', '', 'Heloo'),
(98214, 'Power of money vibrations', 'testing', 'testing@gmail.com', 4567, '24', '', '', '', 'hello');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry_form`
--
ALTER TABLE `enquiry_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`customer_email`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`admin_email`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`customer_email`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry_form`
--
ALTER TABLE `enquiry_form`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
