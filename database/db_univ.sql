-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2021 pada 10.24
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_univ`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `npm` varchar(8) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('L','P','','') NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `user_id`, `npm`, `tempat_lahir`, `tgl_lahir`, `gender`, `telepon`, `alamat`) VALUES
(1, 1, '19630747', 'Kandui', '2001-08-23', 'P', '082248622282', 'Muara Teweh'),
(2, 2, '19630440', 'Balikpapan', '2007-08-13', 'P', '085346728866', 'Samarinda'),
(3, 3, '19630882', 'Bandung', '1999-07-22', 'P', '085423657141', 'Cilacap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `id` int(11) NOT NULL,
  `kd_makul` varchar(10) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `sks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makul`
--

INSERT INTO `makul` (`id`, `kd_makul`, `nama_makul`, `sks`) VALUES
(1, 'MKL001', 'MATEMATIKA DISKRIT', 3),
(3, 'MKL002', 'JARINGAN KOMPUTER', 3),
(4, 'MKL003', 'PEMOGRAMAN BERBASIS OBJEK', 3),
(5, 'MKL004', 'PERANCANGAN DATABASE', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `makul_id` varchar(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `makul_id`, `mahasiswa_id`, `nilai`) VALUES
(2, '1', 1, 80),
(4, '4', 3, 90),
(5, '1', 2, 50);

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
(1, 'Alda', 'aldaputri032@gmail.com', NULL, '$2y$10$c7XCVY2Qw7As./K/.xrlmeTbhTRFtI1Wj9TqLjkJaPHwm7kqINzMK', NULL, '2021-07-15 04:59:54', '2021-07-15 04:59:54'),
(2, 'Putri', 'putri@gmail.com', NULL, '$2y$10$c7XCVY2Qw7As./K/.xrlmeTbhTRFtI1Wj9TqLjkJaPHwm7kqINzMK', NULL, '2021-07-15 04:59:54', '2021-07-15 04:59:54'),
(3, 'Widia', 'widia@gmail.com', NULL, '$2y$10$pKjt1m/IYDVPzKi7jAYDx.kZel5MFDTJx7zAJ5v8xRY0XF8fAYdcm', NULL, '2021-07-18 22:26:57', '2021-07-18 22:26:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `makul`
--
ALTER TABLE `makul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
