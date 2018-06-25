-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: websystique
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sso_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_profile`
--

DROP TABLE IF EXISTS `app_user_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`),
  CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_profile`
--

LOCK TABLES `app_user_user_profile` WRITE;
/*!40000 ALTER TABLE `app_user_user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikli`
--

DROP TABLE IF EXISTS `artikli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vrste_artikala_naziv` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `jedinice_mera_id` bigint(20) DEFAULT NULL,
  `klasifikacije_id` bigint(20) DEFAULT NULL,
  `poreske_grupe_id` bigint(20) DEFAULT NULL,
  `vrste_artikala_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hx9k3ibbioo4m5s479s00cbk` (`jedinice_mera_id`),
  KEY `FK_8mh3tpfyftgsnquy9hnmqh1k5` (`klasifikacije_id`),
  KEY `FK_jiwsomivwprpfpnhe14jsw3c` (`poreske_grupe_id`),
  KEY `FK_ptdpcc74ldpm54pf3liua6brt` (`vrste_artikala_id`),
  CONSTRAINT `FK_8mh3tpfyftgsnquy9hnmqh1k5` FOREIGN KEY (`klasifikacije_id`) REFERENCES `klasifikacije` (`id`),
  CONSTRAINT `FK_hx9k3ibbioo4m5s479s00cbk` FOREIGN KEY (`jedinice_mera_id`) REFERENCES `jedinice_mera` (`id`),
  CONSTRAINT `FK_jiwsomivwprpfpnhe14jsw3c` FOREIGN KEY (`poreske_grupe_id`) REFERENCES `poreske_grupe` (`id`),
  CONSTRAINT `FK_ptdpcc74ldpm54pf3liua6brt` FOREIGN KEY (`vrste_artikala_id`) REFERENCES `vrste_artikala` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikli`
--

LOCK TABLES `artikli` WRITE;
/*!40000 ALTER TABLE `artikli` DISABLE KEYS */;
INSERT INTO `artikli` VALUES (7,NULL,'','2',NULL,NULL,'Koka kola1','rema',NULL,'2018-06-12 15:37:19',NULL,NULL,NULL,3,2,1,12),(8,NULL,'','1',NULL,NULL,'Chocolate 100g','asdf',NULL,'2018-02-08 12:43:31',NULL,NULL,NULL,1,2,1,11),(9,NULL,'','3',NULL,NULL,'Milk ','',NULL,'2018-02-08 12:43:52',NULL,NULL,NULL,3,2,1,11),(10,NULL,'','4',NULL,NULL,'Kecap','',NULL,'2018-05-30 10:47:24',NULL,NULL,NULL,1,2,1,11);
/*!40000 ALTER TABLE `artikli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokument`
--

DROP TABLE IF EXISTS `dokument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokument` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `broj_prijemnice` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `broj_dokumenta` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `id_komitent` bigint(20) DEFAULT NULL,
  `id_magacin` bigint(20) DEFAULT NULL,
  `id_vrsta_dokumenta` bigint(20) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `iznos` decimal(19,2) DEFAULT NULL,
  `porez` decimal(19,2) DEFAULT NULL,
  `iznos_bez_poreza` decimal(19,2) DEFAULT NULL,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `user` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `datum_vreme` datetime DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `interni_broj_dokumenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d3kcanfu9i80qm57i6tgl9h62` (`id_vrsta_dokumenta`),
  KEY `FK_75e9tn2lda8bl4rotwprpeef5` (`id_komitent`),
  CONSTRAINT `FK_75e9tn2lda8bl4rotwprpeef5` FOREIGN KEY (`id_komitent`) REFERENCES `partner` (`id`),
  CONSTRAINT `FK_d3kcanfu9i80qm57i6tgl9h62` FOREIGN KEY (`id_vrsta_dokumenta`) REFERENCES `types_of_documents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokument`
--

LOCK TABLES `dokument` WRITE;
/*!40000 ALTER TABLE `dokument` DISABLE KEYS */;
INSERT INTO `dokument` VALUES (2,NULL,'ert','2018-01-10',1,17,1,'aaaaa',442.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-06-05 13:11:26',NULL,33),(3,NULL,'44','2018-01-05',1,17,1,'',200.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-02-14 10:37:50',NULL,NULL),(4,NULL,'43','2018-01-24',1,15,1,'asdf',135.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-01-06 18:20:32',NULL,NULL),(5,NULL,'77','2018-02-08',1,15,2,'asdfsad',50.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-02-08 13:26:58',NULL,NULL),(6,NULL,'0802','2018-02-08',3,15,2,'asdf',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-02-08 14:42:03',NULL,NULL),(7,NULL,'10','2018-02-12',2,15,1,'napomena',170.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-05-30 14:57:40',NULL,NULL),(8,NULL,'14','2018-05-30',1,17,1,'ova napomena',175.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-05-30 14:56:05',NULL,NULL),(9,NULL,'','2018-06-05',1,15,1,'',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-06-05 13:04:40',NULL,34),(10,NULL,'PR-001','2018-06-15',1,19,1,'',150.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-06-15 08:25:21',NULL,35),(11,NULL,'1','2018-06-15',2,17,1,'',11.00,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2018-06-15 08:25:12',NULL,1);
/*!40000 ALTER TABLE `dokument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokument_stavke`
--

DROP TABLE IF EXISTS `dokument_stavke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokument_stavke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `id_dokument` bigint(20) DEFAULT NULL,
  `id_magacin` bigint(20) DEFAULT NULL,
  `id_roba` bigint(20) DEFAULT NULL,
  `roba_naziv` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_vrsta_dokumenta` bigint(20) DEFAULT NULL,
  `kolicina` decimal(19,2) DEFAULT NULL,
  `ulaz` decimal(19,2) DEFAULT NULL,
  `izlaz` decimal(19,2) DEFAULT NULL,
  `cena` decimal(19,2) DEFAULT NULL,
  `duguje` decimal(19,2) DEFAULT NULL,
  `potrazuje` decimal(19,2) DEFAULT NULL,
  `iznos` decimal(19,2) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `datumvreme` datetime DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dokument_stavkecol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7rerlj1gft3p0qn5wrl1b46ju` (`id_dokument`),
  KEY `FK_qxmrqcev02dsx7w0l3fp2c0uj` (`id_vrsta_dokumenta`),
  KEY `FK_dngbsx9u2ns83h5my0wo9n3m6` (`id_roba`),
  CONSTRAINT `FK_7rerlj1gft3p0qn5wrl1b46ju` FOREIGN KEY (`id_dokument`) REFERENCES `dokument` (`id`),
  CONSTRAINT `FK_dngbsx9u2ns83h5my0wo9n3m6` FOREIGN KEY (`id_roba`) REFERENCES `artikli` (`id`),
  CONSTRAINT `FK_qxmrqcev02dsx7w0l3fp2c0uj` FOREIGN KEY (`id_vrsta_dokumenta`) REFERENCES `types_of_documents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokument_stavke`
--

LOCK TABLES `dokument_stavke` WRITE;
/*!40000 ALTER TABLE `dokument_stavke` DISABLE KEYS */;
INSERT INTO `dokument_stavke` VALUES (4,'2018-04-01',2,15,8,NULL,1,10.00,10.00,0.00,12.00,120.00,0.00,120.00,NULL,NULL,'',NULL,NULL,NULL),(5,'2018-05-01',2,15,7,NULL,1,10.00,15.00,NULL,15.00,NULL,150.00,12.00,NULL,NULL,'',NULL,NULL,NULL),(7,'2018-04-14',NULL,15,7,NULL,1,14.00,10.00,2.00,14.00,NULL,NULL,14.00,NULL,NULL,'',NULL,NULL,NULL),(8,'2018-03-03',2,15,7,NULL,1,12.00,30.00,NULL,12.00,NULL,NULL,12.00,NULL,NULL,'',NULL,NULL,NULL),(9,'2018-01-10',2,15,7,NULL,1,15.00,44.00,10.00,15.00,NULL,NULL,15.00,NULL,NULL,'',NULL,NULL,NULL),(10,'2018-02-02',2,NULL,7,NULL,1,44.00,NULL,15.00,44.00,NULL,NULL,44.00,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,2,15,7,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,2,15,7,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,3,NULL,7,NULL,NULL,3.00,NULL,NULL,33.00,NULL,NULL,3.00,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,2,15,7,NULL,NULL,2.00,NULL,NULL,22.00,NULL,NULL,33.00,NULL,NULL,'',NULL,NULL,NULL),(15,'2018-05-29',4,15,8,NULL,NULL,4.00,NULL,4.00,10.00,NULL,40.00,40.00,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,4,15,7,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,6,15,8,NULL,2,3.00,NULL,NULL,3.00,NULL,NULL,3.00,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,6,15,7,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(20,'2018-05-12',6,15,9,NULL,2,1.00,NULL,NULL,1.00,NULL,NULL,1.00,NULL,NULL,'',NULL,NULL,NULL),(22,'2018-05-11',2,15,8,NULL,1,44.00,NULL,44.00,4.00,186.00,NULL,186.00,NULL,NULL,'',NULL,NULL,NULL),(23,'2018-01-10',2,15,9,NULL,1,2.00,NULL,NULL,2.00,NULL,NULL,2.00,NULL,'2018-05-30 14:57:56','',NULL,NULL,NULL),(24,NULL,5,15,8,NULL,2,444.00,NULL,NULL,1.00,NULL,NULL,1.00,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,5,15,9,NULL,2,44.00,NULL,NULL,4.00,NULL,NULL,4.00,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,7,15,7,NULL,1,10.00,NULL,NULL,10.00,NULL,NULL,10.00,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,7,15,9,NULL,1,10.00,NULL,NULL,10.00,NULL,NULL,10.00,NULL,NULL,'',NULL,NULL,NULL),(28,'2018-02-12',7,15,8,NULL,1,14.00,NULL,NULL,15.00,NULL,NULL,150.00,NULL,'2018-05-30 14:57:40','',NULL,NULL,NULL),(29,'2018-05-30',8,17,10,NULL,1,10.00,NULL,NULL,15.00,NULL,NULL,150.00,NULL,'2018-05-30 14:30:44','',NULL,NULL,NULL),(30,'2018-05-30',8,17,9,NULL,1,10.00,NULL,NULL,11.00,NULL,NULL,11.00,NULL,'2018-05-30 14:57:00','',NULL,NULL,NULL),(32,'2018-05-30',8,17,7,NULL,1,12.00,NULL,NULL,14.00,NULL,NULL,14.00,NULL,'2018-05-30 14:56:05','',NULL,NULL,NULL),(33,'2018-06-15',10,19,7,NULL,1,10.00,10.00,NULL,15.00,150.00,NULL,150.00,NULL,'2018-06-15 12:51:14','',NULL,NULL,NULL),(38,'2018-06-15',11,17,7,NULL,1,1.00,1.00,NULL,11.00,11.00,NULL,11.00,NULL,'2018-06-15 12:51:02','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `dokument_stavke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drzave`
--

DROP TABLE IF EXISTS `drzave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drzave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `slike` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drzave`
--

LOCK TABLES `drzave` WRITE;
/*!40000 ALTER TABLE `drzave` DISABLE KEYS */;
INSERT INTO `drzave` VALUES (8,NULL,'','0','1lll1',NULL,'2017-12-25 18:36:18',NULL,NULL,NULL,NULL),(9,NULL,'','0','00','','2017-12-25 18:37:12',NULL,NULL,NULL,NULL),(10,NULL,'','8','5111','','2017-12-25 18:54:53',NULL,NULL,NULL,NULL),(11,NULL,'','00111','ouoiuuupppp','','2017-12-25 18:51:22',NULL,NULL,NULL,NULL),(12,NULL,'','10','Mongolija','','2017-12-31 19:03:29',NULL,NULL,NULL,NULL),(13,NULL,'','15','UAE','','2017-12-31 19:03:44',NULL,NULL,NULL,NULL),(14,NULL,'','16','mAXI','','2017-12-31 19:04:00',NULL,NULL,NULL,NULL),(15,NULL,'','18','belgija','','2017-12-31 19:04:22',NULL,NULL,NULL,NULL),(16,NULL,'','19','Holandija','','2017-12-31 19:04:37',NULL,NULL,NULL,NULL),(17,NULL,'','20','Bulgarija','','2017-12-31 19:04:52',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `drzave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hellolog`
--

DROP TABLE IF EXISTS `hellolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hellolog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hellolog`
--

LOCK TABLES `hellolog` WRITE;
/*!40000 ALTER TABLE `hellolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `hellolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jedinice_mera`
--

DROP TABLE IF EXISTS `jedinice_mera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jedinice_mera` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jedinice_mera`
--

LOCK TABLES `jedinice_mera` WRITE;
/*!40000 ALTER TABLE `jedinice_mera` DISABLE KEYS */;
INSERT INTO `jedinice_mera` VALUES (1,NULL,'','1','kg','k','2017-12-05 10:32:24'),(2,NULL,'','2','m','','2017-12-05 12:14:19'),(3,NULL,'','3','l','','2017-12-05 12:16:00'),(4,NULL,'','4','m2','m21','2017-12-05 12:20:13'),(5,NULL,'','5','t','85','2017-12-05 12:20:47'),(6,NULL,'','0','-','','2017-12-10 17:36:07'),(7,NULL,'','m3','Metar kubni','','2018-05-30 13:22:28');
/*!40000 ALTER TABLE `jedinice_mera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klasifikacije`
--

DROP TABLE IF EXISTS `klasifikacije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klasifikacije` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasifikacije`
--

LOCK TABLES `klasifikacije` WRITE;
/*!40000 ALTER TABLE `klasifikacije` DISABLE KEYS */;
INSERT INTO `klasifikacije` VALUES (2,NULL,'','1','Hrana','','2017-12-05 15:15:19'),(5,NULL,'','0','-','','2017-12-10 17:35:27'),(6,NULL,'','3','Sirevi','','2017-12-23 18:03:38');
/*!40000 ALTER TABLE `klasifikacije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magacini`
--

DROP TABLE IF EXISTS `magacini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magacini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aktivan` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vrste_magacina_id` int(11) DEFAULT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vrste_magacina_naziv` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `adresa` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ptt_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_66uqm8qh2v9whhyc62s5mbu52` (`vrste_magacina_id`),
  KEY `FK_lvpft8knmxuaq8llorp25f867` (`partner_id`),
  KEY `FK_7j6yepm5aoye6xq56kyxt96qs` (`ptt_id`),
  CONSTRAINT `FK_66uqm8qh2v9whhyc62s5mbu52` FOREIGN KEY (`vrste_magacina_id`) REFERENCES `vrste_magacina` (`id`),
  CONSTRAINT `FK_lvpft8knmxuaq8llorp25f867` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magacini`
--

LOCK TABLES `magacini` WRITE;
/*!40000 ALTER TABLE `magacini` DISABLE KEYS */;
INSERT INTO `magacini` VALUES (15,'','Veleprodaja',5,NULL,'1','sadf','2018-06-14 11:23:45',NULL,NULL,NULL,NULL,1,'Bez broja',5),(17,'','Maloprodaja',6,NULL,'2','vf','2018-06-14 11:15:14',NULL,NULL,NULL,NULL,2,'Bozanova 4',5),(19,'','Slavica Subotica',5,NULL,'3','','2018-06-14 15:26:36',NULL,NULL,NULL,NULL,1,'',5);
/*!40000 ALTER TABLE `magacini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `adresa` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `asoft_sifra` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `maticni_broj` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pib` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ptt_broj_id` bigint(20) DEFAULT NULL,
  `ptt_broj_naziv` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `telefon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (1,'1','Partizan fabrika bicikla',NULL,NULL,NULL,'123',5,NULL,'name',NULL,'2018-06-14 11:24:25','',NULL,NULL,NULL,NULL),(2,'2','Bolero doo',NULL,NULL,NULL,'32',4,NULL,'apomena',NULL,'2018-06-14 11:15:50','',NULL,NULL,NULL,NULL),(3,'3','Lola',NULL,NULL,NULL,'12',4,NULL,'mm',NULL,'2018-06-14 11:24:06','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_magacini`
--

DROP TABLE IF EXISTS `partner_magacini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_magacini` (
  `partner` bigint(20) NOT NULL,
  `magacini` bigint(20) NOT NULL,
  UNIQUE KEY `UK_9jp6f4w7lnyqdvjso2x1p1tyn` (`magacini`),
  KEY `FK_35w4gqw42w9ubd6pw4uxelito` (`partner`),
  CONSTRAINT `FK_35w4gqw42w9ubd6pw4uxelito` FOREIGN KEY (`partner`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_magacini`
--

LOCK TABLES `partner_magacini` WRITE;
/*!40000 ALTER TABLE `partner_magacini` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner_magacini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `series` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poreske_grupe`
--

DROP TABLE IF EXISTS `poreske_grupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poreske_grupe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `stopa` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poreske_grupe`
--

LOCK TABLES `poreske_grupe` WRITE;
/*!40000 ALTER TABLE `poreske_grupe` DISABLE KEYS */;
INSERT INTO `poreske_grupe` VALUES (1,'20 %',NULL,'','1','20 %','2017-12-06 11:39:12',20),(2,'-',NULL,'','0','','2017-12-10 17:35:55',0);
/*!40000 ALTER TABLE `poreske_grupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemnica`
--

DROP TABLE IF EXISTS `prijemnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemnica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `broj_prijemnice` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `datum_vreme` datetime DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_komitent` int(11) DEFAULT NULL,
  `id_magacin` int(11) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemnica`
--

LOCK TABLES `prijemnica` WRITE;
/*!40000 ALTER TABLE `prijemnica` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemnica_stavke`
--

DROP TABLE IF EXISTS `prijemnica_stavke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemnica_stavke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `cena` decimal(19,2) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `datumvreme` datetime DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_roba` int(11) DEFAULT NULL,
  `izlaz` decimal(19,2) DEFAULT NULL,
  `iznos` decimal(19,2) DEFAULT NULL,
  `kolicina` decimal(19,2) DEFAULT NULL,
  `napomena` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prijemnica_stavkecol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `roba_naziv` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ulaz` decimal(19,2) DEFAULT NULL,
  `id_prijemnica` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5hfntdhgrswoxkm7ev13t0utl` (`id_prijemnica`),
  CONSTRAINT `FK_5hfntdhgrswoxkm7ev13t0utl` FOREIGN KEY (`id_prijemnica`) REFERENCES `prijemnica` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemnica_stavke`
--

LOCK TABLES `prijemnica_stavke` WRITE;
/*!40000 ALTER TABLE `prijemnica_stavke` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemnica_stavke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_45g3a4rexapplpirj3jor716p` (`company_id`),
  CONSTRAINT `FK_45g3a4rexapplpirj3jor716p` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptt_brojevi`
--

DROP TABLE IF EXISTS `ptt_brojevi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptt_brojevi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `drzava_naziv` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ptt_brojevi_id` bigint(20) DEFAULT NULL,
  `drzava_id` bigint(20) DEFAULT NULL,
  `adresa` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `asoft_sifra` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `maticni_broj` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pib` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ptt_broj_id` bigint(20) DEFAULT NULL,
  `ptt_broj_naziv` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `telefon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_299429h6eh3yovmkodsy1necx` (`ptt_brojevi_id`),
  CONSTRAINT `FK_299429h6eh3yovmkodsy1necx` FOREIGN KEY (`ptt_brojevi_id`) REFERENCES `drzave` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptt_brojevi`
--

LOCK TABLES `ptt_brojevi` WRITE;
/*!40000 ALTER TABLE `ptt_brojevi` DISABLE KEYS */;
INSERT INTO `ptt_brojevi` VALUES (4,NULL,'','5',NULL,'ji','',NULL,'2017-12-24 14:09:13',NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'','11000',NULL,'pacir','0',NULL,'2017-12-24 14:14:18',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ptt_brojevi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_documents`
--

DROP TABLE IF EXISTS `types_of_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zvuk` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `strana` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_documents`
--

LOCK TABLES `types_of_documents` WRITE;
/*!40000 ALTER TABLE `types_of_documents` DISABLE KEYS */;
INSERT INTO `types_of_documents` VALUES (1,NULL,'\0','1','Prijemnica','asdf',NULL,'2018-02-13 10:55:26',NULL,NULL,1),(2,NULL,'\0','2','Otpremnica','asdfasd',NULL,'2018-02-13 12:38:12',NULL,NULL,2),(3,NULL,'\0','2','asdf','asdfas',NULL,'2018-02-13 13:00:03',NULL,NULL,3);
/*!40000 ALTER TABLE `types_of_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$8hn2khFGTjBjU45Ssi8zdu/Zg1PoRjxFPh/hFDLt.V3BhNWRdwlQq','user'),(2,'$2a$10$yTZQLBwc8MJdFkh9mDpwpeFrTDnvsuOZcrkLATbz7hanhI9rGkIBO','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_it77eq964jhfqtu54081ebtio` (`role_id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrste_artikala`
--

DROP TABLE IF EXISTS `vrste_artikala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrste_artikala` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrste_artikala`
--

LOCK TABLES `vrste_artikala` WRITE;
/*!40000 ALTER TABLE `vrste_artikala` DISABLE KEYS */;
INSERT INTO `vrste_artikala` VALUES (1,'Elektromaterijal',NULL,'','1','11',NULL),(10,'-',NULL,'','0','','2017-12-10 17:35:43'),(11,'Hrana',NULL,'','2','','2017-12-23 17:34:03'),(12,'Piće',NULL,'','2','','2018-06-12 15:36:50');
/*!40000 ALTER TABLE `vrste_artikala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrste_magacina`
--

DROP TABLE IF EXISTS `vrste_magacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrste_magacina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` bit(1) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrste_magacina`
--

LOCK TABLES `vrste_magacina` WRITE;
/*!40000 ALTER TABLE `vrste_magacina` DISABLE KEYS */;
INSERT INTO `vrste_magacina` VALUES (5,'Veleprodaja','','2017-12-08 19:30:40',NULL,'1',''),(6,'Maloprodaja','','2018-01-08 18:51:23',NULL,'2','');
/*!40000 ALTER TABLE `vrste_magacina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrste_paleta`
--

DROP TABLE IF EXISTS `vrste_paleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrste_paleta` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `akcija` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` tinyint(1) DEFAULT '1',
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrste_paleta`
--

LOCK TABLES `vrste_paleta` WRITE;
/*!40000 ALTER TABLE `vrste_paleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrste_paleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrste_paleta_old`
--

DROP TABLE IF EXISTS `vrste_paleta_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrste_paleta_old` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aktivan` tinyint(1) DEFAULT '1',
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `akcija` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrste_paleta_old`
--

LOCK TABLES `vrste_paleta_old` WRITE;
/*!40000 ALTER TABLE `vrste_paleta_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrste_paleta_old` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 13:34:24
