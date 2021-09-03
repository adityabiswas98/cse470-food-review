-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 05:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-review`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `restaurant_name` varchar(191) DEFAULT NULL,
  `review` varchar(191) DEFAULT NULL,
  `img` varchar(191) DEFAULT NULL,
  `comment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `restaurant_id`, `restaurant_name`, `review`, `img`, `comment`, `created_at`, `updated_at`) VALUES
(1, 8, 'burger king', 'top notch', '1630069091.png', 'will improve', '2021-08-27 06:58:11', '2021-08-28 08:58:19'),
(2, 8, 'chillox', 'good', '1630069987.png', 'sad asdd a', '2021-08-27 07:13:07', '2021-08-28 08:54:53'),
(3, 8, NULL, 'gooood', '1630161039.jpg', NULL, '2021-08-28 08:30:39', '2021-08-28 08:30:39'),
(4, 12, NULL, 'top notch', '1630595137.png', NULL, '2021-09-02 09:05:37', '2021-09-02 09:05:37'),
(5, 13, NULL, 'top notch', '1630595258.jpg', 'trying to imrove', '2021-09-02 09:07:38', '2021-09-02 09:10:22'),
(6, 17, NULL, 'top notch', '1630596705.png', 'will improve', '2021-09-02 09:31:45', '2021-09-02 09:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `restaurant_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `restaurant_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Aditya', 'Biswas', NULL, 'aditya@gmail.com', '$2y$10$PaW0ZLQME2lFDcgfuLHYkeVMHuKIBTp0UxBI0NvVQ0WHUESp086lK', '2021-08-27 05:49:13', '2021-08-27 05:49:13'),
(2, 'john', 'doe', NULL, 'aditya1@gmail.com', '$2y$10$uoR9OUsc.Jr.hJm14B1jR.gQg78mE0ZnTfnDjtctumzPFdMUst/eW', '2021-08-28 08:08:40', '2021-08-28 08:08:40'),
(3, 'john1', 'doe', NULL, 'aditya2@gmail.com', '$2y$10$5T/VZcIhGHoQ5u.mjSS9/uK9rCxzHBkqcBag4SD4GqZVHhn0Sj82y', '2021-08-28 08:11:24', '2021-08-28 08:11:24'),
(4, 'Aditya33', 'Biswas', NULL, 'aditya44@gmail.com', '$2y$10$CH67TJ0qgguGpxVpGR.tVuPh9khK0Jz5cFqMgTltZYwh0rvb2HzuG', '2021-08-28 08:15:32', '2021-08-28 08:15:32'),
(5, 'wqe', 'qweqwe', NULL, 'aaa@gmail.com', '$2y$10$bqvp5EYhAtNAxR1DZGMz1u9Ev.j63.lYfu0oxy3BROB0.88SQUyK2', '2021-08-28 08:17:51', '2021-08-28 08:17:51'),
(6, 'adsa', 'doe', NULL, 'ccc@gmail.com', '$2y$10$b1MHXAF0CzksDlB.sbFoEOuudWGtzSmWdR0/tMTADoqnSuNYxJ7sG', '2021-08-28 08:18:57', '2021-08-28 08:18:57'),
(7, 'dd', 'ff', NULL, 'dd@gmail.com', '$2y$10$EUpLkMToitB8UNrbNXpSLu/pKa2r3ry7T3h2qziTjECqtu0Zu7H2a', '2021-08-28 08:19:30', '2021-08-28 08:19:30'),
(8, 'adsa', 'doe', 'burger king', 'ff@gmail.com', '$2y$10$qT03cWVm1/WxndBZn9/2NeGGu1PDdE/4wYt2do4MT1bJn3YDHfZLy', '2021-08-28 08:20:00', '2021-08-28 08:20:00'),
(9, 'dfgd', 'fdgdfg', 'chillox', 'ch@gmail.com', '$2y$10$EuR7yqYhF5G3dQ1mNmn3Ae0AYxhNl/7Mz/7Oed6sGpYqmZweMDOta', '2021-08-28 09:00:01', '2021-08-28 09:00:01'),
(10, 'adsa', 'Biswas', 'chillox', 'aditya77@gmail.com', '$2y$10$DHn7N/pQhYXzU0gSjXLxf.bmeSEpDt1uTWDWkoI1igranUzeomzhO', '2021-09-02 08:01:35', '2021-09-02 08:01:35'),
(11, 'adsa', 'doe', 'burger king', 'aditya567@gmail.com', '$2y$10$w/gUt7H07vk2xOywZg5uP.SnavdNfOKCvq3E1m.Be6pTAp4E5kYve', '2021-09-02 08:07:15', '2021-09-02 08:07:15'),
(12, 'Aditya', 'Biswas', 'chillox', 'aditywwa@gmail.com', '$2y$10$8OJ/LwTg5OvNMr83msqMh.8gk6m7rYiP8iBEqSEZ9zxwEhw8b4s/e', '2021-09-02 08:10:59', '2021-09-02 08:10:59'),
(13, 'john', 'sina', 'swpnil', 'aditya89@gmail.com', '$2y$10$Rz/kN8ZwDD9wfEgiUm0kuO9Vnt/nKmyLjl.BAe9niBdh1tHy7dbVW', '2021-09-02 09:00:09', '2021-09-02 09:00:09'),
(14, 'Srijita', 'Saha', NULL, 'srijita@gmail.com', '$2y$10$6ZJOHhB8JafuUtw2O8O6d.cNkP8EqVM1Cr3NHQIZmN6kWrJvaLEue', '2021-09-02 09:03:11', '2021-09-02 09:03:11'),
(15, 'Srijita', 'Saha', NULL, 'srijita01@gmail.com', '$2y$10$JKfFQAAEcoNvGKGrGs8oHOUkyoCZlmH1qlJnwQaKp.khkPO75yUtS', '2021-09-02 09:03:56', '2021-09-02 09:03:56'),
(16, 'Ananda', 'das', 'Takeout', 'anada@gmail.com', '$2y$10$3f0DZb4uSUFxr4LOozAIjehlF99TvDlqFdA7.xZ/RMBYKFX8TbfRS', '2021-09-02 09:29:12', '2021-09-02 09:29:12'),
(17, 'Ovi', 'Das', 'asd', 'ovi@gmail.com', '$2y$10$EMiZcd4vPElIdZgVSNpE/.H9POAwbMWnu.04r0GES0eYHUgkZgDfC', '2021-09-02 09:30:44', '2021-09-02 09:30:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
