-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: jspservletjdbc
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `bxh`
--
USE `heroku_e12243d2329c42b`;

DROP TABLE IF EXISTS `bxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bxh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameteam` varchar(255) NOT NULL,
  `nummatch` int(11) DEFAULT '0',
  `won` int(11) DEFAULT '0',
  `drawn` int(11) DEFAULT '0',
  `lost` int(11) DEFAULT '0',
  `gd` int(11) DEFAULT '0',
  `totalscore` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bxh`
--

LOCK TABLES `bxh` WRITE;
/*!40000 ALTER TABLE `bxh` DISABLE KEYS */;
INSERT INTO `bxh` VALUES (1,'Arsenal',0,0,0,0,0,0),(2,'Aston Villa',0,0,0,0,0,0),(3,'Brentford',0,0,0,0,0,0),(4,'Brighton & Hove Albion',0,0,0,0,0,0),(5,'Burnley',0,0,0,0,0,0),(6,'Chelsea',0,0,0,0,0,0),(7,'Crystal Palace',0,0,0,0,0,0),(8,'Everton',0,0,0,0,0,0),(9,'Leeds United',0,0,0,0,0,0),(10,'Leicester City',0,0,0,0,0,0),(11,'Liverpool',0,0,0,0,0,0),(12,'Manchester City',0,0,0,0,0,0),(13,'Manchester United',0,0,0,0,0,0),(14,'Newcastle United',0,0,0,0,0,0),(15,'Norwich City',0,0,0,0,0,0),(16,'Southampton',0,0,0,0,0,0),(17,'Tottenham Hotspur',0,0,0,0,0,0),(18,'Watford',0,0,0,0,0,0),(19,'West Ham United',0,0,0,0,0,0),(20,'Wolverhampton Wanderers',0,0,0,0,0,0);
/*!40000 ALTER TABLE `bxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` double DEFAULT '0',
  `view` bigint(20) DEFAULT '0',
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tin t???c chung','tin-tuc-chung',18.75,53,NULL,NULL,NULL,NULL),(2,'Gi???i th?????ng','giai-thuong',18.75,94,NULL,NULL,NULL,NULL),(3,'C???ng ?????ng','cong-dong',6.25,5,NULL,NULL,NULL,NULL),(4,'T?????ng nh???','tuong-nho',0,0,NULL,NULL,NULL,NULL),(5,'Chi???n thu???t','chien-thuat',6.25,2,NULL,NULL,NULL,NULL),(6,'Chuy???n nh?????ng','chuyen-nhuong',12.5,11,NULL,NULL,NULL,NULL),(7,'T??i n??ng tr???','tai-nang-tre',0,0,NULL,NULL,NULL,NULL),(8,'Video','video',37.5,43,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `new_id` bigint(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_user` (`user_id`),
  KEY `fk_comment_news` (`new_id`),
  CONSTRAINT `fk_comment_news` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoteam`
--

DROP TABLE IF EXISTS `infoteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `infoteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameteam` varchar(255) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoteam`
--

LOCK TABLES `infoteam` WRITE;
/*!40000 ALTER TABLE `infoteam` DISABLE KEYS */;
INSERT INTO `infoteam` VALUES (1,'Arsenal','ARS','https://resources.premierleague.com/premierleague/badges/50/t3.png','Emirates Stadium'),(2,'Aston Villa','AVL','https://resources.premierleague.com/premierleague/badges/50/t7.png','Villa Park'),(3,'Brentford','BRE','https://resources.premierleague.com/premierleague/badges/50/t94.png','Brentford Community Stadium'),(4,'Brighton & Hove Albion','BRI','https://resources.premierleague.com/premierleague/badges/50/t36.png','Falmer Stadium'),(5,'Burnley','BUR','https://resources.premierleague.com/premierleague/badges/50/t90.png','	Turf Moor'),(6,'Chelsea','CHE','https://resources.premierleague.com/premierleague/badges/50/t8.png','Stamford Bridge'),(7,'Crystal Palace','CRY','https://resources.premierleague.com/premierleague/badges/50/t31.png','Selhurst Park'),(8,'Everton','EVE','https://resources.premierleague.com/premierleague/badges/50/t11.png','Goodison Park'),(9,'Leeds United','LEE','https://resources.premierleague.com/premierleague/badges/50/t2.png','Elland Road'),(10,'Leicester City','LEI','https://resources.premierleague.com/premierleague/badges/50/t13.png','King Power Stadium'),(11,'Liverpool','LIV','https://resources.premierleague.com/premierleague/badges/50/t14.png','Anfield'),(12,'Manchester City','MCI','https://resources.premierleague.com/premierleague/badges/50/t43.png','City of Manchester Stadium'),(13,'Manchester United','MUN','https://resources.premierleague.com/premierleague/badges/50/t1.png','Old Trafford'),(14,'Newcastle United','NEW','https://resources.premierleague.com/premierleague/badges/50/t4.png','St James\' Park'),(15,'Norwich City','NOR','https://resources.premierleague.com/premierleague/badges/50/t45.png','Carrow Road'),(16,'Southampton','SOU','https://resources.premierleague.com/premierleague/badges/50/t20.png','St Mary\'s Stadium'),(17,'Tottenham Hotspur','TOT','https://resources.premierleague.com/premierleague/badges/50/t6.png','	Tottenham Hotspur Stadium'),(18,'Watford','WAT','https://resources.premierleague.com/premierleague/badges/50/t57.png','	Vicarage Road'),(19,'West Ham United','WHU','https://resources.premierleague.com/premierleague/badges/50/t21.png','	London Stadium'),(20,'Wolverhampton Wanderers','WOL','https://resources.premierleague.com/premierleague/badges/50/t39.png','Molineux Stadium');
/*!40000 ALTER TABLE `infoteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `shortdescription` text,
  `content` text,
  `categoryid` bigint(20) DEFAULT NULL,
  `rate` int(11) DEFAULT '0',
  `view` bigint(20) DEFAULT '0',
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_category` (`categoryid`),
  CONSTRAINT `fk_news_category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'V??? tr?? FPL: D???a v??o Kane tr?????c c??c ?????i h???ng th???p h??n','https://resources.premierleague.com/photos/2021/04/15/61412697-aa4a-49ce-8def-b3c5be5d6a2b/GettyImages-1231434479.jpg?width=909&height=620','The Scout v??? l?? do t???i sao ti???n ?????o c???a Spurs l?? c???u th??? n??ng su???t nh???t khi ?????i m???t v???i c??c ?????i n???a d?????i','Ti???n ?????o Harry Kane th???ng tr??? h???ng m???c ti???n ?????o v??o n??m 2020/21, ghi 23 b??n v?? cung c???p 14 ???????ng ki???n ??????t???o trong 35 l???n ra s??n. Ti???n ?????o c???a Tottenham Hotspur ???? ghi ???????c 242 ??i???m trong s??? nghi???p, ch??? ?????ng sau 244 c???a ti???n v??? Bruno Fernandes c???a Manchester United . Th???t v???y, t???ng s??? ??i???m ???? ???? nhi???u h??n 48 ??i???m so v???i ti???n ?????o ghi nhi???u b??n th??? hai, Patrick Bamford cho Leeds United . T???t c??? c??c b??n th???ng 2020/21 c???a Kane M??n tr??nh di???n c???a Kane tr?????c c??c ?????i th??? th???p h??n trong b???ng Premier League l?? ch??a kh??a th??nh c??ng c???a anh ???y. H???u h???t c??c l?????t v??? tr?????c c??c ?????i 10 ?????i cu???i Ng?????i ch??i	Ch???c v???	L???i nhu???n	B??n th???ng	H??? tr??? Kane	FWD	22	14	s??? 8 Fernandes	MID	17	9	s??? 8 Bamford	FWD	16	13	3 Salah	MID	14	9	5 Rashford	MID	14	s??? 8	6 Con trai 	MID	14	s??? 8	6 Vardy	FWD	14	6	s??? 8 Anh ???y ???? t???o ra 22 trong s??? 37 l???n tr??? l???i c???a m??nh cho chi???n d???ch ch???ng l???i c??c ?????i n???a d?????i, v???i c??? 14 b??n th???ng v?? 8 pha ki???n ??????t???o trong',1,1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(52,'V??? tr?? FPL: Lingard cho th???y l???i h???a v???i phong ????? h??ng ?????u c???a gi???i ?????u','https://resources.premierleague.com/photos/2021/06/06/4bd4b73e-8d2e-4eec-bc15-93e0696d7c34/lingard-west-ham-cele.png?width=930&height=620','a','<h6 style=\"text-align:start\"><span style=\"font-size:1.8rem\"><span style=\"font-family:PremierSans-Bold,Arial,\"><span style=\"color:#37003c\"><span style=\"background-color:#ffffff\">Ti???n v???</span></span></span></span></h6>\n\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,\"><span style=\"background-color:#ffffff\">Vi???c chuy???n ?????n&nbsp;<a href=\"https://www.premierleague.com/clubs/25/West-Ham-United/overview\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\">West Ham United</a>&nbsp;cho m?????n&nbsp;??&atilde; gi&uacute;p bi???n ti???m n??ng c???a Jesse Lingard trong Fantasy m&ugrave;a n&agrave;y.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,\"><span style=\"background-color:#ffffff\">Ti???n v??? n&agrave;y ??&atilde; kh&ocirc;ng th??? g&oacute;p m???t trong b???t k???&nbsp;tr???n ?????u n&agrave;o trong 21 tr???n ?????u ?????u ti&ecirc;n&nbsp;c???a&nbsp;<a href=\"https://www.premierleague.com/clubs/12/Manchester-United/overview\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\">Manchester United</a>&nbsp;tr?????c khi gia nh???p Hammers v&agrave;o th&aacute;ng Gi&ecirc;ng.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,\"><span style=\"background-color:#ffffff\">Tuy nhi&ecirc;n, Lingard ??&atilde; ph&aacute;t tri???n m???nh m??? d?????i th???i David Moyes, ghi 9 b&agrave;n v&agrave; cung c???p 5 ???????ng ki???n ??????t???o sau 16 l???n ra s&acirc;n.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,\"><span style=\"background-color:#ffffff\">Trung b&igrave;nh 6,6 ??i???m m???i tr???n (ppm) c???a anh ???y gi???ng v???i ??i???m c???a Bruno Fernandes, ng?????i ??&atilde; k???t th&uacute;c m&ugrave;a gi???i v???i t?? c&aacute;ch l&agrave; c???u th??? ghi nhi???u ??i???m nh???t trong Fantasy.&nbsp;</span></span></span></span></p>\n',1,1,4,'2021-06-08 19:10:25','2021-06-10 17:38:27','admin','admin'),(53,'Dias ???????c m???nh danh l?? C???u th??? xu???t s???c nh???t m??a c???a EA SPORTS','https://resources.premierleague.com/photos/2021/06/04/c951935a-93e1-45b2-ad65-01ea7c029642/SeasonAwards-GOTS-Winners.png?width=1000&height=563','','',2,0,0,'2021-06-08 19:14:50','2021-06-10 17:38:47','admin','admin'),(55,'Carragher: Dias ???? l???p ?????y kho???ng tr???ng m?? Kompany ????? l???i','https://resources.premierleague.com/photos/2021/07/02/bcc9cfa8-57b1-4de1-b1da-1e14c448aa5c/GettyImages-1318893041.jpg?width=860&height=573','','',3,0,5,'2021-06-08 19:15:47',NULL,'admin',NULL),(89,'R??t cho v??i b???t ??i s???u lo - Sol7 x Yuno','https://resources.premierleague.com/photos/2021/06/06/4bd4b73e-8d2e-4eec-bc15-93e0696d7c34/lingard-west-ham-cele.png?width=930&height=620','','<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/RP7hGYHw9pY\" title=\"YouTube video player\" width=\"560\"></iframe></p>\n\n<p style=\"text-align:center\"><span style=\"font-size:20px\"><em><strong>R&oacute;t cho v??i b???t ??i s???u lo - Sol7</strong></em></span></p>\n',8,0,7,'2021-06-12 09:36:24','2021-06-25 08:16:16','admin','admin'),(95,'Tieu de tin tuc ngoai hang Anh','https://resources.premierleague.com/photos/2021/06/23/a6ee15ef-44fd-4921-94f6-e87a21648bcb/lamptey-ayling-bhalee-composite.png?width=500&height=333','','',2,0,3,'2021-06-22 17:17:29','2021-06-24 17:46:07','admin','admin'),(97,'Summer 2021 Latest Transfers & News','https://resources.premierleague.com/photos/2021/06/21/2147974e-c015-436a-996c-b693e16e48ee/Emmanuel-Dennis-WAT-2.jpg?width=500&height=333','','',6,0,8,'2021-06-24 17:44:53','2021-06-24 17:45:29','admin','admin'),(98,'Foden: T??i ???? ?????t ???????c m???t b?????c ti???n l???n','https://resources.premierleague.com/photos/2021/06/14/cd9d7dea-33f0-4317-a6b2-c08a87fbe875/SeasonAwards-YPOTS-Foden-Editorial.png?width=930&height=620','Ng??i sao c???a Man City v?? ?????i tuy???n Anh ph??t bi???u sau khi nh???n gi???i th?????ng C???u th??? tr??? xu???t s???c nh???t m??a gi???i 2020/21 c???a Hublot ','<p><span style=\"font-size:18px\">??&oacute; l&agrave; m???t b?????c ?????t ph&aacute; trong 12 th&aacute;ng ?????i v???i ti???n v??? Phil Foden c???a Manchester City, ng?????i ??ang ?????i di???n cho ?????i tuy???n Anh t???i UEFA Euro 2020 sau khi gi&agrave;nh ch???c v&ocirc; ?????ch Premier League v&agrave; gi???i C???u th??? tr??? xu???t s???c nh???t m&ugrave;a gi???i c???a Hublot v&agrave;o n??m 2020/21.</span></p>\n\n<p><span style=\"font-size:18px\">Sau khi nh???n ???????c gi???i th?????ng c???a Hublot khi ??ang l&agrave;m nhi???m v??? qu???c t???, Foden ??&atilde; ti???t l??? s??? vui m???ng c???a anh ???y v??? nh???ng ti???n b??? m&agrave; anh ???y ??&atilde; ?????t ???????c ????? ch???ng l???i s??? c???nh tranh m???nh m??? v&agrave; gi&agrave;nh ???????c gi???i th?????ng.</span></p>\n\n<p><span style=\"font-size:18px\">&quot;R???t vui khi gi&agrave;nh ???????c n&oacute;,&quot; Foden n&oacute;i. &quot;N&oacute; c&oacute; th??? x???y ra theo c??? hai c&aacute;ch. C&oacute; r???t nhi???u t&agrave;i n??ng tr??? tuy???t v???i trong n??m nay.</span></p>\n\n<p><span style=\"font-size:18px\">&quot;??&oacute; l&agrave; m???t m&ugrave;a gi???i tuy???t v???i ?????i v???i t&ocirc;i. T&ocirc;i ??&atilde; r???t th&iacute;ch n&oacute;. T&ocirc;i r???t vui v&igrave; ??&atilde; ghi ???????c r???t nhi???u b&agrave;n th???ng trong n??m nay v&agrave; t&ocirc;i ngh?? r???ng m&igrave;nh ??&atilde; ?????t ???????c m???t b?????c ti???n trong tr???n ?????u c???a m&igrave;nh.&quot;</span></p>\n\n<p><span style=\"font-size:18px\">Ti???n v??? c???a Man City ??&atilde; t???o ra m???t s??? kho???nh kh???c quan tr???ng trong m&ugrave;a gi???i tr?????c, ghi 9 b&agrave;n v&agrave; cung c???p 5 ???????ng ki???n ??????t???o trong 28 l???n ra s&acirc;n ??? gi???i ?????u.</span></p>\n\n<p><span style=\"font-size:18px\">Nh??ng anh ???y ??&atilde; x&aacute;c ?????nh chi???n th???ng 4-1 tr?????c nh&agrave; v&ocirc; ?????ch Liverpool 2019/20 l&agrave; ??i???m nh???n c???a anh ???y trong chi???n d???ch, v???i chi???n th???ng ?????u ti&ecirc;n c???a Man City t???i Anfield k??? t??? n??m 2003.</span></p>\n\n<p><span style=\"font-size:18px\">&quot;Ch&uacute;ng t&ocirc;i ??&atilde; kh&ocirc;ng gi&agrave;nh chi???n th???ng ??? ??&oacute; qu&aacute; l&acirc;u v&agrave; t&ocirc;i ngh?? r???ng ??i???u ??&oacute; ch??? mang l???i cho ch&uacute;ng t&ocirc;i s??? t??? tin ????? ti???p t???c v&agrave; gi&agrave;nh ch???c v&ocirc; ?????ch gi???i ?????u,&quot; anh n&oacute;i.</span></p>\n\n<p><span style=\"font-size:18px\">[B&igrave;nh lu???n vi&ecirc;n] B&acirc;y gi???, Cancelo. ??&atilde; t??? ????a m&igrave;nh v&agrave;o m???t s??? v??? tr&iacute; tuy???t v???i trong hi???p ?????u ti&ecirc;n ??&oacute;, h&atilde;y l&agrave;m nh?? v???y m???t l???n n???a ??? ??&acirc;y.</span></p>\n\n<p><span style=\"font-size:18px\">C&aacute;ch Foden gi&agrave;nh gi???i C???u th??? tr??? xu???t s???c nh???t m&ugrave;a c???a Hublot</span></p>\n\n<p><span style=\"font-size:18px\">C&ugrave;ng xem nh???ng kho???nh kh???c k??? di???u ??&atilde; gi&uacute;p ti???n v??? c???a Man City tr??? th&agrave;nh c???u th??? xu???t s???c nh???t t??? ??????23 tu???i tr??? xu???ng v&agrave;o ?????u n??m 2020/21</span></p>\n\n<p><span style=\"font-size:18px\">Ch??i</span></p>\n\n<p><span style=\"font-size:18px\">T???t ti???ng</span></p>\n\n<p><span style=\"font-size:18px\">Gi??? hi???n t???i 0:09</span></p>\n\n<p><span style=\"font-size:18px\">/</span></p>\n\n<p><span style=\"font-size:18px\">Th???i l?????ng 1:06</span></p>\n\n<p><span style=\"font-size:18px\">??&atilde; t???i: 29,87%</span></p>\n\n<p><span style=\"font-size:18px\">Ch&uacute; th&iacute;ch</span></p>\n\n<p><span style=\"font-size:18px\">M???c ch???t l?????ng</span></p>\n\n<p><span style=\"font-size:18px\">Picture-in-PictureFullscreen</span></p>\n\n<p><span style=\"font-size:18px\">CC</span></p>\n\n<p><span style=\"font-size:18px\">QU???NG C&Aacute;O</span></p>\n\n<p><span style=\"font-size:18px\">M&ocirc; t??? &acirc;m thanh c&oacute; s???n</span></p>\n\n<p><span style=\"font-size:18px\">Foden, ng?????i ??&oacute;ng vai ch&iacute;nh trong chi???n th???ng 1-0 c???a Anh tr?????c Croatia trong tr???n m??? m&agrave;n UEFA Euro 2020 v&agrave;o Ch??? nh???t, ??&atilde; nhanh ch&oacute;ng ca ng???i t???m ???nh h?????ng c???a hu???n luy???n vi&ecirc;n Man City ?????i v???i s??? ph&aacute;t tri???n c???a tr&ograve; ch??i c???a anh ???y.</span></p>\n\n<p><span style=\"font-size:18px\">&quot;M???i ng&agrave;y anh ???y c&oacute; r???t nhi???u chi ti???t ????? c???i thi???n m???i c???u th???,&quot; anh ???y n&oacute;i th&ecirc;m. &quot;T&ocirc;i c???m th???y nh?? anh ???y ??&atilde; c???i thi???n tr&ograve; ch??i c???a t&ocirc;i r???t nhi???u v&agrave; t&ocirc;i ch??? th&iacute;ch l&agrave;m vi???c v???i anh ???y m???i ng&agrave;y.&quot;</span></p>\n\n<p><span style=\"font-size:18px\">C???u th??? 21 tu???i l&agrave; m???t trong s&aacute;u c???u th??? Anh ???????c ????? c??? cho gi???i th?????ng n&agrave;y, c&ugrave;ng v???i Dominic Calvert-Lewin, Mason Mount, Marcus Rashford, Declan Rice v&agrave; Bukayo Saka, v&agrave; Foden tin r???ng ??&acirc;y l&agrave; th???i ??i???m ?????c bi???t ????? ???????c tham gia v&agrave;o ?????i tuy???n qu???c gia. ?????i.</span></p>\n\n<p><span style=\"font-size:18px\">&quot;T&ocirc;i tin r???ng ??&oacute; c&oacute; l??? l&agrave; m???t trong nh???ng ?????i tuy???n Anh m???nh nh???t m&agrave; ch&uacute;ng t&ocirc;i ??&atilde; c&oacute; trong m???t th???i gian d&agrave;i&quot;, anh ???y n&oacute;i th&ecirc;m. &quot;R???t nhi???u c???u th??? tuy???t v???i. T&ocirc;i c???m th???y may m???n khi ???????c ??? ??&acirc;y v???i h??? b&acirc;y gi??? v&agrave; chia s??? c&ugrave;ng m???t ?????i v???i h???.&quot;</span></p>\n\n<p><span style=\"font-size:18px\">Xem: Foden gi&agrave;nh gi???i C???u th??? tr??? xu???t s???c nh???t m&ugrave;a c???a Hublot<br />\nXem: Nh???ng ng&ocirc;i sao Premier League t???a s&aacute;ng t???i UEFA Euro 2020</span></p>\n\n<p>&nbsp;</p>\n',2,0,91,'2021-06-25 08:51:59','2021-07-02 18:04:52','admin','admin'),(99,'Villa ?????ng ?? k?? h???p ?????ng v???i Buendia t??? Norwich Villa ?????ng ?? k?? h???p ?????ng v???i Buendia t??? Norwich','https://resources.premierleague.com/photos/2021/06/14/7d96dd3a-2eb9-40b3-8242-6fe943d85b03/Nike-Aerowsculpt-2021-22-ball.jpeg?width=860&height=573','','',8,1,4,'2021-06-25 21:28:13',NULL,'admin',NULL),(100,'On this day in 2011: Man Utd sign De Gea','https://resources.premierleague.com/photos/2020/06/26/2e67af37-e90b-49cc-b746-2cf3984c07a7/OMHxiMKg.jpg?width=860&height=573','','',8,0,3,'2021-06-29 08:40:42',NULL,'admin',NULL),(101,'FPL in demand: Robertson deserving of more interest','https://resources.premierleague.com/photos/2021/06/25/f5431368-67aa-4a42-b09e-64c14495485b/GettyImages-1319675268.jpg?width=500&height=333','','',8,0,5,'2021-06-29 08:41:46',NULL,'admin',NULL),(102,' L???a ch???n tuy???n tr???ch vi??n: ?????i h??nh ban ?????u cho m??a gi???i FPL m???i ????ng k?? s???m ????? t??ng c?? h???i tham gia FPL','https://resources.premierleague.com/photos/2021/06/25/ea984f00-e553-4700-80a8-d13dbd5bfb5d/GettyImages-1319887209-1-.jpg?width=500&height=333','','',8,0,4,'2021-06-29 08:42:43','2021-07-03 01:03:44','admin','admin'),(104,'Leicester k?? h???p ?????ng v???i ti???n v??? Soumare c???a Lille','https://resources.premierleague.com/photos/2021/07/02/2d4fb1ae-a27b-48a0-8f33-4982af1884be/GettyImages-1233216145.jpg?width=862&height=620','C???u th??? ng?????i Ph??p chuy???n ?????n s??n v???n ?????ng King Power t??? nh?? v?? ?????ch Ligue 1 theo h???p ?????ng 5 n??m','<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Leicester City ??&atilde; th&ocirc;ng b&aacute;o v??? vi???c k&yacute; h???p ?????ng v???i ti???n v??? Boubakary Soumare t??? nh&agrave; v&ocirc; ?????ch Ph&aacute;p Lille.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">C???u th??? 22 tu???i ??&atilde; ?????ng &yacute; m???t h???p ?????ng 5 n??m v&agrave; s??? gia nh???p&nbsp;<a href=\"https://www.premierleague.com/clubs/26/Leicester-City/overview\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\">Leicester</a>&nbsp;t&ugrave;y thu???c v&agrave;o Premier League v&agrave; gi???i ph&oacute;ng m???t b???ng qu???c t???.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">&ldquo;T&ocirc;i th???c s??? t??? h&agrave;o khi ?????n Premier League v&agrave; m???t c&acirc;u l???c b??? l???n nh?? Leicester,&rdquo; Soumare n&oacute;i tr&ecirc;n&nbsp;<a href=\"https://www.lcfc.com/news/2182482/boubakary-soumar-joins-leicester-city-from-lille?utm_source=premier-league-website&amp;utm_campaign=website&amp;utm_medium=link\" rel=\"noopener\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\" target=\"_blank\">trang web ch&iacute;nh th???c c???a c&acirc;u l???c b???.</a>&nbsp;&nbsp;&ldquo;N&oacute; s??? th???c s??? gi&uacute;p t&ocirc;i ph&aacute;t tri???n l???i ch??i v&agrave; ti???n b??? v???i t?? c&aacute;ch l&agrave; m???t c???u th???.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">&ldquo;Leicester l&agrave; m???t c&acirc;u l???c b??? r???t tham v???ng.&nbsp;Khi h??? n&oacute;i v???i t&ocirc;i v??? k??? ho???ch c???a h??? v&agrave; nh???ng g&igrave; h??? mu???n ??? t&ocirc;i, t&ocirc;i bi???t ngay r???ng t&ocirc;i mu???n ?????n. &quot;</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Soumare ??&atilde; c&oacute; 40 l???n ra s&acirc;n tr&ecirc;n m???i ?????u tr?????ng trong m&ugrave;a gi???i tr?????c khi Lille gi&agrave;nh ch???c v&ocirc; ?????ch ?????u ti&ecirc;n trong 10 m&ugrave;a gi???i.&nbsp;Anh ???y c??ng ??&atilde; 8 l???n ra s&acirc;n ??? UEFA Europa League.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Ti???n v??? trung t&acirc;m b???t ?????u s??? nghi???p c???a m&igrave;nh t???i Paris FC v&agrave; sau ??&oacute; c&oacute; s&aacute;u n??m t???i h???c vi???n c???a Paris Saint-Germain.&nbsp;Anh gia nh???p Lille v&agrave;o n??m 2017 v&agrave; c&oacute; 84 l???n ra s&acirc;n cho c&acirc;u l???c b???, ghi ???????c m???t b&agrave;n th???ng.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.premierleague.com/news/2181246\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\">Tuy???n th???</a>&nbsp;U21 Ph&aacute;p tr??? th&agrave;nh b???n h???p ?????ng m&ugrave;a h&egrave; th??? hai c???a Leicester, sau khi&nbsp;<a href=\"https://www.premierleague.com/news/2181246\" style=\"-webkit-font-smoothing:antialiased; box-sizing:border-box; text-decoration:none; color:#e90052\">Patson Daka</a>&nbsp;?????n t??? RB Salzburg.</span></span></span></span></p>\n',6,1,4,'2021-07-02 18:01:51',NULL,'admin',NULL),(105,'PH??P - TH???Y S?? | SI??U KINH ??I???N K???CH T??NH NH???T GI???I ?????U ?????N NH???NG QU??? PENALTY CU???I C??NG | EURO 2020','https://static.standard.co.uk/2021/06/25/16/euro2020franceswitzerland.jpg','','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8Vn-mzMqaG4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',8,1,20,'2021-07-02 18:10:06','2021-07-02 18:10:47','admin','admin'),(106,'Italia vs Lukaku: M??n ?????i ?????u v???i con qu??i v???t m?? m??nh nu??i n???ng','https://media.thethao.vn//uploads/2021/07/02/italia-vs-lukaku-man-doi-dau-voi-con-quai-vat-ma-minh-nuoi-nang_18637.jpg','N???u kh??ng chuy???n sang Serie A v??o m??a h?? 2019 th?? li???u Romelu Lukaku c?? ???????c nh?? ng??y h??m nay?','<p><span style=\"font-size:16px\">To x&aacute;c l&agrave; t??? m&agrave; Lukaku ??&atilde; nghe trong c??? cu???c ?????i m&igrave;nh. N??m 11 tu???i, anh th???m ch&iacute; to g???p ??&ocirc;i ch&uacute;ng b???n ?????ng trang l???a trong m???t tr???n b&oacute;ng. ?????n n??m 13 tu???i, Lukaku ??&atilde; ?????t ???????c chi???u cao trung b&igrave;nh c???a ??&agrave;n &ocirc;ng ch&acirc;u &Acirc;u. Nh???ng n??m th&aacute;ng thi ?????u t???i Anh ??&atilde; ?????p th&ecirc;m c?? b???p cho c?? th??? cao l???n n&agrave;y, bi???n Lukaku th&agrave;nh m???t ng?????i kh???ng l??? l???c l?????ng.</span></p>\n\n<p><span style=\"font-size:16px\">Nh??ng to nh?? th??? kh&ocirc;ng ?????ng ngh?? v???i tr?????ng th&agrave;nh. Ti???c t&ugrave;ng, ch&acirc;n d&agrave;i, si&ecirc;u xe... Lukaku ?????u ch??i h???t n???c ??? x??? s????ng m&ugrave;. Nh??ng nh???ng cu???c th&aacute;c lo???n ??&oacute; kh&ocirc;ng gi&uacute;p Lukaku c&oacute; ???????c b???n l??nh ??????ng ?????u v???i th&aacute;ch th???c. Anh ch??? c&oacute; th??? ch??i hay ??? nh???ng ?????i b&oacute;ng b???c trung nh?? West Brom hay Everton, nh??ng ch???t ng???p t???i Chelsea v&agrave; Man United.</span></p>\n\n<p><span style=\"font-size:16px\">M&agrave;n &quot;ch???y tr???n&quot; kh???i Old Trafford m???i th???t bu???n c?????i. Lukaku l???y l&yacute; do ????? t???p trung mu???n cho chuy???n du ?????u m&ugrave;a h&egrave; c???a Qu??? ?????. Sau ??&oacute;... c???t ?????t li&ecirc;n l???c v???i ?????i b&oacute;ng ch??? qu???n. MU ch??? bi???t tin v??? Lukaku khi th???y trang ch??? Anderlecht ????ng t???i nh???ng b???c ???nh c???a anh. Th&igrave; ra ti???n ?????o ng?????i B??? tr??? v??? ?????i b&oacute;ng c?? ????? xin t???p nh??? v&agrave; g&acirc;y s???c &eacute;p v???i MU.</span></p>\n\n<p><span style=\"font-size:16px\"><img alt=\"\" src=\"https://media.thethao.vn//uploads/2021/07/02/italia-vs-lukaku-man-doi-dau-voi-con-quai-vat-ma-minh-nuoi-nang_18637.jpg\" /></span></p>\n\n<p><span style=\"font-size:16px\">Lukaku kh&ocirc;ng mu???n ??? l???i MU n???a v&agrave; ch???n c&aacute;ch &quot;tr??? con&quot; nh???t c&oacute; th??? ????? khi???n BL?? ?????i ch??? s&acirc;n Old Trafford ph???i ch???p nh???n vi???c ra ??i. Gi???a ho&agrave;n c???nh &quot;??i ??&acirc;u c??ng ???????c, mi???n kh&ocirc;ng ph???i quay l???i Manchester&quot;, may thay, Lukaku ??&atilde; ?????n ???????c v???i Inter Milan v&agrave; m&ocirc;i tr?????ng b&oacute;ng ??&aacute; Italia.</span></p>\n\n<p><span style=\"font-size:16px\">S??? t??nh l???ng, ??i???m ?????m c???a Serie A ??&atilde; c&acirc;n b???ng cu???c s???ng c???a Lukaku. Anh ??&atilde; nh&igrave;n th???u b???n th&acirc;n m&igrave;nh, bi???t ??&acirc;u l&agrave; ??i???m m???nh v&agrave; ??i???m y???u ????? t???p trung ho&agrave;n thi???n b??? k??? n??ng. C&ugrave;ng v???i s??? h?????ng d???n c???a m???t ng?????i c???u to&agrave;n nh?? Antonio Conte, Lukaku ??&atilde; ti???n b??? th???n t???c.</span></p>\n\n<p><span style=\"font-size:16px\">T??? m???t m???t &quot;g&atilde; h???&quot; ????? qu??? b&oacute;ng c??ng kh&ocirc;ng xong ??? x??? s????ng m&ugrave;, Lukaku ??&atilde; v????n m&igrave;nh tr??? th&agrave;nh m???t trung phong ho&agrave;n thi???n t???i ?????t n?????c h&igrave;nh chi???c ???ng. ?????ng n&oacute;i l&agrave; ????? b?????c m???t, gi??? Lukaku c&oacute; th??? gi??? b&oacute;ng, ??i b&oacute;ng, d???t ??i???m v&agrave; ?????c bi???t l&agrave; ki???n t???o. V&igrave; sao l???i n&oacute;i l&agrave; &quot;?????c bi???t&quot;? B???i Lukaku ???????c nh???ng ng?????i th???y s?? khai c???a m&igrave;nh ??&agrave;o t???o ????? tr??? th&agrave;nh m???t s&aacute;t th???. Tr?????c khi ?????n &Yacute;, Lukaku ??i ??&acirc;u c??ng ch??? ????? ??&aacute;p ???ng y&ecirc;u c???u ghi b&agrave;n c???a ch??? ?????u t??.</span></p>\n\n<p><span style=\"font-size:16px\">Nh??ng ??? Inter l&agrave; m???t Lukaku r???t kh&aacute;c, bi???t d&ugrave;ng s???c m&igrave;nh ??&oacute;ng g&oacute;p v&agrave;o l???i ch??i t???p th??? ch??? kh&ocirc;ng ch??? d???ng l???i ??? c&aacute;c b&agrave;n th???ng. Th??? n&ecirc;n, d&ugrave; lu&ocirc;n th???t b???i tr?????c Ciro Immobile hay Cristiano Ronaldo ??? cu???c ??ua Vua ph&aacute; l?????i Serie A, Lukaku v???n lu&ocirc;n n???m trong ?????i h&igrave;nh ti&ecirc;u bi???u c???a Serie A 2 m&ugrave;a qua. Ch&iacute;nh Lukaku ??&atilde; gi&uacute;p Inter k&eacute;o ????? ????? ch??? Juventus ??&atilde; th???ng tr??? b&oacute;ng ??&aacute; Italia su???t m???t th???p k???.</span></p>\n\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><img alt=\"\" src=\"https://media.thethao.vn//uploads/2021/07/02/italia-vs-lukaku-man-doi-dau-voi-con-quai-vat-ma-minh-nuoi-nang_18638.jpg\" style=\"height:694px; width:1024px\" /><em>Lukaku t???a s&aacute;ng trong m&agrave;u &aacute;o Inter Milan</em></span></p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p><span style=\"font-size:16px\">Kh&ocirc;ng ch??? ph&aacute;t tri???n v???i t?? c&aacute;ch c???u th???, Lukaku c&ograve;n tr?????ng th&agrave;nh h??n v??? m???t t&iacute;nh c&aacute;ch ??? tu???i 28. Khi Conte v&agrave; Lautaro Martinez x&iacute;ch m&iacute;ch tr&ecirc;n s&acirc;n, ch&iacute;nh Lukaku ??&atilde; t??? ch???c m???t cu???c... ?????m b???c vui v??? ????? gi???ng h&ograve;a cho hai th???y tr&ograve;.</span></p>\n\n<p><span style=\"font-size:16px\">Khi hay tin Christian Eriksen g???p tai ????ng ??? EURO 2020, Lukaku l&agrave; m???t trong nh???ng ng?????i h&agrave;nh ?????ng nhi???u nh???t. G???t ??i nh???ng gi???t n?????c m???t, Lukaku ch??? ?????ng g???i ??i???n h???i th??m ng?????i b???n th&acirc;n c???a m&igrave;nh. Sau tr???n ?????u g???p ch??? nh&agrave; ??an M???ch, v???n l&agrave; Lukaku ch??? ?????ng ?????n b???nh vi???n ????? ???????c nh&igrave;n th???y Eriksen.</span></p>\n\n<p><span style=\"font-size:16px\">S??? chu ??&aacute;o, ???m &aacute;p n&agrave;y c???a Lukaku kh&aacute;c xa h&igrave;nh ???nh m???t c???u b&eacute; &quot;tr??? tr&acirc;u&quot; ng&agrave;y n&agrave;o ??? Premier League. M???i ng?????i ch???n cho m&igrave;nh m???t c&aacute;ch l???n l&ecirc;n kh&aacute;c nhau. V???i Lukaku, anh ch???n nh???ng ??i???u b&igrave;nh th?????ng nh???t, nh??ng l???i g???n g??i nh???t l&agrave;m ?????ng l???c cho m&igrave;nh.</span></p>\n\n<p><span style=\"font-size:16px\">V&agrave; ??&oacute; c&oacute; l??? l&agrave; n&eacute;t t????ng ?????ng Lukaku nh&igrave;n ra ???????c ??? b???n th&acirc;n v&agrave; th???n t?????ng Michael Jordan, th&ocirc;ng qua b??? phim t&agrave;i li???u n???i ti???ng &quot;The Last Dance&quot;.&nbsp;</span></p>\n\n<p><span style=\"font-size:16px\">&quot;Khi t&ocirc;i xem &quot;The Last Dance&quot;, c&aacute;i c&aacute;ch Jordan n&oacute;i v??? vi???c th&uacute;c ?????y b???n th&acirc;n khi???n cho t&ocirc;i th???m ngh??: &quot;???, th&igrave; ra m&igrave;nh kh&ocirc;ng ????n ?????c&quot;. T&ocirc;i kh&ocirc;ng n&oacute;i t&ocirc;i l&agrave; Michael Jordan, nh??ng nhi???u ng?????i s??? c???n th??? ?????ng l???c ??&oacute;, t&ocirc;i kh&ocirc;ng ph???i ng?????i duy nh???t. Cristiano Ronaldo lu&ocirc;n mu???n tr??? th&agrave;nh c???u th??? gi???i nh???t v&agrave; ph&aacute; m???i k??? l???c, Kylian Mbappe mu???n th???ng m???i gi???i ?????u v&agrave; tr??? th&agrave;nh nh&agrave; v&ocirc; ?????ch v?? ?????i ti???p theo. M???i ng?????i ?????u c???n m???t th??? g&igrave; ??&oacute; ????? th&uacute;c ?????y b???n th&acirc;n. T&ocirc;i c??ng th???&quot;, Lukaku chia s??? v???i ESPN.</span></p>\n\n<p><span style=\"font-size:16px\"><img alt=\"\" src=\"https://media.thethao.vn//uploads/2021/07/02/italia-vs-lukaku-man-doi-dau-voi-con-quai-vat-ma-minh-nuoi-nang_18639.jpg\" style=\"height:599px; width:1024px\" /></span></p>\n\n<p><span style=\"font-size:16px\">Tho&aacute;t kh???i s??? ???n &agrave;o c???a truy???n th&ocirc;ng Anh, ng???i ng???m ngh?? nh???ng tri???t l&yacute; trong &quot;The Last Dance&quot; ??&atilde; gi&uacute;p Lukaku ?????t ?????n c???nh gi???i m???i. Anh v???n c&oacute; s???c m???nh c???a m???t con &quot;qu&aacute;i v???t&quot;, nh??ng l&agrave; m???t con qu&aacute;i v???t ??i???m t??nh. Lukaku ph&acirc;n b??? s???c m???nh si&ecirc;u nhi&ecirc;n c???a m&igrave;nh m???t c&aacute;ch h???p l&yacute; h??n, ????? kh&ocirc;ng b??? ng?????i kh&aacute;c coi ch??? l&agrave; m???t k??? c???y s???c.</span></p>\n\n<p><span style=\"font-size:16px\">Nh???ng ng?????i Italia, nh?? Conte ??&atilde; d???y cho Lukaku ??i???u ??&oacute;. V&agrave; gi??? nh???ng ng?????i Italia kh&aacute;c nh?? Bonucci, Chiellini s??? c??? g???ng ch??? ng??? n&oacute;. H??? c&oacute; l&agrave;m ???????c kh&ocirc;ng khi Lukaku b&acirc;y gi??? hi???u m&igrave;nh ph???i mang th&ecirc;m c??? tr???ng tr&aacute;ch c???a De Bruyne v&agrave; Eden Hazard. Bu???c Lukaku ph???i bung to&agrave;n b??? s???c m???nh s??? l&agrave; ??i???u t???i t??? cu???i c&ugrave;ng d&agrave;nh cho m???i h???u v???.</span></p>\n',1,1,47,'2021-07-03 01:01:30',NULL,'admin',NULL),(112,'Leicester k?? h???p ?????ng v???i ti???n v??? Soumare c???a Lille','https://resources.premierleague.com/photos/2021/06/25/ea984f00-e553-4700-80a8-d13dbd5bfb5d/GettyImages-1319887209-1-.jpg?width=500&height=333','C???u th??? ng?????i Ph??p chuy???n ?????n s??n v???n ?????ng King Power t??? nh?? v?? ?????ch Ligue 1 theo h???p ?????ng 5 n??m','<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#242424\"><span style=\"font-family:PremierSans-Regular,Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Leicester City ??&atilde; th&ocirc;ng b&aacute;o v??? vi???c k&yacute; h???p ?????ng v???i ti???n v??? Boubakary Soumare t??? nh&agrave; v&ocirc; ?????ch Ph&aacute;p Lille.</span></span></span></span></p>',5,0,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`heroku_b5e4417a4ce256b`@`us-cdbr-east-04.cleardb.com`*/ /*!50003 TRIGGER `after_news_insert` AFTER INSERT ON `news` FOR EACH ROW BEGIN
	insert into view_new(id_new) values (NEW.id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recent_result`
--

DROP TABLE IF EXISTS `recent_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recent_result` (
  `teamname` int(11) NOT NULL,
  `recent_result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teamname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_result`
--

LOCK TABLES `recent_result` WRITE;
/*!40000 ALTER TABLE `recent_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `recent_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultmatch`
--

DROP TABLE IF EXISTS `resultmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resultmatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week` int(11) DEFAULT NULL,
  `team1` varchar(255) DEFAULT NULL,
  `goal1` int(11) DEFAULT NULL,
  `team2` varchar(255) DEFAULT NULL,
  `goal2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultmatch`
--

LOCK TABLES `resultmatch` WRITE;
/*!40000 ALTER TABLE `resultmatch` DISABLE KEYS */;
INSERT INTO `resultmatch` VALUES (13,1,'MUN',3,'MCI',3),(17,1,'BRE',1,'ARS',3),(18,1,'MUN',1,'LEE',0),(19,1,'BUR',3,'BRI',3),(20,1,'CHE',2,'CRY',1),(25,1,'NOR',2,'LIV',3);
/*!40000 ALTER TABLE `resultmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','ADMIN',NULL,NULL,NULL,NULL),(2,'USER','USER',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week` int(11) DEFAULT NULL,
  `matchdate` varchar(255) DEFAULT NULL,
  `matchtime` varchar(255) DEFAULT NULL,
  `team1` varchar(255) DEFAULT NULL,
  `team2` varchar(255) DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (4,1,'14/8/2021','2:00','BRE','ARS','Brentford Community Stadium'),(108,1,'14/8/2021','18:30','MUN','LEE','Old Trafford'),(109,1,'14/8/2021','21:00','BUR','BRI','	Turf Moor'),(110,1,'14/8/2021','21:00','CHE','CRY','Stamford Bridge'),(111,1,'14/8/2021','21:00','EVE','SOU','Goodison Park'),(112,1,'14/8/2021','21:00','LEI','WOL','King Power Stadium'),(113,1,'14/8/2021','21:00','WAT','AVL','	Vicarage Road'),(114,1,'14/8/2021','23:30','NOR','LIV','Carrow Road'),(115,1,'15/8/2021','20:00','NEW','WHU','St James\' Park'),(116,1,'15/8/2021','22:30','TOT','MCI','	Tottenham Hotspur Stadium'),(123,2,'12/7/2021','2: 00 AM','WAT','LIV','Anfield');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `avatar` text,
  `status` int(11) DEFAULT '1',
  `roleid` bigint(20) DEFAULT '2',
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`roleid`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','Admin','mq19052002@gmail.com','0327991343',19,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRroEgbNDuaOUKKZZUKr_HeyC5Tlf2HzFC33w&usqp=CAU',1,1,'2021-06-08 19:10:25','2021-06-08 19:10:25',NULL,NULL),(2,'nguyenvana','123456','Nguyen Van An','mq19052002@gmail.com','0327991343',19,'',1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(3,'nguyenvanb','123456','nguyen van b','mq19052002@gmail.com	','0327991343',NULL,'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/61342789_141466123663995_8069364639961448448_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3nuTsogLE60AX_Ywcnp&_nc_ht=scontent-hkt1-2.xx&oh=ec9c0ba0cce513dd949600b7228fe245&oe=60DD2FDC',1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(5,'nambui','123456','Bui Nam','mq19052002@gmail.com	','0327991343',NULL,'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/61342789_141466123663995_8069364639961448448_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3nuTsogLE60AX_Ywcnp&_nc_ht=scontent-hkt1-2.xx&oh=ec9c0ba0cce513dd949600b7228fe245&oe=60DD2FDC',1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(12,'khoale','123456','Le Phuoc Khoa','mq19052002@gmail.com','0327991343',0,'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/61342789_141466123663995_8069364639961448448_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3nuTsogLE60AX_Ywcnp&_nc_ht=scontent-hkt1-2.xx&oh=ec9c0ba0cce513dd949600b7228fe245&oe=60DD2FDC',1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(18,'quoctran','123456','Tran minh quoc','mq19052002@gmail.com	','0327991343',NULL,'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/61342789_141466123663995_8069364639961448448_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3nuTsogLE60AX_Ywcnp&_nc_ht=scontent-hkt1-2.xx&oh=ec9c0ba0cce513dd949600b7228fe245&oe=60DD2FDC',1,2,'2021-06-08 19:10:25',NULL,NULL,NULL),(28,'minhquoc','123456','Tr???n Minh Qu???c','mq19052002@gmail.com	','0327991343',NULL,'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/61342789_141466123663995_8069364639961448448_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3nuTsogLE60AX_Ywcnp&_nc_ht=scontent-hkt1-2.xx&oh=ec9c0ba0cce513dd949600b7228fe245&oe=60DD2FDC',1,1,'2021-06-08 19:10:25',NULL,NULL,NULL),(37,'minhminh','123456','Tr???n Minh Qu???c','mq19052002@gmail.com','0327991343',18,'https://www.esafety.gov.au/sites/default/files/2019-08/Remove%20images%20and%20video.jpg',1,2,'2021-06-27 15:39:24',NULL,NULL,NULL),(38,'tuilaminhquoc','123456','Tr???n Minh Qu???c','mq19052002@gmail.com','+84327991343',19,NULL,1,2,'2021-07-01 18:07:14',NULL,NULL,NULL),(39,'tranminhquoc','123456','Tran Minh Quoc','mq19052002@gmail.com','+84327991343',19,'',1,2,'2021-07-04 09:05:48',NULL,NULL,NULL),(40,'minhquoc123','123456','Tran Minh Quoc','mq19052002@gmail.com','+84327991343',19,'',1,2,'2021-07-05 21:14:34',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_new`
--

DROP TABLE IF EXISTS `view_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `view_new` (
  `id_new` bigint(20) NOT NULL,
  `dateview` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_new`),
  CONSTRAINT `view_new_ibfk_1` FOREIGN KEY (`id_new`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_new`
--

LOCK TABLES `view_new` WRITE;
/*!40000 ALTER TABLE `view_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-06 11:52:29
