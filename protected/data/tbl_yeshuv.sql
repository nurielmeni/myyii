-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2013 at 01:22 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbdb`
--

-- --------------------------------------------------------
--
-- Table structure for table `tbl_province`
--
DROP TABLE IF EXISTS `tbl_province`;

CREATE TABLE `tbl_province`(
  `id` int(4) DEFAULT NULL,
  `name_heb` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` varchar(23) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_province`
--
INSERT INTO `tbl_province` (`id`, `name_heb`, `name_eng`) VALUES
(1, 'ירושלים', 'Jerusalem'),
(2, 'צפון', 'North'),
(3, 'חיפה', 'Haifa'),
(4, 'מרכז', 'Center'),
(5, 'תל אביב', 'Tel Aviv'),
(6, 'דרום', 'South'),
(7, 'יהודה ושומרון', 'Yehuda Shomron');

--
-- Table structure for table `tbl_yeshuv`
--
DROP TABLE IF EXISTS `tbl_yeshuv`;
CREATE TABLE `tbl_yeshuv`(
  `id` int(4) DEFAULT NULL,
  `name_heb` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` varchar(23) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(1) DEFAULT NULL,
  `population` int(6) DEFAULT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (province_id) REFERENCES tbl_province(id)
                      ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_yeshuv`
--

INSERT INTO `tbl_yeshuv` (`id`, `name_heb`, `name_eng`, `province_id`, `population`) VALUES
(2610, 'בית שמש', 'BET SHEMESH', 1, 84209),
(1015, 'מבשרת ציון', 'MEVASSERET ZIYYON', 1, 25305),
(1113, 'צור הדסה', 'ZUR HADASSA', 1, 6517),
(1137, 'קריית יערים', 'QIRYAT YE''ARIM', 1, 3158),
(9200, 'בית שאן', 'BET SHE''AN', 2, 16922),
(1293, 'גבעת אבני', 'GIV''AT AVNI', 2, 2091),
(1274, 'גן נר', 'GAN NER', 2, 2501),
(2034, 'חצור הגלילית', 'HAZOR HAGELILIT', 2, 8705),
(6700, 'טבריה', 'TIBERIAS', 2, 41678),
(46, 'יבנאל', 'YAVNE''EL', 2, 3686),
(240, 'יקנעם עילית', 'YOQNE''AM ILLIT', 2, 19524),
(1263, 'כפר ורדים', 'KEFAR WERADIM', 2, 5605),
(47, 'כפר תבור', 'KEFAR TAVOR', 2, 3006),
(1139, 'כרמיאל', 'KARMI''EL', 2, 44710),
(874, 'מגדל העמק', 'MIGDAL HAEMEQ', 2, 24115),
(9100, 'נהרייה', 'NAHARIYYA', 2, 52613),
(7700, 'עפולה', 'AFULA', 2, 41293),
(8000, 'צפת', 'ZEFAT', 2, 32236),
(4100, 'קצרין', 'QAZRIN', 2, 6619),
(2800, 'קריית שמונה', 'QIRYAT SHEMONA', 2, 22992),
(26, 'ראש פינה', 'ROSH PINNA', 2, 2691),
(122, 'רמת ישי', 'RAMAT YISHAY', 2, 7113),
(812, 'שלומי', 'SHELOMI', 2, 6053),
(1337, 'שמשית', 'SHIMSHIT', 2, 2614),
(1020, 'אור עקיבא', 'OR AQIVA', 3, 15902),
(9800, 'בנימינה-גבעת עדה*', 'BINYAMINA-GIV''AT ADA', 3, 13567),
(9300, 'זכרון יעקב', 'ZIKHRON YA''AQOV', 3, 20242),
(6500, 'חדרה', 'HADERA', 3, 82489),
(2100, 'טירת כרמל', 'TIRAT KARMEL', 3, 18323),
(1284, 'נופית', 'NOFIT', 3, 2673),
(2500, 'נשר', 'NESHER', 3, 24019),
(53, 'עתלית', 'ATLIT', 3, 5797),
(7800, 'פרדס חנה-כרכור', 'PARDES HANNA-KARKUR', 3, 33544),
(1167, 'קיסריה', 'QESARYYA', 3, 4457),
(1247, 'קציר-חריש', 'QAZIR-HARISH', 3, 3300),
(6800, 'קריית אתא', 'QIRYAT ATTA', 3, 52030),
(9500, 'קריית ביאליק', 'QIRYAT BIALIK', 3, 37634),
(2300, 'קריית טבעון', 'QIRYAT TIV''ON', 3, 17057),
(9600, 'קריית ים', 'QIRYAT YAM', 3, 38211),
(8200, 'קריית מוצקין', 'QIRYAT MOTZKIN', 3, 38346),
(922, 'רכסים', 'REKHASIM', 3, 9753),
(182, 'אבן יהודה', 'EVEN YEHUDA', 4, 11853),
(41, 'אליכין', 'ELYAKHIN', 4, 3109),
(1309, 'אלעד', 'EL''AD', 4, 39796),
(2530, 'באר יעקב', 'BE''ER YA''AQOV', 4, 14510),
(466, 'בית דגן', 'BET DAGAN', 4, 6961),
(1050, 'בית חשמונאי', 'BET HASHMONAY', 4, 2010),
(1066, 'בני עי"ש', 'BENE AYISH', 4, 6962),
(1319, 'בת חפר', 'BAT HEFER', 4, 5417),
(147, 'גבעת ברנר', 'GIV''AT BRENNER', 4, 2506),
(681, 'גבעת שמואל', 'GIV''AT SHEMU''EL', 4, 23050),
(2550, 'גדרה', 'GEDERA', 4, 24392),
(166, 'גן יבנה', 'GAN YAVNE', 4, 20460),
(229, 'גני תקווה', 'GANNE TIQWA', 4, 13910),
(9700, 'הוד השרון', 'HOD HASHARON', 4, 49943),
(2660, 'יבנה', 'YAVNE', 4, 33333),
(577, 'יד בנימין', 'YAD BINYAMIN', 4, 3501),
(9400, 'יהוד', 'YEHUD', 4, 27604),
(1224, 'כוכב יאיר', 'KOKHAV YA''IR', 4, 9183),
(190, 'כפר ויתקין', 'KEFAR VITKIN', 4, 2026),
(696, 'כפר חב"ד', 'KEFAR HABAD', 4, 5205),
(168, 'כפר יונה', 'KEFAR YONA', 4, 19500),
(6900, 'כפר סבא', 'KEFAR SAVA', 4, 87335),
(1310, 'לפיד', 'LAPPID', 4, 2529),
(1200, 'מודיעין-מכבים-רעות*', 'MODI''IN-MAKKABBIM-RE''UT', 4, 80218),
(28, 'מזכרת בתיה', 'MAZKERET BATYA', 4, 10088),
(1315, 'מתן', 'MATTAN', 4, 3555),
(1333, 'נוף איילון', 'NOF AYYALON', 4, 2208),
(7200, 'נס ציונה', 'NES ZIYYONA', 4, 41251),
(7400, 'נתניה', 'NETANYA', 4, 189678),
(587, 'סביון*', 'SAVYON', 4, 3124),
(171, 'פרדסייה', 'PARDESIYYA', 4, 5460),
(7900, 'פתח תקווה', 'PETAH TIQWA', 4, 210376),
(276, 'צור משה', 'ZUR MOSHE', 4, 3043),
(195, 'קדימה-צורן', 'QADIMA-ZORAN', 4, 17602),
(469, 'קריית עקרון', 'QIRYAT EQRON', 4, 10295),
(2640, 'ראש העין', 'ROSH HAAYIN', 4, 39917),
(8300, 'ראשון לציון', 'RISHON LEZIYYON', 4, 232410),
(8400, 'רחובות', 'REHOVOT', 4, 118139),
(8700, 'רעננה', 'RA''ANNANA', 4, 69108),
(1304, 'שוהם', 'SHOHAM', 4, 19369),
(154, 'תל מונד', 'TEL MOND', 4, 10818),
(2400, 'אור יהודה', 'OR YEHUDA', 5, 35019),
(565, 'אזור', 'AZOR', 5, 11587),
(6100, 'בני ברק', 'BENE BERAQ', 5, 163301),
(6200, 'בת ים', 'BAT YAM', 5, 128157),
(6300, 'גבעתיים', 'GIV''ATAYIM', 5, 54728),
(6400, 'הרצלייה', 'HERZLIYYA', 5, 88734),
(6600, 'חולון', 'HOLON', 5, 182575),
(2620, 'קריית אונו', 'QIRYAT ONO', 5, 33384),
(8600, 'רמת גן', 'RAMAT GAN', 5, 148035),
(2650, 'רמת השרון', 'RAMAT HASHARON', 5, 42285),
(31, 'אופקים', 'OFAQIM', 6, 24366),
(2600, 'אילת', 'ELAT', 6, 46655),
(70, 'אשדוד', 'ASHDOD', 6, 212278),
(7100, 'אשקלון', 'ASHQELON', 6, 117429),
(9000, 'באר שבע', 'BE''ER SHEVA', 6, 196335),
(2200, 'דימונה', 'DIMONA', 6, 32433),
(831, 'ירוחם', 'YEROHAM', 6, 8282),
(1271, 'להבים', 'LEHAVIM', 6, 6063),
(1268, 'מיתר', 'METAR', 6, 6603),
(1082, 'מעגלים', 'MA''GALIM', 6, 2055),
(99, 'מצפה רמון', 'MIZPE RAMON', 6, 4915),
(1098, 'מרכז שפירא', 'MERKAZ SHAPPIRA', 6, 2255),
(246, 'נתיבות', 'NETIVOT', 6, 27978),
(666, 'עומר', 'OMER', 6, 7081),
(2560, 'ערד', 'ARAD', 6, 23437),
(2630, 'קריית גת', 'QIRYAT GAT', 6, 47750),
(1034, 'קריית מלאכי', 'QIRYAT MAL''AKHI', 6, 20941),
(1031, 'שדרות', 'SEDEROT', 6, 21050),
(709, 'תפרח', 'TIFRAH', 6, 2680),
(3760, 'אורנית', 'ORANIT', 7, 6600),
(3604, 'אלון שבות', 'ALLON SHEVUT', 7, 3051),
(3618, 'אלעזר', 'EL''AZAR', 7, 2081),
(3750, 'אלפי מנשה', 'ALFE MENASHE', 7, 7423),
(3560, 'אלקנה', 'ELQANA', 7, 3746),
(3650, 'אפרתה', 'EFRATA', 7, 7685),
(3570, 'אריאל', 'ARI''EL', 7, 17849),
(3574, 'בית אל', 'BET EL', 7, 5808),
(3652, 'בית אריה', 'BET ARYE', 7, 4057),
(3780, 'ביתר עילית', 'BETAR ILLIT', 7, 39710),
(3763, 'גבע בנימין', 'GEVA BINYAMIN', 7, 4487),
(3730, 'גבעת זאב', 'GIV''AT ZE''EV', 7, 12632),
(3769, 'הר אדר', 'HAR ADAR', 7, 3622),
(3770, 'חשמונאים', 'HASHMONA''IM', 7, 2643),
(3788, 'טלמון', 'TALMON', 7, 3073),
(3779, 'כוכב יעקב', 'KOKHAV YA''AQOV', 7, 6340),
(3638, 'כפר אדומים', 'KEFAR ADUMMIM', 7, 3434),
(3796, 'כפר האורנים', 'KEFAR HAORANIM', 7, 2542),
(3797, 'מודיעין עילית', 'MODI''IN ILLIT', 7, 52060),
(3616, 'מעלה אדומים', 'MA''ALE ADUMMIM', 7, 36089),
(3765, 'עלי', 'ELI', 7, 3220),
(3660, 'עמנואל', 'IMMANU''EL', 7, 2952),
(3617, 'עפרה', 'OFRA', 7, 3400),
(3557, 'קדומים', 'QEDUMIM', 7, 3904),
(3611, 'קריית ארבע', 'QIRYAT ARBA', 7, 7433),
(3640, 'קרני שומרון', 'QARNE SHOMERON', 7, 6449),
(3641, 'שילה', 'SHILO', 7, 2407),
(3720, 'שערי תקווה', 'SHA''ARE TIQWA', 7, 4930),
(3563, 'תקוע', 'TEQOA', 7, 2157);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
