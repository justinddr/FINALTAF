-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 18 avr. 2021 à 07:51
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `taf`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFDD3168989D9B62` (`slug`),
  KEY `IDX_BFDD316867B3B43D` (`users_id`),
  KEY `IDX_BFDD3168A21214B7` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `slug`, `contenu`, `created_at`, `updated_at`, `users_id`, `categories_id`, `images`, `videos`) VALUES
(1, 'Comment rendre un étau mobile ?', 'comment-rendre-un-etau-mobile', '<h2>Pourquoi rendre un &eacute;tau mobile ?</h2>\r\n\r\n<p>Lorsque l&rsquo;on a la chance de pouvoir travailler avec un&nbsp;<a href=\"https://www.bricolage-facile.net/etau-d-etabli/\">&eacute;tau d&rsquo;&eacute;tabli</a>&nbsp;dans son atelier, on se rend vite compte qu&rsquo;il est encombrant et pas toujours plac&eacute; au bon endroit. Je vous propose donc au travers de cet article une astuce qui vous permettra de pouvoir d&eacute;placer votre &eacute;tau, tout en gardant un certain niveau de s&eacute;curit&eacute;.</p>\r\n\r\n<h3>La s&eacute;curit&eacute; avant tout !</h3>\r\n\r\n<p>Bien entendu, la s&eacute;curit&eacute; est primordiale, le risque le plus important concernant l&rsquo;&eacute;tau est de le voir basculer vers l&rsquo;avant, voir m&ecirc;me de tomber au sol, donc attention &agrave; vos pieds. Pour &eacute;viter cela, le top c&rsquo;est bien entendu de fixer l&rsquo;&eacute;tau sur l&rsquo;&eacute;tabli pour qu&rsquo;il soit stable quel que soit l&rsquo;ouverture de la m&acirc;choire. L&rsquo;astuce que je vous propose ici ne peut pas compl&egrave;tement supprimer le risque de basculement, il faut donc continuer de faire attention &agrave; la position de l&rsquo;&eacute;tau et &agrave; sa stabilit&eacute; &agrave; chaque fois que l&rsquo;on va le d&eacute;placer et l&rsquo;utiliser.</p>\r\n\r\n<h3>Le principe</h3>\r\n\r\n<p>Donc pour offrir plus de mobilit&eacute; &agrave; votre &eacute;tau et en m&ecirc;me temps lui conf&eacute;rer une certaine mobilit&eacute;, je vous propose de fixer l&rsquo;&eacute;tau sur un socle en bois, socle que l&rsquo;on va pouvoir ensuite maintenir sur un &eacute;tabli pour plus de s&eacute;curit&eacute;. Ensuite pour fixer l&rsquo;&eacute;tau &agrave; sa nouvelle place, il suffira de placer le placer, avec son socle sur l&rsquo;&eacute;tabli et de le serrer avec des&nbsp;<a href=\"https://www.bricolage-facile.net/serre-joints-automatiques/\">serre-joints</a>, pour maintenir le tout en position&hellip;</p>\r\n\r\n<h3>Le mat&eacute;riel n&eacute;cessaire pour fabriquer ce socle</h3>\r\n\r\n<p>Pour r&eacute;aliser un socle pour l&rsquo;&eacute;tau, il suffit d&rsquo;utiliser une planche de bois plus longue et large que l&rsquo;&eacute;tau et avec une &eacute;paisseur d&rsquo;au moins 30 mm, ainsi que de quelques quincailleries :</p>\r\n\r\n<ul>\r\n	<li>4 vis hexagonales de 8 mm de diam&egrave;tre et de 60 mm de long</li>\r\n	<li>4 &eacute;crous</li>\r\n	<li>8 rondelles</li>\r\n</ul>\r\n\r\n<p>Pour les outils, il vous faudra une&nbsp;<a href=\"https://www.bricolage-facile.net/comparatif-top-5-meilleures-perceuses-sans-fil-18v/\">perceuse</a>, un&nbsp;<a href=\"https://www.bricolage-facile.net/quel-foret-choisir/\">foret &agrave; bois</a>&nbsp;et une fraise &agrave; bois de 25 mm</p>\r\n\r\n<h2>Les &eacute;tapes de la r&eacute;alisation de ce socle</h2>\r\n\r\n<p>Voici les grandes &eacute;tapes pour fabriquer un socle pour l&rsquo;&eacute;tau :</p>\r\n\r\n<ol>\r\n	<li>La mesure</li>\r\n	<li>Le per&ccedil;age de la planche de bois</li>\r\n	<li>L&rsquo;assemblage</li>\r\n</ol>', '2021-04-16 18:50:04', '2021-04-16 18:50:04', 1, 1, '6079dc5c6d9ec609592726.jpg', '6079dc5c77492176783430.mp4'),
(2, 'Brochette de legumes', 'brochette-de-legumes', '<h2>1. Mouillez les b&acirc;tons</h2>\r\n\r\n<p>Vous utilisez des pics en bois pour composer vos brochettes? Faites-les tremper au pr&eacute;alable pendant un demi-heure dans l&rsquo;eau froide. Cela emp&ecirc;chera les brochettes de prendre feu.</p>\r\n\r\n<h2>2. Choisissez les bons ingr&eacute;dients</h2>\r\n\r\n<p>Partie pour des brochettes de poisson? Alors, prenez des poissons &agrave;&nbsp;<strong>chair ferme</strong>&nbsp;comme le saumon ou le cabillaud. Idem pour des brochettes de l&eacute;gumes; optez pour des chairs fermes vite grill&eacute;es, genre courgettes, oignons ou poivrons. En mati&egrave;re de fromage, le Halloumi (Chypres) est le ma&icirc;tre-achat pour &ecirc;tre piqu&eacute; en brochette. Si vous grillez des scampis, s&eacute;parez-les bien et piquez-les dans la longueur.</p>\r\n\r\n<h2>3. Coupez &agrave; bonne dimension</h2>\r\n\r\n<p>Taillez des morceaux de taille &eacute;gale, pour &eacute;viter d&rsquo;avoir des blocs trop cuits et d&rsquo;autres pas assez.</p>\r\n\r\n<h2>4. Doublez les pics</h2>\r\n\r\n<p>Utilisez deux pics par brochette. Non seulement, c&rsquo;est pratique pour les retourner mais cela permet aussi de mieux cuire tous les c&ocirc;t&eacute;s de mani&egrave;re &eacute;quilibr&eacute;e.</p>\r\n\r\n<h2>5. Avant de griller&hellip;</h2>\r\n\r\n<p>Enduisez les brochettes avec de l&rsquo;huile d&rsquo;olives ou de la marinade pour &eacute;viter qu&rsquo;elles ne collent &agrave; la grille. Pour une cuisson parfaite, comptez 12 &agrave; 15 minutes pour des brochettes de viande, 10 minutes pour des brochettes de poisson, 8 &agrave; 10 minutes pour des brochettes de l&eacute;gumes.</p>', '2021-04-16 19:44:05', '2021-04-16 19:44:05', 1, 2, '6079e905b960d922411331.jpg', '6079e905bb504938642338.mp4'),
(3, '10 astuces pour de belles tomates', '10-astuces-pour-de-belles-tomates', '<h2>1- Traitez les tomates plut&ocirc;t au bicarbonate</h2>\r\n\r\n<p>Au lieu de traiter pr&eacute;ventivement &agrave; la&nbsp;<a href=\"https://www.gammvert.fr/conseils/glossaire-jardinage/bouillie\">bouillie</a>&nbsp;bordelaise contre le mildiou d&eacute;vastateur, mieux vaut employer du bicarbonate de soude, &agrave; la m&ecirc;me dose et qui sera beaucoup plus efficace.</p>\r\n\r\n<h2>2- Arrosez les pieds de tomates avec pr&eacute;cision</h2>\r\n\r\n<p>Au lieu d&#39;arroser au jet, m&ecirc;me au pied, mieux vaut arroser au goulot ce qui provoque moins d&#39;&eacute;claboussures et &eacute;vite ainsi la propagation des spores de champignons agressifs (<a href=\"https://www.gammvert.fr/conseils/conseils-de-jardinage/mildiou\">mildiou</a>&nbsp;en particulier) sur le feuillage directement.</p>\r\n\r\n<h2>3- Apportez aux tomates le meilleur&nbsp;<a href=\"https://www.gammvert.fr/2-5030-produits-du-jardin/2-3022-nourrir-ses-plantes/3-685-engrais\" target=\"_self\" title=\"Engrais dans le catalogue\">engrais</a></h2>\r\n\r\n<p>Appliquez tous les quinze jours en arrosage autour des plantes une solution compos&eacute;e de 450 g de m&eacute;lasse pour 9 litres d&#39;eau &agrave; partir du moment o&ugrave; les premi&egrave;res fleurs s&#39;&eacute;panouissent. Ce&nbsp;<a href=\"https://www.gammvert.fr/conseils/glossaire-jardinage/fertiliser\">fertilisant</a>&nbsp;organique peu cher s&#39;est av&eacute;r&eacute; le plus efficace.</p>\r\n\r\n<h2>4- Paillez le sol au pied des tomates</h2>\r\n\r\n<p>En corollaire au conseil pr&eacute;c&eacute;dent,&nbsp;<a href=\"https://www.gammvert.fr/conseils/conseils-de-jardinage/paillage-pourquoi-et-comment-le-realiser\" target=\"_self\" title=\"Paillage : pourquoi et comment le réaliser ? \">paillez</a>&nbsp;le sol ce qui &eacute;vitera d&#39;autant les projections. Employez &eacute;ventuellement les&nbsp;<a href=\"https://www.gammvert.fr/conseils/conseils-de-jardinage/utiliser-les-tontes-de-gazon\" target=\"_self\" title=\"Utiliser les tontes de gazon\">tontes de gazon</a>, en petites quantit&eacute; &agrave; la fois car elles doivent s&eacute;cher entre deux applications.</p>', '2021-04-16 19:49:40', '2021-04-16 19:49:40', 1, 3, '6079ea5439118648421159.jpg', '6079ea543b0fd300644156.mp4'),
(4, 'Assassin\'s screed valhala', 'assassins-screed-valhala', '<p><strong>Soluce Assassin&#39;s Creed Valhalla</strong>&nbsp;: D&eacute;velopp&eacute; et &eacute;dit&eacute; par&nbsp;<strong>Ubisoft</strong>&nbsp;sur PC, PS4, PS5, Xbox One et Series X/S, Assassin&#39;s Creed Valhalla vous propose d&#39;incarner&nbsp;<strong>Eivor</strong>, un viking qui aura pour but de mener ses troupes contre le Roi Alfred le Grand. Ce combat se d&eacute;roulera au IX si&egrave;cle et prendra sa place dans les quatre royaumes anglo-saxons : Wessex, Northumbrie, Est-Anglie et Mercie.</p>\r\n\r\n<p>&Agrave;&nbsp;travers ce&nbsp;<strong>guide complet Assassin&#39;s Creed Valhalla</strong>, nous allons vous expliquer comment terminer l&#39;<strong>Histoire principale</strong>, les&nbsp;<strong>Missions secondaires</strong>&nbsp;ainsi que toutes les&nbsp;<strong>cons&eacute;quences de vos choix</strong>. De plus, nous vous guiderons au travers de cette Europe historique afin de vous d&eacute;voiler les emplacements de tous les&nbsp;<strong>Collectibles</strong>&nbsp;diss&eacute;min&eacute;s dans ce vaste monde ouvert.</p>\r\n\r\n<p>Lisez notre section &quot;<a href=\"https://www.supersoluce.com/soluce/assassin-s-creed-valhalla/choix-importants\"><strong>Choix importants</strong></a>&quot; pour conna&icirc;tre toutes les&nbsp;<strong>cons&eacute;quences des choix importants d&#39;Assassin&#39;s Creed Valhalla</strong>. Attention, cette partie contient de nombreux spoilers.</p>', '2021-04-16 19:55:18', '2021-04-16 19:55:18', 1, 4, '6079eba6f0f32202682464.jpg', '6079eba6f2c47721836473.mp4'),
(5, 'Faire du cardio', 'faire-du-cardio', '<p>Comment ne pas tomber dans le pi&egrave;ge de la&nbsp;<strong>prise de poids</strong>&nbsp;facile&nbsp;? Voici&nbsp;<strong>3 conseils forme et minceur pour garder la ligne</strong>&nbsp;toute l&rsquo;ann&eacute;e.</p>\r\n\r\n<p>Dans cet article, nous ne parlerons pas de r&eacute;gime&nbsp;! Voici plut&ocirc;t quelques&nbsp;<strong>conseils pratiques de sportive</strong>&nbsp;pour vous aider &agrave;&nbsp;<strong>stabiliser votre poids</strong>&nbsp;et&nbsp;<strong>avoir une belle silhouette</strong>.</p>\r\n\r\n<h2>1) FAIRE DU CARDIO, ABSOLUMENT&nbsp;!</h2>\r\n\r\n<p>Pour&nbsp;<strong>stabiliser votre poids</strong>, vous devez miser sur une activit&eacute; qui vous aidera &agrave; br&ucirc;ler des calories et diminuer votre masse graisseuse. Pour cela, les sports qui font travailler le cardio sont excellents. En voici quelques-uns&nbsp;:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>La corde &agrave; sauter&nbsp;: environ 725 kcal/h, &agrave; pratiquer 10 &agrave; 15 minutes, 4 fois par semaine</p>\r\n	</li>\r\n	<li>\r\n	<p>La marche sur tapis&nbsp;: environ 300 kcal/h, 20 minutes par jour.</p>\r\n	</li>\r\n	<li>\r\n	<p>La course sur tapis&nbsp;: environ 500 &agrave; 1000 kcal/h, 45 minutes, 2 fois par semaine</p>\r\n	</li>\r\n	<li>\r\n	<p>Le rameur&nbsp;: environ 625 kcal/h, 50 minutes, 2 fois par semaine</p>\r\n	</li>\r\n	<li>\r\n	<p>Le v&eacute;lo&nbsp;: environ 600 kcal/h, 90 minutes 2 fois par semaine ou 20 minutes par jour</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>La bonne astuce pour &eacute;liminer davantage&nbsp;et garder la ligne: l&rsquo;interval training</strong>. Ce type d&rsquo;entra&icirc;nement est id&eacute;al pour&nbsp;<strong>perdre du poids</strong>&nbsp;et maintenir votre masse musculaire. Il consiste &agrave; alterner des efforts &agrave; haute intensit&eacute; (effort inconfortable*) et des phases de r&eacute;cup&eacute;ration active, l&rsquo;id&eacute;e &eacute;tant de garder la m&ecirc;me intensit&eacute; tout au long de l&rsquo;exercice.</p>\r\n\r\n<p>Par exemple, sur une s&eacute;ance de course de 45 minutes sur tapis, faites 15 minutes d&rsquo;interval training en alternant 1 minute de course rapide et 30 secondes de r&eacute;cup&eacute;ration active. Les p&eacute;riodes intenses permettent d&rsquo;&eacute;liminer un maximum en peu de temps. Des &eacute;tudes men&eacute;es sur le sujet ont d&rsquo;ailleurs prouv&eacute; que ce type de travail permet de continuer &agrave; br&ucirc;ler des calories dans les 24 heures suivant l&rsquo;entra&icirc;nement gr&acirc;ce &agrave; une augmentation du m&eacute;tabolisme de base.</p>\r\n\r\n<h2>2) R&Eacute;AGIR AUX EXC&Egrave;S</h2>\r\n\r\n<p>Entre vos s&eacute;ances de&nbsp;<strong>fitness</strong>, vous pouvez bien (de temps &agrave; autre) vous accorder quelques repas g&eacute;n&eacute;reux. Mais attention, le sport ne compense pas la gourmandise&hellip; Apr&egrave;s avoir d&eacute;gust&eacute; un repas trop riche, plut&ocirc;t que de culpabiliser,&nbsp;r&eacute;agissez&nbsp;! Optez pour un&nbsp;<strong>repas d&eacute;tox pour mettre votre appareil digestif au repos</strong>&nbsp;et faciliter l&rsquo;&eacute;puration de l&rsquo;organisme&nbsp;:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>En entr&eacute;e&nbsp;: des crudit&eacute;s avec un jus de citron (sans huile) ou un bouillon de l&eacute;gumes.</p>\r\n	</li>\r\n	<li>\r\n	<p>En plat&nbsp;: un poisson maigre (cabillaud, sole, lieu, colin ou merlu, merlan&hellip;. 150 &agrave; 200g) ou 2 &oelig;ufs, servis avec des l&eacute;gumes cuits sans mati&egrave;res grasses ou une bonne soupe (oignon, cresson, carotte, c&eacute;leri&hellip; reconnus pour leur action diur&eacute;tique), qui vous permettra de faire le plein de vitamines et min&eacute;raux.</p>\r\n	</li>\r\n	<li>\r\n	<p>En dessert&nbsp;: un yaourt nature ou aux fruits &agrave; 0% MG.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3) BIEN MANGER APR&Egrave;S LE SPORT</h2>\r\n\r\n<p>Si vous faites du&nbsp;<strong>fitness</strong>&nbsp;occasionnellement ou r&eacute;guli&egrave;rement, n&rsquo;oubliez pas d&rsquo;&eacute;quilibrer vos repas apr&egrave;s un effort. Il serait dommage d&rsquo;an&eacute;antir les efforts r&eacute;alis&eacute;s. Pour&nbsp;<strong>stabiliser votre poids</strong>, pas question de manger n&rsquo;importe quoi&nbsp;! Vous devez adopter les&nbsp;<strong>bons r&eacute;flexes pour garder la ligne&nbsp;</strong>:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Boire beaucoup d&rsquo;eau pendant et apr&egrave;s l&rsquo;effort</strong>&nbsp;: cela est indispensable&nbsp;pour compenser les pertes hydriques et restituer une bonne circulation sanguine. Pour un&nbsp;bon drainage du corps,&nbsp;buvez au moins 2 L par jour. C&rsquo;est la meilleure solution pour &eacute;liminer les d&eacute;chets et les toxines de l&#39;organisme, d&eacute;sinfiltrer les tissus et lutter contre la r&eacute;tention d&#39;eau.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Choisir la bonne collation</strong>&nbsp;: pour bien faire, misez surtout sur les aliments qui contiennent des sucres rapides, utiles juste apr&egrave;s l&rsquo;effort&nbsp;: les bananes, les fruits secs, le miel, les barres de c&eacute;r&eacute;ales.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Opter pour un repas de r&eacute;cup&eacute;ration</strong>&nbsp;: pensez aux prot&eacute;ines&nbsp;! Elles sont essentielles pour une bonne r&eacute;paration musculaire. Si vous vous entra&icirc;nez le matin, privil&eacute;giez les &oelig;ufs et le pain complet apr&egrave;s votre s&eacute;ance. Le midi ou le soir choisissez&nbsp;le saumon, riche en prot&eacute;ines&nbsp;et en om&eacute;ga-3 (bons pour le c&oelig;ur). Accompagnez-le de riz brun et de l&eacute;gumes vapeur pour fournir &agrave; votre corps des glucides sains et des vitamines B, qui aident &agrave; produire de l&rsquo;&eacute;nergie.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Vous poss&eacute;dez d&eacute;sormais quelques&nbsp;<strong>astuces faciles pour garder la ligne</strong>. Et vous, quels sont vos bons plans pour&nbsp;<strong>rester mince</strong>&nbsp;et&nbsp;<strong>avoir une belle silhouette</strong>&nbsp;?</p>\r\n\r\n<p>* effort inconfortable&nbsp;: tenir une conversation devient difficile, quelques mots seulement sont possibles, vous ressentez des douleurs musculaires progressives au fil des r&eacute;p&eacute;titions, respiration par le nez n&rsquo;est plus suffisante (on ouvre la bouche).</p>', '2021-04-16 19:59:29', '2021-04-16 19:59:29', 1, 5, '6079eca16ee9d878697397.jpg', '6079eca170e2b693912104.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `articles_mots_cles`
--

DROP TABLE IF EXISTS `articles_mots_cles`;
CREATE TABLE IF NOT EXISTS `articles_mots_cles` (
  `articles_id` int(11) NOT NULL,
  `mots_cles_id` int(11) NOT NULL,
  PRIMARY KEY (`articles_id`,`mots_cles_id`),
  KEY `IDX_2927AB461EBAF6CC` (`articles_id`),
  KEY `IDX_2927AB46C0BE80DB` (`mots_cles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3AF34668989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `slug`) VALUES
(1, 'Bricolage', 'bricolage'),
(2, 'Cuisine', 'cuisine'),
(3, 'Jardinage', 'jardinage'),
(4, 'Jeux vidéos', 'jeux-videos'),
(5, 'Sport', 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rgpd` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `articles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9BEC0C41EBAF6CC` (`articles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('DoctrineMigrations\\Version20210413083250', '2021-04-13 08:35:42', 729),
('DoctrineMigrations\\Version20210413085336', '2021-04-13 08:54:43', 433),
('DoctrineMigrations\\Version20210413090209', '2021-04-13 09:02:59', 894),
('DoctrineMigrations\\Version20210413091148', '2021-04-13 09:12:11', 495),
('DoctrineMigrations\\Version20210413092314', '2021-04-13 09:23:21', 1599),
('DoctrineMigrations\\Version20210413092840', '2021-04-13 09:28:47', 1698),
('DoctrineMigrations\\Version20210413094020', '2021-04-13 09:40:31', 3784),
('DoctrineMigrations\\Version20210414151851', '2021-04-14 15:21:03', 4337);

-- --------------------------------------------------------

--
-- Structure de la table `mots_cles`
--

DROP TABLE IF EXISTS `mots_cles`;
CREATE TABLE IF NOT EXISTS `mots_cles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mot_cle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D4E4C6CA989D9B62` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`) VALUES
(1, 'jmvogo843@yahoo.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cUhTaGw1bVZvRDYvMzZFNg$fkmrebQoqALo8yan4/Bi/H6XoaoR+wa8bEJX2Sa3YvQ');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316867B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_BFDD3168A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `articles_mots_cles`
--
ALTER TABLE `articles_mots_cles`
  ADD CONSTRAINT `FK_2927AB461EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2927AB46C0BE80DB` FOREIGN KEY (`mots_cles_id`) REFERENCES `mots_cles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C41EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
