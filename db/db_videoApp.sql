-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 06:38 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` int(11) NOT NULL,
  `movies_title` varchar(60) NOT NULL,
  `movies_desc` varchar(1000) NOT NULL,
  `movies_date` varchar(20) NOT NULL,
  `movies_cover` varchar(100) NOT NULL,
  `movies_genre` varchar(50) NOT NULL,
  `movies_likes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_desc`, `movies_date`, `movies_cover`, `movies_genre`, `movies_likes`) VALUES
(1, 'Gravity', 'Dr. Ryan Stone (Sandra Bullock) is a medical engineer on her first shuttle mission. Her commander is veteran astronaut Matt Kowalsky (George Clooney), helming his last flight before retirement. Then, during a routine space walk by the pair, disaster strikes: The shuttle is destroyed, leaving Ryan and Matt stranded in deep space with no link to Earth and no hope of rescue. As fear turns to panic, they realize that the only way home may be to venture further into space.', '2013', 'gravity.jpg', 'Drama', '9,984'),
(2, 'Guardians Of The Galaxy Vol.2', 'Peter Quill and his fellow Guardians are hired by a powerful alien race, the Sovereign, to protect their precious batteries from invaders. When it is discovered that Rocket has stolen the items they were sent to guard, the Sovereign dispatch their armada to search for vengeance. As the Guardians try to escape, the mystery of Peter\'s parentage is revealed.', '2017', 'guardians2.jpg', 'Fantasy', '10,498'),
(3, 'Logan', 'In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.', '2017', 'logan.jpg', 'Drama', '976'),
(4, 'Life of Pi', 'After deciding to sell their zoo in India and move to Canada, Santosh and Gita Patel board a freighter with their sons and a few remaining animals. Tragedy strikes when a terrible storm sinks the ship, leaving the Patels\' teenage son, Pi (Suraj Sharma), as the only human survivor. However, Pi is not alone; a fearsome Bengal tiger has also found refuge aboard the lifeboat. As days turn into weeks and weeks drag into months, Pi and the tiger must learn to trust each other if both are to survive.', '2012', 'pi.jpg', 'Adventure', '67,005'),
(5, 'Trolls', 'After the Bergens invade Troll Village, Poppy (Anna Kendrick), the happiest Troll ever born, and the overly-cautious, curmudgeonly Branch (Justin Timberlake) set off on a journey to rescue her friends. Their mission is full of adventure and mishaps, as this mismatched duo try to tolerate each other long enough to get the job done.', '2016', 'trolls.jpg', 'Fantasy', '45'),
(6, 'The Revenant', 'While exploring the uncharted wilderness in 1823, frontiersman Hugh Glass (Leonardo DiCaprio) sustains life-threatening injuries from a brutal bear attack. When a member (Tom Hardy) of his hunting team kills his young son (Forrest Goodluck) and leaves him for dead, Glass must utilize his survival skills to find a way back to civilization. Grief-stricken and fueled by vengeance, the legendary fur trapper treks through the snowy terrain to track down the man who betrayed him.', '2015', 'revenant.jpg', 'Thriller', '97,576');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_title` varchar(60) NOT NULL,
  `music_desc` varchar(1000) NOT NULL,
  `music_date` varchar(20) NOT NULL,
  `music_cover` varchar(100) NOT NULL,
  `music_genre` varchar(50) NOT NULL,
  `music_likes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_title`, `music_desc`, `music_date`, `music_cover`, `music_genre`, `music_likes`) VALUES
(1, 'Love On The Brain', 'Anti is the eighth studio album by Barbadian singer Rihanna. It was released on January 27, 2016, through Westbury Road and Roc Nation. Wikipedia', 'January 28th, 2016', 'love.jpg', 'Hip Hop', '783,380'),
(2, 'Only One (feat. Paul McCartney)', 'A song written to Kanye\'s recently deceased mother; Mari. He sings about his first born child.', 'January 30th, 2015', 'only.jpg', 'Hip Hop', '234,859');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `shows_id` int(11) NOT NULL,
  `shows_title` varchar(60) NOT NULL,
  `shows_desc` varchar(1000) NOT NULL,
  `shows_date` varchar(20) NOT NULL,
  `shows_cover` varchar(100) NOT NULL,
  `shows_genre` varchar(50) NOT NULL,
  `shows_likes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`shows_id`, `shows_title`, `shows_desc`, `shows_date`, `shows_cover`, `shows_genre`, `shows_likes`) VALUES
(1, 'The Office', 'This U.S. adaptation -- set at a paper company based in Scranton, Pa. -- has a similar documentary style to that of the Ricky Gervais-led British original. It features the Dunder-Mifflin staff, which includes characters based on roles in the British show -- and, quite possibly, people with whom you work in your office. There\'s Jim, the likable employee who\'s a bit of an every man. Jim has a thing for receptionist-turned-sales-rep Pam -- because office romances are always a good idea! There\'s also Dwight, the co-worker who is successful but devoid of social skills and common sense.', 'March 24th, 2005', 'office.jpg', 'Comedy', '1,094,947'),
(2, 'Game Of Thrones', 'George R.R. Martin\'s best-selling book series \"A Song of Ice and Fire\" is brought to the screen as HBO sinks its considerable storytelling teeth into the medieval fantasy epic. It\'s the depiction of two powerful families -- kings and queens, knights and renegades, liars and honest men -- playing a deadly game for control of the Seven Kingdoms of Westeros, and to sit atop the Iron Throne.', 'April 17th, 2011', 'got.jpg', 'Drama', '4,492,598');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`shows_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `shows_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
