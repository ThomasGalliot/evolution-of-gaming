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
  `nom_jeux` varchar(100) NOT NULL,
  `editeur` varchar(100) NOT NULL,
  `developpeur` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DELETE FROM `info_complemantaire_jv`;
/*!40000 ALTER TABLE `info_complemantaire_jv` DISABLE KEYS */;
INSERT INTO `info_complemantaire_jv` (`id`, `nom_jeux`, `editeur`, `developpeur`) VALUES
	(1, '007 Le Monde Ne Suffit Pas', 'EA Games, MGM Interactive', 'Eurocom'),
	(2, '1080° Snowboarding', 'Nintendo', 'Nintendo EAD'),
	(3, '64 Ōzumō', 'Bottom Up', 'Bottom Up'),
	(4, '64 Ōzumō 2', 'Bottom Up', 'Bottom Up'),
	(5, '64 de Hakken! Tamagotchi Minna de Tamagotchi...', ' 	Bandai', ' 	AI'),
	(6, '64 Hanafuda: Tenshi no Yakusoku', 'Altron', 'Altron'),
	(7, '64 Trump Collection: Alice no Waku Waku Trump...', 'Bottom Up', 'Bottom Up');
/*!40000 ALTER TABLE `info_complemantaire_jv` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(100) NOT NULL,
  `console_id_region` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id_region`),
  CONSTRAINT `console_id` FOREIGN KEY (`console_id_region`) REFERENCES `console` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DELETE FROM `region`;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`id`, `nom_region`, `console_id_region`) VALUES
	(1, 'PAL', 1),
	(2, 'NTSC-J', 1),
	(3, 'NTSC-U', 1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `jeux_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `nom_jv` varchar(100) NOT NULL,
  `date_de_creation` date NOT NULL,
  `console_id_jv` int(11) NOT NULL,
  `info_complemantaire_jv_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id_jv`),
  KEY `info_complémantaire_jv_id` (`info_complemantaire_jv_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `jeux_videos_ibfk_1` FOREIGN KEY (`console_id_jv`) REFERENCES `console` (`id`),
  CONSTRAINT `jeux_videos_ibfk_2` FOREIGN KEY (`info_complemantaire_jv_id`) REFERENCES `info_complemantaire_jv` (`id`),
  CONSTRAINT `jeux_videos_ibfk_3` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

DELETE FROM `jeux_videos`;
/*!40000 ALTER TABLE `jeux_videos` DISABLE KEYS */;
INSERT INTO `jeux_videos` (`id`, `image`, `nom_jv`, `date_de_creation`, `console_id_jv`, `info_complemantaire_jv_id`, `region_id`) VALUES
	(1, 'img/jeuxVideos/007LeMondeNeSuffitPasPAL.jpg', '007 Le Monde Ne Suffit Pas', '2000-10-17', 1, 1, 1),
	(2, 'img/jeuxVideos/007TheWorldIsNotEnoughUTSC-E.jpg', '007 The World Is Not Enough', '2000-10-17', 1, 1, 3),
	(3, 'img/jeuxVideos/1080SnowboardingNTSC-J.jpg', '1080° Snowboarding', '1998-02-28', 1, 2, 2),
	(4, 'img/jeuxVideos/1080SnowboardingNTSC-U.jpg', '1080° Snowboarding', '1998-04-01', 1, 2, 3),
	(5, 'img\\jeuxVideos\\1080SnowboardingPAL.jpg', '1080° Snowboarding', '1998-11-30', 1, 2, 1),
	(6, 'img/jeuxVideos/64Ozumo.jpg', '64 Ōzumō', '1997-11-28', 1, 3, 2),
	(7, 'img/jeuxVideos/64Ozumo2.jpg', '64 Ōzumō 2', '1999-03-19', 1, 4, 2),
	(8, 'img/jeuxVideos/64deHakken!TamagotchiMinnadeTamagotchi.jpg', '64 de Hakken! Tamagotchi Minna de Tamagotchi...', '1997-12-19', 1, 5, 2),
	(9, 'img/jeuxVideos/64HanafudaTenshinoYakusoku.jpg', '64 Hanafuda: Tenshi no Yakusoku', '1999-11-05', 1, 6, 2),
	(10, 'img/jeuxVideos/64TrumpCollectionAlicenoWakuWakuTrump.jpg', '64 Trump Collection: Alice no Waku Waku Trump...', '1998-08-07', 1, 7, 2);
/*!40000 ALTER TABLE `jeux_videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
