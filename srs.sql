-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 01:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srs`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `current_fees` float NOT NULL,
  `min_payment` float NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `current_fees`, `min_payment`, `modified`) VALUES
(1, 100000, 50000, '2021-05-25 17:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `final_payment`
--

CREATE TABLE `final_payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `Last_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_payment`
--

INSERT INTO `final_payment` (`id`, `student_id`, `Last_date`) VALUES
(1, 2, '2021-03-22'),
(2, 1, '2021-03-21'),
(3, 3, '2021-03-21'),
(4, 5, '2021-03-22'),
(5, 6, '2021-03-23'),
(6, 7, '2021-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `payment_fees` float NOT NULL,
  `payment_mode` varchar(500) NOT NULL,
  `payment_desc` varchar(500) NOT NULL,
  `date_paid` date NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `student_id`, `payment_fees`, `payment_mode`, `payment_desc`, `date_paid`, `modified`) VALUES
(1, 1, 80000, 'Bank', 'FDH', '2021-02-02', NULL),
(2, 2, 100000, 'Hard Cash', 'None', '2021-03-21', '2021-03-21 13:03:27'),
(3, 3, 20000, 'Mobile Money(Airtel money/ Mpamba)', 'None', '2021-03-21', '2021-03-21 16:14:41'),
(4, 3, 10000, 'Bank', 'National Bank', '2021-03-21', '2021-03-21 16:40:47'),
(5, 4, 90000, 'Hard Cash', 'None', '2021-03-22', '2021-03-22 22:48:35'),
(6, 5, 100000, 'Bank', 'National Bank', '2021-03-22', '2021-03-22 10:27:29'),
(7, 6, 40000, 'Hard Cash', 'None', '2021-03-23', '2021-03-23 13:29:52'),
(8, 6, 60000, 'Bank', 'National Bank', '2021-03-23', '2021-03-23 13:33:03'),
(9, 7, 60000, 'Bank', 'WUWWE1234', '2021-03-30', '2021-03-30 10:59:21'),
(10, 7, 40000, 'Hard Cash', 'None', '2021-03-30', '2021-03-30 11:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification_msg` varchar(100) NOT NULL,
  `notification_date` datetime NOT NULL,
  `notification_type` varchar(100) NOT NULL,
  `archive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_msg`, `notification_date`, `notification_type`, `archive`) VALUES
(1, 'New Student has been registered: Bonface Mandala', '2021-03-22 10:27:29', 'Student Notification', 1),
(2, 'Bonface  Mandala has finished payment', '2021-03-22 10:27:29', 'Student Notification', 1),
(3, 'New Student has been registered: Sean Kanchiputu', '2021-03-23 13:29:52', 'Student Notification', 1),
(4, 'Fees has been updated, Minimum payment:25000, Actual Payment:100000', '2021-03-29 22:18:27', 'Fees Notification', 1),
(5, 'Fees has been updated', '2021-03-29 22:19:22', 'Fees Notification', 1),
(6, 'New Student has been registered: John Juma', '2021-03-30 10:59:21', 'Student Notification', 1),
(7, 'Fees has been updated', '2021-05-25 17:12:40', 'Fees Notification', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_report`
--

CREATE TABLE `payment_report` (
  `id` int(11) NOT NULL,
  `monthly_payment` float NOT NULL,
  `day_payment` float NOT NULL,
  `Total_balances` float NOT NULL,
  `students_balance` int(11) NOT NULL,
  `student_noBalance` int(11) NOT NULL,
  `payment_total` float NOT NULL,
  `report_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_report`
--

INSERT INTO `payment_report` (`id`, `monthly_payment`, `day_payment`, `Total_balances`, `students_balance`, `student_noBalance`, `payment_total`, `report_date`) VALUES
(1, 130000, 30000, 0, 0, 3, 0, '2021-03-21'),
(2, 320000, 190000, 10000, 1, 4, 400000, '2021-03-22'),
(3, 360000, 40000, 70000, 2, 4, 440000, '2021-03-23'),
(4, 420000, 0, 10000, 1, 5, 500000, '2021-03-29'),
(5, 520000, 100000, 10000, 1, 6, 600000, '2021-03-30'),
(6, 0, 0, 10000, 1, 6, 600000, '2021-05-12'),
(7, 0, 0, 10000, 1, 6, 600000, '2021-05-25'),
(8, 0, 0, 10000, 1, 6, 600000, '2021-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `id` int(11) NOT NULL,
  `Admin_name` varchar(100) DEFAULT NULL,
  `Admin_password` varchar(100) DEFAULT NULL,
  `Date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`id`, `Admin_name`, `Admin_password`, `Date_time`) VALUES
(1, 'Dalie', 'mar98c', '2021-03-30 10:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `StudentParent` varchar(100) NOT NULL,
  `StudentAddress` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `PhoneNumber` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `District` varchar(200) NOT NULL,
  `Year_No` int(11) NOT NULL,
  `Semester_No` int(11) NOT NULL,
  `has_balance` float NOT NULL,
  `is_archive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `FirstName`, `LastName`, `StudentParent`, `StudentAddress`, `StudentEmail`, `PhoneNumber`, `Gender`, `District`, `Year_No`, `Semester_No`, `has_balance`, `is_archive`) VALUES
(1, 'John', 'Bodack', 'Harry wowa', 'HHI ', 'joh@gmail.com', '+265883032223', 'male', 'Karonga', 1, 2, 0, 0),
(2, 'Marian', 'Kamanga', 'Mary Kamanga', 'New Naperi', 'Marian@gmail.com', '+265888449930', 'female', 'Dedza', 3, 5, 0, 0),
(3, 'Maureen', 'Kapapa', 'Hillary', 'hshash', 'Maue@gmail.com', '+265334245555', 'female', 'Nkhata-Bay', 4, 4, 0, 0),
(4, 'Fanny', 'Mahone', 'Grace Mahone', 'Makola Farm\r\nP.O Box 3445,\r\nLilongwe 3\r\n', 'faney@yahoo.com', '+265888993939', 'female', 'Nkhotakota', 1, 1, 10000, 0),
(5, 'Bonface ', 'Mandala', 'Gordon Majombo', 'shashajsd', 'bony@gmail.com', '+265393939304', 'male', 'Blantyre', 4, 1, 0, 0),
(6, 'Sean', 'Kanchiputu', 'Mercy Kanchiputu', 'Area 49 Propa,\r\nMajombo street,\r\nPlot 49/4/35A\r\nLilongwe', 'sean.tony2010@gmail.com', '+265999559303', 'male', 'Likoma', 1, 1, 0, 0),
(7, 'John', 'Kalamba', 'Mary Juma ', 'URSA Security\r\nP.O Box 738,\r\nLilongwe 3', 'john@gmail.com', '+265999344933', 'male', 'Mzuzu', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `UserRole` varchar(100) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `PhoneNumber` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `District` varchar(200) NOT NULL,
  `LoginTime` datetime NOT NULL,
  `LogoutTime` datetime NOT NULL,
  `is_archive` int(11) NOT NULL,
  `is_Active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `UserName`, `UserPassword`, `UserRole`, `UserEmail`, `PhoneNumber`, `Gender`, `District`, `LoginTime`, `LogoutTime`, `is_archive`, `is_Active`) VALUES
(1, 'Dalitso', 'Mandala', 'Dalie', 'mar98c', 'Admin', 'daliprinc8@gmail.com', '+265999560684', 'male', 'Ntcheu', '2021-06-25 08:59:44', '2021-05-25 17:15:28', 0, 1),
(2, 'Brown ', 'Dzatopetsa', 'Brown', 'brown', 'client', 'brown@gmail.com', '+265288388383', 'male', 'Dowa', '2021-03-30 10:53:27', '2021-03-30 11:07:06', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_payment`
--
ALTER TABLE `final_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_report`
--
ALTER TABLE `payment_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup`
--
ALTER TABLE `setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `final_payment`
--
ALTER TABLE `final_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_report`
--
ALTER TABLE `payment_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setup`
--
ALTER TABLE `setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
