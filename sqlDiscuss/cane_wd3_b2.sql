SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tbl_department` (
  `fld_did` int(11) NOT NULL,
  `fld_dep_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_dep_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_department` (`fld_did`, `fld_dep_name`, `fld_dep_head`) VALUES
(1, 'props', 'jon'),
(2, 'meals', 'jonny'),
(3, 'entertainment', 'jon jon'),
(5, 'maintenance', 'jj');

CREATE TABLE `tbl_image` (
  `fld_imgid` int(11) NOT NULL,
  `fld_imgname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_imgnotes` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_image` (`fld_imgid`, `fld_imgname`, `fld_imgnotes`) VALUES
(1, '1609983936-bat1.jpg', 'Horseshoe bats are bats in the family Rhinolophidae. In addition to the single living genus, Rhinolophus, which has about 106 species, the extinct genus Palaeonycteris has also been recognized. Horseshoe bats are closely related to the Old World leaf-nosed bats, family Hipposideridae, which have sometimes been included in Rhinolophidae. The horseshoe bats are divided into six subgenera and many species groups. The most recent common ancestor of all horseshoe bats lived 34–40 million years ago, though it is '),
(2, '1609984240-Charles_gounod.jpg', 'Ave Maria is a popular and much-recorded setting of the Latin prayer Ave Maria, originally published in 1853 as Méditation sur le Premier Prélude de Piano de S. Bach. The piece consists of a melody by the French Romantic composer Charles Gounod that he superimposed over an only very slightly changed version of the Prelude No. 1 in C major, BWV 846, from Book I of J. S. Bach\'s The Well-Tempered Clavier, published in 1722. <br/>\r\nGounod improvised the melody, and his future father-in-law Pierre-Joseph-Guillaume Zimmermann transcribed the improvisation[1] and in 1853 made an arrangement for violin (or cello) with piano and harmonium. The same year it appeared with the words of Alphonse de Lamartine\'s poem Le livre de la vie (\"The Book of Life\").[2] In 1859, Jacques-Léopold Heugel published a version with the familiar Latin text. The version of Bach\'s prelude used by Gounod includes the \"Schwencke measure\" (m.23), a measure allegedly added by Christian Friedrich Gottlieb Schwencke in an attempt to correct what he'),
(3, '1609984362-330px-Black_Rock_Church_in_Fairfield,_CT.jpg', 'Black Rock Church is a non-denominational church located in Fairfield, Connecticut. The church was established in 1849 in the Black Rock section of Bridgeport, Connecticut, and moved to its current site in 1968. Approximately 4000 adults and children attend the church\'s four weekend services.[1] \r\nIn the late 1840s, a group of villagers of the Black Rock section of Fairfield, Connecticut, (later to become a part of the city of Bridgeport) parishioners of the First Church of Christ in Fairfield, Connecticut, decided that they would build a new meeting house in Black Rock, rather than continue the challenging three-mile weekly trip across the creek and marshland that separated the two sections of the town. A new church was established, and its meeting house was dedicated in August 1849 at the corner of Ellsworth St. and Bartram Ave.[2]'),
(4, '1609984541-375px-Forum_Copenhagen.jpg', 'Forum Copenhagen (Danish: Forum København) is a large multi-purpose, rentable indoor arena located in Frederiksberg, Denmark. It hosts a large variety of concerts, markets, exhibitions and other events. The venue can hold up to 10,000 people depending on the event. The Forum operates as a convention center, concert hall and indoor arena.\r\n\r\nIt was opened in February 1926 to host a car exhibition and was last renovated in 1996–97. Over two storeys there is a combined exhibition floor area of 5,000 m2> and a separate restaurant for up to 250 seated guests. The Metro station Forum is adjacent to the building. \r\nOn August 11, 1925, the construction committee signed the contract to build the venue. On 25 September 1925, Prime Minister Thorvald Stauning laid the foundation stone for the construction. Forum opened for the first time on February 20, 1926, for this year\'s major automotive exhibition. Forum Copenhagen was designed by Oscar Gundlach-Pedersen, and the lighting was from Poul Henningsen\'s brand new PH-lamp');

CREATE TABLE `tbl_sample1` (
  `fld_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_sample1` (`fld_name`) VALUES
(NULL);

CREATE TABLE `tbl_sample2` (
  `fld_product` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_price` float(20,4) NOT NULL,
  `fld_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_sample2` (`fld_product`, `fld_category`, `fld_price`, `fld_quantity`) VALUES
('Payless Xtra Big Original(Blue)', 'Instant Noodles', 14.2500, 50),
('Payless Xtra Big Sweet n Spicy(yellow)', 'Instant Noodles', 14.7500, 20),
('Lucky Me Original(yellow)', 'Instant Noodles', 9.4000, 30);

CREATE TABLE `tbl_sample3` (
  `fld_id` int(11) NOT NULL,
  `fld_product` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_price` float(20,4) NOT NULL,
  `fld_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_sample3` (`fld_id`, `fld_product`, `fld_category`, `fld_price`, `fld_quantity`) VALUES
(1, 'Lily\'s Peanut Butter 470 grams', 'Spreads', 208.4500, 5),
(2, 'Nutella Dark Choco 300 grams', 'Spreads', 172.4400, 10),
(4, 'Baguio\'s Strawberry Jam', 'Spreads', 150.0000, 3),
(6, 'Extra big Original', 'Instant Noodles', 14.2500, 30),
(7, 'Samyeong', 'Instant Noodles', 25.5000, 20),
(8, 'Chiz Whiz', 'Spreads', 67.0000, 10),
(10, 'Nissin Yakisoba Green', 'Instant Noodles', 8.7000, 30),
(11, 'Reno Liver Spread', 'Spreads', 20.0000, 30),
(12, 'Nescafe Coffee 100 grams', 'Drinks', 75.2400, 12),
(13, 'CoffeeMate 500g', 'Drinks', 112.0000, 5),
(14, 'Nescafe Coffee 50g', 'Drinks', 38.9500, 8),
(15, 'Lucky Me Mac n Cheese Deluxe', 'Instant Noodles', 20.0000, 12),
(16, 'Piatos Sour Cream 100g', 'Snacks', 24.8500, 15),
(17, ' Zesto Rootbeer', 'Drinks', 60.0000, 8),
(18, 'Ligo Green', 'Canned Goods', 20.0000, 25),
(19, '555 Adobo', 'Canned Goods', 24.0000, 10),
(20, 'Chippy Small', 'Snacks', 12.0000, 12),
(22, 'Piatos Green Big', 'Snacks', 24.0000, 20),
(23, 'Mang Juan Green', 'Snacks', 18.0000, 30),
(24, 'Argentina Corned Beef', 'Canned Goods', 27.0000, 10);

CREATE TABLE `tbl_workers` (
  `fld_wid` int(11) NOT NULL,
  `fld_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_contact` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_workers` (`fld_wid`, `fld_Name`, `fld_address`, `fld_contact`, `fld_did`) VALUES
(1, 'sdf', '16sdf', '5532221', 1),
(2, 'asd', '23asd', '5508062', 1),
(3, 'fas', '30fas', '4656338', 2),
(4, 'dfa', '14dfa', '2304208', 3),
(11, 'qw', '70qw', '8652543', 3),
(12, 'tret', '32tret', '5073897', 2),
(15, 'ouio', '57ouio', '3574726', 2),
(16, 'mari', '44mari', '8411616', 4),
(17, '', '', '', 0),
(18, '', '', '', 0),
(19, 'sample1', '44 bagoong road', '8 555 1212', 1),
(20, 'sample2', '23 bananaville', '0988 555 1234', 0),
(21, 'Sally', '144 Salt Pile Avenue, Brgy. Maalat, Quezon City', '0955 555 4414', 5),
(22, 'Sally', '144 Salt Pile Avenue, Brgy. Maalat, Quezon City', '0955 555 4414', 5),
(23, 'Mabini', '56 Heroes Avenue', '8 555 4242', 2);

CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `test` (`id`) VALUES
(2);


ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`fld_did`);

ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`fld_imgid`);

ALTER TABLE `tbl_sample3`
  ADD PRIMARY KEY (`fld_id`);

ALTER TABLE `tbl_workers`
  ADD PRIMARY KEY (`fld_wid`);


ALTER TABLE `tbl_department`
  MODIFY `fld_did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `tbl_image`
  MODIFY `fld_imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tbl_sample3`
  MODIFY `fld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `tbl_workers`
  MODIFY `fld_wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
