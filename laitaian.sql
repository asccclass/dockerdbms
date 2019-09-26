mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: laitaian
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `typez` int(11) NOT NULL DEFAULT '0',
  `typename` varchar(30) NOT NULL COMMENT '地址類別',
  `postcode` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `addr` varchar(50) NOT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (10,13,0,'','','','台中市太平區立功路265號'),(11,14,0,'','','','延吉街168號'),(12,15,0,'','','','松隆路17號5F'),(13,16,3,'自訂','333','','忠孝東路四段216巷'),(14,17,0,'','','','萬華區四川路'),(15,9,0,'','','','淡水'),(16,9,0,'','','','淡水'),(17,11,0,'','','','台北市延吉街7-2號'),(19,24,0,'','','','北市忠孝東路四段142號11F-6'),(20,25,0,'','','','北市大安區忠孝東路四段216巷51號'),(21,28,0,'','','','北市松山區民生東路四段79號3F');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addressType`
--

DROP TABLE IF EXISTS `addressType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addressType` (
  `atypeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`atypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressType`
--

LOCK TABLES `addressType` WRITE;
/*!40000 ALTER TABLE `addressType` DISABLE KEYS */;
INSERT INTO `addressType` VALUES (1,'聯絡人'),(3,'電話1');
/*!40000 ALTER TABLE `addressType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `sid` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `resname` varchar(50) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (5,8,'','賴泰安珠寶鑑定公司','','','2019-08-22 00:27:38'),(6,9,'','金兔精品','','','2019-08-22 06:38:26'),(7,10,'','','侯景原','','2019-08-22 06:39:12'),(8,13,'','','黃正達','','2019-08-28 06:29:44'),(9,14,'','','秦嗣林','','2019-08-28 07:27:52'),(10,16,'','','張貞富','','2019-08-28 07:37:11'),(12,22,'','','廖泔鴻','','2019-09-05 01:34:53'),(13,23,'21256787','日盛珠寶銀樓企業有限公司','許榮隆','','2019-09-05 01:36:28'),(14,24,'','香港商阿可瓦香港有限公司','','','2019-09-05 01:37:48'),(15,25,'','','陳芳華','','2019-09-05 01:43:02'),(16,26,'30998608','慧慧珠寶銀樓有限公司','許小慧','','2019-09-06 03:32:46'),(17,27,'24416871','米青石殿有限公司','黃凰茹','','2019-09-24 01:51:02'),(18,28,'28453073','晞瑞國際有限公司','','','2019-09-24 02:25:28');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyaddress`
--

DROP TABLE IF EXISTS `companyaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyaddress` (
  `caID` int(11) NOT NULL AUTO_INCREMENT,
  `addressID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  PRIMARY KEY (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyaddress`
--

LOCK TABLES `companyaddress` WRITE;
/*!40000 ALTER TABLE `companyaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `companyaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companytel`
--

DROP TABLE IF EXISTS `companytel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companytel` (
  `ctID` int(11) NOT NULL AUTO_INCREMENT,
  `telID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companytel`
--

LOCK TABLES `companytel` WRITE;
/*!40000 ALTER TABLE `companytel` DISABLE KEYS */;
/*!40000 ALTER TABLE `companytel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customeraddress` (
  `caID` int(11) NOT NULL AUTO_INCREMENT,
  `addressID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  PRIMARY KEY (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercompany`
--

DROP TABLE IF EXISTS `customercompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customercompany` (
  `ccID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  PRIMARY KEY (`ccID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercompany`
--

LOCK TABLES `customercompany` WRITE;
/*!40000 ALTER TABLE `customercompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `customercompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customertel`
--

DROP TABLE IF EXISTS `customertel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customertel` (
  `ctID` int(11) NOT NULL AUTO_INCREMENT,
  `telID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertel`
--

LOCK TABLES `customertel` WRITE;
/*!40000 ALTER TABLE `customertel` DISABLE KEYS */;
/*!40000 ALTER TABLE `customertel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorelogin`
--

DROP TABLE IF EXISTS `dorelogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorelogin` (
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(13) NOT NULL DEFAULT '',
  `role` varchar(10) NOT NULL DEFAULT '',
  `ipRange` varchar(100) NOT NULL DEFAULT '',
  `lifetime` smallint(5) NOT NULL DEFAULT '9600',
  `ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorelogin`
--

LOCK TABLES `dorelogin` WRITE;
/*!40000 ALTER TABLE `dorelogin` DISABLE KEYS */;
INSERT INTO `dorelogin` VALUES ('root','xs514Cm9McO.Y','sysAdmin','',9600,1),('justdrink','6njd/r2FZa2e6','','',9600,0),('@sysAdmin','','sysAdmin','',9600,0),('robert','xs514Cm9McO.Y','sysAdmin','',9600,2);
/*!40000 ALTER TABLE `dorelogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doreuser`
--

DROP TABLE IF EXISTS `doreuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doreuser` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL COMMENT '客戶代號',
  `ID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `rankID` int(11) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL,
  `offer` varchar(30) NOT NULL DEFAULT '',
  `meno` text NOT NULL,
  `createDate` date DEFAULT NULL,
  `usrNo` int(11) DEFAULT '0',
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doreuser`
--

LOCK TABLES `doreuser` WRITE;
/*!40000 ALTER TABLE `doreuser` DISABLE KEYS */;
INSERT INTO `doreuser` VALUES (16,'PAD-001',0,'大喨真珠','N',8,'','5','修改測試看會不會成功- test ok','2019-08-28',0,'2019-09-25 14:26:33'),(13,'test-08',0,'頂園','Y',17,'','7折','','2019-08-28',0,'2019-09-06 03:09:59'),(8,'TEST 002',0,'齊富儷','N',2,'','5','','2019-08-19',0,'2019-08-22 00:27:38'),(9,'test-02',0,'趙愛倫(兔子姊)','N',17,'','0','兔子姐, 網拍業者','2019-08-22',0,'2019-09-04 05:48:03'),(10,'test-02',0,'侯門','N',2,'','5','備註欄位測試','2019-08-22',0,'2019-08-29 02:43:59'),(11,'test-05',0,'青田','Y',2,'','20','備註欄位測試','2019-08-26',0,'2019-09-06 03:39:31'),(14,'PAD-001',0,'大千典精品','N',2,'','5','','2019-08-28',0,'2019-09-06 02:25:43'),(15,'PAD-001',0,'黃季美','N',0,'andyliu@sinica.edu.tw','5','黃大媽','2019-08-28',0,'2019-09-24 01:55:34'),(17,'',0,'呂珮珊','',0,'','','西門町美髮設計師','2019-09-04',0,'2019-09-04 03:20:16'),(18,'018',0,'陳顯榮','',0,'','','業者,常給漢宮小林(詹儒林)做鑲工,\n兒子100年GIA畢業,女兒(英國學珠寶&服裝設計),也都在店裡幫忙。','2019-09-04',0,'2019-09-24 01:59:49'),(19,'',0,'陳麗玲( 鳳翔)','',0,'','','兒子在淡水開武術館','2019-09-04',0,'2019-09-04 05:50:34'),(26,'',0,'慧慧','Y',2,'','','','2019-09-06',0,'2019-09-06 03:32:46'),(21,'',0,'張榮華 JACKY','',0,'','','','2019-09-05',0,'2019-09-05 01:33:09'),(22,'',0,'九怡堂畫廊','',0,'','','','2019-09-05',0,'2019-09-05 01:34:53'),(23,'',0,'日盛','',0,'','','','2019-09-05',0,'2019-09-05 01:36:28'),(24,'',0,'阿可瓦','',0,'','','','2019-09-05',0,'2019-09-05 01:37:48'),(25,'',0,'東方緣起','',0,'','','','2019-09-05',0,'2019-09-05 01:43:02'),(27,'',0,'黃凰茹','',0,'','','網拍工作室','2019-09-24',0,'2019-09-24 01:51:02'),(28,'',0,'晞瑞','',16,'','','','2019-09-24',0,'2019-09-24 02:25:28');
/*!40000 ALTER TABLE `doreuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `rankID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`rankID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (2,'業者'),(8,'消費者'),(16,'印度商'),(17,'網拍業者'),(18,'※警示客戶');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeinlist`
--

DROP TABLE IF EXISTS `takeinlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeinlist` (
  `takeinID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL DEFAULT '0' COMMENT '客戶編號',
  `name` varchar(50) NOT NULL,
  `ticketNo` varchar(10) NOT NULL COMMENT '收件單編號',
  `senddate` date NOT NULL COMMENT '送件日期',
  `tel` varchar(16) NOT NULL COMMENT '送件電話',
  `address` varchar(254) NOT NULL COMMENT '送件地址',
  `getbackdate` date DEFAULT '0000-01-01' COMMENT '取回日期',
  `custody` smallint(2) NOT NULL DEFAULT '0' COMMENT '代保管包裝盒（袋）',
  `whoz` int(11) NOT NULL DEFAULT '0' COMMENT '收件經手人',
  `lastupdate` datetime NOT NULL,
  `menoz` text NOT NULL COMMENT '備註',
  PRIMARY KEY (`takeinID`),
  UNIQUE KEY `uq` (`ticketNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeinlist`
--

LOCK TABLES `takeinlist` WRITE;
/*!40000 ALTER TABLE `takeinlist` DISABLE KEYS */;
INSERT INTO `takeinlist` VALUES (1,14,'','19001','2019-09-21','2781-8979','延吉街168號','0000-01-01',0,0,'2019-09-21 09:22:52',''),(2,0,'','19002','2019-09-21','23789123','1231312','0000-01-01',0,0,'2019-09-21 09:23:40',''),(3,14,'大千典精品','19003','2019-09-21','2781-8979','延吉街168號','0000-01-01',1,0,'2019-09-21 12:30:08','');
/*!40000 ALTER TABLE `takeinlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeinlistitem`
--

DROP TABLE IF EXISTS `takeinlistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeinlistitem` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `takeinID` int(11) NOT NULL,
  `qrcode` varchar(30) NOT NULL COMMENT 'QR-Code',
  `typez` varchar(30) NOT NULL COMMENT '物品類別',
  `cnt` int(11) NOT NULL DEFAULT '1' COMMENT '數量',
  `meno` text NOT NULL COMMENT '備註',
  PRIMARY KEY (`itemID`),
  UNIQUE KEY `unique` (`takeinID`,`qrcode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeinlistitem`
--

LOCK TABLES `takeinlistitem` WRITE;
/*!40000 ALTER TABLE `takeinlistitem` DISABLE KEYS */;
INSERT INTO `takeinlistitem` VALUES (1,1,'123456','bracelet',1,''),(2,1,'54321','bracelet',1,'333'),(3,2,'11111','bracelet',1,''),(4,3,'2222','bracelet',1,'');
/*!40000 ALTER TABLE `takeinlistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tel`
--

DROP TABLE IF EXISTS `tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tel` (
  `telID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL DEFAULT '0',
  `typez` int(11) NOT NULL DEFAULT '0',
  `codez` varchar(10) NOT NULL,
  `sectionz` varchar(10) NOT NULL,
  `telname` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`telID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tel`
--

LOCK TABLES `tel` WRITE;
/*!40000 ALTER TABLE `tel` DISABLE KEYS */;
INSERT INTO `tel` VALUES (9,13,0,'','','','0932-320349'),(10,14,0,'','','','2781-8979'),(11,14,0,'','','','2781-9177'),(12,15,0,'','','','0916-853141'),(13,15,1,'','','','0932-120354'),(14,17,0,'','','','0932-111222'),(15,18,0,'','','','0973-527389'),(16,18,0,'','','','0931-031751'),(18,9,0,'','','','0988-580517'),(19,9,0,'','','','0988-580517'),(20,19,0,'','','','0910-035503'),(21,11,0,'','','','2579-5399'),(23,11,0,'','','','0932-359128'),(27,21,0,'','','','0932-154987'),(28,21,0,'','','','8788-1636'),(29,22,0,'','','','2396-6675'),(30,22,0,'','','','0936-539444'),(31,23,0,'','','','2721-7107'),(32,23,0,'','','','2752-2619'),(33,23,0,'','','','0933-942056'),(34,24,0,'','','','8773-2003'),(35,25,0,'','','','2711-5532'),(36,16,0,'','','稱謂','234567'),(37,14,0,'','','陳慧玲','分機#102'),(38,13,0,'','','黃正雄','0928-126249'),(39,13,0,'','','李美玉','0926-626464'),(40,13,0,'','','黃正雄','0928-126249'),(41,13,0,'','','李美玉','0926-626464'),(42,13,0,'','','黃正雄','0928-126249'),(43,13,0,'','','李美玉','0926-626464'),(44,13,0,'','','室話','(04)2393-7959'),(45,13,0,'','','黃正雄','0928-126249'),(46,13,0,'','','李美玉','0926-626464'),(47,13,0,'','','室話','(04)2393-7959'),(48,13,0,'','','黃正雄','0928-126249'),(49,13,0,'','','李美玉','0926-626464'),(50,13,0,'','','室話','(04)2393-7959'),(51,13,0,'','','黃正雄','0928-126249'),(52,13,0,'','','李美玉','0926-626464'),(53,13,0,'','','室話','(04)2393-7959'),(54,13,0,'','','黃正雄','0928-126249'),(55,13,0,'','','李美玉','0926-626464'),(56,13,0,'','','室話','(04)2393-7959'),(57,27,0,'','','黃凰茹','0915-022252'),(58,18,0,'','','陳偉涵Venus(女兒)','0926-752040'),(59,18,0,'','','陳偉涵Venus(女兒)','0926-752040'),(60,28,0,'','','Jimmy(業務)','0989-377310');
/*!40000 ALTER TABLE `tel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 23:59:22
