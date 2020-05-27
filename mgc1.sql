-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2020 at 12:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgc1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `name`, `email`, `activity`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hudson', 'ngetihudson@gmail.com', 'Created admin', '2020-02-01 06:44:14', '2020-02-01 06:44:14'),
(2, 1, 'Hudson', 'ngetihudson@gmail.com', 'Updated admin', '2020-02-01 06:49:56', '2020-02-01 06:49:56'),
(3, 1, 'Hudson', 'ngetihudson@gmail.com', 'Updated admin', '2020-02-01 06:50:08', '2020-02-01 06:50:08'),
(4, 1, 'Hudson', 'ngetihudson@gmail.com', 'Updated admin', '2020-02-01 06:56:08', '2020-02-01 06:56:08'),
(5, 1, 'Hudson', 'ngetihudson@gmail.com', 'Logged In', '2020-02-02 14:31:05', '2020-02-02 14:31:05'),
(6, 1, 'Hudson', 'ngetihudson@gmail.com', 'Updated password', '2020-02-02 14:31:41', '2020-02-02 14:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workPlace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `group_id`, `firstName`, `middleName`, `lastName`, `phone`, `email`, `location`, `workPlace`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sawarn', 'Singh', '', '254733738394', 'easternflourmillsltd@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:12', '2020-02-01 10:06:21'),
(2, 1, 'Boniface', 'Kavuvi', '', '254722649054', 'kavuvib@ymail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(3, 1, 'Anne', 'Kiusya', '', '254712529612', 'annekiusya2013@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(4, 1, 'Boniface', 'Musau', '', '254722760001', 'bonimumina@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(5, 1, 'Josephat', 'Mboya', '', '254722875176', 'vickymbo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(6, 1, 'Dr Susan', 'Musyoka', '', '254721873218', 'susanmmusyoka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(7, 1, 'Catherine', 'Mutanu', '', '254721203675', 'cthrnmtn33@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:51'),
(8, 1, 'Anthony', 'Musau', '', '254721219182', 'athonymusaui@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(9, 1, 'ALEX', 'Mbuvi', '', '254722301381', 'ambavi@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(10, 5, 'Josephat', 'Mboya2', '', '254722875170', 'vickymbo1@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(11, 5, 'Stephen', 'Mutuku', 'Musyoka', '254700000377', 'steve.botu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(12, 5, 'Faustine', 'Maithya', '', '254733768726', 'Maithyafaustine@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(13, 5, 'Boniface', 'Mumina', '', '254722760000', 'bonimumina1@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:13', '2020-02-01 10:06:21'),
(14, 5, 'Peter', 'Kimatu', '', '254721227004', 'kimatu444@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(15, 5, 'John', 'Kiondo', '', '254722742964', 'jkiondopro@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(16, 5, 'Susan', 'Musyoka', '', '254721873216', 'susanmusyoka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(17, 5, 'Bernard', 'Muithya', '', '254722299245', 'bernardmuithya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(18, 5, 'John', 'Masai', '', '254721838330', 'johnmasai@gmmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(19, 7, 'BENJAMIN', 'KAKUTI', 'KISILU', '254722844327', 'kakutifam@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(20, 2, 'BAHATI', 'MUTUA', '', '254722847351', 'bahatihides@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(21, 7, 'JENNIFER', 'MANGU', '', '254724236529', 'jenifermangu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(22, 7, 'GIDEON', 'MANGU', '', '254710159234', 'zamangu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(23, 7, 'WILLY', 'J', 'MUVEA', '254735626120', 'willy@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(24, 7, 'JST', 'TOM', 'MBALUTO', '254716956215', 'justicembaluto@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(25, 7, 'GIDEON', 'KAVITA', 'MUOKA', '254722612200', 'gmuoka@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:14', '2020-02-01 10:06:21'),
(26, 7, 'CHARLES', 'MALLEI', '', '254726783006', 'cmmallei42@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(27, 2, 'BENSON', 'KANUI', '', '254722848409', 'info@bkanui.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(28, 7, 'S.K.', 'THEURI', '', '254722301424', 'pashaenterprise@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(29, 7, 'COLLINS', 'MUTUKU', 'MUSYOKA', '254722615548', 'collinskaloki@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(30, 7, 'MUTUKU', 'MATIVO', '', '254722706120', 'mutukubm247@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(31, 2, 'ALI', 'MWANZI', '', '254722514967', 'alimalekya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(32, 7, 'MICHAEL', 'M', 'MUSAKI', '254721459528', 'mkmakenzi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(33, 2, 'ESTHER', 'MAKENZI', '', '254722801435', 'adocks11@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(34, 7, 'ENG.DAVID', 'MUTINDA', 'MUTUKU', '254722510059', 'david.mutuku@ymail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(35, 2, 'VERONICA', 'NDUVA', '', '254722847630', 'vnduva@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(36, 7, 'MUMO', 'MAKAU', '', '254724607156', 'makaumumo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:15', '2020-02-01 10:06:21'),
(37, 7, 'WAMBUA', 'MALINDA', '', '254721663030', 'wjmalinda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(38, 7, 'GREGORY', 'MUTUKU', 'NTHENGE', '254721408051', 'gnthenge05@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(39, 7, 'GEOFFREY', 'WAMBUA', 'KILONZO', '254721595526', 'thekyakahotel@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(40, 2, 'ENG. MAINGI', 'ENG. MAINGI', '', '254722232743', 'maingi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(41, 7, 'GRACE', 'MUTINDI', 'MAINGI', '254722892007', 'grace@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(42, 2, 'ANNE', 'KIUSYA', '', '254712529162', 'annekiusya12013@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(43, 7, 'CHARLES', 'KANYAA', '', '254722810701', 'ckanyaa@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(44, 7, 'DR. REUBEN', 'MUSYOKA', 'MUTISO', '254722831283', 'drmutiso@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(45, 7, 'BONIFACE', 'MWALIMU', '', '254722659381', 'bonifacemmwalimu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(46, 2, 'DARMARIS', 'MUTHEU', 'MULI', '254725999574', 'mulidarmaris@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(47, 2, 'MARY', 'MBIU', 'MUTING\'A', '254722418880', 'marymumbua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(48, 7, 'JOSEPH', 'N', 'NGUGI', '254722828085', 'josengugis@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(49, 2, 'MESHACK', 'MUSYOKI', 'MUTUNGI', '254722839166', 'musyokimutungi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(50, 2, 'FLORENCE', 'KALOO', 'MWOVA', '254722842587', 'flomwova@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(51, 2, 'TITUS', 'MUTUA', 'KANGANGI', '254722118092', 'tiekangs@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(52, 7, 'SETH', 'KIMEU', 'JOSEPH', '254727974983', 'mosoptical@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(53, 7, 'PETER', 'KITUKU', 'WAMBUA', '254725708111', 'peterkwambua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(54, 7, 'DOMINIC', 'MUSYOKI', 'MULYUNGI', '254721879938', 'mulyungidominic@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:16', '2020-02-01 10:06:21'),
(55, 7, 'MUSEMBI', 'MUMO', '', '254722720907', 'musembi.mumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(56, 7, 'WANJIRU', 'MUSEMBI', '', '254722554678', 'nduati.wanjiru@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(57, 7, 'JAMES', 'MUOKI', '', '254722336719', 'jamesmuoki96@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(58, 7, 'PAUL', 'MUSEMBI', 'KATUKU', '254722891658', 'paulkatuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(59, 2, 'SIMON', 'MUSYOKI', 'MWANZIA', '254700466787', 'simon@tagkenya.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(60, 7, 'ERIC', 'MUSEMBI', 'MWANZIA', '254722830627', 'eric@tagkenya.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(61, 7, 'DR. MICHAEL', 'KAMALA', '', '254722719426', 'musyokikamala@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(62, 2, 'PRAVIN', 'PARMA', '', '254722519223', 'parmarshobha@ymail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(63, 7, 'DR.JOSEPH', 'MBITHI', 'KIVILU', '254725715706', 'jmkivilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(64, 2, 'SIMON', 'HALONDA', '', '254721297450', 'shalonda@kcb.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(65, 7, 'PETER', 'KAVOO', 'KILONZO', '254722313915', 'pkkilonzo65@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(66, 7, 'DAVID', 'WAMBUA', 'MILA', '254722873670', 'damillah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(67, 7, 'HO. KIOKO', 'KIOKO', '', '254722707475', 'gklerge@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(68, 7, 'RAPHAEL', 'M', 'THYAKA', '254720627003', 'thyakamraphael@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(69, 7, 'BONFACE', 'MUMINA', '', '254726760001', 'bonimumina@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(70, 7, 'DAVID', 'M', 'MASAI', '254722880468', 'ndovubuilders@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(71, 7, 'JOSEPH', 'GITHEHU', '', '254715534416', 'josephgithehu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(72, 2, 'IRENE', 'NZISA', '', '254722823952', 'nzisai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(73, 2, 'NDUKU', 'WAMAKAU', '', '254722306525', 'nduku.wamakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(74, 7, 'JOSEPH', 'MUTHAMA', 'WAMAKAU', '254722359569', 'joewamakau@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(75, 2, 'COSMAS', 'MAWEU', '', '254722752093', 'cjmmaweu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(76, 7, 'STEPHEN', 'NDOLO', '', '254722518234', 'ndolo@aviationsolutions.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:17', '2020-02-01 10:06:21'),
(77, 7, 'HARRIS', 'W', 'NZIOKI', '254733222060', 'harrisnzioki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(78, 7, 'PURITY', 'KIOKO', '', '254713028131', 'purity.musyoka@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(79, 2, 'AGNES', 'GITHINJI', '', '254704544611', 'agnes.njambi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(80, 2, 'GITHINJI', 'MUREITHI', '', '254724944042', 'githinjidm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(81, 2, 'ABDALLA', 'MOHAMED', '', '254721390042', 'vekaria.auto@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(82, 2, 'DAMARIS', 'WAVINYA', 'MUTUA', '254721162603', 'damariswavinya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(83, 7, 'LEONARD', 'KALI', '', '254722702849', 'leonprivate@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(84, 7, 'MWONGELI', 'NZIOKA', '', '254722250570', 'mwongelinzioka@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(85, 7, 'ROBERT', 'NZIOKI', '', '254722707498', 'nziokir@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(86, 2, 'GIBSON', 'MURIMI', 'MURAGE', '254724504637', 'muragegib@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(87, 7, 'STEVE', 'WAMBUA', 'MUSYIMI', '254728866166', 'wambuah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(88, 7, 'WILLY', 'MUTINDA', 'MUTISO', '254720936175', 'willymutindamutiso@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(89, 2, 'MAURICE', 'WAFULA', 'WAMALWA', '254716333876', 'mauricewamalwa@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(90, 7, '..DAN', 'KIOKO', '', '254722510453', 'kalokikioko@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(91, 2, 'ALBANOUS', 'NZOMO', '', '254722712182', 'albanousn@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(92, 2, 'ALFRED', 'Kokeyo', 'MBINYO', '254727412060', 'alfred@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(93, 7, 'BENJAMIN', 'Fred', '', '254721255894', 'benkhamun@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(94, 7, 'BENJAMIN', 'MUTHOKA', 'MUTHOKA', '254717560707', 'bmsatellite@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(95, 7, 'DAN', 'MUTISO', '', '254722314344', 'danmutiso2001@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:18', '2020-02-01 10:06:21'),
(96, 7, 'DEE', '', '', '254726607900', 'ithiangoma@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(97, 7, 'BONIFACE', '', '', '254763109177', 'boniface.kyengo@equitybank.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(98, 7, 'CLEOPHAS', 'MAKAU', 'MAKAU', '254722734214', 'cndmakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(99, 7, 'STEPHEN', 'MUTUKU', 'MAKAU', '254726907213', 'stephenmutuk@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(100, 2, 'KAMANZA', '', '', '254724248855', 'kamanza@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(101, 7, 'CHARLES', 'MUTHIANI', 'NDINGE', '254722881842', 'cndinge@fhok.org', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(102, 7, 'ALEX', 'MUINDI', '', '254727521887', 'alex.muindi@wfp.org', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(103, 7, 'DR.KEN', 'NGUMBAU', '', '254722561444', 'dr.kngumbau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(104, 7, 'JOSEPH', 'MUOKI', 'KISOLO', '254722374181', 'joe.kisolo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(105, 7, 'TIMOTHY', 'KIBET', 'ROTICH', '254722632845', 'tkibet@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(106, 7, 'MERCY', 'WACERA', 'KARANJA', '254722770058', 'macywacera@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(107, 7, 'JENNIFER', 'NGURE', '', '254722703040', 'jenniferngure@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(108, 7, 'DANIEL', 'SALATON', '', '254721329873', 'salatonix@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(109, 2, 'V', 'K', 'NAIR', '254733891100', 'nairvkp@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(110, 7, 'BETTY', 'NDUKU', 'MBITHI', '254722397276', 'bettymbithi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(111, 7, 'JOHN', 'MAINGI', '', '254780696929', 'john@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(112, 2, 'GEORGE', 'KITAR', 'KATHAE', '254722773702', 'gkathae@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(113, 2, 'HASTINGS', 'KYALE', 'MULI', '254722511592', 'kyale.muli@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(114, 2, 'CHRISTOPHER', 'KIAGIRI', 'GITAU', '254733733285', 'ckiagiri@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(115, 7, 'JENNIFER', 'NDUKU', 'MBATI', '254723007013', 'jennifermbati@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(116, 2, 'FRANK', 'MUTUA', '', '254722127720', 'mutuaf@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:19', '2020-02-01 10:06:21'),
(117, 2, 'RUTH', 'MWENDE', '', '254722251657', 'squash28@hotmail.ke', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(118, 2, 'REUBEN', 'JUMA', 'ONUNGA', '254721560506', 'onungajuma@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(119, 7, 'MARY', 'MUMO', '', '254733966327', 'lukundo.mumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(120, 7, 'TITO', 'MUSYOKA', 'KITULU', '254722594904', 'tkmusyoka@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(121, 2, 'KATUMO', 'KATUMO', '', '254722942520', 'katumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(122, 2, 'ROY', '', 'MUTISYA', '254726610514', 'roykieti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(123, 7, 'FRED', 'FRED', '', '254722310919', 'alfred5@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(124, 7, 'PAUL', 'MUINGAI', '', '254722858523', 'mungai.paul@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(125, 7, 'ALEX', 'MAINGI', '', '254722306255', 'alex@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(126, 7, 'PETER', 'KIITI', 'KIITI', '254700025080', 'peterkiiti2013@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(127, 2, 'PROF. KENNETH', 'MAVUTI', '', '254721609493', 'kenmavuti22@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(128, 7, 'ANDREW', 'NDOLO', '', '254723919485', 'ndolandolo@peakshowcase.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(129, 7, 'MUSYOKA', '', 'KALONZO', '254711995867', 'skmusyoka@musyokamurambi.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(130, 7, 'FRANCIS', 'NGUNGA', '', '254722891657', 'francisngunga003@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(131, 7, 'PETER', 'MUTING\'A', '', '254722293567', 'peter@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(132, 2, 'ENG. ELIJAH', 'MBATHA', 'KITHIMBA', '254725777588', 'emkithimba@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(133, 2, 'JOYCE', 'MBITHE', '', '254722300001', 'joyce@gmail', 'MACHAKOS', '', '2020-02-01 09:12:20', '2020-02-01 10:06:21'),
(134, 7, 'MICHAEL', 'KAREKO', 'GATERE', '254722519149', 'kareko.gatere@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(135, 7, 'FRANCIS', 'SINGH', '', '254728665306', 'francismusyimimuia@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(136, 7, 'BEN', 'NYAMONGO', '', '254722415646', 'nyamongo61@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(137, 2, 'KATHYINDI', 'MUSEE', 'MUSILI', '254725444978', 'itothyaagenciesltd@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(138, 7, 'MICO', 'NZIVU', 'KIOKO', '254722256704', 'countrywideplant@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(139, 2, 'ANTHONY', 'MOIRE', '', '254722526810', 'moire@tmp-consult.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(140, 7, 'STEPHEN', 'MICHAEL', 'TANKARD', '254714647914', 'stevetankard@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(141, 2, 'EUNICE', 'WANZA', 'KURIA', '254722818855', 'ewkuria@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(142, 7, 'DAVID', 'T', 'MUMO', '254722895365', 'david@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(143, 2, 'BEATRICE', 'MBETE', '', '254722845273', 'beatricemusyoki@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(144, 7, 'DR.PAUL', 'MUINDI', 'MBANDI', '254714007209', 'pmbandi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(145, 7, 'LEONARD', 'MUNYAO', 'KAMBA', '254733147278', 'leonard@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(146, 7, 'PST JUDAH', 'KALINGA', '', '254723690676', 'judahkalingajk@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(147, 2, 'WAVINYA', 'KIAGIRI', '', '254721608313', 'wavinya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(148, 7, 'MULOMBA', 'MUMINA', '', '254710501719', 'mumina@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(149, 7, 'RUTH', 'MWONGELI', 'MUNYAO', '254711117011', 'munyaoruth@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(150, 2, 'KELI', 'KIILU', '', '254724255544', 'kkiili@crsolutions.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(151, 2, 'BONNER', 'JAMES', 'HOLIDAY', '254714853823', 'jholidayb@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(152, 7, 'MOSES', 'MWENDWA', 'KILONZO', '254705798641', 'moses.mkilonzo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(153, 7, 'ENG. MATHEKA', '', '', '254722282474', 'titusmatheka@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(154, 7, 'KIMANZI', 'KYALO', '', '254721739066', 'kimanzik@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:21', '2020-02-01 10:06:21'),
(155, 2, 'CLAUDIA', 'SYOMBUA', '', '254723763306', 'syombua444@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(156, 7, 'JOHN', 'MUTETI', '', '254713581762', 'john1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(157, 2, 'JAMES', 'KYANIA', 'MULWA', '254722826002', 'easyreach641@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(158, 2, 'ANNEST', 'MWANZA', '', '254706717073', 'annest@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(159, 7, 'JENNIFER', 'ITUMBI', '', '254723233763', 'jenwambua@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(160, 7, 'CHARLES', 'WAMBUA', 'MUSAU', '254711248810', 'charles.musau@barclays.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(161, 2, 'PHILIP', 'TILLEY', '', '254725777399', 'philtilley0@gmail.colm', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(162, 7, 'JANE', 'MUTULI', 'WAMBUA', '254707175686', 'wambuaj2@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(163, 7, 'JOHN', 'KAVILA', 'KWINGA', '254703818955', 'kavila.kwinga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(164, 7, 'PETER', 'MWENDWA', 'MALONZA', '254722724195', 'malonzapeter@ymail.colm', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(165, 7, 'JOSEPH', 'KOMBO', '', '254721589517', 'komboj@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(166, 7, 'VICTOR', 'MUTWII', '', '254728096373', 'victormutwii2014@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(167, 7, 'FIDELIS', 'MULI', 'KAVITA', '254722348486', 'fmuli@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(168, 2, 'KIMANI', 'M.', 'J', '254722717202', 'kimanimj@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(169, 7, 'PETER', 'MBAGE', '', '254721959068', 'mbagepg@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(170, 2, 'MARK', 'NYABERI', '', '254711237237', 'mnyaberi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(171, 7, 'DANIEL', 'GITAU', 'MBAGE', '254721257339', 'danmbage@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(172, 7, 'MONICA', 'M', 'MUTUKU', '254722632789', 'muenimutuku@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(173, 2, 'JOHNSTONE', 'KITUA', 'MWINZI', '254726815405', 'johnstonemwinzi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(174, 7, 'JOSEPH', 'MUOKI', 'KOMU', '254724231958', 'komusingano@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:22', '2020-02-01 10:06:21'),
(175, 7, 'HENRY', 'MUOKI', '', '254735736717', 'hkiattu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(176, 2, 'JENIFER', 'KIATTU', '', '254736211915', 'jsompoika@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(177, 7, 'TIMOTHY', 'KIATTU', '', '254722665885', 'timothy.ruhiu@eapcc.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(178, 7, 'JANE', 'RUHIU', '', '254722254364', 'mbenyaj@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(179, 2, 'DR PETRONILLA', 'MBENYA', 'MATHOOKO', '254722895288', 'pmathooko@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(180, 7, 'JOSEPH', 'MBATHA', 'WAMBUA', '254722286292', 'joseph@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(181, 2, 'DR JOSEPH', '', 'MATHOOKO', '254722866991', 'mathookojk@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(182, 7, 'DANIEL', 'KIILU', '', '254722833193', 'musyakiilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(183, 2, 'JONATHAN', '', '', '254726031950', 'jonathan@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(184, 2, 'MARK', '', 'MAUNDU', '254722977644', 'marksafari@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(185, 2, 'MUEMA', '', '', '254722529260', 'muema.kitulu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(186, 7, 'TIMOTHY', '', 'MUSAU', '254722607014', 'tmusau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(187, 2, 'VICTORIA', '', '', '254722724609', 'vmullu@kcb.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(188, 7, 'HON BERNARD', '', '', '254723907718', 'bmmungata@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(189, 2, 'ELIZABETH', '', '', '254711782423', 'schoolofmanagement.tala@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(190, 7, 'RAPHAEL', '', '', '254722391938', 'kisaviraphael@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(191, 7, 'RODAH', 'N', 'MUINDI', '254720693557', 'muindirodah@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(192, 7, 'CHARLES', 'WAMBUA', '', '254722371382', 'charles@wambua.me.ke', 'MACHAKOS', '', '2020-02-01 09:12:23', '2020-02-01 10:06:21'),
(193, 2, 'JOEL', 'KIILU', '', '254722302238', 'joelkiilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(194, 7, 'BENJAMIN', 'K', 'KIBIKU', '254722827652', 'monte2lisa@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(195, 7, 'SIDNEY', 'SHILAKO', '', '254722751532', 'sshilako@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(196, 2, 'SHIRO', 'MOGENI', '', '254727321551', 'hmogeni@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(197, 7, 'NDOLO', 'KIOKO', 'MUSYIMI', '254722567386', 'nkatangi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(198, 7, 'JANE', 'JERRY', 'KIOKO', '254725651991', 'jane.kadendulah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(199, 2, 'DAMARIS', 'MURINGI', '', '254722230237', 'dmgathiti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(200, 7, 'JONES', 'NZAU', '', '254722415533', 'jones@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(201, 7, 'JACKSON', 'NZIOKI', 'PAUL', '254726943275', 'paul@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(202, 7, 'JOELEX', 'ORORA', '', '254722793933', 'joelorora2014@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(203, 7, 'JOSEPH', 'NGOVI', 'NZAU', '254774326969', 'ngovinzau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(204, 2, 'ERIC', 'MUTING\'A', '', '254722963297', 'e.mbiu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(205, 7, 'DANIEL', 'MUNYAO', 'MBITHI', '254720993366', 'dmunyao@transoniclogistics.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(206, 2, 'JEREMIAH', 'KITHEKA', 'MUSUVA', '254721511522', 'jeremusuva@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(207, 2, 'CHRISTINE', 'KAWAI', 'MUSUVA', '254724061399', 'cmusuva@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(208, 7, 'ABED', 'MAKAU', 'KOLI', '254722881002', 'amakaukoli@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(209, 7, 'MARY', 'NZAU', '', '254722724675', 'mary@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(210, 7, 'FRANCIS', 'MWANZIA', 'KATIKU', '254725087708', 'mccatiku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(211, 2, 'GEOFFREY', 'KIMANI', 'KIRIHA', '254714902335', 'gkiriha@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(212, 7, 'PETER', 'MUTULU', '', '254727796634', 'mutulupeter@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(213, 7, 'SAMSON', 'WAMBUA', 'KITONYI', '254722373263', 'grand_kitsam@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:24', '2020-02-01 10:06:21'),
(214, 7, 'DAVID', 'MWANGANGI', 'JOHN', '254721365814', 'davekoinange@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(215, 7, 'MARY', 'NTHENYA', 'MUVEA', '254714356648', 'mary1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(216, 7, 'MICHAEL', 'MUSYOKA', '', '254711727395', 'mmichaelmuya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(217, 7, 'JOE', 'KALOKI', 'KITAKA', '254712325772', 'joekaloki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(218, 7, 'CAROL', 'MUTUNG\'A', 'KARIUKI', '254720808848', 'cmkariuki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(219, 2, 'HON. FRANCIS', 'W', 'MALITI', '254720430798', 'francmaliti@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(220, 7, 'BEATRICE', 'MUTUKU', '', '254723910646', 'bettymutuku44@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(221, 2, 'MAURICE', 'MUTHAMA', '', '254722705756', 'maurice.muthama@barclays.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(222, 7, 'MARTIN', 'MUINDI', '', '254722351413', 'martin.muindi@oilibya.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(223, 7, 'ANTHONY', 'MAINGI', 'WAMBUA', '254710779620', 'tecton001@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(224, 7, 'MBAYAH', 'CHARLES', '', '254722491073', 'jomodaelectrical@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(225, 7, 'DAVID', 'KIMANTHI', '', '254724945070', 'davidkimanthi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(226, 2, 'MORRIS', 'NJUE', '', '254721593971', 'mgnjue@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(227, 2, 'NAOMI', 'MUTIE', '', '254725153190', 'mutienaomi699@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(228, 2, 'DENNIS', 'MULI', 'MUSYOKI', '254733684447', 'musyoki_d@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(229, 7, 'LARRY', 'WAMBUA', '', '254722527251', 'lwambua3@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(230, 2, 'SHAFIQ', 'SUNDERJI', '', '254720290429', 'shafiqsunderji@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(231, 7, 'JOSEPH', 'MUTUKU', 'MUIA', '254722858115', 'joseph5@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(232, 2, 'THOMAS', 'KIMANI', 'KOGIE', '254726323434', 'tkimani66@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(233, 7, 'KILONZO', 'KANANDA', '', '254720263823', 'jkananda2002@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(234, 7, 'ALEXANDER', 'NDOLO', '', '254713038630', 'alex7ndolo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(235, 7, 'DOMINIC', 'MUKABI', 'MWIHIA', '254721632374', 'dominic.mwihia@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(236, 7, 'PENINAH', 'KIOKO', '', '254732600456', 'penina@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:25', '2020-02-01 10:06:21'),
(237, 7, 'ANTONY', 'MUTUA', 'MUSAU', '254700456090', 'tmmusau.tm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(238, 7, 'JULIUS', 'SAKAYO', '', '254710885539', 'mbinyah2000@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(239, 7, 'JOSEPH', 'M.', 'KAVIVYA', '254733770315', 'josephkavivya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(240, 2, 'JOSEPH', 'K', 'MUCHIGI', '254722524814', 'fmuchigi4@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(241, 7, 'PETER', 'HENIA', 'WAWERU', '254722321030', 'peter5@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(242, 7, 'PAUL', 'MSAVA', 'MUTWII', '254722453455', 'pmsava@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(243, 2, 'ONSERIO', 'NYAMWANGE', '', '254722255279', 'onserion@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(244, 7, 'SOLOMON', 'NDUNDA', '', '254722755634', 'solondunda@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(245, 7, 'TABITHA', 'NTHENYA', 'MAKAU', '254722707181', 'tabbymakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(246, 7, 'SAMUEL', 'KAMAU', 'KANG\'ETHE', '254720638788', 'njatha.samuel@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(247, 2, 'JOSEPH', 'MUSAU', 'KALUNDE', '254733812748', 'musau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(248, 7, 'FRANCIS', 'MULU', '', '254722232728', 'fmuluadv@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(249, 7, 'HON.JOSEPH', 'MUNYAO', '', '254711860097', 'joseph1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(250, 2, 'ALPHONCE', 'MUEMA', '', '254715456318', 'ammbindyo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(251, 7, 'BONIFACE', 'M', 'NGEWA', '254727136124', 'bonifacengewa@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(252, 2, 'DAPHNE', 'N.', 'MUSYIMI', '254721209008', 'bwdaphne@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(253, 7, 'FRANCIS', 'M', 'MBINDYO', '254723713192', 'francis@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(254, 7, 'SAM', 'KONA', '', '254722201911', 'esam.kona@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(255, 2, 'LYDIA', 'OBONYO', 'OTIENO', '254722712382', 'lbonzie@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:26', '2020-02-01 10:06:21'),
(256, 7, 'PETER', 'MWENDA', 'ITUMBIRI', '254721280103', 'mwendapai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(257, 7, 'PAUL', 'M', 'KYENGO', '254722644547', 'pmkyengo12@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(258, 2, 'GILBERT', 'K', 'MUTULU', '254722705453', 'gilbert@cfg.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(259, 2, 'JUSTUS', 'KASIVU', '', '254722982632', 'jmkasivu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(260, 7, 'DANIEL', 'MBUVI', 'MAVINDU', '254722718867', 'mavindudmm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(261, 7, 'GEORGE', 'NDOLO', 'MUTUA', '254721556655', 'george.mutua@housing.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(262, 7, 'MUTISO', 'MAINGI', '', '254719687210', 'mutisono6@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(263, 7, 'ANTONY', 'MUINDI', '', '254718442490', 'mbuve@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(264, 7, 'ERIC', 'MUTUKU', '', '254720561146', 'eric@zalego.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(265, 2, 'JAPHETH', 'MUTUA', 'MUSANGI', '254726580464', 'jmutua74@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(266, 2, 'GAVIN', 'MOLLOY', '', '254792478058', 'gavin.molloy@lukenya.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(267, 2, 'BARTONJO', 'CHESAINA', '', '254722707071', 'chescokenya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(268, 7, 'FRED', 'KILONZI', '', '254722875810', 'fredkilonzi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(269, 2, 'SAMMY', 'MULWA', 'WAMBUA', '254725044014', 'sammymulwad@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(270, 7, 'LARRY', 'NGALA', '', '254722805467', 'larryngala@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:27', '2020-02-01 10:06:21'),
(271, 7, 'JUSTICE', 'PHILIP', 'WAKI', '254728727757', 'judgewaki@africaonline.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(272, 7, 'KAMENE', 'NIJHOF', '', '254717944700', 'nijhofkamene@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(273, 7, 'KYALO', 'MUINDI', '', '254733625891', 'mbkyalo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(274, 7, 'STELLA', 'NZIOKI', '', '254722857194', 'nzioki.stella@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(275, 7, 'JOSEPH', 'NZIOKI', '', '254716568991', 'kiokoj@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(276, 2, 'MUTINDA', 'MUTUKU', '', '254724848182', 'mutuku2002@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(277, 7, 'DAVIS', 'MUOKI', 'NYAMU', '254722703352', 'dmuokinyamu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(278, 2, 'JOSEPHINE', 'MBULA', 'MULWA', '254728431111', 'josephine@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(279, 2, 'NGILA', 'KIMOTHO', '', '254710477122', 'ngilak@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(280, 2, 'PATRICK', 'KINYUA', 'MBOGO', '254720701819', 'patrickkinyua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(281, 2, 'SHARON', 'JUMA', '', '254720808879', 'sharonjuma629@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:28', '2020-02-01 10:06:21'),
(282, 2, 'JAMES', 'MUEMA', '', '254727915732', 'jakamuc2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(283, 2, 'CELESTINE', 'OMUSE', 'DISMAS', '254724810846', 'celestineomuse@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(284, 7, 'CAROLYN', 'MWONGELI', 'MUITHYA', '254732048842', 'info@sbaacademy.ac.ke', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(285, 2, 'EMMANUEL', 'WAMBUA', 'KITUKU', '254722874998', 'wambuak@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(286, 7, 'PATRICIA', 'MWETHYA', 'MUTISO', '254721739774', 'patriciamutiso@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(287, 7, 'JULIUS', 'KOMBO', '', '254722521289', 'julius@hvpskenya.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(288, 2, 'IRENE', 'MBUVI', '', '254726266260', 'ingusye@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(289, 2, 'ERASTUS', 'THUO', 'KAMAU', '254733902635', 'drthuok@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(290, 7, 'NICODEMUS', 'MASAKA', '', '254729216680', 'nmmasaka08@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(291, 7, 'HARRIET', 'K P', 'KATUKU', '254721318727', 'harrietkatuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(292, 7, 'EDWARD', 'MBINDYO', 'KIMUNDUU', '254721366418', 'mbindyoedward@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(293, 7, 'DANIEL', 'MAHINDA', 'MWANGI', '254721600946', 'mahinda.daniel@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(294, 2, 'ELIZABETH', 'KAVUU', '', '254720860809', 'elizabethkiilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:29', '2020-02-01 10:06:21'),
(295, 7, 'JAMES', 'MUITHYA', 'KILONZO', '254733614920', 'jamesmuithyakilonzo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(296, 2, 'ESTHER', 'NDULU', 'MUTUKU', '254722244327', 'esthermutuku@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(297, 2, 'HON. GRACE', 'MWEWA', '', '254722443652', 'gmaliti2003@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(298, 2, 'FRANCISCA', 'SYOMBUA', 'MAUNDU', '254720031798', 'maundu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(299, 7, 'KIMANZI', 'MUTHENGI', '', '254733744304', 'kimanzix@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(300, 2, 'DR. CYRUS', 'KARUGA', '', '254722299425', 'gakuokaruga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(301, 7, 'JOHN', 'GITHINJI', '', '254723343245', 'jgnjoka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(302, 2, 'THOMAS', 'MUTHENYA', 'MUTUA', '254729064185', 'thomasmuthenya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(303, 7, 'KENNETH', 'W', 'NDERITU', '254721687189', 'nderitsk@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(304, 2, 'PROF. PRISCA', 'TUITOEK', '', '254711801005', 'pjktuitoek@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(305, 7, 'STANLEY', 'MUIA', 'MUSEMBI', '254724964150', 'muiastanley@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(306, 2, 'JOE', 'MUTUKU', '', '254715356095', 'joe.mutuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(307, 2, 'SHEIDA', '', '', '254722341480', 'sheida5000@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(308, 2, 'LEAH', 'WAMBURA', 'KIMATHI', '254722651033', 'leahkimathi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(309, 2, 'WINFRED', 'MBINYA', 'SILA', '254725405050', 'winiesila@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(310, 7, 'TIMOTHY', 'WANJAU', 'MAINA', '254722585854', 'timwanjau@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(311, 2, 'MRS JOYCE', 'NZOKA', '', '254710453578', 'joyce2@gmail', 'MACHAKOS', '', '2020-02-01 09:12:30', '2020-02-01 10:06:21'),
(312, 2, 'MOHAMED', 'ABU', 'SOMO', '254722234421', 'masomo.mas@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(313, 2, 'ESHA', 'OMAR', '', '254723455291', 'eshaomar7528@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(314, 2, 'JONAH', 'KIPLIMO', 'KIRUI', '254723565754', 'kiruijonah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(315, 7, 'JOHN', 'MUSYIMI', '', '254728290302', 'jeycomj@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(316, 2, 'ISAAC', 'K', 'ALIMAA', '254715888889', 'isaacalimaa@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(317, 2, 'MAGUT', 'GILBERT', '', '254722385666', 'gilbertmagut@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(318, 2, 'LYDIA', 'NGIMA', 'KIMONDO', '254722817725', 'lydiakimondo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(319, 7, 'BEN', 'MUTISYA', '', '254722721152', 'info@nikifarmcare.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(320, 2, 'PATRICKY', 'NYARIKI', '', '254722732236', 'patrickkerongo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(321, 2, 'HON PETER', 'KAINDI', '', '254727415566', 'p.kaindi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(322, 2, 'GILBERT', 'N', 'MUTUKU', '254722799041', 'mutuku.gilbert@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(323, 7, 'ALEX', 'KIOKO', 'MASAI', '254722895527', 'alexkioko10@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:31', '2020-02-01 10:06:21'),
(324, 2, 'JOSEPH', 'M', 'MUTISYA', '254722712149', 'jmmutisya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(325, 2, 'MAUREEN', 'KATUNGE', 'KIMEU', '254711921505', 'maureenkimeu76@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(326, 2, 'DOROTHY', 'WAYUA', '', '254722883905', 'makaudorothy20@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(327, 2, 'KEVIN', 'NDONYE', '', '254722822796', 'kevin.ndonye@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(328, 7, 'JANE', 'KILONZO', '', '254722552087', 'jane.kilonzo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(329, 7, 'JANE', 'WANJIRU', 'MWANGI', '254728029301', 'jane@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(330, 2, 'WILSON', 'K', 'WAMBUA', '254714693078', 'wilsonwambua2015@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(331, 2, 'VINCENT', 'NGUNDI', '', '254722657670', 'vincent@ngundi.me.ke', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(332, 7, 'ANTONY', 'MALUTI', 'MALUTI', '254722374231', 'anzamu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(333, 2, 'WINNIE', 'NZAMU', '', '254721348051', 'winnienzamu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(334, 7, 'FRANCIS', 'NJERU', 'BOCO', '254714797500', 'bonjeru58@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(335, 7, 'NICODEMUS', 'MAINGI', '', '254721499437', 'nicomaingi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:32', '2020-02-01 10:06:21'),
(336, 7, 'CAROLINE', 'MAINGI', '', '254721298795', 'carolmaingi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(337, 7, 'COL', 'MBITHI', '', '254724331198', 'mbithirm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(338, 2, 'LAWRENCE', 'NGOVI', '', '254725937234', 'lngovi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(339, 2, 'JUSTUS MUTISYA', '', '', '254710258950', 'mutisya@technologybechmark.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(340, 7, 'JANE', 'MUTINDI', 'KIITI', '254711565177', 'jmutindi2000@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(341, 7, 'MARIANNE', 'KILONZI', '', '254722666995', 'marianne.nduta@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(342, 2, 'GEORGE', 'KIMEU', '', '254722510869', 'gmkimeu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(343, 7, 'BEN', 'KATUNGI', '', '254722700418', 'bmkatungi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(344, 7, 'TOM', 'MUTEI', '', '254721262747', 'tmbonge@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(345, 7, 'VICTOR', 'WAMAKAU', '', '254720838685', 'vwamakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(346, 2, 'OLIVER', 'NZEKI', 'MUNYAKA', '254721557265', 'olivermunyaka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(347, 2, 'ROSEMARY', 'MAITHA', '', '254722504405', 'musaurosemary@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(348, 7, 'JOHN', 'ITAMBO', 'WAMBUA', '254726506510', 'jiwambua@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:33', '2020-02-01 10:06:21'),
(349, 7, 'CHARLES', 'M', 'MUTUNGA', '254722403899', 'mutungaceng@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(350, 7, 'JANE', 'WAMBUI', '', '254722308282', 'janewambui013@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(351, 7, 'SALLY', 'NDUKU', 'MUTISO', '254722808417', 'snmutiso@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(352, 2, 'BENSON', 'MBATI', '', '254722307988', 'bkmbati@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(353, 2, 'ANTHONY', 'NDETTO', '', '254722522169', 'tonyndetto2013@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(354, 7, 'MATHEW', 'MBINDA', 'MUTISO', '254733855372', 'mathewmutiso81@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(355, 2, 'JOSPHINE', 'NDINDA', 'KITETA', '254722518986', 'j.ndinda@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(356, 7, 'JOHN', 'MWANGI', 'MUCHIRI', '254728029300', 'emalicare@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(357, 7, 'STEPHEN', 'M', 'KISEVU', '254723473503', 'skisevu@korient.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:34', '2020-02-01 10:06:21'),
(358, 2, 'AUGUSTINE', 'BAHATI', '', '254722529670', 'ausbahati@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(359, 2, 'REBECCA', 'MUTUA', '', '254714937049', 'rebmutua@yahoo.com', 'NAIROBI', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(360, 2, 'DR. ANITA', 'WANJUGU', 'WACHIRA', '254722753219', 'wachiraanita@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(361, 2, 'GILBERT', 'MASENGELI', '', '254722245868', 'gmasengeli95@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(362, 7, 'FREDRICK', 'TITO', 'KISILU', '254735411904', 'fredkisilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(363, 7, 'SHADRACK', 'TITO', 'MUTUNGA', '254721867668', 'shadmuisyo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(364, 7, 'NDERITU', 'MACHARIA', '', '254721429013', 'nderitu.m39@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:35', '2020-02-01 10:06:21'),
(365, 7, 'MERCY NDERITU', 'NDERITU', '', '254722516537', 'mercynderitu@ymail.com', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21');
INSERT INTO `clients` (`id`, `group_id`, `firstName`, `middleName`, `lastName`, `phone`, `email`, `location`, `workPlace`, `created_at`, `updated_at`) VALUES
(366, 2, 'JOSEPH', 'KAGIGITE', '', '254721659949', 'kagigite@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21'),
(367, 7, 'RUTH', 'THYAKA', '', '254723684110', 'ruthcrafts@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21'),
(368, 2, 'THOMAS', 'CHEPKIYENG', 'KIPTALAM', '254721277294', 'thomas.kiptalam@sc.com', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21'),
(369, 2, 'SAMSON', 'K', 'PIUS', '254722908864', 'paradisesweetcenter@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21'),
(370, 7, 'CRISTOPHER', 'MUSYOKA', 'MUSAU', '254722510117', 'cmusau@maanzonilodge.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:36', '2020-02-01 10:06:21'),
(371, 7, 'CHARLES', 'NZIOKI', 'NZUKI', '254722592591', 'charlesnzuki30@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(372, 2, 'BOSCO', 'SOMBE', 'JM', '254722246809', 'bosco@openit.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(373, 2, 'JOSEPH', 'KINYAIKA', '', '254727429466', 'kinyaika@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(374, 2, 'JOHNSTONE', 'M', 'KIAMBA', '254721637491', 'kiambajm@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(375, 2, 'GEORGE', 'MBATE', '', '254721252302', 'gmbate@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(376, 2, 'GEORGE', 'MUTUKU', '', '254725800456', 'kavathageorge@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(377, 2, 'WILFRED', 'NYASIMI', 'OROKO', '254722519021', 'nyasimi2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(378, 2, 'STEVE', 'NYASIMI', 'NYAA', '254722142418', 'stevenyaa@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(379, 2, 'JACINTA', 'WESONGA', '', '254721659269', 'jecintaapuoyo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(380, 2, 'MURIMI', 'GIKUNJU', '', '254722107822', 'murimigikunju@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(381, 2, 'LENI', 'SOLITEI', '', '254722707908', 'kisimagold@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:37', '2020-02-01 10:06:21'),
(382, 7, 'DAVID', 'MUTISO', '', '254722495600', 'ibc@nbnet.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(383, 7, 'FLORA', 'MUTISO', '', '254704506295', 'floraikitana@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(384, 7, 'ROBERT', 'MAKAU', '', '254710142406', 'robertmakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(385, 2, 'MOSES', 'MBIE', '', '254720695527', 'mosesmbie@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(386, 2, 'PHOEBE', 'MOSES', '', '254722310413', 'phoebemmoses@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(387, 7, 'EDWARD', '', 'NDUNGU', '254715853598', 'edwardgichuhindungu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(388, 7, 'JACKSON', 'NDUNDA', '', '254722707153', 'mwaniandunda@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(389, 7, 'NAIRIMAS', 'OLE-SEIN', '', '254711844496', 'nairimas@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(390, 7, 'DOMINIC', '', 'KIKUYU', '254722903666', 'domkikuyu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(391, 2, 'MAGDALENE', 'MUKAMI', 'KALUNDE', '254726995883', 'mkalunde@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(392, 7, 'DENNIS', 'MUMO', '', '254721253167', 'dsmumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(393, 7, 'BEN', 'KITENG\'E', '', '254722708877', 'ben.kitenge@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:38', '2020-02-01 10:06:21'),
(394, 7, 'JANE', 'MWENDWA', 'KITENG\'E', '254722754578', 'jsmwendwa@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(395, 7, 'CHARLES', 'MUNYAO', '', '254722338794', 'qmunyao@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(396, 7, 'DR. JACKSON', 'MAALU', '', '254722229900', 'jmaalu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(397, 7, 'KIOKO', 'MUTUNGA', '', '254722707497', 'kiokomutunga@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(398, 2, 'NOAH', 'MESHACK', 'NASIALI', '254722907203', 'nasialin@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(399, 2, 'PROF JOE', 'K', 'MAITHA', '254721330351', 'info@adec.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(400, 7, 'JOHN', 'MAKAU', 'KIMWELE', '254722961497', 'jomakau77@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(401, 2, 'DR.DANIEL', 'TUITOEK', '', '254729678698', 'tuitoekdk@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:39', '2020-02-01 10:06:21'),
(402, 7, 'SUSAN', 'NDOLO', '', '254722738646', 'info@aviationsolutions.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(403, 7, 'STEPHEN', 'MUSYOKA', '', '254722839183', 'ikuistephen@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(404, 2, 'NDUNGE', 'MUSAU', '', '254722523874', 'ndungemusau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(405, 2, 'ALICE', 'MUTILE', '', '254722369241', 'mutilemutunga1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(406, 2, 'ENOCK', 'KIMEU', '', '254721326855', 'kimeudick@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(407, 2, 'ALFRED', 'KYALO', 'KIVUU', '254722708163', 'akkivuu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(408, 7, 'KALEKYE', 'MUMO', '', '254722719678', 'kalekye.mumos@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(409, 7, 'BENJAMIN', 'KIOKO', 'NYAMAI', '254722883439', 'kiokkonny@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(410, 7, 'ESTHER', 'KATHEU', 'MBITHI', '254714549497', 'mbithimart@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:40', '2020-02-01 10:06:21'),
(411, 7, 'RODNEY', 'MUTUNGA', 'SENGA', '254725810263', 'rdnysenga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(412, 2, 'LILIAN', 'MUTIO', 'KIAMBA', '254722312935', 'liliankiamba@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(413, 7, 'PAUL', 'MUTHOKA', 'MBOLE', '254721711656', 'paul2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(414, 2, 'FAITH', 'SEME', '', '254722803467', 'faithjepk@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(415, 2, 'SEME', 'ELIUD', '', '254714195002', 'semeeliud@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(416, 7, 'JENNIFER', 'MUTHOKI', 'KIVUU', '254722707056', 'jennifer@simplytravelltd.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(417, 2, 'JOSEPHINE', 'MUTUNGA', '', '254722626268', 'mueni.mutunga@icloud.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(418, 2, 'JOSEPH', 'KINYANJUI', 'GIKONYO', '254721428395', 'joseph_gikonyo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(419, 2, 'JOEL', 'MWIKYA', 'MBUVI', '254721713502', 'jmwikya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(420, 2, 'DERRICK', 'MUTUKU', 'KIVINDU', '254713025118', 'derromutuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:41', '2020-02-01 10:06:21'),
(421, 2, 'JOHN', 'KIETI', 'MAKILA', '254735764242', 'jkieti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(422, 2, 'SERAH', 'WAMBUA', '', '254722321731', 'serah.wambua16@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(423, 7, 'HENRY', 'KILONZI', 'WAMBUA', '254722331142', 'henry@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(424, 2, 'MANASSES', 'SUMBI', '', '254722861697', 'nsumbi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(425, 2, 'MARGRET', 'WAKIURU', 'KINYANJUI', '254722123148', 'magret@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(426, 2, 'DIANAH', 'MUENI', 'WAMBUA', '254729086141', 'muenidwambua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(427, 7, 'RICHARD', 'MOKAYA', '', '254729458927', 'richardmokaya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:42', '2020-02-01 10:06:21'),
(428, 2, 'CECILIA', 'NDUNGU', '', '254720950878', 'cecilia.ndungu2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(429, 2, 'JUSTUS', 'M', 'MUINDE', '254710931693', 'enterpriseskande@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(430, 7, 'JACKLINE', 'KOLI', '', '254701352551', 'jackline@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(431, 7, 'JULIUS', 'MWANGI', 'MATHENGE', '254722327885', 'juliusmathenge36@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(432, 7, 'STEPHEN', 'KYANDE', 'KIVINDU', '254734666104', 'skyande@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(433, 7, 'PAUL', 'MWENGEI', 'MUINDI', '254724448456', 'pmmuindi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:43', '2020-02-01 10:06:21'),
(434, 7, 'MONICAH', 'PAUL', 'MUTHOKA', '254722626111', 'monica@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(435, 7, 'KENNEDY', 'M', 'KISOI', '254727737733', 'kenmuia@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(436, 2, 'HELLEN', 'MUTHOKI', 'JONATHAN', '254763886623', 'hellenjonathan27@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(437, 7, 'CHARLES', 'MULE', '', '254736205577', 'charlesm.mule@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(438, 2, 'DR. STEWARTA', 'KABAKA', '', '254722797683', 'skabaka72@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(439, 2, 'LYDIA', 'NJERI', 'KAGIKO', '254722804025', 'lydiakagiko@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(440, 2, 'CAROLINE', 'M.', 'MALINDA', '254733721027', 'cmalinda@silverbirdtravel.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(441, 7, 'THEOPHILUS', 'NZAU', '', '254722971332', 'nkiatu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(442, 7, 'PAUL', 'MAINGI', '', '254720547695', 'maingipaulj@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(443, 2, 'JAMES', 'MBURU', '', '254722433733', 'kariuki.jmburu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:44', '2020-02-01 10:06:21'),
(444, 7, 'ANTOHY', 'K', 'MUHINDI', '254722798590', 'anthony@kenfirm.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(445, 7, 'JONATHAN', 'NZIOKI', 'MBUVI', '254722753615', 'info@joetechltd.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(446, 2, 'GLORIA', 'MBULA', '', '254723594667', 'bulahuk@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(447, 7, 'THOMAS', 'KILONZO', '', '254720977888', 'tommulela@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(448, 7, 'GURBIR', 'SINGH', '', '254733750748', 'gurbinski@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(449, 7, 'MICHAEL', 'NDUNDA', '', '254721719820', 'michaelndunda60@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(450, 7, 'GEN MUSOMBA', '', '', '254722732567', 'ck.musomba@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(451, 7, 'BEN', 'OMUODO', '', '254722518056', 'benomuodo@bidii.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(452, 2, 'JAN', 'NIJHOF', '', '254723681927', 'nyhofreuben@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(453, 2, 'JUSTUS', 'KITHUSI', 'KIMEU', '254728127024', 'kimeujustus@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(454, 7, 'ALEXANDER', 'KYALO', 'MAINGI', '254724024198', 'alexmaing13@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(455, 7, 'COSMAS', 'KYALO', 'MUTETI', '254710109960', 'kyalocosmas@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(456, 7, 'TIMOTHY', 'WAMBUA', 'MUTISO', '254717395444', 'wambuatim@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(457, 2, 'TITUS', 'MUHU', 'KAHIGA', '254720917797', 'tkahiga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(458, 2, 'GIDEON', 'AMALLA', '', '254722411903', 'gideonamalla@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(459, 2, 'CARLOS', 'MUTISYA', 'MALUTA', '254723078268', 'cmaluta@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(460, 2, 'BRIAN', 'MAUNDU', 'MUSYOKI', '254725129705', 'khalbrian@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(461, 2, 'PATRICK', 'KYALO', 'KITUTA', '254721997876', 'pkituta@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(462, 2, 'FESTUS', 'MWANIKI', 'LONZI', '254733211025', 'lfmwaniki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(463, 7, 'FRED', 'MUSYOKI', '', '254722899283', 'musyokifr@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(464, 2, 'WILFRED', 'CHEGE', 'MWANGI', '254721879520', 'wilfredmwangi@outlook.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(465, 2, 'MARY', 'MUYA', '', '254733755403', 'mmuyamrs@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(466, 2, 'CATHERINE', 'NTHENYA', 'IKOVO', '254722248061', 'cillukate@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(467, 2, 'DENNIS', 'KYALO', '', '254726678945', 'dennis@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:45', '2020-02-01 10:06:21'),
(468, 2, 'PROF.MICHAEL', 'MUCHAI', 'KAGIKO', '254722686140', 'mmkagiko@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(469, 2, 'IRENE', 'W', 'KARIMI', '254721323403', 'murimigikunju1@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(470, 7, 'ROBERT', 'OPINI', '', '254715552760', 'ropini@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(471, 2, 'THOMAS', 'KIBATI', '', '254722240258', 'thomaskibati2015@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(472, 2, 'JOHN', 'KANANDA', '', '254722472570', 'manyasipop@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(473, 2, 'BENSON', 'KIMANI', '', '254722677403', 'benniekimani@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(474, 7, 'MICHAEL', 'CAIN', '', '254718774324', 'mike@indtcrush.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(475, 2, 'JOSEPH', 'MUNYETI', '', '254733642579', 'jmunyeti@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(476, 2, 'ERIC', '', 'MURATHIMI', '254721959094', 'kagondu.eric@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(477, 7, 'PAUL', '', 'KASEMA', '254728337932', 'kasemaroyalassociates@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(478, 7, 'NANCY', 'KARIUKI', '', '254722293176', 'nansynk@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(479, 2, 'EVELYN', 'MUNYETI', '', '254713370614', 'yvanthusi@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(480, 7, 'HON SAMUEL', 'POGHISIO', '', '254722520663', 'spoghisio87@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(481, 7, 'DAVID', 'MASIKA', '', '254722510649', 'dwmasika@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(482, 7, 'MICHAEL', 'WAMBUA', 'MUTUA', '254720009920', 'mikemutua777@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(483, 2, 'JOHNSON', 'KIOKO', 'MUSAU', '254721482072', 'lighthouse@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(484, 7, 'YUSSUF', 'RAMADHAN', '', '254722518002', 'yussuframadhan@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(485, 2, 'MARY', 'WEKHOCHA', '', '254721204540', 'electinah@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(486, 7, 'JOHN', 'KILONZO', '', '254722386000', 'jkilonzo0@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(487, 2, 'MIRIAM', 'WARORUA', '', '254721986660', 'mmwarorua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(488, 2, 'SAMMY', 'K', 'MUUMBI', '254722744704', 'smuumbi@utisi.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(489, 7, 'KENNETH', 'NZIOKA', '', '254722511728', 'kmnzioka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(490, 7, 'TOM', 'NDOLO', 'KIETI', '254720946126', 'tomndolo@icloud.com', 'MACHAKOS', '', '2020-02-01 09:12:46', '2020-02-01 10:06:21'),
(491, 2, 'CATHERINE', 'WANJIRU', 'MUGWE', '254796142649', 'cwmugwe64@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(492, 2, 'MUTUA', 'NDUNGI', '', '254722388824', 'hndungi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(493, 2, 'COL..', 'THOMAS', 'MWOLOLO', '254722788096', 'tmwololo2002@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(494, 2, 'ALFONSE', 'KIOKO', '', '254720654453', 'almkioko@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(495, 2, 'PAULINE', 'M', 'MWOLOLO', '254722788114', 'pmwololo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(496, 2, 'MUTHEU', 'KASANGA', '', '254722322440', 'mutheup@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(497, 2, 'CHRISTOPHER', 'MUNENE', '', '254722754231', 'chris@cmasltd.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(498, 2, 'AMIT', 'TYAGI', '', '254722860960', 'amtyagi2002@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(499, 2, 'EMILY', 'MUMBI', 'NGARUIYA', '254722760127', 'mumbingaruiya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(500, 2, 'ANTHONY', 'MWANGI', 'GICHURI', '254724123296', 'amwangi@packageins.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(501, 7, 'SUSAN', 'N', 'MATHEKA', '254721567995', 'susan@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(502, 2, 'JAMES', 'NJAGI', 'NJURURI', '254721947285', 'jaynjagi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(503, 2, 'FIROZ', 'DHARANI', '', '254725401355', 'firozdharani@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(504, 2, 'JACKY', 'NDUTA', '', '254722645646', 'nnduter@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(505, 2, 'JOSEPH', 'MUASYA', '', '254722528503', 'joe.muasya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(506, 2, 'JOSEPH', 'GIKUNDA', '', '254722639548', 'joseph.gikunda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(507, 2, 'ROSELYN', 'NKIROTE', 'GUCHERA', '254721319309', 'roselyn.guchera@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(508, 2, 'EDDY', 'NICHOLAS', 'ORINDA', '254732212813', 'eddy@oneattorneys.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(509, 7, 'ANDERSON', 'MASILA', 'MATHEKA', '254722525515', 'amatheka@treadsetters.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(510, 2, 'BRIAN', 'OLIMBA', '', '254727651300', 'brolimba@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(511, 2, 'VASAYA', 'NURUDDIN', '', '254725957478', 'nuruvasaya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(512, 2, 'ONESMUS', 'TONUI', 'MATHIAS', '254728262666', 'musyokion@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(513, 2, 'JOHANA', 'TONUI', '', '254722866003', 'johanatonui@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:47', '2020-02-01 10:06:21'),
(514, 2, 'CHARLES', 'KAARIA', 'KABURU', '254722690924', 'charles.kaburu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(515, 2, 'MARTIN', 'MUTHAMA', '', '254721264590', 'martinmuthama3@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(516, 2, 'STANDARD CHARTERED', '', '', '254722229060', 'frednzioka83@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(517, 7, 'VERONICA', 'MUMBUA', 'NZIOKI', '254729631945', 'veronica@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(518, 2, 'HON.JOE', 'MUTAMBU', '', '254722263326', 'joemutambu@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(519, 2, 'FAITH', 'KALUNDA', '', '254728581933', 'faith@fkaydesigns.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(520, 2, 'CHARLES', 'MUEMA', 'JOSEPH', '254723406894', 'muema.joseph@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(521, 7, 'CATHERINE', 'MUEMA', 'KILONZI', '254722247623', 'cmunyiva@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(522, 7, 'JANE', 'NJURU', 'KOMBO', '254722274223', 'janenjuru@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(523, 7, 'STANLEY', 'MUSYOKA', 'MUMO', '254722758378', 'stanley.mumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(524, 2, 'ZIPPORAH', 'KILENGE', '', '254722474436', 'zviata@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(525, 2, 'CRISPIN', 'KABUE', '', '254722330542', 'cmkabue@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(526, 2, 'FAITH', 'WATHOME', 'KITHU', '254722410375', 'faith@kawt.or.ke', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(527, 7, 'JANE', 'MUTHONI', 'WARUI', '254720849819', 'muthoniwarui@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(528, 7, 'JENNIFER', 'MUTHIO', 'KYULE', '254721922783', 'jennifer.kyule@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(529, 2, 'JOHN', 'KIAMBI', '', '254722342661', 'johnkiambi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(530, 2, 'MARY', 'MULILI', '', '254725832921', 'mary.mulili@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(531, 7, 'LT GEN', 'JACKSON', 'MUNYAO', '254733754908', 'jackson@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(532, 7, 'JAMES', 'NDUNDA', '', '254726121306', 'jamesmuia@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(533, 7, 'BERNARD', 'MUUTU', '', '254722581182', 'bernard@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(534, 2, 'WICKLIF', 'NDORI', 'SABUTI', '254735899995', 'wsabuti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(535, 2, 'PROF. FRANCIS', 'M.', 'MATHOOKO', '254722861239', 'mmathooko@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(536, 2, 'FR.MONDIU', '', '', '254733747183', 'alfonsmondiu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(537, 2, 'CALEB', 'MUTISO', 'MULE', '254722625322', 'calebmule2013@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(538, 7, 'STELLA', 'ANN', 'MUSYOKI', '254722253246', 'annmstella@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(539, 2, 'SIMEON', 'K', 'KITHEKA', '254721341901', 'simonkitheka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(540, 7, 'JULIUS', 'K', 'MUTUKU', '254711111495', 'jkioko2006@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:48', '2020-02-01 10:06:21'),
(541, 2, 'FELIX', 'KYALO', 'NTHAMA', '254722517762', 'fkyalo7@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(542, 7, 'FRANCIS', 'MUTHUSI', '', '254722691643', 'fmmuthusi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(543, 2, 'IKUSYA', 'KALOKI', '', '254721776502', 'centre.leaders@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(544, 2, 'THE KYAKA HOTEL LTD', '', '', '254724718747', 'info@thekyakahotel.ke', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(545, 7, 'REGINA', 'KARIUKI', '', '254722865889', 'mukamir@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(546, 7, 'ELIAS', 'KARIUKI', '', '254721255598', 'warungu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(547, 2, 'PROF. MUMO', 'KISAU', '', '254733966328', 'wakisau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(548, 7, 'BERNARD', 'NZIOKA', 'MUTUA', '254722905281', 'benard@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(549, 2, 'U.A.P INSURANCE', '', '', '254714608541', 'cwachira@uap-group.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(550, 7, 'RUTH', 'MUENI', 'MUMO', '254721408898', 'ruthmumodt@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(551, 7, 'NICKY', 'NZIOKI', '', '254722715029', 'lantmetri@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(552, 7, 'SAMUEL', 'CHARLES', 'MBINDA', '254728884664', 'samuel@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(553, 7, 'MAJ. (RTD)', 'RICHARD', 'MUMO', '254722210352', 'richardmumo66@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(554, 2, 'BRIG', 'JOE BM', 'MWEU', '254713286691', 'joe.mweu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(555, 7, 'MARTIN', 'MUNYAO', 'KIMEU', '254723539466', 'kimeumartin@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(556, 2, 'MATHEW', 'MUTUA', '', '254722952747', 'renmatics@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(557, 7, 'JOHN', 'NZIOKA', '', '254722838694', 'jnkyalo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(558, 2, 'SILVESTER', 'K', 'MULI', '254722292434', 'mkiua@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(559, 2, 'REUBEN', 'MULI', '', '254722200006', 'reuben@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(560, 7, 'COLLINS', 'SILA', 'KAIA', '254722170158', 'collins.sila@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:49', '2020-02-01 10:06:21'),
(561, 2, 'ELIZABETH', 'MUANGE', '', '254722949447', 'muangee@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(562, 7, 'SUSAN', 'NDOLO', '', '254720554607', 'sndolo@kplc.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(563, 2, 'ANNE', 'KATILE', 'MUEMA', '254722260059', 'akmuema@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(564, 7, 'JACKSON', 'KYALO', 'MULWA', '254722731210', 'mulwazinc@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(565, 7, 'HON.JOHN', 'MUTUA', 'KATUKU', '254722526690', 'katukujo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(566, 2, 'KIIO', 'KAVILA', '', '254722441255', 'kiiokavila@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(567, 2, 'DR LILLIAN', 'WAMBUA', '', '254722377875', 'l.wambua@uonbi.ac.ke', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(568, 7, 'BERNARD', 'W', 'KAMUTI', '254722685711', 'bwkamuti2005@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(569, 7, 'MARK', 'MUTUA', 'MAKAU', '254722942595', 'wakilimutua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(570, 7, 'MUTISO', 'MAKAU', '', '254721236590', 'makauadv@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(571, 7, 'PATRICK', 'MUTHIANI', '', '254787327919', 'muthiani.p@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(572, 2, 'JANET', 'WAYUA', '', '254724939386', 'janet.wayua28@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(573, 7, 'JACKSON', 'NG\'ANG\'A', 'THIMANGU', '254728597462', 'jthimangu.jt@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(574, 2, 'CHARLES', 'KIOKO', '', '254722705829', 'ckiokom@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(575, 2, 'ALBANUS', 'PAUL', 'MUTISYA', '254716292027', 'amutisya@knut.or.ke', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(576, 2, 'MARTHA', 'NTHENGE', '', '254716928705', 'emaki2001@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(577, 2, 'KATHERINE', 'NDUKU', 'NTHENGE', '254701561988', 'knthenge@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(578, 7, 'FREDRICK', 'DAVID', 'NDUNYU', '254722752401', 'ndunyudavid@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(579, 2, 'WALTER', 'KIOKO', '', '254724422422', 'walterkioko@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(580, 2, 'DR. THOMAS', 'N', 'KIBUA', '254735432121', 'thomas.kibua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(581, 7, 'ROBERT', 'K', 'WARUIRU', '254721818858', 'kwaruiru@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:50', '2020-02-01 10:06:21'),
(582, 7, 'STANLEY', 'THYAKA', 'MUINDI', '254722501238', 'sthyaka@gmai.l.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(583, 7, 'BOSCO', 'KIOKO', 'MUTHOKA', '254721380898', 'bosco.muthoka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(584, 7, 'PATRICK', 'NDUVA', 'MUNYAO', '254721446207', 'munyao@kenyahaulage.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(585, 7, 'EDWARD', 'TENGA', '', '254722520218', 'tengamm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(586, 2, 'GLADYS', 'MWANIKI', '', '254731883335', 'gladforit@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(587, 7, 'TIMOTHY', 'MAHINDA', '', '254722733410', 'mahindatim@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(588, 2, 'ANNE', 'MAHINDA', '', '254722756905', 'annemahinda64@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(589, 2, 'ANASTASIA', 'NGUMBI', '', '254722850518', 'angumbi@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(590, 7, 'AGNES', 'MULEI', 'MASAI', '254720276230', 'agnesnmulei@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(591, 2, 'FELIX', 'MALLA', '', '254722816154', 'malla.mumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(592, 2, 'MRS. HANNAH', 'MARIA', 'MALLA', '254711119733', 'lmabruk@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(593, 2, 'PATRICK', 'M', 'MWINZI', '254720948007', 'engmwinzi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(594, 7, 'RICHARD', 'MUMO', 'THYAKA', '254717832572', 'mumothyaka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(595, 7, 'LEON', 'MUSOI', 'MUTETI', '254728613261', 'leon.muteti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(596, 7, 'LOKI', 'MBALUTO', '', '254724068941', 'lokimbaluto@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(597, 2, 'FELIX', 'KIMOLI', '', '254722742257', 'fkimoli@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(598, 2, 'SHOBHNA', 'PRAVIN', 'PARMAR', '254720788188', 'parmar@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(599, 2, 'MRS.DAN', 'KIOKO', '', '254722161599', 'dan@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(600, 2, 'ANGELA', 'MUTUKU', '', '254708725893', 'awmutuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(601, 7, 'KELI', 'MUINDI', '', '254722688920', 'keli@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(602, 2, 'NATHANS BROWNE', '', '', '254722705418', 'browne@browneandbrowneadvocates.com', 'MACHAKOS', '', '2020-02-01 09:12:51', '2020-02-01 10:06:21'),
(603, 2, 'KIOKO', 'KILUMI', '', '254720716151', 'kilukumi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(604, 2, 'CAROLYNE', '', 'WAMBUA', '254716247539', 'ngonyowambua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(605, 7, 'MUIA', 'MUINDI', '', '254710973132', 'jimmymuia@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(606, 2, 'JOE', 'MUIA', '', '254710309007', 'joemuia11@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(607, 2, 'JOSEPH', 'MUENDO', 'MALIKA', '254710821429', 'muendo10@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(608, 7, 'BEATRICE', 'MAITHYA', '', '254722261579', 'bettyshed@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(609, 2, 'CAROLINE', '', 'MUIA', '254727375037', 'fridaykath@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(610, 7, 'COSMAS', '', 'KYENGO', '254720723551', 'cosmas@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(611, 2, 'CHAVAN', 'NARAYAN', '', '254721491529', 'impalainsurance1976@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(612, 2, 'JOYCE', 'NYAWIRA', 'NGOTHO', '254722325031', 'joycenyawira52@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(613, 2, 'MAINA', 'WAITHAKA', '', '254720548949', 'ewaithaka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(614, 2, 'HON. DAVID', 'KITONYI', 'KEMEI', '254724787088', 'bargebo1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(615, 7, 'BERNARD', 'KAVOO', '', '254722758451', 'kavoobernard@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(616, 7, 'LEAKEY', 'TOM', 'KATHURI', '254710422222', 'leakey@levakenya.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(617, 7, 'ANTONY', 'J', 'MAINGI', '254722363055', 'paskton@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:52', '2020-02-01 10:06:21'),
(618, 2, 'WANJIKU', 'MAINGI', '', '254722324104', 'wanjikupmg@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(619, 2, 'ANN', 'G', 'KIMANI', '254720757645', 'gathakimani@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(620, 2, 'JOHNSTONE', 'NDUYA', 'MUTHAMA', '254724256664', 'info@jnmholdings.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(621, 7, 'ALEX', 'KYALO', 'MUNYAO', '254726604822', 'alex1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(622, 2, 'AMBASSADOR', 'M', 'MATIBO', '254729791462', 'elijah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(623, 7, 'ROGERS', 'NDOOLI', '', '254720904442', 'rogers.ndooli@obradleys.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(624, 2, 'CHARLES', 'MULATYA', '', '254705180336', 'charles.mulatya@eabl.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(625, 7, 'SAMUEL', 'MUKINDIA', '', '254722861166', 'sam.mukindia@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(626, 7, 'VIRGINIA', 'MUTEI', '', '254720827139', 'virgmutheu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(627, 2, 'PAUL', 'MAINGI', 'MUSYIMI', '254724464533', 'legal@maingimusyimilaw.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(628, 2, 'HUMPHREY', 'MWANGI', 'NDAIGA', '254721872575', 'hummwangi70@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(629, 2, 'WARIKO', 'WAITA', '', '254700186206', 'warikowaita@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(630, 7, 'NZUKI', 'WAITA', '', '254708847896', 'nzuki.waita@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(631, 2, 'DORAH', 'KILUKUMI', '', '254722710290', 'drmallakilukumi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(632, 2, 'RICHARD', 'WAMBUA', '', '254725873257', 'richywambua79@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(633, 7, 'MAURICE', 'W', 'NDUNDA', '254726075334', 'mndundah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(634, 7, 'JACKSON', 'KILONZO', 'MBATHA', '254722717223', 'mbathak@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:53', '2020-02-01 10:06:21'),
(635, 2, 'JOHN', 'MUTUNGI', 'KINGA', '254726061293', '-john@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(636, 2, 'DANSON', 'MBUBI', 'MUTABI', '254720851288', 'danson@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(637, 2, 'RICHARD', 'SILA', 'MUOKA', '254725565186', 'richardsilla@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(638, 2, 'RAYMOND', 'KARANU', '', '254722820857', 'raymond@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(639, 2, 'MARK', 'KITUTE', 'NDING\'O', '254722729710', 'kitutemark@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(640, 7, 'ROBERT', 'MUNGAI', 'NJOROGE', '254722735188', 'robert.nmungai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(641, 2, 'JUDY', 'MUENI', 'MULINGE', '254724239140', 'jmueni32@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(642, 7, 'DR. CAROLINE', 'WANJIRU', 'KARIUKI', '254716876934', 'wanjiruck@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(643, 7, 'PRISCILLA', 'NJERI', 'KARIUKI', '254726819242', 'p.njerikariuki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(644, 2, 'MALCOLM', 'KATETA', 'MWOLOLO', '254724691843', 'malcolmmwololo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(645, 7, 'STEPHEN', 'MUNYAO', 'NTHENGE', '254711113985', 'stephen.nthenge@kusobala.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(646, 2, 'FREDRICK', 'KIMANGA', '', '254702862034', 'kisonge76@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(647, 2, 'LUCY', 'MUTINDA', '', '254727665188', 'lucy@lolu.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(648, 7, 'LAZARUS', 'K', 'MUTHIANI', '254712094707', 'kyulemuthiani1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(649, 2, 'MUSILA', 'MAKOLA', '', '254787444999', 'makolafm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:54', '2020-02-01 10:06:21'),
(650, 7, 'DORCAS', 'MWENDE', 'KILONZO', '254711138121', 'mwendekilonzo2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(651, 7, 'SANDRA', 'MUTINDI', 'THYAKA', '254716555675', 'sandramutisya@rm.co.ke', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(652, 7, 'ANTONY', 'KIIRU', '', '254721639365', 'kiiruselenzo1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(653, 2, 'ALPHONCE', 'MUNENE', 'MUTINDA', '254725289828', 'alphoncemutinda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(654, 2, 'PAUL', 'NDILO', '', '254720607581', 'ndilop@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(655, 7, 'PIUS', 'KIKUYU', '', '254722743267', 'pius.kikuyu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(656, 7, 'EDNA', 'MWIKALI', 'MUTHOKA', '254705490359', 'mutisokali2002@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(657, 7, 'PAUL', 'MUTHOKA', 'MUNENE', '254733735875', 'munenepaul@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(658, 2, 'SEFANIA', 'MURITHI', 'MUTONGA', '254722375389', 'sefmutonga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(659, 2, 'CATHERINE', 'MUENI', 'MASILA', '254722266038', 'cmasila2@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(660, 2, 'ANNE', 'GATHONI', '', '254738706702', 'nasragathoni@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(661, 2, 'GEOFFREY', 'MARIKA', 'ONGENGE', '254720757291', 'geoffrey.marika@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(662, 7, 'NANCY', 'MOGIKOYO', 'MARIKA', '254720757273', 'nancy.marika@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(663, 2, 'PHILLIP', 'L.', 'KABIARU', '254722700842', 'pkabiaru@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(664, 7, 'AUGUSTINE', 'MUTHENGI', '', '254724033705', 'augustinem73@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:55', '2020-02-01 10:06:21'),
(665, 2, 'ELIJAH G', 'RUNO', '', '254722781607', 'elijah.runo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(666, 2, 'RICHARD', 'MULWA', '', '254710561626', 'richard.mulwa@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(667, 2, 'LEAH', 'MUTHONI', '', '254728312515', 'murimileah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(668, 2, 'CHARLES', 'K.', 'MWAURA', '254722519452', 'cjmwaura@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(669, 2, 'REV. LEAH', 'ASAMI', '', '254712910865', 'leah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(670, 2, 'PETER', 'MATHUKI', '', '254722782585', 'petermathuki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(671, 2, 'TERESA', 'MUTUKU', '', '254717622259', 'terrymutuku13@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(672, 2, 'JANE', 'ANNE', 'MUNYAO', '254724934968', 'janeanne.munyao@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(673, 2, 'CHARLES', 'MUTAVI', 'KILONZO', '254712777429', 'kilonzo.charles2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(674, 7, 'KENNEDY', 'MAKANGA', '', '254720906725', 'kjkiilu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(675, 7, 'SUSAN', 'MBULA', '', '254726856633', 'susan_mbula@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:56', '2020-02-01 10:06:21'),
(676, 2, 'PAUL', 'NZAUI', 'MUSEKU', '254714534878', 'paulnzaui@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(677, 7, 'SUSAN', 'MURIITHI', '', '254723234145', 'susanmuriithi455@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(678, 2, 'MUKUNG', 'MIRIAM', 'MSAFIRI', '254724348123', 'mukungmiriam2015@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(679, 2, 'TERESIA', 'WANJIKU', 'WAITHAKA', '254728572881', 'waithakat@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(680, 2, 'MOSE', 'SAMMY', '', '254720274075', 'adartnsailor@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(681, 2, 'JOSEPHINE', 'M', 'MUTUA', '254722231838', 'jossym11@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(682, 2, 'RAYMOND', 'M', 'MUTISYA', '254712173360', 'raymondmutisya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(683, 2, 'ISAAC', 'MWAMTO', '', '254724878150', 'zmwamto@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(684, 7, 'SUSAN', 'MWAMTO', '', '254722700227', 'smwamto@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(685, 2, 'IBRAHIM', 'LANDE', '', '254720823462', 'modesty1998@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(686, 2, 'ERIC', 'MWANIA', 'KIVAVI', '254725406185', 'emwania@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(687, 2, 'MATILDA', 'W', 'WAMBUA', '254733687842', 'matildakyalo1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(688, 7, 'PAUL', 'MUTUA', 'KOMBO', '254722753887', 'plkombo@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:57', '2020-02-01 10:06:21'),
(689, 2, 'PPATRICK', 'KIONDO', 'KING\'OLA', '254722788205', 'p_makau@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(690, 7, 'HARRY', 'MAKAU', 'MULE', '254721901636', 'muleharry100@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(691, 2, 'PETER', 'KATHURIMA', 'MIRITI', '254720633402', 'miritip@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(692, 2, 'BETTY', 'MULE', 'KANUI', '254722654108', 'bmule2010@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(693, 7, 'GEORGE', 'STEPHEN', 'NJIRU', '254722658457', 'georgekamunyi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(694, 7, 'DOMINIC', 'KYALO', 'MULWA', '254721262003', 'dkyalom@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(695, 2, 'IRENE', 'NDILE', 'MAITHYA', '254713778514', 'irenendile@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(696, 2, 'LINUS', 'NDUNGU', 'WACHIRA', '254722771342', 'linuswachira@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(697, 2, 'PETER', 'KAMAU', 'NGANGA', '254722524283', 'peter2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(698, 2, 'STANLEY', 'NDUNGU', '', '254724292726', 'stanley.ndungu2010@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(699, 7, 'ESTHER', 'WAMBUI', 'MUHINDI', '254721757966', 'e_muhindi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(700, 2, 'MARGARET', 'KIARIE', '', '254721485709', 'margaretkiarieg@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:58', '2020-02-01 10:06:21'),
(701, 2, 'DR PATRICK', 'KIMPIATU', '', '254736423203', 'pkimpiatu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(702, 2, 'JAMHURI', 'JOEL', '', '254722710119', 'jamhurijoel@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(703, 2, 'MILKA', 'MANGI', '', '254710898608', 'primejamo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(704, 7, 'JAMES', 'NDERITU', 'MUROKI', '254720252266', 'primejamo3@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(705, 2, 'RENSON', 'ALUNGA', '', '254718969183', 'renson.alunga@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(706, 2, 'LYDIA', 'WANGECI', '', '254721737471', 'lydiahwangeci2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(707, 2, 'MURIUKI', 'MURITHI', '', '254722775457', 'muriux@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(708, 2, 'MUSYIMI', 'MBATHI', '', '254721643501', 'mbathi@uonbi.ac.ke', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(709, 7, 'JOLET', 'ABRAHAM', 'VENGATTU', '254738163163', 'joletv4u@gmail.com', 'MACHAKOS', '', '2020-02-01 09:12:59', '2020-02-01 10:06:21'),
(710, 2, 'JANE', 'MULLI', '', '254722527483', 'jmgathii@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:00', '2020-02-01 10:06:21'),
(711, 2, 'HARRY', 'M', 'NDETO', '254722895612', 'hnmutuku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:00', '2020-02-01 10:06:21'),
(712, 2, 'MARY', 'NDETO', '', '254722244624', 'mwongeli58@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:00', '2020-02-01 10:06:21'),
(713, 7, 'LUKA', 'JUDAH', 'WEWA', '254726491138', 'lukajudah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:00', '2020-02-01 10:06:21'),
(714, 7, 'MBURU', 'KARIUKI', '', '254719270008', 'borokariuki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:00', '2020-02-01 10:06:21'),
(715, 7, 'LARRY', 'WAMBUA', '', '254722794535', 'lwambua2001@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(716, 2, 'BEATRICE', 'MUSYOKA', '', '254722469016', 'bettie09@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(717, 2, 'JAMES', 'MBALUKU', 'MUTUA', '254720605769', 'jmbaluku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(718, 2, 'JOSEPHINE', 'MWIKALI', '', '254732274761', 'kiambajm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(719, 7, 'CAESAR', 'THYAKA', '', '254729500027', 'caesar.thyaka@rm.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(720, 7, 'TINA', 'BIANCA', 'THYAKA', '254722590973', 'tina@yogamagic.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(721, 2, 'PETER', 'O', 'MANGITI', '254722522584', 'petermangiti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(722, 7, 'BONIFACE', 'MUNYINYI', 'MUKURIAH', '254722663401', 'bmmukuria@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(723, 2, 'PROF. KIVUTHA', 'KIBWANA', '', '254713001312', 'kivuthak@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(724, 2, 'WAVINYA', 'NDETI', '', '254738836701', 'wavnyandeti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(725, 2, 'PATRICK', 'PETER', 'ILOVI', '254722843548', 'ppilovi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(726, 2, 'GEOFFREY', 'K', 'MULANDI', '254722206985', 'mulandigk@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(727, 2, 'BENSON', 'OUMA', 'OGUTU', '254724584046', 'benogutu2@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:01', '2020-02-01 10:06:21'),
(728, 7, 'BONIFACE', 'KIOKO', 'KOMU', '254722669615', 'bonie.komu@icloud.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21');
INSERT INTO `clients` (`id`, `group_id`, `firstName`, `middleName`, `lastName`, `phone`, `email`, `location`, `workPlace`, `created_at`, `updated_at`) VALUES
(729, 2, 'RICHARD', 'MUTIOH', '', '254723465266', 'richyie@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(730, 2, 'JACINTA', 'NZILANI', 'KIOKO', '254728870678', 'jacykioko@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(731, 2, 'PHILIP', 'MAEI', 'MAKAU', '254722513426', 'pmakau7@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(732, 2, 'MATTHEW', 'MUYANGA', '', '254798675031', 'mattmuyanga@fuse.net', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(733, 2, 'CHRISTOPHER', 'MURAYA', 'KANYI', '254722606672', 'cmkanyi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(734, 2, 'ESTHER', 'C', 'MATIVO', '254704567833', 'easther@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(735, 7, 'PETER', 'NZIOKI', 'MUSEMBI', '254715597885', 'nziokics@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(736, 2, 'MUUO', 'NDIKU', '', '254724697683', 'jamesmuuo7@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(737, 2, 'PAUL', 'M', 'MUSOI', '254722732142', 'pmusoi.pm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(738, 2, 'DENIS', 'KITIKU', 'PAUL', '254722546029', 'deniskpaulo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(739, 2, 'HON ISAIAH', 'MUNYAO', '', '254733703085', 'essaiahs@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(740, 2, 'GIDEON', 'SAUL', 'KAVUU', '254710450067', 'gideonsaulkavuu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(741, 2, 'EUNICE', 'NDINDA', 'MAKAU', '254724666912', 'makaumndinda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(742, 2, 'CHARLES', 'MWAURA', 'WANYANGA', '254722702574', 'engmwaura@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(743, 2, 'PHARIS', 'NGONZI', 'MUTISO', '254726297241', 'pmutiso@co-opbank.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(744, 2, 'MATTHEW', 'MASILA', '', '254748103556', 'mmasilam@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(745, 2, 'WAMBUI', 'MWENDE', 'MASILA', '254726915800', 'aewmasila@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(746, 2, 'MARY', 'MUTHONI', '', '254726829851', 'muso.mwangi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:02', '2020-02-01 10:06:21'),
(747, 2, 'SAMMY', 'MUSILI', '', '254722479375', 'sivi2045@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(748, 2, 'MARK', 'K', 'MUENDO', '254721345833', 'markmuendo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(749, 2, 'ABEDNEGO', 'CHARO', '', '254712296295', 'abednego@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(750, 2, 'KEVIN', 'KINENGO', 'KATISYA', '254727674274', 'kevinkatisya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(751, 2, 'ELIZABETH KATUMO', '', '', '254720321300', 'liz.katumo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(752, 7, 'CHARLES KIMITI', '', '', '254722337474', 'info@skynotchcapital', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(753, 7, 'MICHAEL', '', 'KOTI', '254721820890', 'kotimike@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(754, 2, 'WINNIFRED NDUTA', '', '', '254722835647', 'ndutawinnie.50@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(755, 2, 'PAULINE', '', 'NGILAI', '254724583584', 'kavesungilai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(756, 2, 'PAUL', 'MULI', '', '254722510170', 'paulmtisya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(757, 7, 'MICHAEL', '', 'MAKAU', '254711349541', 'michaelmalinda66@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(758, 7, 'SAMUEL', '', 'AMENYA', '254722729636', 'sam_amenya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(759, 7, 'DANIEL', '', 'MUTUNGA', '254724840529', 'daniel.mutunga@barclayscorp.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(760, 2, 'KERICHO KURAIHU', '', '', '254722710465', 'kkuraihu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(761, 2, 'KINGORI', 'KURAIHU', '', '254722523115', 'kingori.kuraihu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(762, 2, 'DR.SIMEON', 'ONYANGO', '', '254722527068', 'onyangoshog@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(763, 2, 'SOPHIE', 'NJUGUNA', '', '254724963911', 'sonzinga26@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(764, 2, 'HENRY', '', 'KAMUTI', '254722700577', 'henryjkamuti@gmail .com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(765, 2, 'PAULINE', 'KAMUTI', 'KAMUTI', '254720302222', 'njerikamuti.ngugi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(766, 2, 'ALVIN', '', 'WAWERU', '254777077070', 'wachiraalvin@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(767, 2, 'PCEA KIKUYU HOSPITAL', '', '', '254722207636', 'adminassistance@pceakikuuhosipital', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(768, 2, 'CHRISTOPHER', '', 'MASILA', '254723122601', 'masilachris8@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(769, 7, 'EDWARD', '', 'GITHINJI', '254722888877', 'memiaeg@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(770, 2, 'JUDY NDWGWA', '', '', '254723549420', 'ngima10@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:03', '2020-02-01 10:06:21'),
(771, 7, 'MACJONAD', 'MACJONAD', 'KIVUVA', '254721655853', 'kevinmusyoki2010@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(772, 2, 'JAMES', 'MULINGE', 'MULINGE', '254722772581', 'mulingejames2015@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(773, 2, 'JOHN NJANE', 'N', 'JANE', '254721801189', 'njane.john@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(774, 7, 'JONES', 'MUSEMBI', 'KANYAA', '254721436061', 'jonesmusembi2014@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(775, 2, 'STANLEY', 'NTHIWA', '', '254726035603', 'nthiwawakili@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(776, 7, 'FRANCIS', 'MUTHIANI', '', '254718200200', 'fmuthiani@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(777, 7, 'VERONICA', 'MUTHIANI', '', '254722607244', 'veronicamuthiani@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(778, 7, 'BENJAMIN', '', 'MUSAU', '254722704294', 'benjamin.musau@bmmusau.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(779, 7, 'DANIEL', '', 'MULI', '254711645227', 'mdanielkyalo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(780, 2, 'JONATHAN', 'MWANIA', '', '254705107410', 'mwania2000@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(781, 7, 'ROBERT', 'NTHENGE', '', '254722807680', 'roonthenge@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(782, 7, 'PETER', 'NDOLO', 'NDISYA', '254732292669', 'ndolo.ndisya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(783, 2, 'PAUL', 'ONYERA', '', '254711387450', 'paul.onyera@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(784, 2, 'MADELINE', 'NDETE', 'BROWN', '254722854566', 'madiebrown@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(785, 7, 'FREDRICK', 'MUSEMBI', 'BERNARD', '254722875813', 'fredrickmusembi85@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(786, 2, 'DR. EDWARD', 'MUNGAI', '', '254710799080', 'dr.emungai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(787, 7, 'JOEL', 'KYATHA', 'MBALUKA', '254722584942', 'joel@mbalukadvocates.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(788, 2, 'GABRIEL', 'GITAU', 'KANGETHE', '254729760616', 'gabbygitau@outlook.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(789, 2, 'CAROLINE', 'WACHUKA', 'KARIMI', '254722324112', 'cwkarimi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(790, 7, 'ERIC', 'KIVUVA', '', '254721269004', 'ekivuva@mcayadvocates.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(791, 2, 'WILFRED', 'GITAU', 'NGARUIYA', '254722758000', 'wgngaruiya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:04', '2020-02-01 10:06:21'),
(792, 2, 'PROF. CHARLES', 'OMBUKI', '', '254724435246', 'ombucharles@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(793, 2, 'PROF.FRANCIS', 'LELO', '', '254723695524', 'fklelo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(794, 2, 'ALFRED', 'GETHI', 'KIBIRU', '254722897428', 'kibirualfred@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(795, 2, 'SAMSON', 'OJWANG', '', '254712078819', 'samson@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(796, 2, 'JULIET', 'OWITTI', '', '254727010954', 'julietowitti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(797, 7, 'JULIUS', 'MUSYOKA', 'KIVALA', '254722504981', 'engpintech@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(798, 7, 'NANCY', 'NZISA', 'MUTINDA', '254703492617', 'nyamainancy7@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(799, 2, 'AGGREY', 'SHIKUTWA', '', '254712730668', 'agshitsukane@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(800, 7, 'JACK', 'MWENDWA', 'MUSOMBA', '254742613200', 'mwendwajackson84@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(801, 7, 'JOHN', 'KILONZO', 'JOSEPH', '254722432161', 'jkilonzo100@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(802, 7, 'CATHERINE', 'WAMBUI', '', '254727218118', 'cathyjoseph2000@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(803, 7, 'JACKSON', 'N', 'MBALUKA', '254724292248', 'mbaluka@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(804, 2, 'PROF. JOYCE', 'J.', 'AGALO', '254736952602', 'joyce.agalo9@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(805, 2, 'MONICAH', 'WARUGURU', 'NGATIA', '254722904622', 'horizontrading54@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(806, 2, 'RUO WA\'', 'MAINA', '', '254722705223', 'ruoderock@gmail.com', 'NAIROBI', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(807, 2, 'MERCELINE', 'MUTHEU', '', '254724483955', 'mmercelyne@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(808, 2, 'JOSEPH', 'NGAO', '', '254722712154', 'josnguku@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(809, 2, 'CAROLINE', 'M', 'MUTUA', '254722446470', 'munee.kacol@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(810, 7, 'JULIUS', 'NGUNZE', 'KIETI', '254720774520', 'julius@flowerportlogistics.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(811, 7, 'FRANCIS', 'MANDELA', 'MUSEMBI', '254727261358', 'fndech1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(812, 7, 'VICTOR', 'MUSA', 'MUNYAO', '254722883837', 'victormunyao57@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(813, 7, 'FELIX', 'MUMO', 'KYENGO', '254720609439', 'felixuwezo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:05', '2020-02-01 10:06:21'),
(814, 7, 'MARTIN', 'NDEI', 'MASAI', '254722822957', 'martinmasai@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(815, 2, 'ASCAR', 'J', 'NDEI', '254721645410', 'jerubom@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(816, 2, 'PURITY', 'KALUKI', '', '254721886250', 'kalukipurity@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(817, 7, 'SUSAN', 'MUMO', 'MUTUKU', '254722282563', 'susanmutuku2016@gmail', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(818, 2, 'KASSIM', 'BOSO', '', '254722177308', 'kassimboso@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(819, 7, 'GREGORY', 'MUTHOKA', 'NDUNDA', '254722223192', 'gregndunda22@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(820, 7, 'LAZARUS', 'MULIGE', 'KIVUVA', '254728678540', 'lazaruskivuva@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(821, 2, 'ANTHONY', 'M', 'KITUNGI', '254724290689', 'akitungi7@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(822, 7, 'JAMES', 'KILINDA', '', '254722293784', 'jkilinda16@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(823, 7, 'DAVID', 'NJOROGE', 'MWAURA', '254725655214', 'mwauradavid800@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(824, 2, 'NIMMO', 'GICHERU', '', '254720643024', 'ngicheru@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(825, 7, 'OJAL', 'EMMANUEL', 'OWITI', '254725958835', 'ojalowiti@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(826, 2, 'FREDRICK', 'MUINDE', 'KIIO', '254722269287', 'kiio_fred@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(827, 2, 'NATASHA', 'CHEROTICH', 'MURGOR', '254721705368', 'ncmurgor@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(828, 2, 'SAADA', 'KINYANJUI', '', '254726484299', 'saadakinyanjui@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(829, 2, 'ANITA', 'WANASWA', '', '254791397967', 'anitawanaswa@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(830, 2, 'JAYNE', 'NYOKABI', 'GATHONI', '254721280076', 'nyokabijayne@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(831, 2, 'HILLARY', 'PETER', 'ANDALO', '254722662460', 'hillaryandalo@yahoo.cm', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(832, 7, 'SAMMY', 'NJIRU', 'KARIUKI', '254727936186', 'sam.njir@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(833, 2, 'BRIAN', 'MAGEMBE', 'MAWANDA', '254720244669', 'bmawanda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(834, 7, 'DOMINIC', 'MULWA', 'NDAMBUKI', '254722483008', 'dndambuki27@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(835, 2, 'RHODA', 'NTHENYA', '', '254720891788', 'rhoanc82@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(836, 2, 'ANCENT', 'MUEMA', 'MUTINDA', '254714660864', 'ancents@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:06', '2020-02-01 10:06:21'),
(837, 2, 'JAMES', 'KAROKI', 'MURIU', '254729487529', 'james.karoki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(838, 2, 'NICHOLAS', 'MWANIKI', '', '254709553059', 'nkmwaniki87@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(839, 7, 'DIANA', 'MATEMU', 'SENGA', '254703114820', 'ms.dianawaiku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(840, 2, 'ABDULLAHI', 'GALGALO', 'HIDDI', '254722900438', 'countycommasaku@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(841, 2, 'DORIS', 'K', 'MUNYAO', '254721897311', 'dk.doriskarambu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(842, 7, 'BRIG', 'BENJAMIN', 'NGANDA', '254722708622', 'bnganda9@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(843, 2, 'RICHARD', 'M', 'WAMAKAU', '254721916326', 'rwamakau@gmail', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(844, 2, 'TITUS', 'MUNYAO', 'MULINGE', '254724855279', 'mulinge.titus@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(845, 2, 'ELIZABETH', 'WANGECHI', 'NJARI', '254722810640', 'elizabeth.njari3@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(846, 2, 'GEORGE', 'LENNY', 'KISAKA', '254725700075', 'lennykisaka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(847, 2, 'PETER', 'MWITA', 'NYAMUHANGA', '254721429770', 'peter_mwita@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(848, 2, 'GEORGE', 'DAMBE', '', '254720505110', 'georgedambe@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(849, 2, 'LILY', 'WAMBUI', 'KIUNJURI', '254724330903', 'wambui_kiunjuri@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(850, 7, 'ONESMUS', 'MATHEKA', 'MUTINDA', '254722308383', 'omutinda@yahoo.com', 'NAIROBI', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(851, 7, 'GIDEON', 'MUTHOKA', 'MUSYA', '254725295998', 'muthokamusya@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(852, 7, 'DAVID', 'HOPCRAFT', '', '254733333384', 'hopcraftdavid@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(853, 2, 'MIRIAM', 'NDUNGE', 'GICHIRA', '254711641234', 'miriamndunge79@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(854, 2, 'CAROLINE', 'SOI', '', '254721497662', 'carolsoi110@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(855, 2, 'DR.JOYCE', 'MWIKALI', 'MUTINDA', '254722812550', 'jmwikali@hotmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(856, 7, 'DAN', 'AWENDO', '', '254720410910', 'dawendo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(857, 2, 'MARGARET', 'NYAMAI', '', '254720231065', 'maggynyamai@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(858, 2, 'BEATAH', 'NDUNGE', 'NZOVE', '254721592778', 'bnzove@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(859, 2, 'IRENE', 'KINUTHIA', '', '254724300256', 'irenewkinuthia@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(860, 7, 'ROBERT', 'KINUTHIA', '', '254722800026', 'bobkinuthia@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:07', '2020-02-01 10:06:21'),
(861, 2, 'JOYCE', 'NJERI', 'MUKURURI', '254715819295', 'jmukururi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(862, 2, 'ANTHONY', 'MUTUA', 'MBOLONZI', '254734712489', 'mbolonzi08@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(863, 7, 'NOEL', 'MANYENZE', '', '254722219508', 'nmanyenze@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(864, 7, 'ALEX', 'RUHIU', '', '254722386757', 'aruhiu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(865, 2, 'ALTON', 'RUGETHO', 'MURIGU', '254721236714', 'arugetho@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(866, 7, 'MICHAEL', 'MATIMU', '', '254722531224', 'mmkinyua4@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(867, 2, 'HENRY', 'KANYONGA', '', '254722370213', 'henry.ndungu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(868, 2, 'CATHERINE', 'MUTHONI', '', '254720854812', 'kinyacc@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(869, 2, 'DINAH', 'NYABOKE', '', '254727742205', 'dinahnyaboke@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(870, 2, 'PROF. DOUGLAS', 'SHITANDA', '', '254722272265', 'shitandad@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(871, 2, 'MICHAEL', 'OMWANGO', '', '254733733938', 'michaelomwango@gmsail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(872, 2, 'PETRONILL', 'C', 'ROP', '254721592594', 'pettomwango@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(873, 7, 'NICHOLAS', 'MUSAU', '', '254722772601', 'musau007@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(874, 2, 'JOSEPHINE', 'M', 'NGANDA', '254722497608', 'josephine2@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(875, 2, 'JUSTUS', 'MUTISYA', 'MUTIA', '254721934151', 'mutiajustus@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(876, 7, 'NATHANIEL', 'NGUITHI', '', '254702251729', 'nnguithi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(877, 2, 'REUBEN', 'OLE', 'NAKUO', '254721222276', 'nakuosaruni@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(878, 7, 'DR JOSEPH', 'KARANJA', '', '254722653683', 'jkkaranja33@gimail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(879, 7, 'JOHN', 'NDUNGU', 'IKONYA', '254722590498', 'wambuimaitu@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(880, 7, 'MARK', 'NZIOKA', 'MARKINDI', '254722527729', 'mmarkindi@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(881, 2, 'ALICE', 'SANDIMU', 'ABERE', '254726716880', 'abere.sandimu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(882, 2, 'URBANUS', 'WAMBUA', 'MUSYOKA', '254720238874', 'uwmusyoka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(883, 2, 'MATHEW', 'GICHOHI', '', '254722210505', 'wambugumathew@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:08', '2020-02-01 10:06:21'),
(884, 2, 'JANE', 'WOTHAYA', '', '254722642061', 'janexjane786@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(885, 2, 'MARY', 'AYIEKO', 'ODHIAMBO', '254700168283', 'maryouma02@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(886, 7, 'ANTONY', 'OUMA', 'JUMA', '254706823283', 'aoumaju@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(887, 2, 'JOSEPH', 'MUKUNYA', 'MATHENGE', '254721952495', 'jmukunya@prosperitykenya.net', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(888, 2, 'PROF. JOSEPHAT', 'Mboya', 'KIWEU', '254721725931', 'jkiweu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(889, 2, 'PHILIP', 'KIPKORIR', 'MONGONY', '254722743133', 'philmongony@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(890, 7, 'RAPHAEL', 'WANJOHI', 'GIKUNJU', '254714677135', 'rgikunju@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(891, 2, 'KAREN', 'MUENI', 'MAKAU', '254725544401', 'karenmakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(892, 7, 'FRANCIS', 'MUTUA', 'MUSYOKA', '254725348316', 'luusahfm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(893, 2, 'MARUTI', 'APOLLINARIS', 'LITALI', '254721594060', 'marutilitali@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(894, 2, 'DR. EMILY', 'KATUNGE', 'MUTUNGA', '254726281510', 'emilykatunge@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(895, 2, 'VICTORIA', 'WAMBUI', 'MBOYA', '254712052018', 'victoriawambui2014@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(896, 7, 'VICTOR', 'JUMA', '', '254722558348', 'victorjumah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(897, 2, 'DUNCAN', 'GICHARU', 'GIKUMA', '254722820056', 'dankiumbi2015@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(898, 2, 'CHRISANDUS', 'WAFULA NJOFU', 'KHAEMBA', '254722378249', 'wafulamutoca@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(899, 2, 'MARTIN', 'KYALO', 'MBATE', '254727339186', 'kmbate90@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(900, 2, 'JAMES', 'MUSEE', 'NDUNA', '254727623944', 'museenduna@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(901, 2, 'JOHN', 'WAMBU', '', '254721920519', 'juniorkamondia@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(902, 2, 'STEVE', 'SUMBI', 'KAMUYA', '254722509428', 'steve.kamuya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(903, 2, 'FAITH', 'HAKI', 'WANJIKU', '254721890630', 'faithhaki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:09', '2020-02-01 10:06:21'),
(904, 2, 'CARLOS', 'KILONZO', 'MULE', '254722868982', 'carlosmule2030@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(905, 2, 'SAMSON', 'M', 'MBUKA', '254722784453', 'samsonmbuka@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(906, 2, 'MAXWELL', 'MANGOKA', 'KIMEU', '254729447444', 'maxwellkimeu@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(907, 2, 'CHARLES', 'ONYURAH', '', '254722387130', 'mwitsahcharles@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(908, 2, 'AGATHA', 'KIHARA', '', '254722151564', 'nimzkihara@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(909, 2, 'CAROLINE', 'MBENE', '', '254726577830', 'carolinembene@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(910, 2, 'CAPT.PETER', 'STANNIE', 'KINYANZUI', '254722514808', 'captkinyanzuri@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(911, 7, 'F.', 'MWANIA', 'MUTHOKA', '254729832901', 'muthokafm@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(912, 2, 'SIMON', 'MULANDI', 'KALEI', '254722851427', 'smkaleih@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(913, 7, 'GURPREET', 'SINGH', 'PALNA', '254723340440', 'pikfixltd@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(914, 7, 'DAVID', 'G', 'MUCHUNGU', '254722866700', 'dgmuchungu@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(915, 7, 'MOI', 'LEMOSHIRA', '', '254701853564', 'meijio2015@yahoo.co.uk', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(916, 2, 'JOSHUA', 'MUINDI', '', '254707277946', 'jmuindi11@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(917, 7, 'JOSHUA', 'MUTIE', '', '254722944763', 'mutiejv@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(918, 7, 'ANTON', 'KIHARA', '', '254722749910', 'antonkihara@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(919, 2, 'NDANU', 'MUSAU', '', '254722519506', 'ndanu.musau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(920, 7, 'JENNIFER', 'MUENI', 'MUTHINI', '254723061413', 'jenniemuthini@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(921, 2, 'ISACK', 'KIMARU', 'BIWOTT', '254722396457', 'kibiis70@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(922, 2, 'CAROLINE', 'MUTUKU', '', '254722200436', 'carol.mutuku1@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:10', '2020-02-01 10:06:21'),
(923, 2, 'MARY', 'JUSTER', 'MAKAU', '254701429259', 'marymakau01@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(924, 7, 'GERALD', 'MATOLA', '', '254722518050', 'gerald.matola@galanaoil.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(925, 2, 'SAMMY', 'KM', 'MANDA', '254722554492', 'kingoomanda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(926, 2, 'VINCENT', 'MUELA', 'KILONZO', '254713662662', 'vkilonzo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(927, 2, 'JUDITH NZOMO', 'JUDITH NZOMO', '', '254706754718', 'nzomj.jn@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(928, 2, 'CHRIS', 'KATIWA', '', '254725647722', 'ckatiwa49@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(929, 7, 'PETER', 'NZIOKA', '', '254714005300', 'pnzioka011@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(930, 2, 'JEMIMAH', 'PETER', '', '254729787503', 'jemimah@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(931, 2, 'MOSS', 'NDIWA', '', '254722833770', 'ndiwamoss64@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(932, 2, 'RAJESHWARI', 'CHUDASAMA', '', '254725499343', 'rajeshwarij37@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(933, 2, 'ADAM', 'MUTHAMA', '', '254780553394', 'adam.muthama@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(934, 2, 'JOYCE', 'NASIMIYU', '', '254710430997', 'adam.muthama5@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(935, 2, 'CHARLES', 'MUNYOROR', '', '254722745651', 'ckchain@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(936, 2, 'THOMAS', 'M.', 'MUTISO', '254721485571', 'tommutiso123@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(937, 2, 'PATRICK', 'NGOMBALU', 'KILOBIA', '254725475071', 'scalafrica@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(938, 2, 'DENNIS', 'DUEL', 'MWANGI', '254725718471', 'dennis@thalia.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:11', '2020-02-01 10:06:21'),
(939, 7, 'WAWERU', 'TUTI', '', '254720563807', 'wawerututi@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(940, 2, 'ANDREW', 'MUDUYA', 'LOMOSI', '254724716979', 'andrew@chevronafrica.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(941, 7, 'MARY', 'JULIUS', '', '254727121226', 'mary_rotich@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(942, 2, 'ALEX', 'NYAMAI', 'MUTHINI', '254722804313', 'alexnyamaimuthini@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(943, 2, 'MARY', 'KALONDU', 'MUIYA', '254702505665', 'jakam@ yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(944, 2, 'JENIFFER', 'MUSYIMI', '', '254721516200', 'jeycom2016@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(945, 2, 'HON..GIDEON', 'NDAMBUKI', '', '254720384553', 'g.ndambuki@yahoo\'com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(946, 2, 'CHRISTINE MUTHOKA', 'CHRISTINE MUTHOKA', '', '254726236288', 'cwaviti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(947, 7, 'JOYCE', 'WANZA', 'MATHEKA', '254722681976', 'joyce.wanza@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(948, 2, 'NELLY', 'CHELAGAT', 'KENEI', '254733611354', 'chellakenei@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(949, 7, 'JOSEPH', 'MUSYOKI', 'NDUNDA', '254722127277', 'ndundajoseph@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(950, 2, 'LYNDA', 'MUTUA', '', '254725348578', 'lyndamutua@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(951, 2, 'ALFRED', 'TEMESHYA', '', '254722284129', 'alfredtemeshya11@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(952, 2, 'WAMBUI', 'TEMESHYA', '', '254725031354', 'wanguiloreen@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(953, 2, 'CO-OPERATIVE BANK OF KENYA', '', '', '254729231333', 'machakosbr@co-opbank.co.ke', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(954, 2, 'PAULINE', 'MUENI', 'WAMBUA', '254722589051', 'mutua.pauline@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:12', '2020-02-01 10:06:21'),
(955, 2, 'BRENDA', 'WANJIRU', 'GATHECHA', '254799066170', 'gatechabrenda@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(956, 2, 'WINDSOR', 'BAHATI', 'MUTUA', '254704491661', 'windsor.bahati@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(957, 7, 'CATHERINE', 'NDUNDA', '', '254722530294', 'Catherine@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(958, 7, 'JULIA', 'MUTETI', '', '254713014949', 'juliamuteti@ymail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(959, 2, 'CLEMENTINE', 'MUENI', 'KILONZO', '254721248711', 'clementinekilonzo@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(960, 2, 'ROSELYNNE', 'MUKONYO', 'MWANZIA', '254716328132', 'rossjim44@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(961, 2, 'SHEILA', 'MUENI', 'MUKUNYA', '254722365857', 'mukunyasheila@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(962, 2, 'ERIC', 'ASWANI', 'NYALIGU', '254723453848', 'eaaswani@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(963, 7, 'DANIEL', 'KANCHORI', '', '254719561412', 'dkanchori@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(964, 7, 'JOSEPH', 'MULE', 'MBITHI', '254723547510', 'mbithijosef@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(965, 2, 'MARY', 'MUTINDI', 'MUTHAMA', '254714350016', 'mmuthamamary@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(966, 7, 'ABEL', 'MUSYOKI', 'MUTHOKA', '254722273476', 'abelmbole73@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(967, 2, 'COL GEORGE', 'MUSAU', 'MAINGI', '254727911715', 'musauwambua20@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:13', '2020-02-01 10:06:21'),
(968, 2, 'CAROLINE', 'SANG', 'TUTI', '254721334390', 'nenosang@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(969, 2, 'ANDREW', 'MUTUA', 'MWONGA', '254702282012', 'amwonga55@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(970, 7, 'PATRICK', 'MUTETI', '', '254721494534', 'muteti@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(971, 7, 'DAN', 'MUTINDA', 'WAMBUA', '254721850896', 'dan.wambua76@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(972, 7, 'STELLA', 'WAMBUA', '', '254714720727', 'wahustella@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(973, 2, 'BERNADETTE', 'KATUNGE', 'KINYUNGU', '254777286389', 'bkatungek@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(974, 2, 'DORRIN', 'N', 'MUNYAO', '254722254896', 'dorrinmunyao@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(975, 2, 'MRS.MAGDALENE', 'MAKAU', '', '254722559618', 'magdalene.musyoki@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(976, 2, 'ENG. PAUL', 'MUSYOKI', 'MAKAU', '254722363597', 'pmmakau@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(977, 2, 'ALVIN MOKAYA', 'ALVIN MOKAYA', '', '254721991486', 'alvin.mokaya@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(978, 2, 'RHODA', 'KOECH', '', '254737687140', 'rhodakoech@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(979, 2, 'LUCAS', 'MULINGE', 'MWOVE', '254727577003', 'lucasmwove@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(980, 7, 'PAUL', 'M', 'MWANGANGI', '254720123242', 'baaceprojects2016@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(981, 7, 'DANIEL', 'KILENGE', '', '254722701372', 'daniel.kilenge@gmail.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(982, 2, 'OBODHA', 'OGUDA', 'BRUNO', '254712863595', 'obodhabruno@yahoo.com', 'MACHAKOS', '', '2020-02-01 09:13:14', '2020-02-01 10:06:21'),
(983, 4, 'Fred', 'Nyachmo', 'Omollo', '254700228592', 'fred@zalego.com', 'KISUMU', 'ZALEGO', '2020-02-01 09:13:14', '2020-02-01 09:13:14'),
(984, 3, 'Makumi', '', 'Steve', '254704372166', 'makumi@zalego.com', 'Nakurur', 'Zalego', '2020-02-01 09:13:15', '2020-02-01 09:13:15'),
(985, 3, 'Hudson', '', 'Ngeti', '254713164864', 'hudson@zalego.com', 'Nairobi', 'Zalego', '2020-02-01 09:13:15', '2020-02-01 09:13:15'),
(986, 6, 'FAITH', '', 'MUTHEU', '254713699712', 'faithmutheu096@gmail.com', '', '', '2020-02-01 09:13:15', '2020-02-01 09:13:15'),
(987, 6, 'FRIDAH', '', 'LELEI', '254717455067', 'leleifridah@gmail.com', '', '', '2020-02-01 09:13:15', '2020-02-01 09:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Club Directors', '2020-02-01 06:23:45', '2020-02-01 06:23:45'),
(2, 'Club Members', '2020-02-01 06:40:09', '2020-02-01 06:40:27'),
(3, 'Testing Team', '2020-02-01 06:40:43', '2020-02-01 06:40:43'),
(4, 'Testing Team2', '2020-02-01 06:41:00', '2020-02-01 06:41:00'),
(5, 'Golfing Committee', '2020-02-01 06:41:11', '2020-02-01 06:41:11'),
(6, 'Admin', '2020-02-01 06:41:27', '2020-02-01 06:41:27'),
(7, 'Golfers', '2020-02-01 06:41:49', '2020-02-01 06:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_18_151544_create_roles_table', 1),
(4, '2019_12_23_082707_create_welcomes_table', 1),
(5, '2019_12_23_083854_create_activity_logs_table', 1),
(6, '2020_02_01_085523_create_groups_table', 2),
(8, '2020_02_01_113117_create_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2020-02-01 04:56:28', '2020-02-01 04:56:28'),
(3, 2, 4, '2020-02-01 06:44:14', '2020-02-01 06:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `middleName`, `lastName`, `phone`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hudson', NULL, 'Ngeti', NULL, 'ngetihudson@gmail.com', NULL, NULL, '$2y$10$qhe0jEcVQh.NpZsOkPqP8OBXEk/YrhG97bFveAldci7dvcxrlJ5la', NULL, '2020-02-01 04:56:28', '2020-02-02 14:31:41'),
(2, 'Eric', NULL, 'Zalego', '0713164864', 'eric@zalego.com', NULL, NULL, '$2y$10$7qmNLRgUzr.OXSneWfnUSepEclO3yOVulu4B8ESb29ievpgCg1Zrm', NULL, '2020-02-01 06:44:14', '2020-02-01 06:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `welcomes`
--

CREATE TABLE `welcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_index` (`user_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_group_id_index` (`group_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
