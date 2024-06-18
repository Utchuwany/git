-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 02:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `surname` varchar(127) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Pracownik','Kierownik','Administrator') NOT NULL DEFAULT 'Pracownik',
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `role`, `active`) VALUES
(1, 'Jan', 'Kowalski', 'jan@o2.pl', '$2y$10$UIfDwXAeBpyeyBlBOfbV6uCrNOikvGo6WdhtJ.u1Oyzo07XHDVNfS', 'Administrator', 0),
(2, 'Tom', 'Tomas', 'tom@o2.pl', '$2y$10$Q8/ckn4FCp2dk0GRn3f9gu3Uf6jD23eeHhi9Q/N9m0Kcvi//SMTAq', 'Kierownik', 0),
(3, 'Piotr', 'Piotrowicz', 'piotr@o2.pl', '$2y$10$GCbZdhRL9z.tZmyw02QCWe.276gdK.giR.WlLt7saBtnIwabBTtUO', 'Pracownik', 0),
(4, 'Tomasz', 'Smokowiksi', 'tomasz@o2.pl', '$argon2id$v=19$m=65536,t=4,p=1$QTB6cWRWcW5yS1ZtNFdBMQ$kZo3t+sTvxucWnTrkk06lJ1DGo9A+spWOKlynEXt428', 'Administrator', 0),
(5, 'Tomasz', 'Smokowiksi', 'tomasz@o2.pl', '$argon2id$v=19$m=65536,t=4,p=1$TDhJSlMuN2tGd0xEUThvNg$RlkUOD48ZPqy24NWs6DSbVceD+3DpPrRtueSwuN8+fA', 'Administrator', 0),
(6, 'Testowicz', 'Testowiak', 'testowy@o2.pl', '$argon2id$v=19$m=65536,t=4,p=1$WTQzaC9CamFvRmVLQnpKMg$e7MKeHVoR6fgJOWPv/WAAdGSkkqfFv/b+qR171O9ECk', 'Kierownik', 0),
(7, 'testo', 'Wironik', 'testowiak@o2.pl', '$argon2id$v=19$m=65536,t=4,p=1$RTlQeWNLWXNkd0QzYmRUOA$ubQsTw+cxNIQcZ64i3gu1wZVClacC50/WBLM2/ClU5Q', 'Pracownik', 0);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `calendar` date NOT NULL,
  `year` smallint(6) NOT NULL,
  `month` smallint(6) NOT NULL,
  `day` smallint(6) NOT NULL,
  `id_worker` int(11) NOT NULL,
  `hours` tinyint(4) NOT NULL,
  `comment_user` text DEFAULT NULL,
  `comment_superviser` text DEFAULT NULL,
  `comment_admin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`calendar`, `year`, `month`, `day`, `id_worker`, `hours`, `comment_user`, `comment_superviser`, `comment_admin`) VALUES
('2024-06-04', 2024, 6, 0, 5, 21, '', 'yyyyyyyyyyyyyyyyy', ''),
('2024-06-06', 2024, 6, 6, 4, 7, 'komentarz usera', 'komentarz kirasa', 'komentarz admina'),
('2024-06-11', 2024, 6, 0, 1, 22, NULL, 'aaaaaaaaaaaaaaaaaaaaaa', NULL),
('2024-06-27', 2024, 6, 7, 0, 0, '', 'jjjjjjjjjjjjjjjkkjkjkjjk', ''),
('2024-06-27', 2024, 6, 27, 1, 8, '', 'njinijnibubuivyv', ''),
('2024-06-27', 2024, 6, 0, 2, 2, '', 'ttttttttttttttttttttttttttttttttt', ''),
('2024-06-29', 2024, 6, 29, 1, 12, '', '', ''),
('2024-11-28', 2024, 11, 28, 2, 2, '', 'afafafafafaf', ''),
('2024-12-12', 2024, 2, 12, 3, 9, '', 'ibibbuuguuyuy', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`calendar`,`id_worker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
