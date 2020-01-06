mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: assns
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
-- Table structure for table `activitiez`
--

DROP TABLE IF EXISTS `activitiez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitiez` (
  `actID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL DEFAULT '0' COMMENT '學校代碼',
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)學校 1)協會',
  `actType` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)活動 1)校慶',
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `stDate` date NOT NULL DEFAULT '0000-01-01',
  `stTime` varchar(6) NOT NULL COMMENT '格式：18:00',
  `edDate` date NOT NULL DEFAULT '0000-01-01',
  `edTime` varchar(6) NOT NULL COMMENT '格式 18:30',
  `pos` varchar(254) NOT NULL COMMENT '地點',
  `picture` varchar(120) NOT NULL COMMENT '活動圖片',
  `url` varchar(254) NOT NULL,
  `gsUrlID` varchar(120) NOT NULL,
  `extradata` text NOT NULL,
  `isClosed` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否結束報名',
  `admission` smallint(6) NOT NULL DEFAULT '0' COMMENT '憑門票入場 Admission by ticket',
  PRIMARY KEY (`actID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiez`
--

LOCK TABLES `activitiez` WRITE;
/*!40000 ALTER TABLE `activitiez` DISABLE KEYS */;
INSERT INTO `activitiez` VALUES (1,1,1,0,'陽明山會務研習','協助本市高職學校家長會會務人員了解臺北市教育團隊政策與理念、健全家長會組織經營發展，提升各校家長會領導團隊及成員參與教育事務之理念與做法，共創教育美好未來。','2019-12-07','08:00','2019-12-07','17:00','陽明山教師研習中心','https://i.imgur.com/uZafEpy.jpg','https://docs.google.com/forms/d/e/1FAIpQLScdizCyNtWfjjRuSa7aVQIeHfc9O1-GuEvCU6waMIu8t4-HXw/viewform','','',0,0),(2,1,1,0,'亞東技術學院參訪','集合地點：元智大樓10樓國際會議廳\r\n交通方式：自行前往，學校不提供交通車\r\n\r\n＊ 若自行開車前往請務必於報名表上填寫車號，否則將無法進入學校停車','2019-12-12','09:00','2019-12-12','12:00','新北市板橋區四川路二段58號','https://i.imgur.com/ZrbAZp4.jpg','https://forms.gle/cq1ykGCajSxgKQUH9','','車號（若自行開車，否則打無）;素食',0,0),(3,1,1,0,'高職聯18屆授證餐會','18屆授證典禮','2019-12-17','17:00','2019-12-17','21:30','大直點華5F繁華廳','https://i.imgur.com/459Ux4N.jpg','','','吃素嗎;自行開車嗎',0,0),(4,1,1,0,'高職聯士林農會參訪','職農教育','2019-12-18','09:00','2019-12-18','19:00','士林農會','https://i.imgur.com/yupxfPm.jpg','','','',0,1),(5,26,0,1,'景文中學50週年校慶','校慶','2019-12-14','08:30','2019-12-14','12:00','景文中學','https://i.imgur.com/mueaY2P.jpg','','','',0,0),(6,2,1,0,'高中聯包高中活動','包高中','2019-12-25','09:00','2019-12-25','12:00','臺北市孔廟','https://i.imgur.com/mwu1HpN.jpg','','','',0,0),(7,1,1,0,'海洋科技大學參訪活動','參訪活動','2019-12-27','09:00','2019-12-27','12:00','海洋科技大學士林校區','https://i.imgur.com/SRdIUU9.png','','','車號（若自行開車，否則打無）;需要素食',0,0),(8,2,1,0,'新課綱時代怎麼教？如何學？','新課綱教育強調素養，強調孩子能夠自主行動、溝通表達，與他人互動共好，我們能夠如何引導孩子探索知識，學會思考與解決問題，陪伴他們認識自己與探索未來？','2019-12-21','14:00','2019-12-21','16:00','麗山高中','https://i.imgur.com/xBDZPTK.png','https://www.accupass.com/event/1912041354264219526980','','年齡;就讀學校',0,0),(9,3,1,0,'18屆聯合授證典禮','18屆授證典禮','2019-12-24','13:00','2019-12-24','5:30','臺北市青少年發展處6樓','https://i.imgur.com/0hMXWGC.png','','','吃素嗎',0,0);
/*!40000 ALTER TABLE `activitiez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitiezperson`
--

DROP TABLE IF EXISTS `activitiezperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitiezperson` (
  `apID` int(11) NOT NULL AUTO_INCREMENT,
  `actID` int(11) NOT NULL,
  `userID` varchar(120) NOT NULL,
  `insDate` date NOT NULL DEFAULT '0000-01-01',
  `meno` text NOT NULL,
  `arrived` datetime NOT NULL DEFAULT '0000-01-01 00:00:00',
  PRIMARY KEY (`apID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiezperson`
--

LOCK TABLES `activitiezperson` WRITE;
/*!40000 ALTER TABLE `activitiezperson` DISABLE KEYS */;
INSERT INTO `activitiezperson` VALUES (9,9,'U0c181ee00f74141895ea46941cf0a3b1','2019-12-14','吃素嗎:是','0000-01-01 00:00:00'),(10,9,'U074a4d9f9b7d6b5f6e2d0577fd032e1d','2019-12-14','吃素嗎:否','0000-01-01 00:00:00'),(11,9,'U87e901072c956f70109d724e3e7bdf49','2019-12-15','吃素嗎:不是','0000-01-01 00:00:00'),(13,7,'Ube1a62e8d1d317aea15ca9b1095b538b','2019-12-19','車號（若自行開車，否則打無）:8982-RZ,需要素食:葷','0000-01-01 00:00:00');
/*!40000 ALTER TABLE `activitiezperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asns`
--

DROP TABLE IF EXISTS `asns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asns` (
  `asnsID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `groupID` varchar(100) NOT NULL DEFAULT '0',
  `sid` varchar(30) NOT NULL COMMENT '統一編號',
  `email` varchar(254) NOT NULL COMMENT '會務信箱',
  `colorz` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  PRIMARY KEY (`asnsID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asns`
--

LOCK TABLES `asns` WRITE;
/*!40000 ALTER TABLE `asns` DISABLE KEYS */;
INSERT INTO `asns` VALUES (1,'臺北市高職家長會會長聯合會','','','80916666','','#FFFFFF'),(2,'臺北市高中學生家長會聯合會','https://i.imgur.com/5TyzGR8.png','','','','#FFFFFF'),(3,'臺北市國中學生家長會聯合會','','','80903254','jhupat.org@gmail.com','#FFFFFF'),(4,'臺北市國小家長會聯合會','','','','','#FFFFFF'),(5,'全國高中高職家長會長協會','','','','','#FFFFFF'),(6,'臺北市高中高職家長會長協會','','','','','#FFFFFF'),(7,'PLG虛情假意之普龍貢團隊','','Cbf3465e57ac53a94273364a4fd9befc3','','','#FFFFFF'),(8,'大安高工','','','','','#FFFFFF'),(9,'松山工農','','','','','#FFFFFF'),(10,'南港高工','','','','','#FFFFFF'),(11,'松山家商','','','','','#FFFFFF'),(12,'內湖高工','','','','','#FFFFFF'),(13,'木柵高工','','','','','#FFFFFF'),(14,'士林高商','','','','','#FFFFFF'),(15,'惇敘工商','','','','','#FFFFFF'),(16,'育達商職','','','','','#FFFFFF'),(17,'稻江商職','','','','','#FFFFFF'),(18,'喬治工商','','','','','#FFFFFF'),(19,'協和祐德','','','','','#FFFFFF'),(20,'東方工商','','','','','#FFFFFF'),(21,'開南商工','','','','','#FFFFFF'),(22,'稻江護家','','','','','#FFFFFF'),(23,'華岡藝校','','','','','#FFFFFF'),(24,'開平餐飲','','','','','#FFFFFF'),(25,'金甌女中','','','','','#FFFFFF'),(26,'景文高中','','','','','#FFFFFF'),(27,'強恕高中','','','','','#FFFFFF'),(28,'幼華高中','','','','','#FFFFFF'),(29,'私立大同','','','','','#FFFFFF'),(30,'南華高中','','','','','#FFFFFF'),(31,'志仁高中','','','','','#FFFFFF'),(32,'文山特教','','','','','#FFFFFF'),(33,'啟明學校','','','','','#FFFFFF'),(34,'啟智學校','','','','','#FFFFFF'),(35,'啟聰學校','','','','','#FFFFFF'),(36,'靜修女中','','','','','#FFFFFF'),(37,'國中學生家長會聯合會－秘書處','','','','','#FFFFFF'),(38,'成德國中','','3','','','#FFFFFF'),(39,'百齡高中','','3','','','#FFFFFF'),(40,'臺北市立介壽國民中學','','3','','','#FFFFFF'),(41,'北政國中','','3','','','#FFFFFF'),(42,'衛理女中','','0','','','#FFFFFF'),(43,'臺北市立民生國中','','3','','','#FFFFFF'),(44,'新民國中','','3','','','#FFFFFF'),(45,'臺北市啟聰學校','','0','','','#FFFFFF');
/*!40000 ALTER TABLE `asns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asnsinfo`
--

DROP TABLE IF EXISTS `asnsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asnsinfo` (
  `asinfoID` int(11) NOT NULL AUTO_INCREMENT,
  `ansID` int(11) NOT NULL,
  `titlez` varchar(200) NOT NULL,
  `urlz` varchar(254) NOT NULL COMMENT '網址',
  `meno` text NOT NULL COMMENT '說明',
  PRIMARY KEY (`asinfoID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asnsinfo`
--

LOCK TABLES `asnsinfo` WRITE;
/*!40000 ALTER TABLE `asnsinfo` DISABLE KEYS */;
INSERT INTO `asnsinfo` VALUES (1,13,'捷運到木柵高工路線圖','https://i.imgur.com/npPDTzb.jpg','');
/*!40000 ALTER TABLE `asnsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asnsperson`
--

DROP TABLE IF EXISTS `asnsperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asnsperson` (
  `asnspersonID` int(11) NOT NULL AUTO_INCREMENT,
  `usrNo` int(11) NOT NULL COMMENT 'person.usrNo',
  `schoolID` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `postionsz` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)會長 1)代表',
  `positionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`asnspersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asnsperson`
--

LOCK TABLES `asnsperson` WRITE;
/*!40000 ALTER TABLE `asnsperson` DISABLE KEYS */;
INSERT INTO `asnsperson` VALUES (1,1,12,106,0,14);
/*!40000 ALTER TABLE `asnsperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assnschool`
--

DROP TABLE IF EXISTS `assnschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assnschool` (
  `asID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolID` int(11) NOT NULL,
  `assnsID` int(11) NOT NULL,
  `yearz` int(11) NOT NULL,
  `sortSerial` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assnschool`
--

LOCK TABLES `assnschool` WRITE;
/*!40000 ALTER TABLE `assnschool` DISABLE KEYS */;
INSERT INTO `assnschool` VALUES (1,8,1,2019,0),(2,9,1,2019,0),(3,10,1,2019,0),(4,11,1,2019,0),(5,12,1,2019,0),(6,13,1,2019,0),(7,14,1,2019,0),(8,15,1,2019,0),(9,16,1,2019,0),(10,17,1,2019,0),(11,18,1,2019,0),(12,19,1,2019,0),(13,20,1,2019,0),(14,21,1,2019,0),(15,22,1,2019,0),(16,23,1,2019,0),(17,24,1,2019,0),(18,25,1,2019,0),(19,26,1,2019,0),(20,27,1,2019,0),(21,28,1,2019,0),(22,29,1,2019,0),(23,30,1,2019,0),(24,31,1,2019,0),(25,32,1,2019,0),(26,33,1,2019,0),(27,34,1,2019,0),(28,35,1,2019,0),(29,36,1,2019,0);
/*!40000 ALTER TABLE `assnschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factoryz`
--

DROP TABLE IF EXISTS `factoryz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factoryz` (
  `factoryID` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '1)Truest 2)攝影  3)音響 4)證書列印',
  `price` float NOT NULL,
  `meno` text NOT NULL,
  PRIMARY KEY (`factoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factoryz`
--

LOCK TABLES `factoryz` WRITE;
/*!40000 ALTER TABLE `factoryz` DISABLE KEYS */;
INSERT INTO `factoryz` VALUES (1,'宏大專業攝影印刷公司','鵬延平','0918928225','新北市三重區仁愛街425巷89號','hongda.photo@gmail.com',2,10000,'2018-2019 教育局四學程聯合授證攝影'),(2,'威利傳播有限公司','張子濬','0934326845','臺北市文山區萬寧街22號1樓','1103@wallace.com.tw',1,25000,'2019 聯合授證廠商');
/*!40000 ALTER TABLE `factoryz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funny`
--

DROP TABLE IF EXISTS `funny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funny` (
  `funnyID` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` text NOT NULL,
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)搞笑',
  PRIMARY KEY (`funnyID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funny`
--

LOCK TABLES `funny` WRITE;
/*!40000 ALTER TABLE `funny` DISABLE KEYS */;
INSERT INTO `funny` VALUES (1,'在那裡跌倒，就在那裡躺下來',0),(2,'好想賣掉房子去環遊世界，但房東不准',0),(3,'別還怕別人怎麼看你，因為沒有人在看你',0),(4,'單身是一種選擇，只不過不是我選的',0),(5,'人若不帥，再暖都是變態',0),(6,'今年情人節一個人過嗎？沒關係，明年...就會習慣了',0),(7,'當你覺得自己窮、醜、一無是處的時候，別絕望，至少你的判斷是對的',0);
/*!40000 ALTER TABLE `funny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officialdoc`
--

DROP TABLE IF EXISTS `officialdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officialdoc` (
  `docID` int(11) NOT NULL AUTO_INCREMENT,
  `assnsID` int(11) NOT NULL DEFAULT '0',
  `isSub` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否為附件',
  `name` varchar(245) NOT NULL,
  `datez` int(11) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`docID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officialdoc`
--

LOCK TABLES `officialdoc` WRITE;
/*!40000 ALTER TABLE `officialdoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `officialdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `usrNo` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `picture` varchar(245) NOT NULL,
  `lineID` varchar(150) NOT NULL,
  `lineName` varchar(100) NOT NULL,
  `nickName` varchar(30) NOT NULL,
  `meno` text NOT NULL,
  `insertDate` date NOT NULL DEFAULT '0000-01-01',
  `qrcode` text NOT NULL,
  `notifyToken` varchar(100) NOT NULL,
  PRIMARY KEY (`usrNo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'劉智漢','0921609364','justgps@gmail.com','https://profile.line-scdn.net/0h97hT_Q_lZhhVLUldDEIZT2loaHUiA2BQLUx6fXl5P3hxSXRGOR4ueCcvPH9xGyQcaB59LSQrOH19','U0c181ee00f74141895ea46941cf0a3b1','智漢（內工32、介壽47）','漢哥','內工\n高職聯\n秘書長','2019-11-28','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6AQAAAACgl2eQAAABsklEQVR42u2ZUY7DMAhEkXKAHslX95F8ACQvM+Btkq32Y7UfHimR2zrJ+0HAAK7N369uD/AAD/A3oFtcr+6vOUeLzTHM8ci0gPh4AGbBGBZhPhcC+Aq3YSAA3tpLEZjH7FzhMmUg4s1avDroOzmgQg5R15aZn2Jyb2Cl/2l91oedgRLdcFaGXLjsk1bvDmT6w65hUABczU9mKgCULygYzJz4hiDfYnJ7IIsIfTSWmlEKpABkSvjoqMBDElHHphTAXzCNIgYGnhqmBaB2pHUDuePImnYNOQHAK9l7Zr2zSwmrpQCUD2QKG8XVa7VzxZEAsmPPGIs9dIxekwLeNdFX1NFTXQsI7zjNPNju5jzlV63eHsjRo33XdFsRKAXMbEtShJ3dO0w+OUsBYMfOYTxJTh+3kVYBqP6kZYlnyNm1RREA0jU1A7K+s9xPLcCR/rm6r9yZo0kBpcZr1f64aPX+QI601bFnD8zK0rQAHi9MDrMgWdb7j8PD3YE6dkNzYjmAsKZIAkuBWWJmvzW9MoDlKXQN5pdpUQF4hxwtzfpiakDmC82spr0KpRLw/Bv1AA/w38AXEcx9CDOLaSoAAAAASUVORK5CYII=',''),(3,'蕭毓君','0800-520520','xxxxxxxx','https://profile.line-scdn.net/0m0067c344725156a34b713f58612d56e1c0cb88a04dd3','U63f3316d012a7808150d590d99637695','Sabrina Hsiao','阿計','空白\n空白\n空白','2019-12-03','',''),(4,'陳玉蘭','0921609364','sherry@gmail.com','https://profile.line-scdn.net/0m05e91be3725180f1b52f3d049a5bd731b1ca82c08544','U074a4d9f9b7d6b5f6e2d0577fd032e1d','玉蘭（泊灝）','玉蘭','2018年6月23日5:30過世','2019-12-04','',''),(5,'程建中','0932782464','ssscheng2005@yahoo.com.tw','https://profile.line-scdn.net/0hd6VYFgKaOxlrIBTuWxBETldlNXQcDj1RE04gKxsnNixPR3QbV0UnfBkibCtDQ3RPUk8mehxzYCpE','Ubdbadee2f33d7546253110a1913d2d7a','程建中','建中','信義國中\n國中聯合會\n副秘書長','2019-12-05','',''),(7,'曾靜娟','0937310333','ifadunny@gmail.com','https://profile.line-scdn.net/0hQRk6ybAGDn1WTyW1gPBxKmoKABAhYQg1LiBJTyRPAk8vKhktY3oUHXJGWRhzLBkrPy5BGnsbWRgv','U9ba6dab540310be64b1f42402ff4a833','曾靜娟','靜娟','國中聯 秘書處\n臺北市國中學生家長會聯合會\n秘書長','2019-12-09','',''),(8,'吳稚猛','猜猜看','沒有','https://profile.line-scdn.net/0m03d3aec37251aef677fa11eab2adba0c90c8fa0c4dba','U330fe8dc57b7fc319bb7968be3fd0bb4','Vincent','囉嗦的執行長','不想說\r\n來亂的\r\n囉嗦\r\n\r\n\r\n\r\n\r\n\r\n','2019-12-09','',''),(9,'陳莉葦','0926617855','anitachen.j@gmail.com','https://profile.line-scdn.net/0hpsHtGnH3L1x1DQSAihFQC0lIITECIykUDWhgblAKdG0PaG8LTmkwagIFJTgKb29ZSG1jOVcIJW9e','Ub3f16b3fd6ab9d4c31d47b494df70239','陳莉葦Anita','莉葦','成德國中\n安恆利國際控股 \n會長','2019-12-10','',''),(10,'陳正德','0932314150','leaders.union@gmail.com','https://profile.line-scdn.net/0h3aNCpsh-bE5zOke7TuMTGU9_YiMEFGoGC1h3fQYyZXYODi9LSVwhIFRuNypaDygeSAgkIAU4ZnwM','Ubfcc1c32d1fe9b3eafbc778a2a9f6505','iDerek 正德','正德','建中老師','2019-12-10','',''),(11,'宋全娟','0932162589','tina.sung@universals.com.tw','https://profile.line-scdn.net/0m071c59a2725130d56988a176b3e34e6677489ca971b4','U742a1d73d2013d9e69a34e5516b72ae8','Tina.sung','全娟','介壽國中\n國中聯\n會長','2019-12-10','',''),(12,'李淑玲','0918068980','lucy6suelin@yahoo.com.tw ','https://profile.line-scdn.net/0hQoyRtv6qDkBEKyVKi4NxF3huAC0zBQgIPE5AIzEoA3JvHh0eLx1AJzUtUSc9TBwTeh0SIGR-B3Nh','U87e901072c956f70109d724e3e7bdf49','李淑玲','','泰北高中國中部\n國中聯合會\n監事','2019-12-10','',''),(13,'劉奇昌','0933729469','achang2.mobile@gmail.com','https://profile.line-scdn.net/0m0e4ce19872514e75e14c1903e874c6609c778f73b337','U2f41f72e0699f5e31c348e75a93f1e1b','Achang2 JackyLIU 劉奇昌','','麗山國中\n臺北市國中家長會長聯合會\n常務理事暨體育衛生委員會','2019-12-10','',''),(14,'林淑卿','0921419513','a0921419513@gmail.com','https://profile.line-scdn.net/0hB3Sn_EjhHRxuFzH9pTRiS1JSE3EZORtUFnZaeUsXQSRHIlhOUyJRfhgWESxDcghCVnFTe0seRipH','U1ddcdf1a8fa3b24dc92cd4597603af43','淑卿','','北政國中\n台北市國中學生家長會聯合會\n家長會會長','2019-12-10','',''),(15,'張妤榕','0932200466','elanchang1958@gmail.com','https://profile.line-scdn.net/0hxBZ4xIxTJ21nTQxxjUFYOlsIKQAQYyElH3k6XEVKK1seL2dvD3lvWBUYfVVCdTc6W3xsCRAfLFtK','Ue300c90bc3619b3e659f81d16333a812','妤榕','','衛理女中（國中部）\n台北市國中學生家長會聯合會\n家長會會長','2019-12-10','',''),(16,'盧永富','0910011194','luyungfu1017@gmail.com','https://profile.line-scdn.net/0hFtsvN7a7GVtODzR0wTpmDHJKFzY5IR8TNmkDPT4MR202al8Iez4EP2oPT2xkNlpfcTlXbT9cTjtr','Ud4dab9fe8ffaa50e776c985b4e610ac4','盧永富','','台北市立格致國中\n國中聯合會常務監事\n格致國中家長會 會長','2019-12-10','',''),(17,'康建斌','0910396569','Rogerkang0122@gmail.com','https://profile.line-scdn.net/0hT5HtaFIICxp1DSEi-mR0TUlIBXcCIw1SDTxHfFJdAH5fORtPTW8XegcFBy8LNB9MTzgTdAddXH9b','Ube1a62e8d1d317aea15ca9b1095b538b','建斌（Roger）','','啟明學校\n國小、國中、高中、高職\n會長','2019-12-10','',''),(18,'陳奕竹','0986871209','iris691209@yahoo.com.tw','https://profile.line-scdn.net/0hs7FlWbrHLBh7FQaCnjhTT0dQInUMOypQA3NqeFpFcywEdj8dE3Jke1cVIiwEJW5JEHU0fgocJXtR','U4a23649c91ec4601e7d2a592f093b0ab','陳奕竹','','文山特教\n特教委員會丶體育衛生委員會\n特教委員會 副召集人','2019-12-10','',''),(19,'吳靜怡','0980208511','Annwu8827@gmail.com','https://profile.line-scdn.net/0hwPy_C0B7KH9EJgW_xWBXKHhjJhIzCC43PENmHGB2dExgEWt8fEA3HmRycRw8EDwheUdjGTZydE0-','U21edeab9165678f28da71f557ac097ae','Ann Wu (正墉 亮涵）','靜怡','新民國中\n空白\n空白','2019-12-14','',''),(20,'莊孟峯','0921938177','jf27472829@hibox.hinet.net','https://profile.line-scdn.net/0hoq4-t4-qMF4JVBqJDxhPCTURPjN-ejYWcTMvbS5UaTxwY3IIZTd2OigGaGglbXYMPTt-MSxRO2si','U950414eaea1291a6d5dd2430e74f4b58','民生莊孟峯（承羲&婷瑄）','總會長','民生國中\n臺北市國中學生家長會聯合會\n總會長','2019-12-14','',''),(22,'張非錯','0924062888','jq002999jq@yahoo.com','https://profile.line-scdn.net/0hNw1sCOokEVgMCjq0KnNuDzBPHzV7JBcQdD8LPC0DR291b1RdMm1fOyhaHT0paAFaOTsNay8IRzt1','U4fd96161a0cd4db47b30524664eca4df','北聰家長會會長張非錯','非錯','台北啟聰\n台北啟聰家長會\n會長','2019-12-19','',''),(23,'余志呈','0928-250503','mikeyu927@gmail.com','https://profile.line-scdn.net/0hBccvQK1kHUxeDzdGXF9iG2JKEyEpIRsEJm5VLy9aFywhOl0fa2xbeH0MFHtxbVgcZmFRL3xcQXtz','U763c786462acef8b458fb3bc14970b42','余志呈','余校長','台北市立成德國民中學\n台北市國中家長會長聯合會\n校長','2019-12-29','',''),(24,'蔡素麗','0911386330','aa0911386330tw@gmail.com','https://profile.line-scdn.net/0m0174cbc87251527ea722d1df9de344db07ed81464d10','U3f637bc403e15d8868152eeaffc9dc70','蔡素麗','蔡會長','南門國中\n國中聯合會\n會長','2019-12-29','',''),(25,'鍾毓倫','0912058969','mdgirl1314520@gmail.com','https://profile.line-scdn.net/0h8S9n3dhXZ3wEF0yOzicYKzhSaRFzOWE0fCEsT3ITME0rd3coaHYtSHQfak0sdyIqaiF7EyQXPR56','U0f6b813d3aa25b5bd5ea40a869976d9c','鍾毓倫','毓倫','金甌女中\n未加入\n常務理事','2020-01-01','','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personassns`
--

DROP TABLE IF EXISTS `personassns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personassns` (
  `paID` int(11) NOT NULL AUTO_INCREMENT,
  `lineID` varchar(120) NOT NULL,
  `assnsID` int(11) NOT NULL,
  `positionID` int(11) NOT NULL DEFAULT '0' COMMENT '職稱',
  `yearz` smallint(6) NOT NULL DEFAULT '0',
  `approved` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personassns`
--

LOCK TABLES `personassns` WRITE;
/*!40000 ALTER TABLE `personassns` DISABLE KEYS */;
INSERT INTO `personassns` VALUES (1,'U0c181ee00f74141895ea46941cf0a3b1',1,8,2019,1),(2,'U0c181ee00f74141895ea46941cf0a3b1',2,11,2019,1),(3,'U0c181ee00f74141895ea46941cf0a3b1',3,11,2019,1),(5,'U63f3316d012a7808150d590d99637695',3,9,2019,1),(7,'Ubdbadee2f33d7546253110a1913d2d7a',3,9,2019,1),(9,'U9ba6dab540310be64b1f42402ff4a833',3,8,2019,1),(10,'U9ba6dab540310be64b1f42402ff4a833',3,8,2018,1),(11,'U330fe8dc57b7fc319bb7968be3fd0bb4',3,10,2019,1),(12,'U330fe8dc57b7fc319bb7968be3fd0bb4',2,10,2019,1),(14,'U87e901072c956f70109d724e3e7bdf49',3,7,2019,0),(15,'U2f41f72e0699f5e31c348e75a93f1e1b',3,4,2019,0),(16,'Ubfcc1c32d1fe9b3eafbc778a2a9f6505',3,6,2019,1),(17,'Ub3f16b3fd6ab9d4c31d47b494df70239',3,4,2019,1),(18,'Ub3f16b3fd6ab9d4c31d47b494df70239',38,14,2019,1),(19,'Ubfcc1c32d1fe9b3eafbc778a2a9f6505',39,14,2019,1),(20,'U742a1d73d2013d9e69a34e5516b72ae8',3,2,2019,1),(21,'U742a1d73d2013d9e69a34e5516b72ae8',40,15,2019,1),(22,'U4a23649c91ec4601e7d2a592f093b0ab',3,14,2019,0),(23,'Ud4dab9fe8ffaa50e776c985b4e610ac4',3,5,2019,0),(24,'Ube1a62e8d1d317aea15ca9b1095b538b',3,7,2019,0),(25,'U330fe8dc57b7fc319bb7968be3fd0bb4',3,10,2018,0),(26,'U63f3316d012a7808150d590d99637695',3,9,2018,0),(27,'U9ba6dab540310be64b1f42402ff4a833',3,8,2017,0),(28,'U742a1d73d2013d9e69a34e5516b72ae8',40,14,2018,0),(29,'U1ddcdf1a8fa3b24dc92cd4597603af43',41,14,2019,0),(30,'Ue300c90bc3619b3e659f81d16333a812',42,14,2019,0),(31,'U950414eaea1291a6d5dd2430e74f4b58',3,1,2019,0),(32,'U950414eaea1291a6d5dd2430e74f4b58',43,14,2018,0),(33,'U21edeab9165678f28da71f557ac097ae',3,9,2019,0),(34,'U21edeab9165678f28da71f557ac097ae',44,14,2018,0),(35,'U074a4d9f9b7d6b5f6e2d0577fd032e1d',3,0,2019,0),(36,'U4fd96161a0cd4db47b30524664eca4df',3,0,2019,0),(37,'U4fd96161a0cd4db47b30524664eca4df',1,0,2019,0),(38,'U0f6b813d3aa25b5bd5ea40a869976d9c',1,0,2020,0);
/*!40000 ALTER TABLE `personassns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionz`
--

DROP TABLE IF EXISTS `positionz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positionz` (
  `positionID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `serialz` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionz`
--

LOCK TABLES `positionz` WRITE;
/*!40000 ALTER TABLE `positionz` DISABLE KEYS */;
INSERT INTO `positionz` VALUES (1,'總會長',0),(2,'副總會長',1),(3,'監事長',2),(4,'常務理事',3),(5,'常務監事',4),(6,'理事',5),(7,'監事',6),(8,'秘書長',7),(9,'副秘書長',8),(10,'執行長',9),(11,'資訊長',10),(12,'財務長',11),(13,'會計',12),(14,'家長會會長',13),(15,'聯合會代表',14);
/*!40000 ALTER TABLE `positionz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordz`
--

DROP TABLE IF EXISTS `recordz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordz` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT '檔案網址',
  `assns` int(11) NOT NULL DEFAULT '0' COMMENT '協會代碼',
  `activiteID` int(11) NOT NULL DEFAULT '0' COMMENT '活動代碼',
  `name` varchar(254) NOT NULL COMMENT '檔案名稱',
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordz`
--

LOCK TABLES `recordz` WRITE;
/*!40000 ALTER TABLE `recordz` DISABLE KEYS */;
INSERT INTO `recordz` VALUES (1,'https://drive.google.com/file/d/1ILxMb8hfvlGBy0z9L45ngS0qVy9mkvyH/view?usp=sharing',3,0,'18屆第一次會員代表大會會議紀錄');
/*!40000 ALTER TABLE `recordz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `schoolID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sortSerial` int(11) NOT NULL DEFAULT '0',
  `cityID` int(11) NOT NULL DEFAULT '1',
  `imgUrl` varchar(254) NOT NULL COMMENT '學校logo',
  PRIMARY KEY (`schoolID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'大安高工',1,1,''),(2,'松山工農',2,1,''),(3,'南港高工',3,1,''),(4,'松山家商',4,1,''),(5,'內湖高工',5,1,''),(6,'木柵高工',6,1,''),(7,'士林高商',7,1,''),(8,'惇敘工商',7,1,''),(9,'育達商職',9,1,''),(10,'稻江商職',10,1,''),(11,'喬治工商',11,1,''),(12,'協和祐德',12,1,''),(13,'東方工商',13,1,''),(14,'開南商工',14,1,''),(15,'稻江護家',15,1,''),(16,'華岡藝校',16,1,''),(17,'開平餐飲',17,1,''),(18,'金甌女中',18,1,''),(19,'景文高中',19,1,''),(20,'泰北高中',20,1,''),(21,'滬江高中',21,1,''),(22,'強恕高中',22,1,''),(23,'幼華高中',23,1,''),(24,'私立大同',24,1,''),(25,'南華高中',26,1,''),(26,'志仁高中',26,1,''),(27,'文山特教',28,1,''),(28,'啟明學校',29,1,''),(29,'啟智學校',30,1,''),(30,'啟聰學校',31,1,''),(31,'靜修女中',32,1,''),(32,'亞東技術學院',999,2,'https://i.imgur.com/ZrbAZp4.jpg');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-06  8:43:49
