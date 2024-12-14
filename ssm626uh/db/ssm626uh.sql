-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm626uh
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
-- Current Database: `ssm626uh`
--

/*!40000 DROP DATABASE IF EXISTS `ssm626uh`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm626uh` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm626uh`;

--
-- Table structure for table `anjianjinzhan`
--

DROP TABLE IF EXISTS `anjianjinzhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anjianjinzhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `anjianbianhao` varchar(200) DEFAULT NULL COMMENT '案件编号',
  `baoanmingcheng` varchar(200) DEFAULT NULL COMMENT '报案名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jinzhantupian` varchar(200) DEFAULT NULL COMMENT '进展图片',
  `jinzhanzhuangtai` varchar(200) NOT NULL COMMENT '进展状态',
  `jinzhanneirong` longtext COMMENT '进展内容',
  `jinghao` varchar(200) DEFAULT NULL COMMENT '警号',
  `jingchaxingming` varchar(200) DEFAULT NULL COMMENT '警察姓名',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649063151373 DEFAULT CHARSET=utf8 COMMENT='案件进展';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anjianjinzhan`
--

LOCK TABLES `anjianjinzhan` WRITE;
/*!40000 ALTER TABLE `anjianjinzhan` DISABLE KEYS */;
INSERT INTO `anjianjinzhan` VALUES (81,'2022-04-04 08:51:18','案件编号1','报案名称1','账号1','姓名1','upload/anjianjinzhan_jinzhantupian1.jpg','调查中','进展内容1','警号1','警察姓名1','2022-04-04',1),(82,'2022-04-04 08:51:18','案件编号2','报案名称2','账号2','姓名2','upload/anjianjinzhan_jinzhantupian2.jpg','调查中','进展内容2','警号2','警察姓名2','2022-04-04',2),(83,'2022-04-04 08:51:18','案件编号3','报案名称3','账号3','姓名3','upload/anjianjinzhan_jinzhantupian3.jpg','调查中','进展内容3','警号3','警察姓名3','2022-04-04',3),(84,'2022-04-04 08:51:18','案件编号4','报案名称4','账号4','姓名4','upload/anjianjinzhan_jinzhantupian4.jpg','调查中','进展内容4','警号4','警察姓名4','2022-04-04',4),(85,'2022-04-04 08:51:18','案件编号5','报案名称5','账号5','姓名5','upload/anjianjinzhan_jinzhantupian5.jpg','调查中','进展内容5','警号5','警察姓名5','2022-04-04',5),(86,'2022-04-04 08:51:18','案件编号6','报案名称6','账号6','姓名6','upload/anjianjinzhan_jinzhantupian6.jpg','调查中','进展内容6','警号6','警察姓名6','2022-04-04',6),(1649063151372,'2022-04-04 09:05:50','123456789','这里是用户报案的地方','11','张三','upload/1649063127712.jpg','行动中','这里是民警更新案件进展的地方，用户可以在移动端查询','22','李四','2022-04-04',1649062794288);
/*!40000 ALTER TABLE `anjianjinzhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baoanxinxi`
--

DROP TABLE IF EXISTS `baoanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `baoanmingcheng` varchar(200) NOT NULL COMMENT '报案名称',
  `baoanneirong` longtext COMMENT '报案内容',
  `zhuanzhangjine` int(11) NOT NULL COMMENT '转账金额',
  `zhuanzhangcishu` int(11) NOT NULL COMMENT '转账次数',
  `zhuanchuzhanghao` varchar(200) NOT NULL COMMENT '转出账号',
  `duifangzhanghao` varchar(200) NOT NULL COMMENT '对方账号',
  `zhuanzhangpingzheng` varchar(200) DEFAULT NULL COMMENT '转账凭证',
  `zhuanchushijian` datetime NOT NULL COMMENT '转出时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062876844 DEFAULT CHARSET=utf8 COMMENT='报案信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoanxinxi`
--

LOCK TABLES `baoanxinxi` WRITE;
/*!40000 ALTER TABLE `baoanxinxi` DISABLE KEYS */;
INSERT INTO `baoanxinxi` VALUES (61,'2022-04-04 08:51:18','1111111111','报案名称1','报案内容1',1,1,'转出账号1','对方账号1','upload/baoanxinxi_zhuanzhangpingzheng1.jpg','2022-04-04 16:51:18','账号1','姓名1','2022-04-04','是','',1),(62,'2022-04-04 08:51:18','2222222222','报案名称2','报案内容2',2,2,'转出账号2','对方账号2','upload/baoanxinxi_zhuanzhangpingzheng2.jpg','2022-04-04 16:51:18','账号2','姓名2','2022-04-04','是','',2),(63,'2022-04-04 08:51:18','3333333333','报案名称3','报案内容3',3,3,'转出账号3','对方账号3','upload/baoanxinxi_zhuanzhangpingzheng3.jpg','2022-04-04 16:51:18','账号3','姓名3','2022-04-04','是','',3),(64,'2022-04-04 08:51:18','4444444444','报案名称4','报案内容4',4,4,'转出账号4','对方账号4','upload/baoanxinxi_zhuanzhangpingzheng4.jpg','2022-04-04 16:51:18','账号4','姓名4','2022-04-04','是','',4),(65,'2022-04-04 08:51:18','5555555555','报案名称5','报案内容5',5,5,'转出账号5','对方账号5','upload/baoanxinxi_zhuanzhangpingzheng5.jpg','2022-04-04 16:51:18','账号5','姓名5','2022-04-04','是','',5),(66,'2022-04-04 08:51:18','6666666666','报案名称6','报案内容6',6,6,'转出账号6','对方账号6','upload/baoanxinxi_zhuanzhangpingzheng6.jpg','2022-04-04 16:51:18','账号6','姓名6','2022-04-04','是','',6),(1649062876843,'2022-04-04 09:01:16','1649063025364','这里是用户报案的地方','这里输入报案的内容',500,3,'123456','456789','upload/1649062864032.jpg','2022-04-03 17:00:45','11','张三','2022-04-04','是','这里是审核用户的报案信息的地方，并立案',1649062794288);
/*!40000 ALTER TABLE `baoanxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1649063081796.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxinxi`
--

DROP TABLE IF EXISTS `fuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `fuwutupian` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `zhunbeicailiao` longtext COMMENT '准备材料',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649063015245 DEFAULT CHARSET=utf8 COMMENT='服务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxinxi`
--

LOCK TABLES `fuwuxinxi` WRITE;
/*!40000 ALTER TABLE `fuwuxinxi` DISABLE KEYS */;
INSERT INTO `fuwuxinxi` VALUES (31,'2022-04-04 08:51:18','服务名称1','upload/fuwuxinxi_fuwutupian1.jpg','类型1','准备材料1',1,'服务详情1'),(32,'2022-04-04 08:51:18','服务名称2','upload/fuwuxinxi_fuwutupian2.jpg','类型2','准备材料2',3,'服务详情2'),(33,'2022-04-04 08:51:18','服务名称3','upload/fuwuxinxi_fuwutupian3.jpg','类型3','准备材料3',3,'服务详情3'),(34,'2022-04-04 08:51:18','服务名称4','upload/fuwuxinxi_fuwutupian4.jpg','类型4','准备材料4',4,'服务详情4'),(35,'2022-04-04 08:51:18','服务名称5','upload/fuwuxinxi_fuwutupian5.jpg','类型5','准备材料5',5,'服务详情5'),(36,'2022-04-04 08:51:18','服务名称6','upload/fuwuxinxi_fuwutupian6.jpg','类型6','准备材料6',6,'服务详情6'),(1649063015244,'2022-04-04 09:03:34','某某服务','upload/1649062984306.jpg','政审类','这里输入需要准备的材料名称',2,'<p>这里输入具体的服务详情，还可以适当的插入图片</p><p><img src=\"http://localhost:8080/ssm626uh/upload/1649063013698.jpg\"></p>');
/*!40000 ALTER TABLE `fuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixing`
--

DROP TABLE IF EXISTS `leixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062969096 DEFAULT CHARSET=utf8 COMMENT='类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixing`
--

LOCK TABLES `leixing` WRITE;
/*!40000 ALTER TABLE `leixing` DISABLE KEYS */;
INSERT INTO `leixing` VALUES (41,'2022-04-04 08:51:18','类型1'),(42,'2022-04-04 08:51:18','类型2'),(43,'2022-04-04 08:51:18','类型3'),(44,'2022-04-04 08:51:18','类型4'),(45,'2022-04-04 08:51:18','类型5'),(46,'2022-04-04 08:51:18','类型6'),(1649062969095,'2022-04-04 09:02:49','政审类');
/*!40000 ALTER TABLE `leixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lianxinxi`
--

DROP TABLE IF EXISTS `lianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `anjianbianhao` varchar(200) DEFAULT NULL COMMENT '案件编号',
  `baoanmingcheng` varchar(200) NOT NULL COMMENT '报案名称',
  `baoanneirong` longtext COMMENT '报案内容',
  `zhuanzhangjine` varchar(200) NOT NULL COMMENT '转账金额',
  `zhuanzhangcishu` varchar(200) NOT NULL COMMENT '转账次数',
  `zhuanchuzhanghao` varchar(200) NOT NULL COMMENT '转出账号',
  `duifangzhanghao` varchar(200) NOT NULL COMMENT '对方账号',
  `zhuanzhangpingzheng` varchar(200) DEFAULT NULL COMMENT '转账凭证',
  `zhuanchushijian` varchar(200) NOT NULL COMMENT '转出时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenqingriqi` varchar(200) DEFAULT NULL COMMENT '申请日期',
  `jinghao` varchar(200) DEFAULT NULL COMMENT '警号',
  `jingchaxingming` varchar(200) DEFAULT NULL COMMENT '警察姓名',
  `lianshijian` datetime DEFAULT NULL COMMENT '立案时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `anjianbianhao` (`anjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649063066969 DEFAULT CHARSET=utf8 COMMENT='立案信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lianxinxi`
--

LOCK TABLES `lianxinxi` WRITE;
/*!40000 ALTER TABLE `lianxinxi` DISABLE KEYS */;
INSERT INTO `lianxinxi` VALUES (71,'2022-04-04 08:51:18','案件编号1','报案名称1','报案内容1','转账金额1','转账次数1','转出账号1','对方账号1','upload/lianxinxi_zhuanzhangpingzheng1.jpg','转出时间1','账号1','姓名1','申请日期1','警号1','警察姓名1','2022-04-04 16:51:18',1),(72,'2022-04-04 08:51:18','案件编号2','报案名称2','报案内容2','转账金额2','转账次数2','转出账号2','对方账号2','upload/lianxinxi_zhuanzhangpingzheng2.jpg','转出时间2','账号2','姓名2','申请日期2','警号2','警察姓名2','2022-04-04 16:51:18',2),(73,'2022-04-04 08:51:18','案件编号3','报案名称3','报案内容3','转账金额3','转账次数3','转出账号3','对方账号3','upload/lianxinxi_zhuanzhangpingzheng3.jpg','转出时间3','账号3','姓名3','申请日期3','警号3','警察姓名3','2022-04-04 16:51:18',3),(74,'2022-04-04 08:51:18','案件编号4','报案名称4','报案内容4','转账金额4','转账次数4','转出账号4','对方账号4','upload/lianxinxi_zhuanzhangpingzheng4.jpg','转出时间4','账号4','姓名4','申请日期4','警号4','警察姓名4','2022-04-04 16:51:18',4),(75,'2022-04-04 08:51:18','案件编号5','报案名称5','报案内容5','转账金额5','转账次数5','转出账号5','对方账号5','upload/lianxinxi_zhuanzhangpingzheng5.jpg','转出时间5','账号5','姓名5','申请日期5','警号5','警察姓名5','2022-04-04 16:51:18',5),(76,'2022-04-04 08:51:18','案件编号6','报案名称6','报案内容6','转账金额6','转账次数6','转出账号6','对方账号6','upload/lianxinxi_zhuanzhangpingzheng6.jpg','转出时间6','账号6','姓名6','申请日期6','警号6','警察姓名6','2022-04-04 16:51:18',6),(1649063066968,'2022-04-04 09:04:26','123456789','这里是用户报案的地方','这里输入报案的内容','500','3','123456','456789','upload/1649062864032.jpg','2022-04-03 17:00:45','11','张三','2022-04-04','22','李四','2022-04-04 17:07:22',1649062794288);
/*!40000 ALTER TABLE `lianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minjing`
--

DROP TABLE IF EXISTS `minjing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minjing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinghao` varchar(200) NOT NULL COMMENT '警号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jingchaxingming` varchar(200) NOT NULL COMMENT '警察姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinghao` (`jinghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062922939 DEFAULT CHARSET=utf8 COMMENT='民警';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minjing`
--

LOCK TABLES `minjing` WRITE;
/*!40000 ALTER TABLE `minjing` DISABLE KEYS */;
INSERT INTO `minjing` VALUES (21,'2022-04-04 08:51:18','警号1','123456','警察姓名1','男','440300199101010001','13823888881','upload/minjing_xiangpian1.jpg'),(22,'2022-04-04 08:51:18','警号2','123456','警察姓名2','男','440300199202020002','13823888882','upload/minjing_xiangpian2.jpg'),(23,'2022-04-04 08:51:18','警号3','123456','警察姓名3','男','440300199303030003','13823888883','upload/minjing_xiangpian3.jpg'),(24,'2022-04-04 08:51:18','警号4','123456','警察姓名4','男','440300199404040004','13823888884','upload/minjing_xiangpian4.jpg'),(25,'2022-04-04 08:51:18','警号5','123456','警察姓名5','男','440300199505050005','13823888885','upload/minjing_xiangpian5.jpg'),(26,'2022-04-04 08:51:18','警号6','123456','警察姓名6','男','440300199606060006','13823888886','upload/minjing_xiangpian6.jpg'),(1649062922938,'2022-04-04 09:02:02','22','22','李四','女','662323232322152232','13122222322','upload/1649062933663.jpg');
/*!40000 ALTER TABLE `minjing` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1649063109129 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (103,'2022-04-04 08:51:18','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(104,'2022-04-04 08:51:18','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(105,'2022-04-04 08:51:18','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(106,'2022-04-04 08:51:18','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1649063109128,'2022-04-04 09:05:08','这里是发布新闻资讯的地方','新闻的简介','upload/1649063099434.jpg','<p>新闻的内容</p><p><img src=\"http://localhost:8080/ssm626uh/upload/1649063107555.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062820626 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1649062820625,'2022-04-04 09:00:20',1649062794288,32,'fuwuxinxi','服务名称2','upload/fuwuxinxi_fuwutupian2.jpg','1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1649062794288,'11','yonghu','用户','nr68wujzghl4uupy06nnmpeapd68zeck','2022-04-04 08:59:58','2022-04-04 09:59:58'),(2,1649062922938,'22','minjing','民警','k54y1znno3pakfaearmf7kbywbefjrcx','2022-04-04 09:02:07','2022-04-04 10:05:13'),(3,1,'abo','users','管理员','970y2m1futetiposjo8r3awp65sqxmfv','2022-04-04 09:02:24','2022-04-04 10:02:24');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-04 08:51:18');
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
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062794289 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-04 08:51:18','账号1','123456','姓名1','男','440300199101010001','13823888881','upload/yonghu_xiangpian1.jpg'),(12,'2022-04-04 08:51:18','账号2','123456','姓名2','男','440300199202020002','13823888882','upload/yonghu_xiangpian2.jpg'),(13,'2022-04-04 08:51:18','账号3','123456','姓名3','男','440300199303030003','13823888883','upload/yonghu_xiangpian3.jpg'),(14,'2022-04-04 08:51:18','账号4','123456','姓名4','男','440300199404040004','13823888884','upload/yonghu_xiangpian4.jpg'),(15,'2022-04-04 08:51:18','账号5','123456','姓名5','男','440300199505050005','13823888885','upload/yonghu_xiangpian5.jpg'),(16,'2022-04-04 08:51:18','账号6','123456','姓名6','男','440300199606060006','13823888886','upload/yonghu_xiangpian6.jpg'),(1649062794288,'2022-04-04 08:59:54','11','11','张三','男','636222232222132213','13111111111','upload/1649062805071.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwutupian` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuebeizhu` longtext COMMENT '预约备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649062834383 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (51,'2022-04-04 08:51:18','服务名称1','upload/yuyuexinxi_fuwutupian1.jpg','类型1',1,'2022-04-04 16:51:18','预约备注1','账号1','姓名1','手机号码1','是','',1),(52,'2022-04-04 08:51:18','服务名称2','upload/yuyuexinxi_fuwutupian2.jpg','类型2',1,'2022-04-04 16:51:18','预约备注2','账号2','姓名2','手机号码2','是','',2),(53,'2022-04-04 08:51:18','服务名称3','upload/yuyuexinxi_fuwutupian3.jpg','类型3',1,'2022-04-04 16:51:18','预约备注3','账号3','姓名3','手机号码3','是','',3),(54,'2022-04-04 08:51:18','服务名称4','upload/yuyuexinxi_fuwutupian4.jpg','类型4',1,'2022-04-04 16:51:18','预约备注4','账号4','姓名4','手机号码4','是','',4),(55,'2022-04-04 08:51:18','服务名称5','upload/yuyuexinxi_fuwutupian5.jpg','类型5',1,'2022-04-04 16:51:18','预约备注5','账号5','姓名5','手机号码5','是','',5),(56,'2022-04-04 08:51:18','服务名称6','upload/yuyuexinxi_fuwutupian6.jpg','类型6',1,'2022-04-04 16:51:18','预约备注6','账号6','姓名6','手机号码6','是','',6),(1649062834382,'2022-04-04 09:00:34','服务名称2','upload/fuwuxinxi_fuwutupian2.jpg','类型2',1,'2022-04-05 17:00:25','这里是用户预约服务的地方','11','张三','13111111111','是','这里是审核用户的预约信息的地方',1649062794288);
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 11:15:47
