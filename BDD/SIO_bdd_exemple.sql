-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 01 Octobre 2013 à 15:34
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `exemple`
--
CREATE DATABASE IF NOT EXISTS `exemple` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exemple`;

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

CREATE TABLE IF NOT EXISTS `jeux_video` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(50) DEFAULT NULL,
  `nom` varchar(100) NOT NULL DEFAULT '',
  `possesseur` varchar(50) NOT NULL DEFAULT '',
  `console` varchar(25) NOT NULL DEFAULT '',
  `prix` decimal(10,0) NOT NULL DEFAULT '0',
  `nbre_joueurs_max` tinyint(4) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Contenu de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `photo`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, NULL, 'Super Mario Bros', 'Florent', 'NES', '4', 1, 'Un jeu d''anthologie !'),
(2, NULL, 'Sonic', 'Patrick', 'Megadrive', '2', 1, 'Pour moi, le meilleur jeu au monde !'),
(3, NULL, 'Zelda : ocarina of time', 'Florent', 'Nintendo 64', '15', 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, NULL, 'Mario Kart 64', 'Florent', 'Nintendo 64', '25', 4, 'Un excellent jeu de kart !'),
(5, NULL, 'Super Smash Bros Melee', 'Michel', 'GameCube', '55', 4, 'Un jeu de baston délirant !'),
(6, 'dead_or_alive.jpg', 'Dead or Alive', 'Patrick', 'Xbox', '60', 4, 'Le plus beau jeu de baston jamais créé'),
(7, NULL, 'Dead or Alive Xtreme Beach Volley Ball', 'Patrick', 'Xbox', '60', 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, NULL, 'Enter the Matrix', 'Michel', 'PC', '45', 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, NULL, 'Max Payne 2', 'Michel', 'PC', '50', 1, 'Très réaliste, une sorte de film noir sur fond d''histoire d''amour. A essayer !'),
(10, NULL, 'Yoshi''s Island', 'Florent', 'SuperNES', '6', 1, 'Le paradis des Yoshis :o)'),
(11, NULL, 'Commandos 3', 'Florent', 'PC', '44', 12, 'Un bon jeux d''action où on dirige un commando pendant la 2 ème guerre mondiale !!'),
(12, NULL, 'Final Fantasy X', 'Patrick', 'PS2', '40', 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, NULL, 'Pokemon Rubis', 'Florent', 'GBA', '44', 4, 'Pika-Pika-chu !!!'),
(14, NULL, 'Starcraft', 'Michel', 'PC', '19', 8, 'Le meilleur jeux pc de tout les temps !'),
(15, NULL, 'Grand Theft Auto 3', 'Michel', 'PS2', '30', 1, 'Comme dans les autres Gta on ecrsase tout le monde :) .'),
(16, NULL, 'Homeworld 2', 'Michel', 'PC', '45', 6, 'Superbe ! o_O'),
(17, 'aladdin.jpg', 'Aladdin', 'Patrick', 'SuperNES', '10', 1, 'Comme le dessin Animé !'),
(18, NULL, 'Super Mario Bros 3', 'Michel', 'SuperNES', '10', 2, 'Le meilleur Mario celon moi.'),
(19, NULL, 'SSX 3', 'Florent', 'Xbox', '56', 2, 'Un très bon jeux de snow !'),
(20, NULL, 'Star Wars : Jedi outcast', 'Patrick', 'Xbox', '33', 1, 'Encore un jeux sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'actua_soccer.jpg', 'Actua Soccer 3', 'Patrick', 'PS', '30', 2, 'Un jeux de foot assez bof ...'),
(22, NULL, 'Time Crisis 3', 'Florent', 'PS2', '40', 1, 'un troisième volet efficace mais pas vraiment surprenant'),
(23, NULL, 'X-FILES', 'Patrick', 'PS', '25', 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, NULL, 'Soul Calibur 2', 'Patrick', 'Xbox', '54', 1, 'un jeu bien axé sur le combat'),
(25, NULL, 'Diablo', 'Florent', 'PS', '20', 1, 'Comme sur PC mais la c''est sur un ecran de télé :) !'),
(26, NULL, 'Street Fighter 2', 'Patrick', 'Megadrive', '10', 2, 'Le célèbre jeu de combat !'),
(27, NULL, 'Gundam Battle Assault 2', 'Florent', 'PS', '29', 1, 'jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, NULL, 'Spider-Man', 'Florent', 'Megadrive', '15', 1, 'Vivez l''avanture de l''homme araignée'),
(29, NULL, 'Midtown Madness 3', 'Michel', 'Xbox', '59', 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, NULL, 'Tetris', 'Florent', 'Gameboy', '5', 1, 'Qui ne connait pas ? '),
(31, NULL, 'The Rocketeer', 'Michel', 'NES', '2', 1, 'Un super un film et un jeu de m*rde ...'),
(32, NULL, 'Pro Evolution Soccer 3', 'Patrick', 'PS2', '59', 2, 'Un petit jeu de foot sur PS2'),
(33, NULL, 'Ice Hockey', 'Michel', 'NES', '7', 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, NULL, 'Sydney 2000', 'Florent', 'Dreamcast', '15', 2, 'Les JO de sydneys dans votre salon !'),
(35, NULL, 'NBA 2k', 'Patrick', 'Dreamcast', '12', 2, 'A votre avis :p ?'),
(36, 'alien_vs_predator.jpg', 'Aliens Versus Predator : Extinction', 'Michel', 'PS2', '20', 2, 'un shut''um up pour pc'),
(37, NULL, 'Crazy Taxi', 'Florent', 'Dreamcast', '11', 1, 'Conduite de taxi en folie !'),
(38, NULL, 'Le Maillon Faible', 'Mathieu', 'PS2', '10', 1, 'le jeu de l''émission'),
(39, NULL, 'FIFA 64', 'Michel', 'Nintendo 64', '25', 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, NULL, 'Qui Veut Gagner Des Millions', 'Florent', 'PS2', '10', 1, 'le jeu de l''émission'),
(41, NULL, 'Monopoly', 'Sebastien', 'Nintendo 64', '21', 4, 'Bheuuu le monopoly sur N64 !'),
(42, NULL, 'Taxi 3', 'Corentin', 'PS2', '19', 4, 'un jeu de voiture sur le film'),
(43, NULL, 'Indiana Jones Et Le Tombeau De L''Empereur', 'Florent', 'PS2', '25', 1, 'Notre avanturier préféré est de retour !!!'),
(44, NULL, 'F-ZERO', 'Mathieu', 'GBA', '25', 4, 'Un super jeux de course futuriste !'),
(45, NULL, 'Harry Potter Et La Chambre Des Secrets', 'Mathieu', 'Xbox', '30', 1, 'Abracadabra !! le célebre magicien est de retour !'),
(46, NULL, 'Half-Life', 'Corentin', 'PC', '15', 32, 'L''autre meilleur jeux de tout les temps (surtout ses mods , cs, ns ,dod , etc ).'),
(47, NULL, 'Myst III Exile', 'Sébastien', 'Xbox', '49', 1, 'Un jeu de réflexion'),
(48, NULL, 'Wario World', 'Sebastien', 'Gamecube', '40', 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, NULL, 'Rollercoaster Tycoon', 'Florent', 'Xbox', '29', 1, 'Jeu de gestion d''un parc d''attraction'),
(50, NULL, 'Splinter Cell', 'Patrick', 'Xbox', '53', 1, 'Jeu magnifique !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
