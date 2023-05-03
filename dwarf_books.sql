-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 01:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dwarf_books`
--

-- --------------------------------------------------------

--
-- Table structure for table `dwarfbooks`
--

CREATE TABLE `dwarfbooks` (
  `Title` varchar(75) DEFAULT NULL,
  `Author` varchar(21) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Publisher` varchar(36) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dwarfbooks`
--

INSERT INTO `dwarfbooks` (`Title`, `Author`, `Year`, `Publisher`, `ID`) VALUES
('The Dwarven Anvil: A History', 'Gimli Stonefist', 1422, 'Mountain Forge Press', 1),
('The Art of Dwarven Architecture', 'Durin III', 1285, 'Moria Historical Society', 2),
('The Blacksmith\'s Handbook', 'Thrain Ironfoot', 1350, 'Mountain Stronghold Books', 3),
('The Legend of Khazad-dûm', 'Balin Copperbeard', 1325, 'Dwarven Lore Publishers', 4),
('The Book of Dwarven Runes', 'Fili Silverbeard', 1450, 'Dwarven Magic Press', 5),
('The Great Mines of Erebor', 'Bifur Stonehelm', 1276, 'Undermountain Press', 6),
('The Dwarven Kingdoms: A Comprehensive Guide', 'Thorin Oakenshield', 1510, 'Mountain King Press', 7),
('The Book of Dwarf Folklore', 'Dwalin Goldbeard', 1400, 'Dwarvenhome Publishing', 8),
('The Tinker\'s Toolkit: A Practical Guide', 'Gloin Firebeard', 1365, 'Forge Master Press', 9),
('The Secrets of Mithril', 'Oin Bronzebeard', 1435, 'Mountain Keep Publishing', 10),
('The Dwarven Way of Life', 'Dain Stonehand', 1489, 'Dwarven Philosophy Press', 11),
('The Darkening of Moria', 'Balor Graniteheart', 1465, 'Erebor Historical Society', 12),
('The Craft of Dwarven Beer-Making', 'Kili Ironfist', 1376, 'Stone Mug Press', 13),
('The Dwarven Blacksmith: My Life and Craftsmanship', 'Thorgrim Silverbeard', 1320, 'Smithy\'s Guild Books', 14),
('The Book of Dragon Lore', 'Bofur Goldhand', 1399, 'Mountain Dragon Books', 15),
('The Dwarf\'s Guide to Wilderness Survival', 'Bombur Rockfist', 1267, 'Mountain Wanderer Press', 16),
('The Alchemist\'s Guide to Dwarf Magic', 'Glóin Copperbeard', 1430, 'Dwarven Alchemy Press', 17),
('The Chronicles of Nogrod', 'Gimli Broadshoulder', 1315, 'Nogrod Historical Society', 18),
('The Wonders of Dwarf-Made Armor', 'Nori Ironfist', 1348, 'Dwarven Artisan Books', 19),
('The Book of the Dead', 'Dori Steelheart', 1330, 'Mountain Clan Books', 20),
('The Great Dwarven Halls: An Architectural History', 'Balin Silverbeard', 1295, 'Mountain King Press', 21),
('The Book of Dark Arts: A Guide to Dwarf Magic', 'Thorin Goldbeard', 1385, 'Dwarven Magic Press', 22),
('The Dwarf\'s Guide to Mining', 'Fíli Bronzeheart', 1355, 'Mountain Mines Press', 23),
('The Chronicles of Durin\'s Folk', 'Dáin Deepdelver', 1372, 'Moria Historical Society', 24),
('The Craft of Dwarven Metalworking', 'Bifur Rockfist', 1310, 'Mountain Forge Press', 25),
('The Alchemist\'s Handbook: A Guide to Dwarven Alchemy', 'Gloin Copperbeard', 1420, 'Forge Master Press', 26),
('The Dwarven War: A Historical Account', 'Dwalin Ironfoot', 1453, 'Mountain Clan Books', 27),
('The Tinker\'s Guide to Clockwork', 'Bofur Stonehelm', 1340, 'Mountain Wanderer Press', 28),
('The Dwarf\'s Guide to Forging', 'Thorin Steelaxe', 1402, 'Mountain Stronghold Books', 29),
('The Legends of Nogrod: A Collection of Myths and Tales', 'Balin Ironfist', 1325, 'Nogrod Historical Society', 30),
('The Great Dwarven Library: A Comprehensive Catalogue', 'Óin Oakenshield', 1460, 'Dwarven Scholar Press', 31),
('The Book of Dwarven Folk Tales', 'Gimli Ironfist', 1415, 'Dwarvenhome Publishing', 32),
('The Dwarven Kingdoms: A Historical Perspective', 'Kíli Steelheart', 1490, 'Mountain King Press', 33),
('The Dwarven Arts: A Comprehensive Guide', 'Bofur Ironfoot', 1375, 'Dwarven Artisan Books', 34),
('The Lost Mines of Moria', 'Fíli Graniteheart', 1260, 'Erebor Historical Society', 35),
('The Book of Runes: A Complete Guide to Dwarven Writing', 'Dáin Silverbeard', 1330, 'Dwarven Lore Publishers', 36),
('The Dwarven Enchantment: A Guide to Magical Gems', 'Gimli Goldheart', 1445, 'Mountain Magic Press', 37),
('The Dwarf\'s Guide to Battle: A Military Handbook', 'Balin Steelheart', 1395, 'Mountain Clan Books', 38),
('The Craft of Dwarven Stonemasonry', 'Dwalin Granitebeard', 1348, 'Mountain Keep Publishing', 39),
('The Secrets of the Dwarven Language', 'Thorin Stonefist', 1425, 'Dwarven Linguistics Press', 40),
('The Art of Dwarven Engineering: A Guide to Building Machines and Structures', 'Borin Ironhelm', 2458, 'Karaz-a-Karak Publishing', 41),
('Of Grudges and Gold: A Dwarven History', 'Thronir Rockseeker', 2495, 'Karak Azgal Press', 42),
('Dwarven Runes: A Comprehensive Guide', 'Gimli Firebeard', 2514, 'Karak Kadrin Library', 43),
('Karak Norn\'s Finest Grudges', 'Durin Dankil', 2465, 'Karak Norn Historical Society', 44),
('The Dwarven Book of Beards', 'Drogan Hammerhand', 2487, 'Karaz-a-Karak Library', 45),
('The Secrets of Dwarven Smithing', 'Kragg Hammerfist', 2503, 'Karaz-a-Karak Press', 46),
('Dwarven Mountain Living: A Guide to Karak Varn', 'Narvi Stonefist', 2471, 'Karak Varn Cartography', 47),
('The Battle for Karak Hirn: A Tale of Courage and Betrayal', 'Dolgrimm Ironfoot', 2483, 'Karak Hirn Historical Society', 48),
('Karaz-a-Karak\'s Finest Forges', 'Fargrimm Battlehammer', 2477, 'Karaz-a-Karak Forge', 49),
('The Dwarven Codex of War', 'Kurgan Grimaxe', 2457, 'Karaz-a-Karak Press', 50),
('The Runesmith\'s Secrets: Unlocking the Power of Runes', 'Thrain Ironfist', 2515, 'Karak Varn Press', 51),
('Dwarven Honor and Grudges: A History', 'Balgruuf Thunderbeard', 2474, 'Karak Azgaraz Historical Society', 52),
('The Dwarven Battle Plan: A Comprehensive Guide to Warfare', 'Oin Ironbrow', 2491, 'Karaz-a-Karak Publishing', 53),
('Karak Azul\'s Military Strategy', 'Drogan Stonefist', 2462, 'Karak Azul Publishing', 54),
('The Dwarven Art of Stonecraft', 'Balin Axebreaker', 2459, 'Karak Varn Press', 55),
('The Grudgebearer\'s Chronicles: A Record of Dwarven Honor', 'Throgar Grudgebearer', 2519, 'Karaz-a-Karak Historical Society', 56),
('The Dwarven Runemaster: A Practical Guide', 'Thramar Goldbeard', 2489, 'Karak Azgal Press', 57),
('The Dwarven Code of Honor', 'Grimnir Stonefist', 2479, 'Karak Hirn Publishing', 58),
('The Book of Dwarven Battle: Tactics and Strategies', 'Korin Stoneheart', 2506, 'Karak Azgal Press', 59),
('The Karak Norn Grudgebook', 'Borgrimm Ironfoot', 2500, 'Karak Norn Historical Society', 60),
('The Art of Dwarven Runecraft', 'Halgan Stonefist', 2487, 'Karak Kadrin Library', 61),
('The Karak Varn Guide to Runes', 'Korinir Ironbeard', 2509, 'Karak Varn Cartography', 62),
('The Grimoire of Dwarven Runes', 'Gundin Thunderbeard', 2473, 'Karaz-a-Karak Publishing', 63),
('Dwarven Runes and their Meanings', 'Finnar Goldbeard', 2511, 'Karak Azgal Press', 64),
('The Dwarven Tome of Runes', 'Gimnir Stonehammer', 2483, 'Karaz-a-Karak Library', 65),
('The Lost Runes of Karak Eight Peaks', 'Nirgrim Ironfist', 2455, 'Karak Eight Peaks Historical Society', 66),
('The Dwarven Book of Magical Runes', 'Gorin Stoneheart', 2502, 'Karak Azul Press', 67),
('Dwarven Rune Magic: A Guide to Harnessing the Power of Runes', 'Thrain Battlehammer', 2469, 'Karak Kadrin Library', 68),
('The Runes of Karak Hirn', 'Drogan Stonebeard', 2478, 'Karak Hirn Publishing', 69),
('The Dwarven Grimoire: A Compendium of Runes and Spells', 'Balin Silverbeard', 2495, 'Karaz-a-Karak Press', 70),
('The Dwarven Runesmith\'s Handbook', 'Hurgan Goldfist', 2505, 'Karak Azgal Press', 71),
('The Secrets of Karak Kadrin\'s Runesmiths', 'Gimnir Ironfist', 2471, 'Karak Kadrin Historical Society', 72),
('Dwarven Rune Crafting: Techniques and Methods', 'Kurgan Ironfoot', 2492, 'Karaz-a-Karak Forge', 73),
('The Dwarven Codex of Runes', 'Throgar Battleaxe', 2466, 'Karaz-a-Karak Press', 74),
('The Rune Priest\'s Guide to Dwarven Runes', 'Dorin Rockseeker', 2513, 'Karak Varn Press', 75),
('Dwarven Runes for Beginners', 'Finnar Silverbeard', 2490, 'Karaz-a-Karak Library', 76),
('The Dwarven Tome of Magical Glyphs', 'Borgrim Stonefist', 2481, 'Karak Hirn Historical Society', 77),
('The Karak Azgal Runesmith\'s Handbook', 'Korin Goldbeard', 2458, 'Karak Azgal Press', 78),
('The Dwarven Art of Runesmithing', 'Halmir Silverbeard', 2510, 'Karaz-a-Karak Forge', 79),
('The Lost Runes of Karak Norn', 'Gundin Firebeard', 2460, 'Karak Norn Historical Society', 80),
('The Life and Times of King Thror', 'Gimli Stonehelm', 2478, 'Karaz-a-Karak Historical Society', 81),
('Grombrindal the White Dwarf: A Biography', 'Thorgrim Firebeard', 2482, 'Karak Hirn Press', 82),
('Kazador the Great: The Dwarf King Who United the Holds', 'Balin Goldfist', 2491, 'Karak Kadrin Historical Society', 83),
('The Saga of Grimgor Ironhide and Ungrim Ironfist', 'Drogan Thunderbeard', 2512, 'Karak Varn Publishing', 84),
('The Ancestry of King Alrik Ranulfsson', 'Finnar Silverbeard', 2489, 'Karak Azul Genealogy', 85),
('The Life of Barundin Stoneheart, Legendary Runesmith', 'Halgan Ironbeard', 2493, 'Karak Kadrin Press', 86),
('Thorin Oakenshield: A Journey to Erebor', 'Nirgrim Silverbeard', 2503, 'Karaz-a-Karak Publishing', 87),
('Gorbad Ironclaw and the War of the Beard', 'Hurgan Battlehammer', 2456, 'Karak Azgal Historical Society', 88),
('The Story of Grimnir, the Slayer of Dragons', 'Korinir Stonefist', 2485, 'Karaz-a-Karak Press', 89),
('The Legacy of King Thorgrim Grudgebearer', 'Gorin Goldbeard', 2477, 'Karak Hirn Historical Society', 90),
('Durgrim Redaxe and the Battle for Karak Eight Peaks', 'Throgar Ironfoot', 2463, 'Karak Eight Peaks Publishing', 91),
('The Chronicles of Gotrek Gurnisson and Felix Jaeger', 'Dorin Silverbeard', 2509, 'Karak Varn Press', 92),
('The Rise and Fall of King Kazador', 'Halmir Firebeard', 2467, 'Karak Kadrin Historical Society', 93),
('Belegar Ironhammer and the Siege of Karak Eight Peaks', 'Gundin Rockseeker', 2511, 'Karak Azgal Publishing', 94),
('The Life of Snorri Nosebiter, Greatest Dwarf Warrior of the Old World', 'Borgrim Goldbeard', 2484, 'Karaz-a-Karak Press', 95),
('Thorek Ironbrow and the Quest for the Anvil of Doom', 'Thrain Thunderbeard', 2472, 'Karak Hirn Publishing', 96),
('The Tale of Gotrek Gurnisson and the Doom of Karag Dum', 'Kurgan Stoneheart', 2495, 'Karaz-a-Karak Press', 97),
('The Life and Legend of King Belegar Ironhammer', 'Finnar Ironfoot', 2506, 'Karak Kadrin Historical Society', 98),
('The Exploits of Ungrim Ironfist, Slayer of Trolls', 'Gimnir Silverbeard', 2480, 'Karak Varn Press', 99),
('The Life and Times of Thorek Ironbrow', 'Korin Goldbeard', 2514, 'Karak Azul Historical Society', 100);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `Name` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`Name`, `Description`, `ID`) VALUES
('Jorge Garcia', 'Add lore regarding the Dwarfs from World of Warcraft\'s universe.', 2),
('Manuel ', 'The book : Of Dwarfs and Steel is a very good read and should be added here.', 3),
('Michel', 'More books regarding the lizards and dwarfs!', 4),
('Borja', 'There is not enough books about runecraft', 5),
('Lisa', 'I like to read more about Clans in 2502', 6),
('Pter Mid', 'Can we get some more books on times of the War of the Beard?', 18),
('Mauricio', 'I would like books with more pictures', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dwarfbooks`
--
ALTER TABLE `dwarfbooks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dwarfbooks`
--
ALTER TABLE `dwarfbooks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
