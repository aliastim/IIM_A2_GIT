-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 02 Octobre 2015 à 13:55
-- Version du serveur :  10.0.21-MariaDB-log
-- Version de PHP :  5.6.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `IIM_Git_SoundCloud`
--

-- --------------------------------------------------------

--
-- Structure de la table `musics`
--

CREATE TABLE `musics` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'refers to id in users table',
  `title` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `musics`
--

INSERT INTO `musics` (`id`, `user_id`, `title`, `file`, `created_at`) VALUES
(1, 1, 'UN*DEUX - Shopping Day', 'musics/d0dbde0148d66ddf8ae815e014e2a668.1.mp3', '2015-10-01 13:35:05'),
(2, 1, 'FlicFlac - Can''t Get Away (Bootleg)', 'musics/4baf839a4706fdc8caf286cd35dba410.1.mp3', '2015-10-02 11:41:26');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT 'encrypted passwords are better',
  `picture` varchar(255) NULL COMMENT 'name of profile picture',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `picture`, `created_at`) VALUES
(1, 'Git', 'git@initiation.com', 'password', 'view/profil_pic/e8df43b8a90546b15da8591c89711879.1.jpg', '2015-10-01 11:13:46');


--
-- Structure de la table `musics_likes`
--

CREATE TABLE `musics_likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'refers to id in users table',
  `title` varchar(100) NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `musics`
--

INSERT INTO `musics_likes` (`id`, `user_id`, `title`, `likes`, `created_at`) VALUES
(1, 1, 'UN*DEUX - Shopping Day', '45786', '2015-10-01 13:35:05'),
(2, 2, 'Skyfall', '5458', '2015-10-01 13:35:05'),
(3, 2, 'Notre dame de Paris', '45768', '2015-10-01 13:35:05'),
(4, 1, 'TRYO', '4095', '2015-10-01 13:35:05'),
(5, 2, 'FlicFlac - Can''t Get Away (Bootleg)', '9867', '2015-10-02 11:41:26');

--
-- Structure de la table `musics_comments`
--

CREATE TABLE `musics_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'refers to id in users table',
  `title` varchar(100) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `musics`
--

INSERT INTO `musics_comments` (`id`, `user_id`, `title`, `comments`, `created_at`) VALUES
(1, 1, 'UN*DEUX - Shopping Day', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui velit. Curabitur ultricies nec diam vel vehicula. Cras at commodo eros. Donec id blandit nunc.', '2015-10-01 13:35:05'),
(2, 2, 'Skyfall', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui velit. Curabitur ultricies nec diam vel vehicula. Cras at commodo eros. Donec id blandit nunc.', '2015-10-01 13:35:05'),
(3, 2, 'Notre dame de Paris', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui velit. Curabitur ultricies nec diam vel vehicula. Cras at commodo eros. Donec id blandit nunc.', '2015-10-01 13:35:05'),
(4, 1, 'TRYO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui velit. Curabitur ultricies nec diam vel vehicula. Cras at commodo eros. Donec id blandit nunc.', '2015-10-01 13:35:05'),
(5, 2, 'FlicFlac - Can''t Get Away (Bootleg)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui velit. Curabitur ultricies nec diam vel vehicula. Cras at commodo eros. Donec id blandit nunc.', '2015-10-02 11:41:26');

--
-- Structure de la table `musics_comments`
--

CREATE TABLE `musics_tags` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `musics_tags` (`id`, `title`, `tags`, `created_at`) VALUES
(1, 'UN*DEUX - Shopping Day', 'un, deux, shopping, day, musique, music, pop, rock', '2015-10-01 13:35:05'),
(2, 'FlicFlac - Can''t Get Away (Bootleg)', 'flic, flac, can, get, away, musique, music, pop, rock', '2015-10-02 11:41:26');



--
-- Index pour les tables exportées
--

--
-- Index pour la table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
