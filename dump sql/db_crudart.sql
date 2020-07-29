-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2020 pada 10.09
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crudart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `art`
--

CREATE TABLE `art` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tl` date NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `idbagian` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `art`
--

INSERT INTO `art` (`id`, `nik`, `namaart`, `tl`, `jk`, `idbagian`, `foto`, `created_at`, `updated_at`) VALUES
(1, '1111', 'adam rudi', '1997-05-24', 'L', 5, '20200628093240.png', '2020-06-27 12:03:10', '2020-07-02 23:51:29'),
(2, '1112', 'sisca', '1999-02-01', 'P', 8, NULL, '2020-06-27 12:06:26', '2020-06-27 12:06:26'),
(3, '1113', 'rufus', '1975-08-19', 'L', 9, NULL, '2020-06-27 21:18:50', '2020-06-27 21:18:50'),
(4, '1114', 'hendri', '1980-03-19', 'L', 6, NULL, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(5, '1115', 'nanda', '1993-02-24', 'P', 2, NULL, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(6, '1116', 'yanto', '1991-02-24', 'L', 3, '20200628043845.png', '2020-06-27 21:38:45', '2020-06-27 21:38:45'),
(7, '1117', 'nila', '1999-04-09', 'P', 9, '20200628095618.png', '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(8, '1118', 'nazla', '1997-09-08', 'P', 5, NULL, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(9, '1119', 'kiri', '2001-05-19', 'L', 7, NULL, '2020-06-28 02:59:00', '2020-06-28 02:59:00'),
(10, '1120', 'miku', '1993-01-02', 'P', 2, NULL, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(12, '1121', 'yayan ruhiyat', '1993-01-18', 'L', 9, '20200629021632.png', '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(14, '1123', 'rudi', '2018-05-19', 'L', 1, '20200703064105.png', '2020-07-02 23:41:05', '2020-07-02 23:41:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--

CREATE TABLE `bagian` (
  `idbgn` bigint(20) UNSIGNED NOT NULL,
  `namabagian` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bagian`
--

INSERT INTO `bagian` (`idbgn`, `namabagian`, `created_at`, `updated_at`) VALUES
(1, 'Supir', '2020-06-27 18:55:17', '2020-06-27 18:55:17'),
(2, 'Pengasuh Anak', '2020-06-27 18:55:17', '2020-06-27 18:55:17'),
(3, 'Tukang Kebun', '2020-06-27 18:56:13', '2020-06-27 18:56:13'),
(4, 'Pembantu', '2020-06-27 18:56:13', '2020-06-27 18:56:13'),
(5, 'Juru masak', '2020-06-27 18:56:44', '2020-06-27 18:56:44'),
(6, 'Keamanan', '2020-06-27 18:56:44', '2020-06-27 18:56:44'),
(7, 'Teknisi IT', '2020-06-28 04:17:24', '2020-06-28 04:17:24'),
(8, 'Les Privat', '2020-06-27 18:58:14', '2020-06-27 18:58:14'),
(9, 'Pengawal', '2020-06-28 04:17:01', '2020-06-28 04:17:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `idfasilitas` bigint(20) UNSIGNED NOT NULL,
  `namafasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`idfasilitas`, `namafasilitas`, `created_at`, `updated_at`) VALUES
(1, 'Gaji Bulanan', '2020-06-27 15:55:23', '2020-06-27 15:55:23'),
(2, 'Gaji Harian', '2020-06-27 15:58:46', '2020-06-27 15:58:46'),
(3, 'Sarapan', '2020-06-27 15:56:07', '2020-06-27 15:56:07'),
(4, 'Makan Siang', '2020-06-27 15:56:07', '2020-06-27 15:56:07'),
(5, 'Makan Malam', '2020-06-27 15:56:42', '2020-06-27 15:56:42'),
(6, 'Asuransi Kesehatan', '2020-06-27 15:56:42', '2020-06-27 15:56:42'),
(7, 'Uang Operasional', '2020-06-27 15:57:21', '2020-06-27 15:57:21'),
(8, 'Kamar Tidur', '2020-06-27 15:55:23', '2020-06-27 15:55:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitasart`
--

CREATE TABLE `fasilitasart` (
  `idfasilitasart` bigint(20) UNSIGNED NOT NULL,
  `idfasilitas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitasart`
--

INSERT INTO `fasilitasart` (`idfasilitasart`, `idfasilitas`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-27 19:08:13', '2020-06-27 19:08:13'),
(1, 3, '2020-06-27 19:08:13', '2020-06-27 19:08:13'),
(1, 4, '2020-06-28 02:23:52', '2020-06-28 02:23:52'),
(1, 5, '2020-06-28 02:23:52', '2020-06-28 02:23:52'),
(1, 8, '2020-06-28 02:23:52', '2020-06-28 02:23:52'),
(3, 8, '2020-06-27 21:18:50', '2020-06-27 21:18:50'),
(4, 1, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(4, 3, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(4, 4, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(4, 5, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(4, 8, '2020-06-27 21:35:56', '2020-06-27 21:35:56'),
(5, 1, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(5, 3, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(5, 4, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(5, 5, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(5, 8, '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(6, 1, '2020-06-27 21:38:45', '2020-06-27 21:38:45'),
(6, 4, '2020-06-27 21:38:45', '2020-06-27 21:38:45'),
(6, 7, '2020-06-28 02:31:42', '2020-06-28 02:31:42'),
(7, 3, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(7, 4, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(7, 5, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(7, 6, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(7, 7, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(7, 8, '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(8, 1, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(8, 3, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(8, 4, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(8, 5, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(8, 7, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(8, 8, '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(9, 2, '2020-06-28 02:59:00', '2020-06-28 02:59:00'),
(9, 4, '2020-06-28 02:59:00', '2020-06-28 02:59:00'),
(9, 7, '2020-06-28 02:59:00', '2020-06-28 02:59:00'),
(10, 1, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(10, 3, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(10, 4, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(10, 5, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(10, 8, '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(12, 1, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(12, 3, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(12, 4, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(12, 5, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(12, 6, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(12, 8, '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(14, 1, '2020-07-02 23:41:05', '2020-07-02 23:41:05'),
(14, 3, '2020-07-02 23:41:05', '2020-07-02 23:41:05'),
(14, 4, '2020-07-02 23:41:05', '2020-07-02 23:41:05'),
(14, 5, '2020-07-02 23:41:05', '2020-07-02 23:41:05'),
(14, 8, '2020-07-02 23:41:05', '2020-07-02 23:41:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_27_100453_create_art_table', 1),
(4, '2020_06_27_144106_create_telefon_table', 1),
(5, '2020_06_27_144253_create_bagian_table', 1),
(6, '2020_06_27_144312_create_fasilitas_table', 1),
(7, '2020_06_27_144325_create_fasilitasart_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `telefon`
--

CREATE TABLE `telefon` (
  `idtelefon` bigint(20) UNSIGNED NOT NULL,
  `notelefon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telefon`
--

INSERT INTO `telefon` (`idtelefon`, `notelefon`, `created_at`, `updated_at`) VALUES
(1, '082310701111', '2020-07-02 23:51:29', '2020-07-02 23:51:29'),
(2, '082310701112', '2020-06-27 12:06:26', '2020-06-27 12:06:26'),
(3, '082310701113', '2020-06-27 21:18:50', '2020-06-27 21:18:50'),
(4, '082310701114', '2020-06-28 02:29:55', '2020-06-28 02:29:55'),
(5, '082310701115', '2020-06-27 21:37:40', '2020-06-27 21:37:40'),
(6, '082310701116', '2020-06-28 02:31:42', '2020-06-28 02:31:42'),
(7, '082310701117', '2020-06-28 02:56:18', '2020-06-28 02:56:18'),
(8, '082310701118', '2020-06-28 02:57:37', '2020-06-28 02:57:37'),
(9, '082310701119', '2020-06-28 02:59:00', '2020-06-28 02:59:00'),
(10, '082310701120', '2020-06-28 03:00:48', '2020-06-28 03:00:48'),
(12, '082310701121', '2020-06-28 19:16:32', '2020-06-28 19:16:32'),
(14, '082310709999', '2020-07-02 23:41:05', '2020-07-02 23:41:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Afi', 'afialfahriz.99@gmail.com', NULL, '$2y$10$Jv.srVe1Vu0FY99vOiOpbOLPBwgiKnMrg/AYA/1Ol0lpT.nI3sq0.', NULL, '2020-06-27 11:18:07', '2020-06-27 11:18:07'),
(2, 'fafi', 'fafi@gmail.com', NULL, '$2y$10$Oaplbuk7iihtpb31EQSqZuR2RvRfCoiZUwCTP2R5/3US.dOw5Jt9C', NULL, '2020-07-02 06:46:48', '2020-07-02 06:46:48'),
(3, 'admin a', 'admin@siswaku.app', NULL, '$2y$10$i2khSO58beS1KBuqY0eKAO3u5KPJ2SWpr6R3QxqrA8KWC75.GIhFm', NULL, '2020-07-02 07:31:13', '2020-07-02 07:31:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `art_nik_unique` (`nik`),
  ADD KEY `art_idbagian_foreign` (`idbagian`);

--
-- Indeks untuk tabel `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`idbgn`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`idfasilitas`);

--
-- Indeks untuk tabel `fasilitasart`
--
ALTER TABLE `fasilitasart`
  ADD PRIMARY KEY (`idfasilitasart`,`idfasilitas`),
  ADD KEY `fasilitasart_idfasilitasart_index` (`idfasilitasart`),
  ADD KEY `fasilitasart_idfasilitas_index` (`idfasilitas`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`idtelefon`),
  ADD UNIQUE KEY `telefon_notelefon_unique` (`notelefon`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `art`
--
ALTER TABLE `art`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `bagian`
--
ALTER TABLE `bagian`
  MODIFY `idbgn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `idfasilitas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `art`
--
ALTER TABLE `art`
  ADD CONSTRAINT `art_idbagian_foreign` FOREIGN KEY (`idbagian`) REFERENCES `bagian` (`idbgn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fasilitasart`
--
ALTER TABLE `fasilitasart`
  ADD CONSTRAINT `fasilitasart_idfasilitas_foreign` FOREIGN KEY (`idfasilitas`) REFERENCES `fasilitas` (`idfasilitas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fasilitasart_idfasilitasart_foreign` FOREIGN KEY (`idfasilitasart`) REFERENCES `art` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `telefon`
--
ALTER TABLE `telefon`
  ADD CONSTRAINT `telefon_idtelefon_foreign` FOREIGN KEY (`idtelefon`) REFERENCES `art` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
