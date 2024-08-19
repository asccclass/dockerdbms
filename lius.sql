-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: lius
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
-- Table structure for table `lius`
--

DROP TABLE IF EXISTS `lius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lius` (
  `liusID` int(11) NOT NULL AUTO_INCREMENT,
  `namez` varchar(30) NOT NULL COMMENT '姓名',
  `generation` int(11) NOT NULL DEFAULT '0' COMMENT '第n代',
  `roomOrder` int(11) NOT NULL DEFAULT '0' COMMENT '第幾房',
  `siblingOrder` int(11) NOT NULL DEFAULT '1' COMMENT '第幾房',
  `parentID` int(11) NOT NULL DEFAULT '0' COMMENT '父親ID',
  `meno` text NOT NULL COMMENT '備註',
  `source` varchar(50) NOT NULL,
  PRIMARY KEY (`liusID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='劉氏族譜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lius`
--

LOCK TABLES `lius` WRITE;
/*!40000 ALTER TABLE `lius` DISABLE KEYS */;
INSERT INTO `lius` VALUES (1,'劉廣傳',141,2,2,0,'字源遠，號毓正，別號劉弁公。',''),(2,'劉巨河',142,2,11,1,'字禎。官翰林學士為山西提學使',''),(3,'劉時泰',143,3,1,2,'名寧',''),(4,'劉均玉',144,3,1,3,'江西洋角水把總',''),(5,'劉勝寶',145,1,2,4,'',''),(6,'劉勝宗',145,1,1,4,'',''),(7,'劉榮祖',146,1,2,5,'',''),(8,'劉承祖',146,1,1,5,'','');
/*!40000 ALTER TABLE `lius` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19  1:36:02
