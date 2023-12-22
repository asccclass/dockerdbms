-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: ascare
-- ------------------------------------------------------
-- Server version	5.7.44

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
  `cmtID` int(11) NOT NULL DEFAULT '0' COMMENT '委員會代碼',
  PRIMARY KEY (`actID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiez`
--

LOCK TABLES `activitiez` WRITE;
/*!40000 ALTER TABLE `activitiez` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiezperson`
--

LOCK TABLES `activitiezperson` WRITE;
/*!40000 ALTER TABLE `activitiezperson` DISABLE KEYS */;
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
  `groupID` varchar(100) NOT NULL DEFAULT '0' COMMENT '單位代碼instCode',
  `sid` varchar(30) NOT NULL COMMENT '統一編號/ssoID',
  `email` varchar(254) NOT NULL COMMENT '會務信箱',
  `colorz` varchar(20) NOT NULL DEFAULT '#FFFFFF' COMMENT '電話',
  PRIMARY KEY (`asnsID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asns`
--

LOCK TABLES `asns` WRITE;
/*!40000 ALTER TABLE `asns` DISABLE KEYS */;
INSERT INTO `asns` VALUES (1,'劉O漢','劉智漢','24','119511','andyliu@sinica.edu.tw','0921609364'),(2,'李O伶','真實姓名','0','ssoID','','0912345678'),(3,'錢O安','真實姓名','0','ssoID','','0912321243'),(4,'趙O全','真實姓名','0','ssoID','','091256486'),(5,'趙O千','真實姓名','0','ssoID','','091256486'),(6,'陳O長','真實姓名','0','ssoID','','091256486'),(7,'白O編','真實姓名','0','ssoID','','091256486'),(8,'人O室','真實姓名','0','ssoID','','091256486'),(9,'李O蘭','真實姓名','0','ssoID','','123456789');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committee`
--

LOCK TABLES `committee` WRITE;
/*!40000 ALTER TABLE `committee` DISABLE KEYS */;
INSERT INTO `committee` VALUES (1,'教育委員會',1,1,0,'',''),(2,'技職委員會',1,2,0,'',''),(3,'公關委員會',1,3,0,'',''),(4,'特教委員會',1,4,0,'',''),(5,'法政委員會',1,5,0,'',''),(6,'資訊委員會',1,6,0,'','');
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
-- Table structure for table `logz`
--

DROP TABLE IF EXISTS `logz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logz` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `asnsID` int(11) NOT NULL COMMENT '觀察對象ID',
  `usrNo` varchar(100) NOT NULL COMMENT '回報者LINEID',
  `temperature` varchar(10) NOT NULL COMMENT '體溫',
  `symptom` varchar(254) NOT NULL COMMENT '症狀',
  `location` varchar(50) NOT NULL COMMENT '觀察者地點',
  `menoz` text NOT NULL COMMENT '其他觀察事項',
  `insDate` datetime NOT NULL COMMENT '系統紀錄資料輸入時間',
  `replyDate` datetime NOT NULL COMMENT '使用者輸入回報時間',
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logz`
--

LOCK TABLES `logz` WRITE;
/*!40000 ALTER TABLE `logz` DISABLE KEYS */;
INSERT INTO `logz` VALUES (5,3,'3','37','無症狀','住家','Qqqq','2020-03-23 07:31:40','2020-03-23 07:31:40'),(8,5,'5','36，4','無症狀','住家','無','2020-03-25 00:08:02','2020-03-25 00:08:02'),(9,5,'5','36.4','無症狀','住家','食欲很好，精神不錯','2020-03-25 00:19:21','2020-03-25 00:19:21'),(10,5,'5','36.4','無症狀','住家','無','2020-03-25 00:21:28','2020-03-25 00:21:28'),(11,2,'1','37.5','咳嗽 Cough、四肢無力 four limbs weakness','住家','下午有回實驗室','2020-03-25 03:23:07','2020-03-25 03:23:07'),(12,2,'1','37.2','無症狀','住家','無','2020-03-27 08:53:55','2020-03-27 08:53:55'),(16,2,'1','35.1','無症狀','住家','無','2020-03-30 02:54:51','2020-03-30 02:54:51'),(17,1,'1','35.1','無症狀','住家','無','2020-03-31 00:07:34','2020-03-31 00:07:34'),(18,5,'5','36.7','頭痛 headache','住家','無','2020-03-31 02:09:32','2020-03-31 02:09:32'),(19,5,'5','36.6','無症狀','住家','無','2020-03-31 02:10:47','2020-03-31 02:10:47'),(20,5,'5','36.5','頭痛 headache','住家','無','2020-03-31 02:12:07','2020-03-31 02:12:07'),(21,1,'1','35.1','頭暈 dizziness','旅館','無','2020-03-31 02:13:35','2020-03-31 02:13:35'),(22,5,'5','36.4','無症狀','住家','無','2020-03-31 02:14:30','2020-03-31 02:14:30'),(24,5,'5','36.1','無症狀','住家','無','2020-03-31 05:22:00','2020-03-31 05:22:00'),(25,1,'1','35.2','無症狀','宿舍','無','2020-03-31 07:40:43','2020-03-31 07:40:43'),(26,1,'1','35.2','無症狀','其他（請在下方備註欄輸入）','辦公室量測','2020-04-01 08:19:18','2020-04-01 08:19:18'),(27,1,'1','35.1','無症狀','住家','無','2020-04-03 11:36:36','2020-04-03 11:36:36'),(28,1,'1','35.2','無症狀','住家','無','2020-04-04 18:55:34','2020-04-04 18:55:34'),(29,1,'1','34.6','無症狀','住家','無','2020-04-07 07:48:44','2020-04-07 07:48:44');
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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `usrNo` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `picture` varchar(245) NOT NULL,
  `lineID` varchar(150) NOT NULL,
  `lineName` varchar(100) NOT NULL,
  `nickName` varchar(60) NOT NULL,
  `meno` text NOT NULL,
  `insertDate` date NOT NULL DEFAULT '0000-01-01',
  `qrcode` text NOT NULL COMMENT '單位',
  `notifyToken` varchar(100) NOT NULL,
  PRIMARY KEY (`usrNo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'劉智漢','0921609364','andy@sinica.edu.tw','https://profile.line-scdn.net/0h97hT_Q_lZhhVLUldDEIZT2loaHUiA2BQLUx6fXl5P3hxSXRGOR4ueCcvPH9xGyQcaB59LSQrOH19','U9c53403403b2f8d6c194f3a24c2a5355','智漢（內工32、介壽47）','richmenu-3caa65c5edd4916df12453844d3e96d6','ITS\nTaipei','2020-03-21','資訊服務處','andyliu;119511'),(2,'陳伶志','0933278892','cclljj@iis.sinica.edu.tw','https://profile.line-scdn.net/0h_tR84SqmAFtvQS1k0mt_DFMEDjYYbwYTFyIYPk0WVz8QJRUEUS8bP09CW2pDeEcEAXVMaE1BXjgW','U8df43d2720de6272c523d24b954b39bd','Ling-Jyh Chen','richmenu-d0edb44b75e2903dabe47e96e18174d9','資訊服務處\n台北市','2020-03-23','資訊服務處','cclljj;101744'),(3,'章美蘭','0922500328','meiko@gate.sinica.edu.tw','https://profile.line-scdn.net/0hIWgJV5gAFnhaMzzRnLBpL2Z2GBUtHRAwIlUJFy8xG0lyBlMmYF1RTnoyHxglUVF7NFQOTHdjThoj','U82451b4133c1925848f0233e7fc0a644','@美蘭oppo','richmenu-5d9d397bec41a3ead25245105e35fd40','資服處\n新北市','2020-03-23','資服處','U8245'),(5,'章美蘭','0922500328','meiko@gate.sinica.edu.tw','https://profile.line-scdn.net/0m0e55124f7251895d8ddd8e5b2d2a16b4d869b4a32378','Uce46d2a8b28d51f5ea558483b1dcd574','章美蘭 iphone','richmenu-d0edb44b75e2903dabe47e96e18174d9','','2020-03-24','資訊服務處','meiko;5016408'),(6,'陳昶宏','Hi','/bindsso ','https://profile.line-scdn.net/0m027dd469725173770adf50887a3ffad7fd5e0329a58b','U672e9b5720462461e659bb28d217dbb9','陳昶宏','','秘書處\nTaipei','2020-03-25','秘書處','changhung;5020353'),(7,'莊馨然','0939195768','hsin0210@gate.sinica.edu.tw','https://profile.line-scdn.net/0h0aXKkR8Xb05lMkBihLUQGVl3YSMSHGkGHVUkKEhlNy1PUCwZWlByKUU7NS0fVyAcXgMmKkQyZXYY','U16bb13b2b85bfa7fcbc8fe4f2c2085c4','Helen.Chuang（莊小然）','','人事室\n台北市','2020-03-25','人事室','hsin0210;106118'),(8,'1245','7679','Gah','https://profile.line-scdn.net/0m002323617251a5c288406b4e99896d56332d0bd8c40e','U41f90ce86badcad5c47927f7fce417b8','johnlin','richmenu-5d9d397bec41a3ead25245105e35fd40','Go\nIt','2020-03-25','Go','U41f9'),(9,'阮宜婷','0921616154','fatina1016@gate.sinica.edu.tw','https://profile.line-scdn.net/0m02f3a1d57251e810e78e61f39ce9c78d295b9692b8c3','U91edb6da6d8029009f48454125c9ad7c','阮宜婷','richmenu-d0edb44b75e2903dabe47e96e18174d9','人事室\n台北市','2020-03-25','人事室','fatina1016;5019802'),(10,'黃升滿','0918888740','R920893@gate.sinica.edu.tw','https://profile.line-scdn.net/0m0268e57072513bc3f353dc8359cdcd4ab4ea7cb2bf7a','Ud2940fe01057dcb9447966c3b04002ba','黃滿滿','richmenu-d0edb44b75e2903dabe47e96e18174d9',' 總務處\nTaipei','2020-03-25',' 總務處','r920893;5015890'),(11,'1234','0952377181','yhc9887@gate.sinica.edu.tw','https://profile.line-scdn.net/0huXJEJsrgKnd3PAAT4HhVIEt5JBoAEiw_DwhkEgc7fUZTXz0mTF0wEgdpJ0ddCm4nTlNlEFU9d0UO','Ub252bb5d5876b0abfaf0db3e48117f84','阿翔( 瀞元,庭禕爸比)','','總務處\n台北市','2020-03-25','總務處','yhc9887;5007347'),(12,'白乃文','0926845136','nwpai@gate.sinica.sinica.edu.tw','https://profile.line-scdn.net/0m0531b7da72511ccb14e4bddfeed54c04530066e5fe15','Ue2adce92be4e53c6d8c4fa930a441af2','白乃文','richmenu-5d9d397bec41a3ead25245105e35fd40','車庫\n北京','2020-03-25','車庫','Ue2ad'),(13,'蔡婉瑛','0921828147','wanying@gate.sinica.edu.tw','https://profile.line-scdn.net/0m07939f7872511e457615d1681f8496f697b1715d042f','Uf3b74c585df36dd71265f9fa6e704674','Andrea','','院本部總務處\n台北市','2020-03-25','院本部總務處','wanying;119123'),(16,'邱志昇','00','sinica.edu.tw','https://profile.line-scdn.net/0m05e512f77251e27ae92bfb8bf6a6400cf57e31d8f86a','U8a65c82acf2fe04c249436fd6e1860e4','邱志昇','','','2020-04-01','總務處','jsch9995;5015652');
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
  `assnsID` int(11) NOT NULL COMMENT '個案代碼',
  `positionID` int(11) NOT NULL DEFAULT '0' COMMENT '職稱',
  `yearz` smallint(6) NOT NULL DEFAULT '0',
  `approved` smallint(6) NOT NULL DEFAULT '0',
  `generation` int(11) NOT NULL DEFAULT '0' COMMENT '第幾屆',
  `serialz` smallint(6) NOT NULL DEFAULT '0' COMMENT '得票數',
  `stDate` datetime NOT NULL DEFAULT '0001-01-01 00:00:00' COMMENT '開始時間',
  `endDate` datetime NOT NULL DEFAULT '0001-01-01 00:00:00' COMMENT '結束時間',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personassns`
--

LOCK TABLES `personassns` WRITE;
/*!40000 ALTER TABLE `personassns` DISABLE KEYS */;
INSERT INTO `personassns` VALUES (1,'U9c53403403b2f8d6c194f3a24c2a5355',1,0,2020,1,0,1,'2020-03-22 00:00:00','2020-05-01 00:00:00'),(2,'U9c53403403b2f8d6c194f3a24c2a5355',2,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(3,'U82451b4133c1925848f0233e7fc0a644',3,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(4,'U82451b4133c1925848f0233e7fc0a644',4,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(5,'Uce46d2a8b28d51f5ea558483b1dcd574',5,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(6,'U8df43d2720de6272c523d24b954b39bd',6,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(7,'Ue2adce92be4e53c6d8c4fa930a441af2',7,0,2020,1,0,1,'2020-03-21 00:00:00','2020-04-01 00:00:00'),(8,'人事室',8,0,2020,1,0,1,'2020-03-24 00:00:00','2020-04-25 00:00:00'),(9,'Uce46d2a8b28d51f5ea558483b1dcd574',9,0,2020,1,0,1,'2020-03-10 00:00:00','2020-03-30 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionz`
--

LOCK TABLES `positionz` WRITE;
/*!40000 ALTER TABLE `positionz` DISABLE KEYS */;
INSERT INTO `positionz` VALUES (1,'總會長',0),(2,'副總會長',1),(3,'監事長',2),(4,'常務理事',3),(5,'常務監事',4),(6,'理事',5),(7,'監事',6),(8,'秘書長',7),(9,'副秘書長',8),(10,'執行長',9),(11,'資訊長',10),(12,'財務長',11),(13,'會計',12),(14,'家長會會長',13),(15,'聯合會代表',14),(16,'校長',0),(17,'總召集人',1),(18,'副召集人',2);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23  6:02:54
