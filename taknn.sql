-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 10, 2016 at 03:06 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `taknn`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `excerpt` text NOT NULL,
  `category` smallint(6) NOT NULL,
  `featured` smallint(1) NOT NULL DEFAULT '0',
  `publish_date` date NOT NULL,
  `publish` smallint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `excerpt`, `category`, `featured`, `publish_date`, `publish`) VALUES
(1, 'testing blog', '<p>\r\n  test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test content</p>\r\n', '', '<p>\r\n test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test</p>\r\n', 2, 1, '2016-03-01', 1),
(2, 'gunung', '<p>\r\n  test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test content</p>\r\n', '88172-image1.jpg', '<p>\r\n Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\r\n', 2, 1, '2016-03-01', 1),
(3, 'blog 2', '<p>\r\n  test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test content</p>\r\n', '8ff95-image9.jpg', '<p>\r\n Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\r\n', 1, 1, '2016-03-01', 1),
(4, 'test blog 3', '<p>\r\n test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test content</p>\r\n', '63473-image12.jpg', '<p>\r\n  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\r\n', 1, 1, '2016-03-01', 1),
(5, 'test blog 5', '<p>\r\n test content test content test content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test contenttest content test content</p>\r\n', '437d6-image3.jpg', '<p>\r\n Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\r\n', 2, 0, '2016-03-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Pantai', ''),
(2, 'Gunung', '');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `title`, `lat`, `long`) VALUES
(1, 'Taman Nasional Bromo Tengger Semeru', '-8.0218694', '112.9502497'),
(2, 'Taman Nasional Meru Betiri', '-8.2228539', '113.4668054');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(1) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `logo`, `contact_detail`, `about`) VALUES
(1, '85b19-logo.png', '<p>\r\n    <span class="fa-phone">Telephone:</span>(212)888-77-88\r\n    <br>\r\n    <span class="fa-envelope">Email:</span>\r\n    <a href="mailto:info@joomla51.com">info@joomla51.com</a>\r\n    <br>\r\n    <span class="fa-link">Website:</span>\r\n    <a href="http://www.joomla51.com">www.joomla51.com</a>\r\n</p>', '<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit\r\n                                    augue duis dolore te feugait nulla facilisi.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` smallint(2) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `choice1` text NOT NULL,
  `choice2` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `choice1`, `choice2`) VALUES
(1, 'Pernyataan 1', 'Spontan, Fleksibel, tidak diikat waktu', 'Terencana dan memiliki deadline jelas'),
(2, 'Pernyataan 2', 'Lebih memilih berkomunikasi dengan menulis', 'Lebih memilih berkomunikasi dengan bicara\r\n'),
(3, 'Pernyataan 3', 'Tidak menyukai hal-hal yang bersifat mendadak dan di luar perencanaan', 'Perubahan mendadak tidak jadi masalah'),
(4, 'Pernyataan 4', 'Obyektif', 'Subyektif'),
(5, 'Pernyataan 5', 'Menemukan dan mengembangkan ide dengan mendiskusikannya', 'Menemukan dan mengembangkan ide dengan merenungkan'),
(6, 'Pernyataan 6', 'Bergerak dari gambaran umum baru ke detail', 'Bergerak dari detail ke gambaran umum sebagai kesimpulan akhir'),
(7, 'Pernyataan 7', 'Berorientasi pada dunia eksternal (kegiatan, orang)', 'Berorientasi pada dunia internal (memori, pemikiran, ide)'),
(8, 'Pernyataan 8', 'Berbicara mengenai masalah yang dihadapi hari ini dan langkah-langkah praktis mengatasinya', 'Berbicara mengenai visi masa depan dan konsep-konsep mengenai visi tersebut'),
(9, 'Pernyataan 9', 'Diyakinkan dengan penjelasan yang menyentuh perasaan', 'Diyakinkan dengan penjelasan yang masuk akal'),
(10, 'Pernyataan 10', 'Fokus pada sedikit hobi namun mendalam', 'Fokus pada banyak hobi secara luas dan umum'),
(11, 'Pernyataan 11', 'Tertutup dan mandiri', 'Sosial dan ekspresif'),
(12, 'Pernyataan 12', 'Aturan, jadwal dan target sangat mengikat dan membebani', 'Aturan, jadwal dan target akan sangat membantu dan memperjelas tindakan'),
(13, 'Pernyataan 13', 'Menggunakan pengalaman sebagai pedoman', 'Menggunakan imajinasi dan perenungan sebagai pedoman'),
(14, 'Pernyataan 14', 'Berorientasi tugas dan job description', 'Berorientasi pada manusia dan hubungan'),
(15, 'Pernyataan 15', 'Pertemuan dengan orang lain dan aktivitas sosial melelahkan', 'Bertemu orang dan aktivitas sosial membuat bersemangat'),
(16, 'Pernyataan 16', 'SOP sangat membantu', 'SOP sangat membosankan'),
(17, 'Pernyataan 17', 'Mengambil keputusan berdasar logika dan aturan main', 'Mengambil keputusan berdasar perasaan pribadi dan kondisi orang lain'),
(18, 'Pernyataan 18', 'Bebas dan dinamis', 'Prosedural dan tradisional'),
(19, 'Pernyataan 19', 'Berorientasi pada hasil', 'Berorientasi pada proses'),
(20, 'Pernyataan 20', 'Beraktifitas sendirian di rumah menyenangkan', 'Beraktifitas sendirian di rumah membosankan'),
(21, 'Pernyataan 21', 'Membiarkan orang lain bertindak bebas asalkan tujuan tercapai', 'Mengatur orang lain dengan tata tertib agar tujuan tercapai'),
(22, 'Pernyataan 22', 'Memilih ide inspiratif lebih penting daripada fakta', 'Memilih fakta lebih penting daripada ide inspiratif'),
(23, 'Pernyataan 23', 'Mengemukakan tujuan dan sasaran lebih dahulu', 'Mengemukakan kesepakatan terlebih dahulu'),
(24, 'Pernyataan 24', 'Fokus pada target dan mengabaikan hal-hal baru', 'Memperhatikan hal-hal baru dan siap menyesuaikan diri serta mengubah target'),
(25, 'Pernyataan 25', 'Kontinuitas dan stabilitas lebih diutamakan', 'Perubahan dan variasi lebih diutamakan'),
(26, 'Pernyataan 26', 'Pendirian masih bisa berubah tergantung situasi nantinya', 'Berpegang teguh pada pendirian'),
(27, 'Pernyataan 27', 'Bertindak step by step dengan timeframe yang jelas', 'Bertindak dengan semangat tanpa menggunakan timeframe'),
(28, 'Pernyataan 28', 'Berinisiatif tinggi hampir dalam berbagai hal meskipun tidak berhubungan dengan dirinya', 'Berinisiatif bila situasi memaksa atau berhubungan dengan kepentingan sendiri'),
(29, 'Pernyataan 29', 'Lebih memilih tempat yang tenang dan pribadi untuk berkonsentrasi', 'Lebih memilih tempat yang ramai dan banyak interaksi / aktifitas'),
(30, 'Pernyataan 30', 'Menganalisa', 'Berempati'),
(31, 'Pernyataan 31', 'Berpikir secara matang sebelum bertindak', 'Berani bertindak tanpa terlalu lama berfikir'),
(32, 'Pernyataan 32', 'Menghargai seseorang karena sifat dan perilakunya', 'Menghargai seseorang karena skill dan faktor teknis'),
(33, 'Pernyataan 33', 'Merasa nyaman bila situasi tetap terbuka terhadap pilihan-pilihan lain', 'Merasa tenang bila semua sudah diputuskan'),
(34, 'Pernyataan 34', 'Menarik kesimpulan dengan lama dan hati-hati', 'Menarik kesimpulan dengan cepat sesuai naluri'),
(35, 'Pernyataan 35', 'Mengekspresikan semangat', 'Menyimpan semangat dalam hati'),
(36, 'Pernyataan 36', 'Mengklarifikasi ide dan teori sebelum dipraktekkan', 'Memahami ide dan teori saat mempraktekkannya langsung'),
(37, 'Pernyataan 37', 'Melibatkan perasaan itu tidak profesional', 'Terlalu kaku pada peraturan dan pekerjaan itu kejam'),
(38, 'Pernyataan 38', 'Mencari kesempatan untuk berkomunikasi secara perorangan', 'Memilih berkomunikasi pada sekelompok orang'),
(39, 'Pernyataan 39', 'Yang penting situasi harmonis terjaga', 'Yang penting tujuan tercapai'),
(40, 'Pernyataan 40', 'Ketidakpastian itu seru, menegangkan dan membuat hati lebih senang', 'Ketidakpastian membuat bingung dan meresahkan'),
(41, 'Pernyataan 41', 'Berfokus pada masa kini (apa yang bisa diperbaiki sekarang)', 'Berfokus pada masa depan (apa yang mungkin dicapai di masa depan)'),
(42, 'Pernyataan 42', 'Mempertanyakan', 'Mengakomodasi'),
(43, 'Pernyataan 43', 'Secara konsisten mengamati dan mengingat detail', 'Mengamati dan mengingat detail hanya bila berhubungan dengan pola'),
(44, 'Pernyataan 44', 'Situasi last minute membuat bersemangat dan memunculkan potensi', 'Situasi last minute sangat menyiksa, membuat stress dan merupakan kesalahan'),
(45, 'Pernyataan 45', 'Lebih suka komunikasi tidak langsung (telp, surat, e-mail)', 'Lebih suka komunikasi langsung (tatap muka)'),
(46, 'Pernyataan 46', 'Praktis', 'Konseptual'),
(47, 'Pernyataan 47', 'Perubahan adalah musuh', 'Perubahan adalah semangat hidup'),
(48, 'Pernyataan 48', 'Sering dianggap keras kepala', 'Sering dianggap terlalu memihak'),
(49, 'Pernyataan 49', 'Bersemangat saat menolong orang keluar dari kesalahan dan meluruskan', 'Bersemangat saat mengkritik dan menemukan kesalahan'),
(50, 'Pernyataan 50', 'Bertindak sesuai situasi dan kondisi yang terjadi saat itu', 'Bertindak sesuai apa yang sudah direncanakan'),
(51, 'Pernyataan 51', 'Menggunakan keterampilan yang sudah dikuasai', 'Menyukai tantangan untuk menguasai keterampilan baru'),
(52, 'Pernyataan 52', 'Membangun ide pada saat berbicara', 'Membangun ide dengan matang baru membicarakannya'),
(53, 'Pernyataan 53', 'Memilih cara yang sudah ada dan sudah terbukti', 'Memilih cara yang unik dan belum dipraktekkan orang lain'),
(54, 'Pernyataan 54', 'Hidup harus sudah diatur dari awal', 'Hidup seharusnya mengalir sesuai kondisi'),
(55, 'Pernyataan 55', 'Standar harus ditegakkan di atas segalanya (itu menunjukkan kehormatan dan harga diri)', 'Perasaan manusia lebih penting dari sekadar standar (yang adalah benda mati)'),
(56, 'Pernyataan 56', 'Daftar dan checklist adalah panduan penting', 'Daftar dan checklist adalah tugas dan beban'),
(57, 'Pernyataan 57', 'Menuntut perlakuan yang adil dan sama pada semua orang', 'Menuntut perlakuan khusus sesuai karakteristik masing-masing orang'),
(58, 'Pernyataan 58', 'Mementingkan sebab-akibat', 'Mementingkan nilai-nilai personal'),
(59, 'Pernyataan 59', 'Puas ketika mampu beradaptasi dengan momentum yang terjadi', 'Puas ketika mampu menjalankan semuanya sesuai rencana'),
(60, 'Pernyataan 60', 'Spontan, Easy Going, fleksibel', 'Berhati-hati, penuh pertimbangan, kaku');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` smallint(6) NOT NULL,
  `recommendation` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `recommendation`) VALUES
(1, 'wisata alam'),
(2, 'gunung'),
(3, 'pantai'),
(4, 'air terjun'),
(5, 'danau'),
(6, 'kaldera'),
(7, 'wisata apa saja'),
(8, 'wisata kuliner'),
(9, 'wisata belanja'),
(10, 'wisata religi'),
(11, 'sawah'),
(12, 'bukit'),
(13, 'wisata keluarga'),
(14, 'wisata bahari'),
(15, 'wahana pemandian air panas'),
(16, 'bali'),
(17, 'wisata seni & budaya');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `survei` smallint(6) NOT NULL,
  `recommendation` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `survei`, `recommendation`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 1),
(8, 4, 7),
(9, 5, 3),
(10, 5, 4),
(11, 5, 2),
(12, 5, 8),
(13, 7, 1),
(14, 7, 9),
(15, 7, 10),
(16, 8, 2),
(17, 8, 11),
(18, 8, 12),
(19, 9, 3),
(20, 9, 2),
(21, 10, 13),
(22, 11, 14),
(23, 11, 8),
(24, 12, 15),
(25, 12, 2),
(26, 12, 3),
(27, 12, 9),
(28, 13, 3),
(29, 13, 2),
(30, 13, 8),
(31, 14, 16),
(32, 15, 2),
(33, 15, 3),
(34, 16, 10),
(35, 17, 7),
(36, 18, 1),
(37, 18, 14),
(38, 18, 17),
(39, 19, 3),
(40, 21, 15),
(41, 21, 2),
(42, 21, 3),
(43, 21, 9),
(44, 22, 2),
(45, 22, 11),
(46, 22, 12);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` smallint(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image_url` text NOT NULL,
  `description` text NOT NULL,
  `active` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `image_url`, `description`, `active`) VALUES
(3, 'slide 1', 'b2e8a-slide2.jpg', '', 0),
(4, 'slide 2', '99397-slide1.jpg', '', 1),
(5, 'slide 3', '75895-slide3.jpg', '', 1),
(6, 'slide 4', '6fab8-slide4.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `survei`
--

CREATE TABLE `survei` (
  `id` smallint(6) NOT NULL,
  `date` datetime NOT NULL,
  `user` smallint(6) NOT NULL,
  `I` smallint(3) NOT NULL,
  `S` smallint(3) NOT NULL,
  `T` smallint(3) NOT NULL,
  `J` smallint(3) NOT NULL,
  `E` smallint(3) NOT NULL,
  `N` smallint(3) NOT NULL,
  `F` smallint(3) NOT NULL,
  `P` smallint(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survei`
--

INSERT INTO `survei` (`id`, `date`, `user`, `I`, `S`, `T`, `J`, `E`, `N`, `F`, `P`) VALUES
(1, '2016-05-03 12:13:56', 4, 60, 60, 53, 33, 40, 40, 47, 67),
(2, '2016-05-03 12:19:59', 5, 33, 73, 53, 60, 67, 27, 40, 40),
(3, '2016-05-03 12:28:43', 6, 33, 60, 67, 53, 67, 40, 33, 47),
(4, '2016-05-03 12:35:52', 7, 20, 73, 27, 13, 80, 27, 67, 87),
(5, '2016-05-03 12:44:04', 8, 40, 67, 67, 73, 60, 33, 33, 27),
(7, '2016-05-03 12:48:14', 9, 47, 47, 47, 53, 53, 53, 53, 47),
(8, '2016-05-03 12:51:17', 10, 53, 33, 47, 20, 47, 67, 53, 80),
(9, '2016-05-03 12:53:44', 11, 60, 60, 67, 60, 40, 40, 27, 40),
(10, '2016-05-03 12:57:06', 12, 33, 60, 53, 53, 67, 40, 40, 47),
(11, '2016-05-03 13:00:25', 13, 80, 80, 40, 87, 20, 20, 67, 13),
(12, '2016-05-03 13:03:31', 14, 40, 33, 40, 13, 60, 67, 67, 87),
(13, '2016-05-03 13:06:04', 15, 47, 20, 33, 13, 53, 80, 60, 87),
(14, '2016-05-03 13:08:34', 16, 33, 47, 80, 73, 67, 53, 20, 27),
(15, '2016-05-03 13:10:15', 17, 20, 53, 60, 60, 80, 47, 40, 40),
(16, '2016-05-03 13:12:00', 18, 47, 67, 53, 73, 53, 33, 40, 27),
(17, '2016-05-03 13:14:13', 19, 53, 73, 47, 53, 47, 27, 47, 47),
(18, '2016-05-03 13:19:37', 20, 47, 60, 27, 47, 53, 40, 73, 53),
(19, '2016-05-03 13:21:45', 21, 87, 33, 20, 53, 13, 67, 87, 47),
(21, '2016-05-03 14:09:21', 22, 20, 47, 33, 20, 80, 53, 60, 80),
(22, '2016-05-06 10:18:25', 23, 73, 27, 73, 47, 27, 73, 27, 53);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `role`, `password`, `create_date`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 'administrator', '0192023a7bbd73250516f069df18b500', '2016-03-01 00:00:00'),
(2, 'user', 'user', 'user', 'user@gmail.com', 'subscriber', '6ad14ba9986e3615423dfca256d04e3f', '2016-03-02 00:00:00'),
(3, 'testing', 'testing', 'testing', 'test@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-03-03 00:00:00'),
(4, 'ghaza', 'Ghaza', 'Hapsoro', 'ghaza@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:03:56'),
(5, 'aulia', 'Aulia', 'Rohmayani', 'aulia@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:09:59'),
(6, 'reza', 'Reza', '', 'reze@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:18:43'),
(7, 'anonim', 'Anonim', '', 'anonim@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:25:52'),
(8, 'widya', 'Widya', 'Pratiwi', 'widya@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:34:04'),
(9, 'windy', 'Windy', '', 'windy@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:38:14'),
(10, 'mbakAry', 'Mbak', 'Ary', 'ary@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:41:17'),
(11, 'nurul', 'Nurul', '', 'nurul@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:43:44'),
(12, 'indah', 'Tante', 'Indah', 'indah@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:47:06'),
(13, 'barce', 'Mama', 'Barce', 'barce@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:50:25'),
(14, 'eviayu', 'Evi Ayu', 'Lusiana', 'eviayu@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:53:31'),
(15, 'gilang', 'Gilang', '', 'gilang@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:56:04'),
(16, 'dewipersik', 'Dewi', 'Persik', 'dp@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 12:58:34'),
(17, 'dewi', 'Dewi', 'Damayanti', 'dewi@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:00:15'),
(18, 'tlom', 'TL', 'Om', 'tlom@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:02:00'),
(19, 'mom', 'Mom', '', 'mom@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:04:13'),
(20, 'dendy', 'Dendy', 'W', 'dendy@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:09:37'),
(21, 'ncep', 'Ncep', '', 'ncep@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:11:45'),
(22, 'baskara', 'Baskara', 'A', 'baskara@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-03 13:59:21'),
(23, 'choirul', 'choirul', 'muhtadin', 'samohung92@yahoo.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad', '2016-05-06 10:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` smallint(3) NOT NULL,
  `wisata` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '1',
  `price` tinyint(2) DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `wisata`, `type`, `price`, `description`) VALUES
(1, 'Pantai Plengkung, Banyuwangi', '2', 4, 'Pantai plengkung merupakan spot surfing terbaik di Asia Tenggara dan ombaknya termasuk satu dari tujuh ombak terbaik di dunia. Selain di Plengkung ombak sebesar itu hanya ada di Hawai dan Afrika Selatan.'),
(2, 'Kawah Ijen, Banyuwangi', '1', 1, 'Kawah Ijen (Ijen crater) merupakan sebuah danau terbesar di dunia dengan derajat keasaman yang sangat tinggi (pH <0,5) dan juga terisi air yang telah mengalami mineralisasi volkanik. Juga terdapat sebuah solfatara permanen di tepi danau, yang terus-menerus menghasilkan belerang murni. Belerang ini ditambang oleh pekerja lokal. Sesekali juga terjadi ledakan akibat adanya kegiatan freatik, yang terjadi ditengah danau. Aktifitas freaktik ini ditengarai sebagai indikasi ancaman utama dan telah terjadi beberapa kali.'),
(3, 'Taman Nasional Baluran, Situbondo', '1', 2, 'Taman Nasional Baluran sendiri merupakan ekosistem hutan kering di Pulau Jawa, terdiri dari beberapa tipe vegetasi padang savana, hutan mangrove, hutan musim, hutan pantai, hutan pegunungan bawah, hutan rawa, dan hutan yang selalu hijau sepanjang tahun. Taman Nasional Baluran dihuni oleh aneka macam flora dan fauna.'),
(4, 'Jember Fashion Carnival', '5', 1, 'Pada saat tahun 2001 menjadi awal dari Jember Festival Carnaval, dimana Ide konsepnyanya tidak jauh beda dengan Arak-arakan sebelumnya, maka dari itu bentuk kostum dari JFC selalu menyerupai Reyog dimana pada saat itu juga terdapat acara serupa, seperti festival kostum di negara-negara di benua Amerika. Bahkan hingga saat ini puluhan group Reyog di kota Jember masih berpartisipasi dan mendukung kegiatan JFC tiap tahun, begitu pula selalu ada desain kostum pada JFC yang mengusung tentang seni reyog'),
(5, 'Tanjung Papuma', '2', 2, 'Papuma merupakan salah satu objek wisata yang jadi andalan wisata terbaru kota Jember, Jawa Timur. Pesona pantai yang masih terjaga serta keunikan batu-batu karang yang menjadi daya tarik utama Papuma menjadikannya sebagai lokasi wisata alam yang banyak diburu wisatawan, baik lokal maupun mancanegara.'),
(6, 'Goa Tetes', '1', 1, 'konon, nama ini ada karena didalam Goa ini, dari langit ? langitnya selalu menetaskan air dan tidak pernah berhenti sampai sekarang. Meskipun musim kemarau panjang, dalam Goa ini keajaiban tetesan airnya masih saja terjadi. Banyak orang yang meyakini, bahwa Goa Tetes menyimpan misteri.'),
(7, 'Beejay Bakau Resort', '11', 2, 'Ekowisata BeeJay Resort Hutan Bakau, sebelumnya adalah hamparan tanaman bakau saja. Letaknya juga tidak jauh dari pelabuhan. Namun karena tidak ada akses kesana, kebanyakan hanya bisa melewati pelabuhannya saja.'),
(8, 'Candi Jabung', '3', 1, 'candi peninggalan kerajaan Majapahit yang terletak di desa Jabung Candi, Kecamatan Paiton. Dibangun pada tahun 1354 Masehi, dengan ukuran panjang 13,11 m, lebar 9,58 m dan tinggi 15,58 m'),
(9, 'Arung Jeram Sungai Pekalen', '1', 4, 'Sungai Pekalen Atas ini masih sama terletak di desa Ranu Gedang, kecamatan Tiris, kabupaten Probolinggo, propinsi Jawa Timur. Dinamakan desa Ranu Gedang, karena di desa ini banyak terdapat pohon pisang (dalam bahasa jawa pisang disebut Gedang). Pekalen Atas memiliki tingkat kesulitan yang lebih tinggi untuk berarung jeram dibandingkan dengan Pekalen Bawah. Bersumber dari mata air Gunung Argopuro dan Gunung Lamongan dengan lebar sungai rata-rata 5-20 meter dan kedalaman air kurang lebih 1-3 meter.'),
(10, 'TN Bromo Tengger Semeru', '1', 2, 'Menurut sejarah terbentuknya Gunung Bromo dan lautan pasir berawal dari dua gunung yang saling berimpitan satu sama lain yang merupakan Strato Volcano yang terbentuk dari lapisan andesite dan batuan basaltic. Gunung Tengger waktu itu merupakan gunung terbesar dan tertinggi di Pulau Jawa ( 4.000 m) dan telah terbentuk sekitar satu juta tahun yang lalu. Kemudian terjadi letusan kecil materi vulkanik terlempar ke tenggara sehingga membentuk limbah besar dan dalam sampai ke desa Sapi Kerep. Letusan dasyat kemudian menciptakan kaldera dengan diameter lebih dari 8 kilometer.'),
(11, 'Taman Safari Prigen', '9', 4, 'Taman Safari Prigen'),
(12, 'Kebun Raya Purwodadi', '11', 1, 'Kebun Raya Purwodadi adalah sebuah kebun penelitian besar yang terletak di Purwodadi, Pasuruan, Jawa Timur, Indonesia. Luasnya mencapai 85 hektare dan memiliki sekitar 10.000 jenis koleksi pohon dan tumbuhan.kebun raya Purwodadi didirikan pada tanggal 30 Januari 1941 oleh Dr. Lourens Gerhard Marinus Baas Becking atas prakarsa Dr. Dirk Fok van Slooten pada tanggal 30 Januari 1941 sebagai pemekaran dari Stasiun Percobaan ''s Lands Plantentuin Buitenzorg atau Kebun Raya Bogor.'),
(13, 'Astoria Waterpark, Pasuruan', '9', 1, 'Astoria Waterpark '),
(14, 'Petungsewu Wildlife Ecosystem Conservation', '6', 2, 'Petungsewu Wildlife Education Center (P-WEC) adalah pusat pendidikan informal tentang pelestarian alam yang didirikan oleh ProFauna Indonesia pada akhir tahun 2003. Petungsewu Wildlife Education Center berada di Jl. Margasatwa 1 Desa Petungsewu, Kecamatan Dau, Kabupaten Malang.'),
(15, 'Pesarehan Gunung Kawi', '4', 1, 'Pesarean Gunung kawi merupakan tempat dimakamkannya dua jenazah berjajar dalam satu liang lahat. Jenazah pertama adalah Kanjeng Kyai Zakaria II atau lebih dikenal dengan sebutan mbah Djoego, seorang ulama terkenal dari keraton Mataram Surakarta, beliau meninggal pada tanggal 22 Januari 1871 M. Kedua adalah jenazah Raden Mas Iman Soedjono, seorang bangsawan yang menjadi senopati/panglima perang dari Keraton Yogyakarta, beliau meninggal pada tanggal 8 Februari 1876 M.'),
(16, 'Masjid Tiban Turen', '4', 1, 'Masjid Turen yang merupakan sebuah pondok pesantren ini di bangun pada tahun 1978 oleh Romo Kyai Haji Ahmad Bahru Mafdlaluddin Shaleh Al- Mahbub Rahmat Alam, pendiri Ponpes ini lebih akrab di sapa Romo Kyai Ahmad. Arsitektur angunan yang di bangun di atas lahan seluas 4 hektar ini merupakan hasil Istikharah KH Ahmad Bahru Mafdlaludin Soleh. Siapa sangka kalau masjid ini di bangun dengan alat pertukangan sederhana dan juga bahan apa adanya. Pembangunan Masjid Turen Malang yang terletak di kawasan pondok pesantren Bihaaru Bahri ?Asali Fadlaailir Rahmah di lakukan oleh santri ? santri yang berjumlah sekitar 250 orang dan juga di bantu oleh warga sekitar.'),
(17, 'Pantai goa cina', '2', 1, 'Konon menurut cerita masyarakat setempat, ada sebuah gua di bukit pinggir pantai yang digunakan oleh seorang pertapa China untuk bersemedi. Akhirnya pertapa itu meninggal di gua tersebut. Hal itu diketahui ketika seseorang masuk, hanya ada tulang belulang sang biksu dan tulisan Mandarin di langit-langit gua. Hingga akhirnya pantai ini dinamakan Pantai Gua China'),
(18, 'Pantai Gatra', '2', 1, 'Pantai Gatra termasuk dalam Konservasi Sendangbiru. Di Pantai Gatra seringkali menjadi tempat camping bagi para pencinta alam. Anda juga bisa melanjutkan berwisata menuju beberapa pantai adalah Pantai Tiga Warna, Pantai Savana, Pantai Batu Belah, dan Pantai Mini.'),
(19, 'Coban Pelangi', '1', 1, 'Air Terjun ini, pengunjung akan melewati medan jalan berbukit dengan kemiringan sekitar 45 derajat. Setelah melewati bukut yang terjal dan berliku pengunjung akan menyusuri jalur anak sungai.'),
(20, 'Banyu Anjlok', '1', 1, 'Namanya Air Terjun Banyu Anjlok, atau jika diterjemahkan berarti Air yang Jatuh. Destinasi wisata ini terletak di daerah Dampit, desa Tirtoyudo, Malang. Yang membuat Banyu Anjlok istimewa adalah air terjun ini menghadap langsung ke pantai.'),
(21, 'Museum Brawijaya Malang', '3', 1, 'Tahun 1952. Museum didirikan dengan melatar belakangi perjuangan TKR dan rakyat Jatim dari Agresi Militer Belanda I dan II. Museum Brawijaya dibangun atas prakarsa oleh brigjen TNI (Purn) Soerachman Pengdam VIII/BRW Tahun 1959 ? 1962. Motto Museum Brawijaya "CITRA UTHA PANA CAKRA (cahaya yang membangkitkan semangat)".'),
(22, 'Museum Zoologi Frater Vianney', '6', 2, 'Pada tahun-tahun akhir hidupnya, Frater Maria Vianney BHK [meninggal 5 Maret 1970] mendalami ilmu tentang kulit siput dan kerang. Inilah yang disebut konkologi (conchology): Ilmu yang mempelajari cangkang siput dan kerang.Keasyikannya tidak sekadar berteori dengan mempelajari buku, tapi ia justru terjun langsung ke objek alam kerang dan cangkang. Ia asyik mengumpulkan dan mengoleksi sendiri. '),
(23, 'Pasar Minggu Semeru', '7', 1, 'Pasar Minggu Kota Malang merupakan salah satu alternatif bagi Ngalamers yang ingin berbelanja dengan budget terbatas untuk mendapatkan barang dengan kualitas yang cukup lumayan. Seperti namanya, Pasar ini memang hanya bisa Ngalamers temui di hari Minggu saja dan tentunya berada di Kota Malang. Terletak di jalan Semeru di sekitar Stadion Gajayana Malang.'),
(24, 'Wisata kuliner pulosari', '8', 1, 'Kuliner pulosari merupakan pusat kuliner tertua di kota Malang. Tempat yg sangat mentereng di tahun 90 an ini, lumayan jaya di masa lalu. Seiring dengan berkembangnya wisata kuliner di Malang, tempat ini tidak lantas ditinggalkan penggemar kuliner.'),
(25, 'Malang Tempoe Doeloe', '7,5', 1, 'merupakan acara tahunan yang digelar di Kota Malang, Jawa Timur. Acara ini menampilkan unsur-unsur dari budaya masa lampau. Acara ini digelar pertama kali pada 2006. Semua yang tersaji di acara ini bernuansa tempo doeloe, mulai dari setting lokasi, dekorasi tiap-tiap stand, dekorasi panggungnya sampai pada kostum pengunjung.'),
(26, 'Pantai Kenjeran, Surabaya', '2', 1, 'Pantai kenjeran surabaya merupakan salah satu tempat wisata yang ada di kota surabaya, Pantai kenjeran terletak di kecamatan kenjeran di bagian timur kota surabaya kurang lebih 9 km dari pusat kota tepatnya di Jln Sukolilo Lor Surabaya. Pantai kenjeran ada dua yaitu pantai kenjeran lama dan pantai ria kenjeran ( kenjeran baru ). Kedua pantai kenjeran menawarkan suasana pantai yang berbeda bagi pengunjungnya. '),
(27, 'Tugu Pahlawan', '3', 1, 'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Monumen ini setinggi 41,15 meter berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (Canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas, dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945. Suatu tanggal bersejarah, bukan hanya bagi penduduk Kota Surabaya, tetapi juga bagi seluruh Rakyat Indonesia. Tugu Pahlawan dibangun untuk memperingati peristiwa Pertempuran 10 November 1945 di Surabaya'),
(28, 'Museum Kapal Selam', '3', 1, 'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952. Kapal selam ini pernah dilibatkan dalam Pertempuran Laut Aru untuk membebaskan Irian Barat dari pendudukan Belanda.'),
(29, 'Ciputra Waterpark', '9', 4, 'Ciputra Waterpark adalah wana wisata air terbesar di Indonesia dan bahkan di Asia Tenggara. Terletak di Surabaya Barat, dan itu dibangun oleh Perusahaan Ciputra Grup di area Citraland.Berdiri di lahan seluas 5 hektar, Ciputra Waterpak adalah wahana permainan air yang terinspirasi dari dongeng petualangan Sinbad. Terdapat beberapa wahana di Waterpark ini, seperti Sirens River, Chimera Pool, Marina Lagoon, Sinbad Playground, Roc Tower dan Syracuse Beach.Ciputra Waterpark di buka setiap hari selasa sampai Jumat mulai pukul 14.00-19.00, sedangkan pada akhir pekan dan hari libur dibuka lebih awal dari jam 8.00-20.00. Terdapat beberapa paket yang bisa dipilih oleh pengunjung, dimana setiap wahana menampilkan atraksi wahana yang menarik dan menggunakan tehnologi tinggi. Ditambah lagi, keamanan dari Waterpark ini sudah jelas terbukti, sehingga pengunjung tidak perlu khawatir.'),
(30, 'Taman Remaja Surabaya', '9', 1, 'Sarana hiburan rekreasi yang modern, lengkap dan canggih disediakan oleh pihak pengelola taman hiburan Warwick Amusement Group Indonesia. Salah satu diantaranya adalah Taman Remaja Surabaya yang diwakili oleh PT. Star Taman Remaja Surabaya yang berada di jalan Kusuma Bangsa, dengan area seluas 16.910 m2.Dengan usianya yang lebih dari 30 tahun, Taman Remaja Surabaya semakin profesional dalam menangani kinerja dari setiap fasilitas dan arena permainan yang tersedia. Hal ini demi meningkatkan keamanan dan kenyamanan bagi para pengunjung yang ingin menikmati hiburan dan rekreasi di Taman Remaja Surabaya.Di area yang cukup luas tersebut Taman Remaja Surabaya menyediakan beberapa fasilitas yaitu :16 permainan anak-anak dan dewasa atraksi mesin permainan/ Fun Fair (Boom Boom Car, Ghost House, Shooting Galery, Merry Go Round, Twin Dragon, Twist Aldin, Mini Train, Ball Pool dan sebagainya).2 Panggung Hiburan (Panggung Utama dan Panggung Garuda) dimana anda dapat menikmati pagelaran musik besama artis lokal dan Jakarta dalam berbagai aliran musik pop, hop hop, R & B, dangdut, rock dan sebagainya. Dan ada yang menarik di panggung hiburan ini, yatu adanya ajang unjuk kebolehan para waria dalam bersolek, bernyanyi dan berlenggak-lenggok dalam acara waria show.4 cafe dan restaurant (Melody Cafetaria, Rainbow Cafetaria, Remaja Ice Cream dsb) dimana disajikan aneka menu makanan baik Indonesian Food, Chinese dan Western Food. Serta tersedia pula aneka minuman soft drink, ice cream, fruit juice. Dengan letak cafe dan restaurant yang tersebar secara merata sehingga memberi kemudahan bagi yang ingin beristirahat dan menikati sajian makanan dan minuman.Tersedia pula fasilitas umum gerai fotografi, cinderamata, musholla, ruang bantuan medis, telepon umum, area parkir, toilet dan kantor informasi. Taman Remaja Surabaya memberikan sesuatu yang sangat menarik, murah, meriah dan memuaskan bagi para pengunjungnya.'),
(31, 'Masjid Cheng Ho', '4', 1, 'Masjid yang berletak di Jl. Raya Kasri ini adalah salah satu daya tarik kota Pandaan. Menjadi salah satu icon dan menjadi sarana ibadah sekaligus tempat wisata bagi pengunjung luar kota.Masjid berarsitektur Cina yang diresmikan pada tgl 27 Januari 2008 oleh Bupati H. Jusbakir Aldjufri SH.MM, Sedangkan peletakan batu pertama dilakukan KH Abdurrahman Wahid (Gus Dur) pada 30 Mei 2004. Sebelumnya merupakan tanah kosong milik perhutani yang kemudian dikelola menjadi Masjid yang menelan biaya hingga Rp. 3,2 Milyar lebih.Masjid ini dibangun di atas tanah seluas 6.000 meter persegi. Dengan luas bangunan masjid 550 meter persegi. Masjid ini terdapat dua lantai. Lantai bawah seluas 529 meter persegi bakal ditempati perpustakaan, akad nikah dan acara seremonial religi lainnya. Sejak habisnya masa jabatan Bupati Jusbakir, masjid ini sekarang dikelola oleh ketakmiran masjid sebagai penanggung jawab.'),
(32, 'Makam Sunan Ampel', '4', 1, 'Sunan Ampel bernama asli Raden Rahmat, keturunan ke-23 dari Nabi Muhammad, menurut riwayat ia adalah putra Ibrahim Zainuddin Al-Akbar dan seorang putri Champa yang bernama Dewi Condro Wulan binti Raja Champa Terakhir Dari Dinasti Ming.Di makam sunan ampel terdapat banyak sekali sumber-sumber sejarah yang tertinggal, diantaranya yaitu peninggalan bentuk nisan makam-makam yang ada disekitar makam Sunan Ampel. Bentuk bangunan makam yang berupa nisan memiliki ciri khas tersendiri dan berbeda dengan bentuk nisan makam yang ada saat ini. Makam sunan ampel sendiri dibangun di sebelah utara komplek pemakaman, dan makamnya dibatasi oleh pagar yang terbuat dari alumunium. Bangunan makam sangat terawat dan terlihat bersih sehingga membuat peziarah khusuk jika melayat ke makam sunan Ampel. Di samping kiri makam Sunan Ampel yaitu makam istri Sunan Ampel yang bernama Nyai Candrawati. Makam yang pertama kali ada di komplek makam itu yaitu makam dari Sunan Ampel.'),
(33, 'Tunjungan Plaza', '7', 1, ''),
(34, 'Ciputra World Surabaya', '7', 1, 'Ciputra World Surabaya adalah sebuah Superblok yang dibangun oleh Pt. Ciputra Surya Tbk yang berada di kawasan Jl. Mayjen Sungkono no.89, Surabaya. Superblok ini memiliki 2 menara yang digunakan untuk apartemen dengan nama The Via & The Vue (V2) dan juga memiliki 1 mall yang jumlah lantainya 6 lantai. Proyek ini dibangun mulai tahun 2009 dan sudah selesai dibangun mall pada tahun 2011. Akhirnya dibuka pada tanggal 22 Juli 2011 dengan kelengkapan pusat perbelanjaan, fashion seperti Salvatore Ferragamo , Armani , hingga Louis Vuitton , restoran, Hypermart, bioskop XXI, Food Wave, Toko Buku Gramedia, NAV Karaoke dan masih banyak lagi.'),
(35, 'Pasar Turi', '7', 1, 'Nama "Pasar Turi" diperoleh karena dahulu di sekitar stasiun ini terdapat sebuah pasar yang kebanyakan pedagangnya adalah pedagang bunga turi yang biasa dijadikan ''lalapan'' sambel pecel.[3] Ke arah timur dari stasiun ini terdapat pusat grosir yang menjual aneka ragam barang. Di bawah pusat grosir inilah, jalur kereta api muncul sebelum melintasi Jalan Dupak.'),
(36, 'Surabaya Shopping Festival', '7', 1, 'Surabaya Shopping Festival, acara belanja tahunan terbesar di Jawa Timur akan kembali menyapa warga kota Surabaya mulai tanggal 1-31 Mei 2015. Kegiatan ini dipastikan akan semakin semarak dari tahun ke tahun, karena semakin banyak yang ikut terlibat dan sebagian besar adalah pusat perbelanjaan di kota Pahlawan ini. Pada Surabaya Shopping Festival, berbagai mall di Surabaya memberikan diskon besar-besaran. Acara ini diadakan tiap tahun dan biasanya bertepatan dengan hari ulang tahun kota Surabaya.'),
(37, 'Grand City Surabaya', '7', 1, 'Grand City Surabaya adalah sebuah pusat perbelanjaan terbesar di Surabaya, sekaligus mal terbaru di kota Surabaya. Didirikan pada tahun 2009. Pada Maret 2009 berdiri Grand City Convention and Exhibition Hall seluas 21 ribu m2. Convention hall ini letaknya bersebelahan dengan Grand City Mall.'),
(38, 'Taman Bungkul', '9', 1, 'Taman Bungkul berlokasi di Jalan Raya Darmo Surabaya, taman ini terletak di area sekitar 900 meter persegi dan dilengkapi dengan fasilitas pendukung seperti amfiteater dengan diameter 33 M, jogging track, taman bermain anak-anak dan lahan untuk papan luncur. Selain itu, taman ini juga difasilitasi dengan akses internet nirkabel.Taman Bungkul diambil dari nama Mbah Bungkul, dimana makam beliau juga terletak pada taman ini. Mbah Bungkul adalah julukan untuk Ki Supo, seorang ulama di kerajaan Majapahit (abad XV), yang juga saudara ipar Raden Rahmat atau Sunan Ampel.Taman Bungkul sudah seperti jantung kota Surabaya. Taman ini sekarang menjadi taman wisata bagi mereka yang ingin menikmati suasana hijau di tengah kota. Beberapa acara juga sering di gelar ini taman ini bagi kegiatan hiburan atau kebudayaanDi bagian belakang taman, terdapat beberapa warung yang menawarkan menu khas Surabaya, seperti Rawon, Soto, Bakso dan banyak lagi. Taman Bungkul selalu ramai dikunjungi dari pagi hingga malam hari dan menjadi bagian dari kota Surabaya yang pantas untuk dibanggakan.'),
(39, 'Bebek SInjay', '8', 2, 'Salah satu bebek yang terkenal di pulau Madura adalah Bebek Sinjay. Selintas terdengar Bebek Sinjay seperti sangat asing di telinga kita. Kata ?Sinjay? sangat identik dengan bahasa india. Namun, Bebek Sinjay adalah kuliner asli dari pulau Madura. Warung Bebek Sinjay tidak pernah sepi pengunjung. Selalu saja ramai pengunjung dari berbagai daerah. Lokasi Bebek Sinjay sendiri terletak di jalan Raya Ketengan No. 45 Bangkalan Madura. Sangat mudah ditemui, jika anda melewati jembatan Suramadu tinggal lurus saja sampai ujung jalan ada pertigaan lalu belok kiri. Ikutilah jalan tersebut maka anda akan menemukan warung Bebek Sinjay. Perlu diketahui, Bebek Sinjay tidak membuka cabang dimana pun dan juga tidak melayanidelivery.Untuk menikmati seporsi Bebek Sinjay perlu melakukan dua perjuangan. Pertama, antri untuk membayar pesanan. Kedua, antri lagi untuk mengambil Bebek Sinjay. Jika weekend, maka antrian dapat mengekor sangat panjang. Namun, untuk hari biasa antrian masih normal-normal saja. Meskipun antri banyak, anda tidak perlu khawatir tidak mendapatkan tempat duduk di warung ini. Warung Bebek Sinjay boleh dibilang sangat luas, dapat menampung sekitar 500 orang. Seporsi Bebek Sinjay dibanderol Rp 20.000 dan itu sudah paketan dengan teh botol.'),
(40, 'Ole-Olang Resto', '8', 2, ''),
(41, 'Bukit Geger', '1', 1, 'Bukit Geger terletak kurang lebih 30 km arah tenggara kota Bangkalan, tepatnya berada di desa Geger, kecamatan Geger. Dari Kota Bangkalan lurus terus ke arah utara yaitu ke arah kecamatan Arosbaya, lalu ke timur kearah kecamatan geger. Disitulah bukit itu berada. Bukit tersebut mudah dijangkau karena letaknya tepat dipinggir jalan raya. Di Bukit Geger, Para Penelusur ga cuma wisata alam, tetapi juga berwisata purbakala.Obyek wisata bukit Geger ini banyak dikunjungi wisatawan yang datang ke Bangkalan, selain sebagai bumi perkemahan juga biasa digunakan sebagai tempat pendakian. Dan terdapat lokasi-lokasi lainnya yang bisa dikunjungi seperti, hutan akasia, hutan mahoni dan hutan jati seluas 42 hektar.'),
(42, 'Patirtan Tjakraningrat IV Tanjoeng Piring', '3', 1, ''),
(43, 'Mercusuar Sembilan', '3', 1, 'Mercusuar ini dibangun pada masa pemerintahan Raja Z.M. Willem III. Menurut plat yang masih tertempel di menara suar ini, pembangunan selesai dilakukan pada tahun 1879. Artinya bangunan ini sudah berdiri selama 134 tahun. Hebatnya mercusuar ini masih berfungsi dengan baik hingga kini. Ketika malam tiba, lampu-lampu di puncak menaranya dengan setia menerangi puluhan hingga ratusan kapal yang mengarungi Selat Madura.Mercusuar ini terletak tidak jauh dari pusat Kota Bangkalan. Ia berdiri di sebuah desa bernama Sembilangan di Kecamatan Socah, hanya sekitar 6 KM dari ibu kota kabupaten.'),
(44, 'Benteng ERFPRINS', '3', 1, ''),
(45, 'Sunan Bangkalan/ Raden Jakandar', '4', 1, 'Sunan Bangkalan adalah ulama keturunan keluarga Kerajaan Pajajaran. Dari pernikahannya dengan Dewi Nawangsasi, putri Ki Ageng Tarub, dikaruniai dua orang putri yaitu Dewi Hisah (Istri Sunan Gunung Jati) dan Dewi Hirah(Istri Sunan Bonang)'),
(46, 'Pulau Mandangin', '2', 1, 'Pulau Mandangin adalah salah satu tempat wisata di Sampang, dan dapat dijangkau dengan perahu bermotor dari Pelabuhan Tanglok. Pulau Mandangin dikenal akan keindahan pasir putih, terumbu karang, dan kehidupan masyarakatnya yang mayoritas bermata pencaharian sebagai nelayan. Dahulu seseorang yang bernama Bangsacara dibunuh di pulau ini oleh Bangsapati suruhan Raja Bidarba yang ingin merebut kembali Ragapatmi (mantan istrinya) yang sudah sembuh dari penyakit kulitnya yang mengerikan.'),
(47, 'Goa Lebar', '1', 1, 'Objek wisata Gua Lebar terletak di Kelurahan Dalpenang. Kecamatan Kota Sampang Kabupaten Sampang Madura, Jawa Timur. Berjarak kurang lebih 800 m dari pusat kota ( waktu tempuh 5 menit ).Yang menarik, lokasi dataran gua ini berada pada ketinggian + 500m diatas permukaan laut, secara geografis kondisi ini memungkinkan para wisatawan untuk melihat view Kota Sampang dari posisi pandang sebelah barat, timur dan utara, kemudian sebelah selatan akan memungkinkan melihat pemandangan laut Selat Madura (dengan dukungan menara pantau) dari atas kawasan gua ini.'),
(48, 'Situs Pababaran Trunojoyo', '3', 1, ''),
(49, 'Pekan Budaya Madura', '5', 1, ''),
(50, 'Api tak kunjung padam', '1', 1, ''),
(51, 'Pasar Batik Joko Tole', '7', 1, 'Jl. Joko Tole yang dimaksudkan sebagai salah satu sentra promosi dan penjualan batik Pamekasan.'),
(52, 'Candi Burung', '3', 1, '?Burung? merupakan istilah bahasa Madura yang artinya adalah gagal. Gagalnya pembangunan candi di Desa Candi Burung tersebut, karena pada saat yang bersamaan, ajaran agama Islam juga mulai menyebar luas di Pamekasan yang juga berpusat di wilayah Kecamatan Proppo, yakni di Desa Jambringin.Hal ini ditandai dengan adanya situs ?Langgar? yakni sejenis musalla dan menjadi tempat ibadah umat Islam di rumahnya masing-masing akan tetapi terbuat dari kayu. Langgar itu bernama langgar Gayam.'),
(53, 'Pasar 17 Agustus', '7', 1, 'dikenal penduduk setempat sebagai Pasar 17 Agustus karena di depan pasar tersebut terdapat gapura peringatan hari kemerdekaan RI 17 Agustus. Pasar ini dalam sepekan menjual barang kebutuhan sehari-sehari seperti sayur mayur dan sembako, pasar batik hanya ada di hari kamis dan minggu. Uniknya, selain pasar batik pada hari kamis dan minggu juga ada pasar hewan yang menjual kambing, domba, sapi, ayam, bebek, itik, burung dan sebagainya.'),
(54, 'Pantai Talang Siring', '2', 1, 'Pantai ini sangat cocok bagi anda yang ingin bersantai menghilangkan kepenatan, baik sendirian ataupun bersama keluarga. Tak jarang pula pantai ini menjadi tempat berkumpul untuk acara gathering bersama rekan kerja ataupun sekolah.'),
(55, 'Karapan Sapi', '5', 1, 'Awal mula kerapan sapi dilatar belakangi oleh tanah Madura yang kurang subur untuk lahan pertanian, sebagai gantinya orang-orang Madura mengalihkan matapencahariannya sebagai nelayan untuk daerah pesisir dan beternak sapi yang sekaligus digunakan untuk bertani khususnya dalam membajak sawah atau ladang.'),
(56, 'Kontes Sapi Sonok', '5', 1, 'Kontes sapi sonok Madura dimulai pada tahun 1960-an. Kegiatan ini tidak terlepas dari kaltus agraris masyarakat Madura dalam pengelolaan lahan pertanian. Sapi sonok merupakan jenis sapi betina yang dirawat sedemikian rupa sehingga menghasilkan sapi betina pilihan breh dalam hal kesehatan maupun pemeliharaan. Kontes sapi Sonok sangat diminati oleh masyarakat Madura.'),
(57, 'Museum Keraton Sumenep', '3', 1, ''),
(58, 'Masjid Jamik Sumenep', '4', 1, 'Masjid Jamik Sumenep merupakan salah satu dari 10 masjid tertua di Indonesia yang berlokasi di Madura., dan juga merupakan peninggalan bersejarah kota Sumenep.'),
(59, 'Kota Tua Kalianget', '3,5', 1, 'Kota Tua Kalianget merupakan salah satu kota modern pertama di Pulau Madura, Kota ini di bangun Pada masa VOC dan diteruskan oleh pemerintahan Hindia Belanda.Kalianget di kembangkan menjadi kota dikarenakan letaknya yang sangat strategis dan merupakan bandar pelabuhan tersibuk di selat Madura.'),
(60, 'Taneang Lanjhang', '3,5', 1, ''),
(61, 'Benteng VOC Kalimo?ok', '3', 1, 'Benteng VOC (Vereenigde Oostindische Compagnie) Kalimo''ok adalah salah satu bangunan cagar budaya yang dilindungi oleh BP3 Trowulan Jawa Timur. Benteng ini merupakan satu-satunya bangunan benteng yang ada di Pulau Madura. Posisi benteng ini berada jauh dari Pelabuhan Kalianget dan juga pusat kota, kira-kira 4 Km dari pelabuhan Kalianget dan 7 Km dari keraton Sumenep, Atau 1 Km dari Bandar Udara Trunojoyo.'),
(62, 'Asta Karang Sabu', '4', 1, ''),
(63, 'Goa Kuning', '1', 1, 'Goa Kuning Kangean ? Memang benar sih, rata-rata yang namanya Gua pasti akan langsung memunculkan persepsi berupa tempat yang sudah pasti seram, gelap, dan penuh dengan binatang-binatang yang tidak biasa, seperti kelelawar salah satunya, dan paling-paling pengunjungnya kebanyakan hanya sebuah kelompok orang-orang pecinta gua saja.Namun, tidak semua gua seperti itu lho, Gua atau Goa Kuning Kangean ini salah satunya, meski punya cerita yang berhubungan dengan hal gaib, namun Goa Kuning Kangean ini tetap saja sering di kunjungi wisatawan pecinta alam.'),
(64, 'Gili labak', '2', 2, ''),
(65, 'Kepulauan Kangean', '2', 3, ''),
(66, 'Alun- alun Sumenep', '9,10', 1, ''),
(67, 'Goa Selomangleng', '1', 1, 'Gua Selomangleng merupakan objek wisata populer di Kotamadya Kediri yang berada di utara kota dan dilengkapi akses jalan raya yang mulus, tersedia angkutan kota dan dekat dengan universitas serta SMA Negeri di Kota Kediri. Dinamakan Selomangleng dikarenakan lokasinya yang berada di lereng bukit (bahasa Jawa: Selo = batu, Mangleng = miring), kira-kira 40 meter dari tanah terendah di kawasan. Gua ini terbentuk dari batu andesit hitam yang berukuran cukup besar, sehingga nampak cukup menyolok dari kejauhan.Sepintas tidak ada yang istimewa di gua batu ini, keunikan baru terlihat begitu mendekati pintu gua. Beberapa meter dibawah mulut gua terdapat beberapa bongkahan batu yang berserakan. Sebagian diantaranya terdapat pahatan, menandakan bahwa tempat ini sudah pernah disentuh manusia. Berbagai corak relief menghiasai dinding luar gua, diantaranya ada yang berbentuk manusia.'),
(68, 'Pusat tahu takwa dan gethuk gedang', '8', 1, ''),
(69, 'Soto Kediri bok ijo', '8', 1, ''),
(70, 'Museum setono gedong', '3', 1, ''),
(71, 'Museum fotografi', '3', 2, ''),
(72, 'Klenteng Tjio Hwie Kiong', '3', 1, ''),
(73, 'Gumul Paradise Island', '9', 2, ''),
(74, 'Alun-alun kota kediri', '9', 1, ''),
(75, 'Makam Sunan Geseng', '4', 1, ''),
(76, 'Makam Mbah Bancolono', '4', 1, ''),
(77, 'Batu Night Spektakuler', '10', 3, ''),
(78, 'Museum Angkut', '6', 3, 'Terinspirasi dari bentuk penghargaan atas penciptaan alat transportasi di dunia. Kini, telah hadir museum transportasi modern pertama di Indonesia dan Asia yang memadukan unsur seni dan budaya. Museum Angkut Plus Movie Star Studio merupakan museum dengan konsep edukasi dan entertainment yang ditampilkan secara langsung.Letaknya yang nyaman dan asri dilereng gunung Panderman di areal seluas 3,8 hektar siap memanjakan anda dengan 300 lebih koleksi jenis angkutan mulai tradisional sampai modern yang dipadukan dengan berbagai landscape dan model bangunan eksotis dunia mulai dari benua Eropa sampai Amerika.'),
(79, 'Museum tubuh', '6', 3, 'Satu lagi museum terbaru hadir di kota Batu, Ngalamers. Dengan nama The Bagong Adventure Museum Tubuh, museum ini ingin memperkenalkan isi dan fungsi tubuh manusia. Menggunakan maskot Bagong sebagai salah satu tokoh pewayangan Indonesia, dengan harapan museum tubuh lebih dikenal berada di Indonesia. The Bagong Adventure Museum Tubuh buka setiap hari dengan harga tiket masuk hari senin sampai jumat Rp. 40.000 sedangkan untuk sabtu dan minggu Rp. 60.000.'),
(80, 'Eco green park', '6', 3, ''),
(81, 'Jawa Timur Park', '6,9', 3, 'Jatim Park adalah sebuah tempat rekreasi dan taman belajar yang terdapat di Kota Batu, Jawa Timur. Obyek wisata ini berada sekitar 20 km barat Kota Malang, dan kini menjadi salah satu icon wisata Jawa Timur. Obyek wisata ini memiliki 36 wahana, diantaranya kolam renang raksasa (dengan latar belakang patung Ken Dedes, Ken Arok, dan Mpu Gandring), spinning coaster, dan drop zone. Wahana pendidikan yang menjadi pusat perhatian diantaranya adalah Volcano dan Galeri Nusantara yang juga terdapat tanaman agro, diorama binatang langka, dan miniatur candi-candi.jatim park 1 beralamat di jl.kartika no.2,yg berdekatan dengan Klub Bunga'),
(82, 'Kusuma Agrowosata', '11', 3, 'merupakan paket lengkap berwisata, sambil menikmati sajian utama pengalaman memetik buah apel sendiri langsung dari kebun apel, juga masih ada kebun lainnya seperti strawberry, mangga, kebun sayur dan lainnya.'),
(83, 'Arboretum', '11', 1, 'Arboretum merupakan kebun koleksi tanaman pohon atau kayu-kayuan (biasanya tanaman hutan) yang bermanfaat bagi ilmu pengetahuan terutama ilmu kehutanan'),
(84, 'Candi Penataran', '3', 1, 'Candi Panataran atau nama aslinya adalah Candi Palah adalah sebuah gugusan candi bersifat keagamaan Hindu Siwaitis yang terletak di Desa Penataran, Kecamatan Nglegok, Kabupaten Blitar, Jawa Timur. Candi termegah dan terluas di Jawa Timur ini terletak di lereng barat daya Gunung Kelud, di sebelah utara Blitar, pada ketinggian 450 meter di atas permukaan laut. Dari prasasti yang tersimpan di bagian candi diperkirakan candi ini dibangun pada masa Raja Srengga dari Kerajaan Kadiri sekitar tahun 1200 Masehi dan berlanjut digunakan sampai masa pemerintahan Wikramawardhana, Raja Kerajaan Majapahit sekitar tahun 1415.'),
(85, 'Pantai Peh pulo', '2', 1, ''),
(86, 'Makam Bung Karno', '3', 2, 'Bung Karno yang merupakan Proklamator Kemerdekaan Republik Indonesia. Makam Bung Karno berada pada lahan yang sangat luas di Kelurahan Bendogerit, Kecamatan Sanawetan, sekitar 3 km dari pusat kota. Cukup mudah untuk menuju ke lokasinya.Untuk memasuki makam Bung Karno ini tidak dipungut tiket masuk.Memasuki makam ini dimulai dari sebuah gapura Agung yang menghadap ke selatan. Bentuk gapura menyerupai gapura Bentar atau gapura yang terbelah seperti pada Candi Wringin Agung di Mojokerto dengan tambahan pada beberapa bagiannya. Makam Bung Karno dinaungi sebuah bangunan berbentuk Joglo, yakni bentuk seni bangunan khas budaya Jawa. Makam itu di apit oleh makam kedua orang tua beliau, yaitu di sebelah kiri ada Makam Ayahanda yaitu R. Soekeni Sosrodihardjo dan di sebelah kanan ada makam Ibundanya yaitu Ida Aju Njoman Rai.'),
(87, 'Istana Gebang', '3', 2, ''),
(88, 'Monumen Supriyadi', '3', 1, ''),
(89, 'Kebon Rojo', '11', 1, 'Objek Wisata Kebon Rojo adalah sebuah taman hiburan dan rekreasi keluarga yang merupakan kompleks Rumah Kantor Walikota Blitar, dan disediakan untuk masyarakat umum / wisatawan secara gratis. Di taman terdapat beberapa jenis hewan yang sengaja dipelihara di satu daerah tertentu seperti rusa, monyet dan burung merak.Tempat ini juga merupakan taman bermain anak-anak sebagai salah satu fasilitas, disediakan pulan tempat bersantai, patung hewan dan ornamen yang melekat pada area panggung apresiasi bagi para seniman dengan latar belakang tugu peringatan Satu Abad Bung Karno. Di tengah kawasan Kebon Rojo terdapat air mancur dan berbagai jenis tanaman langka yang berfungsi sebagai paru-paru kota.'),
(90, 'Trowulan', '3', 2, ''),
(91, 'Arung Jeram dan Lokasi Outbound Training OBECH Wilderness Experience', '1', 4, ''),
(92, 'Pulau bawean ', '2', 2, 'Bawean adalah sebuah pulau yang terletak di Laut Jawa, sekitar 80 Mil atau 120 kilometer sebelah utara'),
(93, 'Makam Maulana Malik Ibrahim', '4', 1, 'Maulana Malik Ibrahim (w. 1419 M/882 H) adalah nama salah seorang Walisongo, yang dianggap yang pertama kali menyebarkan agama Islam di tanah Jawa. Ia dimakamkan di desa Gapurosukolilo, kota Gresik, Jawa Timur. Tidak terdapat bukti sejarah yang meyakinkan mengenai asal keturunan Maulana Malik Ibrahim, meskipun pada umumnya disepakati bahwa ia bukanlah orang Jawa asli. Sebutan Syekh Maghribi yang diberikan masyarakat kepadanya, kemungkinan menisbatkan asal keturunannya dari wilayah Arab Maghrib di Afrika Utara.'),
(94, 'Petilasan Sunan Kalijaga', '4', 1, 'Sunan Kalijaga atau Sunan Kalijogo adalah seorang tokoh Wali Songo yang sangat lekat dengan Muslim di Pulau Jawa, karena kemampuannya memasukkan pengaruh Islam ke dalam tradisi Jawa. Masa hidup Sunan Kalijaga diperkirakan mencapai lebih dari 100 tahun. Dengan demikian ia mengalami masa akhir kekuasaan Majapahit (berakhir 1478)'),
(95, 'Makam Sunan Giri', '4', 1, 'Sunan Giri adalah nama salah seorang Walisongo dan pendiri kerajaan Giri Kedaton, yang berkedudukan di daerah Gresik, Jawa Timur. Sunan Giri membangun Giri Kedaton sebagai pusat penyebaran agama Islam di Jawa, yang pengaruhnya bahkan sampai ke Madura, Lombok, Kalimantan, Sulawesi, dan Maluku. Sunan Giri memiliki beberapa nama panggilan, yaitu Raden Paku, Prabu Satmata, Sultan Abdul Faqih, Raden ''Ainul Yaqin dan Joko Samudro. Ia lahir di Blambangan tahun 1442, dan dimakamkan di desa Giri, Kebomas, Gresik.'),
(96, 'Malem Selawe', '5', 1, ''),
(97, 'WBL', '2', 3, ''),
(98, 'Monumen Van der Wijck', '3', 1, ''),
(99, 'Pantai Prigi', '2', 1, 'Pusat pariwisata dan perekonomian warga Kecamatan Watulimo. Terdapat tempat pelelangan ikan dan merupakan Pelabuhan Nusantara.'),
(100, 'Upacara Dam Bagong', '5', 1, 'Diadakan setiap tahun sekali dengan mempersembahkan kepala kerbau untuk di larung di Kali Bagong.'),
(101, 'Pasar Joyo, Madiun', '7', 1, 'Pasar Srijaya Kota Madiun berlokasi di dekat Carrefour Madiun. Lebih dikenal Pasar Joyo. Pasar ini mirip dengan Pasar Ngasem di Kota Jogja. Yang ramai dikunjungi untuk memenuhi kebutuhan pada hobi.Ada burung, kucing, ikan, tanaman bunga sampai batu akik dan otomotif tersedia. Pada hari Minggu pagi, suasananya sangat ramai.'),
(102, 'Goa Akbar', '1', 1, 'Goa Akbar Tuban, Merupakan wisata GOA yang ada ditengah kota tepatnya dibelakang pasar baru tuban. Buat kamu yang tak mau repot berpetualang alam dan bisa menjangkau lokasi goa untuk menikmati keindahan ciptaan tuhan bersama alam ini, GOA AKBAR TUBAN adalah solusinya. Goa yang biasanya terdapat ditengah hutan belantara, ataupun mungkin di bukit-bukit pelosok perkampungan kita mengetahuinya. Namun goa akbar tuban ini beda, justru ditengah keramaian kota lah goa ini tercipta'),
(103, 'Makam Sunan Bonang', '4', 1, 'Sunan Bonang wafat pada tahun 1525 M, dan saat ini makam aslinya berada di Desa Bonang. Namun, yang sering diziarahi adalah makamnya di kota Tuban. Lokasi makam Sunan Bonang ada dua karena konon, saat dia meninggal, kabar wafatnya dia sampai pada seorang muridnya yang berasal dari Madura. Sang murid sangat mengagumi dia sampai ingin membawa jenazah dia ke Madura. Namun, murid tersebut tak dapat membawanya dan hanya dapat membawa kain kafan dan pakaian-pakaian dia. Saat melewati Tuban, ada seorang murid Sunan Bonang yang berasal dari Tuban yang mendengar ada murid dari Madura yang membawa jenazah Sunan Bonang. Mereka memperebutkannya.'),
(104, 'Batik Gedog', '7', 1, ''),
(105, 'Swalayan Sultan Ratu Keraton', '7', 1, ''),
(106, 'Air Terjun Pengantin', '1', 1, 'dinamakan pengantin tersebut sebenarnya karena disana terdapat dua air terjun yang saling berjejer di kanan dan kiri. Sehingga banyak yang menyebutnya Air Terjun Pengantin.'),
(107, 'Benteng Van den Bosch', '3', 1, 'Pada abad 19 Ngawi menjadi salah satu pusat perdagangan dan pelayaran di Jawa Timur dan dijadikan pusat pertahanan Belanda di wilayah Madiun dan sekitarnya dalam Perang Diponegoro (1825-1830). Perlawanan melawan Belanda yang berkobar didaerah dipimpin oleh kepala daerah setempat seperti di Madiun dipimpin oleh Bupati Kerto Dirjo dan di Ngawi dipimpin oleh Adipati Judodiningrat dan Raden Tumenggung Surodirjo, serta salah satu pengikut Pangeran Diponegoro bernama Wirotani. Pada tahun 1825 Ngawi berhasil direbut dan diduduki oleh Belanda. Untuk mempertahankan kedudukan dan fungsi strategis Ngawi serta menguasai jalur perdagangan, Pemerintah Hindia Belanda membangun sebuah benteng yang selesai pada tahun 1845 yaitu Benteng Van Den Bosch'),
(108, 'Gunung Lawu', '1', 2, 'Gunung Lawu merupakan petilasan Raden Brawijaya (Raja Majapahit). Gunung Lawu awalnya adalah di bawah air lautKismis (Kisah misteri): konon gunung Lawu dulunya adalah tempat pelarian dan persembunyian. Menurut kisa banyak sekali sebenarnya kuburan-kuburan atau petilasan mayat yang terkubur di gunung Lawu. Jika ada pendaki seloyongan atau berbuat mengganggu maka akan mendapat gangguan dari penunggu gunung Lawu.Ritual: setiap malam tanggal satu suro puncaknya kunjungan orang untuk ritual/semedi'),
(109, 'Telaga Sarangan', '1', 1, 'Menurut penduduk setempat mereka sering menyebut Telaga Sarangan sebagai Telaga Pasir. Pulau yang ada di tengah telaga tersebut adalah tempat bersemayamnya roh leluhur pencipta Telaga Sarangan, yaitu Kyai Pasir dan Nyai pasir. Bisa disebut sebagai Telaga Pasir karena menurut legenda hingga sampai detik ini masih dipercayai oleh masyarakat sekitar telaga tersebut bahwa terbentuknya telaga tersebut berasal dari cerita sepasang suami istri yang bernama Kyai Pasir dan Nyai Pasir.'),
(110, 'Grebeg Suro', '5', 1, 'Sejarah diadakannya Grebeg Suro di Kabupaten Ponorogo adalah adanya kebiasaan masyarakat pada malam 1 Suro yang mengadakan tirakatan semalam suntuk dengan mengelilingi kota dan berhenti di alun-alun Ponorogo. Pada tahun 1987 Bupati Soebarkah Poetro Hadiwirjo melihat fenomena ini dan melahirkan gagasan kreatif untuk mewadahi kegiatan mereka dengan kegiatan yang mengarah pada pelestarian budaya.'),
(111, 'Festival Reog Nasional', '5', 1, 'Reog adalah salah satu kesenian budaya yang berasal dari Jawa Timur bagian barat-laut dan Ponorogo dianggap sebagai kota asal Reog yang sebenarnya. Gerbang kota Ponorogo dihiasi oleh sosok warok dan gemblak, dua sosok yang ikut tampil pada saat reog dipertunjukkan. Reog adalah salah satu budaya daerah di Indonesia yang masih sangat kental dengan hal-hal yang berbau mistik dan ilmu kebatinan yang kuat.'),
(112, 'Gunung Bayangkaki', '1', 1, 'Gunung ini memiliki keindahan alam yang luar biasa sekaligus menyimpan mitos-mitos yang berbau mistis yang masih dipercaya hingga sekarang. Bayangkaki terdiri dari empat puncak. Urutan puncak jika dilihat dari sebelah utara adalah sebagai berikut, paling timur bernama puncak atau gunung Ijo, puncak yang kedua bernama puncak atau Gunung Tuo, yang nomor tiga bernama Puncak Tumpak atau Puncak Bayangkaki kemudian yang ujung barat dinamakan puncak atau gunung Gentong.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survei`
--
ALTER TABLE `survei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` smallint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `survei`
--
ALTER TABLE `survei`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;