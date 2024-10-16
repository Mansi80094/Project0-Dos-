-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: attack_detection
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` int DEFAULT NULL,
  `attack_id` int DEFAULT NULL,
  `alert_date` datetime DEFAULT NULL,
  `alert_level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
INSERT INTO `alerts` VALUES (1,1,'2022-01-01 12:00:00','High'),(2,2,'2022-01-02 13:00:00','Medium'),(3,3,'2022-01-03 14:00:00','Low'),(4,4,'2022-01-04 15:00:00','High'),(5,5,'2022-01-05 16:00:00','Medium');
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attack_types`
--

DROP TABLE IF EXISTS `attack_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attack_types` (
  `id` int DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attack_types`
--

LOCK TABLES `attack_types` WRITE;
/*!40000 ALTER TABLE `attack_types` DISABLE KEYS */;
INSERT INTO `attack_types` VALUES (1,'DDoS','Distributed Denial of Service'),(2,'SQL Injection','Structured Query Language Injection'),(3,'Cross-Site Scripting','XSS'),(4,'Brute Force','Password Guessing'),(5,'Phishing','Social Engineering');
/*!40000 ALTER TABLE `attack_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attacks`
--

DROP TABLE IF EXISTS `attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attacks` (
  `id` int DEFAULT NULL,
  `attack_type` int DEFAULT NULL,
  `attack_date` datetime DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacks`
--

LOCK TABLES `attacks` WRITE;
/*!40000 ALTER TABLE `attacks` DISABLE KEYS */;
INSERT INTO `attacks` VALUES (1,1,'2022-01-01 12:00:00','192.168.1.100'),(2,2,'2022-01-02 13:00:00','192.168.1.101'),(3,3,'2022-01-03 14:00:00','192.168.1.102'),(4,1,'2022-01-04 15:00:00','192.168.1.103'),(5,2,'2022-01-05 16:00:00','192.168.1.104');
/*!40000 ALTER TABLE `attacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detection_rules`
--

DROP TABLE IF EXISTS `detection_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detection_rules` (
  `id` int DEFAULT NULL,
  `rule_name` varchar(50) DEFAULT NULL,
  `rule_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detection_rules`
--

LOCK TABLES `detection_rules` WRITE;
/*!40000 ALTER TABLE `detection_rules` DISABLE KEYS */;
INSERT INTO `detection_rules` VALUES (1,'Rule 1','Detect DDoS attacks'),(2,'Rule 2','Detect SQL Injection'),(3,'Rule 3','Detect XSS'),(4,'Rule 4','Detect Brute Force'),(5,'Rule 5','Detect Phishing');
/*!40000 ALTER TABLE `detection_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sources` (
  `id` int DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL,
  `source_country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,'192.168.1.100','USA'),(2,'192.168.1.101','China'),(3,'192.168.1.102','Russia'),(4,'192.168.1.103','India'),(5,'192.168.1.104','Brazil');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19  1:12:57
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: security_information
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `patches`
--

DROP TABLE IF EXISTS `patches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patches` (
  `id` int DEFAULT NULL,
  `patch_name` varchar(50) DEFAULT NULL,
  `patch_description` varchar(100) DEFAULT NULL,
  `patch_release_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patches`
--

LOCK TABLES `patches` WRITE;
/*!40000 ALTER TABLE `patches` DISABLE KEYS */;
INSERT INTO `patches` VALUES (1,'SYN Flood Protection Patch','Patch to secure the system from SYN flood attacks','2022-06-15 10:00:00'),(2,'ICMP Flood Rate-Limiting Patch','Patch to limit ICMP request rates','2022-07-10 12:00:00'),(3,'WAF Patch for HTTP Flood','Web application firewall (WAF) enhancement to block HTTP flood attacks','2022-08-01 10:00:00'),(4,'Memory Management Patch','Patch to optimize memory management and prevent resource exhaustion','2021-09-05 09:00:00'),(5,'DNS Reflection Patch','Patch to prevent DNS servers from participating in reflective attacks','2021-01-01 10:00:00');
/*!40000 ALTER TABLE `patches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_advisories`
--

DROP TABLE IF EXISTS `security_advisories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_advisories` (
  `id` int DEFAULT NULL,
  `advisory_name` varchar(50) DEFAULT NULL,
  `advisory_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_advisories`
--

LOCK TABLES `security_advisories` WRITE;
/*!40000 ALTER TABLE `security_advisories` DISABLE KEYS */;
INSERT INTO `security_advisories` VALUES (1,'SYN Flood Advisory','Advisory about recent SYN flood attack vulnerabilities and patches.'),(2,'ICMP Flood Advisory','Advisory on the potential for ICMP ping flood attacks.'),(3,'HTTP Flood Advisory','Advisory on application layer HTTP flood attack prevention measures.'),(4,'Resource Exhaustion Advisory','Advisory regarding system capacity and defense against resource exhaustion.'),(5,'DNS Reflection Advisory','Advisory on mitigating reflective DNS attacks.');
/*!40000 ALTER TABLE `security_advisories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_incidents`
--

DROP TABLE IF EXISTS `security_incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_incidents` (
  `id` int DEFAULT NULL,
  `incident_id` int DEFAULT NULL,
  `security_incident_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_incidents`
--

LOCK TABLES `security_incidents` WRITE;
/*!40000 ALTER TABLE `security_incidents` DISABLE KEYS */;
INSERT INTO `security_incidents` VALUES (1,101,'2022-01-01 10:00:00'),(2,102,'2022-02-16 10:00:00'),(3,103,'2022-03-21 08:50:00'),(4,104,'2021-09-05 09:00:00'),(5,105,'2021-01-01 10:00:00');
/*!40000 ALTER TABLE `security_incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threat_intelligence`
--

DROP TABLE IF EXISTS `threat_intelligence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threat_intelligence` (
  `id` int DEFAULT NULL,
  `threat_name` varchar(50) DEFAULT NULL,
  `threat_description` varchar(100) DEFAULT NULL,
  `threat_level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threat_intelligence`
--

LOCK TABLES `threat_intelligence` WRITE;
/*!40000 ALTER TABLE `threat_intelligence` DISABLE KEYS */;
INSERT INTO `threat_intelligence` VALUES (1,'SYN Flood Threat','Increased activity of SYN flood attacks targeting vulnerable servers.','High'),(2,'ICMP Flood Threat','Detecting an uptick in ICMP ping flood attacks across networks.','Medium'),(3,'HTTP Flood Threat','Increase in HTTP flood attacks targeting application layer services.','High'),(4,'Resource Exhaustion Threat','Threat of resource exhaustion due to unoptimized memory usage.','Critical'),(5,'Reflective DNS Threat','High activity of reflective DNS attacks impacting multiple organizations.','High');
/*!40000 ALTER TABLE `threat_intelligence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vulnerabilities`
--

DROP TABLE IF EXISTS `vulnerabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vulnerabilities` (
  `id` int DEFAULT NULL,
  `vuln_name` varchar(50) DEFAULT NULL,
  `vuln_description` varchar(100) DEFAULT NULL,
  `vuln_severity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vulnerabilities`
--

LOCK TABLES `vulnerabilities` WRITE;
/*!40000 ALTER TABLE `vulnerabilities` DISABLE KEYS */;
INSERT INTO `vulnerabilities` VALUES (1,'SYN Flood Vulnerability','Vulnerability in TCP handshaking allowing SYN flood attacks','High'),(2,'ICMP Ping Flood Vulnerability','Exploitable weakness in handling ICMP requests leading to ping floods','Medium'),(3,'HTTP Flood Vulnerability','Application layer weakness allowing HTTP flood attacks','High'),(4,'Memory Exhaustion Vulnerability','System resource exhaustion due to inadequate memory management','Critical'),(5,'Reflective DNS Vulnerability','Weakness in DNS servers allowing reflective DDoS attacks','High');
/*!40000 ALTER TABLE `vulnerabilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19  1:12:58
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: network_traffic
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `ip_addresses`
--

DROP TABLE IF EXISTS `ip_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_addresses` (
  `id` int DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `ip_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_addresses`
--

LOCK TABLES `ip_addresses` WRITE;
/*!40000 ALTER TABLE `ip_addresses` DISABLE KEYS */;
INSERT INTO `ip_addresses` VALUES (1,'192.168.1.100','Public'),(2,'192.168.1.101','Private'),(3,'192.168.1.102','Public'),(4,'192.168.1.103','Private'),(5,'192.168.1.104','Public');
/*!40000 ALTER TABLE `ip_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_devices`
--

DROP TABLE IF EXISTS `network_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network_devices` (
  `id` int DEFAULT NULL,
  `device_name` varchar(20) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_devices`
--

LOCK TABLES `network_devices` WRITE;
/*!40000 ALTER TABLE `network_devices` DISABLE KEYS */;
INSERT INTO `network_devices` VALUES (1,'Router','Cisco'),(2,'Switch','HP'),(3,'Firewall','Juniper'),(4,'Server','Dell'),(5,'Client','Laptop');
/*!40000 ALTER TABLE `network_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocols`
--

DROP TABLE IF EXISTS `protocols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocols` (
  `id` int DEFAULT NULL,
  `protocol_name` varchar(20) DEFAULT NULL,
  `protocol_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols`
--

LOCK TABLES `protocols` WRITE;
/*!40000 ALTER TABLE `protocols` DISABLE KEYS */;
INSERT INTO `protocols` VALUES (1,'TCP','Transmission Control Protocol'),(2,'UDP','User Datagram Protocol'),(3,'HTTP','Hypertext Transfer Protocol'),(4,'FTP','File Transfer Protocol'),(5,'SSH','Secure Shell');
/*!40000 ALTER TABLE `protocols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic`
--

DROP TABLE IF EXISTS `traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traffic` (
  `id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL,
  `destination_ip` varchar(15) DEFAULT NULL,
  `protocol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic`
--

LOCK TABLES `traffic` WRITE;
/*!40000 ALTER TABLE `traffic` DISABLE KEYS */;
INSERT INTO `traffic` VALUES (1,'2022-01-01 12:00:00','192.168.1.100','192.168.1.1','TCP'),(2,'2022-01-02 13:00:00','192.168.1.101','192.168.1.2','UDP'),(3,'2022-01-03 14:00:00','192.168.1.102','192.168.1.3','HTTP'),(4,'2022-01-04 15:00:00','192.168.1.103','192.168.1.4','FTP'),(5,'2022-01-05 16:00:00','192.168.1.104','192.168.1.5','SSH');
/*!40000 ALTER TABLE `traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic_stats`
--

DROP TABLE IF EXISTS `traffic_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traffic_stats` (
  `id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `traffic_volume` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic_stats`
--

LOCK TABLES `traffic_stats` WRITE;
/*!40000 ALTER TABLE `traffic_stats` DISABLE KEYS */;
INSERT INTO `traffic_stats` VALUES (1,'2022-01-01 12:00:00',1000),(2,'2022-01-03 10:00:00',3000),(3,'2022-05-01 15:55:00',400),(1,'2021-01-01 20:00:00',5500),(5,'2021-08-06 12:00:00',1000);
/*!40000 ALTER TABLE `traffic_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19  1:12:58
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: system_resources
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `process_list`
--

DROP TABLE IF EXISTS `process_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process_list` (
  `id` int DEFAULT NULL,
  `process_name` varchar(20) DEFAULT NULL,
  `process_pid` int DEFAULT NULL,
  `process_cpu_usage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_list`
--

LOCK TABLES `process_list` WRITE;
/*!40000 ALTER TABLE `process_list` DISABLE KEYS */;
INSERT INTO `process_list` VALUES (1,'nginx',1010,2),(2,'mysqld',1023,8),(3,'php-fpm',1056,3),(4,'sshd',1002,1),(5,'docker',1060,5);
/*!40000 ALTER TABLE `process_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_usage`
--

DROP TABLE IF EXISTS `resource_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_usage` (
  `id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `cpu_usage` int DEFAULT NULL,
  `memory_usage` int DEFAULT NULL,
  `disk_usage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_usage`
--

LOCK TABLES `resource_usage` WRITE;
/*!40000 ALTER TABLE `resource_usage` DISABLE KEYS */;
INSERT INTO `resource_usage` VALUES (1,'2022-09-17 10:15:00',45,60,70),(2,'2022-11-01 14:00:00',40,62,65),(3,'2022-04-09 19:05:00',55,48,77),(4,'2021-05-01 12:10:00',32,60,66),(5,'2021-01-10 10:30:00',61,52,75);
/*!40000 ALTER TABLE `resource_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources` (
  `id` int DEFAULT NULL,
  `resource_name` varchar(20) DEFAULT NULL,
  `resource_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (1,'CPU','Central Processing Unit'),(2,'Memory','System Random Access memory'),(3,'Disk','Primary storage disk'),(4,'Network','Network interface'),(5,'GPU','Graphics Processing Unit');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_stats`
--

DROP TABLE IF EXISTS `system_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_stats` (
  `id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `system_load` int DEFAULT NULL,
  `system_uptime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_stats`
--

LOCK TABLES `system_stats` WRITE;
/*!40000 ALTER TABLE `system_stats` DISABLE KEYS */;
INSERT INTO `system_stats` VALUES (1,'2022-01-01 10:00:00',2,'16:00:00'),(2,'2022-09-01 12:00:00',1,'10:00:00'),(3,'2021-01-01 16:00:00',3,'07:30:00'),(4,'2021-06-05 10:00:00',1,'13:00:00'),(5,'2021-05-01 08:15:00',2,'18:00:00');
/*!40000 ALTER TABLE `system_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sessions`
--

DROP TABLE IF EXISTS `user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sessions` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `session_start` datetime DEFAULT NULL,
  `session_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sessions`
--

LOCK TABLES `user_sessions` WRITE;
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
INSERT INTO `user_sessions` VALUES (1,1001,'2022-01-01 09:00:00','2022-01-01 09:30:00'),(2,1002,'2022-05-10 09:10:00','2022-05-10 19:55:00'),(3,1003,'2022-09-17 09:00:00','2022-09-17 09:50:00'),(4,1004,'2021-10-07 09:30:00','2021-10-07 10:00:00'),(5,1005,'2021-11-17 09:40:00','2021-11-17 10:10:00');
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19  1:12:59
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: incident_response
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `incident_reports`
--

DROP TABLE IF EXISTS `incident_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_reports` (
  `id` int DEFAULT NULL,
  `incident_id` int DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `report_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_reports`
--

LOCK TABLES `incident_reports` WRITE;
/*!40000 ALTER TABLE `incident_reports` DISABLE KEYS */;
INSERT INTO `incident_reports` VALUES (1,101,'2022-01-10 10:30:00','Report on Volume-Based attack affecting network availability'),(2,102,'2022-02-15 11:45:00','Protocol attack mitigated successfully by adjusting SYN timeouts'),(3,103,'2022-03-20 09:25:00','Application layer attack detected and mitigated using WAF'),(4,104,'2021-04-25 14:15:00','Resource exhaustion prevented by upgrading server capacity'),(5,105,'2021-01-01 16:40:00','DDoS attack handled using traffic rerouting techniques');
/*!40000 ALTER TABLE `incident_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_types`
--

DROP TABLE IF EXISTS `incident_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_types` (
  `id` int DEFAULT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  `type_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_types`
--

LOCK TABLES `incident_types` WRITE;
/*!40000 ALTER TABLE `incident_types` DISABLE KEYS */;
INSERT INTO `incident_types` VALUES (1,'Volume-Based Attacks','Denial-of-Service attacks that flood the target with high volumes of traffic'),(2,'Protocol Attacks','DoS attacks that exploit weaknesses in the protocol stack'),(3,'Application Layer Attacks','Denial-of-Service attacks targeting the application layer'),(4,'Resource Exhaustion','Attacks that exhaust the resources of the target system'),(5,'DDOS','A DDoS attack involves multiple systems attacking the target at the same time');
/*!40000 ALTER TABLE `incident_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents` (
  `id` int DEFAULT NULL,
  `incident_date` datetime DEFAULT NULL,
  `incident_type` varchar(50) DEFAULT NULL,
  `incident_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,'2021-05-12 14:30:00','DoS','DoS attack targeting the main web server'),(2,'2021-06-25 09:15:00','DoS','DoS attack on API services'),(3,'2022-01-20 11:45:00','DoS','Large-scale DoS attack causing downtime'),(4,'2022-03-10 16:50:00','DoS','Targeted DoS attack on customer-facing portals'),(5,'2022-07-15 18:00:00','DoS','DoS attack affecting internal network services');
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_plans`
--

DROP TABLE IF EXISTS `response_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_plans` (
  `id` int DEFAULT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `plan_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_plans`
--

LOCK TABLES `response_plans` WRITE;
/*!40000 ALTER TABLE `response_plans` DISABLE KEYS */;
INSERT INTO `response_plans` VALUES (1,'Volume-Based Attack Mitigation Plan','Plan to mitigate volume-based DoS'),(2,'Protocol Attack Response Plan','mitigate protocol-based DoS attacks'),(3,'Application Layer Attack  Mitigation Plan','Plan to handle application-layer attacks'),(4,'Resource Exhaustion Prevention Plan','Plan to prevent resource exhaustion attacks'),(5,'DDoS','Plan to mitigate DDoS');
/*!40000 ALTER TABLE `response_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_teams`
--

DROP TABLE IF EXISTS `response_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_teams` (
  `id` int DEFAULT NULL,
  `team_name` varchar(50) DEFAULT NULL,
  `team_lead` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_teams`
--

LOCK TABLES `response_teams` WRITE;
/*!40000 ALTER TABLE `response_teams` DISABLE KEYS */;
INSERT INTO `response_teams` VALUES (1,'Volume-Based Attack','Alice Johnson'),(2,'Protocol Attack','Bob Smith'),(3,'Application Layer Attack','Carol Davis'),(4,'Resource Exhaustion Defense','David Clark'),(5,'DDoS','Eve Thompson');
/*!40000 ALTER TABLE `response_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19  1:12:59
