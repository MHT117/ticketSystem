-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 01:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final-21`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `seats` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `seats`) VALUES
(1, 'Array'),
(2, 'Array'),
(3, 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(50) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `dstation` varchar(100) NOT NULL,
  `astation` varchar(100) NOT NULL,
  `vstation` varchar(100) NOT NULL,
  `dtime` varchar(10) NOT NULL,
  `atime` varchar(10) NOT NULL,
  `rent` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bname`, `dstation`, `astation`, `vstation`, `dtime`, `atime`, `rent`) VALUES
(14, 'Hanif', 'Dhaka', 'Coxes Bazar', 'Chittagong', '9.00 Am', '12.00 PM', 1000),
(16, 'Hanif', 'Dhaka', 'Rajshahi', 'Chittagong', '9.00 Am', '12.00 PM', 600),
(18, 'Hanif', 'Dhaka', 'Rajshahi', 'Chittagong', '9.00 Am', '12.00 PM', 600),
(20, 'Hanif', 'Manik Nagar', 'Coxes Bazar', 'Chittagong', '9.00 Am', '12.00 PM', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cname`) VALUES
(7, 'Bags'),
(3, 'Panjabis'),
(31, 'Sari'),
(30, 'School'),
(11, 'Shirt'),
(29, 'Shoes'),
(28, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fname`, `lname`, `email`, `feedback`) VALUES
(59, 'Arifur ', 'Rahman', 'arifur.rahman1299@yahoo.com', 'Feedback'),
(60, 'Arifur ', 'Rahman', 'customer@gmail.com', ''),
(61, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback'),
(62, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback'),
(63, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback'),
(64, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback'),
(65, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback'),
(66, 'Arifur ', 'Rahman', 'customer@gmail.com', 'Feedback');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `Salary` int(255) NOT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Name`, `Username`, `Email`, `Address`, `DateOfBirth`, `Salary`, `Gender`) VALUES
(3, 'Fariha Khan', 'Fariha123', '', 'House-67, Road-21, Rupnagor, R/A, Mirpur', '27/08/2000', 20000, 'Female'),
(5, 'sakib', 'sakib12', '', 'Dhanmondi', '1/1/1999', 2000, 'Male'),
(6, 'Sadia', 'Sadia123', '', 'Gulshan', '2/2/2000', 5000, 'Female'),
(7, 'Nay', 'Nay1234', '', 'Dhanmondi', '27/08/2000', 2000, 'Male'),
(10, 'Nay', 'Nay12345', 'Nay12@gmail.com', 'Dhanmondi', '27/08/2000', 5000, 'Male'),
(11, 'Fkhan', 'Fkhan123', 'fkhan@gmail.com', 'House-67, Road-21, Rupnagor, R/A, Mirpur', '27/08/2000', 20000, 'Female'),
(32, 'Fariha Khan', 'Fariha1234', 'farihakhan6a@gmail.com', 'House-67, Road-21, Rupnagor, R/A, Mirpur', '27/08/2000', 20000, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `message_manager`
--

CREATE TABLE `message_manager` (
  `ID` int(5) NOT NULL,
  `Toreceive` varchar(50) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Froms` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_manager`
--

INSERT INTO `message_manager` (`ID`, `Toreceive`, `Message`, `Froms`) VALUES
(31, 'Salman12', 'Aito', 'Admin'),
(33, 'Salman12', 'Aito tomer ki khbr', 'Admin'),
(36, 'Admin', 'fds', 'Salman12'),
(37, 'Admin', 'fds', 'Salman12'),
(42, 'Admin', 'SFE', 'Salman12'),
(48, 'Salman12', 'Aito tomer ki khbr', 'Admin'),
(49, 'Admin', 'Shei apner ki khobor', 'Salman12'),
(50, 'Salman12', 'hello', 'Admin'),
(51, 'Salman12', 'hello', 'Admin'),
(52, 'Admin', 'Hei', 'Salman12'),
(53, 'Efti123', 'hdtfmgj,hk', 'Admin'),
(54, 'Efti123', 'hdtfmgj,hk', 'Admin'),
(55, 'Efti123', 'hdtfmgj,hk', 'Admin'),
(56, 'Salman12', 'hdtfmgj,hk', 'Admin'),
(57, 'Salman12', 'Hlw', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `ID` int(10) NOT NULL,
  `Offer_Name` varchar(50) NOT NULL,
  `Offer_Percentage` int(10) NOT NULL,
  `Coupon_Code` varchar(50) NOT NULL,
  `Staring_Date` varchar(50) NOT NULL,
  `Ending_Date` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`ID`, `Offer_Name`, `Offer_Percentage`, `Coupon_Code`, `Staring_Date`, `Ending_Date`, `Date`) VALUES
(2, 'Eid Offers', 10, 'gf451', '2021-08-05', '2021-08-12', '2021-08-08'),
(91, 'AEMKYTXIUC', 2, '9AJNG', '2021-08-09', '2021-08-13', '2021-08-09'),
(92, 'UH WHKKTPH', 21, 'iaeg0', '2021-08-09', '2021-08-17', '2021-08-09'),
(93, ' LGONYJTFV', 55, 'XBCvv', '2021-08-09', '2021-08-11', '2021-08-09'),
(94, 'AHRESXBMGI', 32, '8CSUD', '2021-08-09', '2021-08-16', '2021-08-09'),
(95, 'JISJBJ ABZ', 56, 'jmbvp', '2021-08-09', '2021-08-12', '2021-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` int(100) NOT NULL,
  `number` int(10) NOT NULL,
  `day` int(2) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `card` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `code`, `number`, `day`, `month`, `year`, `card`) VALUES
(11111, 'Arifur Rahman', 880, 1722087363, 14, 'April', 2000, 2147483647),
(11112, 'Customer', 880, 1722087363, 8, 'March', 1973, 2147483647),
(11113, 'Arifur Rahman', 880, 1722087363, 2, 'April', 1974, 2147483647),
(11114, 'Arifur Rahman', 880, 1722087363, 2, 'April', 1974, 2147483647),
(11115, 'Arifur Rahman', 880, 1722087363, 1, 'March', 1973, 2147483647),
(11116, 'Arifur Rahman', 880, 1722087363, 1, 'March', 1973, 2147483647),
(11117, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1972, 2147483647),
(11118, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1972, 2147483647),
(11119, 'Arifur Rahman', 880, 1722087363, 1, 'February', 1972, 2147483647),
(11120, 'Arifur Rahman', 880, 1722087363, 1, 'February', 1972, 2147483647),
(11121, 'Arifur Rahman', 880, 1722087363, 1, 'February', 1972, 2147483647),
(11122, 'Arifur Rahman', 880, 1722087363, 1, 'February', 1972, 2147483647),
(11123, 'Arifur Rahman', 880, 1722087363, 1, 'February', 1972, 2147483647),
(11124, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1973, 2147483647),
(11125, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1973, 2147483647),
(11126, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1973, 2147483647),
(11127, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1973, 2147483647),
(11128, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1973, 2147483647),
(11129, 'Arifur Rahman', 880, 1722087363, 2, 'March', 1972, 2147483647),
(11130, 'Arifur Rahman', 880, 1722087363, 2, 'February', 1972, 2147483647),
(11131, 'Arifur Rahman', 880, 1722087363, 2, 'March', 1972, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `plane_list`
--

CREATE TABLE `plane_list` (
  `Transport_name` varchar(20) NOT NULL,
  `Transport_id` varchar(20) NOT NULL,
  `Fare` int(20) NOT NULL,
  `departure_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plane_list`
--

INSERT INTO `plane_list` (`Transport_name`, `Transport_id`, `Fare`, `departure_time`) VALUES
('Novo', 'NO897', 2500, '12:00 PM'),
('Novo', 'NO898', 2500, '3:00 PM'),
('Novo', 'NO899', 2500, '6:00 PM'),
('Novo', 'NO887', 2500, '9:00 PM'),
('US Bangla', 'US777', 2500, '12:00 PM'),
('US Bangla', 'US778', 2500, '3:00 PM'),
('US Bangla', 'US779', 2500, '6:00 PM'),
('US Bangla', 'US788', 2500, '9:00 PM'),
('Bangladesh Biman', 'BB1111', 2500, '12:00 PM'),
('Bangladesh Biman', 'BB1112', 2500, '3:00 PM'),
('Bangladesh Biman', 'BB1113', 2500, '6:00 PM'),
('Bangladesh Biman', 'BB1114', 2500, '9:00 PM'),
('Novo', 'NO996', 2700, '12:00 PM'),
('Novo', 'NO997', 2700, '3:00 PM'),
('Novo', 'NO998', 2700, '6:00 PM'),
('Novo', 'NO999', 2700, '9:00 PM'),
('US Bangla', 'US776', 2700, '12:00 PM'),
('US Bangla', 'US877', 2700, '3:00 PM'),
('US Bangla', 'US878', 2700, '6:00 PM'),
('US Bangla', 'US879', 2700, '9:00 PM'),
('Bangladesh Biman', 'BB2111', 2700, '12:00 PM'),
('Bangladesh Biman', 'BB2112', 2700, '3:00 PM'),
('Bangladesh Biman', 'BB2113', 2700, '6:00 PM'),
('Bangladesh Biman', 'BB2114', 2700, '9:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pprice` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `ptype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ID` int(50) NOT NULL,
  `Service1` varchar(50) NOT NULL,
  `Service2` varchar(50) DEFAULT NULL,
  `Service3` varchar(50) NOT NULL,
  `Request` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ID`, `Service1`, `Service2`, `Service3`, `Request`, `Date`) VALUES
(13, 'Ticket Confirmation', 'Refund Tickets', 'Customer Care 24/7', 'Accepted', '2021-08-15'),
(35, 'Ticket Confirmation', 'Refund Ticket', 'Customer Care 24/7', 'Pending', '2021-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `st`
--

CREATE TABLE `st` (
  `id` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DOB` text NOT NULL,
  `Credit` int(50) NOT NULL,
  `CGPA` float NOT NULL,
  `Dept_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st`
--

INSERT INTO `st` (`id`, `Name`, `DOB`, `Credit`, `CGPA`, `Dept_id`) VALUES
(2, 'Efti', '1999/04/02', 107, 3.5, '18-38867-3'),
(5, 'Efti', '1999/04/02', 105, 3.55, '18-38857-3'),
(42, 'Efti', '1999/04/02', 105, 3.55, '18-38857-7');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` int(12) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Bus_Name` varchar(50) DEFAULT NULL,
  `Seat_Number` varchar(50) DEFAULT NULL,
  `Froms` varchar(50) DEFAULT NULL,
  `Tos` varchar(50) DEFAULT NULL,
  `From_Time` varchar(10) DEFAULT NULL,
  `To_Time` varchar(10) DEFAULT NULL,
  `Booking` varchar(50) DEFAULT NULL,
  `Ticket_number` varchar(50) DEFAULT NULL,
  `Ticket_Date` varchar(50) DEFAULT NULL,
  `Refund` varchar(50) DEFAULT NULL,
  `Reason` text DEFAULT NULL,
  `Feedback` text DEFAULT NULL,
  `Rating` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Type` varchar(50) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Username`, `Email`, `Password`, `Phone`, `Address`, `Bus_Name`, `Seat_Number`, `Froms`, `Tos`, `From_Time`, `To_Time`, `Booking`, `Ticket_number`, `Ticket_Date`, `Refund`, `Reason`, `Feedback`, `Rating`, `Date`, `Type`, `DateOfBirth`, `Salary`, `Gender`) VALUES
(5, 'Mehedi', 'Mehedi1', 'mehedi1@gmail.com', '123456#1', NULL, 'Padma residential area, Rajshahi', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'Manager', '', 50000, 'Male'),
(59, 'Raihan', 'Raihan12', 'ahmedei277@gmail.com', '123456#1', NULL, 'House 901, Uttar-Khan ,Dhaka 1230, Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-15', 'Manager', '2021-08-21', 40000, 'Male'),
(66, 'Mehedi Hassan', 'mehedi', 'mehedi@gmail.com', 'mehedi123@', 1687711560, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', '1999-04-29', NULL, 'Male'),
(67, 'jdfklsajfls', 'mehedi1222', 'nabilsids@gmail.com', 'mehedi123@', 1752127135, 'House no 31, Road no 2, Parijat Residential Area, Bhodra, Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', '2022-04-18', NULL, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `passw`) VALUES
(1, 'Efti', 'Efti12', '12EF'),
(2, 'Raihan', 'Rai15', '56Rai'),
(3, 'Fahim haque', 'fahim01', '12357'),
(6, 'Akon1', 'Akia1', '12357'),
(7, 'MD. MOHIUDDIN AHMED EFTI', 'lucifer2e7', '123456'),
(11, 'drftg', 'tgyh', 'fgt'),
(20, 'ui', 'blkjk', 'jn;lk'),
(21, 'gouh', 'gpuoih', 'gpou'),
(24, 'khlj;', 'lo;oi;', 'uuli;un'),
(27, 'egrhe', 'shrfd', 'wgr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `message_manager`
--
ALTER TABLE `message_manager`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `st`
--
ALTER TABLE `st`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Dept_id` (`Dept_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `message_manager`
--
ALTER TABLE `message_manager`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `st`
--
ALTER TABLE `st`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
