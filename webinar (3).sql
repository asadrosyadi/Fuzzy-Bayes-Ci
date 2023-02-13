-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Sep 2021 pada 08.09
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webinar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataset2`
--

CREATE TABLE `dataset2` (
  `id` int(11) NOT NULL,
  `sensor1` text NOT NULL,
  `sensor2` text NOT NULL,
  `sensor3` text NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataset2`
--

INSERT INTO `dataset2` (`id`, `sensor1`, `sensor2`, `sensor3`, `hasil`) VALUES
(1, 'rendah', 'rendah', 'rendah', 'off'),
(2, 'tinggi', 'tinggi', 'tinggi', 'on'),
(3, 'rendah', 'tinggi', 'tinggi', 'on'),
(4, 'rendah', 'rendah', 'tinggi', 'off'),
(5, 'rendah', 'tinggi', 'rendah', 'off'),
(6, 'tinggi', 'tinggi', 'rendah', 'on'),
(7, 'tinggi', 'tinggi', 'rendah', 'off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datates2`
--

CREATE TABLE `datates2` (
  `id` int(11) NOT NULL,
  `sensor1` text NOT NULL,
  `sensor2` text NOT NULL,
  `sensor3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datates2`
--

INSERT INTO `datates2` (`id`, `sensor1`, `sensor2`, `sensor3`) VALUES
(1, 'rendah', 'tinggi', 'rendah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataset2`
--
ALTER TABLE `dataset2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datates2`
--
ALTER TABLE `datates2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataset2`
--
ALTER TABLE `dataset2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `datates2`
--
ALTER TABLE `datates2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
