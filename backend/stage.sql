-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: stage
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.21.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `photography`
--

DROP TABLE IF EXISTS `photography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photography` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_photography_type` (`type_id`),
  CONSTRAINT `fk_photography_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photography`
--

LOCK TABLES `photography` WRITE;
/*!40000 ALTER TABLE `photography` DISABLE KEYS */;
INSERT INTO `photography` VALUES (1,'Cygne','IMG_0636.jpg',1),(2,'Héron','IMG_8557.jpg',1),(3,'Étang de Margon','IMG_1002.jpg',9),(4,'Oiseaux','IMG_1262.jpg',1),(5,'Oiseaux','IMG_1265.jpg',1),(6,'Chevaux','IMG_1544.jpg',10),(7,'Chevaux','IMG_1554.jpg',10),(8,'Libellule','IMG_2294.jpg',4),(9,'Grenouille','IMG_2504.jpg',11),(10,'Lézard','IMG_2815.jpg',12),(11,'Grenouille','IMG_3142.jpg',11),(12,'Écureuil','IMG_6354.jpg',13),(13,'Grenouille','IMG_6751.jpg',11),(14,'Grenouille','IMG_6754.jpg',11),(15,'Paysage','IMG_7527.jpg',9),(16,'Oiseau','IMG_7973.jpg',1),(17,'Oiseau','IMG_7994-2.jpg',1),(18,'Insect','IMG_8578.jpg',4),(19,'Oiseau','IMG_8808.jpg',1),(20,'Oiseau','IMG_8815-2.jpg',1),(21,'Paysage','IMG_8988.jpg',9),(22,'Papillon','IMG_9085-2.jpg',6),(23,'Papillon','IMG_9091.jpg',6),(24,'Papillon','IMG_9136-2.jpg',6),(25,'Oiseau','IMG_9206.jpg',1),(26,'Oiseau','IMG_9764.jpg',1),(27,'Chevreuil','IMG_2040.jpg',2),(28,'Chevreuil','IMG_2041.jpg',2),(29,'Chevreuil','IMG_2042.jpg',2),(30,'Chevreuil','IMG_3448.jpg',2),(31,'Chevreuil','IMG_4270.jpg',2),(32,'Chevreuil','IMG_4272-Avec accentuation.jpg',2),(33,'Chevreuil','IMG_4298.jpg',2),(34,'Chevreuil','IMG_4303.jpg',2),(35,'Chevreuil','IMG_4334.jpg',2),(36,'Chevreuil','IMG_9222.jpg',2),(37,'Fleur','IMG_9164.jpg',3),(38,'Fleur','IMG_9249.jpg',3),(39,'Araignée','IMG_0506 (3).jpg',4),(40,'Insect','IMG_0773.jpg',4),(41,'Insect','IMG_1053 recadrer.jpg',4),(42,'Insect','IMG_1431.jpg',4),(43,'Insect','IMG_1446.jpg',4),(44,'Insect','IMG_1457.jpg',4),(45,'Lézard','IMG_1696.jpg',12),(46,'Chenille','IMG_2539.jpg',4),(47,'Abeille','IMG_3438-2.jpg',4),(48,'Insect','IMG_4933.jpg',4),(49,'Insect','IMG_6528.jpg',4),(50,'Insect','IMG_6742.jpg',4),(51,'Insect','IMG_6753.jpg',4),(52,'Insect','IMG_8447.jpg',4),(53,'Insect','IMG_8816.jpg',4),(54,'Insect','IMG_8824.jpg',4),(55,'Mouette','IMG_2860.jpg',5),(56,'Mouette','IMG_2930.jpg',5),(57,'Mouette','IMG_2932.jpg',5),(58,'Mouette','IMG_8113.jpg',5),(59,'Mouette','IMG_9567.jpg',5),(60,'Oiseau','IMG_0624.jpg',1),(61,'Oiseau','IMG_0638-2.jpg',1),(62,'Oiseau','IMG_0638-2 copie.jpg',1),(63,'Oiseau','IMG_0952.jpg',1),(64,'Oiseau','IMG_1195.jpg',1),(65,'Oiseau','IMG_1207.jpg',1),(66,'Oiseau','IMG_1214.jpg',1),(67,'Oiseau','IMG_2898.jpg',1),(68,'Oiseau','IMG_7993.jpg',1),(69,'Oiseau','IMG_8340.jpg',1),(70,'Oiseau','IMG_8557.jpg',1),(71,'Oiseau','IMG_8698.jpg',1),(72,'Oiseau','IMG_9092.jpg',1),(73,'Oiseau','IMG_9200.jpg',1),(74,'Oiseau','IMG_9223.jpg',1),(75,'Oiseau','IMG_9686.jpg',1),(76,'Oiseau','IMG_9688.jpg',1),(77,'Oiseau','IMG_9959.jpg',1),(78,'Oiseau','IMG_9960.jpg',1),(79,'Oiseau','IMG_9965.jpg',1),(80,'Papillon','IMG_0614 (2).jpg',6),(81,'Papillon','IMG_1278.jpg',6),(82,'Papillon','IMG_4283.jpg',6),(83,'Papillon','IMG_5725.jpg',6),(84,'Papillon','IMG_5761.jpg',6),(85,'Renard','IMG_6344.jpg',7),(86,'Renard','IMG_9755.jpg',7),(87,'Sanglier','IMG_1847.jpg',8),(88,'Sanglier','IMG_1849.jpg',8),(89,'Oiseau','IMG_0638-2.jpg',1),(90,'Papillon','IMG_4283.jpg',6),(91,'Oiseau','IMG_7993.jpg',1);
/*!40000 ALTER TABLE `photography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Oiseaux'),(2,'Chevreuil'),(3,'Fleur'),(4,'Insect'),(5,'Mouette'),(6,'Papillon'),(7,'Renard'),(8,'Sanglier'),(9,'Paysage'),(10,'Cheval'),(11,'Grenouille'),(12,'Lézard'),(13,'Écureuil');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashedPassword` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'David','Deperrois','david.deperrois@hotmail.fr','$argon2id$v=19$m=65536,t=5,p=1$flP3cnk0dtvRXpA19qX6AQ$OnykZbKwpTSS2p3XcMJI6oLIT+p8jdC4vkBSyWTHUBA',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-12 15:43:09
