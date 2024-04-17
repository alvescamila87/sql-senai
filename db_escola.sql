-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_escola
CREATE DATABASE IF NOT EXISTS `db_escola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_escola`;

-- Copiando estrutura para tabela db_escola.autorizacoes_saida
CREATE TABLE IF NOT EXISTS `autorizacoes_saida` (
  `autorizacao_id` int(11) NOT NULL AUTO_INCREMENT,
  `estudante_id` int(11) DEFAULT NULL,
  `responsavel_id` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `hora_saida` time NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autorizacao_id`),
  KEY `estudante_id` (`estudante_id`),
  KEY `responsavel_id` (`responsavel_id`),
  CONSTRAINT `autorizacoes_saida_ibfk_1` FOREIGN KEY (`estudante_id`) REFERENCES `estudantes` (`estudante_id`),
  CONSTRAINT `autorizacoes_saida_ibfk_2` FOREIGN KEY (`responsavel_id`) REFERENCES `responsaveis` (`responsavel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_escola.autorizacoes_saida: ~3 rows (aproximadamente)
INSERT INTO `autorizacoes_saida` (`autorizacao_id`, `estudante_id`, `responsavel_id`, `data`, `hora_saida`, `motivo`) VALUES
	(1, 1, 1, '2024-04-10', '10:30:00', 'Consulta médica'),
	(2, 5, 2, '2024-05-01', '10:00:00', 'Compromisso familiar'),
	(3, 10, 3, '2024-04-12', '09:30:00', 'Evento esportivo');

-- Copiando estrutura para tabela db_escola.estudantes
CREATE TABLE IF NOT EXISTS `estudantes` (
  `estudante_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `turma_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`estudante_id`),
  KEY `turma_id` (`turma_id`),
  CONSTRAINT `estudantes_ibfk_1` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`turma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_escola.estudantes: ~19 rows (aproximadamente)
INSERT INTO `estudantes` (`estudante_id`, `nome`, `turma_id`) VALUES
	(1, 'Ana Silva', 1),
	(2, 'Bruno Martins', 1),
	(3, 'Carla Gomes', 1),
	(4, 'Diego Souza', 2),
	(5, 'Eliane Moura', 2),
	(6, 'Fábio Costa', 2),
	(7, 'Gabriela Rocha', 2),
	(8, 'Hector Alves', 2),
	(9, 'Íris Santana', 2),
	(10, 'João Vitor', 1),
	(11, 'Kátia Dias', 1),
	(12, 'Luís Mendes', 2),
	(13, 'Márcia Lima', 2),
	(14, 'Nícolas Batista', 2),
	(15, 'Olívia Pereira', 2),
	(16, 'Paulo Nascimento', 1),
	(17, 'Quênia Torres', 1),
	(18, 'Rafael Mota', 2),
	(19, 'Sílvia Pinto', 2);

-- Copiando estrutura para tabela db_escola.responsaveis
CREATE TABLE IF NOT EXISTS `responsaveis` (
  `responsavel_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `relacao` varchar(100) NOT NULL,
  PRIMARY KEY (`responsavel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_escola.responsaveis: ~3 rows (aproximadamente)
INSERT INTO `responsaveis` (`responsavel_id`, `nome`, `relacao`) VALUES
	(1, 'Roberto Silva', 'Pai'),
	(2, 'Márcia Gomes', 'Mãe'),
	(3, 'Júlio Costa', 'Avô');

-- Copiando estrutura para tabela db_escola.turmas
CREATE TABLE IF NOT EXISTS `turmas` (
  `turma_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_turma` varchar(100) NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  PRIMARY KEY (`turma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_escola.turmas: ~2 rows (aproximadamente)
INSERT INTO `turmas` (`turma_id`, `nome_turma`, `horario_inicio`, `horario_fim`) VALUES
	(1, 'Matemática', '08:00:00', '09:00:00'),
	(2, 'História', '09:00:00', '10:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
