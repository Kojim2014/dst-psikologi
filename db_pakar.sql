-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Jun 2015 pada 17.04
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gangguan`
--

CREATE TABLE IF NOT EXISTS `tb_gangguan` (
  `id_gangguan` varchar(10) NOT NULL,
  `gangguan` text,
  `penjelasan` text,
  `penyebab` text,
  `pengobatan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gangguan`
--

INSERT INTO `tb_gangguan` (`id_gangguan`, `gangguan`, `penjelasan`, `penyebab`, `pengobatan`) VALUES
('G_01', 'Histeria', 'Histeria adalah gangguan mental yang timbul dari kecemasan intens. Hal ini ditandai dengan kurangnya kontrol atas tindakan dan emosi, dan dengan tiba-tiba kejang ketidaksadaran dengan ledakan emosional. Hal ini sering kali merupakan akibat konflik yang ditekan dalam orang. Penyakit ini muncul pada kedua jenis kelamin, tetapi jauh lebih sering terjadi pada wanita muda antara empat belas dan dua puluh lima tahun.\r\n\r\n', 'Penyebab paling umum histeria represi seksual, menyimpang kebiasaan berpikir, dan kemalasan. Keturunan memainkan peran yang penting dalam sebab-akibat. Latar belakang keluarga gugup dan salah pelatihan emosional ketika muda adalah predisposisi penyebab. Situasi emosional dapat mental, ketegangan, stres, takut, khawatir, depresi, traumatism, masturbasi, dan penyakit berkepanjangan.\r\n\r\n', 'Buah berry hitam dianggap sebagai obat rumah yang efektif untuk histeria. Tiga kilogram buah ini dan segenggam garam harus diletakkan dalam kendi yang penuh dengan kendi water.The harus disimpan di bawah sinar matahari selama seminggu. Seorang perempuan menderita histeria 300 gm harus mengambil buah-buahan ini pada perut kosong, dan minum secangkir air dari kendi. Pada hari dia mulai perawatan ini, 3 Kg lebih banyak buah-buahan, dicampur dengan segenggam garam, harus disimpan dalam kendi yang lain dipenuhi dengan air, sehingga ketika isi kendi pertama selesai, isi yang lain akan siap untuk digunakan. Perawatan ini harus dilanjutkan selama dua minggu.\r\n</p><p>\r\nMadu dianggap sebagai efektif lain untuk histeria. Dianjurkan untuk mengambil satu sendok madu setiap hari\r\nPerawatan histeria menggunakan labu Botol\r\n<br>\r\nBotol labu berguna sebagai aplikasi eksternal dalam histeria. Pulp Macerated segar sayuran ini harus diterapkan di atas kepala pasien dalam pengobatan penyakit ini.\r\n'),
('G_02', 'Hipokondria', 'Hipokondria adalah penyakit mental kronis di mana seseorang takut terdiagnosis mengalami penyakit serius yang mengancam jiwa. Keadaan murung dianggap sebagai gangguan psikosomatik, yang berarti itu gangguan psikologis dengan gejala fisik. Namun, beberapa peneliti percaya hipokondria adalah bentuk obsesif-kompulsif.\r\n\r\nPenderita penyakit ini merasa dirinya mengalami penyakit tertentu dengan gejala yang dialaminya. Misalnya, Anda mungkin percaya bahwa tubuh Anda sesekali nyeri berarti Anda merasa terkena kanker atau Anda lupa meletakkan  mana kunci mobil berarti Anda berkayikanan bahwa Anda mengalami penyakit Alzheimer. Keyakinan yang mungkin keliru itu kemudian mmembuat sedih penderita dam takut untuk ke berkonsultasi ke dokter.\r\n', 'Penyebab hipokondria tidak diketahui pasti, namun diperkirakan bahwa kepribadian, pengalaman hidup, pola asuh dan sifat-sifat bawaan turun berperan.', ' Terapi telah menjadi solusi alternative bagi penyembuhan gangguan hipokondria ini.'),
('G_03', 'Psikosomatis', 'Gangguan psikosomatis atau somatisasi adalah gangguan psikis yang menyebabkan gangguan fisik. Pendek kata, psikosomatik adalah penyakit fisik yang disebabkan oleh pikiran negatif dan/atau masalah emosi. Masalah emosi itu antara lain rasa berdosa, merasa punya penyakit, stress, depresi, kecewa, kecemasan atau masalah emosi negatif lainnya. Gangguan ini tidak hanya terjadi pada orang dewasa, anak-anak pun bisa mengalaminya.', 'Penyebab umum dari psikosomatis adalah stres', 'Hipnoterapi, satu-satunya solusi yang paling efektif dan efisien untuk menyembuhkan psikosomatis. Bagi hipnoterapist, menyembuhkan psikosomatis bukanlah hal yang rumit. Pasien akan dibimbing memasuki kondisi somnambulis (kondisi trance hipnotis yang dalam) untuk menemukan akar masalah dan kemudian membereskannya.'),
('G_04', 'Psikoneurosis', 'Psikoneurosis atau yang lebih singkat disebut neurosis merupakan satu penyakit mental yag lunak, dicirikan dengan tanda – tanda wawasan yang tidak lengkap mengenai sifat – sifat dari kesukarannya, konflik, reaksi kecemasan, kerusakan parsial atau sebagian dari kepribadiannya dan seringkali tetapi tidak selalu perlu ada, disertai fobia, gagguan pencernaan, dan tingkah laku obsesif-kompulsif (Chaplin, 2009: 327)\r\n</p><p>Menurut Andi Mappiare ( 2006: 221) neurosis adalah mengacu pada kekacauan pribadi ringan disebabkan oleh konflik dan disertai pula perilaku tidak rasional, hambatan, dan kecemasan, dalam pandangan teori behavior, neurosis adalah perilaku tidak adaptif yang dipelajari.\r\n</p><p>Neurosis adalah suatu kelainan mental, hanya memberi pengaruh pada sebagian kepribadian, lebih ringan dari psikosis, dan seringkali ditandai dengan keadaan cemas yang kronis, gangguan – gangguan pada indera dan motorik, hambatan emosi, kurang perhatian terhadap lingkungan, dan kurang memiliki energi fisik (Dali Gulo, dalam Deekece, 2012).\r\n</p><p>Psikoneurosis adalah gangguan yang terjadi hanya pada sebagian kepribadian.  Karena gangguan hanya pada sebagian kepribadian, maka yang bersangkutan masih bisa melakukan pekerjaan/aktivitas sehai-hari. Sebenarnya psikoneurosis bukanah suatu penyakit, yang bersangkutan masih dapat kita sebut normal.Psikoneurosis pada hakikatnya bukanlah suatu penyakit. Orang-orang yang menderita psikoneurosis pada umumnya dapat kita golongkan sebagai orang yang normal. Yang diderita oleh psikoneurosis adalah ketegangan pribadi yang terus menerus. Orang tersebut tidak dapat mengatasi konfliknya sehingga ketegangan tidak kunjung reda dan akhirnya menjadi neurosis. Psikoneurosis dapat disebabkan oleh faktor-faktor yang datang dari luar maupun yang datang dari dalam diri sendiri.\r\n</p><p>Jadi, psikoneurosis merupakan gangguan yang terjadi hanya pada sebagian dari kepribadian, sehingga orang yang mengalaminya masih bisa melakuka pekerjaan – pekerjaan biasa sehari – hari atau masih bisa belajar dan jarang memerlukan perawatan khusus di rumah sakit atau di tempat – tempat tertentu.\r\n', '<ol><li>Tekanan – tekanan sosial yang berat dan tekana kultural yang sangat kuat, yang menyebabkan ketakutan – kecemasan dan ketegangan – ketegangan dalam batin sendiri yag kronis dan berat, sehingga individu yang bersangkutan mengalami kepatahan mental</li>\r\n<li>Individu mengalami banyak frustasi, konflik – konflik emosional, dan konflik internal yang serius, yang sudah dimulai sejak masa kanak – kanak</li>\r\n<li>Individu pada umumnya menjadi tidak rasional sebab sering memakai defence mekanisme yang negatif dan lemahlah pertahanan diri secara fisik dan mental</li>\r\n<li>Pribadinya sangat labil, tidak imbang, dan kemauannya sangat lemah.</li></ol>', '<ul>\r\n<li>Psikoterapi suportif, upaya untuk mengajar penderita memahami apa yang sebenarnya dia alami beserta psikodinamikanya.</li>\r\n<li>Terapi perilaku dengan deconditioning, yaitu setiap kali penderita merasa takut dia diberi rangsang yang tidak menyenagkan.</li>\r\n<li>Terapi kelompok.</li>\r\n<li>Manipulasi lingkungan.</li>\r\n</ul>'),
('G_05', 'Post Power Syndrome', 'Post-power syndrome, adalah gejala yang terjadi di mana penderita hidup dalam bayang-bayang kebesaran masa lalunya (karirnya, kecantikannya, ketampanannya, kecerdasannya, atau hal yang lain), dan seakan-akan tidak bisa memandang realita yang ada saat ini. Seperti yang terjadi pada kebanyakan orang pada usia mendekati pensiun. Selalu ingin mengungkapkan betapa begitu bangga akan masa lalunya yang dilaluinya dengan jerih payah yang luar biasa.', 'Ada banyak faktor yang menyebabkan terjadinya post-power syndrome. Pensiun dini dan PHK adalah salah satu dari faktor tersebut. Bila orang yang mendapatkan pensiun dini tidak bisa menerima keadaan bahwa tenaganya sudah tidak dipakai lagi, walaupun menurutnya dirinya masih bisa memberi kontribusi yang signifikan kepada perusahaan, post-power syndrom akan dengan mudah menyerang. Apalagi bila ternyata usianya sudah termasuk usia kurang produktif dan ditolak ketika melamar di perusahaan lain, post-power syndrom yang menyerangnya akan semakin parah.\r\n</p><p>\r\nKejadian traumatik juga menjadi salah satu penyebab terjadinya post-power syndrome. Misalnya kecelakaan yang dialami oleh seorang pelari, yang menyebabkan kakinya harus diamputasi. Bila dia tidak mampu menerima keadaan yang dialaminya, dia akan mengalami post-power syndrome. Dan jika terus berlarut-larut, tidak mustahil gangguan jiwa yang lebih berat akan dideritanya.\r\n</p><p>\r\nPost-power syndrome hampir selalu dialami terutama orang yang sudah lanjut usia dan pensiun dari pekerjaannya. Hanya saja banyak orang yang berhasil melalui fase ini dengan cepat dan dapat menerima kenyataan dengan hati yang lapang. Tetapi pada kasus-kasus tertentu, dimana seseorang tidak mampu menerima kenyataan yang ada, ditambah dengan tuntutan hidup yang terus mendesak, dan dirinya adalah satu-satunya penopang hidup keluarga, resiko terjadinya post-power syndrome yang berat semakin besar.', 'Bila seorang penderita post-power syndrome dapat menemukan aktualisasi diri yang baru, hal itu akan sangat menolong baginya. Misalnya seorang manajer yang terkena PHK, tetapi bisa beraktualisasi diri di bisnis baru yang dirintisnya (agrobisnis misalnya), ia akan terhindar dari resiko terserang post-power syndrome.\r\n</p><p>\r\nDi samping itu, dukungan lingkungan terdekat, dalam hal ini keluarga, dan kematangan emosi seseorang sangat berpengaruh pada terlewatinya fase post-power syndrome ini. Seseorang yang bisa menerima kenyataan dan keberadaannya dengan baik akan lebih mampu melewati fase ini dibanding dengan seseorang yang memiliki konflik emosi.\r\n</p><p>\r\nDukungan dan pengertian dari orang-orang tercinta sangat membantu penderita. Bila penderita melihat bahwa orang-orang yang dicintainya memahami dan mengerti tentang keadaan dirinya, atau ketidak mampuannya mencari nafkah, ia akan lebih bisa menerima keadaannya dan lebih mampu berpikir secara dingin. Hal itu akan mengembalikan kreativitas dan produktifitasnya, meskipun tidak sehebat dulu. Akan sangat berbeda hasilnya jika keluarga malah mengejek dan selalu menyindirnya, menggerutu, bahkan mengolok-oloknya.'),
('G_06', 'peptic ulcer', 'Tukak lambung adalah luka atau lesi yang terjadi pada lapisan mukosa, submukosa, muskularis dari lambung, pada usus duabelas jari dan pada esofagus. ', '<ul><li>Stres Psikologis</li>\r\n<li>Diet</li>\r\n<li>Penyakit Lain</li></ul>', 'Terapi, obat dan Operasi'),
('G_07', 'Phobia', 'fobia (gangguan anxietas fobik) adalah rasa ketakutan yang berlebihan pada sesuatu hal atau fenomena. Pada orang normal yang mengalami perasaan takut atau ngeri akan berusaha menghadapi dan melindungi diri sendiri. Namun pada pengidap fobia, perasaan takut/ngeri tersebut akan menguasai dirinya. Sehingga terkadang tanpa disadarinya bisa menyakiti diri sendiri atau kehilangan kesadaran/pengendalian diri.\r\n<p></p>Sebenarnya dalam keadaan normal setiap orang memiliki kemampuan mengendalikan rasa takut. Namun bila seseorang terpapar / berinteraksi terus menerus dengan subjek fobia, maka hal tersebut berpotensi menyebabkan terjadinya fiksasi. ', ' fobia lebih sering dipengaruhi oleh budaya dan dipicu oleh hal-hal yang terjadi dalam hidup tapi faktor terbesar timbulnya fobia dalam diri seseorang adalah sejarah keluarga. \r\n</p><p>Seseorang yang memiliki sejarah keluarga dengan fobia tiga kali lebih beresiko mengidap fobia dibandingkan seseorang yang anggota keluarganya tidak memiliki sejarah fobia. ', 'Cara terbaik yang dapat digunakan untuk mengobati seseorang yang menderita fobia adalah menciptakan ulang keadaan yang menyerupai apa yang ditakutkan seseorang dalam fobianya. Dengan cara "mundur kembali"/regresi (past life regression) ini, seorang pengidap fobia akan merasa ‘nyaman’ dan tenang. Kecemasan yang tidak diatasi seawal mungkin akan berpotensi menimbulkan akumulasi emosi negatif yang secara terus menerus ditekan kembali ke bawah sadar (represi). Jika hal ini terjadi, maka tidak menutup kemungkinan akan ada ‘pola’ sejenis yang dapat menambah ke-fobia-annya. Seiring waktu, fobia ini dapat dikurangi dengan rasa percaya diri yang timbul dari perasaan ‘nyaman’ dan tenang tadi.\r\n</p><p>\r\nTidak hanya menciptakan keadaan ulang yang serupa, menghilangkan fobia pada diri seseorang dapat dilakukan melalui terapi komunikasi. Dengan begitu, seseorang yang menderita fobia dapat bertukar pikiran dan menyampaikan apa yang ada dalam pikirannya.'),
('G_08', 'Neurasthenia', 'Neurasthenia  Adalah salah satu gangguan jiwa yang sudah lama dikenal orang berbagai penyakit saraf, yang dahulu disangka terjadi karena lemahnuya saraf, karena itu pengobatan-pengobatan diwaktu itu dilakukan dengan jalan menyuruh pasien istirahat di tempat tidur, jauh dari keributan dan bahaya, disamping memberikan obat-obat penguat dan penenang.', '<ul><li>Terlalu lama menekan perasaan, pertentangan batin, kecemasan, terhalangnya keinginan-keinginan dan kebutuhan-kebutuhan.</li>\r\n<li>Terlalu banyak mengalami kegagalan yang menyebabkan kegelisahan dan tertekannya perasaan.</li>\r\n<li>Kepribadian premorbid seorang dengan nerosis neurasthenia ialah terus menerus merasa tidak puas dan merasa ditolak atau tidak diterima.</li></ul>', 'Upaya membantu penyembuahn penderita neurasthenia dapat dilakukan dengan teknik terapi sebagai berikut\r\n<br>\r\n<ul><li>Psikoterapi supportif</li>\r\n<li>Terapi olah raga</li>\r\n<li>Farmakoterapi</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE IF NOT EXISTS `tb_gejala` (
  `id_gejala` varchar(10) NOT NULL,
  `nama` text,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `nama`, `bobot`) VALUES
('C_001', 'egoistis, selfish', 0.7),
('C_002', 'selalu menginginkan perhatian dan belas-kasihan sebanyak-banyaknya di samping mengharapkan pujian dari orang lain yang ada di sekitarnya.', 0.8),
('C_003', 'Selalu merasa tidak bahagia, sangat sugestibel dan sensitif sekali terhadap opini orang lain.', 0.4),
('C_004', 'Emosinya sangat kuat dan semua penilaiannya sangat ditentukan oleh rasa suka dan tidak suka yang kuat.', 0.5),
('C_005', 'Memiliki kecenderungan untuk melarikan diri dari kesulitan hidup ke hal-hal yang lebih menyenangkan.', 0.6),
('C_006', 'Susah tidur malam', 0.5),
('C_007', 'selalu berfikiran terhadap penyakit penyakit yang sebenarnya tidak ada', 0.7),
('C_008', 'sulit berkonsentrasi', 0.65),
('C_009', 'paranoid', 0.76),
('C_010', 'Tidak akan pernah percaya dari hasil tes dokter', 0.8),
('C_011', 'ketakutan mengalami penyakit serius ', 0.7),
('C_012', 'Pegal-pegal/Nyeri di bagian tubuh tertentu', 0.57),
('C_013', 'Mual,muntah, kembung dan perut tidak enak', 0.6),
('C_014', 'Sakit kepala', 0.7),
('C_015', 'Jantung berdebar debar', 0.5),
('C_016', 'Sering merasa cemas', 0.66),
('C_017', 'Wawasan yang tak lengkap mengenai sifat-sifat dan kesukarannya;', 0.8),
('C_018', 'Mengalami konflik batin;', 0.7),
('C_019', 'Adanya kerusakan parsial pada aspek-aspek kepribadian.', 0.7),
('C_020', 'lebih suka bercerita mengenang masa lalunya yang penuh kejayaan ', 0.7),
('C_021', 'menjadi orang yang sedemikian menutup diri dari lingkungannya ', 0.7),
('C_022', 'pemurung dan mudah tersinggung', 0.7),
('C_023', 'terlalu bergantung pada orang lain', 0.7),
('C_024', 'sering bersifat bermusuhan', 0.7),
('C_025', 'mengingkari kebutuhan biologisnya', 0.7),
('C_026', 'berusaha menekan agresifitas', 0.7),
('C_027', 'Perasaan panik yang tidak terkendali saat berhadapan dengan subjek phobia (sumber ketakutan)', 0.7),
('C_028', 'Melakukan berbagai cara untuk menghindari subjek phobia', 0.7),
('C_029', 'Hilangnya kemampuan berpikir realistis dan membayangkan berbagai hal buruk yang akan terjadi', 0.7),
('C_030', 'Sesak napas', 0.7),
('C_031', 'Tubuh gemetar', 0.7),
('C_032', 'Kewaspadaan berlebih (overt alertness)', 0.7),
('C_033', 'Gelisah', 0.7),
('C_034', 'takut mati', 0.7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hitung`
--

CREATE TABLE IF NOT EXISTS `tb_hitung` (
`id` int(11) NOT NULL,
  `M` int(11) NOT NULL,
  `himpunan` text NOT NULL,
  `nilai` float NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rule`
--

CREATE TABLE IF NOT EXISTS `tb_rule` (
`id` int(10) NOT NULL,
  `id_gejala` varchar(10) DEFAULT NULL,
  `id_gangguan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `id_gejala`, `id_gangguan`) VALUES
(1, 'C_001', 'G_01'),
(2, 'C_002', 'G_01'),
(3, 'C_003', 'G_01'),
(4, 'C_004', 'G_01'),
(5, 'C_005', 'G_01'),
(6, 'C_006', 'G_02'),
(7, 'C_007', 'G_02'),
(8, 'C_008', 'G_02'),
(9, 'C_009', 'G_02'),
(10, 'C_010', 'G_02'),
(11, 'C_011', 'G_02'),
(12, 'C_016', 'G_02'),
(13, 'C_012', 'G_03'),
(14, 'C_013', 'G_03'),
(15, 'C_014', 'G_03'),
(16, 'C_015', 'G_03'),
(17, 'C_016', 'G_03'),
(18, 'C_014', 'G_04'),
(19, 'C_016', 'G_04'),
(20, 'C_017', 'G_04'),
(21, 'C_018', 'G_04'),
(22, 'C_019', 'G_04'),
(23, 'C_020', 'G_05'),
(24, 'C_021', 'G_05'),
(25, 'C_022', 'G_05'),
(26, 'C_023', 'G_06'),
(27, 'C_024', 'G_06'),
(28, 'C_025', 'G_06'),
(29, 'C_026', 'G_06'),
(30, 'C_013', 'G_07'),
(31, 'C_014', 'G_07'),
(32, 'C_015', 'G_07'),
(33, 'C_027', 'G_07'),
(34, 'C_028', 'G_07'),
(35, 'C_029', 'G_07'),
(36, 'C_030', 'G_07'),
(37, 'C_031', 'G_07'),
(38, 'C_032', 'G_07'),
(39, 'C_014', 'G_08'),
(40, 'C_006', 'G_08'),
(41, 'C_033', 'G_08'),
(42, 'C_034', 'G_08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gangguan`
--
ALTER TABLE `tb_gangguan`
 ADD PRIMARY KEY (`id_gangguan`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
 ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tb_hitung`
--
ALTER TABLE `tb_hitung`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hitung`
--
ALTER TABLE `tb_hitung`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
