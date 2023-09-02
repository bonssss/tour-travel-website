
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chamodb`
--




CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------



CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `DestinationId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `DestinationId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'mekdes2@gmail.com', '2020-07-11', '2020-07-18', 'I want to travel.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'seare@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abrh@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Nati', 'nati@gmail.com', '4646464646', 'Enquiry for Lake Chamo Trip', 'Kindly provide me more offer.', '2023-01-08 06:30:32', 1),
(2, 'Tade', 'tade@gmail.com', '6797947987', 'Enquiry', 'Any Offer for Nech Sar Trip', '2023-01-08 06:31:38', NULL),
(3, 'Hir', 'hir@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for Touist', '2023-01-08 06:32:41', 1);


CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'amare12@gmail.com', 'Booking Issues', 'I am not able to book', '2023-01-05 06:36:03', 'Thank You, We will fix the issue ', '2020-07-08 06:55:22'),
(7, 'bonsa23@gmail.com', 'Refund', 'I want my refund', '2023-01-08 06:56:29', NULL, NULL);

-- --------------------------------------------------------



CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', 'We are Chamo Tour, Your contract with us is subject to these booking conditions. A contract will exist between us once you have paid your deposit (or such other fee as may be appropriate, for example where you are making a late booking) and we have issued you with our booking confirmation. If any part of our contract with you is found to be invalid or unenforceable, then the remainder of it will not be affected and will remain valid and enforceable.
When you make a booking you guarantee that you have the authority to accept and do accept on behalf of your party the terms of these booking conditions and agree on behalf of everyone travelling in your party to be bound by them. All bookings must be made by a person aged eighteen years or over. Where your booking is for more than one person, the first-named person in your party aged eighteen years or over will be treated by us as the lead name for your booking. The lead name will be responsible for making all payments due to us in accordance with our contract.
Completion and submission by you of our Booking Form will be treated by us as confirmation that you have read, understood and accepted these booking conditions.'),
(2, 'Privacy', '	Chamo Tours, is committed to maintaining the privacy of personal information that you provide to us when using the Chamo Travel & Tours web site. This Privacy Policy describes how we treat personal information received about you when you visit www.chamotour.com.'),
(3, 'AboutUs', 'Chamo Tour, Travel is the main thing you purchase that makes you more extravagant. We, at Chamo Tour, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly.'),
(11, 'Contact', '	ArbaMinch University, ArbaMinch, chamotour@gmail.com, 098765423');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourdestinations` (
  `DestinationId` int(11) NOT NULL,
  `DestinationName` varchar(200) DEFAULT NULL,
  `DestinationPrice` int(11) DEFAULT NULL,
  `DestinationDescription` mediumtext DEFAULT NULL,
  `DestinationImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourdestinations` (`DestinationId`, `DestinationName`,  `DestinationPrice`,  `DestinationDescription`, `DestinationImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Nech Sar Park', 6000, ' Excellent park where you can find,zebras monkeys and various birds.', 'zeb.jpg', '2023-01-08 05:21:58', NULL),
(2, 'Croc Ranch', 5000, ' Walking between the masses of crocs in their concrete tanks at this facility is more humdrum than it sounds, except during feeding, which usually happens Monday and Thursday.', 'crocr.jpg', '2023-01-08 05:21:58', NULL),
(3, 'Lake Chamo', 3000, 'Treat yourself to a relaxing boat ride on Lake Chamo!, with An excellent four hour', 'lake.jpg', '2023-01-08 05:21:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `PhoneNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Seare Hagos', '0967551345', 'seare@gmail.com', 'ae5993490843e8aac3fe43cd28357ece', '2023-01-08 06:33:20', NULL),
(2, 'Bonsa Desalegn', '0911788979', 'bonsa@gmail.com', '6b2ef3af63d95c769ed733a955aea9de', '2023-01-08 06:33:56', NULL),
(3, 'Amare Hagos', '0928652486', 'amare@gmail.com', '8a95bfe946235637cfe914d31e84f4f7', '2023-01-08 06:34:20', NULL),
(4, 'Mekdes Niguse', '0971455916', 'mekdes@gmail.com', 'ae5993490843e8aac3fe43cd28357ece', '2023-01-08 06:34:38', NULL),
(5, 'Test', '0947693614', 'chamot@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-08 06:35:06', '2021-05-11 04:37:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourdestinations`
--
ALTER TABLE `tbltourdestinations`
  ADD PRIMARY KEY (`DestinationId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourdestinations`
--
ALTER TABLE `tbltourdestinations`
  MODIFY `DestinationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
