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
-- Table structure for table `service_request`
--

DROP TABLE IF EXISTS `service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_request` (
  `Claim_id` int NOT NULL,
  `Service_id` int NOT NULL,
  `Vendor_id` int NOT NULL,
  `Service_start_date` date DEFAULT NULL,
  `Service_end_date` date DEFAULT NULL,
  `Service_type` varchar(45) NOT NULL,
  `Service_status` varchar(45) NOT NULL,
  `Service_cost` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Service_id`),
  KEY `ser_vendor_id_idx` (`Vendor_id`),
  KEY `ser_claim_id_idx` (`Claim_id`),
  CONSTRAINT `ser_claim_id` FOREIGN KEY (`Claim_id`) REFERENCES `claim_master` (`Claim_id`),
  CONSTRAINT `ser_vendor_id` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request`
--

LOCK TABLES `service_request` WRITE;
/*!40000 ALTER TABLE `service_request` DISABLE KEYS */;
INSERT INTO `service_request` VALUES (901,90101,202,'2022-04-05',NULL,'Head-light Repair','Inprogress','4000'),(902,90201,201,'2022-04-09',NULL,'Dent Repair','Inprogress','5000'),(902,90202,201,NULL,NULL,'Repaint','Not Started',NULL),(903,90301,302,'2022-04-08','2022-04-13','Dent Repair','Completed','6000'),(903,90302,302,'2022-04-14',NULL,'Repaint','Inprogress','3000'),(904,90401,303,'2022-04-11','2022-04-16','Window Repair','Completed','7500'),(905,90501,301,'2022-04-13',NULL,'Side Mirror Repair','Inprogress','5000'),(906,90601,401,'2022-04-17',NULL,'Window Repair','Inprogress','7000'),(907,90701,503,'2022-04-18',NULL,'Head-light Repair','Inprogress','4500'),(908,90801,502,'2022-04-22',NULL,'Dent Repair','Inprogress','6000'),(908,90802,502,NULL,NULL,'Repaint','Not Started',NULL),(909,90901,307,'2022-04-25','2022-04-25','Tail-light Repair','Completed','5500'),(910,91001,305,'2022-04-26','2022-05-03','Dent Repair','Completed','7000'),(910,91002,305,'2022-05-04',NULL,'Repaint','Inprogress','3000'),(911,91101,504,'2021-09-22','2021-09-23','Towing','Completed','6000'),(911,91102,504,'2021-09-23','2021-10-15','Engine-bay Service','Completed','10000'),(911,91103,504,'2021-10-15',NULL,'Motor Repair','Inprogress','19000'),(912,91201,306,'2021-11-12','2021-11-15','Side Mirror Repair','Completed','3000');
/*!40000 ALTER TABLE `service_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 14:56:02
