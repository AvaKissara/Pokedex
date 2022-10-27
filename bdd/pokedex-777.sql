-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 22 août 2022 à 20:17
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `attaque`
--

CREATE TABLE `attaque` (
  `id_attaque` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `stat_pp` int(11) NOT NULL,
  `stat_puissance` int(11) DEFAULT NULL,
  `stat_precision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attaque`
--

INSERT INTO `attaque` (`id_attaque`, `libelle`, `type_id`, `stat_pp`, `stat_puissance`, `stat_precision`) VALUES
(1, 'Abîme', 13, 5, NULL, 30),
(2, 'Acid\'armure', 10, 40, NULL, 100),
(3, 'Acide', 10, 30, 40, 100),
(4, 'Adaptation', 8, 40, NULL, 100),
(5, 'Affûtage', 8, 30, NULL, 100),
(6, 'Amnésie', 11, 20, NULL, 100),
(7, 'Armure', 8, 30, NULL, 100),
(8, 'Balayage', 1, 20, 50, 90),
(9, 'Bec Vrille', 15, 20, 80, 100),
(10, 'Bélier', 8, 20, 90, 85),
(11, 'Berceuse', 8, 15, NULL, 55),
(12, 'Blizzard', 6, 5, 120, 90),
(13, 'Bomb\'oeuf', 8, 10, 100, 75),
(14, 'Bouclier', 11, 30, NULL, 100),
(15, 'Boul\'armure', 8, 20, NULL, 100),
(16, 'Brouillard', 8, 20, NULL, 100),
(17, 'Brume', 6, 30, NULL, 100),
(18, 'Buée noire', 6, 30, NULL, 100),
(19, 'Bulles d\'O', 3, 20, 65, 100),
(20, 'Cage éclair', 4, 20, NULL, 100),
(21, 'Cascade', 3, 15, 80, 100),
(22, 'Charge', 8, 35, 35, 85),
(23, 'Choc mental', 11, 25, 50, 100),
(24, 'Claquoir', 3, 10, 35, 75),
(25, 'Clonage', 8, 10, NULL, 100),
(26, 'Combo-griffes', 8, 15, 20, 80),
(27, 'Constriction', 8, 35, 10, 100),
(28, 'Copie', 8, 10, NULL, 100),
(29, 'Coud\'boule', 8, 15, 70, 100),
(30, 'Coud\'krâne', 8, 15, 100, 100),
(31, 'Coupe', 8, 30, 50, 95),
(32, 'Coupe-vent', 8, 10, 80, 75),
(33, 'Croc de mort', 8, 15, 80, 70),
(34, 'Croc fatal', 8, 10, NULL, 90),
(35, 'Croissance', 8, 40, NULL, 100),
(36, 'Cru-aile', 15, 35, 35, 100),
(37, 'Cyclone', 8, 20, NULL, 85),
(38, 'Damoclès', 8, 15, 15, 100),
(39, 'Danse-Flamme', 5, 15, 15, 70),
(40, 'Danse-Fleur', 9, 20, 70, 100),
(41, 'Danse-Lames', 8, 30, NULL, 100),
(42, 'Dard-Nuée', 7, 20, 14, 85),
(43, 'Dard-Venin', 10, 35, 15, 100),
(44, 'Déflagration', 5, 5, 120, 85),
(45, 'Destruction', 8, 5, 260, 100),
(46, 'Détitrus', 10, 20, 65, 100),
(47, 'Dévorêve', 11, 15, 100, 100),
(48, 'Double-Dard', 7, 20, 25, 100),
(49, 'Double-Pied', 1, 30, 30, 100),
(50, 'Draco-Rage', 2, 10, 40, 100),
(51, 'Eboulement', 12, 10, 80, 90),
(52, 'Eclair', 4, 30, 40, 100),
(53, 'E-Coque', 8, 10, NULL, 100),
(54, 'Ecrasement', 8, 20, 65, 100),
(55, 'Ecras\'face', 8, 35, 40, 100),
(56, 'Ecume', 3, 30, 20, 100),
(57, 'Empal\'korne', 8, 5, NULL, 30),
(58, 'Entrave', 8, 20, NULL, 55),
(59, 'Etreinte', 8, 20, 15, 75),
(60, 'Explosion', 8, 5, 340, 100),
(61, 'Fatale-Foudre', 4, 10, 120, 70),
(62, 'Flammèches', 5, 25, 40, 100),
(63, 'Flash', 8, 20, NULL, 70),
(64, 'Force', 8, 15, 80, 100),
(65, 'Force-Poigne', 8, 30, 55, 100),
(66, 'Fouet Lianes', 9, 10, 35, 100),
(67, 'Frappe-Atlas', 1, 20, 0, 100),
(68, 'Frénésie', 8, 20, 20, 100),
(69, 'Furie', 8, 20, 15, 85),
(70, 'Gaz Toxik', 10, 40, NULL, 55),
(71, 'Griffe', 8, 35, 40, 100),
(72, 'Grincement', 8, 40, NULL, 85),
(73, 'Grobisou', 8, 10, NULL, 75),
(74, 'Gros\'yeux', 8, 30, NULL, 100),
(75, 'Guillotine', 8, 5, NULL, 30),
(76, 'Hâte', 11, 30, NULL, 100),
(77, 'Hurlement', 8, 20, NULL, 100),
(78, 'Hydrocanon', 3, 5, 120, 80),
(79, 'Hypnose', 11, 20, NULL, 60),
(80, 'Intimidation', 8, 30, NULL, 75),
(81, 'Jackpot', 8, 20, 40, 100),
(82, 'Jet de sable', 8, 15, NULL, 100),
(83, 'Jet de pierres', 12, 15, 50, 75),
(84, 'Koud\'korne', 8, 25, 65, 100),
(85, 'Lance-Flamme', 5, 15, 95, 100),
(86, 'Lance-Soleil', 9, 10, 120, 100),
(87, 'Laser-Glace', 6, 10, 95, 100),
(88, 'Léchouille', 14, 30, 20, 100),
(89, 'Ligotage', 8, 20, 15, 85),
(90, 'Liliput', 8, 20, NULL, 100),
(91, 'Lutte', 8, 1, 100, 100),
(92, 'Mania', 8, 20, 90, 100),
(93, 'Massd\'os', 13, 20, 65, 85),
(94, 'Mawashi Geri', 1, 15, 60, 80),
(95, 'Mega-Sangsue', 9, 10, 40, 100),
(96, 'Météores', 8, 20, 60, 100),
(97, 'Métronome', 8, 10, NULL, 100),
(98, 'Mimique', 15, 20, NULL, 100),
(99, 'Mimi-Queue', 8, 30, NULL, 100),
(100, 'Morphing', 8, 10, NULL, 100),
(101, 'Morsure', 8, 25, 60, 100),
(102, 'Mur Lumière', 11, 30, NULL, 100),
(103, 'Onde Boréale', 6, 20, 65, 100),
(104, 'Onde Folie', 14, 10, NULL, 100),
(105, 'Osmerang', 13, 10, 50, 90),
(106, 'Paraspore', 9, 30, NULL, 75),
(107, 'Patience', 8, 10, NULL, 100),
(108, 'Picanon', 8, 15, 20, 100),
(109, 'Picpic', 15, 35, 35, 100),
(110, 'Pied Sauté', 1, 25, 70, 95),
(111, 'Pied Voltige', 1, 20, 85, 90),
(112, 'Pilonnage', 8, 20, 15, 85),
(113, 'Pince-Masse', 3, 10, 90, 85),
(114, 'Piqué', 15, 5, 140, 90),
(115, 'Pistolet à O', 3, 20, 40, 100),
(116, 'Plaquage', 8, 15, 85, 100),
(117, 'Poing Comète', 8, 15, 18, 85),
(118, 'Poing de Feu', 5, 15, 75, 100),
(119, 'Poing Karaté', 1, 25, 50, 100),
(120, 'Poing Eclair', 4, 15, 75, 100),
(121, 'Poing Glace', 6, 15, 75, 100),
(122, 'Poudre Dodo', 9, 15, NULL, 75),
(123, 'Poudre Toxik', 10, 35, NULL, 75),
(124, 'Protection', 11, 20, NULL, 100),
(125, 'Psyko', 11, 10, 90, 100),
(126, 'Puissance', 8, 30, NULL, 100),
(127, 'Purédpois', 10, 20, 20, 70),
(128, 'Rafale Psy', 11, 20, 65, 100),
(129, 'Reflet', 8, 15, NULL, 100),
(130, 'Repli', 3, 40, NULL, 100),
(131, 'Repos', 11, 10, NULL, 100),
(132, 'Riposte', 1, 20, NULL, 100),
(133, 'Rugissement', 8, 10, NULL, 100),
(134, 'Sacrifice', 1, 25, 80, 80),
(135, 'Sécrétion', 7, 40, NULL, 95),
(136, 'Séisme', 13, 10, 100, 100),
(137, 'Soin', 8, 10, NULL, 100),
(138, 'Sonicboom', 8, 20, 20, 100),
(139, 'Souplesse', 8, 20, 80, 75),
(140, 'Spore', 9, 15, NULL, 100),
(141, 'Surf', 3, 15, 95, 100),
(142, 'Télékinésie', 11, 15, NULL, 75),
(143, 'Téléport', 11, 20, NULL, 100),
(144, 'Ténèbres', 14, 15, 0, 100),
(145, 'Tonnerre', 4, 15, 95, 100),
(146, 'Torgnoles', 8, 10, 15, 85),
(147, 'Tornade', 15, 35, 40, 100),
(148, 'Toxik', 10, 10, NULL, 85),
(149, 'Tranche', 8, 20, 70, 100),
(150, 'Tranch\'herbe', 9, 25, 55, 95),
(151, 'Trempette', 3, 40, NULL, 100),
(152, 'Triplattaque', 8, 10, 80, 100),
(153, 'Tunnel', 13, 10, 100, 100),
(154, 'Ultimapoing', 8, 20, 80, 85),
(155, 'Ultimawashi', 8, 5, 120, 75),
(156, 'Ultralaser', 8, 5, 120, 90),
(157, 'Ultrason', 8, 20, NULL, 55),
(158, 'Uppercut', 8, 10, 70, 100),
(159, 'Vague Psy', 11, 15, NULL, 80),
(160, 'Vampigraine', 9, 10, NULL, 90),
(161, 'Vampirisme', 7, 15, 20, 100),
(162, 'Vive Attaque', 8, 30, 40, 100),
(163, 'Vol', 15, 15, 70, 95),
(164, 'Vol-vie', 9, 20, 20, 100),
(165, 'Yoga', 11, 40, NULL, 100);

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

CREATE TABLE `caracteristique` (
  `id_pok` int(11) NOT NULL,
  `type_1` int(11) NOT NULL,
  `type_2` int(11) NOT NULL,
  `image` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `caracteristique`
--

INSERT INTO `caracteristique` (`id_pok`, `type_1`, `type_2`, `image`, `description`) VALUES
(1, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', 'Il y a une graine sur son dos depuis sa naissance. Elle grossit un peu chaque jour.'),
(2, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png', 'Son bulbe dorsal est devenu si gros qu\'il ne peut plus se tenir sur ses pattes postérieures.'),
(3, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png', 'Sa plante donne une grosse fleur quand elle absorbe les rayons du soleil. Il est toujours à la recherche des endroits les plus ensoleillés.'),
(4, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 'Il préfère ce qui est chaud. En cas de pluie, de la vapeur se forme autour de sa queue.'),
(5, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png', 'Il est très brutal. En combat, il se sert de ses griffes acérées et de sa queue enflammée pour mettre en pièces ses adversaires.'),
(6, 5, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 'Son souffle brûlant peut faire fondre la roche. Il est parfois la cause d\'incendies de forêt.'),
(7, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', 'Quand il rentre son cou dans sa carapace, il peut projeter de l\'eau à haute pression.'),
(8, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png', 'Il est considéré comme un symbole de longévité. On reconnaît les spécimens les plus âgés à la mousse qui pousse sur leur carapace.'),
(9, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 'Il écrase ses adversaires de tout son poids pour leur faire perdre connaissance. Il rentre dans sa carapace s\'il se sent en danger.'),
(10, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png', 'Pour se protéger, il émet par ses antennes une odeur nauséabonde qui fait fuir ses ennemis.'),
(11, 7, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png', 'En attendant sa prochaine évolution, il ne peut que durcir sa carapace et rester immobile pour éviter de se faire attaquer.'),
(12, 7, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png', 'En combat, il bat des ailes très rapidement pour projeter de la poudre toxique sur ses ennemis.'),
(13, 7, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/013.png', 'L\'aiguillon sur son front est très pointu. Il se cache dans les bois et les hautes herbes, où il se gave de feuilles.'),
(14, 7, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/014.png', 'Il peut à peine bouger. Quand il est menacé, il sort parfois son aiguillon pour empoisonner ses ennemis.'),
(15, 7, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png', 'Il se sert de ses trois aiguillons empoisonnés situés sur les pattes avant et l\'abdomen pour attaquer sans relâche ses adversaires.'),
(16, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/016.png', 'De nature très docile, il préfère projeter du sable pour se défendre plutôt que contre-attaquer.'),
(17, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/017.png', 'Ce Pokémon est très endurant. Il survole en permanence son territoire pour chasser.'),
(18, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/018.png', 'Ce Pokémon vole à Mach 2 quand il chasse. Ses grandes serres sont des armes redoutables.'),
(19, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/019.png', 'Il peut ronger n\'importe quoi avec ses deux dents. Quand on en voit un, il y en a certainement 40 dans le coin.'),
(20, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/020.png', 'Ses pattes arrière sont palmées. Il peut donc poursuivre sa proie dans les cours d\'eau et les rivières.'),
(21, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/021.png', 'Il est incapable de voler à haute altitude. Il se déplace très vite pour protéger son territoire.'),
(22, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/022.png', 'Un Pokémon très ancien. S\'il perçoit un danger, il fuit instantanément à haute altitude.'),
(23, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/023.png', 'Plus il est âgé, plus son corps est long. La nuit, il s\'enroule autour de branches d\'arbres pour se reposer.'),
(24, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/024.png', 'Des études ont révélé que les marques effrayantes de son corps pouvaient former six motifs différents.'),
(25, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 'Plus la puissance électrique de Pikachu est élevée, plus les poches de ses joues sont extensibles.'),
(26, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png', 'Sa longue queue agit comme une prise de terre qui l\'empêche d\'être affecté par le courant à haute tension accumulé dans son corps.'),
(27, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/027.png', 'Il aime se rouler dans le sable des zones désertiques pour se débarrasser des traces de terre et d\'humidité qui lui collent à la peau.'),
(28, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/028.png', 'Plus son habitat est sec, plus ses épines dorsales deviennent dures et lisses.'),
(29, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/029.png', 'Son odorat est plus développé que celui du mâle. Quand Nidoran♀ cherche à manger, il reste dans le sens du vent, qu\'il détecte avec ses vibrisses.'),
(30, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/030.png', 'On pense que sa corne frontale s\'est atrophiée pour lui permettre de nourrir ses petits sans les blesser.'),
(31, 10, 13, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/031.png', 'Il est plus doué pour se défendre que pour attaquer. Grâce à son blindage d\'écailles, il protège ses petits de toute agression.'),
(32, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png', 'Sa corne frontale contient un puissant poison. Les grandes oreilles de ce Pokémon très prudent sont constamment dressées.'),
(33, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/033.png', 'Il erre à la recherche d\'une Pierre Lune, brisant tous les rochers sur son passage avec sa corne plus solide qu\'un diamant.'),
(34, 10, 13, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/034.png', 'Lorsqu\'il s\'énerve, il devient incontrôlable, mais il retrouve son calme face à Nidoqueen, sa compagne de longue date.'),
(35, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png', 'On dit que ceux qui voient danser un groupe de Mélofée sous la pleine lune connaîtront un grand bonheur.'),
(36, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/036.png', 'Ce Pokémon s\'apparente à une petite fée qui n\'apparaît que rarement devant les humains. Il court se cacher dès qu\'il ressent une présence.'),
(37, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/037.png', 'Quand il est jeune, ce Pokémon a six queues magnifiques. De nouvelles queues apparaissent tout au long de sa croissance.'),
(38, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/038.png', 'On dit qu\'il vit 1 000 ans et que chacune de ses queues a un pouvoir magique'),
(39, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png', 'Il a une des meilleures capacités pulmonaires parmi les Pokémon. Il chante des berceuses à son adversaire jusqu\'à ce que sommeil s\'ensuive.'),
(40, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/040.png', 'Son corps gonfle à mesure qu\'il inspire de l\'air. Il se sert de cette particularité pour se grandir et intimider son adversaire quand il est en colère.'),
(41, 10, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/041.png', 'Il sonde les environs en émettant des ultrasons avec sa bouche, et peut ainsi se frayer un chemin même dans les grottes les plus étroites.'),
(42, 10, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/042.png', 'Le sang des êtres vivants est son péché mignon. On dit qu\'il partage parfois ce précieux breuvage avec ses congénères affamés.'),
(43, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png', 'Il ne bouge que lorsqu\'il est exposé aux rayons de la lune. Il se déplace alors pour disséminer ses graines.'),
(44, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/044.png', 'Ses pistils sécrètent une odeur incroyablement fétide qui fait perdre connaissance à ses adversaires jusqu\'à 2 km à la ronde.'),
(45, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/045.png', 'Il possède les plus gros pétales au monde, qui sèment d\'épais nuages de pollen toxique à chacun de ses pas.'),
(46, 7, 9, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/046.png', 'Il s\'enfouit pour ronger des racines, mais ce sont les champignons sur son dos qui absorbent presque tous les nutriments.'),
(47, 7, 9, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/047.png', 'À force de voir son énergie aspirée, il semblerait que ce ne soit plus l\'insecte qui réfléchisse, mais le champignon sur son dos.'),
(48, 7, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/048.png', 'Ses grands yeux lui servent de radar. En pleine lumière, on peut y distinguer des facettes.'),
(49, 7, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/049.png', 'Les écailles de ses ailes sont presque impossibles à retirer lorsqu\'elles se collent à la peau, et elles libèrent un poison violent au contact.'),
(50, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/050.png', 'Si un Taupiqueur creuse un tunnel sous un champ, il retourne la terre et améliore les récoltes.'),
(51, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/051.png', 'Ces triplés forment une équipe de choc. Ils causent parfois des séismes lorsqu\'ils creusent jusqu\'à 100 km de profondeur.'),
(52, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png', 'Il aime rassembler des objets brillants. S\'il est de bonne humeur, il montre sa collection à son Dresseur.'),
(53, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/053.png', 'Très fier, il est difficile à apprivoiser. Dès que quelque chose ne lui plaît pas, il sort les griffes.'),
(54, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/054.png', 'Il a toujours la migraine, mais la douleur semble s\'atténuer momentanément s\'il laisse exploser son pouvoir mystérieux.'),
(55, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/055.png', 'Vivant dans les rivières au cours tranquille, il se sert de ses longs membres pour nager avec élégance.'),
(56, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/056.png', 'Agile et rapide, ce Pokémon vit dans les arbres. Il s\'énerve facilement et s\'attaque à tout ce qui bouge quand il est en colère.'),
(57, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/057.png', 'Sa fureur prend fin quand il n\'a plus personne à frapper. Il est difficile d\'en être témoin.'),
(58, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png', 'Il est courageux et fiable. Il se dresse vaillamment devant ses ennemis même s\'ils sont plus puissants.'),
(59, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png', 'De nombreuses personnes ont été charmées à la vue de ce Pokémon parcourant 10 000 km en 24 heures.'),
(60, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/060.png', 'Il est plus à l\'aise dans l\'eau que sur la terre ferme. Le motif de spirale sur son ventre est en fait une partie de ses organes visibles à travers la peau.'),
(61, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/061.png', 'Il suffit de fixer la spirale sur son ventre pour s\'assoupir. On se sert parfois de lui à la place d\'une berceuse pour endormir les enfants.'),
(62, 3, 1, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/062.png', 'Cette véritable montagne de muscles peut se frayer un chemin même dans les eaux glaciales en éclatant la banquise avec ses bras robustes.'),
(63, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/063.png', 'Le contenu de ses rêves influe sur les pouvoirs psychiques qu\'il utilise dans son sommeil.'),
(64, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/064.png', 'Ses pouvoirs psychiques lui permettent de léviter en dormant. Il utilise alors sa queue très souple comme un oreiller.'),
(65, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/065.png', 'Doué d\'une intelligence hors du commun, ce Pokémon serait capable de conserver tous ses souvenirs, de sa naissance jusqu\'à sa mort.'),
(66, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/066.png', 'Son corps est essentiellement composé de muscles. Même s\'il fait la taille d\'un petit enfant, il peut soulever 100 adultes avec ses bras.'),
(67, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/067.png', 'Son corps est si puissant qu\'il lui faut une ceinture pour maîtriser sa force.'),
(68, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/068.png', 'Il peut bouger ses quatre bras à grande vitesse et frapper du poing ou du tranchant de la main dans toutes les directions sans se fatiguer.'),
(69, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/069.png', 'Il préfère les endroits chauds et humides. Il capture les Pokémon Insecte avec ses lianes pour les dévorer.'),
(70, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/070.png', 'Quand il a faim, il avale tout ce qui bouge, puis achève ses proies avec de l\'acide.'),
(71, 9, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/071.png', 'Il attire ses proies avec une odeur de miel et les avale tout entières. Il les digère en un jour seulement, les os y compris.'),
(72, 3, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/072.png', 'Peu doué pour la natation, ce Pokémon se contente de flotter à la surface des eaux peu profondes pour chasser ses proies.'),
(73, 3, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/073.png', 'Il faut faire attention lorsque les globes rouges sur sa tête se mettent à briller intensément, car c\'est qu\'il s\'apprête à émettre des ultrasons.'),
(74, 3, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/074.png', 'On en trouve près des sentiers de montagne. Si vous marchez dessus par inadvertance, ils s\'énervent et attaquent.'),
(75, 12, 13, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/075.png', 'Il dévale les sentiers de montagne et traverse les obstacles en les pulvérisant.'),
(76, 12, 13, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/076.png', 'Juste après la mue, son corps est blanc et tendre. Au contact de l\'air, sa peau se solidifie et forme une armure.'),
(77, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/077.png', 'À la naissance, il ne court pas très vite. C\'est en faisant la course avec ses camarades qu\'il se muscle les jambes.'),
(78, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/078.png', 'Ce Pokémon traverse les plaines à plus de 240 km/h, sa crinière flamboyante flottant au vent.'),
(79, 3, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/079.png', 'Il est si bête et si lent qu\'il n\'a pas mal lorsqu\'on mange un morceau de sa queue. Il ne remarque même pas quand elle repousse.'),
(80, 3, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/080.png', 'Il a évolué après qu\'un Kokiyas lui a mordu la queue. Celle-ci sécrète une substance sucrée qui enchante particulièrement les Kokiyas.'),
(81, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/081.png', 'Il lui arrive d\'être à court d\'électricité et de tomber au sol, mais il suffit de lui donner une batterie pour le ranimer.'),
(82, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/082.png', 'La fusion de trois Magnéti a donné naissance à ce Pokémon. Il surveille les alentours en libérant de puissantes ondes électriques.'),
(83, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/083.png', 'Il tranche ses adversaires avec sa tige, qu\'il manie comme une épée. Quand la situation l\'exige, il s\'en nourrit.'),
(84, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/084.png', 'Ses petites ailes ne lui permettent pas de voler, mais grâce à ses puissantes pattes, il peut courir très rapidement.'),
(85, 8, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/085.png', 'Quand une des têtes de Doduo se divise, il devient un Dodrio capable de courir à 60 km/h.'),
(86, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/086.png', 'Il est à l\'aise dans les endroits gelés. Il nage avec plaisir dans de l\'eau à -10 ºC.'),
(87, 3, 6, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/087.png', 'Son corps entier est aussi blanc que la neige. Il résiste bien au froid et peut même nager au milieu des icebergs.'),
(88, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/088.png', 'Ce tas de fange sent si mauvais qu\'il est impossible de le toucher. Plus rien ne pousse dans son sillage putride.'),
(89, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/089.png', 'Son odeur immonde provoque des évanouissements. Son odorat s\'est atrophié à cause de sa propre puanteur.'),
(90, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/090.png', 'Il nage vers l\'arrière à grande vitesse en ouvrant puis refermant sa coquille.'),
(91, 3, 6, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/091.png', 'Sa coquille est tellement résistante que rien ne peut la détruire, pas même une déflagration. Il ne l\'ouvre que lorsqu\'il attaque.'),
(92, 14, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/092.png', 'Le corps de ce Pokémon s\'est formé à partir de gaz si toxiques qu\'ils pourraient faire perdre connaissance à n\'importe qui.'),
(93, 14, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/093.png', 'On raconte que quiconque est léché par sa langue faite de gaz est pris de tremblements jusqu\'à ce que mort s\'ensuive.'),
(94, 14, 10, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png', 'Un soir de pleine lune, si une ombre se met à bouger et éclate de rire, c\'est sûrement l\'œuvre d\'un Ectoplasma.'),
(95, 12, 13, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/095.png', 'Il absorbe des éléments solides en creusant le sol, ce qui le rend plus robuste.'),
(96, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/096.png', 'Si vous dormez tout le temps près de lui, il partagera parfois avec vous les rêves qu\'il a dévorés par le passé.'),
(97, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/097.png', 'Évitez son regard quand vous en croisez un, ou il pourrait essayer de vous hypnotiser avec son pendule.'),
(98, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/098.png', 'On trouve ce Pokémon près de la mer. Ses grosses pinces peuvent repousser si elles sont arrachées.'),
(99, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/099.png', 'Sa grosse pince est dotée d\'une puissance incommensurable. Sa taille imposante la rend toutefois difficile à utiliser.'),
(100, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/100.png', 'On dit qu\'il se déguise en Poké Ball. Il s\'autodétruit à la moindre stimulation.'),
(101, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/101.png', 'Il stocke de l\'énergie électrique dans son corps, ce qui le rend instable et explosif.'),
(102, 9, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/102.png', 'Même s\'il ressemble à un tas d\'œufs, il s\'agit bien d\'un Pokémon. Il paraît qu\'ils communiquent entre eux par télépathie.'),
(103, 9, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/103.png', 'Chacune de ses trois têtes pense de manière autonome. Elles ne semblent s\'intéresser qu\'à elles-mêmes.'),
(104, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/104.png', 'Il s\'est endurci et a évolué depuis qu\'il a réussi à surmonter sa peine. Il utilise son os en guise d\'arme et affronte ses ennemis avec bravoure.'),
(105, 13, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/105.png', 'Il possède un fantastique sens de l\'équilibre, et peut donner des rafales de coups de pied dans toutes les positions.'),
(106, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/106.png', 'Il possède un fantastique sens de l\'équilibre, et peut donner des rafales de coups de pied dans toutes les positions.'),
(107, 1, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/107.png', 'Ses poings fendent l\'air. Ils sont si rapides qu\'un simple frôlement peut causer une brûlure.'),
(108, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/108.png', 'Si sa salive gluante entre en contact avec la peau et qu\'on ne l\'essuie pas bien, elle provoque de terribles démangeaisons qui ne s\'arrêtent jamais.'),
(109, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/109.png', 'Son corps est gonflé de gaz toxique. Il se rend dans les décharges, attiré par l\'odeur des déchets alimentaires en décomposition.'),
(110, 10, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/110.png', 'Il mélange des gaz dans ses deux corps. On raconte qu\'autrefois, on en voyait partout dans la région de Galar.'),
(111, 13, 12, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/111.png', 'Costaud, mais pas très intelligent, ce Pokémon est capable de détruire un immeuble entier en fonçant dessus.'),
(112, 13, 12, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/112.png', 'L\'évolution a permis à ce Pokémon de marcher sur ses pattes postérieures. Il peut faire des trous dans les rochers en utilisant sa corne.'),
(113, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/113.png', 'Ses œufs sont si délicieux et nutritifs qu\'on les considère comme des ingrédients de luxe.'),
(114, 9, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/114.png', 'On ne sait toujours pas ce qui se cache sous ses lianes. Même si on les coupe, elles repoussent à l\'infini.'),
(115, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/115.png', 'Porter son petit dans sa poche ventrale ne l\'empêche pas d\'avoir un bon jeu de jambes. Ses coups rapides intimident ses ennemis.'),
(116, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/116.png', 'Il vit dans les mers calmes. Quand on l\'attaque, il crache de l\'encre noire et profite de la diversion pour s\'enfuir.'),
(117, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/117.png', 'Les mâles s\'occupent des petits, et tant qu\'ils en ont à élever, le venin contenu dans leurs épines dorsales devient beaucoup plus fort.'),
(118, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/118.png', 'Ses nageoires dorsales, pectorales et caudales ondulent avec élégance. Il est surnommé le « danseur des flots ».'),
(119, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/119.png', 'En automne, à la saison des amours, il fait des réserves de graisse et arbore des couleurs chatoyantes.'),
(120, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/120.png', 'Lorsqu\'on se rend en bord de mer à la fin de l\'été, on peut voir des groupes de Stari clignoter à un rythme régulier.'),
(121, 3, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/121.png', 'S\'il déchaîne son pouvoir psychique puissant, son organe appelé « cœur » se met à briller de sept couleurs.'),
(122, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/122.png', 'De nombreux savants pensent que ses mains se sont développées pour faire de la pantomime.'),
(123, 7, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/123.png', 'Ses faux deviennent plus aiguisées à mesure qu\'il se bat. Il peut trancher un grand arbre d\'un seul coup.'),
(124, 6, 11, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/124.png', 'Dans une certaine zone de Galar, Lippoutou était craint et vénéré par la population qui l\'avait surnommé la « reine des glaces ».'),
(125, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/125.png', 'De nombreuses centrales électriques gardent des Pokémon Sol à proximité afin d\'empêcher les Élektek de leur voler de l\'électricité.'),
(126, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/126.png', 'Il achève ses proies avec ses flammes, mais il lui arrive de les calciner accidentellement, à son plus grand regret.'),
(127, 7, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/127.png', 'Ses cornes déterminent son rang au sein du groupe. Plus elles sont imposantes, plus les membres du sexe opposé l\'apprécient.'),
(128, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/128.png', 'Il faut prendre garde quand un Tauros fouette son corps avec ses queues. Cela signifie qu\'il s\'apprête à charger à une vitesse démentielle.'),
(129, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/129.png', 'Il manque totalement de vitesse et de force. C\'est le Pokémon le plus pathétique au monde.'),
(130, 3, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/130.png', 'Il est d\'une nature très agressive. Les lasers qu\'il tire de sa bouche sont capables de désintégrer n\'importe quelle cible.'),
(131, 3, 6, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/131.png', 'C\'est un Pokémon doux et intelligent. Il vogue sur la mer en émettant un chant magnifique.'),
(132, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/132.png', 'Il modifie sa structure cellulaire pour copier l\'apparence de ce qu\'il voit, mais au repos, il reprend sa forme normale.'),
(133, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png', 'Il a la capacité de changer la composition de son corps pour s\'adapter à son environnement.'),
(134, 3, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/134.png', 'Quand ses nageoires se mettent à vibrer, c\'est le signe qu\'il va pleuvoir dans les heures qui suivent.'),
(135, 4, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/135.png', 'S\'il est irrité ou surpris, toute la fourrure de son corps se dresse comme des aiguilles pour percer ses ennemis.'),
(136, 5, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/136.png', 'Après avoir emmagasiné suffisamment de chaleur, sa température corporelle peut monter jusqu\'à 900 °C.'),
(137, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/137.png', 'C\'est le premier Pokémon au monde à avoir été créé à partir de programmes informatiques, grâce à une technologie de pointe.'),
(138, 12, 3, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/138.png', 'Ce Pokémon commence à poser problème, car certains spécimens se sont enfuis ou ont été relâchés après avoir été ressuscités.'),
(139, 12, 3, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/139.png', 'Il se serait éteint à cause de la taille et du poids importants de sa coquille, qui le ralentissait quand il chassait ses proies.'),
(140, 12, 3, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/140.png', 'Ce Pokémon au bord de l\'extinction mue tous les trois jours et renforce ainsi davantage sa carapace.'),
(141, 12, 3, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/141.png', 'Il lacère sa proie pour boire ses fluides corporels, puis jette son corps en pâture à d\'autres Pokémon.'),
(142, 12, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/142.png', 'On raconte qu\'aujourd\'hui encore, il est impossible de restaurer à la perfection ce Pokémon féroce de l\'ère préhistorique.'),
(143, 8, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png', 'Ronflex n\'est pas satisfait tant qu\'il n\'a pas avalé ses 400 kg de nourriture quotidienne. Dès qu\'il a fini, il commence une sieste pour digérer.'),
(144, 6, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/144.png', 'On raconte que ses belles plumes bleues sont faites de glace. Sa longue queue flotte au vent lorsqu\'il vole au-dessus des monts enneigés.'),
(145, 4, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/145.png', 'On dit que ce Pokémon capable de contrôler la foudre installe son nid au creux des nuages d\'orage noirs.'),
(146, 5, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/146.png', 'Il s\'agit d\'un des Pokémon oiseaux légendaires. Des flammes rouges d\'une grande beauté étincellent lorsqu\'il bat des ailes.'),
(147, 2, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/147.png', 'Ce Pokémon vit près des courants d\'eau puissants, comme au pied des cascades. Il grandit en opérant une succession de mues.'),
(148, 2, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/148.png', 'Il vit dans les mers et les lacs aux eaux claires. Sa maîtrise de la météo lui permet de s\'élever dans le ciel en se laissant porter par le vent.'),
(149, 2, 15, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/149.png', 'Sa gentillesse est telle que s\'il voit un Pokémon ou un être humain en train de se noyer, il n\'hésite pas à lui venir en aide.'),
(150, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/150.png', 'Son ADN est presque le même que celui de Mew, mais sa taille et son caractère sont très différents.'),
(151, 11, 0, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/151.png', 'À l\'aide d\'un microscope, on peut distinguer le pelage extrêmement court, fin et délicat de ce Pokémon.');

-- --------------------------------------------------------

--
-- Structure de la table `detientpokemon`
--

CREATE TABLE `detientpokemon` (
  `id_dress` int(11) NOT NULL,
  `id_pok` int(11) NOT NULL,
  `lvl_pok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `detientpokemon`
--

INSERT INTO `detientpokemon` (`id_dress`, `id_pok`, `lvl_pok`) VALUES
(1, 74, 12),
(1, 95, 14),
(2, 120, 18),
(2, 121, 21),
(3, 100, 21),
(3, 25, 18),
(3, 26, 24),
(4, 71, 29),
(4, 114, 24),
(4, 45, 29),
(5, 109, 37),
(5, 89, 39),
(5, 109, 37),
(5, 110, 43),
(6, 64, 38),
(6, 122, 37),
(6, 49, 38),
(6, 65, 43),
(7, 58, 42),
(7, 77, 40),
(7, 78, 42),
(7, 59, 47),
(8, 111, 42),
(8, 51, 42),
(8, 31, 44),
(8, 34, 45),
(8, 112, 50),
(9, 87, 54),
(9, 91, 53),
(9, 80, 54),
(9, 124, 56),
(9, 131, 56),
(10, 95, 53),
(10, 107, 55),
(10, 106, 55),
(10, 95, 56),
(10, 68, 58),
(11, 94, 56),
(11, 42, 56),
(11, 93, 55),
(11, 24, 58),
(11, 94, 60),
(12, 130, 58),
(12, 148, 56),
(12, 148, 56),
(12, 142, 60),
(12, 149, 62);

-- --------------------------------------------------------

--
-- Structure de la table `dresseur`
--

CREATE TABLE `dresseur` (
  `id_dress` bigint(20) UNSIGNED NOT NULL,
  `nom_dress` varchar(25) NOT NULL,
  `img_dress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dresseur`
--

INSERT INTO `dresseur` (`id_dress`, `nom_dress`, `img_dress`) VALUES
(1, 'Pierre', 'https://www.pokepedia.fr/images/7/73/Pierre-LGPE.png'),
(2, 'Ondine', 'https://www.pokepedia.fr/images/3/39/Ondine-LGPE.png'),
(3, 'Major Bob', 'https://www.pokepedia.fr/images/6/66/Major_Bob-LGPE.png'),
(4, 'Erika', 'https://www.pokepedia.fr/images/8/8c/Erika-LGPE.png'),
(5, 'Koga', 'https://www.pokepedia.fr/images/e/e7/Koga-LGPE.png'),
(6, 'Morgane', 'https://www.pokepedia.fr/images/d/d8/Morgane-LGPE.png'),
(7, 'Auguste', 'https://www.pokepedia.fr/images/7/72/Auguste-LGPE.png'),
(8, 'Giovanni', 'https://www.pokepedia.fr/images/a/a7/Giovanni-LGPE.png'),
(9, 'Olga', 'https://www.pokepedia.fr/images/1/19/Olga-LGPE.png'),
(10, 'Aldo', 'https://www.pokepedia.fr/images/4/42/Aldo-LGPE.png'),
(11, 'Agatha', 'https://www.pokepedia.fr/images/8/8b/Agatha-LGPE.png'),
(12, 'Peter', 'https://www.pokepedia.fr/images/e/e3/Peter-LGPE.png');

-- --------------------------------------------------------

--
-- Structure de la table `evolution`
--

CREATE TABLE `evolution` (
  `id_pok_base` int(11) NOT NULL,
  `id_pok_evol` int(11) NOT NULL,
  `lvl_evol_pok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evolution`
--

INSERT INTO `evolution` (`id_pok_base`, `id_pok_evol`, `lvl_evol_pok`) VALUES
(1, 2, 16),
(2, 3, 32),
(4, 5, 16),
(5, 6, 36),
(7, 8, 16),
(8, 9, 36),
(10, 11, 7),
(11, 12, 10),
(13, 14, 7),
(14, 15, 10),
(16, 17, 18),
(17, 18, 36),
(19, 20, 20),
(21, 22, 20),
(23, 24, 22),
(25, 26, -1),
(27, 28, 22),
(29, 30, 16),
(30, 31, -1),
(32, 33, 16),
(33, 34, -1),
(35, 36, -1),
(37, 38, -1),
(39, 40, -1),
(41, 42, 22),
(43, 44, 21),
(44, 45, -1),
(46, 47, 24),
(48, 49, 31),
(50, 51, 26),
(52, 53, 28),
(54, 55, 33),
(56, 57, 28),
(58, 59, -1),
(60, 61, 25),
(61, 62, -1),
(63, 64, 16),
(64, 65, -2),
(66, 67, 28),
(67, 68, -2),
(69, 70, 21),
(70, 71, -1),
(72, 73, 30),
(74, 75, 25),
(75, 76, -2),
(77, 78, 40),
(79, 80, 37),
(81, 82, 30),
(84, 85, 31),
(86, 87, 34),
(88, 89, 38),
(90, 91, -1),
(92, 93, 25),
(93, 94, -2),
(96, 97, 26),
(98, 99, 28),
(100, 101, 30),
(102, 103, -1),
(104, 105, 28),
(109, 110, 35),
(111, 112, 42),
(116, 117, 32),
(118, 119, 33),
(120, 121, -1),
(129, 130, 20),
(133, 134, -1),
(133, 135, -1),
(133, 136, -1),
(138, 139, 40),
(140, 141, 40),
(147, 148, 30),
(148, 149, 55);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pok` int(10) UNSIGNED NOT NULL,
  `number` varchar(6) DEFAULT NULL,
  `nom_pok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id_pok`, `number`, `nom_pok`) VALUES
(1, 'No.001', 'Bulbizarre'),
(2, 'No.002', 'Herbizarre'),
(3, 'No.003', 'Florizarre'),
(4, 'No.004', 'Salameche'),
(5, 'No.005', 'Reptincel'),
(6, 'No.006', 'Dracaufeu'),
(7, 'No.007', 'Carapuce'),
(8, 'No.008', 'Carabaffe'),
(9, 'No.009', 'Tortank'),
(10, 'No.010', 'Chenipan'),
(11, 'No.011', 'Chrysacier'),
(12, 'No.012', 'Papilusion'),
(13, 'No.013', 'Aspicot'),
(14, 'No.014', 'Coconfort'),
(15, 'No.015', 'Dardargnan'),
(16, 'No.016', 'Roucool'),
(17, 'No.017', 'Roucoups'),
(18, 'No.018', 'Roucarnage'),
(19, 'No.019', 'Rattata'),
(20, 'No.020', 'Rattatac'),
(21, 'No.021', 'Piafabec'),
(22, 'No.022', 'Rapasdepic'),
(23, 'No.023', 'Abo'),
(24, 'No.024', 'Arbok'),
(25, 'No.025', 'Pikachu'),
(26, 'No.026', 'Raichu'),
(27, 'No.027', 'Sabelette'),
(28, 'No.028', 'Sablaireau'),
(29, 'No.029', 'NidoranF'),
(30, 'No.030', 'Nidorina'),
(31, 'No.031', 'Nidoqueen'),
(32, 'No.032', 'NidoranM'),
(33, 'No.033', 'Nidorino'),
(34, 'No.034', 'Nidoking'),
(35, 'No.035', 'Melofee'),
(36, 'No.036', 'Melodelfe'),
(37, 'No.037', 'Goupix'),
(38, 'No.038', 'Feunard'),
(39, 'No.039', 'Rondoudou'),
(40, 'No.040', 'Grodoudou'),
(41, 'No.041', 'Nosferapti'),
(42, 'No.042', 'Nosferalto'),
(43, 'No.043', 'Mystherbe'),
(44, 'No.044', 'Ortide'),
(45, 'No.045', 'Rafflesia'),
(46, 'No.046', 'Paras'),
(47, 'No.047', 'Parasect'),
(48, 'No.048', 'Mimitoss'),
(49, 'No.049', 'Aeromite'),
(50, 'No.050', 'Taupiqueur'),
(51, 'No.051', 'Triopikeur'),
(52, 'No.052', 'Miaouss'),
(53, 'No.053', 'Persian'),
(54, 'No.054', 'Psykokwak'),
(55, 'No.055', 'Akwakwak'),
(56, 'No.056', 'Ferosinge'),
(57, 'No.057', 'Colossinge'),
(58, 'No.058', 'Caninos'),
(59, 'No.059', 'Arcanin'),
(60, 'No.060', 'Ptitard'),
(61, 'No.061', 'Tetarte'),
(62, 'No.062', 'Tartard'),
(63, 'No.063', 'Abra'),
(64, 'No.064', 'Kadabra'),
(65, 'No.065', 'Alakazam'),
(66, 'No.066', 'Machoc'),
(67, 'No.067', 'Machopeur'),
(68, 'No.068', 'Mackogneur'),
(69, 'No.069', 'Chetiflor'),
(70, 'No.070', 'Boustiflor'),
(71, 'No.071', 'Empiflor'),
(72, 'No.072', 'Tentacool'),
(73, 'No.073', 'Tentacruel'),
(74, 'No.074', 'Racaillou'),
(75, 'No.075', 'Gravalanch'),
(76, 'No.076', 'Grolem'),
(77, 'No.077', 'Ponyta'),
(78, 'No.078', 'Galopa'),
(79, 'No.079', 'Ramoloss'),
(80, 'No.080', 'Flagadoss'),
(81, 'No.081', 'Magneti'),
(82, 'No.082', 'Magneton'),
(83, 'No.083', 'Canarticho'),
(84, 'No.084', 'Doduo'),
(85, 'No.085', 'Dodrio'),
(86, 'No.086', 'Otaria'),
(87, 'No.087', 'Lamantine'),
(88, 'No.088', 'Tadmorv'),
(89, 'No.089', 'Grotadmorv'),
(90, 'No.090', 'Kokiyas'),
(91, 'No.091', 'Crustabri'),
(92, 'No.092', 'Fantominus'),
(93, 'No.093', 'Spectrum'),
(94, 'No.094', 'Ectoplasma'),
(95, 'No.095', 'Onix'),
(96, 'No.096', 'Soporifik'),
(97, 'No.097', 'Hypnomade'),
(98, 'No.098', 'Krabby'),
(99, 'No.099', 'Krabboss'),
(100, 'No.100', 'Voltorbe'),
(101, 'No.101', 'Electrode'),
(102, 'No.102', 'Noeunoeuf'),
(103, 'No.103', 'Noadkoko'),
(104, 'No.104', 'Osselait'),
(105, 'No.105', 'Ossatueur'),
(106, 'No.106', 'Kicklee'),
(107, 'No.107', 'Tygnon'),
(108, 'No.108', 'Excelangue'),
(109, 'No.109', 'Smogo'),
(110, 'No.110', 'Smogogo'),
(111, 'No.111', 'Rhinocorne'),
(112, 'No.112', 'Rhinoferos'),
(113, 'No.113', 'Leveinard'),
(114, 'No.114', 'Saquedeneu'),
(115, 'No.115', 'Kangourex'),
(116, 'No.116', 'Hypotrempe'),
(117, 'No.117', 'Hypocean'),
(118, 'No.118', 'Poissirene'),
(119, 'No.119', 'Poissoroy'),
(120, 'No.120', 'Stari'),
(121, 'No.121', 'Staross'),
(122, 'No.122', 'M. Mime'),
(123, 'No.123', 'Insecateur'),
(124, 'No.124', 'Lippoutou'),
(125, 'No.125', 'Elektek'),
(126, 'No.126', 'Magmar'),
(127, 'No.127', 'Scarabrute'),
(128, 'No.128', 'Tauros'),
(129, 'No.129', 'Magicarpe'),
(130, 'No.130', 'Leviator'),
(131, 'No.131', 'Lokhlass'),
(132, 'No.132', 'Metamorph'),
(133, 'No.133', 'Evoli'),
(134, 'No.134', 'Aquali'),
(135, 'No.135', 'Voltali'),
(136, 'No.136', 'Pyroli'),
(137, 'No.137', 'Porygon'),
(138, 'No.138', 'Amonita'),
(139, 'No.139', 'Amonistar'),
(140, 'No.140', 'Kabuto'),
(141, 'No.141', 'Kabutops'),
(142, 'No.142', 'Ptera'),
(143, 'No.143', 'Ronflex'),
(144, 'No.144', 'Artikodin'),
(145, 'No.145', 'Electhor'),
(146, 'No.146', 'Sulfura'),
(147, 'No.147', 'Minidraco'),
(148, 'No.148', 'Draco'),
(149, 'No.149', 'Dracolosse'),
(150, 'No.150', 'Mewtwo'),
(151, 'No.151', 'Mew');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `post_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `titre`, `description`, `post_at`) VALUES
(25, 1, 'Victoire !', 'Victoire contre Ondine la championne d\'Azura', '2022-06-24');

-- --------------------------------------------------------

--
-- Structure de la table `recompense`
--

CREATE TABLE `recompense` (
  `id_dress` int(11) NOT NULL,
  `badge_nom` varchar(20) DEFAULT NULL,
  `badge_img` varchar(255) DEFAULT NULL,
  `capsule` varchar(25) DEFAULT NULL,
  `objet` varchar(25) DEFAULT NULL,
  `capsule_img` varchar(255) DEFAULT NULL,
  `objet_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recompense`
--

INSERT INTO `recompense` (`id_dress`, `badge_nom`, `badge_img`, `capsule`, `objet`, `capsule_img`, `objet_img`) VALUES
(1, 'Badge Roche', 'https://archives.bulbagarden.net/media/upload/archive/d/dd/20131124035810%21Boulder_Badge.png', 'CT Patience', 'Total Soin', 'https://www.pokepedia.fr/images/a/a5/Patience_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/total-soin.png'),
(2, 'Badge Cascade', 'https://archives.bulbagarden.net/media/upload/archive/9/9c/20160212103957%21Cascade_Badge.png', 'CT Bulles d\'O', 'Défense +', 'https://www.pokepedia.fr/images/1/1c/Bulles_d%27O_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/defense-plus.png'),
(3, 'Badge Foudre', 'https://archives.bulbagarden.net/media/upload/archive/a/a6/20131124035553%21Thunder_Badge.png', 'CT Tonnerre', 'Vitesse +', 'https://www.pokepedia.fr/images/3/3c/Tonnerre_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/vitesse-plus.png'),
(4, 'Badge Prisme', 'https://archives.bulbagarden.net/media/upload/archive/b/b5/20131124035352%21Rainbow_Badge.png', 'CT Méga-Sangsue', 'Super Potion', 'https://www.pokepedia.fr/images/5/52/Méga-Sangsue_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/super-potion.png'),
(5, 'Badge Âme', 'https://archives.bulbagarden.net/media/upload/archive/7/7d/20091018233358%21Soul_Badge.png', 'CT Toxik', 'Attaque +', 'https://www.pokepedia.fr/images/a/a9/Toxik_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/attaque-plus.png'),
(6, 'Badge Marais', 'https://archives.bulbagarden.net/media/upload/archive/6/6b/20131124035140%21Marsh_Badge.png', 'CT Vague Psy', 'Hyper Potion', 'https://www.pokepedia.fr/images/d/df/Vague_Psy_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/hyper-potion.png'),
(7, 'Badge Volcan', 'https://archives.bulbagarden.net/media/upload/archive/1/12/20131124034738%21Volcano_Badge.png', 'CT Déflagration', 'Super Potion', 'https://www.pokepedia.fr/images/1/12/Déflagration_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/super-potion.png'),
(8, 'Badge Terre', 'https://archives.bulbagarden.net/media/upload/archive/7/78/20090913022805%21Earth_Badge.png', 'CT Abîme', 'Défense Spéc', 'https://www.pokepedia.fr/images/d/d9/Abîme_RBJ_animation.gif', 'https://www.media.pokekalos.fr/img/pokemon/objets/big/defense-plus.png');

-- --------------------------------------------------------

--
-- Structure de la table `statcombat`
--

CREATE TABLE `statcombat` (
  `id_pok` int(11) NOT NULL,
  `stat_pv` int(11) NOT NULL,
  `stat_force` int(11) NOT NULL,
  `stat_defense` int(11) NOT NULL,
  `stat_vitesse` int(11) NOT NULL,
  `stat_special` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statcombat`
--

INSERT INTO `statcombat` (`id_pok`, `stat_pv`, `stat_force`, `stat_defense`, `stat_vitesse`, `stat_special`) VALUES
(1, 45, 49, 49, 45, 65),
(2, 60, 62, 63, 60, 80),
(3, 80, 82, 83, 80, 100),
(4, 39, 52, 43, 65, 50),
(5, 58, 64, 58, 80, 65),
(6, 78, 84, 78, 100, 85),
(7, 44, 48, 65, 43, 50),
(8, 59, 63, 80, 58, 65),
(9, 79, 83, 100, 78, 85),
(10, 45, 30, 35, 45, 20),
(11, 50, 20, 55, 30, 25),
(12, 60, 45, 50, 70, 80),
(13, 40, 35, 30, 50, 20),
(14, 45, 25, 50, 35, 25),
(15, 65, 80, 40, 75, 45),
(16, 40, 45, 40, 56, 35),
(17, 63, 60, 55, 71, 50),
(18, 83, 80, 75, 91, 70),
(19, 30, 56, 35, 72, 25),
(20, 55, 81, 60, 97, 50),
(21, 40, 60, 30, 70, 31),
(22, 65, 90, 65, 100, 61),
(23, 35, 60, 44, 55, 40),
(24, 60, 85, 69, 80, 65),
(25, 35, 55, 30, 90, 50),
(26, 60, 90, 55, 100, 90),
(27, 50, 75, 85, 40, 30),
(28, 75, 100, 110, 65, 55),
(29, 55, 47, 52, 41, 40),
(30, 70, 62, 67, 56, 55),
(31, 90, 82, 87, 76, 75),
(32, 46, 57, 40, 50, 40),
(33, 61, 72, 57, 65, 55),
(34, 81, 92, 77, 85, 75),
(35, 70, 45, 48, 35, 60),
(36, 95, 70, 73, 60, 85),
(37, 38, 41, 40, 65, 65),
(38, 73, 76, 75, 100, 100),
(39, 115, 45, 20, 20, 25),
(40, 140, 70, 45, 45, 50),
(41, 40, 45, 35, 55, 40),
(42, 75, 80, 70, 90, 75),
(43, 45, 50, 55, 30, 75),
(44, 60, 65, 70, 40, 85),
(45, 75, 80, 85, 50, 100),
(46, 35, 70, 55, 25, 55),
(47, 60, 95, 80, 30, 80),
(48, 60, 55, 50, 45, 40),
(49, 70, 65, 60, 90, 90),
(50, 10, 55, 25, 95, 45),
(51, 35, 80, 50, 120, 70),
(52, 40, 45, 35, 90, 40),
(53, 65, 70, 60, 115, 65),
(54, 50, 52, 48, 55, 50),
(55, 80, 82, 78, 85, 80),
(56, 40, 80, 35, 70, 35),
(57, 65, 105, 6, 95, 60),
(58, 55, 70, 45, 60, 50),
(59, 90, 110, 80, 95, 80),
(60, 40, 50, 40, 90, 40),
(61, 65, 65, 65, 90, 50),
(62, 90, 85, 95, 70, 70),
(63, 25, 20, 15, 90, 105),
(64, 40, 35, 30, 105, 120),
(65, 55, 50, 45, 120, 135),
(66, 70, 80, 50, 35, 35),
(67, 80, 100, 70, 45, 50),
(68, 90, 130, 80, 55, 65),
(69, 50, 75, 35, 40, 70),
(70, 65, 90, 50, 55, 85),
(71, 80, 105, 65, 70, 100),
(72, 40, 40, 35, 70, 100),
(73, 80, 70, 65, 100, 120),
(74, 40, 80, 100, 20, 30),
(75, 55, 95, 115, 35, 45),
(76, 80, 110, 130, 45, 55),
(77, 50, 85, 55, 90, 65),
(78, 65, 100, 70, 105, 80),
(79, 90, 65, 65, 15, 40),
(80, 95, 75, 110, 30, 80),
(81, 25, 35, 70, 45, 95),
(82, 50, 60, 95, 70, 120),
(83, 52, 65, 55, 60, 58),
(84, 35, 85, 45, 75, 35),
(85, 60, 110, 70, 100, 60),
(86, 65, 45, 55, 45, 70),
(87, 90, 70, 80, 70, 95),
(88, 80, 80, 50, 25, 40),
(89, 105, 105, 75, 50, 65),
(90, 30, 65, 100, 40, 45),
(91, 50, 95, 180, 70, 85),
(92, 30, 35, 30, 80, 100),
(93, 45, 50, 45, 95, 115),
(94, 60, 65, 60, 110, 130),
(95, 35, 45, 160, 70, 30),
(96, 60, 48, 45, 42, 90),
(97, 85, 73, 70, 67, 115),
(98, 30, 105, 90, 50, 25),
(99, 55, 130, 115, 75, 50),
(100, 40, 30, 50, 100, 55),
(101, 60, 50, 70, 140, 80),
(102, 60, 40, 80, 40, 60),
(103, 95, 95, 85, 55, 125),
(104, 50, 50, 95, 35, 40),
(105, 60, 80, 110, 45, 50),
(106, 50, 120, 53, 87, 35),
(107, 50, 105, 79, 76, 35),
(108, 90, 55, 75, 30, 60),
(109, 40, 65, 95, 35, 60),
(110, 65, 90, 120, 60, 85),
(111, 80, 85, 95, 25, 30),
(112, 105, 130, 120, 40, 45),
(113, 250, 5, 5, 50, 105),
(114, 65, 55, 115, 60, 100),
(115, 105, 95, 80, 90, 40),
(116, 30, 40, 70, 60, 70),
(117, 55, 65, 95, 85, 95),
(118, 45, 67, 60, 63, 50),
(119, 80, 92, 65, 68, 80),
(120, 30, 45, 55, 85, 70),
(121, 60, 75, 85, 115, 100),
(122, 40, 45, 65, 90, 100),
(123, 70, 110, 80, 105, 55),
(124, 65, 50, 35, 95, 95),
(125, 65, 83, 57, 105, 85),
(126, 65, 95, 57, 93, 85),
(127, 65, 125, 100, 85, 55),
(128, 75, 100, 95, 110, 70),
(129, 20, 10, 55, 80, 20),
(130, 95, 125, 79, 81, 100),
(131, 130, 85, 80, 60, 95),
(132, 48, 48, 48, 48, 48),
(133, 55, 55, 50, 55, 65),
(134, 130, 65, 60, 65, 110),
(135, 65, 65, 60, 130, 11),
(136, 65, 130, 60, 65, 110),
(137, 65, 60, 70, 40, 75),
(138, 35, 40, 100, 35, 90),
(139, 70, 60, 125, 55, 115),
(140, 30, 80, 90, 55, 45),
(141, 60, 115, 105, 80, 70),
(142, 80, 105, 65, 130, 60),
(143, 160, 110, 65, 30, 65),
(144, 90, 85, 100, 85, 125),
(145, 90, 90, 85, 100, 12),
(146, 90, 100, 90, 90, 125),
(147, 41, 64, 45, 50, 50),
(148, 61, 84, 65, 70, 70),
(149, 91, 134, 95, 80, 100),
(150, 106, 110, 90, 130, 15),
(151, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Structure de la table `stockepokemon`
--

CREATE TABLE `stockepokemon` (
  `id_dress` int(11) NOT NULL,
  `id_pok` int(11) NOT NULL,
  `lvl_pok` int(11) NOT NULL,
  `num_boite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stockepokemon`
--

INSERT INTO `stockepokemon` (`id_dress`, `id_pok`, `lvl_pok`, `num_boite`) VALUES
(1, 16, 25, 1),
(1, 25, 5, 1),
(1, 38, 15, 1),
(1, 11, 10, 1),
(1, 42, 13, 1),
(1, 10, 5, 1),
(1, 19, 11, 1),
(1, 61, 13, 1),
(1, 85, 8, 1),
(1, 89, 17, 1),
(1, 1, 10, 1),
(1, 14, 11, 1),
(1, 99, 13, 1),
(1, 124, 42, 2),
(1, 117, 53, 2),
(1, 142, 50, 2),
(1, 143, 32, 2),
(1, 103, 59, 2),
(1, 133, 25, 3),
(1, 134, 48, 3),
(1, 135, 45, 3),
(1, 136, 42, 3),
(1, 150, 85, 5),
(1, 151, 98, 5);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type_pok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_type`, `type_pok`) VALUES
(1, 'Combat'),
(2, 'Dragon'),
(3, 'Eau'),
(4, 'Electrique'),
(5, 'Feu'),
(6, 'Glace'),
(7, 'Insecte'),
(8, 'Normal'),
(9, 'Plante'),
(10, 'Poison'),
(11, 'Psy'),
(12, 'Roche'),
(13, 'Sol'),
(14, 'Spectre'),
(15, 'Vol');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `identifiant` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cree` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actualise` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `identifiant`, `email`, `password`, `cree`, `actualise`) VALUES
(1, 'Kissara', 'avakissara@gmail.com', '$2y$10$yUjKdPQ20YkROAQS0g021ORBa6ypJh36FQRcVWfEGXURztj5DK4v.', '2021-06-12 18:14:53', '2021-06-12 18:14:53'),
(14, 'Polochon', 'poloronchon@gmail.com', '$2y$10$2sGceF1DKpKaWtadzPgXM.eGZzU7mQVFDNpp7P6XmXHPl5ipyAdWi', '2022-06-25 19:20:50', '2022-06-25 19:20:50'),
(48, 'test', 'test@gmail.com', '$2y$10$lbJJQxTZNPBQJ9uJd4evWeKxF3RcXF9pzdTpfJ4G053rHNmJm98vq', '2022-08-14 06:50:50', '2022-08-14 06:50:50'),
(49, 'pikapika', 'pika@gmail.com', '$2y$10$00Ko2m7Qj7qobso6QWntNegErel0OptYI..OPLtpKWsGs0YzHr/3S', '2022-08-16 16:50:09', '2022-08-16 16:50:09');

-- --------------------------------------------------------

--
-- Structure de la table `userinfo`
--

CREATE TABLE `userinfo` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `cree` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actualise` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `userinfo`
--

INSERT INTO `userinfo` (`id_user`, `nom`, `prenom`, `telephone`, `cree`, `actualise`) VALUES
(1, 'Ava', 'Kissara', '01111111111', '2021-06-12 18:14:53', '2021-06-12 18:14:53'),
(14, '', '', '0688888888', '2022-06-25 19:20:50', '2022-06-25 19:20:50'),
(48, 'test', 'test', '090909', '2022-08-14 06:50:50', '2022-08-14 06:50:50'),
(49, 'pika', 'pika', '090909', '2022-08-16 16:50:09', '2022-08-16 16:50:09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attaque`
--
ALTER TABLE `attaque`
  ADD PRIMARY KEY (`id_attaque`),
  ADD UNIQUE KEY `id_attaque` (`id_attaque`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `detientpokemon`
--
ALTER TABLE `detientpokemon`
  ADD KEY `id_dress` (`id_dress`),
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `dresseur`
--
ALTER TABLE `dresseur`
  ADD PRIMARY KEY (`id_dress`),
  ADD UNIQUE KEY `id_dress` (`id_dress`);

--
-- Index pour la table `evolution`
--
ALTER TABLE `evolution`
  ADD KEY `id_pok_base` (`id_pok_base`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pok`),
  ADD UNIQUE KEY `id_pok` (`id_pok`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `statcombat`
--
ALTER TABLE `statcombat`
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `stockepokemon`
--
ALTER TABLE `stockepokemon`
  ADD KEY `id_dress` (`id_dress`),
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `identifiant` (`identifiant`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `userinfo`
--
ALTER TABLE `userinfo`
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attaque`
--
ALTER TABLE `attaque`
  MODIFY `id_attaque` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT pour la table `dresseur`
--
ALTER TABLE `dresseur`
  MODIFY `id_dress` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_pok` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
