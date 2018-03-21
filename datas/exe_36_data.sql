-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 21 mars 2018 à 10:38
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exe_36`
--

--
-- Déchargement des données de la table `categ`
--

INSERT INTO `categ` (`idcateg`, `name`, `desc`) VALUES
(1, 'international', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nibh magna, luctus a hendrerit ut, cursus non purus. In hac habitasse platea dictumst. Vestibulum ullamcorper, elit vel sodales tincidunt, lorem ante semper nibh, at mattis justo nisl sed purus. Fusce faucibus augue eget massa facilisis iaculis. Curabitur non posuere purus. Praesent aliquet hendrerit urna, at gravida est iaculis nullam.'),
(2, 'france', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nibh magna, luctus a hendrerit ut, cursus non purus. In hac habitasse platea dictumst. Vestibulum ullamcorper, elit vel sodales tincidunt, lorem ante semper nibh, at mattis justo nisl sed purus. Fusce faucibus augue eget massa facilisis iaculis. Curabitur non posuere purus. Praesent aliquet hendrerit urna, at gravida est iaculis nullam.'),
(3, 'economie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nibh magna, luctus a hendrerit ut, cursus non purus. In hac habitasse platea dictumst. Vestibulum ullamcorper, elit vel sodales tincidunt, lorem ante semper nibh, at mattis justo nisl sed purus. Fusce faucibus augue eget massa facilisis iaculis. Curabitur non posuere purus. Praesent aliquet hendrerit urna, at gravida est iaculis nullam.'),
(4, 'culture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nibh magna, luctus a hendrerit ut, cursus non purus. In hac habitasse platea dictumst. Vestibulum ullamcorper, elit vel sodales tincidunt, lorem ante semper nibh, at mattis justo nisl sed purus. Fusce faucibus augue eget massa facilisis iaculis. Curabitur non posuere purus. Praesent aliquet hendrerit urna, at gravida est iaculis nullam.'),
(5, 'dossiers', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nibh magna, luctus a hendrerit ut, cursus non purus. In hac habitasse platea dictumst. Vestibulum ullamcorper, elit vel sodales tincidunt, lorem ante semper nibh, at mattis justo nisl sed purus. Fusce faucibus augue eget massa facilisis iaculis. Curabitur non posuere purus. Praesent aliquet hendrerit urna, at gravida est iaculis nullam.');

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`idnews`, `title`, `content`, `publication`, `visible`, `user_iduser`) VALUES
(1, 'Audition du Prince Laurent: l\'avocat arrive en retard', 'L\'avocat du frère cadet du roi, Laurent Arnauts, a d\'entrée de jeu affirmé la nécessité de respecter les droits de la défense, malgré la personnalité du principal intéressé. \"Ca ne doit pas être considéré comme du cinéma mais comme l\'exercice normal et nécessaire des droits de la défense de chaque citoyen, pas plus, pas moins\", a expliqué l\'avocat devant les députés.', '2018-03-21 10:35:06', 1, 1);

--
-- Déchargement des données de la table `news_has_categ`
--

INSERT INTO `news_has_categ` (`news_idnews`, `categ_idcateg`) VALUES
(1, 1),
(1, 3);

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`idpermission`, `name`, `level`) VALUES
(11, 'admin', 0),
(12, 'moderator', 1),
(13, 'editor', 2),
(14, 'user', 3);

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `login`, `pwd`, `name`, `permission_idpermission`) VALUES
(1, 'admin', 'admin', 'admin', 11),
(2, 'modo', 'modo', 'modo', 12),
(3, 'edit', 'edit', 'edit', 13),
(4, 'user', 'user', 'user', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
