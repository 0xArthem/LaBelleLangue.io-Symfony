-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 23 avr. 2023 à 15:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `labellelangue`
--

-- --------------------------------------------------------

--
-- Structure de la table `argument`
--

DROP TABLE IF EXISTS `argument`;
CREATE TABLE IF NOT EXISTS `argument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `argument`
--

INSERT INTO `argument` (`id`, `content`) VALUES
(1, 'Créer des opportunités professionnelles'),
(2, 'Intégrer les instances diplomatiques internationales'),
(3, 'Elargir vos horizons culturels'),
(4, 'Voyager dans les 88 pays et territoires francophones'),
(5, 'Entrer dans l\'école de votre choix');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT NULL,
  `niveau_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `lien_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6659027487` (`theme_id`),
  KEY `IDX_23A0E66B3E9C81` (`niveau_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `theme_id`, `niveau_id`, `title`, `is_active`, `description`, `image`, `created_at`, `slug`, `content`, `lien_youtube`, `is_free`) VALUES
(1, 1, 2, 'La place des réseaux sociaux dans nos vies', 1, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fringilla odio ut dolor mattis, quis mattis mi rutrum. Fusce consectetur enim vitae leo cursus euismod. Praesent at interdum massa. Vestibulum elementum a arcu vitae lacinia. Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV0d29yayUyMHlvdW5nJTIwYWRkaWN0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', '2023-03-30 00:00:00', 'la-place-des-reseaux-sociaux-dans-nos-vies', '<div>De nos jours, les réseaux sociaux font partie intégrante de nos vies. Ils nous permettent de rester connectés avec nos amis et notre famille, de partager des moments de notre vie quotidienne, et même de créer des liens avec des personnes que nous ne rencontrerions peut-être jamais autrement. Cependant, avec cette omniprésence des réseaux sociaux dans notre vie, il est important de trouver un juste équilibre et d\'éviter la dépendance.</div><div><br>Tout d\'abord, il est important de comprendre pourquoi les réseaux sociaux peuvent être addictifs. Les plateformes de médias sociaux sont conçues pour être interactives et stimulantes, avec des notifications et des mises à jour constantes qui nous encouragent à continuer à naviguer et à interagir. De plus, les algorithmes utilisés pour <strong>personnaliser </strong>notre flux de contenu sont conçus pour nous montrer exactement ce que nous voulons voir, ce qui peut renforcer notre utilisation de la plateforme.</div><div><br>Il est donc important de faire preuve de conscience et de limiter notre utilisation des réseaux sociaux. Une bonne pratique consiste à se fixer des limites de temps pour l\'utilisation des réseaux sociaux, en décidant à l\'avance du temps que nous allons y consacrer chaque jour. Par conséquent, il est important de garder une <strong>perspective </strong>réaliste et de ne pas comparer notre vie à celle des autres sur les réseaux sociaux. Enfin, il est important de se concentrer sur les aspects positifs des réseaux sociaux. Ils nous permettent de rester connectés avec des amis et des proches éloignés, de partager des <strong>idées </strong>et des informations importantes, et même de trouver des <strong>opportunités </strong>professionnelles. En se concentrant sur ces aspects positifs, nous pouvons éviter de nous laisser <strong>submerger </strong>par les aspects négatifs des réseaux sociaux.</div>', 'https://www.youtube.com/embed/_Yl95-hyhSM', 1),
(2, 2, 3, 'Mettre en lumière le rôle des femmes dans l\'histoire', 1, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fringilla odio ut dolor mattis, quis mattis mi rutrum. Fusce consectetur enim vitae leo cursus euismod. Praesent at interdum massa. Vestibulum elementum a arcu vitae lacinia. Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://images.unsplash.com/photo-1576568699714-a3f4950805d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80', '2023-03-21 00:00:00', 'mettre-en-lumiere-le-role-des-femmes-dans-l-histoire', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque quis metus a lectus suscipit iaculis. Nam vehicula quam ut nunc sagittis pretium.<br><br>Sed consequat, turpis id tristique vestibulum, tellus risus tincidunt tellus, eu volutpat nibh purus eget ex. Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero. Sed ac felis felis. Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.<br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.<br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.<br><br>Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://www.youtube.com/embed/15JkSZ95wzI', 1),
(3, 1, 4, 'L\'impact de la pandémie sur la santé mentale des jeunes', 1, '<div>La pandémie a eu des répercussions considérables sur la santé mentale des jeunes. En effet, la distanciation sociale, la fermeture des établissements scolaires, la perte d\'emplois et la montée de l\'incertitude ont tous contribué à une augmentation des niveaux d\'anxiété et de dépression chez les jeunes. Cet article examine les différentes façons dont la pandémie a affecté la santé mentale des jeunes et comment les gouvernements et les communautés peuvent aider à atténuer les effets à long terme.</div>', 'https://images.unsplash.com/photo-1621887348744-6b0444f8a058?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnRhbCUyMGhlYWx0aHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2023-03-19 00:00:00', 'l-impact-de-la-pandemie-sur-la-sante-mentale-des-jeunes', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque quis metus a lectus suscipit iaculis. Nam vehicula quam ut nunc sagittis pretium.<br><br>Sed consequat, turpis id tristique vestibulum, tellus risus tincidunt tellus, eu volutpat nibh purus eget ex. Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero. Sed ac felis felis. Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.<br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.<br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.<br><br>Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://www.youtube.com/embed/UQCuT1cIXp8', 1),
(4, 4, 1, 'Les bienfaits insoupçonnés du rire sur la santé', 1, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fringilla odio ut dolor mattis, quis mattis mi rutrum. Fusce consectetur enim vitae leo cursus euismod. Praesent at interdum massa. Vestibulum elementum a arcu vitae lacinia. Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://images.unsplash.com/photo-1609043383386-06b660c745a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGxhdWdodHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2023-04-23 00:00:00', 'les-bienfaits-insoupçonnes-du-rire-sur-la-santé', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; <del>Pellentesque quis metus a lectus suscipit iaculis</del>. Nam vehicula quam ut nunc sagittis pretium.<br><br>Sed consequat, turpis id tristique vestibulum, tellus risus tincidunt tellus, eu volutpat nibh purus eget ex. Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero. Sed ac felis felis. Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.<br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. <strong>Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.</strong><br><br>Aenean dignissim nunc id mi ullamcorper bibendum. Donec sodales turpis vitae aliquam molestie. Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio. Suspendisse eget dolor vel magna bibendum iaculis. Sed vel imperdiet elit, a auctor orci. Sed eget nisi in ipsum pellentesque maximus.<br><br>Morbi et consequat tellus, sed rhoncus ante. Nam mattis neque auctor, gravida dui eget, molestie est. Mauris varius vel dui ac venenatis.</div>', 'https://www.youtube.com/embed/15JkSZ95wzI', 0);

-- --------------------------------------------------------

--
-- Structure de la table `carte_presentation`
--

DROP TABLE IF EXISTS `carte_presentation`;
CREATE TABLE IF NOT EXISTS `carte_presentation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carte_presentation`
--

INSERT INTO `carte_presentation` (`id`, `title`, `description`, `icon`) VALUES
(1, '1. Lisez de courts articles sur des thèmes variés selon votre niveau.', '<div>Sélectionnez le thème et le niveau de votre choix, et trouvez les articles qui correspondent à votre recherche et améliorer votre <strong>compréhension écrite</strong>.</div>', '<i class=\"fas fa-bars-staggered\"></i>'),
(2, '2. Écoutez leur lecture par un natif selon trois vitesses différentes.', '<div>Ecouter chacun de nos articles, dialogues et mots de vocabulaire selon trois vitesses de lecture différentes et améliorer votre <strong>compréhension orale</strong>.</div>', '<i class=\"fas fa-headphones-simple\"></i>'),
(3, '3. Révisez le vocabulaire de chaque article et leur définition.', '<div>Consectetur adipisicing elit. Possimus nemo dolore fugiat deserunt, non maxime in eos corporis, aut accusantium, at eaque consequatur. Dolor, incidunt deserunt ad quia fuga repellat <strong>expression orale</strong>.</div>', '<i class=\"fas fa-chalkboard\"></i>'),
(4, '4. Suivez nos cours de grammaire, conjugaison et d\'orthographe.', '<div>Suivez nos cours et leçons de grammaire, conjugaison et d\'orthographe triées par niveau et catégorie pour enfin améliorer votre <strong>expression écrite</strong>.</div>', '<i class=\"fas fa-microphone-lines\"></i>');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_answered` tinyint(1) NOT NULL,
  `agree_terms` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`, `object`, `content`, `created_at`, `is_answered`, `agree_terms`) VALUES
(10, 'max@mail.fr', '0701826532', 'J\'ai une question', 'Ut felis orci, varius vel commodo nec, viverra nec neque. Aliquam erat volutpat. Sed rhoncus quis dui eu feugiat. Nulla ultrices fermentum elit, rutrum interdum leo venenatis id. Proin consequat, purus in dignissim venenatis, tellus arcu blandit nisl, at hendrerit sem dui a est. In sed bibendum leo. Nam facilisis lacus sit amet purus varius, auctor aliquam mauris rutrum. Aenean pellentesque commodo mattis. Ut ornare tellus a augue porttitor sodales eu vitae neque. Nullam at auctor arcu. Integer nec massa id erat dignissim consequat.', '2023-04-23 15:44:03', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `dialogue`
--

DROP TABLE IF EXISTS `dialogue`;
CREATE TABLE IF NOT EXISTS `dialogue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `paragraphe` longtext COLLATE utf8mb4_unicode_ci,
  `lien_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F18A1C397294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dialogue`
--

INSERT INTO `dialogue` (`id`, `article_id`, `title`, `created_at`, `paragraphe`, `lien_youtube`) VALUES
(1, 1, 'La place des réseaux sociaux dans nos vies', '2023-04-03 13:43:31', '<div>- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas finibus diam in dapibus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<strong> Fusce dictum gravida arcu, sit amet cursus augue vestibulum eget. Vestibulum eget justo ligula. Integer vitae pharetra libero.</strong> Sed facilisis risus vel diam iaculis ultricies eget sed ipsum.<br><br></div><div>- Ut ut eros sem. Fusce semper vestibulum purus, in luctus diam luctus sit amet. Aenean auctor dolor at tincidunt sollicitudin. Suspendisse potenti. Donec ac nulla quam. Vivamus pulvinar finibus neque ut consectetur. Morbi viverra laoreet diam, ut luctus neque cursus ut. Nam ac faucibus justo. Suspendisse consectetur justo erat, quis pharetra mi sodales ut. Mauris libero massa, placerat sit amet mauris at, imperdiet porta neque. Sed auctor augue lorem. Quisque ac quam eu magna posuere tempus a vitae risus. Sed elementum consequat lobortis.<br><br>- Proin massa lacus, dapibus non sodales a, vulputate tristique nibh. Nulla sit amet tincidunt ipsum, et tempor lacus. Etiam eu sodales magna. Aenean interdum fermentum congue. Proin at posuere nulla. Nullam laoreet maximus mattis. Nunc tristique lacus vitae turpis mollis vulputate. Integer quis vestibulum nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur leo at risus lobortis rhoncus. Vestibulum hendrerit pellentesque luctus. Integer convallis nulla eu purus placerat commodo.<br><br></div><div>- Sed non pellentesque elit. Vivamus dui lacus, venenatis sed dictum vitae, accumsan ut urna. Vestibulum dignissim libero non ultricies accumsan. Integer non posuere dolor. Pellentesque cursus ullamcorper lacus, ac suscipit odio facilisis id. Donec sed felis ut justo lacinia mollis. Donec consectetur erat et viverra semper. Sed iaculis enim ac venenatis feugiat. Curabitur libero sapien, vehicula eget diam vitae, ullamcorper bibendum ligula.</div>', NULL),
(2, 2, 'Mettre en lumière le rôle des femmes dans l\'histoire', '2023-04-06 14:28:38', '<div>- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas finibus diam in dapibus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<strong> Fusce dictum gravida arcu, sit amet cursus augue vestibulum eget. Vestibulum eget justo ligula. Integer vitae pharetra libero.</strong> Sed facilisis risus vel diam iaculis ultricies eget sed ipsum.<br><br></div><div>- Ut ut eros sem. Fusce semper vestibulum purus, in luctus diam luctus sit amet. Aenean auctor dolor at tincidunt sollicitudin. Suspendisse potenti. Donec ac nulla quam. Vivamus pulvinar finibus neque ut consectetur. Morbi viverra laoreet diam, ut luctus neque cursus ut. Nam ac faucibus justo. Suspendisse consectetur justo erat, quis pharetra mi sodales ut. Mauris libero massa, placerat sit amet mauris at, imperdiet porta neque. Sed auctor augue lorem. Quisque ac quam eu magna posuere tempus a vitae risus. Sed elementum consequat lobortis.<br><br>- Proin massa lacus, dapibus non sodales a, vulputate tristique nibh. Nulla sit amet tincidunt ipsum, et tempor lacus. Etiam eu sodales magna. Aenean interdum fermentum congue. Proin at posuere nulla. Nullam laoreet maximus mattis. Nunc tristique lacus vitae turpis mollis vulputate. Integer quis vestibulum nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur leo at risus lobortis rhoncus. Vestibulum hendrerit pellentesque luctus. Integer convallis nulla eu purus placerat commodo.<br><br></div><div>- Sed non pellentesque elit. Vivamus dui lacus, venenatis sed dictum vitae, accumsan ut urna. Vestibulum dignissim libero non ultricies accumsan. Integer non posuere dolor. Pellentesque cursus ullamcorper lacus, ac suscipit odio facilisis id. Donec sed felis ut justo lacinia mollis. Donec consectetur erat et viverra semper. Sed iaculis enim ac venenatis feugiat. Curabitur libero sapien, vehicula eget diam vitae, ullamcorper bibendum ligula.</div>', NULL),
(3, 3, 'L\'impact de la pandémie sur la santé mentale des jeunes', '2023-04-12 17:49:22', '<div>- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas finibus diam in dapibus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<strong> Fusce dictum gravida arcu, sit amet cursus augue vestibulum eget. Vestibulum eget justo ligula. Integer vitae pharetra libero.</strong> Sed facilisis risus vel diam iaculis ultricies eget sed ipsum.<br><br></div><div>- Ut ut eros sem. Fusce semper vestibulum purus, in luctus diam luctus sit amet. Aenean auctor dolor at tincidunt sollicitudin. Suspendisse potenti. Donec ac nulla quam. Vivamus pulvinar finibus neque ut consectetur. Morbi viverra laoreet diam, ut luctus neque cursus ut. Nam ac faucibus justo. Suspendisse consectetur justo erat, quis pharetra mi sodales ut. Mauris libero massa, placerat sit amet mauris at, imperdiet porta neque. Sed auctor augue lorem. Quisque ac quam eu magna posuere tempus a vitae risus. Sed elementum consequat lobortis.<br><br>- Proin massa lacus, dapibus non sodales a, vulputate tristique nibh. Nulla sit amet tincidunt ipsum, et tempor lacus. Etiam eu sodales magna. Aenean interdum fermentum congue. Proin at posuere nulla. Nullam laoreet maximus mattis. Nunc tristique lacus vitae turpis mollis vulputate. Integer quis vestibulum nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur leo at risus lobortis rhoncus. Vestibulum hendrerit pellentesque luctus. Integer convallis nulla eu purus placerat commodo.<br><br></div><div>- Sed non pellentesque elit. Vivamus dui lacus, venenatis sed dictum vitae, accumsan ut urna. Vestibulum dignissim libero non ultricies accumsan. Integer non posuere dolor. Pellentesque cursus ullamcorper lacus, ac suscipit odio facilisis id. Donec sed felis ut justo lacinia mollis. Donec consectetur erat et viverra semper. Sed iaculis enim ac venenatis feugiat. Curabitur libero sapien, vehicula eget diam vitae, ullamcorper bibendum ligula.</div>', NULL),
(4, 4, 'Les bienfaits insoupçonnés du rire sur la santé', '2023-04-23 14:20:11', '<div>- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas finibus diam in dapibus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dictum gravida arcu, sit amet cursus augue vestibulum eget. Vestibulum eget justo ligula. Integer vitae pharetra libero. Sed facilisis risus vel diam iaculis ultricies eget sed ipsum.<br><br>- Ut ut eros sem. Fusce semper vestibulum purus, in luctus diam luctus sit amet. Aenean auctor dolor at tincidunt sollicitudin. Suspendisse potenti. Donec ac nulla quam. Vivamus pulvinar finibus neque ut consectetur. Morbi viverra laoreet diam, ut luctus neque cursus ut. Nam ac faucibus justo. Suspendisse consectetur justo erat, quis pharetra mi sodales ut. Mauris libero massa, placerat sit amet mauris at, imperdiet porta neque. Sed auctor augue lorem. Quisque ac quam eu magna posuere tempus a vitae risus. Sed elementum consequat lobortis.<br><br>- Proin massa lacus, dapibus non sodales a, vulputate tristique nibh. Nulla sit amet tincidunt ipsum, et tempor lacus. Etiam eu sodales magna. Aenean interdum fermentum congue. Proin at posuere nulla. Nullam laoreet maximus mattis. Nunc tristique lacus vitae turpis mollis vulputate. Integer quis vestibulum nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur leo at risus lobortis rhoncus. Vestibulum hendrerit pellentesque luctus. Integer convallis nulla eu purus placerat commodo.<br><br>- Sed non pellentesque elit. Vivamus dui lacus, venenatis sed dictum vitae, accumsan ut urna. Vestibulum dignissim libero non ultricies accumsan. Integer non posuere dolor. Pellentesque cursus ullamcorper lacus, ac suscipit odio facilisis id. Donec sed felis ut justo lacinia mollis. Donec consectetur erat et viverra semper. Sed iaculis enim ac venenatis feugiat. Curabitur libero sapien, vehicula eget diam vitae, ullamcorper bibendum ligula.</div>', NULL);

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
('DoctrineMigrations\\Version20230326081120', '2023-03-26 08:11:23', 456),
('DoctrineMigrations\\Version20230406125830', '2023-04-06 12:58:41', 278);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `indice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`id`, `question`, `reponse`, `created_at`, `is_show`, `indice`) VALUES
(1, 'Quisque sodales neque ac arcu ultrices fringilla quis eget est ?', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend, dolor at facilisis semper, diam nibh varius neque, sit amet pulvinar tellus augue vitae quam. Curabitur vel facilisis diam. Vestibulum sit amet mi nec metus consequat sagittis sit amet ultricies neque. Donec et nibh eget ex mattis dignissim. Nullam arcu metus, auctor vitae magna et, auctor eleifend massa. Praesent dignissim diam nisi, a elementum ipsum accumsan eget. Fusce augue augue, auctor vel arcu sagittis, posuere venenatis neque. Nam tempor vitae urna ut facilisis. Integer sollicitudin velit accumsan ipsum faucibus, non ullamcorper tellus accumsan. Nam et dictum tellus, quis rutrum ipsum. Nulla imperdiet magna sagittis eros dictum, eget volutpat ex faucibus. Nullam a sem sit amet ante sodales fermentum. Sed nunc ex, suscipit sit amet tristique in, tincidunt nec massa. Pellentesque dictum tempor elit ac commodo. Sed vel condimentum ipsum. Aliquam sit amet libero bibendum, finibus elit at, sodales orci.</div>', '2023-04-14 13:48:49', 1, 'un'),
(2, 'Pellentesque dictum tempor elit ac commodo. Sed vel condimentum ipsum ?', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend, dolor at facilisis semper, diam nibh varius neque, sit amet pulvinar tellus augue vitae quam. Curabitur vel facilisis diam. Vestibulum sit amet mi nec metus consequat sagittis sit amet ultricies neque. Donec et nibh eget ex mattis dignissim. Nullam arcu metus, auctor vitae magna et, auctor eleifend massa. Praesent dignissim diam nisi, a elementum ipsum accumsan eget. Fusce augue augue, auctor vel arcu sagittis, posuere venenatis neque. Nam tempor vitae urna ut facilisis. Integer sollicitudin velit accumsan ipsum faucibus, non ullamcorper tellus accumsan. Nam et dictum tellus, quis rutrum ipsum. Nulla imperdiet magna sagittis eros dictum, eget volutpat ex faucibus. Nullam a sem sit amet ante sodales fermentum. Sed nunc ex, suscipit sit amet tristique in, tincidunt nec massa. Pellentesque dictum tempor elit ac commodo. Sed vel condimentum ipsum. Aliquam sit amet libero bibendum, finibus elit at, sodales orci.<br><br></div>', '2023-04-14 13:52:52', 0, 'deux'),
(3, 'Nulla imperdiet magna sagittis eros dictum, eget volutpat ex faucibus ?', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend, dolor at facilisis semper, diam nibh varius neque, sit amet pulvinar tellus augue vitae quam. Curabitur vel facilisis diam. Vestibulum sit amet mi nec metus consequat sagittis sit amet ultricies neque. Donec et nibh eget ex mattis dignissim. Nullam arcu metus, auctor vitae magna et, auctor eleifend massa. Praesent dignissim diam nisi, a elementum ipsum accumsan eget. Fusce augue augue, auctor vel arcu sagittis, posuere venenatis neque. Nam tempor vitae urna ut facilisis. Integer sollicitudin velit accumsan ipsum faucibus, non ullamcorper tellus accumsan. Nam et dictum tellus, quis rutrum ipsum. Nulla imperdiet magna sagittis eros dictum, eget volutpat ex faucibus. Nullam a sem sit amet ante sodales fermentum. Sed nunc ex, suscipit sit amet tristique in, tincidunt nec massa. Pellentesque dictum tempor elit ac commodo. Sed vel condimentum ipsum. Aliquam sit amet libero bibendum, finibus elit at, sodales orci.</div>', '2023-04-14 13:53:31', 0, 'trois'),
(4, 'Donec et nibh eget ex mattis dignissim. Nullam arcu metus ?', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend, dolor at facilisis semper, diam nibh varius neque, sit amet pulvinar tellus augue vitae quam. Curabitur vel facilisis diam. Vestibulum sit amet mi nec metus consequat sagittis sit amet ultricies neque. Donec et nibh eget ex mattis dignissim. Nullam arcu metus, auctor vitae magna et, auctor eleifend massa. Praesent dignissim diam nisi, a elementum ipsum accumsan eget. Fusce augue augue, auctor vel arcu sagittis, posuere venenatis neque. Nam tempor vitae urna ut facilisis. Integer sollicitudin velit accumsan ipsum faucibus, non ullamcorper tellus accumsan. Nam et dictum tellus, quis rutrum ipsum. Nulla imperdiet magna sagittis eros dictum, eget volutpat ex faucibus. Nullam a sem sit amet ante sodales fermentum. Sed nunc ex, suscipit sit amet tristique in, tincidunt nec massa. Pellentesque dictum tempor elit ac commodo. Sed vel condimentum ipsum. Aliquam sit amet libero bibendum, finibus elit at, sodales orci.</div>', '2023-04-14 13:53:55', 0, 'quatre');

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hosted_invoice_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_906517449A1887DC` (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lecon`
--

DROP TABLE IF EXISTS `lecon`;
CREATE TABLE IF NOT EXISTS `lecon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentation` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_94E6242E7294869C` (`article_id`),
  KEY `IDX_94E6242EBCF5E72D` (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lecon`
--

INSERT INTO `lecon` (`id`, `title`, `content`, `image1`, `image2`, `image3`, `presentation`, `slug`, `is_active`, `article_id`, `created_at`, `categorie_id`, `is_free`, `likes`, `dislikes`) VALUES
(1, 'Le présent de l\'indicatif', '<div>Sed blandit elementum massa vel lacinia. Cras eu massa consectetur, imperdiet lacus eu, vulputate arcu. Phasellus ullamcorper ipsum at sapien commodo sagittis. Vivamus laoreet fermentum augue ut facilisis. Sed tincidunt condimentum massa, nec tincidunt lacus bibendum ut. Praesent ut lorem sollicitudin, interdum lectus eget, rutrum augue. Suspendisse tristique, odio eget molestie consequat, augue nisi malesuada mi, et rutrum leo elit in libero. Etiam ut maximus dui.<br><br></div><div>Duis vitae risus id nulla ultrices consectetur. Integer ac fringilla mi. Nam lacinia diam viverra arcu facilisis, nec laoreet arcu rhoncus. Nullam mollis elementum lacus. Aliquam viverra metus felis, at viverra ligula pellentesque id. Donec volutpat diam elit, id auctor sem fringilla et. Nam vel sagittis risus. Curabitur massa turpis, imperdiet a aliquet id, ornare in mi. Donec non libero ac nisi pulvinar eleifend. Nunc lacinia sapien justo, vel eleifend est condimentum nec. Etiam eget nibh fringilla, bibendum nisi non, dignissim urna. Cras in dolor sit amet ex viverra pulvinar. Nam iaculis sem ac libero lacinia finibus. Donec faucibus facilisis facilisis. Donec elit justo, gravida et feugiat eu, blandit lacinia mi. Nunc vel nisi gravida, hendrerit turpis at, accumsan nisi.<br><br></div><div>Fusce sed malesuada massa, sed auctor arcu. Nunc vestibulum interdum leo, sit amet gravida lectus. Quisque tempus nisl neque, eu convallis elit scelerisque euismod. Etiam laoreet, purus at maximus tincidunt, lacus urna euismod dui, nec lobortis quam tortor quis ex.<strong> Suspendisse at odio at elit consectetur aliquet faucibus sed tellus. Fusce volutpat tincidunt orci non gravida. Nullam in ornare magna. Nulla eleifend ligula et placerat pretium. Suspendisse feugiat nisl sed hendrerit iaculis.</strong></div>', NULL, NULL, NULL, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit urna sit amet volutpat faucibus. Sed at est mattis, maximus arcu id, congue neque.</div>', 'present-indicatif', 1, 1, '2023-04-06 19:42:00', 1, 1, 14, 2),
(2, 'Le futur de l\'indicatif', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac bibendum lectus, eget tincidunt lectus. Sed at ipsum efficitur est sodales eleifend. Suspendisse elit dolor, finibus non tortor sit amet, congue pellentesque diam. Mauris ornare imperdiet orci, ut vestibulum leo auctor in. Nullam velit tellus, consectetur vel metus lacinia, sollicitudin pretium erat. Sed volutpat eu est et lacinia. Duis mattis, justo ac sodales lacinia, orci felis laoreet magna, non feugiat mauris enim sit amet leo. Sed sit amet aliquam magna. Maecenas facilisis neque vitae nunc feugiat, a imperdiet tellus volutpat. Pellentesque sed gravida velit, ut fermentum metus. Cras sollicitudin interdum justo. In hac habitasse platea dictumst. <strong>In mi nibh, pretium sit amet mollis at, gravida id mi. Quisque elementum sit amet nunc nec imperdiet.</strong><br><br></div><div>Sed quis lacus enim. Proin malesuada consequat eros at ultricies. Aliquam interdum aliquam dolor. Curabitur faucibus quis libero suscipit accumsan. Aliquam gravida suscipit metus sit amet aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla lobortis nulla lectus, sed convallis nulla tempus eu. Praesent eu dapibus tortor. Aenean tellus tellus, tempus suscipit congue eu, placerat quis nibh. Duis consectetur neque eu turpis pulvinar laoreet. Sed ut consequat nisi. In dignissim sagittis justo, at iaculis odio sollicitudin quis. Curabitur tincidunt fermentum metus vitae molestie. Donec ullamcorper nibh bibendum finibus aliquet.<br><br></div>', NULL, NULL, NULL, '<div>Suspendisse elit dolor, finibus non tortor sit amet, congue pellentesque diam. Mauris ornare imperdiet orci, ut vestibulum leo auctor in. Nullam velit tellus, consectetur vel metus lacinia, sollicitudin pretium erat. Sed volutpat eu est et lacinia.</div>', 'futur-indicatif', 1, 3, '2023-04-10 15:54:07', 1, 0, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `lecon_categorie`
--

DROP TABLE IF EXISTS `lecon_categorie`;
CREATE TABLE IF NOT EXISTS `lecon_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lecon_categorie`
--

INSERT INTO `lecon_categorie` (`id`, `name`, `slug`) VALUES
(1, 'Conjugaison', 'conjugaison'),
(2, 'Grammaire', 'grammaire');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B6BD307F1F55203D` (`topic_id`),
  KEY `IDX_B6BD307FA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `message`, `created_at`, `topic_id`, `user_id`, `is_active`) VALUES
(29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quelqu\'un sait comment utiliser le vocabulaire des réseaux sociaux en français ?', '2023-04-23 14:34:50', 1, 1, 1),
(30, 'Sed consequat, turpis id tristique vestibulum. Vous pouvez utiliser des verbes tels que \"publier\", \"partager\", \"aimer\", \"commenter\", \"taguer\" et \"suivre\" pour décrire les actions courantes sur les réseaux sociaux.', '2023-04-23 14:35:00', 1, 1, 1),
(31, 'Ut felis orci, varius vel commodo nec, viverra nec neque. Aliquam erat volutpat. Sed rhoncus quis dui eu feugiat. Nulla ultrices fermentum elit, rutrum interdum leo venenatis id. Proin consequat, purus in dignissim venenatis, tellus arcu blandit nisl, at hendrerit sem dui a est. In sed bibendum leo. Nam facilisis lacus sit amet purus varius ?', '2023-04-23 14:35:35', 2, 1, 1),
(32, 'Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero !!', '2023-04-23 14:35:45', 3, 1, 1),
(33, 'Sed at mi egestas ex interdum pellentesque et ac diam. In nulla urna, elementum vel lobortis nec, ultricies id libero. Maecenas varius mattis commodo. Curabitur luctus euismod congue. Nam felis felis, vulputate vitae consectetur eget, congue sit amet lectus. Aliquam scelerisque purus vel commodo ullamcorper. Praesent pharetra commodo elit, ut ultrices libero condimentum sed. Suspendisse a turpis nunc. Morbi convallis, augue a efficitur suscipit, magna diam ultricies sem, laoreet bibendum nibh tortor ut nunc. Etiam eu leo magna. Nam faucibus hendrerit scelerisque. Nullam a ante dictum, aliquet diam ac, tincidunt arcu. Sed maximus metus nec diam lobortis, id cursus urna egestas. Cras auctor condimentum semper.', '2023-04-23 14:39:08', 3, 4, 1),
(34, 'Pellentesque arcu mauris, imperdiet et libero vel, cursus maximus erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc quis ipsum vel augue mollis semper.', '2023-04-23 14:39:19', 3, 4, 1),
(35, 'Ut felis orci, varius vel commodo nec, viverra nec neque ???', '2023-04-23 14:39:34', 3, 4, 1),
(36, 'Nam facilisis lacus sit amet purus varius, auctor aliquam mauris rutrum.', '2023-04-23 14:39:49', 3, 4, 1),
(37, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac bibendum leo. Sed commodo, mauris dapibus ornare rutrum, lorem velit feugiat lacus, ut efficitur ante ipsum ac arcu. Nunc aliquam magna in dictum malesuada. Suspendisse laoreet neque nec lorem commodo vulputate. Morbi sit amet odio vitae risus molestie tristique. Praesent fermentum posuere turpis ut rutrum. Praesent accumsan at turpis vel finibus. Donec eget massa at nulla maximus interdum eget et justo. Mauris justo dolor, varius quis suscipit eget, auctor at felis. Aliquam feugiat lectus a purus facilisis venenatis. Aenean et libero lectus ?', '2023-04-23 14:40:08', 2, 4, 1),
(38, 'Pellentesque arcu mauris, imperdiet et libero vel, cursus maximus erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc quis ipsum vel augue mollis semper. Vivamus at diam sapien. Integer mi mauris, varius quis eleifend a, efficitur vitae augue. Pellentesque erat risus, cursus a ligula tempor, scelerisque fermentum erat.', '2023-04-23 14:40:33', 1, 4, 1),
(39, 'Aliquam dignissim justo ut sapien auctor convallis. Vivamus non sapien interdum nulla finibus porta a sit amet leo !', '2023-04-23 14:41:12', 3, 1, 1),
(40, 'Ut felis orci, varius vel commodo nec, viverra nec neque. Aliquam erat volutpat ...', '2023-04-23 14:41:35', 3, 1, 1),
(41, 'Nullam elit eros, varius eu massa sed, faucibus pellentesque elit. In gravida nunc ac purus placerat condimentum. Nulla condimentum laoreet arcu, et congue mi dapibus sed.', '2023-04-23 14:41:48', 3, 1, 1),
(42, 'Ram facilisis lacus sit amet purus varius, auctor aliquam mauris rutrum. Aenean pellentesque commodo mattis. Ut ornare tellus a augue porttitor sodales eu vitae neque :)', '2023-04-23 14:42:01', 3, 1, 1),
(43, 'Nullam lobortis nisl eget erat placerat, et accumsan est rhoncus. Mauris tempor mi vel odio rutrum, sit amet consectetur est scelerisque. Mauris vitae viverra turpis. Sed consectetur aliquet nisi, sed lacinia eros tempus at. Aliquam dignissim justo ut sapien auctor convallis. Vivamus non sapien interdum nulla finibus porta a sit amet leo. Sed mattis nisi purus, ac fringilla ligula pretium a. Duis efficitur blandit tincidunt. Donec et dignissim dui. In nunc sapien, elementum pharetra arcu non, facilisis interdum nisi.\r\n\r\n\r\nSed at mi egestas ex interdum pellentesque et ac diam. In nulla urna, elementum vel lobortis nec, ultricies id libero. Maecenas varius mattis commodo. Curabitur luctus euismod congue. Nam felis felis, vulputate vitae consectetur eget, congue sit amet lectus. Aliquam scelerisque purus vel commodo ullamcorper. Praesent pharetra commodo elit, ut ultrices libero condimentum sed. Suspendisse a turpis nunc. Morbi convallis, augue a efficitur suscipit, magna diam ultricies sem, laoreet bibendum nibh tortor ut nunc. Etiam eu leo magna. Nam faucibus hendrerit scelerisque. Nullam a ante dictum, aliquet diam ac, tincidunt arcu. Sed maximus metus nec diam lobortis, id cursus urna egestas. Cras auctor condimentum semper.', '2023-04-23 14:42:18', 3, 1, 1),
(44, 'Curabitur nec libero auctor, malesuada turpis nec, euismod est. In hendrerit ultricies dictum.', '2023-04-23 14:42:32', 3, 1, 1),
(45, 'Ut felis orci, varius vel commodo nec, viverra nec neque. Aliquam erat volutpat. Sed rhoncus quis dui eu feugiat. Nulla ultrices fermentum elit, rutrum interdum leo venenatis id. Proin consequat, purus in dignissim venenatis, tellus arcu blandit nisl, at hendrerit sem dui a est. In sed bibendum leo. Nam facilisis lacus sit amet purus varius, auctor aliquam mauris rutrum. Aenean pellentesque commodo mattis. Ut ornare tellus a augue porttitor sodales eu vitae neque. Nullam at auctor arcu. Integer nec massa id erat dignissim consequat ??', '2023-04-23 14:42:48', 3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id`, `name`, `slug`) VALUES
(1, 'Débutant', 'debutant'),
(2, 'Intermédiaire', 'intermediaire'),
(3, 'Confirmé', 'confirme'),
(4, 'Expert', 'expert');

-- --------------------------------------------------------

--
-- Structure de la table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `payment_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plan`
--

INSERT INTO `plan` (`id`, `name`, `slug`, `stripe_id`, `price`, `created_at`, `payment_link`) VALUES
(1, 'plan silver', NULL, 'price_1MisyrJysBhvIGnlkrT8xL2F', 3900, '2023-04-06 13:06:38', 'https://buy.stripe.com/test_6oE8z37P68q4fyo000');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE IF NOT EXISTS `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_period_start` datetime DEFAULT NULL,
  `current_period_end` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A3C664D3E899029B` (`plan_id`),
  KEY `IDX_A3C664D3A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`id`, `plan_id`, `user_id`, `stripe_id`, `current_period_start`, `current_period_end`, `is_active`, `created_at`, `name`, `description`, `price`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 14:20:10', 'Essentiel', '<div>Vivamus ipsum lectus, posuere ac elit viverra, viverra bibendum nisl. Fusce in semper turpis. Vestibulum a lobortis nulla. Nam ac condimentum nisl, vel semper.</div>', 100);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id`, `name`, `description`, `slug`) VALUES
(1, 'Société', 'Des sujets de société pour en apprendrez davantage sur les problèmes actuels qui affectent notre société et comment ils peuvent être résolus.', 'societe'),
(2, 'Histoire', 'Vous en apprendrez davantage sur les cultures, les sociétés et les civilisations passées, tout en améliorant votre français avec des termes et des expressions historiques.', 'histoire'),
(3, 'Technologie', 'Des articles informatifs sur la façon dont la technologie affecte notre vie quotidienne et comment elle peut être utilisée pour améliorer notre productivité et notre efficacité.', 'technologie'),
(4, 'Santé', 'Des articles informatifs sur des sujets de santé tels que la nutrition, le fitness, la santé mentale, les maladies courantes et les moyens de les prévenir.', 'sante');

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9D40DE1B7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id`, `message`, `created_at`, `is_active`, `slug`, `article_id`) VALUES
(1, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vehicula bibendum tellus vel fermentum. Suspendisse nec tempor nisi. Phasellus at nisi facilisis sapien ullamcorper auctor nec nec nibh. Praesent in ornare est. Donec vitae accumsan justo, nec lobortis metus. Nullam imperdiet et magna eget condimentum. Etiam facilisis elementum fringilla. Aliquam egestas iaculis enim nec commodo. Nullam tellus ex, porta gravida dolor eu, pharetra iaculis risus. Cras sollicitudin elit eu magna laoreet, a euismod nulla tempor. Nam nec sem nec urna ullamcorper finibus. Mauris pharetra aliquam condimentum. Morbi vel libero pretium, posuere ligula fringilla, facilisis arcu.</div>', '2023-04-12 12:46:44', 1, 'la-place-des-reseaux-sociaux-dans-nos-vies', 1),
(2, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vehicula bibendum tellus vel fermentum. Suspendisse nec tempor nisi. Phasellus at nisi facilisis sapien ullamcorper auctor nec nec nibh. Praesent in ornare est. Donec vitae accumsan justo, nec lobortis metus. Nullam imperdiet et magna eget condimentum. Etiam facilisis elementum fringilla. Aliquam egestas iaculis enim nec commodo. Nullam tellus ex, porta gravida dolor eu, pharetra iaculis risus. Cras sollicitudin elit eu magna laoreet, a euismod nulla tempor. Nam nec sem nec urna ullamcorper finibus. Mauris pharetra aliquam condimentum. Morbi vel libero pretium, posuere ligula fringilla, facilisis arcu.</div>', '2023-04-12 12:46:44', 1, 'mettre-en-lumiere-le-role-des-femmes-dans-l-histoire', 2),
(3, '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vehicula bibendum tellus vel fermentum. Suspendisse nec tempor nisi. Phasellus at nisi facilisis sapien ullamcorper auctor nec nec nibh. Praesent in ornare est. Donec vitae accumsan justo, nec lobortis metus. Nullam imperdiet et magna eget condimentum. Etiam facilisis elementum fringilla. Aliquam egestas iaculis enim nec commodo. Nullam tellus ex, porta gravida dolor eu, pharetra iaculis risus. Cras sollicitudin elit eu magna laoreet, a euismod nulla tempor. Nam nec sem nec urna ullamcorper finibus. Mauris pharetra aliquam condimentum. Morbi vel libero pretium, posuere ligula fringilla, facilisis arcu.</div>', '2023-04-23 13:56:22', 1, 'l-impact-de-la-pandemie-sur-la-sante-mentale-des-jeunes', 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paiement` tinyint(1) NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `paiement`, `stripe_id`, `pseudo`) VALUES
(1, 'test@mail.fr', '[\"ROLE_ADMIN\"]', '$2y$13$hP1ucVh11g3o/nBLFzQ8weOL.Q6S7JKbjZv8RdAkCl83sK5bGTIFW', 1, NULL, 'Test99'),
(2, 'jasminze@mail.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$HnUf73UT9CFEXFttwNW9N.xt7lrIqNhobnbyK0Hy9kPC.NmrjDCMe', 0, NULL, 'Jasmin'),
(3, 'romain@mail.fr', '[]', '$2y$13$ZuDBg8OhulflNoEFkA2U7uz3N8EBJtMhSMBzHhdGcbW9bZImScm/i', 1, NULL, 'Romain'),
(4, 'jonas@mail.fr', '[\"ROLE_ADMIN\"]', '$2y$13$t6NsoZiLOsqtAtd5CDjQk.7TUv7.wjlwRrdVgXXA9sVPeR7IvtXX6', 1, NULL, 'Jonas');

-- --------------------------------------------------------

--
-- Structure de la table `vocabulaire`
--

DROP TABLE IF EXISTS `vocabulaire`;
CREATE TABLE IF NOT EXISTS `vocabulaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_DB1ADE7D7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulaire`
--

INSERT INTO `vocabulaire` (`id`, `article_id`, `word`, `definition`) VALUES
(5, 1, 'Personnaliser', '<div>Adapter quelque chose à une personne en particulier.<br><em>Les algorithmes sont conçus pour personnaliser notre flux de contenu.</em></div>'),
(6, 1, 'Submerger', '<div>Être submergé ou envahi par une chose.<br><em>Il est important de ne pas se laisser submerger par les aspects négatifs des réseaux sociaux.</em></div>'),
(7, 1, 'Perspective', '<div>Une façon particulière de voir les choses.<br><em>Il est important de garder une perspective réaliste lors de l\'utilisation des réseaux sociaux.</em></div>'),
(8, 1, 'Idées', '<div>Une pensée, une opinion ou une suggestion sur quelque chose.<br><em>Les réseaux sociaux permettent de partager des idées et des informations importantes.</em></div>'),
(9, 1, 'Opportunités', '<div>Une situation qui offre la possibilité de faire quelque chose.<br><em>Les réseaux sociaux permettent de trouver des opportunités professionnelles.</em></div>'),
(10, 1, 'Pièges', '<div>Une situation dangereuse ou difficile qui peut être difficile à éviter.<br><em>En évitant les pièges potentiels des réseaux sociaux, on peut en profiter pleinement.</em></div>'),
(11, 2, 'Rhoncus', '<div>Nom désignant une douleur abdominale.<br><em>Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero.</em></div>'),
(12, 2, 'Turpis', '<div>Adjectif signifiant \"laid\" ou \"mauvais\".<br><em>Sed consequat, turpis id tristique vestibulum.</em></div>'),
(13, 2, 'Vehicula', '<div>Nom désignant un véhicule ou un moyen de transport.<br><em>Nam vehicula quam ut nunc sagittis pretium.</em></div>'),
(14, 2, 'Suspendisse', '<div>Verbe signifiant \"suspendre\" ou \"interrompre\".<br><em>Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.</em></div>'),
(15, 2, 'Aliquam', '<div>Adjectif signifiant \"quelque\" ou \"n\'importe quel\".<br><em>Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio.</em></div>'),
(16, 2, 'Maecenas', '<div>Nom propre utilisé pour désigner une personne cultivée et sophistiquée.<br><em>Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis.</em></div>'),
(17, 3, 'Rhoncus', '<div>Nom désignant une douleur abdominale.<br><em>Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero.</em></div>'),
(18, 3, 'Turpis', '<div>Adjectif signifiant \"laid\" ou \"mauvais\".<br><em>Sed consequat, turpis id tristique vestibulum.</em></div>'),
(19, 3, 'Vehicula', '<div>Nom désignant un véhicule ou un moyen de transport.<br><em>Nam vehicula quam ut nunc sagittis pretium.</em></div>'),
(20, 3, 'Suspendisse', '<div>Verbe signifiant \"suspendre\" ou \"interrompre\".<br><em>Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.</em></div>'),
(21, 3, 'Aliquam', '<div>Adjectif signifiant \"quelque\" ou \"n\'importe quel\".<br><em>Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio.</em></div>'),
(22, 3, 'Maecenas', '<div>Nom propre utilisé pour désigner une personne cultivée et sophistiquée.<br><em>Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis.</em></div>'),
(23, 4, 'Maecenas', '<div>Nom propre utilisé pour désigner une personne cultivée et sophistiquée.<br><em>Proin ac ligula urna. Maecenas interdum sem eu turpis maximus, quis varius odio facilisis.</em></div>'),
(24, 4, 'Aliquam', '<div>Adjectif signifiant \"quelque\" ou \"n\'importe quel\".<br><em>Aliquam efficitur, sem eu iaculis rhoncus, metus mi vehicula mauris, in maximus diam tortor eget odio.</em></div>'),
(25, 4, 'Suspendisse', '<div>Verbe signifiant \"suspendre\" ou \"interrompre\".<br><em>Suspendisse venenatis enim vel purus viverra, vitae tincidunt nunc vestibulum.</em></div>'),
(26, 4, 'Vehicula', '<div>Nom désignant un véhicule ou un moyen de transport.<br><em>Nam vehicula quam ut nunc sagittis pretium.</em></div>'),
(27, 4, 'Turpis', '<div>Adjectif signifiant \"laid\" ou \"mauvais\".<br><em>Sed consequat, turpis id tristique vestibulum.</em></div>'),
(28, 4, 'Rhoncus', '<div>Nom désignant une douleur abdominale.<br><em>Sed gravida, nulla sit amet finibus bibendum, erat sapien efficitur est, in gravida sapien purus vitae libero.</em></div>');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6659027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  ADD CONSTRAINT `FK_23A0E66B3E9C81` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`id`);

--
-- Contraintes pour la table `dialogue`
--
ALTER TABLE `dialogue`
  ADD CONSTRAINT `FK_F18A1C397294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_906517449A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`);

--
-- Contraintes pour la table `lecon`
--
ALTER TABLE `lecon`
  ADD CONSTRAINT `FK_94E6242E7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_94E6242EBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `lecon_categorie` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307F1F55203D` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  ADD CONSTRAINT `FK_B6BD307FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `FK_A3C664D3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_A3C664D3E899029B` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`);

--
-- Contraintes pour la table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `FK_9D40DE1B7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `vocabulaire`
--
ALTER TABLE `vocabulaire`
  ADD CONSTRAINT `FK_DB1ADE7D7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
