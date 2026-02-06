-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 103.144.46.211:3306
-- Generation Time: Feb 02, 2026 at 04:08 PM
-- Server version: 8.0.44-0ubuntu0.22.04.2
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stg-cbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `jawaban_id` bigint UNSIGNED NOT NULL,
  `jawaban_soal_id` bigint UNSIGNED NOT NULL,
  `jawaban_detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `jawaban_benar` tinyint(1) NOT NULL DEFAULT '0',
  `jawaban_poin` int DEFAULT NULL,
  `jawaban_aktif` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`jawaban_id`, `jawaban_soal_id`, `jawaban_detail`, `jawaban_benar`, `jawaban_poin`, `jawaban_aktif`, `deleted_at`) VALUES
(32480, 7484, 'Jawaban Salah statusnya 0', 0, NULL, 1, NULL),
(32481, 7484, 'Jawaban Benar statusnya 1', 1, NULL, 1, NULL),
(32482, 7484, 'Jawaban Salah statusnya 0', 0, NULL, 1, NULL),
(32483, 7484, 'Jawaban Salah statusnya 0', 0, NULL, 1, NULL),
(32484, 7484, 'Jawaban Salah statusnya 0', 0, NULL, 1, NULL),
(32485, 7495, 'Ketuhanan', 0, NULL, 1, NULL),
(32486, 7495, 'Kemanusiaan', 1, NULL, 1, NULL),
(32487, 7495, 'Persatuan', 0, NULL, 1, NULL),
(32488, 7495, 'Keadilan', 0, NULL, 1, NULL),
(32489, 7496, 'Menerima hasil musyawarah dengan lapang dada', 0, NULL, 1, NULL),
(32490, 7496, 'Memaksakan kehendak dalam musyawarah', 1, NULL, 1, NULL),
(32491, 7496, 'Melaksanakan hasil musyawarah dengan terpaksa', 0, NULL, 1, NULL),
(32492, 7496, 'Tidak ada itikad baik dalam bermusyawarah', 0, NULL, 1, NULL),
(32493, 7497, 'Pancasila mengandung nilai yang baik', 0, NULL, 1, NULL),
(32494, 7497, 'Pancasila berasal dari bangsa Indonesia', 0, NULL, 1, NULL),
(32495, 7497, 'Pancasila saling berhubungan', 1, NULL, 1, NULL),
(32496, 7497, 'Penerapan Pancasila mudah dipahami bangsa lain', 0, NULL, 1, NULL),
(32497, 7498, 'Menyebarkan hoaks dan informasi palsu', 0, NULL, 1, NULL),
(32498, 7498, 'Menjaga dan mengembangkan budaya gotong royong', 1, NULL, 1, NULL),
(32499, 7498, 'Mengabaikan nilai-nilai kebhinekaan', 0, NULL, 1, NULL),
(32500, 7498, 'Menolong sesama', 0, NULL, 1, NULL),
(32501, 7499, 'Garuda Pancasila', 0, NULL, 1, NULL),
(32502, 7499, 'Bhinneka Tunggal Ika', 0, NULL, 1, NULL),
(32503, 7499, 'Tut Wuri Handayani', 1, NULL, 1, NULL),
(32504, 7499, 'Sekali Merdeka Tetap Merdeka', 0, NULL, 1, NULL),
(32505, 7500, 'Membangun persaudaraan tanpa memandang suku, agama, ras, dan golongan', 0, NULL, 1, NULL),
(32506, 7500, 'Mengutamakan kepentingan pribadi di atas kepentingan bersama', 1, NULL, 1, NULL),
(32507, 7500, 'Menyebarkan berita bohong yang memecah belah persatuan', 0, NULL, 1, NULL),
(32508, 7500, 'Menolak bekerja sama dengan orang yang berbeda agama', 0, NULL, 1, NULL),
(32509, 7501, 'Membangun solidaritas dan persatuan di antara berbagai suku, agama, dan budaya', 0, NULL, 1, NULL),
(32510, 7501, 'Menghilangkan perbedaan di antara masyarakat', 0, NULL, 1, NULL),
(32511, 7501, 'Menjadi dasar untuk mencapai kebahagiaan pribadi', 1, NULL, 1, NULL),
(32512, 7501, 'Menjadikan bangsa yg kuat', 0, NULL, 1, NULL),
(32513, 7502, 'Ketuhanan Yang Maha Esa', 0, NULL, 1, NULL),
(32514, 7502, 'Persatuan Indonesia', 0, NULL, 1, NULL),
(32515, 7502, 'Keadilan Sosial bagi Seluruh Rakyat Indonesia', 0, NULL, 1, NULL),
(32516, 7502, 'Masyarakat yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan perwakila', 1, NULL, 1, NULL),
(32517, 7503, 'Ke- 4', 0, NULL, 1, NULL),
(32518, 7503, 'Ke- 3', 1, NULL, 1, NULL),
(32519, 7503, 'Ke- 2', 0, NULL, 1, NULL),
(32520, 7503, 'Ke- 1', 0, NULL, 1, NULL),
(32521, 7504, 'Latin', 0, NULL, 1, NULL),
(32522, 7504, 'Jawa Kuno', 0, NULL, 1, NULL),
(32523, 7504, 'Sanskerta', 1, NULL, 1, NULL),
(32524, 7504, 'Yunani', 0, NULL, 1, NULL),
(32525, 7505, 'Sebagai alat perdagangan', 0, NULL, 1, NULL),
(32526, 7505, 'Sebagai sumber hukum tertinggi', 0, NULL, 1, NULL),
(32527, 7505, 'Sebagai dasar negara', 1, NULL, 1, NULL),
(32528, 7505, 'Sebagai pedoman hidup masyarakat', 0, NULL, 1, NULL),
(32529, 7506, 'Ketuhanan Yang Maha Esa', 0, NULL, 1, NULL),
(32530, 7506, 'Persatuan Indonesia', 0, NULL, 1, NULL),
(32531, 7506, 'Kemanusiaan yang adil dan beradab', 1, NULL, 1, NULL),
(32532, 7506, 'Keadilan social bagi seluruhrakyat indonesia', 0, NULL, 1, NULL),
(32533, 7507, 'Mahkamah Agung', 0, NULL, 1, NULL),
(32534, 7507, 'DPR', 1, NULL, 1, NULL),
(32535, 7507, 'KPK', 0, NULL, 1, NULL),
(32536, 7507, 'Presiden', 0, NULL, 1, NULL),
(32537, 7508, 'Hak untuk menjadi pejabat', 0, NULL, 1, NULL),
(32538, 7508, 'Hak untuk mendapatkan pendidikan', 1, NULL, 1, NULL),
(32539, 7508, 'Hak untuk memimpin negara', 0, NULL, 1, NULL),
(32540, 7508, 'Hak untuk menjadi pengusaha', 0, NULL, 1, NULL),
(32541, 7509, 'Menuntut hak secara terus-menerus', 0, NULL, 1, NULL),
(32542, 7509, 'Membayar pajak tepat waktu', 0, NULL, 1, NULL),
(32543, 7509, 'Menolak aturan pemerintah', 1, NULL, 1, NULL),
(32544, 7509, 'Menghindari kegiatan sosial', 0, NULL, 1, NULL),
(32545, 7510, 'Menjadi negara adidaya', 0, NULL, 1, NULL),
(32546, 7510, 'Mewujudkan masyarakat kapitalis', 0, NULL, 1, NULL),
(32547, 7510, 'Melindungi segenap bangsa Indonesia', 1, NULL, 1, NULL),
(32548, 7510, 'Menguasai negara lain', 0, NULL, 1, NULL),
(32549, 7511, '3 tahun', 0, NULL, 1, NULL),
(32550, 7511, '4 tahun', 0, NULL, 1, NULL),
(32551, 7511, '5 tahun', 1, NULL, 1, NULL),
(32552, 7511, '6 tahun', 0, NULL, 1, NULL),
(32553, 7512, 'Mahkamah Agung', 0, NULL, 1, NULL),
(32554, 7512, 'DPR', 1, NULL, 1, NULL),
(32555, 7512, 'KPK', 0, NULL, 1, NULL),
(32556, 7512, 'Presiden', 0, NULL, 1, NULL),
(32557, 7513, 'Hak untuk menjadi pejabat', 0, NULL, 1, NULL),
(32558, 7513, 'Hak untuk mendapatkan pendidikan', 1, NULL, 1, NULL),
(32559, 7513, 'Hak untuk memimpin negara', 0, NULL, 1, NULL),
(32560, 7513, 'Hak untuk menjadi pengusaha', 0, NULL, 1, NULL),
(32561, 7514, 'Menuntut hak secara terus-menerus', 0, NULL, 1, NULL),
(32562, 7514, 'Membayar pajak tepat waktu', 1, NULL, 1, NULL),
(32563, 7514, 'Menolak aturan pemerintah', 0, NULL, 1, NULL),
(32564, 7514, 'Menghindari kegiatan sosial', 0, NULL, 1, NULL),
(32565, 7515, 'Menjadi negara adidaya', 0, NULL, 1, NULL),
(32566, 7515, 'Mewujudkan masyarakat kapitalis', 0, NULL, 1, NULL),
(32567, 7515, 'Melindungi segenap bangsa Indonesia', 1, NULL, 1, NULL),
(32568, 7515, 'Menguasai negara lain', 0, NULL, 1, NULL),
(32569, 7516, '3 tahun', 0, NULL, 1, NULL),
(32570, 7516, '4 tahun', 0, NULL, 1, NULL),
(32571, 7516, '5 tahun', 1, NULL, 1, NULL),
(32572, 7516, '6 tahun', 0, NULL, 1, NULL),
(32573, 7517, 'Ketuhanan Yang Maha Esa', 0, NULL, 1, NULL),
(32574, 7517, 'Persatuan Indonesia', 0, NULL, 1, NULL),
(32575, 7517, 'Kemanusiaan yang adil dan beradab', 1, NULL, 1, NULL),
(32576, 7517, 'Keadilan social bagi seluruhrakyat indonesia', 0, NULL, 1, NULL),
(32577, 7518, 'Latin', 0, NULL, 1, NULL),
(32578, 7518, 'Jawa Kuno', 0, NULL, 1, NULL),
(32579, 7518, 'Sanskerta', 1, NULL, 1, NULL),
(32580, 7518, 'Yunani', 0, NULL, 1, NULL),
(32581, 7519, 'Ketuhanan Yang Maha Esa', 0, NULL, 1, NULL),
(32582, 7519, 'Persatuan Indonesia', 1, NULL, 1, NULL),
(32583, 7519, 'Keadilan Sosial bagi Seluruh Rakyat Indonesia', 0, NULL, 1, NULL),
(32584, 7519, 'Masyarakat yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan perwakila', 0, NULL, 1, NULL),
(32585, 7520, 'Membangun solidaritas dan persatuan di antara berbagai suku, agama, dan budaya', 1, NULL, 1, NULL),
(32586, 7520, 'Menghilangkan perbedaan di antara masyarakat', 0, NULL, 1, NULL),
(32587, 7520, 'Menjadi dasar untuk mencapai kebahagiaan pribadi', 0, NULL, 1, NULL),
(32588, 7520, 'Menjadikan bangsa yg kuat', 0, NULL, 1, NULL),
(32589, 7521, 'Ketuhanan', 0, NULL, 1, NULL),
(32590, 7521, 'Kemanusiaan', 0, NULL, 1, NULL),
(32591, 7521, 'Persatuan', 0, NULL, 1, NULL),
(32592, 7521, 'Keadilan', 1, NULL, 1, NULL),
(32593, 7522, 'Ketuhanan', 0, NULL, 1, NULL),
(32594, 7522, 'Kemanusiaan', 0, NULL, 1, NULL),
(32595, 7522, 'Persatuan', 0, NULL, 1, NULL),
(32596, 7522, 'Keadilan', 1, NULL, 1, NULL),
(32597, 7523, 'Hak untuk menjadi pejabat', 0, NULL, 1, NULL),
(32598, 7523, 'Hak untuk mendapatkan pendidikan', 1, NULL, 1, NULL),
(32599, 7523, 'Hak untuk memimpin negara', 0, NULL, 1, NULL),
(32600, 7523, 'Hak untuk menjadi pengusaha', 0, NULL, 1, NULL),
(32601, 7524, 'Menuntut hak secara terus-menerus', 0, NULL, 1, NULL),
(32602, 7524, 'Membayar pajak tepat waktu', 1, NULL, 1, NULL),
(32603, 7524, 'Menolak aturan pemerintah', 0, NULL, 1, NULL),
(32604, 7524, 'Menghindari kegiatan sosial', 0, NULL, 1, NULL),
(32605, 7525, 'Pintar dan sombong', 0, NULL, 1, NULL),
(32606, 7525, 'Rajin dan sombong', 0, NULL, 1, NULL),
(32607, 7525, 'Pintar dan suka membantu', 1, NULL, 1, NULL),
(32608, 7525, 'Malas dan baik hati', 0, NULL, 1, NULL),
(32609, 7526, 'Rajin belajar untuk meraih cita-cita', 1, NULL, 1, NULL),
(32610, 7526, 'Bermain bersama teman-teman', 0, NULL, 1, NULL),
(32611, 7526, 'Menghargai waktu bermain', 0, NULL, 1, NULL),
(32612, 7526, 'Berteman dengan siapa saja', 0, NULL, 1, NULL),
(32613, 7527, 'Surplus', 0, NULL, 1, NULL),
(32614, 7527, 'Kekurangan', 1, NULL, 1, NULL),
(32615, 7527, 'Kelebihan', 0, NULL, 1, NULL),
(32616, 7527, 'Modal', 0, NULL, 1, NULL),
(32617, 7528, '1', 0, NULL, 1, NULL),
(32618, 7528, '2', 0, NULL, 1, NULL),
(32619, 7528, '3', 1, NULL, 1, NULL),
(32620, 7528, '4', 0, NULL, 1, NULL),
(32621, 7529, 'Andin Tarumanegara; Bandung, 24 Juni 2003; Jalan&nbsp; &nbsp;Anggrek Raya No. 13-B, Klaten, Jawa Tengah; Perempuan', 0, NULL, 1, NULL),
(32622, 7529, 'Andin Tarumanegara; Bandung, 24 Juni 2003; Jalan Anggrek Raya 13-B, Bandung; Perempuan', 0, NULL, 1, NULL),
(32623, 7529, 'Andin Tarumanegara; Jawa Tengah, 24 Juni 2003; Jalan Anggrek Raya 13B, Klaten, Jawa Tengah; Laki-laki', 0, NULL, 1, NULL),
(32624, 7529, 'Andin Tarumanegara; Klaten, 24 Juni 2003; Jalan Anggrek Raya Nomor 13-B, Bandung; Perempuan', 1, NULL, 1, NULL),
(32625, 7530, 'Surat dinas', 1, NULL, 1, NULL),
(32626, 7530, 'Surat cinta', 0, NULL, 1, NULL),
(32627, 7530, 'Surat pribadi', 0, NULL, 1, NULL),
(32628, 7530, 'Surat izin', 0, NULL, 1, NULL),
(32629, 7531, '4 - 1 - 2 - 3 – 5', 0, NULL, 1, NULL),
(32630, 7531, '1 - 4 - 2 - 3 – 5', 0, NULL, 1, NULL),
(32631, 7531, '4 - 2 - 1 - 3 - 5', 0, NULL, 1, NULL),
(32632, 7531, '1 - 2 - 4 - 3 - 5', 0, NULL, 1, NULL),
(32633, 7532, 'Mengundang Kepala Sekolah untuk datang ke acara penyuluhan kesehatan', 0, NULL, 1, NULL),
(32634, 7532, 'Meminta izin untuk mengadakan penyuluhan kesehatan di SDN 006 Galang', 1, NULL, 1, NULL),
(32635, 7532, 'Memberikan informasi tentang pentingnya kesehatan gigi dan mulut', 0, NULL, 1, NULL),
(32636, 7532, 'Mengajak siswa SDN 006 Galang untuk menjaga kesehatan gigi dan mulut', 0, NULL, 1, NULL),
(32637, 7533, 'siswa gmail.com', 0, NULL, 1, NULL),
(32638, 7533, 'siswa $gmail.com', 0, NULL, 1, NULL),
(32639, 7533, '<a href=\"mailto:siswa@gmail.com\">siswa@gmail.com</a>', 1, NULL, 1, NULL),
(32640, 7533, 'siswa#gmail.com', 0, NULL, 1, NULL),
(32641, 7534, '\"Dengan hormat, saya ingin menyampaikan...\"', 0, NULL, 1, NULL),
(32642, 7534, '\"Sehubungan dengan surat Anda tanggal 1 Mei...\"', 0, NULL, 1, NULL),
(32643, 7534, '\"Kami ingin memberitahukan bahwa...\"', 0, NULL, 1, NULL),
(32644, 7534, '\"Hai, bagaimana kabarmu? Sudah lama kita tidak bertemu!\"', 1, NULL, 1, NULL),
(32645, 7535, 'surat pribadi', 1, NULL, 1, NULL),
(32646, 7535, 'surat dinas', 0, NULL, 1, NULL),
(32647, 7535, 'surat elektronik', 0, NULL, 1, NULL),
(32648, 7535, 'surat&nbsp;rahasia', 0, NULL, 1, NULL),
(32649, 7536, 'Siapa yang melakukan penculikan terhadap Soekarno dan Moh. Hatta?', 1, NULL, 1, NULL),
(32650, 7536, 'Kapan teks proklamasi dibacakan di depan rakyat Indonesia?', 0, NULL, 1, NULL),
(32651, 7536, 'Mengapa sejumlah pemuda melakukan penculikan kepada Seokarno dan Moh. Hatta?', 0, NULL, 1, NULL),
(32652, 7536, 'Dimana peristiwa Rengasdengklok terjadi?', 0, NULL, 1, NULL),
(32653, 7537, 'Bunga cempaka tumbuh liar', 0, NULL, 1, NULL),
(32654, 7537, 'Bunga cempaka mengeluarkan bau harum', 0, NULL, 1, NULL),
(32655, 7537, 'Bunga cempaka digunakan sebagai simbol keindahan', 1, NULL, 1, NULL),
(32656, 7537, 'Bunga cempaka tumbuh besar dan tinggi', 0, NULL, 1, NULL),
(32657, 7538, 'Bagaimana murid-murid membeli makanan?', 0, NULL, 1, NULL),
(32658, 7538, 'Kapan murid-murid membeli makanan?', 0, NULL, 1, NULL),
(32659, 7538, 'Di mana murid-murid membeli makanan?', 1, NULL, 1, NULL),
(32660, 7538, 'Mengapa murid-murid membeli makanan?', 0, NULL, 1, NULL),
(32661, 7539, 'Cara mencari plastik', 0, NULL, 1, NULL),
(32662, 7539, 'Cara membuat kerajinan mewah', 0, NULL, 1, NULL),
(32663, 7539, 'Cara menjual kerajinan dari plastik bekas', 0, NULL, 1, NULL),
(32664, 7539, 'Cara membuat kerajinan dari plastik bekas', 1, NULL, 1, NULL),
(32665, 7540, 'Di dalam sangkar', 0, NULL, 1, NULL),
(32666, 7540, 'Di tengah hutan', 1, NULL, 1, NULL),
(32667, 7540, 'Di tengah sawah', 0, NULL, 1, NULL),
(32668, 7540, 'Di tengah kebun', 0, NULL, 1, NULL),
(32669, 7541, 'Fabel', 1, NULL, 1, NULL),
(32670, 7541, 'Sage', 0, NULL, 1, NULL),
(32671, 7541, 'Mite', 0, NULL, 1, NULL),
(32672, 7541, 'Legenda', 0, NULL, 1, NULL),
(32673, 7542, 'Kapan', 1, NULL, 1, NULL),
(32674, 7542, 'Di mana', 0, NULL, 1, NULL),
(32675, 7542, 'Bagaimana', 0, NULL, 1, NULL),
(32676, 7542, 'Mengapa', 0, NULL, 1, NULL),
(32677, 7543, 'Di mana', 0, NULL, 1, NULL),
(32678, 7543, 'Mengapa', 0, NULL, 1, NULL),
(32679, 7543, 'Bagaimana', 1, NULL, 1, NULL),
(32680, 7543, 'Kapan', 0, NULL, 1, NULL),
(32681, 7544, 'Kapan', 0, NULL, 1, NULL),
(32682, 7544, 'Siapa', 0, NULL, 1, NULL),
(32683, 7544, 'Di mana', 0, NULL, 1, NULL),
(32684, 7544, 'Apa', 1, NULL, 1, NULL),
(32685, 7545, '&nbsp;', 0, NULL, 1, NULL),
(32686, 7545, '&nbsp;', 0, NULL, 1, NULL),
(32687, 7545, '&nbsp;', 0, NULL, 1, NULL),
(32688, 7545, '&nbsp;', 0, NULL, 1, NULL),
(32689, 7545, '&nbsp;', 0, NULL, 1, NULL),
(32690, 7546, '&nbsp;', 0, NULL, 1, NULL),
(32691, 7546, '&nbsp;', 0, NULL, 1, NULL),
(32692, 7546, '&nbsp;', 0, NULL, 1, NULL),
(32693, 7546, '&nbsp;', 0, NULL, 1, NULL),
(32694, 7546, '&nbsp;', 0, NULL, 1, NULL),
(32695, 7547, '&nbsp;', 0, NULL, 1, NULL),
(32696, 7547, '&nbsp;', 0, NULL, 1, NULL),
(32697, 7547, '&nbsp;', 0, NULL, 1, NULL),
(32698, 7547, '&nbsp;', 0, NULL, 1, NULL),
(32699, 7547, '&nbsp;', 0, NULL, 1, NULL),
(32700, 7548, '&nbsp;', 0, NULL, 1, NULL),
(32701, 7548, '&nbsp;', 0, NULL, 1, NULL),
(32702, 7548, '&nbsp;', 0, NULL, 1, NULL),
(32703, 7548, '&nbsp;', 0, NULL, 1, NULL),
(32704, 7548, '&nbsp;', 0, NULL, 1, NULL),
(32705, 7549, '&nbsp;', 0, NULL, 1, NULL),
(32706, 7549, '&nbsp;', 0, NULL, 1, NULL),
(32707, 7549, '&nbsp;', 0, NULL, 1, NULL),
(32708, 7549, '&nbsp;', 0, NULL, 1, NULL),
(32709, 7549, '&nbsp;', 0, NULL, 1, NULL),
(32710, 7550, '&nbsp;', 0, NULL, 1, NULL),
(32711, 7550, '&nbsp;', 0, NULL, 1, NULL),
(32712, 7550, '&nbsp;', 0, NULL, 1, NULL),
(32713, 7550, '&nbsp;', 0, NULL, 1, NULL),
(32714, 7550, '&nbsp;', 0, NULL, 1, NULL),
(32715, 7551, '&nbsp;', 0, NULL, 1, NULL),
(32716, 7551, '&nbsp;', 0, NULL, 1, NULL),
(32717, 7551, '&nbsp;', 0, NULL, 1, NULL),
(32718, 7551, '&nbsp;', 0, NULL, 1, NULL),
(32719, 7551, '&nbsp;', 0, NULL, 1, NULL),
(32720, 7552, '&nbsp;', 0, NULL, 1, NULL),
(32721, 7552, '&nbsp;', 0, NULL, 1, NULL),
(32722, 7552, '&nbsp;', 0, NULL, 1, NULL),
(32723, 7552, '&nbsp;', 0, NULL, 1, NULL),
(32724, 7552, '&nbsp;', 0, NULL, 1, NULL),
(32725, 7553, '&nbsp;', 0, NULL, 1, NULL),
(32726, 7553, '&nbsp;', 0, NULL, 1, NULL),
(32727, 7553, '&nbsp;', 0, NULL, 1, NULL),
(32728, 7553, '&nbsp;', 0, NULL, 1, NULL),
(32729, 7553, '&nbsp;', 0, NULL, 1, NULL),
(32730, 7554, '&nbsp;', 0, NULL, 1, NULL),
(32731, 7554, '&nbsp;', 0, NULL, 1, NULL),
(32732, 7554, '&nbsp;', 0, NULL, 1, NULL),
(32733, 7554, '&nbsp;', 0, NULL, 1, NULL),
(32734, 7554, '&nbsp;', 0, NULL, 1, NULL),
(32735, 7555, '&nbsp;', 0, NULL, 1, NULL),
(32736, 7555, '&nbsp;', 0, NULL, 1, NULL),
(32737, 7555, '&nbsp;', 0, NULL, 1, NULL),
(32738, 7555, '&nbsp;', 0, NULL, 1, NULL),
(32739, 7555, '&nbsp;', 0, NULL, 1, NULL),
(32740, 7556, '&nbsp;', 0, NULL, 1, NULL),
(32741, 7556, '&nbsp;', 0, NULL, 1, NULL),
(32742, 7556, '&nbsp;', 0, NULL, 1, NULL),
(32743, 7556, '&nbsp;', 0, NULL, 1, NULL),
(32744, 7556, '&nbsp;', 0, NULL, 1, NULL),
(32745, 7557, '&nbsp;', 0, NULL, 1, NULL),
(32746, 7557, '&nbsp;', 0, NULL, 1, NULL),
(32747, 7557, '&nbsp;', 0, NULL, 1, NULL),
(32748, 7557, '&nbsp;', 0, NULL, 1, NULL),
(32749, 7557, '&nbsp;', 0, NULL, 1, NULL),
(32750, 7558, '&nbsp;', 0, NULL, 1, NULL),
(32751, 7558, '&nbsp;', 0, NULL, 1, NULL),
(32752, 7558, '&nbsp;', 0, NULL, 1, NULL),
(32753, 7558, '&nbsp;', 0, NULL, 1, NULL),
(32754, 7558, '&nbsp;', 0, NULL, 1, NULL),
(32755, 7559, '&nbsp;', 0, NULL, 1, NULL),
(32756, 7559, '&nbsp;', 0, NULL, 1, NULL),
(32757, 7559, '&nbsp;', 0, NULL, 1, NULL),
(32758, 7559, '&nbsp;', 0, NULL, 1, NULL),
(32759, 7559, '&nbsp;', 0, NULL, 1, NULL),
(32760, 7560, '&nbsp;', 0, NULL, 1, NULL),
(32761, 7560, '&nbsp;', 0, NULL, 1, NULL),
(32762, 7560, '&nbsp;', 0, NULL, 1, NULL),
(32763, 7560, '&nbsp;', 0, NULL, 1, NULL),
(32764, 7560, '&nbsp;', 0, NULL, 1, NULL),
(32765, 7561, '&nbsp;', 0, NULL, 1, NULL),
(32766, 7561, '&nbsp;', 0, NULL, 1, NULL),
(32767, 7561, '&nbsp;', 0, NULL, 1, NULL),
(32768, 7561, '&nbsp;', 0, NULL, 1, NULL),
(32769, 7561, '&nbsp;', 0, NULL, 1, NULL),
(32770, 7562, '&nbsp;', 0, NULL, 1, NULL),
(32771, 7562, '&nbsp;', 0, NULL, 1, NULL),
(32772, 7562, '&nbsp;', 0, NULL, 1, NULL),
(32773, 7562, '&nbsp;', 0, NULL, 1, NULL),
(32774, 7562, '&nbsp;', 0, NULL, 1, NULL),
(32775, 7563, '&nbsp;', 0, NULL, 1, NULL),
(32776, 7563, '&nbsp;', 0, NULL, 1, NULL),
(32777, 7563, '&nbsp;', 0, NULL, 1, NULL),
(32778, 7563, '&nbsp;', 0, NULL, 1, NULL),
(32779, 7563, '&nbsp;', 0, NULL, 1, NULL),
(32780, 7564, '&nbsp;', 0, NULL, 1, NULL),
(32781, 7564, '&nbsp;', 0, NULL, 1, NULL),
(32782, 7564, '&nbsp;', 0, NULL, 1, NULL),
(32783, 7564, '&nbsp;', 0, NULL, 1, NULL),
(32784, 7564, '&nbsp;', 0, NULL, 1, NULL),
(32785, 7565, '&nbsp;', 0, NULL, 1, NULL),
(32786, 7565, '&nbsp;', 0, NULL, 1, NULL),
(32787, 7565, '&nbsp;', 0, NULL, 1, NULL),
(32788, 7565, '&nbsp;', 0, NULL, 1, NULL),
(32789, 7565, '&nbsp;', 0, NULL, 1, NULL),
(32790, 7566, '&nbsp;', 0, NULL, 1, NULL),
(32791, 7566, '&nbsp;', 0, NULL, 1, NULL),
(32792, 7566, '&nbsp;', 0, NULL, 1, NULL),
(32793, 7566, '&nbsp;', 0, NULL, 1, NULL),
(32794, 7566, '&nbsp;', 0, NULL, 1, NULL),
(32795, 7567, '&nbsp;', 0, NULL, 1, NULL),
(32796, 7567, '&nbsp;', 0, NULL, 1, NULL),
(32797, 7567, '&nbsp;', 0, NULL, 1, NULL),
(32798, 7567, '&nbsp;', 0, NULL, 1, NULL),
(32799, 7567, '&nbsp;', 0, NULL, 1, NULL),
(32800, 7568, '&nbsp;', 0, NULL, 1, NULL),
(32801, 7568, '&nbsp;', 0, NULL, 1, NULL),
(32802, 7568, '&nbsp;', 0, NULL, 1, NULL),
(32803, 7568, '&nbsp;', 0, NULL, 1, NULL),
(32804, 7568, '&nbsp;', 0, NULL, 1, NULL),
(32805, 7569, '&nbsp;', 0, NULL, 1, NULL),
(32806, 7569, '&nbsp;', 0, NULL, 1, NULL),
(32807, 7569, '&nbsp;', 0, NULL, 1, NULL),
(32808, 7569, '&nbsp;', 0, NULL, 1, NULL),
(32809, 7569, '&nbsp;', 0, NULL, 1, NULL),
(32810, 7570, '&nbsp;', 0, NULL, 1, NULL),
(32811, 7570, '&nbsp;', 0, NULL, 1, NULL),
(32812, 7570, '&nbsp;', 0, NULL, 1, NULL),
(32813, 7570, '&nbsp;', 0, NULL, 1, NULL),
(32814, 7570, '&nbsp;', 0, NULL, 1, NULL),
(32815, 7571, '&nbsp;', 0, NULL, 1, NULL),
(32816, 7571, '&nbsp;', 0, NULL, 1, NULL),
(32817, 7571, '&nbsp;', 0, NULL, 1, NULL),
(32818, 7571, '&nbsp;', 0, NULL, 1, NULL),
(32819, 7571, '&nbsp;', 0, NULL, 1, NULL),
(32820, 7572, '&nbsp;', 0, NULL, 1, NULL),
(32821, 7572, '&nbsp;', 0, NULL, 1, NULL),
(32822, 7572, '&nbsp;', 0, NULL, 1, NULL),
(32823, 7572, '&nbsp;', 0, NULL, 1, NULL),
(32824, 7572, '&nbsp;', 0, NULL, 1, NULL),
(32825, 7573, '&nbsp;', 0, NULL, 1, NULL),
(32826, 7573, '&nbsp;', 0, NULL, 1, NULL),
(32827, 7573, '&nbsp;', 0, NULL, 1, NULL),
(32828, 7573, '&nbsp;', 0, NULL, 1, NULL),
(32829, 7573, '&nbsp;', 0, NULL, 1, NULL),
(32830, 7574, '&nbsp;', 0, NULL, 1, NULL),
(32831, 7574, '&nbsp;', 0, NULL, 1, NULL),
(32832, 7574, '&nbsp;', 0, NULL, 1, NULL),
(32833, 7574, '&nbsp;', 0, NULL, 1, NULL),
(32834, 7574, '&nbsp;', 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_konfigurasi`
--

CREATE TABLE `cbt_konfigurasi` (
  `konfigurasi_id` int NOT NULL,
  `konfigurasi_kode` varchar(50) NOT NULL,
  `konfigurasi_isi` varchar(500) NOT NULL,
  `konfigurasi_keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_konfigurasi`
--

INSERT INTO `cbt_konfigurasi` (`konfigurasi_id`, `konfigurasi_kode`, `konfigurasi_isi`, `konfigurasi_keterangan`) VALUES
(1, 'link_login_operator', 'ya', 'Menampilkan Link Login Operator'),
(2, 'cbt_nama', 'EDUKASI PERPUSTAKAAN', 'WELCOME TO COMPUTER BASED TEST '),
(3, 'cbt_keterangan', 'EDUPUS.ID', 'konfigurasi_keterangan'),
(4, 'cbt_mobile_lock_xambro', 'tidak', 'Melakukan Lock pada browser mobile agar menggunakan Xambro Saja'),
(5, 'cbt_informasi', '<p>Silahkan pilih Tes yang diikuti dari daftar tes yang tersedia dibawah ini. Apabila tes tidak muncul, silahkan menghubungi Operator yang bertugas.</p>\r\n', 'Informasi yang diberika di Dashboard peserta tes\''),
(6, 'anticheat_warning_enabled', '1', 'Aktifkan sistem peringatan anti-cheating untuk peserta tes (1 = Aktif, 0 = Nonaktif)'),
(7, 'anticheat_max_violations', '3', 'Jumlah maksimal pelanggaran sebelum tes diakhiri secara otomatis (1-10)'),
(8, 'welcome_line_id', 'SELAMAT DATANG', ''),
(9, 'welcome_line_en', 'EDUKASI PERPUSTAKAAN', ''),
(16, 'logo_kartu_1', 'https://cdn.313-7.my.id/cbt-poll/edupus/logo/92b13b25385bfd2b.png', ''),
(17, 'logo_kartu_2', 'https://cdn.313-7.my.id/cbt-poll/edupus/logo/e891f65627dc30c2.jpeg', ''),
(18, 'login_logo', 'https://cdn.313-7.my.id/cbt-poll/edupus/logo/abcea364b552626a.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_login_attempts`
--

CREATE TABLE `cbt_login_attempts` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Username yang mencoba login',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address user',
  `failed_attempts` int UNSIGNED DEFAULT '0' COMMENT 'Jumlah percobaan gagal',
  `locked_until` datetime DEFAULT NULL COMMENT 'Waktu lock berakhir (NULL jika tidak locked)',
  `lock_duration_minutes` int UNSIGNED DEFAULT '0' COMMENT 'Durasi lock dalam menit',
  `last_attempt_at` datetime DEFAULT NULL COMMENT 'Waktu percobaan terakhir',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel untuk progressive rate limiting login admin/operator/guru';

-- --------------------------------------------------------

--
-- Table structure for table `cbt_login_log`
--

CREATE TABLE `cbt_login_log` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL COMMENT 'ID user (dari tabel user atau cbt_user)',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Username yang login',
  `user_type` enum('admin','operator','guru','peserta') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipe user yang login',
  `login_status` enum('success','failed') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Status login (berhasil atau gagal)',
  `failure_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alasan gagal login (jika status = failed)',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address user',
  `user_agent` text COLLATE utf8mb4_unicode_ci COMMENT 'User agent browser',
  `browser_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nama browser (dari parsing user agent)',
  `browser_version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Versi browser',
  `os_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nama OS (dari parsing user agent)',
  `device_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipe device (desktop, mobile, tablet)',
  `location_country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Negara (dari geolocation IP)',
  `location_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kota (dari geolocation IP)',
  `location_region` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Region/Provinsi (dari geolocation IP)',
  `location_lat` decimal(10,8) DEFAULT NULL COMMENT 'Latitude (dari geolocation IP)',
  `location_lon` decimal(11,8) DEFAULT NULL COMMENT 'Longitude (dari geolocation IP)',
  `login_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Waktu login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel untuk log semua aktivitas login (admin, operator, guru, dan peserta)';

--
-- Dumping data for table `cbt_login_log`
--

INSERT INTO `cbt_login_log` (`id`, `user_id`, `username`, `user_type`, `login_status`, `failure_reason`, `ip_address`, `user_agent`, `browser_name`, `browser_version`, `os_name`, `device_type`, `location_country`, `location_city`, `location_region`, `location_lat`, `location_lon`, `login_at`) VALUES
(1, 1, 'admin', 'admin', 'failed', 'Password salah', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 16:13:08'),
(2, 1, 'admin', 'admin', 'success', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 16:26:03'),
(3, 6470, 'username', 'peserta', 'success', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 17:18:17'),
(4, 1, 'admin', 'admin', 'success', '', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', '143.0.0.0', 'Android 6.0', 'mobile', '', '', '', NULL, NULL, '2026-01-19 19:37:52'),
(5, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 19:50:53'),
(6, 6470, 'username', 'peserta', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 19:53:33'),
(7, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-19 20:37:26'),
(8, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'Edge', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-20 11:22:56'),
(9, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-20 11:32:25'),
(10, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-20 11:37:15'),
(11, 6471, '3144230431', 'peserta', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'Edge', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-20 11:56:47'),
(12, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-21 06:44:57'),
(13, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-22 06:15:26'),
(14, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-22 21:07:20'),
(15, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-23 09:30:28'),
(16, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'Edge', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-26 04:19:26'),
(17, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'Edge', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-26 04:21:49'),
(18, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'Edge', '143.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-26 04:29:20'),
(19, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'Edge', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-27 15:45:28'),
(20, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'Edge', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-29 02:40:08'),
(21, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-31 21:42:21'),
(22, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-31 21:54:44'),
(23, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'Edge', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-31 22:22:09'),
(24, NULL, 'tegararrahman17@gmail.com', 'peserta', 'failed', 'Username tidak ditemukan', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'Edge', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-31 23:22:12'),
(25, 6520, 'tegar', 'peserta', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'Edge', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-01-31 23:22:19'),
(26, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-01 16:35:42'),
(27, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:44:10'),
(28, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:52:48'),
(29, NULL, 'khalid', 'admin', 'failed', 'Username atau email tidak ditemukan', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:55:30'),
(30, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:55:51'),
(31, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:56:35'),
(32, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 15:57:51'),
(33, NULL, 'admin', 'peserta', 'failed', 'Admin mencoba login di halaman peserta', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 16:02:14'),
(34, 1, 'admin', 'admin', 'success', '', '10.0.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', '144.0.0.0', 'Windows 10/11', 'desktop', '', '', '', NULL, NULL, '2026-02-02 16:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_modul`
--

CREATE TABLE `cbt_modul` (
  `modul_id` bigint UNSIGNED NOT NULL,
  `modul_nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modul_aktif` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_modul`
--

INSERT INTO `cbt_modul` (`modul_id`, `modul_nama`, `modul_aktif`, `deleted_at`) VALUES
(10, 'Default', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_otp`
--

CREATE TABLE `cbt_otp` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'ID user (dari tabel user untuk admin/operator/guru)',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Username yang meminta OTP',
  `otp_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kode OTP (6 digit)',
  `otp_method` enum('email','whatsapp') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Metode pengiriman OTP',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Email tujuan (jika method = email)',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nomor telepon tujuan (jika method = whatsapp)',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address user yang meminta OTP',
  `expires_at` datetime NOT NULL COMMENT 'Waktu kadaluarsa OTP',
  `verified_at` datetime DEFAULT NULL COMMENT 'Waktu OTP diverifikasi (NULL jika belum)',
  `attempts` int UNSIGNED DEFAULT '0' COMMENT 'Jumlah percobaan verifikasi',
  `max_attempts` int UNSIGNED DEFAULT '3' COMMENT 'Maksimal percobaan verifikasi',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel untuk menyimpan OTP (One-Time Password) untuk login admin/operator/guru';

--
-- Dumping data for table `cbt_otp`
--

INSERT INTO `cbt_otp` (`id`, `user_id`, `username`, `otp_code`, `otp_method`, `email`, `phone`, `ip_address`, `expires_at`, `verified_at`, `attempts`, `max_attempts`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '565679', 'email', 'xxkenxxyz@gmail.com', '', '::1', '2026-01-19 23:23:14', NULL, 0, 3, '2026-01-19 16:13:14', '2026-01-19 16:21:30'),
(5, 1, 'admin', '942287', 'email', 'xxkenxxyz@gmail.com', '', '::1', '2026-01-19 23:35:38', '2026-01-19 16:26:03', 0, 3, '2026-01-19 16:25:39', '2026-01-19 16:26:03'),
(6, 1, 'admin', '783133', 'email', 'xxkenxxyz@gmail.com', '', '::1', '2026-01-20 02:47:28', '2026-01-19 19:37:52', 0, 3, '2026-01-19 19:37:28', '2026-01-19 19:37:52'),
(7, 1, 'admin', '737677', 'email', 'xxkenxxyz@gmail.com', '', '10.0.1.4', '2026-01-19 20:00:38', '2026-01-19 19:50:53', 0, 3, '2026-01-19 19:50:37', '2026-01-19 19:50:53'),
(8, 1, 'admin', '082237', 'email', 'xxkenxxyz@gmail.com', '', '10.0.1.4', '2026-02-02 16:12:37', NULL, 0, 3, '2026-02-02 16:02:37', '2026-02-02 16:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_pelanggaran`
--

CREATE TABLE `cbt_pelanggaran` (
  `pelanggaran_id` int NOT NULL,
  `tesuser_id` int NOT NULL,
  `user_id` int NOT NULL,
  `tes_id` int NOT NULL,
  `jenis_pelanggaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Jenis pelanggaran: tab_switch, dev_tools, right_click, copy, paste, dll',
  `alasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Alasan/detail pelanggaran',
  `jumlah_pelanggaran` int DEFAULT '1' COMMENT 'Jumlah pelanggaran yang terjadi',
  `waktu_pelanggaran` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_blocked` tinyint(1) DEFAULT '0' COMMENT '1 = diblokir/tes diakhiri, 0 = hanya peringatan',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_security_settings`
--

CREATE TABLE `cbt_security_settings` (
  `id` int NOT NULL,
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `setting_description` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'security',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cbt_security_settings`
--

INSERT INTO `cbt_security_settings` (`id`, `setting_key`, `setting_value`, `setting_description`, `category`, `updated_at`) VALUES
(1, 'soft_delete_enabled', '0', 'Enable/Disable Soft Delete untuk semua entitas (0=disabled, 1=enabled)', 'soft_delete', '2026-02-02 16:03:37'),
(2, 'soft_delete_export_include_deleted', '0', 'Default export include soft deleted data (0=exclude, 1=include)', 'soft_delete', '2026-02-02 16:03:37'),
(3, 'otp_enabled', '0', 'Enable/Disable OTP untuk login admin/operator/guru (0=disabled, 1=enabled)', 'otp', '2026-02-02 16:03:37'),
(4, 'otp_method', 'email', 'Metode OTP: email atau whatsapp', 'otp', '2026-02-02 16:03:37'),
(5, 'otp_expiry_minutes', '10', 'OTP berlaku selama (menit)', 'otp', '2026-02-02 16:03:37'),
(6, 'otp_default_method', 'email', 'Default method jika user punya email dan phone: email atau whatsapp', 'otp', '2026-02-02 16:03:37'),
(7, 'rate_limiting_enabled', '0', 'Enable/Disable Progressive Rate Limiting untuk admin/operator/guru (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(8, 'rate_limiting_max_attempts', '5', 'Jumlah maksimal password salah sebelum lock (default: 5)', 'rate_limiting', '2026-02-02 16:03:37'),
(9, 'rate_limiting_lock_15min', '1', 'Enable lock 15 menit setelah 6x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(10, 'rate_limiting_lock_30min', '1', 'Enable lock 30 menit setelah 7x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(11, 'rate_limiting_lock_1hour', '1', 'Enable lock 1 jam setelah 8x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(12, 'rate_limiting_lock_3hour', '1', 'Enable lock 3 jam setelah 9x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(13, 'rate_limiting_lock_6hour', '1', 'Enable lock 6 jam setelah 10x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(14, 'rate_limiting_lock_12hour', '1', 'Enable lock 12 jam setelah 11x salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(15, 'rate_limiting_lock_24hour', '1', 'Enable lock 24 jam setelah 12x+ salah (0=disabled, 1=enabled)', 'rate_limiting', '2026-02-02 16:03:37'),
(16, 'login_log_enabled', '1', 'Enable/Disable Login Log untuk semua user (0=disabled, 1=enabled)', 'login_log', '2026-02-02 16:03:37'),
(17, 'login_log_notify_admin', '1', 'Kirim notifikasi ke admin saat ada login (0=disabled, 1=enabled)', 'login_log', '2026-02-02 16:03:37'),
(18, 'login_log_notify_on_success', '1', 'Notifikasi untuk login berhasil (0=disabled, 1=enabled)', 'login_log', '2026-02-02 16:03:37'),
(19, 'login_log_notify_on_failed', '1', 'Notifikasi untuk login gagal (0=disabled, 1=enabled)', 'login_log', '2026-02-02 16:03:37'),
(20, 'login_log_geolocation_enabled', '1', 'Enable geolocation dari IP address (0=disabled, 1=enabled)', 'login_log', '2026-02-02 16:03:37'),
(21, 'email_phone_required', '0', 'Email atau Phone wajib diisi untuk siswa (0=optional, 1=required)', 'email_phone', '2026-02-02 16:03:37'),
(22, 'email_validation_enabled', '0', 'Validasi format email (0=disabled, 1=enabled)', 'email_phone', '2026-02-02 16:03:37'),
(23, 'phone_validation_enabled', '0', 'Validasi format phone (0=disabled, 1=enabled)', 'email_phone', '2026-02-02 16:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sessions`
--

CREATE TABLE `cbt_sessions` (
  `id` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `soal_id` bigint UNSIGNED NOT NULL,
  `soal_topik_id` bigint UNSIGNED NOT NULL,
  `soal_detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `soal_tipe` smallint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Pilihan ganda, 2=essay, 3=jawaban singkat',
  `soal_kunci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Kunci untuk soal jawaban singkat',
  `soal_difficulty` smallint NOT NULL DEFAULT '1',
  `soal_aktif` tinyint(1) NOT NULL DEFAULT '0',
  `soal_audio` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `soal_audio_play` int NOT NULL DEFAULT '0',
  `soal_timer` smallint DEFAULT NULL,
  `soal_inline_answers` tinyint(1) NOT NULL DEFAULT '0',
  `soal_auto_next` tinyint(1) NOT NULL DEFAULT '0',
  `soal_poin` int DEFAULT '1' COMMENT 'Poin maksimal untuk soal ini jika jawaban benar. Default 1 untuk backward compatibility.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`, `soal_poin`, `deleted_at`) VALUES
(7484, 367, 'Ini adalah contoh soal...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7485, 367, '<p>fsfsd</p>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7491, 371, '<p>zsdfgdsgdfs</p>', 3, 'zxcxdfsg', 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7492, 371, '<p>sraefasfasdf</p>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7493, 370, '<p>dghffgdhdfgdfgh</p>', 2, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7494, 370, '<p>dimana batam</p>', 2, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7495, 370, 'Seorang guru selalu memberikan nilai kepada murid-muridnya secara adil sesuai dengan hasil kerja mereka, tanpa memandang siapa murid tersebut. Guru tersebut sudah menerapkan nilai Pancasila ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7496, 370, 'Dalam kehidupan sehari-hari, kita dapat mengamalkan nilai-nilai Pancasila untuk mencapai kata mufakat dalam musyawarah. Berikut contoh yang sesuai dengan pengamalan nilai Pancasila untuk mencapai kata mufakat dalam musyawarah adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7497, 370, 'Ketika menolong orang lain berarti kita telah melaksanakan sila pertama, kedua dan ketiga. Dengan demikian, dapat dikatakan bahwa ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7498, 370, 'Mengamalkan Pancasila tidak hanya dilakukan dalam lingkup kecil, tetapi juga dalam skala nasional. Peran Pancasila dalam menjaga persatuan dan kesatuan bangsa dapat dilakukan dengan cara ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7499, 370, 'Perbedaan keberagaman didalam kehidupan masyarakat Indonesia yang akan selalu dipersatukan menjadi satu kesatuan sesuai dengan semboyan bangsa Indonesia yaitu ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7500, 370, 'Pancasila memiliki peran penting sebagai pemersatu bangsa Indonesia yang beragam. Salah satu contohnya adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7501, 370, 'Pancasila sebagai pemersatu bangsa Indonesia sangat penting karena ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7502, 370, 'Ketika mengikuti upacara bendera, Budi selalu berdiri dengan tegak dan khidmat. Sikap Budi menunjukkan bahwa ia memahami pentingnya Pancasila sebagai pandangan hidup bangsa. Nilai Pancasila yang ditunjukkan oleh Budi adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7503, 370, 'Budi siswa kelas 6. Dia sangat menghargai nilai-nilai Pancasila. Suatu hari, Budi melihat temannya, Andi, berkelahi dengan teman sekelasnya karena perbedaan pendapat. Budi kemudian mendekati mereka dan mencoba untuk mendamaikan mereka. Dalam usahanya tersebut, Budi mengajak Andi dan temannya untuk menyelesaikan masalah dengan cara musyawarah. Setelah beberapa saat, mereka berhasil mencapai kesepakatan dan berdamai.', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7504, 370, 'Kata Pancasila berasal dari bahasa ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7505, 370, 'Fungsi utama UUD 1945 bagi bangsa Indonesia adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7506, 370, 'Sila ke-2 Pancasila berbunyi…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7507, 370, 'Lembaga yang bertugas membuat undang-undang di Indonesia adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7508, 370, 'Hak warga negara yang dijamin dalam UUD 1945 adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7509, 370, 'Contoh kewajiban warga negara dalam kehidupan sehari-hari adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7510, 370, 'Tujuan negara Indonesia yang tercantum dalam Pembukaan UUD 1945 adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7511, 370, 'Pemilu di Indonesia dilaksanakan setiap…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7512, 370, 'Lembaga yang bertugas membuat undang-undang di Indonesia adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7513, 370, 'Hak warga negara yang dijamin dalam UUD 1945 adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7514, 370, 'Contoh kewajiban warga negara dalam kehidupan sehari-hari adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7515, 370, 'Tujuan negara Indonesia yang tercantum dalam Pembukaan UUD 1945 adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7516, 370, 'Pemilu di Indonesia dilaksanakan setiap…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7517, 370, 'Sila ke-2 Pancasila berbunyi…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7518, 370, 'Kata Pancasila berasal dari bahasa ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7519, 370, 'Ketika mengikuti upacara bendera, Budi selalu berdiri dengan tegak dan khidmat. Sikap Budi menunjukkan bahwa ia memahami pentingnya Pancasila sebagai pandangan hidup bangsa. Nilai Pancasila yang ditunjukkan oleh Budi adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7520, 370, 'Pancasila sebagai pemersatu bangsa Indonesia sangat penting karena ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7521, 370, 'Seorang guru selalu memberikan nilai kepada murid-muridnya secara adil sesuai dengan hasil kerja mereka, tanpa memandang siapa murid tersebut. Guru tersebut sudah menerapkan nilai Pancasila ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7522, 370, 'Seorang guru selalu memberikan nilai kepada murid-muridnya secara adil sesuai dengan hasil kerja mereka, tanpa memandang siapa murid tersebut. Guru tersebut sudah menerapkan nilai Pancasila ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7523, 370, 'Hak warga negara yang dijamin dalam UUD 1945 adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7524, 370, 'Contoh kewajiban warga negara dalam kehidupan sehari-hari adalah…', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7525, 370, '<p>Bacalah teks berikut ini!</p><p>Rina adalah seorang siswi yang sangat pandai dan rajin. Ia selalu mendapat nilai terbaik di kelasnya. Namun, ia tidak pernah sombong dan selalu membantu teman-temannya yang mengalami kesulitan belajar.</p><p>Watak Rina berdasarkan teks bacaan tersebut adalah ….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7526, 370, '<p>Bacalah teks berikut!</p><figure class=\"table\"><table><tbody><tr>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7527, 370, '<p>Bacalah teks berikut ini dengan saksama!&nbsp;</p><p>\"Perusahaan tersebut mengalami defisit yang cukup besar akibat kebijakan ekonomi yang tidak tepat.\" Makna dari kata \"defisit\" yang paling tepat menurut Kamus Besar Bahasa Indonesia adalah ….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7528, 370, '<p>Perhatikan tabel berikut!</p><figure class=\"table\"><table><tbody><tr>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7529, 370, '<p>Cermati formulir berikut!</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://api-cbt-stg.tegar-aja.xyz/uploads/topik_370/0d39950f09407270.png\" alt=\"pendaftaran\"></p><p>Andin Tarumanegara merupakan seorang siswi asal Klaten, Jawa Tengah. Ia lahir pada 24 Juni 2003. Saat ini, ia berdomisili di Bandung, di rumah orang tuanya yang beralamat di Jalan Anggrek Raya Nomor 13-B. Berdasarkan deskripsi tersebut, isi penulisan formulir yang tepat adalah ….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7530, 370, 'Seorang kepala sekolah ingin mengundang orang tua murid untuk menghadiri rapat penting mengenai peningkatan kualitas pendidikan di sekolah. Surat resmi apa yang sebaiknya dibuat oleh kepala sekolah untuk menyampaikan undangan tersebut ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7531, 370, '<p>Perhatikan bagian-bagian surat resmi berikut ini!</p><ol><li>Alamat tujuan</li><li>Salam pembuka</li><li>Isi surat</li><li>Tanggal surat</li><li>Penutup surat</li></ol><p>Urutan yang benar dari bagian-bagian surat resmi adalah...</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7532, 370, '<p>Perhatikan kutipan surat resmi berikut!</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p><p>Berdasarkan teks tersebut, tujuan utama dari surat resmi adalah...</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7533, 370, 'Penulisan alamat e-mail yang benar adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7534, 370, 'Kalimat pembuka yang baik untuk surat pribadi adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7535, 370, '<p>&nbsp;Perhatikan gambar berikut!</p><p>&nbsp;</p><p>Surat tersebut termasuk ke dalam jenis surat …..</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7536, 370, '<p>Perhatikan teks berikut!</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p><p>Kalimat tanya yang sesuai dengan isi paragraf adalah ….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7537, 370, '<p>Bacalah teks berikut!</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p><p>Ide pokok paragraf kedua dari teks tersebut adalah …</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7538, 370, '<p>Perhatikan gambar berikut!</p><p><img src=\"https://api-cbt-stg.tegar-aja.xyz/uploads/topik_370/9a0904030df865cb.png\"></p><p>Pertanyaan yang tepat berdasarkan gambar di atas adalah….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7539, 370, '<p>&nbsp; &nbsp; &nbsp;Andi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : “Bagaimana cara bapak membuat kerajinan dari plastik&nbsp; bekas?</p><p>&nbsp;&nbsp;&nbsp;&nbsp; Pak Ahmad : “Pertama-tama dengan cara memilah-milah plastik sesuai jenisnya”</p><p>Andi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : “Kemudian Pak?”</p><p>Pak Ahmad : “Lalu biasanya saya langsung melelehkannya dengan cara&nbsp; &nbsp; dipanaskan.”</p><p>Andi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : “Wah, sederhana ya pak?”</p><p>Pak Ahmad : “Setelah itu baru saya mencetaknya ke dalam berbagai bentuk.”</p><p>Wawancara tersebut berkaitan dengan ....</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7540, 370, '<p>Bacalah kutipan berikut!</p><p>\"Di tengah hutan, Rudi menemukan seekor anak burung&nbsp;</p><p>yang terluka. Tanpa ragu, ia membawanya pulang dan merawatnya hingga sembuh. Anak burung itu pun tumbuh besar dan menjadi sahabat setia Rudi.</p><p>&nbsp;</p><p>Latar tempat pada teks bacaan tersebut adalah ….</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7541, 370, 'Dongeng yang menceritakan tentang hewan yang dapat berbicara disebut ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7542, 370, 'Kata tanya yang berisi pertanyaan-pertanyaan mengenai waktu terjadinya peristiwa, berita atau cerita yang terjadi adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7543, 370, '<p>Toni: \".......... cara mengerjakan soal matematika ini, Ri?\"</p><p>Kata tanya yang tepat untuk melengkapi kalimat tersebut adalah ....</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7544, 370, '<p>Santo :” ……... yang kamu pikirkan, Man? Kamu kelihatan sedih sekali.</p><p>Kata tanya yang tepat untuk melengkapi kalimat tersebut adalah ....</p>', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7545, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7546, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7547, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7548, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7549, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7550, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7551, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7552, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7553, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7554, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7555, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7556, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7557, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7558, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7559, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7560, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7561, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7562, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7563, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7564, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7565, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7566, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7567, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7568, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7569, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7570, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7571, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7572, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7573, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7574, 370, '&nbsp;', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0, 1, NULL),
(7575, 369, '<p>fgd</p>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7609, 367, '<figure class=\"image\"><img src=\"https://api-cbt.edupus.id/uploads/topik_367/ec44f00d14489fab.png\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7610, 367, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/3174b5fc92576dcb.jpg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7611, 367, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/3c4f849076e1ff54.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/6e723bb06b1ef054.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/064200eace21b11a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/f8b6484dbe62a699.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/44dfcf4e9bdc175d.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/a19aeb5e0ce96dfe.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7e06e7657543321c.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/a8079f6ec6341a46.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/6895a27407aee6d3.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/8999511e67cf81a5.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/cd65fb45c9499cdc.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/0a11ff6d4dde3bf7.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/39c0b9aeb9cee8d8.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/9aa960e9a8c1fe10.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/2273891f6253739f.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7f1e078af6724c93.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/c86506c1a30fab2f.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/74934f60c5143673.jpg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7612, 375, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bb07be33ea8564f0.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/6750be663838cb5e.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/8ef1587b0bf77854.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/cbf6586c93dcfb80.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/38033ca2328b840e.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/045a5ee26911a038.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f2101c83b2d536e8.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/058af6b3ac80cde1.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/0e282793144e0cfb.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/247d9052d213f190.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/6654c1dd8d9135e3.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7c79a7340f0b3834.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ea1b8f17282cb0a6.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/2d78d6296eae33db.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/91f168f4509b4209.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f688bc60c926599d.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/cb23c4e4c07d739c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/dbcab2d6046f001a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/833700097fb8f596.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/508a8a4e50f3dd9b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/18bdc58aa59e4c89.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f8eb3dba20c98902.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/d4203fc765e9cb9a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/e41b1c3df10ac5dd.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7f4f544e3712463d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5a08feb94901e58f.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/78210f99afd7ed33.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/6a4e39647c3d6973.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7ce16ea00b226b8f.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bafe34cc61a7bfd6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/97b690545e55724d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f751406ec6047128.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/eb9c60e0bbabf6c6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/278db1278853231a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ca8a91e88fd7d281.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/2167c839b834bebd.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5124dc4f029319c5.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/0bb65ace910d7455.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/a745ad05b7b44693.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/fb34ba9e6c62ef61.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/76b71b75758d5454.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/47a3ede50a26cf01.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/025bcd4af4a4edfa.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/20cef3869f1829c3.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/3d1d35ad36de5b5a.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/75e818c8b9311f69.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c3b7a6362592b81d.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/2ef5eef3fc9d84d4.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/27d84186897d3c71.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/fc0e415e3121586e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7cd2be14d745868a.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7613, 374, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/cde26b0b79f34b08.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/c292e9b479946fb5.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/806727677029b33d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/672d9f9134e60635.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/553415449776e2d8.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/170500bbf1d36b48.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/51f214b6006cd250.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/19d21e1a8db75065.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/95f4c6f1c14a248b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/b99a3e3ea8c807cf.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/3aa7d718ec766956.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/458d34ce4ba09891.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/b62cec3a569fd964.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/6340f3f2fca7c6c4.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/c220eb8cc05cbbe7.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/e1be40ca87928abe.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/50af6a214f159e3d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/b4812b5759daf5e1.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/46e0a5de3a9a600b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/91dfdb71b7066ea6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/a9b24cce9cc8a71b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/a79d4160fd1b0d05.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/fb213cf274b7f82d.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/f9e9d801ae8feee4.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/e650a399628abedc.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/5d1336ea13f41e38.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/24c31d93da2ff91c.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/3d2e20f3bbd640d2.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/ee8c952722ad0b5a.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/4720af14b278735b.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/c7c84ed21059cf6b.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/2c93cb4d291e4cbd.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_374/96158aa045657d65.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7614, 375, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/29bc15c0d80c2a8a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ab0c162eb0bb09dc.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/14324dd2210bfffb.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7ac978455fdc810a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/6170237475c5fc57.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9fb51544ea22e994.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/555de40ea4a64814.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7e44c5cc413df5f5.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/752efb18c9d7f78c.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9451abb9c9372c1e.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/72f5b34149f5d4a7.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/36927eff46547d4b.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/499e2fb83773e074.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/25b156ba585733ed.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ff801153519a3735.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bba6fd5e4b652b2f.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/56cbf21b4f6c8199.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/464ca66e6899b0aa.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f309cc7b0d21ba7e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/09374223a716eb1f.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/e4dce1de6eb1ff35.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9e7b56807844b3b1.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5afc10a868641670.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/09ebeaa312180046.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f2af636cb60c404d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9380c4648dc7926e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5b892f26961fbab6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1bf8dfb877504d3b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/4adf8e60d1fa648d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c0f22669de59bcf3.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/a551fb14cfafd824.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/77310b301609c486.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/117d7e0374fa434c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c43b2e3fa5220a80.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/b125e713ca42f63e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/262af3fb08fbaa3e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/10176aacd4fcbbbe.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/03b1ef4de71e8ca6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c87e522c5f3ca4b3.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/67c5360c41c2e135.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bbcf6732b9508e4f.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/06157d6ec9133666.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c0a8560a1dc2e679.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f7b43b98a712b6e1.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/e7aecf68386f0ebe.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/b3994348bf6a06d9.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/24720c05a058cd1b.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1b8870b597d78943.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/0e3d5f1e6caef274.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bc00a0dac55c2a78.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1b4fb88ec8c50633.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/60b862a99ed42065.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7615, 375, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/29bc15c0d80c2a8a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ab0c162eb0bb09dc.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/14324dd2210bfffb.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7ac978455fdc810a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/6170237475c5fc57.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9fb51544ea22e994.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/555de40ea4a64814.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/7e44c5cc413df5f5.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/752efb18c9d7f78c.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9451abb9c9372c1e.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/72f5b34149f5d4a7.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/36927eff46547d4b.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/499e2fb83773e074.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/25b156ba585733ed.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/ff801153519a3735.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bba6fd5e4b652b2f.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/56cbf21b4f6c8199.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/464ca66e6899b0aa.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f309cc7b0d21ba7e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/09374223a716eb1f.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/e4dce1de6eb1ff35.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9e7b56807844b3b1.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5afc10a868641670.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/09ebeaa312180046.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f2af636cb60c404d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/9380c4648dc7926e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/5b892f26961fbab6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1bf8dfb877504d3b.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/4adf8e60d1fa648d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c0f22669de59bcf3.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/a551fb14cfafd824.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/77310b301609c486.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/117d7e0374fa434c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c43b2e3fa5220a80.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/b125e713ca42f63e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/262af3fb08fbaa3e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/10176aacd4fcbbbe.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/03b1ef4de71e8ca6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c87e522c5f3ca4b3.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/67c5360c41c2e135.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bbcf6732b9508e4f.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/06157d6ec9133666.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/c0a8560a1dc2e679.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/f7b43b98a712b6e1.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/e7aecf68386f0ebe.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/b3994348bf6a06d9.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/24720c05a058cd1b.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1b8870b597d78943.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/0e3d5f1e6caef274.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/bc00a0dac55c2a78.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/1b4fb88ec8c50633.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_375/60b862a99ed42065.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7616, 373, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/d403ecc713d0830a.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/322ff4ede781b957.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/020da41203eaa0d0.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/42b2143475a0747a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/ca1476642bc6186d.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/afbd624f09b4047c.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/bc634f3a10f89138.jpeg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/f3891d285c95a68b.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/54602b8d201797f2.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/2155c4f95ae81873.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/6c3af99f84b171f4.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/a3ad1db1bc184172.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/6dfd3dc03ddda752.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7617, 373, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/d403ecc713d0830a.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/322ff4ede781b957.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/020da41203eaa0d0.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/42b2143475a0747a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/ca1476642bc6186d.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/afbd624f09b4047c.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/1058b9338801d05c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/90c5bcf2e40ff6f0.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/bc634f3a10f89138.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/1a294b03fc216992.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/f3891d285c95a68b.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/54602b8d201797f2.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/2155c4f95ae81873.jpg\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/6c3af99f84b171f4.png\"></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/a3ad1db1bc184172.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_373/6dfd3dc03ddda752.jpeg\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL);
INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`, `soal_poin`, `deleted_at`) VALUES
(7618, 367, '<figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/74db8d2294a4074f.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/e5e8ef3d558bd128.jpeg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/c7c6cb77d6dd5d71.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/8cf3961ff246fa5b.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/cac1d9cc8b4c7299.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/5dbdef6c50249c23.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/979a951d8734e6b6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/c0b84c9bf037d35a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/87a5bb30e3254eec.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/dee3bbe267d3ebc2.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/f19ac50be452fdeb.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/be7593cac2e9c890.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/19787dbfec200774.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/b8b3d3243866d8b3.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/631d658bc1fce26d.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/5756a989dc9f834f.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/e620ed3f1625b833.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/35422412d6daf19e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/320310412aa1df81.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/ea018c4c24ae0296.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/871edb2538370ace.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/d4ecebbe46c8788e.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/28aca3d6c8715ef9.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/bc9719c9eb96a475.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/ce2a01f3bded8a07.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/ccc397052a340dc2.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7b8c6e3c79287063.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7f14536ac5dc3c4c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/2eafd1742f2e8fdf.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/301aac7c9c5e0ae2.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/8d29d1e43ff541f9.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/d0c137bcf4f7f693.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/8807b7275f494676.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/4f9fe4255a449674.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/1a02fffc9877e485.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/c7fadf3ee46b572e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/58787ac7f7c1ffbd.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/a8f3c5bb489666a6.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/d8b4fcc27cdb5fe0.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/a91d24c5fe99bd2a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/150fe95b667a27fb.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/94bdc03cc5555952.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/9a0a9785178fc119.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/4d01675ea40c6b49.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/a6914bb21f701b04.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/6dc20af5b7e0207e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/2f6b7522997184e4.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/879aaf4ce211e414.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/cb98aef5eeedb992.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/86bea3b914663d51.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/dfce70c59bf95f07.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/1a7103ac3e51752c.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/43aa3c9d57a106aa.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/47b4c91d20c0b85e.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/5f1c4923940a11f5.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/39d40102965b9e3a.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/d840c98265c6da81.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7e016a5e07492e3a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/215576636f56ad79.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/25432920d1777e2a.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/1d683dfe80af2e5c.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/bf48ee3bd73a6619.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/53e87cb05db47334.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/57bcd783f24f8c51.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/e9c1fb2af2d774fa.jpg\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/7a1574fd0001a3b1.png\"></figure><figure class=\"image\"><img src=\"https://cdn.313-7.my.id/cbt-poll/edupus/topik_367/40da33e04307a5e6.png\"></figure>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL),
(7619, 367, '<p>asjshswds</p>', 1, NULL, 1, 0, NULL, 0, NULL, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `tes_id` bigint UNSIGNED NOT NULL,
  `tes_nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tes_detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tes_begin_time` datetime DEFAULT NULL,
  `tes_end_time` datetime DEFAULT NULL,
  `tes_duration_time` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tes_ip_range` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `tes_results_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `tes_detail_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `tes_score_right` decimal(10,2) DEFAULT '1.00',
  `tes_score_wrong` decimal(10,2) DEFAULT '0.00',
  `tes_score_unanswered` decimal(10,2) DEFAULT '0.00',
  `tes_max_score` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tes_token` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`tes_id`, `tes_nama`, `tes_detail`, `tes_begin_time`, `tes_end_time`, `tes_duration_time`, `tes_ip_range`, `tes_results_to_users`, `tes_detail_to_users`, `tes_score_right`, `tes_score_wrong`, `tes_score_unanswered`, `tes_max_score`, `tes_token`, `deleted_at`) VALUES
(230, 'TEST', 'TEST', '2026-01-20 00:00:00', '2026-01-21 00:00:00', 30, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 1.00, NULL, NULL),
(231, 'JAM3', 'JAM3', '2026-01-19 20:00:00', '2026-01-20 20:00:00', 30, '*.*.*.*', 1, 1, 1.00, 0.00, 0.00, 1.00, NULL, NULL),
(232, 'jam4', 'jam4', '2026-01-19 21:00:00', '2026-01-20 21:00:00', 30, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 1.00, NULL, NULL),
(233, 'SIMULASI IPA', 'SIMULASI IPA', '2026-01-20 11:54:00', '2026-01-20 12:00:00', 60, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 10.00, NULL, NULL),
(234, 'SIMULASI PPKN', 'tes', '2026-01-20 12:15:00', '2026-01-21 12:20:00', 30, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 80.00, NULL, NULL),
(235, 'Bahasa Indonesia', 'Bahasa Indonesia', '2026-01-26 05:12:00', '2026-01-27 05:12:00', 60, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 30.00, NULL, NULL),
(236, 'tegar', 'tegar', '2026-01-31 23:20:00', '2026-02-01 23:20:00', 30, '*.*.*.*', 0, 0, 1.00, 0.00, 0.00, 2.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tesgrup`
--

CREATE TABLE `cbt_tesgrup` (
  `tstgrp_tes_id` bigint UNSIGNED NOT NULL,
  `tstgrp_grup_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tesgrup`
--

INSERT INTO `cbt_tesgrup` (`tstgrp_tes_id`, `tstgrp_grup_id`) VALUES
(230, 360),
(231, 360),
(232, 360),
(233, 361),
(234, 361),
(235, 361),
(235, 362),
(236, 361);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal`
--

CREATE TABLE `cbt_tes_soal` (
  `tessoal_id` bigint UNSIGNED NOT NULL,
  `tessoal_tesuser_id` bigint UNSIGNED NOT NULL,
  `tessoal_user_ip` varchar(39) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tessoal_soal_id` bigint UNSIGNED NOT NULL,
  `tessoal_jawaban_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `tessoal_nilai` decimal(10,2) DEFAULT NULL,
  `tessoal_creation_time` datetime DEFAULT NULL,
  `tessoal_display_time` datetime DEFAULT NULL,
  `tessoal_change_time` datetime DEFAULT NULL,
  `tessoal_reaction_time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `tessoal_ragu` int NOT NULL DEFAULT '0' COMMENT '1=ragu, 0=tidak ragu',
  `tessoal_order` smallint NOT NULL DEFAULT '1',
  `tessoal_num_answers` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tessoal_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `tessoal_audio_play` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal`
--

INSERT INTO `cbt_tes_soal` (`tessoal_id`, `tessoal_tesuser_id`, `tessoal_user_ip`, `tessoal_soal_id`, `tessoal_jawaban_text`, `tessoal_nilai`, `tessoal_creation_time`, `tessoal_display_time`, `tessoal_change_time`, `tessoal_reaction_time`, `tessoal_ragu`, `tessoal_order`, `tessoal_num_answers`, `tessoal_comment`, `tessoal_audio_play`) VALUES
(11183, 1146, NULL, 7484, NULL, 0.00, '2026-01-19 17:20:36', NULL, NULL, 0, 0, 1, 0, NULL, 0),
(11184, 1147, NULL, 7492, NULL, 0.00, '2026-01-31 23:25:34', NULL, NULL, 0, 0, 1, 0, NULL, 0),
(11185, 1147, NULL, 7491, NULL, 0.00, '2026-01-31 23:25:34', NULL, NULL, 0, 0, 2, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal_jawaban`
--

CREATE TABLE `cbt_tes_soal_jawaban` (
  `soaljawaban_tessoal_id` bigint UNSIGNED NOT NULL,
  `soaljawaban_jawaban_id` bigint UNSIGNED NOT NULL,
  `soaljawaban_selected` smallint NOT NULL DEFAULT '-1',
  `soaljawaban_order` smallint NOT NULL DEFAULT '1',
  `soaljawaban_position` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal_jawaban`
--

INSERT INTO `cbt_tes_soal_jawaban` (`soaljawaban_tessoal_id`, `soaljawaban_jawaban_id`, `soaljawaban_selected`, `soaljawaban_order`, `soaljawaban_position`) VALUES
(11183, 32481, 0, 1, NULL),
(11183, 32482, 0, 3, NULL),
(11183, 32483, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_token`
--

CREATE TABLE `cbt_tes_token` (
  `token_id` int NOT NULL,
  `token_isi` varchar(20) NOT NULL,
  `token_user_id` int NOT NULL,
  `token_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_aktif` int NOT NULL DEFAULT '1' COMMENT 'Umur Token dalam menit, 1 = 1 hari penuh',
  `token_tes_id` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_topik_set`
--

CREATE TABLE `cbt_tes_topik_set` (
  `tset_id` bigint UNSIGNED NOT NULL,
  `tset_tes_id` bigint UNSIGNED NOT NULL,
  `tset_topik_id` bigint UNSIGNED NOT NULL,
  `tset_tipe` smallint NOT NULL DEFAULT '1',
  `tset_difficulty` smallint NOT NULL DEFAULT '1',
  `tset_jumlah` smallint NOT NULL DEFAULT '1',
  `tset_jawaban` smallint NOT NULL DEFAULT '0',
  `tset_acak_jawaban` int NOT NULL DEFAULT '1',
  `tset_acak_soal` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tes_topik_set`
--

INSERT INTO `cbt_tes_topik_set` (`tset_id`, `tset_tes_id`, `tset_topik_id`, `tset_tipe`, `tset_difficulty`, `tset_jumlah`, `tset_jawaban`, `tset_acak_jawaban`, `tset_acak_soal`) VALUES
(155, 230, 367, 0, 1, 1, 3, 1, 1),
(156, 231, 367, 0, 1, 1, 3, 1, 1),
(157, 232, 367, 0, 1, 1, 3, 1, 1),
(158, 233, 370, 0, 1, 10, 4, 1, 1),
(159, 234, 370, 0, 1, 82, 4, 1, 1),
(160, 235, 370, 0, 1, 30, 4, 1, 1),
(161, 236, 371, 0, 1, 2, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_user`
--

CREATE TABLE `cbt_tes_user` (
  `tesuser_id` bigint UNSIGNED NOT NULL,
  `tesuser_tes_id` bigint UNSIGNED NOT NULL,
  `tesuser_user_id` bigint UNSIGNED NOT NULL,
  `tesuser_status` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tesuser_creation_time` datetime NOT NULL,
  `tesuser_end_time` datetime DEFAULT NULL,
  `tesuser_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `tesuser_token` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_tes_user`
--

INSERT INTO `cbt_tes_user` (`tesuser_id`, `tesuser_tes_id`, `tesuser_user_id`, `tesuser_status`, `tesuser_creation_time`, `tesuser_end_time`, `tesuser_comment`, `tesuser_token`) VALUES
(1146, 230, 6470, 4, '2026-01-20 00:20:36', '2026-01-19 17:20:59', NULL, NULL),
(1147, 236, 6520, 4, '2026-01-31 23:25:35', '2026-01-31 23:55:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_topik`
--

CREATE TABLE `cbt_topik` (
  `topik_id` bigint UNSIGNED NOT NULL,
  `topik_modul_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `topik_nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `topik_detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `topik_aktif` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_topik`
--

INSERT INTO `cbt_topik` (`topik_id`, `topik_modul_id`, `topik_nama`, `topik_detail`, `topik_aktif`, `deleted_at`) VALUES
(367, 10, 'TEST', 'TEST', 1, NULL),
(369, 10, 'TESTS', 'TESTS', 1, NULL),
(370, 10, 'bahasa indo', 'tes', 1, NULL),
(371, 10, 'kentod', 'kentod', 1, NULL),
(372, 10, 'tes mapel', 'mapel A', 1, NULL),
(373, 10, 'Bahasa indonesia', 'SAS 2025/2026', 1, NULL),
(374, 10, 'TEGAR', 'TEGAR', 1, NULL),
(375, 10, 'TEST SSD', 'TEST SSD', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `user_grup_id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(39) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_firstname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_level` smallint UNSIGNED NOT NULL DEFAULT '1',
  `user_detail` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_phone` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Nomor telepon siswa untuk OTP WhatsApp dan notifikasi',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`user_id`, `user_grup_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_birthdate`, `user_birthplace`, `user_level`, `user_detail`, `user_phone`, `deleted_at`) VALUES
(6470, 360, 'username', 'password', 'email', '2026-01-19 16:40:14', NULL, 'nama peserta', NULL, NULL, 1, 'contoh : Ruang 1, Sesi 1', NULL, NULL),
(6471, 361, '3144230431', '123456', '', '2026-01-20 11:52:11', NULL, 'ADELA RISKA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6472, 361, '3146023778', '123456', '', '2026-01-20 11:52:11', NULL, 'ADITYA NAUFAL PANGGABEAN', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6473, 361, '3142683493', '123456', '', '2026-01-20 11:52:11', NULL, 'AFKAR FADHIL ABDULLAH', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6474, 361, '3147710486', '123456', '', '2026-01-20 11:52:11', NULL, 'AINUN ROSITA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6475, 361, '3147515141', '123456', '', '2026-01-20 11:52:11', NULL, 'AL ZAKQY AZMY RAMADAN', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6476, 361, '3143795105', '123456', '', '2026-01-20 11:52:11', NULL, 'Alya Septiandini', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6477, 361, '0145529154', '123456', '', '2026-01-20 11:52:11', NULL, 'AMIR MAHMUD PARLINDUNGAN', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6478, 361, '3149713626', '123456', '', '2026-01-20 11:52:11', NULL, 'AQILLA PUTRI SETRIANDIKA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6479, 361, '3146419951', '123456', '', '2026-01-20 11:52:11', NULL, 'ASZHAR AQILLA PUTRA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6480, 361, '3143501339', '123456', '', '2026-01-20 11:52:11', NULL, 'AUREL AULIA RAHMADANI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6481, 361, '3147831302', '123456', '', '2026-01-20 11:52:11', NULL, 'CHIKA NADZIIFAH WIBOWO', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6482, 361, '3145832402', '123456', '', '2026-01-20 11:52:11', NULL, 'CUT NAZATULULA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6483, 361, '3138538589', '123456', '', '2026-01-20 11:52:11', NULL, 'FHAREL SYAPUTRA PULINGDAKA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6484, 361, '3147346074', '123456', '', '2026-01-20 11:52:11', NULL, 'GIAN ADITYA ARDHANI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6485, 361, '3142806150', '123456', '', '2026-01-20 11:52:11', NULL, 'HABIB ZIBNI FADILLAH', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6486, 361, '0144769355', '123456', '', '2026-01-20 11:52:11', NULL, 'M. BRYAN WIRADI AL FATTIH', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6487, 361, '0143742076', '123456', '', '2026-01-20 11:52:11', NULL, 'MIKAYLA RAHMADHANI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6488, 361, '3145774225', '123456', '', '2026-01-20 11:52:11', NULL, 'MIKYAL MAULA RAMADHANI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6489, 361, '3143800923', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD ARSHAKHAATALLA MELIALA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6490, 361, '3142467808', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD FARIS', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6491, 361, '3144024050', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD FIQQI MAULANA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6492, 361, '3141390017', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD RAFA AZKA PUTRA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6493, 361, '3145323844', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD RAFIE AL RIFAI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6494, 361, '3146545839', '123456', '', '2026-01-20 11:52:11', NULL, 'MUHAMMAD REHAN KHASIM SIREGAR', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6495, 361, '3144365252', '123456', '', '2026-01-20 11:52:11', NULL, 'RADITYA ELVITO RAMADHAN', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6496, 361, '3140553656', '123456', '', '2026-01-20 11:52:11', NULL, 'RAFFA ADITYA SAPUTRA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6497, 361, '3146934703', '123456', '', '2026-01-20 11:52:11', NULL, 'RAISSAH ZAHIRA PUTRI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6498, 361, '3136775396', '123456', '', '2026-01-20 11:52:12', NULL, 'RASYA VATRIANSYAH', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6499, 361, '3143132228', '123456', '', '2026-01-20 11:52:12', NULL, 'RIFAT ASFA SYAHREZA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6500, 361, '3149272318', '123456', '', '2026-01-20 11:52:12', NULL, 'RIZQI ABBASYI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6501, 361, '0145143059', '123456', '', '2026-01-20 11:52:12', NULL, 'SANDRA BALQIS PRIYA MARETA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6502, 361, '3144644222', '123456', '', '2026-01-20 11:52:12', NULL, 'THANIA CAHYANING RAMADHANI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6503, 361, '3146234768', '123456', '', '2026-01-20 11:52:12', NULL, 'TRI FATMAWATI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6504, 361, '3142874623', '123456', '', '2026-01-20 11:52:12', NULL, 'TRIRISMA ULFATUNNISA', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6505, 361, '3148526865', '123456', '', '2026-01-20 11:52:12', NULL, 'VANIA ANGGREINI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6506, 361, '3144473647', '123456', '', '2026-01-20 11:52:12', NULL, 'WARDATUL AINI', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6507, 361, '3142796455', '123456', '', '2026-01-20 11:52:12', NULL, 'YASMIN NAZIAH SAKINAH', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6508, 361, '3144326811', '123456', '', '2026-01-20 11:52:12', NULL, 'ZHEYA NICHEN SETIAWAN', NULL, NULL, 1, 'Sesi 1', NULL, NULL),
(6509, 362, '1212', '123', '', '2026-01-26 04:35:24', NULL, 'ahmad gifari', NULL, NULL, 1, 'ruang 1,sesi 2', '', NULL),
(6515, 362, '23142', '123', '', '2026-01-26 04:40:49', NULL, 'aman1', NULL, NULL, 1, '', NULL, NULL),
(6516, 362, '23143', '123', '', '2026-01-26 04:40:49', NULL, 'aman2', NULL, NULL, 1, '', NULL, NULL),
(6517, 362, '23144', '123', '', '2026-01-26 04:40:49', NULL, 'aman3', NULL, NULL, 1, '', NULL, NULL),
(6518, 362, '23145', '123', '', '2026-01-26 04:40:49', NULL, 'aman4', NULL, NULL, 1, '', NULL, NULL),
(6519, 362, '23146', '123', '', '2026-01-26 04:40:49', NULL, 'aman5', NULL, NULL, 1, '', NULL, NULL),
(6520, 361, 'tegar', 'tegar', 'tegararrahman17@gmail.com', '2026-01-31 23:20:57', NULL, 'tegar', NULL, NULL, 1, 'test1', '085172166684', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_agent_settings`
--

CREATE TABLE `cbt_user_agent_settings` (
  `id` int NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = enabled, 0 = disabled',
  `allowed_user_agents` text COLLATE utf8mb4_unicode_ci COMMENT 'Comma-separated list of allowed user agents (e.g., Chrome, Edge, Firefox)',
  `block_message` text COLLATE utf8mb4_unicode_ci COMMENT 'Custom message to show when user agent is blocked',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cbt_user_agent_settings`
--

INSERT INTO `cbt_user_agent_settings` (`id`, `enabled`, `allowed_user_agents`, `block_message`, `created_at`, `updated_at`) VALUES
(1, 0, 'Chrome, Edge, Chromium', 'Browser Anda tidak diizinkan untuk mengakses halaman ini. Silakan gunakan Google Chrome atau Microsoft Edge.', '2026-01-31 23:50:01', '2026-02-01 00:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_grup`
--

CREATE TABLE `cbt_user_grup` (
  `grup_id` bigint UNSIGNED NOT NULL,
  `grup_nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cbt_user_grup`
--

INSERT INTO `cbt_user_grup` (`grup_id`, `grup_nama`) VALUES
(361, '5 A'),
(362, '5.B'),
(363, '6.B'),
(360, 'grup yang sudah dibuat');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_login_session`
--

CREATE TABLE `cbt_user_login_session` (
  `user_id` int NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `opsi1` varchar(75) NOT NULL,
  `opsi2` varchar(75) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL COMMENT 'Email user untuk OTP dan notifikasi',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Nomor telepon user untuk OTP WhatsApp dan notifikasi',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete timestamp (NULL = not deleted)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `opsi1`, `opsi2`, `keterangan`, `level`, `ts`, `email`, `phone`, `deleted_at`) VALUES
(1, 'admin', 'ad71fa84f46beadb0a46902368243f62576867bd', 'sanak-aja x tegar-aja', '', '', 'sanak-aja x tegar-aja', 'admin', '2015-07-29 18:12:03', 'xxkenxxyz@gmail.com', '+62 889-8517-2317', NULL),
(4, 'operator', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Operator', '', '', 'Operator', 'Kurikulum', '2018-03-30 12:58:55', NULL, NULL, NULL),
(174, 'teskurikulum', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'teskurikulum', '', '', 'tes aja', 'Kurikulum', '2026-01-26 04:22:55', '', '', NULL),
(175, '12345', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'anggun', '373,372', '', 'tes aja', 'Guru Mapel', '2026-01-26 05:12:06', '', '', NULL),
(176, 'abc', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', 'khalid', '', '', 'Kurikulum ', 'Kurikulum', '2026-02-02 15:54:59', 'myschid77@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE `user_akses` (
  `id` int NOT NULL,
  `level` varchar(75) NOT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `add` int NOT NULL DEFAULT '1' COMMENT '0=false, 1=true',
  `edit` int NOT NULL DEFAULT '1' COMMENT '0=false, 1=true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_akses`
--

INSERT INTO `user_akses` (`id`, `level`, `kode_menu`, `add`, `edit`) VALUES
(254, 'operator-soal', 'modul-daftar', 1, 1),
(255, 'operator-soal', 'modul-filemanager', 1, 1),
(256, 'operator-soal', 'modul-import', 1, 1),
(257, 'operator-soal', 'modul-soal', 1, 1),
(258, 'operator-soal', 'modul-topik', 1, 1),
(260, 'operator-tes', 'tes-token', 1, 1),
(481, 'admin', 'laporan-analisis-butir-soal', 1, 1),
(482, 'admin', 'peserta-kartu', 1, 1),
(483, 'admin', 'peserta-group', 1, 1),
(484, 'admin', 'peserta-daftar', 1, 1),
(485, 'admin', 'modul-daftar', 1, 1),
(486, 'admin', 'tes-daftar', 1, 1),
(487, 'admin', 'tool-backup', 1, 1),
(488, 'admin', 'tes-evaluasi', 1, 1),
(489, 'admin', 'tool-exportimport-soal', 1, 1),
(490, 'admin', 'modul-filemanager', 1, 1),
(492, 'admin', 'peserta-import', 1, 1),
(493, 'admin', 'modul-import', 1, 1),
(494, 'admin', 'modul-import-word', 1, 1),
(496, 'admin', 'user_level', 1, 1),
(497, 'admin', 'user_menu', 1, 1),
(498, 'admin', 'user_atur', 1, 1),
(499, 'admin', 'user-zyacbt', 1, 1),
(500, 'admin', 'laporan-rekap', 1, 1),
(501, 'admin', 'modul-soal', 1, 1),
(502, 'admin', 'tes-tambah', 1, 1),
(503, 'admin', 'tes-token', 1, 1),
(504, 'admin', 'modul-topik', 1, 1),
(529, 'admin', 'peringatan', 1, 1),
(531, 'admin', 'pelanggaran', 1, 1),
(534, 'admin', 'pelanggaran', 1, 1),
(536, 'admin', 'tes', 1, 1),
(537, 'admin', 'tes-tambah', 1, 1),
(538, 'admin', 'tes-daftar', 1, 1),
(539, 'admin', 'tes-evaluasi', 1, 1),
(540, 'admin', 'tes-hasil', 1, 1),
(541, 'admin', 'tes-token', 1, 1),
(577, 'Guru Mapel', 'laporan-rekap', 1, 1),
(578, 'Guru Mapel', 'modul-daftar', 1, 1),
(579, 'Guru Mapel', 'modul-import', 1, 1),
(580, 'Guru Mapel', 'modul-import-word', 1, 1),
(581, 'Guru Mapel', 'modul-soal', 1, 1),
(582, 'Guru Mapel', 'pelanggaran', 1, 1),
(583, 'Guru Mapel', 'tes-daftar', 1, 1),
(584, 'Guru Mapel', 'tes-hasil', 1, 1),
(585, 'Guru Mapel', 'tes-tambah', 1, 1),
(586, 'Kurikulum', 'laporan-rekap', 1, 1),
(587, 'Kurikulum', 'modul-daftar', 1, 1),
(588, 'Kurikulum', 'modul-import', 1, 1),
(589, 'Kurikulum', 'modul-import-word', 1, 1),
(590, 'Kurikulum', 'modul-soal', 1, 1),
(591, 'Kurikulum', 'modul-topik', 1, 1),
(592, 'Kurikulum', 'pelanggaran', 1, 1),
(593, 'Kurikulum', 'peringatan', 1, 1),
(594, 'Kurikulum', 'peserta-daftar', 1, 1),
(595, 'Kurikulum', 'peserta-group', 1, 1),
(596, 'Kurikulum', 'peserta-import', 1, 1),
(597, 'Kurikulum', 'peserta-kartu', 1, 1),
(598, 'Kurikulum', 'tes-daftar', 1, 1),
(599, 'Kurikulum', 'tes-hasil', 1, 1),
(600, 'Kurikulum', 'tes-tambah', 1, 1),
(601, 'Kurikulum', 'tes-token', 1, 1),
(602, 'Kurikulum', 'user_atur', 1, 1),
(603, 'admin', 'peserta-kartu-meja', 1, 1),
(604, 'Kurikulum', 'peserta-kartu-meja', 1, 1),
(605, 'admin', 'admin-download-database', 1, 1),
(606, 'admin', 'admin-pengaturan-keamanan', 1, 1),
(607, 'admin', 'admin-kelola-akun', 1, 1),
(608, 'admin', 'admin-pengaturan-pelanggaran', 1, 1),
(609, 'admin', 'pengaturan-user-agent', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int NOT NULL,
  `level` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `keterangan`) VALUES
(1, 'admin', 'Administrator'),
(7, 'operator-soal', 'Operator Soal'),
(8, 'operator-tes', 'Operator Tes'),
(9, 'Kurikulum', 'Kurikulum'),
(10, 'Guru Mapel', 'Mata Pelajaran');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `log` varchar(250) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int NOT NULL,
  `tipe` int NOT NULL DEFAULT '1' COMMENT '0=parent, 1=child',
  `parent` varchar(50) DEFAULT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '#',
  `icon` varchar(75) NOT NULL DEFAULT 'fa fa-circle-o',
  `urutan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `tipe`, `parent`, `kode_menu`, `nama_menu`, `url`, `icon`, `urutan`) VALUES
(1, 0, '', 'user', 'Pengaturan', '#', 'fa fa-user', 20),
(3, 1, 'user', 'user_atur', 'Pengaturan User', 'manager/useratur', 'fa fa-circle-o', 5),
(4, 1, 'user', 'user_level', 'Pengaturan Level', 'manager/userlevel', 'fa fa-circle-o', 6),
(5, 1, 'user', 'user_menu', 'Pengaturan Menu', 'manager/usermenu', 'fa fa-circle-o', 7),
(6, 0, '', 'modul', 'Data Modul', '#', 'fa fa-book', 2),
(7, 1, 'modul', 'modul-daftar', 'Daftar Soal', 'manager/modul_daftar', 'fa fa-circle-o', 5),
(8, 1, 'modul', 'modul-topik', 'Topik', 'manager/modul_topik', 'fa fa-circle-o', 2),
(10, 0, '', 'peserta', 'Data Peserta', '#', 'fa fa-users', 3),
(11, 1, 'peserta', 'peserta-daftar', 'Daftar Peserta', 'manager/peserta_daftar', 'fa fa-circle-o', 2),
(12, 1, 'peserta', 'peserta-group', 'Daftar Group', 'manager/peserta_group', 'fa fa-circle-o', 1),
(13, 1, 'peserta', 'peserta-import', 'Import Data Peserta', 'manager/peserta_import', 'fa fa-circle-o', 3),
(14, 0, NULL, 'tes', 'Data Tes', '#', 'fa fa-file-text', 4),
(15, 1, 'tes', 'tes-tambah', 'Tambah Tes', 'manager/tes_tambah', 'fa fa-plus', 1),
(16, 1, 'tes', 'tes-daftar', 'Daftar Tes', 'manager/tes_daftar', 'fa fa-list', 2),
(18, 1, 'modul', 'modul-soal', 'Soal', 'manager/modul_soal', 'fa fa-circle-o', 3),
(19, 1, 'tes', 'tes-token', 'Token', 'manager/tes_token', 'fa fa-key', 5),
(22, 1, 'modul', 'modul-filemanager', 'File Manager', 'manager/modul_filemanager', 'fa fa-circle-o', 6),
(24, 1, 'modul', 'modul-import', 'Import Soal Spreadsheet', 'manager/modul_import', 'fa fa-circle-o', 4),
(25, 1, 'tes', 'tes-evaluasi', 'Evaluasi Tes', 'manager/tes_evaluasi', 'fa fa-check-square', 3),
(30, 0, '', 'tool', 'Tool', '#', 'fa fa-wrench', 6),
(31, 1, 'tool', 'tool-backup', 'Database', 'manager/tool_backup', 'fa fa-database', 1),
(32, 1, 'tes-laporan', 'laporan-rekap', 'Rekap Hasil Tes', 'manager/laporan_rekap_hasil', 'fa fa-circle-o', 7),
(33, 1, 'tool', 'tool-exportimport-soal', 'Export / Import Soal', 'manager/tool_exportimport_soal', 'fa fa-circle-o', 2),
(34, 1, 'user', 'user-zyacbt', 'Pengaturan Sistem', 'manager/pengaturan_zyacbt', 'fa fa-circle-o', 1),
(37, 1, 'peserta', 'peserta-kartu', 'Cetak Kartu', 'manager/peserta_kartu', 'fa fa-circle-o', 5),
(38, 0, '', 'tes-laporan', 'Laporan', '#', 'fa fa-print', 5),
(41, 1, 'tes-laporan', 'laporan-analisis-butir-soal', 'Analisis Butir Soal', 'manager/laporan_analisis_butir_soal', 'fa fa-circle-o', 1),
(42, 1, 'tes-laporan', 'laporan-analisis-soal', 'Analisis Soal', 'manager/laporan_analisis_soal', 'fa fa-circle-o', 2),
(43, 1, 'modul', 'modul-import-word', 'Import Soal Word', 'manager/modul_import_word', 'fa fa-circle-o', 4),
(44, 1, 'user', 'peringatan', 'Peringatan Anti-Cheating', '/admin/peringatan', 'fa fa-exclamation-triangle', 8),
(45, 1, NULL, 'pelanggaran', 'Pelanggaran', '/admin/pelanggaran', 'fa fa-ban', 21),
(46, 1, 'tes', 'tes-hasil', 'Hasil Tes', 'manager/tes_hasil', 'fa fa-file-text', 4),
(47, 1, 'peserta', 'peserta-kartu-meja', 'Cetak Nomor Meja', 'manager/peserta_kartu_meja', 'fa fa-circle-o', 6),
(48, 0, NULL, 'admin-download-database', 'Download Database', 'admin/download-database', 'fa fa-database', 999),
(49, 0, NULL, 'admin-pengaturan-keamanan', 'Pengaturan Keamanan', 'admin/pengaturan-keamanan', 'fa fa-shield', 998),
(50, 0, NULL, 'admin-kelola-akun', 'Kelola Akun', 'admin/kelola-akun', 'fa fa-users-cog', 10),
(51, 0, NULL, 'admin-pengaturan-pelanggaran', 'Pengaturan Pelanggaran', 'admin/pengaturan-pelanggaran', 'fa fa-exclamation-triangle', 997),
(52, 1, 'user', 'pengaturan-user-agent', 'User Agent', 'admin/pengaturan/user-agent', 'fa fa-shield-alt', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`jawaban_id`),
  ADD KEY `p_answer_question_id` (`jawaban_soal_id`),
  ADD KEY `idx_jawaban_soal` (`jawaban_soal_id`),
  ADD KEY `idx_cbt_jawaban_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  ADD PRIMARY KEY (`konfigurasi_id`),
  ADD UNIQUE KEY `konfigurasi_kode` (`konfigurasi_kode`);

--
-- Indexes for table `cbt_login_attempts`
--
ALTER TABLE `cbt_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_ip_address` (`ip_address`),
  ADD KEY `idx_locked_until` (`locked_until`),
  ADD KEY `idx_username_ip` (`username`,`ip_address`);

--
-- Indexes for table `cbt_login_log`
--
ALTER TABLE `cbt_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_user_type` (`user_type`),
  ADD KEY `idx_login_status` (`login_status`),
  ADD KEY `idx_ip_address` (`ip_address`),
  ADD KEY `idx_login_at` (`login_at`),
  ADD KEY `idx_user_type_status` (`user_type`,`login_status`),
  ADD KEY `idx_username_date` (`username`,`login_at`);

--
-- Indexes for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  ADD PRIMARY KEY (`modul_id`),
  ADD UNIQUE KEY `ak_module_name` (`modul_nama`),
  ADD KEY `idx_cbt_modul_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_otp`
--
ALTER TABLE `cbt_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_otp_code` (`otp_code`),
  ADD KEY `idx_expires_at` (`expires_at`),
  ADD KEY `idx_verified_at` (`verified_at`),
  ADD KEY `idx_username_ip` (`username`,`ip_address`),
  ADD KEY `idx_otp_code_username` (`otp_code`,`username`);

--
-- Indexes for table `cbt_pelanggaran`
--
ALTER TABLE `cbt_pelanggaran`
  ADD PRIMARY KEY (`pelanggaran_id`),
  ADD KEY `idx_tesuser_id` (`tesuser_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_tes_id` (`tes_id`),
  ADD KEY `idx_waktu` (`waktu_pelanggaran`),
  ADD KEY `idx_cbt_pelanggaran_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_security_settings`
--
ALTER TABLE `cbt_security_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`),
  ADD KEY `idx_key` (`setting_key`),
  ADD KEY `idx_category` (`category`);

--
-- Indexes for table `cbt_sessions`
--
ALTER TABLE `cbt_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `p_question_subject_id` (`soal_topik_id`),
  ADD KEY `idx_cbt_soal_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`tes_id`),
  ADD UNIQUE KEY `ak_test_name` (`tes_nama`),
  ADD KEY `idx_cbt_tes_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD PRIMARY KEY (`tstgrp_tes_id`,`tstgrp_grup_id`),
  ADD KEY `p_tstgrp_test_id` (`tstgrp_tes_id`),
  ADD KEY `p_tstgrp_group_id` (`tstgrp_grup_id`);

--
-- Indexes for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD PRIMARY KEY (`tessoal_id`),
  ADD UNIQUE KEY `ak_testuser_question` (`tessoal_tesuser_id`,`tessoal_soal_id`),
  ADD KEY `p_testlog_question_id` (`tessoal_soal_id`),
  ADD KEY `p_testlog_testuser_id` (`tessoal_tesuser_id`);

--
-- Indexes for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD PRIMARY KEY (`soaljawaban_tessoal_id`,`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_answer_id` (`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_testlog_id` (`soaljawaban_tessoal_id`);

--
-- Indexes for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token_user_id` (`token_user_id`);

--
-- Indexes for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD PRIMARY KEY (`tset_id`),
  ADD KEY `p_tsubset_test_id` (`tset_tes_id`),
  ADD KEY `tsubset_subject_id` (`tset_topik_id`);

--
-- Indexes for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD PRIMARY KEY (`tesuser_id`),
  ADD UNIQUE KEY `ak_testuser` (`tesuser_tes_id`,`tesuser_user_id`,`tesuser_status`),
  ADD KEY `p_testuser_user_id` (`tesuser_user_id`),
  ADD KEY `p_testuser_test_id` (`tesuser_tes_id`);

--
-- Indexes for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD PRIMARY KEY (`topik_id`),
  ADD UNIQUE KEY `ak_subject_name` (`topik_modul_id`,`topik_nama`),
  ADD KEY `idx_cbt_topik_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ak_user_name` (`user_name`),
  ADD KEY `user_groups_id` (`user_grup_id`),
  ADD KEY `user_detail` (`user_detail`),
  ADD KEY `idx_user_name` (`user_name`),
  ADD KEY `idx_user_grup_id` (`user_grup_id`),
  ADD KEY `idx_user_name_grup` (`user_name`,`user_grup_id`),
  ADD KEY `idx_user_email` (`user_email`),
  ADD KEY `idx_user_phone` (`user_phone`),
  ADD KEY `idx_cbt_user_deleted_at` (`deleted_at`);

--
-- Indexes for table `cbt_user_agent_settings`
--
ALTER TABLE `cbt_user_agent_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  ADD PRIMARY KEY (`grup_id`),
  ADD UNIQUE KEY `group_name` (`grup_nama`);

--
-- Indexes for table `cbt_user_login_session`
--
ALTER TABLE `cbt_user_login_session`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_last_activity` (`last_activity`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `level` (`level`),
  ADD KEY `idx_user_email` (`email`),
  ADD KEY `idx_user_phone` (`phone`),
  ADD KEY `idx_user_deleted_at` (`deleted_at`);

--
-- Indexes for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akses_kode_menu` (`kode_menu`),
  ADD KEY `akses_level` (`level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level` (`level`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_menu` (`kode_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `jawaban_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32849;

--
-- AUTO_INCREMENT for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  MODIFY `konfigurasi_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cbt_login_attempts`
--
ALTER TABLE `cbt_login_attempts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_login_log`
--
ALTER TABLE `cbt_login_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  MODIFY `modul_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cbt_otp`
--
ALTER TABLE `cbt_otp`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbt_pelanggaran`
--
ALTER TABLE `cbt_pelanggaran`
  MODIFY `pelanggaran_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2794;

--
-- AUTO_INCREMENT for table `cbt_security_settings`
--
ALTER TABLE `cbt_security_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `soal_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7620;

--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `tes_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  MODIFY `tessoal_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11186;

--
-- AUTO_INCREMENT for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  MODIFY `token_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  MODIFY `tset_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  MODIFY `tesuser_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1148;

--
-- AUTO_INCREMENT for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  MODIFY `topik_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6521;

--
-- AUTO_INCREMENT for table `cbt_user_agent_settings`
--
ALTER TABLE `cbt_user_agent_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  MODIFY `grup_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `user_akses`
--
ALTER TABLE `user_akses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD CONSTRAINT `cbt_jawaban_ibfk_1` FOREIGN KEY (`jawaban_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON DELETE CASCADE;

--
-- Constraints for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD CONSTRAINT `cbt_soal_ibfk_1` FOREIGN KEY (`soal_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE;

--
-- Constraints for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD CONSTRAINT `cbt_tesgrup_ibfk_1` FOREIGN KEY (`tstgrp_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tesgrup_ibfk_2` FOREIGN KEY (`tstgrp_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE;

--
-- Constraints for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD CONSTRAINT `cbt_tes_soal_ibfk_1` FOREIGN KEY (`tessoal_tesuser_id`) REFERENCES `cbt_tes_user` (`tesuser_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_soal_ibfk_2` FOREIGN KEY (`tessoal_soal_id`) REFERENCES `cbt_soal` (`soal_id`);

--
-- Constraints for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_1` FOREIGN KEY (`soaljawaban_tessoal_id`) REFERENCES `cbt_tes_soal` (`tessoal_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_2` FOREIGN KEY (`soaljawaban_jawaban_id`) REFERENCES `cbt_jawaban` (`jawaban_id`);

--
-- Constraints for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD CONSTRAINT `cbt_tes_token_ibfk_1` FOREIGN KEY (`token_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_1` FOREIGN KEY (`tset_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_2` FOREIGN KEY (`tset_topik_id`) REFERENCES `cbt_topik` (`topik_id`);

--
-- Constraints for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD CONSTRAINT `cbt_tes_user_ibfk_1` FOREIGN KEY (`tesuser_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_user_ibfk_2` FOREIGN KEY (`tesuser_user_id`) REFERENCES `cbt_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD CONSTRAINT `cbt_topik_ibfk_1` FOREIGN KEY (`topik_modul_id`) REFERENCES `cbt_modul` (`modul_id`) ON DELETE CASCADE;

--
-- Constraints for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD CONSTRAINT `cbt_user_ibfk_1` FOREIGN KEY (`user_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD CONSTRAINT `user_akses_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `user_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_akses_ibfk_3` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
