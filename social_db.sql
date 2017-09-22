-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2017 at 09:20 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add MINING', 7, 'add_mining'),
(20, 'Can change MINING', 7, 'change_mining'),
(21, 'Can delete MINING', 7, 'delete_mining'),
(22, 'Can add refresh token', 8, 'add_refreshtoken'),
(23, 'Can change refresh token', 8, 'change_refreshtoken'),
(24, 'Can delete refresh token', 8, 'delete_refreshtoken'),
(25, 'Can add grant', 9, 'add_grant'),
(26, 'Can change grant', 9, 'change_grant'),
(27, 'Can delete grant', 9, 'delete_grant'),
(28, 'Can add application', 10, 'add_application'),
(29, 'Can change application', 10, 'change_application'),
(30, 'Can delete application', 10, 'delete_application'),
(31, 'Can add access token', 11, 'add_accesstoken'),
(32, 'Can change access token', 11, 'change_accesstoken'),
(33, 'Can delete access token', 11, 'delete_accesstoken');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$AZd1wwBeeChV$Up0wWVUeVlOIMFi4H9of8lXtFNPdlDIw96/7sGU+FCE=', NULL, 1, 'admin', '', '', '', 1, 1, '2017-09-22 03:34:11.166848');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'facebook_mining', 'mining'),
(11, 'oauth2_provider', 'accesstoken'),
(10, 'oauth2_provider', 'application'),
(9, 'oauth2_provider', 'grant'),
(8, 'oauth2_provider', 'refreshtoken'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-09-22 03:33:29.955551'),
(2, 'auth', '0001_initial', '2017-09-22 03:33:35.725637'),
(3, 'admin', '0001_initial', '2017-09-22 03:33:37.098629'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-09-22 03:33:37.151208'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-09-22 03:33:37.907706'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-09-22 03:33:38.948910'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-09-22 03:33:39.448823'),
(8, 'auth', '0004_alter_user_username_opts', '2017-09-22 03:33:39.504814'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-09-22 03:33:39.843309'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-09-22 03:33:39.877629'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-09-22 03:33:39.989226'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-09-22 03:33:40.465146'),
(13, 'sessions', '0001_initial', '2017-09-22 03:33:41.118464'),
(14, 'facebook_mining', '0001_initial', '2017-09-22 04:32:28.484065'),
(15, 'oauth2_provider', '0001_initial', '2017-09-22 06:05:53.284647'),
(16, 'oauth2_provider', '0002_08_updates', '2017-09-22 06:05:55.798949'),
(17, 'oauth2_provider', '0003_auto_20160316_1503', '2017-09-22 06:05:56.815240'),
(18, 'oauth2_provider', '0004_auto_20160525_1623', '2017-09-22 06:05:57.977033'),
(19, 'oauth2_provider', '0005_auto_20170514_1141', '2017-09-22 06:06:12.820165');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facebook_mining_mining`
--

CREATE TABLE `facebook_mining_mining` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `likes` varchar(50) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook_mining_mining`
--

INSERT INTO `facebook_mining_mining` (`id`, `name`, `category`, `likes`, `location`) VALUES
(1, 'Wonogiri, Jawa Tengah, Indonesia', 'City', '38259', 'Indonesia'),
(2, 'Polres Wonogiri', 'Police Station', '933', 'Indonesia'),
(3, 'Kabupaten Wonogiri', 'Region', '599', '{\'longitude\': 111.05, \'latitude\': -7.9166666666667}'),
(4, 'SMK Negeri 2 Wonogiri', 'High School', '1598', 'Indonesia'),
(5, 'Wonogiri City', 'City', '6972', 'Indonesia'),
(6, 'SMK Muhammadiyah 2 Wuryantoro Kab. Wonogiri', 'High School', '419', 'Indonesia'),
(7, 'Info Wonogiri', 'Broadcasting & Media Production Company', '10376', 'Indonesia'),
(8, 'Ayam Panggang Wonogiri YuCempluk', 'Family Style Restaurant', '805', 'Indonesia'),
(9, 'Wisata Wonogiri', 'Tour Agency', '1579', 'Indonesia'),
(10, 'Wonogiri\'s shop', 'Home Decor', '870', 'Indonesia'),
(11, 'Semagar, Girimarto, Wonogiri, Jawa Tengah', 'City', '213', 'Indonesia'),
(12, 'Fire opal, fire opal asli, fire opal wonogiri', 'Jewelry & Watches Store', '1081', 'Indonesia'),
(13, 'AKPER GIRI SATRIA HUSADA WONOGIRI', 'College & University', '793', 'Indonesia'),
(14, 'Jajar Talesan Purwantoro Wonogiri', 'Region', '18', 'Indonesia'),
(15, 'Ayam Panggang \"Mbak Tri\" Wonogiri', 'Family Style Restaurant', '1720', 'Indonesia'),
(16, 'HOAX (The Wonogirian Backpackers)', 'Community Organization', '1544', 'Indonesia'),
(17, 'WAREGG\"Wonogiri Anak Reggae\"', 'Community Organization', '2746', 'Indonesia'),
(18, 'Dinas Pendidikan Kab. Wonogiri', 'Government Organization', '631', 'Indonesia'),
(19, 'Wonogiri, Jawa Tengah, Indonesia', 'City', '38259', 'Indonesia'),
(20, 'SMPN 3 Wonogiri', 'School', '979', 'Indonesia'),
(21, 'Polres Wonogiri', 'Police Station', '933', 'Indonesia'),
(22, 'SUARA RAKYAt WONOGIRI', 'Society & Culture Website', '8730', 'Indonesia'),
(23, 'Kabupaten Wonogiri', 'Region', '599', '{\'longitude\': 111.05, \'latitude\': -7.9166666666667}'),
(24, 'SMK Muhammadiyah 6 Tirtomoyo Wonogiri', 'High School', '606', 'Indonesia'),
(25, 'SMK Negeri 2 Wonogiri', 'High School', '1598', 'Indonesia'),
(26, 'Wonogiri City', 'City', '6972', 'Indonesia'),
(27, 'SMK Muhammadiyah 2 Wuryantoro Kab. Wonogiri', 'High School', '419', 'Indonesia'),
(28, 'Info Wonogiri', 'Broadcasting & Media Production Company', '10376', 'Indonesia'),
(29, 'Ayam Panggang Wonogiri YuCempluk', 'Family Style Restaurant', '805', 'Indonesia'),
(30, 'Wisata Wonogiri', 'Tour Agency', '1579', 'Indonesia'),
(31, 'Wonogiri\'s shop', 'Home Decor', '870', 'Indonesia'),
(32, 'Semagar, Girimarto, Wonogiri, Jawa Tengah', 'City', '213', 'Indonesia'),
(33, 'Fire opal, fire opal asli, fire opal wonogiri', 'Jewelry & Watches Store', '1081', 'Indonesia'),
(34, 'AKPER GIRI SATRIA HUSADA WONOGIRI', 'College & University', '793', 'Indonesia'),
(35, 'Jajar Talesan Purwantoro Wonogiri', 'Region', '18', 'Indonesia'),
(36, 'Ayam Panggang \"Mbak Tri\" Wonogiri', 'Family Style Restaurant', '1720', 'Indonesia'),
(37, 'HOAX (The Wonogirian Backpackers)', 'Community Organization', '1544', 'Indonesia'),
(38, 'WAREGG\"Wonogiri Anak Reggae\"', 'Community Organization', '2746', 'Indonesia'),
(39, 'Dinas Pendidikan Kab. Wonogiri', 'Government Organization', '631', 'Indonesia'),
(40, 'SMPN 3 Wonogiri', 'School', '979', 'Indonesia'),
(41, 'SUARA RAKYAt WONOGIRI', 'Society & Culture Website', '8730', 'Indonesia'),
(42, 'SMK Muhammadiyah 6 Tirtomoyo Wonogiri', 'High School', '606', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(8, 'd', 'i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `facebook_mining_mining`
--
ALTER TABLE `facebook_mining_mining`
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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `facebook_mining_mining`
--
ALTER TABLE `facebook_mining_mining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
