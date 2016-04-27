-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2016 at 05:29 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dila_taknn`
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` smallint(2) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `choice1` text NOT NULL,
  `choice2` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `survei` smallint(6) NOT NULL,
  `recommendation` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `user` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survei`
--

INSERT INTO `survei` (`id`, `date`, `user`) VALUES
(1, '2016-04-27 17:02:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `survei_detail`
--

CREATE TABLE `survei_detail` (
  `id` int(11) NOT NULL,
  `survei` smallint(6) NOT NULL,
  `dimension` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `result` smallint(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survei_detail`
--

INSERT INTO `survei_detail` (`id`, `survei`, `dimension`, `result`) VALUES
(1, 1, 'I', 53),
(2, 1, 'S', 33),
(3, 1, 'T', 60),
(4, 1, 'J', 53),
(5, 1, 'E', 47),
(6, 1, 'N', 67),
(7, 1, 'F', 47),
(8, 1, 'P', 47);

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
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `role`, `password`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 'administrator', '0192023a7bbd73250516f069df18b500'),
(2, 'user', 'user', 'user', 'user@gmail.com', 'subscriber', '6ad14ba9986e3615423dfca256d04e3f'),
(3, 'testing', 'testing', 'testing', 'test@test.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad'),
(4, 'ghaza', 'Ghaza', 'Hapsoro', 'ghaza@gmail.com', 'subscriber', '25d55ad283aa400af464c76d713c07ad');

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
-- Indexes for table `survei_detail`
--
ALTER TABLE `survei_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

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
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` smallint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `survei`
--
ALTER TABLE `survei`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `survei_detail`
--
ALTER TABLE `survei_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;