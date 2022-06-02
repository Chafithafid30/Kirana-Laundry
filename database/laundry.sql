-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 01:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ID` int(22) NOT NULL,
  `Adm_Name` text NOT NULL,
  `Adm_Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ID`, `Adm_Name`, `Adm_Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`ID`, `Name`, `Phone_No`, `Message`) VALUES
(1, 'Coba', '00812345678', 'Sekedar Test Pesan'),
(2, 'test', '', 'sekedar uji coba pesan saja untuk keperluan blackbox testing'),
(3, 'sdadasd', '', 'test saja untuk keperluan black box testing\r\n'),
(4, 'Coba', '00812345678', 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `ID` int(22) NOT NULL,
  `User_ID` int(22) NOT NULL,
  `Order_Code` int(20) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Total_Item` int(22) NOT NULL,
  `Total_Price` int(22) NOT NULL,
  `Pick_up_date` date NOT NULL,
  `Delivery_date` date NOT NULL,
  `Phone_No` int(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Pick_Up_status` text NOT NULL,
  `Delivery_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`ID`, `User_ID`, `Order_Code`, `User_Name`, `Total_Item`, `Total_Price`, `Pick_up_date`, `Delivery_date`, `Phone_No`, `Address`, `Pick_Up_status`, `Delivery_status`) VALUES
(26, 9, 12345, 'Afanza', 1, 6000, '2020-05-09', '2020-05-10', 81998585, 'Karawang', 'No', 'Deliver'),
(27, 9, 843524, 'Afanza', 1, 6000, '2020-05-10', '2020-05-11', 2147483647, 'Karawang', 'No', 'Deliver'),
(28, 12, 553155, 'admin', 1, 6000, '2022-03-20', '2022-03-20', 12345678, 'world', 'No', 'Deliver'),
(29, 12, 652283, 'admin', 1, 8000, '2022-03-20', '2022-03-20', 12345678, 'world', 'No', 'Pick Up'),
(30, 12, 728066, 'admin', 1, 7000, '2022-03-20', '2022-03-20', 12345678, 'world', 'No', 'Deliver'),
(31, 12, 893761, 'admin', 1, 6000, '2022-03-20', '2022-03-21', 12345678, 'world', 'No', 'Pick Up'),
(32, 12, 1640, 'admin', 12, 72000, '2022-03-20', '2022-03-20', 12345678, 'world', 'No', 'Pick Up'),
(33, 11, 172237, 'Rahmat', 5, 30000, '2022-03-29', '2022-03-29', 2147483647, 'Bekasi', 'No', 'Pick Up');

-- --------------------------------------------------------

--
-- Table structure for table `order_temp`
--

CREATE TABLE `order_temp` (
  `ID` int(22) NOT NULL,
  `User_ID` int(22) NOT NULL,
  `Services_Name` text NOT NULL,
  `Services_Type` text NOT NULL,
  `Laundry_Price` int(100) NOT NULL,
  `Dry_Price` int(100) NOT NULL,
  `Total_Item` int(100) NOT NULL,
  `Pick_Delivery_Status` text NOT NULL,
  `Order_Status` text NOT NULL,
  `Order_code` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_temp`
--

INSERT INTO `order_temp` (`ID`, `User_ID`, `Services_Name`, `Services_Type`, `Laundry_Price`, `Dry_Price`, `Total_Item`, `Pick_Delivery_Status`, `Order_Status`, `Order_code`) VALUES
(45, 9, 'Baju', 'Pakaian', 6000, 0, 1, '2', 'active', '843524'),
(46, 12, 'Baju', 'Pakaian', 6000, 0, 1, '2', 'active', '553155'),
(47, 12, 'Bulu', 'Selimut', 8000, 0, 1, '2', 'active', '652283'),
(48, 12, 'Sarung Bantal', 'Sprei', 7000, 0, 1, '2', 'active', '728066'),
(49, 12, 'Seragam', 'Pakaian', 6000, 0, 1, '2', 'active', '893761'),
(50, 12, 'Baju', 'Pakaian', 6000, 0, 12, '2', 'active', '1640'),
(51, 11, 'Baju', 'Pakaian', 6000, 0, 5, '2', 'active', '172237');

-- --------------------------------------------------------

--
-- Table structure for table `services_type`
--

CREATE TABLE `services_type` (
  `ID` int(22) NOT NULL,
  `Services_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_type`
--

INSERT INTO `services_type` (`ID`, `Services_Name`) VALUES
(11, 'Sprei'),
(12, 'Alat Sholat'),
(13, 'Boneka'),
(14, 'Bed Cover'),
(15, 'Selimut'),
(17, 'Tas'),
(18, 'Alat Tidur'),
(19, 'Pakaian'),
(21, 'Alas Kaki');

-- --------------------------------------------------------

--
-- Table structure for table `services_uploade`
--

CREATE TABLE `services_uploade` (
  `ID` int(22) NOT NULL,
  `Services_Name` varchar(100) NOT NULL,
  `Services_Type` varchar(100) NOT NULL,
  `Delivery_Price` int(120) NOT NULL,
  `Laundry_Price` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_uploade`
--

INSERT INTO `services_uploade` (`ID`, `Services_Name`, `Services_Type`, `Delivery_Price`, `Laundry_Price`) VALUES
(19, 'Sperei Kecil', 'Sprei', 1000, 7000),
(20, 'Sprei Besar', 'Sprei', 1000, 10000),
(21, 'Sarung, Mukenah, dan Sajadah', 'Alat Sholat', 1000, 5000),
(22, 'Boneka Kecil', 'Boneka', 1000, 10000),
(23, 'Boneka Besar', 'Boneka', 1000, 20000),
(24, 'Bed Cover Kecil', 'Bed Cover', 1000, 15000),
(25, 'Bed Cover Besar', 'Bed Cover', 1000, 20000),
(26, 'Selimut Kecil', 'Selimut', 1000, 8000),
(27, 'Selimut Besar', 'Selimut', 1000, 15000),
(28, 'Tas Koper Sedang', 'Tas', 1000, 10000),
(29, 'Tas Koper Besar', 'Tas', 1000, 15000),
(30, 'Bantal', 'Alat Tidur', 1000, 10000),
(31, 'Guling', 'Alat Tidur', 1000, 10000),
(32, 'Baju', 'Pakaian', 1000, 5000),
(33, 'Seragam', 'Pakaian', 1000, 5000),
(34, 'Sepatu', 'Alas Kaki', 1000, 10000),
(35, 'Sandal', 'Alas Kaki', 1000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `ID` int(22) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`ID`, `User_Name`, `Password`) VALUES
(5, 'imran', '1234'),
(6, 'usman', '1212'),
(7, 'admin', '123'),
(8, 'Sikander', 'shikari'),
(9, 'Afanza', '81998585884'),
(10, 'Alfanza', '081213940989'),
(11, 'Rahmat', '08123456'),
(12, 'admin', ''),
(13, 'Coba', '08123456789'),
(14, 'pelanggan', '0123'),
(15, 'pelanggan', '123'),
(16, 'test', ''),
(17, 'test', '123'),
(18, 'Chafith', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `ID` int(22) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Father_Name` varchar(255) NOT NULL,
  `Password` int(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact_No` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`ID`, `User_Name`, `Father_Name`, `Password`, `Address`, `Contact_No`) VALUES
(21, 'pelanggan', 'setia', 0, 'Sembarang', '1234'),
(22, 'pelanggan', 'ramah', 0, 'Bebas', ''),
(23, 'test', 'saja', 0, 'asas', '123'),
(24, 'Chafith', 'asdasd', 0, 'Jl. Basuki Rahmad Gg.3 No.9 (Depan Musholla Al-Fairuz Persis), Kelurahan Mangunharjo, Kecamatn Mayangan', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_temp`
--
ALTER TABLE `order_temp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services_type`
--
ALTER TABLE `services_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services_uploade`
--
ALTER TABLE `services_uploade`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_temp`
--
ALTER TABLE `order_temp`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `services_type`
--
ALTER TABLE `services_type`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `services_uploade`
--
ALTER TABLE `services_uploade`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
