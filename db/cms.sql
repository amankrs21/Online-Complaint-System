-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 05:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '6d2f5e583f44b4550b51af3d2e7a2877', '06-02-2022 10:02:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Cybercrime', 'In this Category, Users can complain related to Cyber Scam, Data Breach, Data Theft, Hacking, Online Money Fraud, Online Data Blackmailing, etc.', '2022-02-06 09:04:42', '06-02-2022 10:14:03 PM');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hey Aman,\r\nWe Reviewed your Complain and Your Complain has been sent to further department to take legal action.\r\n\r\nWe will notify you of updates on Your Complain.\r\n\r\nHope so your problem will be resolved soon.', '2022-02-06 16:56:33'),
(2, 1, 'in process', 'Hii Roshni,\r\nWe revied your Complain, and it seems Genuine.\r\nWe sent your complaint to the Cyber Cell for Some inquiry and we will update you soon.\r\nPlease Keep Patience.', '2022-02-06 17:00:34'),
(3, 1, 'in process', 'Hii Roshni,\r\nWe are happy to inform you that your Complain is Successfully verified by our Cyber Cell and It will maximum take One Weak to resolve your Complain.\r\nThank you so much for keeping your Patience with us.', '2022-02-06 17:08:22'),
(4, 1, 'in process', 'Hii Roshni,\r\nWe are happy to inform you that your complaint is Successfully solved by Our Cyber cell and we are glad about your data loss.\r\nBut we are thankful to you... because you helped to catch a big hacking group.\r\n\r\nStay Happy and Stay Safe :)', '2022-02-06 17:12:49'),
(5, 1, 'closed', 'Thank You for your efforts.', '2022-02-06 17:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Andhra Pradesh', '', '2022-02-06 08:54:19', ''),
(2, 'Arunachal Pradesh', '', '2022-02-06 08:54:33', ''),
(3, 'Assam', '', '2022-02-06 08:54:48', ''),
(4, 'Bihar', '', '2022-02-06 08:54:53', ''),
(5, 'Chhattisgarh', '', '2022-02-06 08:55:02', ''),
(6, 'Goa', '', '2022-02-06 08:55:10', ''),
(7, 'Gujarat', '', '2022-02-06 08:55:16', ''),
(8, 'Haryana', '', '2022-02-06 08:55:28', ''),
(9, 'Himachal Pradesh', '', '2022-02-06 08:55:34', ''),
(10, 'Jharkhand', '', '2022-02-06 08:55:39', ''),
(11, 'Karnataka', '', '2022-02-06 08:56:12', ''),
(12, 'Kerala', '', '2022-02-06 08:56:20', ''),
(13, 'Madhya Pradesh', '', '2022-02-06 08:56:30', ''),
(14, 'Maharashtra', '', '2022-02-06 08:56:39', ''),
(15, 'Manipur', '', '2022-02-06 08:56:49', ''),
(16, 'Meghalaya', '', '2022-02-06 08:56:54', ''),
(17, 'Mizoram', '', '2022-02-06 08:57:00', ''),
(18, 'Nagaland', '', '2022-02-06 08:59:56', ''),
(19, 'Odisha', '', '2022-02-06 09:01:21', ''),
(20, 'Punjab', '', '2022-02-06 09:01:26', ''),
(21, 'Rajasthan', '', '2022-02-06 09:01:31', ''),
(22, 'Sikkim', '', '2022-02-06 09:01:37', ''),
(23, 'Tamil Nadu', '', '2022-02-06 09:01:46', ''),
(24, 'Telangana', '', '2022-02-06 09:01:51', ''),
(25, 'Tripura', '', '2022-02-06 09:02:00', ''),
(26, 'Uttar Pradesh', '', '2022-02-06 09:02:08', ''),
(27, 'Uttarakhand', '', '2022-02-06 09:02:16', ''),
(28, 'West Bengal', '', '2022-02-06 09:02:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 1, 'DDoS Attacks', '2022-02-06 09:06:37', '06-02-2022 10:14:56 PM'),
(3, 1, 'Botnets', '2022-02-06 09:06:57', '06-02-2022 10:15:15 PM'),
(4, 1, 'Identity Theft', '2022-02-06 09:07:09', '06-02-2022 10:15:36 PM'),
(5, 1, 'Cyberstalking', '2022-02-06 09:07:23', '06-02-2022 10:16:25 PM'),
(6, 1, 'Social Engineering', '2022-02-06 09:07:52', '06-02-2022 10:16:46 PM'),
(7, 1, 'PUPs', '2022-02-06 16:47:12', '06-02-2022 10:17:24 PM'),
(8, 1, 'Phishing', '2022-02-06 16:47:52', ''),
(9, 1, 'Prohibited/Illegal Content', '2022-02-06 16:48:41', ''),
(10, 1, 'Online Scams', '2022-02-06 16:48:58', ''),
(11, 1, 'Exploit Kits', '2022-02-06 16:49:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 3, 1, 'Phishing', 'General Query', 'Gujarat', 'Application Related Issue', 'Sir, Actually an Application named ABC has stolen my all bank information from my phone.\r\nI attached the Proof of that Theft in the Documents.\r\n\r\nPlease Solve my Query.\r\n\r\nThanking You :)', 'Bill.docx', '2022-02-06 16:21:36', 'closed', '2022-02-06 17:13:38'),
(2, 2, 1, 'Online Scams', ' Complaint', 'Goa', 'Money Fraud', 'Sir, I have been Cheated online, Actually, I received a call and they told me that they are from the bank and then they ask some details from me, after that, I received a message that My Account has been debited Rs 10000.\r\n\r\nPlease Help Me... I attached Documents Below for Proof.\r\n\r\nThanking You :)', 'Invoice_001673.pdf', '2022-02-06 16:30:42', 'in process', '2022-02-06 16:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(11, 2, 'amansingh844123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 09:08:39', '06-02-2022 02:39:57 PM', 1),
(12, 3, 'roshanisingh3566@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 16:15:36', '06-02-2022 09:52:28 PM', 1),
(13, 2, 'amansingh844123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 16:25:20', '06-02-2022 10:01:12 PM', 1),
(14, 0, 'admin', 0x3a3a3100000000000000000000000000, '2022-02-06 16:51:59', '', 0),
(15, 3, 'roshanisingh3566@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:01:19', '06-02-2022 10:32:14 PM', 1),
(16, 2, 'amansingh844123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:02:24', '06-02-2022 10:34:51 PM', 1),
(17, 3, 'roshanisingh3566@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:05:07', '06-02-2022 10:38:40 PM', 1),
(18, 3, 'roshanisingh3566@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:09:02', '06-02-2022 10:39:42 PM', 1),
(19, 2, 'amansingh844123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:13:52', '06-02-2022 10:44:11 PM', 1),
(20, 3, 'roshanisingh3566@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-06 17:14:31', '06-02-2022 10:46:31 PM', 1),
(21, 0, 'admin', 0x3a3a3100000000000000000000000000, '2022-02-11 10:26:37', '', 0),
(22, 2, 'amansingh844123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-11 10:26:45', '', 1),
(23, 0, 'kalpeshpatil', 0x3a3a3100000000000000000000000000, '2022-02-12 16:06:07', '', 0),
(24, 4, 'kalpeshpatil@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-12 16:06:28', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Aman Kumar Singh', 'amansingh844123@gmail.com', '71b28e761cbe419c632c60940e4dd99c', 7079818064, 'SBH - C, Parul University,\r\nVadodara', 'Gujarat', 'India', 391760, NULL, '2022-02-06 08:04:27', '2022-02-06 09:09:50', 1),
(3, 'Roshani Singh', 'roshanisingh3566@gmail.com', 'd7cd480fdfdeda61871fa29b98853d9f', 9054797119, 'SBH - B, Parul University,\r\nVadodara', 'Gujarat', 'India', 391760, NULL, '2022-02-06 16:15:00', '2022-02-06 16:18:24', 1),
(4, 'Kalpesh Patil', 'kalpeshpatil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 9876543210, NULL, NULL, NULL, NULL, NULL, '2022-02-12 16:05:19', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
