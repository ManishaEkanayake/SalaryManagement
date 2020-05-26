-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 05:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `empFName` varchar(255) NOT NULL,
  `empLName` varchar(255) NOT NULL,
  `attDate` varchar(255) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `overTime` float DEFAULT NULL,
  `hoursWorked` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendanceId`, `empId`, `empFName`, `empLName`, `attDate`, `startTime`, `endTime`, `overTime`, `hoursWorked`) VALUES
(1, 2, 'James', 'Murray', '8/10/2019', '08:00:00', '17:00:00', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_report`
--

CREATE TABLE `attendance_report` (
  `at_repID` int(11) NOT NULL,
  `empID` int(50) NOT NULL,
  `month` varchar(55) NOT NULL,
  `total_daysArrived` int(11) NOT NULL,
  `total_leaves` int(11) NOT NULL,
  `total_lateHours` int(11) NOT NULL,
  `total_overtimeHours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_report`
--

INSERT INTO `attendance_report` (`at_repID`, `empID`, `month`, `total_daysArrived`, `total_leaves`, `total_lateHours`, `total_overtimeHours`) VALUES
(2, 2, 'September', 3, 22, 35, 11),
(3, 3, 'September', 1, 24, 9, 2),
(5, 1, 'September', 4, 21, 37, 6),
(6, 1, 'January', 14, 11, 150, 25),
(7, 4, 'January', 1, 24, 9, 0),
(8, 3, 'January', 2, 23, 20, 5),
(9, 1, 'January', 14, 11, 150, 25),
(10, 1, 'February', 2, 23, 21, 3),
(11, 1, 'March', 2, 23, 16, 0),
(12, 2, 'January', 13, 12, 136, 33),
(13, 2, 'February', 1, 24, 12, 5),
(14, 3, 'January', 2, 23, 20, 5),
(15, 3, 'February', 5, 20, 50, 11),
(16, 3, 'March', 8, 17, 74, 10),
(17, 3, 'January', 2, 23, 20, 5),
(18, 3, 'February', 5, 20, 50, 11),
(19, 3, 'March', 8, 17, 74, 10),
(20, 4, 'January', 1, 24, 9, 0),
(21, 4, 'February', 1, 24, 9, 0),
(22, 4, 'February', 1, 24, 10, 1),
(23, 5, 'January', 3, 22, 32, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cardNo` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `membershipType` varchar(20) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cardNo`, `fName`, `lName`, `address`, `membershipType`, `discount`) VALUES
(771246364, 'Carla', 'Hooper', '548 maven road', 'Gold', 10),
(771905730, 'Victor', 'Lyons', ' 322 Buller road', 'Silver', 7),
(777801951, 'Zack', 'Barton', '211/5 hill street', 'Platinum', 15);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deliveryId` int(11) NOT NULL,
  `salesNo` int(11) NOT NULL,
  `custName` varchar(255) NOT NULL,
  `custmobileNo` int(10) NOT NULL,
  `custAddress` varchar(255) NOT NULL,
  `deliveryDateTime` varchar(255) NOT NULL,
  `availableDriver` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deliveryId`, `salesNo`, `custName`, `custmobileNo`, `custAddress`, `deliveryDateTime`, `availableDriver`) VALUES
(1, 2, 'John', 772017335, 'Good Street, Kandy', '8/10/2019', 'Miranda');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `enrollDate` varchar(255) NOT NULL,
  `leaveDate` varchar(255) DEFAULT NULL,
  `post` varchar(20) NOT NULL,
  `basicSalary` float NOT NULL,
  `bonus` float DEFAULT NULL,
  `EPF` float NOT NULL,
  `ETF` float NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `fName`, `lName`, `address`, `city`, `enrollDate`, `leaveDate`, `post`, `basicSalary`, `bonus`, `EPF`, `ETF`, `password`) VALUES
(1, 'Rick', 'Morty', '411 Colombo Street', 'Kandy', '2019-01-01', '0000-00-00', 'Manager', 50000, 0, 4000, 1500, 'admin'),
(2, 'James', 'Murray', '398/2 Peradeniya road', 'Kandy', '2019-02-15', '0000-00-00', 'Employee', 30000, 0, 2400, 900, 'emp'),
(3, 'Miranda', 'Rush', '277/5 Colomobo road', 'Kandy', '2018-01-15', '0000-00-00', 'Rider', 25000, 0, 2000, 750, 'emp'),
(4, 'Glenn', 'Long', '312/9 Colomobo road', 'Gelioya', '2018-07-09', '0000-00-00', 'Employee', 35000, 0, 2800, 1050, 'emp'),
(5, 'Bob', 'Woods', '741 Malabe Road', 'Colombo', '2018-08-21', '0000-00-00', 'Rider', 32000, 0, 2560, 960, 'emp');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `prodDescription` varchar(255) NOT NULL,
  `productType` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `buyPrice` float NOT NULL,
  `sellPrice` float NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `prodDescription`, `productType`, `quantity`, `buyPrice`, `sellPrice`, `barcode`) VALUES
(1, 'Kit Kat Chocolate Ba', '', 'Chocolate', 7, 110, 130, 'CH1552'),
(2, 'Sprite', '1 l', 'Soft Drinks', 5, 220, 250, 'SD1205'),
(3, 'Maxies Chicken Nugge', '', 'Frozen Snacks', 11, 225, 270, 'FS2245'),
(4, 'Wonder Bar', '', 'Ice Cream', 19, 50, 75, 'IC3258'),
(5, 'Sprite', '750 ml', 'Soft Drinks', 4, 200, 250, 'CH0750');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `empId` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` float NOT NULL,
  `overtime` float NOT NULL,
  `netSalary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`empId`, `month`, `year`, `bonus`, `overtime`, `netSalary`) VALUES
(1, 'April', '2019', 10000, 250, 54750),
(1, 'February', '2019', 100, 250, 44850),
(1, 'January', '2020', 8855, 250, 53605),
(1, 'September', '2019', 40000, 250, 84750),
(2, 'April', '2019', 5000, 250, 31950),
(2, 'Auguest', '2019', 6000, 250, 32950),
(2, 'March', '2019', 4300, 250, 31250),
(2, 'May', '2016', 6330, 250, 33280),
(2, 'September', '2019', 6000, 250, 32950),
(3, 'Auguest', '2019', 250, 250, 22750),
(3, 'March', '2020', 7678, 250, 30178),
(3, 'September', '2019', 6000, 250, 28500),
(4, 'September', '2019', 50000, 250, 81400),
(5, 'March', '2019', 3000, 250, 31730),
(5, 'September', '2019', 20000, 250, 48730);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subTotal` float NOT NULL,
  `pay` float NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesId`, `date`, `subTotal`, `pay`, `balance`) VALUES
(1, '06/30/2019', 130, 200, 70),
(5, '06/30/2019', 260, 260, 0),
(6, '06/30/2019', 130, 150, 20),
(7, '06/30/2019', 130, 130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `salesId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `sellPrice` float NOT NULL,
  `qty` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `salesId`, `productId`, `sellPrice`, `qty`, `total`) VALUES
(1, 5, 'ch1552', 130, 2, 260),
(2, 6, 'ch1552', 130, 1, 130),
(3, 7, 'ch1552', 130, 1, 130);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supId` int(11) NOT NULL,
  `supName` varchar(20) NOT NULL,
  `supAddress` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supId`, `supName`, `supAddress`, `email`, `phone`) VALUES
(1000, 'Ocean Gate', '988/2 Havelock Road', 'oceangate@gmail.com', 812458795),
(1001, 'Cargills', '578/4 Campbell Place', 'cargills@gmail.com', 812201088),
(1002, 'Maxies', '622/6  Matale Road', 'maxies@gmail.com', 812203049),
(1003, 'UrBeverages', '622/6  Matale Road', 'urbeverages@gmail.com', 812224719);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `supId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `suppliedDate` varchar(255) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discountFromSup` float NOT NULL,
  `payment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`supId`, `productId`, `suppliedDate`, `itemName`, `quantity`, `discountFromSup`, `payment`) VALUES
(1000, 1, '2019-01-05', 'KitKat Chocolate Bar', 27, 5, 2821.5),
(1001, 4, '2019-02-25', 'Sprite', 15, 5, 3135);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceId`),
  ADD KEY `empId` (`empId`);

--
-- Indexes for table `attendance_report`
--
ALTER TABLE `attendance_report`
  ADD PRIMARY KEY (`at_repID`),
  ADD KEY `empID` (`empID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cardNo`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`empId`,`month`,`year`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesId`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesId` (`salesId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supId`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`productId`,`supId`),
  ADD KEY `supId` (`supId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_report`
--
ALTER TABLE `attendance_report`
  MODIFY `at_repID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deliveryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_report`
--
ALTER TABLE `attendance_report`
  ADD CONSTRAINT `attendance_report_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `employee` (`empId`);

--
-- Constraints for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD CONSTRAINT `sales_product_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `sales` (`salesId`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`supId`) REFERENCES `supplier` (`supId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
