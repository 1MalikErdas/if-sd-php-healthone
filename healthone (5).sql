-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 jan 2023 om 23:01
-- Serverversie: 10.4.25-MariaDB
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `description`) VALUES
(1, 'Audi', 'categories/audit.png', 'Audi'),
(2, 'Volkswagen', 'categories/volkswagent (2).png', 'Volkswagen'),
(3, 'Seat', 'categories/seatt.png', 'Seat'),
(4, 'Skoda', 'categories/skodat (2).png', 'Skoda');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model`
--

CREATE TABLE `model` (
  `id` int(5) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `merk_id` int(5) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `config` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `model`
--

INSERT INTO `model` (`id`, `naam`, `merk_id`, `img`, `price`, `discription`, `config`) VALUES
(1, ' Audi A3', 1, '	\r\ncategories/audia3.png', 37627, 'De hogere standaard', 'https://www.audi.nl/nl/web/nl/modellen/a3/a3-sportback/uitrustingspakketten.html'),
(7, 'Audi A6', 1, '	\r\ncategories/audia6.png', 70543, 'De meest premium stationwagen', 'https://www.audi.nl/nl/web/nl/modellen/a6/a6-avant/uitrustingspakketten.html'),
(8, 'Audi Q5', 1, '	\r\ncategories/audiq5.png', 71743, 'De premium SUV', 'https://www.audi.nl/nl/web/nl/modellen/q5/q5/uitrustingspakketten.html'),
(9, 'Audi Q8', 1, '	\r\ncategories/audiq8.png', 96553, 'De meest premium SUV', 'https://www.audi.nl/nl/web/nl/modellen/q8/q8-tfsi-e.html'),
(10, 'Volkswagen Polo', 2, '	\r\ncategories/vwpolo.png', 26890, 'Vol van zichzelf!', 'https://configurator.volkswagen.nl/polo'),
(11, 'Volkswagen Golf', 2, '	\r\ncategories/vwgolf.png', 34990, 'De hoogste standaard', 'https://configurator.volkswagen.nl/golf'),
(12, 'Volkswagen Passat', 2, '	\r\ncategories/vwpassat.png', 47190, 'Completer, geavanceerder, verfijnder', 'https://configurator.volkswagen.nl/passat-variant'),
(13, 'Volkswagen Tiguan', 2, '	\r\ncategories/vwtiguan.png', 42990, 'Alles. Behalve saai', 'https://configurator.volkswagen.nl/tiguan'),
(14, 'Seat Ibiza', 3, 'categories/ibiza.webp', 21950, 'De stoere hatchback', 'https://configurator.seat.nl/ibiza'),
(15, 'Seat Leon', 3, 'categories/leon.webp', 29650, 'De high-tech hatchback', 'https://configurator.seat.nl/leon'),
(16, 'Seat Ateca', 3, 'categories/ateca.webp', 33300, 'De populaire SUV', 'https://configurator.seat.nl/ateca'),
(17, 'Seat Tarraco', 3, 'categories/tarraco.webp', 41600, 'De ruime SUV', 'https://configurator.seat.nl/tarraco'),
(18, 'Skoda Fabia', 4, 'categories/fabia.png', 22490, 'Onze compacte hatchback', 'https://configurator.skoda.nl/fabia'),
(19, 'Skoda Octavia', 4, 'categories/octavia.png', 34490, 'Onze ideale gezinsauto', 'https://configurator.skoda.nl/octavia-combi'),
(20, 'Skoda Superb', 4, 'categories/superb.png', 40990, 'Onze premium stationwagen', 'https://configurator.skoda.nl/superb-combi'),
(21, 'Skoda Kodiaq', 4, 'categories/kodiaq.png', 43390, 'Onze grote SUV met plek voor zeven', 'https://configurator.skoda.nl/kodiaq');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `review`
--

INSERT INTO `review` (`id`, `title`, `discription`, `rating`, `date`, `time`, `product_id`, `user_id`) VALUES
(1, 'Goeie auto', 'Ik vind deze auto heel fijn om in te rijden. het is een aanrader', '8.0', '2023-01-22', '15:56:02', 1, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `role`) VALUES
(3, 'pepijn', 'van maren', '302456388@student.rocmondriaan.nl', 'qwerty', 'admin'),
(4, 'peppie', 'maren', 'depropepijn@gmail.com', 'qwerty', 'member'),
(5, 'Pepijn', 'de Jong', 'duncandejong2005@gmail.com', 'qwerty', 'member');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`merk_id`);

--
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key1` (`user_id`),
  ADD KEY `key2` (`product_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `model`
--
ALTER TABLE `model`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `key` FOREIGN KEY (`merk_id`) REFERENCES `category` (`id`);

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `key1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `key2` FOREIGN KEY (`product_id`) REFERENCES `model` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
