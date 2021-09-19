-- MySQL dump 10.13  Distrib 8.0.23, for osx10.15 (x86_64)
--
-- Host: localhost    Database: spring-boot-bill-payment
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hotel` varchar(100) NOT NULL,
  `booking_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,47.5,'2021-06-02','16:30:00','1',4,'Manchester One',17331429),(2,97.21,'2021-02-11','21:18:00','0',3,'Hotel 41',70559642),(3,123.54,'2021-03-14','12:47:23','1',1,'Kimpton Manchester',58359966),(4,29.61,'2021-11-24','21:39:44','2',3,'Holiday Inn',33804801),(5,89.61,'2021-04-18','20:13:50','1',2,'The Arch London',71003481),(6,36.61,'2019-04-16','12:43:50','1',2,'The Stafford London',19575531),(7,79.61,'2020-04-03','17:29:30','2',2,'Rosewood London',53275531);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_of`
--

DROP TABLE IF EXISTS `bookings_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings_of` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_fk` (`vendor_id`) USING BTREE,
  KEY `transaction_fk` (`booking_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_of`
--

LOCK TABLES `bookings_of` WRITE;
/*!40000 ALTER TABLE `bookings_of` DISABLE KEYS */;
INSERT INTO `bookings_of` VALUES (1,4,4),(2,3,1),(3,4,7),(4,2,6),(5,1,2);
/*!40000 ALTER TABLE `bookings_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain`
--

LOCK TABLES `complain` WRITE;
/*!40000 ALTER TABLE `complain` DISABLE KEYS */;
INSERT INTO `complain` VALUES (1,'2021-06-01','23:22:00','1',3,'Poor Wifi','Wifi here is poor and unstable.'),(2,'2020-09-09','17:52:09','1',3,'Room Service','Bad room service!'),(3,'2021-03-21','03:26:11','1',2,'Noisy','Noisy environment'),(4,'2019-09-04','20:43:10','1',4,'No Parking Area','No parking lot provided...'),(5,'2020-07-30','13:42:30','1',5,'Restaurant','Food here is not clean.'),(6,'2019-06-09','19:44:21','0',3,'Small Room','My room didn\'t get upgraded.'),(7,'2018-10-25','01:27:17','0',3,'Common Area','blabla....@#%&bla ...');
/*!40000 ALTER TABLE `complain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_on`
--

DROP TABLE IF EXISTS `complain_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complain_on` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complain_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transactoin_id_fk` (`complain_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_on`
--

LOCK TABLES `complain_on` WRITE;
/*!40000 ALTER TABLE `complain_on` DISABLE KEYS */;
INSERT INTO `complain_on` VALUES (1,6,2),(2,4,3),(3,7,2),(4,1,4),(5,3,1);
/*!40000 ALTER TABLE `complain_on` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_fk` (`vendor_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL,
  `price` double NOT NULL,
  `rating` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `properties_address_uindex` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'Holiday Inn','25 Aytoun St, Manchester M1 3AE',34.21,3.7),(2,'CitySuites Apart','16 Chapel Street, Manchester, England, M3 7NH',92.17,4.2),(3,'The Rembrandt','11 Thurloe Place, Kensington, London, England, SW7 2RS',88.3,4.4),(4,'Courtyard','1-3 Baxters Place, Edinburgh, Scotland, EH1 3AF',49.35,3.9),(5,'Jumeirah Lowndes','21 Lowndes Street Knightsbridge, London SW1X 9ES England',62.99,4.2),(6,'The Landmark London','1-15 Templeton Place, London SW5 9NB',79.12,4.9),(7,'The Stafford London','16-18 St James\'s Place London SW1A 1NJ ',119.36,4.8),(8,'The Arch London','50 Great Cumberland Pl Marylebone London W1H 7FD',99.35,4.3),(9,'The Westbridge','335-337 High Street London E15 2tf London',62.92,4.4),(10,'Hotel 41','81 Jermyn Street London SW1Y6JF',79.5,3.8),(11,'Brooklyn London ','171 Knightsbridge, London SW7 1DW',41.83,3.5),(12,'Huttons Hotel','57 Belgrave Road, London, SW1V 2BB',77.9,4.3);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'USER'),(2,'VENDOR'),(3,'ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mikewang3777@gmail.com','mike','$2a$12$S0NZqx1QJm5lvRzZovoGCerr4eHYi804AzDOzYrBNYkG1cZGGXDXu','07062551772',1,2),(2,'jerryyang123@gmail.com','jerry','$2a$12$G7hKMmr/YetXU0vtjHypkO6h5IT4pYLGxcbRbuvhtDzKzuOaU7U/G','07052551779',1,1),(3,'hassan30@gmail.com','hassan','$2a$12$XXxkccNep4xnVgg3ntklDex50rIWIcAFpS68aiFnQJJbiDNFF/Rwy','07707442391',1,1),(4,'kevinchan22@gmail.com','kevin','$2a$12$BBzaeq/czSDDHrJhYc9f4eD8fuuPMSzyiBrM6setUwtNd.H4Vqf3u','07028991784',1,1),(5,'admin123@gmail.com','admin','$2a$10$IqTJTjn39IU5.7sSCDQxzu3xug6z/LPU6IF0azE/8CkHCwYEnwBX.','07707665384',1,3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `user_fk_idx` (`user_id`),
  KEY `role_fk_idx` (`role_id`),
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,2),(2,1),(3,1),(4,1),(5,3);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'London Agent Ltd','londonagent@gmail.com',NULL),(2,'C&R','candr@outlook.com',NULL),(3,'Manchester Move','mcrmove@manchester.co.uk',NULL),(4,'JERRY Ltd','jyprofessional@gmail.com',NULL),(10,'balbalba','awjiofejawoifejw@gmail.com',NULL),(11,'nuhu','nuhuishandsome@gmail.com',NULL);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_property`
--

DROP TABLE IF EXISTS `vendor_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_property`
--

LOCK TABLES `vendor_property` WRITE;
/*!40000 ALTER TABLE `vendor_property` DISABLE KEYS */;
INSERT INTO `vendor_property` VALUES (1,2,4),(2,2,3),(3,1,5),(4,3,7),(5,1,2),(6,1,1),(7,4,6),(8,4,11),(9,4,8),(10,3,9),(11,2,10),(12,4,12);
/*!40000 ALTER TABLE `vendor_property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19  1:25:43
