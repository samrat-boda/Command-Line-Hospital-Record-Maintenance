-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: project_oops
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `docID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bloodgroup` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `profile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`docID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES ('D102','a','o+','physician','m',21,'permanent'),('D103','xyz','a+','neurologist','m',23,'permanent'),('D104','bcd','o+','neuro','m',40,'permanent'),('D105','kek','a+','neurologist','m',23,'permanent'),('D106','e','b+','physician','m',21,'permanent'),('D111','a','o+','physician','m',21,'permanent'),('D333','jack','o+','ent','M',56,'visiting');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurancepatients`
--

DROP TABLE IF EXISTS `insurancepatients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurancepatients` (
  `patientID` varchar(45) NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `admissionDate` varchar(45) DEFAULT NULL,
  `bloodGrp` varchar(45) DEFAULT NULL,
  `phoneNo` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `InsuranceID` varchar(45) DEFAULT NULL,
  `InsurancePremium` int DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurancepatients`
--

LOCK TABLES `insurancepatients` WRITE;
/*!40000 ALTER TABLE `insurancepatients` DISABLE KEYS */;
INSERT INTO `insurancepatients` VALUES ('P107','sam',21,'M','1-11-2021','O+','12234214','admitted','I100',1200),('P108','uwu',23,'M','2-11-2021','O+','123412523','not-admitted','I101',1300),('P109','c',40,'M','3-11-2021','O+','34563252','admitted','I102',1400),('P110','d',100,'M','4-11-2021','O+','23564267','admitted','I233',2300),('P111','thor',21,'M','5-11-2021','O+','84567463','not-admitted','I104',5000),('P112','rock',54,'M','24-11-2021','B+','1234567','admitted','I123',2100),('P123','lol',21,'M','1-11-2021','O+','12234214','admitted','I696',1200);
/*!40000 ALTER TABLE `insurancepatients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nurseID` varchar(45) NOT NULL,
  `nurseName` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `bloodGroup` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nurseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES ('N101','uwu',34,'m','o+'),('N102','dino',54,'m','o+'),('N103','chandra',21,'m','o+'),('N105','dino',54,'m','o+'),('N200','kek',34,'f','b+');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patientID` varchar(45) NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `admissionDate` varchar(45) DEFAULT NULL,
  `bloodGrp` varchar(45) DEFAULT NULL,
  `phoneNo` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES ('P102','kek',100,'M','1-11-2021','O+','1234567890','admitted'),('P103','y',67,'M','2-11-2021','O+','1234567890','not-admitted'),('P104','z',40,'M','3-11-2021','O+','1234567890','admitted'),('P105','bruce',69,'F','4-11-2021','O+','1234567890','admitted'),('P106','brain',21,'M','5-11-2021','O+','1234567890','not-admitted'),('P111','abc',12,'M','6-11-2021','b+','1234567890','admitted'),('P200','kek',100,'M','1-11-2021','O+','1234567890','admitted');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomNo` varchar(45) NOT NULL,
  `patientID` varchar(45) DEFAULT NULL,
  `admissionDate` varchar(45) DEFAULT NULL,
  `dischargeDate` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('R1','P200','1-11-2021','5-11-2021',1),('R2','P300','5-11-2021','6-11-2021',1),('R3','P105','2-11-2021','7-11-2021',1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 20:59:50
