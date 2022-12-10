-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm4o890
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-05-09 09:01:52',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-05-09 09:01:52',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-05-09 09:01:52',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-05-09 09:01:52',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-05-09 09:01:52',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-05-09 09:01:52',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canyujingpai`
--

DROP TABLE IF EXISTS `canyujingpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canyujingpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaibianhao` varchar(200) DEFAULT NULL COMMENT '竞拍编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `dangqianjiage` varchar(200) DEFAULT NULL COMMENT '当前价格',
  `shifoujiajia` varchar(200) DEFAULT NULL COMMENT '是否加价',
  `chujia` int(11) NOT NULL COMMENT '出价',
  `chujiashijian` datetime DEFAULT NULL COMMENT '出价时间',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingpaibianhao` (`jingpaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='参与竞拍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canyujingpai`
--

LOCK TABLES `canyujingpai` WRITE;
/*!40000 ALTER TABLE `canyujingpai` DISABLE KEYS */;
INSERT INTO `canyujingpai` VALUES (71,'2021-05-09 09:01:52','竞拍编号1','商品名称1','商品分类1','当前价格1','是',1,'2021-05-09 17:01:52','卖家账号1','卖家姓名1','账号1','姓名1'),(72,'2021-05-09 09:01:52','竞拍编号2','商品名称2','商品分类2','当前价格2','是',2,'2021-05-09 17:01:52','卖家账号2','卖家姓名2','账号2','姓名2'),(73,'2021-05-09 09:01:52','竞拍编号3','商品名称3','商品分类3','当前价格3','是',3,'2021-05-09 17:01:52','卖家账号3','卖家姓名3','账号3','姓名3'),(74,'2021-05-09 09:01:52','竞拍编号4','商品名称4','商品分类4','当前价格4','是',4,'2021-05-09 17:01:52','卖家账号4','卖家姓名4','账号4','姓名4'),(75,'2021-05-09 09:01:52','竞拍编号5','商品名称5','商品分类5','当前价格5','是',5,'2021-05-09 17:01:52','卖家账号5','卖家姓名5','账号5','姓名5'),(76,'2021-05-09 09:01:52','竞拍编号6','商品名称6','商品分类6','当前价格6','是',6,'2021-05-09 17:01:52','卖家账号6','卖家姓名6','账号6','姓名6');
/*!40000 ALTER TABLE `canyujingpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengjiaotongzhi`
--

DROP TABLE IF EXISTS `chengjiaotongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjiaotongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaibianhao` varchar(200) DEFAULT NULL COMMENT '竞拍编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `jingpaijieguo` varchar(200) DEFAULT NULL COMMENT '竞拍结果',
  `chujia` int(11) DEFAULT NULL COMMENT '出价',
  `tongzhineirong` longtext COMMENT '通知内容',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='成交通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjiaotongzhi`
--

LOCK TABLES `chengjiaotongzhi` WRITE;
/*!40000 ALTER TABLE `chengjiaotongzhi` DISABLE KEYS */;
INSERT INTO `chengjiaotongzhi` VALUES (81,'2021-05-09 09:01:52','竞拍编号1','商品名称1','商品分类1','成功',1,'通知内容1','卖家账号1','卖家姓名1','账号1','姓名1'),(82,'2021-05-09 09:01:52','竞拍编号2','商品名称2','商品分类2','成功',2,'通知内容2','卖家账号2','卖家姓名2','账号2','姓名2'),(83,'2021-05-09 09:01:52','竞拍编号3','商品名称3','商品分类3','成功',3,'通知内容3','卖家账号3','卖家姓名3','账号3','姓名3'),(84,'2021-05-09 09:01:52','竞拍编号4','商品名称4','商品分类4','成功',4,'通知内容4','卖家账号4','卖家姓名4','账号4','姓名4'),(85,'2021-05-09 09:01:52','竞拍编号5','商品名称5','商品分类5','成功',5,'通知内容5','卖家账号5','卖家姓名5','账号5','姓名5'),(86,'2021-05-09 09:01:52','竞拍编号6','商品名称6','商品分类6','成功',6,'通知内容6','卖家账号6','卖家姓名6','账号6','姓名6');
/*!40000 ALTER TABLE `chengjiaotongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm4o890/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm4o890/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4o890/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingpaishangpin`
--

DROP TABLE IF EXISTS `discussjingpaishangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingpaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='竞拍商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingpaishangpin`
--

LOCK TABLES `discussjingpaishangpin` WRITE;
/*!40000 ALTER TABLE `discussjingpaishangpin` DISABLE KEYS */;
INSERT INTO `discussjingpaishangpin` VALUES (161,'2021-05-09 09:01:52',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-05-09 09:01:52',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-05-09 09:01:52',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-05-09 09:01:52',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-05-09 09:01:52',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-05-09 09:01:52',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjingpaishangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (151,'2021-05-09 09:01:52',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-05-09 09:01:52',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-05-09 09:01:52',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-05-09 09:01:52',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-05-09 09:01:52',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-05-09 09:01:52',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingpaishangpin`
--

DROP TABLE IF EXISTS `jingpaishangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingpaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `dangqianjiage` varchar(200) DEFAULT NULL COMMENT '当前价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jingpaishuoming` longtext NOT NULL COMMENT '竞拍说明',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='竞拍商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingpaishangpin`
--

LOCK TABLES `jingpaishangpin` WRITE;
/*!40000 ALTER TABLE `jingpaishangpin` DISABLE KEYS */;
INSERT INTO `jingpaishangpin` VALUES (61,'2021-05-09 09:01:52','商品名称1','商品分类1','规格1','当前价格1','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian1.jpg','竞拍说明1','商品介绍1','卖家账号1','卖家姓名1','联系方式1','2021-05-09 17:01:52',1,99.9,1,99),(62,'2021-05-09 09:01:52','商品名称2','商品分类2','规格2','当前价格2','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian2.jpg','竞拍说明2','商品介绍2','卖家账号2','卖家姓名2','联系方式2','2021-05-09 17:01:52',2,99.9,2,99),(63,'2021-05-09 09:01:52','商品名称3','商品分类3','规格3','当前价格3','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian3.jpg','竞拍说明3','商品介绍3','卖家账号3','卖家姓名3','联系方式3','2021-05-09 17:01:52',3,99.9,3,99),(64,'2021-05-09 09:01:52','商品名称4','商品分类4','规格4','当前价格4','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian4.jpg','竞拍说明4','商品介绍4','卖家账号4','卖家姓名4','联系方式4','2021-05-09 17:01:52',4,99.9,4,99),(65,'2021-05-09 09:01:52','商品名称5','商品分类5','规格5','当前价格5','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian5.jpg','竞拍说明5','商品介绍5','卖家账号5','卖家姓名5','联系方式5','2021-05-09 17:01:52',5,99.9,5,99),(66,'2021-05-09 09:01:52','商品名称6','商品分类6','规格6','当前价格6','http://localhost:8080/ssm4o890/upload/jingpaishangpin_tupian6.jpg','竞拍说明6','商品介绍6','卖家账号6','卖家姓名6','联系方式6','2021-05-09 17:01:52',6,99.9,6,99);
/*!40000 ALTER TABLE `jingpaishangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingpaiweituo`
--

DROP TABLE IF EXISTS `jingpaiweituo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingpaiweituo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `lixiangjiage` varchar(200) DEFAULT NULL COMMENT '理想价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='竞拍委托';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingpaiweituo`
--

LOCK TABLES `jingpaiweituo` WRITE;
/*!40000 ALTER TABLE `jingpaiweituo` DISABLE KEYS */;
INSERT INTO `jingpaiweituo` VALUES (51,'2021-05-09 09:01:52','商品名称1','商品分类1','规格1','理想价格1','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian1.jpg','商品介绍1','卖家账号1','卖家姓名1','联系方式1','是',''),(52,'2021-05-09 09:01:52','商品名称2','商品分类2','规格2','理想价格2','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian2.jpg','商品介绍2','卖家账号2','卖家姓名2','联系方式2','是',''),(53,'2021-05-09 09:01:52','商品名称3','商品分类3','规格3','理想价格3','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian3.jpg','商品介绍3','卖家账号3','卖家姓名3','联系方式3','是',''),(54,'2021-05-09 09:01:52','商品名称4','商品分类4','规格4','理想价格4','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian4.jpg','商品介绍4','卖家账号4','卖家姓名4','联系方式4','是',''),(55,'2021-05-09 09:01:52','商品名称5','商品分类5','规格5','理想价格5','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian5.jpg','商品介绍5','卖家账号5','卖家姓名5','联系方式5','是',''),(56,'2021-05-09 09:01:52','商品名称6','商品分类6','规格6','理想价格6','http://localhost:8080/ssm4o890/upload/jingpaiweituo_tupian6.jpg','商品介绍6','卖家账号6','卖家姓名6','联系方式6','是','');
/*!40000 ALTER TABLE `jingpaiweituo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2021-05-09 09:01:52','卖家1','123456','卖家姓名1',1,'男','13823888881','http://localhost:8080/ssm4o890/upload/maijia_zhaopian1.jpg',100),(22,'2021-05-09 09:01:52','卖家2','123456','卖家姓名2',2,'男','13823888882','http://localhost:8080/ssm4o890/upload/maijia_zhaopian2.jpg',100),(23,'2021-05-09 09:01:52','卖家3','123456','卖家姓名3',3,'男','13823888883','http://localhost:8080/ssm4o890/upload/maijia_zhaopian3.jpg',100),(24,'2021-05-09 09:01:52','卖家4','123456','卖家姓名4',4,'男','13823888884','http://localhost:8080/ssm4o890/upload/maijia_zhaopian4.jpg',100),(25,'2021-05-09 09:01:52','卖家5','123456','卖家姓名5',5,'男','13823888885','http://localhost:8080/ssm4o890/upload/maijia_zhaopian5.jpg',100),(26,'2021-05-09 09:01:52','卖家6','123456','卖家姓名6',6,'男','13823888886','http://localhost:8080/ssm4o890/upload/maijia_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (141,'2021-05-09 09:01:52',1,'用户名1','留言内容1','回复内容1'),(142,'2021-05-09 09:01:52',2,'用户名2','留言内容2','回复内容2'),(143,'2021-05-09 09:01:52',3,'用户名3','留言内容3','回复内容3'),(144,'2021-05-09 09:01:52',4,'用户名4','留言内容4','回复内容4'),(145,'2021-05-09 09:01:52',5,'用户名5','留言内容5','回复内容5'),(146,'2021-05-09 09:01:52',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2021-05-09 09:01:52','标题1','简介1','http://localhost:8080/ssm4o890/upload/news_picture1.jpg','内容1'),(132,'2021-05-09 09:01:52','标题2','简介2','http://localhost:8080/ssm4o890/upload/news_picture2.jpg','内容2'),(133,'2021-05-09 09:01:52','标题3','简介3','http://localhost:8080/ssm4o890/upload/news_picture3.jpg','内容3'),(134,'2021-05-09 09:01:52','标题4','简介4','http://localhost:8080/ssm4o890/upload/news_picture4.jpg','内容4'),(135,'2021-05-09 09:01:52','标题5','简介5','http://localhost:8080/ssm4o890/upload/news_picture5.jpg','内容5'),(136,'2021-05-09 09:01:52','标题6','简介6','http://localhost:8080/ssm4o890/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jingpaishangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-05-09 09:01:52','商品分类1'),(32,'2021-05-09 09:01:52','商品分类2'),(33,'2021-05-09 09:01:52','商品分类3'),(34,'2021-05-09 09:01:52','商品分类4'),(35,'2021-05-09 09:01:52','商品分类5'),(36,'2021-05-09 09:01:52','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-05-09 09:01:52','商品名称1','商品分类1','规格1','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian1.jpg','商品介绍1','卖家账号1','卖家姓名1','联系方式1','2021-05-09 17:01:52',1,99.9,1,99,1),(42,'2021-05-09 09:01:52','商品名称2','商品分类2','规格2','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian2.jpg','商品介绍2','卖家账号2','卖家姓名2','联系方式2','2021-05-09 17:01:52',2,99.9,2,99,2),(43,'2021-05-09 09:01:52','商品名称3','商品分类3','规格3','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian3.jpg','商品介绍3','卖家账号3','卖家姓名3','联系方式3','2021-05-09 17:01:52',3,99.9,3,99,3),(44,'2021-05-09 09:01:52','商品名称4','商品分类4','规格4','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian4.jpg','商品介绍4','卖家账号4','卖家姓名4','联系方式4','2021-05-09 17:01:52',4,99.9,4,99,4),(45,'2021-05-09 09:01:52','商品名称5','商品分类5','规格5','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian5.jpg','商品介绍5','卖家账号5','卖家姓名5','联系方式5','2021-05-09 17:01:52',5,99.9,5,99,5),(46,'2021-05-09 09:01:52','商品名称6','商品分类6','规格6','http://localhost:8080/ssm4o890/upload/shangpinxinxi_tupian6.jpg','商品介绍6','卖家账号6','卖家姓名6','联系方式6','2021-05-09 17:01:52',6,99.9,6,99,6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-09 09:01:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-05-09 09:01:52','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian1.jpg',100),(12,'2021-05-09 09:01:52','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian2.jpg',100),(13,'2021-05-09 09:01:52','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian3.jpg',100),(14,'2021-05-09 09:01:52','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian4.jpg',100),(15,'2021-05-09 09:01:52','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian5.jpg',100),(16,'2021-05-09 09:01:52','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm4o890/upload/yonghu_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 19:02:04
