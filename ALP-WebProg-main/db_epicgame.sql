-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2026 at 08:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_epicgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `developer` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `title`, `genre`, `description`, `publisher`, `developer`, `logo`) VALUES
(3, 'PUBG Mobile', 'Survival Sandbox', 'Game battle royale', 'Tencent', 'LightSpeed', 'img/PUBG.jpg'),
(4, 'Resident Evil 4', 'Horror', 'Resident Evil 4 adalah game survival horror klasik yang legendaris. Game ini mengikuti kisah Leon S. Kennedy yang dikirim dalam misi penyelamatan putri Presiden Amerika Serikat ke sebuah desa terpencil di Spanyol yang dikuasai oleh sekte pemuja misterius.\r\n\r\nGameplay:\r\nBerbeda dari seri sebelumnya, Resident Evil 4 memperkenalkan sistem kamera over-the-shoulder yang revolusioner. Pemain harus mengelola inventaris dengan cermat, melakukan pertarungan jarak dekat, dan memecahkan teka-teki lingkungan untuk bertahan hidup melawan para Ganado yang terinfeksi parasit Las Plagas.\r\n\r\nPenerimaan:\r\nSering dianggap sebagai salah satu game terbaik sepanjang masa, Resident Evil 4 telah menetapkan standar baru dalam genre aksi-horror dan memberikan pengaruh besar bagi desain game modern.', 'Capcom', 'Capcom', 'img/RE4.jpg'),
(5, 'Metal Slug', 'Arcade Shooter', 'Metal Slug adalah game run-and-gun arcade klasik yang dikembangkan oleh SNK. Game ini dikenal karena gaya visual pixel-art yang mendetail, karakter yang ikonik, dan aksi yang sangat cepat dan menantang.\r\n\r\nGameplay:\r\nPemain mengendalikan prajurit dari pasukan \"Peregrine Falcon\" yang harus melawan tentara pemberontak, alien, dan monster besar. Fitur utama dalam game ini adalah penggunaan kendaraan tempur bernama \"Metal Slug\", sebuah tank yang dapat melompat dan menembak dengan senjata berat.\r\n\r\nPenerimaan:\r\nMetal Slug dicintai karena tingkat kesulitannya yang tinggi, humor yang khas, dan gameplay yang adiktif. Game ini menjadi ikon dari era kejayaan mesin arcade di seluruh dunia.', 'SNK', 'SNK', 'img/MS.jpg'),
(10, 'Monster Hunter World', 'Survival', 'Monster Hunter: World adalah game action RPG fenomenal yang dikembangkan dan diterbitkan oleh Capcom. Dalam game ini, pemain berperan sebagai pemburu yang ditugaskan oleh Research Commission untuk menyelidiki \"Elder Crossing\", sebuah fenomena migrasi monster raksasa menuju benua baru bernama The New World.\r\n\r\nGameplay:\r\nInti permainan berfokus pada melacak dan mengalahkan berbagai monster yang memiliki ekosistem unik. Pemain dapat memilih dari 14 jenis senjata berbeda, mulai dari pedang raksasa hingga bowgun jarak jauh. Selain bertarung, pemain juga harus memanfaatkan lingkungan sekitar, mengumpulkan material dari monster untuk memperkuat perlengkapan (crafting), dan bekerja sama dalam mode multiplayer hingga empat orang.\r\n\r\nPenerimaan:\r\nGame ini dipuji secara kritis karena ekosistem dunianya yang sangat hidup, sistem pertarungan yang mendalam, dan aksesibilitas yang jauh lebih ramah bagi pemain baru dibandingkan seri-seri sebelumnya. MHW menjadi salah satu game terlaris Capcom sepanjang masa dan menetapkan standar baru untuk genre co-op action RPG.', 'Capcom', 'Capcom', 'img/MHW.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `game_kategori`
--

CREATE TABLE `game_kategori` (
  `game_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_kategori`
--

INSERT INTO `game_kategori` (`game_id`, `kategori_id`) VALUES
(5, 2),
(10, 3),
(3, 1),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `game_objek`
--

CREATE TABLE `game_objek` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_objek`
--

INSERT INTO `game_objek` (`id`, `game_id`, `kategori_id`, `title`, `description`, `gambar`) VALUES
(4, 5, 2, 'Metal Slug', 'Metal Slug adalah game run-and-gun arcade klasik yang dikembangkan oleh SNK. Game ini dikenal karena gaya visual pixel-art yang mendetail, karakter yang ikonik, dan aksi yang sangat cepat dan menantang.\r\n\r\nGameplay:\r\nPemain mengendalikan prajurit dari pasukan \"Peregrine Falcon\" yang harus melawan tentara pemberontak, alien, dan monster besar. Fitur utama dalam game ini adalah penggunaan kendaraan tempur bernama \"Metal Slug\", sebuah tank yang dapat melompat dan menembak dengan senjata berat.\r\n\r\nPenerimaan:\r\nMetal Slug dicintai karena tingkat kesulitannya yang tinggi, humor yang khas, dan gameplay yang adiktif. Game ini menjadi ikon dari era kejayaan mesin arcade di seluruh dunia.', 'img/MS.jpg'),
(5, 10, 3, 'Monster Hunter World', 'Monster Hunter: World adalah game action RPG fenomenal yang dikembangkan dan diterbitkan oleh Capcom. Dalam game ini, pemain berperan sebagai pemburu yang ditugaskan oleh Research Commission untuk menyelidiki \"Elder Crossing\", sebuah fenomena migrasi monster raksasa menuju benua baru bernama The New World.\r\n\r\nGameplay:\r\nInti permainan berfokus pada melacak dan mengalahkan berbagai monster yang memiliki ekosistem unik. Pemain dapat memilih dari 14 jenis senjata berbeda, mulai dari pedang raksasa hingga bowgun jarak jauh. Selain bertarung, pemain juga harus memanfaatkan lingkungan sekitar, mengumpulkan material dari monster untuk memperkuat perlengkapan (crafting), dan bekerja sama dalam mode multiplayer hingga empat orang.\r\n\r\nPenerimaan:\r\nGame ini dipuji secara kritis karena ekosistem dunianya yang sangat hidup, sistem pertarungan yang mendalam, dan aksesibilitas yang jauh lebih ramah bagi pemain baru dibandingkan seri-seri sebelumnya. MHW menjadi salah satu game terlaris Capcom sepanjang masa dan menetapkan standar baru untuk genre co-op action RPG.', 'img/MHW.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ikon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `title`, `description`, `ikon`) VALUES
(1, 'Action RPG', 'Game aksi dengan fokus pada pengembangan karakter dan cerita epik.', 'rpg_icon.png'),
(2, 'Tactical Shooter', 'Game tembak-menembak yang membutuhkan strategi dan kerja sama tim.', 'shooter_icon.png'),
(3, 'Survival Horror', 'Game bertahan hidup dengan nuansa menyeramkan dan resource terbatas.', 'horror_icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_kategori`
--
ALTER TABLE `game_kategori`
  ADD KEY `game_id` (`game_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `game_objek`
--
ALTER TABLE `game_objek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
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
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `game_objek`
--
ALTER TABLE `game_objek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game_kategori`
--
ALTER TABLE `game_kategori`
  ADD CONSTRAINT `game_kategori_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_kategori_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_objek`
--
ALTER TABLE `game_objek`
  ADD CONSTRAINT `game_objek_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_objek_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
