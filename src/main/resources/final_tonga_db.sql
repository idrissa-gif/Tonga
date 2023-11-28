-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: tonga_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `book_tb`
--

DROP TABLE IF EXISTS `book_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_tb` (
  `id` int NOT NULL,
  `destination` varchar(45) NOT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `adults` int(10) unsigned zerofill DEFAULT NULL,
  `children` int(10) unsigned zerofill DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_tb`
--

LOCK TABLES `book_tb` WRITE;
/*!40000 ALTER TABLE `book_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_tb`
--

DROP TABLE IF EXISTS `country_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_tb` (
  `id` bigint NOT NULL,
  `country_name` varchar(45) NOT NULL DEFAULT 'default_value',
  `country_tours` int unsigned DEFAULT '0',
  `country_operators` int unsigned DEFAULT '0',
  `image` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name_UNIQUE` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_tb`
--

LOCK TABLES `country_tb` WRITE;
/*!40000 ALTER TABLE `country_tb` DISABLE KEYS */;
INSERT INTO `country_tb` VALUES (66,'South Africa',3,3,'452972.jpg'),(78,'Tanzania',1,1,'africa-best-cities-stone-town-zanzibar.jpg');
/*!40000 ALTER TABLE `country_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (82);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_tb`
--

DROP TABLE IF EXISTS `operator_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operator_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `operator_name` varchar(256) DEFAULT NULL,
  `number_tour` int unsigned DEFAULT '0',
  `country` varchar(45) DEFAULT NULL,
  `rate` int unsigned DEFAULT '0',
  `image` varchar(1024) DEFAULT NULL,
  `description` varchar(2040) DEFAULT NULL,
  `offices` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operator_name_UNIQUE` (`operator_name`),
  UNIQUE KEY `UKmve7w9q1ulhn1x2225dn3mdjw` (`operator_name`),
  KEY `operator_country_fk_idx` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_tb`
--

LOCK TABLES `operator_tb` WRITE;
/*!40000 ALTER TABLE `operator_tb` DISABLE KEYS */;
INSERT INTO `operator_tb` VALUES (67,'MamaAfrica',2,'South Africa',4,'Afrika.png','add asdfasdfadsfsd','TN,SA,RW'),(75,'Afrika',0,'South Africa',4,'Arika.png',NULL,'SA,TN,RW'),(76,'Soul of Tanzania',1,'South Africa',3,'SoulofTanzania.gif',NULL,'TN'),(79,'spirit of tanzania',1,'Tanzania',5,'Afrika.png',NULL,'TN');
/*!40000 ALTER TABLE `operator_tb` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `increment_operators_count_country` AFTER INSERT ON `operator_tb` FOR EACH ROW BEGIN
    UPDATE country_tb
    SET country_operators = country_operators + 1
    WHERE country_name = NEW.country;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `decrement_operators_count_country` AFTER DELETE ON `operator_tb` FOR EACH ROW BEGIN
    UPDATE country_tb
    SET country_operators = country_operators - 1
    WHERE country_name = OLD.country;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `review_tb`
--

DROP TABLE IF EXISTS `review_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reviewer_name` varchar(45) DEFAULT NULL,
  `message` varchar(1024) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `rate` int(10) unsigned zerofill DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_tb`
--

LOCK TABLES `review_tb` WRITE;
/*!40000 ALTER TABLE `review_tb` DISABLE KEYS */;
INSERT INTO `review_tb` VALUES (1,'idrissa','thasdkasldf','Hama',0000000005,'1581904364861'),(3,'aba','aljadsl jasdlfjasdf','5 days in Safari',0000000004,'1681904364861'),(4,'idrissa','this is good place','5 days in Safari',0000000004,'1681904673485'),(5,'AI','ALSDJFLJ ALSDJF THIS IS AI','5 days in Safari',0000000004,'1681909397535'),(6,'CR8','klajsdlfj alsdfjasldfj ','5 days in Safari',0000000005,'1681924194819'),(7,'Anas','adksfjasdlfj asdlfjasdlkf ','5 days in Safari',0000000003,'1681924237203'),(8,'adsfasdf','asdfasdf','5 days in Safari',0000000002,'1681924250251'),(9,'idrissa','aljsdlfj aljdsf lads','5 days in Safari',0000000004,'1682169243305'),(10,'mbappe','ffgg ghjhg khkhj','5 days in Safari',0000000001,'1682191190526'),(11,'23','alkjsdf alsdjfals df','5 days in Safari',0000000004,'1682226010387'),(12,'adam','aljsdf lasdflajsdf las fd','5 days in Safari',0000000004,'1682230700227'),(13,'adsfasd','ask asdfasd','5 days in Safari',0000000003,'1682231041542'),(14,'idrissa','ada lsjdfa dfjlsdjafds ','5 days in Safari',0000000005,'1682238720335'),(15,'2','asdlfjasdlfjasdf','5 days in Safari',0000000004,'1682273874747'),(16,'1','asdfasdjfj adfd','5 days in Safari',0000000004,'1682274089364'),(17,'1','landfill','5 days in Safari',0000000004,'1682274203613'),(18,'1','1alsdjf','5 days in Safari',0000000004,'1682274295898'),(19,'1','ljasdfa','5 days in Safari',0000000005,'1682274421668'),(20,'3','asdkfasdf','5 days in Safari',0000000005,'1682274773220'),(21,'adf','pdf','5 days in Safari',0000000004,'1682274813037'),(22,'1','1','5 days in Safari',0000000001,'1682326747596'),(23,'help','alsjdf alsdfjlasdjf ','5 days in Safari',0000000004,'1682327181670'),(24,'test','ghjhhjh','5 days in Kruger park',0000000004,'1682411435597');
/*!40000 ALTER TABLE `review_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tb`
--

DROP TABLE IF EXISTS `role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb` (
  `role_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb`
--

LOCK TABLES `role_tb` WRITE;
/*!40000 ALTER TABLE `role_tb` DISABLE KEYS */;
INSERT INTO `role_tb` VALUES (1,'admin');
/*!40000 ALTER TABLE `role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tb_seq`
--

DROP TABLE IF EXISTS `role_tb_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb_seq`
--

LOCK TABLES `role_tb_seq` WRITE;
/*!40000 ALTER TABLE `role_tb_seq` DISABLE KEYS */;
INSERT INTO `role_tb_seq` VALUES (1);
/*!40000 ALTER TABLE `role_tb_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_tb`
--

DROP TABLE IF EXISTS `tour_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_tb` (
  `tour_id` bigint NOT NULL AUTO_INCREMENT,
  `tour_name` varchar(145) DEFAULT NULL,
  `description` varchar(10024) DEFAULT NULL,
  `prices` varchar(45) DEFAULT NULL,
  `number_person` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `image1` varchar(145) DEFAULT NULL,
  `image2` varchar(145) DEFAULT NULL,
  `image3` varchar(145) DEFAULT NULL,
  `country` varchar(45) NOT NULL,
  `tour_operator` varchar(255) NOT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `tour_operator_fk_idx` (`tour_name`),
  KEY `tour_country_fk_idx` (`country`),
  KEY `tour_operator_fk_idx1` (`tour_operator`),
  CONSTRAINT `tour_country_fk` FOREIGN KEY (`country`) REFERENCES `country_tb` (`country_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tour_operator_fk` FOREIGN KEY (`tour_operator`) REFERENCES `operator_tb` (`operator_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_tb`
--

LOCK TABLES `tour_tb` WRITE;
/*!40000 ALTER TABLE `tour_tb` DISABLE KEYS */;
INSERT INTO `tour_tb` VALUES (73,'5 days in kruger park','lajsdfl alsdfj alsdfj alsdfj lasfdj lasfdjl','990-1000','4','3','damian-patkowski-T-LfvX-7IVg-unsplash.jpg','1070639.png','bibhash-knapsnack-life-banerjee-krPO_vfPHVQ-unsplash.jpg','South Africa','MamaAfrica'),(74,'4 days in Safari Park ','lajf ladskf jlafjdl ffjdlj fdljksfljiel sflka fjalfifwfwl as,x aofsdksd','2000-2500','2','3','1070639.png','hana-el-zohiry-wEkp5JAAS7E-unsplash.jpg','serengeti_national_park.jpg','South Africa','MamaAfrica'),(77,'7 Serengeti national park','lad adkf lads aisdfk asdflk jafljdfkla daisdfiowf kafdlkal fk','2000-2500','4','3','serengeti_national_park.jpg','lina-loos-04-C1NZk1hE-unsplash (1).jpg','lina-loos-04-C1NZk1hE-unsplash (1).jpg','South Africa','Soul of Tanzania'),(81,'5 days in safari','aljfjd aldkfja ldjf adslfka dsflja','2000-2500','9','5','serengeti_national_park.jpg','Contact_backgroundimg.png','lina-loos-04-C1NZk1hE-unsplash (1).jpg','Tanzania','spirit of tanzania');
/*!40000 ALTER TABLE `tour_tb` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `increment_tours_count` AFTER INSERT ON `tour_tb` FOR EACH ROW BEGIN
    UPDATE country_tb
    SET country_tours = country_tours + 1
    WHERE country_name = NEW.country;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_operator_tours` AFTER INSERT ON `tour_tb` FOR EACH ROW BEGIN
    UPDATE `operator_tb` SET `number_tour` = `number_tour` + 1 WHERE `operator_name` = NEW.`tour_operator`;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `decrement_tours_count` AFTER DELETE ON `tour_tb` FOR EACH ROW BEGIN
    UPDATE country_tb
    SET country_tours = country_tours - 1
    WHERE country_name = OLD.country;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_operator_tours` AFTER DELETE ON `tour_tb` FOR EACH ROW BEGIN
    UPDATE `operator_tb` SET `number_tour` = `number_tour` - 1 WHERE `operator_name` = OLD.`tour_operator`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `toursuggestion_tb`
--

DROP TABLE IF EXISTS `toursuggestion_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toursuggestion_tb` (
  `id` int NOT NULL,
  `tour_title` varchar(256) DEFAULT NULL,
  `prices` varchar(120) DEFAULT NULL,
  `operator_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `Availability` varchar(45) DEFAULT NULL,
  `Image` varchar(145) DEFAULT NULL,
  `image1` varchar(145) DEFAULT NULL,
  `image2` varchar(145) DEFAULT NULL,
  `image3` varchar(145) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toursuggestion_tb`
--

LOCK TABLES `toursuggestion_tb` WRITE;
/*!40000 ALTER TABLE `toursuggestion_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `toursuggestion_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_tb`
--

DROP TABLE IF EXISTS `user_role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_tb` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user_tb` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_tb`
--

LOCK TABLES `user_role_tb` WRITE;
/*!40000 ALTER TABLE `user_role_tb` DISABLE KEYS */;
INSERT INTO `user_role_tb` VALUES (1,1);
/*!40000 ALTER TABLE `user_role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` bigint NOT NULL,
  `username` varchar(145) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UKcm1lhncg7gm505ikupvelrm4g` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
INSERT INTO `user_tb` VALUES (1,'admin','$2a$10$U5hMQhNBT1sOu8L7wxLAHexS13QCUVK8hlpgBPsHHQGqM0j115Pum','dicko@iut-dhaka.edu',NULL,NULL,NULL,NULL),(2,'idrissa','$2a$10$VNA8xAJVZkRmNNjZaM90v./kIIQq318.UNRG1Di2UWDinin1w49jS','idrissa@iut-dhaka.edu','01620412232',NULL,NULL,NULL),(8,'test','$2a$10$uQG5s5YLliNQH.WGvn9u5OqT.1ARBvk5cAs82h5LEfi/JVl4qOKGi','test@gmail.com','89283283','test one',NULL,NULL),(9,'test2','$2a$10$iROoFs2w9PbGsBIzXKLuaOMnn5UFG/vN8JOo83kcnMYkr.HM7ppTm','test2@gmail.com','082398','test two',NULL,NULL),(10,'test3','$2a$10$YFHkiWK.iY38hz/HSLPtgeyf6MFuJi541.DrtrasRkFo22/P.Vsca','test3@gmail.com','09238092','test three','adfd',NULL),(11,'test4','$2a$10$aDTohgpwXeImHpxmfZb.Gums8z/VjRViJaSDCUrZd5lZaoVkjW/AG','four@gmail.com','02380293','test four','gapizur',NULL),(12,'test5','$2a$10$wQC.Om0S69NPIjoQ0Z2wjujO.d65DTTzBTDSa1WV1CCTIbS2FP93a','five@gmail.com','90293029309','test five','gapura',NULL);
/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tonga_db'
--

--
-- Dumping routines for database 'tonga_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26 15:04:29
