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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `Vendor_id` int NOT NULL,
  `Vendor_name` varchar(400) NOT NULL,
  `Vendor_location` varchar(400) NOT NULL,
  `Vendor_rating` enum('1','2','3','4','5') NOT NULL,
  PRIMARY KEY (`Vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (201,'GoMechanic - Vehicle Repair Center Munirka','251 - A, Opp. Vasant Vihar DTC Depot, Nelson Mandela Rd, Munirka, New Delhi, Delhi 110067','4'),(202,'Chandhok Auto Works','2280, Koria Bridge, Chandni Chowk, Chandni Chowk, New Delhi, Delhi 110006','5'),(203,'Drive By Carz - Premium Car Repair, Services & Spare parts','B-88, Block B, Wazirpur Industrial Area, Wazirpur, New Delhi, Delhi 110052','4'),(301,'Sahara Motors - Luxury car repair & services Mumbai','N.S Phadke Road, Juhu Ln, near NASAR BUILDING, Andheri West, Mumbai, Maharashtra 400058','5'),(302,'Kasim Auto Services','Nargis Dutt Rd, Reclamation, Bandra West, Mumbai, Maharashtra 400050','3'),(303,'Vailankanni Auto Services','No 511, AB Nair Rd, Juhu Tara, Juhu, Mumbai, Maharashtra 400049','5'),(304,'Starline Auto car repair','Garage Galli, Babasaheb Ambedkar Nagar, Mumbai, Maharashtra 400028','4'),(305,'Sai Auto Garage ( Lalji Gupta )','288, Dr Cawasji Hormusji St, Navajeevan Wadi, Sonapur, Marine Lines, Mumbai, Maharashtra 400002','4'),(306,'Asha Auto Service and Fuel','L.B. Shastri Marg, Kurla, Mumbai, Maharashtra 400070','3'),(307,'Skillz Automobile (Multi Car Service Center)','Skillz Automobile, Dzire, 1996, Chickuwadi Lane, Marve Rd, Malvani, Malad West, Mumbai, Maharashtra 400095','5'),(401,'SFS automobiles','Shop No, 1, Chinna St, Egmore, Chennai, Tamil Nadu 600008','4'),(402,'GoMechanic - Car Service Chennai','New No.101, Shop No.52, Guruvappa St, Chitrapet, Chintadripet, Chennai, Tamil Nadu 600002','3'),(403,'A To Z Auto Electrical Works','37, Adithanar Rd, Pudupet, Egmore, Chennai, Tamil Nadu 600002','4'),(501,'MechaClick -Car Repair and Service','9, Gurusaday Dutta Rd, Ballygunge, Kolkata, West Bengal 700019','5'),(502,'GoMechanic - Techno Point','Jatragachhi, Newtown, Kolkata, West Bengal 700157','5'),(503,'Carologists-The car doctor at your place.','25A, Park Street, Karnani Mansion, 1st Floor,Room-105, Kolkata, West Bengal 700016','4'),(504,'M.T. Motor Works','8, Ripon St, Esplanade, Taltala, Kolkata, West Bengal 700016','3'),(505,'Gandhar Shilpa Car Repair And Maintenance Center ( Master work of Car diagnosis)','A/F-11, Jyangra Lichu Bagan, Raghunathpur, VIP Rd, near Hotel Golden Inn, Kolkata, West Bengal 700059','4');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 14:56:00
