-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: picdemo
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级相册id',
  `path` text NOT NULL COMMENT '相册路径',
  `name` varchar(12) NOT NULL DEFAULT '' COMMENT '相册名',
  `cover` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图地址',
  `total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,0,'0,','壁纸','2020-12/22/b8fc4789ca04fd130cf74c4ef4da418f.jpg',5),(2,0,'0,','收藏','2020-12/22/61f8a63a9cd9104370b3db86ae3d64f3.jpg',3),(3,0,'0,','天空','2020-12/22/c504f2aeab32580602c6a0b2cbc8d2ff.jpg',15);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属相册id',
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '图片名',
  `save` varchar(255) NOT NULL DEFAULT '' COMMENT '保存地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,1,'壁纸1','2020-12/22/b30dbf991e97d0219caa0b9c3a597b1e.jpg'),(2,1,'壁纸2','2020-12/22/b8fc4789ca04fd130cf74c4ef4da418f.jpg'),(3,1,'壁纸3','2020-12/22/1f15f40ac0f0847091c7b22dc88404c3.jpg'),(4,1,'壁纸4','2020-12/22/884d439309eda2f70f7fcc8bcede90a4.jpg'),(5,1,'壁纸5','2020-12/22/d6169acb6124160a407499dc11453959.jpg'),(6,0,'湖边','2020-12/22/ffd16ac59e68aef2362278870a7ba48c.jpg'),(7,0,'动漫','2020-12/22/ac66308f2e43866137082003b3aa5533.jpg'),(8,0,'公路','2020-12/22/9fda8d25c7b1cbf000d1641bf887588f.jpg'),(9,0,'街头','2020-12/22/4497e93cdf6864330eeb0fad1213a62a.jpg'),(10,0,'轮船','2020-12/22/58721e966328ed9d8310b05aa5551670.jpg'),(11,0,'码头','2020-12/22/63ea6bed7dcc68ceaaeca8f07ae7e5fd.jpg'),(12,0,'森林','2020-12/22/6ccb832a05697e7b030c5ab5b57b3c83.jpg'),(13,0,'山','2020-12/22/2a43064974b6c0c9291ccf8c1d430527.jpg'),(14,0,'山间公路','2020-12/22/f896b0b92eba784e1d00d63c95f09f03.jpg'),(15,2,'独立思考','2020-12/22/61f8a63a9cd9104370b3db86ae3d64f3.jpg'),(16,2,'满怀期望','2020-12/22/6e6120678425a2118c2ce45ea07dccf1.jpg'),(17,0,'树林','2020-12/22/ab7303b5b89e4c36c1f68ef8c8575a85.jpg'),(18,0,'水滴','2020-12/22/ad01f3d288aabb18644e4176682b9ba1.jpg'),(19,0,'雾','2020-12/22/59557e1247d09c0cf69aa1f8cc7d96e0.jpg'),(20,0,'夕阳','2020-12/22/19cdcb3f8c11489c5f085e18f4df19a0.jpg'),(21,0,'鲜花','2020-12/22/1e61146c77b594d98186f24cd3db6583.jpg'),(22,0,'小鸟','2020-12/22/39cb69d089ec3661532f4d26d77ca864.jpg'),(23,0,'星空','2020-12/22/2de2342132b14dca4dda2215afcc9cd0.jpg'),(24,0,'鸭子','2020-12/22/2fd0dfca791ef717cca9bcc1185392e9.jpg'),(25,3,'白云','2020-12/22/eb1c4b0021c38b347cee682b9018fd30.jpg'),(26,3,'彩虹','2020-12/22/aa414a6adee5abf88128f65c05f8de59.jpg'),(27,3,'海天一色','2020-12/22/90f3011f61250283990071361439d256.jpg'),(28,3,'海燕','2020-12/22/ccc8e8cf66bba5b7943c23db6d6de87e.jpg'),(29,3,'蓝天','2020-12/22/2b84d3e4c573a2601f90e6c5a9ec6fdf.jpg'),(30,3,'蓝天飞机','2020-12/22/c7e222f0c2a6e6cfc7870f0f957b7f56.jpg'),(31,3,'白云','2020-12/22/3d9717dd2ad9559c8969e76f12a0039d.jpg'),(32,3,'落日余晖','2020-12/22/18a6ad49b1249a346924e4485909a110.jpg'),(33,3,'太阳','2020-12/22/ae4cd193ffeed1fc46aa0ff23ef9a28a.jpg'),(34,3,'太阳2','2020-12/22/cf93b9db703c0a841db77399ef4cf3f2.jpg'),(35,3,'夕阳落日','2020-12/22/0b032c68fc79cc2703eca7c76c19da53.jpg'),(36,3,'心形云朵','2020-12/22/c504f2aeab32580602c6a0b2cbc8d2ff.jpg'),(37,3,'燕子','2020-12/22/8b29fc0f6f3a4209205290aed3b0b5b0.jpg'),(38,3,'云','2020-12/22/60020f3d3d3102c623b4dcea97cb0bf2.jpg'),(39,3,'云海','2020-12/22/727eb7c5fa1cbbb46de641bf55acdab8.jpg'),(40,2,'3','2020-12/23/b83d76f9e3a1a1870fbf9730cbb2496b.jpg');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23  8:55:20
