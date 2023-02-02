-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 feb 2023 om 14:11
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

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
CREATE DATABASE IF NOT EXISTS `healthone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthone`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
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
(1, 'Seiko', 'categories/seiko.jpg', 'Seiko'),
(2, 'Rolex', 'categories/rolex.jpg', 'Rolex'),
(3, 'Casio', 'categories/casio.jpg', 'Casio'),
(4, 'Orient', 'categories/orient.jpg', 'Orient');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model`
--

DROP TABLE IF EXISTS `model`;
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
(1, 'Seiko', 1, '	\r\ncategories/seiko5.jpg', 470, 'Chique horloge', 'https://www.boumanonline.nl/horloges/seiko-5-sports-gmt-jubilee-ssk003?channable=0264c0696400373132373127&utm_campaign=Boumanonline+-+Vergelijk.nl&utm_content=Seiko&utm_source=Vergelijk.nl&utm_medium=cpc&utm_term=Seiko+5+sports+gmt+jubilee'),
(7, 'Seiko 1965', 1, '	\r\ncategories/audia6.png', 1256, 'klassieke horloge', 'https://www.kulta-center.com/en/seiko-elite-prospex-diver-s-1965-modern-re-interpretation-spb239j1?gclid=EAIaIQobChMI3smZzO_2_AIVku5RCh2IlAxYEAQYAyABEgJf-PD_BwE'),
(8, 'Seiko Alpinist', 1, '	\r\ncategories/seikoalpinist.jpg', 1300, 'Nette silvere horloge', 'https://www.juwelier-vanhooff.nl/seiko-prospex-special-edition-spb297j1/?gclid=EAIaIQobChMI5aik7-_2_AIVFq13Ch23bQTaEAQYCCABEgLZC_D_BwE'),
(9, 'Seiko Presage', 1, '	\r\ncategories/seikopresage.jpg', 440, '\'Open heart\' horloge', 'https://www.boumanonline.nl/horloges/seiko-presage-automaat-ssa405j1?channable=0264c06964003634313331b5&utm_campaign=Boumanonline+-+Vergelijk.nl&utm_content=Seiko&utm_source=Vergelijk.nl&utm_medium=cpc&utm_term=Seiko+presage+cocktail+%22blue+moon%22+open+'),
(10, 'Rolex SUBMARINER DATE', 2, '	\r\ncategories/rolex2.jpg', 15600, 'Silver glimmend horloge, met een streepje goud', 'https://rolex.schaapcitroen.nl/rolex-watches/submariner/m126613lb-0002/'),
(11, 'Rolex Day-Date', 2, '	\r\ncategories/rolex3.jpg', 62500, 'Mooi goud horloge', 'https://xelorwatches.com/product/rolex-day-date-40-228238-0061-green-dial-yellow-gold-2022/'),
(12, 'Rolex GMT-Master II', 2, '	\r\ncategories/rolex4.jpg\r\n', 48412, 'Prachtig silver horloge', 'https://www.vestiairecollective.com/men-accessories/watches/rolex/gmt-master-ii/?product_id=27956569&setLocale=14.en.EUR&authfee=false&utm_source=google&utm_medium=organic&utm_campaign=nl_nl_organic_freelisting_buyer_all_all&utm_content=free_googleshoppin'),
(13, 'Rolex Submariner Date', 2, '	\r\ncategories/rolexoyster.jpg', 18190, 'Mooi horloge', 'https://www.chronext.nl/rolex/submariner/126610lv/V29581'),
(14, 'Casio F-105W-1A', 3, 'categories/casio1.jpg', 20, 'Casual horloge', 'https://www.casio.com/nl/watches/casio/product.F-105W-1A/?utm_source=google&utm_medium=paidsearch&utm_campaign=nl%20%7c%20casio%20%7c%20pmax%20%7c&gclid=EAIaIQobChMI-syd3PH2_AIVRwCLCh0SQgj1EAQYDiABEgLpbPD_BwE'),
(15, 'Casio DBC-32-1A', 3, 'categories/casio2.jpg', 29650, 'Leuke telefoon horloge', 'https://www.casio.com/nl/watches/casio/vintage/product.DBC-32-1A/?utm_source=google&utm_medium=paidsearch&utm_campaign=nl%20%7c%20casio%20%7c%20pmax%20%7c&gclid=EAIaIQobChMI-syd3PH2_AIVRwCLCh0SQgj1EAQYCCABEgIqlfD_BwE'),
(16, 'Casio AE-1200WHD', 3, 'categories/casio3.jpg', 45, 'klasiek horloge', 'https://www.bol.com/nl/nl/f/casio-horloge-42/9200000043134409/'),
(17, 'Casio Vintage Iconic A168WG-9EF', 3, 'categories/casio4.jpg', 60, 'Glimmend goud horloge', 'https://www.bol.com/nl/nl/f/casio-vintage-iconic-a168wg-9ef-unisex-horloge/9200000026739750/'),
(18, 'Orient Bambino RA-AC0M', 4, 'categories/orient1.jpg', 305, 'klassieke horloge', 'https://www.amazon.nl/Orient-Herenhorloge-automatisch-cr%C3%A8mekleurige-wijzerplaat/dp/B0B6VH9GL2/ref=asc_df_B0B6VH9GL2/?tag=nlshogostdde-21&linkCode=df0&hvadid=630760101042&hvpos=&hvnetw=g&hvrand=17061509952888321578&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvc'),
(19, 'Orient Uniseks AA0004E19B', 4, 'categories/orient2.jpg', 246, 'unisex horloge', 'https://www.amazon.nl/Orient-volwassenen-automatisch-roestvrijstalen-RA-AA0004E19B/dp/B07JGMM8FC/ref=asc_df_B07JGMM8FC/?tag=nlshogostdde-21&linkCode=df0&hvadid=430557660715&hvpos=&hvnetw=g&hvrand=17061509952888321578&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmd'),
(20, 'Orient FAG03001D0', 4, 'categories/orient3.jpg', 299, 'Open heart horloge', 'https://www.juwelyr.com/orient-fag03001d0.html?source=googlebase&gclid=EAIaIQobChMIm4vAj_P2_AIV2YXVCh3vXA8sEAsYCiABEgIB0_D_BwE'),
(21, 'Orient Multi Year Calendar RA-BA0002E10B', 4, 'categories/orient.4jpg', 199, 'open heart kalendar horloge', 'https://www.yoox.com/nl/48289932VJ/item?tp=205635&utm_source=integral&utm_medium=affiliation-rs&utm_campaign=nl_3133497&dept=men&utm_content=feed&tduid=d6a4851beae7e08a8f8ae372e6172793#cod10=48289932VJ&sizeId=1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

DROP TABLE IF EXISTS `review`;
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
(1, 'Mooi horloge', 'heel mooie horloge zeker een aanrader', '8.0', '2023-01-22', '15:56:02', 1, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

DROP TABLE IF EXISTS `user`;
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
(3, ' Malik', 'Erdas', '302891760@student.rocmondriaan.nl', 'qwerty', 'admin'),
(4, 'johand', 'de wit', 'johantje1@gmail.com', 'qwerty', 'member'),
(5, 'jabada', 'doo', 'jabadado@gmail.com', 'qwerty', 'member');

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
