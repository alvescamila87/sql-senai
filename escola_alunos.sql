-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'John Smith',18,'john.smith@example.com'),(2,'Emily Johnson',16,'emily.johnson@example.com'),(3,'Michael Williams',17,'michael.williams@example.com'),(4,'Emma Jones',18,'emma.jones@example.com'),(5,'William Brown',16,'william.brown@example.com'),(6,'Olivia Davis',15,'olivia.davis@example.com'),(7,'James Miller',18,'james.miller@example.com'),(8,'Ava Wilson',25,'ava.wilson@example.com'),(9,'Alexander Taylor',17,'alexander.taylor@example.com'),(10,'Sophia Anderson',18,'sophia.anderson@example.com'),(11,'Daniel Thomas',15,'daniel.thomas@example.com'),(12,'Isabella Jackson',16,'isabella.jackson@example.com'),(13,'Matthew White',18,'matthew.white@example.com'),(14,'Charlotte Harris',17,'charlotte.harris@example.com'),(15,'Jacob Martin',16,'jacob.martin@example.com'),(16,'Amelia Thompson',15,'amelia.thompson@example.com'),(17,'Ethan Garcia',18,'ethan.garcia@example.com'),(18,'Mia Martinez',16,'mia.martinez@example.com'),(20,'Emma Clark',18,'emma.clark@example.com'),(21,'Alexander Lewis',15,'alexander.lewis@example.com'),(22,'Madison Walker',16,'madison.walker@example.com'),(23,'Elijah Hall',17,'elijah.hall@example.com'),(24,'Abigail Allen',18,'abigail.allen@example.com'),(25,'James Young',16,'james.young@example.com'),(26,'Maria',20,'maria@example.com');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 20:52:14
