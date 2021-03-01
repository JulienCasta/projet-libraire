-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 01 mars 2021 à 21:07
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `libraire`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_880E0D76AA08CB10` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210301150109', '2021-03-01 15:01:30', 254);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `date_event` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `image`, `description`, `date_event`, `type`, `titre`) VALUES
(3, NULL, 'Venez découvrir dans votre librairie l\'écrivain Guillaume Musso, il sera présent toute la matinée de 9h à 13h pour vous rencontrer et dédicacer vos livres !', '2021-03-04', 'Dédicace', 'Guillaume Musso vient dédicacer vos livres'),
(8, NULL, 'Venez participer à la fête du livre le tout les premiers jeudi de chaque mois, vous y rencontrerai de nombreux lecteurs amateur avec lesquels vous pourrait partager vos lectures', '2021-03-04', 'Réunion', 'La fête du livre s\'invite dans votre libraire'),
(7, NULL, 'Venez découvrir dans votre librairie l\'écrivain Michel Houellebecq, il sera présent toute la matinée de 9h à 13h pour vous rencontrer et dédicacer vos livres !', '2021-04-01', 'Dédicace', 'Michel Houellebecq vient à votre rencontre'),
(6, NULL, 'Venez découvrir dans votre librairie l\'écrivain Albert Camus, il sera présent toute la journée de 9h à 17h pour vous rencontrer et dédicacer vos livres !', '2021-03-31', 'Dédicace', 'Albert Camus vient vous rencontrer !'),
(9, NULL, 'Ce lundi aura lieu la première édition du concours de lecture, la personne ayant le plus convaincu à la suite d\'un débat remportera le livre de son choix !', '2021-03-07', 'Concours', 'Concours de lecture Vol.1'),
(10, NULL, 'Pour cette seconde édition du concours de lecture nous mettrons à l\'honneur le célèbre écrivain Guillaume Musso qui sera présent afin d\'être le juge pour le débat. \r\n\r\nles gagnants pourront alors repartir avec un livre dédicacé par l\'écrivain ! ', '2021-03-14', 'Concours', 'Concours de lecture Vol.2');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
