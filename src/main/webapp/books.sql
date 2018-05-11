/*
SQLyog Ultimate v8.32 
MySQL - 5.5.27 : Database - books
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `books`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` char(32) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `cellphone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`username`,`password`,`name`,`cellphone`,`email`,`state`,`type`) values ('12b92647c5b341ccb96a5c0a49c12c4b','admin','admin','王五','16577136572','zhangsan@qq.com',0,'0'),('16e3e7562dbb404ba4cf2321c8caea8d','xiaohong','111','小红11','18393478769','ppt@163.com',0,'1'),('23fb9b033942466289925b791d4cd115','naloutou','naloutou','火影鸣人','18393478769','naloutou@163.com',0,'1'),('4bc1d7ccbecb49129f6945583c3f3615','ll','ll','Lily','15893848671','12334@163.com',0,'1'),('5608765e163a4fda88d058b52a8f9fd3','xiaosan','111','小三','18393478769','ppt@163.com',0,'1'),('8aaccc5bd29045b8b36846833f2465dc','lmj','521','lmj','15286839431','11@163.com',1,'1'),('a220d6a40ab046afb70086bc3131c8f3','Henry','111','Henry','18393478769','teacher@163.com',0,'1');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bid` char(32) NOT NULL,
  `bname` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `dayprice` decimal(10,2) DEFAULT NULL,
  `cid` char(32) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bid`,`bname`,`author`,`count`,`image`,`price`,`dayprice`,`cid`,`pid`,`isdel`) values ('23ed50bad4b9494f95f33fc36438eef9','JavaScript','Henry',50,'book_img/22722790-1_l.jpg','49.50','0.49','518596ca62ea40e1ab62bc278ceb0836','789',1),('2552c4ffc6b34e0896a61463759bba78','爱的抱抱','Alice',96,'book_img/kb1.jpg','123.00','1.23','015c44ae48124019b14ce3a699382596','123',0),('26ccc2c335ea4962816fd56b9cbd106d','Spring企业应用','VN',25,'book_img/20029394-1_l.jpg','89.90','0.90','2fe49f175bb04cf38c12ad67d0063486','789',0),('4c100f237168470396cb1c7699368568','爱的冷漠','鸣人',17,'book_img/kb2.jpg','199.00','1.99','4aa45258470945c6a528bcdae918e911','456',1),('55e840236c89477288266231789275ff','封神榜','姜子牙',7,'book_img/xh1.jpg','20.00','0.20','64a4e3a58c1d4aae972ff145d6a5f85a','f0eca6d833f24d509bcd0d858b4f1a28',0),('98b61da1cca04660bc59bd22a12b1b3c','东归喋血','苍穹不认人',0,'book_img/wx2.jpg','39.90','0.40','4aa45258470945c6a528bcdae918e911','4040e70bf8814df6b4aa0f0efa6de1ca',0),('a5cf1f4bfe244a1485bf38501f85b201','Java编程思想','Java之父',30,'book_img/9317290-1_l.jpg','69.90','0.69','518596ca62ea40e1ab62bc278ceb0836','456',0),('b338b1b70f7b48e0b0f2504bb54f1932','白说','白严重',19,'book_img/23763621-1_w_1.jpg','59.00','0.60','a9ea1f0d96504dbb90ca98d5400a62dd','123',0),('d722094e414d46a4ab78ed3ae12e09a7','日本恐怖小说选','斋藤盖斯',10,'book_img/kb2.jpg','18.00','0.18','2fd2edf53dd3418dbb46678eafa7e1af','f0eca6d833f24d509bcd0d858b4f1a28',0),('db975fbdb166440ea7ae7f695942af12','剑逆苍穹','升天',51,'book_img/xh2.jpg','29.90','0.30','64a4e3a58c1d4aae972ff145d6a5f85a','456',0),('dda7f2b92db546289e9006df442c47dd','薄环凉色','蚕茧',10,'book_img/yq1.jpg','29.90','0.30','015c44ae48124019b14ce3a699382596','123',1),('e332df6f88af4452819094d671c90a85','Java编程思想','DAV',55,'book_img/9317290-1_l.jpg','89.90','0.90','2fe49f175bb04cf38c12ad67d0063486','789',1),('e594b7590abe41e2bb703278cc995c3c','Struts2','Java他爸爸',28,'book_img/20385925-1_l.jpg','79.90','0.79','518596ca62ea40e1ab62bc278ceb0836','456',0);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`) values ('015c44ae48124019b14ce3a699382596','言情'),('2fd2edf53dd3418dbb46678eafa7e1af','恐怖'),('2fe49f175bb04cf38c12ad67d0063486','编程'),('4aa45258470945c6a528bcdae918e911','武侠'),('518596ca62ea40e1ab62bc278ceb0836','人文'),('64a4e3a58c1d4aae972ff145d6a5f85a','玄幻');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `oid` char(32) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `bid` varchar(50) DEFAULT NULL,
  `count` tinyint(11) DEFAULT NULL,
  `borrowdate` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`oid`,`uid`,`bid`,`count`,`borrowdate`,`returndate`,`state`,`total`) values ('4c7274cdd9604bf3aeb16458d76960a1',1002,'2552c4ffc6b34e0896a61463759bba78',2,'2017-04-12',NULL,0,NULL),('4d8422de7a184fcbb0ad5a949b9ca249',1005,'4c100f237168470396cb1c7699368568',3,'2017-03-12',NULL,0,NULL),('5981edfe4a3346599f12b730ba8d5321',1006,'db975fbdb166440ea7ae7f695942af12',3,'2017-04-14','2017-04-14',1,'0.81'),('8b5cdc54a4ea4056b39d58e8da599e12',1010,'55e840236c89477288266231789275ff',1,'2017-04-22',NULL,0,NULL),('9b580e3cf07c42c1bd2e6d9df099dc13',1002,'2552c4ffc6b34e0896a61463759bba78',3,'2017-04-17','2017-04-17',1,'2.58'),('aceb23e01e4443f9aa4ebe84cd1d14e5',1006,'2552c4ffc6b34e0896a61463759bba78',4,'2017-02-27',NULL,0,NULL),('b42c7de10da8411fa6e1841b772f6b5a',1005,'db975fbdb166440ea7ae7f695942af12',1,'2017-04-22','2017-04-22',1,'0.30'),('d4fe095e81834fb391b8005f5eb2e892',1006,'db975fbdb166440ea7ae7f695942af12',1,'2017-04-14','2017-04-14',1,'0.27'),('d54d03197e6b4a71b118d0f623ff4918',1006,'b338b1b70f7b48e0b0f2504bb54f1932',1,'2017-04-17',NULL,0,NULL);

/*Table structure for table `publish` */

DROP TABLE IF EXISTS `publish`;

CREATE TABLE `publish` (
  `pid` char(32) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `publish` */

insert  into `publish`(`pid`,`pname`) values ('123','重庆出版社1'),('4040e70bf8814df6b4aa0f0efa6de1ca','北京大学出版社'),('456','清华大学出版社'),('789','黄河科技学院出版社'),('f0eca6d833f24d509bcd0d858b4f1a28','公共祝融骁勇出版社');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `uuid` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `age` int(3) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`uuid`,`name`,`age`) values (1,'张三',23),(2,'张三1',231),(3,'张三1',231),(4,'张三1',231);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `cellphone` char(11) DEFAULT NULL,
  `email` char(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`name`,`gender`,`birthday`,`cellphone`,`email`,`address`,`state`,`type`) values (1001,'李时珍','男',NULL,'18756793347','lishizhen@163.com','紫荆山南路666号',0,'钻石会员'),(1002,'tom','男','1982-11-02','16577136572','naloutou@163.com','科学大道',0,'钻石会员'),(1003,'sdf','女','1992-05-15','2023832672','naloutou@163.com','贵族',0,'白金会员'),(1005,'北登','女','1999-05-07','12312123','12312@qq.com','航海东路',0,'普通会员'),(1006,'Apple','女','1912-05-06','2023832672','ccc@estore.com','碧云路',0,'黄金会员'),(1007,'猪立业','男','1778-03-07','156287934','ccc@estore.com','碧云路',1,'黄金会员'),(1009,'张伟','男','1990-10-01','18393478769','ppt@163.com','南三环紫荆山南路交叉口',1,'普通会员'),(1010,'潇洒哥','男','1912-05-22','16577136572','ccc@estore.com','黄河科技学院22#',1,'白金会员');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
