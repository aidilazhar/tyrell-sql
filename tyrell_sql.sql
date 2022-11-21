-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2022 at 10:21 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyrell_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int NOT NULL,
  `type` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `type`, `name`, `deleted`) VALUES
(1, 1, 'キャビンアテンダント', ''),
(2, 2, 'キャビンアテンダント', ''),
(3, 3, 'キャビンアテンダント', '');

-- --------------------------------------------------------

--
-- Table structure for table `basic_abilities`
--

CREATE TABLE `basic_abilities` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `basic_abilities`
--

INSERT INTO `basic_abilities` (`id`, `job_id`, `name`, `deleted`) VALUES
(1, 1, 'キャビンアテンダント', '');

-- --------------------------------------------------------

--
-- Table structure for table `career_paths`
--

CREATE TABLE `career_paths` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `business_skill` varchar(200) NOT NULL,
  `knowledge` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `salary_statistic_group` varchar(200) NOT NULL,
  `salary_range_remarks` varchar(200) NOT NULL,
  `restriction` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `media_id` varchar(200) NOT NULL,
  `job_type_id` varchar(200) NOT NULL,
  `job_category_id` varchar(200) NOT NULL,
  `academic_degree_doctor` varchar(200) NOT NULL,
  `academic_degree_master` varchar(200) NOT NULL,
  `academic_degree_professional` varchar(200) NOT NULL,
  `academic_degree_bachelor` varchar(200) NOT NULL,
  `salary_range_first_year` varchar(200) NOT NULL,
  `salary_range_average` varchar(200) NOT NULL,
  `estimated_total_workers` varchar(200) NOT NULL,
  `url` varchar(500) NOT NULL,
  `seo_description` varchar(200) NOT NULL,
  `seo_keywords` varchar(200) NOT NULL,
  `sort_order` varchar(200) NOT NULL,
  `publish_status` int NOT NULL,
  `created_by` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `version` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `description`, `detail`, `business_skill`, `knowledge`, `location`, `activity`, `salary_statistic_group`, `salary_range_remarks`, `restriction`, `remarks`, `media_id`, `job_type_id`, `job_category_id`, `academic_degree_doctor`, `academic_degree_master`, `academic_degree_professional`, `academic_degree_bachelor`, `salary_range_first_year`, `salary_range_average`, `estimated_total_workers`, `url`, `seo_description`, `seo_keywords`, `sort_order`, `publish_status`, `created_by`, `created`, `modified`, `deleted`, `version`) VALUES
(1, 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'キャビンアテンダント', 'ャビンアテンダント', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '2022-11-20 22:56:25', '2022-11-20 22:56:25', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_basic_abilities`
--

CREATE TABLE `jobs_basic_abilities` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `basic_ability_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_career_paths`
--

CREATE TABLE `jobs_career_paths` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `affiliate_id` int NOT NULL,
  `job_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_career_paths`
--

INSERT INTO `jobs_career_paths` (`id`, `name`, `affiliate_id`, `job_id`) VALUES
(1, 'キャビンアテンダント', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_personalities`
--

CREATE TABLE `jobs_personalities` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `personality_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_practical_skills`
--

CREATE TABLE `jobs_practical_skills` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `practical_skill_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rec_qualifications`
--

CREATE TABLE `jobs_rec_qualifications` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `job_id` int NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `affiliate_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_rec_qualifications`
--

INSERT INTO `jobs_rec_qualifications` (`id`, `name`, `job_id`, `deleted`, `affiliate_id`) VALUES
(1, 'キャビンアテンダント', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_req_qualifications`
--

CREATE TABLE `jobs_req_qualifications` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `affiliate_id` int NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `job_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_req_qualifications`
--

INSERT INTO `jobs_req_qualifications` (`id`, `name`, `affiliate_id`, `deleted`, `job_id`) VALUES
(1, 'キャビンアテンダント', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tools`
--

CREATE TABLE `jobs_tools` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `affiliate_id` int NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `sort_order` varchar(10) NOT NULL,
  `created_by` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `sort_order`, `created_by`, `created`, `modified`, `deleted`) VALUES
(1, 'キャビンアテンダント', '', 1, '2022-11-21 12:47:34', '2022-11-21 12:47:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `job_category_id` int NOT NULL,
  `sort_order` varchar(10) NOT NULL,
  `created_by` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` varchar(10) NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `job_category_id`, `sort_order`, `created_by`, `created`, `modified`, `deleted`) VALUES
(1, 'キャビンアテンダント', 1, '', 1, '2022-11-21 12:43:04', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

CREATE TABLE `personalities` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `personalities`
--

INSERT INTO `personalities` (`id`, `name`, `deleted`) VALUES
(1, 'キャビンアテンダント', '');

-- --------------------------------------------------------

--
-- Table structure for table `practical_skills`
--

CREATE TABLE `practical_skills` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `deleted` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `practical_skills`
--

INSERT INTO `practical_skills` (`id`, `job_id`, `name`, `deleted`) VALUES
(1, 1, 'キャビンアテンダント', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliates_idx_type` (`type`);

--
-- Indexes for table `basic_abilities`
--
ALTER TABLE `basic_abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_paths`
--
ALTER TABLE `career_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_idx_publish_status_id` (`publish_status`,`id`);

--
-- Indexes for table `jobs_basic_abilities`
--
ALTER TABLE `jobs_basic_abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_career_paths`
--
ALTER TABLE `jobs_career_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_personalities`
--
ALTER TABLE `jobs_personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_practical_skills`
--
ALTER TABLE `jobs_practical_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_rec_qualifications`
--
ALTER TABLE `jobs_rec_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_req_qualifications`
--
ALTER TABLE `jobs_req_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_tools`
--
ALTER TABLE `jobs_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practical_skills`
--
ALTER TABLE `practical_skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `basic_abilities`
--
ALTER TABLE `basic_abilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career_paths`
--
ALTER TABLE `career_paths`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_basic_abilities`
--
ALTER TABLE `jobs_basic_abilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_career_paths`
--
ALTER TABLE `jobs_career_paths`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_personalities`
--
ALTER TABLE `jobs_personalities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_practical_skills`
--
ALTER TABLE `jobs_practical_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_rec_qualifications`
--
ALTER TABLE `jobs_rec_qualifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_req_qualifications`
--
ALTER TABLE `jobs_req_qualifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_tools`
--
ALTER TABLE `jobs_tools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `practical_skills`
--
ALTER TABLE `practical_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
