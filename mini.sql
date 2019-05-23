-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.40-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table mini.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mini.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `author_id`, `title`, `content`, `is_draft`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Menggunakan UUID (Universally Unique Identifier) di PHP', 'Problem 1: Tebak-Tebak Berhadiah\r\n\r\nSelama ini, kita sering menggunakan Auto-Increment Integer sebagai Primary Key dalam tabel-tabel database kita. Kemudian biasanya dalam aplikasi web, kita mengakses data tersebut dengan alamat URL seperti ini:\r\n\r\nhttp://myapplication.com/user?id=105\r\nhttp://myapplication.com/user/105\r\n\r\nPengguna aplikasi kita bisa mengenali dengan mudah URL tersebut, dimana User ID kita adalah 105. Suatu saat pengguna tersebut iseng-iseng mengakses URL dan mengganti User ID misal 104, atau 106. Sehingga User bisa mengetahui siapa User yang mendaftar sebelum dan sesudah dirinya, padahal bisa jadi itu tidak diperbolehkan. Atau, pengguna menggunakan User ID = 1, yang mana biasanya User ID 1 itu adalah User Administrator, tentu ini berbahaya.\r\n\r\nAtau bisa saja ada orang iseng, hacker, yang penasaran, lalu membuat sebuah program untuk mendapatkan data-data semua User, hanya dengan perintah sederhana, sebagai contoh:', 0, '2019-05-20 17:27:28', '2019-05-20 21:24:06'),
	(2, 2, 1, 'Mengenal Struktur Direktori Laravel 5', 'Pada kesempatan kali ini saya akan membahas tentang struktur direktori pada laravel 5. Mengapa hal ini ingin saya bahas? Menurut saya laravel 5 memiliki susunan direktori yang berbeda dari framework-framework PHP lainnya. Secara garis besar, kebanyakan framework PHP yang menganut pola MVC (Model-View-Controller) menggunakan skema direktori dengan nama “Model”, “View” dan “Controller” yang seluruhnya dikumpulkan kedalam sebuah direktori utama yang bernama “src” atau “app” / “application” (seperti Code Igniter). Pada skema tersebut, direktori “Model” digunakan untuk menyimpan class PHP yang berhubugan dengan model database, kemudian direktori “Controller” digunakan untuk menyimpan class PHP yang berhubungan dengan application logic dan direktori “View” digunakan untuk menyimpan file-file yang berhubungan tampilan aplikasi. Konvensi struktur direktori tersebut juga digunakan oleh laravel versi 5 namun dengan struktur yang sedikit berbeda dari biasanya dan (menurut saya) hal ini akan membuat bingung para pengguna framework yang baru berpindah dari framework lain seperti Yii / Code Igniter.', 0, '2019-05-20 17:27:28', '2019-05-20 17:37:32'),
	(3, 3, 2, 'Instalasi Laravel 5', 'Cara 1: Via Installer Laravel\r\n\r\nPertama, download installer laravel:\r\n\r\ncomposer global require "laravel/installer=~1.1"\r\n\r\nSelanjutnya, jalankan perintah berikut:\r\n\r\nlaravel new sisfo\r\n\r\nKelebihan\r\n\r\n    Relatif lebih cepat.\r\n    Keywordnya lebih simpel dan mudah diingat.\r\n    Dijamin mendapatkan update kode terbaru.\r\n\r\nKekurangan\r\n\r\n    Perlu koneksi internet untuk mendowloand library lainnya.\r\n    Perlu satu langkah tambahan untuk mendownload installer laravel.\r\n\r\nPerkiraan Waktu\r\n\r\n    2 menit*\r\n', 0, '2019-05-20 17:27:28', '2019-05-20 17:37:41'),
	(4, 3, 2, 'Package Pilihan Minggu Ini #1: Workflow', 'Laravel Debugbar\r\n\r\nIngin tahu query yang dihasilkan oleh Eloquent dan berapa lama waktunya?\r\n\r\nIngin tahu berapa penggunaan memory dari suatu request?\r\n\r\nIngin ada fitur layaknya console.log di Javascipt untuk memudahkan debugging?\r\n\r\nDan masih banyak lagi lainnya. Laravel Debugbar memberikan informasi tambahan terkait halaman yang sedang Anda buka. Sangat membantu sekali selama masa development.\r\n\r\nLink: https://github.com/barryvdh/laravel-debugbar\r\nLaravel Generator\r\n\r\nLaravel Generator membantu mempercepat workflow Anda dengan menggenerate file-file template untuk model, controller, seeder, migration untuk pivot table dan banyak lagi. Tidak ada lagi copy-paste-edit :D\r\n\r\nhttps://github.com/laracasts/Laravel-5-Generators-Extended\r\nLaravel IDE Helper Generator\r\n\r\nJika Anda menggunakan Sublime Text, PHP Storm ataupun IDE lainnya, maka Laravel IDE Generator akan meng-generate ringkasan file yang berisi class dan fungsi untuk membantu IDE yang Anda gunakan sehingga bisa menampilkan autocomplete yang akurat. Tidak perlu lagi bolak-balik mencontek dokumentasi :P\r\n\r\nhttps://github.com/barryvdh/laravel-ide-helper\r\n\r\n    Ups, apakah ada package yang sering Anda gunakan dalam masa pengembangan yang belum disebutkan? Kasih tahu saya dengan cara menuliskan komentar di bawah ya ;)\r\n', 0, '2019-05-20 17:27:28', '2019-05-20 17:38:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table mini.song
CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` text COLLATE utf8_unicode_ci NOT NULL,
  `track` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mini.song: ~30 rows (approximately)
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` (`id`, `artist`, `track`, `link`) VALUES
	(3, 'The Orwells', 'In my Bed (live)', 'http://www.youtube.com/watch?v=8tA_2qCGnmE'),
	(4, 'L\'Orange & Stik Figa', 'Smoke Rings', 'https://www.youtube.com/watch?v=Q5teohMyGEY'),
	(5, 'Labyrinth Ear', 'Navy Light', 'http://www.youtube.com/watch?v=a9qKkG7NDu0'),
	(6, 'Bon Hiver', 'Wolves (Kill them with Colour Remix)', 'http://www.youtube.com/watch?v=5GXAL5mzmyw'),
	(7, 'Detachments', 'Circles (Martyn Remix)', 'http://www.youtube.com/watch?v=UzS7Gvn7jJ0'),
	(8, 'Dillon & Dirk von Loetzow', 'Tip Tapping (Live at ZDF Aufnahmezustand)', 'https://www.youtube.com/watch?v=hbrOLsgu000'),
	(9, 'Dillon', 'Contact Us (Live at ZDF Aufnahmezustand)', 'https://www.youtube.com/watch?v=E6WqTL2Up3Y'),
	(10, 'Tricky', 'Hey Love (Promo Edit)', 'http://www.youtube.com/watch?v=OIsCGdW49OQ'),
	(11, 'Compuphonic', 'Sunset feat. Marques Toliver (DJ T. Remix)', 'http://www.youtube.com/watch?v=Ue5ZWSK9r00'),
	(12, 'Ludovico Einaudi', 'Divenire (live @ Royal Albert Hall London)', 'http://www.youtube.com/watch?v=X1DRDcGlSsE'),
	(13, 'Maxxi Soundsystem', 'Regrets we have no use for (Radio1 Rip)', 'https://soundcloud.com/maxxisoundsystem/maxxi-soundsystem-ft-name-one'),
	(14, 'Beirut', 'Nantes (Fredo & Thang Remix)', 'https://www.youtube.com/watch?v=ojV3oMAgGgU'),
	(15, 'Buku', 'All Deez', 'http://www.youtube.com/watch?v=R0bN9JRIqig'),
	(16, 'Pilocka Krach', 'Wild Pete', 'http://www.youtube.com/watch?v=4wChP_BEJ4s'),
	(17, 'Mount Kimbie', 'Here to stray (live at Pitchfork Music Festival Paris)', 'http://www.youtube.com/watch?v=jecgI-zEgIg'),
	(18, 'Kool Savas', 'King of Rap (2012) / Ein Wunder', 'http://www.youtube.com/watch?v=mTqc6UTG1eY&hd=1'),
	(19, 'Chaim feat. Meital De Razon', 'Love Rehab (Original Mix)', 'http://www.youtube.com/watch?v=MJT1BbNFiGs'),
	(20, 'Emika', 'Searching', 'http://www.youtube.com/watch?v=oscuSiHfbwo'),
	(21, 'Emika', 'Sing to me', 'http://www.youtube.com/watch?v=k9sDBZm8pgk'),
	(22, 'George Fitzgerald', 'Thinking of You', 'http://www.youtube.com/watch?v=-14B8l49iKA'),
	(23, 'Disclosure', 'You & Me (Flume Edit)', 'http://www.youtube.com/watch?v=OUkkaqSNduU'),
	(24, 'Crystal Castles', 'Doe Deer', 'http://www.youtube.com/watch?v=zop0sWrKJnQ'),
	(25, 'Tok Tok vs. Soffy O.', 'Missy Queens Gonna Die', 'http://www.youtube.com/watch?v=EN0Tnw5zy6w'),
	(26, 'Fink', 'Maker (Synapson Remix)', 'http://www.youtube.com/watch?v=Dyd-cUkj4Nk'),
	(27, 'Flight Facilities (ft. Christine Hoberg)', 'Clair De Lune', 'http://www.youtube.com/watch?v=Jcu1AHaTchM'),
	(28, 'Karmon', 'Turning Point (Original Mix)', 'https://www.youtube.com/watch?v=-tB-zyLSPEo'),
	(29, 'Shuttle Life', 'The Birds', 'http://www.youtube.com/watch?v=-I3m3cWDEtM'),
	(30, 'SantÃ©', 'Homegirl (Rampa Mix)', 'http://www.youtube.com/watch?v=fnhMNOWxLYw');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
