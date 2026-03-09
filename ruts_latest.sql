-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: ruts
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'วิศวกรคอมพิวเตอร์'),(2,'วิศวกรระบบเครือข่ายคอมพิวเตอร์'),(3,'วิศวกรระบบควบคุม'),(4,'วิศวกรซอฟต์แวร์'),(5,'นักพัฒนาแอปพลิเคชันบนเว็บและอุปกรณ์เคลื่อนที่'),(6,'นักวิชาการคอมพิวเตอร์'),(7,'อาชีพอิสระด้านคอมพิวเตอร์'),(8,'อาจารย์ประจำหลักสูตร'),(9,'บุคลากรประจำหลักสูตรสาขาวิชาวิศวกรรมคอมพิวเตอร์');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_info` (
  `id` int NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
INSERT INTO `contact_info` VALUES (1,'คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลศรีวิชัย เลขที่ 2/4 ถ.ราชดำเนินนอก ต.บ่อยาง อ.เมือง จ.สงขลา 90000','0-7431-7103 ต่อ 0');
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculums`
--

DROP TABLE IF EXISTS `curriculums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_th` text COLLATE utf8mb4_unicode_ci,
  `name_en` text COLLATE utf8mb4_unicode_ci,
  `degree_full_th` text COLLATE utf8mb4_unicode_ci,
  `degree_short_th` text COLLATE utf8mb4_unicode_ci,
  `degree_full_en` text COLLATE utf8mb4_unicode_ci,
  `degree_short_en` text COLLATE utf8mb4_unicode_ci,
  `total_credits` text COLLATE utf8mb4_unicode_ci,
  `format` text COLLATE utf8mb4_unicode_ci,
  `type` text COLLATE utf8mb4_unicode_ci,
  `language` text COLLATE utf8mb4_unicode_ci,
  `admission` text COLLATE utf8mb4_unicode_ci,
  `collaboration` text COLLATE utf8mb4_unicode_ci,
  `graduation` text COLLATE utf8mb4_unicode_ci,
  `study_plan_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculums`
--

LOCK TABLES `curriculums` WRITE;
/*!40000 ALTER TABLE `curriculums` DISABLE KEYS */;
INSERT INTO `curriculums` VALUES (1,'หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมคอมพิวเตอร์','Bachelor of Engineering Program in Computer Engineering','วิศวกรรมศาสตรบัณฑิต (วิศวกรรมคอมพิวเตอร์)','วศ.บ. (วิศวกรรมคอมพิวเตอร์)','Bachelor of Engineering (Computer Engineering)','B.Eng. (Computer Engineering)','ไม่น้อยกว่า 130 หน่วยกิต','หลักสูตรระดับปริญญาตรี หลักสูตร 4 ปี','หลักสูตรทางวิชาชีพ','ภาษาไทยและภาษาอังกฤษ โดยใช้ภาษาอังกฤษไม่น้อยกว่าร้อยละ 50 ของทุกรายวิชาในหมวดวิชาเฉพาะ','รับนักศึกษาไทย และ/หรือ นักศึกษาต่างชาติที่เข้าใจภาษาไทยเป็นอย่างดี','เป็นหลักสูตรเฉพาะของมหาวิทยาลัย','ให้ปริญญาเพียงสาขาวิชาเดียว','แผนการศึกษาหลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมคอมพิวเตอร์');
/*!40000 ALTER TABLE `curriculums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,'ผศ.ดร.ประเสริฐ นนทกาญจน์','ผู้ช่วยศาสตราจารย์','วิศวกรรมไฟฟ้า, ระบบควบคุม'),(3,'ผศ.ดร.จารุวัฒน์ เจริญจิต','ผู้ช่วยศาสตราจารย์','วิศวกรรมคอมพิวเตอร์, ปัญญาประดิษฐ์'),(4,'ผศ.ดร.คนที่หนึ่ง','ผู้ช่วยศาสตราจารย์','วิศวกรรมคอมพิวเตอร์');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_plans`
--

DROP TABLE IF EXISTS `study_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_plans`
--

LOCK TABLES `study_plans` WRITE;
/*!40000 ALTER TABLE `study_plans` DISABLE KEYS */;
INSERT INTO `study_plans` VALUES (1,'04-621-101','Computer Programming',3,1,1),(2,'04-621-102','Digital Logic Design',3,1,2),(3,'04-621-201','Data Structures and Algorithms',3,2,1);
/*!40000 ALTER TABLE `study_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-09  3:57:50
