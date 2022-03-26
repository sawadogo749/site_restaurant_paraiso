-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 26 mars 2022 à 14:09
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `paraiso`
--

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `mail` text NOT NULL,
  `tel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prix` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `img` text NOT NULL,
  `categorie` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `prix`, `qte`, `img`, `categorie`) VALUES
(1, 'Attiéké+ poisson carpe braisé+alloco', 1500, 20, './images/attieke.jpg.jpg', 1),
(2, 'Bèga (Haricot)+poulet', 1500, 20, './images/binga.jpg', 1),
(3, 'Babènda', 1000, 20, './images/babenda.jpg', 1),
(4, 'Donkounou+poisson', 1000, 20, './images/d.jpg', 1),
(5, 'Couscous au légumes', 1500, 20, './images/couscous.jpg.jpg', 1),
(6, 'Chitoumou', 1000, 20, './images/chitoumou.jpg', 1),
(7, 'Riz gras+ poulet frit', 1500, 20, './images/pouletDjecount.jpg.jpg', 1),
(8, 'Riz sauce yassa', 1000, 20, './images/yassa.jpg.jpg', 1),
(9, 'Riz sauce tomate', 1000, 20, './images/rizSauceTomate.jpg.jpg', 1),
(10, 'Kafa(tô)+sauce+viande de boeuf', 1000, 20, './images/kafa.jpg', 1),
(11, 'Gonré', 1000, 20, './images/gonre.jpg', 1),
(12, 'Ragout au mouton', 1500, 20, './images/ragout au mouton.jpg', 1),
(13, 'Alloco (Banane plantain frit', 1000, 20, './images/alloco.jpg.jpg', 1),
(14, 'Foutou banane', 1500, 20, './images/foutoubanane.jpg', 1),
(15, 'Riz sauce feuilles+poisson braisé', 1500, 20, './images/sauceFeuilles.jpg', 1),
(16, 'Boullette de viande de boeuf', 1000, 20, './images/bouletteViandeBoeuf.jpg.jpg', 1),
(17, 'Poulet biciclette', 3000, 20, './images/pouletBiciclette.jpg', 1),
(18, 'Ragout d\'ignam', 1000, 20, './images/ragout.jpg.jpg', 1),
(19, 'Salade de légume', 1000, 20, './images/salade.jpg.jpg', 2),
(20, 'Spaghetti bolonaise', 1500, 20, './images/spaghetti bolognaise.jpg', 2),
(21, 'Salade au parmesan', 1500, 20, './images/salade de legueme.jpg', 2),
(22, 'Pomme de terre en robe de chambre', 1000, 20, './images/pomme de terre en robe de chambre.jpg', 2),
(23, 'Crevette', 1500, 20, './images/1.jpg', 2),
(24, 'Haricot vert saute aux légumes', 1500, 20, './images/haricot vert saute.jpg', 2),
(25, 'Spaghetti+viande haché', 1500, 20, './images/spagheti_viande_hachee.jpg', 2),
(26, 'Poulet sauté aux légumes', 3000, 20, './images/poulet dg.jpg', 2),
(27, 'riz au petits poids', 1500, 20, './images/riz au petits poids.jpg', 2),
(28, 'ratatouille de boeuf', 1500, 20, './images/ratatouille de boeuf.jpg', 2),
(29, 'patte au fraumage', 1500, 20, './images/patte au fraumage.jpg', 2),
(30, 'crevette à la viande haché', 2000, 20, './images/crevette+viande haché.jpg', 2),
(31, 'Burger', 1000, 20, './images/3.jpg.jpg', 3),
(32, 'Burger-king', 1500, 20, './images/burger-king.jpg', 3),
(33, 'Shawarma', 1000, 20, './images/shawarma.jpg', 3),
(34, 'Tacos', 1500, 20, './images/tacos.jpg', 3),
(35, 'Paninis', 1000, 20, './images/panini.jpg', 3),
(36, 'Frite', 1500, 20, './images/frites.jpg', 3),
(37, 'Pizza', 4500, 20, './images/pizza.jpg', 3),
(38, 'Poulet Pané', 2500, 20, './images/poulet pane.jpg', 3),
(39, 'Cannette de sucrerie', 700, 20, './images/coca,fanta,sprit.jpg', 4),
(40, 'Vin blanc', 3000, 20, './images/vin blanc.jpeg', 4),
(41, 'Bouteilles de sucrerie', 1000, 20, './images/sucrerie.jpg', 4),
(42, 'Vin rouge', 3000, 20, './images/vin-rouge.jpg', 4),
(43, 'Expresso', 1000, 20, './images/expresso.jpg.jpg', 4),
(44, 'Gapal', 1000, 20, './images/gapal.png', 4),
(45, 'Dèguè', 1000, 20, './images/dèguè.jpg', 4),
(46, 'Jus de tedo', 1000, 20, './images/jus de tedo.jpg', 4),
(47, 'Jus de mangue', 1500, 20, './images/mangue.jpg', 4),
(48, 'jus de zoomcoom', 100, 20, './images/zomcoom.jpg', 4),
(49, 'Vin de bissape', 1000, 20, './images/vin de bissap.png', 4),
(50, 'Champagne', 5000, 20, './images/champoupou.jpg', 4),
(51, 'salade de fruits', 1000, 20, './images/salade-fruits-bien.jpg', 5),
(52, 'gateau aux framboises', 1500, 20, './images/gateau-framboises.jpg', 5),
(53, 'fondant au caramel', 1500, 20, './images/fondant-caramel.jpg', 5),
(54, 'fondant aux chocolat', 1500, 20, './images/fondant aux chocolat.jpg', 5),
(55, 'dessert-creme aux fruits', 1000, 20, './images/dessert-creme-fruit.jpg', 5),
(56, 'creme aux fruits', 1000, 20, './images/creme-aux-fruits.jpg', 5),
(57, 'buches de noel', 1000, 20, './images/buches de noel.jpeg', 5),
(58, 'brochette de creme glacée', 1000, 20, './images/brochette-creme-glace.jpg', 5),
(59, 'sdfghjk', 50000, 78, './images/bissap.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dat` date NOT NULL,
  `Heure` time(5) NOT NULL,
  `NumTable` int(11) NOT NULL,
  `NTable` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `besoin` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `besoin`) VALUES
(1, '', '', 'FCSÂ§/.MKP\r\n F cs;M?KSP%D'),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
