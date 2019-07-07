-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 05 Juillet 2019 à 18:53
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `artinet`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `code_admin` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `mode_passe` varchar(255) NOT NULL,
  PRIMARY KEY (`code_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`code_admin`, `pseudo`, `mode_passe`) VALUES
(1, 'ORNELLA', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `code_article` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_article` varchar(50) NOT NULL,
  `prix_article` int(11) NOT NULL,
  `image_article` varchar(250) NOT NULL,
  `code_cotegorie` int(11) NOT NULL,
  `numero_facture` int(11) NOT NULL,
  PRIMARY KEY (`code_article`),
  KEY `code_cotegorie` (`code_cotegorie`),
  KEY `numero_facture` (`numero_facture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `artinet`
--

CREATE TABLE IF NOT EXISTS `artinet` (
  `numero_artinet` int(11) NOT NULL AUTO_INCREMENT,
  `raison_social` varchar(50) NOT NULL,
  `statut_juridique` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `adresse` varchar(10) NOT NULL,
  PRIMARY KEY (`numero_artinet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `artisans`
--

CREATE TABLE IF NOT EXISTS `artisans` (
  `numero_artisans` int(11) NOT NULL AUTO_INCREMENT,
  `nom_artisans` varchar(50) NOT NULL,
  `prenom_artisans` varchar(50) NOT NULL,
  `adresse_artisans` varchar(15) NOT NULL,
  `rsocial` varchar(50) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `stocks` int(11) NOT NULL,
  PRIMARY KEY (`numero_artisans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `code_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`code_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `numero_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `adresse_client` varchar(255) NOT NULL,
  `telephone_client` varchar(255) NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `sexe_client` varchar(15) NOT NULL,
  `mode_passe` varchar(255) NOT NULL,
  `mode_confirmation` int(255) NOT NULL,
  PRIMARY KEY (`numero_client`),
  KEY `mode_confirmation` (`mode_confirmation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`numero_client`, `nom_client`, `pseudo`, `prenom_client`, `adresse_client`, `telephone_client`, `email_client`, `sexe_client`, `mode_passe`, `mode_confirmation`) VALUES
(1, 'RRR', '', 'TT', '12 rue nkombo', '2420678222', 'ornelabila@yahoo.fr', 'maxculin', 'LOU', 0),
(2, 'Bila', '', 'ORNELA', '12 rue nkombo', '2420678222', 'ornelabila@yahoo.fr', 'femmin', 'LOU', 0),
(3, 'ZARA', 'go', 'ggg', '13 rue ouenze', '24205342111', 'zara@yahoo.fr', 'femmin', 'lou', 0),
(4, 'Bila', 'LOVE', 'FLORA', '20 rue linengué', '09876543', 'florabila@yahoo.fr', 'femmin', 'chocolat', 0);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE IF NOT EXISTS `facture` (
  `numero_facture` int(11) NOT NULL AUTO_INCREMENT,
  `prix_unitaire` int(11) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `prix_TVA` int(11) NOT NULL,
  `numero_artinet` int(11) NOT NULL,
  PRIMARY KEY (`numero_facture`),
  KEY `numero_artinet` (`numero_artinet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE IF NOT EXISTS `livraison` (
  `numero_livraison` int(11) NOT NULL AUTO_INCREMENT,
  `date_livraison` date NOT NULL,
  `numero_client` int(11) NOT NULL,
  PRIMARY KEY (`numero_livraison`),
  KEY `numero_client` (`numero_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
