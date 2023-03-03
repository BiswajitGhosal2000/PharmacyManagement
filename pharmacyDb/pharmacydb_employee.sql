CREATE DATABASE  IF NOT EXISTS `pharmacydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pharmacydb`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pharmacydb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `salary` double DEFAULT NULL,
  `emailId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `aadharNo` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `startDate` varchar(45) DEFAULT NULL,
  `endDate` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `isDeleted` tinyint DEFAULT '0',
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'gaurav','Kumar','Bokaro','Jharkhand','827011','Male','9876543210','2000-23-02',12340,'gauravkumar@gmail.com','96','125','class12','2023-03-02T15:42:49.988582700',NULL,1,0),(2,'Biswajit','Ghosal','Bankura','West Bengal','722202','Male','9932574811','2000-23-02',12000,'ghosalbiswajit11@gmail.com','1','1234567','class12','2023-03-01T11:07:16.854039500','2023-03-01T11:08:05.579325700',0,1),(3,'Ritwika','Shaw','Kolkata','West Bengal','722011','Female','1234567876','2000-23-02',15000,'ritwika@gmail.com','1','1234567','class12',NULL,'2023-02-28T15:51:30.980259500',0,1),(4,'Lokesh','Reddy','Guntur','Andhrapradesh','730020','Male','9874626212','2000-23-02',12300,'lokesh@gmail.com','1','123456789','class10',NULL,NULL,1,0),(5,'Sandeep','Kamila','Kolkata','West Bengal','123456','Male','1234567890','2000-23-02',12400,'sandeep@gmail.com','12345678','123456789876','class12',NULL,NULL,1,0),(6,'pratik','Biswas','Kolkata','West Bengal','123456','Male','1234567890','2000-23-02',13000,'pratik@gmail.com','12345678','1234567890','class12',NULL,NULL,1,0),(7,'Clarance','Fynan','Wissous','ÃŽle-de-France','253738','Male','1206403033','2000-23-02',NULL,'cfynan0@guardian.co.uk','T67JJdLzvW','138744336442','class12',NULL,NULL,0,1),(8,'Sosanna','Lynskey','Capandanan','West Bengal','111125','Female','2707619777','2000-23-02',12300,'slynskey1@wufoo.com','bfgFOB','982282465422','class12','2023-02-28T16:11:57.646576400','2023-02-28T19:33:09.389342400',0,1),(10,'Anny','Blunt','Yaâ€™ergenchu','west bengal','889544','Female','1971074253','2000-23-02',12000,'ablunt3@accuweather.com','QYht8o8WPfP','758886386834','class12','2023-02-28T19:34:13.317066',NULL,1,0),(11,'Tamar','Blaszczyk','Kristinehamn','VÃ¤rmland','882404','Female','4382587367','2000-23-02',12345,'tblaszczyk4@usnews.com','lxWuzYTTjpe','489252408080','class12','2023-02-28T19:35:36.937264600',NULL,1,0),(14,'Nessie','Eiler','Czarna','','525834','Female','9084984527','2000-23-02',15000,'neiler7@cbslocal.com','bEpuvODiM','399814199914','class12','2023-03-02T15:43:18.312848900',NULL,1,0),(15,'Adair','Brooksbie','Pasirpanjang','','890994','Male','4729130565','2000-23-02',NULL,'abrooksbie8@myspace.com','x1gnMP8','634487753195','class12',NULL,NULL,0,0),(16,'Max','Speller','Banda Layung','','670122','Female','1038971061','2000-23-02',NULL,'mspeller9@qq.com','Ro9wkP7ItBAP','970956582917','class12',NULL,NULL,0,0),(17,'Constantino','Pawlik','Cayna','','612383','Male','9839727464','2000-23-02',NULL,'cpawlika@admin.ch','jIlLCtF3Js','613211813844','class12',NULL,NULL,0,0),(18,'Cece','Caldron','KÃ¸benhavn','Region Hovedstaden','835974','Male','4748991794','2000-23-02',NULL,'ccaldronb@adobe.com','IINJqHV','120525237222','class12',NULL,NULL,0,0),(19,'Kelly','Wyvill','StrÃ¡nÃ­','','693118','Female','8492616594','2000-23-02',NULL,'kwyvillc@ebay.com','GXRya0PnxoZJ','977700143705','class12',NULL,NULL,0,0),(20,'Nappie','Alexandrescu','Niaojin','','553676','Male','2484654857','2000-23-02',NULL,'nalexandrescud@unc.edu','3KafVod5O','881069164894','class12',NULL,NULL,0,0),(21,'Letti','Scaplehorn','Jiandou','','423100','Female','6979435660','2000-23-02',NULL,'lscaplehorne@about.com','hcxHYmVIunu','361623407340','class12',NULL,NULL,0,0),(22,'Valerie','Yashanov','Mashi','','374844','Female','8578952849','2000-23-02',NULL,'vyashanovf@g.co','Oj10m1sM2MDK','734748224167','class12',NULL,NULL,0,0),(23,'Jeni','Lossman','Itapema','','553024','Female','3673954990','2000-23-02',NULL,'jlossmang@qq.com','vxoVkS','798499373908','class12',NULL,NULL,0,0),(24,'Susie','Rance','Ryazanâ€™','','335137','Female','7158089514','2000-23-02',NULL,'sranceh@vimeo.com','ssJxI3FIT','971321766394','class12',NULL,NULL,0,0),(25,'Maurizio','Foxcroft','Alhambra','California','657708','Male','6265326753','2000-23-02',NULL,'mfoxcrofti@etsy.com','kKpZUlK','570586558832','class12',NULL,NULL,0,0),(26,'Munmro','Currm','Humen','','206429','Male','2289507625','2000-23-02',NULL,'mcurrmj@canalblog.com','ySkSJn','286577907102','class12',NULL,NULL,0,0),(27,'Roxie','Margrem','Bonriki Village','','614989','Female','6856997569','2000-23-02',NULL,'rmargremk@scribd.com','K1n1MdAVx','808174738986','class12',NULL,NULL,0,0),(28,'Ursa','Cota','Nurlat','','340100','Female','2881330014','2000-23-02',NULL,'ucotal@nasa.gov','IIcZW8dqGFnG','919116054036','class12',NULL,NULL,0,0),(29,'Maje','Gulvin','Zakupne','','746755','Male','4986268482','2000-23-02',NULL,'mgulvinm@wordpress.com','KT8A7OPuYp6L','321964308648','class12',NULL,NULL,0,0),(30,'Cynthie','Tinham','Honolulu','Hawaii','815797','Female','8089587620','2000-23-02',NULL,'ctinhamn@spiegel.de','h6oMRSY','534538701774','class12',NULL,NULL,0,0),(31,'Caty','Heselwood','Birigui','','315632','Female','9751472660','2000-23-02',NULL,'cheselwoodo@feedburner.com','0nfAXWscp','296663138970','class12',NULL,NULL,0,0),(32,'Ardene','Delhay','Sidareja','','548295','Female','1553555922','2000-23-02',NULL,'adelhayp@arizona.edu','tTU8umELwCW','661760203501','class12',NULL,NULL,0,0),(33,'Seumas','Shepstone','Hancheng','','708932','Male','2235344125','2000-23-02',NULL,'sshepstoneq@so-net.ne.jp','CCLfckz5r9','796426241397','class12',NULL,NULL,0,0),(34,'Auria','Berrington','Gesik','','735203','Female','3857640321','2000-23-02',NULL,'aberringtonr@de.vu','6scPGUmmI','957179039726','class12',NULL,NULL,0,0),(35,'Halette','Neilus','Goubangzi','','582636','Female','4933775876','2000-23-02',NULL,'hneiluss@amazon.co.jp','wBQp7BWClf','247484198701','class12',NULL,NULL,0,0),(36,'Ives','Ginn','Huxiaoqiao','','111262','Male','5444398891','2000-23-02',NULL,'iginnt@yellowpages.com','CjjUM1Ef2Jl','395608438737','class12',NULL,NULL,0,0),(37,'Carlina','Clutten','Tovarnik','','898755','Female','5352307357','2000-23-02',NULL,'ccluttenu@hp.com','XMcLtkRMgm44','852476495877','class12',NULL,NULL,0,0),(38,'Adelheid','Hearns','Coyah','','209363','Female','2932280398','2000-23-02',NULL,'ahearnsv@woothemes.com','Ob1dpGls3','825942117398','class12',NULL,NULL,0,0),(39,'Silvia','Bows','Bassar','','277822','Female','4092493319','2000-23-02',NULL,'sbowsw@live.com','hD2toWzit','218293539227','class12',NULL,NULL,0,0),(40,'Sileas','Gillean','Cournon-d\'Auvergne','Auvergne','131727','Female','5528497557','2000-23-02',NULL,'sgilleanx@goo.ne.jp','IX65Jws8gt3','486537134174','class12',NULL,NULL,0,0),(41,'Marty','Fancott','Panacan','','482008','Female','8288592021','2000-23-02',NULL,'mfancotty@paginegialle.it','2v8P1pX','483509651761','class12',NULL,NULL,0,0),(42,'Cecil','Goodsir','Maojiadian','','880848','Male','9122876673','2000-23-02',NULL,'cgoodsirz@bbc.co.uk','nj5RzjE0ka','226898781124','class12',NULL,NULL,0,0),(43,'Hailey','Siely','Enskede','Stockholm','455674','Male','9336827980','2000-23-02',NULL,'hsiely10@bloomberg.com','ZxpCgByzU','305474681041','class12',NULL,NULL,0,0),(44,'Jilli','Treasure','PeruÃ­be','','619065','Female','3574250434','2000-23-02',NULL,'jtreasure11@joomla.org','qYlOq4VX2AO','524051063525','class12',NULL,NULL,0,0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `employee_AFTER_UPDATE` AFTER UPDATE ON `employee` FOR EACH ROW BEGIN
IF new.status = 1 then
delete from user where emailId = new.emailId;
insert into user(firstName,lastName,emailId,password) values (new.firstName, new.lastName,new.emailId,new.password);
END IF;
IF new.status = 0 then
delete from user where emailId = new.emailId;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `employee_AFTER_DELETE` AFTER DELETE ON `employee` FOR EACH ROW BEGIN
INSERT INTO deletedemployee(firstName,lastName,city,state,pincode,gender,phoneNumber,age,emailId,password,aadharNo)
VALUES(old.firstName,old.lastName,old.city,old.state,old.pincode,old.gender,old.phoneNumber,old.age,old.emailId,old.password,old.aadharNo);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02 22:51:11
