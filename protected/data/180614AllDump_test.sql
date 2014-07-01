CREATE DATABASE  IF NOT EXISTS `bbdb_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bbdb_test`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: bbdb
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `authassignment`
--

DROP TABLE IF EXISTS `authassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authassignment`
--

LOCK TABLES `authassignment` WRITE;
/*!40000 ALTER TABLE `authassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `authassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authitem`
--

DROP TABLE IF EXISTS `authitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authitem`
--

LOCK TABLES `authitem` WRITE;
/*!40000 ALTER TABLE `authitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `authitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authitemchild`
--

DROP TABLE IF EXISTS `authitemchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authitemchild`
--

LOCK TABLES `authitemchild` WRITE;
/*!40000 ALTER TABLE `authitemchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `authitemchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ad`
--

DROP TABLE IF EXISTS `tbl_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` text,
  `html` text,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ad`
--

LOCK TABLES `tbl_ad` WRITE;
/*!40000 ALTER TABLE `tbl_ad` DISABLE KEYS */;
INSERT INTO `tbl_ad` VALUES (1,'פרסום ראשון','פרסום ראשון','<h1 dir=\"rtl\"><span style=\"font-family: \'arial black\'; font-size: 36pt; color: #3366ff;\"><span style=\"color: #ffeecc; font-family: verdana;\">מני נוריאל</span></span></h1>\r\n<hr style=\"height: 3px; width: 100%;\" size=\"3\" width=\"100%\" />\r\n<p dir=\"rtl\"><span style=\"font-size: xx-large;\">מיום ראשון אני אצא בתשע וחצי, לא להתקשר אלי בפרטי. אני זמין באי-מייל או בבית.</span></p>\r\n<p>&nbsp;</p>','2014-06-02 11:42:42',1,'2014-06-02 15:02:53',1),(2,'חדש','חדש','<h1 dir=\"rtl\">כאן נפרסם מידע עבור הבניין:</h1>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul style=\"text-align: right; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; line-height: normal; text-transform: capitalize; font-weight: bolder; font-variant: normal; color: #2ea9d0; text-decoration: none; word-spacing: normal; letter-spacing: 1px; vertical-align: top; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #bc42b5; border-top-style: groove; border-top-width: thin; border-top-color: #bc42b5; list-style-type: square; background-color: #cdcdca; background-position: 50% 50%; background-repeat: no-repeat;\" dir=\"rtl\">\r\n<li><span>חובות</span></li>\r\n<li><span>תיקונים</span></li>\r\n<li><span>תשלומים</span></li>\r\n<li><span>לוח פגישות</span></li>\r\n</ul>','2014-06-02 13:55:12',1,'2014-06-02 13:55:12',1),(3,'חלב','חלב','<p><img style=\"vertical-align: middle;\" dir=\"rtl\" src=\"http://localhost/myyii/upload/image/flickr-2182822155-original.jpg\" alt=\"\" width=\"400\" height=\"300\" /></p>','2014-06-03 08:56:17',1,'2014-06-03 08:56:17',1);
/*!40000 ALTER TABLE `tbl_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_client`
--

DROP TABLE IF EXISTS `tbl_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `os` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_client`
--

LOCK TABLES `tbl_client` WRITE;
/*!40000 ALTER TABLE `tbl_client` DISABLE KEYS */;
INSERT INTO `tbl_client` VALUES (1,'PC','Win7','2014-06-02 11:30:36',1,'2014-06-02 11:30:36',1);
/*!40000 ALTER TABLE `tbl_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_monitor`
--

DROP TABLE IF EXISTS `tbl_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_monitor`
--

LOCK TABLES `tbl_monitor` WRITE;
/*!40000 ALTER TABLE `tbl_monitor` DISABLE KEYS */;
INSERT INTO `tbl_monitor` VALUES (1,'SyncMaster 943BM',19,'2014-06-02 11:30:13',1,'2014-06-02 11:30:13',1);
/*!40000 ALTER TABLE `tbl_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_province`
--

DROP TABLE IF EXISTS `tbl_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_province` (
  `id` int(4) NOT NULL DEFAULT '0',
  `name_heb` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `name_eng` varchar(23) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_provincecol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_province`
--

LOCK TABLES `tbl_province` WRITE;
/*!40000 ALTER TABLE `tbl_province` DISABLE KEYS */;
INSERT INTO `tbl_province` VALUES (1,'ירושלים','Jerusalem',NULL),(2,'צפון','North',NULL),(3,'חיפה','Haifa',NULL),(4,'מרכז','Center',NULL),(5,'תל אביב','Tel Aviv',NULL),(6,'דרום','South',NULL),(7,'יהודה ושומרון','Yehuda Shomron',NULL);
/*!40000 ALTER TABLE `tbl_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_province_ad_assignment`
--

DROP TABLE IF EXISTS `tbl_province_ad_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_province_ad_assignment` (
  `province_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `element_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`province_id`,`ad_id`),
  UNIQUE KEY `ad_province_element` (`ad_id`,`province_id`,`element_id`),
  CONSTRAINT `FK_ad_province` FOREIGN KEY (`ad_id`) REFERENCES `tbl_ad` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_province_ad_assignment`
--

LOCK TABLES `tbl_province_ad_assignment` WRITE;
/*!40000 ALTER TABLE `tbl_province_ad_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_province_ad_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_screen`
--

DROP TABLE IF EXISTS `tbl_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text,
  `monitor_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `yeshuv_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_screen_monitor` (`monitor_id`),
  KEY `FK_screen_client` (`client_id`),
  CONSTRAINT `FK_screen_client` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_screen_monitor` FOREIGN KEY (`monitor_id`) REFERENCES `tbl_monitor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_screen`
--

LOCK TABLES `tbl_screen` WRITE;
/*!40000 ALTER TABLE `tbl_screen` DISABLE KEYS */;
INSERT INTO `tbl_screen` VALUES (1,'לזרוב 4','לזרוב 4',1,1,8300,'2014-06-02 11:31:22',1,'2014-06-02 11:31:22',1);
/*!40000 ALTER TABLE `tbl_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_screen_ad_assignment`
--

DROP TABLE IF EXISTS `tbl_screen_ad_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_screen_ad_assignment` (
  `screen_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `element_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`screen_id`,`ad_id`),
  UNIQUE KEY `ad_screen_element` (`ad_id`,`screen_id`,`element_id`),
  CONSTRAINT `FK_ad_screen` FOREIGN KEY (`ad_id`) REFERENCES `tbl_ad` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_screen_ad` FOREIGN KEY (`screen_id`) REFERENCES `tbl_screen` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_screen_ad_assignment`
--

LOCK TABLES `tbl_screen_ad_assignment` WRITE;
/*!40000 ALTER TABLE `tbl_screen_ad_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_screen_ad_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'nurielmeni@gmail.com','nurielmeni','9e49573be4504d044c7a62bd203bbe6d','2014-06-08 14:26:51',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_yeshuv`
--

DROP TABLE IF EXISTS `tbl_yeshuv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_yeshuv` (
  `id` int(4) NOT NULL DEFAULT '0',
  `name_heb` varchar(36) DEFAULT NULL,
  `name_eng` varchar(25) DEFAULT NULL,
  `province_id` int(1) DEFAULT NULL,
  `population` int(6) DEFAULT NULL,
  `form` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `tbl_yeshuv_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `tbl_province` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_yeshuv`
--

LOCK TABLES `tbl_yeshuv` WRITE;
/*!40000 ALTER TABLE `tbl_yeshuv` DISABLE KEYS */;
INSERT INTO `tbl_yeshuv` VALUES (7,'שחר','SHAHAR',6,770,310),(10,'תירוש','TIROSH',1,453,310),(11,'ניר ח\"ן','NIR HEN',6,467,310),(13,'חצבה','HAZEVA',6,456,310),(15,'נועם','NO\'AM',6,342,310),(16,'בית ניר','BET NIR',6,433,330),(18,'שדה משה','SEDE MOSHE',6,669,310),(21,'באר אורה','BE\'ER ORA',6,299,370),(22,'מקווה ישראל','MIQWE YISRA\'EL',5,254,340),(23,'אמציה','AMAZYA',6,523,320),(24,'לכיש','LAKHISH',6,692,310),(26,'ראש פינה','ROSH PINNA',2,2691,190),(27,'שדות מיכה','SEDOT MIKHA',1,350,310),(28,'מזכרת בתיה','MAZKERET BATYA',4,10088,170),(29,'יסוד המעלה','YESUD HAMA\'ALA',2,1520,350),(31,'אופקים','OFAQIM',6,24366,160),(32,'עוצם','OZEM',6,539,310),(33,'בת שלמה','BAT SHELOMO',3,552,310),(35,'גדות','GADOT',2,383,330),(36,'שדה דוד','SEDE DAWID',6,376,310),(37,'איתן','ETAN',6,410,310),(39,'גפן','GEFEN',1,359,310),(41,'אליכין','ELYAKHIN',4,3109,190),(43,'מטולה','METULA',2,1568,350),(44,'זוהר','ZOHAR',6,330,310),(46,'יבנאל','YAVNE\'EL',2,3686,190),(47,'כפר תבור','KEFAR TAVOR',2,3006,190),(48,'מנחמיה','MENAHEMYA',2,999,350),(49,'אילנייה','ILANIYYA',2,467,310),(52,'לוזית','LUZIT',1,421,310),(53,'עתלית','ATLIT',3,5797,180),(55,'נוגה','NOGAH',6,486,310),(57,'כנרת (קבוצה)','KINNERET(QEVUZA)',2,625,330),(58,'מצפה','MIZPA',2,146,350),(59,'נחושה','NEHUSHA',1,637,310),(62,'דגניה א\'','DEGANYA ALEF',2,574,330),(63,'כנרת (מושבה)','KINNERET(MOSHAVA)',2,617,350),(64,'יד רמב\"ם','YAD RAMBAM',4,947,310),(65,'מגדל','MIGDAL',2,1559,350),(66,'מרחביה (קיבוץ)','MERHAVYA(QIBBUZ)',2,1182,330),(67,'אור הנר','OR HANER',6,466,330),(69,'ניר עוז','NIR OZ',6,336,330),(70,'אשדוד','ASHDOD',6,212278,130),(71,'אשבול','ESHBOL',6,347,310),(72,'גן שמואל','GAN SHEMU\'EL',3,839,330),(74,'עין הוד','EN HOD',3,536,370),(76,'כפר גלעדי','KEFAR GIL\'ADI',2,658,330),(77,'איילת השחר','AYYELET HASHAHAR',2,1613,330),(78,'קריית ענבים','QIRYAT ANAVIM',1,422,330),(79,'דגניה ב\'','DEGANYA BET',2,600,330),(80,'נהלל','NAHALAL',2,870,310),(82,'עין חרוד (מאוחד)','EN HAROD(ME\'UHAD)',2,740,330),(84,'תל יוסף','TEL YOSEF',2,495,330),(85,'כפר יחזקאל','KEFAR YEHEZQEL',2,1005,310),(86,'גבע','GEVA',2,612,330),(88,'כרם בן שמן','KEREM BEN SHEMEN',4,82,350),(89,'עין חרוד (איחוד)','EN HAROD (IHUD)',2,525,330),(90,'חפצי-בה','HEFZI-BAH',2,413,330),(92,'גיניגר','GINNEGAR',2,580,330),(94,'בלפוריה','BALFURYA',2,406,310),(95,'בית אלפא','BET ALFA',2,1621,330),(96,'יגור','YAGUR',3,1490,330),(97,'מרחביה (מושב)','MERHAVYA(MOSHAV)',2,651,310),(98,'כפר מל\"ל','KEFAR MALAL',4,330,310),(99,'מצפה רמון','MIZPE RAMON',6,4915,190),(102,'מאיר שפיה','ME\'IR SHEFEYA',3,265,340),(103,'תל עדשים','TEL ADASHIM',2,1334,310),(104,'מזרע','MIZRA',2,603,330),(106,'כפר גדעון','KEFAR GID\'ON',2,276,310),(107,'כפר סילבר','KEFAR SILVER',6,222,340),(112,'כפר חסידים א\'','KEFAR HASIDIM ALEF',3,494,310),(113,'אדירים','ADDIRIM',2,235,310),(115,'חופית','HOFIT',4,742,350),(122,'רמת ישי','RAMAT YISHAY',2,7113,180),(126,'שריד','SARID',2,776,330),(127,'רמת רחל','RAMAT RAHEL',1,461,330),(128,'גת רימון','GAT RIMMON',4,277,350),(130,'משמר העמק','MISHMAR HAEMEQ',2,1170,330),(132,'כפר ברוך','KEFAR BARUKH',2,413,310),(133,'גבת','GEVAT',2,708,330),(134,'יפעת','YIF\'AT',2,886,330),(135,'רמת דוד','RAMAT DAWID',2,452,330),(139,'עין שמר','EN SHEMER',3,528,330),(140,'כפר יהושע','KEFAR YEHOSHUA',2,1012,310),(141,'ברק','BARAQ',2,400,310),(142,'שדה יעקב','SEDE YA\'AQOV',2,1307,310),(143,'בית זרע','BET ZERA',2,610,330),(144,'גן שלמה','GAN SHELOMO',4,463,330),(145,'גדיש','GADISH',2,390,310),(146,'דבורה','DEVORA',2,216,310),(147,'גבעת ברנר','GIV\'AT BRENNER',4,2506,193),(154,'תל מונד','TEL MOND',4,10818,170),(155,'באר טוביה','BE\'ER TOVIYYA',6,897,310),(156,'עיינות','AYANOT',4,240,340),(157,'עין ורד','EN WERED',4,1313,310),(158,'נען','NA\'AN',4,1387,330),(159,'בית חנן','BET HANAN',4,529,310),(160,'חולדה','HULDA',4,404,330),(162,'חירות','HERUT',4,1282,310),(163,'תימורים','TIMMORIM',6,821,320),(164,'מלאה','MELE\'A',2,335,310),(165,'ניר יפה','NIR YAFE',2,624,310),(166,'גן יבנה','GAN YAVNE',4,20460,160),(167,'עין החורש','EN HAHORESH',4,733,330),(168,'כפר יונה','KEFAR YONA',4,19500,170),(170,'כפר יעבץ','KEFAR YA\'BEZ',4,607,310),(171,'פרדסייה','PARDESIYYA',4,5460,180),(173,'גבעת חיים (מאוחד)','GIV\'AT HAYYIM(ME\'UHAD)',4,966,330),(174,'נטעים','NETA\'IM',4,560,310),(175,'אביחיל','AVIHAYIL',4,1375,310),(176,'אפיקים','AFIQIM',2,1427,330),(177,'כפר ביל\"ו','KEFAR BILU',4,1285,310),(178,'רמת יוחנן','RAMAT YOHANAN',3,842,330),(182,'אבן יהודה','EVEN YEHUDA',4,11853,170),(183,'ירקונה','YARQONA',4,406,310),(184,'רמת הכובש','RAMAT HAKOVESH',4,961,330),(186,'נעורים','NE\'URIM',4,306,340),(187,'כפר הס','KEFAR HESS',4,1492,310),(188,'אשדות יעקב (מאוחד)','ASHDOT YA\'AQOV(ME\'UHAD)',2,404,330),(189,'כפר פינס','KEFAR PINES',3,874,310),(190,'כפר ויתקין','KEFAR VITKIN',4,2026,191),(191,'הדר עם','HADAR AM',4,489,310),(192,'כפר החורש','KEFAR HAHORESH',2,557,330),(193,'כפר חיים','KEFAR HAYYIM',4,590,310),(194,'משמר השרון','MISHMAR HASHARON',4,489,330),(195,'קדימה-צורן','QADIMA-ZORAN',4,17602,170),(196,'גיבתון','GIBBETON',4,287,350),(197,'מעברות','MA\'BAROT',4,961,330),(198,'צופית','ZOFIT',4,1282,310),(199,'אשדות יעקב (איחוד)','ASHDOT YA\'AQOV(IHUD)',2,754,330),(200,'בית ינאי','BET YANNAY',4,408,310),(202,'בית עובד','BET OVED',4,275,310),(204,'אלישיב','ELYASHIV',4,628,310),(205,'חגלה','HOGLA',4,788,310),(206,'רמות השבים','RAMOT HASHAVIM',4,1597,350),(207,'גבעת ח\"ן','GIV\'AT HEN',4,384,310),(208,'מוצא עילית','MOZA ILLIT',1,941,350),(212,'בית צבי','BET ZEVI',3,233,340),(213,'משמרות','MISHMAROT',3,355,330),(217,'כפר הרא\"ה','KEFAR HARO\'E',4,1343,310),(218,'גני עם','GANNE AM',4,247,350),(219,'חיבת ציון','HIBBAT ZIYYON',4,616,310),(220,'כפר ביאליק','KEFAR BIALIK',3,723,310),(223,'עין עירון','EN IRON',3,517,310),(224,'שושנת העמקים','SHOSHANNAT HAAMAQIM',4,521,350),(225,'גן השומרון','GAN HASHOMERON',3,750,310),(229,'גני תקווה','GANNE TIQWA',4,13910,170),(230,'מעש','MA\'AS',4,770,310),(232,'שפיים','SHEFAYIM',4,1118,330),(233,'כפר ידידיה','KEFAR YEDIDYA',4,754,310),(234,'ביצרון','BIZZARON',6,1157,310),(235,'חבצלת השרון','HAVAZZELET HASHARON',4,603,310),(237,'שער העמקים','SHA\'AR HAAMAQIM',3,678,330),(239,'גן חיים','GAN HAYYIM',4,842,310),(240,'יקנעם עילית','YOQNE\'AM ILLIT',2,19524,170),(241,'יקנעם (מושבה)','YOQNE\'AM(MOSHAVA)',2,1277,310),(242,'בית השיטה','BET HASHITTA',2,1092,330),(246,'נתיבות','NETIVOT',6,27978,160),(247,'רשפון','RISHPON',4,1349,310),(248,'בית שערים','BET SHE\'ARIM',2,719,310),(249,'כפר סירקין','KEFAR SIRKIN',4,1279,310),(250,'הזורע','HAZOREA',2,852,330),(252,'ביתן אהרן','BITAN AHARON',4,417,310),(253,'חולתה','HULATA',2,531,330),(254,'כפר המכבי','KEFAR HAMAKKABBI',3,335,330),(255,'כפר חיטים','KEFAR HITTIM',2,579,320),(256,'ניר דוד (תל עמל)','NIR DAWID (TEL AMAL)',2,614,330),(257,'נופך','NOFEKH',4,475,370),(259,'שדה נחום','SEDE NAHUM',2,425,330),(262,'גינוסר','GINNOSAR',2,486,330),(263,'מסדה','MASSADA',2,361,330),(264,'שער הגולן','SHA\'AR HAGOLAN',2,555,330),(265,'בית יוסף','BET YOSEF',2,433,310),(267,'כפר שמריהו','KEFAR SHEMARYAHU',5,1759,350),(268,'טירת צבי','TIRAT ZEVI',2,642,330),(269,'מולדת','MOLEDET',2,906,320),(270,'עין השופט','EN HASHOFET',2,811,330),(272,'מעוז חיים','MA\'OZ HAYYIM',2,438,330),(273,'עין גב','EN GEV',2,651,330),(274,'כפר מנחם','KEFAR MENAHEM',6,1156,330),(276,'צור משה','ZUR MOSHE',4,3043,190),(278,'אושה','USHA',3,455,330),(280,'חניתה','HANITA',2,571,330),(281,'פקיעין חדשה','PEQI\'IN HADASHA',2,353,310),(282,'שבי ציון','SHAVE ZIYYON',2,942,320),(284,'שדה ורבורג','SEDE WARBURG',4,1435,310),(285,'אלונים','ALLONIM',2,469,330),(286,'מעלה החמישה','MA\'ALE HAHAMISHA',1,418,330),(287,'תל יצחק','TEL YIZHAQ',4,728,330),(288,'בית יהושע','BET YEHOSHUA',4,983,310),(289,'עין המפרץ','EN HAMIFRAZ',2,1160,330),(290,'מעיין צבי','MA\'YAN ZEVI',3,594,330),(292,'שרונה','SHARONA',2,531,310),(293,'שדה יואב','SEDE YO\'AV',6,343,330),(294,'אילון','ELON',2,937,330),(295,'כפר רופין','KEFAR RUPPIN',2,441,330),(296,'נווה איתן','NEWE ETAN',2,401,330),(297,'כפר מסריק','KEFAR MASARYK',2,719,330),(298,'מסילות','MESILLOT',2,500,330),(300,'דלייה','DALIYYA',2,762,330),(301,'בית עוזיאל','BET UZZI\'EL',4,553,310),(302,'דפנה','DAFNA',2,876,330),(303,'דן','DAN',2,614,330),(304,'שדה אליהו','SEDE ELIYYAHU',2,688,330),(305,'גשר','GESHER',2,474,330),(306,'שדמות דבורה','SHADMOT DEVORA',2,535,310),(307,'הזורעים','HAZORE\'IM',2,751,310),(308,'מחניים','MAHANAYIM',2,460,330),(309,'נהורה','NEHORA',6,1108,350),(310,'כפר גליקסון','KEFAR GLIKSON',3,279,330),(311,'גן שורק','GAN SOREQ',4,662,310),(312,'נווה ים','NEWE YAM',3,224,330),(313,'אפק','AFEQ',2,509,330),(315,'נגבה','NEGBA',6,768,330),(316,'כפר נטר','KEFAR NETTER',4,1040,310),(317,'בית אורן','BET OREN',3,409,330),(318,'עמיעוז','AMMI\'OZ',6,185,310),(319,'עמיר','AMIR',2,536,330),(320,'כפר ורבורג','KEFAR WARBURG',6,967,310),(322,'בית הלל','BET HILLEL',2,731,310),(324,'שאר ישוב','SHE\'AR YASHUV',2,560,310),(325,'מצובה','MAZZUVA',2,895,330),(326,'בית יצחק-שער חפר','BET YIZHAQ-SH. HEFER',4,1968,310),(327,'שדות ים','SEDOT YAM',3,805,330),(328,'עזוז','EZUZ',6,75,370),(329,'שדה נחמיה','SEDE NEHEMYA',2,892,330),(330,'אלומות','ALUMMOT',2,215,330),(331,'ניר צבי','NIR ZEVI',4,1221,310),(334,'קבוצת יבנה','QEVUZAT YAVNE',4,971,330),(335,'רמת השופט','RAMAT HASHOFET',2,842,330),(336,'דורות','DOROT',6,732,330),(338,'איבים','IBBIM',6,119,340),(339,'רמת צבי','RAMAT ZEVI',2,545,310),(340,'גת (קיבוץ)','GAT(QIBBUZ)',6,634,330),(342,'גברעם','GEVAR\'AM',6,370,330),(343,'חמדיה','HAMADYA',2,360,330),(344,'מענית','MA\'ANIT',3,652,330),(345,'כפר סאלד','KEFAR SZOLD',2,551,330),(346,'גליל ים','GELIL YAM',5,423,330),(347,'מנרה','MENARA',2,242,330),(348,'ניר עם','NIR AM',6,449,330),(351,'ניצן','NIZZAN',6,1060,350),(352,'גבולות','GEVULOT',6,248,330),(353,'בית זיד','BET ZEID',2,246,350),(354,'רביבים','REVIVIM',6,1001,330),(355,'חורשים','HORESHIM',4,300,330),(356,'הגושרים','HAGOSHERIM',2,603,330),(357,'כפר בלום','KEFAR BLUM',2,477,330),(358,'יד מרדכי','YAD MORDEKHAY',6,662,330),(359,'ניצנים','NIZZANIM',6,411,330),(360,'גבעת ניל\"י','GIV\'AT NILI',3,653,310),(362,'רוחמה','RUHAMA',6,549,330),(363,'חפץ חיים','HAFEZ HAYYIM',4,380,330),(364,'כפר אוריה','KEFAR URIYYA',1,771,310),(365,'בית קשת','BET QESHET',2,438,330),(366,'שמיר','SHAMIR',2,895,330),(367,'עין העמק','EN HAEMEQ',2,726,350),(368,'בירייה','BIRIYYA',2,766,350),(369,'גלעד (אבן יצחק)','GAL\'ED (EVEN YIZHAQ)',2,437,330),(370,'גזר','GEZER',4,260,330),(371,'כדורי','KADOORIE',2,230,340),(372,'רמות נפתלי','RAMOT NAFTALI',2,530,310),(373,'בית הלוי','BET HALEWI',4,741,310),(374,'חוקוק','HUQOQ',2,445,330),(375,'מגל','MAGGAL',3,924,330),(376,'עברון','EVRON',2,738,330),(377,'המעפיל','HAMA\'PIL',4,680,330),(378,'משגב עם','MISGAV AM',2,259,330),(379,'גאולים','GE\'ULIM',4,897,310),(380,'להבות הבשן','LAHAVOT HABASHAN',2,676,330),(382,'מכמורת','MIKHMORET',4,1264,310),(383,'עין הנצי\"ב','EN HANAZIV',2,574,330),(385,'עמיעד','AMMI\'AD',2,432,330),(386,'בני דרור','BENE DEROR',4,1262,320),(387,'כפר מונש','KEFAR MONASH',4,910,310),(388,'כפר קיש','KEFAR KISCH',2,436,310),(389,'בצרה','BAZRA',4,1143,310),(390,'רגבה','REGBA',2,985,320),(392,'קדמה','QEDMA',6,165,340),(393,'גלאון','GAL\'ON',6,340,330),(394,'שובל','SHOVAL',6,558,330),(395,'משמר הנגב','MISHMAR HANEGEV',6,764,330),(396,'נבטים','NEVATIM',6,694,310),(397,'חצרים','HAZERIM',6,727,330),(398,'שרשרת','SHARSHERET',6,267,310),(399,'בארי','BE\'ERI',6,933,330),(400,'אבן שמואל','EVEN SHEMU\'EL',6,977,350),(402,'ניר יצחק','NIR YIZHAQ',6,558,330),(403,'אורים','URIM',6,472,330),(405,'נווה אילן','NEWE ILAN',1,691,320),(406,'חצור-אשדוד','HAZOR-ASHDOD',6,513,330),(407,'דברת','DAVERAT',2,308,330),(408,'נאות מרדכי','NE\'OT MORDEKHAY',2,557,330),(409,'יחיעם','YEHI\'AM',2,403,330),(413,'צאלים','ZE\'ELIM',6,412,330),(414,'קלחים','QELAHIM',6,463,310),(415,'שוקדה','SHOQEDA',6,277,310),(416,'מעיין ברוך','MA\'YAN BARUKH',2,639,330),(417,'יקום','YAQUM',4,667,330),(418,'בני ציון','BENE ZIYYON',4,1318,310),(419,'סעד','SA\'AD',6,739,330),(421,'משאבי שדה','MASH\'ABBE SADE',6,487,330),(422,'חרב לאת','HEREV LE\'ET',4,844,310),(423,'העוגן','HAOGEN',4,771,330),(424,'גבים','GEVIM',6,412,330),(425,'משמרת','MISHMERET',4,1010,310),(426,'עין כרמל','EN KARMEL',3,767,330),(427,'כפר גלים','KEFAR GALLIM',3,281,340),(428,'ברור חיל','BEROR HAYIL',6,780,330),(429,'אלוני אבא','ALLONE ABBA',2,919,320),(430,'בית לחם הגלילית','BET LEHEM HAGELILIT',2,789,310),(431,'דלתון','DALTON',2,825,310),(432,'שמרת','SHAMERAT',2,411,330),(433,'נחשולים','NAHSHOLIM',3,529,330),(434,'החותרים','HAHOTERIM',3,627,330),(435,'נצר סרני','NEZER SERENI',4,668,330),(436,'עין דור','EN DOR',2,736,330),(437,'רשפים','RESHAFIM',2,536,330),(439,'שלוחות','SHELUHOT',2,472,330),(440,'יסודות','YESODOT',4,502,320),(442,'גדעונה','GID\'ONA',2,266,350),(443,'כפר הנשיא','KEFAR HANASI',2,796,330),(444,'רגבים','REGAVIM',3,315,330),(445,'רמות מנשה','RAMOT MENASHE',2,1013,330),(446,'אודים','UDIM',4,1231,310),(447,'נורדייה','NORDIYYA',4,1969,320),(448,'בני עטרות','BENE ATAROT',4,929,310),(449,'נחלים','NEHALIM',4,1473,310),(450,'בארות יצחק','BE\'EROT YIZHAQ',4,394,330),(452,'יזרעאל','YIZRE\'EL',2,538,330),(453,'יפתח','YIFTAH',2,505,330),(454,'סער','SA\'AR',2,648,330),(456,'שורש','SHORESH',1,637,320),(457,'גזית','GAZIT',2,616,330),(460,'רמת רזיאל','RAMAT RAZI\'EL',1,600,310),(462,'טל שחר','TAL SHAHAR',1,1108,310),(463,'געתון','GA\'TON',2,527,330),(464,'הראל','HAR\'EL',1,210,330),(465,'צובה','ZOVA',1,610,330),(466,'בית דגן','BET DAGAN',4,6961,180),(469,'קריית עקרון','QIRYAT EQRON',4,10295,170),(527,'שזור','SHEZOR',2,298,310),(549,'גנות הדר','GANNOT HADAR',4,844,350),(553,'ניר בנים','NIR BANIM',6,661,310),(555,'שדמה','SHEDEMA',4,578,310),(559,'בוסתן הגליל','BUSTAN HAGALIL',2,813,310),(562,'בית אלעזרי','BET EL\'AZARI',4,1332,310),(563,'משמר דוד','MISHMAR DAWID',4,113,330),(564,'רבדים','REVADIM',6,483,330),(565,'אזור','AZOR',5,11587,170),(566,'גבעת שמש','GIV\'AT SHEMESH',1,59,340),(567,'צרעה','ZOR\'A',1,918,330),(570,'מעונה','ME\'ONA',2,860,310),(571,'בית גמליאל','BET GAMLI\'EL',4,901,310),(572,'בית העמק','BET HAEMEQ',2,511,330),(573,'מבקיעים','MAVQI\'IM',6,366,310),(574,'גשר הזיו','GESHER HAZIW',2,1510,330),(575,'יסעור','YAS\'UR',2,544,330),(576,'כברי','KABRI',2,908,330),(577,'יד בנימין','YAD BINYAMIN',4,3501,190),(578,'סאסא','SASA',2,395,330),(579,'כפר ראש הנקרה','KEFAR ROSH HANIQRA',2,1201,330),(580,'כרם מהר\"ל','KEREM MAHARAL',3,632,310),(582,'כפר הנגיד','KEFAR HANAGID',4,1252,310),(584,'זיקים','ZIQIM',6,513,330),(585,'לביא','LAVI',2,645,330),(586,'מגידו','MEGIDDO',2,753,330),(587,'סביון*','SAVYON',4,3124,190),(588,'בני ראם','BENE RE\'EM',4,1307,310),(589,'בצת','BEZET',2,232,310),(590,'נווה אור','NEWE UR',2,289,330),(591,'עשרת','ASERET',4,1002,350),(592,'בני דרום','BENE DAROM',4,560,320),(593,'ערוגות','ARUGOT',6,1064,310),(594,'צפרייה','ZAFRIYYA',4,878,310),(595,'לוחמי הגיטאות','LOHAME HAGETA\'OT',2,455,330),(596,'מלכייה','MALKIYYA',2,426,330),(597,'פלמחים','PALMAHIM',4,479,330),(598,'בית קמה','BET QAMA',6,1304,330),(599,'פרוד','PAROD',2,269,330),(602,'נירים','NIRIM',6,320,330),(603,'אלקוש','ELQOSH',2,335,310),(604,'בית עריף','BET ARIF',4,1060,310),(605,'כפר שמאי','KEFAR SHAMMAY',2,385,310),(606,'מזור','MAZOR',4,1287,310),(607,'מירון','MERON',2,974,310),(609,'כפר חושן','KEFAR HOSHEN',2,633,310),(610,'סתרייה','SITRIYYA',4,973,310),(612,'צרופה','ZERUFA',3,1013,310),(613,'ציפורי','ZIPPORI',2,783,310),(614,'שומרה','SHOMERA',2,342,310),(615,'קדרון','QIDRON',4,1512,310),(616,'רינתיה','RINNATYA',4,1099,310),(617,'ברקאי','BARQAY',3,463,330),(618,'חדיד','HADID',4,709,310),(619,'בית גוברין','BET GUVRIN',6,334,330),(620,'משואות יצחק','MASSU\'OT YIZHAQ',6,677,320),(622,'עין צורים','EN ZURIM',6,1124,330),(623,'יראון','YIR\'ON',2,436,330),(648,'מצר','MEZER',3,382,330),(661,'שער אפרים','SHA\'AR EFRAYIM',4,1593,310),(662,'חוסן','HOSEN',2,882,310),(663,'טירת יהודה','TIRAT YEHUDA',4,1082,310),(664,'כרם בן זמרה','KEREM BEN ZIMRA',2,411,310),(665,'תקומה','TEQUMA',6,563,310),(666,'עומר','OMER',6,7081,180),(667,'ברעם','BAR\'AM',2,575,330),(668,'מפלסים','MEFALLESIM',6,930,330),(670,'משמר איילון','MISHMAR AYYALON',4,441,310),(672,'בית נקופה','BET NEQOFA',1,578,310),(673,'כפר טרומן','KEFAR TRUMAN',4,830,310),(674,'לימן','LIMAN',2,649,310),(675,'הבונים','HABONIM',3,282,320),(676,'עין השלושה','EN HASHELOSHA',6,323,330),(677,'הסוללים','HASOLELIM',2,838,330),(678,'מעגן','MA\'AGAN',2,351,330),(679,'אביאל','AVI\'EL',3,712,310),(680,'אומץ','OMEZ',4,714,310),(681,'גבעת שמואל','GIV\'AT SHEMU\'EL',4,23050,160),(682,'אליקים','ELYAQIM',2,779,310),(683,'גבע כרמל','GEVA KARMEL',3,1071,310),(684,'היוגב','HAYOGEV',2,578,310),(685,'בניה','BENAYA',4,750,310),(686,'נווה ימין','NEWE YAMIN',4,1094,310),(687,'עין איילה','EN AYYALA',3,1079,310),(688,'עלמה','ALMA',2,622,310),(689,'מגדים','MEGADIM',3,1141,310),(690,'כפר אחים','KEFAR AHIM',6,697,310),(692,'שפיר','SHAFIR',6,700,310),(693,'נתיב הל\"ה','NETIV HALAMED-HE',1,565,330),(694,'מעגן מיכאל','MA\'AGAN MIKHA\'EL',3,1652,330),(695,'מגן','MAGEN',6,618,330),(696,'כפר חב\"ד','KEFAR HABAD',4,5205,180),(697,'בארותיים','BE\'EROTAYIM',4,1006,310),(698,'בורגתה','BURGETA',4,1051,310),(699,'ניר ישראל','NIR YISRA\'EL',6,828,310),(700,'חצב','HAZAV',6,1313,310),(701,'ארבל','ARBEL',2,571,310),(702,'האון','HAON',2,190,330),(703,'גבעת עוז','GIV\'AT OZ',2,502,330),(705,'נחשונים','NAHSHONIM',4,329,330),(706,'גיאה','GE\'A',6,874,310),(707,'כפר דניאל','KEFAR DANIYYEL',4,646,320),(708,'עמקה','AMQA',2,597,310),(709,'תפרח','TIFRAH',6,2680,191),(710,'בית זית','BET ZAYIT',1,1554,310),(711,'עזריה','AZARYA',4,1024,310),(712,'בן עמי','BEN AMMI',2,742,310),(713,'רעים','RE\'IM',6,379,330),(714,'ארז','EREZ',6,453,330),(715,'להבות חביבה','LAHAVOT HAVIVA',3,675,330),(716,'אייל','EYAL',4,455,330),(717,'חגור','HAGOR',4,1057,310),(718,'ירחיב','YARHIV',4,837,310),(719,'תל קציר','TEL QAZIR',2,313,330),(720,'ניר גלים','NIR GALLIM',4,1095,320),(721,'שדה אילן','SEDE ILAN',2,459,310),(722,'מגשימים','MAGSHIMIM',4,1030,310),(723,'בית הגדי','BET HAGADDI',6,697,310),(726,'הודייה','HODIYYA',6,463,310),(727,'תלמי יחיאל','TALME YEHI\'EL',6,842,310),(729,'משמר השבעה','MISHMAR HASHIV\'A',4,930,310),(730,'אליפלט','ELIFELET',2,541,310),(731,'מישר','MESHAR',4,745,310),(732,'משמר הירדן','MISHMAR HAYARDEN',2,599,310),(734,'גן יאשיה','GAN YOSHIYYA',4,957,310),(735,'רמות מאיר','RAMOT ME\'IR',4,782,310),(736,'גילת','GILAT',6,1103,310),(737,'עולש','OLESH',4,986,310),(738,'דור','DOR',3,394,310),(739,'שדה עוזיהו','SEDE UZZIYYAHU',6,1341,310),(740,'אשתאול','ESHTA\'OL',1,1087,310),(741,'שואבה','SHO\'EVA',1,603,310),(742,'מסילת ציון','MESILLAT ZIYYON',1,1196,310),(743,'כפר שמואל','KEFAR SHEMU\'EL',4,815,310),(744,'תלמי יפה','TALME YAFE',6,637,320),(745,'גמזו','GIMZO',4,1087,310),(746,'ברכיה','BEREKHYA',6,1133,310),(747,'בית שקמה','BET SHIQMA',6,763,310),(748,'מסלול','MASLUL',6,713,310),(749,'פטיש','PATTISH',6,774,310),(750,'פדויים','PEDUYIM',6,435,310),(751,'בית מאיר','BET ME\'IR',1,787,310),(752,'תעוז','TA\'OZ',1,576,310),(753,'ינוב','YANUV',4,865,310),(755,'גורן','GOREN',2,421,310),(756,'בית עזרא','BET EZRA',6,1035,310),(757,'מצליח','MAZLIAH',4,1232,310),(758,'יד חנה','YAD HANNA',4,478,330),(759,'יציץ','YAZIZ',4,744,310),(760,'בן זכאי','BEN ZAKKAY',4,986,310),(761,'שובה','SHUVA',6,519,310),(762,'בטחה','BITHA',6,649,310),(763,'שתולים','SHETULIM',6,1836,310),(764,'כפר מרדכי','KEFAR MORDEKHAY',4,570,310),(765,'משגב דב','MISGAV DOV',4,691,310),(766,'קוממיות','QOMEMIYYUT',6,398,310),(767,'פורת','PORAT',4,1175,310),(768,'כרמייה','KARMIYYA',6,573,330),(769,'ניר עציון','NIR EZYON',3,911,320),(771,'מבוא ביתר','MEVO BETAR',1,449,320),(772,'אמונים','EMUNIM',6,907,310),(773,'עמיקם','AMMIQAM',3,675,310),(774,'צוריאל','ZURI\'EL',2,302,310),(775,'יד נתן','YAD NATAN',6,558,310),(776,'מחסיה','MAHSEYA',1,413,310),(777,'נחשון','NAHSHON',1,519,330),(778,'תרום','TARUM',1,599,310),(779,'עמינדב','AMMINADAV',1,981,310),(780,'אורה','ORA',1,1195,310),(783,'אבן ספיר','EVEN SAPPIR',1,665,310),(784,'בית נחמיה','BET NEHEMYA',4,860,310),(785,'אחיהוד','AHIHUD',2,771,310),(786,'כפר זיתים','KEFAR ZETIM',2,494,310),(787,'גבעת יערים','GIV\'AT YE\'ARIM',1,1337,310),(788,'זיתן','ZETAN',4,1035,310),(789,'רנן','RANNEN',6,536,310),(791,'משען','MASH\'EN',6,935,310),(792,'נתיב השיירה','NETIV HASHAYYARA',2,480,310),(793,'גבעתי','GIV\'ATI',6,906,310),(794,'עגור','AGUR',1,465,310),(795,'יערה','YA\'ARA',2,587,310),(796,'צלפון','ZELAFON',1,756,310),(797,'אחיעזר','AHI\'EZER',4,1739,310),(798,'יגל','YAGEL',4,810,310),(799,'זכריה','ZEKHARYA',1,915,310),(800,'בית חנניה','BET HANANYA',3,810,310),(801,'חמד','HEMED',4,1013,310),(802,'גבעת כ\"ח','GIV\'AT KOAH',4,676,310),(803,'יושיביה','YOSHIVYA',6,366,310),(804,'אחיסמך','AHISAMAKH',4,1251,310),(805,'ישעי','YISH\'I',1,622,310),(806,'עין יהב','EN YAHAV',6,664,310),(807,'חניאל','HANNI\'EL',4,926,310),(808,'ניר אליהו','NIR ELIYYAHU',4,348,330),(809,'נחם','NAHAM',1,485,310),(810,'עופר','OFER',3,635,310),(811,'יכיני','YAKHINI',6,590,310),(812,'שלומי','SHELOMI',2,6053,180),(813,'עין יעקב','EN YA\'AQOV',2,887,310),(814,'תלמים','TELAMIM',6,859,310),(815,'זבדיאל','ZAVDI\'EL',6,428,310),(816,'זנוח','ZANOAH',1,455,310),(817,'עזריקם','AZRIQAM',6,1217,310),(818,'זרחיה','ZERAHYA',6,651,310),(819,'אביגדור','AVIGEDOR',6,726,310),(820,'חלץ','HELEZ',6,431,310),(821,'אחוזם','AHUZZAM',6,500,310),(822,'מטע','MATTA',1,756,310),(823,'בר גיורא','BAR GIYYORA',1,567,310),(824,'כוכב מיכאל','KOKHAV MIKHA\'EL',6,878,310),(825,'נס הרים','NES HARIM',1,824,310),(826,'עוזה','UZA',6,452,310),(827,'נווה מבטח','NEWE MIVTAH',6,611,310),(828,'ישרש','YASHRESH',4,849,310),(829,'מבטחים','MIVTAHIM',6,362,310),(831,'ירוחם','YEROHAM',6,8282,180),(836,'גנות','GANNOT',4,639,310),(837,'עזריאל','AZRI\'EL',4,707,310),(838,'פדיה','PEDAYA',4,704,310),(839,'פתחיה','PETAHYA',4,780,310),(840,'כיסופים','KISSUFIM',6,190,330),(841,'אלישמע','ELISHAMA',4,1152,310),(842,'געש','GA\'ASH',4,615,330),(843,'מרגליות','MARGALIYYOT',2,390,310),(844,'נחל עוז','NAHAL OZ',6,389,330),(845,'כפר עזה','KEFAR AZZA',6,677,330),(846,'שפר','SHEFER',2,320,310),(848,'בית רבן','BET RABBAN',4,667,340),(849,'דבירה','DEVIRA',6,529,330),(850,'אחיטוב','AHITUV',4,1013,310),(851,'ניצני עוז','NIZZANE OZ',4,1005,310),(852,'גונן','GONEN',2,341,330),(853,'גאליה','GE\'ALYA',4,968,310),(854,'רחוב','REHOV',2,342,310),(856,'שעלבים','SHA\'ALVIM',4,1188,330),(857,'כפר אביב','KEFAR AVIV',4,739,310),(858,'נווה ירק','NEWE YARAQ',4,1278,310),(859,'כסלון','KESALON',1,433,310),(861,'שדה אליעזר','SEDE ELI\'EZER',2,644,310),(862,'גני יוחנן','GANNE YOHANAN',4,594,310),(863,'גינתון','GINNATON',4,860,310),(864,'בקוע','BEQOA',1,577,310),(865,'שיבולים','SHIBBOLIM',6,313,310),(866,'יטבתה','YOTVATA',6,666,330),(868,'אלוני יצחק','ALLONE YIZHAQ',3,286,340),(870,'גבעת השלושה','GIV\'AT HASHELOSHA',4,739,330),(871,'עינת','ENAT',4,639,330),(872,'גאולי תימן','GE\'ULE TEMAN',4,350,310),(873,'שלווה','SHALWA',6,435,310),(874,'מגדל העמק','MIGDAL HAEMEQ',2,24115,160),(875,'כפר עבודה','KEFAR AVODA',4,322,340),(877,'בית חירות','BET HERUT',4,869,320),(880,'עין שריד','EN SARID',4,1393,350),(882,'אורנים','ORANIM',3,262,340),(885,'שדה בוקר','SEDE BOQER',6,384,330),(886,'איתנים','ETANIM',1,76,340),(888,'כפר הרי\"ף','KEFAR HARIF',6,760,310),(889,'כפר חסידים ב\'','KEFAR HASIDIM BET',3,207,350),(890,'כפר הנוער הדתי','KEFAR HANO\'AR HADATI',3,353,340),(892,'עבדון','AVDON',2,514,310),(897,'מדרשת רופין','MIDRESHET RUPPIN',4,314,340),(916,'ישע','YESHA',6,343,310),(917,'עצמון שגב','ATSMON SEGEV',2,1005,370),(919,'גבעת ישעיהו','GIV\'AT YESHA\'YAHU',1,702,310),(921,'שער מנשה','SHA\'AR MENASHE',3,327,340),(922,'רכסים','REKHASIM',3,9753,180),(926,'נווה אבות','NEWE AVOT',3,644,340),(1015,'מבשרת ציון','MEVASSERET ZIYYON',1,25305,160),(1020,'אור עקיבא','OR AQIVA',3,15902,170),(1024,'חרוצים','HARUZIM',4,829,350),(1031,'שדרות','SEDEROT',6,21050,160),(1034,'קריית מלאכי','QIRYAT MAL\'AKHI',6,20941,160),(1043,'גיזו','GIZO',1,181,350),(1044,'יעף','YE\'AF',4,212,350),(1045,'שתולה','SHETULA',2,244,310),(1046,'אוהד','OHAD',6,368,310),(1047,'חזון','HAZON',2,297,310),(1050,'בית חשמונאי','BET HASHMONAY',4,2010,190),(1051,'תלמי אליהו','TALME ELIYYAHU',6,282,310),(1052,'קטורה','QETURA',6,476,330),(1056,'עין כרם-בי\"ס חקלאי','EN KAREM-B.S.HAQLA\'I',1,82,340),(1057,'נווה זוהר','NEWE ZOHAR',6,83,350),(1058,'שדה ניצן','SEDE NIZZAN',6,305,310),(1061,'נצרת עילית','NAZERAT ILLIT',2,40582,160),(1063,'מעלות-תרשיחא','MA\'ALOT-TARSHIHA',2,21032,160),(1064,'אמירים','AMIRIM',2,684,310),(1065,'זמרת','ZIMRAT',6,301,310),(1066,'בני עי\"ש','BENE AYISH',4,6962,180),(1067,'דוב\"ב','DOVEV',2,501,310),(1068,'אדמית','ADAMIT',2,131,330),(1069,'רם-און','RAM-ON',2,925,310),(1070,'אביעזר','AVI\'EZER',1,661,310),(1071,'נווה מיכאל','NEWE MIKHA\'EL',1,502,310),(1072,'גן הדרום','GAN HADAROM',4,504,310),(1076,'בית ברל','BET BERL',4,118,340),(1077,'גבעת שפירא','GIV\'AT SHAPPIRA',4,368,310),(1079,'צפרירים','ZAFRIRIM',1,364,310),(1080,'מבועים','MABBU\'IM',6,1145,350),(1081,'אבן מנחם','EVEN MENAHEM',2,262,310),(1082,'מעגלים','MA\'GALIM',6,2055,190),(1083,'תושייה','TUSHIYYA',6,762,350),(1084,'בן שמן (כפר נוער)','BEN SHEMEN(K.NO\'AR)',4,539,340),(1085,'כרם שלום','KEREM SHALOM',6,96,330),(1094,'כרם יבנה (ישיבה)','KEREM YAVNE(YESHIVA)',4,559,340),(1095,'כפר מימון','KEFAR MAYMON',6,280,310),(1098,'מרכז שפירא','MERKAZ SHAPPIRA',6,2255,190),(1102,'צוקי ים','ZUQI YAM',4,230,350),(1103,'גני הדר','GANNE HADAR',4,269,350),(1104,'פורייה - כפר עבודה','PORIYYA-KEFAR AVODA',2,341,350),(1105,'פורייה - נווה עובד','PORIYYA-NEWE OVED',2,996,350),(1108,'אומן','OMEN',2,296,350),(1110,'חבר','HEVER',2,390,350),(1112,'יודפת','YODEFAT',2,564,320),(1113,'צור הדסה','ZUR HADASSA',1,6517,180),(1114,'שריגים (לי-און)','SARIGIM (LI-ON)',1,1025,350),(1115,'אביבים','AVIVIM',2,458,310),(1123,'אדרת','ADDERET',1,694,310),(1124,'נאות הכיכר','NE\'OT HAKIKKAR',6,399,310),(1125,'אלמגור','ALMAGOR',2,326,310),(1126,'אילות','ELOT',6,355,330),(1127,'מעלה גלבוע','MA\'ALE GILBOA',2,526,330),(1128,'מי עמי','ME AMMI',3,291,310),(1129,'גרופית','GEROFIT',6,288,330),(1130,'כפר רוזנואלד (זרעית)','KEFAR ROZENWALD(ZARIT)',2,244,310),(1132,'שניר','SENIR',2,507,330),(1133,'ורדון','WARDON',6,263,350),(1134,'יד השמונה','YAD HASHEMONA',1,95,320),(1136,'צוחר','ZOHAR',6,367,350),(1137,'קריית יערים','QIRYAT YE\'ARIM',1,3158,190),(1138,'יעד','YA\'AD',2,617,310),(1139,'כרמיאל','KARMI\'EL',2,44710,160),(1140,'מדרשת בן גוריון','MIDRESHET BEN GURION',6,1380,350),(1141,'מבוא מודיעים','MEVO MODI\'IM',4,267,370),(1144,'ידידה','YEDIDA',1,206,340),(1145,'אלומה','ALUMMA',6,548,350),(1146,'עלומים','ALUMIM',6,430,330),(1147,'נטועה','NETU\'A',2,262,310),(1148,'צור נתן','ZUR NATAN',4,264,320),(1149,'עזר','EZER',6,860,350),(1150,'צופר','ZOFAR',6,353,310),(1151,'פארן','PARAN',6,411,310),(1152,'אשלים','ASHALIM',6,313,370),(1153,'כישור','KISHOR',2,148,330),(1154,'מלכישוע','MALKISHUA',2,162,340),(1155,'מגן שאול','MAGEN SHA\'UL',2,396,310),(1156,'סמר','SAMAR',6,271,330),(1157,'אחווה','AHAWA',6,191,350),(1158,'יהל','YAHEL',6,225,330),(1160,'שכניה','SHEKHANYA',2,702,370),(1162,'בית רימון','BET RIMMON',2,440,330),(1163,'מורן','MORAN',2,417,330),(1165,'שילת','SHILAT',4,512,310),(1166,'כפר רות','KEFAR RUT',4,198,310),(1167,'קיסריה','QESARYYA',3,4457,190),(1171,'לוטם','LOTEM',2,554,330),(1172,'תובל','TUVAL',2,232,330),(1173,'לפידות','LAPPIDOT',2,126,310),(1174,'מנוף','MANOF',2,687,310),(1175,'עידן','IDDAN',6,307,310),(1176,'ספיר','SAPPIR',6,372,350),(1177,'טללים','TELALIM',6,280,330),(1178,'מורשת','MORESHET',2,1217,370),(1179,'קורנית','QORANIT',2,742,370),(1180,'צביה','ZVIYYA',2,309,370),(1181,'טל-אל','TAL-EL',2,926,370),(1182,'אלון הגליל','ALLON HAGALIL',2,944,310),(1183,'כליל','KELIL',2,443,370),(1184,'מתת','MATTAT',2,175,370),(1186,'הושעיה','HOSHA\'AYA',2,1775,370),(1188,'אשחר','ESHHAR',2,608,370),(1190,'מצפה נטופה','MIZPE NETOFA',2,739,370),(1191,'בר יוחאי','BAR YOHAY',2,757,370),(1195,'ניצנה (קהילת חינוך)','NIZZANA (QEHILAT HINUH)',6,74,340),(1197,'נאות סמדר','NE\'OT SMADAR',6,200,330),(1198,'כרמים','KERAMIM',6,216,330),(1199,'עדי','ADI',2,1653,370),(1200,'מודיעין-מכבים-רעות*','MODI\'IN-MAKKABBIM-RE\'UT',4,80218,150),(1201,'כמון','KAMMON',2,1303,370),(1202,'מכמנים','MIKHMANNIM',2,354,370),(1203,'הררית','HARARIT',2,309,370),(1204,'גילון','GILON',2,982,370),(1205,'מנות','MANOT',2,339,310),(1206,'גיתה','GITTA',2,262,370),(1207,'לבון','LAVON',2,508,350),(1208,'הילה','HILLA',2,533,370),(1209,'חרשים','HARASHIM',2,251,370),(1210,'כחל','KAHAL',2,310,310),(1211,'קדרים','QADDARIM',2,173,330),(1212,'עמוקה','AMUQQA',2,152,370),(1213,'צבעון','ZIV\'ON',2,100,330),(1214,'טפחות','TEFAHOT',2,442,310),(1219,'גורנות הגליל','GORNOT HAGALIL',2,160,350),(1220,'אבירים','ABBIRIM',2,182,370),(1221,'צורית','ZURIT',2,771,370),(1222,'מצפה אבי\"ב','MIZPE AVIV',2,784,370),(1223,'שדי אברהם','SEDE AVRAHAM',6,305,310),(1224,'כוכב יאיר','KOKHAV YA\'IR',4,9183,180),(1225,'רביד','RAVID',2,93,330),(1226,'יובלים','YUVALLIM',2,1037,370),(1227,'יתד','YATED',6,779,310),(1228,'רקפת','RAQQEFET',2,833,370),(1229,'כלנית','KALLANIT',2,172,310),(1230,'לבנים','LIVNIM',2,367,310),(1231,'פרי גן','PERI GAN',6,170,310),(1232,'יבול','YEVUL',6,741,310),(1233,'שקף','SHEQEF',6,657,310),(1235,'שורשים','SHORASHIM',2,374,320),(1236,'נירית','NIRIT',4,1173,370),(1237,'תלמי יוסף','TALME YOSEF',6,281,310),(1238,'סופה','SUFA',6,255,330),(1239,'חולית','HOLIT',6,107,330),(1240,'עין הבשור','EN HABESOR',6,989,310),(1241,'דקל','DEQEL',6,289,310),(1242,'נתיב העשרה','NETIV HAASARA',6,706,310),(1244,'תמרת','TIMRAT',2,1349,370),(1247,'קציר-חריש','QAZIR-HARISH',3,3300,190),(1248,'אליפז','ELIFAZ',6,93,330),(1249,'הרדוף','HARDUF',2,1030,330),(1251,'עין תמר','EN TAMAR',6,184,310),(1252,'כורזים','KORAZIM',2,369,350),(1253,'אמנון','AMNUN',2,270,310),(1254,'נטף','NATAF',1,325,370),(1255,'לוטן','LOTAN',6,190,330),(1256,'אשרת','ASHERAT',2,652,370),(1257,'חנתון','HANNATON',2,585,330),(1258,'מסד','MASSAD',2,334,370),(1259,'נווה שלום','NEWE SHALOM',1,236,350),(1260,'רתמים','RETAMIM',6,142,370),(1262,'צוקים','ZUQIM',6,162,370),(1263,'כפר ורדים','KEFAR WERADIM',2,5605,180),(1264,'כרמי יוסף','KARME YOSEF',4,1673,350),(1265,'שומרייה','SHOMERIYYA',6,672,330),(1266,'שחרות','SHAHARUT',6,115,370),(1268,'מיתר','METAR',6,6603,180),(1271,'להבים','LEHAVIM',6,6063,180),(1272,'חלוץ','HALUZ',2,397,370),(1274,'גן נר','GAN NER',2,2501,190),(1275,'אבטליון','AVTALYON',2,319,370),(1276,'אשבל','ESHBAL',2,91,330),(1278,'באר מילכה','BE\'ER MILKA',6,80,370),(1279,'נווה חריף','NEWE HARIF',6,139,330),(1280,'ניצני סיני','NIZZANE SINAY',6,245,310),(1282,'מירב','MERAV',2,548,330),(1283,'תל תאומים','TEL TE\'OMIM',2,393,370),(1284,'נופית','NOFIT',3,2673,190),(1285,'כרכום','KARKOM',2,580,370),(1287,'שני','SHANI',6,442,370),(1288,'גבעת אלה','GIV\'AT ELA',2,1623,370),(1291,'כמהין','KEMEHIN',6,146,310),(1293,'גבעת אבני','GIV\'AT AVNI',2,2091,190),(1294,'אור הגנוז','OR HAGANUZ',2,440,320),(1297,'כפר חנניה','KEFAR HANANYA',2,605,370),(1304,'שוהם','SHOHAM',4,19369,170),(1309,'אלעד','EL\'AD',4,39796,160),(1310,'לפיד','LAPPID',4,2529,190),(1311,'אבשלום','AVSHALOM',6,154,370),(1313,'פורייה עילית','PORIYYA ILLIT',2,765,350),(1314,'נווה זיו','NEWE ZIV',2,759,370),(1315,'מתן','MATTAN',4,3555,190),(1318,'מבואות ים','MEVO\'OT YAM',4,494,340),(1319,'בת חפר','BAT HEFER',4,5417,180),(1322,'הודיות','HODAYOT',2,262,340),(1323,'בת הדר','BAT HADAR',6,592,350),(1324,'ארסוף','ARSUF',4,148,350),(1330,'אחוזת ברק','AHUZZAT BARAQ',2,1643,370),(1333,'נוף איילון','NOF AYYALON',4,2208,190),(1337,'שמשית','SHIMSHIT',2,2614,190),(1338,'כדיתה','KADDITA',2,147,370),(1340,'מרחב עם','MERHAV AM',6,182,370),(1344,'גבעות בר','GEVA\'OT BAR',6,396,370),(1345,'צור יצחק','ZUR YIZHAQ',4,1269,350),(1361,'בת חן','BAT HEN',4,419,350),(1370,'מצפה אילן','MITSPE ILAN',3,261,370),(1419,'ניצן ב\'','NIZZAN B',6,1715,350),(2002,'תנובות','TENUVOT',4,772,310),(2003,'תלמי אלעזר','TALME EL\'AZAR',3,687,310),(2006,'כנות','KANNOT',6,248,340),(2008,'שדה יצחק','SEDE YIZHAQ',3,707,310),(2009,'יובל','YUVAL',2,566,310),(2010,'כפר בן נון','KEFAR BIN NUN',4,582,310),(2011,'ינון','YINNON',6,1075,310),(2012,'אורות','OROT',6,467,310),(2013,'בן שמן (מושב)','BEN SHEMEN (MOSHAV)',4,792,310),(2014,'גבעולים','GIV\'OLIM',6,294,310),(2015,'שדי חמד','SEDE HEMED',4,978,310),(2016,'רוויה','REWAYA',2,359,310),(2018,'גבעת חיים (איחוד)','GIV\'AT HAYYIM (IHUD)',4,879,330),(2021,'אשל הנשיא','ESHEL HANASI',6,256,340),(2023,'להב','LAHAV',6,420,330),(2026,'ירדנה','YARDENA',2,339,310),(2029,'מדרך עוז','MIDRAKH OZ',2,626,310),(2030,'מנוחה','MENUHA',6,482,310),(2033,'בית חלקיה','BET HILQIYYA',4,622,310),(2034,'חצור הגלילית','HAZOR HAGELILIT',2,8705,180),(2035,'עדנים','ADANIM',4,482,310),(2038,'ברקת','BAREQET',4,1604,310),(2039,'קריית יערים (מוסד)','QIRYAT YE\'ARIM(INSTITUTE)',1,256,340),(2042,'עין גדי','EN GEDI',6,527,330),(2043,'בחן','BAHAN',4,602,330),(2044,'מלילות','MELILOT',6,235,310),(2045,'נחלה','NAHALA',6,438,310),(2046,'סגולה','SEGULLA',6,626,310),(2047,'ניר משה','NIR MOSHE',6,529,310),(2048,'ניר עקיבא','NIR AQIVA',6,488,310),(2049,'שדה צבי','SEDE ZEVI',6,442,310),(2050,'תלמי ביל\"ו','TALME BILU',6,395,310),(2051,'רווחה','REWAHA',6,498,310),(2052,'אביטל','AVITAL',2,472,310),(2053,'פרזון','PERAZON',2,310,310),(2054,'מיטב','METAV',2,448,310),(2055,'מאור','MA\'OR',3,1063,310),(2057,'שדי תרומות','SEDE TERUMOT',2,419,310),(2059,'פעמי תש\"ז','PA\'AME TASHAZ',6,423,310),(2060,'ברוש','BEROSH',6,330,310),(2061,'תדהר','TIDHAR',6,348,310),(2062,'תאשור','TE\'ASHUR',6,407,310),(2063,'דישון','DISHON',2,356,310),(2064,'זרועה','ZERU\'A',6,303,310),(2100,'טירת כרמל','TIRAT KARMEL',3,18323,170),(2200,'דימונה','DIMONA',6,32433,160),(2300,'קריית טבעון','QIRYAT TIV\'ON',3,17057,170),(2400,'אור יהודה','OR YEHUDA',5,35019,160),(2500,'נשר','NESHER',3,24019,160),(2530,'באר יעקב','BE\'ER YA\'AQOV',4,14510,170),(2550,'גדרה','GEDERA',4,24392,160),(2560,'ערד','ARAD',6,23437,160),(2600,'אילת','ELAT',6,46655,160),(2610,'בית שמש','BET SHEMESH',1,84209,150),(2620,'קריית אונו','QIRYAT ONO',5,33384,160),(2630,'קריית גת','QIRYAT GAT',6,47750,160),(2640,'ראש העין','ROSH HAAYIN',4,39917,160),(2650,'רמת השרון','RAMAT HASHARON',5,42285,160),(2660,'יבנה','YAVNE',4,33333,160),(2800,'קריית שמונה','QIRYAT SHEMONA',2,22992,160),(3000,'ירושלים','JERUSALEM',1,804355,120),(3488,'כפר עציון','KEFAR EZYON',7,872,330),(3555,'נתיב הגדוד','NETIV HAGEDUD',7,176,310),(3556,'אלמוג','ALMOG',7,159,330),(3557,'קדומים','QEDUMIM',7,3904,190),(3558,'תומר','TOMER',7,236,310),(3560,'אלקנה','ELQANA',7,3746,190),(3561,'מגדל עוז','MIGDAL OZ',7,435,330),(3563,'תקוע','TEQOA',7,2157,190),(3564,'כוכב השחר','KOKHAV HASHAHAR',7,1596,370),(3565,'רימונים','RIMMONIM',7,566,370),(3566,'יפית','YAFIT',7,106,310),(3567,'סלעית','SAL\'IT',7,524,310),(3568,'ריחן','REHAN',7,181,320),(3569,'מבוא דותן','MEVO DOTAN',7,272,370),(3570,'אריאל','ARI\'EL',7,17849,170),(3571,'שבי שומרון','SHAVE SHOMERON',7,728,370),(3572,'כפר תפוח','KEFAR TAPPUAH',7,1070,370),(3573,'חלמיש','HALLAMISH',7,1153,370),(3574,'בית אל','BET EL',7,5808,180),(3575,'בית חורון','BET HORON',7,1118,370),(3576,'מצפה יריחו','MIZPE YERIHO',7,1946,370),(3578,'שדמות מחולה','SHADMOT MEHOLA',7,508,320),(3579,'אלון מורה','ELON MORE',7,1514,370),(3598,'ארגמן','ARGAMAN',7,163,310),(3599,'מחולה','MEHOLA',7,421,310),(3601,'קליה','QALYA',7,324,330),(3602,'ראש צורים','ROSH ZURIM',7,730,330),(3603,'הר גילה','HAR GILLO',7,670,370),(3604,'אלון שבות','ALLON SHEVUT',7,3051,190),(3605,'משואה','MASSU\'A',7,148,310),(3606,'גלגל','GILGAL',7,167,330),(3607,'ייט\"ב','YITAV',7,167,320),(3608,'מעלה אפרים','MA\'ALE EFRAYIM',7,1197,350),(3609,'חמרה','HAMRA',7,94,310),(3610,'מצפה שלם','MIZPE SHALEM',7,164,330),(3611,'קריית ארבע','QIRYAT ARBA',7,7433,180),(3612,'בקעות','BEQA\'OT',7,165,310),(3613,'גיתית','GITTIT',7,302,310),(3614,'מכורה','MEKHORA',7,116,310),(3615,'פצאל','PEZA\'EL',7,209,310),(3616,'מעלה אדומים','MA\'ALE ADUMMIM',7,36089,160),(3617,'עפרה','OFRA',7,3400,190),(3618,'אלעזר','EL\'AZAR',7,2081,190),(3619,'רועי','RO\'I',7,153,310),(3620,'נירן','NIRAN',7,58,330),(3637,'מעלה שומרון','MA\'ALE SHOMERON',7,860,370),(3638,'כפר אדומים','KEFAR ADUMMIM',7,3434,190),(3639,'ורד יריחו','WERED YERIHO',7,195,310),(3640,'קרני שומרון','QARNE SHOMERON',7,6449,180),(3641,'שילה','SHILO',7,2407,190),(3643,'חיננית','HINNANIT',7,874,370),(3644,'גבעון החדשה','GIV\'ON HAHADASHA',7,1072,370),(3645,'בית הערבה','BET HAARAVA',7,122,330),(3646,'חמדת','HEMDAT',7,174,370),(3647,'יקיר','YAQIR',7,1463,370),(3648,'מתתיהו','MATTITYAHU',7,484,320),(3649,'שקד','SHAQED',7,686,370),(3650,'אפרתה','EFRATA',7,7685,180),(3651,'מעלה מכמש','MA\'ALE MIKHMAS',7,1172,370),(3652,'בית אריה','BET ARYE',7,4057,190),(3653,'מעלה עמוס','MA\'ALE AMOS',7,264,370),(3654,'ברקן','BARQAN',7,1464,370),(3655,'ניל\"י','NILI',7,884,370),(3656,'כרמל','KARMEL',7,394,320),(3657,'מעון','MA\'ON',7,418,320),(3658,'עטרת','ATERET',7,740,370),(3659,'פסגות','PESAGOT',7,1693,370),(3660,'עמנואל','IMMANU\'EL',7,2952,190),(3709,'מבוא חורון','MEVO HORON',7,1929,320),(3710,'ברכה','BERAKHA',7,1769,370),(3712,'ענב','ENAV',7,620,370),(3713,'נעמ\"ה','NA\'AMA',7,95,310),(3715,'עלמון','ALMON',7,1033,370),(3717,'חרמש','HERMESH',7,180,370),(3719,'תלם','TELEM',7,262,320),(3720,'שערי תקווה','SHA\'ARE TIQWA',7,4930,190),(3722,'אשכולות','ESHKOLOT',7,661,370),(3723,'פני חבר','PENE HEVER',7,380,370),(3724,'נגוהות','NEGOHOT',7,266,370),(3725,'נווה דניאל','NEWE DANIYYEL',7,1978,370),(3726,'נוקדים','NOQEDIM',7,1461,370),(3727,'עלי זהב','ALE ZAHAV',7,690,370),(3730,'גבעת זאב','GIV\'AT ZE\'EV',7,12632,170),(3743,'טנא','TENE',7,645,370),(3745,'מצדות יהודה','MEZADOT YEHUDA',7,399,320),(3746,'קריית נטפים','QIRYAT NETAFIM',7,744,370),(3747,'דולב','DOLEV',7,1282,370),(3748,'עתניאל','OTNI\'EL',7,846,370),(3749,'יצהר','YIZHAR',7,1106,370),(3750,'אלפי מנשה','ALFE MENASHE',7,7423,180),(3751,'מגדלים','MIGDALIM',7,138,370),(3752,'מעלה לבונה','MA\'ALE LEVONA',7,720,370),(3754,'אספר','ASFAR',7,410,370),(3756,'סוסיה','SUSEYA',7,971,370),(3759,'אדורה','ADORA',7,268,370),(3760,'אורנית','ORANIT',7,6600,180),(3762,'איתמר','ITAMAR',7,1181,370),(3763,'גבע בנימין','GEVA BINYAMIN',7,4487,190),(3764,'חגי','HAGGAY',7,512,370),(3765,'עלי','ELI',7,3220,190),(3766,'כרמי צור','KARME ZUR',7,756,370),(3767,'נחליאל','NAHALI\'EL',7,464,370),(3768,'פדואל','PEDU\'EL',7,1246,370),(3769,'הר אדר','HAR ADAR',7,3622,190),(3770,'חשמונאים','HASHMONA\'IM',7,2643,190),(3778,'עץ אפרים','EZ EFRAYIM',7,806,350),(3779,'כוכב יעקב','KOKHAV YA\'AQOV',7,6340,180),(3780,'ביתר עילית','BETAR ILLIT',7,39710,160),(3781,'קדר','QEDAR',7,1138,370),(3784,'שמעה','SHIM\'A',7,315,370),(3785,'משכיות','MASKIYYOT',7,72,370),(3786,'אבנת','AVENAT',7,119,370),(3787,'נעלה','NA\'ALE',7,1094,350),(3788,'טלמון','TALMON',7,3073,190),(3790,'נופים','NOFIM',7,433,350),(3791,'צופים','ZUFIM',7,1338,350),(3793,'אבני חפץ','AVNE HEFEZ',7,1545,370),(3794,'בת עין','BAT AYIN',7,1034,370),(3795,'רבבה','REVAVA',7,1395,370),(3796,'כפר האורנים','KEFAR HAORANIM',7,2542,190),(3797,'מודיעין עילית','MODI\'IN ILLIT',7,52060,150),(4000,'חיפה','HAIFA',3,270348,130),(4002,'אלי-עד','ELI-AD',2,254,310),(4003,'אל -רום','EL-ROM',2,309,330),(4004,'כפר חרוב','KEFAR HARUV',2,313,330),(4005,'חספין','HASPIN',2,1475,370),(4006,'קשת','QESHET',2,671,320),(4007,'יונתן','YONATAN',2,528,320),(4008,'מעלה גמלא','MA\'ALE GAMLA',2,400,310),(4009,'שעל','SHA\'AL',2,201,310),(4010,'אודם','ODEM',2,92,320),(4011,'אבני איתן','AVNE ETAN',2,533,310),(4012,'אניעם','ANI\'AM',2,502,310),(4013,'אורטל','ORTAL',2,285,330),(4014,'נטור','NATUR',2,266,310),(4015,'בני יהודה','BENE YEHUDA',2,965,370),(4017,'אלוני הבשן','ALLONE HABASHAN',2,313,320),(4019,'מיצר','MEZAR',2,113,330),(4021,'גבעת יואב','GIV\'AT YO\'AV',2,560,310),(4022,'גשור','GESHUR',2,223,330),(4024,'קלע','QELA',2,179,370),(4025,'קדמת צבי','QIDMAT ZEVI',2,336,310),(4026,'חד-נס','HAD-NES',2,685,370),(4028,'כנף','KANAF',2,371,310),(4100,'קצרין','QAZRIN',2,6619,180),(4101,'מרום גולן','MEROM GOLAN',2,633,330),(4204,'מבוא חמה','MEVO HAMMA',2,302,330),(4301,'אפיק','AFIQ',2,256,330),(4303,'נווה אטי\"ב','NEWE ATIV',2,112,310),(4304,'נוב','NOV',2,664,310),(4503,'עין זיוון','EN ZIWAN',2,211,330),(4551,'נאות גולן','NE\'OT GOLAN',2,430,310),(4701,'רמת מגשימים','RAMAT MAGSHIMIM',2,582,320),(4702,'רמות','RAMOT',2,457,310),(5000,'תל אביב -יפו','TEL AVIV - YAFO',5,404750,130),(6100,'בני ברק','BENE BERAQ',5,163301,140),(6200,'בת ים','BAT YAM',5,128157,140),(6300,'גבעתיים','GIV\'ATAYIM',5,54728,150),(6400,'הרצלייה','HERZLIYYA',5,88734,150),(6500,'חדרה','HADERA',3,82489,150),(6600,'חולון','HOLON',5,182575,140),(6700,'טבריה','TIBERIAS',2,41678,160),(6800,'קריית אתא','QIRYAT ATTA',3,52030,150),(6900,'כפר סבא','KEFAR SAVA',4,87335,150),(7000,'לוד','LOD',4,70270,150),(7100,'אשקלון','ASHQELON',6,117429,140),(7200,'נס ציונה','NES ZIYYONA',4,41251,160),(7400,'נתניה','NETANYA',4,189678,140),(7600,'עכו','AKKO',2,46464,160),(7700,'עפולה','AFULA',2,41293,160),(7800,'פרדס חנה-כרכור','PARDES HANNA-KARKUR',3,33544,160),(7900,'פתח תקווה','PETAH TIQWA',4,210376,130),(8000,'צפת','ZEFAT',2,32236,160),(8200,'קריית מוצקין','QIRYAT MOTZKIN',3,38346,160),(8300,'ראשון לציון','RISHON LEZIYYON',4,232410,130),(8400,'רחובות','REHOVOT',4,118139,140),(8500,'רמלה','RAMLA',4,67874,150),(8600,'רמת גן','RAMAT GAN',5,148035,140),(8700,'רעננה','RA\'ANNANA',4,69108,150),(9000,'באר שבע','BE\'ER SHEVA',6,196335,140),(9100,'נהרייה','NAHARIYYA',2,52613,150),(9200,'בית שאן','BET SHE\'AN',2,16922,170),(9300,'זכרון יעקב','ZIKHRON YA\'AQOV',3,20242,160),(9400,'יהוד','YEHUD',4,27604,160),(9500,'קריית ביאליק','QIRYAT BIALIK',3,37634,160),(9600,'קריית ים','QIRYAT YAM',3,38211,160),(9700,'הוד השרון','HOD HASHARON',4,49943,160),(9800,'בנימינה-גבעת עדה*','BINYAMINA-GIV\'AT ADA',3,13567,170);
/*!40000 ALTER TABLE `tbl_yeshuv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-18  9:51:31
