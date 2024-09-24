-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 11:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filehandling`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(50) NOT NULL,
  `Tmp_Name` varchar(2552) NOT NULL,
  `Full_Path` varchar(255) NOT NULL,
  `File` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `Tmp_Name`, `Full_Path`, `File`, `uploaded_at`) VALUES
(1, 'C:xampp	mpphpC563.tmp', 'Screenshot 2024-09-23 101946.png', '1', '2024-09-24 08:27:26'),
(2, 'C:xampp	mpphp2F51.tmp', 'uploaded-images/Screenshot 2024-09-23 101946.png', 'Screenshot 2024-09-23 101946.png', '2024-09-24 08:33:21'),
(3, 'C:xampp	mpphpA67A.tmp', 'uploaded-cvs/Faham CV.pdf', 'Faham CV.pdf', '2024-09-24 08:37:08'),
(4, 'C:xampp	mpphp218E.tmp', 'uploaded-cvs/Faham CV.pdf', 'Faham CV.pdf', '2024-09-24 08:37:39'),
(5, 'C:xampp	mpphp8097.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:38:04'),
(6, 'C:xampp	mpphp80A8.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:38:04'),
(7, 'C:xampp	mpphp14CB.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:38:42'),
(8, 'C:xampp	mpphp14CC.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:38:42'),
(9, 'C:xampp	mpphp363F.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:38:50'),
(10, 'C:xampp	mpphp3640.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:38:50'),
(11, 'C:xampp	mpphp2D20.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:40:59'),
(12, 'C:xampp	mpphp2D21.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:40:59'),
(13, 'C:xampp	mpphp4596.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:42:11'),
(14, 'C:xampp	mpphp4597.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:42:11'),
(15, 'C:xampp	mpphpAF0C.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:43:43'),
(16, 'C:xampp	mpphpAF1C.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:43:43'),
(17, 'C:xampp	mpphp8643.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:44:38'),
(18, 'C:xampp	mpphp8644.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:44:38'),
(19, 'C:xampp	mpphp2DFF.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:45:21'),
(20, 'C:xampp	mpphp2E00.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:45:21'),
(21, 'C:xampp	mpphp755B.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:45:40'),
(22, 'C:xampp	mpphp755C.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:45:40'),
(23, 'C:xampp	mpphp9597.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 08:45:48'),
(24, 'C:xampp	mpphp9598.tmp', 'uploaded-cvs/1727080866883_API and OBS.docx', '1727080866883_API and OBS.docx', '2024-09-24 08:45:48'),
(26, 'C:xampp	mpphpD3B9.tmp', 'uploaded-cvs/HomeStyler Project Documentation.docx', 'HomeStyler Project Documentation.docx', '2024-09-24 09:04:38'),
(27, 'C:xampp	mpphpA185.tmp', 'uploaded-images/Flowchart.jpg', 'Flowchart.jpg', '2024-09-24 09:06:36'),
(28, 'C:xampp	mpphpA186.tmp', 'uploaded-cvs/HomeStyler Project Documentation.docx', 'HomeStyler Project Documentation.docx', '2024-09-24 09:06:36'),
(29, 'C:xampp	mpphpBD6C.tmp', 'uploaded-images/Flowchart.jpg', 'Flowchart.jpg', '2024-09-24 09:06:43'),
(30, 'C:xampp	mpphpBD6D.tmp', 'uploaded-cvs/HomeStyler Project Documentation.docx', 'HomeStyler Project Documentation.docx', '2024-09-24 09:06:43'),
(31, 'C:xampp	mpphp8B33.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 09:28:21'),
(32, 'C:xampp	mpphp8B34.tmp', 'uploaded-cvs/HomeStyler Project Documentation.docx', 'HomeStyler Project Documentation.docx', '2024-09-24 09:28:21'),
(33, 'C:xampp	mpphp67E9.tmp', 'uploaded-images/WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', 'WhatsApp Image 2024-09-23 at 2.38.03 AM.jpeg', '2024-09-24 09:29:17'),
(34, 'C:xampp	mpphp67EA.tmp', 'uploaded-cvs/HomeStyler Project Documentation.docx', 'HomeStyler Project Documentation.docx', '2024-09-24 09:29:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
