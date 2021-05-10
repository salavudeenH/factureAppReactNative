-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 10 mai 2021 à 08:56
-- Version du serveur :  5.7.30
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `facture`
--

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Montant` varchar(255) NOT NULL,
  `Commentaire` varchar(1000) NOT NULL,
  `Image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`Id`, `Nom`, `Date`, `Montant`, `Commentaire`, `Image`) VALUES
(16, 'Eléonore', '2020-01-01', '2000', 'A payer avant vendrdi', ''),
(17, 'Eléonore', '2020-01-01', '2000', 'A payer avant vendrdi', ''),
(27, 'Clergy', '2020-01-01', '2111', 'Cdcd', 0x66696c653a2f2f2f55736572732f73616c6176756465656e2f4c6962726172792f446576656c6f7065722f436f726553696d756c61746f722f446576696365732f42334545314638312d433731322d344230382d394231462d4143334138433144313434302f646174612f436f6e7461696e6572732f446174612f4170706c69636174696f6e2f32414642384532462d334241382d344246462d383730352d3132383336374637373832462f746d702f35323935393836362d344337362d343241352d393344322d3736424337323642383436342e6a7067),
(28, 'Dual', '2020-01-01', '155', 'Cgd', 0x66696c653a2f2f2f55736572732f73616c6176756465656e2f4c6962726172792f446576656c6f7065722f436f726553696d756c61746f722f446576696365732f42334545314638312d433731322d344230382d394231462d4143334138433144313434302f646174612f436f6e7461696e6572732f446174612f4170706c69636174696f6e2f32414642384532462d334241382d344246462d383730352d3132383336374637373832462f746d702f37364533384143442d354445442d343031312d394630452d3230353931333832433442382e6a7067),
(29, 'Dualcorp', '2022-01-01', '1542', 'Cdhdc', 0x66696c653a2f2f2f55736572732f73616c6176756465656e2f4c6962726172792f446576656c6f7065722f436f726553696d756c61746f722f446576696365732f42334545314638312d433731322d344230382d394231462d4143334138433144313434302f646174612f436f6e7461696e6572732f446174612f4170706c69636174696f6e2f32414642384532462d334241382d344246462d383730352d3132383336374637373832462f746d702f35353146383846422d434238442d343131452d413832382d4142443735434337414636452e6a7067),
(30, 'Dualcorp', '2022-01-01', '1542', 'Cdhdc', 0x66696c653a2f2f2f55736572732f73616c6176756465656e2f4c6962726172792f446576656c6f7065722f436f726553696d756c61746f722f446576696365732f42334545314638312d433731322d344230382d394231462d4143334138433144313434302f646174612f436f6e7461696e6572732f446174612f4170706c69636174696f6e2f32414642384532462d334241382d344246462d383730352d3132383336374637373832462f746d702f37363830413437352d323433372d343841392d413932372d3446314539353046384233382e6a7067),
(31, 'Hadj', '2020-01-01', 'Scsss', 'Cd', 0x6e756c6c),
(32, 'Hadj', '2020-01-01', '', 'Cd', 0x756e646566696e6564);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `image`) VALUES
(7, 0x756e646566696e6564);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
