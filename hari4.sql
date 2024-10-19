-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2024 pada 17.15
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas11`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari4`
--

CREATE TABLE `hari4` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL,
  `hobi` varchar(100) DEFAULT NULL,
  `cita_cita` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hari4`
--

INSERT INTO `hari4` (`id`, `nama`, `umur`, `hobi`, `cita_cita`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'kaka', 28, 'bola', 'sepak bola', 'makan', '2024-10-19 22:15:28', '2024-10-19 22:15:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hari4`
--
ALTER TABLE `hari4`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hari4`
--
ALTER TABLE `hari4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
