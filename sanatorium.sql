-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2019 at 11:47 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanatorium`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `password`, `name`, `email`) VALUES
(26, '898414befd22ea0db6d461a2483734acd279512ea60dda60e8391b84a672b253', 'voke', ''),
(27, 'dba3742c682aedc81f1d5336b97479f718209c8f5a7f98d2e615c9cb6b3b72fe', 'voks', ''),
(28, 'bd56a92575270e8136c0dd9845da0acc5d79bec66c1b71698936e15794a9a83c', 'kevoo', ''),
(29, 'ec685d82eab3f1b9e20f58759f0c4347fc757179bb99dbeb88452336bcb2a6bb', 'admin', ''),
(30, 'f8d69e21b800823969d6b7bc11f3316d6c62832c04234372b9c14836bdfbd410', 'austine', ''),
(31, '4e205282dfc9e848e11f2bd6023c1e6fbae85842a626bf5b603feed6c196ce34', 'kevine', ''),
(32, 'f602a43546479c2beb1de887ec02d57f90a8a3dab60e704012a4d6020b5bc9e3', 'keroro', ''),
(33, '35091309beaebb751eb5de691a8667dfcba8d11d49e6cbe8ca1c437a5e2ee534', 'ty', ''),
(34, 'f28549b6665b77ffc04a1f6929ce7f6d89a0b94f8b52b38c689b4a8a428c3be9', 'vokeeee', ''),
(35, '$2y$10$xmSv2Tjii8JI9IBo4pQ.nu9Ur0G9tzLLojjOO8H9g0brcFDsg6nz2', 'jemo', 'jemo@gmai.com'),
(36, '$2y$10$1gTRS6t3cJElhx64/mlG1OkAS.EJZTL.hdRDi79MGQ2uLfQd8Jbc.', 'brenda', 'brendanyaswa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorspecialization` varchar(200) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `consultancyfee` int(11) NOT NULL,
  `appointmentdate` varchar(200) NOT NULL,
  `appointmenttime` varchar(200) NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `patientstatus` int(11) NOT NULL,
  `doctorstatus` int(11) NOT NULL,
  `updationdate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorspecialization`, `doctorname`, `patient_name`, `consultancyfee`, `appointmentdate`, `appointmenttime`, `postingdate`, `patientstatus`, `doctorstatus`, `updationdate`) VALUES
(29, 'general', 'voks', '', 0, '2019-06-25', '12:30 PM', '2019-06-22 13:42:29', 0, 1, ''),
(30, 'surgion', 'kevine', '', 0, '2019-06-08', '11:45 AM', '2019-06-22 13:42:29', 0, 1, ''),
(31, 'dentist', 'zack', '', 0, '2019-06-12', '11:45 AM', '2019-06-22 13:42:29', 0, 1, ''),
(32, 'dentist', 'voke', '', 1000, '2019-06-12', '10:30 AM', '2019-06-22 13:42:29', 0, 1, ''),
(33, 'general', 'austine', '', 1200, '2019-06-04', '10:30 AM', '2019-06-22 13:42:29', 0, 1, ''),
(34, 'general', 'austine', '', 1200, '2019-06-04', '10:30 AM', '2019-06-22 13:42:29', 0, 1, ''),
(35, 'dentist', 'voke', 'TY', 1000, '2019-06-04', '2:30 PM', '2019-06-04 19:08:00', 0, 1, ''),
(36, 'general', 'austine', 'TY', 1200, '2019-06-13', '2:45 PM', '2019-06-04 19:08:00', 0, 1, ''),
(37, 'general', 'jacky', 'TY', 1000, '2019-06-04', '3:45 PM', '2019-06-04 19:47:00', 1, 0, ''),
(38, 'Physiotherapy', 'Elias', 'TY', 1000, '2019-06-11', '4:15 PM', '2019-06-04 20:17:54', 1, 0, ''),
(39, 'surgion', 'kevine', 'TY', 2000, '2019-06-05', '2:30 PM', '2019-06-05 18:17:12', 1, 1, ''),
(40, 'general', 'jacky', 'johny', 1000, '2019-06-10', '10:15 AM', '2019-06-10 14:14:36', 0, 1, ''),
(41, 'dentist', 'voke', 'johny', 1000, '2019-06-24', '9:15 AM', '2019-06-22 13:34:47', 0, 1, ''),
(42, 'dentist', 'voke', 'johny', 1000, '2019-06-24', '9:15 AM', '2019-06-22 13:34:47', 0, 1, ''),
(43, 'dentist', 'voke', 'johny', 1000, '2019-06-24', '9:15 AM', '2019-06-22 13:34:47', 0, 1, ''),
(44, 'dentist', 'voke', 'johny', 1000, '2019-06-22', '9:45 AM', '2019-06-22 13:39:11', 0, 1, ''),
(45, 'general', 'jacky', 'johny', 1000, '2019-06-22', '9:45 AM', '2019-06-22 13:43:40', 0, 1, ''),
(46, 'general', 'jacky', 'johny', 1000, '2019-06-28', '9:45 AM', '2019-06-22 13:45:08', 0, 1, ''),
(47, 'Physiotherapy', 'Elias', 'johny', 1000, '2019-06-27', '9:45 AM', '2019-06-22 13:45:08', 0, 1, ''),
(48, 'Physiotherapy', 'Elias', 'johny', 1000, '2019-06-29', '10:00 AM', '2019-06-22 13:58:01', 0, 1, ''),
(49, 'general', 'jacky', 'johny', 1000, '2019-06-25', '10:00 AM', '2019-06-22 13:56:50', 0, 1, ''),
(50, 'dentist', 'zack', 'johny', 1000, '2019-06-29', '10:00 AM', '2019-06-22 13:59:13', 1, 1, ''),
(51, 'general', 'jacky', 'johny', 1000, '2019-06-30', '10:00 AM', '2019-06-22 13:59:41', 0, 1, ''),
(52, 'dentist', 'zack', 'johny', 1000, '2019-06-23', '6:45 PM', '2019-06-23 22:41:07', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `paymenttime` time NOT NULL,
  `paymentdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `patient_id`, `patient_name`, `amount`, `paymenttime`, `paymentdate`) VALUES
(1, 0, 'daizy', 500, '06:15:00', '2019-05-31'),
(2, 0, 'daizy', 500, '06:15:00', '2019-05-25'),
(3, 1, 'kevine', 600, '06:30:00', '2019-05-25'),
(4, 1, 'kevine', 400, '06:45:00', '2019-05-25'),
(5, 4, 'daizy', 100, '07:00:00', '2019-05-30'),
(6, 7, 'liza', 300, '06:30:00', '2019-05-27'),
(7, 1, 'kevine', 300, '01:30:00', '2019-05-28'),
(8, 4, '', 100, '11:45:00', '2019-06-14'),
(9, 4, 'daizy', 1000, '11:45:00', '2019-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `doctorname` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `docfee` varchar(200) NOT NULL,
  `contactno` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `specialization`, `doctorname`, `address`, `docfee`, `contactno`, `email`, `password`) VALUES
(3, 'dentist', 'zack', 'KENYATTA', '1000', 701234566, 'zack@gmail.com', '1234'),
(4, 'dentist', 'voke', 'HB', '1000', 123456, 'voke@gmail.com', '12'),
(7, 'general', 'jacky', 'PGHT', '1000', 701668744, 'jacky@gmail.com', '$2y$10$bAA5eGInWh9NsahCz07IWum9GiL2gOEeRmTV/FNriVC8PN08fM04q'),
(8, 'Physiotherapy', 'Elias', 'Sanatorium', '1000', 123456, 'elias@gmail.com', '$2y$10$eP04kRpKiOcJc.vn0RE6bOQn9nfVH4txq89iDwwaHzbjL5wx0Is6S');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsSchedule`
--

CREATE TABLE `doctorsSchedule` (
  `scheduleId` int(11) NOT NULL,
  `scheduleDate` date NOT NULL,
  `scheduleDay` varchar(100) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookavail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorsSchedule`
--

INSERT INTO `doctorsSchedule` (`scheduleId`, `scheduleDate`, `scheduleDay`, `startTime`, `endTime`, `bookavail`) VALUES
(3, '2019-05-07', 'Monday', '00:00:00', '23:59:00', 'available'),
(4, '2019-05-07', 'Monday', '00:00:00', '10:00:00', 'notavail'),
(5, '0000-00-00', 'Wednesday', '00:00:00', '19:00:00', 'available'),
(6, '2019-10-03', 'Monday', '00:00:00', '05:00:00', 'available'),
(7, '2019-05-12', 'Monday', '00:00:00', '11:00:00', 'available'),
(8, '2015-12-27', 'Monday', '00:00:00', '06:00:00', 'available'),
(9, '2019-05-16', 'Monday', '00:00:00', '23:59:00', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `description`, `stock`, `cost`) VALUES
(1, 'panadol', 'pain killer', 100, 5),
(2, 'paracetamol', 'pain killer', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `diseasename` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `age` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `patient_id`, `patientname`, `diseasename`, `date`, `time`, `age`) VALUES
(4, 6, 'len', 'cholera', '2019-05-30', '09:15:00', '18'),
(5, 7, 'liza', 'TB', '2019-05-29', '09:30:00', '20');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updationdate` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `studentstatus` int(11) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`id`, `fullname`, `address`, `gender`, `email`, `password`, `regdate`, `updationdate`, `age`, `studentstatus`, `salt`, `city`) VALUES
(13, 'odinga', '127', 'male', 'odinga@gmail.com', '$2y$10$qSjLO1RgTpkAmopjwID.seWvKcp1h4Q8UZEOKA1KVcsjRqzA6OSBa', '2019-06-04 13:44:03', '', '', 0, '', 'kisumu'),
(14, 'TY', '97', 'male', 'ty20@gmail.com', '$2y$10$7LhYHRa01jlYwIpjjhLQQePz13JOdfcEnG.26.D/pkMVPIzzORLGO', '2019-06-04 19:55:24', '', '', 0, '', 'NJORO'),
(17, 'johny', 'vihiga', 'male', 'johny@gmail.com', '$2y$10$/wdU5OGUj757Rmxye3lcdew7VzG1fVegU7wFd.8joAYM.NfFfT6qe', '2019-06-10 14:09:41', '', '', 0, '', 'kakamega'),
(18, 'brenda', '45', 'female', 'brendanyaswa@gmail.com', '$2y$10$AkAd1BMOHhyQOIw4udll9.GoZDC5vN5EYBgty/2v81VvXh1mDZp8m', '2019-06-22 18:57:38', '', '', 0, '', 'ki');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `docname` varchar(100) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `disease` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `docname`, `patientname`, `age`, `comment`, `disease`, `date`, `time`) VALUES
(15, '6', 'liza', '20', 'Take 2 * 3 doses of quinine', 'TB', '2019-05-30', '10:30:00'),
(16, 'voke', 'liza', '20', 'ertyu', 'TB', '2019-05-30', '11:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(2, 30, '58d55c7a5125506f25ff2e94954062f56d3fd6f679b820fe8a46d8e2a24e045c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsSchedule`
--
ALTER TABLE `doctorsSchedule`
  ADD PRIMARY KEY (`scheduleId`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctorsSchedule`
--
ALTER TABLE `doctorsSchedule`
  MODIFY `scheduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
