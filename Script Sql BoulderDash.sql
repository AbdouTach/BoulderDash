-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 09:45
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `boulderdash`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `GetDiamonds_1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDiamonds_1` ()  BEGIN
SELECT diamonds
FROM diamonds
WHERE map = 1;
END$$

DROP PROCEDURE IF EXISTS `GetDiamonds_2`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDiamonds_2` ()  BEGIN
SELECT diamonds
FROM diamonds
WHERE map = 2;
END$$

DROP PROCEDURE IF EXISTS `GetDiamonds_3`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDiamonds_3` ()  BEGIN
SELECT diamonds
FROM diamonds
WHERE map = 3;
END$$

DROP PROCEDURE IF EXISTS `GetDiamonds_4`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDiamonds_4` ()  BEGIN
SELECT diamonds
FROM diamonds
WHERE map = 4;
END$$

DROP PROCEDURE IF EXISTS `GetDiamonds_5`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDiamonds_5` ()  BEGIN
SELECT diamonds
FROM diamonds
WHERE map = 5;
END$$

DROP PROCEDURE IF EXISTS `procedure_LV1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_LV1` ()  SQL SECURITY INVOKER
BEGIN
SELECT*
FROM LV1;
END$$

DROP PROCEDURE IF EXISTS `procedure_LV2`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_LV2` ()  SQL SECURITY INVOKER
BEGIN
SELECT*
FROM LV2;
END$$

DROP PROCEDURE IF EXISTS `procedure_LV3`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_LV3` ()  SQL SECURITY INVOKER
BEGIN
SELECT *
FROM LV3;
END$$

DROP PROCEDURE IF EXISTS `procedure_LV4`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_LV4` ()  SQL SECURITY INVOKER
BEGIN
SELECT *
FROM LV4;
END$$

DROP PROCEDURE IF EXISTS `procedure_LV5`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_LV5` ()  SQL SECURITY INVOKER
BEGIN
SELECT *
FROM LV5;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `diamonds`
--

DROP TABLE IF EXISTS `diamonds`;
CREATE TABLE IF NOT EXISTS `diamonds` (
  `map` varchar(50) NOT NULL,
  `diamonds` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `diamonds`
--

INSERT INTO `diamonds` (`map`, `diamonds`) VALUES
('1', 10),
('2', 6),
('3', 46),
('4', 16),
('5', 40);

-- --------------------------------------------------------

--
-- Structure de la table `lv1`
--

DROP TABLE IF EXISTS `lv1`;
CREATE TABLE IF NOT EXISTS `lv1` (
  `Ligne` int(11) DEFAULT NULL,
  `Valeur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lv1`
--

INSERT INTO `lv1` (`Ligne`, `Valeur`) VALUES
(0, '########################################'),
(1, '#XXXXXX_XXVXO_XXXXXOXOXXXXXXXXXXXX__XXX#'),
(2, '#XOSOXXXXXX_XXXXXXXXXOVXXO__XXX_XXXOXXX#'),
(3, '#XXXXXXXXXX_XXX_XXXXOXOXXOXXXXOXXXOXOXX#'),
(4, '#OXX__VXXXX_OOXXXXXXXXXXXXXOOO__OOVXOXX#'),
(5, '#OXXXXVO__XXXXXXXXXXXO__OXXXXXXO_OXOOXX#'),
(6, '###############################XXXXOXXX#'),
(7, '#X_XXXOXXVX_XXOXOXXXXXXXXXXXVXO_XXXXOXX#'),
(8, '#XXVXXXXXOXXXXXOXXXXXXXXXO__OXXVXXXOXXX#'),
(9, '#XXXOXXOXOXXXXXXXXXXXXXXXOOXOXXOXXXXXXX#'),
(10, '#XX_OXXXOXXXXXXOOXXXXXXXXXXOOXXOXVOOXX_#'),
(11, '#XVXXXXXXXOOV__OVXXXOXXXX__OXXXOX_XXOOX#'),
(12, '#XX___OXXXOO_OXXXXXXX_OOXXXXX_OXXXXXXXX#'),
(13, '#OXXXXXXXXOXXXX_OXOXXXXXXVXXXXO_O_XXXXX#'),
(14, '#XOOXOXXXXXX_OXXXXXXXOXXXXOXXXXXX_XXXXX#'),
(15, '#XXXXXXXXX##############################'),
(16, '#__XXOXXXOXXXXXXVXXX__O_OXXXXXXXOXXXXXX#'),
(17, '#XXXXXXOXXXXXOXXOXXXOXXXXXXXXXXXX__X_XX#'),
(18, '#XXOXXX__OXXXXXXXXOXVVOXXXXXOO__XXXXXXE#'),
(19, '#XXOXXX__OXXXXXXXXOXVVOXXXXXOO__XXXXXXX#'),
(20, '#XXVXXXXXOXXXOXXXXOXXXXXXX__XXXXXXXXXOX#'),
(21, '########################################');

-- --------------------------------------------------------

--
-- Structure de la table `lv2`
--

DROP TABLE IF EXISTS `lv2`;
CREATE TABLE IF NOT EXISTS `lv2` (
  `Ligne` int(11) DEFAULT NULL,
  `Valeur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lv2`
--

INSERT INTO `lv2` (`Ligne`, `Valeur`) VALUES
(0, '########################################'),
(1, '#XXOXXO_#XOXXOXXX__XXXXOOXXXXX_OXXXXXXX#'),
(2, '#XOXOSOX#XX_XOVOXXXXXOXXXXXX___OXXXXO__#'),
(3, '#XXOXXXX#XOOXX#XXXXXXXXXXXXXXXXXXX_OOXX#'),
(4, '#XXXX_XX#XXVX_#X__OXXXXOOOXXXXXX_XXXX__#'),
(5, '#XXVXXXX#XXOOX#XXXXXXXXXXXXVVXXOXXXXXXX#'),
(6, '#XXOXOOO#XXXXX#######################XX#'),
(7, '#X_XOXXX#XXXX_#XOOXXXX__XXOXXOXXXXXXOXX#'),
(8, '#XOXXXX_#OOXXX#XOXXX__XOXXXXXXVXXXXXXX_#'),
(9, '#XXXOOXXXXX__X#XOXXXXXXXXOOOXXXXXXXXXXX#'),
(10, '#XXXXXX__OXXVX#XOOXXXXXXXXXX___VVXOOXXX#'),
(11, '###################XO###################'),
(12, '#EXXXXXOX__OOXX#XXXXXXXXXXXOXXXOOX_XXXX#'),
(13, '#XOOXXXXXXXXXXX#XXOXXXXXOXXXXXOXXXXX_XX#'),
(14, '#XOXX__OXOXXXXX#XXXXXXXXXXXXXXXXXXXXXXX#'),
(15, '#XOOXXXXXXXXXXO#XXXXOOXXXXOXXXXXXXXXXXO#'),
(16, '#XXXXXXXXXXXXXX#XXXXXOXXXXXXXXXOXXXXXXX#'),
(17, '#OXVOOXXXXXXXXX#XXXXXXXXXXXXXXX__XXXXXX#'),
(18, '#OOOXXXXOXXXXXX#XXXXXOOXOOXXXOXXXXOOXXO#'),
(19, '#XXXXXXXXXOXXXXXXXXXXXXXXXXXXXXX__XOXXX#'),
(20, '#XXXXXXXXXOXXXXXXXXXXOXXXXOXXXXXXXOXXXX#'),
(21, '########################################');

-- --------------------------------------------------------

--
-- Structure de la table `lv3`
--

DROP TABLE IF EXISTS `lv3`;
CREATE TABLE IF NOT EXISTS `lv3` (
  `Ligne` int(11) DEFAULT NULL,
  `Valeur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lv3`
--

INSERT INTO `lv3` (`Ligne`, `Valeur`) VALUES
(0, '########################################'),
(1, '#XXXOOOXXXXXXXXXOXXXXXXXXXXXXXXXXXXXXXX#'),
(2, '#XXXXXXOXXXXXXXXXO#############VVVVVVVV#'),
(3, '#OXXXXXXXXXXXXXXOXXXXXXXXXXXXXXVVVVVVVV#'),
(4, '#OXXXXXOOXXXXXXXXXXXXXXXXXXXXXXVVVVVVVV#'),
(5, '#XXOOXXXXXXXXXXXXOOXXXXXXXXXXXXVVVVVVVV#'),
(6, '#XOOOOOOOOOOOOOOOOXXXXXXXXXXXXXVVVVVVVV#'),
(7, '#XXXOXXXOOXXXXOXXOXXXXXXXXXXXXXVVVVVVVV#'),
(8, '#OXXXXOOOXXXOOXXXXXXXXXXXXXXXXXVVVVVVVV#'),
(9, '#XXXOXXOXXO#############################'),
(10, '#OOOOOOOOOO#############################'),
(11, '#OXXXXXXXXX##EXOOXXXXXOXXXXXXXXXXXOXXXX#'),
(12, '#XXOXXXXXXX##XXSXXOXXXXXXOXOXXXXXOOOXXO#'),
(13, '#XOOXXXXXXX##XOXXOXOXXXXXXXXXXXXXOOXXXX#'),
(14, '#OXOXXXXXXX##XXXOXXXXOOXXXXOXXXXXXXXXXX#'),
(15, '#OXXXXXXXOX##########################XX#'),
(16, '#OXXXXXXOXXXX_____X_____X_____X_____#XX#'),
(17, '#XXXXXOXXOOXO_____X_____X_____X_____#XX#'),
(18, '#XXOXXXOXXXOX_____X_____X_____X_____#XX#'),
(19, '#OOXOXXXXXXXX_____X_____X_____X_____#XX#'),
(20, '#XXOXXXXXXXOO____MX____MX____MX____MX__#'),
(21, '########################################');

-- --------------------------------------------------------

--
-- Structure de la table `lv4`
--

DROP TABLE IF EXISTS `lv4`;
CREATE TABLE IF NOT EXISTS `lv4` (
  `Ligne` int(11) DEFAULT NULL,
  `Valeur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lv4`
--

INSERT INTO `lv4` (`Ligne`, `Valeur`) VALUES
(0, '########################################'),
(1, '#XXXXXX_XXVXO_XXXXXOXOXXXXXXXXXXOX__OXX#'),
(2, '#XOSOXXXXXX_XXXXXXXXXOVXXO__XXX_XXXOXXX#'),
(3, '#XXXXXXXXXX_XXX_XXOXOXOXXOXXXXOXXXOXOXX#'),
(4, '#OXX__VXXXX_OOXXXXXXXXOXXXXOOO__OOVXOXX#'),
(5, '#XXXXXOO__XXXXXXXXXXXO__OXXXXXXO_OXOOXX#'),
(6, '#######################M################'),
(7, '#X_XXXOXXVX_XXOXOXXXXXXXXXXXVXO_XXXXOXX#'),
(8, '#XXVXXXXXOXXXXXOXXXXXXXXXO__OXXVXXXOXXX#'),
(9, '#XXXOXXOXOXXXXXXXXXXXXXXXOOXOXXOXXXXXXX#'),
(10, '#XX_OXXXOXXXXXXOOXXXXXXXXXXOOXXOXVOOXX_#'),
(11, '#XVXXXXXXXOOV__OVXXXOXXXX__OXXXOX_XXOOX#'),
(12, '#XX___OXXXOO_OXXXXXXX_OOXXXXX_OXXXXXXXX#'),
(13, '#OXXXXXXXXOXXXX_OXOXXXXXXVXXXXO_O_XXXXX#'),
(14, '#XOOXOXXXXXX_OXXXXXXXOXXXXOXXXXXX_XXXXX#'),
(15, '#XXXXXXXXX##############################'),
(16, '#__XXOXXXOXXXXXXVXXX__O_OXXXXXXXOXXXXXX#'),
(17, '#XXXXXXOXXXXXOXXOXXXOXXXXXXXXXXXX__X_XX#'),
(18, '#XXOXXX__OXXXXXXXXOXVVOXXXXXOO__XXXXXXE#'),
(19, '#XXX_XXXXOVOOXXXXXOXXXXX_OOXXXXXXOXXXXX#'),
(20, '#XXVXXXXXOXXXOXXXXOXXXXXXX__XXXXXXXXXOX#'),
(21, '########################################');

-- --------------------------------------------------------

--
-- Structure de la table `lv5`
--

DROP TABLE IF EXISTS `lv5`;
CREATE TABLE IF NOT EXISTS `lv5` (
  `Ligne` int(11) DEFAULT NULL,
  `Valeur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lv5`
--

INSERT INTO `lv5` (`Ligne`, `Valeur`) VALUES
(0, '########################################'),
(1, '#VVVOOVVOVVOXOOOOVOVVXOVOVVOVVVVOOVOVOO#'),
(2, '#VOOVVVOOOVOVVOOOOOOOOOVXVXVOOOOVOVVOOV#'),
(3, '#VVOOOOOOOVOVVOOXOOOVOOVVOOVOXOOVOOOOVO#'),
(4, '#OOOOVOOOOOOOVOOVVVXXVOOOVVOVOOVOVVXOOV#'),
(5, '#XOVOVXVVVVVOVOOVXVOOVVOOVOVOVOOVVOOVOV#'),
(6, '#VVVOOVOVOVOOOVVOOVVVVOVVVOOOXVOVVOOOVV#'),
(7, '#VOOXXVOOVOOVXXOOOVOVVXOVOVVOXOVOVVVVVO#'),
(8, '#VOVV#######X#####VOOOOVV######X######O#'),
(9, '#VOVV#___________#OVVOOOV#________X__#O#'),
(10, '#VOOV#_SE________#OVVOOVV#___________#O#'),
(11, '#OVOV#___________#OXOOVVO#___________#O#'),
(12, '#VOOV#___________#VVVVOVO#___________#V#'),
(13, '#XVVV#___________#VOOVXVO#___________#V#'),
(14, '#OOXO#___________#VOVVVOO#___________#O#'),
(15, '#VOVV#___________#XOVOOVO#___________#O#'),
(16, '#VOVV#___________#########___________#O#'),
(17, '#OOOV#_______________________________#O#'),
(18, '#OOOV#___________#VVXOVOV#___________#O#'),
(19, '#VVOO#___________#OOOVOVV#_________V_#O#'),
(20, '#VVXX#############VOOOVVV#############V#'),
(21, '########################################');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
