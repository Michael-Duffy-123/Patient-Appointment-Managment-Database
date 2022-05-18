-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 08:09 PM
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
-- Database: `dentalpractice`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ainescanlonappointments`
-- (See below for the actual view)
--
CREATE TABLE `ainescanlonappointments` (
`appointmentsID` smallint(10)
,`patientID` smallint(4)
,`date` date
,`time` time
,`status` varchar(20)
,`procedureID` smallint(4)
,`staffID` smallint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointmentsID` smallint(10) NOT NULL,
  `patientID` smallint(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `procedureID` smallint(4) DEFAULT NULL,
  `staffID` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointmentsID`, `patientID`, `date`, `time`, `status`, `procedureID`, `staffID`) VALUES
(1, 10, '2022-03-28', '11:00:00', 'COMPLETED', 4, 1),
(2, 3, '2022-03-28', '09:00:00', 'COMPLETED', 1, 2),
(3, 7, '2022-03-29', '12:00:00', 'CANCELLED', 2, 1),
(4, 4, '2022-03-30', '15:00:00', 'COMPLETED', 3, 1),
(5, 9, '2022-03-31', '14:00:00', 'COMPLETED', 7, 1),
(6, 6, '2022-04-01', '09:00:00', 'COMPLETED', 1, 2),
(7, 2, '2022-04-04', '09:00:00', 'CANCELLED', 2, 2),
(8, 8, '2022-04-05', '10:00:00', 'COMPLETED', 5, 1),
(9, 5, '2022-04-06', '12:00:00', 'CANCELLED', 2, 3),
(10, 1, '2022-04-07', '14:00:00', 'COMPLETED', 1, 3),
(11, 5, '2022-04-11', '09:00:00', 'AWAITING', 6, 2),
(12, 1, '2022-04-12', '12:00:00', 'AWAITING', 4, 1),
(13, 10, '2022-04-13', '13:00:00', 'CANCELLED', 2, 1),
(14, 6, '2022-04-14', '14:00:00', 'AWAITING', 1, 3),
(15, 3, '2022-04-15', '11:00:00', 'AWAITING', 4, 1),
(16, 9, '2022-04-20', '09:00:00', 'CANCELLED', 2, 2),
(17, 4, '2022-04-22', '09:00:00', 'AWAITING', 1, 2),
(18, 8, '2022-04-11', '12:00:00', 'AWAITING', 6, 3),
(19, 2, '2022-04-13', '10:00:00', 'CANCELLED', 2, 3),
(20, 7, '2022-04-14', '15:00:00', 'AWAITING', 8, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `awaitingreport`
-- (See below for the actual view)
--
CREATE TABLE `awaitingreport` (
`firstName` varchar(20)
,`lastName` varchar(20)
,`date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billID` smallint(4) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `appointmentID` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billID`, `total`, `date`, `appointmentID`) VALUES
(1, '100.00', '2022-03-28', 1),
(2, '50.00', '2022-03-28', 2),
(3, '10.00', '2022-03-29', 3),
(4, '70.00', '2022-03-30', 4),
(5, '60.00', '2022-03-31', 5),
(6, '50.00', '2022-04-01', 6),
(7, '10.00', '2022-04-04', 7),
(8, '120.00', '2022-04-05', 8),
(9, '10.00', '2022-04-05', 19),
(10, '10.00', '2022-04-06', 9),
(11, '10.00', '2022-04-06', 16),
(12, '50.00', '2022-04-07', 10),
(13, '10.00', '2022-04-07', 13);

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `consultantID` smallint(4) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `specialty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultants`
--

INSERT INTO `consultants` (`consultantID`, `firstName`, `lastName`, `phone`, `email`, `address`, `specialty`) VALUES
(1, 'Jessie', 'Cunningham', '085777666', 'jessie.cunningham@gmail.com', 'Dental Department, Cork Hospital', 'Prosthodontist'),
(2, 'Frank', 'Moore', '083666555', 'frank.moore@gmail.com', 'Moore\'s Dental Practice, Little Island, Cork', 'Orthodontist'),
(3, 'Michael', 'O\'Brien', '087333222', 'michael.obrien@gmail.com', 'Cork University Dental School, Cork', 'Oral Surgeon');

-- --------------------------------------------------------

--
-- Stand-in structure for view `jonathanfarelappointments`
-- (See below for the actual view)
--
CREATE TABLE `jonathanfarelappointments` (
`appointmentsID` smallint(10)
,`patientID` smallint(4)
,`date` date
,`time` time
,`status` varchar(20)
,`procedureID` smallint(4)
,`staffID` smallint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `marymulchayappointments`
-- (See below for the actual view)
--
CREATE TABLE `marymulchayappointments` (
`appointmentsID` smallint(10)
,`patientID` smallint(4)
,`date` date
,`time` time
,`status` varchar(20)
,`procedureID` smallint(4)
,`staffID` smallint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patientID` smallint(4) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patientID`, `firstName`, `lastName`, `phone`, `address`, `email`, `dateOfBirth`, `gender`) VALUES
(1, 'Thomas', 'Kelly', '089777666', '6 Summerstown Avenue, Cork, Ireland', 'thomas.kelly@gmail.com', '1988-01-11', 'MALE'),
(2, 'Sinead', 'Murphy', '087666555', '11 Tranmore Road, Cork, Ireland', 'sinead.murphy@gmail.com', '1977-08-12', 'FEMALE'),
(3, 'Andrew', 'Barry', '089888777', '12 Pearse Road, Cork, Ireland', 'andrew.barry@gmail.com', '1999-08-19', 'MALE'),
(4, 'Aoife', 'Doyle', '086555444', '51 Blackrock Road, Cork, Ireland', 'aoife.doyle@gmail.com', '2001-09-23', 'FEMALE'),
(5, 'Aisling', 'Barret', '085666333', '27 Elderwood Drive, Cork, Ireland', NULL, '1962-08-16', 'FEMALE'),
(6, 'Lisa', 'Wu', '086777888', '23 St Annes Drive, Cork, Ireland', 'lisa.wu@gmail.com', '2010-06-10', 'FEMALE'),
(7, 'Victor', 'Howick', '087666555', '9 Glen Avenue, Cork, Ireland', 'victor.howick@gmail.com', '1973-04-11', 'MALE'),
(8, 'Anthon', 'Ivanov', '083222111', '32 Banduff Road, Cork, Ireland', '', '1992-08-24', 'MALE'),
(9, 'Hazel', 'Moreau', '086555444', '24 Ashgrove Avenue, Cork, Ireland', 'hazel.moreau@gmail.com', '1994-07-07', 'FEMALE'),
(10, 'Aisling', 'Breheny', '086555777', '18 Fairfield View, Cork, Ireland', 'aisling.breheny@gmail.com', '2002-07-11', 'FEMALE');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` smallint(4) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `billID` smallint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `date`, `amount`, `method`, `billID`) VALUES
(1, '2022-03-28', '50.00', 'CARD', 1),
(2, '2022-03-28', '50.00', 'CASH', 2),
(3, '2022-03-29', '10.00', 'CARD', 3),
(4, '2022-03-30', '70.00', 'CARD', 4),
(5, '2022-03-31', '30.00', 'CASH', 5),
(6, '2022-04-01', '50.00', 'CARD', 1),
(7, '2022-04-04', '10.00', 'CASH', 7),
(8, '2022-04-05', '60.00', 'CARD', 8),
(9, '2022-04-04', '10.00', 'CARD', 9),
(10, '2022-04-06', '10.00', 'CASH', 11),
(11, '2022-04-07', '30.00', 'CARD', 12),
(12, '2022-04-07', '20.00', 'CARD', 12),
(13, '2022-04-07', '10.00', 'CASH', 13);

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `procedureID` smallint(4) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`procedureID`, `title`, `cost`) VALUES
(1, 'General Check Up', '50.00'),
(2, 'Cancellation Fee', '10.00'),
(3, 'Cleaning', '70.00'),
(4, 'Extraction', '100.00'),
(5, 'Root Canal', '120.00'),
(6, 'Filling', '70.00'),
(7, 'Braces Check Up', '60.00'),
(8, 'Braces', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referralID` smallint(4) NOT NULL,
  `patientID` smallint(4) DEFAULT NULL,
  `consultantID` smallint(4) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`referralID`, `patientID`, `consultantID`, `date`) VALUES
(1, 3, 1, '2022-03-28'),
(2, 10, 1, '2022-03-28'),
(3, 4, 2, '2022-03-30'),
(4, 6, 2, '2022-04-01'),
(5, 8, 3, '2022-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `reportID` smallint(4) NOT NULL,
  `referralID` smallint(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`reportID`, `referralID`, `date`, `description`) VALUES
(1, 1, '2022-04-02', 'It appears that the pain Andrew is experiencing is not caused by an impacted wisdom tooth. I believe he is pretending to get off of school. Regards, Dr Jessie Cunningham.'),
(2, 3, '2022-04-03', 'I regret to inform you that Aoife will have to have all of her teeth removed. Every one of them. Regards, Dr Frank Moore.'),
(3, 4, '2022-04-05', 'After close examination of the patient I believe that Lisa needs braces. Regards, Dr Frank Moore.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` smallint(4) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `jobTitle` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `firstName`, `lastName`, `jobTitle`, `phone`, `email`, `address`) VALUES
(1, 'Mary', 'Mulcahy', 'Dentist', '083111222', 'mary.mulcahy@gmail,com', '12 Cathedral Road, Cork, Ireland'),
(2, 'Jonathan', 'Farrel', 'Assistant', '085111222', 'jonathan.farrel@gmail.com', '25 Sidney Park, Cork, Ireland'),
(3, 'Aine', 'Scanlon', 'Assistant', '086111222', 'aine.scanlon@gmail.com', '7 Castle Street, Cork, Ireland'),
(4, 'Helen', 'O\'Meara', 'Secretary', '083222444', 'helen.omeara@gmail.com', '8 Church Street, Cork, Ireland');

-- --------------------------------------------------------

--
-- Stand-in structure for view `upcomingappointmentcontacts`
-- (See below for the actual view)
--
CREATE TABLE `upcomingappointmentcontacts` (
`firstName` varchar(20)
,`lastName` varchar(20)
,`phone` varchar(20)
,`email` varchar(50)
,`date` date
,`time` time
);

-- --------------------------------------------------------

--
-- Structure for view `ainescanlonappointments`
--
DROP TABLE IF EXISTS `ainescanlonappointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ainescanlonappointments`  AS SELECT `appointments`.`appointmentsID` AS `appointmentsID`, `appointments`.`patientID` AS `patientID`, `appointments`.`date` AS `date`, `appointments`.`time` AS `time`, `appointments`.`status` AS `status`, `appointments`.`procedureID` AS `procedureID`, `appointments`.`staffID` AS `staffID` FROM `appointments` WHERE `appointments`.`staffID` = (select `staff`.`staffID` from `staff` where `staff`.`firstName` = 'Aine') AND `appointments`.`status` = 'AWAITING' ;

-- --------------------------------------------------------

--
-- Structure for view `awaitingreport`
--
DROP TABLE IF EXISTS `awaitingreport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `awaitingreport`  AS SELECT `patients`.`firstName` AS `firstName`, `patients`.`lastName` AS `lastName`, `referrals`.`date` AS `date` FROM ((`referrals` left join `reports` on(`referrals`.`referralID` = `reports`.`referralID`)) join `patients` on(`referrals`.`patientID` = `patients`.`patientID`)) WHERE `reports`.`reportID` is null ;

-- --------------------------------------------------------

--
-- Structure for view `jonathanfarelappointments`
--
DROP TABLE IF EXISTS `jonathanfarelappointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jonathanfarelappointments`  AS SELECT `appointments`.`appointmentsID` AS `appointmentsID`, `appointments`.`patientID` AS `patientID`, `appointments`.`date` AS `date`, `appointments`.`time` AS `time`, `appointments`.`status` AS `status`, `appointments`.`procedureID` AS `procedureID`, `appointments`.`staffID` AS `staffID` FROM `appointments` WHERE `appointments`.`staffID` = (select `staff`.`staffID` from `staff` where `staff`.`firstName` = 'Jonathan') AND `appointments`.`status` = 'AWAITING' ;

-- --------------------------------------------------------

--
-- Structure for view `marymulchayappointments`
--
DROP TABLE IF EXISTS `marymulchayappointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `marymulchayappointments`  AS SELECT `appointments`.`appointmentsID` AS `appointmentsID`, `appointments`.`patientID` AS `patientID`, `appointments`.`date` AS `date`, `appointments`.`time` AS `time`, `appointments`.`status` AS `status`, `appointments`.`procedureID` AS `procedureID`, `appointments`.`staffID` AS `staffID` FROM `appointments` WHERE `appointments`.`staffID` = (select `staff`.`staffID` from `staff` where `staff`.`firstName` = 'Mary') AND `appointments`.`status` = 'AWAITING' ;

-- --------------------------------------------------------

--
-- Structure for view `upcomingappointmentcontacts`
--
DROP TABLE IF EXISTS `upcomingappointmentcontacts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `upcomingappointmentcontacts`  AS SELECT `patients`.`firstName` AS `firstName`, `patients`.`lastName` AS `lastName`, `patients`.`phone` AS `phone`, `patients`.`email` AS `email`, `appointments`.`date` AS `date`, `appointments`.`time` AS `time` FROM (`patients` join `appointments` on(`patients`.`patientID` = `appointments`.`patientID` and `appointments`.`status` = 'AWAITING')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointmentsID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billID`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`consultantID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`procedureID`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referralID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointmentsID` smallint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `billID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `consultantID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `procedureID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `referralID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `reportID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
