/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chuanyunwuliu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuanyunwuliu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuanyunwuliu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-12 16:14:09'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-12 16:14:09'),(3,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-04-12 16:14:09'),(4,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-04-12 16:14:09'),(5,'single_seach_types','单页数据类型',1,'网站介绍',NULL,NULL,'2023-04-12 16:14:09'),(6,'single_seach_types','单页数据类型',2,'联系我们',NULL,NULL,'2023-04-12 16:14:09'),(7,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-12 16:14:09'),(8,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-12 16:14:09'),(9,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-12 16:14:09'),(10,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-12 16:14:09'),(11,'huoyun_types','货运单类型',1,'货运单类型1',NULL,NULL,'2023-04-12 16:14:10'),(12,'huoyun_types','货运单类型',2,'货运单类型2',NULL,NULL,'2023-04-12 16:14:10'),(13,'huoyun_types','货运单类型',3,'货运单类型3',NULL,NULL,'2023-04-12 16:14:10'),(14,'huoyun_types','货运单类型',4,'货运单类型4',NULL,NULL,'2023-04-12 16:14:10'),(15,'huoyun_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-12 16:14:10'),(16,'huoyun_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-12 16:14:10'),(17,'huoyun_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-12 16:14:10'),(18,'huoyun_zhifu_types','是否支付',1,'未支付',NULL,NULL,'2023-04-12 16:14:10'),(19,'huoyun_zhifu_types','是否支付',2,'已支付',NULL,NULL,'2023-04-12 16:14:10'),(20,'wuliu_types','物流状态',1,'已发车',NULL,NULL,'2023-04-12 16:14:10'),(21,'wuliu_types','物流状态',2,'已抵达仓库',NULL,NULL,'2023-04-12 16:14:10'),(22,'wuliu_types','物流状态',3,'航运中',NULL,NULL,'2023-04-12 16:14:10'),(23,'wuliu_types','物流状态',4,'已抵达',NULL,NULL,'2023-04-12 16:14:10'),(24,'wuliu_types','物流状态',5,'已派送',NULL,NULL,'2023-04-12 16:14:10'),(25,'cangku_types','仓库',1,'仓库1',NULL,NULL,'2023-04-12 16:14:10'),(26,'cangku_types','仓库',2,'仓库2',NULL,NULL,'2023-04-12 16:14:10'),(27,'cangku_types','仓库',3,'仓库3',NULL,NULL,'2023-04-12 16:14:10'),(28,'cangku_types','仓库',4,'仓库4',NULL,NULL,'2023-04-12 16:14:10'),(29,'cangku_types','仓库',5,'仓库5',NULL,NULL,'2023-04-12 16:14:10'),(30,'news_types','新闻类型',3,'新闻类型3',NULL,'','2023-04-12 17:18:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-12 16:15:00','公告详情1','2023-04-12 16:15:00'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-12 16:15:00','公告详情2','2023-04-12 16:15:00'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-12 16:15:00','公告详情3','2023-04-12 16:15:00'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-12 16:15:00','公告详情4','2023-04-12 16:15:00'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-12 16:15:00','公告详情5','2023-04-12 16:15:00'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-12 16:15:00','公告详情6','2023-04-12 16:15:00'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-12 16:15:00','公告详情7','2023-04-12 16:15:00'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-12 16:15:00','公告详情8','2023-04-12 16:15:00'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-12 16:15:00','公告详情9','2023-04-12 16:15:00'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-12 16:15:00','公告详情10','2023-04-12 16:15:00'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-12 16:15:00','公告详情11','2023-04-12 16:15:00'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-12 16:15:00','公告详情12','2023-04-12 16:15:00'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-12 16:15:00','公告详情13','2023-04-12 16:15:00'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-12 16:15:00','公告详情14','2023-04-12 16:15:00');

/*Table structure for table `huoyun` */

DROP TABLE IF EXISTS `huoyun`;

CREATE TABLE `huoyun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `huoyun_uuid_number` varchar(200) DEFAULT NULL COMMENT '货运单编号',
  `huoyun_name` varchar(200) DEFAULT NULL COMMENT '货物名称  Search111 ',
  `huoyun_photo` varchar(200) DEFAULT NULL COMMENT '货物照片',
  `huoyun_chufa_address` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `huoyun_chufa_lianxiren` varchar(200) DEFAULT NULL COMMENT '出发地联系人',
  `huoyun_chufa_dianhua` varchar(200) DEFAULT NULL COMMENT '出发地电话',
  `huoyun_songda_address` varchar(200) DEFAULT NULL COMMENT '送达地点',
  `huoyun_songda_lianxiren` varchar(200) DEFAULT NULL COMMENT '抵达地联系人',
  `huoyun_songda_dianhua` varchar(200) DEFAULT NULL COMMENT '抵达地电话',
  `huoyun_types` int(11) DEFAULT NULL COMMENT '货运单类型 Search111',
  `huoyun_number` int(11) DEFAULT NULL COMMENT '运送数量',
  `huoyun_dan_changkuangao` varchar(200) DEFAULT NULL COMMENT '单个长宽高',
  `huoyun_zong_changkuangao` varchar(200) DEFAULT NULL COMMENT '总长宽高',
  `huoyun_zhongliang` decimal(10,2) DEFAULT NULL COMMENT '总重量',
  `huoyun_content` longtext COMMENT '货运备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `huoyun_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `huoyun_yesno_text` longtext COMMENT '审核意见',
  `huoyun_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `huoyun_jine` decimal(10,2) DEFAULT NULL COMMENT '货运金额',
  `huoyun_zhifu_types` int(11) DEFAULT NULL COMMENT '是否支付 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='货运单';

/*Data for the table `huoyun` */

insert  into `huoyun`(`id`,`yonghu_id`,`yuangong_id`,`huoyun_uuid_number`,`huoyun_name`,`huoyun_photo`,`huoyun_chufa_address`,`huoyun_chufa_lianxiren`,`huoyun_chufa_dianhua`,`huoyun_songda_address`,`huoyun_songda_lianxiren`,`huoyun_songda_dianhua`,`huoyun_types`,`huoyun_number`,`huoyun_dan_changkuangao`,`huoyun_zong_changkuangao`,`huoyun_zhongliang`,`huoyun_content`,`insert_time`,`huoyun_yesno_types`,`huoyun_yesno_text`,`huoyun_shenhe_time`,`huoyun_jine`,`huoyun_zhifu_types`,`create_time`) values (1,1,2,'1380000000083','货物名称1','upload/huoyun1.jpg','出发地点1','出发地联系人1','出发地电话1','送达地点1','抵达地联系人1','抵达地电话1',4,163,'单个长宽高1','总长宽高1','493.27','货运备注1','2023-03-12 16:15:00',2,'同意','2023-04-12 16:15:00','899.17',1,'2023-04-12 16:15:00'),(2,2,3,'1380000000014','货物名称2','upload/huoyun2.jpg','出发地点2','出发地联系人2','出发地电话2','送达地点2','抵达地联系人2','抵达地电话2',3,472,'单个长宽高2','总长宽高2','531.09','货运备注2','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','898.63',2,'2023-04-12 16:15:00'),(3,3,3,'1380000000050','货物名称3','upload/huoyun3.jpg','出发地点3','出发地联系人3','出发地电话3','送达地点3','抵达地联系人3','抵达地电话3',3,160,'单个长宽高3','总长宽高3','25.22','货运备注3','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','477.61',1,'2023-04-12 16:15:00'),(4,1,1,'1380000000058','货物名称4','upload/huoyun4.jpg','出发地点4','出发地联系人4','出发地电话4','送达地点4','抵达地联系人4','抵达地电话4',1,132,'单个长宽高4','总长宽高4','429.20','货运备注4','2023-03-12 16:15:00',2,'同意','2023-04-12 16:15:00','26.44',2,'2023-04-12 16:15:00'),(5,3,1,'1380000000010','货物名称5','upload/huoyun5.jpg','出发地点5','出发地联系人5','出发地电话5','送达地点5','抵达地联系人5','抵达地电话5',2,72,'单个长宽高5','总长宽高5','927.30','货运备注5','2023-03-12 16:15:00',2,'同意','2023-04-12 16:15:00','865.69',2,'2023-04-12 16:15:00'),(6,3,2,'1380000000070','货物名称6','upload/huoyun6.jpg','出发地点6','出发地联系人6','出发地电话6','送达地点6','抵达地联系人6','抵达地电话6',2,275,'单个长宽高6','总长宽高6','948.52','货运备注6','2023-03-12 16:15:00',2,'同意','2023-04-12 16:15:00','676.39',1,'2023-04-12 16:15:00'),(7,1,2,'1380000000037','货物名称7','upload/huoyun7.jpg','出发地点7','出发地联系人7','出发地电话7','送达地点7','抵达地联系人7','抵达地电话7',1,180,'单个长宽高7','总长宽高7','799.89','货运备注7','2023-03-12 16:15:00',2,'同意','2023-04-12 16:15:00','30.39',1,'2023-04-12 16:15:00'),(8,1,1,'1380000000099','货物名称8','upload/huoyun8.jpg','出发地点8','出发地联系人8','出发地电话8','送达地点8','抵达地联系人8','抵达地电话8',2,180,'单个长宽高8','总长宽高8','417.87','货运备注8','2023-02-12 16:15:00',2,'同意','2023-04-12 16:15:00','557.19',2,'2023-04-12 16:15:00'),(9,2,1,'1380000000067','货物名称9','upload/huoyun9.jpg','出发地点9','出发地联系人9','出发地电话9','送达地点9','抵达地联系人9','抵达地电话9',3,284,'单个长宽高9','总长宽高9','787.65','货运备注9','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','688.66',2,'2023-04-12 16:15:00'),(10,2,2,'1380000000091','货物名称10','upload/huoyun10.jpg','出发地点10','出发地联系人10','出发地电话10','送达地点10','抵达地联系人10','抵达地电话10',2,192,'单个长宽高10','总长宽高10','948.03','货运备注10','2023-02-12 16:15:00',2,'同意','2023-04-12 16:15:00','4.69',1,'2023-04-12 16:15:00'),(11,1,1,'1380000000050','货物名称11','upload/huoyun11.jpg','出发地点11','出发地联系人11','出发地电话11','送达地点11','抵达地联系人11','抵达地电话11',4,437,'单个长宽高11','总长宽高11','447.43','货运备注11','2023-02-12 16:15:00',2,'同意','2023-04-12 16:15:00','870.95',2,'2023-04-12 16:15:00'),(12,2,3,'1380000000015','货物名称12','upload/huoyun12.jpg','出发地点12','出发地联系人12','出发地电话12','送达地点12','抵达地联系人12','抵达地电话12',1,182,'单个长宽高12','总长宽高12','711.45','货运备注12','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','530.68',1,'2023-04-12 16:15:00'),(13,1,1,'1380000000094','货物名称13','upload/huoyun13.jpg','出发地点13','出发地联系人13','出发地电话13','送达地点13','抵达地联系人13','抵达地电话13',2,35,'单个长宽高13','总长宽高13','301.21','货运备注13','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','306.71',2,'2023-04-12 16:15:00'),(14,2,1,'1380000000056','货物名称14','upload/huoyun14.jpg','出发地点14','出发地联系人14','出发地电话14','送达地点14','抵达地联系人14','抵达地电话14',4,57,'单个长宽高14','总长宽高14','123.11','货运备注14','2023-04-12 16:15:00',2,'同意','2023-04-12 16:15:00','962.10',1,'2023-04-12 16:15:00'),(15,1,1,'1380000000076','物品111','upload/1380000000000.jpg','地点111','张三','13800000000','地址111','李四','13800000000',4,3,'高刚','个','33.50','很好','2023-04-12 16:21:09',2,'个哈哈哈或','2023-04-12 16:33:45','555.00',2,'2023-04-12 16:21:09'),(16,1,1,'1380000000059','物品3333','upload/1380000000018.jpg','地点1111','张三','13800000000','地址11','李四','13800000000',4,3,'高档的','干活第三个','44.00','固定死个第三个十多个是的','2023-04-12 16:58:09',3,'挂号','2023-04-12 17:17:58',NULL,NULL,'2023-04-12 16:58:09'),(17,4,1,'1380000000099','货物99','upload/1380000000001.jpg','地址1111','张三','13800000000','地址111','王五','13800000000',4,3,'高0.5米长0.3米宽0.3米','高5米长3米宽3米','99.00','疙瘩是多少公司的合格','2023-04-12 17:13:32',2,'哈哈哈','2023-04-12 17:14:15','888.00',2,'2023-04-12 17:13:32');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',1,'2023-04-12 16:15:00','新闻详情1','2023-04-12 16:15:00'),(2,'新闻名称2','upload/news2.jpg',2,'2023-04-12 16:15:00','新闻详情2','2023-04-12 16:15:00'),(3,'新闻名称3','upload/news3.jpg',1,'2023-04-12 16:15:00','新闻详情3','2023-04-12 16:15:00'),(4,'新闻名称4','upload/news4.jpg',1,'2023-04-12 16:15:00','新闻详情4','2023-04-12 16:15:00'),(5,'新闻名称5','upload/news5.jpg',1,'2023-04-12 16:15:00','新闻详情5','2023-04-12 16:15:00'),(6,'新闻名称6','upload/news6.jpg',2,'2023-04-12 16:15:00','新闻详情6','2023-04-12 16:15:00'),(7,'新闻名称7','upload/news7.jpg',1,'2023-04-12 16:15:00','新闻详情7','2023-04-12 16:15:00'),(8,'新闻名称8','upload/news8.jpg',1,'2023-04-12 16:15:00','新闻详情8','2023-04-12 16:15:00'),(9,'新闻名称9','upload/news9.jpg',1,'2023-04-12 16:15:00','新闻详情9','2023-04-12 16:15:00'),(10,'新闻名称10','upload/news10.jpg',2,'2023-04-12 16:15:00','新闻详情10','2023-04-12 16:15:00'),(11,'新闻名称11','upload/news11.jpg',2,'2023-04-12 16:15:00','新闻详情11','2023-04-12 16:15:00'),(12,'新闻名称12','upload/news12.jpg',2,'2023-04-12 16:15:00','新闻详情12','2023-04-12 16:15:00'),(13,'新闻名称13','upload/news13.jpg',2,'2023-04-12 16:15:00','新闻详情13','2023-04-12 16:15:00'),(14,'新闻名称14','upload/news14.jpg',2,'2023-04-12 16:15:00','<p>新闻详情14嘎施工队感到</p>','2023-04-12 16:15:00');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_photo`,`single_seach_content`,`create_time`) values (1,'网站介绍',1,'upload/yonghu1.jpg','网站介绍内容','2023-04-12 16:17:29'),(2,'联系我们',2,'upload/yonghu2.jpg','联系我们内容','2023-04-12 16:17:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','ehpu5bvx2qvo37x0t2crhw4rg1mqnxrb','2023-04-12 16:18:02','2023-04-12 17:18:02'),(2,1,'a1','yuangong','员工','kleeoa9b4kd5ikrp3htfnz8s4xril06k','2023-04-12 16:27:50','2023-04-12 18:17:48'),(3,1,'admin','users','管理员','z4cpestlhzfhoqnhe1nydzqo0llxdcw5','2023-04-12 16:58:21','2023-04-12 18:22:25'),(4,4,'a5','yonghu','用户','pfmw51pwafqln8reui2ji82xdy6pgrow','2023-04-12 17:12:00','2023-04-12 18:12:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-12 16:14:09');

/*Table structure for table `wuliu` */

DROP TABLE IF EXISTS `wuliu`;

CREATE TABLE `wuliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huoyun_id` int(11) DEFAULT NULL COMMENT '货运单',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `wuliu_uuid_number` varchar(200) DEFAULT NULL COMMENT '物流编号',
  `wuliu_name` varchar(200) DEFAULT NULL COMMENT '物流标题  Search111 ',
  `wuliu_types` int(11) DEFAULT NULL COMMENT '物流状态 Search111',
  `cangku_types` int(11) DEFAULT NULL COMMENT '仓库 Search111',
  `wuliu_content` longtext COMMENT '物流详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='物流记录';

/*Data for the table `wuliu` */

insert  into `wuliu`(`id`,`huoyun_id`,`yuangong_id`,`wuliu_uuid_number`,`wuliu_name`,`wuliu_types`,`cangku_types`,`wuliu_content`,`insert_time`,`create_time`) values (1,1,1,'1380000000047','物流标题1',1,2,'物流详情1','2023-04-12 16:15:00','2023-04-12 16:15:00'),(2,2,1,'1380000000004','物流标题2',1,1,'物流详情2','2023-04-12 16:15:00','2023-04-12 16:15:00'),(3,3,3,'1380000000036','物流标题3',2,5,'物流详情3','2023-04-12 16:15:00','2023-04-12 16:15:00'),(4,4,2,'1380000000092','物流标题4',4,1,'物流详情4','2023-04-12 16:15:00','2023-04-12 16:15:00'),(5,5,3,'1380000000035','物流标题5',5,1,'物流详情5','2023-04-12 16:15:00','2023-04-12 16:15:00'),(6,6,3,'1380000000044','物流标题6',2,2,'物流详情6','2023-04-12 16:15:00','2023-04-12 16:15:00'),(7,7,1,'1380000000072','物流标题7',3,2,'物流详情7','2023-04-12 16:15:00','2023-04-12 16:15:00'),(8,8,2,'1380000000058','物流标题8',1,1,'物流详情8','2023-04-12 16:15:00','2023-04-12 16:15:00'),(9,9,1,'1380000000049','物流标题9',2,1,'物流详情9','2023-04-12 16:15:00','2023-04-12 16:15:00'),(10,10,3,'1380000000017','物流标题10',3,5,'物流详情10','2023-04-12 16:15:00','2023-04-12 16:15:00'),(11,11,1,'1380000000090','物流标题11',4,4,'物流详情11','2023-04-12 16:15:00','2023-04-12 16:15:00'),(12,12,2,'1380000000011','物流标题12',5,3,'物流详情12','2023-04-12 16:15:00','2023-04-12 16:15:00'),(13,13,3,'1380000000067','物流标题13',1,5,'物流详情13','2023-04-12 16:15:00','2023-04-12 16:15:00'),(14,14,2,'1380000000003','物流标题14',3,2,'物流详情14','2023-04-12 16:15:00','2023-04-12 16:15:00'),(15,17,1,'1380000000010','已送达仓库',2,4,'<p>高大上大个第三个第三个</p>','2023-04-12 17:17:16','2023-04-12 17:17:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1380000000060','用户姓名1','13800000000','100000000000000000','upload/yonghu1.jpg',1,'user1@example.com','5466.59',1,'2023-04-12 16:15:00'),(2,'a2','123456','1380000000032','用户姓名2','13800000000','100000000000000000','upload/yonghu2.jpg',1,'user2@example.com','829.68',1,'2023-04-12 16:15:00'),(3,'a3','123456','1380000000040','用户姓名3','13800000000','100000000000000000','upload/yonghu3.jpg',2,'user3@example.com','504.07',1,'2023-04-12 16:15:00'),(4,'a5','123456','1380000000036','张5','13800000000','100000000000000000','upload/1380000000030.jpg',2,'user4@example.com','99111.00',1,'2023-04-12 17:11:56');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1380000000022','员工姓名1','13800000000','100000000000000000','upload/yuangong1.jpg',1,'user1@example.com',1,'2023-04-12 16:15:00'),(2,'a2','123456','1380000000001','员工姓名2','13800000000','100000000000000000','upload/yuangong2.jpg',1,'user2@example.com',1,'2023-04-12 16:15:00'),(3,'a3','123456','1380000000099','员工姓名3','13800000000','100000000000000000','upload/yuangong3.jpg',2,'user3@example.com',1,'2023-04-12 16:15:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
