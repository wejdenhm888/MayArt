-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 01:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayart`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(100) DEFAULT NULL,
  `image_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `image_url`) VALUES
(1, 'Bougies', 'img/bougix10.jpg'),
(2, 'Sable', 'img/bougix12.jpg'),
(3, 'Parfum d\'ambiance', 'img/bougix13.jpg'),
(4, 'Bouquet parfumé', 'img/bouquet harmonie.jpeg'),
(5, 'Bombe de bain', 'img/bougix1.jpg'),
(6, 'Autre', 'img/bougix14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `code_postal` varchar(20) DEFAULT NULL,
  `info_plus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `region`, `ville`, `code_postal`, `info_plus`) VALUES
(1, 'hammami', 'wejdenhammami01@gmail.com', 'wejden', '+216 92616872', '209 mhamdia', 'Ben Arous', 'mhamdia', '1145', '....'),
(4, 'bouraoui', 'sarachabour17@gmail.com', 'sarra ', '55402857', 'marsa', 'Ariana', 'marsa', '1100', '......'),
(5, 'mariem', 'mariem@gmail.com', 'ben salem', '99512648', 'sfax', 'region', 'sfax', '1100', ''),
(7, 'fatma', 'fatma@gmail.com', 'affes', '99512648', 'sfax', 'region', 'sfax', '1100', ''),
(8, '', '', '', '', '', 'Ariana', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `msg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `nom`, `email`, `sujet`, `msg`) VALUES
(1, 'hammami', 'wejdenhammami01@gmail.com', 'ssssssssssssssssss', 'sssssssssssssssssssssssssssssss'),
(2, 'wejden hammami', 'wejdenhammami01@gmail.com', 'sssssssssssssssssssssssssssssssssssssssss', 'sssssssssssssssssssssssssssssssssssssssss'),
(3, '', '', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, '', '', '', ''),
(14, 'wejden', 'ezkfjzbrfrgf@gmail.com', 'ezfrfergetge', 'erfzgtzgtgyr'),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', '', '', ''),
(25, '', '', '', ''),
(26, '', '', '', ''),
(27, '', '', '', ''),
(28, '', '', '', ''),
(29, '', '', '', ''),
(30, '', '', '', ''),
(31, '', '', '', ''),
(32, '', '', '', ''),
(33, '', '', '', ''),
(34, '', '', '', ''),
(35, '', '', '', ''),
(36, '', '', '', ''),
(37, '', '', '', ''),
(38, '', '', '', ''),
(39, '', '', '', ''),
(40, '', '', '', ''),
(41, '', '', '', ''),
(42, '', '', '', ''),
(43, '', '', '', ''),
(44, '', '', '', ''),
(45, '', '', '', ''),
(46, '', '', '', ''),
(47, '', '', '', ''),
(48, '', '', '', ''),
(49, '', '', '', ''),
(50, '', '', '', ''),
(51, '', '', '', ''),
(52, '', '', '', ''),
(53, '', '', '', ''),
(54, '', '', '', ''),
(55, '', '', '', ''),
(56, '', '', '', ''),
(57, '', '', '', ''),
(58, '', '', '', ''),
(59, '', '', '', ''),
(60, '', '', '', ''),
(61, '', '', '', ''),
(62, '', '', '', ''),
(63, '', '', '', ''),
(64, '', '', '', ''),
(65, '', '', '', ''),
(66, '', '', '', ''),
(67, '', '', '', ''),
(68, '', '', '', ''),
(69, '', '', '', ''),
(70, '', '', '', ''),
(71, '', '', '', ''),
(72, '', '', '', ''),
(73, '', '', '', ''),
(74, '', '', '', ''),
(75, '', '', '', ''),
(76, '', '', '', ''),
(77, '', '', '', ''),
(78, '', '', '', ''),
(79, '', '', '', ''),
(80, '', '', '', ''),
(81, '', '', '', ''),
(82, '', '', '', ''),
(83, '', '', '', ''),
(84, '', '', '', ''),
(85, '', '', '', ''),
(86, '', '', '', ''),
(87, '', '', '', ''),
(88, '', '', '', ''),
(89, '', '', '', ''),
(90, '', '', '', ''),
(91, '', '', '', ''),
(92, '', '', '', ''),
(93, '', '', '', ''),
(94, '', '', '', ''),
(95, '', '', '', ''),
(96, '', '', '', ''),
(97, '', '', '', ''),
(98, '', '', '', ''),
(99, '', '', '', ''),
(100, '', '', '', ''),
(101, '', '', '', ''),
(102, '', '', '', ''),
(103, '', '', '', ''),
(104, '', '', '', ''),
(105, '', '', '', ''),
(106, '', '', '', ''),
(107, '', '', '', ''),
(108, '', '', '', ''),
(109, '', '', '', ''),
(110, '', '', '', ''),
(111, '', '', '', ''),
(112, '', '', '', ''),
(113, '', '', '', ''),
(114, '', '', '', ''),
(115, '', '', '', ''),
(116, '', '', '', ''),
(117, '', '', '', ''),
(118, '', '', '', ''),
(119, 'wejden', 'wejden@gmail.com', 'znhdjanfjanfjen', 'j,efk,fk,ezffk,kez,fikzr,jgklirl'),
(120, 'wejden', 'wejden@gmail.com', 'znhdjanfjanfjen', 'j,efk,fk,ezffk,kez,fikzr,jgklirl');

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id_paiement` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_panier` int(11) DEFAULT NULL,
  `nom_carte` varchar(100) DEFAULT NULL,
  `num_carte` varchar(20) DEFAULT NULL,
  `cvv` char(3) DEFAULT NULL,
  `code_securite` varchar(10) DEFAULT NULL,
  `date_exp` date DEFAULT NULL,
  `mode_paiement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id_paiement`, `id_client`, `id_panier`, `nom_carte`, `num_carte`, `cvv`, `code_securite`, `date_exp`, `mode_paiement`) VALUES
(8, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(9, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(10, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(11, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(12, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(13, NULL, NULL, '', '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `sous_total` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panier_items`
--

CREATE TABLE `panier_items` (
  `id_item` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `taille` varchar(50) DEFAULT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panier_items`
--

INSERT INTO `panier_items` (`id_item`, `id_produit`, `taille`, `quantite`) VALUES
(8, 7, 'xs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `description_produit` text DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `availability` text DEFAULT '1',
  `image_url` varchar(255) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `sous_total` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `rating`, `description_produit`, `stock`, `availability`, `image_url`, `id_categorie`, `prix`, `options`, `sous_total`) VALUES
(1, 'Amour Tropical', 4.50, 'Une bougie aux accents paradisiaques, où se mêlent la douceur des fruits exotiques et la fraîcheur des fleurs tropicales. Idéale pour créer une atmosphère sensuelle, relaxante ou pétillante selon vos envies. Son parfum gourmand et ensoleillé rappelle les plages de sable fin et les nuits d’été.', 15, 'IN STOCK', 'img/amour tropical.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Un mélange de mangue mûre, noix de coco crémeuse, fleur de frangipanier et une touche de citron vert.\",\r\n    \"duree_combustion\": \"40 à 50 heures\",\r\n    \"matériaux\": \"Contenant : Verre recyclable (style terracotta ou transparent) ou pot en céramique design. Couvercle : Bois ou métal (optionnel pour préserver le parfum).\",\r\n    \"type\": \"Cire de coco ou soja (naturelle, combustion propre)\",\r\n    \"dimensions\": \"9cm x 8cm\",\r\n    \"utilisation\": \"Parfaite pour les soirées romantiques, les moments détente ou parfumer un espace spacieux. Peut servir de décoration élégante.\",\r\n    \"plus\": [\r\n      \"Fabriquée artisanalement \",\r\n       \"  Éco-responsable : Emballage en carton kraft, sans plastique.\"\r\n    ],\r\n    \"precautions\": \"Ne pas déplacer une fois allumée (risque de renversement). Garder hors de portée des enfants/animaux. Couper la mèche à 0,5 cm avant chaque utilisation pour éviter la fumée noire.\"\r\n  }', 0.00),
(2, 'Bois Enchanté', 4.20, 'Plongez dans un univers féerique avec ce sable magique inspiré par les secrets des bois. D\'une texture douce et malléable comme du sable lunaire, il se sculpte sans sécher et évoque l\'odeur apaisante des sous-bois après la pluie. Parfait pour stimuler la créativité, calmer l’anxiété ou créer des décors miniatures enchanteurs.', 20, 'IN STOCK', 'img/bois enchante.jpeg', 2, 40.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": {\r\n      \"Forêt enchantée\": \"Notes de mousse humide, cèdre et vanille boisée.\",\r\n      \"Champignon magique\": \"Légèrement terreux et doux (sans allergènes).\"\r\n    },\r\n    \"duree_combustion\": \">1an\",\r\n    \"matériaux\": \"98% sable naturel + 2% liant végétal (algue ou amidon).\",\r\n    \"dimensions\": \"30cm x 50cm\",\r\n    \"utilisation\": \"Jeu libre : Créez des paysages, châteaux ou empreintes. Décoration : Dans un vase ou une coupole comme élément zen. Activités Montessori : Développe la motricité fine.\",\r\n    \"plus\": [\r\n      \"Ne sèche pas et conserve sa magie des années.\",\r\n      \"Stimule la créativité, la motricité fine et l’éveil des sens.\",\r\n      \"Parfum boisé unique (huiles essentielles de pin, cèdre et vanille).\"\r\n    ],\r\n    \"precautions\": \"À conserver à l’abri de l’humidité (dans son contenant hermétique). Ne pas ingérer (malgré son odeur gourmande). Nettoyer les surfaces avec un chiffon sec (éviter l’eau).\"\r\n  }', 0.00),
(3, 'Bois Mystique', 4.00, 'Laissez-vous envoûter par le parfum mystérieux et envoûtant de la Bois Mystique. Ses notes profondes de bois de cèdre, de santal et de patchouli, associées à une touche subtile de cuir et de musc, créent une ambiance chaleureuse, boisée et légèrement épicée.', 20, 'IN STOCK', 'img/bois mystique.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"], \r\n    \"parfum\": \"Cèdre noir, patchouli, vétiver. Notes secondaires : Encens oliban, baies de genièvre.\",\r\n    \"duree_combustion\": \"Déploie son parfum en 10min\",\r\n    \"matériaux\": \"Cire de coco, Verre épais noir, Céramique artisanale\",\r\n    \"dimensions\": \"hauteur 8cm\",\r\n    \"utilisation\": \"Rituels : Purification, ancrage, travail intuitif. Décoration : Ambiance gothique, cabine de sorcier, salon bohème. Cadeau : Pour les amateurs de wicca, de fantasy ou de nature.\",\r\n    \"plus\": [\r\n      \"Fabriquée lors des pleines lunes.\",\r\n      \"Inclus : Une petite carte avec un sortilège ou une affirmation positive.\",\r\n      \"Édition Collector : Bougie + pendentif en bois sculpté (symbole protecteur).\"\r\n    ],\r\n    \"precautions\": \"Ne pas déplacer allumée (contenant parfois métallique). Première utilisation : Laisser brûler 2h pour éviter le tunnel. Tenir loin des courants d’air et des enfants (<3 ans).\"\r\n  }', 0.00),
(4, 'Verte Fraicheur', 3.99, 'Une bombe de bain verte à l’allure naturelle, apportant une sensation de fraîcheur et de bien-être, idéale pour un moment de relaxation revitalisant.', 10, 'IN STOCK', 'img/verte fraicheur.jpeg', 5, 2.00, '{\r\n    \"taille\": [\"XS\", \"L\", \"XL\"],\r\n    \"parfum\": \"Arôme principal : Menthe poivrée + citron vert + eucalyptus. Option Glaciale : Ajout d’une touche de camphre pour une sensation extra rafraîchissante.\",\r\n    \"duree_combustion\": \"1 heure\",\r\n    \"matériaux\": \"Vert vif (colorant naturel à base de spiruline ou chlorophylline). Effets visuels : Moussant légèrement (effet forêt tropicale dans l’eau). Peut contenir des paillettes biodégradables (option).\",\r\n    \"dimensions\": \"diamètre : 10cm\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède (pas trop chaude pour préserver les huiles). Plongez la bombe et admirez son effervescence pétillante. Détendez-vous 15-20 min pour un effet optimal.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans stéarate, sans parabènes.\",\r\n      \"Emballage : Papier recyclé ou sachet compostable.\"\r\n    ],\r\n    \"precautions\": \"Éviter les yeux (menthe peut piquer légèrement). Peau sensible : Testez d’abord un petit morceau sur le bras. Conservation : À l’abri de l’humidité (sous film ou boîte hermétique).\"\r\n  }', 0.00),
(5, 'Rose Délice', 4.10, 'Offrez-vous un instant de douceur et de romantisme avec la bombe de bain Rose Délice. Sa teinte rose poudrée et son parfum floral délicat enveloppent le corps et l’esprit dans un cocon apaisant, idéal pour une pause cocooning.', 12, 'IN STOCK', 'img/rose délice.jpeg', 5, 2.00, '{\r\n    \"taille\": [\"S\", \"M\", \"XL\"],\r\n    \"parfum\": \"Arôme principal : Rose ancienne et pivoine. Notes secondaires : Vanille douce et musc blanc.\",\r\n    \"duree_combustion\": \"45 minutes\",\r\n    \"materiaux\": \"Colorant naturel à base de betterave et argile rose. Effets visuels : Effervescence rosée et légère mousse nacrée. Option : Pétales de rose séchés biodégradables.\",\r\n    \"dimensions\": \"diamètre : 9cm\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède. Plongez la bombe et laissez-la se dissoudre en libérant ses arômes. Détendez-vous 15-20 min pour un effet relaxant optimal.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans parabènes, sans phtalates.\",\r\n      \"Emballage : Papier de soie recyclable ou boîte kraft décorative.\",\r\n      \"Edition spéciale Saint-Valentin : Avec mini sachet de pétales de rose séchés.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact prolongé avec les textiles clairs (colorant naturel). Peau sensible : Faire un test préalable. Conservation : À conserver au sec et à l’abri de la lumière.\"\r\n  }', 0.00),
(6, 'Citrus Bliss', 4.10, 'Éveillez vos sens avec la bombe de bain Citrus Bliss. Sa teinte ensoleillée et son parfum acidulé d’agrumes apportent une sensation de vitalité et de fraîcheur. Parfaite pour démarrer la journée ou recharger ses batteries après une longue journée.', 15, 'IN STOCK', 'img/citrus bliss.jpeg', 5, 4.00, '{\r\n    \"taille\": [\"M\", \"L\", \"XL\"],\r\n    \"parfum\": \"Arôme principal : Orange sanguine, citron vert, pamplemousse. Note fraîche : Zeste de mandarine et verveine citronnée.\",\r\n    \"duree_combustion\": \"50 minutes\",\r\n    \"matériaux\": \"Colorant naturel à base de curcuma et de poudre d’écorce d’orange. Effets visuels : Effervescence dorée et éclats pétillants dans l’eau.\",\r\n    \"dimensions\": \"diamètre : 10cm\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède. Plongez la bombe et profitez de son effet vivifiant. Idéal en matinée ou après le sport.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans parabènes, sans silicones.\",\r\n      \"Emballage : Sachet kraft compostable.\",\r\n      \"Effet bonne humeur immédiat grâce à ses huiles essentielles dynamisantes.\"\r\n    ],\r\n    \"precautions\": \"Éviter les yeux. Peau sensible : Test préalable recommandé. Conserver à l’abri de l’humidité et de la chaleur.\"\r\n  }', 0.00),
(7, 'Cœur Mousse', 4.50, 'Un cœur effervescent au parfum tendre et floral, pour des bains mousseux et réconfortants. Cœur Mousse libère une douce cascade de bulles et un arôme sucré de fleurs sauvages et de fruits rouges. Parfait pour une soirée détente ou un cadeau romantique.', 8, 'IN STOCK', 'img/coeur mousse.jpeg', 5, 5.00, '{\r\n    \"taille\": [\"XS\",\"L\",\"XL\"],\r\n    \"parfum\": \"Arôme principal : Fleurs sauvages et fruits rouges. Note de fond : Miel léger et vanille.\",\r\n    \"duree_combustion\": \"60 minutes\",\r\n    \"materiaux\": \"Colorant naturel à base de betterave et hibiscus. Effets visuels : Mousse abondante et effervescence rosée.\",\r\n    \"dimensions\": \"diamètre : 11cm\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède. Déposez la bombe et laissez-vous envelopper par sa mousse onctueuse et son parfum apaisant.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans parabènes.\",\r\n      \"Emballage : Boîte kraft cœur décorée.\",\r\n      \"Idéal en duo pour une ambiance romantique.\"\r\n    ],\r\n    \"precautions\": \"Éviter le contact avec les yeux. Conserver à l’abri de l’humidité et de la lumière. Déconseillé aux enfants de moins de 3 ans.\"\r\n  }', 0.00),
(8, 'Rainbow Splash', 4.00, 'Plongez dans une expérience éclatante avec la bombe de bain Rainbow Splash. Sa fusion de couleurs vives et son parfum fruité vous plongent dans un arc-en-ciel d’effervescence et de joie. Parfaite pour une baignade fun, énergisante et pleine de couleurs.', 5, 'IN STOCK', 'img/rainbow splash.jpeg', 5, 15.00, '{\r\n    \"taille\": [\"XS\",\"L\",\"XL\"],\r\n    \"parfum\": \"Arôme principal : Mangue, fraise, kiwi et melon. Note de fond : Pêche et citron vert.\",\r\n    \"duree_combustion\": \"45 minutes\",\r\n    \"materiaux\": \"Colorant naturel à base de betterave, spiruline et curcuma. Effets visuels : Explosion de couleurs arc-en-ciel dans l’eau.\",\r\n    \"dimensions\": \"diamètre : 12cm\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède. Déposez la bombe et laissez-la libérer son effet arc-en-ciel et son parfum fruité. Profitez de cette expérience vibrante pendant 15-20 minutes.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans parabènes ni colorants artificiels.\",\r\n      \"Emballage : Boîte kraft recyclé avec design arc-en-ciel.\",\r\n      \"Idéal pour les enfants ou toute personne cherchant une expérience joyeuse.\"\r\n    ],\r\n    \"precautions\": \"Éviter le contact avec les yeux. Ne pas ingérer. Conservation : Conserver dans un endroit sec et frais.\"\r\n  }', 0.00),
(9, 'Perle d\'Or', 3.90, 'Laissez-vous envoûter par la magie de Perle d\'Or. Cette bombe de bain dorée libère une effervescence douce et un parfum délicat de fleur d\'oranger et de vanille. Sa teinte lumineuse et son parfum subtil offrent une expérience de bain apaisante et sophistiquée, idéale pour se relaxer après une longue journée.', 10, 'IN STOCK', 'img/perle dor.jpeg', 5, 15.00, '{\r\n    \"taille\": [\"XS\", \"L\", \"XL\"],\r\n    \"parfum\": \"Arôme principal : Fleur d\'oranger, vanille, musc léger. Note de fond : Ambre et bois de santal.\",\r\n    \"duree_combustion\": \"60 minutes\",\r\n    \"materiaux\": \"Colorant naturel à base de mica doré. Effets visuels : Teinte dorée et effervescence subtile.\",\r\n    \"dimensions\": \"diamètre : 9cm (pour toutes les tailles)\",\r\n    \"utilisation\": \"Remplissez la baignoire d’eau tiède. Déposez la bombe et laissez-la se dissoudre lentement en libérant son parfum apaisant. Profitez d’une relaxation optimale pendant 20-30 minutes.\",\r\n    \"plus\": [\r\n      \"100% vegan – Sans parabènes ni sulfates.\",\r\n      \"Emballage : Papier kraft recyclé avec sceau doré.\",\r\n      \"Parfait pour une expérience de bain luxueuse et relaxante.\"\r\n    ],\r\n    \"precautions\": \"Éviter le contact avec les yeux. Ne pas ingérer. Conservation : Garder dans un endroit sec et frais.\"\r\n  }', 0.00),
(10, 'Bouquet Douceur', 4.20, 'Un bouquet de fleurs délicates et apaisantes aux teintes bleues. Chaque fleur du Bouquet Douceur est soigneusement choisie pour sa beauté et son parfum subtil. Parfait pour apporter une touche de sérénité et de fraîcheur à votre intérieur. Offrez ce bouquet pour un anniversaire, une occasion spéciale ou simplement pour égayer votre journée.', 15, 'IN STOCK', 'img/bouquet douceur.jpeg', 4, 20.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes florales fraîches : Lavande, jasmin et violette.\",\r\n    \"type_fleurs\": [\"Roses\", \"Orchidées\", \"Pivoines\", \"Lavande\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin bleu. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 30 cm - 50 cm, Diamètre : 20 cm - 35 cm\",\r\n    \"utilisation\": \"Idéal pour décorer une pièce, offrir en cadeau ou pour toute occasion spéciale.\",\r\n    \"plus\": [\r\n      \"Entretien facile : Se conserve dans un vase d’eau pour prolonger la fraîcheur des fleurs.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Parfait pour un cadeau doux et apaisant.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(11, 'Bouquet Harmonie', 4.60, 'Le Bouquet Harmonie est un mélange élégant de fleurs violettes et roses, créant une atmosphère douce et raffinée. Avec ses teintes harmonieuses et son parfum délicat, ce bouquet apportera une touche de romance et de sérénité à tout espace. Parfait pour les occasions spéciales ou simplement pour célébrer la beauté de la nature.', 10, 'IN STOCK', 'img/bouquet harmonie.jpeg', 4, 25.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes florales sucrées : Rose, violette, et pivoine.\",\r\n    \"type_fleurs\": [\"Roses\", \"Orchidées\", \"Pivoines\", \"Violettes\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin rose pâle. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 35 cm - 60 cm, Diamètre : 25 cm - 40 cm\",\r\n    \"utilisation\": \"Idéal pour offrir en cadeau ou décorer une pièce avec une touche romantique.\",\r\n    \"plus\": [\r\n      \"Entretien facile : Se conserve dans un vase d’eau pour prolonger la fraîcheur des fleurs.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Un cadeau parfait pour les amoureux de la nature et des fleurs.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(12, 'Bouquet Passion', 4.70, 'Le Bouquet Passion est une explosion de douceur avec ses fleurs délicates de couleur rose bébé. Ce bouquet romantique et apaisant apportera une touche élégante et chaleureuse à toute occasion. Idéal pour un mariage, une déclaration d’amour, ou pour égayer une journée spéciale.', 12, 'IN STOCK', 'img/bouquet passion.jpeg', 4, 25.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes florales douces : Rose bébé, pivoine, et muguet.\",\r\n    \"type_fleurs\": [\"Roses\", \"Pivoines\", \"Muguet\", \"Gypsophile\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin rose clair. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 30 cm - 50 cm, Diamètre : 20 cm - 35 cm\",\r\n    \"utilisation\": \"Idéal pour une occasion spéciale, un cadeau romantique ou pour décorer un intérieur avec une touche douce et élégante.\",\r\n    \"plus\": [\r\n      \"Entretien facile : Se conserve dans un vase d’eau pour prolonger la fraîcheur des fleurs.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Un cadeau parfait pour les moments d’amour et de tendresse.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(13, 'Bouquet Élégance', 4.80, 'Le Bouquet Élégance est une composition florale sophistiquée, composée de fleurs exquises dans des teintes élégantes de blanc, crème et touches subtiles de rose poudré. Ce bouquet raffiné est conçu pour apporter une touche de luxe à toute occasion spéciale, comme des mariages, des réceptions ou des célébrations de grande classe.', 8, 'IN STOCK', 'img/bouquet elegance.jpeg', 4, 40.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes florales délicates : Rose blanche, orchidée, lys et jasmin.\",\r\n    \"type_fleurs\": [\"Roses\", \"Orchidées\", \"Lys\", \"Tulipes\", \"Freesia\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin ivoire. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 40 cm - 60 cm, Diamètre : 25 cm - 40 cm\",\r\n    \"utilisation\": \"Idéal pour les grandes occasions, les réceptions ou en cadeau pour une personne spéciale.\",\r\n    \"plus\": [\r\n      \"Entretien facile : Se conserve dans un vase d’eau pour prolonger la fraîcheur des fleurs.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Un bouquet élégant et intemporel qui saura faire impression.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(14, 'Bouquet Soleil', 4.90, 'Le Bouquet Soleil est une explosion de couleurs vives et lumineuses, inspirée par les fleurs les plus joyeuses et vibrantes. Composé de tournesols, de marguerites jaunes et d’autres fleurs aux teintes solaires, il apportera une chaleur et une énergie positive à n’importe quel espace. Parfait pour les occasions festives, les anniversaires ou pour célébrer l’arrivée du printemps.', 6, 'IN STOCK', 'img/bouquet soleil.jpeg', 4, 70.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes fraîches et légèrement sucrées : Tournesol, camomille, et maracuja.\",\r\n    \"type_fleurs\": [\"Tournesols\", \"Marguerites\", \"Crisanthèmes\", \"Gerberas\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin jaune. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 50 cm - 70 cm, Diamètre : 35 cm - 50 cm\",\r\n    \"utilisation\": \"Idéal pour une fête en extérieur, un anniversaire ou pour égayer n\'importe quel interieur.\",\r\n    \"plus\": [\r\n      \"Bouquet lumineux qui apportera une touche de gaieté à chaque occasion.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Un cadeau énergisant et plein de vie.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(15, 'Bouquet Tendresse', 4.70, 'Le Bouquet Tendresse est une composition florale pleine de douceur, faite de roses pâles, de pivoines et de fleurs délicates. Ses teintes pastel apportent une sensation de calme et de sérénité, idéales pour un geste romantique ou pour exprimer des sentiments affectueux. Ce bouquet est parfait pour un anniversaire, un mariage ou tout simplement pour montrer son amour à quelqu’un de spécial.', 5, 'IN STOCK', 'img/bouquet tendresse.jpeg', 4, 60.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes douces et florales : Rose, pivoine, lys et freesia.\",\r\n    \"type_fleurs\": [\"Roses\", \"Pivoines\", \"Lys\", \"Freesia\", \"Orchidées\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin rose clair. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 40 cm - 60 cm, Diamètre : 30 cm - 45 cm\",\r\n    \"utilisation\": \"Idéal pour les occasions romantiques, un cadeau d\'anniversaire ou pour exprimer la tendresse.\",\r\n    \"plus\": [\r\n      \"Un bouquet doux et romantique qui ravira à coup sûr.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Un symbole d’amour et de tendresse.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(16, 'Bouquet Féérie', 4.80, 'Le Bouquet Féérie est une composition magique qui mêle des fleurs éclatantes aux couleurs chatoyantes et un parfum envoûtant. Des pivoines roses, des orchidées blanches et des lys violets se combinent pour créer une sensation de rêve éveillé. Ce bouquet féerique est parfait pour célébrer une occasion spéciale ou pour ajouter une touche d’élégance et de magie à votre espace.', 7, 'IN STOCK', 'img/bouquet feerie.jpeg', 4, 50.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes florales et fruitées : Pivoine, orchidée, lys et cassis.\",\r\n    \"type_fleurs\": [\"Pivoines\", \"Orchidées\", \"Lys\", \"Freesia\", \"Dahlia\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en satin violet. Fleurs fraîches et stabilisées.\",\r\n    \"dimensions\": \"Hauteur : 45 cm - 65 cm, Diamètre : 30 cm - 50 cm\",\r\n    \"utilisation\": \"Idéal pour une fête, un mariage, un anniversaire ou pour apporter une touche magique à n’importe quel espace.\",\r\n    \"plus\": [\r\n      \"Un bouquet féerique qui apporte de la magie et de l’élégance.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Fleurs éclatantes et parfumées qui créent une ambiance enchantée.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Changer eau du vase régulièrement.\"\r\n  }', 0.00),
(17, 'Bouquet Vintage', 4.50, 'Le Bouquet Vintage est une composition élégante et rétro, inspirée par l\'époque des fleurs séchées et des arrangements classiques. Ce bouquet allie des roses anciennes, des pivoines et des dahlias dans des teintes douces de pêche, crème et mauve. Son parfum subtil et sa beauté intemporelle en font le choix parfait pour un cadeau romantique ou une décoration pleine de charme.', 8, 'IN STOCK', 'img/bouquet vintage.jpeg', 4, 70.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes douces et poudrées : Rose ancienne, pivoine, lavande, et mimosa.\",\r\n    \"type_fleurs\": [\"Roses anciennes\", \"Pivoines\", \"Dahlias\", \"Mimosa\", \"Lavande\"],\r\n    \"matériaux\": \"Tige en bois naturel, ruban en dentelle crème. Fleurs fraîches et séchées.\",\r\n    \"dimensions\": \"Hauteur : 30 cm - 50 cm, Diamètre : 25 cm - 40 cm\",\r\n    \"utilisation\": \"Idéal pour un mariage, une décoration vintage ou un cadeau romantique.\",\r\n    \"plus\": [\r\n      \"Un bouquet intemporel qui évoque le charme des époques passées.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Fleurs séchées qui durent longtemps et ajoutent une touche nostalgique.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Les fleurs séchées peuvent perdre de leur éclat avec le temps, mais elles restent belles pendant des années.\"\r\n  }', 0.00),
(18, 'Bouquet Bohème', 4.70, 'Le Bouquet Bohème est une composition florale libre et naturelle, qui mêle des fleurs sauvages, des herbes fraîches et des touches de fleurs séchées. Avec ses teintes chaudes et ses formes organiques, il crée une atmosphère décontractée et élégante, typique du style bohème. Ce bouquet est parfait pour ajouter une touche d\'originalité à un mariage, une fête ou tout autre événement créatif.', 6, 'IN STOCK', 'img/bouquet boheme.jpeg', 4, 60.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Notes fraîches et herbacées : Lavande, eucalyptus, romarin, et camomille.\",\r\n    \"type_fleurs\": [\"Lavande\", \"Eucalyptus\", \"Romarin\", \"Camomille\", \"Marguerites\", \"Fleurs sauvages\"],\r\n    \"matériaux\": \"Tige en bambou, ruban en lin naturel. Fleurs fraîches et séchées.\",\r\n    \"dimensions\": \"Hauteur : 40 cm - 60 cm, Diamètre : 30 cm - 45 cm\",\r\n    \"utilisation\": \"Idéal pour un mariage bohème, une fête en extérieur ou pour ajouter une touche de naturel à n\'importe quel espace.\",\r\n    \"plus\": [\r\n      \"Un bouquet naturel et sauvage qui incarne esprit bohème.\",\r\n      \"Emballage : Enveloppe en toile de jute écologique.\",\r\n      \"Fleurs fraîches et séchées qui apportent de la texture et du caractère.\"\r\n    ],\r\n    \"precautions\": \"Ne pas exposer directement à la chaleur ou à la lumière directe. Conserver dans un endroit frais et sec. Les fleurs séchées peuvent perdre de leur éclat avec le temps.\"\r\n  }', 0.00),
(19, ' Petit Sac', 4.30, 'Découvrez le Sable Magique, un matériau fascinant et malléable qui ne sèche jamais ! Parfait pour créer des formes et des sculptures sans effort. Ce petit sac est idéal pour vos activités créatives et apaisantes, offrant une texture douce et agréable.', 30, 'IN STOCK', 'img/sable petit sac.jpeg', 2, 7.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Légère odeur douce et naturelle de sable frais.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"100% sable magique, non toxique, ne sèche jamais.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm\",\r\n    \"utilisation\": \"Loisirs créatifs : Idéal pour les enfants et adultes qui aiment sculpter et modeler.\",\r\n    \"plus\": [\r\n      \"Sable magique qui ne sèche jamais, pour une utilisation à long terme.\",\r\n      \"Peut être utilisé pour les activités Montessori et le développement de la motricité fine.\",\r\n      \"Facile à nettoyer et réutilisable.\"\r\n    ],\r\n    \"precautions\": \"À conserver à l’abri de l’humidité. Ne pas ingérer. Ne pas laisser les enfants sans surveillance lorsqu’ils jouent.\"\r\n  }', 0.00),
(20, ' Grand Sac', 4.50, 'Offrez-vous une grande réserve de Sable Magique, doux et malléable, qui ne sèche jamais ! Idéal pour les activités créatives en famille, les animations ou les décorations zen. Ce grand sac permet de créer des paysages, châteaux et décorations éphémères en toute liberté.', 20, 'IN STOCK', 'img/sable grand sac.jpeg', 2, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Légère odeur douce et naturelle de sable frais.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"100% sable magique, non toxique, ne sèche jamais.\",\r\n    \"dimensions\": \"Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Loisirs créatifs : Parfait pour les grands décors ou les ateliers collectifs.\",\r\n    \"plus\": [\r\n      \"Grande quantité pour des créations XXL.\",\r\n      \"Sable magique qui reste souple et malléable pendant des années.\",\r\n      \"Peut être utilisé pour des activités apaisantes et de relaxation.\"\r\n    ],\r\n    \"precautions\": \"À conserver à l’abri de l’humidité. Ne pas ingérer. Ne pas laisser les enfants sans surveillance lorsqu’ils jouent.\"\r\n  }', 0.00),
(21, 'Sable Lumineux', 4.70, 'Plongez dans la magie nocturne avec ce Sable Magique Lumineux ! De jour, il conserve sa texture douce et malléable, et dans l’obscurité, il s’illumine pour créer des paysages féeriques et mystérieux. Parfait pour les décorations de chambre, activités apaisantes ou soirées à thème.', 25, 'IN STOCK', 'img/sable lumineux.jpeg', 2, 10.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Discret et doux, légèrement boisé.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"98% sable naturel, 2% liant végétal + pigments phosphorescents non toxiques.\",\r\n    \"dimensions\": \" 20 cm x 30 cm \",\r\n    \"utilisation\": \"Créer des décors phosphorescents pour des soirées, des jeux sensoriels nocturnes ou des ateliers zen.\",\r\n    \"plus\": [\r\n      \"Brille dans le noir après exposition à la lumière.\",\r\n      \"Disponible en plusieurs coloris lumineux : vert, bleu, rose.\",\r\n      \"Rechargeable à la lumière UV pour un effet durable.\"\r\n    ],\r\n    \"precautions\": \"Éviter le contact avec les yeux et la bouche. À conserver à l’abri de l’humidité et de la poussière. Pour usage décoratif et créatif uniquement.\"\r\n  }', 0.00),
(22, ' Spécial Christmas', 4.80, 'Transformez votre intérieur en village de Noël miniature avec ce Sable Magique Édition Spéciale Christmas. Parfumé aux notes chaleureuses de cannelle, orange et pain d’épices, il apporte une ambiance féerique et réconfortante. Idéal pour les décorations de table, créations de paysages enneigés et jeux sensoriels hivernaux.', 30, 'IN STOCK', 'img/special christmas.jpeg', 2, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Orange confite, cannelle et pain d’épices.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"98% sable naturel, 2% liant végétal (algues) et pigments minéraux alimentaires.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm / Moyen sac : 20 cm x 30 cm / Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Décorations de table de Noël, créations de paysages enneigés, activités manuelles avec les enfants.\",\r\n    \"plus\": [\r\n      \"Parfum gourmand et réconfortant.\",\r\n      \"Disponible en blanc neige, rouge cerise et vert sapin.\",\r\n      \"Ne sèche pas et se conserve plusieurs saisons.\"\r\n    ],\r\n    \"precautions\": \"À conserver dans son sac hermétique après usage. Ne pas ingérer. Utilisation sous surveillance pour les enfants de moins de 3 ans.\"\r\n  }', 0.00),
(23, ' Rose Cristalline', 4.60, 'Un sable féerique aux nuances rose pâle et nacrées, idéal pour des créations apaisantes et raffinées. Parfait pour des décors zen, des séances de relaxation sensorielle ou des tables de mariage délicates.', 20, 'IN STOCK', 'img/rose cristalline.jpeg', 2, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Rose poudrée et musc blanc.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"98% sable naturel, 2% liant végétal et nacres minérales.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm / Moyen sac : 20 cm x 30 cm / Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Créations zen, centres de table élégants, activités sensorimotrices et décorations de mariage.\",\r\n    \"plus\": [\r\n      \"Teinte rose nacrée unique.\",\r\n      \"Effet légèrement scintillant à la lumière.\",\r\n      \"Compatible avec huiles essentielles (quelques gouttes pour personnaliser le parfum).\"\r\n    ],\r\n    \"precautions\": \"Conserver à l’abri de l’humidité. Éviter le contact prolongé avec des surfaces textiles claires.\"\r\n  }', 0.00),
(24, 'Océan Givré', 4.70, 'Un sable bleu polaire aux reflets givrés pour recréer chez vous l’atmosphère apaisante des côtes boréales. Parfumé à la menthe fraîche et aux embruns marins, il est parfait pour des décors zen d’hiver ou des jeux sensoriels relaxants.', 25, 'IN STOCK', 'img/ocean givre.jpeg', 2, 20.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Menthe glacée, embruns et eucalyptus.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"97% sable naturel, 3% liant végétal et pigments minéraux nacrés.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm / Moyen sac : 20 cm x 30 cm / Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Décor de table hivernal, créations zen et sensorielle, ou jeux tactiles rafraîchissants.\",\r\n    \"plus\": [\r\n      \"Parfum ultra frais et vivifiant.\",\r\n      \"Reflets nacrés façon cristaux de givre.\",\r\n      \"Ne sèche pas et reste souple des années.\"\r\n    ],\r\n    \"precautions\": \"À conserver dans son sac hermétique. Éviter le contact prolongé avec des textiles fragiles.\"\r\n  }', 0.00),
(25, 'Éclat Automnal', 4.80, 'Un sable aux nuances chaudes de cuivre, d’orange brûlé et de brun doré. Parfumé aux notes boisées et épicées de cannelle et de résine, il évoque les sous-bois en automne et les feux de cheminée. Parfait pour des décors cocooning ou des séances de relaxation sensorielle.', 15, 'IN STOCK', 'img/eclat automnal.jpeg', 2, 40.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Cannelle, résine de pin, orange douce.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"97% sable naturel, 3% liant végétal et pigments minéraux aux teintes automnales.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm / Moyen sac : 20 cm x 30 cm / Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Décor automnal, terrarium de saison, jeux sensoriels ou ambiance chaleureuse.\",\r\n    \"plus\": [\r\n      \"Parfum épicé réconfortant.\",\r\n      \"Couleurs chaudes et nacrées.\",\r\n      \"Parfait pour les tables de fête et les décors de cheminée.\"\r\n    ],\r\n    \"precautions\": \"Conserver à l’abri de l’humidité. Ne pas ingérer. Éviter le contact avec les textiles clairs.\"\r\n  }', 0.00),
(26, ' Nature Ardente', 4.60, 'Un sable incandescent aux tons rougeoyants et mordorés, inspiré des forêts embrasées et des couchers de soleil d’été indien. Son parfum boisé et épicé, relevé de girofle et de muscade, stimule les sens et réchauffe l’atmosphère.', 20, 'IN STOCK', 'img/nature ardente.jpeg', 2, 40.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Bois brûlé, girofle et muscade.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"96% sable naturel, 4% liant végétal et pigments minéraux rouge cuivre et or.\",\r\n    \"dimensions\": \" 20 cm x 30 cm \",\r\n    \"utilisation\": \"Décor automnal, ambiance feu de camp, jeux tactiles et rituels sensoriels.\",\r\n    \"plus\": [\r\n      \"Couleurs flamboyantes changeant selon la lumière.\",\r\n      \"Parfum chaud et épicé stimulant.\",\r\n      \"Effet légèrement scintillant sous lumière tamisée.\"\r\n    ],\r\n    \"precautions\": \"Conserver dans un endroit sec et frais. Éviter le contact avec les textiles clairs et les surfaces fragiles.\"\r\n  }', 0.00),
(27, ' Nature Ardente', 4.60, 'Un sable incandescent aux tons rougeoyants et mordorés, inspiré des forêts embrasées et des couchers de soleil d’été indien. Son parfum boisé et épicé, relevé de girofle et de muscade, stimule les sens et réchauffe l’atmosphère.', 20, 'IN STOCK', 'img/nature ardente.jpeg', 2, 40.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Bois brûlé, girofle et muscade.\",\r\n    \"duree_combustion\": \"N/A - Produit non combustible\",\r\n    \"materiaux\": \"96% sable naturel, 4% liant végétal et pigments minéraux rouge cuivre et or.\",\r\n    \"dimensions\": \"Petit sac : 10 cm x 15 cm / Moyen sac : 20 cm x 30 cm / Grand sac : 30 cm x 40 cm\",\r\n    \"utilisation\": \"Décor automnal, ambiance feu de camp, jeux tactiles et rituels sensoriels.\",\r\n    \"plus\": [\r\n      \"Couleurs flamboyantes changeant selon la lumière.\",\r\n      \"Parfum chaud et épicé stimulant.\",\r\n      \"Effet légèrement scintillant sous lumière tamisée.\"\r\n    ],\r\n    \"precautions\": \"Conserver dans un endroit sec et frais. Éviter le contact avec les textiles clairs et les surfaces fragiles.\"\r\n  }', 0.00),
(28, 'Bougie Éclat Floral', 4.30, 'Une bougie artisanale à la senteur florale fraîche et élégante. Notes principales de jasmin, pivoine et freesia, avec une touche subtile de vanille blanche. Sa cire végétale naturelle illumine vos soirées d’une lumière douce et apaisante.', 25, 'IN STOCK', 'img/eclat floral.jpeg', 1, 20.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Jasmin, pivoine, freesia et vanille blanche.\",\r\n    \"duree_combustion\": \"30h à 60h selon la taille\",\r\n    \"materiaux\": \"Cire végétale, mèche en coton naturel, pot en verre recyclé.\",\r\n    \"dimensions\": \"Mini : h 5cm / Moyen : h 9cm / Géant : h 12cm\",\r\n    \"utilisation\": \"Décoration de table, rituel de relaxation, ambiance printanière.\",\r\n    \"plus\": [\r\n      \"100% vegan et sans paraffine.\",\r\n      \"Cire sans OGM, parfum élaboré à Grasse.\",\r\n      \"Pot réutilisable après usage.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(29, 'Océan Enchanté', 4.80, 'Laissez-vous envoûter par la bougie \"Océan Enchanté\" au parfum délicat et doux. Ses notes florales et fruitées de rose, de litchi et de fleur de cerisier créent une ambiance romantique et apaisante, parfaite pour un moment de détente.', 15, 'IN STOCK', 'img/ocean enchante.jpeg', 1, 80.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, litchi, fleur de cerisier.\",\r\n    \"duree_combustion\": \"45h à 75h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance romantique, détente et relaxation.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(30, 'Rose Éternelle', 4.70, 'La \"Rose Éternelle\" est une bougie au parfum délicat et romantique. Elle évoque des senteurs douces et féminines de rose, de musc blanc et de vanille. Une bougie parfaite pour ajouter une touche de sophistication et de bien-être à votre intérieur.', 30, 'IN STOCK', 'img/rose eternelle.jpeg', 1, 10.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, musc blanc, vanille.\",\r\n    \"duree_combustion\": \"20h à 40h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 5cm / Moyen : h 9cm / Géant : h 12cm\",\r\n    \"utilisation\": \"Ambiance romantique, décoration de table, moments de relaxation.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et féminin.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(31, 'Jardin Succulent', 4.50, 'Le \"Jardin Succulent\" est une bougie au parfum frais et naturel, inspiré des plantes succulentes. Ses notes vertes et légèrement épicées, accompagnées d\'une touche de terre et d\'herbes fraîches, créent une ambiance relaxante et vivifiante dans votre intérieur.', 20, 'IN STOCK', 'img/jardin succulent.jpeg', 1, 10.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Succulentes, herbes fraîches, terre.\",\r\n    \"duree_combustion\": \"25h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 5cm / Moyen : h 9cm / Géant : h 12cm\",\r\n    \"utilisation\": \"Ambiance naturelle, décoration intérieure, détente.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum frais et naturel.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(32, 'Douce Romance', 4.60, 'La bougie \"Douce Romance\" est un voyage parfumé au cœur de la rose et des fruits rouges. Ses notes délicates de rose fraîche, de fraise et de framboise créent une ambiance romantique, douce et apaisante, idéale pour un moment de détente en amoureux.', 25, 'IN STOCK', 'img/douce romance.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, fraise, framboise.\",\r\n    \"duree_combustion\": \"30h à 60h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance romantique, cadeau pour les amoureux, moments de détente.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum sucré et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(33, 'Élégance Vanille', 4.40, 'L\'\"Élégance Vanille\" est une bougie au parfum doux et chaleureux de vanille gourmande, créant une ambiance cosy et apaisante. Ses notes crémeuses et sucrées de vanille s\'harmonisent parfaitement avec une touche subtile de caramel, offrant un parfum réconfortant pour toutes les occasions.', 30, 'IN STOCK', 'img/elegance vanille.jpeg', 1, 10.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Vanille, caramel.\",\r\n    \"duree_combustion\": \"25h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance cosy, détente, parfum doux et sucré.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum crémeux et gourmand.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(34, 'Nature Pure', 4.80, 'La bougie \"Nature Pure\" est une invitation à la fraîcheur de la nature. Avec ses notes légères de citron vert, de menthe et d\'eucalyptus, elle crée une atmosphère vivifiante et rafraîchissante, parfaite pour purifier l\'air et ajouter une touche de légèreté à votre intérieur.', 25, 'IN STOCK', 'img/nature pure.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Citron vert, menthe, eucalyptus.\",\r\n    \"duree_combustion\": \"30h à 60h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance fraîche, purification de l\'air, moments de détente.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum frais et naturel.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(35, 'Délice Gourmand', 4.70, 'La bougie \"Délice Gourmand\" est une véritable invitation à la douceur. Ses notes sucrées et riches de vanille, de caramel et de chocolat chaud créent une ambiance chaleureuse et réconfortante, parfaite pour les moments de détente ou pour ajouter une touche gourmande à votre espace.', 30, 'IN STOCK', 'img/delice gourmant.jpeg', 1, 50.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Vanille, caramel, chocolat chaud.\",\r\n    \"duree_combustion\": \"25h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance gourmande, moments de détente, décor doux et sucré.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum sucré et réconfortant.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(36, 'Choco Festif', 4.90, 'La bougie \"Choco Festif\" est une expérience gourmande et chaleureuse, parfaite pour les fêtes. Son parfum riche et envoûtant de chocolat noir, de noisettes grillées et de sucre vanillé crée une ambiance festive et réconfortante, idéale pour les moments en famille ou entre amis.', 20, 'IN STOCK', 'img/choco festif.jpeg', 1, 30.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Chocolat noir, noisettes grillées, sucre vanillé.\",\r\n    \"duree_combustion\": \"30h à 70h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance festive, moments conviviaux, décoration gourmande.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum sucré et chocolaté.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(37, 'Rosée Bohème', 4.50, 'La bougie \"Rosée Bohème\" capture l\'essence d\'une matinée fraîche et paisible. Son parfum doux et floral mélange de rose, de jasmin et une touche subtile de musc, créant une ambiance bohème et sereine, parfaite pour se détendre ou pour apporter une touche de fraîcheur à votre espace.', 25, 'IN STOCK', 'img/rosee boheme.jpeg', 1, 12.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, jasmin, musc.\",\r\n    \"duree_combustion\": \"20h à 55h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance florale, moments de détente, décoration zen.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(38, 'Sable & Mer', 4.30, 'La bougie \"Sable & Mer\" vous transporte instantanément sur la plage, avec son parfum frais et iodé de mer, de sel et de sable chaud. Ce parfum est l\'invitation idéale à la relaxation et à la rêverie, créant une atmosphère apaisante et revitalisante.', 30, 'IN STOCK', 'img/sable&mer.jpeg', 1, 20.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Mer, sel, sable chaud.\",\r\n    \"duree_combustion\": \"25h à 55h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance marine, moments de détente, décoration zen.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum marin et frais.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(39, 'Mayart Signature', 4.70, 'La bougie \"Mayart Signature\" est l\'essence même du luxe et de l\'élégance. Son parfum sophistiqué allie des notes de bois précieux, de vanille délicate et de cuir subtilement fumé, créant une ambiance chaleureuse, raffinée et accueillante. Parfaite pour les moments de détente ou pour ajouter une touche de sophistication à votre espace.', 15, 'IN STOCK', 'img/mayart signature.jpeg', 1, 50.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Bois précieux, vanille, cuir fumé.\",\r\n    \"duree_combustion\": \"30h à 80h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance sophistiquée, moments de détente, décoration chic.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum luxueux et raffiné.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00);
INSERT INTO `produits` (`id_produit`, `nom_produit`, `rating`, `description_produit`, `stock`, `availability`, `image_url`, `id_categorie`, `prix`, `options`, `sous_total`) VALUES
(40, 'Cannelle Bohème', 4.40, 'La bougie \"Cannelle Bohème\" diffuse un parfum chaleureux et épicé de cannelle douce et de vanille crémeuse, apportant une atmosphère accueillante et bohème à votre espace. Parfaite pour les soirées fraîches, elle invite à la détente tout en apportant une touche de confort et d\'élégance.', 20, 'IN STOCK', 'img/canelle boheme.jpeg', 1, 20.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Cannelle douce, vanille crémeuse.\",\r\n    \"duree_combustion\": \"20h à 55h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance chaleureuse, moments de détente, décoration bohème.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et épicé.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(41, 'Sachet Féérique', 4.80, 'Le \"Sachet Féérique\" est un petit trésor magique qui libère un parfum envoûtant de fleurs sauvages, de fruits juteux et d\'épices délicates. Idéal pour parfumer subtilement votre espace et ajouter une touche féerique à vos moments de détente. Ce sachet est parfait pour offrir ou pour égayer votre maison.', 10, 'IN STOCK', 'img/sachet feerique.jpeg', 1, 60.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Fleurs sauvages, fruits juteux, épices délicates.\",\r\n    \"duree_combustion\": \"Non applicable\",\r\n    \"materiaux\": \"Tissu doux, graines parfumées, huiles essentielles naturelles.\",\r\n    \"dimensions\": \"Petit : 5x7 cm / Moyen : 8x10 cm / Géant : 12x15 cm\",\r\n    \"utilisation\": \"Parfumer un tiroir, une penderie, ou utiliser comme décoration.\",\r\n    \"plus\": [\r\n      \"100% naturel, sans produits chimiques.\",\r\n      \"Durée de parfum longue.\",\r\n      \"Idéal pour un cadeau magique.\"\r\n    ],\r\n    \"precautions\": \"Éviter tout contact direct avec la peau. Ne pas ingérer.\"\r\n  }', 0.00),
(42, 'Nuit Céleste', 4.30, 'La bougie \"Nuit Céleste\" évoque la douceur et le mystère d\'une nuit étoilée. Son parfum envoûtant de lavande, de bois de santal et d\'ambre est apaisant, créant une atmosphère calme et propice à la relaxation. Parfaite pour vos moments de détente ou pour créer une ambiance sereine et nocturne.', 25, 'IN STOCK', 'img/nuit celeste.jpeg', 1, 8.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Lavande, bois de santal, ambre.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance apaisante, moments de détente, relaxation.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et apaisant.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(43, 'Pétale Sucré', 4.70, 'La bougie \"Pétale Sucré\" vous invite à un voyage sensoriel grâce à ses arômes doux et sucrés de fleurs de cerisier, de vanille et de miel. Elle crée une atmosphère douce et parfumée, idéale pour une ambiance romantique et chaleureuse. Parfaite pour vos moments de détente ou pour offrir en cadeau.', 20, 'IN STOCK', 'img/petale sucre.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Fleurs de cerisier, vanille, miel.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance romantique, moments de détente, décoration chaleureuse.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum sucré et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(44, 'Crème Vanillée', 4.60, 'La bougie \"Crème Vanillée\" offre une expérience olfactive délicieusement gourmande grâce à son parfum riche et crémeux de vanille, de caramel et de noix de coco. Elle crée une ambiance douce et chaleureuse, parfaite pour se détendre après une longue journée ou pour ajouter une touche réconfortante à votre intérieur.', 30, 'IN STOCK', 'img/creme vanillee.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Vanille, caramel, noix de coco.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance gourmande, moments de détente, décoration chaleureuse.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et réconfortant.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(45, 'Pétale de Pêche', 4.50, 'La bougie \"Pétale de Pêche\" embaume l\'air avec un parfum fruité et doux de pêche juteuse, de rose délicate et de musc léger. Elle crée une atmosphère florale et sucrée, idéale pour une ambiance estivale et rafraîchissante. Parfaite pour vos moments de relaxation ou pour ajouter une touche florale et fruitée à votre espace.', 25, 'IN STOCK', 'img/petale de peche.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Pêche, rose, musc.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance florale et fruitée, moments de détente, décoration estivale.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum sucré et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(46, 'Douce Rosée', 4.40, 'La bougie \"Douce Rosée\" enveloppe votre espace d\'un parfum frais et floral de roses fraîches, de jasmin et de notes subtiles de citron. Elle crée une ambiance légère et apaisante, parfaite pour ajouter une touche de fraîcheur et de sérénité à votre intérieur.', 30, 'IN STOCK', 'img/douce rosee.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, jasmin, citron.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance fraîche et florale, moments de détente, décoration apaisante.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum léger et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(47, 'Douce Rosée', 4.50, 'Sachet de trois bombes de bain \"Douce Rosée\" aux teintes roses et à l’arôme délicat de rose et de vanille, pour une parenthèse sensorielle et relaxante.', 20, 'IN STOCK', 'img/douce rosee1.jpeg', 5, 5.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Rose, pivoine et vanille.\",\r\n    \"duree_dissolution\": \"5–10 minutes\",\r\n    \"dimensions\": \"Diamètre : 5 cm par bombe\",\r\n    \"utilisation\": \"Plongez une bombe dans l’eau tiède et laissez effervescer pour libérer ses huiles essentielles.\",\r\n    \"plus\": [\r\n      \"Lot de 3 bombes de bain artisanal\",\r\n      \"Enrichies en beurre de karité pour adoucir la peau\",\r\n      \"Couleur rose délicate et texture crémeuse\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants.\"\r\n  }', 0.00),
(48, 'Nuage des Fleurs', 4.30, 'La bougie \"Nuage des Fleurs\" diffuse un parfum doux et floral de lilas, de jasmin et de violette, créant une ambiance légère et délicate, parfaite pour apaiser l\'esprit et rafraîchir l\'air de votre intérieur.', 25, 'IN STOCK', 'img/nuage des fleurs 1.jpeg', 1, 15.00, '{\r\n    \"taille\": [\"Mini\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Lilas, jasmin, violette.\",\r\n    \"duree_combustion\": \"15h à 50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Mini : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance florale légère, moments de détente, décoration apaisante.\",\r\n    \"plus\": [\r\n      \"100% vegan, cire sans OGM.\",\r\n      \"Parfum doux et floral.\",\r\n      \"Pot réutilisable en verre recyclé.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage. Éviter les courants d’air.\"\r\n  }', 0.00),
(49, 'Nuage des Fleurs', 4.60, 'La bougie \"Nuage des Fleurs\" vous enveloppe d\'un parfum délicat de fleurs blanches et de thé vert, créant une atmosphère douce et apaisante, idéale pour un moment de relaxation après une longue journée.', 30, 'IN STOCK', 'img/nuage des fleurs.jpeg', 3, 13.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Fleurs blanches, thé vert.\",\r\n    \"duree_dissolution\": \"5–7 minutes\",\r\n    \"dimensions\": \"Diamètre : 6 cm par bombe\",\r\n    \"utilisation\": \"Plongez une bombe dans l’eau chaude et laissez-la se dissoudre, libérant ses huiles essentielles pour un bain relaxant.\",\r\n    \"plus\": [\r\n      \"Enrichie en beurre de karité pour adoucir la peau\",\r\n      \"Aide à apaiser et détendre l\'esprit\",\r\n      \"Parfum léger et subtil\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants.\"\r\n  }', 0.00),
(50, 'Renne Enchanté', 4.50, 'Un joli renne décoratif qui diffuse un parfum doux et épicé de cannelle, de clou de girofle et d’orange. Parfait pour ajouter une touche magique et festive à vos décorations de Noël.', 50, 'IN STOCK', 'img/renne enchante.jpeg', 1, 12.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Cannelle, clou de girofle, orange.\",\r\n    \"duree_combustion\": \"10–15h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, décorations en bois.\",\r\n    \"dimensions\": \"Petit : 7cm, Moyen : 10cm, Grand : 15cm\",\r\n    \"utilisation\": \"Ambiance de Noël, décoration intérieure, moments festifs.\",\r\n    \"plus\": [\r\n      \"Parfum d’hiver réconfortant.\",\r\n      \"Idéal pour la saison des fêtes.\",\r\n      \"Fabriqué à la main avec des matériaux naturels.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Éviter les courants d’air. Couper la mèche à 0,5 cm avant chaque utilisation.\"\r\n  }', 0.00),
(51, 'Délice Pastel', 4.80, 'Un parfum doux et sucré inspiré des couleurs pastel. Cette bougie aux notes de vanille crémeuse, de caramel et de sucre glace évoque des souvenirs sucrés et apporte une ambiance chaleureuse et apaisante à votre intérieur.', 30, 'IN STOCK', 'img/delice pastel.jpeg', 1, 60.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Vanille crémeuse, caramel, sucre glace.\",\r\n    \"duree_combustion\": \"15–50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Petit : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance douce et sucrée, moments de détente, décoration raffinée.\",\r\n    \"plus\": [\r\n      \"Parfum gourmand et réconfortant.\",\r\n      \"100% cire de soja, éco-responsable.\",\r\n      \"Pot en verre réutilisable.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage.\"\r\n  }', 0.00),
(52, 'Cappuccino Douceur', 4.70, 'Une bougie parfumée qui évoque l\'odeur d\'un cappuccino frais, avec des notes de café expresso, de lait mousseux et une touche subtile de cacao. Parfaite pour apporter une atmosphère chaleureuse et accueillante à votre intérieur.', 30, 'IN STOCK', 'img/cappuccino douceur.jpeg', 1, 25.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Géant\"],\r\n    \"parfum\": \"Café expresso, lait mousseux, cacao.\",\r\n    \"duree_combustion\": \"15–50h selon la taille\",\r\n    \"materiaux\": \"Cire de soja, mèche en coton, pot en verre recyclable.\",\r\n    \"dimensions\": \"Petit : h 6cm / Moyen : h 10cm / Géant : h 14cm\",\r\n    \"utilisation\": \"Ambiance chaleureuse, moments de détente, décoration cosy.\",\r\n    \"plus\": [\r\n      \"Parfum gourmand et réconfortant.\",\r\n      \"100% cire de soja, respectueuse de l\'environnement.\",\r\n      \"Pot en verre réutilisable.\"\r\n    ],\r\n    \"precautions\": \"Ne jamais laisser brûler sans surveillance. Couper la mèche à 0,5 cm avant chaque allumage.\"\r\n  }', 0.00),
(53, 'Oriental Air Frais', 4.50, 'Offrez à votre espace un souffle envoûtant avec le parfum Oriental Air Frais. Un mélange unique de notes d\'ambre, de bois de oud et d\'épices douces, créant une atmosphère chaleureuse et raffinée, idéale pour une ambiance mystique et apaisante.', 20, 'IN STOCK', 'img/air frais.png', 3, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Ambre, bois de oud, épices douces.\",\r\n    \"duree_diffusion\": \"15–30h selon la taille\",\r\n    \"materiaux\": \"Huiles essentielles naturelles, flacon en verre recyclable.\",\r\n    \"dimensions\": \"Petit : 6 cm / Moyen : 10 cm / Grand : 15 cm\",\r\n    \"utilisation\": \"Diffusez dans votre salon, chambre ou bureau pour une ambiance apaisante et chaleureuse.\",\r\n    \"plus\": [\r\n      \"Parfum élégant et raffiné.\",\r\n      \"Flacon en verre réutilisable.\",\r\n      \"Neutralise les mauvaises odeurs.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Garder hors de portée des enfants et des animaux domestiques.\"\r\n  }', 0.00),
(54, 'Air Frais Océan', 4.50, 'Évoquez la brise marine et les embruns d\'une côte sauvage avec le Parfum d\'Ambiance \"Air Frais Océan\". Ses notes fraîches d\'algues marines, de menthe et de sel de mer créent une atmosphère vivifiante et relaxante, parfaite pour purifier et rafraîchir votre intérieur.', 20, 'IN STOCK', 'img/air frais.png', 3, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Algues marines, menthe fraîche, sel de mer.\",\r\n    \"duree_diffusion\": \"15–30h selon la taille\",\r\n    \"materiaux\": \"Huiles essentielles naturelles, flacon en verre recyclable.\",\r\n    \"dimensions\": \"Petit : 6 cm / Moyen : 10 cm / Grand : 15 cm\",\r\n    \"utilisation\": \"Diffusez dans votre salon, salle de bain ou bureau pour une ambiance marine apaisante.\",\r\n    \"plus\": [\r\n      \"Neutralise les odeurs indésirables.\",\r\n      \"Formule sans alcool, respectueuse de l\'environnement.\",\r\n      \"Flacon design et réutilisable.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants et des animaux.\"\r\n  }', 0.00),
(55, 'Air Frais Pêche', 4.50, 'Apportez une touche fruitée et vivifiante à votre intérieur avec le Parfum d’Ambiance \"Air Frais Pêche\". Ses notes juteuses de pêche mûre, rehaussées d’une pointe de citron vert et de basilic frais, purifient l’air et créent une sensation de bien-être.', 20, 'IN STOCK', 'img/air frais.png', 3, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Pêche juteuse, citron vert, basilic frais.\",\r\n    \"duree_diffusion\": \"15–30h selon la taille\",\r\n    \"materiaux\": \"Huiles essentielles naturelles, flacon en verre recyclable.\",\r\n    \"dimensions\": \"Petit : 6 cm / Moyen : 10 cm / Grand : 15 cm\",\r\n    \"utilisation\": \"Diffusez dans votre salon, chambre ou bureau pour une ambiance fruitée et rafraîchissante.\",\r\n    \"plus\": [\r\n      \"Neutralise les mauvaises odeurs.\",\r\n      \"Formule sans alcool, respectueuse de l’environnement.\",\r\n      \"Flacon élégant et réutilisable.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants et des animaux.\"\r\n  }', 0.00),
(56, 'Air Frais Néroli', 4.60, 'Offrez à votre espace une douceur florale et apaisante avec le Parfum d\'Ambiance \"Air Frais Néroli\". Ses notes délicates de néroli, d\'oranger et de fleur d\'amandier créent une atmosphère légère et réconfortante, idéale pour une ambiance calme et sereine.', 20, 'IN STOCK', 'img/air frais.png', 3, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Néroli, oranger, fleur d\'amandier.\",\r\n    \"duree_diffusion\": \"15–30h selon la taille\",\r\n    \"materiaux\": \"Huiles essentielles naturelles, flacon en verre recyclable.\",\r\n    \"dimensions\": \"Petit : 6 cm / Moyen : 10 cm / Grand : 15 cm\",\r\n    \"utilisation\": \"Diffusez dans votre salon, chambre ou bureau pour une ambiance florale et apaisante.\",\r\n    \"plus\": [\r\n      \"Équilibre et rafraîchit l\'air.\",\r\n      \"Flacon en verre réutilisable.\",\r\n      \"Formule 100% naturelle, sans alcool.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants et des animaux.\"\r\n  }', 0.00),
(57, 'Air Frais Fleur de Coton', 4.50, 'Le Parfum d\'Ambiance \"Air Frais Fleur de Coton\" diffuse une senteur douce et délicate de coton frais, de lys blanc et de musc léger, pour une atmosphère pure et apaisante dans votre intérieur.', 20, 'IN STOCK', 'img/air frais.png', 3, 15.00, '{\r\n    \"taille\": [\"Petit\", \"Moyen\", \"Grand\"],\r\n    \"parfum\": \"Fleur de coton, lys blanc, musc léger.\",\r\n    \"duree_diffusion\": \"15–30h selon la taille\",\r\n    \"materiaux\": \"Huiles essentielles naturelles, flacon en verre recyclable.\",\r\n    \"dimensions\": \"Petit : 6 cm / Moyen : 10 cm / Grand : 15 cm\",\r\n    \"utilisation\": \"Diffusez dans toute pièce pour une ambiance douce et aérienne.\",\r\n    \"plus\": [\r\n      \"Neutralise efficacement les mauvaises odeurs.\",\r\n      \"Formule sans alcool, respectueuse de l’environnement.\",\r\n      \"Flacon élégant et réutilisable.\"\r\n    ],\r\n    \"precautions\": \"Ne pas ingérer. Éviter le contact avec les yeux. Tenir hors de portée des enfants et des animaux.\"\r\n  }', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_paiement`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_panier` (`id_panier`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`);

--
-- Indexes for table `panier_items`
--
ALTER TABLE `panier_items`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id_paiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panier_items`
--
ALTER TABLE `panier_items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`id_panier`) REFERENCES `panier` (`id_panier`);

--
-- Constraints for table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
