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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DELETE FROM `constructeur`;
/*!40000 ALTER TABLE `constructeur` DISABLE KEYS */;
INSERT INTO `constructeur` (`id`, `nom`, `date_de_creation`) VALUES
	(1, 'Nintendo', '1889-09-23');
/*!40000 ALTER TABLE `constructeur` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `console` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `date_de_creation` date DEFAULT NULL,
  `constructeur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `constructeur_id` (`constructeur_id`),
  CONSTRAINT `constructeur_id` FOREIGN KEY (`constructeur_id`) REFERENCES `constructeur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DELETE FROM `console`;
/*!40000 ALTER TABLE `console` DISABLE KEYS */;
INSERT INTO `console` (`id`, `nom`, `date_de_creation`, `constructeur_id`) VALUES
	(1, 'Nintento64', '1996-06-23', 1);
/*!40000 ALTER TABLE `console` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `info_complemantaire_jv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `editeur` varchar(100) NOT NULL,
  `developpeur` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `info_complemantaire_jv`;
/*!40000 ALTER TABLE `info_complemantaire_jv` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_complemantaire_jv` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `console_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id`),
  CONSTRAINT `console_id` FOREIGN KEY (`console_id`) REFERENCES `console` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DELETE FROM `region`;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`id`, `nom`, `console_id`) VALUES
	(1, 'PAL', 1),
	(2, 'NTSC-J', 1),
	(3, 'NTSC-U', 1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `jeux_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `date_de_creation` date NOT NULL,
  `console_id` int(11) NOT NULL,
  `info_complemantaire_jv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id`),
  CONSTRAINT `jeux_videos_ibfk_1` FOREIGN KEY (`console_id`) REFERENCES `console` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DELETE FROM `jeux_videos`;
/*!40000 ALTER TABLE `jeux_videos` DISABLE KEYS */;
INSERT INTO `jeux_videos` (`id`, `image`, `nom`, `date_de_creation`, `console_id`, `info_complemantaire_jv_id`) VALUES
	(1, 'img/jeuxVideos/zeldaOOT.jpg', 'The Legend of Zelda: Ocarina of Time', '1998-11-21', 1, NULL),
	(2, 'img/jeuxVideos/zeldaMM.jpg', 'The Legend of Zelda: Majora\'s Mask', '2000-04-27', 1, NULL),
	(3, 'img/jeuxVideos/007LeMondeNeSuffitPas.jpg', '007 Le Monde Ne Suffit Pas', '2000-10-17', 1, NULL),
	(4, 'img/jeuxVideos/1080Snowboarding.jpg', '1080° Snowboarding', '1998-02-28', 1, NULL),
	(5, 'img/jeuxVideos/64Ozumo.jpg', '64 Ōzumō', '1997-11-28', 1, NULL),
	(6, 'img/jeuxVideos/64Ozumo2.jpg', '64 Ōzumō 2', '1999-03-19', 1, NULL),
	(7, 'img/jeuxVideos/64deHakken!TamagotchiMinnadeTamagotchi.jpg', '64 de Hakken! Tamagotchi Minna de Tamagotchi...', '1997-12-19', 1, NULL),
	(8, 'img/jeuxVideos/64HanafudaTenshinoYakusoku.jpg', '64 Hanafuda: Tenshi no Yakusoku', '1999-11-05', 1, NULL),
	(9, 'img/jeuxVideos/64TrumpCollectionAlicenoWakuWakuTrump.jpg', '64 Trump Collection: Alice no Waku Waku Trump...', '1998-08-07', 1, NULL);
/*!40000 ALTER TABLE `jeux_videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
