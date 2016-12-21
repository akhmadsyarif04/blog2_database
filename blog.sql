-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2016 at 01:15 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `isi`, `waktu`, `tag`) VALUES
(1, 'Pengertian C++', '<p style="text-align: justify;">C++ adalah bahasa pemrograman komputer yang di buat oleh Bjarne Stroustrup, yang merupakan perkembangan dari bahasa C dikembangkan di Bong Labs (Dennis Ritchie) pada awal tahun 1970-an, Bahasa itu diturunkan dari bahasa sebelumnya, yaitu B, Pada awalnya, bahasa tersebut dirancang sebagai bahasa pemrograman yang dijalankan pada sistem Unix, Pada perkembangannya, versi ANSI (American National Standart Institute) Bahasa pemrograman C menjadi versi dominan, Meskipun versi tersebut sekarang jarang dipakai dalam pengembangan sistem dan jaringan maupun untuk sistem embedded, Bjarne Stroustrup pada Bel labs pertama kali mengembangkan C++ pada awal 1980-an. Untuk mendukung fitur-fitur pada C++, dibangun efisiensi dan sistem support untuk pemrograman tingkat rendah (low level coding).Pada C++ ditambahkan konsep-konsep baru seperti class dengan sifat-sifatnya seperti inheritance dan overloading. Salah satu perbedaan yang paling mendasar dengan bahasa C adalah dukungan terhadap konsep pemrograman berorientasi objek (Object Oriented Programming).<br />\r\n<br />\r\nBagi anda yang pernah menggunakan pemograman C atau BASIC, untuk beralis ke C++ bukanlah hal sulit. Karena tidak ada perbedaan yang signifikan pada proses kompilasi program. Skema semua kode C++ dikompilasi menjadi sebuah aplikasi :</p>\r\n\r\n<p style="text-align: justify;"><strong>Script/code program -&gt; preposesor -&gt; kompiler -&gt; assembler -&gt; link editor -&gt; File Excuteable(.EXE)</strong></p>\r\n\r\n<p style="text-align: justify;">Kode program yang tertulis di dalam text editor akan dibentuk menjadi file yang berekstensi .C/.CPP. Selanjutnya, pada setiap baris kode akan di cari preprosesor dijalankan, compiler akan menerjemahkan ke bahasa mesin assembler. Assembler akan memerintahkan mesin (physical machine) untuk mengerjakan seperti apa yang diperintahkan pada kode program. Compiler juga akan membuat link editor untuk membentuk file yang dapat dieksekusi jika ada library lain di luar program.</p>\r\n\r\n<p style="text-align: justify;"><br />\r\n1.Preposesor</p>\r\n\r\n<p style="text-align: justify;">Preposesor adalah baris perintah yang akan dikerjakan sebelum compiler menyusun baris-baris lain di dalam pemograman C++. Dalam penggunaan preprosessor diwakili oleh tanda #(cress) lalu diikuti dengan nama preprosessornya. Ada banya preprosessor pada C++, tapi yang sering digunakan adalah preprosessor &quot;include&quot;. Preprosessor ini berfungsi untuk mengarahkan ke sebuah file header yang akan anda ikut sertakan ke dalam baris kode program anda.</p>\r\n\r\n<p style="text-align: justify;">Header yang sering digunakan adalah header &quot;iostream&quot;. Header ini berfungsi untuk mengenali &quot;cin&quot; dan &quot;cout&quot; pada program C++. Contoh penulisan :</p>\r\n\r\n<p style="text-align: justify;">#include&lt; iostream.h &gt; atau #include&quot;iostream&quot;</p>\r\n\r\n<p style="text-align: justify;"><br />\r\n2.Compiler</p>\r\n\r\n<p style="text-align: justify;">Compiler adalah penjembatan antara baris code ke assembler. Compiler akan menerjemahkan baris-baris kode yang dilewatkan oleh preprosessor. Banyak macam compiler C/C++, yaitu Borland dan Lazarus untuk versi Windows dan compiler gcc atau g++, dan geany untuk linux. Silahkan kalian cari digoogle aplikasi compiler tadi.</p>\r\n\r\n<p style="text-align: justify;"><br />\r\n3. Assembler</p>\r\n\r\n<p style="text-align: justify;">Bagian ini akan mengatur sebuah perintah baris kode menjadi perintah bahasa mesin. Assembler bekerja seperti memerintahkan prosesor dan physical machine melakukan perhitungan, menampilkan ke layar, atau input dari keyboard.</p>\r\n\r\n<p style="text-align: justify;"><br />\r\n4.Link Editor</p>\r\n\r\n<p style="text-align: justify;">Link editor akan terbentuk apabila suatu aplikasi membutuhkan library tambahan pada sebuah sistem operasi. Link editor sangat berfungsi ketika pembentukan executable (.EXE) sebuah aplikasi, sehingga aplikasi dapat berjalan seperti yang diharapkan.</p>\r\n\r\n<p style="text-align: justify;"><br />\r\n<br />\r\nSemoga bisa dipahami dan bermanfaat.. ^_^</p>\r\n', '2016-06-24 16:40:50', 'C++'),
(4, 'CSS', '<p style="text-align:justify"><span style="font-size:18px">CSS adalah singkatan dari Cascading Style Sheets. Berisi rangkaian instruksi yang kita tentukan untuk mempercantik tampilan web. Perancangan desain text/tampilan web dapat dilakukan dengan mendefinisikan fonts (huruf) , colors (warna), margins (ukuran), latar belakang (background), ukuran font (font sizes) dan lain-lain. Elemen-elemen seperti colors (warna) , fonts (huruf), sizes (ukuran) dan spacing (jarak) disebut juga styles. Cascading Style Sheets juga bisa berarti meletakkan styles yang berbeda pada layers (lapisan) yang berbeda. CSS terdiri dari style sheet yang memberitahukan browser bagaimana suatu dokumen akan disajikan. Fitur-fitur baru pada halaman web lama dapat ditambahkan dengan bantuan style sheet. Saat menggunakan CSS, Anda tidak perlu menulis font, color atau size pada setiap paragraf, atau pada setiap dokumen. Setelah Anda membuat sebuah style sheet, Anda dapat menyimpan kode tersebut sekali saja dan dapat kembali menggunakannya bila diperlukan.<br />\r\nContoh sintak CSS internal : </span></p>\r\n\r\n<div class="container">\r\n<div class="line number1 index0 alt2" style="text-align: justify;">&nbsp;</div>\r\n</div>\r\n\r\n<div class="line number11 index10 alt2" style="text-align: justify;">\r\n<div class="container">\r\n<div class="line number1 index0 alt2"><code>&lt;html&gt;</code></div>\r\n\r\n<div class="line number2 index1 alt1"><code>&nbsp;&nbsp;</code><code>&lt;head&gt;</code></div>\r\n\r\n<div class="line number3 index2 alt2"><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>&lt;style&gt;</code></div>\r\n\r\n<div class="line number4 index3 alt1"><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>h</code><code>1</code><code>{</code></div>\r\n\r\n<div class="line number5 index4 alt2"><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>color</code><code>:</code><code>red</code><code>;</code></div>\r\n\r\n<div class="line number6 index5 alt1"><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></div>\r\n\r\n<div class="line number7 index6 alt2"><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>&lt;/style&gt;</code></div>\r\n\r\n<div class="line number8 index7 alt1"><code>&nbsp;&nbsp;</code><code>&lt;/head&gt;</code></div>\r\n\r\n<div class="line number9 index8 alt2"><code>&nbsp;&nbsp;</code><code>&lt;body&gt;</code></div>\r\n\r\n<div class="line number10 index9 alt1"><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>&lt;h</code><code>1</code><code>&gt;Text H</code><code>1</code><code>&lt;/h</code><code>1</code><code>&gt;</code></div>\r\n\r\n<div class="line number11 index10 alt2"><code>&nbsp;&nbsp;</code><code>&lt;/body&gt;</code></div>\r\n\r\n<div class="line number12 index11 alt1"><code>&lt;html&gt;&gt;</code></div>\r\n</div>\r\n</div>\r\n\r\n<div class="line number12 index11 alt1" style="text-align: justify;"><span style="font-size:18px"><code><code>&nbsp;</code></code></span></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:18px"><code><code>Contoh sintak CSS inline :</code></code></span></p>\r\n\r\n<div class="container">\r\n<div class="line number1 index0 alt2" style="text-align: justify;">&nbsp;</div>\r\n</div>\r\n\r\n<div class="container">\r\n<div class="line number1 index0 alt2"><code>&lt;html&gt;</code></div>\r\n\r\n<div class="line number2 index1 alt1"><code>&lt;head&gt;</code></div>\r\n\r\n<div class="line number3 index2 alt2"><code>&nbsp;&nbsp;</code><code>&lt;title&gt;CSS&lt;/title&gt;</code></div>\r\n\r\n<div class="line number4 index3 alt1"><code>&lt;/head&gt;</code></div>\r\n\r\n<div class="line number5 index4 alt2"><code>&lt;body&gt;</code></div>\r\n\r\n<div class="line number6 index5 alt1"><code>&nbsp;&nbsp;</code><code>&lt;h</code><code>1</code> <code>style=</code><code>&quot;color:blue&quot;</code><code>&gt;Text H</code><code>1</code><code>&lt;/h</code><code>1</code><code>&gt;</code></div>\r\n\r\n<div class="line number7 index6 alt2"><code>&lt;/body&gt;</code></div>\r\n\r\n<div class="line number8 index7 alt1"><code>&lt;/html&gt;</code></div>\r\n</div>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:18px"><code><code><code><code>Contoh sintak CSS external :</code></code></code></code></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:18px"><code><code><code><code>#Pertama bikin file nama_file.html tambahkan</code></code></code></code></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:18px"><code><code><code><code>kedalam html dan letakkan diatas seperti dibawah ini :</code></code></code></code></span></p>\r\n\r\n<div class="container">\r\n<div class="line number1 index0 alt2" style="text-align: justify;">&nbsp;</div>\r\n</div>\r\n\r\n<div class="line number2 index1 alt1" style="text-align: justify;">\r\n<div class="container">\r\n<div class="line number1 index0 alt2"><code>&lt;html&gt;</code></div>\r\n\r\n<div class="line number2 index1 alt1"><code>&lt;head&gt;</code></div>\r\n\r\n<div class="line number3 index2 alt2"><code>&nbsp;&nbsp;</code><code>&lt;title&gt;CSS&lt;/title&gt;</code></div>\r\n\r\n<div class="line number4 index3 alt1"><code>&nbsp;&nbsp;</code><code>&lt;link rel=</code><code>&quot;stylesheet&quot;</code> <code>type=</code><code>&quot;text/css&quot;</code> <code>href=</code><code>&quot;nama_file.css&quot;</code><code>&gt;</code></div>\r\n\r\n<div class="line number5 index4 alt2"><code>&lt;/head&gt;</code></div>\r\n\r\n<div class="line number6 index5 alt1"><code>&lt;body&gt;</code></div>\r\n\r\n<div class="line number7 index6 alt2"><code>&nbsp;&nbsp;</code><code>&lt;h</code><code>1</code><code>&gt;Text H</code><code>1</code><code>&lt;/h</code><code>1</code><code>&gt;</code></div>\r\n\r\n<div class="line number8 index7 alt1"><code>&lt;/body&gt;</code></div>\r\n\r\n<div class="line number9 index8 alt2"><code>&lt;/html&gt;</code></div>\r\n</div>\r\n</div>\r\n\r\n<div class="line number5 index4 alt2" style="text-align: justify;">&nbsp;</div>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:18px"><code><code><code><code><code><code>nama_file.css pada href=&quot;nama_file.css&quot;&gt; sesuaikan dengan nama file css anda.<br />\r\n#Kedua bikin file nama_file.css dan copy kode dibawah ini :</code></code></code></code></code></code></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<pre style="text-align:justify">\r\n<span style="font-size:18px"><code><code><code><code><code><code>\r\n        h1{\r\n          font-size:15px;\r\n        }\r\n      </code></code></code></code></code></code></span></pre>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:18px"><code><code><code><code><code><code>Selanjutnya kita akan mengenal nama-nama setiap bagian CSS :</code></code></code></code></code></code></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<pre style="text-align:justify">\r\n<span style="font-size:18px"><code><code><code><code><code><code>\r\n        h1{\r\n          font-size:15px;\r\n        }\r\n      </code></code></code></code></code></code></span></pre>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:18px"><code><code><code><code><code><code>h1 -&gt; Selector</code></code></code></code></code></code></span></li>\r\n	<li style="text-align:justify"><span style="font-size:18px"><code><code><code><code><code><code>{ } -&gt; Deklarasi</code></code></code></code></code></code></span></li>\r\n	<li style="text-align:justify"><span style="font-size:18px"><code><code><code><code><code><code>font-size -&gt; Properti</code></code></code></code></code></code></span></li>\r\n	<li style="text-align:justify"><span style="font-size:18px"><code><code><code><code><code><code>15px -&gt; Nilai/Value</code></code></code></code></code></code></span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:18px"><code><code><code><code><code><code>Sekian dan terimakasih, semoga bermanfaat. ^_^</code></code></code></code></code></code></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', '2016-06-25 13:17:22', '#css'),
(5, 'Warren Buffet', '<p style="text-align:justify"><span style="font-size:20px">Beberapa waktu lalu CNBC mengadakan wawancara satu jam dengan Warren Buffett, salah satu orang terkaya di dunia saat ini yang telah menyumbangkan hingga $ 31 miliar untuk kegiatan sosial. Marilah kita bersama-sama melihat ke dalam beberapa aspek menarik dari cara hidupnya yang terungkap dalam wawancara :</span></p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Ia berinvestasi saham pertama kali pada usia sebelas tahun, tapi dia bilang hal itu sebetulnya sudah terlambat karena ia harus melakukannya pada usia lebih muda lagi. <u>AJARKAN ANAK ANDA UNTUK BERINVESTASI PADA PADA USIA SEDINI MUNGKIN.</u></span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Dia membeli sebuah ladang kecil pada usia empat belas tahun menggunakan uang yang diperolehnya dari loper koran.</span>\r\n\r\n	<p><span style="font-size:20px"><u>TABUNGAN KECIL SELALU BISA MEMBELI SESUATU.<br />\r\n	AJARKAN ANAK ANDA UNTUK MEMULAI BISNIS SEBERAPA KECIL PUN ITU.</u></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Dia masih tinggal di rumah kecilnya dengan tiga kamar di mana telah ia tinggali sejak awal pernikahannya atau tepatnya lima puluh tahun yang lalu. Dia berkata: Saya memiliki semua yang saya butuhkan di rumah itu.</span>\r\n\r\n	<p><span style="font-size:20px"><u>JANGAN MEMBELI SESUATU YANG TIDAK BENAR-BENAR PERLU, AJARKAN HAL INI PADA ANAK-ANAK ANDA.</u></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Dia selalu mengendarai mobilnya sendiri kemanapun ia pergi. Dia berhasil melakukannya tanpa sopir atau pengawal.</span>\r\n\r\n	<p><span style="font-size:20px"><u>JADILAH DIRI ANDA SENDIRI, DAN BERMANDIRILAH.</u></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Dia tidak pernah bepergian dengan jet pribadi, meski ia memiliki perusahaan pesawat jet terbesar di dunia.</span>\r\n\r\n	<p><span style="font-size:20px"><u>SELALU BERPIKIR BAHWA APA YANG ANDA MILIKI ADALAH CUKUP.</u></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">Perusahaannya, Berkshire Hathaway, memiliki 63 perusahaan afiliasi. Setiap tahun ia hanya mengirim satu pesan tertulis kepada masing-masing CEO nya, menginformasikan mereka target tahunan. Dia tidak pernah mengadakan pertemuan apapun atau memanggil mereka.</span>\r\n\r\n	<p><span style="font-size:20px"><u>TARUHLAH ORANG YANG TEPAT DI TEMPAT YANG TEPAT</u></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:20px">Ia hanya menetapkan dua aturan untuk CEO-nya:</span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p><span style="font-size:20px">TENTUKAN TARGET DAN BUATLAH MEREKA FOKUS PADANYA.</span></p>\r\n\r\n<ol>\r\n	<li><span style="font-size:20px">Dia tidak turut serta dalam perkumpulan-perkumpulan kelas atas. Dia menghabiskan waktunya di rumah makan popcorn dan menonton TV. <u>JANGAN MENCOBA UNTUK PAMER, JADILAH PRIBADI YANG SEDERHANA.</u></span></li>\r\n	<li><span style="font-size:20px">Warren Buffett tidak membawa telepon seluler dan tidak memiliki komputer di mejanya.</span></li>\r\n	<li><span style="font-size:20px">Beberapa tahun lalu, Bill Gates yang pernah menempati urutan pertama di antara orang terkaya dunia, membuat janji untuk bertemu Warren Buffett. Rencana tiga puluh menit dia alokasikan untuk pertemuan, Bill Gates akhirnya menghabiskan sepuluh jam untuk belajar bagaimana menjadi seseorang seperti Warren Buffett.</span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:20px">a. Jangan buang uang pemegang saham<br />\r\n	b. Jangan pernah lupa Aturan nomor 1</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px">Warren Buffett memberi beberapa saran ini untuk kaum muda:</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px">Jauhkan diri anda dari kredit bank atau kartu kredit, dan berinvestasi dengan apa yang anda miliki. Dan ingatlah ini:</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px">A. Uang tidak membuat orang, Orang-oranglah yang membuat uang.</span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:20px">B. Jalani kehidupan sederhana milik anda sendiri.</span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:20px">C. Jangan melakukan apapun yang orang lain katakan. Dengarkan mereka tapi hanya melakukan apa yang baik.</span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<span style="font-size:20px">D. Jangan memakai barang bermerk, pakailah yang membuat anda benar-benar nyaman.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px">E. Jangan membuang uang anda pada sesuatu yang tidak benar-benar penting.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px">F. Jika anda berhasil sukses dalam hidup, berbagilah dan ajarkan pada orang lain.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:20px"><em>Orang bahagia bukanlah seseorang yang besar dalam segala hal, tetapi seseorang yang dapat menemukan kesederhanaan dalam hidup. { Warren Buffett } </em></span></p>\r\n', '2016-07-01 05:08:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'syarif', '202cb962ac59075b964b07152d234b70', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
