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
-- Table structure for table `employee_schedule`
--

DROP TABLE IF EXISTS `employee_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_schedule` (
  `Emp_SchedID` varchar(45) NOT NULL DEFAULT '0',
  `Emp_AttendanceID` int DEFAULT NULL,
  `Shift_Start_Time` time DEFAULT NULL,
  `Shift_End_Time` time DEFAULT NULL,
  `Shift_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Emp_SchedID`),
  UNIQUE KEY `Emp_SchedID` (`Emp_SchedID`),
  KEY `Emp_AttendanceID` (`Emp_AttendanceID`),
  CONSTRAINT `employee_schedule_ibfk_1` FOREIGN KEY (`Emp_AttendanceID`) REFERENCES `employee_attendance` (`Emp_AttendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_schedule`
--

LOCK TABLES `employee_schedule` WRITE;
/*!40000 ALTER TABLE `employee_schedule` DISABLE KEYS */;
INSERT INTO `employee_schedule` VALUES ('Sched730530',101,'07:30:00','05:30:00','Full Time'),('Sched730531',102,'07:30:00','05:30:00','Full Time'),('Sched730532',103,'07:30:00','05:30:00','Full Time'),('Sched730533',104,'07:30:00','05:30:00','Full Time'),('Sched730534',105,'07:30:00','05:30:00','Full Time'),('Sched730535',106,'07:30:00','05:30:00','Hourly Type'),('Sched730536',107,'07:30:00','05:30:00','Hourly Type'),('Sched730537',108,'07:30:00','05:30:00','Full Time'),('Sched730538',109,'07:30:00','05:30:00','Hourly Type'),('Sched730539',110,'07:30:00','05:30:00','Hourly Type'),('Sched730540',111,'07:30:00','05:30:00','Hourly Type');
/*!40000 ALTER TABLE `employee_schedule` ENABLE KEYS */;
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
