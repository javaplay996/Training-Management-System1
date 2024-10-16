/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shixunguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shixunguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shixunguanli`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `chengji_kemu` varchar(200) DEFAULT NULL COMMENT '实训模块 ',
  `chengji_pigai` int(11) DEFAULT NULL COMMENT '分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_uuid_number`,`laoshi_id`,`yonghu_id`,`chengji_kemu`,`chengji_pigai`,`insert_time`,`create_time`) values (1,'1683535083878',3,1,'实训模块1',253,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(2,'1683535083848',3,3,'实训模块2',73,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(3,'1683535083924',1,2,'实训模块3',192,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(4,'1683535083929',2,2,'实训模块4',405,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(5,'1683535083854',1,2,'实训模块5',300,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(6,'1683535083935',2,2,'实训模块6',441,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(7,'1683535083900',3,2,'实训模块7',272,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(8,'1683535083847',1,1,'实训模块8',112,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(9,'1683535083883',1,3,'实训模块9',255,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(10,'1683535083893',1,1,'实训模块10',492,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(11,'1683535083913',1,3,'实训模块11',221,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(12,'1683535083916',1,3,'实训模块12',366,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(13,'1683535083848',1,2,'实训模块13',107,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(14,'1683535083911',3,2,'实训模块14',285,'2023-05-08 16:38:03','2023-05-08 16:38:03');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-08 16:37:55'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-08 16:37:55'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-08 16:37:55'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-08 16:37:55'),(5,'qingjia_types','请假类型',1,'生病',NULL,NULL,'2023-05-08 16:37:55'),(6,'qingjia_types','请假类型',2,'有事',NULL,NULL,'2023-05-08 16:37:55'),(7,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-08 16:37:55'),(8,'qingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-08 16:37:55'),(9,'qingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-08 16:37:55'),(10,'qingjia_yesno_types','申请状态',4,'销假',NULL,NULL,'2023-05-08 16:37:55'),(11,'yonghu_kaoqin_types','学生考勤类型',1,'日常考勤',NULL,NULL,'2023-05-08 16:37:55'),(12,'yonghu_kaoqin_types','学生考勤类型',2,'考勤类型2',NULL,NULL,'2023-05-08 16:37:55'),(13,'yonghu_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-05-08 16:37:55'),(14,'yonghu_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-05-08 16:37:55'),(15,'zuoye_types','实训模块类型',1,'实训模块类型1',NULL,NULL,'2023-05-08 16:37:55'),(16,'zuoye_types','实训模块类型',2,'实训模块类型2',NULL,NULL,'2023-05-08 16:37:55'),(17,'zuoye_types','实训模块类型',3,'实训模块类型3',NULL,NULL,'2023-05-08 16:37:55'),(18,'zuoye_types','实训模块类型',4,'实训模块类型4',NULL,NULL,'2023-05-08 16:37:55'),(19,'zuoye_tijiao_yesno_types','提交状态',1,'待批改',NULL,NULL,'2023-05-08 16:37:55'),(20,'zuoye_tijiao_yesno_types','提交状态',2,'已批改',NULL,NULL,'2023-05-08 16:37:55'),(21,'zuoye_tijiao_yesno_types','提交状态',3,'未批改',NULL,NULL,'2023-05-08 16:37:55');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-08 16:38:03','公告详情1','2023-05-08 16:38:03'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-08 16:38:03','公告详情2','2023-05-08 16:38:03'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-05-08 16:38:03','公告详情3','2023-05-08 16:38:03'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-08 16:38:03','公告详情4','2023-05-08 16:38:03'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-08 16:38:03','公告详情5','2023-05-08 16:38:03'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-05-08 16:38:03','公告详情6','2023-05-08 16:38:03'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-08 16:38:03','公告详情7','2023-05-08 16:38:03'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-08 16:38:03','公告详情8','2023-05-08 16:38:03'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-08 16:38:03','公告详情9','2023-05-08 16:38:03'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-05-08 16:38:03','公告详情10','2023-05-08 16:38:03'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-05-08 16:38:03','公告详情11','2023-05-08 16:38:03'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-08 16:38:03','公告详情12','2023-05-08 16:38:03'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-08 16:38:03','公告详情13','2023-05-08 16:38:03'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-05-08 16:38:03','公告详情14','2023-05-08 16:38:03');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '老师编号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_uuid_number`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','1683535083859','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',2,'1@qq.com','2023-05-08 16:38:03'),(2,'a2','123456','1683535083949','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',2,'2@qq.com','2023-05-08 16:38:03'),(3,'a3','123456','1683535083901','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com','2023-05-08 16:38:03');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `qingjia_text` longtext COMMENT '请假缘由',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '处理意见',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`laoshi_id`,`qingjia_name`,`qingjia_text`,`qingjia_types`,`insert_time`,`qingjia_time`,`qingjia_number`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (1,3,1,'请假标题1','请假缘由1',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',166,1,NULL,NULL,'2023-05-08 16:38:03'),(2,2,2,'请假标题2','请假缘由2',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',214,1,NULL,NULL,'2023-05-08 16:38:03'),(3,3,2,'请假标题3','请假缘由3',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',49,1,NULL,NULL,'2023-05-08 16:38:03'),(4,1,3,'请假标题4','请假缘由4',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',360,1,NULL,NULL,'2023-05-08 16:38:03'),(5,3,3,'请假标题5','请假缘由5',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',261,1,NULL,NULL,'2023-05-08 16:38:03'),(6,1,3,'请假标题6','请假缘由6',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',492,1,NULL,NULL,'2023-05-08 16:38:03'),(7,3,1,'请假标题7','请假缘由7',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',127,1,NULL,NULL,'2023-05-08 16:38:03'),(8,3,1,'请假标题8','请假缘由8',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',35,1,NULL,NULL,'2023-05-08 16:38:03'),(9,3,2,'请假标题9','请假缘由9',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',408,1,NULL,NULL,'2023-05-08 16:38:03'),(10,2,1,'请假标题10','请假缘由10',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',73,1,NULL,NULL,'2023-05-08 16:38:03'),(11,1,2,'请假标题11','请假缘由11',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',372,1,NULL,NULL,'2023-05-08 16:38:03'),(12,2,2,'请假标题12','请假缘由12',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',149,1,NULL,NULL,'2023-05-08 16:38:03'),(13,1,1,'请假标题13','请假缘由13',1,'2023-05-08 16:38:03','2023-05-08 16:38:03',66,2,'大','2023-05-08 17:22:18','2023-05-08 16:38:03'),(14,2,2,'请假标题14','请假缘由14',2,'2023-05-08 16:38:03','2023-05-08 16:38:03',235,1,NULL,NULL,'2023-05-08 16:38:03');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','41ipbb99auhifklf4023gxvjv96d072f','2023-05-08 16:41:52','2023-05-08 18:18:26'),(2,1,'admin','users','管理员','rn18jhbym351xlc2e1wl8ytogwmhk4fc','2023-05-08 16:44:36','2023-05-08 18:23:30'),(3,1,'a1','laoshi','老师','ocv4r1q63c4h33nmuqjhz4iaf7om20s0','2023-05-08 16:55:31','2023-05-08 18:21:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-08 16:37:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学生编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1683535083894','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-05-08 16:38:03'),(2,'a2','123456','1683535083865','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-05-08 16:38:03'),(3,'a3','123456','1683535083934','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-05-08 16:38:03');

/*Table structure for table `yonghu_kaoqin` */

DROP TABLE IF EXISTS `yonghu_kaoqin`;

CREATE TABLE `yonghu_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yonghu_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yonghu_kaoqin_types` int(11) DEFAULT NULL COMMENT '学生考勤类型 Search111',
  `yonghu_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生考勤';

/*Data for the table `yonghu_kaoqin` */

insert  into `yonghu_kaoqin`(`id`,`laoshi_id`,`yonghu_kaoqin_uuid_number`,`yonghu_kaoqin_name`,`yonghu_kaoqin_types`,`yonghu_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,3,'1683535083885','考勤标题1',1,'考勤详情1','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(2,1,'1683535083949','考勤标题2',1,'考勤详情2','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(3,3,'1683535083948','考勤标题3',1,'考勤详情3','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(4,3,'1683535083878','考勤标题4',1,'考勤详情4','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(5,2,'1683535083908','考勤标题5',1,'考勤详情5','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(6,2,'1683535083856','考勤标题6',1,'考勤详情6','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(7,3,'1683535083881','考勤标题7',1,'考勤详情7','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(8,3,'1683535083929','考勤标题8',1,'考勤详情8','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(9,2,'1683535083909','考勤标题9',2,'考勤详情9','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(10,1,'1683535083953','考勤标题10',2,'考勤详情10','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(11,3,'1683535083942','考勤标题11',1,'考勤详情11','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(12,1,'1683535083875','考勤标题12',1,'考勤详情12','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(13,2,'1683535083933','考勤标题13',2,'考勤详情13','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(14,3,'1683535083921','考勤标题14',1,'考勤详情14','2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03');

/*Table structure for table `yonghu_kaoqin_list` */

DROP TABLE IF EXISTS `yonghu_kaoqin_list`;

CREATE TABLE `yonghu_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `yonghu_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `yonghu_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生考勤详情';

/*Data for the table `yonghu_kaoqin_list` */

insert  into `yonghu_kaoqin_list`(`id`,`yonghu_id`,`yonghu_kaoqin_id`,`yonghu_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,3,1,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(2,1,2,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(3,2,3,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(4,1,4,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(5,1,5,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(6,3,6,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(7,1,7,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(8,2,8,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(9,1,9,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(10,2,10,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(11,2,11,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(12,3,12,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(13,3,13,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(14,3,14,1,'2023-05-08 16:38:03','2023-05-08 16:38:03','2023-05-08 16:38:03'),(15,1,13,2,'2023-05-08 17:21:05',NULL,'2023-05-08 17:21:05'),(16,1,12,2,'2023-05-08 17:22:50',NULL,'2023-05-08 17:22:50');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '实训模块名称  Search111 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '实训模块编号',
  `zuoye_address` varchar(200) DEFAULT NULL COMMENT '实训模块地点',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '实训模块照片',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '实训模块类型 Search111',
  `zuoye_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `zuoye_content` longtext COMMENT '实训模块介绍 ',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='实训模块';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`laoshi_id`,`zuoye_name`,`zuoye_uuid_number`,`zuoye_address`,`zuoye_photo`,`zuoye_types`,`zuoye_video`,`zuoye_file`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,2,'实训模块名称1','1683535083911','实训模块地点1','upload/zuoye1.jpg',3,'upload/video.mp4','upload/file.rar','实训模块介绍1',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(2,3,'实训模块名称2','1683535083950','实训模块地点2','upload/zuoye2.jpg',3,'upload/video.mp4','upload/file.rar','实训模块介绍2',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(3,1,'实训模块名称3','1683535083858','实训模块地点3','upload/zuoye3.jpg',2,'upload/video.mp4','upload/file.rar','实训模块介绍3',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(4,3,'实训模块名称4','1683535083900','实训模块地点4','upload/zuoye4.jpg',2,'upload/video.mp4','upload/file.rar','实训模块介绍4',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(5,1,'实训模块名称5','1683535083890','实训模块地点5','upload/zuoye5.jpg',1,'upload/video.mp4','upload/file.rar','实训模块介绍5',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(6,3,'实训模块名称6','1683535083939','实训模块地点6','upload/zuoye6.jpg',4,'upload/video.mp4','upload/file.rar','实训模块介绍6',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(7,2,'实训模块名称7','1683535083861','实训模块地点7','upload/zuoye7.jpg',4,'upload/video.mp4','upload/file.rar','实训模块介绍7',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(8,2,'实训模块名称8','1683535083886','实训模块地点8','upload/zuoye8.jpg',3,'upload/video.mp4','upload/file.rar','实训模块介绍8',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(9,3,'实训模块名称9','1683535083869','实训模块地点9','upload/zuoye9.jpg',2,'upload/video.mp4','upload/file.rar','实训模块介绍9',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(10,3,'实训模块名称10','1683535083886','实训模块地点10','upload/zuoye10.jpg',4,'upload/video.mp4','upload/file.rar','实训模块介绍10',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(11,1,'实训模块名称11','1683535083930','实训模块地点11','upload/zuoye11.jpg',1,'upload/video.mp4','upload/file.rar','实训模块介绍11',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(12,1,'实训模块名称12','1683535083861','实训模块地点12','upload/zuoye12.jpg',3,'upload/video.mp4','upload/file.rar','实训模块介绍12',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(13,1,'实训模块名称13','1683535083930','实训模块地点13','upload/zuoye13.jpg',3,'upload/video.mp4','upload/file.rar','实训模块介绍13',1,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(14,3,'实训模块名称14','1683535083941','实训模块地点14','upload/zuoye14.jpg',1,'upload/video.mp4','upload/file.rar','实训模块介绍14',1,'2023-05-08 16:38:03','2023-05-08 16:38:03');

/*Table structure for table `zuoye_tijiao` */

DROP TABLE IF EXISTS `zuoye_tijiao`;

CREATE TABLE `zuoye_tijiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '实训模块',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zuoye_tijiao_text` text COMMENT '内容',
  `zuoye_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '作业上传',
  `zuoye_tijiao_yesno_types` int(11) DEFAULT NULL COMMENT '提交状态 Search111 ',
  `zuoye_tijiao_pigai` int(11) DEFAULT NULL COMMENT '批改分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='实训成果';

/*Data for the table `zuoye_tijiao` */

insert  into `zuoye_tijiao`(`id`,`zuoye_tijiao_uuid_number`,`zuoye_id`,`laoshi_id`,`yonghu_id`,`zuoye_tijiao_text`,`zuoye_shangchuan_file`,`zuoye_tijiao_yesno_types`,`zuoye_tijiao_pigai`,`insert_time`,`create_time`) values (1,'1683535083916',1,2,3,'内容1','upload/file.rar',1,206,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(2,'1683535083891',2,2,3,'内容2','upload/file.rar',1,377,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(3,'1683535083863',3,1,3,'内容3','upload/file.rar',1,232,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(4,'1683535083891',4,1,2,'内容4','upload/file.rar',1,239,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(5,'1683535083887',5,3,1,'内容5','upload/file.rar',1,352,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(6,'1683535083910',6,3,1,'内容6','upload/file.rar',1,177,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(7,'1683535083921',7,2,3,'内容7','upload/file.rar',1,143,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(8,'1683535083879',8,1,3,'内容8','upload/file.rar',1,78,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(9,'1683535083876',9,1,2,'内容9','upload/file.rar',1,306,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(10,'1683535083877',10,1,3,'内容10','upload/file.rar',1,146,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(11,'1683535083942',11,3,1,'内容11','upload/file.rar',1,250,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(12,'1683535083914',12,1,2,'内容12','upload/file.rar',1,439,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(13,'1683535083953',13,3,3,'内容13','upload/file.rar',1,184,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(14,'1683535083959',14,2,2,'内容14','upload/file.rar',1,56,'2023-05-08 16:38:03','2023-05-08 16:38:03'),(15,'1683537627977',13,1,1,'测试','upload/1683537634369.jpg',2,50,'2023-05-08 17:20:36','2023-05-08 17:20:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
