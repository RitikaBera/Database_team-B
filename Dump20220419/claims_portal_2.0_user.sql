-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: claims_portal_2.0
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `First_name` varchar(45) NOT NULL,
  `Middle_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `User_id` int NOT NULL,
  `User_address` varchar(400) NOT NULL,
  `Email_id` varchar(45) NOT NULL,
  `Role_id` int NOT NULL,
  PRIMARY KEY (`User_id`),
  KEY `user_role_id_idx` (`Role_id`),
  CONSTRAINT `user_role_id` FOREIGN KEY (`Role_id`) REFERENCES `role` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Devika','Kumari','Pandey','1971-03-11','F',101,'2738/1, Minerva Cinema Lane, Kashmere Gate, Delhi, Delhi-110006','devika123@gmail.com',22),('Souvik',NULL,'Halder','1978-12-02','M',102,'8, Surang Apartment, Near Silver Plaza, Station Road, Santacruz(w),  Mumbai, Maharashtra-400054','shalder1978@gmail.com',22),('Chetan','Amish','Bhagat','1987-03-08','M',103,'G-38-c 1st Main Road, Anna Nagar East, Chennai, Tamil Nadu - 600102','chetan.a@gmail.com',22),('Durjoy',NULL,'Dutta','1989-05-24','M',104,'P-308, C I T Rd, Sch- V I M, Kankurgachi , West Bengal, Kolkata - 700054','durjoy.1989@gmail.com',22),('Sayani',NULL,'Roy','1987-07-21','F',105,'23, S V Road, Opp Old Police Station, Malad (west), Mumbai , Maharashtra-40006','sroy.name@gmail.com',22);
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

-- Dump completed on 2022-04-19 14:56:03
