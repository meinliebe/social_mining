-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2017 at 05:05 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `facebook_mining_mining`
--

CREATE TABLE `facebook_mining_mining` (
  `id` int(11) NOT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook_mining_mining`
--

INSERT INTO `facebook_mining_mining` (`id`, `facebook_id`, `name`, `category`, `likes`, `location`, `city`) VALUES
(310, '110648362294260', 'Wonogiri, Jawa Tengah, Indonesia', 'City', 38266, 'Indonesia', 'Wonogiri'),
(311, '629360007217683', 'Ayam Panggang Wonogiri YuCempluk', 'Family Style Restaurant', 810, 'Indonesia', 'Surakarta'),
(312, '326026157500760', 'Polres Wonogiri', 'Police Station', 936, 'Indonesia', 'Wonogiri'),
(313, '625939487468281', 'SMK Negeri 2 Wonogiri', 'High School', 1603, 'Indonesia', 'Wonogiri'),
(314, '185598674952765', 'Wonogiri City', 'City', 6972, 'Indonesia', 'Wonogiri'),
(315, '737183806313216', 'SMK Muhammadiyah 2 Wuryantoro Kab. Wonogiri', 'High School', 423, 'Indonesia', 'Wonogiri'),
(316, '127026967365639', 'Info Wonogiri', 'Broadcasting & Media Production Company', 10380, 'Indonesia', 'Wonogiri'),
(317, '141843155993991', 'Wisata Wonogiri', 'Tour Agency', 1584, 'Indonesia', 'Wonogiri'),
(318, '654392764596641', 'Wonogiri\'s shop', 'Home Decor', 872, 'Indonesia', 'Wonogiri'),
(319, '119621741550346', 'Semagar, Girimarto, Wonogiri, Jawa Tengah', 'City', 213, 'Indonesia', 'Wonogiri'),
(320, '1484418668541912', 'Fire opal, fire opal asli, fire opal wonogiri', 'Jewelry & Watches Store', 1081, 'Indonesia', 'Surakarta'),
(321, '140550232693618', 'AKPER GIRI SATRIA HUSADA WONOGIRI', 'College & University', 793, 'Indonesia', 'Wonogiri'),
(322, '218541558303104', 'Jajar Talesan Purwantoro Wonogiri', 'Region', 18, 'Indonesia', 'Purwantoro'),
(323, '459289884121088', 'HOAX (The Wonogirian Backpackers)', 'Community Organization', 1546, 'Indonesia', 'Wonogiri'),
(324, '331894493608142', 'Dinas Pendidikan Kab. Wonogiri', 'Government Organization', 631, 'Indonesia', 'Wonogiri'),
(325, '1427360197477722', 'Ayam Panggang "Mbak Tri" Wonogiri', 'Family Style Restaurant', 1723, 'Indonesia', 'Wonogiri'),
(326, '200110902810', 'WAREGG"Wonogiri Anak Reggae"', 'Community Organization', 2745, 'Indonesia', 'Wonogiri'),
(327, '277141120334', 'SMPN 3 Wonogiri', 'School', 979, 'Indonesia', 'Wonogiri'),
(328, '115379301842100', 'SUARA RAKYAt WONOGIRI', 'Society & Culture Website', 8738, 'Indonesia', 'Wonogiri'),
(329, '186548988047977', 'SMK Muhammadiyah 6 Tirtomoyo Wonogiri', 'High School', 607, 'Indonesia', 'Wonogiri'),
(330, '164023820277468', 'Tugu Pahlawan', 'Indonesian Restaurant', 2248, 'Indonesia', 'Surabaya'),
(331, '158022694219917', 'Taman Makam Pahlawan Kalibata', 'City', 614, 'Indonesia', 'Jakarta'),
(332, '196687100541704', 'Taman Makam Pahlawan Giri Tunggal', 'Just For Fun', 68, 'Indonesia', 'Malang'),
(333, '155670144463423', 'Taman Makam Pahlawan Kusuma Negara', 'Cemetery', 100, 'Indonesia', 'Jakarta'),
(334, '648946481810192', 'Kedai kopi pahlawan trip', 'Restaurant', 410, 'Indonesia', 'Malang'),
(335, '662451107131922', 'Monumen Tugu Pahlawan dan Museum Sepuluh Nopember', 'Monument', 259, 'Indonesia', 'Surabaya'),
(336, '1456543707992125', 'Universitas Pahlawan Tuanku Tambusai - UP', 'College & University', 946, 'Indonesia', 'Bangkinang'),
(337, '643356819011836', 'Taman Makam Pahlawan Nasional Radin Intan II', 'Sports & Recreation', 899, 'Indonesia', 'Kalianda'),
(338, '293841860656068', 'Universitas Muhammadiyah Sukabumi', 'College & University', 5324, 'Indonesia', 'Sukabumi'),
(339, '1399439130358662', 'Universitas Muhammadiyah Prof.DR.HAMKA', 'College & University', 2786, 'Indonesia', 'Jakarta'),
(340, '1510388005880936', 'Universitas Muhammadiyah Palembang', 'College & University', 6779, 'Indonesia', 'Palembang'),
(341, '124349308845', 'Universitas Muhammadiyah Aceh', 'College & University', 7745, 'Indonesia', 'Banda Aceh'),
(342, '361484057199614', 'Universitas Muhammadiyah Surakarta', 'School', 17828, 'Indonesia', 'Nogosari'),
(343, '115690448445053', 'Smp Muhammadiyah', 'School', 8512, 'Indonesia', 'Salatiga'),
(344, '213404605381455', 'SMK MUHAMMADIYAH', 'Religious School', 14271, 'Indonesia', 'Jakarta'),
(345, '160664710629723', 'SMK Muhammadiyah 1 Lamongan', 'Computer Training School', 4577, 'Indonesia', 'Lamongan'),
(346, '247849775282719', 'RS PKU Muhammadiyah Sruweng', 'Hospital', 1342, 'Indonesia', 'Sruweng'),
(347, '1585339318404901', 'Universitas Muhammadiyah Malang', 'School', 987, 'Indonesia', 'Malang'),
(348, '723724080975793', 'Muhammadiyah University of Yogyakarta', 'College & University', 733, 'Indonesia', 'Yogyakarta City'),
(349, '279056132131677', 'Universitas Muhammadiyah Palu', 'College & University', 964, 'Indonesia', 'Palu'),
(350, '147553560453', 'Universitas Muhammadiyah Malang', 'College & University', 49069, 'Indonesia', 'Malang'),
(351, '889004534506619', 'SMA Muhammadiyah 1 Gresik', 'High School', 4422, 'Indonesia', 'Gresik'),
(352, '707769085999515', 'Smk Muhammadiyah', 'Private School', 149, 'Indonesia', 'Lumajang'),
(353, '599214083447296', 'Suara Muhammadiyah', 'Publisher', 48450, 'Indonesia', 'Yogyakarta City'),
(354, '1681047122123410', 'Universitas Muhammadiyah Sidoarjo', 'College & University', 961, 'Indonesia', 'Sidoarjo'),
(355, '250511699645', 'Persyarikatan Muhammadiyah', 'Non-Governmental Organization (NGO)', 199695, 'Indonesia', 'Yogyakarta City'),
(356, '1449972781981136', 'Universitas Muhammadiyah Tangerang', 'College & University', 1395, 'Indonesia', 'Jakarta'),
(357, '375901762603950', 'Universitas Muhammadiyah Ponorogo', 'School', 457, 'Indonesia', 'Ponorogo'),
(358, '194004417331919', 'SMK Muhammadiyah Sumedang', 'High School', 332, 'Indonesia', 'Sumedang'),
(359, '822624627820383', 'Universitas Muhammadiyah Pare-Pare', 'Educational Research Center', 524, 'Indonesia', 'Parepare'),
(360, '383250108406675', 'Universitas Muhammadiyah Purworejo', 'College & University', 4096, 'Indonesia', 'Purworejo'),
(361, '787585318025695', 'Universitas Muhammadiyah Riau', 'School', 288, 'Indonesia', 'Pekanbaru'),
(362, '467827510051490', 'Universitas Muhammadiyah Purwokerto', 'College & University', 361, 'Indonesia', 'Purwokerto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facebook_mining_mining`
--
ALTER TABLE `facebook_mining_mining`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facebook_mining_mining`
--
ALTER TABLE `facebook_mining_mining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
