-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: reach_app2
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `bulletins`
--

DROP TABLE IF EXISTS `bulletins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulletins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) NOT NULL,
  `from_user_id` varchar(255) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `timestamp_queued` varchar(255) NOT NULL,
  `timestamp_dequeued` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletins`
--

LOCK TABLES `bulletins` WRITE;
/*!40000 ALTER TABLE `bulletins` DISABLE KEYS */;
INSERT INTO `bulletins` VALUES (2,'2','1','REACH APP IS COMING SOON!!!','1448066152','1448066152'),(3,'3','1','WE ARE NOW ALPHABET','1448066152','1448066152'),(8,'1','3','REACH APP IS COMING SOON !!!!','1448066152','1448066152'),(9,'1','3','Very soon','1448070007','1448070007'),(10,'1','3','So soon','1448070047','1448070047'),(11,'1','3','just so soon','1448076684','1448076684'),(12,'1','3','For real','1448241152','1448241152'),(13,'3','2','hey, we\'re having a sale on google lookups !!!','1448322340','1448322340'),(14,'1','3','fore real real','1448416362','1448416362'),(15,'1','3','something something','1448417279','1448417279'),(16,'1','3','someting else','1448417321','1448417321'),(17,'1','3','hey ho','1448417339','1448417339'),(18,'1','3','ho hey','1448417346','1448417346'),(19,'1','3','sup dude','1448427646','1448427646'),(20,'3','2','booya!!!','1448434152','1448434152'),(21,'1','3','New stuff!','1448488233','1448488233'),(22,'3','6','Tyler Gym Closed tomorrow','1448680385','1448680385'),(23,'1','3','New app downlpad','1448817080','1448817080'),(24,'1','13','brewer is king!','1449092581','1449092581'),(25,'3','13','google rocks !','1449092593','1449092593');
/*!40000 ALTER TABLE `bulletins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Brewer Digital, Corp.','We make beer into codez','img/brewer_digital.jpg',''),(2,'Gym Fed','Work hard, get results.','img/gymfed.jpeg', ''),(3,'Google, Inc.','Look around for things. and stuff and junk n stuffs','img/google.jpg','');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) NOT NULL,
  `from_user_id` varchar(255) NOT NULL,
  `recipient_user_id` varchar(255) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `timestamp_queued` varchar(255) NOT NULL,
  `timestamp_dequeued` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'1','1','2','hey1','1448066152','1448066152'),(2,'1','2','1','hey2','1448066152','1448066152'),(3,'1','1','2','hey3','1448066152','1448066152'),(4,'1','2','1','hey4','1448066152','1448066152'),(5,'1','1','2','hey5','1448066152','1448066152'),(6,'1','1','2','hey6','1448066152','1448066152'),(7,'1','3','2','bang1','1448066152','1448066152'),(8,'1','3','2','bang2','1448066152','1448066152'),(9,'1','2','3','bang3','1448066152','1448066152'),(10,'1','2','3','bang4','1448066152','1448066152'),(11,'1','3','2','bang5','1448066152','1448066152'),(12,'1','3','1','bop1','1448066152','1448066152'),(13,'1','1','3','bop2','1448066152','1448066152'),(18,'1','3','1','bop3 dude !!!','1448066152','1448066152'),(19,'1','1','3','bop4 mang','1448066152','1448066152'),(20,'1','3','1','bop5 yo','1448066152','1448066152'),(21,'1','3','1','hey brook, how are you ?','1448066152','1448066152'),(22,'1','3','2','lappin, you are super cool !!!','1448066152','1448066152'),(23,'1','1','3','doing great Joel !!!','1448066152','1448066152'),(24,'1','3','1','fdsafds','1448066152','1448066152'),(25,'1','3','1','fdafdsafdsa','1448066152','1448066152'),(26,'1','3','1','fdsafdsa','1448066152','1448066152'),(27,'1','3','1','Cool','1448066152','1448066152'),(28,'1','3','1','something','1448066152','1448066152'),(29,'1','3','2','buddy','1448066152','1448066152'),(30,'1','3','2','this and that','1448066152','1448066152'),(31,'1','3','1','yo dahg','1448066152','1448066152'),(32,'1','1','3','fdsafdsa','1448066152','1448066152'),(33,'1','1','3','Hi','1448066152','1448066152'),(34,'1','3','2','holla','1448066152','1448066152'),(35,'1','3','1','Hey man','1448066152','1448066152'),(36,'1','3','1','\'tis Joel','1448066152','1448066152'),(37,'1','1','3','yo, tis me !   Brook','1448066152','1448066152'),(38,'1','1','3','how goes ?','1448066152','1448066152'),(39,'1','3','1','yo yo! go REACH','1448066152','1448066152'),(40,'1','1','3','reach out and touch, babe!','1448066152','1448066152'),(41,'1','3','1','hey ho, let\'s go !!!','1448069094','1448069094'),(42,'1','3','1','let\'s do dis','1448069157','1448069157'),(43,'1','3','1','what\'s up ?','1448069181','1448069181'),(44,'1','3','2','this rules','1448069219','1448069219'),(45,'1','3','1','totally dude','1448069232','1448069232'),(46,'1','1','3','Buddy!','1448069734','1448069734'),(47,'1','3','1','dude','1448069751','1448069751'),(48,'1','3','1','totall','1448075599','1448075599'),(49,'1','3','1','totes','1448075948','1448075948'),(50,'1','3','1','you are','1448075995','1448075995'),(51,'1','1','3','no, you are the one who is','1448076010','1448076010'),(52,'1','3','1','really ?','1448076022','1448076022'),(53,'1','1','3','yes, really','1448076030','1448076030'),(54,'1','1','3','sup','1448076128','1448076128'),(55,'1','3','1','sup brah','1448076137','1448076137'),(56,'1','1','3','brah','1448076346','1448076346'),(57,'1','1','3','bro','1448076352','1448076352'),(58,'1','2','3','you rule man','1448076381','1448076381'),(59,'1','3','2','I think it is you who rule','1448076401','1448076401'),(60,'1','2','3','fasdfds','1448076421','1448076421'),(61,'1','3','2','fdsafdsf','1448076428','1448076428'),(62,'1','3','2','whaaaa','1448076492','1448076492'),(63,'1','2','3','totes dude','1448076500','1448076500'),(64,'1','3','2','you knows it','1448076515','1448076515'),(65,'1','3','1','brah','1448076768','1448076768'),(66,'1','2','3','sup','1448077897','1448077897'),(67,'1','3','2','sup','1448077919','1448077919'),(68,'1','2','3','nmuch','1448077929','1448077929'),(69,'1','3','2','cool','1448077957','1448077957'),(70,'1','2','3','yeah, pretty much','1448077966','1448077966'),(71,'1','3','1','sup','1448078488','1448078488'),(72,'1','3','2','sup buddy','1448078500','1448078500'),(73,'1','2','3','hey man, much, wanna workout ?','1448078524','1448078524'),(74,'1','3','2','totes dude','1448078532','1448078532'),(75,'1','3','2','magotes','1448078550','1448078550'),(76,'1','1','2','you serious ?','1448078577','1448078577'),(77,'1','2','1','oh yeah man... totes','1448078589','1448078589'),(78,'1','2','1','fdsafds','1448078607','1448078607'),(79,'1','1','2','fdsfds','1448078615','1448078615'),(80,'1','2','1','fdsa','1448078621','1448078621'),(81,'1','1','2','fdsa','1448078633','1448078633'),(82,'1','1','2','ffffff','1448078640','1448078640'),(83,'1','2','1','do wha ?','1448078652','1448078652'),(84,'1','1','2','do wha.','1448078660','1448078660'),(85,'3','2','3','i am CEO of google now!','1448138588','1448138588'),(86,'1','3','2','that\'s so rad','1448141669','1448141669'),(87,'1','3','2','sup','1448151057','1448151057'),(88,'1','3','2','very cool','1448151645','1448151645'),(89,'1','3','2','good luck','1448151654','1448151654'),(90,'3','3','2','w00t!','1448151727','1448151727'),(91,'3','3','2','w00t w00t!','1448151736','1448151736'),(92,'3','2','3','i will do no evil.','1448155000','1448155000'),(93,'3','3','2','yup.','1448152889','1448152889'),(94,'1','3','1','saaaa','1448154248','1448154248'),(95,'1','3','1','p','1448154254','1448154254'),(96,'1','3','2','thanks dude','1448155148','1448155148'),(97,'1','2','3','you betcha','1448155277','1448155277'),(98,'1','2','3','you totally betcha','1448155296','1448155296'),(99,'1','2','3','whaaaaa','1448155305','1448155305'),(100,'1','3','2','yeah dord','1448155319','1448155319'),(101,'3','3','2','whaa','1448155337','1448155337'),(102,'3','2','3','whaa','1448155412','1448155412'),(103,'3','3','2','indeed','1448155419','1448155419'),(104,'1','3','1',':)','1448156341','1448156341'),(105,'1','1','3',':p','1448156381','1448156381'),(106,'1','1','2','hey dude, wassup ? !!!','1448156523','1448156523'),(107,'1','3','1','hey ho','1448159305','1448159305'),(108,'3','3','2','fdafasdfds','1448168162','1448168162'),(109,'1','2','3','hey man, how are you ?','1448220575','1448220575'),(110,'1','2','3','oh, for real ?','1448220585','1448220585'),(111,'1','1','3','yhhhhh','1448220762','1448220762'),(112,'1','3','1','oh man, totally.','1448220794','1448220794'),(113,'1','1','3','yeah, i hear you.','1448220802','1448220802'),(114,'3','3','2','haha','1448220840','1448220840'),(115,'3','2','3','yes, haha','1448220943','1448220943'),(116,'3','3','2','what\'s up dude?','1448222837','1448222837'),(117,'3','3','2','hey man, it\'s google joel, the customer.','1448230569','1448230569'),(118,'3','3','2','Yeah dude','1448241011','1448241011'),(119,'3','3','2','Totes','1448241087','1448241087'),(120,'2','3','3','Me','1448241112','1448241112'),(121,'1','3','1','Very','1448241198','1448241198'),(122,'3','2','3','Real','1448249567','1448249567'),(123,'1','2','1','Jjj','1448249590','1448249590'),(124,'3','3','2','yup','1448249668','1448249668'),(125,'1','3','2','yes','1448249705','1448249705'),(126,'1','2','3','Sooooooo','1448249722','1448249722'),(127,'1','3','2','you got it dude','1448249738','1448249738'),(128,'1','6','1','hey buddy, it\'s cody... good to be apart of reach app!','1448321640','1448321640'),(129,'1','1','6','good to have you aboard!','1448321655','1448321655'),(130,'1','6','1','ehy','1448321738','1448321738'),(131,'1','6','1','hey there','1448321758','1448321758'),(132,'1','6','1','hey ho','1448321779','1448321779'),(133,'1','6','1','hey how are you','1448322138','1448322138'),(134,'1','1','6','still pretty good','1448322154','1448322154'),(135,'1','6','2','lappin','1448322250','1448322250'),(136,'1','2','6','hey cody','1448322280','1448322280'),(137,'1','6','1','sup','1448326502','1448326502'),(138,'3','6','1','sup','1448326520','1448326520'),(139,'3','1','6','sup','1448326589','1448326589'),(140,'1','3','2','dontcha know','1448416343','1448416343'),(141,'1','3','2','i do','1448417388','1448417388'),(142,'1','3','1','yup','1448417402','1448417402'),(143,'3','3','2','yup yup','1448417433','1448417433'),(144,'1','3','1','yes','1448417513','1448417513'),(145,'2','3','3','me me','1448417577','1448417577'),(146,'3','3','2','yo yo','1448430900','1448430900'),(147,'3','2','3','yo yo indeed','1448430966','1448430966'),(148,'3','2','3','yes y\'all','1448430994','1448430994'),(149,'1','2','3','hey ho','1448433882','1448433882'),(150,'3','3','2','hey','1448441932','1448441932'),(151,'3','3','6','sup','1448441975','1448441975'),(152,'2','3','3','joel!','1448442014','1448442014'),(153,'1','3','2','hey there','1448484571','1448484571'),(154,'1','3','1','yup','1448484579','1448484579'),(155,'2','3','3','cool!','1448484589','1448484589'),(156,'3','3','2','hi','1448484682','1448484682'),(157,'1','6','2','Hey Lap, what\'s up!','1448497950','1448497950'),(158,'3','3','6','Hey','1448723619','1448723619'),(159,'1','3','1','Hey','1448817053','1448817053'),(160,'3','3','6','G','1448817546','1448817546'),(161,'1','6','2','Yolo','1448901922','1448901922'),(162,'1','3','1','Test','1448939100','1448939100'),(163,'1','3','2','Test','1449002848','1449002848'),(164,'1','13','1','you rock','1449096584','1449096584'),(165,'1','13','1','i rock','1449096605','1449096605');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perms`
--

DROP TABLE IF EXISTS `perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perms`
--

LOCK TABLES `perms` WRITE;
/*!40000 ALTER TABLE `perms` DISABLE KEYS */;
INSERT INTO `perms` VALUES (1,'1','1','admin'),(5,'1','3','admin'),(6,'2','3','employee'),(7,'3','3','customer'),(8,'3','2','admin'),(9,'1','2','employee'),(10,'1','4','customer'),(11,'1','5','customer'),(12,'3','1','employee'),(13,'1','6','employee'),(14,'3','6','admin'),(15,'1','7','admin'),(16,'1','8','admin'),(17,'1','9','customer'),(18,'3','10','employee'),(19,'1','11','employee'),(20,'3','12','undefined');
/*!40000 ALTER TABLE `perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `super_admin` tinyint(1) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mrgoby@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','Brook','Davis','GobytroNiX','head leader',0,'',''),(2,'lappin.hammond@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','Lappin','Hammondy','null','null',0,'',''),(3,'joelbrewer01@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','Joel','Brewersteinner','Brewer Digital','Owner',0,'',''),(4,'someone@somewhere.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,0,'',''),(5,'bobby@bobby.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,0,'',''),(6,'codyfedell@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','Cody','Fedell','GymFed','Owner',NULL,'',''),(7,'bobbyjones@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(8,'bobbyjones2@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(9,'bobbyjones3@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(10,'bobbyjoedawg@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(11,'another@somehwere.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(12,'Codyfed@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','John','Doe',NULL,NULL,NULL,'',''),(13,'test.user@gmail.com','ede97144247e25cb1f63c8a6a5f0b57d','Test','SuperAdmin','Uberscale','Boss',1,'','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-02 23:19:17
