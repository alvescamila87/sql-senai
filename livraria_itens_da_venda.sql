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
-- Table structure for table `itens_da_venda`
--

DROP TABLE IF EXISTS `itens_da_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_da_venda` (
  `idvenda` int NOT NULL,
  `idlivro` int NOT NULL,
  `qtd` int DEFAULT '0',
  `subtotal` float DEFAULT '0',
  PRIMARY KEY (`idvenda`,`idlivro`),
  KEY `fk_itens_da_venda_venda` (`idvenda`),
  KEY `fk_itens_da_venda_livro` (`idlivro`),
  CONSTRAINT `fk_itens_da_venda_livro` FOREIGN KEY (`idlivro`) REFERENCES `livro` (`idlivro`),
  CONSTRAINT `fk_itens_da_venda_venda` FOREIGN KEY (`idvenda`) REFERENCES `venda` (`idvenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_da_venda`
--

LOCK TABLES `itens_da_venda` WRITE;
/*!40000 ALTER TABLE `itens_da_venda` DISABLE KEYS */;
INSERT INTO `itens_da_venda` VALUES (1,1,1,36.1),(2,2,1,27.2),(3,3,1,43.9),(4,4,1,32.7),(5,5,1,23.5),(6,6,1,37.8),(7,7,1,23.9),(8,8,1,24.9),(9,9,1,27.9),(22,3,3,131.7),(22,6,2,75.6);
/*!40000 ALTER TABLE `itens_da_venda` ENABLE KEYS */;
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
