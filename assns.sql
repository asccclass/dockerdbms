mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: assns
-- ------------------------------------------------------
-- Server version	5.7.29

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiez`
--

LOCK TABLES `activitiez` WRITE;
/*!40000 ALTER TABLE `activitiez` DISABLE KEYS */;
INSERT INTO `activitiez` VALUES (1,1,1,18,'陽明山會務研習','協助本市高職學校家長會會務人員了解臺北市教育團隊政策與理念、健全家長會組織經營發展，提升各校家長會領導團隊及成員參與教育事務之理念與做法，共創教育美好未來。','2019-12-07','08:00','2019-12-07','17:00','陽明山教師研習中心','https://i.imgur.com/uZafEpy.jpg','https://docs.google.com/forms/d/e/1FAIpQLScdizCyNtWfjjRuSa7aVQIeHfc9O1-GuEvCU6waMIu8t4-HXw/viewform','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,1),(2,1,1,18,'亞東技術學院參訪','集合地點：元智大樓10樓國際會議廳\r\n交通方式：自行前往，學校不提供交通車\r\n\r\n＊ 若自行開車前往請務必於報名表上填寫車號，否則將無法進入學校停車','2019-12-12','09:00','2019-12-12','12:00','新北市板橋區四川路二段58號','https://i.imgur.com/ZrbAZp4.jpg','https://forms.gle/cq1ykGCajSxgKQUH9','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','車號（若自行開車，否則打無）;素食',0,0,0),(3,1,1,18,'高職聯18屆授證餐會','18屆授證典禮','2019-12-17','17:00','2019-12-17','21:30','大直點華5F繁華廳','https://i.imgur.com/459Ux4N.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','吃素嗎;自行開車嗎',0,0,0),(4,1,1,18,'高職聯士林農會參訪','職農教育','2019-12-18','09:00','2019-12-18','19:00','士林農會','https://i.imgur.com/yupxfPm.jpg','','','',0,1,0),(5,26,0,1,'景文中學50週年校慶','校慶','2019-12-14','08:30','2019-12-14','12:00','景文中學','https://i.imgur.com/mueaY2P.jpg','','','',0,0,0),(6,2,1,18,'高中聯包高中活動','包高中','2019-12-25','09:00','2019-12-25','12:00','臺北市孔廟','https://i.imgur.com/mwu1HpN.jpg','','','',0,0,0),(7,1,1,18,'海洋科技大學參訪活動','參訪活動','2019-12-27','09:00','2019-12-27','12:00','海洋科技大學士林校區','https://i.imgur.com/SRdIUU9.png','','','車號（若自行開車，否則打無）;需要素食',0,0,0),(8,2,1,18,'新課綱時代怎麼教？如何學？','新課綱教育強調素養，強調孩子能夠自主行動、溝通表達，與他人互動共好，我們能夠如何引導孩子探索知識，學會思考與解決問題，陪伴他們認識自己與探索未來？','2019-12-21','14:00','2019-12-21','16:00','麗山高中','https://i.imgur.com/xBDZPTK.png','https://www.accupass.com/event/1912041354264219526980','','年齡;就讀學校',0,0,0),(9,3,1,18,'18屆聯合授證典禮','18屆授證典禮','2019-12-24','13:00','2019-12-24','5:30','臺北市青少年發展處6樓','https://i.imgur.com/0hMXWGC.png','','','吃素嗎',0,0,0),(10,1,1,18,'歲末狂歡歌唱會','歲末迎新送舊KTV歡唱會～','2020-01-18','17:00','2020-01-18','21:00','星聚點－復興館','https://i.imgur.com/MBjO8Yj.png','','','',0,0,3),(11,1,1,18,'統測祈福活動','三年鬥魂統測制霸-為所有本市的應屆高職畢業生舉行盛大的祈福儀式，讓平常努力的學生們，透過在臺北市孔廟舉行之「臺北市高職畢業生『三年鬥魂 統測制霸』統測祈福活動中」，增加信心及定心，並在心靈及精神上獲得各界賦予的智慧福分，使得每位參與本次祈福的高職畢業生，面對考試時，都能達到滿意的成績，金榜題名，順利考上心目中理想的學校。','2020-04-14','08:00','2020-04-14','12:00','台北市孔廟','https://i.imgur.com/8bejPpL.png','','1wMr2BTkgFdauwPbprj72_QPt6xoPl1bhoDrP-SGMgIM','https://forms.gle/mVDVEJMeN4q7wkpYA',0,0,1),(12,1,1,18,'致理科技大學參訪活動','參加人員：\r\n葉阿松總會長、高薇薇副總會長、黃明德副總會長、林國雄副總會長、林麗雪總召、鍾毓倫常務理事、賴雅菁理事、張非錯監事、劉智漢秘書長、蔡文文副秘書長、林莉溱副秘書長、張嫚芳副秘書長、蔡佳君顧問、林世全前副總會長、陳泰有','2020-02-19','09:00','2020-02-19','12:00','新北市板橋區文化路一段313號','https://i.imgur.com/HRCJWzE.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','車號（若自行開車，否則打無）;需要素食',0,0,0),(13,1,1,18,'德明財經科大參訪活動','活動參與人員：\r\n葉阿松總會長、高薇薇副總會長、林國雄副總會長、鍾毓倫常務理事、賴雅菁理事、周雅蘋理事、劉智漢秘書長、林莉溱副秘書長、張嫚芳副秘書長、蔡佳君顧問','2020-02-26','09:00','2020-02-26','12:00','台北市內湖區環山路一段56號','https://i.imgur.com/lBScziB.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','車號（若自行開車，否則打無）;需要素食\r\nhttps://forms.gle/dR7QhTk798mCqBvcA',0,0,0),(14,5,1,4,'第二次理監事會議','','2011-01-24','09:00','2011-01-24','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(15,5,1,5,'第5屆第二次理監事會議','','2013-01-26','09:00','2013-01-26','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(16,5,1,6,'第六屆第一次會員大會','','2014-12-28','09:00','2014-12-28','12:00','','','','','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(17,5,1,6,'第六屆第一次理監事聯席會議','','2015-03-21','09:00','2015-03-21','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(18,5,1,6,'第六屆第二次理監事聯席會議暨旅遊活動','','2015-05-31','09:00','2015-05-31','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(19,5,1,6,'第六屆拜訪吳清山國教署署長','','2015-03-04','09:00','2015-03-04','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(20,5,1,6,'第六屆第一次常務理監事聯席會議','','2015-03-04','09:00','2015-03-04','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(21,5,1,6,'第六屆第二次常務理監事聯席會議','','2015-03-04','09:00','2015-03-04','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(22,5,1,6,'第六屆參訪中原大學','','2015-03-04','09:00','2015-03-04','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(23,5,1,6,'第六屆拜訪桃園市鄭文燦市長','','2015-03-04','09:00','2015-03-04','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(24,5,1,6,'第六屆第三次理監事聯席會議','','2015-08-02','09:00','2015-08-02','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(25,5,1,6,'第六屆全國新卸任校長交接典禮','','2015-08-01','09:00','2015-08-01','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(26,5,1,6,'第六屆第一次法制事務委員會議','','2015-09-05','09:00','2015-09-05','12:00','','','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(27,5,1,8,'第八屆第一次會員大會','','2018-12-23','09:00','2018-12-23','12:00','','https://i.imgur.com/c7lPBCq.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(28,1,1,18,'第一次常務理監事會議','','2019-11-18','09:00','2019-11-18','12:00','開平餐飲學校','https://i.imgur.com/6kMKBlb.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',1,0,0),(29,1,1,18,'興雅國小校友會春酒','參加人員：葉阿松總會長、黃明德副總會長、郭柏峰常務理事、鍾毓倫常務理事、賴雅菁理事、吳嘉蕙理事、林紋妃會長、劉智漢秘書長','2020-02-16','12:00','2020-02-16','14:30','鑫饗宴（3樓雲海廳）','https://i.imgur.com/vD6T9WK.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(30,1,1,18,'孔廟包高中活動一籌會議','參加人員：\r\n葉阿松總會長、黃明德副總會長、鍾毓倫總召、賴雅菁副召、郭柏峰委員、林麗雪委員、張非錯監事、劉智漢秘書長、蔡文文副秘書長、林莉溱副秘書長、張嫚芳副秘書長、劉德舜顧問','2020-02-19','14:00','2020-02-19','16:00','台北市大同區大龍街275號','https://i.imgur.com/AOMLA2g.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(31,1,1,18,'伯大尼兒少家園參訪','參加人員：葉阿松總會長、黃明德副總會長、鍾毓倫常務理事、賴雅菁理事、吳嘉蕙理事、梁作娟監事、張非錯監事','2020-01-21','14:00','2020-01-21','17:00','伯大尼兒少家園','https://i.imgur.com/mrRM57e.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,1),(32,5,1,6,'第六屆第四次理監事會暨陽明山一日遊','','2015-09-20','09:00','2015-09-20','18:00','','https://i.imgur.com/ZPzmmpQ.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(33,5,1,6,'第二次法制事務委員會議','','2015-10-14','09:00','2015-10-14','18:00','','https://i.imgur.com/ikEooLI.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(34,5,1,6,'吳清山前署長成立111教育發展協進會','','2015-11-01','09:00','2015-11-01','18:00','','https://i.imgur.com/voB7qJZ.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(35,5,1,6,'第五次理監事會暨台科大參訪','','2015-11-24','09:00','2015-11-24','12:00','','https://i.imgur.com/NU4s9sH.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(36,5,1,6,'第二次會員大會暨辦理教育論壇','','2015-12-26','09:00','2015-12-26','12:00','','https://i.imgur.com/CNbVjVo.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(37,5,1,6,'第六次理監事聯席會議暨北市大参訪','','2016-04-11','09:00','2016-04-11','12:00','','https://i.imgur.com/Jd8BbHZ.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(38,5,1,6,'第七次理監事聯席會','','2016-05-11','09:00','2016-05-11','12:00','','https://i.imgur.com/c75GLpE.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(39,5,1,6,'第二次常務理監事聯席會','','2016-06-11','09:00','2016-06-11','12:00','','https://i.imgur.com/1t0WVMY.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(40,5,1,6,'第八次理監事聯席會議及實踐大學參訪','','2016-08-11','09:00','2016-08-11','12:00','','https://i.imgur.com/eNCcevo.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(41,5,1,6,'政治大學參訪','','2016-10-11','09:00','2016-10-11','12:00','','https://i.imgur.com/X9Gwu8S.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(42,5,1,7,'第一次常務理事會','','2017-02-11','09:00','2017-02-11','12:00','','https://i.imgur.com/hXvr1o9.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(43,5,1,7,'授證典禮','','2017-03-11','09:00','2017-03-11','12:00','','https://i.imgur.com/5bZNVjF.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(44,5,1,7,'第一次理監事聯席會','','2017-01-20','09:00','2017-01-20','12:00','','https://i.imgur.com/Dhgsywa.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(45,5,1,7,'世界人權宣言活動','','2017-01-29','09:00','2017-01-29','12:00','','https://i.imgur.com/Zuy6EdO.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(46,5,1,7,'員林高中校慶','','2017-02-01','09:00','2017-02-01','12:00','','https://i.imgur.com/YFeDuLy.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(47,5,1,7,'智光商工校慶','','2017-02-10','09:00','2017-02-10','12:00','','https://i.imgur.com/VxloNQl.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(48,5,1,7,'高中聯合會思辨會','','2017-02-20','09:00','2017-02-20','12:00','','https://i.imgur.com/kaW4vwu.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(49,5,1,7,'文山特教校慶','','2018-03-01','09:00','2018-03-01','12:00','','https://i.imgur.com/r8XTiAV.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(50,5,1,7,'啟聰100週年校慶','','2018-03-10','09:00','2018-03-10','12:00','','https://i.imgur.com/iAsmLJE.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(51,5,1,7,'第二次理監事會議及溪頭米堤二日遊','','2018-05-10','09:00','2018-05-10','12:00','','https://i.imgur.com/JcWIai8.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(52,3,1,18,'109校長遴選研習會議（取消）','【因應武漢肺炎影響，本活動已取消】\r\n\r\n為協助本年度出校長會員學校，順利遴選校長，導教學團隊，優化學生學習，特舉辦此遴選研習，敬請本年度及明年度各出缺校長會員學校，務必派員出席。','2020-03-20','13:30','2020-03-20','17:00','','https://i.imgur.com/NrA20JK.jpg','','','https://forms.gle/33VFCdBQRH111wUo9',0,0,1),(53,1,1,18,'景文科技大學參訪活動','交通方式：自行前往或搭乘大眾交通工具或交通車\r\n         交通車預計：7：50捷運圓山2號出口上車，8：20捷運國父紀念館站4 號出口上\r\n＊ 當天校方提供簡易餐盒','2020-03-12','09:00','2020-03-12','12:00','231新北市新店區安忠路99號','https://i.imgur.com/XK9eXN4.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','車號（若自行開車，否則打無）;需要素食\r\nhttps://forms.gle/dR7QhTk798mCqBvcA\r\nhttps://forms.gle/u3nfZAhp4hv9fwGTA',0,0,0),(54,1,1,18,'中國科技大學參訪活動','交通方式：自行前往或搭乘大眾交通工具\r\n＊當天校方提供簡易餐盒','2020-03-20','09:00','2020-03-20','12:00','116台北市文山區興隆路三段56號','https://i.imgur.com/cNYP40n.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','車號（若自行開車，否則打無）;需要素食\r\nhttps://forms.gle/1TRVuUbRwoH9dXZ87\r\n',0,0,0),(55,5,1,7,'午膳群英會','','2018-05-12','09:00','2018-05-12','12:00','','https://i.imgur.com/iHGUqg6.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(56,5,1,7,'反毒公益講座','','2018-05-13','09:00','2018-05-13','12:00','','https://i.imgur.com/qCLn2vM.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(57,5,1,7,'台北海洋科技大學畢業典禮','','2018-06-13','09:00','2018-06-13','12:00','','https://i.imgur.com/vzeM5lI.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(58,5,1,7,'台北海洋技術學院改制揭牌典禮','','2018-06-19','09:00','2018-06-19','12:00','','https://i.imgur.com/9kk0r9R.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(59,5,1,7,'國立宜蘭大學知性之旅','','2018-06-29','09:00','2018-06-29','12:00','','https://i.imgur.com/VAYqqmy.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(60,5,1,7,'東方光商技職達人活動','','2018-07-29','09:00','2018-07-29','12:00','','https://i.imgur.com/gd445Pq.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(61,5,1,7,'第三次理監事聯席會暨中和高中參訪及蔬食推廣活動','','2018-08-29','09:00','2018-08-29','12:00','','https://i.imgur.com/HQW3xOh.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(62,5,1,7,'參訪聯合大學及逢甲大學','','2018-08-30','09:00','2018-08-30','12:00','','https://i.imgur.com/8zCnUPB.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(63,5,1,7,'景文高中校慶','','2018-09-13','09:00','2018-09-13','12:00','','https://i.imgur.com/VV7bpH4.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(64,5,1,7,'106年歲末聯歡','','2018-11-13','09:00','2018-11-13','12:00','','https://i.imgur.com/03umGrB.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(65,5,1,7,'參訪國立台北大學','','2018-11-20','09:00','2018-11-20','12:00','','https://i.imgur.com/RjGa0Uz.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(66,5,1,7,'文山特教16週年校慶','','2018-12-20','09:00','2018-12-20','12:00','','https://i.imgur.com/IpnJ9bG.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(67,5,1,7,'卓蘭高中會前場勘','','2018-12-22','09:00','2018-12-22','12:00','','https://i.imgur.com/76wfSBa.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(68,5,1,7,'第五次理監事聯席會','','2018-12-29','09:00','2018-12-29','12:00','','https://i.imgur.com/P0PsFDq.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(69,5,1,7,'第八次理監事聯席會議','','2018-12-30','09:00','2018-12-30','12:00','','https://i.imgur.com/cW6Mzm1.jpg','','1UIMUx42-48lDuDLImbGYM1QxoT1crTIs1-7MsTKxtgU','',1,0,0),(70,1,1,18,'高職新課綱技職產學微課程啟動儀式活動','參加人員：\r\n葉阿松總會長、鍾毓倫常務理事、賴雅菁理事、康建斌理事、吳嘉蕙理事、張非錯監事','2020-03-03','11:00','2020-03-03','12:00','國立臺北科技大學（台北市大安區忠孝東路三段1號）','https://i.imgur.com/S7TG4RZ.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(71,1,1,18,'聖約翰科技大學參訪活動','因疫情關係，活動已取消','2020-03-31','09:00','2020-03-31','12:00','251新北市淡水區淡金路四段499號','https://i.imgur.com/0xA9hZ6.jpg','','','車號（若自行開車，否則打無）;需要素食\r\nhttps://forms.gle/xyW51HyCi43GkCWo8',0,0,0),(72,1,1,18,'3、4月份慶生會','各位親愛的夥伴，高職聯慶生會謹訂於「3/13下午5點」於錢櫃西門店舉辦，讓3、4月的壽星們感受到大家給予的祝福。','2020-03-15','17:00','2020-03-15','21:00','錢櫃西門店','https://i.imgur.com/qbgqSia.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','https://i.imgur.com/MBjO8Yj.png',0,1,3),(73,1,1,18,'18屆第二次理監事會議','高職聯第二次理監事會議','2020-03-27','18:00','2020-03-27','21:00','中國科技大學','https://i.imgur.com/ECC4i26.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,1,3),(74,5,1,8,'文山特教107學年度忘年會','','2018-12-25','09:00','2018-12-25','12:00','','https://i.imgur.com/eLxQGgh.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(75,3,1,18,'第二次理監事聯席會議','','2020-03-17','18:30','2020-03-17','21:00','景文高中','https://i.imgur.com/sNjxX1p.jpg','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU','',0,0,1),(76,1,1,18,'金山淨灘活動','交通方式：自行開車至指定地方集合','2020-03-22','14:00','2020-03-22','16:00','金山青年活動中心','https://i.imgur.com/bAJgGMe.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(77,1,1,18,'教育委員會第二次會議','參加人員：\r\n葉阿松總會長、高薇薇副總會長、林國雄副總會長、賴雅菁總召、郭柏峰常務理事、陳玉雪副秘書長','2020-03-25','14:00','2020-03-25','16:00','德明財經科技大學','https://i.imgur.com/T3rbkHA.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(78,1,1,18,'龍華科技大學參訪活動','參加人員：葉阿松總會長、高薇薇副總會長、林國雄副總會長、林麗雪總召、郭柏峰常務理事、鍾毓倫常務理事、賴雅菁理事、吳嘉蕙理事、梁作娟監事、蕭慧君財務長、林莉溱副秘書長、張嫚芳副秘書長、蔡佳君顧問','2020-04-17','09:00','2020-04-17','12:00','桃園市龜山區萬壽路一段300號','https://i.imgur.com/Kr2VcO5.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','https://i.imgur.com/f5qaN4e.jpg\r\n校方提供交通車，亦可自行前往或搭乘大眾交通工具搭乘交通車於圓山捷運站2號出口 8:00 準時開車（請注意時間）',0,0,0),(79,1,1,18,'孔廟包高中活動二籌會議','參加人員：\r\n葉阿松總會長、高薇薇副總會長、黃明德副總會長、林國雄副總會長、鍾毓倫總召、賴雅菁副召、吳嘉蕙委員、陳乃甄委員、林紋妃委員、梁作娟監事、李淑華副秘書長、林莉溱副秘書長、陳玉雪副秘書長、劉德舜顧問','2020-03-27','17:00','2020-03-27','18:00','中國科技大學','https://i.imgur.com/xvu8e1j.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(80,1,1,18,'孔廟包高中活動三籌會議','參加人員：\r\n葉阿松總會長、高薇薇副總會長、黃明德副總會長、林國雄副總會長、鍾毓倫總召、賴雅菁副召、吳嘉蕙委員、林麗雪委員、郭柏峰常務理事、林莉溱副秘書長、陳玉雪副秘書長、李淑華副秘書長、劉德舜顧問、立法委員助理李煥中','2020-04-08','14:00','2020-04-08','17:00','臺北市孔廟','https://i.imgur.com/5JQPIum.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(81,1,1,18,'城市科技大學參訪活動','參加人員：葉阿松總會長、高薇薇副總會長、林國雄副總會長、林麗雪總召、鍾毓倫常務理事、賴雅菁理事、吳嘉蕙理事、康健斌理事、梁作娟監事、張非錯監事、陳嘉偉會長、蕭慧君財務長、蔡文文副秘書長、林莉溱副秘書長','2020-05-15','08:40','2020-05-15','12:00','112台北市北投區學園路2號','https://i.imgur.com/kHN3KT4.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','\r\nhttps://i.imgur.com/XLTd1Xi.png\r\nhttps://forms.gle/JrPrVtR94o4psmtV6',0,0,0),(82,1,1,18,'教育委員會第四次會議','地點：德明財經科技大學\r\n參加人員：\r\n葉阿松總會長、高薇薇副總會長、黃明德副總會長、林國雄副總會長、賴雅菁總召、林麗雪委員、郭柏峰常務理事、鍾毓倫常務理事、吳嘉蕙理事、梁作娟監事、陳玉雪副秘書長','2020-05-13','14:00','2020-05-13','16:00','德明財經科技大學','https://i.imgur.com/nAEesJ2.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q',0,0,0),(83,1,1,18,'109學年度『統測落點分析及如何考上理想科大』講座','主辦：教育委員會\r\n地點：德明財經科技大學','2020-05-22','18:00','2020-05-22','21:30','德明財經科技大學','https://i.imgur.com/qi3DfmV.png','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q\r\n\r\nhttps://forms.gle/vTZFxswzDoMBZVme6',0,0,0),(84,1,1,18,'東南科技大學參訪活動','葉阿松總會長、高薇薇副總會長、林國雄副總會長、林麗雪總召、鍾毓倫常務理事、賴雅菁理事、吳嘉蕙理事、梁作娟監事、張非錯監事、劉智漢秘書長、蕭慧君財務長、蔡文文副秘書長、林莉溱副秘書長、蔡佳君顧問、美芝顧問、許淑華顧問','2020-05-08','09:00','2020-05-08','12:00','222新北市深坑區北深路三段152號\r\n交通方式：校方提供交通車，亦可自行前往或搭乘大眾交通工具。搭乘交通車於圓山捷運站2號出口  8:00 準時開車（請注意時間）','https://i.imgur.com/mpj2CWz.png','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','https://forms.gle/se4cndDo15VUazU66',0,0,0),(85,1,1,18,'明新科技大學參訪','地點：鴻超樓 地址:304新竹縣新豐鄉新興路1號\r\n交通： 開車、騎機車請停學校停車場\r\n接駁：【備交通車】集合時間及上車地點另行通知','2020-06-02','08:40','2020-06-02','14:50','304新竹縣新豐鄉新興路1號','https://i.imgur.com/rlGNzeK.png','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q\r\nhttps://forms.gle/JdcL1cukX1R4DdqN8',0,0,0),(86,3,1,18,'109年基北區免試入學志願選填與適性輔導（2）','為協助孩子以最優成績入選最適學習環境，本會12年國教委員會敬依孟峯總會長指導，企劃「109選填志願分析講座」力邀對志願選填規則制度熟稔的～中崙高中-孫明峯校長，蒞會講授。\r\n\r\n敬請伙伴們轉達訊息，提醒家長預留時間出席。\r\n講師：孫明峯 中崙高中校長\r\n人數：99人/額滿即止','2020-06-20','14:00','2020-06-20','16:00','臺北市仁愛國中','https://i.imgur.com/mCmv6Lv.jpg','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU','https://forms.gle/s7WXGKw75536t3Zd8,1SMC5qrAvmskCPOhHo0zSntVTbMhHpro1V4zsMrQkCdw\r\n\r\nhttps://forms.gle/s7WXGKw75536t3Zd8',0,0,1),(87,3,1,18,'109年基北區免試入學志願選填與適性輔導（1）','為協助孩子以最優成績入選最適學習環境，本會12年國教委員會敬依孟峯總會長指導，企劃「109選填志願分析講座」力邀對志願選填規則制度熟稔的～中崙高中-孫明峯校長，蒞會講授。','2020-06-18','19:00','2020-06-18','21:00','臺北市建成國中','https://i.imgur.com/181g4KR.jpg','','','https://i.imgur.com/3ut4HTA.jpg\r\n\r\nhttps://forms.gle/33VFCdBQRH111wUo9',0,0,1),(88,3,1,18,'第三次理監事聯席會議','','2020-06-02','17:00','2020-06-02','19:00','誠正國中','https://i.imgur.com/AaR7zgN.jpg','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU',0,0,1),(89,3,1,18,'福安國中參訪活動','','2020-07-01','09:00','2020-07-01','16:00','福安國中','https://i.imgur.com/GvS7Xn2.jpg','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU','',0,0,1),(90,3,1,18,'YoungerBoss親子技職體驗營','','2020-08-23','09:00','2020-08-23','19:00','私立大同高中','https://i.imgur.com/WpY8z3k.jpg','http://www.jhupat.org.tw/#!/jhupat/youngerboss','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU',0,0,1),(91,3,1,18,'YoungerBoss親子技職體驗營籌備說明會','','2020-07-02','14:00','2020-07-02','16:00','私立大同高中','https://i.imgur.com/jtdj8UG.jpg','','1OWzVQy6E_cNjuA9eKpmgzCbnQrXd1wJByh1ppHCNNIU','',0,0,1),(92,1,1,18,'公關及特教委員會聯席會議','','2020-07-06','18:40','2020-07-06','14:50','金甌女中808會議室','https://i.imgur.com/lS8Ld3s.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(93,5,1,8,'第五次理監事聯席會','地點：中國科技大學','2020-07-11','09:00','2018-07-11','12:00','中國科技大學','https://i.imgur.com/AfhtFqy.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(94,1,1,18,'在信任的基礎上，親子關係更親密講座','','2020-08-04','10:00','2020-08-04','12:00','大直典華','https://i.imgur.com/V7UXoor.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,0),(95,5,1,8,'大誠高中51周年校慶','','2018-12-28','09:00','2018-12-28','12:00','','https://i.imgur.com/ltfRZEf.jpg','','19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(96,1,1,18,'18屆第三次理監事會議','高職聯第三次理監事會議','2020-08-12','18:00','2020-08-12','21:00','馬場台菜熱炒','https://i.imgur.com/FvHY0w1.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,1,3),(97,1,1,18,'祖父母節慶祝活動','祖父母節慶祝活動','2020-08-23','08:30','2020-08-23','12:00','台北市立動物園','https://i.imgur.com/yIt5SwO.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,1,3),(98,1,1,18,'教育委員會第五次會議','地點：松山工農','2020-09-24','17:00','2020-09-24','18:00','松山工農','https://i.imgur.com/mKXTHRV.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q',0,0,0),(99,5,1,8,'第六次理監事聯席會議','地點：淡江大學宜蘭校區','2020-08-22','11:00','2018-08-22','12:30','淡江大學宜蘭校區','https://i.imgur.com/cvwZYGG.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(100,5,1,8,'第二次會員代表大會暨歲末聯誼','晶宴民生會館B2圓劇場','2019-12-28','10:00','2019-12-28','12:30','晶宴民生會館B2圓劇場','https://i.imgur.com/yyqiMkQ.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(101,1,1,18,'19屆陽明山會務研習','協助本市高職學校家長會會務人員了解臺北市教育團隊政策與理念、健全家長會組織經營發展，提升各校家長會領導團隊及成員參與教育事務之理念與做法，共創教育美好未來。','2020-10-24','09:00','2020-10-24','17:00','陽明山教師研習中心','https://i.imgur.com/JU1gIFf.jpg','','1yyHjUJRoLd1OlYS_PR9HWVR7szu9OuDYHNiQQqIWW2Q','',0,0,1),(102,5,1,8,'第七次理監事聯席會議','地點：私立大同高中','2020-10-25','10:00','2018-10-25','12:30','私立大同高中','https://i.imgur.com/l3wb3gc.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(103,5,1,8,'秋陽金柿、雲水森林一日遊','地點：新竹、苗栗','2020-09-12','07:00','2018-09-12','17:30','新竹、苗栗','https://i.imgur.com/aKj9GUH.jpg','','1Kw4Ht8KXHI1oih47nDXniEWCNi1z-ddx2QYUvC9hzu4','https://docs.google.com/spreadsheets/d/19XLq7P3PsIHFUdog6_tBjJJo7_3bRyYHzwwujDKFCXE/edit?usp=sharing',1,0,0),(104,1,1,19,'19屆第一次會員代表大會','會員代表大會','2020-10-22','17:00','2020-10-22','09:00','木柵高工','https://i.imgur.com/PQTUqFZ.jpg','','1Litrb_dt_uosZAN-CqPcKi-cKphHf9YaioDfgfv5aAU','',0,0,1),(105,3,1,19,'19屆會員代表大會','','2020-11-08','14:00','2020-11-08','17:00','明國國中','https://i.imgur.com/oKtr1Tb.jpg','','1aiGhcMqBML6nAftrDWWa255EiOIY2buRBe5S5DKRiAk','',0,0,1),(106,3,1,19,'19屆第一次理監事聯席會議','介壽國中','2020-11-25','18:00','2020-11-25','21:00','介壽國中','https://i.imgur.com/H30hAk2.jpg','','1aiGhcMqBML6nAftrDWWa255EiOIY2buRBe5S5DKRiAk','',0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiezperson`
--

LOCK TABLES `activitiezperson` WRITE;
/*!40000 ALTER TABLE `activitiezperson` DISABLE KEYS */;
INSERT INTO `activitiezperson` VALUES (9,9,'U0c181ee00f74141895ea46941cf0a3b1','2019-12-14','吃素嗎:是','0000-01-01 00:00:00'),(10,9,'U074a4d9f9b7d6b5f6e2d0577fd032e1d','2019-12-14','吃素嗎:否','0000-01-01 00:00:00'),(11,9,'U87e901072c956f70109d724e3e7bdf49','2019-12-15','吃素嗎:不是','0000-01-01 00:00:00'),(13,7,'Ube1a62e8d1d317aea15ca9b1095b538b','2019-12-19','車號（若自行開車，否則打無）:8982-RZ,需要素食:葷','0000-01-01 00:00:00'),(15,72,'U0c181ee00f74141895ea46941cf0a3b1','2020-03-11','','0000-01-01 00:00:00'),(16,72,'Ube1a62e8d1d317aea15ca9b1095b538b','2020-03-11','','0000-01-01 00:00:00'),(17,72,'U330fe8dc57b7fc319bb7968be3fd0bb4','2020-03-11','','0000-01-01 00:00:00'),(18,73,'U330fe8dc57b7fc319bb7968be3fd0bb4','2020-03-11','','0000-01-01 00:00:00');
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
INSERT INTO `funny` VALUES (1,'在那裡跌倒，就在那裡躺下來',0,'','0000-01-01'),(2,'好想賣掉房子去環遊世界，但房東不准',0,'','0000-01-01'),(3,'別害怕別人怎麼看你，因為沒有人在看你',0,'','0000-01-01'),(4,'單身是一種選擇，只不過不是我選的',0,'','0000-01-01'),(5,'人若不帥，再暖都是變態',0,'','0000-01-01'),(6,'今年情人節一個人過嗎？沒關係，明年...就會習慣了',0,'','0000-01-01'),(7,'當你覺得自己窮、醜、一無是處的時候，別絕望，至少你的判斷是對的',0,'','0000-01-01'),(8,'當我們感到孤單時，想要的或許不是有人陪，而是希望有人懂。',1,'What we want when we feel lonely, perhaps it\'s not someone to be with, but someone who understands.','0000-01-01'),(9,'下定決心的人用生繡的扳手，可以比懶惰的人用機械房裡所有工具完成更多的事。',1,'','0000-01-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'劉智漢','0921609364','justgps@gmail.com','https://profile.line-scdn.net/0h97hT_Q_lZhhVLUldDEIZT2loaHUiA2BQLUx6fXl5P3hxSXRGOR4ueCcvPH9xGyQcaB59LSQrOH19','U0c181ee00f74141895ea46941cf0a3b1','智漢（內工32、介壽47）','漢哥','內工\n高職聯\n秘書長','2019-11-28','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6AQAAAACgl2eQAAABsklEQVR42u2ZUY7DMAhEkXKAHslX95F8ACQvM+Btkq32Y7UfHimR2zrJ+0HAAK7N369uD/AAD/A3oFtcr+6vOUeLzTHM8ci0gPh4AGbBGBZhPhcC+Aq3YSAA3tpLEZjH7FzhMmUg4s1avDroOzmgQg5R15aZn2Jyb2Cl/2l91oedgRLdcFaGXLjsk1bvDmT6w65hUABczU9mKgCULygYzJz4hiDfYnJ7IIsIfTSWmlEKpABkSvjoqMBDElHHphTAXzCNIgYGnhqmBaB2pHUDuePImnYNOQHAK9l7Zr2zSwmrpQCUD2QKG8XVa7VzxZEAsmPPGIs9dIxekwLeNdFX1NFTXQsI7zjNPNju5jzlV63eHsjRo33XdFsRKAXMbEtShJ3dO0w+OUsBYMfOYTxJTh+3kVYBqP6kZYlnyNm1RREA0jU1A7K+s9xPLcCR/rm6r9yZo0kBpcZr1f64aPX+QI601bFnD8zK0rQAHi9MDrMgWdb7j8PD3YE6dkNzYjmAsKZIAkuBWWJmvzW9MoDlKXQN5pdpUQF4hxwtzfpiakDmC82spr0KpRLw/Bv1AA/w38AXEcx9CDOLaSoAAAAASUVORK5CYII=',''),(3,'蕭毓君','0800-520520','xxxxxxxx','https://profile.line-scdn.net/0m0067c344725156a34b713f58612d56e1c0cb88a04dd3','U63f3316d012a7808150d590d99637695','Sabrina Hsiao','阿計','空白\n空白\n空白','2019-12-03','',''),(4,'陳玉蘭','0921609364','sherry@gmail.com','https://profile.line-scdn.net/0m05e91be3725180f1b52f3d049a5bd731b1ca82c08544','U074a4d9f9b7d6b5f6e2d0577fd032e1d','玉蘭（泊灝）','玉蘭','2018年6月23日5:30過世','2019-12-04','',''),(5,'程建中','0932782464','ssscheng2005@yahoo.com.tw','https://profile.line-scdn.net/0hd6VYFgKaOxlrIBTuWxBETldlNXQcDj1RE04gKxsnNixPR3QbV0UnfBkibCtDQ3RPUk8mehxzYCpE','Ubdbadee2f33d7546253110a1913d2d7a','程建中','建中','信義國中\n國中聯合會\n副秘書長','2019-12-05','',''),(7,'曾靜娟','0937310333','ifadunny@gmail.com','https://profile.line-scdn.net/0hQRk6ybAGDn1WTyW1gPBxKmoKABAhYQg1LiBJTyRPAk8vKhktY3oUHXJGWRhzLBkrPy5BGnsbWRgv','U9ba6dab540310be64b1f42402ff4a833','曾靜娟','靜娟','國中聯 秘書處\n臺北市國中學生家長會聯合會\n秘書長','2019-12-09','',''),(8,'吳稚猛','猜猜看','沒有','https://profile.line-scdn.net/0m03d3aec37251aef677fa11eab2adba0c90c8fa0c4dba','U330fe8dc57b7fc319bb7968be3fd0bb4','Vincent','囉嗦的執行長','不想說\r\n來亂的\r\n囉嗦\r\n\r\n\r\n\r\n\r\n\r\n','2019-12-09','',''),(9,'陳莉葦','0926617855','anitachen.j@gmail.com','https://profile.line-scdn.net/0hpsHtGnH3L1x1DQSAihFQC0lIITECIykUDWhgblAKdG0PaG8LTmkwagIFJTgKb29ZSG1jOVcIJW9e','Ub3f16b3fd6ab9d4c31d47b494df70239','陳莉葦Anita','莉葦','成德國中\n安恆利國際控股 \n會長','2019-12-10','',''),(10,'陳正德','0932314150','leaders.union@gmail.com','https://profile.line-scdn.net/0h3aNCpsh-bE5zOke7TuMTGU9_YiMEFGoGC1h3fQYyZXYODi9LSVwhIFRuNypaDygeSAgkIAU4ZnwM','Ubfcc1c32d1fe9b3eafbc778a2a9f6505','iDerek 正德','正德','建中老師','2019-12-10','',''),(11,'宋全娟','0932162589','tina.sung@universals.com.tw','https://profile.line-scdn.net/0m071c59a2725130d56988a176b3e34e6677489ca971b4','U742a1d73d2013d9e69a34e5516b72ae8','Tina.sung','全娟','介壽國中\n國中聯\n會長','2019-12-10','',''),(12,'李淑玲','0918068980','lucy6suelin@yahoo.com.tw ','https://profile.line-scdn.net/0hQoyRtv6qDkBEKyVKi4NxF3huAC0zBQgIPE5AIzEoA3JvHh0eLx1AJzUtUSc9TBwTeh0SIGR-B3Nh','U87e901072c956f70109d724e3e7bdf49','李淑玲','','泰北高中國中部\n國中聯合會\n監事','2019-12-10','',''),(13,'劉奇昌','0933729469','achang2.mobile@gmail.com','https://profile.line-scdn.net/0m0e4ce19872514e75e14c1903e874c6609c778f73b337','U2f41f72e0699f5e31c348e75a93f1e1b','Achang2 JackyLIU 劉奇昌','','麗山國中\n臺北市國中家長會長聯合會\n常務理事暨體育衛生委員會','2019-12-10','',''),(14,'林淑卿','0921419513','a0921419513@gmail.com','https://profile.line-scdn.net/0hB3Sn_EjhHRxuFzH9pTRiS1JSE3EZORtUFnZaeUsXQSRHIlhOUyJRfhgWESxDcghCVnFTe0seRipH','U1ddcdf1a8fa3b24dc92cd4597603af43','淑卿','','北政國中\n台北市國中學生家長會聯合會\n家長會會長','2019-12-10','',''),(15,'張妤榕','0932200466','elanchang1958@gmail.com','https://profile.line-scdn.net/0hxBZ4xIxTJ21nTQxxjUFYOlsIKQAQYyElH3k6XEVKK1seL2dvD3lvWBUYfVVCdTc6W3xsCRAfLFtK','Ue300c90bc3619b3e659f81d16333a812','妤榕','','衛理女中（國中部）\n台北市國中學生家長會聯合會\n家長會會長','2019-12-10','',''),(16,'盧永富','0910011194','luyungfu1017@gmail.com','https://profile.line-scdn.net/0hFtsvN7a7GVtODzR0wTpmDHJKFzY5IR8TNmkDPT4MR202al8Iez4EP2oPT2xkNlpfcTlXbT9cTjtr','Ud4dab9fe8ffaa50e776c985b4e610ac4','盧永富','','台北市立格致國中\n國中聯合會常務監事\n格致國中家長會 會長','2019-12-10','',''),(17,'康建斌','0910396569','Rogerkang0122@gmail.com','https://profile.line-scdn.net/0hT5HtaFIICxp1DSEi-mR0TUlIBXcCIw1SDTxHfFJdAH5fORtPTW8XegcFBy8LNB9MTzgTdAddXH9b','Ube1a62e8d1d317aea15ca9b1095b538b','建斌（Roger）','建斌','啟明學校\n國小、國中、高中、高職\n會長','2019-12-10','',''),(18,'陳奕竹','0986871209','iris691209@yahoo.com.tw','https://profile.line-scdn.net/0hs7FlWbrHLBh7FQaCnjhTT0dQInUMOypQA3NqeFpFcywEdj8dE3Jke1cVIiwEJW5JEHU0fgocJXtR','U4a23649c91ec4601e7d2a592f093b0ab','陳奕竹','','文山特教\n特教委員會丶體育衛生委員會\n特教委員會 副召集人','2019-12-10','',''),(19,'吳靜怡','0980208511','Annwu8827@gmail.com','https://profile.line-scdn.net/0hwPy_C0B7KH9EJgW_xWBXKHhjJhIzCC43PENmHGB2dExgEWt8fEA3HmRycRw8EDwheUdjGTZydE0-','U21edeab9165678f28da71f557ac097ae','Ann Wu (正墉 亮涵）','靜怡','新民國中\n空白\n空白','2019-12-14','',''),(20,'莊孟峯','0921938177','jf27472829@hibox.hinet.net','https://profile.line-scdn.net/0hoq4-t4-qMF4JVBqJDxhPCTURPjN-ejYWcTMvbS5UaTxwY3IIZTd2OigGaGglbXYMPTt-MSxRO2si','U950414eaea1291a6d5dd2430e74f4b58','民生莊孟峯（承羲&婷瑄）','總會長','民生國中\n臺北市國中學生家長會聯合會\n總會長','2019-12-14','',''),(22,'張非錯','0924062888','jq002999jq@yahoo.com','https://profile.line-scdn.net/0hNw1sCOokEVgMCjq0KnNuDzBPHzV7JBcQdD8LPC0DR291b1RdMm1fOyhaHT0paAFaOTsNay8IRzt1','U4fd96161a0cd4db47b30524664eca4df','北聰家長會會長張非錯','非錯','台北啟聰\n台北啟聰家長會\n會長','2019-12-19','',''),(23,'余志呈','0928250503','mikeyu927@gmail.com','https://profile.line-scdn.net/0hBccvQK1kHUxeDzdGXF9iG2JKEyEpIRsEJm5VLy9aFywhOl0fa2xbeH0MFHtxbVgcZmFRL3xcQXtz','U763c786462acef8b458fb3bc14970b42','余志呈','余校長','台北市立成德國民中學\n台北市國中家長會長聯合會\n校長','2019-12-29','',''),(24,'蔡素麗','0911386330','aa0911386330tw@gmail.com','https://profile.line-scdn.net/0m0174cbc87251527ea722d1df9de344db07ed81464d10','U3f637bc403e15d8868152eeaffc9dc70','蔡素麗','蔡會長','南門國中\n國中聯合會\n會長','2019-12-29','',''),(25,'鍾毓倫','0912058969','mdgirl1314520@gmail.com','https://profile.line-scdn.net/0h8S9n3dhXZ3wEF0yOzicYKzhSaRFzOWE0fCEsT3ITME0rd3coaHYtSHQfak0sdyIqaiF7EyQXPR56','U0f6b813d3aa25b5bd5ea40a869976d9c','鍾毓倫','毓倫','金甌女中\n未加入\n常務理事','2020-01-01','',''),(27,'吳嘉蕙','0958313521','nono521313@yahoo.com.tw','https://profile.line-scdn.net/0hBDZm_OBmHWtnFDUAuqliPFtREwYQOhsjHyBUWRcWQ1pOJlhuDHdVDUIcQgkaIQ47U3dXCkAcF1ke','Ue86d955502edbb122272d633423b9f79','耶吳嘉蕙(覲雅僑之瑄恩媽咪)','嘉蕙','稻江護家\n臺北市高職學生家長會聯合會理事 \n稻江護家會長\n家長會 會長','2020-01-15','',''),(28,'你的電話','你的電話','你的電話','https://profile.line-scdn.net/0hir7r47D0Nl0KCxvrzHFJCjZOODB9JTAVcm9-Py0PPDggOiMMMzksbywCO25wb3QCNmV-PXsPbm8k','Ua42704ea8a9b578b2ca35d84e8cb98e6','李沅銘','',' 空白\n空白\n空白','2020-02-14','',''),(29,'謝岳樺','0936638162','tome1z@hotmail.com.tw','https://profile.line-scdn.net/0hNIl8ZqoREWZRQTx6igBuMW0EHwsmbxcuKSUJUnxFSVd-IlcwOCdeU3MUTlMueAVgOXBcVHxGTwYs','Uddecea0345332ad15dee371fd5ac2ff3','欣穎(岳樺/岳伶媽媽)','','龍門國中\n \n無\n學生','2020-07-14','',''),(30,'何季皇','0937058906','blackchan95@yahoo.com.tw','https://profile.line-scdn.net/ch/v2/p/u519a149beea14e9b3d72870d8a3e87ca/1355584246735','U049b59357c8fc4a2ee6889c23184f807','何季皇','','Ok (ok)\nYes \nOk ','2020-07-17','',''),(31,'吳季娟','0978020328','Meow7043@hotmail.com','https://profile.line-scdn.net/0hOlWDsZEfEENqPTk1_EdvFFZ4Hi4dExYLElMMJEptR3FCD1IXUAwMcEY7THdPBVJABglddUg9S3MV','Uda822202e4c8943354f11b55525297b3','睿娜⋯咪- Rayna','','靜心中小學\n國中\n空白','2020-07-20','',''),(32,'王妡卉','0925886078','chyang@moc.gov.tw','https://profile.line-scdn.net/0hZ2IkB-PRBR10Ei6atZ56SkhXC3ADPANVDHUZKAVFCSlaJEQYHHNIegRBX35ZcEYZT3EeKVERXn0M','Ud80ba541153041398b5c5b13820976a2','chiahua','','金陵女中\n1\n  1','2020-07-21','',''),(33,'王婷君','0935233845','tinalobsang@gmail.com','https://profile.line-scdn.net/0hvmoOZwQlKUJSNgEZVx9WFW5zJy8lGC8KKgJmJXI0dSEvB2lDalUycCc-dyF8DmdGb1FucH4zfyV9','U6185ce83862eb35fdbe90eff76a0c309','婷君(晨語，采緁媽咪）','','無\n無\n無','2020-07-21','',''),(34,'徐玉坪','0931392588','d6821395@gmail.com','https://profile.line-scdn.net/0h0x9vi7J7b1cED0U7JiwQADhKYTpzIWkffGl0NyQKYmJ7by0BOGkiMiFcMGcoPnoBMDp1OXYONDB8','U3f7b248a39f100cd9662a0c4a64dc357','Joycehsu（天睿、芮瑜）','','龍門國中\n沒有\n沒有','2020-07-21','',''),(35,'邱智瑛','0933809384','jillchiu28@gmail.com','https://profile.line-scdn.net/0hIqMx57kQFl5wATxL2DtpCUxEGDMHLxAWCDAMbQYDG2xdYVMPHmJZb1dWSD4KZlEITWYJMAdUQG9e','U00348434bddb2bd28b7eedefc95b7177','Jill- 智瑛','','Ok\nOk\nOk','2020-07-21','',''),(36,'葉宇倫','0900246585','witwitlin@hotmail.com','https://profile.line-scdn.net/0hp2gbh_O5Lx1aGwTEyEhQSmZeIXAtNSlVIio1fipIJi53LW9OYnQwe34dd3gkeG5INnwzeX4Ycy8i','U9e1fcee57b8191b91ec5acc88c911e8a','林思維','','景文中學\n我\n N','2020-07-21','',''),(37,'等一下','0970333577','Hi','https://profile.line-scdn.net/0h81ZqEmYBZx5nCE5-ZokYSVtNaXMQJmFWH20hekoKP3sdaHJBX20qfhYBOyhDMSZLXmwgfkULPC5P','U94a088c196bdaed6c5172c6543617e2f','鍾芸森','','台北興福國中\n無\n學生','2020-07-21','',''),(38,'黃元又\n','0939586511','peggy656@hotmail.com ','https://profile.line-scdn.net/0m056a8f4b725148615dbd7c871255b19131bf0a4f9a2e','Uc3576be0493f7d40e36ba1376c6c12fd','黃樂樂（元又/顯博媽媽）','','民權國中\n?\n學生','2020-07-21','',''),(39,'不好吧','不方便','plusyen75@gmail.com','https://profile.line-scdn.net/0hkhaj52IwNEdcExvVp2ZLEGBWOiorPTIPJHAvKC5HbSd2IHBGZnNyIH8baycjJnVCYid9KXhDOHR1','U5b444992c373f8f36f8c32a7fdc27642','Plus','','空白\n我沒有耶\n空白','2020-07-22','',''),(40,'高素梅','0975692787','lidiyakao@gmail.com','https://profile.line-scdn.net/0hGCl8k1fjGGxRQTDn6mhnO20EFgEmbx4kKXIHWn0VTw4sdVw_PiNVXSBCQFt-clk6PiZfX3UTTl91','U66fc8d23ffaeb84cd48652f8294c3262','龍巖 高素梅/徐綾媽','','泰北高中附設國中部\n⋯⋯\n我是 學生家長','2020-07-22','',''),(41,'學生還是家長','0920221805','kawaijessica88@gmail.com','https://profile.line-scdn.net/0hxZhOEtO3J3VVNg9E-ppYImlzKRgiGCE9LQU4GyIwcBV6BjRzaVRtRHMyK0IqUzRxbQI6Q3g0KU18','U4a48edd026bab116c44d2fe9e9994706','陳麗淑','','興雅國中\n No\nNo','2020-07-23','',''),(42,'李佳恩','0970536140','不想留','https://profile.line-scdn.net/0hQdtAa2vcDktJOCVqu0hxHHV9ACY-FggDMV4TLzs9B39iXE5NIgpBeGxrAnJmDBwefFsSf2QxBXln','U35c512c09e67e0406fb95fcc727b7d22','tjuichun','','好\n台北市國中家長聯合会\n 還有嗎?','2020-07-23','',''),(43,'林愷御','02-29218670','jason08230909@gmail.com','https://profile.line-scdn.net/0hI-G5S4iGFgJ6TD14HlRpVUYJGG8NYhBKAngMMQxPQTJffFgHQHhRNgtOTjYHf1RUQyJbZF1ITzMA','U380198ac9cea447a006909807613d5d7','Jacy H','','永和國中\n空白\n學生','2020-07-23','',''),(44,'謝益誠','0910019265','2013hai.ing@gmail.com ','https://profile.line-scdn.net/0m02ad5c4172517b2408f85dc8083e129540d08f024cde','Uc313dfc7c62f411864dff7b757995560','海燕','','大安國中\n沒有\n無','2020-07-26','',''),(45,'趙秋美','0935208329','uffi5945@gmail.com','https://profile.line-scdn.net/0hTp_vy2mBC19iDyBa-A50CF5KBTIVIQ0XGmtAMRVbBWpMPU0MDGBDbkINBmZKOE0KWDpHORMNBWkf','Uac9c56c550988edc48e0179dc6d2c109','Theresa(語辰、語希、子皓媽咪）','','中正國中\n無\n無','2020-07-28','',''),(46,'林雅欣','0921939237','newjasminelin@gmail.com','https://profile.line-scdn.net/0m031f2cdb72517a331ddc9e0ed520744f5e19ad33b4d2','Udb17c7cd9f95ae74cf9d2a1c712de5eb','雅欣jasmine','','空白\n空白\n家管','2020-08-14','',''),(47,'請問要家長的名字還是孩子的名字?','0927869186','meryle825@gmail.com','https://profile.line-scdn.net/0hLK83AKheE2QFSjtREo5sMzkPHQlyZBUsfXgOAClLT10pLwM3PipUC3NKTQAsfFJlPX5dC3NJHgEr','U8c7e8771710038f60ba1cd4bcc49025d','Meryle劉彥秀(墀&樂)','','龍門國中\n沒有\nno','2020-08-18','',''),(48,'葉于禎','0932113941','iromeroad@gmail.com','https://profile.line-scdn.net/0hHDKsxiiYF2t2Cj94I2RoPEpPGQYBJBEjDmwLBVACTV9TPVM1Q21bBVtZSQxealRvSWRfBQEKHV5e','U9d2992002009daed252730fd22695435','羅曉露','','芳和實驗中學\n無\n無','2020-08-22','','');
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
  `generation` int(11) NOT NULL DEFAULT '0' COMMENT '第幾屆',
  `serialz` smallint(6) NOT NULL DEFAULT '0' COMMENT '得票數',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personassns`
--

LOCK TABLES `personassns` WRITE;
/*!40000 ALTER TABLE `personassns` DISABLE KEYS */;
INSERT INTO `personassns` VALUES (1,'U0c181ee00f74141895ea46941cf0a3b1',1,8,2019,1,0,0),(2,'U0c181ee00f74141895ea46941cf0a3b1',2,11,2019,1,0,0),(3,'U0c181ee00f74141895ea46941cf0a3b1',3,11,2019,1,0,0),(5,'U63f3316d012a7808150d590d99637695',3,9,2019,1,0,0),(7,'Ubdbadee2f33d7546253110a1913d2d7a',3,9,2019,1,0,0),(9,'U9ba6dab540310be64b1f42402ff4a833',3,8,2019,1,0,0),(10,'U9ba6dab540310be64b1f42402ff4a833',3,8,2018,1,0,0),(11,'U330fe8dc57b7fc319bb7968be3fd0bb4',3,10,2019,1,0,0),(12,'U330fe8dc57b7fc319bb7968be3fd0bb4',2,10,2019,1,0,0),(14,'U87e901072c956f70109d724e3e7bdf49',3,7,2019,0,0,0),(15,'U2f41f72e0699f5e31c348e75a93f1e1b',3,4,2019,0,0,0),(16,'Ubfcc1c32d1fe9b3eafbc778a2a9f6505',3,6,2019,1,0,0),(17,'Ub3f16b3fd6ab9d4c31d47b494df70239',3,4,2019,1,0,0),(18,'Ub3f16b3fd6ab9d4c31d47b494df70239',3,9,2019,1,33,0),(19,'Ubfcc1c32d1fe9b3eafbc778a2a9f6505',39,14,2019,1,0,0),(20,'U742a1d73d2013d9e69a34e5516b72ae8',3,2,2019,1,18,0),(21,'U742a1d73d2013d9e69a34e5516b72ae8',40,15,2019,1,0,0),(22,'U4a23649c91ec4601e7d2a592f093b0ab',3,14,2019,0,0,0),(23,'Ud4dab9fe8ffaa50e776c985b4e610ac4',3,5,2019,0,0,0),(24,'Ube1a62e8d1d317aea15ca9b1095b538b',3,7,2019,0,0,0),(25,'U330fe8dc57b7fc319bb7968be3fd0bb4',3,10,2018,0,0,0),(26,'U63f3316d012a7808150d590d99637695',3,9,2018,0,0,0),(27,'U9ba6dab540310be64b1f42402ff4a833',3,8,2017,0,0,0),(28,'U742a1d73d2013d9e69a34e5516b72ae8',40,14,2018,0,0,0),(29,'U1ddcdf1a8fa3b24dc92cd4597603af43',41,14,2019,0,0,0),(30,'Ue300c90bc3619b3e659f81d16333a812',42,14,2019,0,0,0),(31,'U950414eaea1291a6d5dd2430e74f4b58',3,1,2019,0,0,0),(32,'U950414eaea1291a6d5dd2430e74f4b58',43,14,2018,0,0,0),(33,'U21edeab9165678f28da71f557ac097ae',3,9,2019,0,0,0),(34,'U21edeab9165678f28da71f557ac097ae',44,14,2018,0,0,0),(35,'U074a4d9f9b7d6b5f6e2d0577fd032e1d',3,0,2019,0,0,0),(36,'U4fd96161a0cd4db47b30524664eca4df',3,0,2019,0,0,0),(37,'U4fd96161a0cd4db47b30524664eca4df',1,7,2019,1,18,27),(38,'U0f6b813d3aa25b5bd5ea40a869976d9c',1,4,2020,0,18,23),(39,'U4a23649c91ec4601e7d2a592f093b0ab',32,15,2019,0,0,0),(40,'U3f637bc403e15d8868152eeaffc9dc70',3,14,2019,0,0,0),(41,'U763c786462acef8b458fb3bc14970b42',38,16,2019,0,0,0),(42,'U0f6b813d3aa25b5bd5ea40a869976d9c',1,17,2019,0,18,0),(43,'Ue86d955502edbb122272d633423b9f79',1,6,2019,1,18,18),(44,'Ue86d955502edbb122272d633423b9f79',22,14,2019,0,0,0),(45,'Uda822202e4c8943354f11b55525297b3',3,0,2020,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordz`
--

LOCK TABLES `recordz` WRITE;
/*!40000 ALTER TABLE `recordz` DISABLE KEYS */;
INSERT INTO `recordz` VALUES (1,'https://drive.google.com/file/d/1ILxMb8hfvlGBy0z9L45ngS0qVy9mkvyH/view?usp=sharing',3,0,0,18,'18屆第一次會員代表大會會議紀錄','2019-11-24'),(2,'https://drive.google.com/file/d/1O_Uyrw1E14lgWUW4vyDWiAQ8Y2XOhf1J/view?usp=sharing',1,0,0,18,'18屆第一次常務理監事會議紀錄','2019-11-18'),(3,'https://drive.google.com/file/d/1z2-JJghlvKkQyA2Qlp0n7KqJTuB0VS76/view?usp=sharing',1,4,0,18,'18屆第一次特教、公關委員會聯席會議記錄','2019-11-25'),(4,'https://drive.google.com/file/d/1z2-JJghlvKkQyA2Qlp0n7KqJTuB0VS76/view?usp=sharing',1,3,0,18,'18屆第一次特教、公關委員會聯席會議記錄','2019-11-25'),(5,'https://drive.google.com/file/d/14two-b02ganqXXovMrTDKPqYMiI_KM46/view?usp=sharing',1,0,0,18,'18屆第一次理監事聯席會議會議記錄','2019-12-02'),(6,'https://drive.google.com/file/d/156bCK1VY29ctdlzH4gRX88DEQKMmf_zW/view?usp=sharing',1,5,0,18,'18屆第二次法政委員會會議紀錄','2019-12-26'),(7,'https://drive.google.com/file/d/1wX_euJPHH-ndjsDZEdW2pmK3Ek9531iH/view?usp=sharing',1,5,0,18,'18屆第三次法政委員會會議紀錄','2020-01-30'),(8,'https://drive.google.com/file/d/1xD80YupbgUpphvWLiGHFOMcJG1ABaUWg/view?usp=sharing',1,1,0,18,'18屆第一次教育委員會會議紀錄 ','2019-12-02'),(9,'https://drive.google.com/file/d/1mlEWIaj_eqIe4Vq7FUNOJCpRKyEXSHwI/view?usp=sharing',1,3,0,18,'18屆第二次公關委員會會議紀錄','2020-02-10'),(10,'https://drive.google.com/file/d/19r-__Fyt5PbleVgODHeqgf97yWnGMCXi/view?usp=sharing',1,2,0,18,'18屆第一次技職委員會工作計畫會議紀錄','2019-12-02'),(11,'https://drive.google.com/file/d/1NqPLdppRMp17x5iv0xCs3nnhjHMO2pCp/view?usp=sharing',1,1,0,18,'18屆第二次教育委員會會議紀錄 ','2020-02-10'),(12,'https://drive.google.com/file/d/1TxVzwDQpuS33RodlvAZ5hODmp2d4AGTU/view?usp=sharing',1,5,0,18,'18屆第一次法政委員會會議紀錄','2019-12-02'),(13,'https://drive.google.com/file/d/14Ubx7acW13poNdERNIDbWY2-QFgfU5fg/view?usp=sharing',1,6,0,18,'18屆第一次資訊委員會會議紀錄','2019-12-02'),(14,'https://drive.google.com/file/d/1Zz0Um2WKCy5FST_8rMcsq870rkmLk9az/view?usp=sharing',1,5,0,18,'【教育局】修正台北市學生家長會相關法規第2次研商會議會議紀錄','2019-12-27'),(15,'https://drive.google.com/file/d/1zIZwlSa1gbPZJn41anp6aIpkhPx_ughm/view?usp=sharing',1,3,0,18,'孔廟包高中活動一籌會議','2020-02-29'),(16,'https://drive.google.com/file/d/1pD-Nf-iB65Qz0rgb5vNy-AR95mpUg7eX/view?usp=sharing',1,5,0,18,'【教育局】修正台北市學生家長會相關法規第3次研商會議會議紀錄','2020-02-21'),(17,'https://drive.google.com/file/d/1KSVEyZ_2mmyf-JD6bS11D8IevNkzZxyp/view?usp=sharing',1,1,0,18,'18屆第三次教育委員會會議紀錄 ','2020-03-25'),(18,'https://drive.google.com/file/d/1eYmLE98l5xAp9Rfp25pHiuXlbQoNnIzp/view?usp=sharing',1,0,0,18,'18屆第二次理監事聯席會議會議記錄','2020-03-27'),(19,'https://drive.google.com/file/d/1hJhvSVB5AJiWT7PI8_QKMLHdO3ccUxLn/view?usp=sharing',1,3,0,18,'孔廟包高中活動二籌會議紀錄','2020-03-27'),(20,'https://drive.google.com/file/d/1BmUV5o-E5cmu995h7LxUl89o2egHb5PU/view?usp=sharing',1,3,0,18,'孔廟包高中活動三籌會議紀錄','2020-04-08'),(21,'https://drive.google.com/file/d/1aS659MDfWoC2VyHkWyfgFtH1qQds6t-N/view?usp=sharing',1,1,0,18,'18屆第四次教育委員會會議紀錄 ','2020-05-13'),(22,'https://drive.google.com/file/d/1mkYJ8XFQRsM5tpyYQyPhhNOuiMaiaqeE/view?usp=sharing',1,3,0,18,'18屆第三次公關委員會會議會議','2020-07-06'),(23,'https://drive.google.com/file/d/1mkYJ8XFQRsM5tpyYQyPhhNOuiMaiaqeE/view?usp=sharing',1,4,0,18,'18屆第二次特教、公關委員會聯席會議記錄','2020-07-06'),(24,'https://drive.google.com/file/d/1c-JCYau8I7OMtg2bJ4uRfIR89PWbqbdj/view?usp=sharing',1,0,0,18,'18屆第三次理監事聯席會議會議記錄','2020-08-12'),(25,'https://drive.google.com/file/d/1F8edPEl0R81tJILBOp5cH75oUEHye3hb/view?usp=sharing',1,1,0,18,'18屆第五次教育委員會會議紀錄 ','2020-09-24'),(26,'https://drive.google.com/file/d/1JNtWmGZTK3BNehz4odCroPHh4ov605LF/view?usp=sharing',1,0,0,18,'18屆第四次理監事聯席會議會議記錄','2020-10-29'),(27,'https://drive.google.com/file/d/1ZRtiYLxdVnANuLZ3-kSZDF_OsjKK7YR9/view?usp=sharing',1,0,0,19,'19屆第一次會員代表大會會議記錄','2020-11-22'),(28,'https://drive.google.com/file/d/1jqlAZecVa_3Qej-HPs-rT5S3qd7JMiNt/view?usp=sharing',5,0,0,8,'第一次會員代表大會會議記錄','2018-12-03'),(29,'https://drive.google.com/file/d/1VN_v7YehECujQNvrIr9m8L44_u8w_XOU/view?usp=sharing',5,2,0,8,'第一次理事會會議記錄','2018-12-03'),(30,'https://drive.google.com/file/d/1i9p5N2pxAysF-BPAM4QnTHahFEJyYamF/view?usp=sharing',5,3,0,8,'第一次監事會會議記錄','2018-12-03'),(31,'https://drive.google.com/file/d/1gQMByhsmQEcrEDVafqWN4aQkulNuC-wc/view?usp=sharing',5,1,0,8,'第一次常務理監事暨授證籌備會','2019-01-20'),(32,'https://drive.google.com/file/d/1Kir0gYTSa7u0W9_LfHpAUSI-AIHPw1vP/view?usp=sharing',5,4,0,8,'第一次理監事聯席會議','2019-03-10'),(33,'https://drive.google.com/file/d/1AmD392fKo3todJTovvgF1ZVP69tTko7W/view?usp=sharing',5,4,0,8,'第二次理監事聯席會議','2019-05-18'),(34,'https://drive.google.com/file/d/1aecNffgPrzbbK-cMZazn9AsbN7jZsmrK/view?usp=sharing',5,4,0,8,'第三次理監事聯席會議','2019-09-22'),(35,'https://drive.google.com/file/d/1L0Qocm3WEC6qGTvFEz4DS0wzceWe6_wz/view?usp=sharing',5,4,0,8,'第四次理監事聯席會議','2019-11-16'),(36,'https://drive.google.com/file/d/1LaNHvKA9tXjqsEnVtKgTFQixb0bfiNXL/view?usp=sharing',5,3,0,8,'第二次監事會會議記錄','2019-12-21'),(37,'https://drive.google.com/file/d/1-uNVf0Cdr2Tu3kRko6ZMcBH0riFIDXRq/view?usp=sharing',5,0,0,8,'第二次會員代表大會會議記錄','2019-12-28'),(38,'https://drive.google.com/file/d/16eWVSBtv5TYsk2sQ-swg9T7teO4jZt8X/view?usp=sharing',5,3,0,8,'第三次監事會會議記錄','2020-01-30'),(39,'https://drive.google.com/file/d/1Ny1ZYHPUqBh1-JUlXPzTZBL5_JnymqiZ/view?usp=sharing',5,4,0,8,'第五次理監事聯席會議','2020-07-11'),(40,'https://drive.google.com/file/d/1pysOJ0e_UVqsaaoeYIStJy7JXKOO6RB2/view?usp=sharing',5,4,0,8,'第六次理監事聯席會議','2020-08-22'),(41,'https://drive.google.com/file/d/1tgdOHMbLxl04WY6GI-INiAmUcCD0gfem/view?usp=sharing',5,4,0,8,'第七次理監事聯席會議','2020-10-25'),(42,'https://drive.google.com/file/d/1pHts2mHIGgai50wrCWo2FNa0NaQerpnL/view?usp=sharing',5,1,0,8,'第一次常務理事會','2020-11-11');
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
  `abbr` varchar(20) NOT NULL DEFAULT '"0"' COMMENT '縮寫',
  `sortSerial` int(11) NOT NULL DEFAULT '0',
  `cityID` int(11) NOT NULL DEFAULT '1',
  `imgUrl` varchar(254) NOT NULL COMMENT '學校logo',
  `address` varchar(254) NOT NULL,
  `isPrivate` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)公立 1)私立',
  `typez` smallint(6) NOT NULL DEFAULT '0' COMMENT '0)普通型高級中等學校 1)技術型高級中等學校 2)綜合型高級中等學校 3)特殊教育學校 4)國際學校 5)大學',
  `menoz` text NOT NULL,
  PRIMARY KEY (`schoolID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'大安高工','\"0\"',1,1,'https://i.imgur.com/8vamSNx.png','10664 臺北市大安區復興南路2段52號',0,1,'技術高中部\r\n機械群（機械科、製圖科、綜合高中部-機械技術學程）\r\n動力機械群（汽車科）\r\n電機電子群（電子科、電機科、資訊科、控制科、冷凍空調科、綜合高中部-資訊電子學程、綜合高中部-電機控制學程）\r\n土木建築群（建築科、綜合高中部-建築技術學程）\r\n設計群（圖文傳播科（原印刷科））\r\n綜合高中部\r\n進修部（電子科、電機科、機械科、汽車科、建築科、圖文傳播科）\r\n特殊教育（綜合職能科(108年度前)、餐飲服務科(108年度起)）'),(2,'松山工農','\"0\"',2,1,'https://i.imgur.com/lnH3ueP.png','11060 臺北市信義區忠孝東路5段236巷15號',0,1,'電機電子群（電機科、電子科、資訊科）\r\n機械群（機械科）\r\n動力機械群（汽車科）\r\n化工群（化工科）\r\n農業群（園藝科）\r\n食品群（食品加工科）\r\n綜合高中\r\n綜合職能科'),(3,'南港高工','\"0\"',3,1,'https://i.imgur.com/iDno1ek.png','11579 臺北市南港區興中路29號',0,1,'重機科、模具科、鑄造科、電子科、土木科、建築科、汽車科、冷凍空調科、電機科、機械科、水電技術科、汽車修護科、機械加工科、綜合高中、體育班、綜合職能班（資源班）門市服務科'),(4,'松山家商','\"0\"',4,1,'https://i.imgur.com/BTyXnpG.png','11080 臺北市信義區松山路655號',0,1,''),(5,'內湖高工','\"0\"',5,1,'https://i.imgur.com/KtUZ8Fz.png','11493 臺北市內湖區內湖路一段520號',0,1,'電機科、電子科、資訊科、控制科、冷凍空調科、應用外語科（英文組）、綜合職能科、體育班'),(6,'木柵高工','\"0\"',6,1,'https://i.imgur.com/TTcQXXu.png','11656 臺北市文山區木柵路四段77號',0,1,'鑄造科、配管科、電機科、冷凍科、電子科、機械科、模具科、製圖科、綜合高中、綜合職能科'),(7,'士林高商','\"0\"',7,1,'','11165 臺北市士林區士商路150號',0,1,'商業經營科（含進修部）、會計事務科、應用外語科（含進修部）、國際貿易科（含進修部）、資料處理科、廣告設計科、綜合職能科、體育班'),(8,'惇敘工商','\"0\"',7,1,'','',0,1,''),(9,'育達商職','\"0\"',9,1,'','',0,1,''),(10,'稻江商職','\"0\"',10,1,'','',0,1,''),(11,'喬治工商','\"0\"',11,1,'','',0,1,''),(12,'協和祐德','\"0\"',12,1,'','',0,1,''),(13,'東方工商','\"0\"',13,1,'','',0,1,''),(14,'開南商工','\"0\"',14,1,'','',0,1,''),(15,'稻江護家','\"0\"',15,1,'','',0,1,''),(16,'華岡藝校','\"0\"',16,1,'','',0,1,''),(17,'開平餐飲','\"0\"',17,1,'','',0,1,''),(18,'金甌女中','\"0\"',18,1,'','',0,1,''),(19,'景文高中','\"0\"',19,1,'','',0,1,'高職部：資訊科、商經科、應英科、廣設科、室設科\r\n高中部：文理資優班、國際語文班、數理資優班、文法財管班、國際領袖實驗班'),(20,'泰北高中','\"0\"',20,1,'','',0,1,''),(21,'滬江高中','\"0\"',21,1,'','',0,1,''),(22,'強恕高中','\"0\"',22,1,'','',0,1,''),(23,'幼華高中','\"0\"',23,1,'','',0,1,''),(24,'私立大同','\"0\"',24,1,'','',0,1,''),(25,'南華高中','\"0\"',26,1,'','',0,1,''),(26,'志仁高中','\"0\"',26,1,'','',0,1,''),(27,'文山特教','\"0\"',28,1,'','',0,1,''),(28,'啟明學校','\"0\"',29,1,'','',0,1,''),(29,'啟智學校','\"0\"',30,1,'','',0,1,''),(30,'啟聰學校','\"0\"',31,1,'','',0,1,''),(31,'靜修女中','\"0\"',32,1,'','',0,1,''),(32,'亞東技術學院','\"0\"',999,2,'https://i.imgur.com/ZrbAZp4.jpg','220新北市板橋區四川路二段58號',1,5,''),(33,'德明財經科技大學','\"0\"',999,2,'https://i.imgur.com/G5PRhNQ.png','114台北市內湖區環山路一段56號',1,5,'https://i.imgur.com/LjQSMrA.png'),(34,'景文科技大學','\"0\"',999,2,'https://i.imgur.com/E0o4gWn.png','231新北市新店區安忠路99號',1,5,'https://i.imgur.com/SzhxxNV.jpg'),(35,'聖約翰科技大學','\"0\"',999,2,'https://i.imgur.com/mfgyYH8.png','251新北市淡水區淡金路四段499號',1,5,'https://i.imgur.com/0xA9hZ6.jpg'),(36,'中國科技大學','\"0\"',999,2,'https://i.imgur.com/p2011zz.jpg','116台北市文山區興隆路三段56號',1,5,'https://i.imgur.com/0xA9hZ6.jpg\r\nhttps://i.imgur.com/mfgyYH8.png'),(37,'龍華科技大學','\"0\"',999,2,'https://i.imgur.com/f5qaN4e.jpg','桃園市龜山區萬壽路一段300號',1,5,'https://i.imgur.com/0xA9hZ6.jpg\r\nhttps://i.imgur.com/mfgyYH8.png'),(38,'東南科技大學','\"0\"',999,2,'','222新北市深坑區北深路三段152號',1,5,''),(39,'誠正國中','\"0\"',1,1,'','臺北市南港區富康街1巷24號',0,1,'');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youngerboss`
--

DROP TABLE IF EXISTS `youngerboss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youngerboss` (
  `ybID` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(10) NOT NULL,
  `rschool` varchar(30) NOT NULL COMMENT '就讀學校',
  `name` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `lineID` varchar(254) NOT NULL,
  PRIMARY KEY (`ybID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youngerboss`
--

LOCK TABLES `youngerboss` WRITE;
/*!40000 ALTER TABLE `youngerboss` DISABLE KEYS */;
/*!40000 ALTER TABLE `youngerboss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30  6:30:36
