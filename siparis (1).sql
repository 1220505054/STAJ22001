-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 16 Ağu 2024, 15:51:17
-- Sunucu sürümü: 8.0.27
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `siparis`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cancel`
--

DROP TABLE IF EXISTS `cancel`;
CREATE TABLE IF NOT EXISTS `cancel` (
  `id` int NOT NULL,
  `cancel_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cancel`
--

INSERT INTO `cancel` (`id`, `cancel_status`) VALUES
(0, 'aaaaaaaaaaaaaaaaaaaaaa'),
(0, '24'),
(0, '25'),
(26, 'müşteri iptali'),
(27, 'asdadasdasaddassdaaasdasdsadasddasdad'),
(28, 'asdasddsdasdasdasddasasdsaasdsadsadasdasadadds'),
(29, 'asdasdsadassdasdasdasdasdasdasdsadasdasdasdaadasd'),
(43, 'm jn bhjh n'),
(46, 'asdasadassdd'),
(46, 'hjkhuık'),
(49, 'asdasasdasdasd'),
(51, ''),
(53, 'müşteri '),
(52, 'müşteri'),
(55, 'müşteri'),
(1, 'null'),
(7, 'sdfghjkmöç'),
(8, 'hggggggggg'),
(7, 'k'),
(9, 'l'),
(1, 'müşteri'),
(2, 'müşteri'),
(5, 'test'),
(8, 'müşteri'),
(13, 'müşteri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `table_no` varchar(30) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ord_id` int DEFAULT NULL,
  `ord_name` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ord_tel` varchar(11) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ord_number` int DEFAULT NULL,
  `ord_extra` tinyint(1) DEFAULT '0',
  `ord_ur_id` int DEFAULT NULL,
  `ord_ur_name` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ord_ur_quantity` int DEFAULT NULL,
  `ord_ur_price` double DEFAULT NULL,
  `ord_total_price` double DEFAULT NULL,
  `ord_date` datetime DEFAULT NULL,
  `ord_pay_status` tinyint(1) DEFAULT '0',
  `ord_cancel_status` tinyint(1) DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`table_no`, `ord_id`, `ord_name`, `ord_tel`, `ord_number`, `ord_extra`, `ord_ur_id`, `ord_ur_name`, `ord_ur_quantity`, `ord_ur_price`, `ord_total_price`, `ord_date`, `ord_pay_status`, `ord_cancel_status`, `id`) VALUES
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 52711, 'Et şiş', 100, 460.75, 46075, '2024-08-16 10:43:38', 0, 0, 210),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 82406, 'Sucuklu Pide', 1, 250.25, 250.25, '2024-08-16 07:43:43', 0, 0, 208),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 86916, 'Kıymalı Pide', 1, 100, 100, '2024-08-16 07:43:43', 0, 0, 209),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 70341, 'Kaşarlı Pide', 1, 300.75, 300.75, '2024-08-16 07:43:43', 0, 0, 207),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 70341, 'Kaşarlı Pide', 1, 300.75, 300.75, '2024-08-16 07:40:42', 0, 0, 206),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 42287, 'Karışık', 1, 125.63, 125.63, '2024-08-16 07:40:42', 0, 0, 205),
('B-6', 17, 'melek Oral', '05423627891', 3, 1, 86916, 'Kıymalı Pide', 1, 100, 100, '2024-08-16 07:40:42', 0, 0, 204),
('B-6', 16, 'melek Oral', '05423627891', 2, 1, 86916, 'Kıymalı Pide', 1, 100, 100, '2024-08-16 05:04:33', 1, 0, 203),
('B-6', 16, 'melek oral', '05423627891', 2, 1, 34143, 'Kola', 1, 20, 20, '2024-08-16 05:04:24', 1, 0, 202),
('B-6', 15, 'çağlayan usta', '05423627891', 1, 0, 34143, 'Kola', 1, 20, 20, '2024-08-16 05:02:25', 0, 0, 201),
('B-6', 14, 'çağlayan', '05423627891', 2, 0, 34143, 'Kola', 2, 20, 40, '2024-08-15 13:06:03', 1, 0, 200),
('B-6', 14, 'çağlayan', '05423627891', 2, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-15 13:06:03', 1, 0, 199),
('B-6', 14, 'çağlayan', '05423627891', 2, 0, 42287, 'karışık', 2, 100, 200, '2024-08-15 13:06:03', 1, 0, 198),
('B-6', 14, 'çağlayan', '05423627891', 2, 0, 86916, 'Kıymalı Pide', 8, 100, 800, '2024-08-15 13:06:03', 1, 0, 197),
('B-6', 13, 'ayşe', '77777777777', 1, 0, 42287, 'karışık', 1, 100, 100, '2024-08-15 08:55:32', 0, 1, 196),
('B-4', 12, 'çağlayanke', '05325321212', 4, 1, 42287, 'karışık', 2, 100, 200, '2024-08-14 09:22:13', 1, 0, 195),
('B-4', 12, 'çağlayanke', '05325321212', 4, 1, 30693, 'Izgara Köfte', 3, 150, 450, '2024-08-14 09:22:13', 1, 0, 194),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 42287, 'karışık', 2, 100, 200, '2024-08-14 09:21:36', 1, 0, 193),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 30693, 'Izgara Köfte', 3, 150, 450, '2024-08-14 09:21:36', 1, 0, 192),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 34143, 'Kola', 1, 20, 20, '2024-08-14 09:21:36', 1, 0, 191),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 42287, 'karışık', 1, 100, 100, '2024-08-14 09:21:21', 1, 0, 190),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-14 09:21:21', 1, 0, 189),
('B-4', 11, 'çağlayank', '05325321212', 3, 1, 34143, 'Kola', 1, 20, 20, '2024-08-14 09:21:21', 1, 0, 188),
('B-4', 11, 'çağlayank', '05325321212', 3, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-14 09:20:02', 1, 0, 187),
('B-4', 11, 'çağlayank', '05325321212', 3, 0, 34143, 'Kola', 1, 20, 20, '2024-08-14 09:20:02', 1, 0, 186),
('B-6', 10, 'çağlayan', '5325321212', 2, 0, 86916, 'Kıymalı Pide', 2, 100, 200, '2024-08-14 09:18:40', 1, 0, 185),
('B-6', 9, 'adsadsad', '12', 1, 1, 42287, 'karışık', 1, 100, 100, '2024-08-14 05:36:23', 1, 0, 184),
('B-6', 9, 'adsadsad', '12', 1, 1, 30693, 'Izgara Köfte', 4, 150, 600, '2024-08-14 05:36:23', 1, 0, 183),
('B-6', 9, 'adsadsad', '12', 1, 0, 30693, 'Izgara Köfte', 4, 150, 600, '2024-08-14 05:36:03', 1, 0, 182),
('B-6', 8, 'çağlayan35', 'abcdenasnda', 8, 0, 34143, 'Kola', 1, 20, 20, '2024-08-13 14:43:39', 0, 1, 181),
('B-6', 8, 'çağlayan35', 'abcdenasnda', 8, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 14:43:39', 0, 1, 180),
('B-6', 8, 'çağlayan35', 'abcdenasnda', 8, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 14:43:39', 0, 1, 179),
('B-6', 7, 'melek', '11111111111', 7, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:31:36', 1, 0, 178),
('B-6', 7, 'melek', '11111111111', 7, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 13:31:36', 1, 0, 177),
('B-6', 7, 'melek', '11111111111', 7, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:28:46', 1, 0, 176),
('B-6', 7, 'melek', '11111111111', 7, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 13:28:46', 1, 0, 175),
('B-6', 7, 'melek', '11111111111', 7, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:21:26', 1, 0, 174),
('B-6', 7, 'melek', '11111111111', 7, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 13:21:26', 1, 0, 173),
('B-6', 7, 'melek', '11111111111', 7, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:20:44', 1, 0, 172),
('B-6', 7, 'melek', '11111111111', 7, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 13:20:44', 1, 0, 171),
('B-6', 7, 'melek', '11111111111', 7, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:19:51', 1, 0, 170),
('B-6', 7, 'melek', '11111111111', 7, 0, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 13:19:51', 1, 0, 169),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:18:54', 1, 0, 168),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 13:18:54', 1, 0, 167),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 13:13:36', 1, 0, 166),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 13:13:36', 1, 0, 165),
('B-6', 5, 'ayşe', '77777777777', 5, 1, 34143, 'Kola', 1, 20, 20, '2024-08-13 09:36:17', 1, 0, 164),
('B-6', 5, 'ayşe', '77777777777', 5, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 09:35:49', 0, 1, 163),
('B-6', 5, 'ayşe', '77777777777', 5, 1, 34143, 'Kola', 1, 20, 20, '2024-08-13 09:33:31', 1, 0, 162),
('B-6', 5, 'ayşe', '77777777777', 5, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 09:33:31', 1, 0, 161),
('B-6', 5, 'ayşe', '77777777777', 5, 1, 30693, 'Izgara Köfte', 4, 150, 600, '2024-08-13 09:32:41', 1, 0, 160),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 30693, 'Izgara Köfte', 5, 150, 750, '2024-08-13 09:23:29', 1, 0, 159),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 09:23:29', 1, 0, 158),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 34143, 'Kola', 1, 20, 20, '2024-08-13 07:37:44', 1, 0, 157),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 07:37:44', 1, 0, 156),
('B-6', 6, 'çağlayan', '33333333333', 6, 1, 42287, 'karışık', 72, 100, 7200, '2024-08-13 07:37:44', 1, 0, 155),
('B-6', 6, 'çağlayan', '33333333333', 6, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 06:10:10', 1, 0, 154),
('B-6', 6, 'çağlayan', '33333333333', 6, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 06:10:10', 1, 0, 153),
('B-6', 5, 'ayşe', '77777777777', 5, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 06:06:22', 1, 0, 152),
('B-6', 5, 'ayşe', '77777777777', 5, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 06:06:22', 1, 0, 151),
('B-6', 4, 'metin kocabaş', '89999999999', 4, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 05:46:40', 1, 0, 150),
('B-6', 4, 'metin kocabaş', '89999999999', 4, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 05:46:40', 1, 0, 149),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 05:44:29', 1, 0, 147),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 05:44:29', 1, 0, 146),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 1, 34143, 'Kola', 1, 20, 20, '2024-08-13 05:44:29', 1, 0, 145),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 05:43:59', 1, 0, 144),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 05:43:59', 1, 0, 143),
('B-6', 3, 'metin kocabaş', '89999999999', 3, 0, 34143, 'Kola', 1, 20, 20, '2024-08-13 05:43:59', 1, 0, 142),
('B-6', 2, 'çağlayan', '05111111111', 2, 1, 42287, 'karışık', 1, 100, 100, '2024-08-13 05:42:29', 0, 1, 141),
('B-6', 2, 'çağlayan', '05111111111', 2, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 05:42:29', 0, 1, 140),
('B-6', 2, 'çağlayan', '05111111111', 2, 1, 34143, 'Kola', 1, 20, 20, '2024-08-13 05:42:29', 0, 1, 139),
('B-6', 2, 'çağlayan', '05111111111', 2, 0, 34143, 'Kola', 1, 20, 20, '2024-08-13 05:42:00', 1, 0, 138),
('B-6', 2, 'çağlayan', '05111111111', 2, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-13 05:42:00', 1, 0, 137),
('B-6', 2, 'çağlayan', '05111111111', 2, 0, 42287, 'karışık', 1, 100, 100, '2024-08-13 05:42:00', 1, 0, 136),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 30693, 'Izgara Köfte', 2, 150, 300, '2024-08-13 05:40:19', 0, 1, 135),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 42287, 'karışık', 5, 100, 500, '2024-08-13 05:40:19', 0, 1, 134),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 86916, 'Kıymalı Pide', 2, 100, 200, '2024-08-12 14:01:43', 1, 0, 133),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-12 14:01:43', 1, 0, 131),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 42287, 'karışık', 2, 100, 200, '2024-08-12 14:01:43', 1, 0, 132),
('B-6', 1, 'yusuf', '63333333333', 1, 1, 34143, 'Kola', 1, 20, 20, '2024-08-12 14:01:43', 1, 0, 130),
('B-6', 1, 'yusuf', '63333333333', 1, 0, 30693, 'Izgara Köfte', 1, 150, 150, '2024-08-12 14:00:54', 1, 0, 127),
('B-6', 4, 'metin kocabaş', '89999999999', 4, 0, 34143, 'Kola', 1, 20, 20, '2024-08-13 05:46:40', 1, 0, 148),
('B-6', 1, 'yusuf', '63333333333', 1, 0, 42287, 'karışık', 1, 100, 100, '2024-08-12 14:00:54', 1, 0, 129),
('B-6', 1, 'yusuf', '63333333333', 1, 0, 34143, 'Kola', 1, 20, 20, '2024-08-12 14:00:54', 1, 0, 128);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE IF NOT EXISTS `personel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pers_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `sicil_no` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `pers_passw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `pers_command` bit(1) NOT NULL,
  `pers_change` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`id`, `pers_name`, `sicil_no`, `pers_passw`, `pers_command`, `pers_change`) VALUES
(1, 'Metin Kocabaş', '21417862111', '431343', b'1', b'1'),
(5, 'Melek Siman', '10563015236', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', b'1', b'0'),
(8, 'emre', '11111111111', 'af41e68e1309fa29a5044cbdc36b90a3821d8807e68c7675a6c495112bc8a55f', b'1', b'1'),
(10, 'Çağlayan Usta', '28751331594', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', b'1', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `prd_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `prd_id` int NOT NULL AUTO_INCREMENT,
  `prd_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `prd_foto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `prd_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `prd_stock` int NOT NULL,
  `prd_price` double NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`prd_type`, `prd_id`, `prd_name`, `prd_foto`, `prd_info`, `prd_stock`, `prd_price`) VALUES
('Pideler', 86916, 'Kıymalı Pide', 'kiymali-pide.jpg', '30 dakikada çıkan enfes lezzetli dana etli parçacıklarla birlikte hazırlnamış ve sosu ise özel sosda', 5, 100),
('Pideler', 42287, 'Karışık', 'karışık.jpeg', '3 tane farklı pide türü bulunur taş fırında yarım dakika pişer', 84, 125.63),
('Pideler', 53787, 'Kuşbaşılı Pide', 'indir (2).jpeg', '100 gram et vardır dana eti ile servis edilir taş fırında pişer ', 100, 240),
('Pideler', 70341, 'Kaşarlı Pide', 'indir (1).jpeg', 'bir porsiyon olarak servis edilir sadece kaşar bulunur taş fırında pişer ', 98, 300.75),
('Pideler', 82406, 'Sucuklu Pide', 'sucuklu_pide.jpeg', '100 gram et vardır kaşar,sucuk,özel sos ', 99, 250.25),
('Izgaralar', 52711, 'Et şiş', 'et.jpeg', 'bir porsiyonda 3 tane şiş vardır yanına soğan salatası,pidesi ve patates kızartması ile', 100, 460.75),
('Izgaralar', 39872, 'Dana bonfile', 'dana.jpeg', '1 porsiyon 200 gramdan oluştur yanında patates kızartması,pidesi ve soğan salatası vardır', 100, 300),
('Allkollü içecekler', 99297, 'Şarap', 'şarap.jpeg', 'üzüm bağından yapılan bir içecek ve soğuk içiniz', 100, 700.25),
('Allkollü içecekler', 55394, 'Bira', 'bira.jpeg', 'soğuk içiniz', 100, 500),
('Allkollü içecekler', 83801, 'Yeni Rakı', 'yeni-rakı.jpeg', 'buzlukla birlikte servis edilir baya sert bir içecektir', 100, 680.35),
('Izgaralar', 75550, 'Tavuk şiş', 'şiş.jpeg', 'porsiyonda 6 adet vardır ', 100, 550),
('Izgaralar', 16506, 'tavuk göğüs', 'göğüs.jpeg', '2 adet vardır sulu bir şekilde et pişer kuru kalmaz', 100, 450.37),
('Alkolsüz İçecekler', 92955, 'Ayran', 'ayran.jpeg', 'Sıcak aylarda çok iyi gider', 100, 30),
('Mezeler', 10804, 'Haydari ', 'haydari.jpeg', 'yoğurtla yapılan üzerine kekik,nane koyulan bir meze', 100, 80.75),
('Mezeler', 67659, 'Acı ezme', 'acı.jpeg', 'içinde acı biber pulbiber karabiber gibi birçok çeşit baharatlar var', 100, 100.25),
('Mezeler', 33929, 'Cacık', '', 'yoğurt ve nanenin mükemmel uyumu', 100, 92.75),
('Kahvaltı', 98602, 'Van kahvaltısı', 'van.jpeg', 'yumurta, sucuk, peynir, kaşar, menemen, muğlama, salam, sigaraböreği, domates, salatalık , kavurma v', 100, 800.5),
('Kahvaltı', 44029, 'Kahvaltı Tabağı', 'kahvaltı.jpeg', 'içerisinde yumurta, peynir, domates, salatalık, salam, kaşar, 3 çay', 100, 300),
('Kahvaltı', 55091, 'Serpme Kahvaltı', 'serpme.jpeg', 'pişi,domates,salatalık, salam,peynir,kaşar,sucuk, yumurta,sınırsız çay', 100, 743.25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tables`
--

DROP TABLE IF EXISTS `tables`;
CREATE TABLE IF NOT EXISTS `tables` (
  `table_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `table_no` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `tables`
--

INSERT INTO `tables` (`table_name`, `table_no`) VALUES
('B - 2', '22379'),
('B-3', '31724'),
('B-4', '47499'),
('B-5', '54630'),
('B-6', '21071'),
('M', '76058'),
('Metin', '39304'),
('bahçe 1', '53849'),
('Masa-01', '63027'),
('Masa-02', '95248'),
('Masa-03', '92212'),
('Masa-07', '57561'),
('bace45', '80680'),
('n', '90869'),
('y', '40007'),
('masa-m', '95560'),
('k', '59059'),
('u', '43249'),
('o', '52110'),
('ı', '50816'),
('p', '74123'),
('aaaa', '15608'),
('44444444', '97913'),
('l', '1633735'),
('ı', '1135768'),
('ı', '5163213'),
('8', '4605355'),
('y', '5265033'),
('y', '1881083'),
('y', '6285989'),
('t', '4457713'),
('g', '9721740'),
('f', '1632900'),
('g', '1072725'),
('f', '9942839'),
('g', '8574161'),
('o', '58229'),
('ğ', '88154'),
('v', '95763'),
('h', '90193'),
('b', '2437926'),
('b', '3271561'),
('x', '5619079'),
('masa ı', '7545909'),
('masa-10', '8319865'),
('çardak-9', '9043573'),
('cardak-4', '2369894');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `variable_type`
--

DROP TABLE IF EXISTS `variable_type`;
CREATE TABLE IF NOT EXISTS `variable_type` (
  `var_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `var_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `variable_type`
--

INSERT INTO `variable_type` (`var_type`, `var_image`) VALUES
('Pideler', 'pide.jpg'),
('Izgaralar', 'ızgara1.jpg'),
('Alkolsüz İçecekler', 'içecek.jpg'),
('Mezeler', 'meze.jpg'),
('Kahvaltı', 'kahvaltı.jpeg'),
('Allkollü içecekler', '1534827924_40443977957ab0f6a6a1a06_94311182.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
