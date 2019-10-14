/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `evolutioerevog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `evolutioerevog`;

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
	(1, 'NES', NULL, 1),
	(2, 'megadrive', NULL, 2),
	(3, 'SNES', NULL, 1),
	(4, 'Nintento64', NULL, 1);
/*!40000 ALTER TABLE `console` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `constructeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `date_de_creation` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DELETE FROM `constructeur`;
/*!40000 ALTER TABLE `constructeur` DISABLE KEYS */;
INSERT INTO `constructeur` (`id`, `nom`, `date_de_creation`) VALUES
	(1, 'Nintendo', NULL),
	(2, 'SEGA', NULL);
/*!40000 ALTER TABLE `constructeur` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `jeux_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `region` varchar(10) NOT NULL,
  `developpeur` varchar(255) NOT NULL,
  `editeur` varchar(255) NOT NULL,
  `date_de_creation` date NOT NULL,
  `console_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `console_id` (`console_id`),
  CONSTRAINT `jeux_videos_ibfk_1` FOREIGN KEY (`console_id`) REFERENCES `console` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `jeux_videos`;
/*!40000 ALTER TABLE `jeux_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jeux_videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
