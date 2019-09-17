-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: oa
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `claim_voucher`
--

DROP TABLE IF EXISTS `claim_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `claim_voucher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cause` varchar(100) DEFAULT NULL,
  `create_sn` char(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `next_deal_sn` char(10) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim_voucher`
--

LOCK TABLES `claim_voucher` WRITE;
/*!40000 ALTER TABLE `claim_voucher` DISABLE KEYS */;
INSERT INTO `claim_voucher` VALUES (6,'出差','a01','2019-09-08 03:53:49','a02',7000,'已提交'),(7,'加班费11','a01','2019-09-08 07:42:36',NULL,2500,'已打款'),(8,'展会开销','a01','2019-09-08 09:22:08','a04',6000,'已审核');
/*!40000 ALTER TABLE `claim_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claim_voucher_item`
--

DROP TABLE IF EXISTS `claim_voucher_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `claim_voucher_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim_voucher_item`
--

LOCK TABLES `claim_voucher_item` WRITE;
/*!40000 ALTER TABLE `claim_voucher_item` DISABLE KEYS */;
INSERT INTO `claim_voucher_item` VALUES (7,6,'交通',2000,'飞机'),(8,6,'餐饮',2000,'吃饭'),(9,7,'交通',500,'打车'),(10,7,'餐饮',2000,'吃晚饭'),(11,6,'住宿',3000,'总统套房'),(12,8,'交通',1000,'高铁'),(13,8,'餐饮',4000,'请客户吃饭'),(14,8,'住宿',1000,'水蕨');
/*!40000 ALTER TABLE `claim_voucher_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_record`
--

DROP TABLE IF EXISTS `deal_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deal_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `deal_sn` char(10) DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `deal_way` varchar(20) DEFAULT NULL,
  `deal_result` varchar(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_record`
--

LOCK TABLES `deal_record` WRITE;
/*!40000 ALTER TABLE `deal_record` DISABLE KEYS */;
INSERT INTO `deal_record` VALUES (1,6,'a01','2019-09-08 08:20:55','提交','已审核','无'),(2,8,'a01','2019-09-08 09:22:20','提交','已审核','无'),(3,7,'a01','2019-09-08 09:22:22','提交','已审核','无'),(4,7,'a02','2019-09-08 09:29:17','通过','已审核','同意'),(9,8,'a02','2019-09-08 09:34:06','通过','待复审',''),(10,8,'a03','2019-09-08 09:34:32','通过','已审核',''),(13,7,'a04','2019-09-08 09:50:51','打款','已打款','无');
/*!40000 ALTER TABLE `deal_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `sn` char(10) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('1001','销售部','北京'),('1002','生产一部','东莞'),('1','研发部','北辰世纪中心'),('1111','采购部','上海');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `sn` char(10) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department_sn` char(10) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('a01','123','钱七','1001','员工'),('a02','123456','李四','1001','部门经理'),('a03','123456','yys','1001','总经理'),('a04','123456','王敏','1001','财务'),('a07','123456','张三','1001','员工');
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

-- Dump completed on 2019-09-08 18:46:34
