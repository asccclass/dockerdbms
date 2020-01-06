mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: bots
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ename` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doreuser`
--

LOCK TABLES `doreuser` WRITE;
/*!40000 ALTER TABLE `doreuser` DISABLE KEYS */;
INSERT INTO `doreuser` VALUES (1,'æ™ºæ¼¢','Andy Liu'),(2,'æ³Šç','Robert');
/*!40000 ALTER TABLE `doreuser` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `infos` VALUES (1,'weather','[{\"Time\":\"08:00\",\"Tempature\":19.88,\"Status\":\"Rain\",\"Description\":\"light rain\",\"Icon\":\"10d\"},{\"Time\":\"11:00\",\"Tempature\":21.48,\"Status\":\"Rain\",\"Description\":\"light rain\",\"Icon\":\"10d\"},{\"Time\":\"14:00\",\"Tempature\":21.12,\"Status\":\"Rain\",\"Description\":\"light rain\",\"Icon\":\"10d\"},{\"Time\":\"17:00\",\"Tempature\":19.08,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02d\"},{\"Time\":\"20:00\",\"Tempature\":18.08,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"23:00\",\"Tempature\":17.4,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04n\"},{\"Time\":\"02:00\",\"Tempature\":16.63,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"05:00\",\"Tempature\":16.23,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"08:00\",\"Tempature\":18.53,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"11:00\",\"Tempature\":22.03,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03d\"},{\"Time\":\"14:00\",\"Tempature\":22.3,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03d\"},{\"Time\":\"17:00\",\"Tempature\":19.59,\"Status\":\"Clouds\",\"Description\":\"broken clouds\",\"Icon\":\"04d\"},{\"Time\":\"20:00\",\"Tempature\":17.94,\"Status\":\"Clouds\",\"Description\":\"scattered clouds\",\"Icon\":\"03n\"},{\"Time\":\"23:00\",\"Tempature\":17.18,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"02:00\",\"Tempature\":16.46,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"05:00\",\"Tempature\":16.07,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"08:00\",\"Tempature\":18.8,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"11:00\",\"Tempature\":22.8,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"14:00\",\"Tempature\":23.16,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"17:00\",\"Tempature\":20.2,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"20:00\",\"Tempature\":18.79,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"23:00\",\"Tempature\":18.21,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"02:00\",\"Tempature\":17.79,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"05:00\",\"Tempature\":17.5,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"08:00\",\"Tempature\":20.14,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"11:00\",\"Tempature\":23.79,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"14:00\",\"Tempature\":24.13,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"17:00\",\"Tempature\":21.06,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"20:00\",\"Tempature\":19.97,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"23:00\",\"Tempature\":19.2,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"02:00\",\"Tempature\":18.42,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"05:00\",\"Tempature\":18.17,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"08:00\",\"Tempature\":20.91,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"11:00\",\"Tempature\":24.37,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"14:00\",\"Tempature\":24.83,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"17:00\",\"Tempature\":21.76,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01d\"},{\"Time\":\"20:00\",\"Tempature\":20.55,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"23:00\",\"Tempature\":19.98,\"Status\":\"Clear\",\"Description\":\"clear sky\",\"Icon\":\"01n\"},{\"Time\":\"02:00\",\"Tempature\":19.3,\"Status\":\"Clouds\",\"Description\":\"few clouds\",\"Icon\":\"02n\"},{\"Time\":\"05:00\",\"Tempature\":18.94,\"Status\":\"Rain\",\"Description\":\"light rain\",\"Icon\":\"10n\"}]','2019-11-09 07:01:59');
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
INSERT INTO `replys` VALUES (1,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æ˜¯å¤§ç¬¨è›‹','ä½ èªªå‘¢ï¼Ÿ'),(2,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æœ€æ„›åƒ','ç•¶ç„¶æ˜¯é­è«­è“'),(3,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æ˜¯å¤§ç¾Žå¥³','ç•¶ç„¶æ˜¯å«ç‡å•¦'),(4,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æœ€é›£æž','å¦³èªªå‘¢ï¼Ÿ'),(5,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å¡å’ªç‹—','å­¸èªªè©±'),(6,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æœ‰candy','crashå•¦'),(7,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æ˜¯è±¬','é‚„ç”¨èªªå—Žï¼çœ‹èª°å±¬è±¬'),(8,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','é˜¿çŽ‰çš„åº—åœ¨å“ª','æ–°åŒ—å¸‚æ–°èŽŠå€ç¦ç‡Ÿè·¯385-1è™Ÿ1æ¨“'),(9,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','etag è³‡è¨Š','å’Œé‹ç§Ÿè»Šçµ±ç·¨ï¼š 70364778 é›»è©±ï¼š0921609364'),(10,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èŠ±æ——ä¿¡ç”¨å¡çµå¸³æ—¥','æ¯æœˆ11æ—¥'),(11,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å¦³å…’å­æ˜¯èª°','æ³Šç'),(12,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å¦³è€å…¬æ˜¯èª°','æ™ºæ¼¢'),(13,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','ä¸­ç ”é™¢è»Šè¼›é€šè¡Œè²»','ä¸€å¹´2500'),(14,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','è€å…¬çš„é›¢è·å„²é‡‘è‡ªæ','4026'),(15,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å·çµå®¶åœ°å€','å°åŒ—å¸‚ä¸­å±±å€é•·å®‰è¥¿è·¯12è™Ÿ3æ¨“(ä¸­å±±å¸‚å ´å°é¢å¤§æ¨“ï¼‰'),(16,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','ä½ å…’å­æ˜¯èª°','æ³Šç'),(17,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','èª°æœ€æœƒåƒ','é­è«­è“'),(20,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','BenQé›»è¦–ä½•æ™‚è²·çš„','2014å¹´3æœˆ28æ—¥'),(21,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','æ™ºæ¼¢çš„å­¸å¦¹æ˜¯èª°','ä¸–æ˜•'),(22,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å®¶è£¡éƒµéžå€è™Ÿ','11555'),(23,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','ä½ è€å…¬æ˜¯èª°','æ™ºæ¼¢å‘€'),(24,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','ä½ å¦¹å¦¹æ˜¯èª°','é™³æ€¡å®‰å•¦'),(25,'C2d444a20c8d0ff28eee2ebf66ec54900','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å…’å­è®€å“ªé–“å¤§å­¸','æ˜Žæ²»ç§‘æŠ€å¤§å­¸'),(26,'C2d444a20c8d0ff28eee2ebf66ec54900','','U8f0e486f84be7a6f7f4ed34ac3b2549f','äºŒå§Šæ˜¯','å°ç³'),(27,'','','U7ff44ab7e475a6496dc95dd375ab178b','æœ€æƒ³å¦³','é™³æ€¡å®‰'),(29,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','é«˜æ¯›çµ•ä»£','å®¢å®¶ç¥–å…ˆå¤§éƒ½æ˜¯å®‹æœ«ä»¥å¾Œï¼Œç”±ç¦å»ºé·ç§»è‡³ç²µæ±ï¼Œä¹‹å‰æ¢…å·žåŽŸç‚ºç™¾è¶Šæ°‘æ—åœŸè‘—å±…ä½çš„åœ°æ–¹ï¼Œç•¶æ™‚æœ‰é»Žæ—å¤–ï¼Œå°šæœ‰å¹¾å€‹å°‘æ•¸æ°‘æ—å’Œå¹³å…±è™•ï¼Œå…¶ä¸­æœ‰ä¸€æ°‘æ—å«é«˜æ¯›æ—ï¼Œå¥³äººé ­é«®ç–çš„é«˜é«˜çš„åƒç¥žç¥–ç‰Œï¼Œèˆ‡å®¢å®¶æ¼¢æ°‘æ—ä¸¦é„°éƒ¨è½è£¡ï¼Œæˆ–è¨±è¢«åŒåŒ–ï¼Œæ•´å€‹æ—äººæ¶ˆå¤±äº†ï¼Œä¸å†æœ‰é«˜æ¯›å¾Œä»£ã€‚æŒ‰[é«˜æ¯›] [é«˜æ¯›çµ•ä»£]ï¼Œä¹‹å¾Œå®¢å®¶äººè®Šç‚ºç½µäººçš„å£é ­ç¦ªã€‚'),(30,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','è€å©†æˆ‘ç™¼ç‡’äº†','é‚„å¥½å—Žï¼Ÿ'),(31,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','Videoscribe','Videoscribe æ˜¯ä¸€å¥—ç™½æ¿å‹•ç•«è»Ÿé«”ï¼Œå¯ä»¥ç”¨å®ƒä¾†å»ºç«‹è¦–è¨Šï¼Œè®“å®¢æˆ¶å¯ä»¥è½åˆ°ï¼Œçœ‹åˆ°å’Œèˆ‡è¦–è¨Šäº’å‹•ã€‚å¯ä»¥æ’å…¥æ‰‹å¯«æ–‡å­—ã€å½±åƒ(å‘é‡å’Œé»žé™£åœ–)ï¼Œå…è¨±æ§‹å»ºä¸åŒé¡žåž‹çš„åœ–è¡¨ä¸¦é€²è¡Œåˆ†æžã€‚ ä¹Ÿå¯ä»¥åœ¨èƒŒæ™¯ä¸­å®‰æ’éŸ³æ¨‚èˆ‡è²éŸ³ä¾†æè¿°è¦–è¨Šã€‚'),(32,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','éŒ«ç®”ç´™æ€Žéº¼ç”¨','é‹ç®”ç´™æœ‰æ»‘é¢å’Œéœ§é¢ï¼Œå…¶å¯¦å…©é¢éƒ½å¯ä»¥ï¼Œå—ç†±ã€å°Žç†±ç¨‹åº¦å·®ç•°ä¸å¤§ï¼Œã€Œå…©é¢çš„æè³ªæ˜¯ä¸€æ¨£çš„ã€ï¼Œé‹ç®”ç´™è£½ç¨‹æ˜¯å°‡æ¶²æ…‹é‡‘å±¬æº¶æ¶²æ”¾å…¥æ¨¡å…·ä¸­ï¼Œå†ç¶“ç¢¾å£“è€Œæˆï¼Œå—å£“åŠ›çš„ä¸€é¢è‡ªç„¶å‘ˆå…‰æ»‘è³ªåœ°ï¼Œå› æ­¤å…©é¢çš„æ•ˆæžœå…¶å¯¦ç›¸åŒã€‚'),(33,'','','U8f0e486f84be7a6f7f4ed34ac3b2549f','å£ç½©æˆ´æ³•','æ„Ÿå†’æ™‚ï¼Œç™½è‰²æˆ´å¤–é¢ï¼Œæœ‰é¡è‰²æœå…§ï¼›æ²’æ„Ÿå†’æ™‚ï¼Œç™½è‰²æœå¤–');
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

-- Dump completed on 2020-01-06  8:43:46
