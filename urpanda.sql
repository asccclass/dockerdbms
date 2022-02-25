mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: urpanda
-- ------------------------------------------------------
-- Server version	5.7.34

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
  `ID` int(11) NOT NULL DEFAULT '0' COMMENT '餐廳代碼',
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)學校 1)附例湯',
  `actType` smallint(6) NOT NULL DEFAULT '0' COMMENT '第幾屆',
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `stDate` date NOT NULL DEFAULT '0000-01-01',
  `stTime` varchar(6) NOT NULL COMMENT '格式：18:00',
  `edDate` date NOT NULL DEFAULT '0000-01-01',
  `edTime` varchar(6) NOT NULL COMMENT '格式 18:30',
  `pos` varchar(254) NOT NULL COMMENT '地點',
  `picture` varchar(120) NOT NULL COMMENT '活動圖片',
  `url` varchar(254) NOT NULL,
  `gsUrlID` varchar(120) NOT NULL COMMENT '圖檔sheet ID',
  `extradata` text NOT NULL COMMENT '活動結束後可放置照片網址',
  `isClosed` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否結束報名',
  `admission` smallint(6) NOT NULL DEFAULT '0' COMMENT '憑門票入場 Admission by ticket',
  `cmtID` int(11) NOT NULL DEFAULT '0' COMMENT '產品價格',
  PRIMARY KEY (`actID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiez`
--

LOCK TABLES `activitiez` WRITE;
/*!40000 ALTER TABLE `activitiez` DISABLE KEYS */;
INSERT INTO `activitiez` VALUES (1,3,0,0,'招牌泰式炒粿條（豬肉）','附例湯','2020-03-01','10:00','2020-05-01','21:30','','https://i.imgur.com/yP571AH.jpg','https://liff.line.me/1653968805-KQypaW2x/uorder/showproducts.html?actID=1','','',0,0,200),(2,2,0,0,'府城蝦卷飯','府城蝦卷飯','2020-03-01','10:00','2020-05-01','21:30','','https://i.imgur.com/VYuP8cM.jpg','https://liff.line.me/1653968805-KQypaW2x/uorder/showproducts.html?actID=2','','',0,0,160),(3,3,0,0,'招牌泰式炒粿條（蝦仁）','附例湯','2020-03-01','10:00','2020-05-01','21:30','','https://i.imgur.com/yP571AH.jpg','https://liff.line.me/1653968805-KQypaW2x/uorder/showproducts.html?actID=3','https://liff.line.me/1653968805-KQypaW2x/uorder/showproducts.html/#!/product/3','',0,0,200);
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
  `orderNo` varchar(50) NOT NULL DEFAULT '0' COMMENT '訂單編號',
  `actID` int(11) NOT NULL COMMENT '餐廳代碼',
  `userID` varchar(120) NOT NULL COMMENT '訂購者lineid',
  `insDate` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '訂單時間',
  `meno` text NOT NULL,
  `totalprice` int(11) NOT NULL DEFAULT '0' COMMENT '訂單總價',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '訂單處理狀態',
  `arrived` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '餐廳接單時間',
  PRIMARY KEY (`apID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiezperson`
--

LOCK TABLES `activitiezperson` WRITE;
/*!40000 ALTER TABLE `activitiezperson` DISABLE KEYS */;
INSERT INTO `activitiezperson` VALUES (2,'fe174c00-920311ea-140c0242-ac110006',3,'Ufafd5db8c0424f36e09eddf2d379f064','2020-05-09 14:47:23','',0,0,'0000-01-01 00:00:00'),(3,'dc1fb2c4-933311ea-346d0242-ac110006',3,'Ud2e05de2ce72f2b0cd386512c6b8b22e','2020-05-11 03:02:33','',0,0,'0000-01-01 00:00:00');
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
  `colorz` varchar(254) NOT NULL DEFAULT '臺北市' COMMENT '地址',
  PRIMARY KEY (`asnsID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asns`
--

LOCK TABLES `asns` WRITE;
/*!40000 ALTER TABLE `asns` DISABLE KEYS */;
INSERT INTO `asns` VALUES (1,'安妮莎泰式料理','https://i.imgur.com/OfEvfP4.png','0','0921609364','11:00～21:00','新光三越A8'),(2,'欣京九','https://i.imgur.com/6L7RgvU.png','0','0921609364','11:00～21:00','新光三越A8'),(3,'泰鑫泰式料理','https://i.imgur.com/MxwJq35.png','0','0921609364','11:00～21:00','GLORIA OUTLETS 華泰名品城');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asnsinfo`
--

LOCK TABLES `asnsinfo` WRITE;
/*!40000 ALTER TABLE `asnsinfo` DISABLE KEYS */;
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
  `usrNo` varchar(60) NOT NULL COMMENT 'lineID',
  `schoolID` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `postionsz` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)會長 1)代表',
  `positionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`asnspersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asnsperson`
--

LOCK TABLES `asnsperson` WRITE;
/*!40000 ALTER TABLE `asnsperson` DISABLE KEYS */;
/*!40000 ALTER TABLE `asnsperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asnssheet`
--

DROP TABLE IF EXISTS `asnssheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asnssheet` (
  `asID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `asnsID` int(11) NOT NULL,
  `sheetID` varchar(100) NOT NULL,
  `sheetName` varchar(100) NOT NULL,
  `programUrl` varchar(254) NOT NULL,
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asnssheet`
--

LOCK TABLES `asnssheet` WRITE;
/*!40000 ALTER TABLE `asnssheet` DISABLE KEYS */;
INSERT INTO `asnssheet` VALUES (1,'storeinfo',1,'1wHbbuInHJLk2hmOnYux6e7FciAU44RV0Aj-cwilSuIs','泰鑫','AKfycbztrDK6CSGc7Zg5CsItG98oHLcn4pecL9xlNNOdphmJW1L7T8k');
/*!40000 ALTER TABLE `asnssheet` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assnschool`
--

LOCK TABLES `assnschool` WRITE;
/*!40000 ALTER TABLE `assnschool` DISABLE KEYS */;
/*!40000 ALTER TABLE `assnschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committee`
--

DROP TABLE IF EXISTS `committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `committee` (
  `cmitID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '委員會名稱',
  `asnsID` int(11) NOT NULL DEFAULT '0',
  `serialz` int(11) NOT NULL,
  `isAlive` smallint(6) NOT NULL DEFAULT '0' COMMENT '第幾屆廢止',
  `meno` text NOT NULL,
  `imgurl` varchar(200) NOT NULL COMMENT '圖檔網址',
  PRIMARY KEY (`cmitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committee`
--

LOCK TABLES `committee` WRITE;
/*!40000 ALTER TABLE `committee` DISABLE KEYS */;
/*!40000 ALTER TABLE `committee` ENABLE KEYS */;
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
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)搞笑 1)佳句',
  `eng` text NOT NULL,
  `datez` date NOT NULL DEFAULT '0000-01-01',
  PRIMARY KEY (`funnyID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funny`
--

LOCK TABLES `funny` WRITE;
/*!40000 ALTER TABLE `funny` DISABLE KEYS */;
INSERT INTO `funny` VALUES (1,'在那裡跌倒，就在那裡躺下來',0,'','0000-01-01'),(2,'好想賣掉房子去環遊世界，但房東不准',0,'','0000-01-01'),(3,'別還怕別人怎麼看你，因為沒有人在看你',0,'','0000-01-01'),(4,'單身是一種選擇，只不過不是我選的',0,'','0000-01-01'),(5,'人若不帥，再暖都是變態',0,'','0000-01-01'),(6,'今年情人節一個人過嗎？沒關係，明年...就會習慣了',0,'','0000-01-01'),(7,'當你覺得自己窮、醜、一無是處的時候，別絕望，至少你的判斷是對的',0,'','0000-01-01'),(8,'當我們感到孤單時，想要的或許不是有人陪，而是希望有人懂。',1,'What we want when we feel lonely, perhaps it\'s not someone to be with, but someone who understands.','0000-01-01'),(9,'下定決心的人用生繡的扳手，可以比懶惰的人用機械房裡所有工具完成更多的事。',1,'','0000-01-01');
/*!40000 ALTER TABLE `funny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `locationID` int(11) NOT NULL AUTO_INCREMENT,
  `HWID` varchar(30) NOT NULL COMMENT '硬體ID',
  `position` varchar(50) NOT NULL COMMENT '地點',
  `alias` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'013cb769d4','福德街住家','家裡');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logz`
--

DROP TABLE IF EXISTS `logz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logz` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL DEFAULT '0' COMMENT '訂單編號',
  `lineID` varchar(50) NOT NULL COMMENT '執行動作人員ID',
  `action` int(11) NOT NULL DEFAULT '0' COMMENT '狀態',
  `message` varchar(255) NOT NULL DEFAULT '0' COMMENT '資訊',
  `insTime` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '動作時間',
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logz`
--

LOCK TABLES `logz` WRITE;
/*!40000 ALTER TABLE `logz` DISABLE KEYS */;
INSERT INTO `logz` VALUES (1,2,'Ufafd5db8c0424f36e09eddf2d379f064',1,'使用者送出訂單','2020-05-14 14:34:33'),(2,3,'Ud2e05de2ce72f2b0cd386512c6b8b22e',1,'使用者送出訂單','2020-05-15 01:34:19');
/*!40000 ALTER TABLE `logz` ENABLE KEYS */;
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
  `cmitID` int(11) NOT NULL DEFAULT '0',
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
-- Table structure for table `orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderlist` (
  `listID` int(11) NOT NULL AUTO_INCREMENT,
  `apID` int(11) NOT NULL COMMENT '訂單編號',
  `productID` int(11) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL DEFAULT '0' COMMENT '商品名稱',
  `isMain` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否為副餐',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '金額',
  `cnt` int(11) NOT NULL DEFAULT '0' COMMENT '數量',
  `meno` text NOT NULL COMMENT '備註',
  `insTime` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '新增時間',
  PRIMARY KEY (`listID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlist`
--

LOCK TABLES `orderlist` WRITE;
/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` VALUES (3,2,3,'招牌泰式炒粿條（蝦仁）',0,200,1,'','2020-05-09 14:47:23'),(4,3,3,'招牌泰式炒粿條（蝦仁）',0,200,1,'','2020-05-11 03:02:33');
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;
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
  `location` varchar(20) DEFAULT '0' COMMENT '地點',
  PRIMARY KEY (`usrNo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (3,'劉智漢','0921609364','justgps@gmail.com','https://profile.line-scdn.net/0h97hT_Q_lZhhVLUldDEIZT2loaHUiA2BQLUx6fXl5P3hxSXRGOR4ueCcvPH9xGyQcaB59LSQrOH19','Ufafd5db8c0424f36e09eddf2d379f064','智漢（內工32、介壽47）','','','2020-04-04','','','1'),(4,'小三','0912345678','justgps@gmail.com','https://profile.line-scdn.net/0hKKk3PnXEFGRWSjgWBzVrM2oPGgkhZBIsLilZB3QaQwZzKlAzaS1dAnNNGVYpKlQzOXwMVnMfTgQu','Ud2e05de2ce72f2b0cd386512c6b8b22e','智漢-私人','','\n','2020-05-04','','','0');
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
  `positionID` varchar(30) NOT NULL DEFAULT '0' COMMENT '職稱',
  `yearz` smallint(6) NOT NULL DEFAULT '0',
  `approved` smallint(6) NOT NULL DEFAULT '0',
  `generation` int(11) NOT NULL DEFAULT '0' COMMENT '第幾屆',
  `serialz` smallint(6) NOT NULL DEFAULT '0' COMMENT '得票數',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personassns`
--

LOCK TABLES `personassns` WRITE;
/*!40000 ALTER TABLE `personassns` DISABLE KEYS */;
INSERT INTO `personassns` VALUES (1,'Ufafd5db8c0424f36e09eddf2d379f064',3,'櫃台接單人員',0,0,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionz`
--

LOCK TABLES `positionz` WRITE;
/*!40000 ALTER TABLE `positionz` DISABLE KEYS */;
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
  `assnsID` int(11) NOT NULL DEFAULT '0' COMMENT '協會代碼',
  `cmitID` int(11) NOT NULL DEFAULT '0',
  `activiteID` int(11) NOT NULL DEFAULT '0' COMMENT '活動代碼',
  `generation` int(11) NOT NULL DEFAULT '0' COMMENT '第n屆',
  `name` varchar(254) NOT NULL COMMENT '檔案名稱',
  `datez` date NOT NULL DEFAULT '0000-01-01',
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordz`
--

LOCK TABLES `recordz` WRITE;
/*!40000 ALTER TABLE `recordz` DISABLE KEYS */;
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
  `address` varchar(254) NOT NULL,
  `isPrivate` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)公立 1)私立',
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)普通型高級中等學校 1)技術型高級中等學校 2)綜合型高級中等學校 3)特殊教育學校 4)國際學校 5)大學',
  `menoz` text NOT NULL,
  PRIMARY KEY (`schoolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sender`
--

DROP TABLE IF EXISTS `sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sender` (
  `senderID` int(11) NOT NULL AUTO_INCREMENT,
  `senderName` varchar(30) NOT NULL,
  `senderImage` varchar(120) NOT NULL,
  `meno` text NOT NULL,
  PRIMARY KEY (`senderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender`
--

LOCK TABLES `sender` WRITE;
/*!40000 ALTER TABLE `sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `sender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-25  0:28:06
