-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 06:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik_panca_medika`
--

-- --------------------------------------------------------

--
-- Table structure for table `absens`
--

CREATE TABLE `absens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absens`
--

INSERT INTO `absens` (`id`, `no_pegawai`, `name`, `date`, `time_in`, `keterangan`, `periode`, `created_at`, `updated_at`) VALUES
(42, '010194', 'dr. Husna Bulkis Dasopang', '2021-11-24', '08:02:55', 'Hadir', 0, '2021-11-23 23:02:55', '2021-11-23 23:02:55'),
(43, '010194', 'dr. Husna Bulkis Dasopang', '2021-11-01', '08:19:09', 'Hadir', 0, '2021-11-01 00:40:54', '2021-11-01 00:41:23'),
(44, '010297', 'dr. Niswan Helja Batubara', '2021-11-01', '08:12:10', 'Hadir', 0, NULL, NULL),
(45, '020158', 'dr. Musbar, Sp. O. G.', '2021-11-02', '08:02:02', 'Hadir', 0, NULL, NULL),
(46, '030192', 'drg. Windy Dwi Prasanti', '2021-11-03', '08:02:12', 'Hadir', 0, NULL, NULL),
(47, '040194', 'Hakim Lukman', '2021-11-03', '08:10:00', 'Hadir', 0, NULL, NULL),
(48, '040396', 'Mufdah Zulaifah', '2021-11-03', '08:17:24', 'Hadir', 0, NULL, NULL),
(49, '040497', 'Kurniawan Hadi', '2021-11-03', '08:18:24', 'Hadir', 0, NULL, NULL),
(50, '040596', 'Putri Annisa', '2021-11-03', '08:05:02', 'Hadir', 0, NULL, NULL),
(51, '040695', 'Aris Hamza', '2021-11-04', '08:06:24', 'Hadir', 0, NULL, NULL),
(52, '040295', 'Aisyah Nur Hafni', '2021-11-03', '08:22:04', 'Hadir', 0, NULL, NULL),
(53, '040794', 'Sri Handayani Purba', '2021-11-04', '08:20:04', 'Hadir', 0, NULL, NULL),
(79, '010297', 'dr. Niswan Helja Batubara', '2021-12-04', '08:45:13', 'Hadir', 0, '2021-12-04 01:45:13', '2021-12-04 01:45:13'),
(83, '010194', 'dr. Husna Bulkis Dasopang', '2021-12-15', '08:13:09', 'Hadir', 0, '2021-12-15 01:13:09', '2021-12-15 01:13:09'),
(88, '010194', 'dr. Husna Bulkis Dasopang', '2021-12-16', '16:03:43', 'Hadir', 0, '2021-12-16 09:03:43', '2021-12-16 09:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutis`
--

INSERT INTO `cutis` (`id`, `no_pegawai`, `name`, `kondisi`, `keterangan`, `foto`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, '010297', 'dr. Niswan Helja Batubara', 'lainnya', 'rapat', 'rapat.jpg', '2021-11-23', 'Terima', '2021-11-23 07:44:14', '2021-11-23 07:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(1) DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gajis`
--

CREATE TABLE `gajis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_hadir` int(11) NOT NULL DEFAULT 0,
  `gaji_harian` int(11) NOT NULL DEFAULT 0,
  `tunjangan` int(11) NOT NULL DEFAULT 0,
  `cuti` int(11) NOT NULL DEFAULT 0,
  `potongan_cuti` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gajis`
--

INSERT INTO `gajis` (`id`, `no_pegawai`, `name`, `jumlah_hadir`, `gaji_harian`, `tunjangan`, `cuti`, `potongan_cuti`, `total`, `jabatan`, `periode`, `created_at`, `updated_at`) VALUES
(2, '010194', 'dr. Husna Bulkis Dasopang', 0, 100000, 50000, 0, 30000, 50000, 'Dokter', 1, NULL, NULL),
(3, '010297', 'dr. Niswan Helja Batubara', 0, 100000, 50000, 0, 30000, 50000, 'dokter', 1, NULL, NULL),
(4, '020158', 'dr. Musbar, Sp. O. G.', 0, 100000, 50000, 0, 30000, 50000, 'dokter', 1, NULL, NULL),
(5, '030192', 'drg. Windy Dwi Prasanti', 0, 100000, 50000, 0, 30000, 50000, 'dokter', 1, '2021-11-26 06:27:35', '2021-11-26 06:27:35'),
(18, '040194', 'Hakim Lukman', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(19, '040295', 'Aisyah Nur Hafni', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(20, '040396', 'Mufdah Zulaifah', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(21, '040497', 'Kurniawan Hadi', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(22, '040596', 'Putri Annisa', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(23, '040695', 'Aris Hamza', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, NULL, NULL),
(25, '040794', 'Sri Handayani Purba', 0, 59900, 40000, 0, 20000, 40000, 'nakes', 1, '2021-12-03 14:39:09', '2021-12-03 14:39:09');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_22_003933_create_absens_table', 2),
(5, '2021_11_23_043050_create_gajis_table', 3),
(6, '2021_11_23_130254_create_cutis_table', 4),
(7, '2021_11_28_224521_create_perhitungans_table', 5),
(8, '2021_11_30_192737_create_dokters_table', 6),
(9, '2021_12_01_221408_create_periodes_table', 7);

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
-- Table structure for table `perhitungans`
--

CREATE TABLE `perhitungans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji_harian` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `cuti` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perhitungans`
--

INSERT INTO `perhitungans` (`id`, `jabatan`, `gaji_harian`, `tunjangan`, `cuti`, `created_at`, `updated_at`) VALUES
(1, 'dokter', 100000, 50000, 30000, NULL, NULL),
(2, 'nakes', 59900, 40000, 20000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `periodes`
--

CREATE TABLE `periodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periodes`
--

INSERT INTO `periodes` (`id`, `tanggal_awal`, `tanggal_akhir`, `created_at`, `updated_at`) VALUES
(1, '2021-11-07', '2021-11-14', '2021-12-02 02:27:34', '2021-12-02 02:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(1) DEFAULT 0,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `no_pegawai`, `name`, `spesialisasi`, `email`, `email_verified_at`, `role`, `jabatan`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'administrator', 'Admin', 'admin@tes.com', NULL, 1, 'Admin', '$2y$10$xjBTQOihNLAjYu9oN7EnaO7IoHi.nGB4sSVzg6iZmEgbfve4hQnKy', NULL, NULL, NULL),
(2, '010194', 'dr. Husna Bulkis Dasopang', 'Dokter Umum', 'husnabulkisdsp80@gmail.com', NULL, 2, 'Dokter', '$2y$10$yt1HNmvGm4S6dX6vLAxQiOyUNKv/E8V42zwg7b6UOQmmrtK/wfsxi', NULL, NULL, NULL),
(3, '010297', 'dr. Niswan Helja Batubara', 'Dokter Umum', 'niswanhaljabatubara@gmail.com', NULL, 2, 'Dokter', '$2y$10$YiFvjVXubmOdz7bIt6OPhu.FZkvtwbIFchqtokfuZuQolHIt301RC', NULL, NULL, NULL),
(4, '020158', 'dr. Musbar, Sp. O. G.', 'Dokter Kandungan', 'musbar781@gmail.com', NULL, 2, 'Dokter', '$2y$10$v63oO8WQYT.1BC7bktpbxOZ4V4PEnOR/Fm6Z962jjyrUTL/ISng7.', NULL, NULL, NULL),
(5, '030192', 'drg. Windy Dwi Prasanti', 'Dokter Gigi', 'windydwiprasanti7@gmail.com', NULL, 2, 'Dokter', '$2y$10$GkxesyKWQ4IOARC1q0AyrezlLM/QLOPja1OwcFbNr15Dw07nBXdKu', NULL, NULL, NULL),
(18, '040194', 'Hakim Lukman', 'Nakes', 'hakimmlukman98@gmail.com', NULL, 2, 'Nakes', '$2y$10$.fQ8WrN/d/HB6FPYycH7EOYBqsKvyLUYsr1Kkrqhj955AZb4yyj/K', NULL, '2021-11-26 06:27:35', '2021-11-26 06:27:35'),
(19, '040295', 'Aisyah Nur Hafni', 'Nakes', 'aishnurhafni@gmail.com', NULL, 2, 'Nakes', '$2y$10$YuHYkSmNzuZJoiCCRXpMaeYE4t.Qw6qP9DzCkwmNztVnOJGn.JouO', NULL, '2021-11-26 06:28:43', '2021-11-26 06:28:43'),
(20, '040396', 'Mufdah Zulaifah', 'Nakes', 'mufdahzulaifah05@gmail.com', NULL, 2, 'Nakes', '$2y$10$ChydWtXK9tDeXqRxGAP4feQh3UGmlGDU63bhMEJEx.0GJ1/Yy9KSS', NULL, '2021-11-26 06:29:56', '2021-11-26 06:29:56'),
(21, '040497', 'Kurniawan Hadi', 'Nakes', 'kurniawanhadi764@gmail.com', NULL, 2, 'Nakes', '$2y$10$nkgjHMah2zXLbcEcKy2RZ.hEVdnjMdAR3OYC8R99OfDenxinB.zsm', NULL, '2021-11-26 06:30:57', '2021-11-26 06:30:57'),
(22, '040596', 'Putri Annisa', 'Nakes', 'putriannisaa910@gmail.com', NULL, 2, 'Nakes', '$2y$10$qRLjZujdJfFiHhstZwRno.klzRf8omWGi1MAkc.FqOO7L2IB47CRO', NULL, '2021-11-26 06:32:23', '2021-11-26 06:32:23'),
(23, '040695', 'Aris Hamza', 'Nakes', 'arieshamzah41@gmail.com', NULL, 2, 'Nakes', '$2y$10$YHHtu3Z.T9SyNq8F9UXEzOI1PU1ioxG/T0BEGpcmCLGWdOn5mzm8m', NULL, '2021-11-26 06:33:25', '2021-11-26 06:33:25'),
(25, '040794', 'Sri Handayani Purba', 'Nakes', 'sriihandayani76@gmail.com', NULL, 2, 'Nakes', '$2y$10$ykZ9L8vxpYirfKFxylNqheF3YI1oF8RvwYpZ1RDlE/ryEgyoajEPK', NULL, '2021-12-03 14:39:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dokters_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gajis`
--
ALTER TABLE `gajis`
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
-- Indexes for table `perhitungans`
--
ALTER TABLE `perhitungans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periodes`
--
ALTER TABLE `periodes`
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
-- AUTO_INCREMENT for table `absens`
--
ALTER TABLE `absens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gajis`
--
ALTER TABLE `gajis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `perhitungans`
--
ALTER TABLE `perhitungans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `periodes`
--
ALTER TABLE `periodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
