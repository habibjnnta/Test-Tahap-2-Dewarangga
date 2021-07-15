-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 04:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_dewarangga`
--

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
(4, '2021_07_14_135434_create_tb_users_table', 2),
(5, '2021_07_14_135544_create_tb_sales_table', 2),
(6, '2021_07_14_140038_create_tb_nasabahs_table', 2),
(7, '2021_07_14_140127_create_tb_produks_table', 3),
(8, '2021_07_14_232246_create_tb_transaksis_table', 4);

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
-- Table structure for table `tb_nasabahs`
--

CREATE TABLE `tb_nasabahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_terdaftar` date NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_produk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_nasabahs`
--

INSERT INTO `tb_nasabahs` (`id`, `username`, `full_name`, `tanggal_terdaftar`, `nama_perusahaan`, `produk`, `nilai_produk`, `alamat`, `nomor_hp`, `created_at`, `updated_at`) VALUES
(3, 'popo', 'Popo Kasatri', '2021-07-15', 'PT. MPI', 'SPN (Simpanan)', '70000000', 'Bekasi', '123456789000', NULL, '2021-07-14 14:16:24'),
(5, 'koko', 'Koko Sebastian', '2021-07-15', 'PT. KOKO', 'SYH (Syariah)', '40000000', 'Surabaya', '123456789098', NULL, '2021-07-14 17:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produks`
--

CREATE TABLE `tb_produks` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_produks`
--

INSERT INTO `tb_produks` (`id`, `kode_produk`, `nama_produk`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(6, 'P0001', 'SYH (Syariah)', 'Dani Patroman', 'Harpa Mapan', '2021-07-14 20:28:52', '2021-07-15 01:41:40'),
(7, 'P0002', 'TFS (Trade Finance & Service)', 'Dani Patroman', 'Dani Patroman', '2021-07-14 20:32:30', '2021-07-14 20:32:30'),
(8, 'P0003', 'PJ (Pinjaman)', 'Dani Patroman', 'Dani Patroman', '2021-07-14 20:32:44', '2021-07-14 20:32:44'),
(9, 'P0004', 'SPN (Simpanan)', 'Dani Patroman', 'Dani Patroman', '2021-07-14 20:32:57', '2021-07-14 20:32:57'),
(10, 'P0005', 'VLS (Valas)', 'Dani Patroman', 'Dani Patroman', '2021-07-14 20:33:15', '2021-07-14 20:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sales`
--

CREATE TABLE `tb_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_activity` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_nasabah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sales` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_produk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_sales`
--

INSERT INTO `tb_sales` (`id`, `kode_activity`, `nama_nasabah`, `nama_perusahaan`, `nama_sales`, `nama_produk`, `nilai_produk`, `visit_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'ACT0001', 'Popo Kasatri', 'PT. MPI', 'Harpa Mapan', 'SPN (Simpanan)', '70000000', '2021-07-15', 'Sudah', NULL, NULL),
(5, 'ACT0002', 'Koko Sebastian', 'PT. KOKO', 'Dani Patroman', 'SYH (Syariah)', '40000000', '2021-07-31', 'Belum', NULL, '2021-07-14 17:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksis`
--

CREATE TABLE `tb_transaksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_nasabah` int(11) NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_transaksis`
--

INSERT INTO `tb_transaksis` (`id`, `kode_transaksi`, `tanggal_transaksi`, `id_nasabah`, `nama_produk`, `nominal_transaksi`, `created_at`, `updated_at`) VALUES
(1, 'TRX0001', '2021-07-15', 3, 'SPN (Simpanan)', '100000', NULL, '2021-07-14 17:11:26'),
(2, 'TRX0002', '2021-07-10', 3, 'SPN (Simpanan)', '200000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `username`, `password`, `full_name`, `NIK`, `user_role`, `email`, `nomor_hp`, `gender`, `alamat`, `created_at`, `updated_at`) VALUES
(2, 'dani', '123', 'Dani Patroman', '1234567890123456', 'Sales', 'dani@gmail.com', '123456789012', 'Laki-laki', 'bandung', NULL, '2021-07-14 17:37:33'),
(3, 'Harpa', '123', 'Harpa Mapan', '1234567890123455', 'Sales', 'harpamapan@gmail.com', '1234567890123', 'Laki-laki', 'Jakarta', NULL, NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Habib Jannata', 'habib@gmail.com', '2021-07-14 07:43:21', '$2y$10$B0Hw.b68/75u0EaofEDT0u6gA9hUQVXkvHvq0Egn62s21nxwIL1uS', NULL, '2021-07-14 07:43:21', '2021-07-14 07:43:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `tb_nasabahs`
--
ALTER TABLE `tb_nasabahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_produks`
--
ALTER TABLE `tb_produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sales`
--
ALTER TABLE `tb_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksis`
--
ALTER TABLE `tb_transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_nasabahs`
--
ALTER TABLE `tb_nasabahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_produks`
--
ALTER TABLE `tb_produks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_sales`
--
ALTER TABLE `tb_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_transaksis`
--
ALTER TABLE `tb_transaksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
