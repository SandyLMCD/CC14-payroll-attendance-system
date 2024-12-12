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
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_attendance` (
  `Emp_AttendanceID` int NOT NULL DEFAULT '0',
  `Date_of_Attendance` date DEFAULT NULL,
  `Clock_In` time DEFAULT NULL,
  `Clock_Out` time DEFAULT NULL,
  `Emp_OvertimeID` int DEFAULT NULL,
  PRIMARY KEY (`Emp_AttendanceID`),
  UNIQUE KEY `Emp_AttendanceID` (`Emp_AttendanceID`),
  KEY `Emp_OvertimeID` (`Emp_OvertimeID`),
  CONSTRAINT `employee_attendance_ibfk_1` FOREIGN KEY (`Emp_OvertimeID`) REFERENCES `employee_overtime` (`Emp_OvertimeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (101,'2024-11-11','07:28:00','06:30:00',201),(102,'2024-11-11','07:28:00','06:31:00',202),(103,'2024-11-11','07:30:00','06:36:00',203),(104,'2024-11-11','07:25:00','06:34:00',204),(105,'2024-11-11','07:26:00','07:34:00',205),(106,'2024-11-11','07:29:00','07:31:00',206),(107,'2024-11-11','07:08:00','06:30:00',207),(108,'2024-11-11','07:15:00','06:33:00',208),(109,'2024-11-11','07:26:00','06:35:00',209),(110,'2024-11-11','07:29:00','06:30:00',210),(111,'2024-11-11','07:28:00','06:35:00',211);
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
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
