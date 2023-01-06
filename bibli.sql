
-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `AUT_NUM` int(11) NOT NULL,
  `AUT_NOM` char(50) COLLATE utf8_bin NOT NULL,
  `AUT_PRENOM` char(30) COLLATE utf8_bin DEFAULT NULL,
  `AUT_PHOTO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`AUT_NUM`, `AUT_NOM`, `AUT_PRENOM`, `AUT_PHOTO`) VALUES
(8, 'Dauzon', 'Samuel', ''),
(9, 'Pradat-Peyre', 'Jean-François', NULL),
(10, 'Printz', 'Jacques', NULL),
(11, 'Plouin', 'Guillaume', ''),
(12, 'Hightower', 'Kelsey', NULL),
(13, 'Burns', 'Brendan', NULL),
(14, 'Beda', 'Joe', NULL),
(15, 'Cloux', 'Pierre-Yves', NULL),
(16, 'Garlot', 'Thomas', NULL),
(17, 'Kohler', 'Johann', NULL),
(18, 'Aubry', 'Christophe', NULL),
(19, 'Dumoulin', 'Laurent', NULL),
(20, 'Thémée', 'Jérôme', NULL),
(21, 'Bezet-Torres', 'Jérôme', NULL),
(22, 'Granet', 'Vincent', NULL),
(23, 'Regourd', 'Jean-Pierre', NULL),
(24, 'Mazier', 'Didier', NULL),
(25, 'Fontanet', 'Julien', NULL),
(26, 'Lambert', 'Olivier', NULL),
(27, 'Van Lancker', 'Luc', NULL),
(28, 'Freeman', 'Eric', NULL),
(29, 'Freeman', 'Elisabeth', NULL),
(30, 'Heurtel', 'Olivier', NULL),
(31, 'VIGOUROUX', 'Christian', NULL),
(32, 'De Oliveira', 'Vincent', 'CSS3.PNG'),
(33, 'Esnault', 'Cédric', NULL),
(34, 'PUYBARET', 'Emmanuel', NULL),
(35, 'Keith', 'Jeremy', NULL),
(36, 'Andrew', 'Rachel', NULL),
(37, 'De la Marck', 'Sébastien', NULL),
(38, 'Pardanaud', 'Johann', NULL),
(39, 'Gardarin', 'Georges', NULL),
(40, 'Guérin', 'Brice-Arnaud', NULL),
(41, 'Contensin', 'Magali', NULL),
(42, 'Coutant', 'Maxime', NULL),
(43, 'Soulier', 'Pierre', NULL),
(44, 'Chardonneau', 'Ronan', NULL),
(45, 'Prat', 'Marie', NULL),
(46, 'Fanelli-Isla', 'Marc', NULL),
(47, 'HEBUTERNE', 'Sylvain', NULL),
(48, 'Meier', 'Reto', NULL),
(49, 'Marcelly', 'Bernard', 'Android 4.PNG'),
(50, 'Godard', 'Laurent', NULL),
(51, 'Rollet', 'Olivier', NULL),
(52, 'Rohaut', 'Sébastien', NULL),
(53, 'Amelot', 'Michèle', NULL),
(54, 'GRIS', 'Myriam', NULL),
(55, 'GUEROIS', 'Catherine', NULL),
(56, 'Carlson', 'lucas', NULL),
(57, 'Richardson', 'leonard', NULL),
(58, 'Flanagan', 'David', NULL),
(59, 'Lafosse', 'Jérôme', 'java EE.PNG'),
(60, 'Groussard', 'Thierry', NULL),
(61, 'Delannoy', 'Claude', NULL),
(62, 'Mathivet', 'Virginie', NULL),
(63, 'Olson', 'Steve', NULL),
(64, 'Petitjean', 'Arnaud', NULL),
(65, 'Lemesle', 'Robin', NULL),
(66, 'Thébault', 'Patrice', NULL),
(67, 'Bouzefrane', 'Samia', NULL),
(68, 'Habraken', 'Joe', NULL),
(69, 'Hayden', 'Matt', NULL),
(70, 'Stark', 'Jonathan', NULL),
(71, 'Corvalan', 'Rafaël', 'vpn.PNG'),
(72, 'Corvalan', 'Ernesto', NULL),
(73, 'Le Corvic', 'Yoann', NULL),
(74, 'Baptiste', 'Jean-Luc', NULL),
(75, 'Fontaine', 'Loïc', NULL),
(76, 'Legros', 'Bruno', NULL),
(77, 'Chateau', 'Mathieu', NULL),
(78, 'Dumas', 'Jean-Guillaume', NULL),
(79, 'Lafourcade', 'Pascal', NULL),
(80, 'Redon', 'Patrick', NULL),
(81, 'Pillou', 'Jean-François', NULL),
(82, 'Bay', 'Jean-Philippe', NULL),
(83, 'Deladrière', 'Jean-Luc', NULL),
(84, 'Le Bihan', 'Frédéric', NULL),
(85, 'Mongin', 'Pierre', NULL),
(86, 'Rebaud', 'Denis', NULL),
(87, 'Granneman', 'Scott', NULL),
(88, 'Ghernaouti', 'Solange', NULL),
(89, 'Acissi', 'a', NULL),
(90, 'Rascagneres', 'Paul', NULL),
(91, 'Engebretson', 'Patrick', NULL),
(92, 'Erickson', 'Jon', NULL),
(93, 'Ebel', 'Franck', NULL),
(94, 'Richard', 'Thierry', NULL),
(95, 'Servin', 'Claude', NULL),
(96, 'Maillot', 'Edgar', NULL),
(97, 'Rocamora', 'Yves', 'apprendre-a-developper-des-applications-web-avec-php-et-symfony.jpg'),
(98, 'Bryant', 'Mike', '9782412046586-475x500-1.png'),
(99, 'Audibert', 'Laurent', NULL),
(100, 'Artu', 'Sébastien', NULL),
(101, 'Gouigoux', 'Jean-Philippe', NULL),
(102, 'Sabourdin', 'Charles', NULL),
(103, 'Kousen', 'Ken', 'haute-disponibilite-sous-linux.jpg'),
(104, 'Goasguen', 'Sébastien', NULL),
(105, 'Hausenblas', 'Michaël', NULL),
(106, 'Collectif', 'd\'auteurs', 'Ligne-de-commande-par-l-exemple.jpg'),
(107, 'Lowe', 'Doug', NULL),
(108, 'Mattatia', 'Fabrice', NULL),
(109, 'Pigeon', 'Guillaume', NULL),
(110, 'Berger', 'Sylvain', NULL),
(111, 'Cassagne', 'Cédric', NULL),
(112, 'Chaissac', 'Cédric', NULL),
(113, 'Rampnoux', 'René', NULL),
(114, 'Gauchard', 'Yoann', NULL),
(115, 'Sacquet', 'Alain', NULL),
(116, 'Rochefolle', 'Christophe', NULL),
(117, 'Novak', 'Kiki', 'Administration linux par la pratique T2.jpg'),
(118, 'HUCHET', 'Raphaël', 'laravel-un-framework-efficace.jpg'),
(119, 'GRIFFITHS', 'Dawn', NULL),
(120, 'GRIFFITHS', 'David', NULL),
(121, 'ROQUES', 'Pascal', NULL),
(122, 'LEONETTI', 'Xavier', NULL),
(123, 'PRADAT-PEYRE', 'Jean-François', NULL),
(124, 'PRINTZ', 'Jacques', NULL),
(125, 'DEON', 'Sébastien', NULL),
(126, 'BARDY', 'Thierry', NULL),
(127, 'APPERCEL', 'Romain', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `id_Client` int(11) NOT NULL,
  `LIV_id` char(20) NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `id_Client`, `LIV_id`, `description`, `date`) VALUES
(3, 26, '067-2-3264-8601-1', 'alors ce livre est un test', '0000-00-00'),
(13, 13, '978-2-4090-1910-4', 'Très bon livre pour découvrir le versionning', '2021-06-18');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `CLIENT_ID` int(11) NOT NULL,
  `CLIENT_NOM` varchar(25) COLLATE utf8_bin NOT NULL,
  `CLIENT_PRENOM` varchar(30) COLLATE utf8_bin NOT NULL,
  `CLIENT_TEL` varchar(10) COLLATE utf8_bin NOT NULL,
  `CLIENT_ADR` varchar(50) COLLATE utf8_bin NOT NULL,
  `CLIENT_VILLE` varchar(50) COLLATE utf8_bin NOT NULL,
  `CLIENT_CP` int(11) NOT NULL,
  `CLIENT_MAIL` varchar(50) COLLATE utf8_bin NOT NULL,
  `CLIENT_MDP` varchar(32) COLLATE utf8_bin NOT NULL,
  `CLIENT_PHOTO` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`CLIENT_ID`, `CLIENT_NOM`, `CLIENT_PRENOM`, `CLIENT_TEL`, `CLIENT_ADR`, `CLIENT_VILLE`, `CLIENT_CP`, `CLIENT_MAIL`, `CLIENT_MDP`, `CLIENT_PHOTO`) VALUES
(13, 'ayrault', 'Frédérique', '0631986028', '295, rue de la fontaine', 'Ligny le ribault', 45240, 'frayrault@gmail.com', '0430269ab397cd9b1a3d8c1f5c1776d5', 'ayrault.jpg'),
(14, 'Blin', 'Rémi', '0652279162', '542, rue du chêne Maillard', 'Saran', 45770, 'remiblin@hotmail.fr', '942b74d239bb02db9d4ccddc6c4d37c2', NULL),
(15, 'Beaudonnel', 'Killian', '0683720850', '10 rue ferdinand Arnaudin', 'Chateauneuf sur Loire', 45110, 'killian.beaudonnel@gmail.com', 'b0872ec0c20ce4a57d700a35bd1d54dc', NULL),
(16, 'Moreau', 'Enzo', '0652524562', '17 rue aux loups', 'boigny sur bionne', 45760, 'enzo.moreau1710@gmail.com', 'cf36a2cad8209ce6251ac4b98ea4a401', NULL),
(18, 'Hourdé', 'Quentin', '0645828388', '10 rue chateau Gaillard', 'la chapelle st Mesmin', 45380, 'qu.hourde@protonmail.com', '27bfb93713f4440cc23f3cb32c4327cb', NULL),
(21, 'Lefol', 'Axel', '0695904035', '35 Allée Gerard Clocet', 'Orleans', 45770, 'axel.lefol@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Christ,_by_Heinrich_Hofmann.jpg'),
(22, 'Lajoie', 'Ben', '0123456789', '6, cloitre st aignan', 'orléans', 45000, 'belajoie@stpbb.org', 'bd05bd587be3b36ed9c04fe416ec6551', NULL),
(23, 'Bordelot', 'Jérémie', '0123456789', '6, cloître st aignan', 'Orléans', 45000, 'jebordelot@stpbb.org', '871fb78444e65eda419707bf0b84d441', 'Joyeux-Noel-2009[1].jpg');

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `COL_NUM` int(11) NOT NULL,
  `EDIT_NUM` int(11) NOT NULL,
  `COL_NOM` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`COL_NUM`, `EDIT_NUM`, `COL_NOM`) VALUES
(1, 2, 'les Cahiers du Programmeur'),
(2, 1, 'Ressources informatiques'),
(3, 7, 'infoPro'),
(4, 1, 'A book apart'),
(5, 1, 'Tête la première'),
(6, 5, 'Epsilon'),
(7, 7, 'InfoPro'),
(8, 5, 'Objectif WEB'),
(9, 5, 'Expert IT'),
(10, 4, 'Aide mémoire'),
(11, 3, 'Simple IT'),
(12, 2, 'Best of'),
(13, 5, 'les TP Informatiques'),
(14, 7, 'Sciences SUP'),
(15, 7, 'Efficacité professionnelle'),
(16, 8, 'Référence'),
(17, 5, 'Technote'),
(18, 5, 'DataPro'),
(19, 2, 'Blanche'),
(20, 7, 'Réseaux & télécoms'),
(21, 7, 'Info Sup'),
(22, 7, 'Comment ça marche ?'),
(23, 7, 'Aide-Mémoire'),
(24, 9, 'Cours et exercices'),
(25, 1, 'Aucune'),
(27, 5, 'Informatique technique'),
(28, 11, 'Minimax'),
(29, 4, 'Pour Les Nuls'),
(30, 2, 'Aucune'),
(31, 5, 'Memory'),
(32, 9, 'Aucune');


-- --------------------------------------------------------

--
-- Structure de la table `correspondre`
--

CREATE TABLE `correspondre` (
  `RUB_ID` int(11) NOT NULL,
  `LIV_ISBN` char(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `correspondre`
--

INSERT INTO `correspondre` (`RUB_ID`, `LIV_ISBN`) VALUES
(1, '978-2-1004-8340-2'),
(1, '978-2-2121-1281-8'),
(1, '978-2-4090-1656-1'),
(1, '978-2-7460-2340-6'),
(1, '978-2-7460-4845-4'),
(1, '9782340016620'),
(1, '9782729851200'),
(2, '978-2-2121-3247-2'),
(2, '978-2-7460-0546-5'),
(2, '978-2-7460-0559-5'),
(2, '978-2-7460-5492-9'),
(2, '978-2-7460-5493-6'),
(3, '284-1-7746-1900-0'),
(3, '978-2-1007-6991-9'),
(3, '978-2-1007-8970-2'),
(3, '978-2-212-67565-8'),
(3, '978-2-2120-2008-3'),
(3, '978-2-2121-1916-9'),
(3, '978-2-2121-3247-2'),
(3, '978-2-409-01378-2'),
(3, '978-2-409-02780-2'),
(3, '978-2-409-02858-8'),
(3, '978-2-4090-0634-0'),
(3, '978-2-4090-1272-3'),
(3, '978-2-4090-1656-1'),
(3, '978-2-4090-1910-4'),
(3, '978-2-7460-3960-5'),
(3, '978-2-7460-4678-8'),
(3, '978-2-7460-4715-0'),
(3, '978-2-7460-8926-6'),
(3, '978-2-7460-9540-3'),
(3, '978-2-7460-9845-3'),
(3, '9782100822508'),
(3, '9782409029424'),
(4, '1491996692'),
(4, '284-1-7737-1000-1'),
(4, '284-1-7741-3000-9'),
(4, '284-1-7746-1900-0'),
(4, '978-2-1004-8340-2'),
(4, '978-2-1005-7866-5'),
(4, '978-2-1007-9038-8'),
(4, '978-2-212-67565-8'),
(4, '978-2-2121-1916-9'),
(4, '978-2-2121-2414-9'),
(4, '978-2-2121-4437-6'),
(4, '978-2-409-01378-2'),
(4, '978-2-409-02780-2'),
(4, '978-2-4090-1511-3'),
(4, '978-2-4090-1656-1'),
(4, '978-2-4090-1660-8'),
(4, '978-2-4090-2060-5'),
(4, '978-2-7460-0800-8'),
(4, '978-2-7460-0897-5'),
(4, '978-2-7460-2340-6'),
(4, '978-2-7460-4715-0'),
(4, '978-2-7460-5470-7'),
(4, '978-2-7460-8867-2'),
(4, '978-2-7460-8917-4'),
(4, '978-2-7460-9845-3'),
(4, '978-2-8417-7347-3'),
(4, '9782409029424'),
(4, '9782412053287'),
(4, '979-1-0900-8504-6'),
(5, '067-2-3260-8600-0'),
(5, '210-0-4911-5600-0'),
(5, '2412049645'),
(5, '2412061807'),
(5, '978-2-1005-7858-0'),
(5, '978-2-1007-8940-5'),
(5, '978-2-1008-0941-7'),
(5, '978-2-409-02858-8'),
(5, '978-2-409-02929-5'),
(5, '978-2-409-02930-1'),
(5, '978-2-409-02931-8'),
(5, '978-2-409-03079-6'),
(5, '978-2-409-03611-8'),
(5, '978-2-412-04658-6'),
(5, '978-2-7460-7386-9'),
(5, '978-2-7460-7644-0'),
(5, '978-2-7460-7775-1'),
(6, '210-0-0718-8900-0'),
(6, '2351410726'),
(6, '978-2-1007-8940-5'),
(6, '978-2-212-67949-6'),
(6, '978-2-409-03079-6'),
(6, '978-2-4090-1825-1'),
(6, '978-2-7440-6729-7'),
(6, '978-2-7460-0540-3'),
(7, '978-2-1007-8970-2'),
(8, '284-1-7741-3000-9'),
(8, '284-1-7746-1900-0'),
(8, '978-2-1004-8340-2'),
(8, '978-2-1005-7858-0'),
(8, '978-2-1005-7866-5'),
(8, '978-2-1007-9046-3'),
(8, '978-2-2120-2008-3'),
(8, '978-2-2121-4437-6'),
(8, '978-2-4090-0103-1'),
(8, '978-2-4090-0470-4'),
(8, '978-2-4090-0634-0'),
(8, '978-2-4090-1272-3'),
(8, '978-2-4090-1511-3'),
(8, '978-2-4090-1656-1'),
(8, '978-2-4090-1660-8'),
(8, '978-2-4090-1853-4'),
(8, '978-2-7460-0800-8'),
(8, '978-2-7460-0897-5'),
(8, '978-2-7460-2340-6'),
(8, '978-2-7460-4678-8'),
(8, '978-2-7460-4715-0'),
(8, '978-2-7460-8867-2'),
(8, '978-2-7460-8917-4'),
(8, '979-1-0900-8504-6'),
(9, '978-2-1007-9054-8'),
(9, '978-2-1008-0695-9'),
(9, '978-2-1008-0970-7'),
(9, '978-2-409-03138'),
(9, '978-2-409-03611-8'),
(9, '978-2-4090-0974-7'),
(9, '978-2-4090-2129-9'),
(9, '978-2-7440-6695-5'),
(9, '978-2-7440-6696-2'),
(9, '978-2-7460-9971-5'),
(9, 'MYPSEC5'),
(10, '978-2-1007-7936-9'),
(10, '978-2-409-02925-7'),
(10, '9782100819942'),
(10, '9782100822508'),
(10, '9782340060654'),
(11, '978-2-416-00139-0'),
(11, '9782100824342');

-- --------------------------------------------------------

--
-- Structure de la table `ecrire`
--

CREATE TABLE `ecrire` (
  `AUT_NUM` int(11) NOT NULL,
  `LIV_ISBN` char(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ecrire`
--

INSERT INTO `ecrire` (`AUT_NUM`, `LIV_ISBN`) VALUES
(8, '978-2-4090-1910-4'),
(9, '978-2-1007-6991-9'),
(10, '978-2-1007-6991-9'),
(11, '978-2-1007-9046-3'),
(12, '978-2-1007-8940-5'),
(13, '978-2-1007-8940-5'),
(14, '978-2-1007-8940-5'),
(15, '978-2-1007-8970-2'),
(18, '978-2-4090-1853-4'),
(18, '978-2-7460-8867-2'),
(19, '978-2-4090-1656-1'),
(20, '978-2-4090-0634-0'),
(21, '978-2-4090-1825-1'),
(22, '978-2-1007-9038-8'),
(23, '978-2-1007-9038-8'),
(23, '978-2-7460-9540-3'),
(24, '978-2-4090-1272-3'),
(25, '978-2-7460-0897-5'),
(26, '978-2-7460-0897-5'),
(27, '978-2-7460-0800-8'),
(27, '978-2-7460-8917-4'),
(28, '284-1-7741-3000-9'),
(29, '284-1-7741-3000-9'),
(30, '978-2-4090-1511-3'),
(31, '978-2-4090-1660-8'),
(32, '978-2-1005-7866-5'),
(33, '978-2-1005-7866-5'),
(34, '978-2-2121-1916-9'),
(35, '978-2-2121-4437-6'),
(36, '978-2-2121-4437-6'),
(37, '979-1-0900-8504-6'),
(38, '979-1-0900-8504-6'),
(39, '978-2-2121-1281-8'),
(40, '978-2-7460-2340-6'),
(40, '978-2-7460-4678-8'),
(41, '978-2-1004-8340-2'),
(42, '978-2-4090-0470-4'),
(43, '978-2-4090-0470-4'),
(44, '978-2-4090-0470-4'),
(45, '978-2-4090-0103-1'),
(46, '978-2-1005-7858-0'),
(47, '978-2-7460-8926-6'),
(49, '978-2-2121-3247-2'),
(50, '978-2-2121-3247-2'),
(51, '978-2-7460-9540-3'),
(52, '978-2-409-03079-6'),
(52, '978-2-7460-3960-5'),
(52, '978-2-7460-9540-3'),
(53, '978-2-7460-0546-5'),
(54, '978-2-7460-0559-5'),
(54, '978-2-7460-5492-9'),
(54, '978-2-7460-5493-6'),
(55, '978-2-7460-0559-5'),
(56, '978-2-8417-7347-3'),
(57, '978-2-8417-7347-3'),
(58, '284-1-7737-1000-1'),
(59, '978-2-7460-4715-0'),
(60, '978-2-4090-2060-5'),
(60, '978-2-7460-5470-7'),
(61, '978-2-2121-2414-9'),
(62, '978-2-7460-9845-3'),
(63, '284-1-7746-1900-0'),
(64, '978-2-7460-0540-3'),
(65, '978-2-7460-0540-3'),
(66, '978-2-7460-7386-9'),
(67, '210-0-0718-8900-0'),
(68, '067-2-3260-8600-0'),
(69, '067-2-3260-8600-0'),
(70, '978-2-2120-2008-3'),
(71, '210-0-4911-5600-0'),
(72, '210-0-4911-5600-0'),
(73, '210-0-4911-5600-0'),
(74, '978-2-7460-4845-4'),
(75, '978-2-7460-7644-0'),
(76, '978-2-7460-7644-0'),
(77, '978-2-7460-7775-1'),
(78, '978-2-1008-0970-7'),
(79, '978-2-1008-0970-7'),
(80, '978-2-1008-0970-7'),
(81, '978-2-1008-0695-9'),
(82, '978-2-1008-0695-9'),
(83, '978-2-1007-7936-9'),
(84, '978-2-1007-7936-9'),
(85, '978-2-1007-7936-9'),
(86, '978-2-1007-7936-9'),
(87, '978-2-7440-6729-7'),
(88, '978-2-1007-9054-8'),
(89, '978-2-4090-0974-7'),
(90, '978-2-4090-2129-9'),
(91, '978-2-7440-6695-5'),
(92, '978-2-7440-6696-2'),
(93, '978-2-7460-9971-5'),
(94, '978-2-4090-2060-5'),
(95, '978-2-1008-0941-7'),
(96, '978-2-409-02925-7'),
(97, '978-2-409-02780-2'),
(98, '978-2-412-04658-6'),
(99, '9782729851200'),
(100, '978-2-409-02929-5'),
(100, '978-2-409-02930-1'),
(100, '978-2-409-02931-8'),
(101, '978-2-409-02858-8'),
(102, '978-2-409-03079-6'),
(103, '9782412053287'),
(104, '2412049645'),
(105, '2412049645'),
(106, '2351410726'),
(107, '2412061807'),
(108, '978-2-416-00139-0'),
(109, 'MYPSEC5'),
(110, '9782340016620'),
(111, '9782340016620'),
(112, '9782340016620'),
(113, '9782340016620'),
(114, '9782409029424'),
(115, '9782100819942'),
(116, '9782100819942'),
(117, '978-2-212-67949-6'),
(118, '978-2-409-01378-2'),
(119, '1491996692'),
(120, '1491996692'),
(121, '978-2-212-67565-8'),
(122, '9782100824342'),
(123, '9782100822508'),
(124, '9782100822508'),
(125, '978-2-409-03138'),
(126, '978-2-409-03611-8'),
(127, '9782340060654');

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `EDIT_NOM` char(30) COLLATE utf8_bin NOT NULL,
  `EDIT_ADRWEB` char(100) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_NUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`EDIT_NOM`, `EDIT_ADRWEB`, `EDIT_NUM`) VALUES
('O\'REILLY', 'http://shop.oreilly.com/', 1),
('EYROLLES', 'www.eyrolles.com', 2),
('le livre du zéro', 'www.siteduzero.com', 3),
('First Interactive', 'www.firstinteractive.com', 4),
('ENI', 'www.editions-eni.fr', 5),
('Dunod', 'www.dunod.com', 7),
('PEARSON', 'www.pearson.fr', 8),
('Ellipses', 'https://www.editions-ellipses.fr', 9),
('', '', 10),
('H & K Eds', 'https://www.h-k.fr/', 11);

-- --------------------------------------------------------

--
-- Structure de la table `emprunter`
--

CREATE TABLE `emprunter` (
  `LIV_ISBN` char(20) COLLATE utf8_bin NOT NULL,
  `CLIENT_ID` int(11) NOT NULL,
  `EMP_ID` int(11) NOT NULL,
  `EMP_DATE` date NOT NULL,
  `EMP_ETAT` tinyint(1) NOT NULL,
  `EMP_DATE_R_MAX` date NOT NULL,
  `EMP_DATE_R_REEL` date DEFAULT NULL,
  `AVIS_EMPRUNTER` varchar(250) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `emprunter`
--

INSERT INTO `emprunter` (`LIV_ISBN`, `CLIENT_ID`, `EMP_ID`, `EMP_DATE`, `EMP_ETAT`, `EMP_DATE_R_MAX`, `EMP_DATE_R_REEL`, `AVIS_EMPRUNTER`) VALUES
('978-2-4090-1910-4', 13, 37, '2019-09-13', 1, '2019-10-13', '2019-09-18', 'Excellent livre pour découvrir le versionning'),
('978-2-4090-1272-3', 13, 38, '2019-09-13', 1, '2019-10-13', '2020-01-22', NULL),
('978-2-1005-7858-0', 13, 39, '2019-09-18', 1, '2019-10-18', '2020-09-16', NULL),
('978-2-7460-8917-4', 14, 40, '2019-09-19', 1, '2019-10-19', '2020-09-04', NULL),
('978-2-7460-4845-4', 15, 41, '2019-12-19', 1, '2020-01-18', '2020-09-09', NULL),
('978-2-1007-9054-8', 16, 42, '2020-09-23', 1, '2020-10-23', '2020-11-20', NULL),
('978-2-1008-0695-9', 16, 43, '2020-09-23', 1, '2020-10-23', '2020-11-20', NULL),
('978-2-4090-2129-9', 18, 44, '2020-10-16', 1, '2020-11-15', '2021-01-29', NULL),
('284-1-7741-3000-9', 21, 45, '2021-01-22', 1, '2021-02-21', '2021-01-22', NULL),
('978-2-7460-4678-8', 21, 46, '2021-01-29', 1, '2021-02-28', '2021-06-18', NULL),
('284-1-7741-3000-9', 13, 47, '2021-06-18', 1, '2021-07-18', '2021-06-18', NULL),
('9782100819942', 13, 48, '2021-07-03', 1, '2021-08-02', '2021-09-04', NULL),
('9782409029424', 13, 49, '2021-07-03', 1, '2021-08-02', '2022-07-06', NULL),
('978-2-409-02925-7', 13, 50, '2021-07-03', 1, '2021-08-02', '2021-09-04', NULL),
('9782412053287', 13, 51, '2021-07-03', 1, '2021-08-02', '2021-09-04', NULL),
('978-2-409-02780-2', 13, 52, '2021-07-03', 1, '2021-08-02', '2021-09-04', NULL),
('978-2-409-02858-8', 22, 53, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('2412049645', 22, 54, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-412-04658-6', 22, 55, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-212-67949-6', 22, 56, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-409-03079-6', 22, 57, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-4090-1825-1', 22, 58, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-416-00139-0', 23, 59, '2021-07-03', 0, '2021-08-02', NULL, NULL),
('978-2-409-01378-2', 13, 60, '2022-07-06', 0, '2022-08-05', NULL, NULL),
('1491996692', 13, 61, '2022-07-06', 0, '2022-08-05', NULL, NULL),
('978-2-212-67565-8', 13, 62, '2022-07-06', 0, '2022-08-05', NULL, NULL),
('978-2-1007-6991-9', 13, 63, '2022-07-06', 1, '2022-08-05', '2022-07-06', NULL),
('9782100822508', 13, 64, '2022-07-06', 0, '2022-08-05', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fileattente`
--

CREATE TABLE `fileattente` (
  `LIV_ISBN` char(20) COLLATE utf8_bin NOT NULL,
  `CLIENT_ID` int(11) NOT NULL,
  `NUM_ATTENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `fileattente`
--

INSERT INTO `fileattente` (`LIV_ISBN`, `CLIENT_ID`, `NUM_ATTENTE`) VALUES
('1491996692', 13, 0),
('978-2-212-67565-8', 13, 0),
('978-2-409-01378-2', 13, 0),
('9782100822508', 13, 0),
('2412049645', 22, 0),
('978-2-212-67949-6', 22, 0),
('978-2-409-02858-8', 22, 0),
('978-2-409-03079-6', 22, 0),
('978-2-4090-1825-1', 22, 0),
('978-2-412-04658-6', 22, 0),
('978-2-416-00139-0', 23, 0);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `LIV_ISBN` char(20) COLLATE utf8_bin NOT NULL,
  `COL_NUM` int(11) DEFAULT NULL,
  `EDIT_NUM` int(11) NOT NULL,
  `LIV_TITRE` varchar(200) COLLATE utf8_bin NOT NULL,
  `LIV_DATE` char(20) COLLATE utf8_bin DEFAULT NULL,
  `LIV_IMG` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LIV_RESUME` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  `LIV_ETAT` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `LIV_EMPRUNTER` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`LIV_ISBN`, `COL_NUM`, `EDIT_NUM`, `LIV_TITRE`, `LIV_DATE`, `LIV_IMG`, `LIV_RESUME`, `LIV_ETAT`, `LIV_EMPRUNTER`) VALUES
('067-2-3260-8600-0', 16, 8, 'Les Réseaux', '2007-07-18', 'les réseaux.PNG', 'Pourquoi et comment installer un réseau ? Comment le choisir, le protéger, le faire évoluer ? Mettre en place un réseau pour partager des ressources est aujourd\'hui à la portée de tous, à condition d\'avoir quelques notions fondamentales de la théorie des réseaux et de bien comprendre les principes de fonctionnement des composants matériel et logiciel qu\'ils nécessitent. Cet ouvrage vous offre une initiation globale et efficace au domaine des réseaux : il se concentre sur les concepts essentiels communs à tous et vous guidera rapidement pour concevoir, installer et administrer votre propre réseau. Cette initiation s\'articule en six grands thèmes :. Présentation générale : définition des réseaux, portrait des interactions entre les équipements matériels et les logiciels qui les constituent. Concepts fondamentaux des réseaux de données : la commutation de paquets, le modèle OSI, les protocoles réseau, l\'adressage IP, les interactions entre réseaux locaux (LAN) et réseaux globaux (WAN). Élaboration et mise en place d\'un réseau : évaluation de la charge, choix des matériels, installation et connexion à Internet. Principaux serveurs de réseaux locaux (Microsoft Windows Server, Linux, etc.) et notions incontournables pour le déploiement de services (TCP/IP, DHCP, DNS...). Administration d\'un réseau local : dépannage, sécurité, intégration de nouveaux équipements, etc. Tendances fortes de l\'évolution des réseaux : les réseaux locaux sans fil (WiFi, Bluetooth), l\'expansion du système d\'exploitation libre Linux, Internet et IPv6', 'neuf', 0),
('1491996692', 5, 1, 'Head First Kotlin: A Brain-friendly Guide', '2019-03-12', 'kotlin head first.jpg', 'What will you learn from this book? Head First Kotlin is a complete introduction to coding in Kotlin. This hands-on book helps you learn the Kotlin language with a unique method that goes beyond syntax and how-to manuals, and teaches you how to think like a great Kotlin developer. You ll learn everything from language fundamentals to collections, generics, lambdas, and higher-order functions. Along the way, you ll get to play with both object-oriented and functional programming. If you want to really understand Kotlin, this is the book for you. Why does this book look so different? Based on the latest research in cognitive science and learning theory, Head First Kotlin uses a visually rich format to engage your mind, rather than a text-heavy approach that puts you to sleep. Why waste your time struggling with new concepts? This multi-sensory learning experience is designed for the way your brain really works.', 'neuf', 1),
('210-0-0718-8900-0', 14, 7, 'Les Systèmes D\'exploitation - Unix, Linux Et Windows Xp Avec C Et Java', '2003-10-14', 'OS.PNG', 'Cet ouvrage présente de manière pédagogique et efficace les concepts fondamentaux des systèmes d\'exploitation, ainsi que leurs applications. Chaque chapitre pose d\'abord la problématique du thème traité, puis présente les concepts de base conduisant aux solutions théoriques, pour finir par des exercices corrigés, proposés avec de nombreux programmes testés en C et en Java, après une description des primitives du système Unix/Linux et des méthodes de la machine virtuelle Java qui illustrent la mise en oeuvre de ces concepts. De nombreux paradigmes de la programmation système sont traités de manière exhaustive. L\'ouvrage est très riche en programmes mettant en oeuvre les IPC d\'Unix pour traduire des algorithmes qui utilisent des sémaphores. Des exercices complètent chaque chapitre. Ils s\'appuient sur le concept de moniteur, celui-ci permettant d\'aboutir à des solutions en C et en Java, simples et élégantes. Cet ouvrage est destiné aux étudiants de deuxième et troisième cycles familiarisés avec l\'architecture des ordinateurs et possédant des notions d\'algorithmique et de programmation, notamment en C et en Java.', 'neuf', 0),
('210-0-4911-5600-0', 20, 7, 'Les VPN : Principes, conception et déploiement des réseaux privés virtuels', '2005-10-01', 'vpn.PNG', 'Ce livre sur les VPN (Virtual Private Network) s\'adresse à un public d\'informaticiens disposant de connaissances de base sur les réseaux et souhaitant acquérir des compétences pour mettre en place une solution de Réseau Privé Virtuel.\r\n\r\nIl a pour objectifs, d\'une part de décrire l\'essentiel du fonctionnement des principaux protocoles utilisés, d\'autre part de présenter des exemples pouvant être utilisés comme trame pour la mise en place de ses propres VPN dans un environnement Windows, Linux ou Macintosh. Ces exemples permettent l\'illustration concrète de la mise en place de VPN IPsec, SSL, PPTP, L2TP dans des configurations variées (site à site, poste à site, poste à poste).\r\n\r\nDans cette nouvelle édition l\'auteur a privilégié l\'utilisation des matériels et logiciels les plus communément utilisés. Ainsi les mises en œuvre proposées dans les différents chapitres se feront majoritairement sur du matériel Cisco et sur des systèmes Linux ou FreeBSD. Les situations à illustrer ont aussi été diversifiées, notamment en ajoutant des configurations en IPv6 et plus d\'exemples utilisant des certificats. Cette nouvelle édition tient compte des dernières évolutions protocolaires et des versions les plus récentes de Windows, Linux et des firmwares des boîtiers.\r\n\r\nL\'auteur propose régulièrement des tests pour valider les configurations mises en place. Il appartient à chacun de puiser dans ce livre les informations qui lui conviennent et d\'adapter l\'installation et les réglages à ses propres contraintes et exigences en matière de sécurisation des accès réseaux de l\'entreprise.\r\n\r\nUn chapitre entier fournit au lecteur des pistes pour comprendre et résoudre les problèmes qui, tôt ou tard, surviennent dans la mise en œuvre et l\'exploitation d\'un VPN.', 'neuf', 0),
('2351410726', 28, 11, 'La ligne de commande par l\\\'exemple', '2013-06-01', 'Ligne-de-commande-par-l-exemple.jpg', 'Lorsqu\\\'on se représente un bidouilleur informatique génial, comme celui qui sauve la situation dans un film à grand spectacle, ou celui qui crée le chaos au début du même film, on l\\\'imagine toujours en train de taper des commandes sur son clavier, comme s\\\'il parlait directe-ment à la machine dans sa langue. Ce cliché n\\\'est pas sans fondement: la ligne de commande est plus expressive, versatile, rapide, en un mot plus efficace, que les menus aux options prévues d\\\'avance, donc limitées. Cet ouvrage très progressif vous aidera à : Faire vos premiers pas. Trouver et mémoriser les commandes Enchaîner plusieurs commandes Ecrire des scripts shell. Vous y trouverez aussi 430 exemples réels, et des conseils qui vous feront économiser beaucoup de temps. Avec ses 60 tableaux récapitulatifs, il deviendra votre livre de référence. ', 'neuf', 0),
('2412049645', 25, 1, 'Kubernetes Guide pratique - L\'art de construire des applications en conteneurs', '2019-12-12', 'Kubernetes-Guide-pratique.jpg', 'Le moyen le plus efficace pour déployer des solutions de containeurs dans une architecture virtuelle\r\n\r\nKubernetes est une plateforme open source d\\\'orchestration de containers créé par Google. Les containers sont une méthode de virtualisation de système d\\\'exploitation permettant de lancer une application et ses dépendances à travers un ensemble de processus isolés du reste du système. Cette méthode permet d\\\'assurer le déploiement rapide et stable des applications dans n\\\'importe quel environnement informatique.\r\nGoogle déploie des milliers d\\\'applications sur containers quotidiennement.', 'neuf', 1),
('2412061807', 29, 4, 'Les Réseaux Pour les Nuls, 13e', '2021-03-11', 'Les-reseaux-Pour-les-Nuls-13e.jpg', 'Un livre incontournable pour créer un réseau domestique ou un réseau d\\\'entreprise\r\n\r\nAujourd\\\'hui, que l\\\'on parle des entreprises ou du monde de l\\\'Internet, la communication passe par l\\\'utilisation des réseaux informatiques. Du réseau personnel, que l\\\'on installe chez soi en connectant 2 ou 3 ordinateurs, au réseau d\\\'entreprise avec connexion serveur, ce livre vous donne toutes les informations pour choisir le réseau qu\\\'il vous faut et des détails sur la manière de l\\\'administrer. Vous saurez tout sur les environnements Linux, Windows Server et Windows XP, 7, 8 et 10.\r\nEntièrement mis à jour sur les dernières versions des Systèmes Windows et Linux.', 'neuf', 0),
('284-1-7737-1000-1', 4, 1, 'Java En Concentré - Manuel De Référence Pour Java', '2006-02-23', 'java cc.PNG', 'Java in a Nutsbell fait peau neuve et devient Java en concentré. Les éléments qui ont fait le succès des précédentes éditions sont toujours là : découpage thématique, nombreux exemples et couverture exhaustive des classes des paquetages fondamentaux, avec en prime les nouveautés apportées par Java 5.0 et l\'inventaire des outils de développement disponibles. Le must des manuels de référence. Cet ouvrage est avant tout un guide de référence, mais il servira également de tutoriel pour les programmeurs avertis qui souhaitent découvrir Java rapidement. La partie \" tutoriel N donne aux développeurs tous les éléments pour comprendre ce qui fait la spécificité d\'un programme écrit en java, depuis la syntaxe du langage jusqu\'aux outils de développement java, en passant par les différents mécanismes de sécurité. Les notions clés sont présentées sans fioriture, mais illustrées par des exemples réalistes. Un chapitre entier inventorie les nouveautés introduites dans la version 5.0 du langage et notamment : les types génériques . les annotations . les types énumérés . les conversions boxing et unboxing . l\'instruction for/in . les méthodes varargs . l\'importation de membres statiques. La partie \" référence \" passe en revue les classes des paquetages essentiels de java et explique comment mener à bien des tâches courantes comme la manipulation de texte, le traitement de données au format XML, le recours aux expressions régulières ou la gestion des entrées/sorties. On trouvera une description des paquetages java. io, java.lang, java.matb, java.net, java.nio, java.security, java.text, java.util, java.crypto, javax.net,jâvax.net.ssl javax.security.autb, javax.xml, org.w3c.dom et org.xml.sax. Cet ouvrage convient à des progammeurs aguerris. David Flanagan est diplômé en informatique du MIT (Massachusetts Institute of Technology). Programmeur consultant, spécialiste de java et de JavaScript, il est l\'auteur de nombreux livres sur Java.\r\n\r\nSommaire:\r\n[\"La syntaxe Java\",\"La programmation orientée objet en Java\",\"Nouveautés du langage Java 5,0\",\"La plate-forme Java\",\"La sécurité en Java\",\"Conventions de programmation et de documentation en Java\",\"Outils de développement Java\",\"Guide de référence\"]', 'correct', 0),
('284-1-7741-3000-9', 5, 1, 'HTML avec CSS et XHTML', '2006-09-01', 'tête la 1ère html CSS.PNG', 'Lassé de ne comprendre les ouvrages techniques qu\'après être devenu un expert en la matière ? Il est alors temps d\'ouvrir ce livre ! HTML avec CSS & XHTML-Tête la première est un guide d\'apprentissage moderne et complet pour la création de pages Web vraiment professionnelles. Vous apprendrez non seulement le fonctionnement de HTML, mais également de CSS afin de maîtriser le look de vos pages. Apprendre tout cela au travers de jeux, en voyageant sur un Segway ou en ouvrant un Bar, cela vous tente ?\r\nSi vous connaissez la collection Tête la première, vous savez à quoi vous attendre ; des livres visuels conçus pour réellement apprendre. Tout ce qui augmente et diversifie votre activité cérébrale y est mis en œuvre. Sous des dehors ludiques et amusants, cet ouvrage rien demeure pas moins un guide d\'apprentissage. L\'approche des auteurs est axée sur la pédagogie. Les concepts s\'appuient sur des images et des exercices qui stimulent le cerveau. Jeux, images, interviews, mots croisés sont autant de moyens de vous amener à concevoir des pages Web modernes.\r\nDès le premier chapitre, vous saurez comment créer une page. Ensuite, vous créerez le site du bar Tête la première et celui du journal de Marc : Vous enrichirez ces sites pas à pas, de liens, d\'images, de styles, etc. Les médias, les styles, les formulaires, les tableaux, l\'interactivité des pages n\'auront bientôt plus de secrets pour vous. Si vous souhaitez savoir pourquoi votre chef a tout faux en ce qui concerne les tableaux et quoi lui proposer, alors...', 'correct', 1),
('284-1-7746-1900-0', 4, 1, 'Ajax Pour Java', '2007-05-10', 'ajax pour java.PNG', 'Comment rendre ses applications web en Java plus dynamiques et réactives ? En mettant de l\'Ajax dedans bien sûr ! Grâce aux fonctionnalités typiques d\'Ajax, les applications web peuvent s\'enrichir de listes de suggestions ou de glisser-déposer de fenêtres qui faciliteront l\'accès aux données en temps réel. Ajax pour Java est un guide qui aidera les développeurs Java à se familiariser avec Ajax et les technologies qui s\'y rattachent (Struts, Google Web Toolkit, JavaScript, XMLHttpRequest ou encore JSON). Il leur apprendra, par exemple, comment créer des applications s\'appuyant sur JavaScript côté-client, lancer des requêtes depuis un servlet Java et en afficher les résultats sans devoir rafraîchir toute la page web, mettre en ¿uvre une stratégie client/serveur à base de données brutes avec XML et JSON pour produire des ensembles de données complexes. Il développe entre autres les aspects suivants : Le glisser-déposer avec les bibliothèques JavaScript Prototype, script.aculo.us . La création d\'un nuage de tags . La construction d\'un champ de suggestions . L\'intégration d\'Ajax dans des applications JSP et JSF . L\'utilisation de Struts dans Ajax avec DWR . L\'exploitation de Google Web Toolkit pour compiler les applications écrites en Java en HTML et JavaScript . La mise en place de services au client avec GWT. À l\'ère du Web 2.0, Ajax pour java s\'adresse aux développeurs Java souhaitant doper leurs applications en ligne avec Ajax en leur fournissant souplesse, interactivité et réactivité.', 'neuf', 0),
('978-2-1004-8340-2', 14, 7, 'Bases de donnée et Internet avec PHP et mySQL', '2004-09-01', 'BD et internet.PNG', 'Comment programmer des applications client/serveur pour le Web ? Comment créer et gérer une base de données sur Internet ? Cet ouvrage répond à ces deux questions de manière pédagogique et pratique. Il introduit progressivement toutes les notions nécessaires au développement d\'applications et de bases de données sur Internet. De nombreux exemples et applications ponctuent ce livre. Des exercices corrigés accompagnent chaque chapitre, dont le dernier est consacré à une étude de cas complète. Ce livre s\'adresse aux étudiants possédant déjà les connaissances de base en algorithmique et programmation. II s\'articule en trois parties. Il débute par l\'apprentissage de HTML et du langage PHP. Cela permet de présenter les fondements de la programmation client/serveur. Puis, l\'ouvrage présente de façon exhaustive la communication client/serveur avec PHP. Enfin, il détaille les bases de données relationnelles. Et il se termine par la génération dynamique de sites web avec PHP et le SGBD (Système de gestion de bases de données) MySQL.', 'neuf', 0),
('978-2-1005-7858-0', 15, 7, 'Guide pratique des réseaux sociaux - 2e édition Twitter, Facebook...des outils pour communiquer', '2012-08-01', 'guide pratique des réseaux sociaux.PNG', 'Les réseaux sociaux, dont Facebook et Twitter sont les sites web les plus visités au monde ! Leur utilisation va bien au delà de la seule sphère privée : tout professionnel doit les connaître, savoir les utiliser dans le cadre de son activité et tirer profit de toutes les opportunités qu’ils offrent. Que vous soyez chef d’entreprise, salarié, responsable com, chercheur d’emploi, membre d’une association, artisan, artiste vous devez savoir quel site utiliser en priorité, animer votre réseau 24h/24, lancer une campagne ou un événement et anticiper l’avenir ! Cette deuxième édition est enrichie d’exemples, de nouveaux réseaux (Google +...), et présente toujours l’utilisation qui peut être faite de ces réseaux dans le cadre de votre activité.\r\nIntroduction. Chapitre 1, Un web communautaire. Chapitre 2, Présentez votre activité. Chapitre 3, Quels sites choisir si je suis...? (PME, employé, recruteur ou chercheur d\'emploi, artisan, association, profession libérale, profession artistique,  politique, sportif...). Chapitre 4, E-marketing ? Non, social marketing ! Chapitre 5, Votre campagne online. Chapitre 6, Enrichissez l\'expérience de votre visiteur. Annexe : logiciels, programmes et applications nécessaires. Lexique des réseaux sociaux', 'neuf', 1),
('978-2-1005-7866-5', 7, 7, 'CSS3 Le design web moderne', '2012-08-15', 'CSS3.PNG', 'Les CSS (Cascading Style Sheet) constituent un outil informatique comparable à une feuille de styles qui sert à décrire la présentation des documents HTML et XML pour des pages web\r\nLe parti pris de cet ouvrage qui s\'adresse aux développeurs est de les aider à maîtriser la dimension \"design\" qu\'apporte les CCS3. Les chapitres successifs présentent les nouveautés de CSS version 3 et en facilitent la prise en main grâce à des exemples concrets.', 'correct', 0),
('978-2-1007-6991-9', 7, 7, 'Pratique des tests logiciels', '2017-09-01', 'Pratique des tests logiciels.PNG', 'Pour qu\'un logiciel remplisse correctement les objectifs pour lesquels il a été conçu, il doit être soumis à différentes séries de tests tout au long de sa conception et de sa mise en service (tests unitaires, tests fonctionnels, tests d\'intégration...). Ce livre a un triple objectif :\r\n- Tout d\'abord il vise à donner aux futurs développeurs (étudiants, élèves ingénieurs...) et chefs de projet les bases indispensables pour mener des tests tout au long du cycle de vie du logiciel.\r\n- Ensuite il cherche à donner aux équipes de testeurs une référence et des méthodes.\r\n- Enfin il prépare au passage de la certification ISTQB/CFTL du métier de testeur.\r\n\r\nSOMMAIRE :\r\nRappels de mathématiques. Logique propositionnelle. Graphes et graphes orientés. La problématique des tests. De la difficulté de concevoir des tests. Tester efficacement : les différentes stratégies. Concevoir efficacement des tests grâce aux spécifications. Concevoir efficacement des tests grâce à la structure du code. Tester à chaque niveau du cycle de vie. Optimiser les tests d\'intégration. Tester les systèmes \"multi-threadés\". Tester des codes à objets. Organiser et gérer les campagnes de tests. ', 'neuf', 1),
('978-2-1007-7936-9', 1, 1, 'Organisez vos idées avec le Mind Mapping - 4e édition.', '2019-02-01', 'mind-mapping.jpeg', 'Cet ouvrage est destiné à ceux qui veulent travailler moins et avoir de meilleures performances. Vous y découvrirez un outil simple et puissant, la carte heuristique (Mind Map®) que vous aurez plaisir à utiliser dans vos activités quotidiennes : prises de notes, animation de réunion, gestion du temps, conduite de projets, prise de décision, innovation…', '', 0),
('978-2-1007-8940-5', 7, 7, 'Kubernetes\r\nMaîtrisez l\'orchestrateur des infrastructures du futur', '2019-02-01', 'kubernetes.PNG', 'Kubernetes a pour objectif de simplifier radicalement les tâches de création, de déploiement et de maintenance des systèmes distribués.\r\nCe livre a été rédigé pour vous aider à atteindre de meilleurs niveaux de vitesse, de fiabilité et d’efficacité avec vos infrastructures.\r\nLes premiers chapitres décrivent les avantages de Kubernetes sans entrer dans les détails. Ils expliquent les notions de conteneurs et de développement d’applications dans des conteneurs, ainsi que la procédure de déploiement de Kubernetes.', 'neuf', 0),
('978-2-1007-8970-2', 1, 1, 'Docker - 2e édition Pratique des architectures à base de conteneurs', '2019-02-01', 'docker.PNG', 'Cet ouvrage s\'adresse aux développeurs, aux architectes  logiciels, aux administrateurs système, aux responsables  op&eacute;rationnels des d&eacute;ploiements qui sont impliqu&eacute;s dans la  livraison de nouvelles applications.\r\nD&eacute;ployer du code en production a longtemps &eacute;t&eacute; une source de  probl&egrave;mes auxquels la virtualisation avait commenc&eacute; &agrave; apporter  des solutions. Aujourd&rsquo;hui Docker et les environnements  d&rsquo;ex&eacute;cution comme Kubernetes proposent des r&eacute;ponses  nettement plus satisfaisantes.\r\nCet ouvrage a plusieurs objectifs :\r\n&bull; vous expliquer le concept de conteneur et d&rsquo;architecture &agrave; base  de conteneurs (Kubernetes, DCOS, CaaS, Mesos, Swarm, etc.) ;\r\n&bull; vous apprendre &agrave; installer Docker et &agrave; le configurer sur un  poste de travail ou dans un environnement serveur ;\r\n&bull; vous montrer comment utiliser Docker (cr&eacute;ation d&rsquo;image,  int&eacute;gration continue, persistance, r&eacute;seau, supervision, etc.)  pour supporter l&rsquo;impl&eacute;mentation et le d&eacute;ploiement d&rsquo;une  application distribu&eacute;e r&eacute;aliste ;\r\n&bull; vous fournir une r&eacute;f&eacute;rence compl&egrave;te associ&eacute;e &agrave; des exemples  didactiques et r&eacute;utilisables d&rsquo;architectures multiprocessus  utilisant Docker, Compose, Swarm et Kubernetes.\r\n', '', 0),
('978-2-1007-9038-8', 10, 7, 'Aide-mémoire - Java - 5e édition', '2019-07-01', 'java.PNG', 'Cet aide-mémoire décrit de manière pédagogique et pratique les fonctionnalités du langage Java. Il intègre les enrichissements apportés par les versions 9 à 11. Toutes les facettes du langage y sont ainsi abordées :\r\n• le modèle objet : classes, interfaces et réflexion,\r\n•  le  contrôle de l’exécution : exceptions, threads et la nouvelle classe Process ;\r\n• les mécanismes d’abstraction : généricité, fonctions anonymes et inférence de type ;\r\n• l’environnement de programmation : modules et API.\r\nChaque notion est illustrée d’exemples ou de cas pratiques.\r\nAucune connaissance en Java n’est pré-requise. Vous pouvez donc vous appuyer sur cet ouvrage pour apprendre Java, acquérir de bons réflexes de programmation et développer vos futurs projets !', 'neuf', 0),
('978-2-1007-9046-3', 7, 7, 'Cloud et transformation digitale', '2019-02-01', 'cloud et transformation digitale.PNG', 'Cet ouvrage s’adresse à tous ceux qui souhaitent comprendre les concepts et les enjeux du cloud computing qu’ils soient informaticiens (chefs de projet, architectes, développeurs, équipes d’exploitation) experts métiers, ou responsables de maîtrises d’ouvrage...\r\n\r\n    La première partie introduit les concepts du cloud computing, des SaaS, PaaS, et IaaS, du SI hybride.\r\n    La deuxième partie aborde les problématiques de sécurité et de confiance. Elle analyse les risques du cloud pour l’entreprise. Elle aborde successivement les points de vue de la direction, des utilisateurs et des informaticiens.\r\n    La troisième partie décrit les différents modes de gouvernance du cloud. Elle présente l’organisation à mettre en place et décrit les mécanismes d’intégration au SI.\r\n    La quatrième partie propose un panorama des offres SaaS disponibles.\r\n    La cinquième partie aborde les aspects techniques. Elle introduit les architectures sous-jacentes aux plateformes IaaS et PaaS. Elle décrit les principales plateformes du marché.\r\n\r\nCette cinquième édition apporte des mises à jour sur le RGPD, les certifications et la sécurité prédictive, le LeanStartup, DevOps et l\'infrastructure as code, les technologies Javascript des interfaces HTML5, les environnements d\'exécution serverless et Kubernetes, l\'architecture des méga-datacenters et les architectures hyper-convergées.', 'neuf', 0),
('978-2-1007-9054-8', 21, 7, 'Cybersécurité - 6e édition Analyser les risques, mettre en oeuvre les solutions', '2019-09-01', 'cybersecurite-analyser-risques.jpeg', 'Le but de cet ouvrage est de fournir une vision globale des problématiques de sécurité et de criminalité informatique. En montrant que les technologies de l\'information présentent des failles susceptibles d\'être exploitées à des fins criminelles, l\'auteur explique les enjeux d\'une maîtrise rigoureuse et méthodique de la sécurité des systèmes et des réseaux de communication. Une centaine d\'exercices corrigés font de cet ouvrage un outil d\'apprentissage concret et efficace.\r\nCette 6e édition s\'enrichit de mises à jour sur les évolutions des protocoles de sécurité et sur les nouveaux modes de cyberattaques. Elle comporte en outre de nouveaux exercices. Sécurité informatique et cybersécurité. Cybercriminalité et sécurité informatique. Gouvernance et stratégie de sécurité. Politique de sécurité. La sécurité par le chiffrement. La sécurité des infrastructures de télécommunication. La sécurité des réseaux sans fil. La sécurité par les systèmes par pare-feu et la détection d\'incidents. La sécurité des applications et des contenus. La sécurité par la gestion de réseaux. Glossaire.', 'neuf', 1),
('978-2-1008-0695-9', 22, 7, 'Tout sur la sécurité informatique - 5e édition', '2020-03-01', 'securite-informatique.jpg', 'Cet ouvrage est consacré à la sécurité des équipements  informatiques : les risques de hacking, virus, spams et  autres malwares, et les solutions pour y remédier.\r\nCette nouvelle édition mise à jour et enrichie aborde  notamment :\r\n• les vulnérabilités des processeurs,\r\n• la sécurité des nouveaux systèmes d’authentification,\r\n• les nouvelles techniques d’attaque et de défense,\r\n• la sécurité des réseaux sans fil,\r\n• les institutions internationales et françaises de lutte  contre le cybercrime,\r\n• les méthodes d’évaluation du risque informatique  en entreprise.\r\nUn répertoire commenté d’adresses web incontournables  en matière de sécurité complète l’ouvrage. Les menaces informatiques. Les malwares. Les techniques d\'attaque. La cryptographie. Les protocoles sécurisés. Les dispositifs de protection. L\'authentification. La sûreté de fonctionnement. La sécurité des applications web. La sécurité des réseaux sans fil. La sécurité des ordinateurs portables. La sécurité des smartphones et tablettes. La sécurité et le système d\'information. La législation. Structures et institutions  de la sécurité informatique.  Les bonnes adresses de la sécurité.', 'neuf', 1),
('978-2-1008-0941-7', 10, 7, 'Aide-mémoire - Réseaux et télécoms - 2e édition', '2020-04-01', 'réseaux-télécoms.jpg', 'Notions de base sur les réseaux. Éléments physiques de la liaison de données. Les protocoles de liaison. Le niveau réseau. Les protocoles de transport : TCP et UDP. TCP/IP, utilitaires et applications. Les réseaux locaux. Les réseaux d\'opérateurs. Interconnexion des réseaux et la qualité de service. La téléphonie sur IP. La sécurité des systèmes d’informations.', '', 0),
('978-2-1008-0970-7', 21, 7, 'Architectures de sécurité pour internet - 2e édition', '2020-04-01', 'architecture-securité.jpg', 'La sécurité sur Internet passe en partie par la sécurité des protocoles de communication et par les solutions de cryptographie. \r\nCe manuel d\'apprentissage des principes et algorithmes de sécurisation a pour objectif de fournir une approche compréhensible des techniques mises en oeuvre dans les réseaux de communication.\r\nIl présente les dernières recommandations nationales (RGS) et européennes (i-GAS) ainsi que de nombreuses applications comme la gestion de la sécurité des navigateurs Internet et des systèmes d\'exploitation ou plus récemment des systèmes à base de blockchains (comme les monnaies électroniques de type bitcoin).\r\nLa partie cours est complétée par 50 exercices corrigés. Motivations pour une architecture asymétrique. Eléments essentiels. Architectures PKI. Architecture hiérarchique simple : PKIX. Architecture hiérarchique maillée et certifications croisées. Extensions de la confiance dans le modèle hiérarchique embarqué. Architecture non hiérarchique : PGP. Autres architectures. Cadre réglementaire des services, politique de certification et déploiement. Applications et déploiement. Authentification par PKI et échange de clefs. Protocoles de communications sécurisées. Evaluation de la sécurité. Corrigés des exercices.', 'neuf', 0),
('978-2-212-67565-8', 30, 2, 'Uml 2.5 par la pratique', '2018-04-05', 'uml 2 5 par la pratique.jpg', 'Enfin un ouvrage détaillant tous les principes d\\\'une modélisation efficace avec UML ! En mettant l\\\'accent sur les diagrammes les plus importants (cas d\\\'utilisation, séquence, classes, états, activité), l\\\'auteur se concentre sur les principaux concepts et fournit des explications claires et pragmatiques applicables à vos projets. De nombreux conseils émaillent les multiples exercices proposés afin de faciliter l\\\'assimilation du langage UML.\r\n\r\nHuitième édition augmentée : un cours pratique magistral sur UML 2.5\r\n\r\nCette huitième édition mise à jour et augmentée de l\\\'ouvrage UML par la pratique constitue un support de cours exemplaire sur UML 2.5. Il traite les axes fonctionnel, statique et dynamique de la modélisation UML par des études de cas et des exercices corrigés donnant les bases d\\\'une démarche méthodique.\r\n\r\nChaque choix de modélisation est minutieusement commenté ; des conseils issus de l\\\'expérience de l\\\'auteur ainsi que de nombreux avis d\\\'experts sont donnés. En fin d\\\'ouvrage, un glossaire reprend les définitions des principaux concepts étudiés.\r\n\r\nLes nouveaux concepts et diagrammes UML 2 sont traités en détail : diagramme de structure composite, nouveautés du diagramme d\\\'activité et du diagramme de séquence, etc., en tenant compte des méthodes de développement agiles. Enfin, une étude de cas complète illustre le processus de développement itératif depuis la modélisation métier jusqu\\\'à la conception détaillée en Java et C#.', 'neuf', 1),
('978-2-212-67949-6', 19, 2, 'Administration Linux par la pratique - Tome 2  Configurer les services les plus courants', '2020-06-18', 'Administration linux par la pratique T2.jpg', '\r\nConfigurer les services les plus courants\r\n\r\nDans la continuité du premier tome, \\\"Les fondamentaux de l\\\'administration système\\\", ce guide pratique et ludique répond à toutes les questions que vous vous posez sur la configuration des services les plus répandus sous Linux : authentification SSH, serveur DHCP serveur DNS, synchronisation NTR serveur de bases de données, serveur web, serveur mail, serveur de fichiers, serveur d\\\'annuaire, serveur proxy, etc.\r\n\r\nIl traite également de plusieurs aspects utiles au quotidien et souvent négligés comme le peaufinage de votre environnement de travail ou l\\\'installation de Linux sur du matériel spécifique comme les routerboards ou les serveurs dédiés dans les datacenters. Vous apprenez à héberger les applications web les plus populaires comme WordPress, Dolibarr, OwnCloud et Roundcube. Sans oublier les réflexes indispensables à adopter face à un serveur qui ne répond plus.\r\n\r\nChaque chapitre est organisé sous forme d\\\'atelier pratique. Conçu étape par étape, ce livre suit une progression pédagogique cohérente, en détaillant tout ce qu\\\'il faut savoir pour configurer un serveur Linux immédiatement utilisable en production.\r\nUn focus sur la sécurité des serveurs\r\n\r\nLa sécurité des configurations occupe une place centrale dès les premiers chapitres : configuration du pare-feu, protection contre les attaques en force brute, utilisation de SELinux (Security Enhanced Linux) en mode renforcé, audits de sécurité, lutte contre le spam, etc.\r\nÀ qui s\\\'adresse cet ouvrage ?\r\n\r\n    Aux administrateurs de serveurs qui souhaitent maîtriser leurs systèmes Linux au quotidien.\r\n    Aux adeptes de Linux désireux d\\\'approfondir leurs connaissances.\r\n    Aux professionnels qui préparent la certification RHCSA ou RHCE.', 'neuf', 1),
('978-2-2120-2008-3', 19, 2, 'Applications iPhone avec HTML, CSS et JavaScript', '2011-07-01', 'iphone.PNG', 'Vous maîtrisez HTML, CSS et JavaScript ? Nul besoin de vous lancer dans l\'apprentissage d\'Objective-C, vous disposez déjà de tous les outils nécessaires pour développer vos propres applications iPhone ! Écrit par un développeur d\'applications web et mobiles, cet ouvrage pratique vous décrit précisément comment exploiter les technologies web open source afin de concevoir des applications sur la plate-forme de votre choix, pour ensuite convertir votre produit en une application iPhone native grâce au framework libre PhoneGap.\r\nAu fil d\'une étude de cas concrète visant à convertir une application web en application native pour l\'iPhone, vous découvrirez comment : - exploiter les outils que vous maîtrisez déjà pour concevoir des applications iPhone; - donner à un site web existant l\'apparence et le comportement d\'une application iPhone; - utiliser la bibliothèque JavaScript jQTouch pour ajouter des animations à votre application web ; - convertir votre produit en une application iPhone grâce à PhoneGap ; - tirer parti du stockage côté client et proposer des applications qui fonctionnent quand l\'iPhone est en mode hors connexion ; - utiliser JavaScript pour accéder à des fonctionnalités avancées de l\'iPhone, telles que l\'accéléromètre, la géolocatisation, le vibreur  - envoyer vos applications à l\'AppleStore avec Xcode. Sur le site www.editions-eyrolles.com : téléchargez le code source des exemples du livre.', 'neuf', 0),
('978-2-2121-1281-8', 12, 2, 'Bases de données', '2003-04-10', 'bases de données.PNG', 'Les bases de données jouent un rôle sans cesse croissant dans les systèmes d\'information d\'entreprise, qu\'il s\'agisse d\'applications de gestion traditionnelles (comptabilité, ventes, décisionnel...) ou d\'applications intranet, e-commerce ou de gestion de la relation client. Comprendre les principes des bases de données, les langages d\'interrogation et de mise à jour, les techniques d\'optimisation et de contrôle des requêtes, les méthodes de conception et la gestion des transactions devient une nécessité pour tous les professionnels et futurs professionnels de l\'informatique.\r\n\r\nComplet et didactique, l\'ouvrage se caractérise par des définitions précises des concepts, une approche éclairante des algorithmes et méthodes, de nombreux exemples d\'application, une bibliographie commentée en fin de chaque chapitre et un recueil d\'exercices en fin d\'ouvrage. Il traite aussi bien des bases de données relationnelles, que des bases de données objet et objet-relationnelles.\r\n', 'neuf', 0),
('978-2-2121-1916-9', 1, 2, 'JAVA 1.4 et 5.0', '2006-03-02', 'java 1.4.PNG', 'À travers la réalisation d\'un forum de discussion et plus de 50 études de cas, ce cahier montre à tous les programmeurs comment exploiter la richesse de Java pour créer sans mal des applications fiables et évolutives.\r\n\r\nCe cahier met à la portée de tous les développeurs les meilleures pratiques Java, depuis l\'installation des outils de développement et la création d\'un premier objet jusqu\'à la programmation multitâche, en passant par l\'accès aux bases de données, la conception d\'interfaces utilisateur, la gestion de formulaires, de fichiers, la maîtrise des subtilités objet..', 'correct', 0),
('978-2-2121-2414-9', 12, 2, 'Apprendre Le C++', '2008-10-02', 'C++.PNG', 'La référence des étudiants et des programmeurs en C++', 'neuf', 0),
('978-2-2121-3247-2', 12, 2, 'Programmation OpenOffice.org et LibreOffice Macros OOoBASIC et API', '2011-04-21', 'programmation OOO.PNG', 'Suites bureautiques libres, gratuites et multi-plates-formes, OpenOffice.org et LibreOffice comportent plusieurs langages de script dont OOoBasic. Elles sont également munies d\'une API permettant de manipuler ses objets. Automatisables et extensibles, elles s\'intègrent parfaitement au système d\'information de l\'entreprise. Le livre de référence sur la programmation OpenOffice.org et LibreOffice ! Écrit par deux contributeurs majeurs de la communauté francophone, ce livre est une référence incontournable sur le puissant langage de macros OOoBASIC et sur l\'API d\'OpenOffice.org et de LibreOffice. Il explique comment utiliser l\'interface utilisateur liée aux macros et aux scripts afin d\'automatiser des tâches répétitives, mais aussi comment tirer parti du langage de OOoBasic pour manipuler des documents, créer des boîtes de dialogue et des formulaires, exploiter des bases de données externes ou intégrées, intercepter des événements. Chaque point de l\'API est décrit grâce à de nombreux exemples de macros et de routines réutilisables. A qui s\'adresse cet ouvrage ? Aux utilisateurs d\'OpenOffice.org et LibreOffice souhaitant automatiser et étendre leur suite bureautique ; à ceux qui migrent vers OpenOffice.org ou LibreOffice et souhaitent recréer des macros existantes ; aux développeurs d\'applications d\'entreprise et services informatiques ayant à intégrer la suite OpenOffice.org et LibreOffice ; aux étudiants et à tous ceux qui souhaitent s\'initier à l\'API d\'OpenOffice.org et LibreOffice et au langage de macros OOoBASIC.', 'correct', 0),
('978-2-2121-4437-6', 4, 2, 'HTML5 pour les web designers', '2016-07-08', 'html5 pour les web designers.PNG', 'HTML5 est la spécification HTML la plus longue jamais écrite. C\'est également la plus puissante et, en un sens, la plus déroutante. Que doivent en retenir les web designers ? Comment exploiter toute sa puissance dans les navigateurs actuels ?\r\n\r\nSyntaxe, éléments mis à jour, images responsive, vidéo, microformats, microdonnées... exploitez au mieux cette spécification en constante évolution en suivant les précieux conseils de Rachel Andrew et Jeremy Keith, qui, avec style et esprit, vont droit à l\'essentiel dans ce guide brillant et divertissant.\r\n\r\nLa mise à jour présente les nouvelles fonctionnalités HTML5 et développe celles qui étaient peu prises en charge il y a 6 ans, aux débuts d\'HTML5, notamment tout ce qui a trait à la vidéo.', 'neuf', 0),
('978-2-409-01378-2', 27, 5, 'Laravel Un framework efficace pour développer vos applications PHP', '2018-05-01', 'laravel-un-framework-efficace.jpg', 'Ce livre s\\\'adresse aux développeuses et développeurs qui souhaitent découvrir Laravel et acquérir des bases solides pour être autonomes dans le développement d\\\'applications avec ce framework. Pour l\\\'apprécier, il est conseillé d\\\'avoir un minimum de connaissances sur les concepts de base du langage PHP ou d\\\'un autre langage orienté objet.\r\n\r\nL\\\'auteur commence par détailler la préparation de l\\\'environnement de développement. Ensuite, les éléments clés du développement avec Laravel sont étudiés et agrémentés d\\\'exemples : la création de routes, l\\\'utilisation des vues, le mapping objet-relationnel avec l\\\'ORM Eloquent, la mise en place de contrôleurs, le filtrage avec les middlewares ou encore le traitement des données d\\\'un formulaire. Vous apprendrez également à mettre en place un système d\\\'authentification et à gérer les autorisations, à utiliser les sessions et les files d\\\'attentes et à planifier l\\\'envoi d\\\'email. Pour finir, l\\\'auteur traite la mise en place de tests automatisés, l\\\'intégration de composants ou le recours à des fonctions assistantes avant de conclure par le déploiement en production de l\\\'application développée.\r\n\r\nÀ l\\\'issue de la lecture de ce livre, le lecteur sera en mesure de développer des applications PHP robustes et fiables avec Laravel.', 'neuf', 1),
('978-2-409-02780-2', 2, 5, 'Apprendre à développer des applications web avec PHP et Symfony', '2020-11-02', 'apprendre-a-developper-des-applications-web-avec-php-et-symfony.jpg', 'Ce livre s’adresse aussi bien au lecteur qui souhaite disposer des connaissances nécessaires pour apprendre à développer des applications web avec PHP et le framework Symfony (en version 5 au moment de l’écriture), qu’à celui disposant déjà de connaissances en PHP et qui souhaiterait approfondir sa connaissance du framework. Partant des bases jusqu’à mener le lecteur progressivement vers des notions plus avancées, la lecture de ce livre ne nécessite aucune connaissance préalable dans le domaine du développement.\r\n\r\nAprès une introduction sur la manière dont fonctionne un site web et sur les outils nécessaires pour le développer, l’auteur présente les notions de base essentielles du langage PHP : variables, fonctions, types, opérateurs de comparaison... Il approfondit ensuite son propos avec la notion de langage objet et la découverte de l’outil Composer.\r\n\r\nUne fois les concepts fondamentaux de PHP présentés, le lecteur est ensuite invité à découvrir Symfony en commençant par la construction d’un site basique. Puis, petit à petit, il se familiarise avec des notions plus complexes telles que le routage, le moteur de templates Twig, l’utilisation de Webpack Encore, l’installation de dépendances avec Symfony Flex, la gestion de bases de données avec Doctrine, les formulaires, la sécurité (y compris d’une API), les services ou encore l’utilisation de la classe SwiftMailer, pour finir avec l’étude du déploiement d’une application.\r\n\r\nÀ chaque étape, des exemples illustrent les concepts transmis, que le lecteur peut reproduire à l’aide du code source proposé en téléchargement sur le site www.editions-eni.fr, et une référence à la documentation Symfony est donnée pour aller encore plus loin dans l’exploration du framework. ', 'neuf', 1),
('978-2-409-02858-8', 27, 5, 'Docker Concepts fondamentaux et déploiement d\'applications distribuées', '2021-01-01', 'docker-concepts-fondamentaux-et-deploiement-d-applications-distribuees.jpg', 'Ce livre s’adresse aux développeurs, architectes et administrateurs système, ainsi qu’à toute personne désireuse de comprendre les concepts fondamentaux de la technologie Docker, sans entrer dans toutes ses subtilités ni tous ses cas d’usage, pour les mettre en oeuvre dans le déploiement d’applications distribuées.\r\n\r\nEmpreint de toute la pédagogie de l’auteur, ce livre permet au lecteur de se poser les bonnes questions et d’apprendre à être pleinement autonome pour affronter avec un oeil critique la masse de conseils disponibles sur Internet afin de trouver la bonne information.\r\n\r\nAprès plusieurs chapitres dédiés à la prise en main de Docker, l’auteur transmet les bonnes pratiques de création d’images avant de montrer en quoi Docker permet de mettre en oeuvre des applications découpées en modules, voire en microservices, en prenant l’exemple d’une application développée en .NET Core.\r\n\r\nUn chapitre est dédié à l’orchestration de conteneurs, que ce soit à l’aide de Kubernetes ou de Swarm, qui peut se révéler être une alternative intéressante du fait de sa simplicité d’utilisation. Les spécificités de Docker sous Windows sont également mises en avant.\r\n\r\nPour finir, le lecteur appréhende la mise en oeuvre en conditions industrielles de Docker, avec des recommandations de bonnes pratiques pour les environnements de production.', 'neuf', 1),
('978-2-409-02925-7', 18, 5, 'Le Product Owner Maîtriser son rôle et ses missions', '2021-03-01', 'le-product-owner-maitriser-son-role-et-ses-missions.jpg', 'Dans une organisation agile, quel est le rôle exact du Product Owner ? Est-ce un chef de projet 2.0 ? Avec ce livre, l’auteur propose au lecteur de répondre à ces interrogations en décrivant ce métier de manière pragmatique. Il intéressera aussi bien les personnes souhaitant passer à l’agilité et devenir Product Owner que les Product Owners ou managers désireux de gérer plus efficacement le développement de leurs produits.\r\n\r\nAu fil des chapitres, le lecteur découvre ainsi comment ce véritable chef d\\\'orchestre peut élaborer une vision du produit ainsi qu’une méthode permettant de définir une stratégie et un plan opérationnel faisant sens et nourrissant la motivation de tous les acteurs d’une équipe agile.\r\n\r\nLa gestion du Backlog de produit est détaillée pour permettre d\\\'en saisir les enjeux afin de s\\\'adapter à un environnement évolutif tout en communiquant mieux grâce à des outils et des méthodes modernes.\r\n\r\nEnfin, un chapitre entier est dédié aux principales méthodes permettant au Product Owner de coordonner les efforts d\\\'une ou plusieurs équipes. Scrum à l’échelle ou SAFe, les enjeux et implications de ces approches sont également décrits précisément afin d’être en mesure d’évoluer sereinement en tant que Product Owner dans différents types d’organisations. ', 'neuf', 1),
('978-2-409-02929-5', 17, 5, 'CISCO Préparation à la certification CCNA 200-301 - Réseau, sécurité et automatisation d\\\'entreprise', '2021-03-01', 'cisco-preparation-a-la-certification-ccna-200-301-reseau-securite-et-automatisation-d-entreprise.png', 'Dépliant aide-mémoire de 12 pages autour des commandes sur la gestion de la sécurité du réseau et de l\\\'automatisation dans un environnement CISCO. ', 'neuf', 0),
('978-2-409-02930-1', 17, 5, 'CISCO Préparation à la certification CCNA 200-301 - Notions de base sur le routage', '2021-03-01', 'cisco-preparation-a-la-certification-ccna-200-301-notions-de-base-sur-le-routage.png', 'Dépliant aide-mémoire de 12 pages autour des commandes de routage et de commutation et gestion du réseau Wi-Fi dans un environnement CISCO. ', 'neuf', 0),
('978-2-409-02931-8', 17, 5, 'CISCO Préparation à la certification CCNA 200-301 - Introduction aux réseaux', '2021-03-01', NULL, 'Dépliant aide-mémoire de 12 pages autour des commandes principales sur les réseaux dans un environnement CISCO. ', 'neuf', 0),
('978-2-409-03079-6', 1, 10, 'Haute disponibilité sous Linux De l\'infrastructure à l\'orchestration de services (Heartbeat, Docker, Ansible, Kubernetes...)', '2021-06-01', 'haute-disponibilite-sous-linux.jpg', 'Plus que jamais, dans un monde ultraconnect&Atilde;&copy; o&Atilde;&sup1; tant de choses d&Atilde;&copy;pendent de l\\\'informatique et d\\\'Internet, il est primordial de disposer d\\\'environnements hautement disponibles, redondants et fiables. L\\\'objectif de ce livre est de fournir aux ing&Atilde;&copy;nieurs syst&Atilde;&uml;me toutes les bases permettant de construire des environnements de Haute Disponibilit&Atilde;&copy;, tant du point de vue de l\\\'infrastructure que du point de vue des services, bas&Atilde;&copy;s sur le syst&Atilde;&uml;me d\\\'exploitation Linux.\r\n\r\nSelon les principes et les outils DevOps, les auteurs pr&Atilde;&copy;sentent un exemple d\\\'application fil rouge permettant d\\\'&Atilde;&copy;tudier la fa&Atilde;&sect;on de faire &Atilde;&copy;voluer de concert une application et l\\\'infrastructure sous-jacente, pour les rendre les plus fiables et les plus accessibles possibles, en s\\\'appuyant sur les derni&Atilde;&uml;res technologies.\r\n\r\nTous les &Atilde;&copy;l&Atilde;&copy;ments de conception d\\\'une plateforme et d\\\'une application redondantes sont ainsi abord&Atilde;&copy;s.\r\n\r\nLe lecteur peut ainsi appr&Atilde;&copy;hender concr&Atilde;&uml;tement la d&Atilde;&copy;finition d\\\'une application &Atilde;&copy;crite en Java et tournant sous Tomcat, la mise en place d\\\'une architecture mat&Atilde;&copy;rielle fonctionnelle pour la supporter, la redondance des services syst&Atilde;&uml;me et r&Atilde;&copy;seau de base (RAID, agr&Atilde;&copy;gats r&Atilde;&copy;seau, DNS&acirc;', '', 1),
('978-2-409-03138', 6, 5, 'Cyber résilience en entreprise', '2021-08-18', 'Cyber-resilience-en-entreprise.jpg', 'Ce livre sur la cyber résilience en entreprise est destiné aux personnes en charge de mettre en œuvre la sécurité informatique au sein des entreprises (DSI, RSSI, Directeur Cybersécurité, experts et consultants…) qui souhaitent comprendre les enjeux et contraintes de la cybersécurité et qui souhaitent s’impliquer dans l’amélioration continue de la sécurité des Systèmes d’Information. Il est un véritable guide pour la mise en œuvre de la cyber résilience des systèmes d’information reposant sur quatre dimensions : cyber-prévention, cyber-détection, cyber-protection et cyber-remédiation. Avec une approche pragmatique et progressive, l’auteur expose les enjeux et présente les principaux référentiels et les différentes réglementations en vigueur (NIST CSF, RGPD, ITIL, SecNumCloud, ISO27k, ISO 22031, ISO 20000, HDS). Il fournit ensuite une explication détaillée d’une analyse de risques réalisée avec la méthode EBIOS avant de transmettre au lecteur des bonnes pratiques sur la sécurisation des SI et des workloads dans le cloud public Azure. Le recours à la sauvegarde externalisée et aux PRA/PCA avec une nouvelle approche de Resilience as a Service est explicité ainsi que la proposition de référentiel sur la sécurité applicative ou encore le fonctionnement et le contenu du SOC (Security Operations Center) idéal. Pour finir, un chapitre complet est dédié à la présentation d’un exemple permettant de faire valoir au lecteur les bons réflexes à adopter pour l’hébergement de données de santé. Des exemples d’implémentation technique de logiciels open source sont également détaillés en annexe, notamment avec la solution de détection d\\\'intrusions Wazuh et le scanner de vulnérabilités OpenVAS', 'neuf', 0);
INSERT INTO `livre` (`LIV_ISBN`, `COL_NUM`, `EDIT_NUM`, `LIV_TITRE`, `LIV_DATE`, `LIV_IMG`, `LIV_RESUME`, `LIV_ETAT`, `LIV_EMPRUNTER`) VALUES
('978-2-409-03611-8', 27, 5, 'La convergence de la sécurité et du réseau dans le cloud Secure Access Service Edge (SASE)', '2022-06-01', 'la-convergence-de-la-securite-et-du-reseau-dans-le-cloud.jpg', '\r\nAvec l’explosion du cloud, le modèle traditionnel du réseau d’entreprise en étoile devient inadapté. Les collaborateurs en mobilité ou télétravail n’ont d’autre choix que de passer par le réseau d\\\'entreprise, et ce pour ensuite retourner vers le monde extérieur. Ce modèle pose de nombreux problèmes en termes de connectivité, de performance et de sécurité.\r\n\r\nCe livre donne des éclairages sur le nouveau modèle SASE (Secure Access Service Edge) qui vient prendre le contrepied de ces infrastructures traditionnelles. Conceptualisé par Gartner dans son rapport d’août 2019 intitulé The Future of Network Security Is in the Cloud, le SASE apporte une réponse novatrice en plaçant les dispositifs de contrôle du réseau à la périphérie du cloud et non dans le datacenter de l’organisation.\r\n\r\nL’architecture SASE lie deux composantes dans le cloud : des services réseau et des services de sécurité destinés à protéger les utilisateurs, les applications et les données. L’auteur met alors l’accent sur les apports du SASE, notamment pour simplifier profondément l’infrastructure informatique, en réunissant des micro-services cloud en une seule plateforme.\r\n\r\nEn s’appuyant sur de nombreux témoignages, il donne également des clés pour comprendre cette révolution. SD-WAN, solutions Zero Trust, FWaaS, SWG… pour la première fois, des services existants sont intégrés dans un ensemble commun de fonctionnalités entièrement délivrées via le cloud.\r\n\r\nAlors, les organisations auraient-elles toutes à gagner à se lancer ? ', 'neuf', 0),
('978-2-4090-0103-1', 8, 5, 'Référencement de votre site Web - Google et autres moteurs de recherche (5e édition) ', '2016-05-11', 'référencement site web.PNG', '', 'neuf', 0),
('978-2-4090-0470-4', 8, 5, 'Google Analytics Analysez votre trafic pour piloter vos actions webmarketing (3e édition)', '2016-11-01', 'google analytics.PNG', '\r\nGoogle Analytics est la solution de web analytique la plus utilisée au monde. Gratuite, elle permet d\'installer facilement sur son site Internet un outil statistique performant et personnalisable. Les technologies Google avancent à pas de géants afin de rendre leur utilisation plus simple et surtout plus efficace : Google propose aujourd\'hui non pas une mais deux nouvelles manières d\'expérimenter le web analytics : Universal Analytics et Google Tag Manager. Utilisées ensemble, ces deux solutions permettent une puissante collecte d\'informations et des analyses poussées ; mais si la performance est au rendez-vous, il peut être difficile pour l\'utilisateur de s\'y retrouver parmi les nombreuses fonctionnalités proposées et les modifications radicales de l\'interface de Google Analytics.\r\n\r\nCet ouvrage est destiné à toute personne ayant de près ou de loin un intérêt à analyser des actions webmarketing, que cela soit en agence ou chez l\'annonceur. Il vous permettra de mieux appréhender les nouvelles méthodes liées à l\'utilisation de Google Analytics.\r\n\r\nAprès une présentation de Google Analytics et du web analytique, les concepts-clés de Google Analytics vous sont présentés ainsi que la mise en place du code de suivi et la bonne méthodologie pour savoir quoi suivre sur votre site web.\r\n\r\nDans le second chapitre sont abordées les fonctionnalités de base de l\'outil ainsi que leur mise en place : gestion des rapports, analyse de votre audience, analyse des sources de trafic du site Internet, mise en place des évènements, paramétrage des objectifs...\r\n\r\nLe troisième chapitre présente des exemples concrets et détaillés d\'utilisation d\'Analytics tels que l\'utilisation des rapports personnalisés, des segments, des alertes personnalisées, des filtres...\r\n\r\nLe dernier chapitre présente les applications utiles liées à Google Analytics sur vos navigateurs web et applications mobiles. Vous pourrez également découvrir toutes les aides nécessaires pour développer vos compétences et obtenir la certification Google Analytics.\r\n\r\nCet ouvrage est donc idéal si vous souhaitez découvrir la solution ou mettre à jour vos connaissances sur Google Analytics.', 'neuf', 0),
('978-2-4090-0634-0', 9, 5, 'Sécurité informatique sur le Web Apprenez à sécuriser vos applications', '2017-03-01', 'sécurité informatique sur le web.PNG', 'Cet ouvrage sur la sécurité des applications web s\'adresse à l\'ensemble des personnes concernées par la sécurité de l\'information : développeurs, managers en sécurité de l\'information, pentesters, administrateurs système... L\'approche choisie par l\'auteur permet à un lecteur novice en matière de sécurité de comprendre tous les tenants et aboutissants de la sécurité web mais aussi à un lecteur plus expérimenté d\'utiliser les chapitres dont il a besoin pour conforter ou améliorer ses connaissances sur le sujet. Le livre n\'est pas lié à un langage de développement particulier.\r\n\r\nAfin de suivre une progression pédagogique cohérente tout au long du livre, le premier chapitre introduit les concepts de base du web en lien avec la sécurité d\'une application : méthodes de travail, architectures, langages et technologies utilisés. Son objectif est de poser les bonnes fondations sur lesquelles développer les axes de sécurité qui seront mis en œuvre. Le deuxième chapitre dresse un état des lieux des normes, des outils, des guides, des bonnes pratiques et des techniques de sécurité existants afin de faciliter la compréhension de la suite du livre.\r\n\r\nLe chapitre suivant présente les principaux risques et les principales vulnérabilités connus du web (injections, violation de session, Cross-Site Scripting...). L\'auteur a choisi une approche à la fois théorique et pratique avec des exercices à réaliser sur une plateforme de travail dédiée.\r\n\r\nUne fois ces trois chapitres lus, le lecteur est conduit vers les concepts du code sécurisé avec toutes les bonnes pratiques à mettre en action lors du développement d\'applications ainsi qu\'en matière de protection des données personnelles.\r\n\r\nLes deux derniers chapitres sont consacrés à la création d\'un cycle de développement sécurisé, présentant les différents intervenants et les actions concrètes à mettre en place par un manager dans une organisation possédant des applications web. L\'auteur conclut ces deux chapitres par une mise en situation qu\'il donne à titre d\'exemple.', 'neuf', 0),
('978-2-4090-0974-7', 6, 5, 'Sécurité informatique Ethical Hacking : Apprendre l\'attaque pour mieux se défendre (5e édition)', '2017-09-01', 'ethical.jpg', 'Table des matières\r\n\r\n    Introduction et définitions\r\n        1. La sécurité informatique, pour quoi, pour qui ?\r\n            1.1 Hacking, piratage, sécurité informatique... Que met-on derrière ces termes ?\r\n            1.2 L’importance de la sécurité\r\n                1.2.1 Pour les particuliers\r\n                1.2.2 Pour les entreprises et les écoles\r\n                1.2.3 Pour un pays ou une nation\r\n        2. Le hacking se veut éthique\r\n            2.1 Le travail en coopération\r\n            2.2 Un esprit bidouilleur et passionné avant tout\r\n            2.3 Le hacker devient un expert recherché\r\n            2.4 Dans la peau de l’attaquant\r\n            2.5 Conseils et accompagnement vers la sécurisation\r\n        3. Connaître son ennemi pour s’en défendre\r\n            3.1 À chaque attaquant son chapeau\r\n                3.1.1 Les hackers black hats\r\n                3.1.2 Les hackers grey hats\r\n                3.1.3 Les hackers white hats\r\n                3.1.4 Les script kiddies\r\n                3.1.5 Les hackers universitaires\r\n            3.2 Et à chaque audit sa boîte à secrets\r\n                3.2.1 Les tests en black box\r\n                3.2.2 Les tests en grey box\r\n                3.2.3 Les tests en white box\r\n    Méthodologie d\'une attaque\r\n        1. Préambule\r\n        2. La discrétion avant tout\r\n        3. Cibler la victime\r\n            3.1 Utiliser les bons outils\r\n            3.2 Repérer les domaines\r\n            3.3 Google, cet ami si curieux\r\n            3.4 Découvrir le réseau\r\n        4. L’attaque\r\n            4.1 Profiter de la faille humaine\r\n            4.2 Ouvrir les portes du réseau\r\n            4.3 L’attaque par le Web\r\n            4.4 La force au service de l’attaque\r\n        5. S’introduire dans le système et assurer son accès\r\n            5.1 Rester discret\r\n            5.2 S’assurer un accès\r\n            5.3 Étendre son champ d’action\r\n        6. Bilan de l’intrusion et sécurisation\r\n            6.1 Une politique de sécurité rigoureuse\r\n                6.1.1 Les mots de passe\r\n                6.1.2 La formation du personnel\r\n                6.1.3 À chacun son rôle\r\n            6.2 Chiffrer les informations essentielles\r\n            6.3 Sécuriser les serveurs\r\n                6.3.1 Effectuer les mises à jour de sécurité\r\n                6.3.2 Emprisonner les services (chroot, jail)\r\n                6.3.3 La sécurité côté noyau\r\n                6.3.4 Empêcher les scans et les attaques\r\n                6.3.5 Ne garder que l’essentiel\r\n                6.3.6 Surveillance des activités\r\n            6.4 Les tests d’intrusion\r\n    Éléments d’ingénierie sociale\r\n        1. Généralités\r\n            1.1 Introduction\r\n            1.2 Systèmes d\'information\r\n                1.2.1 Précisions sur les systèmes d’information\r\n                1.2.2 Failles d\'un système d\'information\r\n            1.3 Présentation de l\'ingénierie sociale\r\n                1.3.1 Définitions\r\n                1.3.2 Caractéristiques et périmètre\r\n            1.4 Problématique de la protection\r\n        2. Modes d\'action de l\'ingénierie sociale\r\n            2.1 Les principes de l\'attaque par ingénierie sociale\r\n            2.2 Processus générique de l\'ingénieur social\r\n                2.2.1 Étude préalable\r\n                2.2.2 Préparation\r\n                2.2.3 Exploitation\r\n            2.3 Compétences et outils de l\'ingénieur social\r\n                2.3.1 Comédies, ruses, subterfuges et tromperies\r\n                2.3.2 Lecture de cible\r\n        3. Connaissance des organisations attaquées\r\n            3.1 Typologies générales\r\n            3.2 Typologies de valeurs et de croyances\r\n            3.3 Modèles de maturité et certifications qualité\r\n            3.4 Exploitation\r\n            3.5 Exercices\r\n        4. Failles humaines - Bases et modèles théoriques\r\n            4.1 Bases biologiques et fonctionnalités du cerveau\r\n            4.2 Biais cognitifs\r\n            4.3 Méthodes hypnotiques\r\n            4.4 Cohérence et recherche de « pattern »\r\n            4.5 Conclusion\r\n            4.6 Exercices\r\n                4.6.1 Cas particulier du téléphone\r\n                4.6.2 Camouflage final\r\n        5. Influence et manipulation\r\n            5.1 Méthodes d\'influence\r\n                5.1.1 Influence\r\n                5.1.2 Tentation, séduction et intimidation\r\n                5.1.3 Manipulation\r\n            5.2 Les grands ressorts de la manipulation\r\n                5.2.1 La cohérence\r\n                5.2.2 La réciprocité\r\n                5.2.3 Preuve sociale\r\n                5.2.4 Autorité\r\n                5.2.5 Sympathie\r\n                5.2.6 Rareté\r\n        6. Les techniques de la manipulation\r\n            6.1 Les grandes techniques de manipulation\r\n                6.1.1 Les amorçages et les leurres\r\n                6.1.2 Le pied dans la porte\r\n                6.1.3 La porte au nez\r\n            6.2 Les petites techniques de manipulation\r\n                6.2.1 Pied dans la bouche, politesse, sympathie\r\n                6.2.2 Contact, touché, regard,\r\n                6.2.3 Les pièges de la cohérence\r\n                6.2.4 Étiquetage\r\n                6.2.5 Déclaration de liberté\r\n                6.2.6 Quelques petites techniques à connaître\r\n            6.3 Exercices\r\n                6.3.1 Croiser grandes et petites techniques\r\n                6.3.2 Croiser techniques et ressorts\r\n                6.3.3 Script de camouflage final\r\n        7. Savoir \"patcher\" les failles humaines\r\n            7.1 Volonté politique\r\n            7.2 Méthodologie\r\n                7.2.1 Professionnalisme, qualité, procédures, maturité\r\n                7.2.2 Mesure : tests, audit, retex de détection\r\n                7.2.3 Optimisation et changement de paradigme\r\n            7.3 Actions concrètes à mener\r\n                7.3.1 Documenter une politique de classification de l\'information\r\n                7.3.2 Contrôler les \"Input/Output\" (entrée/sortie d\'information)\r\n                7.3.3 Instruire le personnel\r\n                7.3.4 Favoriser la remontée de l\'information\r\n            7.4 Exercices\r\n                7.4.1 Manipuler les décideurs\r\n                7.4.2 Bloc-notes de réponse au téléphone\r\n                7.4.3 Remontée d\'information\r\n        8. Bibliographie\r\n    Les failles physiques\r\n        1. Généralités\r\n        2. Lockpicking\r\n        3. Accès physique direct à l\'ordinateur\r\n            3.1 Accès à un ordinateur éteint dont le BIOS est protégé\r\n            3.2 Accès à un ordinateur éteint dont le BIOS n\'est pas protégé\r\n                3.2.1 Utilisation de Offline NT Password et Registry Editor v110511\r\n                3.2.2 Utilisation de Trinity Rescue Kit\r\n                3.2.3 Récupérer la base SAM avec Kali Linux (distribution qui succède à Backtrack5)\r\n                3.2.4 Windows Password Recovery Bootdisk\r\n                3.2.5 Les différents types d\'algorithmes de cryptage\r\n                3.2.6 Les hashs de type LM et NTLM\r\n                3.2.7 Utiliser John the Ripper pour trouver les mots de passe\r\n                3.2.8 Hashcat\r\n                3.2.9 Utiliser la puissance de la carte graphique\r\n                3.2.10 Méthode des tables arc-en-ciel (rainbow tables)\r\n                3.2.11 Générer ses tables arc-en-ciel\r\n                3.2.12 Utiliser OPHCRACK\r\n                3.2.13 Utilisation du logiciel Cain & Abel\r\n                3.2.14 Utilisation du script Findmyhash\r\n                3.2.15 Bypass authentification Windows et Linux\r\n                3.2.16 Firewire-Inception-Bypass authentification\r\n                3.2.17 Utilitaires de récupération de mots de passe\r\n                3.2.18 Mimikatz - Manipulations en mémoire\r\n                3.2.19 Exemples d\'élévation de privilèges via exploits sous Linux\r\n                3.2.20 Failles Windows Vista, Windows 7 et Windows 8.1\r\n                3.2.21 Windows-privesc-check-Recherche de failles sous Windows\r\n            3.3 Accès à un ordinateur allumé en mode session utilisateur courant\r\n                3.3.1 Les clés USB\r\n                3.3.2 U3PWN\r\n                3.3.3 La clé Ducky\r\n                3.3.4 Les keyloggers matériels et logiciels\r\n                3.3.5 Contre-mesures aux keyloggers\r\n                3.3.6 Récupération d’images mémoire\r\n                3.3.7 Méthodes de récupération de la mémoire RAM\r\n                3.3.8 Créer une clé bootable pour vider la mémoire\r\n                3.3.9 Récupération de la mémoire via le port FireWire - Méthode Carsten Maartmann-Moe (Inception)\r\n                3.3.10 Dump mémoire sous Linux\r\n                3.3.11 Analyse des images mémoire\r\n            3.4 Conclusion\r\n    Prise d\'empreinte ou Information Gathering\r\n        1. Les attaques\r\n            1.1 Préambule\r\n            1.2 Introduction sur les différents types d\'attaques\r\n            1.3 L\'attaque de type destructif\r\n            1.4 L\'attaque sur les moyens de communication\r\n            1.5 Les attaques à but mercantile\r\n            1.6 Les attaques de type APT\r\n            1.7 Les différentes phases d\'une attaque et d\'un test d\'intrusion\r\n        2. L\'analyse des risques\r\n        3. Le test d\'intrusion\r\n            3.1 Les acteurs du hacking\r\n            3.2 Types et stratégies d\'audit\r\n                3.2.1 Les types d\'audit\r\n                3.2.2 Les stratégies d\'audit\r\n        4. Méthodologie d’une collecte d’informations également appelée \"prise d\'empreintes\"\r\n        5. Le service Whois\r\n            5.1 La gestion des adresses IP dans le monde\r\n            5.2 Recherche d\'informations sur le Web\r\n            5.3 Les basiques\r\n            5.4 Les sites web spécialisés\r\n            5.5 Les réseaux sociaux et professionnels\r\n            5.6 Les agrégateurs d’informations spécialisés\r\n            5.7 Les add-ons navigateurs spécialisés\r\n            5.8 Un navigateur dédié à la recherche OSINT : Oryon\r\n            5.9 Application spécifique : Net Tools\r\n        6. Moteurs de recherche de périphériques connectés\r\n     ', 'neuf', 1),
('978-2-4090-1272-3', 8, 5, 'UI-UX : les bases du prototypage web et apps Concevoir avec les utilisateurs', '2018-03-01', 'UI-UX.PNG', 'La conception fructueuse de projets digitaux s\'appuie sur des dispositifs et interfaces qui sont pensés pour et avec les utilisateurs. Le prototypage joue donc un rôle central dans la conception centrée utilisateur : il s\'agit de matérialiser l\'interaction, la tester auprès de la cible visée puis l\'optimiser à tous les stades du projet.\r\n\r\nCe livre étudie comment matérialiser et tester les idées dès les phases de pré-conception avec des prototypes adaptés. Il est destiné aux responsables de projets web et applications, aux designers d\'interfaces et à tous ceux qui veulent concevoir des interactions utilisateurs.\r\n\r\nVous verrez tout d\'abord comment représenter les utilisateurs avec les \"personas\" puis comment visualiser un projet encore au stade des propositions. Vous ferez le point sur les techniques fondamentales : idéation, facilitation graphique, scénarios et story-boards.\r\n\r\nVous apprendrez ensuite à utiliser les outils en ligne pour réaliser concrètement les prototypes utiles aux différentes phases d\'un projet digital. Vous verrez quels sont les outils gratuits pour créer rapidement et efficacement des prototypes papier sans être graphiste. Vous apprendrez à exploiter les logiciels pour réaliser des prototypes fonctionnels qui permettent les tests sur périphérique. Vous découvrirez les méthodes pour l\'organisation et la conduite de tests utilisateurs. Vous pourrez ainsi intégrer le prototypage dans la mise en œuvre de vos conceptions itératives de projets.\r\n\r\nEn déployant ces méthodes pratiques de prototypage, vous assurerez des parcours fluides et optimiserez les taux de transformation et, au final, vous produirez la meilleure expérience utilisateur.', 'neuf', 1),
('978-2-4090-1511-3', 2, 5, 'PHP 7 Développez un site web dynamique et interactif', '2018-09-01', 'php 7.PNG', 'Ce livre sur PHP 7 (en version 7.2 au moment de l\'écriture) s\'adresse aux concepteurs et développeurs qui souhaitent utiliser PHP pour développer un site web dynamique et interactif.\r\n\r\nAprès une présentation des principes de base du langage, l\'auteur se focalise sur les besoins spécifiques du développement de sites dynamiques et interactifs et s\'attache à apporter des réponses précises et complètes aux problématiques habituelles (gestion des formulaires, accès aux bases de données, gestion des sessions, envoi de courriers électroniques...).\r\n\r\nPour toutes les fonctionnalités détaillées, de nombreux exemples de code sont présentés et commentés. Ce livre didactique, à la fois complet et synthétique, vous permet d\'aller droit au but ; c\'est l\'ouvrage idéal pour se lancer sur PHP.\r\n\r\nDes éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr.\r\n\r\n\r\nLes chapitres du livre :\r\nPréambule – Introduction à PHP – Utiliser les fonctions PHP – Écrire des fonctions et des classes PHP – Gérer les erreurs dans un script PHP – Gérer les formulaires et les liens – Accéder aux bases de données – Gérer les sessions – Envoyer un courrier électronique – Annexe', 'neuf', 0),
('978-2-4090-1656-1', 9, 5, 'WordPress - Développez avec PHP', '2018-12-01', 'wordpress dev avec php.PNG', 'Ce livre sur WordPress (en version 4.9 au moment de l\'écriture) s\'adresse aux développeurs professionnels, autodidactes et passionnés ayant des connaissances en PHP. Il permet de comprendre les rouages de ce CMS et d\'acquérir une maîtrise du développement d\'extensions en PHP en suivant un apprentissage progressif.\r\n\r\nL\'auteur présente l\'interaction entre PHP et le backoffice du CMS à travers plusieurs exemples qui évoluent de la programmation procédurale vers la programmation orientée objet en passant par l\'utilisation de requêtes SQL. Il présente ensuite l\'interaction avec AJAX/JSON.\r\n\r\nLe lecteur apprend à installer WordPress, à utiliser l\'outil d\'administration, à ajouter des fonctionnalités, à utiliser des extensions pour les développeurs, à enregistrer en base de données, à ajouter des tables pour maîtriser complètement les principes de fonctionnement du CMS et apprendre ensuite à réaliser des thèmes avancés, des widgets, des extensions. Une partie du livre traite de l\'optimisation, de la sécurité, de la traduction, de la mise en ligne...\r\n\r\nLes fonctions propres à WordPress sont détaillées avec des exemples et mises en situation à travers des travaux pratiques : création et ajout de fonctionnalités dans l\'administration d\'un thème, création d\'un thème à partir d\'une maquette HTML, ajout d\'un éditeur wysiwyg, création d\'une extension fil d’Ariane, création d\'un widget, création d\'une extension Google Maps, création d\'une extension avec un formulaire pour récupérer des adresses mails en AJAX/JSON.', 'neuf', 0),
('978-2-4090-1660-8', 2, 5, 'Apprendre à développer avec JavaScript', '2018-12-01', 'apprendre à dvper avec JS.PNG', 'Ce livre sur l\'apprentissage du développement avec JavaScript s\'adresse à des lecteurs qui souhaitent maîtriser cette brique incontournable des développements web (applications, serveurs web et applications hybrides pour smartphones). En effet, même si des solutions logicielles existent pour contourner la connaissance du langage JavaScript, sa maîtrise est un atout essentiel pour acquérir une expertise dans le domaine des technologies du Web 2.0.\r\n\r\nEn prenant le parti que le lecteur n\'a que des connaissances minimales en programmation, l\'auteur débute par des rappels ou des apports en algorithmie. Il explique ensuite les bases du langage JavaScript. Les différents concepts, principes ou fonctionnalités sont mis en œuvre au travers d\'exemples concrets facilement réutilisables ensuite dans d\'autres développements.\r\n\r\nLe livre permettra au lecteur de monter progressivement en compétences sur JavaScript en montrant les interactions avec d\'autres technologies web (ou langages) comme l\'incontournable HTML, les feuilles de styles CSS, les langages de script orientés serveurs comme PHP. Des sujets aussi importants que la Programmation Orientée Objet, les nouveautés de la version ECMAScript 6, la manipulation du DOM ou encore la gestion des cookies, le stockage local et distant, la géolocalisation, le dessin, les graphiques de gestion seront abordés au travers d\'exemples concrets.\r\n\r\nDans cette troisième édition, l\'auteur propose des exemples didactiques d\'utilisation de JavaScript dans un contexte serveur avec la présentation du framework Angular et du serveur d\'applications Node.js. Enfin, JavaScript faisant une percée très significative dans le monde du développement hybride sur les smartphones et tablettes, le livre se termine par un exposé complet sur le framework Ionic 3 avec de nombreux exercices présentant l\'architecture et permettant d\'aborder sereinement le développement d\'applications plus complexes.\r\n\r\nTous les chapitres du livre intègrent de nombreux exemples largement commentés et en progression logique.', 'neuf', 0),
('978-2-4090-1825-1', 9, 5, 'Les stratégies de groupe (GPO) sous Windows Server 2019 Planification, déploiement, dépannage', '2019-03-01', 'gpo.PNG', 'Ce livre sur les stratégies de groupe s\'adresse aux Administrateurs et aux Ingénieurs Système et leur propose une immersion dans l\'univers des stratégies de groupe (GPO) dans les environnements Windows Server 2019 et Windows 10.\r\n\r\nLe lecteur navigue entre les principes théoriques et les applications pratiques des différents composants qui constituent les stratégies de groupe, seul outil capable de configurer les ordinateurs dans leur couche système en profondeur. Afin de maîtriser cet outil, l’auteur explique au lecteur le fonctionnement et la relation importante qui existe entre Active Directory, la réplication AD et les GPO, ainsi que le processus de traitement et d\'application des GPO. Ces éléments maîtrisés vous permettront de mettre en place toutes sortes de politiques de stratégies de groupe pour votre entreprise.\r\n\r\nDe plus, les éléments relatifs à la planification et à l\'organisation nécessaires à l\'élaboration d\'une infrastructure basée sur l\'implémentation de stratégies de groupe accompagnent le lecteur tout au long des différents chapitres de l\'ouvrage.\r\n\r\nL’auteur utilise son expérience ainsi que des cas concrets pour orienter la réflexion du lecteur sur les axes techniques les plus empruntés par les entreprises.', 'neuf', 1),
('978-2-4090-1853-4', 8, 5, 'WordPress 5 Un CMS pour créer et gérer blogs et sites web', '2019-04-01', 'wordpress5.PNG', 'WordPress est actuellement l\'outil de création et de gestion de sites web le plus utilisé dans le monde. Ce CMS (Content Management System) vous permet de créer et de gérer des blogs, comme des sites web plus institutionnels et vous propose une interface de gestion de vos sites, simple mais très efficace.\r\n\r\nDans ce livre, vous commencerez par installer WordPress en local sur votre machine et chez les hébergeurs professionnels. Vous découvrirez ensuite l\'interface de gestion de WordPress et apprendrez à configurer votre site.\r\n\r\nVous verrez ensuite comment créer le contenu rédactionnel de votre site : créer et gérer les articles à l’aide du nouvel éditeur Gutenberg, les organiser grâce aux catégories et mots-clefs, administrer la publication de vos articles, créer les pages et gérer les menus de navigation.\r\n\r\nVous verrez comment importer des médias dans la bibliothèque et vous compléterez vos contenus en y ajoutant des images. Pour rendre votre site attractif, vous pourrez générer de l\'interaction avec les visiteurs grâce aux commentaires.\r\n\r\nSi plusieurs personnes sont amenées à travailler sur le contenu de votre site, vous pourrez exploiter les nombreuses fonctionnalités de WordPress relatives à la gestion des utilisateurs afin de définir des rôles donnant des droits spécifiques à chacun dans l\'administration du site.\r\n\r\nVous verrez comment étendre les fonctionnalités natives de WordPress en installant des extensions (plugins) et comment modifier l\'apparence de votre site grâce aux thèmes. Nous terminerons ce livre en apprenant à sauvegarder le site et à le restaurer, pour passer du site local, sur votre machine, au site de production, sur le Web.', 'neuf', 0),
('978-2-4090-1910-4', 6, 4, 'Git maitrisez la gestion de vos versions. concepts, utilisation et cas pratiques', '2019-06-01', 'git.PNG', 'Ce livre s\'adresse principalement aux développeurs et aux chefs de projet mais également aux professionnels appelés &Atilde;&nbsp; modifier des codes sources (graphiste, webdesigner, etc.).\r\n\r\nLe livre pr&Atilde;&copy;sente tout d\'abord l\'historique des solutions de gestion de versions et leur int&Atilde;&copy;r&Atilde;&ordf;t. Il permet ensuite au lecteur d\'installer et de configurer Git puis de l\'utiliser tout au long de cinq chapitres progressifs (fonctionnement des branches, partage d\'un d&Atilde;&copy;p&Atilde;&acute;t, outils internes...). Un chapitre permet au lecteur de bien appr&Atilde;&copy;hender git-flow, une m&Atilde;&copy;thode pour g&Atilde;&copy;rer efficacement les diff&Atilde;&copy;rentes versions d\'un projet en entreprise.\r\n\r\nCe livre s\'adresse principalement aux développeurs et aux chefs de projet mais également aux professionnels amenés à modifier des codes sources (Graphiste, Webdesigner, etc.).\r\nLe livre présente tout d\'abord l\'historique des solutions de gestion de versions et leur intérêt. Il permet ensuite au lecteur d\'installer et de configurer Git puis de l\'utiliser tout au long de 5 chapitres progressifs. Un chapitre permet au lecteur d\'appréhender git-flow, une méthode pour gérer efficacement les différentes versions d\'un projet en entreprise.\r\nLes deux derniers chapitres présentent la gestion de versions de manière très pragmatique en utilisant deux scénarios mettant en œuvre des développeurs.', '', 1),
('978-2-4090-2060-5', 2, 5, 'Java 11 Les fondamentaux du langage (avec exercices pratiques et corrigés)', '2019-09-01', 'java11.jpg', 'Table des matières\r\n\r\n    Présentation\r\n        1. Introduction\r\n        2. Historique\r\n            2.1 Pourquoi Java ?\r\n            2.2 Objectifs de la conception de Java\r\n            2.3 Essor de Java\r\n        3. Les caractéristiques du langage Java\r\n            3.1 Simple\r\n            3.2 Orienté objet\r\n            3.3 Distribué\r\n            3.4 Interprété\r\n            3.5 Robuste\r\n            3.6 Sécurisé\r\n            3.7 Indépendant des architectures\r\n            3.8 Portable\r\n            3.9 Performant\r\n            3.10 Multitâche\r\n            3.11 Dynamique\r\n        4. La plateforme Java SE\r\n            4.1 La machine virtuelle Java (JVM)\r\n            4.2 L\'API Java\r\n                4.2.1 Les API de base\r\n                4.2.2 Les API d\'accès aux données et d\'intégration avec l\'existant\r\n                4.2.3 Les API de gestion de l\'interface des applications avec l\'utilisateur\r\n            4.3 Les outils de déploiement des applications\r\n            4.4 Les outils d\'aide au développement\r\n        5. Les différentes implémentations de la plateforme\r\n        6. L\'environnement de développement\r\n            6.1 Installation du JDK sur Windows\r\n                6.1.1 Installation de la plateforme OpenJDK\r\n                6.1.2 Installation de la plateforme Oracle JDK\r\n                6.1.3 Configuration des variables d\'environnement\r\n                6.1.4 Tester le bon fonctionnement\r\n            6.2 Installation du JDK sur Linux\r\n                6.2.1 Installation de la plateforme OpenJDK\r\n                6.2.2 Installation de la plateforme Oracle JDK\r\n                6.2.3 Configuration de la variable JAVA_HOME\r\n                6.2.4 Tester le bon fonctionnement\r\n            6.3 Installation d\'Eclipse\r\n                6.3.1 Téléchargement de l\'installeur\r\n                6.3.2 Installation d\'Eclipse\r\n                6.3.3 Ajout d\'un raccourci Eclipse sous Linux\r\n                6.3.4 Création d\'un projet Java\r\n            6.4 Installation de MySQL\r\n                6.4.1 Windows\r\n                6.4.2 Linux\r\n                6.4.3 Utilisation de MySQL Workbench\r\n        7. La javadoc\r\n            7.1 Consultation depuis un navigateur\r\n            7.2 Consultation depuis Eclipse\r\n        8. Le premier programme\r\n            8.1 Écriture du code\r\n            8.2 Compilation et exécution du code\r\n                8.2.1 Théorie\r\n                8.2.2 Mise en œuvre\r\n            8.3 Utilisation d\'Eclipse\r\n        9. Conclusion\r\n    Bases du langage\r\n        1. Anatomie d\'un programme\r\n        2. Les variables\r\n            2.1 Introduction\r\n            2.2 Les emplacements\r\n            2.3 Le nom\r\n            2.4 Les types\r\n                2.4.1 Présentation\r\n                2.4.2 Les types valeurs\r\n                2.4.3 Les types références\r\n            2.5 La déclaration, l\'initialisation, l\'affectation\r\n                2.5.1 La déclaration\r\n                2.5.2 L\'initialisation\r\n                2.5.3 L\'affectation\r\n            2.6 Les types valeurs\r\n                2.6.1 Les types numériques entiers\r\n                2.6.2 Les types numériques décimaux\r\n                2.6.3 L\'utilisation de valeurs littérales\r\n                2.6.4 Le type caractère\r\n                2.6.5 Le type boolean\r\n            2.7 Les types références\r\n                2.7.1 Introduction\r\n                2.7.2 Les tableaux\r\n                2.7.3 Les chaînes de caractères\r\n                2.7.4 Les dates et les heures\r\n            2.8 Les valeurs par défaut\r\n            2.9 La portée des variables\r\n            2.10 La durée de vie des variables\r\n            2.11 La conversion de type\r\n                2.11.1 Présentation\r\n                2.11.2 La conversion entre numériques\r\n                2.11.3 La conversion vers une chaîne de caractères\r\n                2.11.4 La conversion depuis une chaîne de caractères\r\n            2.12 L\'inférence de type\r\n        3. Les constantes\r\n        4. Les énumérations\r\n        5. Les arguments d\'un programme\r\n            5.1 Fonctionnement\r\n            5.2 Utilisation dans Eclipse\r\n        6. Les opérateurs\r\n            6.1 Les opérateurs unaires\r\n            6.2 L\'opérateur d\'affectation\r\n            6.3 Les opérateurs arithmétiques\r\n            6.4 Les opérateurs bit à bit\r\n                6.4.1 La représentation binaire des entiers\r\n                6.4.2 Les opérations logiques\r\n            6.5 Les opérateurs de comparaison\r\n            6.6 L\'opérateur de concaténation\r\n            6.7 Les opérateurs logiques\r\n            6.8 Ordre d\'évaluation des opérateurs\r\n        7. Les structures de contrôle\r\n            7.1 Présentation\r\n            7.2 Structures de décision\r\n                7.2.1 Structure if\r\n                7.2.2 Structure ternaire\r\n                7.2.3 Structure switch\r\n            7.3 Les structures de boucle\r\n                7.3.1 Structure while\r\n                7.3.2 Structure do ... while\r\n                7.3.3 Structure for\r\n            7.4 Interruption d\'une structure de boucle\r\n                7.4.1 break\r\n                7.4.2 continue\r\n                7.4.3 return\r\n        8. Exercices\r\n            8.1 Exercice 1\r\n            8.2 Exercice 2\r\n            8.3 Exercice 3\r\n            8.4 Exercice 4\r\n        9. Corrections\r\n            9.1 Exercice 1\r\n            9.2 Exercice 2\r\n            9.3 Exercice 3\r\n            9.4 Exercice 4\r\n        10. Conclusion\r\n    Programmation objet\r\n        1. Introduction\r\n        2. Mise en œuvre avec Java\r\n            2.1 Contexte\r\n            2.2 Création d\'une classe\r\n                2.2.1 Déclaration de la classe\r\n                2.2.2 Création des champs\r\n                2.2.3 Création des méthodes\r\n                2.2.4 Création des surcharges de méthode\r\n                2.2.5 Passage de paramètres\r\n                2.2.6 Création des accesseurs\r\n                2.2.7 Création des constructeurs et des destructeurs\r\n                2.2.8 Création de champs et méthodes statiques\r\n                2.2.9 Utilisation des annotations\r\n            2.3 Utilisation d\'une classe\r\n                2.3.1 Création d\'une instance\r\n                2.3.2 Initialisation d\'une instance\r\n                2.3.3 Destruction d\'une instance\r\n            2.4 Héritage\r\n                2.4.1 Création d\'une classe fille\r\n                2.4.2 this et super\r\n                2.4.3 Classes abstraites\r\n                2.4.4 Classes finales\r\n                2.4.5 Conversion de type\r\n                2.4.6 La classe Object\r\n            2.5 Interfaces\r\n                2.5.1 Création d\'une interface\r\n                2.5.2 Utilisation d\'une interface\r\n                2.5.3 Méthode par défaut\r\n                2.5.4 Méthode statique\r\n            2.6 Classes imbriquées\r\n                2.6.1 Classes imbriquées statiques\r\n                2.6.2 Classes internes (d\'instance)\r\n                2.6.3 Classes anonymes\r\n        3. Les packages\r\n            3.1 Présentation\r\n            3.2 Création d\'un package\r\n            3.3 Utilisation et importation d\'un package\r\n            3.4 Importation des méthodes statiques\r\n        4. Les modules\r\n            4.1 Mise en place\r\n            4.2 Présentation\r\n            4.3 Le JDK est modulaire\r\n            4.4 Utilisation des modules\r\n            4.5 Création d\'un nouveau module\r\n        5. La gestion des erreurs\r\n            5.1 Les différents types d\'erreurs\r\n                5.1.1 Les erreurs de syntaxe\r\n                5.1.2 Les erreurs d\'exécution\r\n                5.1.3 Les erreurs de logique\r\n            5.2 La représentation objet des erreurs\r\n            5.3 Le traitement des exceptions\r\n            5.4 Les exceptions associées à des ressources\r\n            5.5 Utilisation des exceptions\r\n            5.6 Création et déclenchement d\'exceptions\r\n        6. Les génériques\r\n            6.1 Présentation\r\n            6.2 Classes génériques\r\n                6.2.1 Définition d\'une classe générique\r\n                6.2.2 Utilisation d\'une classe générique\r\n                6.2.3 Les méthodes génériques\r\n            6.3 Les génériques et l\'héritage\r\n            6.4 Limitations des génériques\r\n        7. Les collections\r\n            7.1 Présentation\r\n            7.2 La classe ArrayList\r\n            7.3 La classe HashSet\r\n            7.4 La classe LinkedList\r\n            7.5 La classe HashMap\r\n            7.6 Streams et pipelines\r\n        8. Exercices\r\n            8.1 Exercice 1\r\n            8.2 Exercice 2\r\n            8.3 Exercice 3\r\n            8.4 Exercice 4\r\n        9. Corrections\r\n            9.1 Correction de l\'exercice 1\r\n            9.2 Correction de l\'exercice 2\r\n            9.3 Correction de l\'exercice 3\r\n            9.4 Correction de l\'exercice 4\r\n    Les expressions lambda\r\n        1. Introduction\r\n        2. Fonctionnement\r\n            2.1 Les interfaces fonctionnelles\r\n            2.2 Les méthodes anonymes\r\n                2.2.1 Syntaxe générale\r\n                2.2.2 Déclaration des paramètres\r\n                2.2.3 Déclaration du corps\r\n                2.2.4 Utilisation des variables \"externes\"\r\n            2.3 Les références de méthodes\r\n                2.3.1 Méthode d\'instance\r\n                2.3.2 Méthode de classe\r\n                2.3.3 Constructeur\r\n            2.4 L\'API java.util.function\r\n                2.4.1 Présentation de l\'API\r\n                2.4.2 Utilisation\r\n        3. Manipulation des collections\r\n            3.1 L\'API Stream\r\n            3.2 Théorie\r\n            3.3 Obtenir un Stream\r\n                3.3.1 Obtenir un Stream générique\r\n                3.3.2 Obtenir un Stream de numérique\r\n            3.4 Utiliser un Stream\r\n                3.4.1 Utiliser un Stream générique\r\n                3.4.2 Utiliser un Stream numérique\r\n            3.5 La classe Optional<T>\r\n        4. Conclusion\r\n    Application graphique\r\n        1. Introduction\r\n            1.1 Les bibliothèques graphiques\r\n                1.1.1 La bibliothèque AWT\r\n                1.1.2 La bibliothèque Swing', 'neuf', 0);
INSERT INTO `livre` (`LIV_ISBN`, `COL_NUM`, `EDIT_NUM`, `LIV_TITRE`, `LIV_DATE`, `LIV_IMG`, `LIV_RESUME`, `LIV_ETAT`, `LIV_EMPRUNTER`) VALUES
('978-2-4090-2129-9', 6, 5, 'Sécurité informatique et Malwares Analyse des menaces et mise en oeuvre des contre-mesures (3e édition)', '2019-11-01', 'securite-informatique-et-malwares.jpg', 'Table des matières\r\n\r\n    Compréhension des malwares\r\n        1. Présentation des malwares par familles\r\n            1.1 Introduction\r\n            1.2 Backdoor\r\n            1.3 Ransomware et locker\r\n            1.4 Stealer\r\n            1.5 Miner\r\n            1.6 Banking Trojan\r\n            1.7 Rootkit\r\n        2. Scénario d\'infection\r\n            2.1 Introduction\r\n            2.2 Scénario 1 : l\'exécution d\'une pièce jointe\r\n            2.3 Scénario 2 : le clic malencontreux\r\n            2.4 Scénario 3 : l\'ouverture d\'un document infecté\r\n            2.5 Scénario 4 : les attaques informatiques\r\n            2.6 Scénario 5 : les attaques physiques : infection par clé USB\r\n            2.7 Scénario 6 : les attaques de type Supply Chain\r\n        3. Techniques de communication avec le C&C\r\n            3.1 Introduction\r\n            3.2 Mise à jour de la liste des noms de domaine\r\n            3.3 Communication via HTTP/HTTPS/FTP/IRC\r\n            3.4 Communication via e-mail\r\n            3.5 Communication via un réseau point à point\r\n            3.6 Communication via des protocoles propriétaires\r\n            3.7 Communication via le protocole DNS\r\n            3.8 Communication passive\r\n            3.9 Fast flux et DGA (Domain Generation Algorithms)\r\n        4. Mode opératoire en cas d\'attaques ciblées persistantes (APT)\r\n            4.1 Introduction\r\n            4.2 Phase 1 : reconnaissance\r\n            4.3 Phase 2 : intrusion\r\n            4.4 Phase 3 : persistance\r\n            4.5 Phase 4 : pivot\r\n            4.6 Phase 5 : exfiltration\r\n            4.7 Traces laissées par l\'attaquant\r\n        5. Ressources sur Internet concernant les malwares\r\n            5.1 Introduction\r\n            5.2 Sites permettant des analyses en ligne\r\n            5.3 Sites présentant des analyses techniques\r\n            5.4 Sites permettant de télécharger des samples de malwares\r\n        6. Conclusion\r\n    Malware ciblant les systèmes Microsoft Windows\r\n        1. Introduction\r\n        2. Collecte d\'informations\r\n            2.1 Introduction\r\n            2.2 Collecte et analyse de la base de registre\r\n            2.3 Collecte et analyse des journaux d\'événements\r\n            2.4 Collecte et analyse des fichiers exécutés au démarrage\r\n            2.5 Collecte et analyse du système de fichiers\r\n            2.6 Gestion des fichiers bloqués par le système d\'exploitation\r\n            2.7 Framework d\'investigation inforensique\r\n            2.8 Outil FastIR Collector\r\n        3. Image mémoire\r\n            3.1 Présentation\r\n            3.2 Réalisation d\'une image mémoire\r\n            3.3 Analyse d\'une image mémoire\r\n            3.4 Analyse de l\'image mémoire d\'un processus\r\n        4. Fonctionnalités des malwares\r\n            4.1 Techniques pour rester persistant\r\n            4.2 Techniques pour se cacher\r\n            4.3 Malware sans fichier\r\n            4.4 Contournement de l\'UAC\r\n        5. Création d\'un laboratoire d\'analyse\r\n            5.1 Introduction\r\n            5.2 VirtualBox\r\n            5.3 L\'outil de gestion d\'échantillons de malwares Viper\r\n        6. Analyste du vecteur d’infection\r\n            6.1 Informations sur un fichier\r\n                6.1.1 Format d\'un fichier\r\n                6.1.2 Chaînes de caractères présentes dans un fichier\r\n            6.2 Analyse dans le cas d\'un fichier PDF\r\n                6.2.1 Introduction\r\n                6.2.2 Extraire le code JavaScript\r\n                6.2.3 Désobfusquer du code JavaScript\r\n                6.2.4 Conclusion\r\n            6.3 Analyse dans le cas d\'un fichier Adobe Flash\r\n                6.3.1 Introduction\r\n                6.3.2 Extraire et analyser le code ActionScript\r\n            6.4 Analyse dans le cas d\'un fichier JAR\r\n                6.4.1 Introduction\r\n                6.4.2 Récupération du code source depuis les classes\r\n            6.5 Analyse dans le cas d\'un fichier Microsoft Office\r\n                6.5.1 Introduction\r\n                6.5.2 Outils permettant l\'analyse de fichiers Office\r\n                6.5.3 Cas de malware utilisant des macros : Dridex\r\n                6.5.4 Cas de malware utilisant une vulnérabilité\r\n            6.6 Utilisation de PowerShell\r\n        7. Analyse dans le cas d\'un binaire\r\n            7.1 Analyse de binaires développés en AutoIt\r\n            7.2 Analyse de binaires développés avec le framework .NET\r\n            7.3 Analyse de binaires développés en C ou C++\r\n        8. Le format PE\r\n            8.1 Introduction\r\n            8.2 Schéma du format PE\r\n                8.2.1 En-tête MZ-DOS\r\n                8.2.2 Segment DOS\r\n                8.2.3 En-tête PE\r\n                8.2.4 Table des sections\r\n                8.2.5 Table des imports\r\n                8.2.6 Table des exports\r\n                8.2.7 Ressources\r\n            8.3 Outils pour analyser un PE\r\n            8.4 API d\'analyse d’un PE\r\n        9. Suivre l\'exécution d\'un binaire\r\n            9.1 Introduction\r\n            9.2 Activité au niveau de la base de registre\r\n            9.3 Activité au niveau du système de fichiers\r\n            9.4 Activité réseau\r\n            9.5 Activité réseau de type HTTP(S)\r\n        10. Utilisation de Cuckoo Sandbox\r\n            10.1 Introduction\r\n            10.2 Configuration\r\n            10.3 Utilisation\r\n            10.4 Limitations\r\n            10.5 Conclusion\r\n        11. Conclusion\r\n    Reverse engineering\r\n        1. Introduction\r\n            1.1 Présentation\r\n            1.2 Législation\r\n        2. Qu’est-ce qu’un processus Windows ?\r\n            2.1 Introduction\r\n            2.2 Process Environment Block\r\n            2.3 Thread Environment Block\r\n        3. Assembleur x86\r\n            3.1 Registres\r\n            3.2 Instructions et opérations\r\n            3.3 Gestion de la mémoire par la pile\r\n            3.4 Gestion de la mémoire par le tas\r\n            3.5 Optimisation du compilateur\r\n        4. Assembleur x64\r\n            4.1 Registres\r\n            4.2 Paramètres des fonctions\r\n        5. Analyse statique\r\n            5.1 Présentation\r\n            5.2 Ghidra\r\n                5.2.1 Présentation\r\n            5.3 Navigation\r\n                5.3.1 Renommages et commentaires\r\n                5.3.2 Extensions\r\n            5.4 Radare2\r\n                5.4.1 Présentation\r\n                5.4.2 Ligne de commande\r\n                5.4.3 Interfaces graphiques : Cutter\r\n            5.5 Techniques d\'analyse\r\n                5.5.1 Commencer une analyse\r\n                5.5.2 Sauts conditionnels\r\n                5.5.3 Boucles\r\n            5.6 API Windows\r\n                5.6.1 Introduction\r\n                5.6.2 API d\'accès aux fichiers\r\n                5.6.3 API d\'accès à la base de registre\r\n                5.6.4 API de communication réseau\r\n                5.6.5 API de gestion des services\r\n                5.6.6 API des objets COM\r\n                5.6.7 Exemples de l\'utilisation de l\'API\r\n                5.6.8 Conclusion\r\n            5.7 Limites de l\'analyse statique\r\n        6. Analyse dynamique\r\n            6.1 Présentation\r\n            6.2 Immunity Debugger\r\n                6.2.1 Présentation\r\n                6.2.2 Contrôle de flux d\'exécution\r\n                6.2.3 Analyse d\'une librairie\r\n                6.2.4 Points d\'arrêt\r\n                6.2.5 Visualisation des valeurs en mémoire\r\n                6.2.6 Copie de la mémoire\r\n                6.2.7 Support du langage Python\r\n                6.2.8 Conclusion\r\n            6.3 WinDbg\r\n                6.3.1 Présentation\r\n                6.3.2 Interface\r\n                6.3.3 Commandes de base\r\n                6.3.4 Plug-in\r\n                6.3.5 Conclusion\r\n            6.4 Analyse noyau Windows\r\n                6.4.1 Présentation\r\n                6.4.2 Mise en place de l\'environnement\r\n                6.4.3 Protections kernel Windows\r\n                6.4.4 Conclusion\r\n            6.5 Limites de l\'analyse dynamique et conclusion\r\n    Techniques d\'obfuscation\r\n        1. Introduction\r\n        2. Obfuscation des chaînes de caractères\r\n            2.1 Introduction\r\n            2.2 Cas de l\'utilisation de ROT13\r\n            2.3 Cas de l\'utilisation de la fonction XOR avec une clé statique\r\n            2.4 Cas de l\'utilisation de la fonction XOR avec une clé dynamique\r\n            2.5 Cas de l\'utilisation de fonctions cryptographiques\r\n            2.6 Cas de l\'utilisation de fonctions personnalisées\r\n            2.7 Outils permettant de décoder les chaînes de caractères\r\n        3. Obfuscation de l\'utilisation de l\'API Windows\r\n            3.1 Introduction\r\n            3.2 Étude du cas Duqu\r\n            3.3 Étude du cas EvilBunny\r\n        4. Packers\r\n            4.1 Introduction\r\n            4.2 Packers utilisant la pile\r\n            4.3 Packers utilisant le tas\r\n            4.4 Encodeur Metasploit\r\n            4.5 Outils pour automatiser l’unpacking\r\n        5. Autres techniques\r\n            5.1 Anti-VM\r\n            5.2 Anti-reverse engineering et anti-debug\r\n        6. Conclusion\r\n    Malwares ciblant les systèmes Android\r\n        1. Introduction\r\n        2. Le système d’exploitation Android\r\n            2.1 Historique\r\n            2.2 Architecture\r\n            2.3 Partitions et systèmes de fichiers\r\n            2.4 Sécurité\r\n                2.4.1 Sécurité au niveau système\r\n                2.4.2 Sécurité au niveau Dalvik /ART\r\n                2.4.3 Effet de bord des fonctionnalités de sécurités\r\n            2.5 Application Android\r\n            2.6 Malwares ciblant les téléphones Android\r\n        3. Vecteurs d’infection\r\n            3.1 Installation via Google Store\r\n            3.2 Installation via des stores alternatifs\r\n            3.3 Installation manuelle\r\n            3.4 MDM : Mobile Device Management\r\n            3.5 Accès physique au terminal\r\n        4. Création d’un laboratoire d’analyse\r\n            4.1 Machine virtuelle ou téléphone physique ?\r\n            4.2 Adb (Android Debug Bridge)\r\n            4.3 Accès administrateur (root)\r\n            4.4 Ca', 'neuf', 1),
('978-2-412-04658-6', 25, 1, 'AWS : Guide de l\'administrateur système', '2019-06-13', '9782412046586-475x500-1.png', 'En optant pour une plate-forme permettant une grande r&Atilde;&copy;activit&Atilde;&copy; d\\\'adaptation et une reprise sur incident &Atilde;&copy;prouv&Atilde;&copy;e telle que AWS (Amazon Web Services), l\\\'informatique dans le cloud invite &Atilde;&nbsp; adopter une approche de programmeur. M&Atilde;&ordf;me une &Atilde;&copy;quipe r&Atilde;&copy;duite combinant d&Atilde;&copy;veloppeurs et op&Atilde;&copy;rateurs (Dev-Ops) peut profiter d\\\'outils de redimensionnement et de substitution d\\\'instances automatiques pour garder le contr&Atilde;&acute;le de ses infrastructures applicatives.\r\nLa seule condition est d\\\'abandonner les anciennes pratiques de s&Atilde;&copy;paration entre d&Atilde;&copy;veloppement et exploitation afin d\\\'apprendre &Atilde;&nbsp; ma&Atilde;&reg;triser l\\\'automatisation. Ce guide pratique complet montre aux d&Atilde;&copy;veloppeurs comme aux administrateurs syst&Atilde;&uml;me comment configurer et g&Atilde;&copy;rer les services AWS tels que EC2, CloudFormation, Elastic Load Balancing, 53 et Route 53. Les administrateurs syst&Atilde;&uml;me d&Atilde;&copy;couvriront comment automatiser leurs processus avec leurs outils habituels.\r\nLes d&Atilde;&copy;veloppeurs engrangeront assez de savoir-faire en administration pour pouvoir construire des infrastructures applicatives robustes et r&Atilde;&copy;silientes dans AWS. ', '', 1),
('978-2-416-00139-0', 1, 10, 'Manuel de survie du RGPD', '2021-02-18', 'manuel de survie du RGPD.jpg', '\r\nDepuis 2018, les obligations qui s\\\'imposent aux traitements de donn&Atilde;&copy;es personnelles ont profond&Atilde;&copy;ment &Atilde;&copy;volu&Atilde;&copy;. Si les principes fondamentaux (les objectifs) demeurent les m&Atilde;&ordf;mes, les formalit&Atilde;&copy;s et l\\\'organisation &Atilde;&nbsp; mettre en place (les moyens) ont &Atilde;&copy;t&Atilde;&copy; boulevers&Atilde;&copy;es. Le respect des obligations du RGPD n\\\'est pas seulement une \\&quot;formalit&Atilde;&copy; administrative\\&quot; de plus : il peut conditionner la survie de vos projets ou m&Atilde;&ordf;me de votre entreprise.\r\n\r\nInversement, la conformit&Atilde;&copy; au RGPD diminue votre risque de subir une cyberattaque ou une plainte de clients m&Atilde;&copy;contents. Elle constitue un avantage concurrentiel et valorise votre entreprise. Pourtant, pour les petites et moyennes structures qui ne disposent pas d\\\'un sp&Atilde;&copy;cialiste du droit des donn&Atilde;&copy;es personnelles en interne et qui n\\\'ont pas les moyens de faire appel &Atilde;&nbsp; un consultant, le RGPD repr&Atilde;&copy;sente un v&Atilde;&copy;ritable d&Atilde;&copy;fi : texte volumineux et incompr&Atilde;&copy;hensible, obligations complexes, sanctions alourdies.\r\n\r\nCet ouvrage propose au lecteur une m&Atilde;&copy;thodologie \\&quot;cl&Atilde;&copy; en main\\&quot; de mise en &Aring;', '', 1),
('978-2-7440-6695-5', 16, 8, 'Les bases du hacking', '2020-04-01', 'base_hacking.jpg', ' Sommaire\r\n\r\n01. Teste d\'intrusion\r\n02. Reconnaissance\r\n03. Scans\r\n04. Exploitation\r\n05. Ingénierie sociale\r\n06. Exploitation web\r\n07. Post-exploitation et maintien d\'accès\r\n08. Conclusion d’un test d’intrusion\r\nIndex', 'neuf', 0),
('978-2-7440-6696-2', 16, 8, 'Techniques de hacking', '2020-04-01', 'techniques_hacking.jpg', ' Sommaire\r\n\r\n01. Programmation\r\n02. Exploitation\r\n03. Réseau\r\n04. Shellcode\r\n05. Contre-mesures\r\n06. Cryptologie', 'neuf', 0),
('978-2-7440-6729-7', 16, 8, 'Linux : le guide de survie L\'essentiel du code et des commandes 2e édition ', '2019-07-05', 'linux_guide_survie.jpg', '01.    Les commandes : ce qu\'il faut savoir\r\n02.    Parcours du système de fichiers\r\n03.    Création et destruction\r\n04.    Informations sur les commandes\r\n05.    Création de blocs de commandes\r\n06.    Affichage du contenu des fichiers\r\n07.    Manipulation de fichiers texte avec des filtres\r\n08.    Propriétés et permissions\r\n09.    Archivage et compression\r\n10.    Recherche d\'éléments\r\n11.    La commande find\r\n12.    Le shell\r\n13.    Surveillance des ressources système\r\n14.    Installation de logiciels\r\n15.    Connectivité\r\n16.    Travail sur le réseau\r\n17.    Travail en réseau avec Windows', 'neuf', 0),
('978-2-7460-0540-3', 9, 5, 'Windows PowerShell (versions 1 et 2) Guide de référence pour l\'administration système', '2010-02-01', 'powershell.PNG', 'Ce livre sur Windows PowerShell, écrit par les créateurs du site PowerShell-Scripting.com, s’adresse aussi bien aux IT Pros souhaitant optimiser leurs tâches d’administration système, qu’à un public intermédiaire de techniciens et administrateurs système. PowerShell est désormais profondément ancré dans les produits Microsoft tels que : Windows 7, Windows Server 2008 et 2008 R2, Exchange Server 2007 et 2010, SQL Server 2008, System Center, etc.\r\nLe présent ouvrage se substitue à l’édition précédente car, outre les fonctionnalités de PowerShell version 1, il inclut les nouvelles fonctionnalités propres à la version 2 et exploitables sur les dernières versions des produits Microsoft. Ces fonctionnalités sont clairement identifiées de façon à ce que le lecteur, selon ses besoins, puisse facilement faire la différence entre les deux versions.\r\nDe la technologie .NET aux objets COM en passant par WMI et ADSI, les nombreux cas concrets d’utilisation en entreprise vous aideront à devenir plus performant dans vos tâches quotidiennes.\r\nA travers les 5 premiers chapitres, le lecteur découvrira PowerShell sous toutes ses facettes : de la simple utilisation de l’interpréteur de commandes, jusqu’aux techniques de scripting les plus avancées.\r\nLe chapitre 6 sur la technologie .NET lui montrera que l’usage de PowerShell est pratiquement sans limites et lui ouvrira une fenêtre sur le monde de la création d’interfaces graphiques avec Windows Forms et Windows Presentation Foundation (WPF).\r\nLe chapitre 9 est quant à lui consacré aux technologies dites \" de remoting \" qui autorisent l’exécution de commandes ou de scripts PowerShell à distance grâce aux nouvelles fonctionnalités de la version 2.\r\nDans le chapitre 11 le lecteur apprendra à maîtriser le jeu de commandes PowerShell étendu apporté par le rôle Active Directory 2008 R2.\r\nEnfin les chapitres suivants lui permettront de mettre en oeuvre PowerShell dans le monde de l’administration système au travers de nombreux cas concrets d’utilisation en situation réelle et de découvrir les outils et acteurs les plus importants de l’écosystème Windows PowerShell.\r\nParmi les nombreux exemples traités dans le livre, vous découvrirez comment : lister les comptes périmés d’un domaine - créer des utilisateurs par lots - surveiller les journaux d’événements - changer le mot de passe administrateur de toutes les machines d’un domaine - créer des comptes utilisateurs locaux ou du domaine - générer des rapports d’inventaires - gérer la configuration réseau d’ordinateurs à distance - générer des mots de passe - envoyer des mails - interagir avec des applications telles que Office ou encore Windows Live Messenger - et bien d’autres...\r\nDes éléments complémentaires sont en téléchargement sur cette page et sur le site de la communauté PowerShell francophone : PowerShell-Scripting.com.\r\nArnaud Petitjean et Robin Lemesle sont reconnus Microsoft MVP (Most Valuable Professional) sur PowerShell.\r\n\r\nLes chapitres du livre :\r\nAvant-propos - Introduction - A la découverte de PowerShell - Fondamentaux - Maîtrise du Shell - Gestion des erreurs de débogage - La sécurité - .NET - Objets COM - Windows Management Instrumentation (WMI) - Exécution à distance - Manipulation d’objets annuaire avec ADSI - Module Active Directory de Windows Server 2008 - Études de cas - Ressources complémentaires - Conclusion - Annexes ', 'abime', 0),
('978-2-7460-0546-5', 2, 5, 'VBA Excel 2010 Programmer sous Excel : Macros et Langage VBA', '2010-05-01', 'vba excel 2010.PNG', 'A la fois simple, pratique et complet, ce livre sur VBA Excel 2010 s\'adresse aux utilisateurs d’Excel ou aux développeurs souhaitant créer des applications de tableur conviviales, fiables et puissantes.\r\nOutre les éléments de base du langage VBA (structure du langage et concepts de programmation objet) vous permettant d\'automatiser les traitements, vous apprendrez à concevoir des formulaires, à personnaliser l\'interface d\'Excel et notamment le ruban, à communiquer avec les autres applications Office, à importer ou publier des pages Web et des fichiers XML et à exploiter les fonctions API de Windows.\r\nDe nombreux exemples sont présentés dans chaque chapitre et le livre se termine par un exercice récapitulatif qui vous guide pour la création complète d\'une application Excel.\r\nLes exemples présentés dans l’ouvrage sont en téléchargement sur le site www.editions-eni.fr.\r\n\r\nLes chapitres du livre :\r\nAvant-propos – Présentation – Le langage VBA – La programmation objet sous Excel – Les objets d’Excel – Les boîtes de dialogue – Les formulaires – Amélioration de l’interface utilisateur – Gestion des événements – Débogage et gestion des erreurs – Communication avec les applications Office 2010 – Internet – Programmation Windows – Code d’une mini-application – Annexes ', 'correct', 0),
('978-2-7460-0559-5', 16, 5, 'PowerPoint 2010', '2010-06-01', 'PWP 2010.PNG', 'Ce guide pratique vous présente dans le détail toutes les fonctionnalités de Microsoft® Powerpoint 2010 ; il s’adresse à toute personne désirant découvrir et approfondir l’ensemble de ses fonctionnalités. Après la description de l\'environnement comprenant le ruban et le nouvel onglet Fichier, la présentation des différents modes d\'affichage et la gestion des documents (ouverture et enregistrement de présentations et de modèles, partage sur SkyDrive,  gestion d\'album photos, impression,...), vous apprendrez à créer et modifier les différents éléments d\'une présentation : les diapositives, les masques, les thèmes, les arrière-plans, les sections...\r\nDès lors, vous pourrez créer le contenu de chaque diapositive en saisissant le texte, le plan puis en le mettant en valeur ; vous verrez ensuite comment créer, modifier et mettre en valeur toutes sortes d’objets : formes automatiques, tableaux, images, sons, vidéos, diagrammes et graphiques ; vous exploiterez les nouvelles fonctionnalités relatives à l’édition vidéo (ajouter, rogner, appliquer des effets artistiques, tronquer le début ou la fin de vos vidéos)  et à la retouche d’images (effets artistiques, détourage de forme, reflets, corrections de couleurs, compression…).\r\nVous pourrez alors lancer votre premier diaporama puis y intégrer effets d\'animation, annotations, minutage des diapositives, l’enregistrer au format vidéo afin de réutiliser l’animation dans d’autres présentations ou la partager avec vos proches sur DailyMotion ou Youtube. Pour terminer, vous aborderez des fonctions avancées telles que la gestion des liens hypertexte, la révision d’une présentation, la personnalisation du ruban et le travail avec d\'autres applications Office.\r\nLe livre se termine par un chapitre sur les bonnes pratiques relatives à l’utilisation d’un logiciel de PréAO (Présentation Assistée par Ordinateur).', 'neuf', 0),
('978-2-7460-0800-8', 9, 5, 'jQuery Mobile (HTML5, CSS3, JavaScript) Développez vos applications Web mobiles', '2013-03-01', 'jquery mobile.PNG', 'Ce livre sur le développement d\'applications Web mobiles avec jQuery Mobile s\'adresse aux développeurs web conscients de la mutation en cours dans l\'utilisation du web et soucieux de proposer des applications Web parfaitement adaptées aux spécificités des terminaux mobiles.\r\n\r\nLes premiers chapitres traitent des caractéristiques du Web mobile, tant d\'un point de vue navigateurs, périphériques, usages et bonnes pratiques, que d\'un point de vue outils de tests, émulateurs et validateurs web mobiles. Les chapitres suivants dressent le panorama des éléments incontournables du HTML5, des CSS3 et des API JavaScript spécifiques aux applications mobiles. Une large partie est ensuite consacrée à jQuery Mobile ; ce framework propose de concevoir des interfaces mobiles compatibles avec la totalité des périphériques du marché, le tout dans un look résolument moderne et adapté à l\'utilisation tactile. Vous découvrirez dans ce livre comment, avec jQuery Mobile, concevoir des pages avec en-tête et pied de page, des barres de navigation, des fenêtres de dialogue ou pop-up, des listes, des formulaires y compris les nouveaux formulaires du Html5, des éléments dépliants... ceci en toute simplicité et sans une seule ligne de JavaScript ! Pour les experts, l\'API jQuery Mobile est présentée en fin d\'ouvrage.', 'neuf', 0),
('978-2-7460-0897-5', 9, 5, 'Node.js Exploitez la puissance de JavaScript côté serveur', '2015-03-01', 'Node js.PNG', 'Ce livre s\'adresse aux développeurs souhaitant découvrir et maîtriser la plateforme JavaScript Node.js. De bonnes connaissances sur le développement en JavaScript ainsi que sur les outils en ligne de commande sont nécessaires afin de tirer le meilleur parti de ce livre.\r\n\r\nLa progression pédagogique choisie par les auteurs débute par l\'installation de Node sur les trois grands systèmes d\'exploitation (GNU/Linux, OS X et Windows) puis couvre le fonctionnement du gestionnaire de paquets « npm », qui est le compagnon quotidien du développeur Node, et la présentation des concepts essentiels de la plateforme.\r\n\r\nLes chapitres suivants présentent les puissants paradigmes que sont les flux et les promesses puis enchaînent sur des explications pratiques concernant la manipulation de fichiers et l\'utilisation de bases de données. Viennent ensuite l\'écriture des tests, les outils de développement qui permettent d\'améliorer la qualité du code et de simplifier la vie du développeur en automatisant un maximum de tâches (comme par exemple JSHint et Gulp), les bonnes pratiques pour déboguer efficacement du code puis tout ce qu\'il faut savoir pour la mise en production des applications.\r\n\r\nTout au long du livre, l\'accent est mis sur les bonnes pratiques et l\'ensemble des exemples présentés dans le livre est disponible sur le dépôt GitHub du livre afin que le lecteur puisse se lancer le plus rapidement possible.', 'neuf', 0),
('978-2-7460-2340-6', 13, 5, 'PHP et MySQL versions 4 et 5 Entraînez-vous à créer des applications professionnelles', '2004-04-01', 'PHP et Mysql.PNG', '', 'correct', 0),
('978-2-7460-3960-5', 2, 5, 'Algorithmique - Techniques fondamentales de programmation - (avec des exemples en Java)', '2007-10-01', 'Algo java.PNG', 'Ce livre s\'adresse à toute personne désireuse de maîtriser les bases essentielles de la programmation. Pour apprendre à programmer, il faut d\'abord comprendre ce qu\'est vraiment un ordinateur, comment il fonctionne et surtout comment il peut faire fonctionner des programmes, comment il manipule et stocke les données et les instructions, quelle est sa logique. Alors, au fur et à mesure, le reste devient évidence : variables, tests, conditions, boucles, tableaux, fonctions, fichiers, jusqu\'aux notions avancées comme les pointeurs et les objets. Dans ce livre, le langage algorithmique (ou la syntaxe du pseudo-code des algorithmes) reprend celui couramment utilisé dans les écoles d informatique et dans les formations comme les BTS, DUT, premières années d\'ingénierie à qui ce livre est en partie destiné et conseillé. Une fois les notions de base acquises, le lecteur trouvera dans ce livre de quoi évoluer vers des notions plus avancées : deux chapitres, l\'un sur les pointeurs et les références, l\'autre sur les objets, ouvrent les portes de la programmation dans des langages évolués et puissants comme le C, le C++ et surtout Java. Une grande partie des algorithmes de ce livre sont réécrits en Java et les sources, directement utilisables, sont disponibles en téléchargement sur le site de l\'éditeur.', 'correct', 0),
('978-2-7460-4678-8', 9, 5, 'Asp.Net Avec C# Sous Visual Studio 2008 - Conception Et Développement D\'applications Web', '2009-01-16', 'ASP Net.PNG', 'Ce livre s\'adresse aux développeurs, architectes et administrateurs qui souhaitent adopter une approche professionnelle pour la réalisation d\'applications Web en tirant le meilleur parti possible d\'ASP.Net. Il accompagne le lecteur dans une étude complète de la technologie ASP.Net et de Visual Studio 2008. Pour chaque thème abordé des exemples pratiques et utiles sont fournis en C#. Le lecteur commencera par Visual Studio et ses outils (Refactoring, tests unitaires, Visual Source Safe,...) et par les évolutions du langage C#. Le deuxième chapitre décrit le fonctionnement des applications IIS. L\'ouvrage étudie en détail les Web fonru, AJAX et propose des composants personnalisés pour créer des graphiques. Les chapitres suivants élaborent des solutions pour allier rapidité de développement et performances dans l\'accès aux bases de données ADO.Net, avec notamment les nouveaux composants basés sur LINO. Est ensuite traitée la sécurisation des sites Web avec la mise au point d\'un fournisseur pour Active Directory. Le lecteur découvrira également comment créer un portail personnalisable pour informations boursières (Web Part et services Web WCF, REST). Le dernier chapitre décrit la mise en production sous ASP.Net et l\'infrastructure de contrôle d\'état Health Monitoring.', 'neuf', 1),
('978-2-7460-4715-0', 6, 5, 'Java EE - Guide De Développement D\'applications Web En Java', '2009-02-01', 'java EE.PNG', 'Ce livre s\'adresse aux développeurs souhaitant monter en compétences sur le développement d\'applications web, côté serveur, avec les technologies essentielles de la plateforme Java EE 7 (Java Enterprise Edition 7). Des connaissances sur le langage Java sont un prérequis nécessaire à la bonne compréhension du livre.\r\n\r\nTout au long des chapitres, l\'auteur aide le lecteur à mettre en place des projets au travers de l\'IDE Eclipse lui permettant d\'explorer le fonctionnement des technologies décrites.\r\n\r\nLe premier chapitre présente Java EE 7, le protocole HTTP et l\'environnement de développement utilisé (Java 8, Eclipse Mars, Tomcat 8 et MySQL 5.7). Les deux chapitres suivants présentent en détail les fondamentaux du développement web avec les servlets et les JSP ainsi que les technologies suivantes : les filtres, les événements, les sessions, les cookies, l\'EL et les balises JSTL. Le quatrième chapitre traite de la persistance des données, un élément incontournable pour créer une application. La première partie de ce chapitre détaille l\'utilisation de l\'API JDBC et la seconde partie montre la puissance d\'un ORM en présentant la spécification JPA. À l\'issue de ces quatre premiers chapitres, le lecteur est capable de créer ses premières applications web en Java.\r\n\r\nPour aller encore plus loin dans la connaissance et la maîtrise des technologies Java liées au développement web, le cinquième chapitre présente la notion de Framework qui permet d\'architecturer les applications et d\'industrialiser le développement. À ce titre, les bases des Frameworks JSF et Struts 2 sont présentées. L\'avant-dernier chapitre est dédié à la mise en œuvre de technologies complémentaires : les Services Web REST et les WebSockets. Enfin, le dernier chapitre s\'attarde sur le déploiement d\'une application sur Tomcat 8 en traitant des sujets incontournables que sont la sécurité (l\'authentification, l\'autorisation, HTTPS) et la journalisation.', 'correct', 0),
('978-2-7460-4845-4', 2, 5, 'Merise guide pratique', '2009-05-01', 'Merise-guide-pratique.jpg', 'Ce livre sur la méthode Merise s’adresse tout particulièrement aux étudiants en premier cycle d’informatique, aux étudiants en école de gestion et à toute personne souhaitant une information simple, directe et pratique sur la méthode Merise et sur le langage SQL. Dans la partie sur la méthode Merise, vous découvrirez comment : - Réaliser les différents modèles (modèles conceptuels, modèles logiques, modèles physiques) mais aussi les modèles spécifiques aux traitements (modèles conceptuels des traitements, modèles organisationnels des traitements...). - Modéliser avec les extensions Merise/2. - Comparer certains modèles Merise à certains diagrammes UML. Le langage SQL est présenté de façon progressive et est illustré par de nombreux exemples. Dans cette partie vous apprendrez à : - Manipuler, filtrer, trier, regrouper les données. - Créer, modifier, supprimer des tables. - Affecter ou enlever des droits à certains utilisateurs. L’auteur n’a volontairement gardé que le côté concret de la méthode Merise et du langage SQL, pour permettre au lecteur une immersion immédiate. Il propose de nombreux exercices pour faciliter cette assimilation', 'abime', 1),
('978-2-7460-5470-7', 17, 5, 'Java 6 - Les Bases Du Langage Et De La Programmation Objet', '2010-05-19', 'java 6.PNG', 'Ce livre est extrait du titre \"JAVA 6 - Les fondamentaux du langage Java\" dans la collection Ressources Informatiques aux Editions ENI. Il s\'adresse à un public de développeurs débutants. Il vous permettra d\'acquérir les connaissances de base sur le langage Java en détaillant la mise en place des variables et des structures de contrôles élémentaires. Il vous permettra ensuite de vous initier à la programmation objet en vous indiquant comment mettre en place les classes d\'objets, les attributs, les méthodes...', 'neuf', 0),
('978-2-7460-5492-9', 16, 5, 'Word 2010', '2010-06-07', 'word 2010.PNG', 'Ce guide pratique vous présente dans le détail l\'ensemble des fonctions de cette nouvelle version du célèbre traitement de texte Microsoft Word 2010 . il s\'adresse à toute personne désirant découvrir et approfondir l\'ensemble de ses fonctionnalités. Après la description de l\'environnement de travail comprenant le ruban et le nouvel onglet Fichier, vous apprendrez à créer, enregistrer vos documents, à les partager sur SkyDrive, à saisir et à modifier le texte. Vous verrez ensuite comment mettre en page et imprimer le document. La partie suivante vous explique dans le détail comment mettre en forme le texte en appliquant des mises en valeur de caractères (effets visuels et fonctionnalités OpenType), des mises en forme de paragraphe et de page. Pour optimiser vos mises en forme, vous apprendrez à appliquer un thème au document, à créer des styles et modèles. Vous irez plus loin dans la gestion du texte en exploitant les fonctions de recherche et remplacement, en utilisant le vérificateur orthographique, le dictionnaire des synonymes et la fonction de traduction. Dans la partie suivante consacrée à l\'exploitation des longs documents, vous verrez comment créer des notes et signets, un plan, une table des matières, un index, une bibliographie et un document maître. Un document Word peut contenir d\'autres éléments que du texte : des tableaux, des objets graphiques et des images sur lesquels vous pourrez appliquer de nombreux effets artistiques. Vous verrez aussi comment créer un formulaire, réaliser un mailing, travailler avec les autres applications Office, travailler à plusieurs sur un même document à l\'aide du Suivi des modifications, personnaliser l\'interface et créer des macro-commandes. Le livre se termine par un chapitre sur les bonnes pratiques relatives à l\'utilisation d\'un traitement de texte.\r\n\r\nSommaire:\r\n[\"Microsoft Word 2010\",\"Gestion des documents\",\"Saisie/modification des données\",\"Impression\",\"Présentation des données\",\"Thèmes, styles et modèles\",\"Révisions de texte\",\"Gestion des longs documents\",\"Tableaux\",\"Objets graphiques\",\"Publipostage\",\"Fonctions avancées diverses\"]', 'neuf', 0),
('978-2-7460-5493-6', 16, 5, 'Outlook 2010', '2010-05-01', 'outlook 2010.PNG', 'Ce guide pratique vous présente dans le détail les fonctions du logiciel de messagerie Microsoft® Outlook 2010. Il s’adresse à toute personne désirant découvrir et approfondir l’ensemble de ses fonctionnalités. Après la description de l’environnement comprenant le ruban et le nouvel onglet Fichier, vous découvrirez le nouvel affichage Conversation qui permet de regrouper les messages par conversations, vous apprendrez à envoyer des messages de différent format, basés ou pas sur un modèle ; vous verrez aussi comment renvoyer un message, rappeler un message envoyé par erreur ou marquer un message pour le suivi. Vous apprendrez ensuite à répondre à un message, à le transférer et à gérer les éventuelles pièces jointes. Pour compléter vos messages, vous apprendrez à y insérer signature, fichier, calendrier…\r\nVous verrez dans le détail comment configurer votre messagerie : choisir le format des messages, créer une ou plusieurs signatures, mettre en place un message d’absence, définir une mise en forme conditionnelle des messages (par exemple, afficher en rouge les messages dont l’objet contient le mot Budget), gérer le courrier indésirable et automatiser les tâches répétitives à l’aide des actions rapides (par exemple, transférer automatiquement certains messages à votre responsable). Vous verrez aussi comment gérer vos flux RSS dans Outlook.\r\nLa troisième partie traite du Calendrier, vous apprendrez à gérer votre agenda pour planifier rendez-vous, événements, envoyer et répondre à une invitation à une réunion, publier, partager vos Calendriers et créer des groupes de Calendriers... Outlook vous permet aussi de gérer vos contacts, de planifier des tâches et de créer des notes. Vous verrez dans le détail comment gérer tous les éléments utilisés dans Outlook : sélectionner des éléments, les rechercher, les trier, les filtrer, les regrouper, les organiser par catégories… Un chapitre est consacré à l’archivage des messages par la création de fichiers de données Outlook (.pst).\r\nLe dernier chapitre aborde la configuration de votre logiciel de messagerie : comment modifier et créer de nouveaux affichages, gérer les groupes, raccourcis et dossiers, ajouter des comptes de messagerie et personnaliser le ruban.\r\nLe livre se termine par un chapitre sur les bonnes pratiques relatives à l’utilisation d’un logiciel de messagerie. ', 'neuf', 0),
('978-2-7460-7386-9', 17, 5, 'GLPI (Gestion Libre de Parc Informatique) ', '2012-05-01', 'GLPI.PNG', 'Ce livre est extrait du titre \"GLPI (Gestion Libre de Parc Informatique) Installation et configuration d\'une solution de gestion de parc et de helpdesk\" paru dans la collection Ressources Informatiques aux Editions ENI. Chaque titre de cette collection s\'adresse à un public d\'informaticiens désireux d\'accéder rapidement à toutes les connaissances sur un sujet précis. Les pré-requis et les objectifs de chaque ouvrage sont clairement définis pour que le lecteur cible parfaitement le titre qui lui apportera les informations dont il a besoin. Un glossaire des acronymes et outils utilisés peut être proposé pour disposer de toute l\'information souhaitée.', '', 0),
('978-2-7460-7644-0', 1, 1, 'Centreon Maitrisez la supervision de votre Système d\'Information', '2012-10-01', 'centreon-maitrisez-la-supervision-de-votre-systeme-d-information.jpg', '', '', 0),
('978-2-7460-7775-1', 1, 1, 'SCOM 2012 (System Center Operations Manager) De l\'installation &Atilde;', '2012-12-01', 'scom-2012.jpg', 'Ce livre sur SCOM 2012 s\'adresse aux administrateurs et ing&Atilde;&copy;nieurs d&Atilde;&copy;sireux d\'acqu&Atilde;&copy;rir et de ma&Atilde;&reg;triser l\'installation, la mise en &Atilde;', '', 0),
('978-2-7460-8867-2', 8, 5, 'Bootstrap 3 pour l\'intégrateur web CSS et Responsive Web Design', '2014-04-01', 'bootstrap 3.PNG', 'Bootstrap est un environnement de conception de site web, un framework en anglais. Il facilite l\'utilisation des règles CSS pour concevoir des sites web modernes, attractifs et adaptatifs (Responsive Web Design). Ce livre s\'adresse à tous les concepteurs de site Web connaissant déjà l\'HTML et les CSS, désirant travailler efficacement et démarrer sur des bases solides.\r\n\r\nVous commencerez par apprendre à installer Bootstrap puis vous verrez comment utiliser les règles CSS de Bootstrap pour mettre en forme vos pages web : pour le texte, les tableaux, les formulaires, les boutons, les images et la mise en page.\r\n\r\nVous apprendrez ensuite à utiliser la grille adaptative de Bootstrap pour concevoir des sites Responsive Web Design dont l\'affichage s\'adaptera automatiquement  selon l\'écran de diffusion (écran d\'ordinateur, tablette ou smartphone).\r\n\r\nEnsuite, vous exploiterez les différents composants Bootstrap afin d\'optimiser vos pages web : les barres de navigation, la pagination, les boutons et les composants de mise en page prêts à l\'emploi. Nous aborderons aussi les composants proposés pour les interfaces d\'administration des applications web comme les CMS.\r\n\r\nUn chapitre traite de l\'exploitation de Bootstrap avec JavaScript pour créer des composants interactifs comme, par exemple, des carrousels et des bulles d\'aide.\r\n\r\nVous verrez également comment créer un site web basé sur un template et un thème Bootstrap et vous concevrez la structure d\'un site avec un outil de construction en ligne.\r\n\r\nCe livre se termine par l\'étude d\'un site Web créé avec Bootstrap, l\'utilisation d\'un thème Bootstrap dans WordPress et d\'un template dans Joomla!.', 'neuf', 0),
('978-2-7460-8917-4', 9, 5, 'jQuery Le framework JavaScript du Web 2.0 3ième édition', '2014-05-01', 'jquery.PNG', 'Ce livre sur jQuery s\'adresse à des experts ou des candidats experts dans la création de sites Web. La connaissance, sinon la maîtrise du JavaScript, des feuilles de style CSS, du DOM et de l\'AJAX sont des prérequis indispensables à la compréhension et à la mise en pratique de cet ouvrage.\r\n\r\nDans ce livre, les auteurs ont privilégié une approche structurée et progressive. Chaque thème de jQuery est illustré par un exemple avant de passer à une mise en pratique sur des applications plus pointues. \r\n\r\nCette nouvelle édition du livre coïncide avec une évolution majeure du framework jQuery. La version jQuery 3.1 se caractérise par une taille réduite de l\'API afin d\'en accélérer le chargement ; des méthodes disparaissent et des fonctions sont modifiées et optimisées. Les lecteurs qui désirent s\'initier à jQuery partiront ainsi avec une librairie retravaillée dont les principes resteront d\'actualité de nombreuses années. Pour les développeurs qui utilisent une version plus ancienne de jQuery et qui souhaitent migrer vers cette nouvelle version, les auteurs attirent leur attention tout au long du livre sur les pièges qu\'ils pourraient rencontrer lors de cette migration.\r\n\r\nAprès une présentation du framework, un chapitre est consacré aux sélecteurs, qui non seulement illustrent la diversité de jQuery pour atteindre aisément n\'importe quel élément de la page mais qui sont aussi un concept essentiel dans l\'apprentissage de jQuery. Dans les chapitres suivants le lecteur découvre les éléments d\'interactivité apportés par jQuery ; d\'abord par la manipulation des attributs (ajout, modification ou suppression à la volée) puis par l\'application aux feuilles de style CSS. Suivent les événements classiques du JavaScript mais surtout ceux apportés par jQuery. Après la présentation des effets visuels aussi nombreux qu\'originaux, l\'étude du DOM et de l\'AJAX revisités par jQuery est longuement détaillée. Le chapitre final passe en revue quelques-uns des nombreux plug-ins développés par la communauté jQuery qui permettent d\'apporter, en quelques lignes de code, des effets pour le moins spectaculaires.\r\n\r\nSa lecture terminée, le lecteur sera à même de développer des applications web plus interactives, plus riches et plus innovantes, le tout avec une facilité d\'écriture du JavaScript insoupçonnée.', 'neuf', 1),
('978-2-7460-8926-6', 9, 5, 'Android - Guide de développement d\'applications Java pour Smartphones et Tablettes (2ième édition)', '2014-06-11', 'Android.PNG', 'Véritable guide d\'apprentissage, ce livre accompagne le lecteur dans le développement d\'applications Android pour Smartphones et Tablettes tactiles. Il s\'adresse aux développeurs disposant d\'un minimum de connaissances sur la programmation orientée objet, le langage Java et les environnements de développement intégrés type Eclipse ou Android Studio et couvre toutes les versions d\'Android jusqu\'à la 4.4 incluse. Le livre présente l\'intégralité du processus de création d\'applications, de la mise en place de l\'environnement de développement jusqu\'à la publication de l\'application, et décrit une large sélection de fonctionnalités proposées par le système Android. Vous découvrirez dans un premier temps la plate-forme Android, vous installerez l\'environnement de développement et vous créerez sans attendre votre première application Android. Vous étudierez ensuite comment se construit l\'interface utilisateur et prendrez connaissance des composants applicatifs fondamentaux. Vous apprendrez à développer des interfaces complexes qui s\'adaptent aux écrans des tablettes et smartphones et à construire vos propres composants réutilisables. Puis, seront présentées la persistance des données, la programmation concurrente, la sécurité et la communication réseau. Un chapitre vous expliquera comment intégrer les réseaux sociaux dans vos applications. Pour pouvoir proposer des applications les plus qualitatives possibles, vous découvrirez comment ajouter des traces et tester votre application. Vous serez enfin guidé pas à pas pour publier vos applications vers les utilisateurs du monde entier. L\'ouvrage se termine en présentant la détermination de la géolocalisation et l\'utilisation des capteurs intégrés dans les terminaux Android. Sont également traités en détail des sujets avancés tels que la création d\'AppWidget, la protection des applications payantes (LVL), les achats in-app ainsi que les communications NFC. à l\'issue de cette lecture, vous serez capable de développer et publier des applications, de qualité, natives Android (dans ses différentes versions jusqu\'à la 4.4 incluse) pour Smartphones et Tablettes tactiles. Enfin, en complément et pour illustrer de façon pratique les propos de l\'ouvrage, l\'auteur propose en téléchargement sur le site www.editions-eni.fr un projet reprenant toutes les notions présentées dans le livre. Interface utilisateur, listes, traitements asynchrones, géolocalisation, NFC, etc. : tous les modules du projet sont fonctionnels, directement exploitables, et fournissent une solide structure de base pour vos développements. Les chapitres du livre : Avant-propos - L\'univers Android - Premiers pas - Découverte de l\'interface utilisateur - Les fondations - Compléter l\'interface utilisateur - Composants applicatifs principaux - La persistance des données - Construire des interfaces complexes - Concurrence, sécurité et réseau - Réseaux sociaux - Tracer, déboguer et tester - Publier une application - Capteurs et géolocalisation - La technologie NFC - Fonctionnalités avancées', 'correct', 0),
('978-2-7460-9540-3', 2, 5, 'Algorithmique - Techniques fondamentales de programmation Exemples en PHP (nombreux exercices corrigés)', '2015-03-01', 'Algo.PNG', 'Ce livre sur l\'algorithmique s\'adresse à toute personne désireuse de maîtriser les bases essentielles de la programmation. Pour apprendre à programmer, il faut d\'abord comprendre ce qu\'est vraiment un ordinateur, comment il fonctionne et surtout comment il peut faire fonctionner des programmes, comment il manipule et stocke les données et les instructions, quelle est sa logique. Alors, au fur et à mesure, le reste devient évidence : variables, tests, conditions, boucles, tableaux, fonctions, fichiers, jusqu\'aux notions avancées comme les pointeurs et les objets. \r\n\r\nDans ce livre, le langage algorithmique (ou la syntaxe du pseudo-code des algorithmes) reprend celui couramment utilisé dans les écoles d\'informatique et dans les formations comme les BTS, DUT, classes préparatoires, premières années d\'ingénierie à qui ce livre est en partie destiné et conseillé.\r\n\r\nUne fois les notions de base acquises, le lecteur trouvera dans ce livre de quoi évoluer vers des notions plus avancées : deux chapitres, l\'un sur les pointeurs et les références, l\'autre sur les arbres et les objets, ouvrent les portes de la programmation dans des langages évolués et puissants comme le C, le C++, Java et PHP. De nombreux exercices ponctuent chaque chapitre.\r\n\r\nLa plupart des algorithmes de ce livre sont traduits en PHP et les sources, directement utilisables, sont disponibles en téléchargement sur le site www.editions-eni.fr.\r\n\r\n\r\nLes chapitres du livre :\r\nAvant-propos – Introduction à l\'algorithmique – Les variables et opérateurs – Test et logique booléenne – Les boucles – Les tableaux et structures – Les sous-programmes – Les fichiers – Notions avancées – Une approche de l\'objet – Corrigés des exercices', 'correct', 0);
INSERT INTO `livre` (`LIV_ISBN`, `COL_NUM`, `EDIT_NUM`, `LIV_TITRE`, `LIV_DATE`, `LIV_IMG`, `LIV_RESUME`, `LIV_ETAT`, `LIV_EMPRUNTER`) VALUES
('978-2-7460-9845-3', 18, 5, 'L\'intelligence Artificielle Pour Les Développeurs - Concepts Et Implémentations En Java', '2019-01-16', 'IA.PNG', 'Ce livre sur l\'Intelligence Artificielle s\'adresse particulièrement aux développeurs et ne nécessite pas de connaissances mathématiques approfondies. Au fil des chapitres, l\'auteur présente les principales techniques d\'Intelligence Artificielle et, pour chacune d\'elles, les inspirations biologiques, physiques voire mathématiques, puis les différents concepts et principes (sans entrer dans les détails mathématiques), avec des exemples et figures pour chacun de ceux-ci. Les domaines d\'application sont illustrés par des applications réelles et actuelles. Chaque chapitre contient un exemple d\'implémentation générique, complété par une application pratique, développée en Java. Ces exemples de code étant génériques, ils sont facilement adaptables à de nombreuses applications Java 10, sans plugin extérieur. Les techniques d\'Intelligence Artificielle décrites sont :\r\n\r\n- Les systèmes experts, permettant d\'appliquer des règles pour prendre des décisions ou découvrir de nouvelles connaissances.\r\n- La logique floue, permettant de contrôler des systèmes informatiques ou mécaniques de manière beaucoup plus souple que les programmes traditionnels.\r\n- Les algorithmes de recherche de chemin, dont le A* très utilisé dans les jeux vidéo pour trouver les meilleurs itinéraires.\r\n- Les algorithmes génétiques, utilisant la puissance de l\'évolution pour apporter des solutions à des problèmes complexes.\r\n- Les principales métaheuristiques, dont la recherche tabou, trouvant des optimums à des problèmes d\'optimisation, avec ou sans contraintes.\r\n- Les systèmes multi-agents, simulant des foules ou permettant des comportements émergents à partir de plusieurs agents très simples.\r\n- Les réseaux de neurones (et le deep learning), capables de découvrir et de reconnaître des modèles, dans des suites historiques, des images ou encore des données.\r\n\r\nPour aider le lecteur à passer de la théorie à la pratique, l\'auteur propose en téléchargement, sur le site www.editions-eni.fr, sept projets Java (réalisés avec NetBeans), un par technique d\'Intelligence Artificielle. Chaque projet contient un package générique et un ou plusieurs packages spécifiques à l\'application proposée.\r\n\r\nLe livre se termine par une bibliographie, permettant au lecteur de trouver plus d\'informations sur ces différentes techniques, une sitographie listant quelques articles présentant des applications réelles, une annexe et un index.\r\n\r\n\r\nLes chapitres du livre :\r\nAvant-propos – Introduction – Systèmes experts – Logique floue – Recherche de chemins – Algorithmes génétiques – Métaheuristiques d\'optimisation – Systèmes multi-agents – Réseau de neurones – Sitographie – Annexe', 'neuf', 0),
('978-2-7460-9971-5', 6, 5, 'Hacking et Forensic Développez vos propres outils en Python (2ième édition)', '2016-02-01', 'hacking_forensic.jpg', 'Table des matières\r\n\r\n    Python : les fondamentaux\r\n        1. Introduction\r\n        2. Historique\r\n        3. Caractéristiques du langage\r\n        4. Types de données\r\n            4.1 Les nombres\r\n            4.2 Les opérations arithmétiques\r\n            4.3 Les chaînes de caractères\r\n            4.4 Les tuples\r\n            4.5 Les listes\r\n            4.6 Les dictionnaires\r\n            4.7 Supplément aux types de données\r\n        5. Structures conditionnelles et répétitives\r\n            5.1 Test if ... elif ... else\r\n            5.2 Boucle while\r\n            5.3 Boucle for\r\n            5.4 Les listes en intention (comprehension list)\r\n        6. Fonctions, modules et paquets\r\n            6.1 Définition et appel de fonction\r\n            6.2 Espaces de noms\r\n            6.3 Fonctions particulières\r\n            6.4 Modules\r\n            6.5 Paquets\r\n            6.6 Instruction yield\r\n        7. Les classes\r\n            7.1 Déclaration d\'une classe\r\n            7.2 Surcharge des opérateurs\r\n            7.3 Propriétés, accesseurs et mutateurs\r\n            7.4 Héritage\r\n            7.5 Polymorphisme\r\n        8. Manipulation de fichiers\r\n        9. Les exceptions\r\n        10. Modules utiles pour la suite du livre\r\n            10.1 Module sys\r\n            10.2 Module os\r\n            10.3 Module re\r\n            10.4 Modules pickle et shelve\r\n            10.5 Modules bases de données\r\n                10.5.1 MySQLdb\r\n                10.5.2 PostgreSQL\r\n            10.6 Module thread\r\n                10.6.1 Principe du module\r\n                10.6.2 Threading\r\n                10.6.3 Classe Lock()\r\n        11. Conclusion\r\n    Le réseau\r\n        1. Introduction\r\n        2. Les sockets\r\n            2.1 Création d\'un socket\r\n            2.2 Échange de données\r\n            2.3 Socket en UDP\r\n            2.4 Les erreurs\r\n            2.5 Socket et FTP\r\n        3. Création d\'un serveur\r\n            3.1 Introduction\r\n            3.2 Connexion cliente\r\n            3.3 Discussion avec le client\r\n            3.4 Création d\'un trojan basique\r\n            3.5 Création d\'un trojan plus complexe\r\n        4. DNS : Domain Name Server\r\n            4.1 Introduction\r\n                4.1.1 Que signifie DNS ?\r\n                4.1.2 Principaux enregistrements DNS\r\n            4.2 nslookup basique\r\n            4.3 Reverse lookup\r\n            4.4 La librairie DNS\r\n            4.5 Demande à partir d\'un serveur spécifié\r\n            4.6 Mise en forme des résultats obtenus\r\n        5. FTP : File Transfer Protocol\r\n            5.1 Introduction\r\n            5.2 FTP anonyme\r\n            5.3 Téléchargement de fichiers ASCII\r\n            5.4 Téléchargement de fichiers binaires\r\n            5.5 Téléchargement avancé de fichiers binaires\r\n            5.6 Envoi de données\r\n            5.7 Les erreurs FTP\r\n            5.8 Lister le contenu des répertoires\r\n            5.9 Les autres commandes utiles\r\n            5.10 Télécharger récursivement des données\r\n        6. Les expressions régulières\r\n            6.1 Introduction\r\n            6.2 Le module re\r\n            6.3 Les méthodes utiles\r\n                6.3.1 Méthode search()\r\n                6.3.2 Méthode match()\r\n                6.3.3 Méthode sub()\r\n                6.3.4 Aller plus loin avec les groupes\r\n            6.4 Comment construire son pattern ou expression\r\n        7. Le Web\r\n            7.1 Introduction\r\n            7.2 Récupération d\'une page source\r\n            7.3 Méthodes GET et POST\r\n                7.3.1 Méthode GET\r\n                7.3.2 Méthode POST\r\n            7.4 Gestion des erreurs\r\n                7.4.1 Erreurs de connexion : urllib2.URLError\r\n                7.4.2 Erreur 404\r\n            7.5 Authentification\r\n        8. Analyser les pages HTML et XHTML\r\n            8.1 Introduction\r\n            8.2 Première approche\r\n            8.3 Travail sur des pages « réelles »\r\n                8.3.1 Ampersand\r\n                8.3.2 Caractères spéciaux\r\n            8.4 BeautifulSoup\r\n                8.4.1 Introduction\r\n                8.4.2 Récupérer les liens\r\n        9. Le XML\r\n            9.1 Introduction\r\n            9.2 Représentation du fichier XML\r\n            9.3 Python et XML\r\n            9.4 Lire un flux RSS\r\n        10. Les e-mails\r\n            10.1 Introduction\r\n            10.2 La bibliothèque smtplib\r\n                10.2.1 Le corps du texte\r\n                10.2.2 Mail avec pièce jointe\r\n            10.3 Analyser des e-mails\r\n            10.4 Analyser les dates\r\n            10.5 Erreurs et débogage\r\n            10.6 Mail et POP\r\n        11. Le SSL en Python\r\n            11.1 Introduction\r\n            11.2 Utilisation d\'OpenSSL\r\n            11.3 Vérifier les certificats\r\n        12. Utilisation de bases de données\r\n            12.1 Introduction\r\n            12.2 MySQLdb\r\n                12.2.1 Rappel\r\n                12.2.2 Utilisation\r\n            12.3 PostgreSQL\r\n                12.3.1 Introduction et première connexion\r\n                12.3.2 Exécuter des commandes\r\n                12.3.3 Cacher les changements\r\n                12.3.4 Répéter des commandes\r\n                12.3.5 Récupérer des données\r\n        13. Conclusion\r\n        14. Mise en pratique\r\n            14.1 Cas 1 : Scan de ports\r\n            14.2 Cas 2 : Envoi de mails\r\n            14.3 Cas 3 : Fuzzing de FTP\r\n            14.4 Cas 4 : Parsing de page web\r\n            14.5 Cas 5 : Brute force MySQL\r\n    Réseau : la bibliothèque Scapy\r\n        1. Introduction\r\n        2. Programmation réseau avec Scapy\r\n            2.1 Liste des protocoles supportés\r\n            2.2 Quelques notions sur les réseaux\r\n                2.2.1 Topologie des réseaux\r\n                2.2.2 Les différents types de réseaux\r\n                2.2.3 Qu\'est-ce qu’un protocole ?\r\n                2.2.4 Adresse IP\r\n                2.2.5 Les classes d’adresses\r\n                2.2.6 Le masque de sous-réseau\r\n                2.2.7 Le modèle OSI\r\n            2.3 Manipulations basiques\r\n                2.3.1 Commandes de base\r\n                2.3.2 Fabrication de paquets\r\n                2.3.3 Les entrées-sorties\r\n                2.3.4 Entrons dans le détail\r\n            2.4 Utilisation avancée : sécurité réseau\r\n                2.4.1 traceroute\r\n                2.4.2 Sniffing\r\n                2.4.3 Scan TCP\r\n                2.4.4 Tunneling\r\n            2.5 Quelques exemples simples en « one-liner »\r\n                2.5.1 Scan ACK\r\n                2.5.2 Scan Xmas\r\n                2.5.3 Scan IP\r\n                2.5.4 Les différents ping\r\n                2.5.5 Les attaques classiques\r\n        3. Scapy et IPv6\r\n            3.1 Notion d\'IPv6\r\n                3.1.1 Généralités\r\n                3.1.2 IPv6 : RFC 2373\r\n            3.2 Application\r\n                3.2.1 Requête ICMP IPv6\r\n                3.2.2 Routage de paquets IPv6\r\n                3.2.3 Exemple de routage de header\r\n                3.2.4 traceroute\r\n                3.2.5 IPv6 NA\r\n                3.2.6 Avertissement de daemon tués\r\n                3.2.7 Exemple\r\n        4. Quelques autres exemples\r\n        5. Conclusion\r\n        6. Mise en pratique\r\n            6.1 Canal caché IP\r\n            6.2 Détection de Rogue AP\r\n            6.3 IP Spoofing\r\n            6.4 Spoofing IPv6 des voisins\r\n    Débogage sous Windows\r\n        1. Introduction\r\n        2. Le module ctypes de Python\r\n        3. Première approche\r\n        4. État des registres\r\n            4.1 Énumération des threads\r\n            4.2 Récupération des valeurs des registres\r\n        5. Les événements du debugger\r\n        6. Les points d’arrêt (breakpoints)\r\n            6.1 Points d\'arrêt logiciel\r\n            6.2 Points d\'arrêt matériel\r\n            6.3 Point d\'arrêt mémoire\r\n        7. La bibliothèque PyDbg\r\n            7.1 Violation d’accès des en-têtes (handlers)\r\n            7.2 Process snapshot\r\n        8. Mise en pratique : Hooking\r\n    Le fuzzing\r\n        1. Introduction\r\n        2. Fuzzing FTP\r\n        3. Fuzzing avec Scapy\r\n        4. Fuzzing avec PyDbg : format string\r\n            4.1 Introduction\r\n            4.2 Fuzzer de fichiers\r\n        5. Sulley\r\n            5.1 Introduction\r\n            5.2 Installation\r\n                5.2.1 Installation normale\r\n                5.2.2 Installation non standard\r\n            5.3 Utilisation\r\n                5.3.1 Structure du répertoire de Sulley\r\n                5.3.2 Représentation de données\r\n                5.3.3 Primitives statiques et aléatoires\r\n                5.3.4 Les entiers\r\n                5.3.5 Chaînes de caractères et délimiteurs\r\n                5.3.6 Les extensions Fuzz Library\r\n                5.3.7 Blocks\r\n                5.3.8 Groupes\r\n                5.3.9 Encodeur\r\n                5.3.10 Dépendances\r\n                5.3.11 Block helpers\r\n                5.3.12 Legos\r\n        6. Mise en pratique\r\n            6.1 Fuzzing 1 : HTTP\r\n            6.2 Fuzzing 2 : FTP\r\n    Traitement d\'images\r\n        1. Introduction\r\n        2. Utilisation\r\n            2.1 La classe Image\r\n            2.2 Lire et écrire\r\n            2.3 Couper, coller et fusionner\r\n            2.4 Transformations géométriques\r\n            2.5 Transformation des couleurs\r\n            2.6 Amélioration d\'images\r\n                2.6.1 Filtres\r\n                2.6.2 Opérations sur les points\r\n                2.6.3 Améliorations\r\n        3. Exemples d\'utilisation\r\n            3.1 Création d\'un captcha\r\n            3.2 Capture d\'image et transformation\r\n            3.3 Lecture de captcha\r\n    Un peu plus sur le Web\r\n        1. Introduction\r\n        2. Reprenons les basiques\r\n        3. Mapping de site web\r\n        4. Brute force de répertoires ou d\'emplacement de fichiers\r\n        5. Brute force authentification HTML\r\n        6. Selenium\r\n            6.1 Introduction\r\n            6.2 Installation\r\n            6.3 Premier test\r\n            6.4 Copie d\'écran avec Selenium\r\n        7. Connexion sur un site web et navigation\r\n        8. Conclusion\r\n    Forensic', 'neuf', 0),
('978-2-8417-7347-3', 4, 1, 'Ruby par l\'exemple', '2006-09-01', 'ruby.PNG', '1 - Chaînes ;\r\n2 - Nombres ;\r\n3 - Dates et temps ;\r\n4 - Les tableaux ;\r\n5 - Les hachages ;\r\n6 - Fichiers et répertoires ;\r\n7 - Blocs et itérateurs ;\r\n8 - Objets et classes ;\r\n9 - Modules et espaces de noms ;\r\n10 - Introspection et méta-programmation ;\r\n11 - XML et HTML ;\r\n12 - Graphiques et autres formats de fichiers ;\r\n13 - Bases de données et persistance ;\r\n14 - Services Internet ;\r\n15 - Développement Web : Ruby on Rails ;\r\n16 - Services web et programmation distribuée ;\r\n17 - Tester, déboguer, optimiser et documenter ;\r\n18 - Distribuer des logiciels sous forme de paquetages ;\r\n19 - Automatiser les tâches avec Rake ;\r\n20 - Multitâche et multithreading ;\r\n21 - L\'interface utilisateur ;\r\n22 - Étendre Ruby avec d\'autres langages ;\r\n23 - L\'administration système.', 'correct', 0),
('9782100819942', 7, 7, 'Mettre en oeuvre DevOps - 3e édition', '2021-02-01', 'Mettre en oeuvre Devops.jpeg', 'Présenter DevOps et dissiper le halo qui entoure ce mot à la mode est une gageure d’autant plus nécessaire que ce mouvement jusqu’ici émergent s’est transformé en une vague qui déferle sur l’ensemble des DSI françaises engagées dans la transformation  digitale et la quête d’agilité.\r\nComment résister en effet à la promesse de plus de productivité, de réactivité et de sûreté de fonctionnement lorsqu’elle se  conjugue avec plus de satisfaction des utilisateurs et de plaisir au travail ?\r\nClair et précis, cet ouvrage de référence aborde successivement tous les points clés qui fondent le modèle opératoire DevOps. Pragmatique, il explique précisément comment mettre la DSI en  mouvement vers l’agilité.\r\nLa première partie souligne la logique Lean de DevOps et l’importance du déploiement continu, clé de voûte de la sûreté  de fonctionnement de l’informatique.\r\nLa seconde partie explique comment conduire le changement  vers une DSI plus agile en analysant l’écart entre l’informatique des sociétés Internet et celle des DSI plus traditionnelles. Elle permet une réflexion sur l’architecture d’entreprise, la  transformation digitale et les nouvelles relations de travail.\r\nLes ajouts de cette troisième édition concernent notamment DevSecOps, qui recouvre les modalités de la sécurité informatique lorsque l’entreprise travaille en mode DevOps, et l’évolution des pratiques d’externalisation.', 'neuf', 1),
('9782100822508', 15, 7, 'Pratique des tests logiciels - 4e édition Améliorer la qualité par les tests. Gérer une campagne de tests. Préparer la certification ISTQB', '2021-02-01', 'pratique des tests logiciels.jpeg', 'Ce livre s’adresse aux développeurs, concepteurs et intégrateurs de logiciels ainsi qu’aux chefs de projets et aux architectes.\r\nAvec la montée en charge du big data, et du cloud computing, la fiabilité des logiciels est plus importante que jamais. Concevoir du premier coup et sans aucune erreur un logiciel qui comporte plusieurs millions de lignes de code et plusieurs centaines de composants est évidemment impossible. La nécessité de faire des tests au cours des différentes phases de conception paraît évidente et pourtant, dans la pratique, les tests sont souvent négligés et relégués au second plan. L’objectif de cet ouvrage est triple :\r\n–– donner les bases et les bonnes pratiques pour concevoir et mener à bien des tests ;\r\n–– fournir un référentiel en termes de méthodes et de vocabulaire ;\r\n–– préparer la certification ISTQB du métier de testeur.\r\nCette quatrième édition rend compte des évolutions dans la pratique des tests logiciels au cours des trois dernières années.', 'neuf', 1),
('9782100824342', 23, 7, 'Le petit RGPD 2021-2022', '2021-08-11', 'le petit RGPD.PNG', 'L\\\'essentiel en bref : contours exhaustifs du RGPD, principales règles de protection des données, constituer un registre de traitement des données, respecter le droit des personnes, trier et sécuriser ses données\r\nMaîtrisez toutes les notions indispensables en matière de protection des données :\r\n> Les données personnelles\r\n> Le traitement d\\\'une donnée personnelle\r\n> Le droit des personnes\r\n> Les obligations du responsable de traitement et du sous-traitant\r\n> Le registre des données personnelles\r\n> L\\\'analyse d\\\'impact relative à la protection des données\r\n> Le délégué à la protection des données (DPO)\r\n> La sécurité des données\r\n> La notification d\\\'une violation\r\n> Les règles des entreprises contraignantes (Binding Corporate Rules)\r\n> La transmission de données à des pays tiers autorisés ou à des organisations internationales\r\n> Les codes de conduite\r\n> Les certifications\r\n> Comment se protéger contre les atteintes ?\r\n> La CNIL : autorité de contrôle\r\n> Le Comité européen de protection des données (CEPD)\r\n> Voies et recours\r\n> Les responsabilités et les sanctions\r\n> Le RGPD et le respect des droits et des libertés', 'neuf', 0),
('9782340016620', 32, 9, 'SQL par l\'exemple - La pratique professionnelle des bases de donn&Atilde;&copy;es', '2017-03-07', 'sql-par-l-exemple-la-pratique-professionnelle-des-bases-de-donnees.jpg', 'Au coeur des syst&Atilde;&uml;mes d\\\'informations se trouvent les bases de donn&Atilde;&copy;es relationnelles, outils informatiques incontournables. Pour les comprendre, mieux les appr&Atilde;&copy;hender, voire les utiliser, nous avons choisi d\\\'allier exp&Atilde;&copy;riences professionnelles et p&Atilde;&copy;dagogiques.\r\nCet ouvrage s\\\'adresse donc aux &Atilde;&copy;tudiants de BTS-SIO, d\\\'IUT informatique, de classes pr&Atilde;&copy;paratoires et d\\\'&Atilde;&copy;coles d\\\'ing&Atilde;&copy;nieurs, mais &Atilde;&copy;galement aux d&Atilde;&copy;veloppeurs d&Atilde;&copy;butants utilisateurs des SGBDR et de leur langage SQL. Chaque &Atilde;&copy;tudiant retrouvera les &Atilde;&copy;l&Atilde;&copy;ments de son programme, de la th&Atilde;&copy;orie relationnelle &Atilde;&nbsp; la mise en oeuvre de SQL, avec de nombreux exercices d\\\'entra&Atilde;&reg;nement. Pour aller plus loin, les questions rencontr&Atilde;&copy;es lors d\\\'une pratique professionnelle sont aussi abord&Atilde;&copy;es.\r\nEn compl&Atilde;&copy;ment, vous trouverez sur le site www.sqlparexemple.fr, l\\\'ensemble des exercices corrig&Atilde;&copy;s et les &Atilde;&copy;l&Atilde;&copy;ments techniques dont vous aurez besoin.', '', 0),
('9782340060654', 32, 9, 'Gestion de projet', '2021-11-23', 'gestion-de-projet.jpg', '\r\n\r\nLa gestion de projet est au centre des préoccupations des entreprises pour relever les multiples challenges auxquels elles sont confrontées : améliorer les performances de leurs processus, créer plus de valeur pour les clients et les parties prenantes de plus en plus nombreuses, conquérir de nouveaux marchés, commercialiser des nouveaux produits et services, mieux travailler ensemble...\r\n\r\nCes desseins nécessitent de repenser l\\\'entreprise autour de ses projets et de ses chefs de projets  :\r\n\r\n- Comment atteindre ces objectifs ?\r\n- Comment repérer les projets prioritaires ?\r\n- Comment les mener à leur terme ?\r\n- Comment prendre en compte tous les paramètres nécessaires à un pilotage efficient des projets ?\r\n- Comment définir le périmètre d\\\'un projet et animer l\\\'équipe ?\r\n- Comment éviter les pertes financières au-cours du cycle de vie d\\\'un projet ?\r\n\r\nCet ouvrage met en exergue également les compétences techniques et relationnelles nécessaires et développe par ailleurs des sujets indissociables d\\\'une démarche projet efficace, tels que la gestion des relations mutuellement bénéfiques avec toutes les parties prenantes de l\\\'environnement d\\\'un projet. Il précise également le rôle du chef de projet et les moyens dont il dispose pour exercer ses responsabilités.\r\nL’auteur apporte ainsi une vision humaniste, naturelle et rigoureuse de la gestion de projet aux étudiants et aux professionnels.', 'neuf', 0),
('9782409029424', 9, 5, 'Vue.js Développez des applications web modernes en JavaScript avec un framework progressif', '2021-04-02', 'vue-js-developpez-des-applications-web-modernes-en-javascript-avec-un-framework-progressif.jpg', '', 'neuf', 1),
('9782412053287', 25, 1, 'Kotlin  Guide pratique - Des réponses concrètes aux cas d\\\'utilisation', '2020-06-18', 'Kotlin guide pratique.jpg', '\r\n\r\nKotlin, le nouveau langage qui monte qui monte\r\n\r\nKotlin permet de développer des applications Android, des applications Web, et bien plus encore. Grâce à ce livre unique, les développeurs apprendront comment utiliser ce langage de type Java dans tous leurs développements.\r\n\r\nL\\\'auteur se consacre à des études de cas plus que sur la syntaxe pure du langage. Bien que très utilisé dans le développement Android, Kotlin peut se substituer à Java dans bien d\\\'autres développement, par exemple celui d\\\'applications iOS.\r\n\r\nAu programme :\r\n\r\nLes concepts de la programmation fonctionnelle\r\nL\\\'interopérabilité de Java et l\\\'accès à ses bibliothèques avec Kotlin\r\nAjoutez vos propres fonctions\r\nUtiliser le framework JUnit 5\r\nTravailler avec des frameworks spécifiques comme Android et Spring\r\n', 'neuf', 1),
('9782729851200', 24, 9, 'Bases de données de la modélisation au SQL', '2009-09-16', 'bases-de-donnees-de-la-modelisation-au-sql.jpg', '\r\n\r\nPublic\r\n- Étudiants en informatique des IUT, des BTS, des filières IUP, des écoles d’ingénieurs ou encore en auto-formation\r\n- Professionnels informaticiens désireux de se former à la conception des bases de données et au langage de requête SQL ou de s’initier à la programmation événementielle des bases de données\r\n- Professionnels non informaticiens désirant connaître les bases nécessaires à la bonne compréhension et la bonne utilisation des SGBD\r\n\r\nObjectifs\r\n- Acquérir progressivement de solides compétences en conception des bases de données\r\n- Découvrir l’algèbre relationnelle\r\n- Apprendre d’une manière pédagogique et rigoureuse le langage de requête SQL\r\n- Savoir combiner les commandes SQL élémentaires avec un langage de programmation\r\n\r\nContenu\r\n- Cinq chapitres\r\n- Cinq séances d’exercices sous forme de travaux dirigés\r\n- Cinq séances d’exercices sous forme de travaux pratiques\r\n- Corrigés complets et détaillés de tous les exercices\r\n- Nombreux exemples\r\n- Nombreuses illustrations\r\n- Table des matières globale\r\n- Tables des matières détaillées par chapitre\r\n- Index complet\r\n\r\nSommaire\r\n- Introduction aux bases de données\r\n- Conception des bases de données\r\n- Modèle de données relationnel\r\n- Langage SQL\r\n- Programmation SQL\r\n- Correction des exercices\r\n', 'neuf', 0),
('979-1-0900-8504-6', 11, 3, 'Dynamisez Vos Sites Web Avec Javascript', '2012-04-01', 'dynamisez vos sites web avec JS.PNG', '', 'neuf', 0),
('MYPSEC5', 31, 5, 'Sécurité informatique les bonnes pratiques pour l\'utilisateur', '2021-05-03', 'securite-informatique-les-bonnes-pratiques-pour-l-utilisateur.png', 'Un dépliant pratique, 12 pages en couleurs sur les bonnes pratiques pour assurer la sécurité de votre matériel et de vos données : contrôler la diffusion de ses informations personnelles, naviguer en toute sécurité sur Internet, utiliser des logiciels sûrs et à jour, protéger physiquement votre matériel, repérer un e-mail frauduleux, créer un mot de passe secret et robuste, réagir en cas de suspicion d’accès frauduleux à mon compte, sauvegarder ses données, utiliser les supports amovibles avec prudence, télétravailler en toute sécurité. ', 'neuf', 0);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `LOGID` varchar(20) COLLATE utf8_bin NOT NULL,
  `PWD` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`LOGID`, `PWD`) VALUES
('admin@local.fr', '');


-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

CREATE TABLE `rubriques` (
  `RUB_ID` int(11) NOT NULL,
  `RUB_NOM` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `rubriques`
--

INSERT INTO `rubriques` (`RUB_ID`, `RUB_NOM`) VALUES
(1, 'Base de données'),
(2, 'Bureautique'),
(3, 'développement d\'applications'),
(4, 'Langage'),
(5, 'Réseau'),
(6, 'Systèmes d\'exploitation'),
(7, 'Téléphonie'),
(8, 'web et e-marketing'),
(9, 'Sécurité'),
(10, 'Gestion de projets'),
(11, 'Droit');


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`AUT_NUM`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_liv` (`LIV_id`),
  ADD KEY `FK_id_Client` (`id_Client`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`COL_NUM`),
  ADD KEY `REALISER_FK` (`EDIT_NUM`);

--
-- Index pour la table `correspondre`
--
ALTER TABLE `correspondre`
  ADD PRIMARY KEY (`RUB_ID`,`LIV_ISBN`),
  ADD KEY `LIEN_7_FK` (`RUB_ID`),
  ADD KEY `LIEN_8_FK` (`LIV_ISBN`);

--
-- Index pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD PRIMARY KEY (`AUT_NUM`,`LIV_ISBN`),
  ADD KEY `LIEN_10_FK` (`AUT_NUM`),
  ADD KEY `LIEN_11_FK` (`LIV_ISBN`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`EDIT_NUM`),
  ADD UNIQUE KEY `EDIT_NUM` (`EDIT_NUM`);

--
-- Index pour la table `emprunter`
--
ALTER TABLE `emprunter`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `FK_EMP_CLI` (`CLIENT_ID`),
  ADD KEY `FK_EMP_ISBN` (`LIV_ISBN`);

--
-- Index pour la table `fileattente`
--
ALTER TABLE `fileattente`
  ADD PRIMARY KEY (`CLIENT_ID`,`LIV_ISBN`),
  ADD KEY `FK_ATTENTE_LIEN_8_LIVRE` (`LIV_ISBN`);


--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`LIV_ISBN`),
  ADD KEY `APPARTIENT_FK` (`COL_NUM`),
  ADD KEY `EDITER_FK` (`EDIT_NUM`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LOGID`);


--
-- Index pour la table `rubriques`
--
ALTER TABLE `rubriques`
  ADD PRIMARY KEY (`RUB_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `AUT_NUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `collection`
--
ALTER TABLE `collection`
  MODIFY `COL_NUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `EDIT_NUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `emprunter`
--
ALTER TABLE `emprunter`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_COLLECTI_REALISER_EDITEUR` FOREIGN KEY (`EDIT_NUM`) REFERENCES `editeur` (`EDIT_NUM`);


--
-- Contraintes pour la table `correspondre`
--
ALTER TABLE `correspondre`
  ADD CONSTRAINT `FK_CORRESPO_LIEN_7_RUBRIQUE` FOREIGN KEY (`RUB_ID`) REFERENCES `rubriques` (`RUB_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORRESPO_LIEN_8_LIVRE` FOREIGN KEY (`LIV_ISBN`) REFERENCES `livre` (`LIV_ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD CONSTRAINT `FK_ECRIRE_LIEN_10_AUTEUR` FOREIGN KEY (`AUT_NUM`) REFERENCES `auteur` (`AUT_NUM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ECRIRE_LIEN_11_LIVRE` FOREIGN KEY (`LIV_ISBN`) REFERENCES `livre` (`LIV_ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `emprunter`
--
ALTER TABLE `emprunter`
  ADD CONSTRAINT `FK_EMP_CLI` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`),
  ADD CONSTRAINT `FK_EMP_LIVRE` FOREIGN KEY (`LIV_ISBN`) REFERENCES `livre` (`LIV_ISBN`),
  ADD CONSTRAINT `FK_FIL_LIVRE` FOREIGN KEY (`LIV_ISBN`) REFERENCES `livre` (`LIV_ISBN`);

--
-- Contraintes pour la table `fileattente`
--
ALTER TABLE `fileattente`
  ADD CONSTRAINT `FK_ATTENTE_LIEN_7_CLIENT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`),
  ADD CONSTRAINT `FK_ATTENTE_LIEN_8_LIVRE` FOREIGN KEY (`LIV_ISBN`) REFERENCES `livre` (`LIV_ISBN`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK_LIVRE_APPARTIEN_COLLECTI` FOREIGN KEY (`COL_NUM`) REFERENCES `collection` (`COL_NUM`),
  ADD CONSTRAINT `FK_LIVRE_EDITER_EDITEUR` FOREIGN KEY (`EDIT_NUM`) REFERENCES `editeur` (`EDIT_NUM`);


