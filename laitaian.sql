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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (10,13,0,'','','','台中市太平區立功路265號'),(11,14,0,'','','','台北市延吉街168號'),(13,16,3,'店面','106','','台北市忠孝東路四段216巷'),(14,17,0,'','','','萬華區四川路'),(15,9,0,'','','','淡水'),(17,11,0,'','','','台北市延吉街7-2號'),(19,24,0,'','','','北市忠孝東路四段142號11F-6'),(20,25,0,'','','','北市大安區忠孝東路四段216巷51號'),(21,28,0,'','','','北市松山區民生東路四段79號3F'),(25,18,0,'','','','桃園縣蘆竹鄉南祥路111號13F'),(26,18,0,'','','','桃園縣桃園市藝文一街30號14F'),(28,30,0,'','','','北市德惠街32號1F'),(30,35,0,'sdfsf','sfdafs','','sfdfsa'),(31,32,0,'','','','北市大安區敦化南路二段38號3F-1'),(32,39,0,'','','','宜蘭縣羅東鎮中正北路241號'),(33,41,0,'','','','台北市延吉街163號'),(34,43,0,'','','','台北市莊敬路232號1F'),(35,44,0,'','','','桃園縣平鎮市復旦路二段150巷255弄4號4F');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (5,8,'','','施秋馨','','2019-08-22 00:27:38'),(6,9,'','金兔精品','','','2019-08-22 06:38:26'),(7,10,'','','侯景原','','2019-08-22 06:39:12'),(8,13,'','','黃正達','','2019-08-28 06:29:44'),(9,14,'','','秦嗣林','','2019-08-28 07:27:52'),(10,16,'97465855','晴喨國際有限公司','張貞富','','2019-08-28 07:37:11'),(12,22,'','','廖泔鴻','','2019-09-05 01:34:53'),(13,23,'21256787','日盛珠寶銀樓企業有限公司','許榮隆','','2019-09-05 01:36:28'),(14,24,'','香港商阿可瓦香港有限公司','','','2019-09-05 01:37:48'),(15,25,'','','陳芳華','','2019-09-05 01:43:02'),(16,26,'30998608','慧慧珠寶銀樓有限公司','許小慧','','2019-09-06 03:32:46'),(17,27,'24416871','米青石殿有限公司','黃凰茹','','2019-09-24 01:51:02'),(18,28,'28453073','晞瑞國際有限公司','','','2019-09-24 02:25:28'),(21,18,'','','','','2019-10-04 00:00:00'),(22,30,'','','吳陳月嬌','','2019-10-04 00:00:00'),(24,32,'','','','','2019-10-16 00:00:00'),(27,19,'','','','','2019-10-18 00:00:00'),(28,35,'sdfsfsd','sfdsfsdf','sdfdsafds','','2019-10-18 00:00:00'),(29,36,'','','','','2019-10-21 00:00:00'),(30,37,'','','','','2019-10-21 00:00:00'),(31,38,'','','','','2019-10-24 00:00:00'),(32,11,'','','陳清田','','2019-10-24 00:00:00'),(33,39,'','','','','2019-10-24 00:00:00'),(34,40,'','','','','2019-10-24 00:00:00'),(35,41,'','','','','2019-10-25 00:00:00'),(36,42,'','','葉江河','','2019-10-25 00:00:00'),(37,43,'','玉豐金銀珠寶銀樓','李玉豐','','2019-10-25 00:00:00'),(38,44,'','','','','2019-10-25 00:00:00'),(39,45,'','','','','2019-10-25 00:00:00'),(40,17,'','','','','2019-10-28 00:00:00'),(41,46,'29123044','加美廣告有限公司','','','2019-10-31 00:00:00');
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
-- Table structure for table `customermeno`
--

DROP TABLE IF EXISTS `customermeno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customermeno` (
  `menoID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL DEFAULT '0' COMMENT '客戶編號',
  `menoz` varchar(254) NOT NULL COMMENT '客戶備註',
  `usrNo` int(11) NOT NULL DEFAULT '0',
  `lastupdate` date NOT NULL DEFAULT '0000-01-01',
  PRIMARY KEY (`menoID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customermeno`
--

LOCK TABLES `customermeno` WRITE;
/*!40000 ALTER TABLE `customermeno` DISABLE KEYS */;
INSERT INTO `customermeno` VALUES (1,9,'兔子姐, 網拍業者',0,'2019-09-28'),(2,18,'常給漢宮小林(詹儒林)做鑲工,兒子100年GIA畢業,女兒(英國學珠寶&服裝設計),也都在店裡幫忙。\n陳先生最近幾年經常打高爾夫球',0,'2019-10-24'),(3,19,'兒子在淡水開武術館\n先生是退伍軍人',0,'2019-10-24'),(18,30,'吳陳月嬌是珠寶買賣的仲介',0,'2019-10-24'),(19,16,'店面招牌是 \"U PEARL\"',0,'2019-10-31'),(24,13,'oo',0,'2019-10-17'),(26,16,'住家買在大直, 每坪100萬。',0,'2019-10-31'),(27,19,'',0,'2019-10-24'),(28,16,'蔡郁芬因為植牙一顆吃了八個月抗生素',0,'2019-10-31'),(29,32,'測試備註事項換行\n第一行\n第二行',0,'2019-10-18'),(30,35,'231213\n444\n555\n4444',0,'2019-10-18'),(31,36,'',0,'2019-10-21'),(32,37,'',0,'2019-10-21'),(33,38,'張博焱(員工)以前在CARTIER站櫃',0,'2019-10-24'),(34,18,'',0,'2019-10-24'),(35,25,'姊妹開店',0,'2019-10-24'),(36,39,'',0,'2019-10-24'),(37,40,'以前學員, 之前再廈門做生意',0,'2019-10-24'),(38,41,'謝承恩(小兒子)曾在沖繩做旅遊租車業2年',0,'2019-10-25'),(39,42,'葉江河澎湖人,住家在榮星花園附近',0,'2019-10-25'),(40,42,'大女兒留日, 二女兒留美碩士(目前在店裡), 兒子留美',0,'2019-10-25'),(41,43,'兒子李軒緯82年次,先當完兵再念大學，2017在德明技術學院讀大三企管行銷,畢業後去日本學鑲工設計。\n女兒83年次，政大地政系畢業。',0,'2019-10-31'),(42,43,'2018/2/13跟李玉豐買3個黃金湯匙(8分), 黃金999,共$14,000(一個約$4,666)，若要買一錢的湯匙是$5,666。',0,'2019-10-31'),(43,44,'兒子和王顯慧同年紀',0,'2019-10-31'),(44,45,'在美國念到經濟碩士, 蔡先生在美國是雙學位,有美國會計師執照, 曾經在安侯會計師工作',0,'2019-10-25'),(45,17,'西門町的美髮設計師, 前男友是珠寶同業',0,'2019-10-30'),(46,46,'主業是廣告業',0,'2019-10-31');
/*!40000 ALTER TABLE `customermeno` ENABLE KEYS */;
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
  `createDate` date DEFAULT NULL,
  `usrNo` int(11) DEFAULT '0',
  `lastupdate` datetime DEFAULT '0000-01-01 00:00:00',
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doreuser`
--

LOCK TABLES `doreuser` WRITE;
/*!40000 ALTER TABLE `doreuser` DISABLE KEYS */;
INSERT INTO `doreuser` VALUES (16,'19001',0,'大喨真珠','N',2,'','','2019-08-28',0,'2019-10-31 07:24:38'),(13,'19002',0,'頂園','Y',17,'','7折','2019-08-28',0,'2019-10-17 10:39:41'),(8,'19003',0,'齊富儷','N',2,'','5','2019-08-19',0,'2019-10-31 07:23:58'),(9,'19004',0,'趙愛倫(兔子姊)','N',17,'','0','2019-08-22',0,'2019-09-27 15:03:44'),(10,'19005',0,'侯門','N',2,'','5','2019-08-22',0,'2019-08-29 02:43:59'),(11,'19006',0,'青田','Y',2,'','20','2019-08-26',0,'2019-10-24 09:05:41'),(14,'19007',0,'大千典精品','Y',2,'','5','2019-08-28',0,'2019-10-24 09:07:17'),(41,'19028',0,'金富山','',0,'','','2019-10-25',0,'2019-10-25 01:36:09'),(17,'19009',0,'呂珮珊','',0,'','','2019-09-04',0,'2019-10-30 07:39:58'),(18,'19010',0,'陳顯榮','',0,'','','2019-09-04',0,'2019-10-24 09:02:22'),(19,'19011',0,'陳麗玲( 鳳翔)','',0,'','','2019-09-04',0,'2019-10-24 09:12:07'),(26,'19012',0,'慧慧','Y',2,'','','2019-09-06',0,'2019-10-30 07:35:07'),(21,'19013',0,'張榮華 JACKY','',0,'','','2019-09-05',0,'2019-09-05 01:33:09'),(22,'19014',0,'九怡堂畫廊','',0,'','','2019-09-05',0,'2019-09-05 01:34:53'),(23,'19015',0,'日盛','',0,'','','2019-09-05',0,'2019-09-05 01:36:28'),(24,'19016',0,'阿可瓦','',0,'','','2019-09-05',0,'2019-09-05 01:37:48'),(25,'19017',0,'東方緣起','',0,'','','2019-09-05',0,'2019-10-24 09:04:41'),(27,'19018',0,'黃凰茹','',0,'','','2019-09-24',0,'2019-09-24 01:51:02'),(28,'19019',0,'晞瑞','',16,'','','2019-09-24',0,'2019-09-24 02:25:28'),(30,'19020',0,'日意古董藝術','',0,'','','2019-10-04',0,'2019-10-24 09:03:14'),(35,'19021',0,'test','Y',2,'','1','2019-10-18',0,'2019-10-18 08:20:35'),(32,'19022',0,'許小倩','',0,'','','2019-10-16',0,'2019-10-24 09:11:34'),(36,'19023',0,'測試','Y',2,'','1','2019-10-21',0,'2019-10-21 03:27:05'),(37,'19024',0,'測試客戶代碼','Y',2,'','2','2019-10-21',0,'2019-10-21 03:33:03'),(38,'19025',0,'寶麗萊','',0,'','','2019-10-24',0,'2019-10-24 08:58:55'),(39,'19026',0,'傳順水晶','',0,'','','2019-10-24',0,'2019-10-24 09:13:34'),(40,'19027',0,'林怡青 莉莎','',0,'','','2019-10-24',0,'2019-10-24 09:15:30'),(42,'19029',0,'江美','',0,'','','2019-10-25',0,'2019-10-25 01:38:55'),(43,'19030',0,'李玉豐','',0,'','','2019-10-25',0,'2019-10-31 02:22:28'),(44,'19031',0,'真寶工作室','',0,'','','2019-10-25',0,'2019-10-31 07:25:13'),(45,'19032',0,'李桂儀','',0,'','','2019-10-25',0,'2019-10-25 06:51:32'),(46,'19033',0,'蔡憶萍','',0,'','','2019-10-31',0,'2019-10-31 07:24:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (2,'業者'),(8,'消費者'),(16,'印度商'),(17,'網拍業者'),(18,'※警示客戶'),(19,'不詳');
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
  PRIMARY KEY (`takeinID`),
  UNIQUE KEY `uq` (`ticketNo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeinlist`
--

LOCK TABLES `takeinlist` WRITE;
/*!40000 ALTER TABLE `takeinlist` DISABLE KEYS */;
INSERT INTO `takeinlist` VALUES (16,0,'房清靈','19004','2019-11-01','','','0000-01-01',0,0,'2019-11-01 08:13:19'),(17,0,'籃育晟','19005','2019-11-04','','','0000-01-01',0,0,'2019-11-04 01:38:08'),(18,0,'胡郁芬','19006','2019-11-06','','','0000-01-01',0,0,'2019-11-06 06:22:41'),(19,0,'翁壽山','19007','2019-11-06','','','0000-01-01',0,0,'2019-11-06 06:23:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeinlistitem`
--

LOCK TABLES `takeinlistitem` WRITE;
/*!40000 ALTER TABLE `takeinlistitem` DISABLE KEYS */;
INSERT INTO `takeinlistitem` VALUES (18,16,'295','bracelet',1,''),(19,16,'296','bracelet',1,''),(20,16,'297','bracelet',1,''),(21,16,'298','loosestone',1,''),(22,17,'300','',1,''),(23,17,'301','',1,''),(24,17,'302','',1,''),(25,18,'351','',1,'');
/*!40000 ALTER TABLE `takeinlistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeinlistobj`
--

DROP TABLE IF EXISTS `takeinlistobj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeinlistobj` (
  `objID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '中文名稱',
  `ename` varchar(50) NOT NULL COMMENT '英文名稱',
  `valuez` varchar(30) NOT NULL COMMENT '選單值',
  `lastupdate` datetime NOT NULL COMMENT 'auto_datetime',
  PRIMARY KEY (`objID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeinlistobj`
--

LOCK TABLES `takeinlistobj` WRITE;
/*!40000 ALTER TABLE `takeinlistobj` DISABLE KEYS */;
/*!40000 ALTER TABLE `takeinlistobj` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tel`
--

LOCK TABLES `tel` WRITE;
/*!40000 ALTER TABLE `tel` DISABLE KEYS */;
INSERT INTO `tel` VALUES (9,13,0,'','','','0932-320349'),(10,14,0,'','','','2781-8979'),(11,14,0,'','','','2781-9177'),(14,17,0,'','','','0932-111222'),(15,18,0,'','','陳顯榮','0973-527389'),(16,18,0,'','','陳科銘(兒子)','0931-031751'),(18,9,0,'','','A','0988-580517'),(19,9,0,'','','B','0988-580517'),(20,19,0,'','','','0910-035503'),(21,11,0,'','','','2579-5399'),(23,11,0,'','','陳清田','0932-359128'),(27,21,0,'','','','0932-154987'),(28,21,0,'','','','8788-1636'),(29,22,0,'','','','2396-6675'),(30,22,0,'','','','0936-539444'),(31,23,0,'','','','2721-7107'),(32,23,0,'','','','2752-2619'),(33,23,0,'','','','0933-942056'),(34,24,0,'','','','8773-2003'),(35,25,0,'','','','2711-5532'),(36,16,0,'','','張貞富','2711-6511'),(37,14,0,'','','陳慧玲','分機#102'),(38,13,0,'','','黃正雄','0928-126249'),(39,13,0,'','','李美玉','0926-626464'),(44,13,0,'','','市話','(04)2393-7959'),(57,27,0,'','','黃凰茹','0915-022252'),(58,18,0,'','','陳偉涵Venus(女兒)','0926-752040'),(59,18,0,'','','陳顯榮','0925-728386'),(60,28,0,'','','Jimmy(業務)','0989-377310'),(63,30,0,'','','','2594-5249'),(64,30,0,'','','林賜梅(資深員工)','0939-175885'),(65,16,0,'','','蔡郁芬(太太)',''),(68,35,0,'','','111','1111'),(69,38,0,'','','','2511-7132'),(70,26,0,'','','','2758-1074'),(71,26,0,'','','郭士英','2758-1057  #25'),(72,26,0,'','','廖志強(司機)',''),(73,14,0,'','','章小姐','分機#101'),(74,32,0,'','','許小倩','0936-109914'),(75,32,0,'','','陳信安Andy(大兒子)','0936-646265'),(76,32,0,'','','許瀅凡(嘟嘟) 姪女','0919-985154'),(77,39,0,'','','陳傳順','0926-571335'),(78,39,0,'','','游家芯','0926-571335'),(79,41,0,'','','','2751-8879'),(80,41,0,'','','謝承恩(小兒子)',''),(81,42,0,'','','','2775-3026'),(82,42,0,'','','葉柏村(兒子) PO','0988-511059'),(83,42,0,'','','葉江河','0921-997201'),(84,42,0,'','','','2775-3022'),(85,43,0,'','','李玉豐','0928-838058'),(86,43,0,'','','','2720-7020'),(87,44,0,'','','','(03)4933568'),(88,44,0,'','','趙富強','0933-147676'),(89,44,0,'','','黃素貞','0928-894680'),(90,45,0,'','','李桂儀','0960-000970'),(91,45,0,'','','蔡秉昇(老公)','0920-369550'),(92,26,0,'','','Edward何',''),(93,43,0,'','','李軒緯(兒子)',''),(94,46,0,'','','蔡憶萍','0933-159608'),(95,46,0,'','','何鐘瑋(老公)','2562-8556');
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

-- Dump completed on 2020-02-21 13:06:59
