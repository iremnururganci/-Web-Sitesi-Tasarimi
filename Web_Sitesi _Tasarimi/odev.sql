-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Haz 2021, 16:00:44
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerikler`
--

CREATE TABLE `icerikler` (
  `icerikid` int(11) NOT NULL,
  `icerik` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `anaBolumIndex` int(11) NOT NULL,
  `linkid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `icerikler`
--

INSERT INTO `icerikler` (`icerikid`, `icerik`, `anaBolumIndex`, `linkid`) VALUES
(1, '../resimler/logo2.png', 1, 0),
(2, '\"En Güzel Çiçekler Sizin İçin ÇİÇEK EVİ\'nde\"', 2, 0),
(3, 'İletişim', 3, 0),
(4, 'Banka Hesaplarımız', 3, 0),
(5, 'Üye Ol', 3, 0),
(6, 'Giriş Yap', 3, 0),
(7, 'Sepetim', 3, 0),
(8, 'Kargo Takip', 3, 0),
(9, 'BUKET MEVSİM ÇİÇEKLERİ', 4, 0),
(10, '<< Geri >>', 5, 1),
(11, 'Pembe Papatyalar Çiçek Buketi', 6, 0),
(12, '../resimler/urunler/buketmevsimçiçekleri/pembepapatya.png', 6, 0),
(13, 'Bugün/Ücretsiz Teslimat 11,69 TL\'den başlayan taksitlerle\r\n', 6, 0),
(14, '59.99 TL', 6, 0),
(15, '49.99 TL', 6, 0),
(16, 'Detaylar', 6, 2),
(17, 'Beyaz Karanfil Çiçek Buketi', 6, 0),
(18, '../resimler/urunler/buketmevsimçiçekleri/karanfil.jpg', 6, 0),
(19, 'Bugün/Ücretsiz Teslimat\r\n\r\n11,69 TL\'den başlayan taksitlerle', 6, 0),
(20, '79.99 TL', 6, 0),
(21, '69.99 TL', 6, 0),
(22, 'Detaylar', 6, 3),
(23, 'Cipso Çiçek Buketi', 6, 0),
(24, '../resimler/urunler/buketmevsimçiçekleri/cipso.jpg', 6, 0),
(25, 'Bugün/Ücretsiz Teslimat\r\n\r\n11,69 TL\'den başlayan taksitlerle', 6, 0),
(26, '49.99 TL', 6, 0),
(27, '39.99 TL', 6, 0),
(28, 'Detaylar', 6, 4),
(29, 'Turuncu Güller Çiçek Buketi\r\n', 6, 0),
(30, '../resimler/urunler/buketmevsimçiçekleri/turuncugül.jpg', 6, 0),
(31, 'Yarın/Ücretsiz Teslimat\r\n\r\n17,54 TL\'den başlayan taksitlerle', 6, 0),
(32, '90.99 TL', 6, 0),
(33, '80.99 TL', 6, 0),
(34, 'Detaylar', 6, 5),
(35, 'Pembe Gerbera Buketi\r\n', 7, 0),
(36, '../resimler/urunler/buketmevsimçiçekleri/gebro.jpg', 7, 0),
(37, 'Ücretsiz kargo\r\n\r\n21,25 TL\'den başlayan taksitlerle', 7, 0),
(38, '', 7, 0),
(39, '109.00 TL', 7, 0),
(40, 'Detaylar', 7, 6),
(41, 'Sarı Lale Buketi\r\n', 7, 0),
(42, '../resimler/urunler/buketmevsimçiçekleri/lale.jpg', 7, 0),
(43, 'Ücretsiz kargo\r\n\r\n58,49 TL\'den başlayan taksitlerle', 7, 0),
(44, '', 7, 0),
(45, '299.99 TL', 7, 0),
(46, 'Detaylar', 7, 7),
(47, 'Renkli Şebboy Buketi\r\n', 7, 0),
(48, '../resimler/urunler/buketmevsimçiçekleri/şebboy.jpg', 7, 0),
(49, 'Ücretsiz kargo\r\n\r\n38,80 TL\'den başlayan taksitlerle', 7, 0),
(50, '', 7, 0),
(51, '199.99 TL', 7, 0),
(52, 'Detaylar', 7, 8),
(53, 'Renkli tasarım cipso buketi\r\n', 7, 0),
(54, '../resimler/urunler/buketmevsimçiçekleri/cipsorenkli.jpg', 7, 0),
(55, 'Ücretsiz kargo\r\n\r\n38,80 TL\'den başlayan taksitlerle', 7, 0),
(56, '', 7, 0),
(57, '249.99 TL', 7, 0),
(58, 'Detaylar', 7, 9),
(59, 'Hüsnüyusuf Çiçek Buketi\r\n', 8, 0),
(60, '../resimler/urunler/buketmevsimçiçekleri/yusuf.jpg', 8, 0),
(61, 'Bugün/Ücretsiz Teslimat\r\n\r\n17,54 TL\'den başlayan taksitlerle', 8, 0),
(62, '', 8, 0),
(63, '70.98 TL', 8, 0),
(64, 'Detaylar', 8, 10),
(65, 'Kırmızı Gül Çiçek Demeti\r\n\r\n', 8, 0),
(66, '../resimler/urunler/buketmevsimçiçekleri/gül.jpg', 8, 0),
(67, 'Bugün/Ücretsiz Teslimat\r\n\r\n68,05 TL\'den başlayan taksitlerle', 8, 0),
(68, '', 8, 0),
(69, '349.00 TL', 8, 0),
(70, 'Detaylar', 8, 11),
(71, 'Lusia Ortanca Buketi\r\n\r\n', 8, 0),
(72, '../resimler/urunler/buketmevsimçiçekleri/lusia.jpg', 8, 0),
(73, 'Ücretsiz kargo\r\n\r\n67,27 TL\'den başlayan taksitlerle', 8, 0),
(74, '', 8, 0),
(75, '245.00 TL', 8, 0),
(76, 'Detaylar', 8, 12),
(77, 'Becca Mevsim Buketi\r\n', 8, 0),
(78, '../resimler/urunler/buketmevsimçiçekleri/mevsimbuketi.jpg', 8, 0),
(79, 'Ücretsiz kargo\r\n\r\n31,00 TL\'den başlayan taksitlerle', 8, 0),
(80, '', 8, 0),
(81, '159.00 TL', 8, 0),
(82, 'Detaylar', 8, 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `linkler`
--

CREATE TABLE `linkler` (
  `linkid` int(11) NOT NULL,
  `sayfa` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `linkler`
--

INSERT INTO `linkler` (`linkid`, `sayfa`) VALUES
(1, '../AnaSayfa.html'),
(2, 'PembePapatyalarÇiçekBuketi.html'),
(3, 'KaranfilBeyazÇiçekBuketiDETAY.html'),
(4, 'CipsoÇiçekBuketiDETAY.html'),
(5, 'TuruncuGüllerÇiçekBuketiDETAY.html'),
(6, 'PembeGerberaBuketiDETAY.html'),
(7, 'SarıLalelBuketDETAY.html'),
(8, 'RenkliŞebboyBuketiDETAY.html'),
(9, 'RenkliTasarımCipsoBuketiDETAY.html'),
(10, 'HüsnüyususfÇiçekBuketiDETAY.html'),
(11, 'KırmızıGülÇiçekDemetiDETAY.html'),
(12, 'LusiaOrtancaBuketiDETAY.html'),
(13, 'BeccaMevsimBuketiDETAY.html');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `icerikler`
--
ALTER TABLE `icerikler`
  ADD PRIMARY KEY (`icerikid`);

--
-- Tablo için indeksler `linkler`
--
ALTER TABLE `linkler`
  ADD PRIMARY KEY (`linkid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `icerikler`
--
ALTER TABLE `icerikler`
  MODIFY `icerikid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Tablo için AUTO_INCREMENT değeri `linkler`
--
ALTER TABLE `linkler`
  MODIFY `linkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
