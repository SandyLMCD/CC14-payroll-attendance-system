-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: jirahenterprisesdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL DEFAULT '0',
  `First_Name` varchar(45) NOT NULL DEFAULT '',
  `Last_Name` varchar(45) NOT NULL DEFAULT '',
  `Gender` varchar(45) NOT NULL DEFAULT '',
  `Job_Title` varchar(45) NOT NULL DEFAULT '',
  `Department_ID_Code` int DEFAULT NULL,
  `Emp_SchedID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Employee_ID` (`Employee_ID`),
  KEY `employee_ibfk_1` (`Department_ID_Code`),
  KEY `Emp_SchedID` (`Emp_SchedID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Department_ID_Code`) REFERENCES `department` (`Department_ID_Code`) ON UPDATE CASCADE,
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Emp_SchedID`) REFERENCES `employee_schedule` (`Emp_SchedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (12345,'Rowena','Montante','Female','Secretary',54321,'Sched730530'),(12346,'Gretchen','Rodrigo','Female','Sales',13579,'Sched730531'),(12347,'Rey','Tacbobo','Male','Labor',36915,'Sched730532'),(12348,'Reymark','Tacbobo','Male','Labor',36915,'Sched730533'),(12349,'Matthias','Sumaylo','Male','Logistics',24680,'Sched730534'),(12350,'Christopher','Ebunia','Male','Labor',36915,'Sched730535'),(12351,'Jacob','Sartorrius','Male','Labor',36915,'Sched730536'),(12352,'Edgar','Cornelio','Male','Manager',77777,'Sched730537'),(12353,'Ben','Dizon','Male','Labor',36915,'Sched730538'),(12354,'John','Pereda','Male','Labor',36915,'Sched730539'),(12355,'Justin','Paquit','Male','Labor',36915,'Sched730540');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 23:44:05
