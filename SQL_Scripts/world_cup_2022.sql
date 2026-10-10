-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 déc. 2022 à 18:17
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `world_cup_2022`
--
DROP DATABASE IF EXISTS world_cup_2022;
CREATE DATABASE IF NOT EXISTS `world_cup_2022` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `world_cup_2022`;

-- --------------------------------------------------------

--
-- Structure de la table `goals`
--

DROP TABLE IF EXISTS `goals`;
CREATE TABLE `goals` (
  `match_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `type` char(1) NOT NULL,
  `num_goals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `goals`
--

INSERT INTO `goals` (`match_id`, `player_id`, `type`, `num_goals`) VALUES
(1, 39, 'g', 2),
(2, 78, 'g', 1),
(2, 80, 'g', 1),
(3, 97, 'g', 1),
(3, 100, 'g', 1),
(3, 101, 'g', 1),
(3, 102, 'g', 1),
(4, 39, 'g', 1),
(4, 78, 'g', 1),
(5, 40, 'g', 1),
(5, 103, 'g', 1),
(5, 104, 'g', 1),
(6, 78, 'g', 1),
(6, 82, 'g', 1),
(7, 41, 'g', 2),
(7, 43, 'g', 1),
(7, 45, 'g', 1),
(7, 46, 'g', 1),
(7, 48, 'g', 1),
(7, 63, 'g', 2),
(8, 126, 'g', 1),
(8, 128, 'g', 1),
(9, 64, 'g', 1),
(9, 65, 'g', 1),
(11, 46, 'g', 2),
(11, 47, 'g', 1),
(12, 124, 'g', 1),
(13, 7, 'g', 1),
(13, 98, 'g', 1),
(13, 99, 'g', 1),
(15, 87, 'g', 1),
(15, 88, 'g', 1),
(16, 2, 'g', 1),
(16, 7, 'g', 1),
(17, 1, 'g', 1),
(17, 4, 'g', 1),
(18, 70, 'g', 1),
(18, 71, 'g', 1),
(18, 99, 'g', 1),
(20, 9, 'g', 1),
(20, 49, 'g', 1),
(20, 51, 'g', 1),
(20, 52, 'g', 2),
(21, 12, 'g', 1),
(22, 38, 'g', 1),
(22, 51, 'g', 2),
(23, 11, 'g', 1),
(24, 123, 'g', 1),
(25, 55, 'g', 1),
(25, 68, 'g', 1),
(25, 69, 'g', 1),
(26, 113, 'g', 1),
(26, 114, 'g', 1),
(26, 115, 'g', 1),
(26, 116, 'g', 2),
(26, 117, 'g', 1),
(26, 118, 'g', 1),
(27, 26, 'g', 1),
(28, 57, 'g', 1),
(28, 113, 'g', 1),
(29, 66, 'g', 1),
(29, 68, 'g', 1),
(29, 113, 'g', 1),
(30, 25, 'g', 1),
(30, 27, 'g', 1),
(30, 56, 'g', 2),
(30, 57, 'g', 1),
(30, 58, 'g', 1),
(32, 13, 'g', 1),
(33, 75, 'g', 1),
(33, 77, 'g', 1),
(34, 23, 'g', 1),
(34, 28, 'g', 2),
(34, 31, 'g', 1),
(34, 35, 'g', 1),
(36, 24, 'c', 1),
(36, 74, 'g', 1),
(36, 76, 'g', 1),
(37, 119, 'g', 1),
(38, 18, 'g', 2),
(39, 20, 'g', 1),
(39, 21, 'g', 1),
(39, 22, 'g', 1),
(39, 105, 'g', 1),
(39, 107, 'g', 1),
(39, 108, 'g', 1),
(40, 14, 'g', 1),
(41, 105, 'g', 1),
(41, 106, 'g', 1),
(41, 119, 'g', 1),
(41, 121, 'g', 1),
(41, 122, 'g', 1),
(42, 22, 'g', 1),
(44, 59, 'g', 1),
(44, 62, 'g', 1),
(44, 90, 'g', 1),
(44, 92, 'g', 1),
(44, 94, 'g', 1),
(45, 60, 'g', 2),
(45, 61, 'g', 1),
(45, 109, 'g', 2),
(46, 89, 'g', 2),
(47, 127, 'g', 2),
(48, 96, 'g', 1),
(48, 110, 'g', 1),
(48, 111, 'g', 1),
(49, 79, 'g', 1),
(49, 81, 'g', 1),
(49, 84, 'g', 1),
(49, 125, 'g', 1),
(50, 2, 'c', 1),
(50, 4, 'g', 1),
(50, 7, 'g', 1),
(51, 51, 'g', 2),
(51, 52, 'g', 1),
(51, 88, 'g', 1),
(52, 41, 'g', 1),
(52, 42, 'g', 1),
(52, 44, 'g', 1),
(53, 30, 'g', 1),
(53, 33, 'p', 1),
(53, 34, 'p', 1),
(53, 37, 'p', 1),
(53, 67, 'g', 1),
(53, 69, 'p', 1),
(54, 15, 'g', 1),
(54, 16, 'g', 1),
(54, 18, 'g', 1),
(54, 19, 'g', 1),
(54, 112, 'g', 1),
(55, 72, 'p', 1),
(55, 73, 'p', 1),
(55, 74, 'p', 1),
(56, 91, 'g', 3),
(56, 93, 'g', 1),
(56, 94, 'g', 1),
(56, 95, 'g', 1),
(56, 120, 'g', 1),
(57, 14, 'p', 1),
(57, 16, 'g', 1),
(57, 17, 'p', 1),
(57, 29, 'g', 1),
(57, 31, 'p', 1),
(57, 32, 'p', 1),
(57, 36, 'p', 1),
(57, 37, 'p', 1),
(58, 3, 'p', 1),
(58, 5, 'p', 1),
(58, 6, 'p', 1),
(58, 7, 'g', 1),
(58, 7, 'p', 1),
(58, 8, 'g', 1),
(58, 83, 'p', 1),
(58, 85, 'p', 1),
(58, 86, 'g', 2),
(58, 86, 'p', 1),
(59, 76, 'g', 1),
(60, 42, 'g', 1),
(60, 50, 'g', 1),
(60, 52, 'g', 1),
(61, 4, 'g', 2),
(61, 7, 'g', 1),
(62, 53, 'g', 1),
(62, 54, 'g', 1),
(63, 36, 'g', 1),
(63, 129, 'g', 1),
(63, 130, 'g', 1),
(64, 3, 'p', 1),
(64, 6, 'p', 1),
(64, 7, 'g', 2),
(64, 7, 'p', 1),
(64, 51, 'g', 3),
(64, 51, 'p', 1),
(64, 53, 'p', 1),
(64, 131, 'g', 1),
(64, 132, 'p', 1);

-- --------------------------------------------------------

--
-- Structure de la table `matches`
--

DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches` (
  `match_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matches`
--

INSERT INTO `matches` (`match_id`, `date`, `type`) VALUES
(1, '2022-11-20', 'P'),
(2, '2022-11-21', 'P'),
(3, '2022-11-25', 'P'),
(4, '2022-11-25', 'P'),
(5, '2022-11-29', 'P'),
(6, '2022-11-29', 'P'),
(7, '2022-11-21', 'P'),
(8, '2022-11-21', 'P'),
(9, '2022-11-25', 'P'),
(10, '2022-11-25', 'P'),
(11, '2022-11-29', 'P'),
(12, '2022-11-29', 'P'),
(13, '2022-11-22', 'P'),
(14, '2022-11-22', 'P'),
(15, '2022-11-26', 'P'),
(16, '2022-11-26', 'P'),
(17, '2022-11-30', 'P'),
(18, '2022-11-30', 'P'),
(19, '2022-11-22', 'P'),
(20, '2022-11-22', 'P'),
(21, '2022-11-26', 'P'),
(22, '2022-11-26', 'P'),
(23, '2022-11-30', 'P'),
(24, '2022-11-30', 'P'),
(25, '2022-11-23', 'P'),
(26, '2022-11-23', 'P'),
(27, '2022-11-27', 'P'),
(28, '2022-11-27', 'P'),
(29, '2022-12-01', 'P'),
(30, '2022-12-01', 'P'),
(31, '2022-11-23', 'P'),
(32, '2022-11-23', 'P'),
(33, '2022-11-27', 'P'),
(34, '2022-11-27', 'P'),
(35, '2022-12-01', 'P'),
(36, '2022-12-01', 'P'),
(37, '2022-11-24', 'P'),
(38, '2022-11-24', 'P'),
(39, '2022-11-28', 'P'),
(40, '2022-11-28', 'P'),
(41, '2022-12-02', 'P'),
(42, '2022-12-02', 'P'),
(43, '2022-11-24', 'P'),
(44, '2022-11-24', 'P'),
(45, '2022-11-28', 'P'),
(46, '2022-11-28', 'P'),
(47, '2022-12-02', 'P'),
(48, '2022-12-02', 'P'),
(49, '2022-12-03', '8'),
(50, '2022-12-03', '8'),
(51, '2022-12-04', '8'),
(52, '2022-12-04', '8'),
(53, '2022-12-05', '8'),
(54, '2022-12-05', '8'),
(55, '2022-12-06', '8'),
(56, '2022-12-06', '8'),
(57, '2022-12-09', '4'),
(58, '2022-12-09', '4'),
(59, '2022-12-10', '4'),
(60, '2022-12-10', '4'),
(61, '2022-12-13', '2'),
(62, '2022-12-14', '2'),
(63, '2022-12-17', 'SF'),
(64, '2022-12-18', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `participations`
--

DROP TABLE IF EXISTS `participations`;
CREATE TABLE `participations` (
  `match_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participations`
--

INSERT INTO `participations` (`match_id`, `team_id`, `points`) VALUES
(1, 1, 0),
(1, 2, 3),
(2, 3, 0),
(2, 4, 3),
(3, 1, 0),
(3, 3, 3),
(4, 2, 1),
(4, 4, 1),
(5, 2, 0),
(5, 3, 3),
(6, 1, 0),
(6, 4, 3),
(7, 5, 3),
(7, 6, 0),
(8, 7, 1),
(8, 8, 1),
(9, 6, 3),
(9, 8, 0),
(10, 5, 1),
(10, 7, 1),
(11, 5, 3),
(11, 8, 0),
(12, 6, 0),
(12, 7, 3),
(13, 9, 0),
(13, 10, 3),
(14, 11, 1),
(14, 12, 1),
(15, 10, 0),
(15, 12, 3),
(16, 9, 3),
(16, 11, 0),
(17, 9, 3),
(17, 12, 0),
(18, 10, 0),
(18, 11, 3),
(19, 13, 1),
(19, 14, 1),
(20, 15, 3),
(20, 16, 0),
(21, 14, 0),
(21, 16, 3),
(22, 13, 0),
(22, 15, 3),
(23, 13, 0),
(23, 16, 3),
(24, 14, 3),
(24, 15, 0),
(25, 17, 0),
(25, 18, 3),
(26, 19, 3),
(26, 20, 0),
(27, 18, 0),
(27, 20, 3),
(28, 17, 1),
(28, 19, 1),
(29, 18, 3),
(29, 19, 0),
(30, 17, 3),
(30, 20, 0),
(31, 21, 1),
(31, 22, 1),
(32, 23, 3),
(32, 24, 0),
(33, 21, 3),
(33, 23, 0),
(34, 22, 3),
(34, 24, 0),
(35, 22, 1),
(35, 23, 1),
(36, 21, 3),
(36, 24, 0),
(37, 25, 3),
(37, 26, 0),
(38, 27, 3),
(38, 28, 0),
(39, 26, 1),
(39, 28, 1),
(40, 25, 0),
(40, 27, 3),
(41, 25, 3),
(41, 28, 0),
(42, 26, 3),
(42, 27, 0),
(43, 29, 1),
(43, 30, 1),
(44, 31, 3),
(44, 32, 0),
(45, 30, 0),
(45, 32, 3),
(46, 29, 0),
(46, 31, 3),
(47, 29, 3),
(47, 32, 0),
(48, 30, 3),
(48, 31, 0),
(49, 4, 0),
(49, 7, 0),
(50, 9, 0),
(50, 16, 0),
(51, 12, 0),
(51, 15, 0),
(52, 3, 0),
(52, 5, 0),
(53, 18, 0),
(53, 22, 0),
(54, 27, 0),
(54, 30, 0),
(55, 19, 0),
(55, 21, 0),
(56, 25, 0),
(56, 31, 0),
(57, 22, 0),
(57, 27, 0),
(58, 4, 0),
(58, 9, 0),
(59, 21, 0),
(59, 31, 0),
(60, 5, 0),
(60, 15, 0),
(61, 9, 0),
(61, 22, 0),
(62, 15, 0),
(62, 21, 0),
(63, 21, 0),
(63, 22, 0),
(64, 9, 0),
(64, 15, 0);

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `team_id`) VALUES
(1, 'Alexis Mac Allister', 9),
(2, 'Enzo Fernández', 9),
(3, 'Gonzalo Montiel', 9),
(4, 'Julián Álvarez', 9),
(5, 'Lautaro Martínez', 9),
(6, 'Leandro Paredes', 9),
(7, 'Lionel Messi', 9),
(8, 'Nahuel Molina', 9),
(9, 'Craig Goodwin', 16),
(10, 'Enzo Fernández', 16),
(11, 'Mathew Leckie', 16),
(12, 'Mitchell Duke', 16),
(13, 'Michy Batshuayi', 23),
(14, 'Casemiro', 27),
(15, 'Lucas Paquetá', 27),
(16, 'Neymar', 27),
(17, 'Pedro', 27),
(18, 'Richarlison', 27),
(19, 'Vinícius Júnior', 27),
(20, 'Eric Maxim Choupo-Moting', 26),
(21, 'Jean-Charles Castelletto', 26),
(22, 'Vincent Aboubakar', 26),
(23, 'Alphonso Davies', 24),
(24, 'Nayef Aguerd', 21),
(25, 'Juan Pablo Vargas', 20),
(26, 'Keysher Fuller', 20),
(27, 'Yeltsin Tejeda', 20),
(28, 'Andrej Kramaric', 22),
(29, 'Bruno Petkovic', 22),
(30, 'Ivan Perišic', 22),
(31, 'Lovro Majer', 22),
(32, 'Luka Modric', 22),
(33, 'Marcelo Brozovic', 22),
(34, 'Mario Pašalic', 22),
(35, 'Marko Livaja', 22),
(36, 'Mislav Oršic', 22),
(37, 'Nikola Vlašic', 22),
(38, 'Andreas Christensen', 13),
(39, 'Enner Valencia', 2),
(40, 'Moisés Caicedo', 2),
(41, 'Bukayo Saka', 5),
(42, 'Harry Kane', 5),
(43, 'Jack Grealish', 5),
(44, 'Jordan Henderson', 5),
(45, 'Jude Bellingham', 5),
(46, 'Marcus Rashford', 5),
(47, 'Phil Foden', 5),
(48, 'Raheem Sterling', 5),
(49, 'Adrien Rabiot', 15),
(50, 'Aurélien Tchouaméni', 15),
(51, 'Kylian Mbappé', 15),
(52, 'Olivier Giroud', 15),
(53, 'Randal Kolo Muani', 15),
(54, 'Théo Hernandez', 15),
(55, 'Ilkay Gündogan', 17),
(56, 'Kai Havertz', 17),
(57, 'Niclas Füllkrug', 17),
(58, 'Serge Gnabry', 17),
(59, 'André Ayew', 32),
(60, 'Mohammed Kudus', 32),
(61, 'Mohammed Salisu', 32),
(62, 'Osman Bukari', 32),
(63, 'Mehdi Taremi', 6),
(64, 'Ramin Rezaeian', 6),
(65, 'Rouzbeh Cheshmi', 6),
(66, 'Ao Tanaka', 18),
(67, 'Daizen Maeda', 18),
(68, 'Ritsu Doan', 18),
(69, 'Takuma Asano', 18),
(70, 'Henry Martín', 11),
(71, 'Luis Chávez', 11),
(72, 'Abdelhamid Sabiri', 21),
(73, 'Achraf Hakimi', 21),
(74, 'Hakim Ziyech', 21),
(75, 'Romain Saïss', 21),
(76, 'Youssef En-Nesyri', 21),
(77, 'Zakaria Aboukhlal', 21),
(78, 'Cody Gakpo', 4),
(79, 'Daley Blind', 4),
(80, 'Davy Klaassen', 4),
(81, 'Denzel Dumfries', 4),
(82, 'Frenkie de Jong', 4),
(83, 'Luuk de Jong', 4),
(84, 'Memphis Depay', 4),
(85, 'Teun Koopmeiners', 4),
(86, 'Wout Weghorst', 4),
(87, 'Piotr Zielinski', 12),
(88, 'Robert Lewandowski', 12),
(89, 'Bruno Fernandes', 31),
(90, 'Cristiano Ronaldo', 31),
(91, 'Gonçalo Ramos', 31),
(92, 'João Félix', 31),
(93, 'Pepe', 31),
(94, 'Rafael Leão', 31),
(95, 'Raphaël Guerreiro', 31),
(96, 'Ricardo Horta', 31),
(97, 'Mohammed Muntari', 1),
(98, 'Saleh Al-Shehri', 10),
(99, 'Salem Al-Dawsari', 10),
(100, 'Bamba Dieng', 3),
(101, 'Boulaye Dia', 3),
(102, 'Famara Diédhiou', 3),
(103, 'Ismaïla Sarr', 3),
(104, 'Kalidou Koulibaly', 3),
(105, 'Aleksandar Mitrovic', 28),
(106, 'Dušan Vlahovic', 28),
(107, 'Sergej Milinkovic-Savic', 28),
(108, 'Strahinja Pavlovic', 28),
(109, 'Cho Gue-sung', 30),
(110, 'Hwang Hee-chan', 30),
(111, 'Kim Young-gwon', 30),
(112, 'Paik Seung-ho', 30),
(113, 'Álvaro Morata', 19),
(114, 'Carlos Soler', 19),
(115, 'Dani Olmo', 19),
(116, 'Ferran Torres', 19),
(117, 'Gavi', 19),
(118, 'Marco Asensio', 19),
(119, 'Breel Embolo', 25),
(120, 'Manuel Akanji', 25),
(121, 'Remo Freuler', 25),
(122, 'Xherdan Shaqiri', 25),
(123, 'Wahbi Khazri', 14),
(124, 'Christian Pulisic', 7),
(125, 'Haji Wright', 7),
(126, 'Timothy Weah', 7),
(127, 'Giorgian de Arrascaeta', 29),
(128, 'Gareth Bale', 8),
(129, 'Josko Gvardio', 22),
(130, 'Achraf Dari', 21),
(131, 'Angel Di Maria', 9),
(132, 'Paulo Dybala', 9);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `pool` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `pool`) VALUES
(1, 'Qatar', 'A'),
(2, 'Ecuador', 'A'),
(3, 'Senegal', 'A'),
(4, 'Netherlands', 'A'),
(5, 'England', 'B'),
(6, 'Iran', 'B'),
(7, 'United States', 'B'),
(8, 'Wales', 'B'),
(9, 'Argentina', 'C'),
(10, 'Saudi Arabia', 'C'),
(11, 'Mexico', 'C'),
(12, 'Poland', 'C'),
(13, 'Denmark', 'D'),
(14, 'Tunisia', 'D'),
(15, 'France', 'D'),
(16, 'Australia', 'D'),
(17, 'Germany', 'E'),
(18, 'Japan', 'E'),
(19, 'Spain', 'E'),
(20, 'Costa Rica', 'E'),
(21, 'Morocco', 'F'),
(22, 'Croatia', 'F'),
(23, 'Belgium', 'F'),
(24, 'Canada', 'F'),
(25, 'Switzerland', 'G'),
(26, 'Cameroon', 'G'),
(27, 'Brazil', 'G'),
(28, 'Serbia', 'G'),
(29, 'Uruguay', 'H'),
(30, 'South Korea', 'H'),
(31, 'Portugal', 'H'),
(32, 'Ghana', 'H');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`match_id`,`player_id`,`type`),
  ADD KEY `goal_player_null_fk` (`player_id`);

--
-- Index pour la table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`);

--
-- Index pour la table `participations`
--
ALTER TABLE `participations`
  ADD PRIMARY KEY (`match_id`,`team_id`),
  ADD KEY `participation_team_null_fk` (`team_id`);

--
-- Index pour la table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `player_team_null_fk` (`team_id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `matches`
--
ALTER TABLE `matches`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goal_match_null_fk` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  ADD CONSTRAINT `goal_player_null_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`);

--
-- Contraintes pour la table `participations`
--
ALTER TABLE `participations`
  ADD CONSTRAINT `participation_match_null_fk` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  ADD CONSTRAINT `participation_team_null_fk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);

--
-- Contraintes pour la table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `player_team_null_fk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);
COMMIT;
