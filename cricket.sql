-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 02:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_date` date NOT NULL,
  `match_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `match_date`, `match_status`, `created_at`, `updated_at`) VALUES
(1, '2020-05-17', 2, '2020-05-16 05:16:36', '2020-05-16 05:18:56'),
(2, '2020-05-18', 2, '2020-05-16 05:16:36', '2020-05-16 06:16:16'),
(3, '2020-05-19', 0, '2020-05-16 05:16:36', NULL),
(4, '2020-05-20', 0, '2020-05-16 05:16:36', NULL),
(5, '2020-05-21', 0, '2020-05-16 05:16:37', NULL),
(6, '2020-05-22', 0, '2020-05-16 05:16:37', NULL),
(7, '2020-05-23', 2, '2020-05-16 05:16:37', '2020-05-16 06:15:34'),
(8, '2020-05-24', 0, '2020-05-16 05:16:37', NULL),
(9, '2020-05-25', 0, '2020-05-16 05:16:37', NULL),
(10, '2020-05-26', 0, '2020-05-16 05:16:37', NULL),
(11, '2020-05-27', 0, '2020-05-16 05:16:37', NULL),
(12, '2020-05-28', 0, '2020-05-16 05:16:37', NULL),
(13, '2020-05-29', 0, '2020-05-16 05:16:37', NULL),
(14, '2020-05-30', 0, '2020-05-16 05:16:37', NULL),
(15, '2020-05-31', 0, '2020-05-16 05:16:37', NULL),
(16, '2020-06-01', 0, '2020-05-16 05:16:37', NULL),
(17, '2020-06-02', 0, '2020-05-16 05:16:37', NULL),
(18, '2020-06-03', 0, '2020-05-16 05:16:37', NULL),
(19, '2020-06-04', 0, '2020-05-16 05:16:37', NULL),
(20, '2020-06-05', 0, '2020-05-16 05:16:37', NULL),
(21, '2020-06-06', 0, '2020-05-16 05:16:37', NULL),
(22, '2020-06-07', 0, '2020-05-16 05:16:37', NULL),
(23, '2020-06-08', 0, '2020-05-16 05:16:37', NULL),
(24, '2020-06-09', 0, '2020-05-16 05:16:37', NULL),
(25, '2020-06-10', 0, '2020-05-16 05:16:37', NULL),
(26, '2020-06-11', 0, '2020-05-16 05:16:37', NULL),
(27, '2020-06-12', 0, '2020-05-16 05:16:37', NULL),
(28, '2020-06-13', 0, '2020-05-16 05:16:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `match_teams`
--

CREATE TABLE `match_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL,
  `team_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `match_points` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `match_teams`
--

INSERT INTO `match_teams` (`id`, `match_id`, `team_id`, `team_status`, `match_points`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, '2020-05-16 05:16:36', '2020-05-16 05:18:56'),
(2, 1, 2, 2, 0, '2020-05-16 05:16:36', '2020-05-16 05:18:56'),
(3, 2, 1, 3, 1, '2020-05-16 05:16:36', '2020-05-16 06:16:16'),
(4, 2, 3, 3, 1, '2020-05-16 05:16:36', '2020-05-16 06:16:16'),
(5, 3, 1, 0, 0, '2020-05-16 05:16:36', NULL),
(6, 3, 4, 0, 0, '2020-05-16 05:16:36', NULL),
(7, 4, 1, 0, 0, '2020-05-16 05:16:36', NULL),
(8, 4, 5, 0, 0, '2020-05-16 05:16:36', NULL),
(9, 5, 1, 0, 0, '2020-05-16 05:16:37', NULL),
(10, 5, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(11, 6, 1, 0, 0, '2020-05-16 05:16:37', NULL),
(12, 6, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(13, 7, 1, 2, 0, '2020-05-16 05:16:37', '2020-05-16 06:15:34'),
(14, 7, 8, 1, 2, '2020-05-16 05:16:37', '2020-05-16 06:15:34'),
(15, 8, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(16, 8, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(17, 9, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(18, 9, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(19, 10, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(20, 10, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(21, 11, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(22, 11, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(23, 12, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(24, 12, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(25, 13, 2, 0, 0, '2020-05-16 05:16:37', NULL),
(26, 13, 8, 0, 0, '2020-05-16 05:16:37', NULL),
(27, 14, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(28, 14, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(29, 15, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(30, 15, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(31, 16, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(32, 16, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(33, 17, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(34, 17, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(35, 18, 3, 0, 0, '2020-05-16 05:16:37', NULL),
(36, 18, 8, 0, 0, '2020-05-16 05:16:37', NULL),
(37, 19, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(38, 19, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(39, 20, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(40, 20, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(41, 21, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(42, 21, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(43, 22, 4, 0, 0, '2020-05-16 05:16:37', NULL),
(44, 22, 8, 0, 0, '2020-05-16 05:16:37', NULL),
(45, 23, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(46, 23, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(47, 24, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(48, 24, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(49, 25, 5, 0, 0, '2020-05-16 05:16:37', NULL),
(50, 25, 8, 0, 0, '2020-05-16 05:16:37', NULL),
(51, 26, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(52, 26, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(53, 27, 6, 0, 0, '2020-05-16 05:16:37', NULL),
(54, 27, 8, 0, 0, '2020-05-16 05:16:37', NULL),
(55, 28, 7, 0, 0, '2020-05-16 05:16:37', NULL),
(56, 28, 8, 0, 0, '2020-05-16 05:16:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 2),
(21, '2014_10_12_100000_create_password_resets_table', 2),
(22, '2020_05_12_041441_create_teams_table', 2),
(23, '2020_05_14_030301_create_matches_table', 2),
(24, '2020_05_14_031334_create_match_teams_table', 2),
(25, '2020_05_14_032856_create_players_table', 2),
(26, '2020_05_14_032953_create_player_history_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jersey_no` int(10) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `team_id`, `first_name`, `last_name`, `image_uri`, `jersey_no`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rohit', 'Sharma', 'uploads/players/2020/Player_0516062610_400.jpg', 12, 4, '2020-05-16 00:56:10', NULL),
(2, 1, 'Hardik', 'Pandya', 'uploads/players/2020/Player_0516062654_623.jpg', NULL, 4, '2020-05-16 00:56:54', NULL),
(3, 1, 'Kieron', 'Pollard', 'uploads/players/2020/Player_0516063143_155.jpg', NULL, NULL, '2020-05-16 01:01:43', NULL),
(4, 1, 'Jasprit', 'Bumrah', 'uploads/players/2020/Player_0516063322_483.jpg', NULL, 4, '2020-05-16 01:03:22', NULL),
(5, 2, 'MS', 'Dhoni', 'uploads/players/2020/Player_0516063513_158.jpg', NULL, 4, '2020-05-16 01:05:13', NULL),
(6, 2, 'Faf du', 'Plessis', 'uploads/players/2020/Player_0516063730_385.jpg', NULL, 7, '2020-05-16 01:07:30', NULL),
(7, 2, 'Suresh', 'Raina', 'uploads/players/2020/Player_0516063849_507.jpg', NULL, 4, '2020-05-16 01:08:49', NULL),
(8, 2, 'Deepak', 'Chahar', 'uploads/players/2020/Player_0516064025_358.jpg', NULL, NULL, '2020-05-16 01:10:25', NULL),
(9, 3, 'Ajinkya', 'Rahane', 'uploads/players/2020/Player_0516064409_231.jpg', NULL, 4, '2020-05-16 01:14:09', NULL),
(10, 3, 'Rishabh', 'Pant', 'uploads/players/2020/Player_0516064613_955.jpg', NULL, NULL, '2020-05-16 01:16:13', NULL),
(11, 3, 'Prithvi', 'Shaw', 'uploads/players/2020/Player_0516064722_374.jpg', NULL, NULL, '2020-05-16 01:17:22', NULL),
(12, 3, 'Ishant', 'Sharma', 'uploads/players/2020/Player_0516064951_758.jpg', NULL, 4, '2020-05-16 01:19:51', NULL),
(13, 4, 'Kane', 'Williamson', 'uploads/players/2020/Player_0516065209_844.jpg', NULL, 5, '2020-05-16 01:22:09', NULL),
(14, 4, 'Manish', 'Pandey', 'uploads/players/2020/Player_0516065403_349.jpg', NULL, 4, '2020-05-16 01:24:03', NULL),
(15, 4, 'Bhuvneshwar', 'Kumar', 'uploads/players/2020/Player_0516065530_816.jpg', NULL, 4, '2020-05-16 01:25:30', NULL),
(16, 4, 'David', 'Warner', 'uploads/players/2020/Player_0516065709_277.jpg', NULL, 1, '2020-05-16 01:27:09', NULL),
(17, 8, 'Virat', 'Kohli', 'uploads/players/2020/Player_0516070020_346.jpg', NULL, 4, '2020-05-16 01:30:20', NULL),
(18, 8, 'Parthiv', 'Patel', 'uploads/players/2020/Player_0516070209_125.jpg', NULL, 4, '2020-05-16 01:32:09', NULL),
(19, 5, 'Shivam', 'Mavi', 'uploads/players/2020/Player_0516093659_499.jpg', NULL, NULL, '2020-05-16 04:06:59', NULL),
(20, 5, 'Andre', 'Russell', 'uploads/players/2020/Player_0516094813_991.jpg', NULL, 9, '2020-05-16 04:18:13', NULL),
(21, 6, 'K. L', 'Rahul', 'uploads/players/2020/Player_0516095311_279.jpg', NULL, NULL, '2020-05-16 04:23:11', NULL),
(22, 7, 'Shreyas', 'Gopal', 'uploads/players/2020/Player_0516095455_493.jpg', NULL, NULL, '2020-05-16 04:24:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_history`
--

CREATE TABLE `player_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(10) UNSIGNED NOT NULL,
  `match_id` int(10) UNSIGNED NOT NULL,
  `team_match_id` int(10) UNSIGNED NOT NULL,
  `runs` int(10) UNSIGNED NOT NULL,
  `wickets` int(10) UNSIGNED NOT NULL,
  `catches` int(10) UNSIGNED NOT NULL,
  `overs` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_history`
--

INSERT INTO `player_history` (`id`, `player_id`, `match_id`, `team_match_id`, `runs`, `wickets`, `catches`, `overs`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 105, 0, 1, 0, '2020-05-16 06:39:17', '2020-05-16 06:39:17'),
(2, 2, 1, 1, 25, 2, 1, 5, '2020-05-16 06:39:27', '2020-05-16 06:39:27'),
(3, 3, 1, 1, 45, 1, 1, 10, '2020-05-16 06:39:37', '2020-05-16 06:39:37'),
(4, 5, 1, 2, 25, 2, 1, 0, '2020-05-16 06:40:12', '2020-05-16 06:40:12'),
(5, 7, 1, 2, 125, 3, 1, 0, '2020-05-16 06:40:25', '2020-05-16 06:40:25'),
(6, 1, 2, 3, 79, 0, 1, 0, '2020-05-16 06:41:56', '2020-05-16 06:41:56'),
(7, 2, 2, 3, 12, 1, 1, 10, '2020-05-16 06:42:30', '2020-05-16 06:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_state_id` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `logo_uri`, `short_name`, `club_state_id`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai Indians', 'uploads/teams/2020/Team_0514182807_855.jpg', 'MI', 7, '2020-05-14 07:28:07', NULL),
(2, 'Chennai Super Kings', 'uploads/teams/2020/Team_0514182835_897.jpg', 'CSK', 10, '2020-05-14 07:28:35', NULL),
(3, 'Delhi Capitals', 'uploads/teams/2020/Team_0514182952_268.png', 'DD', 2, '2020-05-14 07:29:52', NULL),
(4, 'Sunrisers Hyderabad', 'uploads/teams/2020/Team_0514183034_845.jpg', 'SH', 11, '2020-05-14 07:30:34', NULL),
(5, 'Kolkata Knight Riders', 'uploads/teams/2020/Team_0514183104_430.jpg', 'KKR', 13, '2020-05-14 07:31:04', NULL),
(6, 'Kings XI Punjab', 'uploads/teams/2020/Team_0514183125_603.jpg', NULL, NULL, '2020-05-14 07:31:25', NULL),
(7, 'Rajasthan Royals', 'uploads/teams/2020/Team_0514183156_632.jpg', 'RR', NULL, '2020-05-14 07:31:56', NULL),
(8, 'Royal Challengers Bangalore', 'uploads/teams/2020/Team_0514183224_332.jpg', 'RCB', 4, '2020-05-14 07:32:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match_teams`
--
ALTER TABLE `match_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_teams_match_id_foreign` (`match_id`),
  ADD KEY `match_teams_team_id_foreign` (`team_id`);

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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_players_team_id_foreign` (`team_id`);

--
-- Indexes for table `player_history`
--
ALTER TABLE `player_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_history_team_match_id_foreign` (`team_match_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `match_id` (`match_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `match_teams`
--
ALTER TABLE `match_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `player_history`
--
ALTER TABLE `player_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `match_teams`
--
ALTER TABLE `match_teams`
  ADD CONSTRAINT `match_teams_match_id_foreign` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `match_teams_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `team_players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_history`
--
ALTER TABLE `player_history`
  ADD CONSTRAINT `player_history_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `player_history_team_match_id_foreign` FOREIGN KEY (`team_match_id`) REFERENCES `match_teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
