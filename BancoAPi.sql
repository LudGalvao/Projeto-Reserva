-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.28-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para controledelab
CREATE DATABASE IF NOT EXISTS `controledelab` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `controledelab`;

-- Copiando estrutura para tabela controledelab.evento
CREATE TABLE IF NOT EXISTS `evento` (
  `evento_id` int(11) NOT NULL,
  `evento_descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`evento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela controledelab.evento: ~8 rows (aproximadamente)
INSERT INTO `evento` (`evento_id`, `evento_descricao`) VALUES
	(1, 'palestra'),
	(2, 'Aula de uma turma'),
	(3, 'Festa de aniversário'),
	(4, 'show'),
	(5, 'Apresentação'),
	(6, 'Formatura'),
	(7, 'Casamento'),
	(8, 'reunião');

-- Copiando estrutura para tabela controledelab.horario_disponibilidade
CREATE TABLE IF NOT EXISTS `horario_disponibilidade` (
  `horario_id` int(11) NOT NULL,
  `horario` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`horario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela controledelab.horario_disponibilidade: ~229 rows (aproximadamente)
INSERT INTO `horario_disponibilidade` (`horario_id`, `horario`, `status`) VALUES
	(1, '2024-05-16 08:00:00', 1),
	(2, '2024-05-16 08:30:00', 1),
	(3, '2024-05-16 09:00:00', 1),
	(4, '2024-05-16 09:30:00', 1),
	(6, '2024-05-16 10:00:00', 1),
	(7, '2024-05-16 10:30:00', 1),
	(8, '2024-05-16 11:00:00', 1),
	(9, '2024-05-16 11:30:00', 1),
	(10, '2024-05-16 12:00:00', 1),
	(11, '2024-05-16 12:30:00', 1),
	(12, '2024-05-16 13:00:00', 1),
	(13, '2024-05-16 13:30:00', 1),
	(14, '2024-05-16 14:00:00', 1),
	(15, '2024-05-16 14:30:00', 1),
	(16, '2024-05-16 15:30:00', 1),
	(17, '2024-05-16 15:00:00', 1),
	(18, '2024-05-16 16:00:00', 1),
	(19, '2024-05-16 16:30:00', 1),
	(20, '2024-05-16 17:00:00', 1),
	(21, '2024-05-16 17:30:00', 1),
	(22, '2024-05-16 18:00:00', 1),
	(23, '2024-05-16 18:30:00', 1),
	(24, '2024-05-16 19:00:00', 1),
	(25, '2024-05-16 19:30:00', 1),
	(26, '2024-05-16 20:00:00', 1),
	(27, '2024-05-16 20:30:00', 1),
	(28, '2024-05-16 21:00:00', 1),
	(29, '2024-05-16 21:30:00', 1),
	(30, '2024-05-16 22:00:00', 1),
	(31, '2024-05-17 08:00:00', 1),
	(32, '2024-05-17 08:30:00', 1),
	(33, '2024-05-17 09:00:00', 1),
	(34, '2024-05-17 09:30:00', 1),
	(35, '2024-05-17 10:00:00', 1),
	(36, '2024-05-17 10:30:00', 1),
	(37, '2024-05-17 11:00:00', 1),
	(38, '2024-05-17 11:30:00', 1),
	(39, '2024-05-17 12:00:00', 1),
	(40, '2024-05-17 12:30:00', 1),
	(41, '2024-05-17 13:00:00', 1),
	(42, '2024-05-17 13:30:00', 1),
	(43, '2024-05-17 14:00:00', 1),
	(44, '2024-05-17 14:30:00', 1),
	(45, '2024-05-17 15:30:00', 1),
	(46, '2024-05-17 15:00:00', 1),
	(47, '2024-05-17 16:00:00', 1),
	(48, '2024-05-17 16:30:00', 1),
	(49, '2024-05-17 17:00:00', 1),
	(50, '2024-05-17 17:30:00', 1),
	(51, '2024-05-17 18:00:00', 1),
	(52, '2024-05-17 18:30:00', 1),
	(53, '2024-05-17 19:00:00', 1),
	(54, '2024-05-17 19:30:00', 1),
	(55, '2024-05-17 20:00:00', 1),
	(56, '2024-05-17 20:30:00', 1),
	(57, '2024-05-17 21:00:00', 1),
	(58, '2024-05-17 21:30:00', 1),
	(59, '2024-05-17 22:00:00', 1),
	(60, '2024-05-18 08:00:00', 1),
	(61, '2024-05-18 08:30:00', 1),
	(62, '2024-05-18 09:00:00', 1),
	(63, '2024-05-18 09:30:00', 1),
	(64, '2024-05-18 10:00:00', 1),
	(65, '2024-05-18 10:30:00', 1),
	(66, '2024-05-18 11:00:00', 1),
	(67, '2024-05-18 11:30:00', 1),
	(68, '2024-05-18 12:00:00', 1),
	(69, '2024-05-18 12:30:00', 1),
	(70, '2024-05-18 13:00:00', 1),
	(71, '2024-05-18 13:30:00', 1),
	(72, '2024-05-18 14:00:00', 1),
	(73, '2024-05-20 08:00:00', 1),
	(74, '2024-05-20 08:30:00', 1),
	(75, '2024-05-20 09:00:00', 1),
	(76, '2024-05-20 09:30:00', 1),
	(77, '2024-05-20 10:00:00', 1),
	(78, '2024-05-20 10:30:00', 1),
	(79, '2024-05-20 11:00:00', 1),
	(80, '2024-05-20 11:30:00', 1),
	(81, '2024-05-20 12:00:00', 1),
	(82, '2024-05-20 12:30:00', 1),
	(83, '2024-05-20 13:00:00', 1),
	(84, '2024-05-20 13:30:00', 1),
	(85, '2024-05-20 14:00:00', 1),
	(86, '2024-05-20 14:30:00', 1),
	(87, '2024-05-20 15:30:00', 1),
	(88, '2024-05-20 15:00:00', 1),
	(89, '2024-05-20 16:00:00', 1),
	(90, '2024-05-20 16:30:00', 1),
	(91, '2024-05-20 17:00:00', 1),
	(92, '2024-05-20 17:30:00', 1),
	(93, '2024-05-20 18:00:00', 1),
	(94, '2024-05-20 18:30:00', 1),
	(95, '2024-05-20 19:00:00', 1),
	(96, '2024-05-20 19:30:00', 1),
	(97, '2024-05-20 20:00:00', 1),
	(98, '2024-05-20 20:30:00', 1),
	(99, '2024-05-20 21:00:00', 1),
	(100, '2024-05-20 21:30:00', 1),
	(101, '2024-05-20 22:00:00', 1),
	(102, '2024-05-21 08:00:00', 1),
	(103, '2024-05-21 08:30:00', 1),
	(104, '2024-05-21 09:00:00', 1),
	(105, '2024-05-21 09:30:00', 1),
	(106, '2024-05-21 10:00:00', 1),
	(107, '2024-05-21 10:30:00', 1),
	(108, '2024-05-21 11:00:00', 1),
	(109, '2024-05-21 11:30:00', 1),
	(110, '2024-05-21 12:00:00', 1),
	(111, '2024-05-21 12:30:00', 1),
	(112, '2024-05-21 13:00:00', 1),
	(113, '2024-05-21 13:30:00', 1),
	(114, '2024-05-21 14:00:00', 1),
	(115, '2024-05-21 14:30:00', 1),
	(116, '2024-05-21 15:30:00', 1),
	(117, '2024-05-21 15:00:00', 1),
	(118, '2024-05-21 16:00:00', 1),
	(119, '2024-05-21 16:30:00', 1),
	(120, '2024-05-21 17:00:00', 1),
	(121, '2024-05-21 17:30:00', 1),
	(122, '2024-05-21 18:00:00', 1),
	(123, '2024-05-21 18:30:00', 1),
	(124, '2024-05-21 19:00:00', 1),
	(125, '2024-05-21 19:30:00', 1),
	(126, '2024-05-21 20:00:00', 1),
	(127, '2024-05-21 20:30:00', 1),
	(128, '2024-05-21 21:00:00', 1),
	(129, '2024-05-21 21:30:00', 1),
	(130, '2024-05-21 22:00:00', 1),
	(131, '2024-05-22 08:00:00', 1),
	(132, '2024-05-22 08:30:00', 1),
	(133, '2024-05-22 09:00:00', 1),
	(134, '2024-05-22 09:30:00', 1),
	(135, '2024-05-22 10:00:00', 1),
	(136, '2024-05-22 10:30:00', 1),
	(137, '2024-05-22 11:00:00', 1),
	(138, '2024-05-22 11:30:00', 1),
	(139, '2024-05-22 12:00:00', 1),
	(140, '2024-05-22 12:30:00', 1),
	(141, '2024-05-22 13:00:00', 1),
	(142, '2024-05-22 13:30:00', 1),
	(143, '2024-05-22 14:00:00', 1),
	(144, '2024-05-22 14:30:00', 1),
	(145, '2024-05-22 15:30:00', 1),
	(146, '2024-05-22 15:00:00', 1),
	(147, '2024-05-22 16:00:00', 1),
	(148, '2024-05-22 16:30:00', 1),
	(149, '2024-05-22 17:00:00', 1),
	(150, '2024-05-22 17:30:00', 1),
	(151, '2024-05-22 18:00:00', 1),
	(152, '2024-05-22 18:30:00', 1),
	(153, '2024-05-22 19:00:00', 1),
	(154, '2024-05-22 19:30:00', 1),
	(155, '2024-05-22 20:00:00', 1),
	(156, '2024-05-22 20:30:00', 1),
	(157, '2024-05-22 21:00:00', 1),
	(158, '2024-05-22 21:30:00', 1),
	(159, '2024-05-22 22:00:00', 1),
	(160, '2024-05-23 08:00:00', 1),
	(161, '2024-05-23 08:30:00', 1),
	(162, '2024-05-23 09:00:00', 1),
	(163, '2024-05-23 09:30:00', 1),
	(164, '2024-05-23 10:00:00', 1),
	(165, '2024-05-23 10:30:00', 1),
	(166, '2024-05-23 11:00:00', 1),
	(167, '2024-05-23 11:30:00', 1),
	(168, '2024-05-23 12:00:00', 1),
	(169, '2024-05-23 12:30:00', 1),
	(170, '2024-05-23 13:00:00', 1),
	(171, '2024-05-23 13:30:00', 1),
	(172, '2024-05-23 14:00:00', 1),
	(173, '2024-05-23 14:30:00', 1),
	(174, '2024-05-23 15:30:00', 1),
	(175, '2024-05-23 15:00:00', 1),
	(176, '2024-05-23 16:00:00', 1),
	(177, '2024-05-23 16:30:00', 1),
	(178, '2024-05-23 17:00:00', 1),
	(179, '2024-05-23 17:30:00', 1),
	(180, '2024-05-23 18:00:00', 1),
	(181, '2024-05-23 18:30:00', 1),
	(182, '2024-05-23 19:00:00', 1),
	(183, '2024-05-23 19:30:00', 1),
	(184, '2024-05-23 20:00:00', 1),
	(185, '2024-05-23 20:30:00', 1),
	(186, '2024-05-23 21:00:00', 1),
	(187, '2024-05-23 21:30:00', 1),
	(188, '2024-05-23 22:00:00', 1),
	(189, '2024-05-24 08:00:00', 1),
	(190, '2024-05-24 08:30:00', 1),
	(191, '2024-05-24 09:00:00', 1),
	(192, '2024-05-24 09:30:00', 1),
	(193, '2024-05-24 10:00:00', 1),
	(194, '2024-05-24 10:30:00', 1),
	(195, '2024-05-24 11:00:00', 1),
	(196, '2024-05-24 11:30:00', 1),
	(197, '2024-05-24 12:00:00', 1),
	(198, '2024-05-24 12:30:00', 1),
	(199, '2024-05-24 13:00:00', 1),
	(200, '2024-05-24 13:30:00', 1),
	(201, '2024-05-24 14:00:00', 1),
	(202, '2024-05-24 14:30:00', 1),
	(203, '2024-05-24 15:30:00', 1),
	(204, '2024-05-24 15:00:00', 1),
	(205, '2024-05-24 16:00:00', 1),
	(206, '2024-05-24 16:30:00', 1),
	(207, '2024-05-24 17:00:00', 1),
	(208, '2024-05-24 17:30:00', 1),
	(209, '2024-05-24 18:00:00', 1),
	(210, '2024-05-24 18:30:00', 1),
	(211, '2024-05-24 19:00:00', 1),
	(212, '2024-05-24 19:30:00', 1),
	(213, '2024-05-24 20:00:00', 1),
	(214, '2024-05-24 20:30:00', 1),
	(215, '2024-05-24 21:00:00', 1),
	(216, '2024-05-24 21:30:00', 1),
	(217, '2024-05-24 22:00:00', 1),
	(218, '2024-05-25 08:00:00', 1),
	(219, '2024-05-25 08:30:00', 1),
	(220, '2024-05-25 09:00:00', 1),
	(221, '2024-05-25 09:30:00', 1),
	(222, '2024-05-25 10:00:00', 1),
	(223, '2024-05-25 10:30:00', 1),
	(224, '2024-05-25 11:00:00', 1),
	(225, '2024-05-25 11:30:00', 1),
	(226, '2024-05-25 12:00:00', 1),
	(227, '2024-05-25 12:30:00', 1),
	(228, '2024-05-25 13:00:00', 1),
	(229, '2024-05-25 13:30:00', 1),
	(230, '2024-05-25 14:00:00', 1);

-- Copiando estrutura para tabela controledelab.reserva
CREATE TABLE IF NOT EXISTS `reserva` (
  `reserva_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `data_comeco_id` int(11) NOT NULL,
  `data_fim_id` int(11) NOT NULL,
  `sala_id` int(11) NOT NULL,
  `evento_id` int(11) NOT NULL,
  `responsavel_id` int(11) NOT NULL,
  PRIMARY KEY (`reserva_id`),
  KEY `fk_reserva_horario_disponibilidade_idx` (`data_comeco_id`),
  KEY `fk_reserva_horario_disponibilidade1_idx` (`data_fim_id`),
  KEY `fk_reserva_sala1_idx` (`sala_id`),
  KEY `fk_reserva_evento1_idx` (`evento_id`),
  KEY `fk_reserva_responsavel1_idx` (`responsavel_id`),
  CONSTRAINT `fk_reserva_evento1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`evento_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_horario_disponibilidade` FOREIGN KEY (`data_comeco_id`) REFERENCES `horario_disponibilidade` (`horario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_horario_disponibilidade1` FOREIGN KEY (`data_fim_id`) REFERENCES `horario_disponibilidade` (`horario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_responsavel1` FOREIGN KEY (`responsavel_id`) REFERENCES `responsavel` (`responsavel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_sala1` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`sala_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela controledelab.reserva: ~1 rows (aproximadamente)
INSERT INTO `reserva` (`reserva_id`, `status`, `data_comeco_id`, `data_fim_id`, `sala_id`, `evento_id`, `responsavel_id`) VALUES
	(1, 1, 1, 2, 1, 1, 1);

-- Copiando estrutura para tabela controledelab.responsavel
CREATE TABLE IF NOT EXISTS `responsavel` (
  `responsavel_id` int(11) NOT NULL,
  `responsavel_nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`responsavel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela controledelab.responsavel: ~10 rows (aproximadamente)
INSERT INTO `responsavel` (`responsavel_id`, `responsavel_nome`) VALUES
	(1, 'Adryano'),
	(2, 'Lud'),
	(3, 'Robinho'),
	(4, 'Robson'),
	(5, 'Lacraia'),
	(6, 'Gabriel'),
	(7, 'Mc Donalds'),
	(8, 'Gonçaveis'),
	(9, 'Lima'),
	(10, 'Bob');

-- Copiando estrutura para tabela controledelab.sala
CREATE TABLE IF NOT EXISTS `sala` (
  `sala_id` int(11) NOT NULL,
  `sala_nome` varchar(100) NOT NULL,
  `sala_status` int(11) NOT NULL,
  PRIMARY KEY (`sala_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela controledelab.sala: ~10 rows (aproximadamente)
INSERT INTO `sala` (`sala_id`, `sala_nome`, `sala_status`) VALUES
	(1, 'Sala 1', 0),
	(2, 'Sala 2', 0),
	(3, 'Sala 3', 0),
	(4, 'Sala 4', 0),
	(5, 'Sala 5', 0),
	(6, 'Sala 6', 0),
	(7, 'Sala 7', 0),
	(8, 'Sala 8', 0),
	(9, 'Sala 9', 0),
	(10, 'Sala 10', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
