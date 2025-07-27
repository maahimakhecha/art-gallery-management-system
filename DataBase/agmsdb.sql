-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2024 at 04:12 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 987654331, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-12-29 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

DROP TABLE IF EXISTS `tblartist`;
CREATE TABLE IF NOT EXISTS `tblartist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext,
  `Award` mediumtext,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`ID`, `Name`, `MobileNumber`, `Email`, `Education`, `Award`, `Profilepic`, `CreationDate`) VALUES
(1, 'Samar Patil', 7979797979, 'samarpatil@gmail.com', 'Completed his fine arts from mit-wpu arts college.\r\nSpecialized in drawing, painting and ceramic.', 'Winner of Hugo Boss Prize in 2023\r\n', 'ecebbecf28c2692aeb021597fbddb174.jpg', '2022-12-21 13:31:25'),
(2, 'Maahi Makhecha', 3232323232, 'maahi@gmail.com', 'Completed her fine arts from isdi arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Ambani arts competition in 2023\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(3, 'Ananya Salunkhe ', 9696969696, 'ananya@gmail.com', 'Completed her fine arts nid gujrat\r\nSpecialized in painting, canvas, sketching and ceramic.', 'Winner of best designer under 20 \r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(4, 'Abhiraj Yadhav', 5656565656, 'abhiraj@gmail.com', 'Completed his fine arts from isdi arts college.\r\nSpecialized in painting, caricatures and abstract art.', 'Winner of Tom ford Prize in 2023.\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(5, 'Diya Parikh', 9191919191, 'diya@gmail.com', 'Completed her fine arts from dps fine arts college delhi.\r\nSpecialized in ceramic and design.', 'Winner of dps Prize of design in 2023.\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(6, 'Aastha Konde', 8181818181, 'aastha@gmail.com', 'Completed her fine arts from khs fine arts college.\r\nSpecialized in ceramic.', 'Winner of best ceramic design prize in 2023.', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(7, 'Manas Patil', 292929292, 'manas@gmail.com', 'completed Fine Arts from College of Art, New Delhi in 2022,\r\nSpecialized in printmaking and ceramic.', 'award-winning artist, and has received a scholarship from the Ministry of Culture, and Government of India in 2022 .\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(8, 'Pratham Jawalkar', 9999999999, 'pratham@gmail.com', 'Completed his fine arts from fc fine arts college.\r\nSpecialized in painting.', 'Winner of Young Artist Award in 2023.\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblartmedium`
--

DROP TABLE IF EXISTS `tblartmedium`;
CREATE TABLE IF NOT EXISTS `tblartmedium` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartmedium`
--

INSERT INTO `tblartmedium` (`ID`, `ArtMedium`, `CreationDate`) VALUES
(1, 'Wood and Bronze', '2022-12-22 04:57:04'),
(2, 'Acrylic on canvas', '2022-12-22 04:57:34'),
(3, 'Resin', '2022-12-22 04:58:00'),
(4, 'Mixed Media', '2022-12-22 06:09:12'),
(5, 'Bronze', '2022-12-22 06:09:35'),
(6, 'Fibre', '2022-12-22 06:09:53'),
(7, 'Steel', '2022-12-22 06:10:16'),
(8, 'Metal', '2022-12-22 06:10:35'),
(9, 'Oil on Canvas', '2022-12-22 06:11:31'),
(10, 'Oil on Linen', '2022-12-22 06:12:12'),
(11, 'Acrylics on paper', '2022-12-22 06:13:11'),
(12, 'Hand-painted on particle wood/MDF', '2022-12-22 06:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblartproduct`
--

DROP TABLE IF EXISTS `tblartproduct`;
CREATE TABLE IF NOT EXISTS `tblartproduct` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int DEFAULT NULL,
  `ArtType` int DEFAULT NULL,
  `ArtMedium` int DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `RefNum` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `RefNum`, `CreationDate`) VALUES
(2, ' Painting Test', '56x56', 'Landscape', 'Medium', 1, 4, 9, 200, 'It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.It is a painting of Radha Krishna.', 'c565ad988a4c6fc0a9f429af43c47cce1671771454.jpg', '48424793dc9ea732f6118d4ba4326509.jpg', '', '', '', 586429003, '2022-12-23 04:57:34'),
(3, 'Shiv Painting', '100X50 inches', 'Potrait', 'Large', 6, 4, 10, 350, 'It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', '', '', '', 686429002, '2022-12-23 04:59:42'),
(4, 'Eiffel Tower Sculpture', '45 inches tall', 'Landscape', 'Medium', 3, 1, 8, 500, 'This is a  Sculpture of Eiffel Tower which is made up of metal by Manas Patil', '508652faabdd333b34a0ce4a1dd443411671771753.jpg', '', '', '', '', 686429003, '2022-12-23 05:02:33'),
(5, 'Abstract Thoughts', '100x200', 'Landscape', 'Large', 4, 3, 9, 1200, 'Best suited for a large living space. By Abhiraj Yadhav', '7d108db512f6a6a929cd0d0ad3b593e81671772410.jpg', '', '', '', '', 586429004, '2022-12-23 05:13:30'),
(6, 'Krishna Serigraph', '100x200', 'Potrait', 'Medium', 3, 2, 9, 2000, 'This is a Serigraph Art piece made by Ananya Salunkhe', '8b652a760300aed0b953d1f2791546441710654593.jpg', 'Krishna-Series-ArtZolo-com-8498.jpg', '', '', '', 199211387, '2024-03-17 05:49:53'),
(7, 'Ancient View', '150x150', 'Landscape', 'Medium', 5, 2, 2, 1500, 'This is a Serigraph Art piece made by Diya Parikh', '41a2f86971639ddf4c21979d1e8a598b1710654764.jpg', '', '', '', '', 464897688, '2024-03-17 05:52:44'),
(8, 'Avatar of the south', '150x200', 'Potrait', 'Large', 1, 2, 2, 1700, 'This is a Serigraph Art piece made by Samar Patil', 'e6bf3848a1d7f563c72b41166f5c08e41710654923.jpg', '', '', '', '', 542791929, '2024-03-17 05:55:23'),
(9, 'Bird Queen ', '50x50', 'Landscape', 'Small', 2, 2, 2, 1000, 'This is a Serigraph art piece made by Maahi Makhecha', '2365725f639b6f02ec10dca7d6a041761710655034.jpg', '', '', '', '', 115883112, '2024-03-17 05:57:14'),
(10, 'Peacock Trails', '200x250', 'Potrait', 'Large', 8, 2, 2, 2500, 'This is a Serigraph art piece  made by Pratham Jawalkar.', '19cb416e258c8f03def79884157d81a81710655306.jpg', '', '', '', '', 620341616, '2024-03-17 06:01:46'),
(12, 'Stressed Man', '100x150', 'Landscape', 'Small', 7, 3, 4, 1000, 'This is a printed art piece made by Manas Patil', 'c9cad745729e1a0752994afce3bb0c9e1710656397jpeg', '', '', '', '', 415819430, '2024-03-17 06:19:57'),
(13, 'Abstract Lady', '150x150', 'Landscape', 'Small', 2, 3, 0, 1200, 'This is a printed art piece made by Maahi Makhecha', '36d613b5f6f13a7f9b2e5a7b656bc55f1710656486jpeg', '', '', '', '', 579530002, '2024-03-17 06:21:26'),
(14, 'Radha-Krishna ', '150x150', 'Landscape', 'Small', 1, 3, 4, 1200, 'This is a printed art piece made by Samar Patil', '8661c16ecb898df5eaeb3c998f7358e31710656570jpeg', '', '', '', '', 207748684, '2024-03-17 06:22:50'),
(15, 'Abstract Crow', '200x250', 'Potrait', 'Large', 1, 3, 0, 1500, 'This is a printed art piece made by Samar Patil', 'c0a5883fd55448d51d0274a69df2da791710656630.jpg', '', '', '', '', 366951705, '2024-03-17 06:23:50'),
(16, 'Tranquility', '150x200', 'Potrait', 'Medium', 3, 4, 9, 1800, 'This is a hand painted art piece made by Ananya Salunkhe', '318fb927bf136c27a35e4ec1aab9b46a1710656960jpeg', '', '', '', '', 171457010, '2024-03-17 06:29:20'),
(17, 'Dear ', '150x150', 'Landscape', 'Small', 2, 4, 2, 1500, 'This is a hand painted art piece made by Maahi Makhecha', 'ec6424f064c7815d8de6585f5948adae1710657050jpeg', '', '', '', '', 932569586, '2024-03-17 06:30:50'),
(18, 'Old trade ', '200x150', 'Landscape', 'Medium', 5, 4, 9, 2000, 'This is a hand painted art piece made by Diya Parikh', '432a9f8789d6d774b0e4db2884014e7e1710657168jpeg', '', '', '', '', 485564510, '2024-03-17 06:32:48'),
(19, 'Shivaji Maharaj Sculpture', '20 inches', 'Potrait', 'Small', 1, 1, 7, 1500, 'This is a Sculpture of Shivaji Maharaj made up of Steel by Samar Patil', 'c03e601bd0d2498c8768123f744bdbbe1710657641jpeg', '', '', '', '', 471865692, '2024-03-17 06:40:41'),
(20, 'Elephant Sculpture', '25 inches', 'Landscape', 'Medium', 5, 1, 8, 1500, 'This is a Sculpture of an African Elephant made up of Steel by Diya Parikh', 'e4121023aff8f6b0b111cf1ccddad8b91710657728jpeg', '', '', '', '', 497679044, '2024-03-17 06:42:08'),
(21, 'Sardar Patel Sculpture', '45 inches', 'Potrait', 'Large', 1, 1, 5, 3500, 'This is a Sculpture of Sardar Patel made up of pure Bronze by Samar Patil', '7cd17ceb206fb23f780059e17bfa389f1710657806.jpg', '', '', '', '', 423583693, '2024-03-17 06:43:26'),
(22, 'Greek Sculpture', '35 inches', 'Landscape', 'Medium', 1, 1, 6, 1500, 'This is a Sculpture of Greek Sculpture made up of Fibre by Samar Patil', '9953c62017bc2241eee8e8a3668c47d61713536638jpeg', '', '', '', '', 818212165, '2024-04-19 14:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

DROP TABLE IF EXISTS `tblarttype`;
CREATE TABLE IF NOT EXISTS `tblarttype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarttype`
--

INSERT INTO `tblarttype` (`ID`, `ArtType`, `CreationDate`) VALUES
(1, 'Sculptures', '2022-12-21 14:21:13'),
(2, 'Serigraphs', '2022-12-21 14:24:46'),
(3, 'Prints', '2022-12-21 14:25:00'),
(4, 'Painting', '2022-12-21 14:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
CREATE TABLE IF NOT EXISTS `tblenquiry` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EnquiryNumber` varchar(10) NOT NULL,
  `Artpdid` int DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CardId` (`Artpdid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `Artpdid`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(1, '230873611', 4, 'Anuj kumar', 'ak@test.com', 1234567890, 'This is for testing Purpose.', '2023-01-02 18:16:47', 'Answer', 'test purpose', '2023-01-01 18:30:00'),
(2, '227883179', 5, 'Amit Kumar', 'amitk55@test.com', 1234434321, 'I want this painting', '2023-01-02 18:42:42', 'Answer', 'testing purpose', '2023-01-02 18:43:16'),
(3, '416500912', 14, 'Pratham Jawalkar', 'pratham@gmail.com', 9999999999, 'hi', '2024-04-12 14:10:49', NULL, '', NULL),
(4, '810046128', 5, 'Pratham Jawalkar', 'pratham@gmail.com', 9999999999, 'Hello', '2024-04-12 14:14:51', NULL, '', NULL),
(5, '179828188', 6, 'Samar Patil', 'samarpatil@gmail.com', 7979797979, 'I would like to buy a panting please contact me', '2024-04-24 03:03:31', NULL, '', NULL),
(6, '853143716', 2, 'gh', 'hj@hj', 89, 'hhh', '2024-04-24 05:39:52', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">An art gallery is&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">an exhibition space to display and sell artworks</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. As a result, the art gallery is a commercial enterprise working with a portfolio of artists. The gallery acts as the dealer representing, supporting, and distributing the artworks by the artists in question.</span><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Plot 9, Koregoan Park, Pune, Maharashtra 411001&nbsp;', 'info@gmail.com', 1234567890, NULL, '10:30 am to 7:30 pm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
