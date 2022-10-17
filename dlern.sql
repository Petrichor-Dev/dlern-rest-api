-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Okt 2022 pada 19.09
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlern`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian_tubuh`
--

CREATE TABLE `bagian_tubuh` (
  `id_bagian_tubuh` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bagian_tubuh`
--

INSERT INTO `bagian_tubuh` (`id_bagian_tubuh`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(59, 1, 'badan', 'der Körper', 'derKorper.png', 'derKorper.mp4'),
(60, 1, 'jari', 'der Finger', 'derFinger.png', 'derFinger.mp4'),
(61, 1, 'mulut', 'der Mund', 'derMund.png', 'derMund.mp4'),
(62, 1, 'paru-paru', 'die Lunge', 'dieLunge.png', 'dieLunge.mp4'),
(63, 1, 'otot', 'der Muskel', 'derMuskel.png', 'derMuskel.mp4'),
(64, 1, 'kepala', 'der Kopf', 'derKopf.png', 'derKopf.mp4'),
(65, 1, 'leher', 'der Hals', 'derHals.png', 'derHals.mp4'),
(66, 1, 'hati', 'das Herz', 'dasHerz.png', 'dasHerz.mp4'),
(67, 1, 'lengan', 'der Arm', 'derArm.png', 'derArm.mp4'),
(68, 1, 'lutut', 'das Knie', 'dasKnie.png', 'dasKnie.mp4'),
(69, 1, 'telinga', 'das Ohr', 'dasOhr.png', 'dasOhr.mp4'),
(70, 1, 'bahu', 'das Schulter', 'dasSchulter.png', 'dieSchulter.mp4'),
(71, 1, 'kaki', 'das Bein', 'dasBein.png', 'dasBein.mp4'),
(72, 1, 'mata', 'das Auge', 'dasAuge.png', 'dasAuge.mp4'),
(73, 1, 'Kaki bagian bawah', 'der Fuss', 'derFuss.png', 'derFuss.mp4'),
(74, 1, 'punggung', 'der Rücken', 'derRucken.png', 'derRucken.mp4'),
(75, 1, 'perut', 'der Bauch', 'derBauch.png', 'derBauch.mp4'),
(76, 1, 'hidung', 'die Nase', 'dieNase.png', 'dieNase.mp4'),
(77, 1, 'rambut', 'die Haare', 'dieHaare.png', 'dieHaare.mp4'),
(78, 1, 'tangan', 'die Hände', 'dieHande.png', 'dieHande.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_soal`
--

CREATE TABLE `bank_soal` (
  `id_soal` int(11) NOT NULL,
  `no_soal` int(2) NOT NULL,
  `season` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  `type_soal` int(11) NOT NULL,
  `pertanyaanIndo` varchar(128) NOT NULL,
  `pertanyaanJerm` varchar(128) NOT NULL,
  `voice` varchar(128) NOT NULL,
  `keterangan_voice` varchar(64) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `susun_kata` varchar(128) NOT NULL,
  `susun_huruf` varchar(64) NOT NULL,
  `acak_gambar` varchar(256) NOT NULL,
  `option_a` varchar(128) NOT NULL,
  `option_b` varchar(128) NOT NULL,
  `option_c` varchar(128) NOT NULL,
  `jawaban` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank_soal`
--

INSERT INTO `bank_soal` (`id_soal`, `no_soal`, `season`, `episode`, `type_soal`, `pertanyaanIndo`, `pertanyaanJerm`, `voice`, `keterangan_voice`, `gambar`, `susun_kata`, `susun_huruf`, `acak_gambar`, `option_a`, `option_b`, `option_c`, `jawaban`) VALUES
(3, 1, 1, 1, 1, 'Kata yang tepat untuk (Susu) ?', 'null', 'null', 'null', 'dieMilch.svg', 'null', 'null', 'null', 'Der Obsttee', 'Das Wasser', 'Die Milch', 'c'),
(4, 2, 1, 1, 1, 'Kata yang tepat untuk (Kopi) ?', 'null', 'null', 'null', 'derKaffee.png', 'null', 'null', 'null', 'Der Wein', 'Der Kaffee', 'Der Kakao', 'b'),
(11, 3, 1, 1, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'ichTrinkenEinenEiskaffee.mp4', 'ich trinke einen Eiskaffee', 'null', 'null', 'null', 'null', 'Saya minum kopi', 'Saya minum susu kopi', 'Saya minum es kopi', 'c'),
(12, 4, 1, 1, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'ichNehmeOrangensaft.mp4', 'ich nehme Orangensaft', 'null', 'null', 'null', 'null', 'Saya memesan Teh', 'Saya memesan jus Jeruk', 'Saya memesan air mineral', 'b'),
(13, 5, 1, 1, 3, 'Tulis dalam bahasa Indonesia. (Ein Glas Milch)', 'null', 'null', 'null', 'null', 'jus segelas itu susu sebuah', 'null', 'null', 'null', 'null', 'null', 'Sebuah segelas susu'),
(14, 1, 1, 2, 1, 'Kata yang tepat untuk (Pensil) ?', 'null', 'null', 'null', 'derBleistift.png', 'null', 'null', 'null', 'Der Tisch', 'Der Bleistift', 'Die Tasche', 'b'),
(15, 2, 1, 2, 1, 'Kata yang tepat untuk (Meja) ?', 'null', 'null', 'null', 'derTisch.svg', 'null', 'null', 'null', 'Der Stuhl', 'Das Handy', 'Der Tisch', 'c'),
(16, 3, 1, 2, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'dasIstEineTasche.mp4', 'das ist eine Tasche', 'null', 'null', 'null', 'null', 'Itu adalah sebuah tas', 'Itu adalah sebuah meja', 'Itu adalah sebuah pensil', 'a'),
(17, 4, 1, 2, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'erHatEinenStuhl.mp4', 'Er hat einen Stuhl', 'null', 'null', 'null', 'null', 'Dia punya sebuah kursi', 'Kamu punya sebuah buku', 'Saya punya sebuah kertas', 'a'),
(18, 5, 1, 2, 3, 'Tulis dalam bahasa Indonesia. (Die Tasche und der Bleistift sind aus der Türkei)', 'null', 'null', 'null', 'null', 'dari pensil turki itu tas dan', 'null', 'null', 'null', 'null', 'null', 'Tas dan pensil itu dari Turki'),
(19, 1, 1, 3, 1, 'Kata yang tepat untuk (Taman) ?', 'null', 'null', 'null', 'derPark.png', 'null', 'null', 'null', 'Der Prater', 'Der Park', 'Der Rote Platz', 'b'),
(20, 2, 1, 3, 1, 'Kata yang tepat untuk (Pasar) ?', 'null', 'null', 'null', 'derMarkplatz.png', 'null', 'null', 'null', 'Der Markplatz', 'Das Dorf', 'Die Stadt', 'a'),
(21, 3, 1, 3, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'ichSeheDenBlummenparkInDerNiederlande.mp4', 'ich sehe den Blummenpark in der Niederlande', 'null', 'null', 'null', 'null', 'Saya melihat museum di Belanda', 'Saya melihat taman di Belanda', 'Saya melihat taman bunga di Belanda', 'a'),
(22, 4, 1, 3, 2, 'Dengarkan audio dan pilih pernyataan yang tepat', 'null', 'sieBrauchenDenMarkplatzSALAH.mp4', 'Sie besuchen den Markplatz', 'null', 'null', 'null', 'null', 'Mereka berbelanja ke pasar', 'Mereka mengunjungi pasar ', 'Mereka berkunjung ke tempat itu ', 'a'),
(23, 5, 1, 3, 3, 'Tulis dalam bahasa Indonesia. (Das Deutschland, das Russland und das Bulgarien)', 'null', 'null', 'null', 'null', 'bulgaria italua jerman brazil berlin belanda rusia dan', 'null', 'null', 'null', 'null', 'null', 'Jerman Rusia dan Bulgaria'),
(34, 1, 2, 1, 4, 'Tulis yang kamu dengar', 'null', 'derSchreibtisch.mp3', 'der Schreibtisch', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'der Schreibtisch'),
(35, 2, 2, 1, 4, 'Tulis yang kamu dengar', 'null', 'dasBucherregal.mp3', 'das Bücherregal', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'das Bücherregal'),
(36, 3, 2, 1, 5, 'Terjemahkan kalimat ini. (Kamu punya cermin) ?', 'null', 'hastDuEinenSpigel.mp4', 'Hast du einen...?', 'null', 'null', 'null', 'null', 'Sofa ', 'Sessel', 'Spiegel', 'c'),
(37, 4, 2, 1, 5, 'Terjemahkan kalimat ini. (Kami punya meja belajar)', 'null', 'wirHabenSchreibtisch.mp4', 'Wir haben...', 'null', 'null', 'null', 'null', 'Spiegel', 'Schreibtisch ', 'Teppich', 'b'),
(38, 5, 2, 1, 6, 'Pilihlah arti yang benar. (Meja belajar, tempat tidur, cermin, rak buku)', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Der Tisch, das Bett, der Teppich, das Bücherregal', 'Der Schreibtisch, das Bett, der Spiegel, das Bücherregal ', 'Der Schreibtisch, das Bett, der Spiegel, der Schrank', 'b'),
(39, 1, 2, 2, 4, 'Tulis yang kamu dengar', 'null', 'dasBild.mp3', 'das Bild', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'das Bild'),
(40, 2, 2, 2, 4, 'Tulis yang kamu dengar', 'null', 'dieZeitung.mp3', 'die Zeitung', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'die Zeitung'),
(41, 3, 2, 2, 5, 'Terjemahkan kalimat ini. (Gambar itu tergantung di atas lemari)', 'null', 'dasBildHangtUberDerSchrank.mp4', 'Das...hängt über dem Schrank', 'null', 'null', 'null', 'null', 'Das Fenster', 'Das Buch', 'Das Bild', 'c'),
(42, 4, 2, 2, 5, 'Terjemahkan kalimat ini. (Kunci itu terletak di bawah Koran)', 'null', 'der schlussel lieght unter der zeitung.mp4', 'Der Schlüssel liegt unter der...', 'null', 'null', 'null', 'null', 'Tasche', 'Zeitung ', 'Tastatur', 'b'),
(43, 5, 2, 2, 6, 'Pilihlah arti yang benar! (Koran, Gambar, Lemari, Kunci)', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Die Zeitung, das Bild, der Schrank, der Schlüssel', 'Die Zeitung, der Schlüssel, der Schrank, das Bild', 'Der Schrank, das Bild, der Schlüssel, die Zeitung', 'a'),
(44, 1, 2, 3, 4, 'Tulis yang kamu dengar', 'null', 'derArzt.mp3 0', 'der Arzt', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'der Arzt'),
(45, 2, 2, 3, 4, 'Tulis yang kamu dengar', 'null', 'derKellner.mp3 0', 'die Kellnerin', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'die Kellnerin'),
(46, 3, 2, 3, 5, 'Terjemahkan kalimat ini. (Simon adalah seorang dokter di sebuah rumah sakit di bremen)', 'null', 'simonIstEinArtzInEinemKrankenhausInBremen.mp4 0', 'Simon ist ein...in einem Krankenhaus in Bremen', 'null', 'null', 'null', 'null', 'Arzt', 'Animateur', 'Koch', 'a'),
(47, 4, 2, 3, 5, 'Terjemahkan kalimat ini. (Saya bekerja sebagai penjual bunga)', 'null', 'ichArbeiteAlsFloristinInStuttgart.mp4 tes.mp4', 'Ich...als Floristin in Stuttgart di Stuttgart', 'null', 'null', 'null', 'null', 'arbeite', 'komme', 'habe', 'a'),
(48, 5, 2, 3, 6, 'Pilihlah arti yang benar. (Sekretaris, Pramusaji, Dokter, Guru)', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Sekretärin, Kellner/in, Arzt/in, Lehrer/in', 'Sekretärin, Ingeniur/in, Arzt/in, Lehrer/in', 'Sekretärin, Floristin, Koch, Lehrer/in', 'a'),
(49, 1, 3, 1, 7, 'Pindahkan kata ke jawaban yang benar', 'Der Bus Linie 100, der Reichstag', 'null', 'null', 'null', 'null', 'null', 'derWald.png desBusLinie100.jpg reichstag.png', 'null', 'null', 'null', '2 3'),
(50, 2, 3, 1, 7, 'Pindahkan kata ke jawaban yang benar', 'die Flohmark. der Reichstag, der Brandenburger Tor, das Schloss Bellevue', 'null', 'null', 'null', 'null', 'null', 'derFehrsehturm.svg derFlohmarkt.jpg reichstag.png dasBrandenburgerTor.png dasSchlossBellevue.jpg', 'null', 'null', 'null', '3 5 4 2'),
(51, 3, 3, 1, 8, 'Susun hingga menjadi kata yang sempurna!', 'null', 'DerFlohmarkt.m4a', 'null', 'derFlohmarkt.jpg', 'null', 'f  r  t  h  d  l  e  k  r  a  o  m', 'null', 'null', 'null', 'null', 'der Flohmark'),
(52, 4, 3, 1, 2, 'Pilih kata yang hilang', 'null', 'woWarstDuGesternAbend.mp4', 'Woher warst du gestern Abend? Im...', 'null', 'null', 'null', 'null', 'Burger King', 'Berliner Dom ', 'Brandenburger Tor ', 'c'),
(53, 5, 3, 1, 2, 'Pilih kata yang hilang', 'null', 'woKonnenWirOperSehen.mp4', 'Wo können wir Oper sehen? In der...', 'null', 'null', 'null', 'null', 'Theater', 'Kino', '', 'a'),
(54, 1, 3, 2, 7, 'Pindahkan kata ke jawaban yang benar', 'Der Fleisch, der Spinat, das Bier', 'null', 'null', 'null', 'null', 'null', 'fleisch.png derSpinat.png derSaft.png dasBier.png', 'null', 'null', 'null', '4 2 1'),
(55, 2, 3, 2, 7, 'Pindahkan kata ke jawaban yang benar', 'Der Spinat, die Erdbeere, die Kartoffeln, das Brot', 'null', 'null', 'null', 'null', 'null', 'derSpinat.png dieKartoffeln.png brot.jpg erdberre.jpg dasHahnchen.svg', 'null', 'null', 'null', '3 2 1 4'),
(56, 3, 3, 2, 8, 'Susun hingga menjadi kata yang sempurna!', 'null', 'dasBier.3gpp', 'null', 'dasBier.png', 'null', 's  i  r  D  a  e  B  s', 'null', 'null', 'null', 'null', 'das Bier'),
(57, 4, 3, 2, 9, 'Pilih kata yang hilang.', 'Ich kaufe... und....', 'ichKaufeSpinatUndApfel.mp4', 'Ich kaufe...und...', 'null', 'null', 'null', 'null', 'Suppe, Apfel ', 'Spinat, Apfel', 'Spagehetti, Kaffe', 'b'),
(58, 5, 3, 2, 9, 'Pilih kata yang hilang.', 'Was isst du? Ich esse ....', 'wasIsstDu.mp4', 'Was isst du? Ich esse...', 'null', 'null', 'null', 'null', 'Erdbeere ', 'Ei', 'Kaffe', 'a'),
(59, 1, 3, 3, 7, 'Pindahkan kata ke jawaban yang benar ', 'Der Rock, das Hemd, der Pullover', 'null', 'null', 'null', 'null', 'null', 'derKopftuch.png rok.jpg hemd.png pullover.jpg', 'null', 'null', 'null', '2 3 4'),
(60, 2, 3, 3, 7, 'Pindahkan kata ke jawaban yang benar', 'Das T-Shirt, die Jacke, der Pullover, die Schuhe ', 'null', 'null', 'null', 'null', 'null', 'dasTShirt.jpg dieJacke.jpg pullover.jpg handschuhe.png stiefel.png', 'null', 'null', 'null', '4 1 2 3'),
(61, 3, 3, 3, 8, 'Susun hingga menjadi kata yang sempurna!', 'null', 'dieSchuhe.aac', 'null', 'shuhe.png', 'null', 'c  i  D  h  S  e  h  u  e', 'null', 'null', 'null', 'null', 'die Schuhe'),
(62, 4, 3, 3, 9, 'Pilih kata yang hilang.', 'Ich mag...', 'ichMagDasHemd.mp4', 'Ich mag...', 'null', 'null', 'null', 'null', 'Das Top', 'Das Hemd ', 'Die Schuhe', 'b'),
(63, 5, 3, 3, 9, 'Pilih kata yang hilang.', 'Kann ich... anprobieren?', 'kannIchDenPulloverAnprobieren.mp4', 'Kann ich...anprobieren ?', 'null', 'null', 'null', 'null', 'Die Krawatte', 'Der Schal', 'Der Pullover', 'c'),
(64, 1, 4, 1, 10, 'Apa artikel dari (Mund) ?', 'null', 'null', 'null', 'derMund.png', 'null', 'null', 'null', 'Der ', 'Die ', 'Das ', 'a'),
(65, 2, 4, 1, 10, 'Apa artikel dari (Haare) ?', 'null', 'null', 'null', 'dieHaare.png', 'null', 'null', 'null', 'Der ', 'Die ', 'Das ', ''),
(66, 3, 4, 1, 2, 'Pilih yang kamu dengar', 'null', 'dieKopfschmerzen.mp4', 'die Kopfschmerzen', 'null', 'null', 'null', 'null', 'die Kopfschmerzen', 'die Bauchschmerzen ', 'das Fieber', 'a'),
(67, 4, 4, 1, 2, 'Pilih yang kamu dengar', 'null', 'dieTablette.mp3', 'die Tablette', 'null', 'null', 'null', 'null', 'die Tablette ', 'die salbe', 'die Sportsalbe', 'a'),
(68, 5, 4, 1, 3, 'Tulis dalam bahasa Indonesia. (Deine Augen sind Wunderschön)', 'null', 'null', 'null', 'null', 'rambut jelek mata adalah indah itu kamu saya', 'null', 'null', 'null', 'null', 'null', 'Mata kamu itu indah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_dikantor`
--

CREATE TABLE `barang_dikantor` (
  `id_barang_dikantor` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_dikantor`
--

INSERT INTO `barang_dikantor` (`id_barang_dikantor`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'monitor', 'der Monitor', 'derMonitor.png', 'derMonitor.mp3'),
(2, 1, 'mouse', 'die Maus', 'dieMaus.png', 'dieMaus.mp3'),
(3, 1, 'gambar', 'das Bild', 'dasBild.png', 'dasBild.mp3'),
(4, 1, 'tas', 'die Tasche', 'dieTasche.svg', 'dieTasche.mp3'),
(5, 1, 'printer', 'der Drucker', 'derDrucker.png', 'derDrucker.mp3'),
(6, 1, 'buku notes', 'der Notizblock', 'derNotizblock.png', 'derNotizblock.mp3'),
(7, 1, 'koran ', 'die Zeitung', 'dieZeitung.png', 'dieZeitung.mp3'),
(8, 1, 'kamus-kamus', 'die Wörterbüchern', 'dasWorterbuch.svg', 'dieWorterbuchern.mp3'),
(9, 1, 'Cangkir kopi', 'die Kaffeetasse', 'dieKaffeetassen.png', 'derKaffeetasse.mp3'),
(10, 1, 'map', 'der Ordner', 'derOrdner.png', 'derOrdner.mp3'),
(11, 1, 'jendela', 'das Fenster', 'dasFenster.svg', 'dasFenster.mp3'),
(12, 1, 'dinding', 'die Wand', 'dieWand.svg', 'dieWand.mp3'),
(13, 1, 'Papan keyboard', 'die Tastatur', 'dieTastatur.png', 'dieTastatur.mp3'),
(14, 1, 'tanaman', 'die Pflanze', 'diePflanze.png', 'diePflanze.mp3'),
(15, 1, 'tempat sampah', 'der Papierkorb', 'derPapierkorb.jpg', 'derPapierkorb.mp3'),
(16, 1, 'kunci', 'der Schlüssel', 'derSchlussel.svg', 'derSchlussel.mp3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_dirumah`
--

CREATE TABLE `barang_dirumah` (
  `id_barang_dirumah` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_dirumah`
--

INSERT INTO `barang_dirumah` (`id_barang_dirumah`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'meja tulis', 'der Schreibtisch', 'derSchreibtisch.svg', 'derSchreibtisch.mp3'),
(2, 1, 'cermin', 'der Spiegel', 'derSpiegel.svg', 'derSpiegel.mp3'),
(3, 1, 'tempat tidur', 'das Bett ', 'dasBett.svg', 'dasBett.mp3'),
(4, 1, 'Wastafel dapur', 'die Spüle', 'dieSpule.svg', 'dieSpule.mp3'),
(5, 1, 'Kursi berlengan', 'der Sessel', 'derSessel.svg', 'derSessel.mp3'),
(6, 1, 'lemari', 'der Schrank', 'derSchrank.png', 'derSchrank.mp3'),
(7, 1, 'karpet', 'der Teppich', 'derTeppich.svg', 'derTeppich.mp3'),
(8, 1, 'meja makan', 'der Esstisch', 'derEsstisch.svg', 'derEsstisch.mp3'),
(9, 1, 'mesin cuci', 'die Waschmaschine', 'derWaschmaschine.jpeg', 'dieWaschmaschine.mp3'),
(10, 1, 'Sofa', 'das Sofa', 'dasSofa.svg', 'dasSofa.mp3'),
(11, 1, 'lampu tegak', 'die Stehlampe', 'dieStehlampe.jpeg', 'dieStehlampe.mp3'),
(12, 1, 'rak buku', 'das Bücherregal', 'dasBucherregal.png', 'dasBucherregal.mp3'),
(13, 1, 'toilet', 'die Toilette', 'dieToilette.png', 'dieToilette.mp3'),
(14, 1, 'Lemari dapur', 'der Küchenschrank', 'derKuchenschrank.svg', 'derKuchenschrank.mp3'),
(15, 1, 'Kompor', 'der Herd', 'derHerd.png', 'derHerd.mp3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `benda_dalam_kelas`
--

CREATE TABLE `benda_dalam_kelas` (
  `id_benda_dalam_kelas` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `benda_dalam_kelas`
--

INSERT INTO `benda_dalam_kelas` (`id_benda_dalam_kelas`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'telepon genggam', 'das Handy', 'dasHandy.jpg', 'dasHandy.3gpp'),
(2, 1, 'kursi', 'der Stuhl', 'derStuhl.png', 'derStuhl.3gpp'),
(3, 1, 'papan tulis', 'die Tafel', 'dieTafel.svg', 'dieTafel.3gpp'),
(4, 1, 'papan tulis putih', 'das Whiteboard', 'dasWhiteboard.svg', 'dasWhiteboard.3gpp'),
(5, 1, 'pensil', 'der Bleistift', 'derBleistift.png', 'derBleistift.3gpp'),
(6, 1, 'Pena tinta', 'der Füller', 'derFuller.svg', 'derFuller.3gpp'),
(7, 1, 'komputer', 'der Computer', 'derComputer.png', 'derComputer.3gpp'),
(8, 1, 'majalah', 'das Magazin', 'dasMagazin.svg', 'dasMagazin.3gpp'),
(9, 1, 'pulpen', 'der Kuli', 'derKuli.jpg', 'derKuli.3gpp'),
(10, 1, 'buku', 'das Buch', 'dasBuch.svg', 'dasBuch.3gpp'),
(11, 1, 'kertas', 'das Papier', 'dasPapier.svg', 'dasPapier.3gpp'),
(12, 1, 'cangkir', 'der Becher', 'derBecher.png', 'derBecher.3gpp'),
(13, 1, 'penghapus', 'der Radiergummi', 'derRadiergummi.png', 'derRadiergummi.3gpp'),
(14, 1, 'kacamata', 'die Brille', 'dieBrille.png', 'dieBrille.3gpp'),
(15, 1, 'lampu', 'die Lampe', 'dieLampe.png', 'dieLampe.3gpp'),
(16, 1, 'poster pembelajaran', 'das Lernplakat', 'dasLernplakat.png', 'dasLernplakat.3gpp'),
(17, 1, 'peta', 'die Landkarte', 'dieLandkarte.jpg', 'dieLandkarte.mp4'),
(18, 1, 'tas', 'die Tasche', 'dieTasche.svg', 'dieTasche.3gpp'),
(19, 1, 'meja', 'der Tisch', 'derTisch.svg', 'derTisch.3gpp'),
(20, 1, 'Roti ', 'das Brötchen', 'dasBrotchen.png', 'dasBrotchen.3gpp'),
(21, 1, 'buku tulis ', 'das Heft', 'dasHeft.png', 'dasHeft.3gpp'),
(22, 1, 'kamus', 'das Wörterbuch', 'dasWorterbuch.svg', 'dasWorterbuch.mp4'),
(23, 1, 'CD', 'die CD', 'dieCD.jpeg', 'dieCD.3gpp'),
(24, 1, 'radio', 'das Radio ', 'dasRadio.jpeg', 'dasRadio.3gpp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca`
--

CREATE TABLE `cuaca` (
  `id_cuaca` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cuaca`
--

INSERT INTO `cuaca` (`id_cuaca`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'Matahari', 'die Sonne', 'dieSonne.png', 'dieSonne.mp4'),
(2, 1, 'Awan', 'die Wolken', 'dieWolken.png', 'dieWolken.mp4'),
(3, 1, 'angin', 'der Wind', 'derWind.png', 'derWind.mp4'),
(4, 1, 'hujan', 'der Regen', 'derRegen.png', 'derRegen.mp4'),
(5, 1, 'kabut', 'der Nebel', 'derNebel.png', 'derNebel.mp4'),
(6, 1, 'panas', 'die Hitze', 'dieHitze.svg', 'dieHitze.mp4'),
(7, 1, 'Dingin', 'die Kälte', 'dieKalte.png', 'dieKalte.mp4'),
(8, 1, 'salju', 'der Schnee', 'derSchnee.png', 'derSchnee.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `episode`
--

CREATE TABLE `episode` (
  `id_episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `episode`
--

INSERT INTO `episode` (`id_episode`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_back`
--

CREATE TABLE `feed_back` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `waktu` date NOT NULL,
  `pesan` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `feed_back`
--

INSERT INTO `feed_back` (`id`, `email`, `waktu`, `pesan`) VALUES
(1, 'ankami27@gmail.com', '0000-00-00', 'bagus sekali website anda'),
(2, 'ankami27@gmail.com', '0000-00-00', 'bagus sekali website anda'),
(3, 'ankami27@gmail.com', '0000-00-00', 'bagus sekali website anda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kata_kerja`
--

CREATE TABLE `kata_kerja` (
  `id_kata_kerja` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kata_kerja`
--

INSERT INTO `kata_kerja` (`id_kata_kerja`, `id_vocab`, `indo`, `jerman`, `url_voice`) VALUES
(1, 2, 'adalah', 'Sein', 'sein.mp3'),
(2, 2, 'datang', 'kommen', 'kommen.mp3'),
(3, 2, 'membaca', 'lesen', 'lesen.mp3'),
(4, 2, 'bekerja', 'arbeiten', 'arbeiten.mp3'),
(5, 2, 'berkendara', 'fahren', 'fahren.mp3'),
(6, 2, 'tidur', 'schlafen', 'schlafen.mp3'),
(7, 2, 'bernama', 'hei?en', 'haben.mp3'),
(8, 2, 'tinggal', 'wohnen', 'wohnen.mp3'),
(9, 2, 'mendengar', 'hören', 'horen.mp3'),
(10, 2, 'berbicara', 'sprechen', 'sprechen.mp3'),
(11, 2, 'makan', 'essen', 'essen.mp3'),
(12, 2, 'mengatakan', 'sagen', 'sagen.mp3'),
(13, 2, 'minum', 'trinken', 'trinken.mp3'),
(14, 2, 'membayar', 'bezahlen', 'bezahlen.mp3'),
(15, 2, 'menulis', 'schreiben', 'schreiben.mp3'),
(16, 2, 'berbaring', 'liegen', 'leigen.mp3'),
(17, 2, 'berdiri', 'stehen', 'stehen.mp3'),
(18, 2, 'belajar', 'lernen', 'lernen.mp3'),
(19, 2, 'mengambil', 'nehmen', 'nehmen.mp3'),
(20, 2, 'mengerti', 'verstehen', 'verstehen.mp3'),
(21, 2, 'memiliki', 'haben', 'haben.mp3'),
(22, 2, ' mengetahui', 'kennen', 'kennen.mp3'),
(23, 2, 'mengundang', 'laden', 'laden.mp3'),
(24, 2, 'menulis resep', 'Verschreibe ', 'verschreiben.mp3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kata_keterangan`
--

CREATE TABLE `kata_keterangan` (
  `id_kata_keterangan` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kata_keterangan`
--

INSERT INTO `kata_keterangan` (`id_kata_keterangan`, `id_vocab`, `indo`, `jerman`, `url_voice`) VALUES
(1, 4, 'disana', 'dort', 'dort.mp4'),
(2, 4, 'tidak pernah', 'nie', 'nie.mp4'),
(3, 4, 'sangat', 'sehr', 'sehr.mp4'),
(4, 4, 'kemarin', 'gestern', 'gestern.mp4'),
(5, 4, 'kemudian', 'nachher', 'nachher.mp4'),
(6, 4, 'Saat ini/hari ini ', 'heutige', 'heutig.mp4'),
(7, 4, 'suka', 'gern', 'gern.mp4'),
(8, 4, 'disini', 'hier', 'hier.mp4'),
(9, 4, 'sering', 'oft', 'oft.mp4'),
(10, 4, 'selalu', 'immer', 'immer.mp4'),
(11, 4, 'khususnya', 'besonders', 'besonders.mp4'),
(12, 4, 'mungkin', 'vielleicht', 'vielleicht.mp4'),
(13, 4, 'atas', 'oben', 'oben.mp4'),
(14, 4, 'jarang', 'selten', 'selten.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kata_sifat`
--

CREATE TABLE `kata_sifat` (
  `id_kata_sifat` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kata_sifat`
--

INSERT INTO `kata_sifat` (`id_kata_sifat`, `id_vocab`, `indo`, `jerman`, `url_voice`) VALUES
(1, 3, 'besar', 'gro?', 'gross.aac'),
(2, 3, 'terang', 'hell', 'hell.aac'),
(3, 3, 'mahal', 'teuer', 'teuer.aac'),
(4, 3, 'kecil', 'klein', 'klein.aac'),
(5, 3, 'panjang', 'lang', 'lang.aac'),
(6, 3, 'baru', 'neu', 'neu.aac'),
(7, 3, 'cantik', 'schön', 'schon.aac'),
(8, 3, 'pendek', 'kurz', 'kurz.aac'),
(9, 3, 'rusak', 'kaputt', 'kaputt.aac'),
(10, 3, 'jelek', 'hässlich', 'hasslich.aac'),
(11, 3, 'tenang', 'ruhig', 'ruhig.aac'),
(12, 3, 'Lama/tua', 'alt', 'alt.aac'),
(13, 3, 'gelap', 'dunkel', 'dunkel.aac'),
(14, 3, 'Berisik/keras', 'laut', 'laut.aac'),
(15, 3, 'Lambat/pelan', 'langsam', 'langsam.aac'),
(16, 3, 'murah', 'billig', 'billig.aac'),
(17, 3, 'Diam/lembut', 'leise', 'leise.aac'),
(18, 3, 'cepat', 'schnell', 'schnell.aac');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konjungsi`
--

CREATE TABLE `konjungsi` (
  `id_konjungsi` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konjungsi`
--

INSERT INTO `konjungsi` (`id_konjungsi`, `id_vocab`, `indo`, `jerman`, `url_voice`) VALUES
(1, 5, 'tetapi', 'aber', 'Aber.m4a'),
(2, 5, 'karena', 'denn', 'Denn.m4a'),
(3, 5, 'dan', 'und', 'Und.m4a'),
(4, 5, 'atau', 'oder', 'Oder.m4a'),
(5, 5, 'melainkan', 'sondern', 'Sondern.m4a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan_dan_minuman`
--

CREATE TABLE `makanan_dan_minuman` (
  `id_makanan_dan_minuman` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makanan_dan_minuman`
--

INSERT INTO `makanan_dan_minuman` (`id_makanan_dan_minuman`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'roti', 'das Brot', 'brot.jpg', ''),
(2, 1, 'Tomat', 'die Tomate', 'dieTomaten.png', ''),
(3, 1, 'Kue', 'die Kuchen', 'dieKuchen.png', ''),
(4, 1, 'Pisang', 'die Banane', 'bananen.svg', ''),
(5, 1, 'Paprika', 'die Paprika', 'paprika.svg', ''),
(6, 1, 'Daging', 'das Fleisch', 'fleisch.png', ''),
(7, 1, 'Sosis', 'die Wurst', 'wurst.svg', ''),
(8, 1, 'Cola', 'die Cola', 'dieCola.svg', ''),
(9, 1, 'Ayam', 'das Hähnchen', 'dasHahnchen.svg', ''),
(10, 1, 'mentega', 'die Butter', 'butter.svg', ''),
(11, 1, 'yoghurt', 'der Yoghurt', 'yoghurt.svg', ''),
(12, 1, 'coklat', 'die Schokolade', 'dieSchokolade.png', ''),
(13, 1, 'stoberi', 'die Erdbeere', 'erdberre.jpg', ''),
(14, 1, 'selada', 'der Salat', 'derSalat.png', ''),
(15, 1, 'saos', 'der Ketchup', 'ketchup.svg', ''),
(16, 1, 'spaghetti', 'die Spaghetti', 'spaghetti.svg', ''),
(17, 1, 'kopi', 'der Kaffee', 'derKaffee.png', ''),
(18, 1, 'telur-telur', 'die Eier', 'dieEier.svg', ''),
(19, 1, 'beras', 'der Reis', 'reis.svg', ''),
(20, 1, 'kentang', 'die Kartoffeln', 'dieKartoffeln.png', ''),
(21, 1, 'keju', 'der Käse', 'kase.svg', ''),
(22, 1, 'wortel', 'die Möhre', 'dieMohren.png', ''),
(23, 1, 'apel', 'der Apfel', 'apfel.svg', ''),
(24, 1, 'jeruk', 'die Orange', 'orangen.svg', ''),
(25, 1, 'kripik kentang ', 'die Chips', 'dieChips.png', ''),
(26, 1, 'susu', 'die Milch', 'dieMilch.svg', ''),
(27, 1, 'jus', 'der Saft', 'derSaft.png', ''),
(28, 1, 'ikan', 'der Fisch', 'derFisch.png', ''),
(29, 1, 'bayam', 'der Spinat', 'derSpinat.png', ''),
(30, 1, 'air', 'das Wasser', 'dasMineralWasser.svg', ''),
(31, 1, 'Capucino', 'der Cappucino', 'derCappuccino.png', ''),
(32, 1, 'bir', 'Bier', 'dasBier.png', ''),
(33, 1, 'anggur', 'der Wein', 'derWein.png', ''),
(34, 1, 'teh buah', 'der Obsttee', 'derObsttee.svg', ''),
(35, 1, 'terong', 'die Aubergine', 'dieAubergine.png', ''),
(36, 1, 'sup', 'die Suppe', 'dieSuppe.png', ''),
(37, 1, 'kentang goreng', 'die Pommes', 'diePommes.svg', ''),
(38, 1, 'ceri', 'die Kirsche', 'dieKirschen.png', ''),
(39, 1, 'teh', 'der Tee', 'derTee.png', ''),
(40, 1, 'Bawang', 'die Zwiebel', 'dieZwiebel.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `id_minuman` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `minuman`
--

INSERT INTO `minuman` (`id_minuman`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(21, 1, 'anggur putih ', 'der Weisswein', 'DerWeisswein.svg', 'derWeisswein.3gpp'),
(22, 1, 'jus apel bersoda', 'die Apfelsaftschorle', 'dieApfelsaftschorle.svg', 'dieApfelsaftschorle.3gpp'),
(23, 1, 'jus jeruk', 'der Orangensaft', 'derOrangensaft.png', 'derOrangensaft.3gpp'),
(24, 1, 'susu mokacino', 'der Latte Macchiato', 'derLatteMacchiato.png', 'derLatteMacchiato.3gpp'),
(25, 1, 'susu', 'die Milch', 'dieMilch.svg', 'dieMilch.mp4'),
(26, 1, 'es teh', 'der Eistee', 'derEistee.jpg', 'derEistee.3gpp'),
(27, 1, 'es kopi', 'der Eiskaffee', 'derEiskaffee.svg', 'derEiskaffee.3gpp'),
(28, 1, 'jus apel', 'der Apfelsaft', 'derApfelsaft.svg', 'derApfelsaft.mp4'),
(29, 1, 'kopi espresso', 'der Espresso', 'derEspresso.png', 'derEspresso.3gpp'),
(30, 1, 'jus', 'der Saft', 'derSaft.png', 'derSaft.mp4'),
(31, 1, 'kapucino', 'der Cappucino ', 'derCappuccino.png', 'derCappucino.3gpp'),
(32, 1, 'air mineral', 'das Mineral Wasser', 'dasMineralWasser.svg', 'dasMineralWasser.3gpp'),
(33, 1, 'bir', 'das Bier', 'dasBier.png', 'dasBier.3gpp'),
(34, 1, 'anggur', 'der Wein', 'derWein.png', 'derWein.3gpp'),
(35, 1, 'coklat', 'der Kakao', 'derKakao.png', 'derKakao.3gpp'),
(36, 1, 'cola', 'die Cola', 'dieCola.svg', 'dieCola.3gpp'),
(37, 1, 'kopi', 'der Kaffee', 'derKaffee.png', 'derKaffee.3gpp'),
(38, 1, 'teh buah', 'der Obsttee', 'derObsttee.svg', 'derObstee.3gpp'),
(39, 1, 'anggur merah', 'der Rotwein', 'derRotwein.png', 'derRotwein.3gpp'),
(40, 1, 'teh', 'der Tee', 'derTee.png', 'derTee.3gpp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id_negara` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`id_negara`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'Swiss', 'die Schweiz', 'dieSchweiz.png', 'dieSchweiz.mp4'),
(2, 1, 'Jerman', 'Deutschland', 'Deutsch.png', 'deutschland.mp4'),
(3, 1, 'Denmark', 'Dänemark', 'Danemark.png', 'danemark.mp4'),
(4, 1, 'Indonesia', 'Indonesien', 'indonesien.png', 'Indonesien.mp4'),
(5, 1, 'Amerika Serikat', 'die USA', 'dieUSA.png', 'dieUSA.mp4'),
(6, 1, 'Ceko', 'Tschechien', 'Tschrchien.png', 'Tschechien.mp4'),
(7, 1, 'Perancis', 'Frankreich', 'Frankreich.png', 'frankreich.mp4'),
(8, 1, 'Rusia', 'Russland', 'Russland.png', 'Rusland.mp4'),
(9, 1, 'Turki', 'die Türkei', 'dieTurkei.png', 'dieTurkei.mp4'),
(10, 1, 'Brasil', 'Brasilien', 'Brasilien.png', 'Brasilien.mp4'),
(11, 1, 'Polandia', 'Polen', 'Polen.png', 'Polen.mp4'),
(12, 1, 'Inggris', 'England', 'england.png', 'England.mp4'),
(13, 1, 'Bulgaria', 'Bulgarien', 'Bulgarien.png', 'Bulgarien.mp4'),
(14, 1, 'Italien', 'Italia', 'Italien.png', 'Italien.mp4'),
(15, 1, 'Yunani', 'Griechenland', 'Griechenlad.png', 'Griechenland.mp4'),
(16, 1, 'Slowakia', 'die Slowakei', 'dieSlowakei.png', 'dieSlowakei.mp4'),
(17, 1, 'iran', 'der Iran', 'derIran.png', 'der Iran.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'Tablet', 'die Tablette', 'dieTablette.png', 'dieTablette.mp3'),
(2, 1, 'salep olahraga', 'die Sportsalbe', 'dieSportsalbe.png', 'dieSportsalbe.mp3'),
(3, 1, 'Salep', 'die Salbe ', 'dieSalbe.png', 'dieSalbe.mp3'),
(4, 1, 'sirup batuk', 'der Hustensaft', 'derHustensaft.png', 'dieHurstensaft.mp3'),
(5, 1, 'permen pereda tenggorokan', 'die Halstablette', 'dieHalstablette.png', 'dieHalstablete.mp3'),
(6, 1, 'obat penenang', 'die Tranquillanzie', 'dieTranquillanzie.png', 'dieTranquillanzie.mp3'),
(7, 1, 'alkohol', 'der Alkohol', 'derAlkohol.svg', 'derAlkohol.mp3'),
(8, 1, 'Tanaman herbal', 'die Heilpflanze', 'dieHeilpflanze.svg', 'dieHeilsplätze.mp3'),
(9, 1, 'vitamin', 'das Vitamin', 'dasVitamint.png', 'dasVitamin.mp3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian`
--

CREATE TABLE `pakaian` (
  `id_pakaian` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakaian`
--

INSERT INTO `pakaian` (`id_pakaian`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'Celana', 'die Hose', 'hose.png', ''),
(2, 1, 'Rok', 'der Rock', 'rok.jpg', ''),
(3, 1, 'kemeja pria', 'das Hemd', 'hemd.png', ''),
(4, 1, 'Sepatu', 'die Schuhe', 'shuhe.png', ''),
(5, 1, 'Kaos', 'das T-Shirt', 'dasTShirt.jpg', ''),
(6, 1, 'celana jeans', 'die Jeans', 'jeans.png', ''),
(7, 1, 'Kaos/baju atasan tanpa lengan', 'das Top', 'derTop.png', ''),
(8, 1, 'dasi', 'die Krawatte', 'krawatte.png', ''),
(9, 1, 'sarung tangan', 'der Handschuh', 'handschuhe.png', ''),
(10, 1, 'Setelan jas', 'der Anzug', 'anzug.png', ''),
(11, 1, 'Baju hangat', 'der Pullover', 'pullover.jpg', ''),
(12, 1, 'sepatu bot', 'der Stiefel', 'stiefel.png', ''),
(13, 1, 'mantel', 'der Mantel', 'dasMantel.png', ''),
(14, 1, 'kerudung', 'der Kopftuch', 'derKopftuch.png', ''),
(15, 1, 'jaket', 'die Jacke', 'dieJacke.jpg', ''),
(16, 1, 'blus', 'die Bluse', 'bluse.png', ''),
(17, 1, 'gaun', 'das Kleid', 'kleid.png', ''),
(18, 1, 'Topi kupluk', 'die Mütze', 'mutze.png', ''),
(19, 1, 'Topi fedora', 'der Hut', 'hut.png', ''),
(20, 1, 'syal', 'der Schal', 'schal.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemandangan`
--

CREATE TABLE `pemandangan` (
  `id_pemandangan` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemandangan`
--

INSERT INTO `pemandangan` (`id_pemandangan`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'kantor kanselir', 'das Bundeskanzleramt', 'dasBundeskanzleramt.png', 'DasBundeskanzleramt.m4a'),
(2, 1, 'katedral Berlin', 'der Berliner Dom', 'derBerlinerDom.png', 'DerBerlinerDom.m4a'),
(3, 1, 'Alun-alun kota Postdam', 'der Postdamer Platz', 'derPotzdamerPlatz.jpg', 'DerPostdamerplatz.m4a'),
(4, 1, 'bus lini 100', 'der Bus Linie 100', 'desBusLinie100.jpg', 'DerBusLinie 100.m4a'),
(5, 1, 'Hutan', 'der Wald', 'derWald.png', 'Der Wald.m4a'),
(6, 1, 'gedung parlemen ', 'der Reichstag', 'reichstag.png', 'DerReichstag.m4a'),
(7, 1, 'menara televisi', 'der Fernsehturm', 'derFehrsehturm.svg', 'DerFernsehturm.m4a'),
(8, 1, 'pasar loak', 'der Flohmarkt', 'derFlohmarkt.jpg', 'DerFlohmarkt.m4a'),
(9, 1, 'universitas Humboldt', 'die Humboldt-Universität', 'dieHumboldtUniversitat.jpg', 'DieHumboldt-Universität.m4a'),
(10, 1, 'galeri nasional lama', 'die Alte Nationalgalerie', 'dieAlteNationalgalerie.jpg', 'DieAlteNationalgalerie.m4a'),
(11, 1, 'sony center', ' das Sony Center', 'dasSonyCenter.jpg', 'DasSonyCenter.m4a'),
(12, 1, 'Gedung budaya dunia', 'das Haus der Kulturen der Welt', 'dasHausDerKulturenDerWelt.jpg', 'DasHausDerKulturenDerWelt.m4a'),
(13, 1, 'Laut Baltik', 'die Ostsee', 'dieOstsee.jpg', 'DieOstsee.m4a'),
(14, 1, 'istana Bellevue', 'das Schloss Bellevue', 'dasSchlossBellevue.jpg', 'DasSchlossBellevue.m4a'),
(15, 1, 'opera negara', 'die Staatsoper', 'dieStaatsoper.jpg', 'DieStaatsoper.m4a'),
(16, 1, 'Lapangan Alexander', 'der Alexanderplatz', 'derAlexanderplatz.jpg', 'DerAlexanderplatz.m4a'),
(17, 1, 'akropolis', 'die Akropolis', 'dieAkropolis.svg', 'DieAkropolis.m4a'),
(18, 1, 'gerbang Brandenburg', 'das Brandenburger Tor', 'dasBrandenburgerTor.png', 'DasBrandenburgerTor.m4a'),
(19, 1, 'menara Pisa', 'der Schiefe Turm', 'derSchiefeTurm.svg', 'DerSchiefeTurm.m4a'),
(20, 1, 'Pasar/pekan', 'der Markplatz', 'derMarkplatz.png', 'DerMarktplatz.m4a'),
(21, 1, 'taman', 'der Park', 'derPark.png', 'DerPark.m4a'),
(22, 1, 'kota', 'die Stadt', 'dieStadt.png', 'DieStadt.m4a'),
(23, 1, 'museum', 'das Museum', 'dasMuseum.png', 'DasMuseum.m4a'),
(24, 1, 'Nama taman hiburan di kota Wina', 'der Prater', 'derPrater.jpg', 'DerPrater.m4a'),
(25, 1, 'teater', 'das Theater', 'dasTheater.png', 'DasTheater.m4a'),
(26, 1, 'lapangan merah di Moskau', 'der Rote Platz in Moskau', 'derRotePlatz.jpg', 'DerRotePlatzInMoskau.m4a'),
(27, 1, 'katedral Köln', 'der Kölner Dom', 'derKolnerlDom.svg', 'DerKolnerDom.m4a'),
(28, 1, 'opera', 'die Oper', 'dieOper.png', 'DieOper..m4a'),
(29, 1, 'restoran Desa', 'das Dorf Restaurant', 'dasDorfRestaurant.png', 'DasDorfRestaurant.m4a'),
(30, 1, 'menara Eiffel', 'der Eiffelturm', 'derEiffelturm.png', 'DerEiffelturm.m4a'),
(31, 1, 'menara jam Big Ben', 'der Big Ben', 'derBigBen.png', 'DerBigBen.m4a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'gips kaki', 'das Gipsbein', 'dasGipsbein.png', 'dasGibsbein.mp4'),
(2, 1, 'flu/pilek', 'der Schnupfen', 'derSchnupfen.svg', 'derSchnupfen.mp4'),
(3, 1, 'radang paru-paru', 'die Lungesentzündung', 'dieLungenentzundung.png', 'dieLungenentzundung.mp4'),
(4, 1, 'Lambung', 'der Magen', 'derMagen.png', 'derMagen.mp4'),
(5, 1, 'demam', 'das Fieber', 'dasFieber.png', 'dasFieber.mp4'),
(6, 1, 'batuk', 'der Husten', 'derHusten.png', 'derHusten.mp4'),
(7, 1, 'sakit perut', 'die Bauchschmerzen', 'dieBauchschmerzen.png', 'dieBauchschmerzen.mp4'),
(8, 1, 'selesma', 'die Erkältung', 'dieErkaltung.png', 'dieErkaltung.mp4'),
(9, 1, 'sakit leher', 'die Halsschmerzen', 'dieHalsschmerzen.png', 'dieHalsschmerzen.mp4'),
(10, 1, 'sakit kepala', 'die Kopfschmerzen', 'dieKopfschmerzen.png', 'dieKopfschmerzen.mp4'),
(11, 1, 'maag', 'die Magenschmerzen', 'dieMagenschmerzen.png', 'dieMagenschmerzen.mp4'),
(12, 1, 'radang tenggorokan', 'die Halsentzündung', 'dieHalsentzundung.png', 'dieHalsentzundung.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `preporsisi`
--

CREATE TABLE `preporsisi` (
  `id_preporsisi` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_voice` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `preporsisi`
--

INSERT INTO `preporsisi` (`id_preporsisi`, `id_vocab`, `indo`, `jerman`, `url_voice`) VALUES
(1, 6, 'antara', 'zwischen', 'zwischen.mp4'),
(2, 6, '(di) belakang', 'hinter', 'hinter.mp4'),
(3, 6, '(di) atas', 'auf', 'auf.mp4'),
(4, 6, '(di) depan', 'vor', 'vor.mp4'),
(5, 6, '(di) bawah', 'unter', 'unter.mp4'),
(6, 6, '(di) atas', 'über', 'uber.mp4'),
(7, 6, '(di) dalam', 'in', 'in.mp4'),
(8, 6, 'melalui', 'durch', 'durch.mp4'),
(9, 6, '(di) sebelah', 'neben', 'neben.mp4'),
(10, 6, 'sepanjang', 'entlang', 'entlang.mp4'),
(11, 6, 'pada', 'an', 'an.mp4'),
(12, 6, 'ke/untuk', 'zu', 'zu.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profesi`
--

CREATE TABLE `profesi` (
  `id_profesi` int(11) NOT NULL,
  `id_vocab` int(11) NOT NULL,
  `indo` varchar(64) NOT NULL,
  `jerman` varchar(64) NOT NULL,
  `url_gambar` varchar(128) NOT NULL,
  `url_voice` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profesi`
--

INSERT INTO `profesi` (`id_profesi`, `id_vocab`, `indo`, `jerman`, `url_gambar`, `url_voice`) VALUES
(1, 1, 'insinyur', 'die Ingeniur', 'dieIngeniur.png', 'derIngenieur.mp3'),
(2, 1, 'koki', 'der Koch', 'derKoch.png', 'derKoch.mp3'),
(3, 1, 'Guru perempuan', 'die Lehrerin', 'dieLehrerin.png', 'dieLehrerin.mp3'),
(4, 1, 'Penjual perempuan', 'die Verkäuferin', 'dieVerkauferin.svg', 'dieVerkäuferin.mp3'),
(5, 1, 'penata rambut perempuan', 'die Friseurin', 'dieFriseurin.png', 'dieFriseurin.mp3'),
(6, 1, 'Perawat perempuan', 'die Krankenschwester', 'dieKrankenschwester.png', 'dieKrankenschwester.mp3'),
(7, 1, 'Programmer', 'der Programmierer', 'derProgrammierer.png', 'derProgrammierer.mp3'),
(8, 1, 'Pramusaji', 'der Kellner', 'derKellner.png', 'derKellner.mp3'),
(9, 1, 'Animator', 'der Animateur', 'derAnimateur.png', 'derAnimateur.mp3'),
(10, 1, 'Penjahit', 'der Schneider', 'derSchneider.png', 'derSchneider.mp3'),
(11, 1, 'Sekretaris', 'die Sekretärin', 'dieSekretarin.png', 'dieSekretärin.mp3'),
(12, 1, 'supir taksi', 'der Taxifahrer', 'derTaxifahrer.png', 'derTaxifahrer.mp3'),
(13, 1, 'ibu rumah tangga', 'die Hausfrau', 'dieHausfrau.svg', 'dieHausfau.mp3'),
(14, 1, 'penjual bunga', 'der Florist', 'derFlorist.png', 'derFlorist.mp3'),
(15, 1, 'Dokter', 'der Arzt', 'derArzt.png', 'derArzt.mp3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `season`
--

CREATE TABLE `season` (
  `id_season` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `season`
--

INSERT INTO `season` (`id_season`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_soal`
--

CREATE TABLE `type_soal` (
  `type_soal` int(11) NOT NULL,
  `type` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type_soal`
--

INSERT INTO `type_soal` (`type_soal`, `type`) VALUES
(1, 's11'),
(2, 's12'),
(3, 's13'),
(4, 's21'),
(5, 's22'),
(6, 's23'),
(7, 's31'),
(8, 's32'),
(9, 's33'),
(10, 's41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `foto_profil` varchar(64) NOT NULL,
  `jam_belajar` int(24) NOT NULL,
  `hari_belajar` int(7) NOT NULL,
  `password` varchar(256) NOT NULL,
  `koin` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`uid`, `nama_lengkap`, `username`, `email`, `foto_profil`, `jam_belajar`, `hari_belajar`, `password`, `koin`) VALUES
(5, 'djodly ichsan ankami', 'ankami27', 'ankami27@gmail.com', 'null', 2, 123, 'kukakuka', 0),
(6, 'orang ke dua', 'dua22', 'dua22@gmail.com', 'null', 12, 1234567, 'sudah di ubah', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vocab`
--

CREATE TABLE `vocab` (
  `id_vocab` int(11) NOT NULL,
  `kategori_vocab` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vocab`
--

INSERT INTO `vocab` (`id_vocab`, `kategori_vocab`, `alias`) VALUES
(1, 'kata_benda', 'noun'),
(2, 'kata_kerja', 'verb'),
(3, 'kata_sifat', 'adjective'),
(4, 'kata_keterangan', 'adverb'),
(5, 'konjungsi', 'conjunction'),
(6, 'preporsisi', 'preporsition');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bagian_tubuh`
--
ALTER TABLE `bagian_tubuh`
  ADD PRIMARY KEY (`id_bagian_tubuh`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_season` (`season`),
  ADD KEY `id_episode` (`episode`),
  ADD KEY `type_soal` (`type_soal`);

--
-- Indeks untuk tabel `barang_dikantor`
--
ALTER TABLE `barang_dikantor`
  ADD PRIMARY KEY (`id_barang_dikantor`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `barang_dirumah`
--
ALTER TABLE `barang_dirumah`
  ADD PRIMARY KEY (`id_barang_dirumah`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `benda_dalam_kelas`
--
ALTER TABLE `benda_dalam_kelas`
  ADD PRIMARY KEY (`id_benda_dalam_kelas`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  ADD PRIMARY KEY (`id_cuaca`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id_episode`);

--
-- Indeks untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kata_kerja`
--
ALTER TABLE `kata_kerja`
  ADD PRIMARY KEY (`id_kata_kerja`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `kata_keterangan`
--
ALTER TABLE `kata_keterangan`
  ADD PRIMARY KEY (`id_kata_keterangan`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `kata_sifat`
--
ALTER TABLE `kata_sifat`
  ADD PRIMARY KEY (`id_kata_sifat`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `konjungsi`
--
ALTER TABLE `konjungsi`
  ADD PRIMARY KEY (`id_konjungsi`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `makanan_dan_minuman`
--
ALTER TABLE `makanan_dan_minuman`
  ADD PRIMARY KEY (`id_makanan_dan_minuman`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`id_pakaian`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `pemandangan`
--
ALTER TABLE `pemandangan`
  ADD PRIMARY KEY (`id_pemandangan`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `preporsisi`
--
ALTER TABLE `preporsisi`
  ADD PRIMARY KEY (`id_preporsisi`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`id_profesi`),
  ADD KEY `id_vocab` (`id_vocab`);

--
-- Indeks untuk tabel `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id_season`);

--
-- Indeks untuk tabel `type_soal`
--
ALTER TABLE `type_soal`
  ADD PRIMARY KEY (`type_soal`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indeks untuk tabel `vocab`
--
ALTER TABLE `vocab`
  ADD PRIMARY KEY (`id_vocab`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bagian_tubuh`
--
ALTER TABLE `bagian_tubuh`
  MODIFY `id_bagian_tubuh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `bank_soal`
--
ALTER TABLE `bank_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `barang_dikantor`
--
ALTER TABLE `barang_dikantor`
  MODIFY `id_barang_dikantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `barang_dirumah`
--
ALTER TABLE `barang_dirumah`
  MODIFY `id_barang_dirumah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `benda_dalam_kelas`
--
ALTER TABLE `benda_dalam_kelas`
  MODIFY `id_benda_dalam_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  MODIFY `id_cuaca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `episode`
--
ALTER TABLE `episode`
  MODIFY `id_episode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kata_kerja`
--
ALTER TABLE `kata_kerja`
  MODIFY `id_kata_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kata_keterangan`
--
ALTER TABLE `kata_keterangan`
  MODIFY `id_kata_keterangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kata_sifat`
--
ALTER TABLE `kata_sifat`
  MODIFY `id_kata_sifat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `konjungsi`
--
ALTER TABLE `konjungsi`
  MODIFY `id_konjungsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `makanan_dan_minuman`
--
ALTER TABLE `makanan_dan_minuman`
  MODIFY `id_makanan_dan_minuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `minuman`
--
ALTER TABLE `minuman`
  MODIFY `id_minuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `negara`
--
ALTER TABLE `negara`
  MODIFY `id_negara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `id_pakaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pemandangan`
--
ALTER TABLE `pemandangan`
  MODIFY `id_pemandangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `preporsisi`
--
ALTER TABLE `preporsisi`
  MODIFY `id_preporsisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `profesi`
--
ALTER TABLE `profesi`
  MODIFY `id_profesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `season`
--
ALTER TABLE `season`
  MODIFY `id_season` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `type_soal`
--
ALTER TABLE `type_soal`
  MODIFY `type_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `vocab`
--
ALTER TABLE `vocab`
  MODIFY `id_vocab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bagian_tubuh`
--
ALTER TABLE `bagian_tubuh`
  ADD CONSTRAINT `bagian_tubuh_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD CONSTRAINT `bank_soal_ibfk_1` FOREIGN KEY (`episode`) REFERENCES `episode` (`id_episode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ibfk_3` FOREIGN KEY (`season`) REFERENCES `season` (`id_season`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ibfk_4` FOREIGN KEY (`type_soal`) REFERENCES `type_soal` (`type_soal`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_dikantor`
--
ALTER TABLE `barang_dikantor`
  ADD CONSTRAINT `barang_dikantor_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_dirumah`
--
ALTER TABLE `barang_dirumah`
  ADD CONSTRAINT `barang_dirumah_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `benda_dalam_kelas`
--
ALTER TABLE `benda_dalam_kelas`
  ADD CONSTRAINT `benda_dalam_kelas_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  ADD CONSTRAINT `cuaca_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kata_kerja`
--
ALTER TABLE `kata_kerja`
  ADD CONSTRAINT `kata_kerja_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kata_keterangan`
--
ALTER TABLE `kata_keterangan`
  ADD CONSTRAINT `kata_keterangan_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kata_sifat`
--
ALTER TABLE `kata_sifat`
  ADD CONSTRAINT `kata_sifat_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konjungsi`
--
ALTER TABLE `konjungsi`
  ADD CONSTRAINT `konjungsi_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `makanan_dan_minuman`
--
ALTER TABLE `makanan_dan_minuman`
  ADD CONSTRAINT `makanan_dan_minuman_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD CONSTRAINT `minuman_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD CONSTRAINT `negara_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD CONSTRAINT `pakaian_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemandangan`
--
ALTER TABLE `pemandangan`
  ADD CONSTRAINT `pemandangan_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD CONSTRAINT `penyakit_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `preporsisi`
--
ALTER TABLE `preporsisi`
  ADD CONSTRAINT `preporsisi_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profesi`
--
ALTER TABLE `profesi`
  ADD CONSTRAINT `profesi_ibfk_1` FOREIGN KEY (`id_vocab`) REFERENCES `vocab` (`id_vocab`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
