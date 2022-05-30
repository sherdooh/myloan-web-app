-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 07:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loan_system96`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'mayuri.infospace@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(300, 'Male'),
(301, 'Female'),
(302, 'Youth'),
(303, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `region_id`) VALUES
(1, 'Ahmednagar', 1),
(2, 'Akola', 1),
(3, 'Amravati', 1),
(4, 'Aurangabad', 1),
(5, 'Beed', 1),
(6, 'Bhandara', 1),
(7, 'Buldhana', 1),
(8, 'Chandrapur', 1),
(9, 'Dhule', 1),
(10, 'Gadchiroli', 1),
(11, 'Gondia', 1),
(12, 'Hingoli', 1),
(13, 'Jalgaon', 1),
(14, 'Jalna', 1),
(15, 'Kolhapur', 1),
(16, 'Latur', 1),
(17, 'Mumbai City', 1),
(18, 'Mumbai Suburban', 1),
(19, 'Nagpur', 1),
(20, 'Nanded', 1),
(21, 'Nandurbar', 1),
(22, 'Nashik', 1),
(23, 'Osmanabad', 1),
(24, 'Palghar', 1),
(25, 'Parbhani', 1),
(26, 'Pune', 1),
(27, 'Raigad', 1),
(28, 'Ratnagiri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `district_id`) VALUES
(1, 'Dindori', 22),
(2, 'Igatpuri', 22),
(3, 'Nashik', 22),
(4, 'Peth', 22),
(5, 'Trimbakeshwar', 22),
(6, 'Chandwad', 22);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` char(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `group_activity` varchar(50) NOT NULL,
  `group_category` varchar(50) NOT NULL,
  `group_total_members` varchar(50) NOT NULL,
  `group_leader` varchar(50) NOT NULL,
  `loan_information` text NOT NULL,
  `group_capital` varchar(100) NOT NULL,
  `group_creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `region`, `district`, `division`, `ward`, `village`, `registration_number`, `group_activity`, `group_category`, `group_total_members`, `group_leader`, `loan_information`, `group_capital`, `group_creation_date`) VALUES
(3, 'Mahila Bachat Gat Nandur', '1', '22', '3', '2', '2', 'REG-65321SA', 'Paper Bag Production', 'Group of women only', '343', 'Suman Pethkar', 'for Group Activity', '34', '2020-11-02'),
(4, 'Navjeen Bachat Gat', '1', '22', '3', '2', '2', 'REG-101', 'Activity 1', 'Group of women only', '30', 'Manisha Patil', 'Group member loan', '30', '2020-11-02'),
(5, 'Nari Shakti Bachat Gat', '1', '22', '3', '2', '2', 'REG-103', 'Activity 1', 'Group of women only', '25', 'Manasi Jagtap', 'Personal Loan', '30', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `loan_come_from` varchar(50) NOT NULL,
  `loan_amount` varchar(50) NOT NULL,
  `loan_interest` varchar(10) NOT NULL,
  `payment_term` varchar(50) NOT NULL,
  `total_payment_with_intereset` varchar(50) NOT NULL,
  `emi_per_month` varchar(50) NOT NULL,
  `payment_schedule` date NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `group_id`, `loan_come_from`, `loan_amount`, `loan_interest`, `payment_term`, `total_payment_with_intereset`, `emi_per_month`, `payment_schedule`, `due_date`) VALUES
(7, '3', 'Government', '3800', '10', '8', '6840', '71.25', '2020-11-02', '2020-11-25'),
(8, '4', 'Government', '15000', '10', '1', '16500', '1375', '2020-11-02', '2021-11-30'),
(9, '5', 'Government', '20000', '10', '2', '24000', '1000', '2020-11-02', '2020-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `group_id` int(11) NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `gender`, `group_id`, `join_date`) VALUES
(1, 'Vishakha', 'Ghode', 'f', 3, '2020-09-29'),
(3, 'Sushma', 'Bhandare', 'f', 3, '2020-11-02'),
(4, 'Nikita', 'Patil', 'f', 4, '2020-11-02'),
(5, 'Pooja', 'ahire', 'f', 5, '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `payment_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`payment_id`, `group_id`, `amount_paid`, `payment_date`) VALUES
(1, 3, 50, '2016-08-16'),
(4, 3, 50, '2020-11-02'),
(5, 4, 1000, '2020-11-02'),
(6, 5, 2000, '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`) VALUES
(1, 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `village_id` int(11) NOT NULL,
  `village_name` varchar(255) NOT NULL,
  `ward_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`village_id`, `village_name`, `ward_id`) VALUES
(1, 'Aadgaon', 2),
(2, 'Nandur Gaon', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`ward_id`, `ward_name`, `division_id`) VALUES
(1, 'Nashik Ward No - 1', 3),
(2, 'Nashik Ward No - 2', 3),
(3, 'Nashik Ward No - 3', 3),
(4, 'Nashik Ward No - 4', 3),
(5, 'Nashik Ward No - 5', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`village_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`ward_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
