-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 01:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks`
--

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
(3, '2017_07_18_172139_createTasksTable', 1),
(4, '2017_07_18_210640_add_role_to_users_table', 2);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `task_desc`, `created_at`, `updated_at`) VALUES
(3, 'Task 01', 'This is task 1', '2017-07-19 00:50:51', '2017-07-19 00:50:51'),
(4, 'Task 02', 'This is task 2', '2017-07-19 00:51:09', '2017-07-19 00:51:09'),
(5, 'Task 03', 'This is task 3', '2017-07-19 00:51:15', '2017-07-19 00:51:15'),
(7, 'Task 04', 'This is task 4', '2017-07-19 01:17:33', '2017-07-19 01:17:33'),
(9, 'Test 05', 'This is task 5', '2017-07-19 04:52:17', '2017-07-19 04:52:17'),
(10, 'Task 06', 'This is task 6', '2017-07-19 04:59:42', '2017-07-19 04:59:42'),
(11, 'Task 07', 'This is task 7', '2017-07-19 06:09:20', '2017-07-19 06:09:20'),
(12, 'Task 07', 'This is task 8', '2017-07-19 06:13:28', '2017-07-19 06:13:28'),
(13, 'Task 09', 'This is task 9', '2017-07-19 06:13:46', '2017-07-19 06:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Mark Marasigan', 'kramlivingstone@gmail.com', '$2y$10$xm4Z2l5KcVk5ilWWtVNjseOYpKysG5JxRzIC8gA3qJhkZX868d7Lq', 'dityYv5knHkskOLI9r6mx6Z7iAGHq8uSGOvnq8NfNy5iepURb3lXFCzfJDRF', '2017-07-19 02:52:42', '2017-07-19 02:52:42', 'admin'),
(2, 'Test', 'test@test.com', '$2y$10$1hP3.JF1d.l5E9YcD2ZrNucD4//B6LIuse40CGbzukUZOVpG3v.tC', 'Rf5wPPrjxpE8dYJoxAGRLIMUi4uD7EZTipRJhqf2pmFgMqgAfuE0h2UcrZOo', '2017-07-19 04:22:47', '2017-07-19 04:22:47', 'regular'),
(3, 'Test 2', 'test2@test.com', '$2y$10$ITZf3t9CaFKVDe7HFxDD9ucowWOOARn4D89OP0FkBeIEJPno68jY6', 'qAWtyqmlCa3XpDQ1xFlXfaGKR4OaRZsBzB6OEw5YVB5A7FnahmQKR3ySwt6N', '2017-07-19 04:56:52', '2017-07-19 04:56:52', 'regular');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
