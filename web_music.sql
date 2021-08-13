-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2021 lúc 01:47 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_music`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `GenresID` int(50) NOT NULL,
  `GenresName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`GenresID`, `GenresName`) VALUES
(1, 'Classic Rock'),
(2, 'Indie'),
(3, 'R&B'),
(4, 'POP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `UserNameC` varchar(1000) NOT NULL,
  `Bank` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderID`, `Total`, `OrderDate`, `UserNameC`, `Bank`, `UserID`) VALUES
(1, 4, '2021-04-09 11:08:28', 'Dat', 2, 1),
(2, 4, '2021-04-08 11:09:10', 'datphit', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

CREATE TABLE `singer` (
  `SingerID` int(50) NOT NULL,
  `SingerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`SingerID`, `SingerName`) VALUES
(1, 'Modern Talking'),
(2, 'Queen'),
(3, 'G-Rose'),
(4, 'The Weeknd'),
(5, 'Richard Marx'),
(6, 'Celine Dion'),
(7, 'Bruno Mars'),
(8, 'Taylor Swift'),
(9, 'Westlife');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `SongID` int(50) NOT NULL,
  `SongName` varchar(1000) NOT NULL,
  `SongPrice` varchar(1000) NOT NULL,
  `SongImg` varchar(1000) NOT NULL,
  `Mp3` varchar(10000) NOT NULL,
  `SongDes` varchar(1000) NOT NULL,
  `SingerID` int(11) NOT NULL,
  `GenresID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`SongID`, `SongName`, `SongPrice`, `SongImg`, `Mp3`, `SongDes`, `SingerID`, `GenresID`) VALUES
(1, 'We Are The Champions', '4', '1.jpg', '1.mp3', '\"We Are the Champions\" is a song by the British rock band Queen, first released on their 1977 album News of the World. Written by lead singer Freddie Mercury, it is considered one of rock\'s most recognisable anthems. The song was a worldwide success, reaching number two in the UK Singles Chart, number four on the Billboard Hot 100 in the United States, number three in Canada and the top ten in many other countries.In 2009, \"We Are the Champions\" was inducted into the Grammy Hall of Fame and was voted the world\'s favourite song in a 2005 Sony Ericsson world music poll. In 2011, a team of scientific researchers concluded that the song was the catchiest in the history of popular music.', 2, 1),
(2, 'We Will Rock You', '4', '2.jpg', '2.mp3', '\"We Will Rock You\" is a song written by Brian May and recorded by British rock band Queen for their 1977 album News of the World. Rolling Stone ranked it number 330 of \"The 500 Greatest Songs of All Time\" in 2004, and it placed at number 146 on the Songs of the Century list in 2001. In 2009, \"We Will Rock You\" was inducted into the Grammy Hall of Fame.', 2, 1),
(3, 'Brother Louie', '6', '3.jpg', '3.mp3', '\"Brother Louie\" is Modern Talking\'s first single from their third album, Ready for Romance. It was their fourth consecutive single to top the German Singles Chart, after \"You\'re My Heart, You\'re My Soul\", \"You Can Win If You Want\" and \"Cheri, Cheri Lady\".', 1, 1),
(4, 'Blinding Lights', '5', '10.png', '4.mp3', '\"Blinding Lights\" is a song by Canadian singer the Weeknd, recorded for his fourth studio album After Hours. It was released on November 29, 2019 as the second single from the album, two days after the release of \"Heartless\". The Weeknd wrote and produced the song with Max Martin and Oscar Holter, with Belly and Jason Quenneville receiving additional credits.', 4, 3),
(5, 'Right Here Waiting', '5', '8.jpg', '5.mp3', '\"Right Here Waiting\" is a song by American singer and songwriter Richard Marx. It was released on June 29, 1989, as the second single from his second album, Repeat Offender. The song was a global hit, topping charts throughout the world, including the U.S. where it reached number one on the Billboard Hot 100. It was certified Platinum by the RIAA. The song has been covered by many artists, including Monica for her album The Boy Is Mine.', 5, 4),
(6, 'My Heart Will Go On', '4', '9.jpg', '6.mp3', '\"My Heart Will Go On\" is a song recorded by Canadian singer Celine Dion. It serves as the main theme song to James Cameron\'s blockbuster film Titanic. The song\'s music was composed by James Horner, its lyrics were written by Will Jennings, while the production was handled by Walter Afanasieff, Horner and Simon Franglen.', 6, 4),
(7, 'Marry You', '4', '10.jpg', '7.mp3', '\"Marry You\" is a song by American singer and songwriter Bruno Mars from his debut studio album, Doo-Wops & Hooligans (2010). Written and produced by the Smeezingtons, it serves as the record\'s sixth track and was released as a single outside of the United States. \"Marry You\" is a pop, doo-wop and soul song. The recording focuses on spontaneous marriage and therefore, since its release, has frequently been used as a proposal song. \"Marry You\" received generally positive reviews from music critics, with some complimenting its production and its reminiscence of 1960s pop style. Some criticized a perceived lack of creativity.', 7, 3),
(8, 'Just The Way You Are', '4', '11.jpg', '8.mp3', '\"Just the Way You Are\" is the debut solo single by American singer-songwriter Bruno Mars. It is the lead single from his debut studio album, Doo-Wops & Hooligans (2010). The song was written by Mars, Philip Lawrence, Ari Levine, Khalil Walton and Needlz and produced by the former three, under their alias, the Smeezingtons along with Needlz. It was released in the United States to contemporary hit radio on August 10, 2010. The track was released in the United Kingdom on September 19, 2010, as \"Just the Way You Are (Amazing)\". The song\'s lyrics compliment a woman\'s beauty.', 7, 4),
(9, 'Love Story', '10', '12.jpg', '9.mp3', '\"Love Story\" is a song written and recorded by American singer-songwriter Taylor Swift. It was released on September 12, 2008 by Big Machine Records, as the lead single from Swift\'s second studio album Fearless (2008), co-produced by Nathan Chapman. Swift wrote the song about a love interest who was not popular among her family and friends. Because of the scenario, she related to the plot of William Shakespeare\'s Romeo and Juliet (1597) and used it as a source of inspiration to compose the song, but replaced the play\'s original tragic conclusion with a happy ending. \"Love Story\" is a midtempo country pop song with dreamy soprano vocals and a continually building melody. Its lyrics are from the perspective of Juliet.', 8, 4),
(10, 'My Love', '5', '13.jpg', '10.mp3', '\"My Love\" is a song by Irish boy band Westlife. It was released on 31 October 2000 as the second single from their second studio album, Coast to Coast. It debuted at number one on the UK Singles Chart, giving the band their seventh UK number one. The song was the 35th best-selling single of 2000 in the UK. It also won The Record of the Year in 2000. It has sold 400,000 copies in the UK.', 9, 4),
(11, 'If I Let You Go', '4', '14.jpg', '11.mp3', '\"If I Let You Go\" is a song by Irish boy band Westlife. It was released in the United Kingdom on 9 August 1999, as the second single from their self-titled debut album. It became the second of the band\'s fourteen UK number 1 hit singles, spending eleven weeks on charts. The song has received a Gold sales certification in the UK for selling over 400,000 in combined sales of purchased and streaming-equivalent sales. It is the band\'s eighth most streamed song, tenth best selling single in paid-for sales category and in combined sales category in the United Kingdom as of January 2019. While it is their sixth most streamed song of all time from their home country, the Republic of Ireland as of 2 April 2019.', 9, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song-order`
--

CREATE TABLE `song-order` (
  `SongID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `PhoneNumber` int(20) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Password`, `PhoneNumber`, `FullName`, `Email`) VALUES
(1, 'dat', '123', 389979662, 'Pham Thanh Dat', 'datptbhaf190023@gmail.com'),
(2, 'datphit', '123', 378506945, 'Pham Thanh Dat', 'datxinhdepp@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenresID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Chỉ mục cho bảng `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`SingerID`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`SongID`),
  ADD KEY `SingerID` (`SingerID`),
  ADD KEY `GenresID` (`GenresID`);

--
-- Chỉ mục cho bảng `song-order`
--
ALTER TABLE `song-order`
  ADD PRIMARY KEY (`SongID`,`OrderID`),
  ADD KEY `fk1` (`OrderID`),
  ADD KEY `SongID` (`SongID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `GenresID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `singer`
--
ALTER TABLE `singer`
  MODIFY `SingerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `SongID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `song-order`
--
ALTER TABLE `song-order`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `song-order_ibfk_1` FOREIGN KEY (`SongID`) REFERENCES `song` (`SongID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
