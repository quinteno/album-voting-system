-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2018 at 01:00 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `records`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums_2`
--

CREATE TABLE `albums_2` (
  `artist` varchar(39) DEFAULT NULL,
  `album` varchar(40) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `image` varchar(173) DEFAULT NULL,
  `genre` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums_2`
--

INSERT INTO `albums_2` (`artist`, `album`, `year`, `image`, `genre`, `id`, `vote`) VALUES
('At The Drive In', 'Acrobatic Tenement ', '1996', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/88/At_the_Drive-In_-_Acrobatic_Tenement_cover.jpg/220px-At_the_Drive-In_-_Acrobatic_Tenement_cover.jpg', 'post-hardcore', 1, 0),
('At The Drive In', 'in/CASINO/OUT', '1998', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/90/At_the_Drive-In_-_In-Casino-Out_cover.jpg/220px-At_the_Drive-In_-_In-Casino-Out_cover.jpg', 'post-hardcore', 3, 0),
('Now, Now', 'Threads', '2012', 'https://i.scdn.co/image/e784ce013ea28027c54b619bd1d49f71809797d3', 'indie', 4, 0),
('The Mars Volta', 'A Plague Upon Your Hissing Children', '', 'https://images.genius.com/7216f6d23dd074b91e203722de2d8ce2.600x600x1.jpg', 'prog', 6, 0),
('The Mars Volta', 'Live At The Electric Ballroom', '2003', 'https://img.discogs.com/LR5P5JNy176ESliSBRYhMsizT4Q=/fit-in/589x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1521023-1386014551-4065.jpeg.jpg', 'prog', 7, 0),
('The Mars Volta', 'Frances the Mute b/w The Widow (live)', '2005', 'https://t2.genius.com/unsafe/300x0/https%3A%2F%2Fimages.genius.com%2Fdfab62c52d1ffe986747dfb0ba27ef94.500x500x1.jpg', 'prog', 8, 0),
('Portugal. The Man', 'Church Mouth', '2007', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Ptm_church_mouth_cover_hi.jpg/220px-Ptm_church_mouth_cover_hi.jpg', 'psychedelic-rock', 9, 0),
('Omar Rodriguez Lopez', 'Telesterion', '2011', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Telesterion.jpg/220px-Telesterion.jpg', 'prog', 10, 0),
('Anywhere', 'Anywhere', '2012', 'https://images.vice.com/noisey/content-images/contentimage/no-slug/c0dd61439c02bca54627b133b7bc886c.jpg', 'psychedelic-rock', 11, 0),
('Antemasque', 'Antemasque', '2014', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Antemasque-logo-640x640.jpg/220px-Antemasque-logo-640x640.jpg', 'rock', 12, 0),
('Henrietta', 'Paper Wings', '2016', 'https://f4.bcbits.com/img/a0495638851_10.jpg', 'emo', 13, 0),
('Henrietta', 'The Trick Is Not Minding', '2014', 'https://f4.bcbits.com/img/a3346732436_10.jpg', 'indie', 14, 0),
('Vondelpark', 'Seabed', '2013', 'https://media.pitchfork.com/photos/5929b98cea9e61561daa6ff9/1:1/w_320/06e9dba1.jpg', 'indie', 15, 0),
('Boyfrndz', 'Breeder', '2014', 'http://www.metalsucks.net/wp-content/uploads/2014/04/Boyfrndz-Breeder.jpg', 'psychedelic-rock', 16, 0),
('Glass Animals', 'ZABA', '2014', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/32/Glass_animals_zaba.jpg/220px-Glass_animals_zaba.jpg', 'indie', 17, 0),
('Oval/Liturgy', 'Split LP', '2011', 'https://f4.bcbits.com/img/0001557046_10.jpg', 'black-metal', 18, 0),
('Mutoid Man', 'Bleeder', '2015', 'https://f4.bcbits.com/img/a0532705310_5.jpg', 'metal', 19, 0),
('Tycho', 'Awake', '2014', 'https://images-na.ssl-images-amazon.com/images/I/61CPNRajC7L._SL1226_.jpg', 'electronic', 20, 0),
('Crypts', 'Crypts', '2012', 'https://f4.bcbits.com/img/a3522460040_10.jpg', 'electronic', 21, 0),
('Horror Show', 'Notes from the night that never ended', '2010', 'https://cdn.shopify.com/s/files/1/1528/8689/products/minihslphi_2000x.jpg?v=1475769703', 'hardcore', 22, 0),
('No Age', 'Nouns', '2008', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1a/Nouns.jpg/220px-Nouns.jpg', 'indie', 23, 0),
('Vaura', 'The Missing', '2013', 'https://f4.bcbits.com/img/a1067198019_10.jpg', 'black-metal', 24, 0),
('The Melvins', 'Hold It In', '2014', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Melvins_Hold_it_In.jpg/220px-Melvins_Hold_it_In.jpg', 'rock', 25, 0),
('Native', 'Orthodox', '2013', 'https://f4.bcbits.com/img/a4159937038_10.jpg', 'post-hardcore', 26, 0),
('Portugal. The Man', 'American Ghetto', '2010', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/American_Ghetto_Cover_300_DPI2.jpg/220px-American_Ghetto_Cover_300_DPI2.jpg', 'psychedelic-rock', 27, 0),
('No Age', 'Losing Feeling', '2009', 'https://f4.bcbits.com/img/a1960842990_10.jpg', 'indie', 28, 0),
('Jethro Tull', 'Aqualung', '1971', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/19/JethroTullAqualungalbumcover.jpg/220px-JethroTullAqualungalbumcover.jpg', 'prog', 29, 0),
('Coheed & Cambria', 'The Afterman: Descension', '2013', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/The_Afterman_Descension_album_cover.jpg/220px-The_Afterman_Descension_album_cover.jpg', 'prog', 30, 0),
('Coheed & Cambria', 'The Afterman: Descension Big Beige Demos', '2013', 'https://t2.genius.com/unsafe/300x0/https%3A%2F%2Fimages.genius.com%2F8a1b2b54472fbb351115af7ef703ced0.1000x1000x1.jpg', 'prog', 31, 0),
('Tera Melos', 'X’ed Out', '2012', 'https://f4.bcbits.com/img/a1188063755_5.jpg', 'math-rock', 32, 0),
('Tycho', 'Dive', '2011', 'http://cdn.ghostly.com/images/artists/34/albums/371/Dive_Cover_1400_Mock_540_540.jpg', 'electronic', 33, 0),
('This Town Needs Guns', '13.0.0.0.0', '2013', 'https://f4.bcbits.com/img/a0692060189_10.jpg', 'math-rock', 34, 0),
('Wayne Szalinski', 'black mirror', '2014', 'https://f4.bcbits.com/img/a1467832819_10.jpg', 'indie', 35, 0),
('Marriages', 'Kitsune', '2012', 'https://f4.bcbits.com/img/a3210800160_10.jpg', 'metal', 36, 0),
('Zach Hill', 'Face Tat', '2010', 'https://f4.bcbits.com/img/a1999178925_10.jpg', 'electronic', 37, 0),
('Nothing ', 'Guilty of Everything', '2014', 'https://f4.bcbits.com/img/a3943802535_10.jpg', 'shoegaze', 38, 0),
('RX Bandits', 'Gemini, Her Majesty', '2014', 'https://t2.genius.com/unsafe/300x0/https%3A%2F%2Fimages.genius.com%2F3f90131bdab9b05731521bdbcf7ef798.1000x1000x1.jpg', 'rock', 39, 0),
('Ghost Cat', 'Cave Sounds', '2012', 'https://f4.bcbits.com/img/a1142925484_16.jpg', 'rock', 40, 0),
('Walla + Sombear', 'Split', '2013', 'https://static.stereogum.com/uploads/2013/04/Walla-Never-Give-Up-Sombear-Incredibly-Still-608x608.jpg', 'electronic', 41, 0),
('Black Milk', 'Brain/Royal Mega', '2011', 'http://www.ifmusic.co.uk/images/product_images/blackmilk-brain.jpg', 'hip-hop', 42, 0),
('Chelsea Wolfe & King Dude', 'Sing Songs Together...', '2012', 'https://f4.bcbits.com/img/a0438643991_10.jpg', 'folk', 43, 0),
('Ghost Cat/Always Wanted War', 'split', '2015', 'https://f4.bcbits.com/img/a1468945882_16.jpg', 'rock', 44, 0),
('Cloakroom', 'Lossed Over', '2015', 'https://f4.bcbits.com/img/a2776618262_10.jpg', 'shoegaze', 45, 0),
('You Blew It!', 'Pioneer of Nothing', '2015', 'https://f4.bcbits.com/img/a4241697992_16.jpg', 'emo', 46, 0),
('You Blew It!/Fake Problems', 'Split', '2013', 'https://f4.bcbits.com/img/a2759549263_16.jpg', 'emo', 47, 0),
('True Widow', 'True Widow', '2008', 'https://images-na.ssl-images-amazon.com/images/I/413aI3msY7L._SY355_.jpg', 'shoegaze', 51, 0),
('At The Drive-In', 'VAYA EP', '1999', 'https://upload.wikimedia.org/wikipedia/en/c/c9/At_the_Drive_In_-_Vaya_cover.jpg', 'post-hardcore', 106, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums_2`
--
ALTER TABLE `albums_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums_2`
--
ALTER TABLE `albums_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
