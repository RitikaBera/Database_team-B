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
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `User_id` int NOT NULL,
  `Policy_number` int NOT NULL,
  `Policy_creation_date` date NOT NULL,
  `Policy_eff_date` date NOT NULL,
  `Policy_end_date` date NOT NULL,
  `Policy_amount` int NOT NULL,
  `Agent_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Policy_number`),
  KEY `pol_user_id_idx` (`User_id`),
  CONSTRAINT `pol_user_id` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (101,10101,'2021-12-23','2022-01-23','2023-01-22',100000,'Vivaan Sheth'),(101,10102,'2021-11-26','2021-12-26','2022-12-25',200000,'Vivaan Sheth'),(102,10201,'2022-02-11','2022-03-11','2023-03-10',500000,'Vivaan Sheth'),(102,10202,'2022-02-26','2022-03-26','2023-03-25',200000,'Vivaan Sheth'),(102,10203,'2021-09-16','2021-10-16','2022-10-15',100000,'Vivaan Sheth'),(103,10301,'2021-07-23','2021-08-23','2022-08-22',300000,'Kalpana Gokhale'),(104,10401,'2021-06-03','2021-07-03','2022-07-02',200000,'Kalpana Gokhale'),(104,10402,'2021-06-24','2021-07-24','2022-07-23',500000,'Kalpana Gokhale'),(105,10501,'2021-07-16','2021-08-06','2022-08-05',100000,'Kalpana Gokhale'),(105,10502,'2021-11-29','2021-12-29','2022-12-28',500000,'Kalpana Gokhale');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 14:55:58
