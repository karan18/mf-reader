-- MySQL dump 10.13  Distrib 8.0.12, for osx10.14 (x86_64)
--
-- Host: localhost    Database: accounts
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `txns`
--

DROP TABLE IF EXISTS `txns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `txns` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `txn_date` date NOT NULL,
  `txn_datetime` datetime NOT NULL,
  `bank` varchar(64) NOT NULL,
  `reference_no` varchar(64) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_reference_no` (`bank`,`reference_no`,`description`,`txn_date`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txns`
--

LOCK TABLES `txns` WRITE;
/*!40000 ALTER TABLE `txns` DISABLE KEYS */;
INSERT INTO `txns` VALUES (1,'2017-12-28','2017-12-28 19:35:06','YES','000000000000','IFUND TRF_A/C CLOS PRO NR TO RES._KARAN NAHATA',0.00,22596121.70,22596121.70,'2018-12-30 11:57:41',NULL),(2,'2018-01-01','2018-01-01 01:47:01','YES','','Credit Interest Capitalised',0.00,15476.80,22611598.50,'2018-12-30 11:57:41',NULL),(3,'2018-01-03','2018-01-03 19:39:38','YES','000000000000','005FINW180030067-FCY-INREMIT-J P NAGAR',0.00,1045855.84,23657454.34,'2018-12-30 11:57:41',NULL),(4,'2018-01-29','2018-01-29 13:24:46','YES','','NEFT-N029180081259166-100012118080-KARAN NAHATA',80000.00,0.00,23577454.34,'2018-12-30 11:57:41',NULL),(5,'2018-01-30','2018-01-30 12:06:12','YES','000000150186','CHQ PAID SELF-WHITEFIELD 2',10000.00,0.00,23567454.34,'2018-12-30 11:57:41',NULL),(6,'2018-01-30','2018-01-30 13:48:00','YES','000000150184','Funds Trf-WHITEFIELD 2-040389900000049',44798.00,0.00,23522656.34,'2018-12-30 11:57:41',NULL),(7,'2018-02-04','2018-02-04 17:04:22','YES','51653','NET TXN: CREDITCARD 0001002070000001544',26881.73,0.00,23495774.61,'2018-12-30 11:57:41',NULL),(8,'2018-02-13','2018-02-13 10:24:05','YES','000000150177','ICICI PRUDENTIAL FOCUSED',15000.00,0.00,23480774.61,'2018-12-30 11:57:41',NULL),(9,'2018-02-13','2018-02-13 10:24:05','YES','000000150179','HDFC BALANCED FND GRWTH',15000.00,0.00,23465774.61,'2018-12-30 11:57:41',NULL),(10,'2018-02-13','2018-02-13 11:07:09','YES','','NEFT-N044180086153886-100012317925-KARAN NAHATA',90000.00,0.00,23375774.61,'2018-12-30 11:57:41',NULL),(11,'2018-02-16','2018-02-16 10:17:23','YES','000000150183','MAGNUM MULTIPLIER PLUS SC',10000.00,0.00,23365774.61,'2018-12-30 11:57:41',NULL),(12,'2018-02-19','2018-02-19 09:48:24','YES','000000150181','ADITYA BIRLA SUN LIFE AD',15000.00,0.00,23350774.61,'2018-12-30 11:57:41',NULL),(13,'2018-02-19','2018-02-19 15:47:06','YES','000000150187','Funds Trf-WHITEFIELD 2-040389900000049',44798.00,0.00,23305976.61,'2018-12-30 11:57:41',NULL),(14,'2018-02-20','2018-02-20 08:16:22','YES','','NEFT O/W N051180088023131 KARAN NAHATA ICICI BANK LTD',300000.00,0.00,23005976.61,'2018-12-30 11:57:41',NULL),(15,'2018-02-28','2018-02-28 07:18:25','YES','000000150180','KOTAK SELECT FOCUS FUND',20000.00,0.00,22985976.61,'2018-12-30 11:57:41',NULL),(16,'2018-03-02','2018-03-02 07:56:27','YES','000000150182','FRANKLIN INDIA SMALLER C',10000.00,0.00,22975976.61,'2018-12-30 11:57:41',NULL),(17,'2018-03-03','2018-03-03 08:50:26','YES','50692','NET TXN: CREDITCARD 0001002070000001544',40605.47,0.00,22935371.14,'2018-12-30 11:57:41',NULL),(18,'2018-03-12','2018-03-12 09:35:52','YES','000000150178','MIRAE ASSET EMERGING',15000.00,0.00,22920371.14,'2018-12-30 11:57:41',NULL),(19,'2018-03-15','2018-03-15 00:05:22','YES','','NEFT O/W N074180095032719 KARAN NAHATA ICICI BANK LTD',700000.00,0.00,22220371.14,'2018-12-30 11:57:41',NULL),(20,'2018-03-20','2018-03-20 10:44:51','YES','002357124971','ACH DR BIRLAMF20032018 CAMS 590980627723',15000.00,0.00,22205371.14,'2018-12-30 11:57:41',NULL),(21,'2018-03-28','2018-03-28 10:55:28','YES','002448525001','ACH DR KOTAKMF28032018 CAMS 591200263874',20000.00,0.00,22185371.14,'2018-12-30 11:57:41',NULL),(22,'2018-03-30','2018-03-30 12:54:10','YES','93561','NET TXN: CREDITCARD 0001002070000001544',56680.15,0.00,22128690.99,'2018-12-30 11:57:41',NULL),(23,'2018-04-01','2018-04-01 07:38:42','YES','','Credit Interest Capitalised',0.00,356515.15,22485206.14,'2018-12-30 11:57:41',NULL),(24,'2018-04-03','2018-04-03 10:38:21','YES','002525305757','ACH DR BD FRANKLINTEMPLETON TXTZ3254948',10000.00,0.00,22475206.14,'2018-12-30 11:57:41',NULL),(25,'2018-04-04','2018-04-04 22:20:39','YES','','NEFT-N094180101550140-100012883119-KARAN NAHATA',100000.00,0.00,22375206.14,'2018-12-30 11:57:41',NULL),(26,'2018-04-05','2018-04-05 14:17:45','YES','','NEFT O/W N095180101783836 KARAN NAHATA ICICI BANK LTD',100000.00,0.00,22275206.14,'2018-12-30 11:57:41',NULL),(27,'2018-04-09','2018-04-09 14:30:53','YES','002645178295','ACH DR HDFCMF 09042018 CAMS 590180782639',15000.00,0.00,22260206.14,'2018-12-30 11:57:41',NULL),(28,'2018-04-10','2018-04-10 10:50:02','YES','002651453971','ACH DR ICIPRU 10042018 CAMS 590680361164',15000.00,0.00,22245206.14,'2018-12-30 11:57:41',NULL),(29,'2018-04-10','2018-04-10 13:19:12','YES','002660736545','ACH DR BD  MIRAE MUTUAL FUN TIAI692264',15000.00,0.00,22230206.14,'2018-12-30 11:57:41',NULL),(30,'2018-04-16','2018-04-16 10:51:01','YES','002769831455','ACH DR BD  SBI MUTUAL FUND TIKK925171',10000.00,0.00,22220206.14,'2018-12-30 11:57:41',NULL),(31,'2018-04-20','2018-04-20 10:46:35','YES','002912275280','ACH DR BIRLAMF20042018 CAMS 590980685817',15000.00,0.00,22205206.14,'2018-12-30 11:57:41',NULL),(32,'2018-04-21','2018-04-21 12:25:55','YES','','NEFT O/W N111180106105565 KARAN NAHATA ICICI BANK LTD',100000.00,0.00,22105206.14,'2018-12-30 11:57:41',NULL),(33,'2018-04-24','2018-04-24 10:44:05','YES','48815','NET TXN: CREDITCARD 0001002070000001544',92887.39,0.00,22012318.75,'2018-12-30 11:57:41',NULL),(34,'2018-04-26','2018-04-26 16:04:06','YES','','NEFT Cr-DEUT0784BBY-WORKING ACCOUNT-KARAN NAHATA-180426419GN00010',0.00,904983.97,22917302.72,'2018-12-30 11:57:41',NULL),(35,'2018-04-26','2018-04-26 16:04:06','YES','','NEFT Cr-DEUT0784BBY-WORKING ACCOUNT-KARAN NAHATA-180426419GN00002',0.00,3267997.86,26185300.58,'2018-12-30 11:57:41',NULL),(36,'2018-04-30','2018-04-30 13:15:31','YES','003042993817','ACH DR KOTAKMF28042018 CAMS 591200285309',20000.00,0.00,26165300.58,'2018-12-30 11:57:41',NULL),(37,'2018-05-01','2018-05-01 10:59:41','YES','003056251038','ACH DR BD FRANKLINTEMPLETON TXTZ3503212',10000.00,0.00,26155300.58,'2018-12-30 11:57:41',NULL),(38,'2018-05-01','2018-05-01 11:06:54','YES','','NEFT-N121180108392922-100013151447-KARAN NAHATA',100000.00,0.00,26055300.58,'2018-12-30 11:57:41',NULL),(39,'2018-05-10','2018-05-10 13:07:27','YES','003221905224','ACH DR HDFCMF 09052018 CAMS 590180887439',15000.00,0.00,26040300.58,'2018-12-30 11:57:41',NULL),(40,'2018-05-10','2018-05-10 13:07:56','YES','003220114861','ACH DR BD  MIRAE MUTUAL FUN TIAI760984',15000.00,0.00,26025300.58,'2018-12-30 11:57:41',NULL),(41,'2018-05-10','2018-05-10 15:02:47','YES','003225019990','ACH DR ICIPRU 10052018 CAMS 590680391778',15000.00,0.00,26010300.58,'2018-12-30 11:57:41',NULL),(42,'2018-05-15','2018-05-15 12:50:28','YES','003292569939','ACH DR BD  SBI MUTUAL FUND TIKK1070413',10000.00,0.00,26000300.58,'2018-12-30 11:57:41',NULL),(43,'2018-05-19','2018-05-19 10:35:16','YES','','NEFT O/W N139180113907086 KARAN NAHATA ICICI BANK LTD',100000.00,0.00,25900300.58,'2018-12-30 11:57:41',NULL),(44,'2018-05-21','2018-05-21 10:42:21','YES','003367242742','ACH DR BIRLAMF20052018 CAMS 590980745476',15000.00,0.00,25885300.58,'2018-12-30 11:57:41',NULL),(45,'2018-05-27','2018-05-27 09:41:28','YES','','NEFT-N147180115699234-100013445590-KARAN NAHATA',1000000.00,0.00,24885300.58,'2018-12-30 11:57:41',NULL),(46,'2018-05-28','2018-05-28 11:06:37','YES','003449965318','ACH DR KOTAKMF28052018 CAMS 591200308547',20000.00,0.00,24865300.58,'2018-12-30 11:57:41',NULL),(47,'2018-05-31','2018-05-31 17:34:17','YES','','NEFT Cr-DEUT0784BBY-WORKING ACCOUNT-KARAN NAHATA-180531564GN00012',0.00,1101501.20,25966801.78,'2018-12-30 11:57:41',NULL),(48,'2018-06-01','2018-06-01 10:29:29','YES','003529996060','ACH DR BD FRANKLINTEMPLETON TXTZ3734841',10000.00,0.00,25956801.78,'2018-12-30 11:57:41',NULL),(49,'2018-06-01','2018-06-01 22:14:10','YES','31857','NET TXN: CREDITCARD 0001002070000001544',153135.14,0.00,25803666.64,'2018-12-30 11:57:41',NULL),(50,'2018-06-11','2018-06-11 10:41:07','YES','003691828256','ACH DR ICIPRU 10062018 CAMS 590680416447',15000.00,0.00,25788666.64,'2018-12-30 11:57:41',NULL),(51,'2018-06-11','2018-06-11 13:55:18','YES','003701993885','ACH DR BD  MIRAE MUTUAL FUN TIAI878702',15000.00,0.00,25773666.64,'2018-12-30 11:57:41',NULL),(52,'2018-06-11','2018-06-11 15:51:58','YES','003709212341','ACH DR HDFCMF 09062018 CAMS 590180997120',15000.00,0.00,25758666.64,'2018-12-30 11:57:41',NULL),(53,'2018-06-15','2018-06-15 13:11:27','YES','003778373559','ACH DR BD  SBI MUTUAL FUND TIKK1208418',10000.00,0.00,25748666.64,'2018-12-30 11:57:41',NULL),(54,'2018-06-20','2018-06-20 10:45:17','YES','003833274908','ACH DR BIRLAMF20062018 CAMS 590980813919',15000.00,0.00,25733666.64,'2018-12-30 11:57:41',NULL),(55,'2018-06-25','2018-06-25 19:57:42','YES','85333','NET TXN: CREDITCARD 0001002070000001544',17089.96,0.00,25716576.68,'2018-12-30 11:57:41',NULL),(56,'2018-06-28','2018-06-28 10:19:00','YES','003929305256','ACH DR KOTAKMF28062018 CAMS 591200330583',20000.00,0.00,25696576.68,'2018-12-30 11:57:41',NULL),(57,'2018-07-01','2018-07-01 05:34:47','YES','','Credit Interest Capitalised',0.00,387300.00,26083876.68,'2018-12-30 11:57:41',NULL),(58,'2018-07-02','2018-07-02 10:36:04','YES','004006255150','ACH DR BD FRANKLINTEMPLETON TXTZ3975265',10000.00,0.00,26073876.68,'2018-12-30 11:57:41',NULL),(59,'2018-07-09','2018-07-09 14:28:23','YES','004162541530','ACH DR HDFCMF 09072018 CAMS 590181090550',15000.00,0.00,26058876.68,'2018-12-30 11:57:41',NULL),(60,'2018-07-10','2018-07-10 10:44:52','YES','004168761013','ACH DR ICIPRU 10072018 CAMS 590680447557',15000.00,0.00,26043876.68,'2018-12-30 11:57:41',NULL),(61,'2018-07-10','2018-07-10 13:07:55','YES','004182966718','ACH DR BD  MIRAE MUTUAL FUN TIAI959134',15000.00,0.00,26028876.68,'2018-12-30 11:57:41',NULL),(62,'2018-07-16','2018-07-16 10:03:44','YES','004256186990','ACH DR BD  SBI MUTUAL FUND TIKK1400630',10000.00,0.00,26018876.68,'2018-12-30 11:57:41',NULL),(63,'2018-07-16','2018-07-16 14:13:28','YES','','EMI towards Loan No - 00202153',44048.00,0.00,25974828.68,'2018-12-30 11:57:41',NULL),(64,'2018-07-20','2018-07-20 10:52:32','YES','004338566575','ACH DR BIRLAMF20072018 CAMS 590980878155',15000.00,0.00,25959828.68,'2018-12-30 11:57:41',NULL),(65,'2018-07-30','2018-07-30 10:29:51','YES','004449441148','ACH DR KOTAKMF28072018 CAMS 591200351265',20000.00,0.00,25939828.68,'2018-12-30 11:57:41',NULL),(66,'2018-08-01','2018-08-01 10:22:35','YES','004518592442','ACH DR BD FRANKLINTEMPLETON TXTZ4225123',10000.00,0.00,25929828.68,'2018-12-30 11:57:41',NULL),(67,'2018-08-04','2018-08-04 09:26:32','YES','28125','NET TXN: CREDITCARD 0001002070000001544',26695.78,0.00,25903132.90,'2018-12-30 11:57:41',NULL),(68,'2018-08-09','2018-08-09 14:10:43','YES','004699953918','ACH DR HDFCMF 09082018 CAMS 590181228573',15000.00,0.00,25888132.90,'2018-12-30 11:57:41',NULL),(69,'2018-08-10','2018-08-10 10:16:09','YES','004706897888','ACH DR ICIPRU 10082018 CAMS 590680475307',15000.00,0.00,25873132.90,'2018-12-30 11:57:41',NULL),(70,'2018-08-10','2018-08-10 12:57:59','YES','004714809692','ACH DR BD  MIRAE MUTUAL FUN TIAI1072993',15000.00,0.00,25858132.90,'2018-12-30 11:57:41',NULL),(71,'2018-08-16','2018-08-16 10:50:25','YES','004776446794','ACH DR BD  SBI MUTUAL FUND TIKK1573613',10000.00,0.00,25848132.90,'2018-12-30 11:57:41',NULL),(72,'2018-08-16','2018-08-16 14:25:47','YES','','EMI towards Loan No - 00202153',44048.00,0.00,25804084.90,'2018-12-30 11:57:41',NULL),(73,'2018-08-20','2018-08-20 10:34:57','YES','004830186468','ACH DR BIRLAMF20082018 CAMS 590980950994',15000.00,0.00,25789084.90,'2018-12-30 11:57:41',NULL),(74,'2018-08-28','2018-08-28 11:04:38','YES','004946076833','ACH DR KOTAKMF28082018 CAMS 591200374251',20000.00,0.00,25769084.90,'2018-12-30 11:57:41',NULL),(75,'2018-09-01','2018-09-01 10:36:40','YES','005044089891','ACH DR BD FRANKLINTEMPLETON TXTZ4464978',10000.00,0.00,25759084.90,'2018-12-30 11:57:41',NULL),(76,'2018-09-04','2018-09-04 07:04:59','YES','76508','NET TXN: CREDITCARD 0001002070000001544',40430.59,0.00,25718654.31,'2018-12-30 11:57:41',NULL),(77,'2018-09-10','2018-09-10 10:30:55','YES','005192463383','ACH DR ICIPRU 10092018 CAMS 590680502224',15000.00,0.00,25703654.31,'2018-12-30 11:57:41',NULL),(78,'2018-09-10','2018-09-10 17:46:01','YES','005201468458','ACH DR BD  MIRAE MUTUAL FUN TIAI1193918',15000.00,0.00,25688654.31,'2018-12-30 11:57:41',NULL),(79,'2018-09-11','2018-09-11 10:47:57','YES','005207257890','ACH DR HDFCMF 09092018 CAMS 590181350925',15000.00,0.00,25673654.31,'2018-12-30 11:57:41',NULL),(80,'2018-09-14','2018-09-14 11:29:06','YES','','IMPS/COMPUTER AGE MANAGEM/XXX6168/RRN:825711962142/Icici Bank',0.00,1.00,25673655.31,'2018-12-30 11:57:41',NULL),(81,'2018-09-14','2018-09-14 13:24:49','YES','','NEFT-N257180148877935-100014847248-KARAN NAHATA',1000000.00,0.00,24673655.31,'2018-12-30 11:57:41',NULL),(82,'2018-09-15','2018-09-15 10:44:13','YES','005294505203','ACH DR BD  SBI MUTUAL FUND TIKK1776021',10000.00,0.00,24663655.31,'2018-12-30 11:57:41',NULL),(83,'2018-09-15','2018-09-15 14:13:11','YES','','EMI towards Loan No - 00202153',44048.00,0.00,24619607.31,'2018-12-30 11:57:41',NULL),(84,'2018-09-17','2018-09-17 08:48:41','YES','','RTGS Cr-HDFC0000240-ICICI PRUDENTIAL M F-Karan Nahata-HDFCR52018091794295401',0.00,301421.23,24921028.54,'2018-12-30 11:57:41',NULL),(85,'2018-09-17','2018-09-17 09:35:07','YES','','NEFT Cr-HDFC0000240-HDFC MUTUAL FUND RED-Karan Nahata-N260180633839526',0.00,158188.96,25079217.50,'2018-12-30 11:57:41',NULL),(86,'2018-09-17','2018-09-17 09:35:31','YES','','NEFT Cr-HDFC0000240-ICICI PRUDENTIAL M F-Karan Nahata-N260180633845968',0.00,50579.53,25129797.03,'2018-12-30 11:57:41',NULL),(87,'2018-09-18','2018-09-18 07:41:06','YES','','IMPS/TEMPLETON-INC FUND R/XXX4747/RRN:826107739925/NA',0.00,154382.70,25284179.73,'2018-12-30 11:57:41',NULL),(88,'2018-09-18','2018-09-18 07:41:39','YES','','IMPS/TEMPLETON-INC FUND R/XXX4747/RRN:826107739932/NA',0.00,68215.70,25352395.43,'2018-12-30 11:57:41',NULL),(89,'2018-09-18','2018-09-18 08:07:02','YES','','NEFT Cr-CITI0100000-ADITYA BIRLA SUNLIFE NEFT ACCOUNT-KARAN NAHATA-CITIN18919144659',0.00,16005.44,25368400.87,'2018-12-30 11:57:41',NULL),(90,'2018-09-18','2018-09-18 09:34:15','YES','','NEFT Cr-CITI0100000-DSP BLACKROCK MF REDEMPTION AC-KARAN NAHATA-CITIN18919147537',0.00,95111.18,25463512.05,'2018-12-30 11:57:41',NULL),(91,'2018-09-18','2018-09-18 10:04:26','YES','','NEFT Cr-KKBK0000958-MIRAE ASSET MF REDEMPTION A C-KARAN NAHATA-KKBK182619652802',0.00,114533.32,25578045.37,'2018-12-30 11:57:41',NULL),(92,'2018-09-18','2018-09-18 10:05:26','YES','','NEFT Cr-HDFC0000240-SBI MUTUAL FUND-Karan Nahata-N261180634671443',0.00,73881.47,25651926.84,'2018-12-30 11:57:41',NULL),(93,'2018-09-18','2018-09-18 11:05:24','YES','','NEFT Cr-KKBK0000958-KMMF Redemption-KARAN NAHATA-KKBK182619658083',0.00,172388.02,25824314.86,'2018-12-30 11:57:41',NULL),(94,'2018-09-20','2018-09-20 11:02:33','YES','005377692133','ACH DR BIRLAMF20092018 CAMS 590981025271',15000.00,0.00,25809314.86,'2018-12-30 11:57:41',NULL),(95,'2018-09-22','2018-09-22 09:58:51','YES','','NEFT-N265180150989127-100014932994-KARAN NAHATA',1000000.00,0.00,24809314.86,'2018-12-30 11:57:41',NULL),(96,'2018-09-25','2018-09-25 08:24:44','YES','000000150191','RASHMI NAHATA',5000000.00,0.00,19809314.86,'2018-12-30 11:57:41',NULL),(97,'2018-09-25','2018-09-25 08:34:03','YES','','RTGS Cr-HDFC0000240-HDFC MUTUAL FUND RED-Karan Nahata-HDFCR52018092595274659',0.00,400000.00,20209314.86,'2018-12-30 11:57:41',NULL),(98,'2018-09-25','2018-09-25 08:58:41','YES','','RTGS Cr-HDFC0000240-ICICI PRUDENTIAL M F-Karan Nahata-HDFCR52018092595281557',0.00,400000.00,20609314.86,'2018-12-30 11:57:41',NULL),(99,'2018-09-25','2018-09-25 11:02:42','YES','','NEFT-N268180151504091-100014956729-KARAN NAHATA',1000000.00,0.00,19609314.86,'2018-12-30 11:57:41',NULL),(100,'2018-09-26','2018-09-26 10:03:55','YES','000000150190','KARAN NAHATA',5000000.00,0.00,14609314.86,'2018-12-30 11:57:41',NULL),(101,'2018-09-26','2018-09-26 15:16:16','YES','','NEFT-N269180152020149-100014976409-KARAN NAHATA',1000000.00,0.00,13609314.86,'2018-12-30 11:57:41',NULL),(102,'2018-09-27','2018-09-27 10:11:20','YES','000000091781','RASHMI NAHATA',5000000.00,0.00,8609314.86,'2018-12-30 11:57:41',NULL),(103,'2018-09-28','2018-09-28 06:27:37','YES','000000091782','KARAN NAHATA',5000000.00,0.00,3609314.86,'2018-12-30 11:57:41',NULL),(104,'2018-09-29','2018-09-29 07:13:46','YES','000000150189','I C C L',2000000.00,0.00,1609314.86,'2018-12-30 11:57:41',NULL),(105,'2018-10-01','2018-10-01 00:08:22','YES','','Credit Interest Capitalised',0.00,388381.00,1997695.86,'2018-12-30 11:57:41',NULL),(106,'2018-10-06','2018-10-06 11:56:23','YES','96142','NET TXN: CREDITCARD 0001002070000001544',146479.52,0.00,1851216.34,'2018-12-30 11:57:41',NULL),(107,'2018-10-15','2018-10-15 13:20:15','YES','','EMI towards Loan No - 00202153',44048.00,0.00,1807168.34,'2018-12-30 11:57:41',NULL),(108,'2018-10-20','2018-10-20 11:04:09','YES','005889722753','ACH DR BIRLAMF20102018 CAMS 590981097385',15000.00,0.00,1792168.34,'2018-12-30 11:57:41',NULL),(109,'2018-11-03','2018-11-03 09:38:47','YES','3422','NET TXN: CREDITCARD 0001002070000001544',26906.44,0.00,1765261.90,'2018-12-30 11:57:41',NULL),(110,'2018-11-12','2018-11-12 14:44:00','YES','006238411345','ACH DR INDIANCLRCORPLTD X003715503',20000.00,0.00,1745261.90,'2018-12-30 11:57:41',NULL),(111,'2018-11-15','2018-11-15 13:11:56','YES','006291512983','ACH DR INDIANCLRCORPLTD X003756694',20000.00,0.00,1725261.90,'2018-12-30 11:57:41',NULL),(112,'2018-11-15','2018-11-15 13:11:56','YES','006291512984','ACH DR INDIANCLRCORPLTD X003757724',20000.00,0.00,1705261.90,'2018-12-30 11:57:41',NULL),(113,'2018-11-15','2018-11-15 15:01:38','YES','','EMI towards Loan No - 00202153',44048.00,0.00,1661213.90,'2018-12-30 11:57:41',NULL),(114,'2018-11-20','2018-11-20 10:12:07','YES','006337508871','ACH DR BIRLAMF20112018 CAMS 590981175691',15000.00,0.00,1646213.90,'2018-12-30 11:57:41',NULL),(115,'2018-11-21','2018-11-21 12:27:48','YES','006369481843','ACH DR INDIANCLRCORPLTD X003756858',20000.00,0.00,1626213.90,'2018-12-30 11:57:41',NULL),(116,'2018-11-30','2018-11-30 12:39:25','YES','006526637464','ACH DR INDIANCLRCORPLTD X003757696',20000.00,0.00,1606213.90,'2018-12-30 11:57:41',NULL),(117,'2018-12-03','2018-12-03 20:13:26','YES','62790','NET TXN: CREDITCARD 0001002070000001544',155276.14,0.00,1450937.76,'2018-12-30 11:57:41',NULL),(118,'2018-12-07','2018-12-07 06:03:03','YES','000000091786','MAX LIFE INSURANCE COMPA',395237.00,0.00,1055700.76,'2018-12-30 11:57:41',NULL),(119,'2018-12-10','2018-12-10 13:31:32','YES','006724080746','ACH DR INDIANCLRCORPLTD X003715503',20000.00,0.00,1035700.76,'2018-12-30 11:57:41',NULL),(120,'2018-12-15','2018-12-15 12:52:34','YES','','EMI towards Loan No - 00202153',44048.00,0.00,991652.76,'2018-12-30 11:57:41',NULL),(121,'2018-12-17','2018-12-17 12:45:17','YES','006843889584','ACH DR INDIANCLRCORPLTD X003757724',20000.00,0.00,971652.76,'2018-12-30 11:57:41',NULL),(122,'2018-12-17','2018-12-17 12:45:17','YES','006843889585','ACH DR INDIANCLRCORPLTD X003756694',20000.00,0.00,951652.76,'2018-12-30 11:57:41',NULL),(123,'2018-12-20','2018-12-20 10:05:00','YES','006884175956','ACH DR BIRLAMF20122018 CAMS 590981251304',15000.00,0.00,936652.76,'2018-12-30 11:57:41',NULL),(124,'2018-12-21','2018-12-21 12:29:13','YES','006912548995','ACH DR INDIANCLRCORPLTD X003756858',20000.00,0.00,916652.76,'2018-12-30 11:57:41',NULL);
/*!40000 ALTER TABLE `txns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-01 14:36:56
