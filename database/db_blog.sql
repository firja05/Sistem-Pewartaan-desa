-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jun 2024 pada 12.50
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '3f0edd4a3de4375c41038e0ccf300b3b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Travel', 'travel', 'Y'),
(7, 'Nasional', 'nasional', 'Y'),
(8, 'Metro', 'metro', 'Y'),
(9, 'Pendidikan', 'pendidikan', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Ini adalah project portal berita dan artikel sederhana.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'Desanews.com', 'Desanews.com', 'Latest Indonesia and World News Today, the Latest Most Complete Daily News Regarding Politics, Economy, Travel, Technology, Automotive, ...', 'Desanews.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'N'),
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(71, 'Rekomendasi 4 Wisata Virtual untuk Study Tour', 'rekomendasi-4-wisata-virtual-untuk-study-tour', '<p>Belakangan ini, marak kasus kecelakaan saat kegiatan <a href=\"https://www.tempo.co/tag/study-tour\">study tour</a>, bahkan hingga menimbulkan korban jiwa. Kegiatan yang biasanya di luar lingkungan sekolah dengan suasana santai dan menyenangkan itu biasanya dilakukan pada musim liburan atau jelang perpisahan siswa sebelum lulus. Sering kali lokasi kegiatan berada di luar kota dengan jarak cukup jauh. </p>\r\n<p>Ada saja orang tua yang mengeluhkan soal biaya, waktu, dan akomodasi siswa selama perjalanan. Misalnya saja siswa ekonomi menengah ke bawah, tentu akan lebih memilih menyiapkan biaya pendidikan selanjutnya ketimbang dihabiskan untuk study tour dengan jarak cukup jauh bahkan hingga menyeberang pulau. Belum lagi risiko laka lantas yang membahayakan. Namun ada opsi study tour yang lebih ekonomis dan lebih aman, yaitu <a href=\"https://www.tempo.co/tag/wisata-virtual\">wisata virtual</a>. Melalui kegiatan itu, peserta bisa merasakan sensasi mengunjungi tempat menarik di luar sekolah namun tak perlu melakukan perjalanan jauh dan kehilangan esensi <em>study tour</em>. Di mana saja wisata virtual bisa dilakukan? Dilansir dari berbagai sumber, ini beberapa rekomendasinya: </p>\r\n<p>1. Piknik Virtual Bersama Komunitas Wisata Kreatif Jakarta</p>\r\n<p>Bagi siswa yang sama sekali belum menginjakkan kaki di mantan ibu kota Indonesia ini maka bisa mencoba program piknik virtual komunitas wisata kreatif Jakarta. Dilansir dari <em>kamirelawan.id</em>, program ini sudah ada sejak tahun 2017 lalu di mana para pengunjung dapat melihat tempat-tempat unik di Jakarta, kota-kota di Indonesia, bahkan hingga ke mancanegara. Tiket masuk mulai dari 25 ribu hingga 50 ribu rupiah melalui aplikasi Zoom yang dipandu oleh guide berlisensi.</p>\r\n<p>2. Museum Daring Kemendikbud</p>\r\n<p>Dilansir dari <em>kemdikbud.go.id,</em> museum virtual ini merupakan ide Menteri Pendidikan dan Kebudayaan saat pandemi COVID-19 melanda. Tidak adanya aktivitas luring membuat kunjungan museum menjadi sepi, sehingga diadakanlah museum daring dengan website resminya <em>www.museumnasional.or.id</em>. Pengunjung dapat menikmati layanan virtual 360 derajat seperti berada di tempatnya langsung. </p>\r\n<p>3. Observatorium UAD</p>\r\n<p>Universitas Ahmad Dahlan juga menyediakan layanan kunjungan virtual yang dapat diakses di <em>pastron.uad.ac.id</em> secara gratis. Kunjungan ini cocok dilakukan oleh siswa SMA yang ingin melihat gambaran fasilitas kampus perguruan tinggi. Dan tentunya dapat mengakses seluruh fasilitas virtual yang disediakan oleh Universitas Ahmad Dahlan tersebut.</p>\r\n<p>4. Kanal YouTube</p>\r\n<p>Aplikasi <a href=\"https://www.tempo.co/tag/youtube\">YouTube</a> ternyata juga dapat memberikan hiburan tambahan bagi siswa berupa akses video 360 derajat serasa di tempat tersebut. Caranya adalah silakan untuk ketik kata kunci \'Dunia Fabel 360 derajat\' maka akan ditampilkan video yang nyata dan bergerak sesuai dengan keinginan tangan. Fitur ini juga bisa dimanfaatkan oleh tenaga pengajar untuk mempermudah pemahaman siswa selama mempelajari sesuatu.</p>', 'N', 'N', 'N', 9, 'f74004ced92103459142ab21c2278279.jpg', 'Y', '2024-06-02'),
(77, 'Wujud Pengabdian Desa, Kepala Desa Harapan Melakukan Inovasi Pemerintahan Berbasis Digital', 'wujud-pengabdian-desa-kepala-desa-harapan-melakukan-inovasi-pemerintahan-berbasis-digital', '<p>Pengabdian kepada desa tercinta sudah sepatutnya dilakukan oleh setiap masyarakat yang hidup di atas tanah dan dekapan desa. Bentuk pengabdiannya pun tidak terbatas oleh status apa yang sedang dimiliki. Entah jadi pekerja, pemerintah, masyarakat biasa, dan sebagainya. Semua berhak memberikan pengabdian terbaik untuk desa.</p>\r\n<p>Begitu pula yang sedang dilakukan oleh seorang pemimpin, yaitu Kepala Desa Harapan, Ia berusaha membawa pemerintahan Desa Harapan untuk melangkah jauh kedepan dengan inovasi digital sebagai wujud pengabdian kepada masyarakat di Desa Harapan. Hal ini dilakukan atas kesadaran terhadap perkembangan digital yang semakin pesat, dan perlunya masyarakat beradaptasi dengannya.</p>\r\n<p>Ia mewujudkan pengabdian itu melalui program kemitraan dengan PT. Digital Desa dalam penggunaan layanan Digides untuk kinerja pemerintahan dan juga peningkatan perekonomian desa. Sejak menggunakan Digides, segala bentuk aktivitas pemerintahan bertransformasi ke arah yang lebih efektif dan  efisien.</p>', 'N', 'Y', 'N', 8, '9adb93cb82ef395bca41e0c5714bbd5e.jpeg', 'Y', '2024-06-02'),
(79, 'Jadwal Lengkap Pendaftaran PPDB Jawa Timur 2024 Jenjang SMA dan SMK', 'jadwal-lengkap-pendaftaran-ppdb-jawa-timur-2024-jenjang-sma-dan-smk', '<p>Pendaftaran penerimaan peserta didik baru (PPDB) jenjang sekolah menengah atas (SMA) dan sekolah menengah kejuruan (SMK) Provinsi Jawa Timur 2024 akan segera dimulai. </p>\r\n<p>Terdapat lima jalur PPDB yang dibuka, serta tahap pra-pendaftaran entry nilai rapor oleh kepala sekolah menengah pertama (SMP)/sederajat yang dilaksanakan sejak 20-25 Mei 2024. </p>', 'N', 'N', 'N', 9, 'c7bf3317ca88b8412e1f59f2ec31f5d6.jpg', 'Y', '2024-06-02'),
(81, 'Perangkat Desa Desak DPR Revisi UU No.6 Tahun 2014', 'perangkat-desa-desak-dpr-revisi-uu-no-6-tahun-2014', '<p>Massa Perangkat Desa saat melakukan aksi di depan Gedung DPR RI, Jakarta, Kamis 23 November 2023. Dalam Aksi Tersebut mereka mendesak DPR RI dan pemerintah untuk merevisi UU No. 6 Tahun 2014 Tentang Desa dan segera mengesahkannya.</p>', 'N', 'Y', 'Y', 8, 'c3e1c1478561546ef63bdcb785ed33c5.jpg', 'Y', '2024-06-02'),
(82, 'PERAN KADES DALAM PPKM COVID 19', 'peran-kades-dalam-ppkm-covid-19', '<p>ADES Jadi Ujung Tombak Dalam PPKM Darurat Bupati Jombang Nina Agustina Da’i Bachtiar meminta agar Kepala Desa se-Kabupaten Jombang untuk menjadi ujung tombak pelaksanaan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Darurat di Jombang yang berlaku sejak 3 Juli yang lalu sampai dengan tanggal 20 Juli 2021 nanti. Orang nomor satu Jombang itu meminta agar semua kepala desa se-Jombang menjadi suri teladan yang baik dengan bertindak tegas kepada warganya yang melanggar pelaksanaan PPKM Darurat Covid-19.</p>\r\n<p>Hal ini dikatakan Bupati Jombang Nina Agustina Da’i Bachtiar menyikapi adanya oknum kepala desa yang bersikap kontraproduktif terhadap pelaksanaan PPKM Darurat Covid-19.</p>\r\n<p>Terkait dengan hal itu, Bupati Nina Agustina langsung menegur dan memberi tindakan tegas kepada Kepala Desa Cikedunglor Kecamatan Cikedung yang membuat komentar yang kontraproduktif terkait dengan pelaksanaan PPKM Darurat Covid-19. Sebagaimana yang telah beredar di media sosial, terlihat Kepala Desa Cikedunglor mengabaikan pelaksanaan PPKM Darurat Covid-19.</p>\r\n<p>Atas komentarnya itu, Bupati Nina Agustina menegur Kepala Desa Cikedunglor seraya mengingatkan agar hati-hati dan bijak dalam bermedsos (Red: media sosial). “Jangan bertentangan dengan kebijakan pemerintah yang lebih di atas, terutama masalah pelaksanaan PPKM Darurat Covid-19. Ayo kita sama-sama mendukung semampunya jangan meng-upload yang kontraproduktif dengan pimpinan,” pintanya.</p>\r\n<p>Menurut orang nomor satu Jombang itu, diberlakukannya pelaksanaan PPKM Darurat Covid-19 merupakan kelanjutan dari pelaksanaan PPKM Mikro yang beberapa waktu lalu dilakukan. Dengan begitu, jelasnya, kepala desa harus menjadi ujung tombak dari pelaksanaan PPKM Darurat Covid-19, sesuai intruksi dan arahan dari pemerintah pusat.</p>\r\n<p>“Jadi memang belum banyak yang paham kalau saya bilang dari tingkat RT/RW tentang pelaksanaan PPKM Darurat, sehingga peraturan terkait PPKM Darurat dari pemerintah pusat perlu dipahami dan dibaca, jangan sampai jumlah kasus Covid-19 di Jombang semakin bertambah,” kata Bupati Nina Agustina di rumahnya, Minggu (11/7/2021).</p>\r\n<p>Bupati Nina Agustina mengakui, pelaksanaan PPKM Darurat Covid-19 dalam sektor esensial belum banyak dipahami oleh sejumlah pelaku industri di Jombang. Termasuk pemberian vaksin bagi sejumlah pekerja yang menjadi tanggung jawab perusahaan, yang sampai saat ini baru bisa dilaksanakan dengan meminta vaksin ke pemerintah daerah.</p>\r\n<p>Di tempat yang sama Asisten Daerah Ekonomi Pembangunan dan Kesejahteraan Rakyat (Ekbang dan Kesra) Maman Kostaman menjelaskan, pemerintah desa menjadi tingkatan bawah sekaligus ujung tombak dari pencegahan dan penyebaran Covid-19. Di tingkatan pemerintah desa/kelurahan juga telah diberikan sosialisasi pelaksanaan PPKM Darurat Covid-19 melalui Dinas Pemberdayaan Masyarakat dan Desa (DPMD) Kabupaten Jombang.</p>\r\n<p>Menurut Maman, salah satu bentuk sosialisasinya adalah semua unsur baik di tingkat pusat, daerah, kecamatan bahkan desa dan kelurahan bahu-membahu untuk mencegah penyebaran Covid-19 sesuai dengan tanggung jawabnya di wilayahnya masing-masing.</p>\r\n<p>“Kalau seandainya pada tanggal 20 Juli 2021 PPKM Darurat Covid-19 di Jombang berakhir namun ternyata kasus terkonfirmasi Covid-19 masih naik, mungkin bisa diperpanjang lagi. Dan ini lebih mengerikan lagi. Ekonomi masyarakat tertekan. Semua tertekan,” jelasnya.</p>\r\n<p>Karena itu Maman berpesan agar semua pihak mematuhi pelaksanaan PPKM Darurat Covid-19, serta jangan malah membikin statement yang kontra produktif karena kalau sudah begitu, sudah berada dalam sifat subkoordinasi yang artinya melawan dari pada kebijakan dari pemerintah pusat.</p>\r\n<p>Sementara itu seusai menggelar konferensi pers, Bupati Jombang Nina Agustina didampingi Asda Ekbang dan Kesra Maman Kostaman bersama Forum Koordinasi Pimpinan Kecamatan (Forkopimcam) Losarang meninjau tempat Isoman yang sudah disediakan oleh Satgas Covid-19 di Desa Pangkalan Kecamatan Losarang. (Sources DISKOMINFO Jombang)</p>', 'Y', 'Y', 'Y', 7, 'fbd8cb34deed31b6cf35c9e246de0a0d.jpg', 'Y', '2024-06-02'),
(86, 'Damainya Desa Giethoorn di Belanda yang Dijuluki Venesia dari Utara, Tak Ada Mobil dan Jalan Raya', 'damainya-desa-giethoorn-di-belanda-yang-dijuluki-venesia-dari-utara-tak-ada-mobil-dan-jalan-raya', '<p>Belanda tak selalu berisi hal-hal modern. Sebuah desa yang bernama Giethoorn, Provinsi Overijssel, menawarkan gambaran unik tentang kehidupan pedesaan Belanda yang jauh dari kesan kekinian. Bahkan mobil pun tak ada di desa ini. </p>\r\n<p>Dijuluki Venesia dari Utara, Giethoorn dikenal karena saluran airnya yang mempesona, rumah-rumah beratap jerami, dan suasana damai yang bikin pengunjung tenang. Desa ini menawarkan pengunjung pelarian yang tenang dari hiruk pikuk kehidupan kota. Dengan kanal-kanal yang menawan, rumah-rumah bersejarah, dan pemandangan yang indah, desa ini mendapat gelar sebagai salah satu desa terindah di Eropa. Wisatawan bisa menjelajahi desa dengan perahu, mencicipi masakan lokal, atau sekadar menikmati suasana damai yang tak terlupakan.</p>', 'Y', 'Y', 'N', 6, '33d950d66305aa7072fb32665d8cf9eb.jpg', 'Y', '2024-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1717324989, 1, 'Firja', 'Dolot', NULL, '0895802970934');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(39, 1, 1),
(40, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
