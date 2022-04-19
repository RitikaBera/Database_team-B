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
-- Table structure for table `claim_master`
--

DROP TABLE IF EXISTS `claim_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim_master` (
  `Claim_id` int NOT NULL,
  `Policy_number` int NOT NULL,
  `Vehicle_number` varchar(100) NOT NULL,
  `Loss_date` date NOT NULL,
  `Loss_type` varchar(45) NOT NULL,
  `Claim_amount` int NOT NULL,
  `Loc_of_loss` varchar(45) NOT NULL,
  `Claim_req_date` date NOT NULL,
  `Claim_status` varchar(45) NOT NULL,
  PRIMARY KEY (`Claim_id`),
  KEY `claim_policy_number_idx` (`Policy_number`),
  CONSTRAINT `claim_policy_number` FOREIGN KEY (`Policy_number`) REFERENCES `policy` (`Policy_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim_master`
--

LOCK TABLES `claim_master` WRITE;
/*!40000 ALTER TABLE `claim_master` DISABLE KEYS */;
INSERT INTO `claim_master` VALUES (901,10101,'5N1AN0NW9BC524974','2022-03-28','Head-light damage',10000,'Chadni Chowk, Delhi','2022-04-02','Inprogress'),(902,10102,'5NPEC4ABXDH539433','2022-03-29','Front Bumper',15000,'Vasant Vihar, Delhi','2022-04-05','Inprogress'),(903,10201,'1GNDX03E8WD341403','2022-03-30','Side Skirts damage',15000,'Bandra, Mumbai','2022-04-06','Inprogress'),(904,10202,'JN1DA31A52T300757','2022-03-31','Wind Shield',10000,'Juhu, Mumbai','2022-04-07','Completed'),(905,10203,'KM8JN72DX7U587496','2022-04-01','Side Mirror',8000,'Andheri, Mumbai','2022-04-09','Inprogress'),(906,10301,'JN8AZ1MU7AW004224','2022-04-07','Wind Shield',10000,'Egmore, Chennai','2022-04-14','Inprogress'),(907,10401,'3VWLL7AJ9BM053541','2022-04-08','Head-light damage',10000,'Park Street, Kolkata','2022-04-15','Inprogress'),(908,10402,'1G1PF5SC1C7142797','2022-04-11','Side Skirts damage',15000,'Newtown, Kolkata','2022-04-19','Inprogress'),(909,10501,'JT2BG22K6W0242999','2022-04-15','Tail-light damage',10000,'Dadar, Mumbai','2022-04-21','Completed'),(910,10502,'JHLRD68404C018253','2022-04-18','Front Bumper',15000,'Marine Drive, Mumbai','2022-04-24','Inprogress'),(911,10402,'1G1PF5SC1C7142797','2021-09-16','Engine Breakdown',50000,'Camac Street, Kolkata','2021-09-20','Inprogress'),(912,10203,'KM8JN72DX7U587496','2021-11-02','Side Mirror',8000,'Kurla, Mumbai','2021-11-08','Completed');
/*!40000 ALTER TABLE `claim_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 14:55:59
