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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `customerName` varchar(45) NOT NULL,
  `orderDateTime` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `doctorName` varchar(45) NOT NULL,
  `totalPrice` double NOT NULL,
  `emailId` varchar(45) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Flexon','Gaurav','12/02/2023','992832382832','dwgdwd',12000,'biswajit@gmail.com'),(2,'Propranolol Hydrochloride','Vanni Cosby','06/05/2022','9539984269','Akim Moffet',1795,'amoffet0@army.mil'),(3,'Ketorolac Tromethamine','Alice Plenderleith','22/05/2022','4989282899','Maiga Mahmood',2555,'mmahmood1@issuu.com'),(4,'Supernatural Superbeautiful Makeup SPF 15','Bobbie MacCaull','09/07/2022','1497391786','Genny Gergus',547,'ggergus2@nymag.com'),(5,'LES BEIGES','Tobin Moat','26/06/2022','1815399324','Rockwell Surgey',103,'rsurgey3@cam.ac.uk'),(6,'Montelukast Sodium','Cori Fiorentino','11/11/2022','9413484060','Minor Deverick',4877,'mdeverick4@ow.ly'),(7,'Head and Shoulders','Lemuel Donner','19/11/2022','7214442677','Muriel Petersen',3953,'mpetersen5@github.io'),(8,'Neutrogena Oil Free Acne Wash','Devon Stubbley','02/05/2022','6566220385','Jenine Jurasz',1798,'jjurasz6@webnode.com'),(9,'Sinus Rescue','Hamlin Kalinowsky','22/05/2022','8678641346','Courtney Franceschielli',3870,'cfranceschielli7@omniture.com'),(10,'Glutose','Franchot Orteau','09/02/2023','2733221890','Renard Screase',2769,'rscrease8@amazon.co.uk'),(11,'Facilipro','Agustin Tellett','12/10/2022','8908689889','Jyoti Fearneley',4134,'jfearneleya@indiatimes.com'),(12,'Sisal','Stanislaus Kaminski','10/02/2023','9881012054','Jae Millichip',3326,'jmillichipb@earthlink.net'),(13,'GEMCITABINE','Shawna Rassell','06/05/2022','6276964459','Josepha Yvon',4072,'jyvonc@google.com'),(14,'Dove','Hildagarde Brinkworth','15/09/2022','4759386817','Reamonn Aldersea',1745,'raldersead@angelfire.com'),(15,'Midazolam','Chandra Kiernan','18/12/2022','3988705702','Gabie Manicom',3753,'gmanicome@blog.com'),(16,'MDSolarSciences','Franzen Sloley','05/03/2022','4724966538','Windham Menauteau',1333,'wmenauteauf@spotify.com'),(17,'Johnsons Baby Intense Moisture','Lay McCambridge','02/08/2022','7917929157','Toma Teece',4332,'tteeceg@vk.com'),(18,'Naproxen','Viva Sturley','18/09/2022','2224090359','Daryle MacKintosh',590,'dmackintoshh@yahoo.com'),(19,'La Prairie Switzerland','Catriona Crease','29/08/2022','8783023895','Alis Habergham',1753,'ahaberghami@umich.edu'),(20,'Buspirone Hydrochloride','Aurelea Lowings','11/11/2022','1006823888','Conn Winder',4748,'cwinderj@nps.gov'),(21,'OXYBUTYNIN CHLORIDE','Maurise Ettery','16/08/2022','9191755263','Ashil McClaren',667,'amcclarenk@github.com'),(22,'BARACLUDE','Rubi Carbert','30/11/2022','9573239547','Oneida Casone',1343,'ocasonel@merriam-webster.com'),(23,'Miconazole Nitrate','Cecil Cockings','21/06/2022','6957421167','Washington MacGray',4395,'wmacgraym@microsoft.com'),(24,'IT RADIANT CC','Zea Coslett','22/05/2022','5258190169','Carny McDyer',3916,'cmcdyern@europa.eu'),(25,'olio activ mouthwash','Flin Fenix','17/02/2023','1775361583','Beatrisa Ambrogiotti',3096,'bambrogiottio@businessweek.com'),(26,'Sei Bella Age-Defying Liquid Foundation','Nico Krahl','23/10/2022','8492007054','Dolph Mibourne',1203,'dmibournep@nationalgeographic.com'),(27,'Diclofenac Sodium','Amargo Storrock','10/09/2022','4166960729','Gene Tremblot',173,'gtremblotq@google.pl'),(28,'PENICILLIUM CHRYSOGENUM VAR CHRYSOGENUM','Cherianne Vischi','27/05/2022','4622497074','Eartha Aizikowitz',4655,'eaizikowitzr@mit.edu'),(29,'Levora','Kalindi Muttock','15/12/2022','3973340161','Ofelia Pelcheur',2942,'opelcheurs@spiegel.de'),(30,'Acyclovir','Matthieu Guare','10/12/2022','2386982517','Heall Gianolo',1329,'hgianolot@chicagotribune.com'),(31,'PAROXETINE','Alleyn Duigan','29/11/2022','8507495432','Ceciley Freak',111,'cfreaku@furl.net'),(32,'SYNTHROID','Gerda Deighton','29/11/2022','6377087319','Teressa Wakley',954,'twakleyv@boston.com'),(33,'HYDROCODONE BITARTRATE AND ACETAMINOPHEN','Mannie Baudacci','17/05/2022','6741989934','Karylin Ovitts',3203,'kovittsw@dot.gov'),(34,'Alendronate Sodium','Nonna Obert','01/11/2022','8411029864','Kelley Rustich',758,'krustichx@nih.gov'),(35,'Infants Pain Reliever','Hannie Sansun','18/07/2022','3426450922','Crista Tomasian',3634,'ctomasiany@flickr.com'),(36,'Cordia','Devon Mucci','31/08/2022','9234653428','Yevette Toffanelli',4519,'ytoffanelliz@dot.gov'),(37,'healthy accents cold head congestion','Odille Cassimer','07/11/2022','5297553564','Kariotta Genese',3079,'kgenese10@amazonaws.com'),(38,'Spironolactone','Edith Bootyman','15/11/2022','9561454970','Jodie Flello',1778,'jflello11@icio.us'),(39,'Wheat Stem Rust','Mary Beckerleg','24/02/2023','8679017168','Farica Pinnell',1383,'fpinnell13@hhs.gov');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02 22:51:11
