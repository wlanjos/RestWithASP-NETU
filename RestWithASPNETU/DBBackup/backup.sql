-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.27-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para rest_with_asp_net_udemy
CREATE DATABASE IF NOT EXISTS `rest_with_asp_net_udemy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rest_with_asp_net_udemy`;

-- Copiando estrutura para tabela rest_with_asp_net_udemy.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Author` longtext,
  `LaunchDate` datetime(6) NOT NULL,
  `Price` decimal(65,2) NOT NULL,
  `Title` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela rest_with_asp_net_udemy.books: ~16 rows (aproximadamente)
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `Author`, `LaunchDate`, `Price`, `Title`) VALUES
	(1, 'Michael C. Feathers', '2017-11-29 13:50:05.878000', 49.00, 'Working effectively with legacy code'),
	(2, 'Ralph Johnson, Erich Gamma, John Vlissides e Richard Helm', '2017-11-29 15:15:13.636000', 45.00, 'Design Patterns'),
	(3, 'Robert C. Martin', '2009-01-10 00:00:00.000000', 77.00, 'Clean Code'),
	(4, 'Crockford', '2017-11-07 15:09:01.674000', 67.00, 'JavaScript'),
	(5, 'Steve McConnell', '2017-11-07 15:09:01.674000', 58.00, 'Code complete'),
	(6, 'Martin Fowler e Kent Beck', '2017-11-07 15:09:01.674000', 88.00, 'Refactoring'),
	(7, 'Eric Freeman, Elisabeth Freeman, Kathy Sierra, Bert Bates', '2017-11-07 15:09:01.674000', 110.00, 'Head First Design Patterns'),
	(8, 'Eric Evans', '2017-11-07 15:09:01.674000', 92.00, 'Domain Driven Design'),
	(9, 'Brian Goetz e Tim Peierls', '2017-11-07 15:09:01.674000', 80.00, 'Java Concurrency in Practice'),
	(10, 'Susan Cain', '2017-11-07 15:09:01.674000', 123.00, 'O poder dos quietos'),
	(11, 'Roger S. Pressman', '2017-11-07 15:09:01.674000', 56.00, 'Engenharia de Software: uma abordagem profissional'),
	(12, 'Viktor Mayer-Schonberger e Kenneth Kukier', '2017-11-07 15:09:01.674000', 54.00, 'Big Data: como extrair volume, variedade, velocidade e valor da avalanche de informa??o cotidiana'),
	(13, 'Richard Hunter e George Westerman', '2017-11-07 15:09:01.674000', 95.00, 'O verdadeiro valor de TI'),
	(14, 'Marc J. Schiller', '2017-11-07 15:09:01.674000', 45.00, 'Os 11 segredos de l?deres de TI altamente influentes'),
	(15, 'Aguinaldo Aragon Fernandes e Vladimir Ferraz de Abreu', '2017-11-07 15:09:01.674000', 54.00, 'Implantando a governan?a de TI'),
	(16, 'Jeff Sutherland', '2002-11-29 15:15:13.636000', 47.00, 'Scrum A Arte De Fazer O Dobro Do Trabalho Na Metade Do Tempo');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Copiando estrutura para tabela rest_with_asp_net_udemy.changelog
CREATE TABLE IF NOT EXISTS `changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  `checksum` varchar(32) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela rest_with_asp_net_udemy.changelog: ~11 rows (aproximadamente)
DELETE FROM `changelog`;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` (`id`, `type`, `version`, `description`, `name`, `checksum`, `installed_by`, `installed_on`, `success`) VALUES
	(1, 2, '0', 'Empty schema found: rest_with_asp_net_udemy.', 'rest_with_asp_net_udemy', '', 'root', '2019-09-30 11:07:47', 1),
	(2, 0, '1.0.1', 'Create Table Persons', 'V1_0_1__Create_Table_Persons.sql', '5C57601C086E1B99BBB04D07959D0F8D', 'root', '2019-09-30 11:11:05', 1),
	(3, 0, '1.0.2', 'Alter Table Persons', 'V1_0_2__Alter_Table_Persons.sql', 'CD743A62C549732597DD40FB2A37EAEA', 'root', '2019-09-30 11:11:06', 1),
	(4, 0, '1.0.3', 'Create table books', 'V1_0_3__Create_table_books.sql', 'F549A23CB0D53684731DC7BCBD1C2CD2', 'root', '2019-09-30 11:17:23', 1),
	(5, 0, '1.0.4', 'Insert data in books', 'V1_0_4__Insert_data_in_books.sql', 'A8A72F4D6E6ED768D20767A6BB5D9410', 'root', '2019-09-30 11:31:48', 1),
	(6, 0, '1.0.5', 'Insert data in persons', 'V1_0_5__Insert_data_in_persons.sql', '8BBEBAED09A5ABB506E4416E02642523', 'root', '2019-09-30 11:31:48', 1),
	(7, 0, '1.0.6', 'Drop table books', 'V1_0_6__Drop_table_books.sql', '996116D4AC3B9566301DE7B869018E5E', 'root', '2019-09-30 15:52:59', 1),
	(8, 0, '1.0.7', 'Recreate table books', 'V1_0_7__Recreate_table_books.sql', 'CB5FB5A85E1A215AF7660C79FA4D9348', 'root', '2019-09-30 15:53:00', 1),
	(9, 0, '1.0.8', 'Reinsert data in books', 'V1_0_8__Reinsert_data_in_books.sql', '373CE0C6F178AAD499A836E05474A56D', 'root', '2019-09-30 15:55:05', 1),
	(10, 0, '1.0.9', 'Create table users', 'V1_0_9__Create_table_users.sql', '21A098BE693C455B76FD57CA6ACE1D5F', 'root', '2019-10-07 14:56:14', 1),
	(11, 0, '1.0.10', 'Insert data in users', 'V1_0_10__Insert_data_in_users.sql', 'D5A73E85F99502520B2CA1E89600EF4E', 'root', '2019-10-07 14:56:15', 1),
	(12, 0, '1.0.11', 'Insert data in persons', 'V1_0_11__Insert_data_in_persons.sql', '35EF1314421D5105760D1EE25E7A29B8', 'root', '2019-10-09 11:39:25', 0),
	(13, 0, '1.0.11', 'Insert data in persons', 'V1_0_11__Insert_data_in_persons.sql', '8AD975A8DBD11033858ED65E8DC3C2AB', 'root', '2019-10-09 11:47:48', 1);
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;

-- Copiando estrutura para tabela rest_with_asp_net_udemy.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela rest_with_asp_net_udemy.persons: ~302 rows (aproximadamente)
DELETE FROM `persons`;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` (`Id`, `FirstName`, `LastName`, `Address`, `Gender`) VALUES
	(1, 'Leandro', 'Costa', 'Uberl?ndia - Minas Gerais - Brasil', 'Male'),
	(2, 'Fl?vio', 'Costa', 'Patos de Minas - Minas Gerais - Brasil', 'Male'),
	(3, 'Honey', 'Trevance', '232 Namekagon Point', 'Female'),
	(4, 'Carey', 'Faber', '25326 High Crossing Way', 'Female'),
	(5, 'Dalila', 'Waples', '6 Annamark Crossing', 'Female'),
	(6, 'Cordelie', 'Novello', '006 Lakewood Gardens Crossing', 'Female'),
	(7, 'Ludovika', 'Cloughton', '16906 Almo Park', 'Female'),
	(8, 'Corilla', 'Christall', '1557 Esker Way', 'Female'),
	(9, 'Loren', 'Cathrall', '0133 Stephen Hill', 'Male'),
	(10, 'Luca', 'Theobald', '36997 Independence Crossing', 'Male'),
	(11, 'Hortensia', 'Beves', '97612 Del Mar Lane', 'Female'),
	(12, 'Stormi', 'Purple', '30 Atwood Road', 'Female'),
	(13, 'Nefen', 'Plott', '2657 Sunfield Plaza', 'Male'),
	(14, 'Clari', 'Vaugham', '0 Nancy Alley', 'Female'),
	(15, 'Bil', 'Bruff', '0 Cody Avenue', 'Male'),
	(16, 'Alvis', 'Colleford', '60946 Packers Center', 'Male'),
	(17, 'Abram', 'Fessier', '8494 Russell Road', 'Male'),
	(18, 'Barnett', 'Blindmann', '073 Banding Pass', 'Male'),
	(19, 'Rosabel', 'Castagnone', '155 Waubesa Terrace', 'Female'),
	(20, 'Bea', 'Danniell', '3 Vernon Court', 'Female'),
	(21, 'Glori', 'Dunphy', '742 Bobwhite Court', 'Female'),
	(22, 'Mathew', 'Djorvic', '57239 Vahlen Parkway', 'Male'),
	(23, 'Lucilia', 'Mortel', '746 Kings Crossing', 'Female'),
	(24, 'Kathye', 'Orman', '77 Golden Leaf Trail', 'Female'),
	(25, 'Adel', 'Denacamp', '5 Blackbird Lane', 'Female'),
	(26, 'Bernice', 'Toomey', '29748 Eastwood Hill', 'Female'),
	(27, 'Lucius', 'Wemm', '2 Sullivan Circle', 'Male'),
	(28, 'Benni', 'Horley', '1 Westend Street', 'Female'),
	(29, 'Felipa', 'Carman', '122 Fuller Terrace', 'Female'),
	(30, 'Brittni', 'Lessmare', '81389 Scott Alley', 'Female'),
	(31, 'Byram', 'Parton', '53 Vera Plaza', 'Male'),
	(32, 'Pembroke', 'O\' Cuolahan', '68 Lukken Point', 'Male'),
	(33, 'Ellery', 'Beauman', '09285 Anhalt Terrace', 'Male'),
	(34, 'Claudelle', 'Glazzard', '3 Porter Court', 'Female'),
	(35, 'Mireille', 'Findlow', '41 Raven Trail', 'Female'),
	(36, 'Melantha', 'Deeble', '888 La Follette Circle', 'Female'),
	(37, 'Kaleena', 'Hinchcliffe', '14149 Burrows Alley', 'Female'),
	(38, 'Richie', 'Laminman', '8 Grim Plaza', 'Male'),
	(39, 'Tabor', 'Dishmon', '08 Mifflin Street', 'Male'),
	(40, 'Renee', 'Steaning', '59400 Sloan Court', 'Female'),
	(41, 'Magdalene', 'Folke', '6699 Oneill Drive', 'Female'),
	(42, 'Gunilla', 'Fish', '622 Independence Lane', 'Female'),
	(43, 'Pollyanna', 'Applegate', '5 Kinsman Crossing', 'Female'),
	(44, 'Ertha', 'Whittington', '6 Sherman Trail', 'Female'),
	(45, 'Elroy', 'Barnewelle', '85 Havey Circle', 'Male'),
	(46, 'Cookie', 'Sadat', '9198 Orin Place', 'Female'),
	(47, 'Herb', 'Rockcliff', '8 Duke Parkway', 'Male'),
	(48, 'Florentia', 'Pert', '70 Texas Court', 'Female'),
	(49, 'Lorry', 'Pane', '543 Lerdahl Drive', 'Male'),
	(50, 'Nefen', 'Handke', '3 Derek Street', 'Male'),
	(51, 'Darsie', 'Treen', '047 Luster Parkway', 'Female'),
	(52, 'Benjie', 'Wybourne', '24 Oak Parkway', 'Male'),
	(53, 'Marsha', 'Marsden', '0620 Porter Drive', 'Female'),
	(54, 'Adriaens', 'Roomes', '1 Gateway Parkway', 'Female'),
	(55, 'Pembroke', 'McGeachey', '9885 Roth Junction', 'Male'),
	(56, 'Raquel', 'Resdale', '91168 Acker Circle', 'Female'),
	(57, 'Petunia', 'Lie', '8 Sloan Plaza', 'Female'),
	(58, 'Redford', 'Tolchard', '6335 Hanover Park', 'Male'),
	(59, 'Fanya', 'Cutbush', '92 Arizona Point', 'Female'),
	(60, 'Jemie', 'Dufoure', '8 Daystar Drive', 'Female'),
	(61, 'Guillemette', 'Al Hirsi', '7555 Lakewood Gardens Pass', 'Female'),
	(62, 'Tom', 'Flute', '6175 Lakewood Street', 'Male'),
	(63, 'Adaline', 'Massimi', '77469 Cordelia Terrace', 'Female'),
	(64, 'Sherman', 'Kenworth', '092 Sauthoff Court', 'Male'),
	(65, 'Onfre', 'Attoc', '632 Basil Crossing', 'Male'),
	(66, 'Sigfried', 'Hillhouse', '06 Dwight Way', 'Male'),
	(67, 'Neville', 'Stanesby', '9 Del Mar Avenue', 'Male'),
	(68, 'Ellette', 'Greenhowe', '16534 Lakewood Place', 'Female'),
	(69, 'Malvina', 'Filewood', '6184 Pine View Park', 'Female'),
	(70, 'Ingrim', 'Perceval', '818 Hanson Center', 'Male'),
	(71, 'Germana', 'Harsum', '5 Bayside Court', 'Female'),
	(72, 'Gun', 'Clemetts', '2255 Division Point', 'Male'),
	(73, 'Benjie', 'Dericot', '7474 Haas Terrace', 'Male'),
	(74, 'Simmonds', 'Saul', '4 Old Shore Place', 'Male'),
	(75, 'Kissie', 'Alvarez', '7188 North Avenue', 'Female'),
	(76, 'Samara', 'Cordeau', '7 Center Drive', 'Female'),
	(77, 'Nydia', 'Mishaw', '7 Colorado Alley', 'Female'),
	(78, 'Edd', 'Quant', '4 Eggendart Alley', 'Male'),
	(79, 'Sibley', 'Marciskewski', '616 Mandrake Center', 'Female'),
	(80, 'Myer', 'Slark', '68 Mosinee Hill', 'Male'),
	(81, 'Zollie', 'Klimontovich', '860 Havey Alley', 'Male'),
	(82, 'Stafani', 'Rosenfield', '25 Moulton Drive', 'Female'),
	(83, 'Town', 'Malam', '56430 Katie Junction', 'Male'),
	(84, 'Ezra', 'Burnep', '1 Summer Ridge Alley', 'Male'),
	(85, 'Sauveur', 'Nemchinov', '385 Ruskin Trail', 'Male'),
	(86, 'Anny', 'Stallon', '33364 Westerfield Lane', 'Female'),
	(87, 'Verla', 'Mobius', '6892 Ramsey Place', 'Female'),
	(88, 'Theodoric', 'Canland', '34 Dahle Junction', 'Male'),
	(89, 'Tabbatha', 'Tanti', '562 Harbort Road', 'Female'),
	(90, 'Jerrie', 'Coldtart', '9 Hayes Avenue', 'Female'),
	(91, 'Sylvan', 'Ruggles', '5315 Lighthouse Bay Avenue', 'Male'),
	(92, 'Loren', 'Ferry', '972 Leroy Street', 'Female'),
	(93, 'Oralie', 'Cristofor', '58 Hanover Trail', 'Female'),
	(94, 'Netty', 'Squires', '490 Holy Cross Trail', 'Female'),
	(95, 'Gabriellia', 'Maughan', '5 Bluejay Lane', 'Female'),
	(96, 'Chrotoem', 'Balle', '643 Sullivan Avenue', 'Male'),
	(97, 'Tommi', 'Bane', '8 Nobel Center', 'Female'),
	(98, 'Hurlee', 'Pinder', '26447 Texas Street', 'Male'),
	(99, 'Nathanial', 'Hush', '3 Ridgeview Road', 'Male'),
	(100, 'Yvon', 'Gard', '7 Holy Cross Plaza', 'Male'),
	(101, 'Hallie', 'Licciardo', '89 Mcbride Circle', 'Female'),
	(102, 'Hammad', 'Tarte', '7406 Crest Line Street', 'Male'),
	(103, 'Rae', 'Goodwill', '159 Pierstorff Way', 'Female'),
	(104, 'Elysia', 'Lacheze', '0 Nancy Pass', 'Female'),
	(105, 'Che', 'Johl', '0 Norway Maple Point', 'Male'),
	(106, 'Sanders', 'Mulberry', '2182 Colorado Parkway', 'Male'),
	(107, 'Eugenio', 'Font', '284 Erie Parkway', 'Male'),
	(108, 'Sheree', 'Kerrod', '76 Vahlen Alley', 'Female'),
	(109, 'Dorelia', 'Colly', '93194 Orin Junction', 'Female'),
	(110, 'Della', 'Durward', '72 Norway Maple Parkway', 'Female'),
	(111, 'Dwight', 'McChruiter', '1510 Manitowish Road', 'Male'),
	(112, 'Elora', 'Farbrace', '56146 Dixon Parkway', 'Female'),
	(113, 'Heddi', 'Avrahamian', '41 Bartillon Lane', 'Female'),
	(114, 'Carlie', 'Edwicker', '96 Novick Road', 'Male'),
	(115, 'Fair', 'Lampe', '02 Warbler Point', 'Male'),
	(116, 'Stearne', 'Leschelle', '7 Delladonna Plaza', 'Male'),
	(117, 'Maje', 'Keyworth', '46 Moulton Avenue', 'Male'),
	(118, 'Gypsy', 'Kennicott', '7843 Banding Junction', 'Female'),
	(119, 'Shannon', 'Riche', '36029 Bartelt Parkway', 'Male'),
	(120, 'Clementia', 'Scole', '328 Little Fleur Alley', 'Female'),
	(121, 'Anabel', 'Novik', '88017 Morrow Drive', 'Female'),
	(122, 'Gena', 'Revel', '2251 Bunker Hill Plaza', 'Female'),
	(123, 'Salomo', 'Aguilar', '32 Arkansas Alley', 'Male'),
	(124, 'Les', 'Offield', '857 Arizona Street', 'Male'),
	(125, 'Kip', 'Illingworth', '46282 Pearson Crossing', 'Female'),
	(126, 'Janean', 'Dungate', '0857 Garrison Circle', 'Female'),
	(127, 'Halimeda', 'Dibden', '4694 Mallard Street', 'Female'),
	(128, 'Theressa', 'Spilling', '244 Sauthoff Circle', 'Female'),
	(129, 'Zaria', 'MacGoun', '11369 Ridgeview Crossing', 'Female'),
	(130, 'Sigmund', 'Maystone', '211 Menomonie Lane', 'Male'),
	(131, 'Georgy', 'Musto', '96 Waxwing Junction', 'Male'),
	(132, 'Harwilll', 'Bradmore', '31 Oxford Place', 'Male'),
	(133, 'Olvan', 'Moult', '07248 Amoth Park', 'Male'),
	(134, 'Selie', 'Butcher', '5841 Kensington Hill', 'Female'),
	(135, 'Lizbeth', 'Rodda', '3 Laurel Way', 'Female'),
	(136, 'Merv', 'Gai', '25719 Victoria Terrace', 'Male'),
	(137, 'Nicky', 'Stabler', '33 Esker Street', 'Male'),
	(138, 'Myles', 'Eccersley', '01 New Castle Junction', 'Male'),
	(139, 'Bobbye', 'Symson', '8810 Jenifer Place', 'Female'),
	(140, 'Laina', 'Sprionghall', '159 Northview Circle', 'Female'),
	(141, 'Jarrett', 'Crayden', '77 Manufacturers Hill', 'Male'),
	(142, 'Dare', 'Latour', '4280 Division Pass', 'Male'),
	(143, 'Maurie', 'O\'Carroll', '279 Quincy Plaza', 'Male'),
	(144, 'Susannah', 'Cromley', '12746 Anderson Circle', 'Female'),
	(145, 'Barn', 'Le Lievre', '14 Pierstorff Circle', 'Male'),
	(146, 'Aurelea', 'Gahagan', '34848 Grim Center', 'Female'),
	(147, 'Eleanore', 'Llorente', '1 Pennsylvania Lane', 'Female'),
	(148, 'Chadd', 'McCome', '98 Elka Parkway', 'Male'),
	(149, 'Rodger', 'Pochin', '992 Hudson Hill', 'Male'),
	(150, 'Jessi', 'Nisby', '37 Lerdahl Court', 'Female'),
	(151, 'Bryana', 'Carn', '5 Muir Lane', 'Female'),
	(152, 'Grannie', 'Mangenot', '1 Sunbrook Junction', 'Male'),
	(153, 'Austen', 'Marchiso', '16281 Rutledge Alley', 'Male'),
	(154, 'Meredith', 'Gayter', '98552 Northview Terrace', 'Female'),
	(155, 'Tadio', 'Hudleston', '0 Fordem Drive', 'Male'),
	(156, 'Hildagarde', 'Fawlkes', '805 Anhalt Trail', 'Female'),
	(157, 'Jemie', 'Bartolomucci', '12 Sheridan Place', 'Female'),
	(158, 'Bettye', 'Whitmell', '580 Swallow Crossing', 'Female'),
	(159, 'Hyatt', 'Lerohan', '05475 Morrow Trail', 'Male'),
	(160, 'Laney', 'Tirrey', '7982 Holmberg Center', 'Male'),
	(161, 'Darcee', 'Rehm', '1061 Coleman Hill', 'Female'),
	(162, 'Jilli', 'Basant', '7113 Ohio Road', 'Female'),
	(163, 'Tobye', 'Rosi', '85737 Oneill Crossing', 'Female'),
	(164, 'Addia', 'Guittet', '2 Crownhardt Drive', 'Female'),
	(165, 'Vicky', 'Geistmann', '76 Elka Plaza', 'Female'),
	(166, 'Leontyne', 'Quemby', '2102 Forster Junction', 'Female'),
	(167, 'Idaline', 'Locock', '02930 Granby Court', 'Female'),
	(168, 'Dian', 'Sexten', '75 Arrowood Plaza', 'Female'),
	(169, 'Morten', 'Rotge', '7584 Union Terrace', 'Male'),
	(170, 'Brinn', 'Mcwhinney', '07 Upham Junction', 'Female'),
	(171, 'Hobey', 'Perot', '5 Bay Pass', 'Male'),
	(172, 'Marmaduke', 'Dankersley', '8 Chive Lane', 'Male'),
	(173, 'Gene', 'Cornbill', '80 Superior Plaza', 'Female'),
	(174, 'Nat', 'Carder', '377 Golden Leaf Parkway', 'Male'),
	(175, 'Doti', 'Durdle', '4705 Summit Hill', 'Female'),
	(176, 'Matilde', 'Dooland', '5695 South Pass', 'Female'),
	(177, 'Clio', 'Halgarth', '8 Spenser Pass', 'Female'),
	(178, 'Andriette', 'Maude', '41588 Dawn Place', 'Female'),
	(179, 'Gorden', 'Vockins', '0 Ryan Circle', 'Male'),
	(180, 'Pauly', 'Morford', '8 Sullivan Street', 'Male'),
	(181, 'Odele', 'Lemm', '888 Kinsman Alley', 'Female'),
	(182, 'Lonnie', 'Brigstock', '84 Superior Crossing', 'Male'),
	(183, 'Theresa', 'Duddy', '14 Hudson Lane', 'Female'),
	(184, 'Merilee', 'Heinig', '93 La Follette Street', 'Female'),
	(185, 'Kalinda', 'Fisby', '838 Mayfield Hill', 'Female'),
	(186, 'Elisha', 'Birdsall', '04174 Schmedeman Terrace', 'Male'),
	(187, 'Charlie', 'Minot', '4 Scoville Alley', 'Male'),
	(188, 'Guss', 'Frensch', '9 Dorton Hill', 'Male'),
	(189, 'Vaughan', 'Gopsall', '8425 Northland Place', 'Male'),
	(190, 'Mame', 'Joint', '41 Transport Drive', 'Female'),
	(191, 'Felipe', 'Huckster', '741 Farmco Park', 'Male'),
	(192, 'Christophorus', 'Bater', '781 Forest Run Street', 'Male'),
	(193, 'Bartlett', 'Exposito', '6 Meadow Vale Trail', 'Male'),
	(194, 'Chalmers', 'Ivan', '1700 Sycamore Pass', 'Male'),
	(195, 'Jilli', 'Purselowe', '703 Arizona Way', 'Female'),
	(196, 'Adore', 'Millican', '78445 Rigney Park', 'Female'),
	(197, 'Salmon', 'Hughman', '355 Cody Parkway', 'Male'),
	(198, 'Raddy', 'Stonebanks', '6960 Buena Vista Alley', 'Male'),
	(199, 'Amory', 'Lopez', '0 Chive Avenue', 'Male'),
	(200, 'Hirsch', 'Lear', '85 Bobwhite Street', 'Male'),
	(201, 'Kristan', 'Riden', '8280 Bay Crossing', 'Female'),
	(202, 'Dore', 'Garrit', '01330 1st Pass', 'Female'),
	(203, 'Herc', 'Bleaden', '32136 Veith Point', 'Male'),
	(204, 'Carleen', 'Luc', '04 Acker Circle', 'Female'),
	(205, 'Bron', 'Jefford', '42 Rowland Alley', 'Male'),
	(206, 'Lanita', 'Curzey', '95 Meadow Ridge Junction', 'Female'),
	(207, 'Suzann', 'MacRonald', '18 Beilfuss Parkway', 'Female'),
	(208, 'Ed', 'Webborn', '36 Pankratz Alley', 'Male'),
	(209, 'Juliane', 'Iverson', '291 Riverside Road', 'Female'),
	(210, 'Shaun', 'Gearty', '8989 Luster Court', 'Female'),
	(211, 'Rosalyn', 'McCartan', '71 Washington Place', 'Female'),
	(212, 'Gillian', 'Tyer', '5 Sutherland Place', 'Female'),
	(213, 'Luisa', 'Kristufek', '31 Artisan Drive', 'Female'),
	(214, 'Ly', 'Killingback', '02 Laurel Pass', 'Male'),
	(215, 'Lazarus', 'Taill', '531 Stuart Crossing', 'Male'),
	(216, 'Floria', 'Batham', '40730 Fisk Terrace', 'Female'),
	(217, 'Joli', 'Tomlett', '17460 Basil Crossing', 'Female'),
	(218, 'Estele', 'Janman', '94315 Arapahoe Avenue', 'Female'),
	(219, 'Robinette', 'Hales', '63 Center Park', 'Female'),
	(220, 'Shellie', 'Fetherstonhaugh', '39886 Onsgard Crossing', 'Female'),
	(221, 'Noll', 'O\'Spillane', '90773 Eastlawn Lane', 'Male'),
	(222, 'Elwood', 'Darlaston', '09 Erie Alley', 'Male'),
	(223, 'Elliot', 'Manis', '498 Lakewood Gardens Road', 'Male'),
	(224, 'Beniamino', 'Ambage', '14910 Canary Avenue', 'Male'),
	(225, 'Carey', 'Swinden', '606 Manitowish Lane', 'Male'),
	(226, 'Damian', 'Hallan', '5237 Stephen Park', 'Male'),
	(227, 'Anni', 'Levane', '0 Grover Alley', 'Female'),
	(228, 'Shay', 'Lourens', '1 Warner Crossing', 'Male'),
	(229, 'Kristien', 'Jephson', '34 Longview Point', 'Female'),
	(230, 'Melisent', 'Monkeman', '84770 Westport Terrace', 'Female'),
	(231, 'Geralda', 'Meus', '98 American Ash Terrace', 'Female'),
	(232, 'Phillie', 'McPhater', '26166 Graedel Way', 'Female'),
	(233, 'Earvin', 'O\' Hanvey', '335 Esch Drive', 'Male'),
	(234, 'Julianne', 'Booth-Jarvis', '801 Dayton Avenue', 'Female'),
	(235, 'Rasla', 'Hulcoop', '76 Superior Hill', 'Female'),
	(236, 'Waldemar', 'Greenshiels', '882 Rutledge Point', 'Male'),
	(237, 'Crysta', 'Epperson', '0852 Green Ridge Pass', 'Female'),
	(238, 'Ritchie', 'Stearley', '998 Pawling Alley', 'Male'),
	(239, 'Dyanna', 'Pirdue', '83 Randy Alley', 'Female'),
	(240, 'Enid', 'Whiffin', '2454 Butterfield Center', 'Female'),
	(241, 'Ellynn', 'Yosifov', '8438 Goodland Point', 'Female'),
	(242, 'Rurik', 'Dorrington', '589 Norway Maple Point', 'Male'),
	(243, 'Mariska', 'Frangello', '575 Blaine Terrace', 'Female'),
	(244, 'Aland', 'Lenihan', '5794 Meadow Vale Street', 'Male'),
	(245, 'Mikael', 'Sivyour', '689 Sunnyside Pass', 'Male'),
	(246, 'Arie', 'Scones', '39 Birchwood Park', 'Male'),
	(247, 'Deeann', 'Filan', '52143 Commercial Place', 'Female'),
	(248, 'Sergeant', 'Audley', '203 Kinsman Hill', 'Male'),
	(249, 'Abdul', 'Salmen', '668 Burning Wood Pass', 'Male'),
	(250, 'Sandye', 'La Wille', '0 Autumn Leaf Hill', 'Female'),
	(251, 'Al', 'Lidgley', '6615 Center Point', 'Male'),
	(252, 'Kristos', 'Featenby', '5 Novick Way', 'Male'),
	(253, 'Payton', 'Sauter', '67 Iowa Street', 'Male'),
	(254, 'Fredrika', 'Stanyland', '14838 American Ash Way', 'Female'),
	(255, 'Fae', 'Canete', '24893 Becker Street', 'Female'),
	(256, 'Feodor', 'Golsby', '4 Evergreen Street', 'Male'),
	(257, 'Carlos', 'Bye', '6 Lyons Street', 'Male'),
	(258, 'Gary', 'Fattori', '54 Lawn Parkway', 'Male'),
	(259, 'Margette', 'Course', '778 Sundown Drive', 'Female'),
	(260, 'Raymund', 'Godney', '2114 Pine View Street', 'Male'),
	(261, 'Hedwig', 'Serginson', '58 Sheridan Junction', 'Female'),
	(262, 'Broderic', 'Kondrachenko', '5 Florence Street', 'Male'),
	(263, 'Dallon', 'Seaman', '5914 Fuller Point', 'Male'),
	(264, 'Derron', 'Spender', '980 Fulton Parkway', 'Male'),
	(265, 'Erl', 'Bellino', '638 Corben Road', 'Male'),
	(266, 'Abbe', 'Goaks', '92989 Erie Street', 'Female'),
	(267, 'Mercedes', 'Kreber', '63 Ridge Oak Lane', 'Female'),
	(268, 'Ansley', 'Bulmer', '1 6th Point', 'Female'),
	(269, 'Normy', 'Goby', '8 Quincy Junction', 'Male'),
	(270, 'Thea', 'Imlach', '9982 Melrose Parkway', 'Female'),
	(271, 'Meagan', 'Blacklawe', '4 Merrick Lane', 'Female'),
	(272, 'Modestia', 'Wand', '38 Pierstorff Place', 'Female'),
	(273, 'Di', 'Saundercock', '9525 Welch Plaza', 'Female'),
	(274, 'Hubey', 'Giercke', '2 Lyons Point', 'Male'),
	(275, 'Laurel', 'Penburton', '9 Loftsgordon Alley', 'Female'),
	(276, 'Bernarr', 'Hymans', '93822 Kedzie Parkway', 'Male'),
	(277, 'Donavon', 'Baglow', '35932 Mandrake Crossing', 'Male'),
	(278, 'Aridatha', 'Gary', '46 Twin Pines Park', 'Female'),
	(279, 'Brooke', 'Amphlett', '8 Stoughton Alley', 'Male'),
	(280, 'Daisi', 'Boldecke', '442 Sunfield Way', 'Female'),
	(281, 'Sally', 'Denzilow', '37 Ilene Crossing', 'Female'),
	(282, 'Lawrence', 'Demeza', '9 Springview Parkway', 'Male'),
	(283, 'Emanuele', 'Tapply', '62696 Maryland Road', 'Male'),
	(284, 'Lauren', 'Cuberley', '62 Gina Plaza', 'Female'),
	(285, 'Joshia', 'Bogges', '47436 International Avenue', 'Male'),
	(286, 'Drucy', 'Stapleton', '2225 Kenwood Plaza', 'Female'),
	(287, 'Natty', 'Valek', '8 Almo Crossing', 'Female'),
	(288, 'Celestia', 'Deniscke', '8478 Kropf Crossing', 'Female'),
	(289, 'Hugues', 'Hemmingway', '627 Spaight Park', 'Male'),
	(290, 'Kenn', 'Boncoeur', '97804 Ridge Oak Junction', 'Male'),
	(291, 'Byrann', 'Byrd', '18456 Jenna Place', 'Male'),
	(292, 'Tessi', 'Coen', '56 Carberry Junction', 'Female'),
	(293, 'Eduino', 'Dyas', '3 Namekagon Lane', 'Male'),
	(294, 'Yankee', 'MacTrustam', '679 Shoshone Place', 'Male'),
	(295, 'Araldo', 'Crittal', '7 Kim Plaza', 'Male'),
	(296, 'Amalee', 'Dwight', '85599 Derek Trail', 'Female'),
	(297, 'Lennie', 'Ogborne', '5 Eagan Way', 'Male'),
	(298, 'Casper', 'Kestian', '4 Sunnyside Hill', 'Male'),
	(299, 'Berty', 'Kilborn', '850 Meadow Valley Junction', 'Female'),
	(300, 'Darren', 'Courvert', '0224 Moose Park', 'Male'),
	(301, 'Adolph', 'Tidbury', '642 Oxford Plaza', 'Male'),
	(302, 'Ferris', 'Nayshe', '75190 Blackbird Terrace', 'Male');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;

-- Copiando estrutura para tabela rest_with_asp_net_udemy.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Login` varchar(50) NOT NULL,
  `AccessKey` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela rest_with_asp_net_udemy.users: ~2 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `Login`, `AccessKey`) VALUES
	(1, 'leandro', 'admin123'),
	(2, 'flavio', 'user123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;