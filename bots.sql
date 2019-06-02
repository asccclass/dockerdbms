-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: bots
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Current Database: `bots`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bots` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bots`;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `infoID` int(11) NOT NULL AUTO_INCREMENT,
  `infoName` varchar(50) NOT NULL,
  `infos` text NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`infoID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'weather','[{\"Time\":\"23:00\",\"Tempature\":24.82,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":24.98,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"05:00\",\"Tempature\":24.66,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"08:00\",\"Tempature\":28.406,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04d\"},{\"Time\":\"11:00\",\"Tempature\":32.799,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"14:00\",\"Tempature\":33.846,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"17:00\",\"Tempature\":31.811,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02d\"},{\"Time\":\"20:00\",\"Tempature\":28.477,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"23:00\",\"Tempature\":27.306,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":26.377,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"05:00\",\"Tempature\":25.631,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"08:00\",\"Tempature\":28.897,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"11:00\",\"Tempature\":33.011,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03d\"},{\"Time\":\"14:00\",\"Tempature\":34.431,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02d\"},{\"Time\":\"17:00\",\"Tempature\":32.044,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"20:00\",\"Tempature\":28.189,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"23:00\",\"Tempature\":27.35,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":26.125,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"05:00\",\"Tempature\":25.648,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"08:00\",\"Tempature\":28.35,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"11:00\",\"Tempature\":32.375,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"14:00\",\"Tempature\":33.05,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"17:00\",\"Tempature\":30.165,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"20:00\",\"Tempature\":26.35,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"23:00\",\"Tempature\":26.17,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":24.598,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"05:00\",\"Tempature\":24.025,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02n\"},{\"Time\":\"08:00\",\"Tempature\":26.933,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02d\"},{\"Time\":\"11:00\",\"Tempature\":30.35,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04d\"},{\"Time\":\"14:00\",\"Tempature\":29.723,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04d\"},{\"Time\":\"17:00\",\"Tempature\":27.223,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"20:00\",\"Tempature\":25.45,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"23:00\",\"Tempature\":24.75,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":24.47,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04n\"},{\"Time\":\"05:00\",\"Tempature\":23.857,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"},{\"Time\":\"08:00\",\"Tempature\":25.711,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"11:00\",\"Tempature\":28.388,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"14:00\",\"Tempature\":27.958,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"17:00\",\"Tempature\":26.891,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04d\"},{\"Time\":\"20:00\",\"Tempature\":24.95,\"Status\":\"Clouds\",\"Description\":\"overcast clouds\",\"Icon\":\"04n\"}]','2019-04-22 20:01:59');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replys`
--

DROP TABLE IF EXISTS `replys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replys` (
  `replyID` int(11) NOT NULL AUTO_INCREMENT,
  `channelID` varchar(100) NOT NULL DEFAULT '0',
  `roomID` varchar(100) NOT NULL DEFAULT '0',
  `personID` varchar(100) NOT NULL DEFAULT '0',
  `message` varchar(254) DEFAULT NULL,
  `replys` text,
  PRIMARY KEY (`replyID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replys`
--

LOCK TABLES `replys` WRITE;
/*!40000 ALTER TABLE `replys` DISABLE KEYS */;
INSERT INTO `replys` VALUES (1,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰是大笨蛋','你說呢？'),(2,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰最愛吃','當然是魏諭蓁'),(3,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰是大美女','當然是含燁啦'),(4,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰最難搞','妳說呢？'),(5,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','卡咪狗','學說話'),(6,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰有candy','crash啦'),(7,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰是豬','還用說嗎！看誰屬豬'),(8,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','阿玉的店在哪','新北市新莊區福營路385-1號1樓'),(9,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','etag 資訊','和運租車統編： 70364778 電話：0921609364'),(10,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','花旗信用卡結帳日','每月11日'),(11,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','妳兒子是誰','泊灝'),(12,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','妳老公是誰','智漢'),(13,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','中研院車輛通行費','一年2500'),(14,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','老公的離職儲金自提','4026'),(15,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','川琵家地址','台北市中山區長安西路12號3樓(中山市場對面大樓）'),(16,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','你兒子是誰','泊灝'),(17,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','誰最會吃','魏諭蓁'),(20,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','BenQ電視何時買的','2014年3月28日'),(21,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','智漢的學妹是誰','世昕'),(22,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','家裡郵遞區號','11555'),(23,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','你老公是誰','智漢呀'),(24,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','你妹妹是誰','陳怡安啦'),(25,'C2d444a20c8d0ff28eee2ebf66ec54900','','U8f0e486f84be7a6f7f4ed34ac3b2549f','兒子讀哪間大學','明治科技大學'),(26,'C2d444a20c8d0ff28eee2ebf66ec54900','','U8f0e486f84be7a6f7f4ed34ac3b2549f','二姊是','小琳'),(27,'','','U7ff44ab7e475a6496dc95dd375ab178b','最想妳','陳怡安'),(29,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','高毛絕代','客家祖先大都是宋末以後，由福建遷移至粵東，之前梅州原為百越民族土著居住的地方，當時有黎族外，尚有幾個少數民族和平共處，其中有一民族叫高毛族，女人頭髮疏的高高的像神祖牌，與客家漢民族並鄰部落裡，或許被同化，整個族人消失了，不再有高毛後代。按[高毛] [高毛絕代]，之後客家人變為罵人的口頭禪。'),(30,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','老婆我發燒了','還好嗎？'),(31,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','Videoscribe','Videoscribe 是一套白板動畫軟體，可以用它來建立視訊，讓客戶可以聽到，看到和與視訊互動。可以插入手寫文字、影像(向量和點陣圖)，允許構建不同類型的圖表並進行分析。 也可以在背景中安插音樂與聲音來描述視訊。'),(32,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','錫箔紙怎麼用','鋁箔紙有滑面和霧面，其實兩面都可以，受熱、導熱程度差異不大，「兩面的材質是一樣的」，鋁箔紙製程是將液態金屬溶液放入模具中，再經碾壓而成，受壓力的一面自然呈光滑質地，因此兩面的效果其實相同。'),(33,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','口罩戴法','感冒時，白色戴外面，有顏色朝內；沒感冒時，白色朝外');
/*!40000 ALTER TABLE `replys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who`
--

DROP TABLE IF EXISTS `who`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `who` (
  `userID` varchar(100) NOT NULL,
  `namez` varchar(50) NOT NULL,
  `realName` varchar(30) NOT NULL DEFAULT '',
  `displayName` varchar(30) NOT NULL,
  `insertTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` text NOT NULL,
  `securerandomno` varchar(30) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who`
--

LOCK TABLES `who` WRITE;
/*!40000 ALTER TABLE `who` DISABLE KEYS */;
/*!40000 ALTER TABLE `who` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 12:19:14
