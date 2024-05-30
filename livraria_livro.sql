-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: livraria
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `idlivro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `preco` float DEFAULT NULL,
  `estoque` int DEFAULT '0',
  `idgenero` int NOT NULL,
  `ideditora` int NOT NULL,
  PRIMARY KEY (`idlivro`),
  KEY `fk_livro_genero` (`idgenero`),
  KEY `fk_livro_editora` (`ideditora`),
  CONSTRAINT `fk_livro_editora` FOREIGN KEY (`ideditora`) REFERENCES `editora` (`ideditora`),
  CONSTRAINT `fk_livro_genero` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Pelas Ruas de Calcutá',36.1,0,1,1),(2,'Devoted - Devoção',27.2,4,2,2),(3,'Rápido e Devagar - Duas Formas de Pensar',43.9,8,3,3),(4,'Xô, Bactéria! Tire Suas Dúvidas Com Dr. Bactéria',32.7,6,4,4),(5,'P.s. - Eu Te Amo',23.5,10,5,5),(6,'O Que Esperar Quando Você Está Esperando',37.8,20,4,6),(7,'As Melhores Frases Em Veja',23.9,0,6,7),(8,'Bichos Monstruosos',24.9,12,2,6),(9,'Casas Mal Assombradas',27.9,0,2,6),(10,'A Luz Através da Janela',40,15,2,5),(11,'Sombras do Amanhã',35,20,6,6),(12,'Fundamentos da Medicina',55,10,4,4),(13,'Anatomia Humana Básica',75,15,4,4),(14,'Guia de Remédios 2024',60,20,4,3);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 20:54:58
