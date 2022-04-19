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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `Vehicle_number` varchar(100) NOT NULL,
  `Policy_number` int NOT NULL,
  `Vehicle_type` varchar(45) NOT NULL,
  `Make` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Purchase_year` int NOT NULL,
  PRIMARY KEY (`Vehicle_number`),
  KEY `vehicle_policy_number_idx` (`Policy_number`),
  CONSTRAINT `vehicle_policy_number` FOREIGN KEY (`Policy_number`) REFERENCES `policy` (`Policy_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('1G1PF5SC1C7142797',10402,'4-Wheeler','Chevrolet','Cruze ',2012),('1GNDX03E8WD341403',10201,'4-Wheeler','Chevrolet ','Venture',1998),('3VWLL7AJ9BM053541',10401,'4-Wheeler','Volkswagen ','Jetta',2011),('5N1AN0NW9BC524974',10101,'4-Wheeler','Nissan','Xterra',2011),('5NPEC4ABXDH539433',10102,'4-Wheeler','Hyundai ','Sonata',2013),('JHLRD68404C018253',10502,'4-Wheeler','Honda ','CR V',2004),('JN1DA31A52T300757',10202,'4-Wheeler','Nissan ','Maxima',2002),('JN8AZ1MU7AW004224',10301,'4-Wheeler','Nissan ','Murano',2010),('JT2BG22K6W0242999',10501,'4-Wheeler','Toyota ','Camry',1998),('KM8JN72DX7U587496',10203,'4-Wheeler','Hyundai ','Tucson',2007);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 14:56:01
