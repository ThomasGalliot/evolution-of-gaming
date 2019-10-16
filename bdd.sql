/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `evolutioerevog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `evolutioerevog`;

CREATE TABLE IF NOT EXISTS `constructeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `date_de_creation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DELETE FROM `constructeur`;
/*!40000 ALTER TABLE `constructeur` DISABLE KEYS */;
INSERT INTO `constructeur` (`id`, `nom`, `date_de_creation`) VALUES
	(1, 'Nintendo', '1889-09-23'),
	(2, 'SEGA', '1960-06-03');
/*!40000 ALTER TABLE `constructeur` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `console` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `date_de_creation` date DEFAULT NULL,
  `constructeur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `constructeur_id` (`constructeur_id`),
  CONSTRAINT `constructeur_id` FOREIGN KEY (`constructeur_id`) REFERENCES `constructeur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DELETE FROM `console`;
/*!40000 ALTER TABLE `console` DISABLE KEYS */;
INSERT INTO `console` (`id`, `nom`, `date_de_creation`, `constructeur_id`) VALUES
	(1, 'NES', '1983-07-15', 1),
	(2, 'megadrive', '1988-10-29', 2),
	(3, 'SNES', '1990-11-21', 1),
	(4, 'Nintento64', '1996-06-23', 1);
/*!40000 ALTER TABLE `console` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `jeux_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `developpeur` varchar(255) NOT NULL,
  `editeur` varchar(255) NOT NULL,
  `date_de_creation` date NOT NULL,
  `console_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id`),
  CONSTRAINT `jeux_videos_ibfk_1` FOREIGN KEY (`console_id`) REFERENCES `console` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DELETE FROM `jeux_videos`;
/*!40000 ALTER TABLE `jeux_videos` DISABLE KEYS */;
INSERT INTO `jeux_videos` (`id`, `image`, `nom`, `developpeur`, `editeur`, `date_de_creation`, `console_id`) VALUES
	(1, 'img/jeuxVideos/zeldaOOT.jpg', 'The Legend of Zelda: Ocarina of Time', 'Nintendo EAD', 'Nintendo', '1998-11-21', 4),
	(2, 'img/jeuxVideos/zeldaMM.jpg', 'The Legend of Zelda: Majora\'s Mask', 'Nintendo EAD', 'Nintendo', '2000-04-27', 4),
	(3, 'img/jeuxVideos/007LeMondeNeSuffitPas.jpg', '007 Le Monde Ne Suffit Pas', 'Eurocom', 'EA Games, MGM Interactive', '2000-10-17', 4),
	(4, 'img/jeuxVideos/1080Snowboarding.jpg', '1080° Snowboarding', 'Nintendo EAD', 'Nintendo', '1998-02-28', 4),
	(5, 'img/jeuxVideos/64Ozumo.jpg', '64 Ōzumō', 'Bottom Up', 'Bottom Up', '1997-11-28', 4),
	(6, 'img/jeuxVideos/64Ozumo2.jpg', '64 Ōzumō 2', 'Bottom Up', 'Bottom Up', '1999-03-19', 4),
	(7, 'img/jeuxVideos/64deHakken!TamagotchiMinnadeTamagotchi.jpg', '64 de Hakken! Tamagotchi Minna de Tamagotchi...', 'AI', 'Bandai', '1997-12-19', 4),
	(8, 'img/jeuxVideos/64HanafudaTenshinoYakusoku.jpg', '64 Hanafuda: Tenshi no Yakusoku', 'Altron', 'Altron', '1999-11-05', 4),
	(9, 'img/jeuxVideos/64TrumpCollectionAlicenoWakuWakuTrump.jpg', '64 Trump Collection: Alice no Waku Waku Trump...', 'Bottom Up', 'Bottom Up', '1998-08-07', 4);
/*!40000 ALTER TABLE `jeux_videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
