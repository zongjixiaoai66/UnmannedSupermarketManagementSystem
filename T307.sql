/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t307`;
CREATE DATABASE IF NOT EXISTS `t307` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t307`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shangxia_types', '上下架名称', 1, '上架', NULL, NULL, '2022-04-07 13:29:39'),
	(2, 'shangxia_types', '上下架名称', 2, '下架', NULL, NULL, '2022-04-07 13:29:39'),
	(3, 'goods_types', '商品类型名称', 1, '商品类型1', NULL, NULL, '2022-04-07 13:29:39'),
	(4, 'goods_types', '商品类型名称', 2, '商品类型2', NULL, NULL, '2022-04-07 13:29:39'),
	(5, 'goods_types', '商品类型名称', 3, '商品类型3', NULL, NULL, '2022-04-07 13:29:39'),
	(18, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-04-07 13:29:39'),
	(19, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-04-07 13:29:39'),
	(21, 'shangpin_churu_inout_types', '出入库类型', 1, '出库', NULL, NULL, '2022-04-07 13:29:39'),
	(22, 'shangpin_churu_inout_types', '出入库类型', 2, '入库', NULL, NULL, '2022-04-07 13:29:39'),
	(23, 'goods_shouyin_types', '支付类型', 1, '微信支付', NULL, NULL, '2022-04-07 13:29:39'),
	(24, 'goods_shouyin_types', '支付类型', 2, '支付宝支付', NULL, NULL, '2022-04-07 13:29:39'),
	(25, 'goods_shouyin_types', '支付类型', 3, '现金支付', NULL, NULL, '2022-04-07 13:29:39'),
	(26, 'goods_churu_inout_types', '出入库类型', 1, '出库', NULL, NULL, '2022-04-07 13:29:39'),
	(27, 'goods_churu_inout_types', '出入库类型', 2, '入库', NULL, NULL, '2022-04-07 13:29:39'),
	(28, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-07 13:29:39'),
	(29, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-07 13:29:39'),
	(30, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-07 13:29:39'),
	(31, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-07 13:29:40'),
	(32, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-07 13:29:40');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `goods_kucun_number` int DEFAULT NULL COMMENT '商品库存  Search111',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `goods_xiaoshou_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `goods`;
INSERT INTO `goods` (`id`, `goods_uuid_number`, `goods_name`, `goods_photo`, `goods_types`, `goods_kucun_number`, `goods_new_money`, `goods_xiaoshou_money`, `shangxia_types`, `goods_delete`, `goods_content`, `create_time`) VALUES
	(1, '164933831379919', '商品名称1', 'http://localhost:8080/wurenchaosguanli/upload/goods1.jpg', 2, 101, 474.04, 261.19, 1, 1, '商品简介1', '2022-04-07 13:31:53'),
	(2, '164933831379918', '商品名称2', 'http://localhost:8080/wurenchaosguanli/upload/goods2.jpg', 1, 102, 336.64, 751.96, 1, 1, '商品简介2', '2022-04-07 13:31:53'),
	(3, '16493383137997', '商品名称3', 'http://localhost:8080/wurenchaosguanli/upload/goods3.jpg', 2, 101, 311.93, 880.94, 1, 1, '商品简介3', '2022-04-07 13:31:53'),
	(4, '16493383137999', '商品名称4', 'http://localhost:8080/wurenchaosguanli/upload/goods4.jpg', 2, 99, 227.72, 932.96, 1, 1, '商品简介4', '2022-04-07 13:31:53'),
	(5, '16493383137990', '商品名称5', 'http://localhost:8080/wurenchaosguanli/upload/goods5.jpg', 2, 100, 320.24, 55.95, 2, 1, '商品简介5', '2022-04-07 13:31:53');

DROP TABLE IF EXISTS `goods_churu_inout`;
CREATE TABLE IF NOT EXISTS `goods_churu_inout` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `goods_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `goods_churu_inout_types` int DEFAULT NULL COMMENT '出入库类型',
  `goods_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='出入库';

DELETE FROM `goods_churu_inout`;
INSERT INTO `goods_churu_inout` (`id`, `goods_churu_inout_uuid_number`, `goods_churu_inout_name`, `goods_churu_inout_types`, `goods_churu_inout_content`, `insert_time`, `create_time`) VALUES
	(1, '164933831380618', '出入库名称1', 1, '备注1', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(2, '16493383138068', '出入库名称2', 1, '备注2', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(3, '16493383138068', '出入库名称3', 1, '备注3', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(4, '16493383138060', '出入库名称4', 1, '备注4', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(5, '16493383138068', '出入库名称5', 1, '备注5', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(6, '1649338861053', '123', 1, '', '2022-04-07 13:41:01', '2022-04-07 13:41:01');

DROP TABLE IF EXISTS `goods_churu_inout_list`;
CREATE TABLE IF NOT EXISTS `goods_churu_inout_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_id` int DEFAULT NULL COMMENT '出入库',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `goods_churu_inout_list_number` int DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='出入库详情';

DELETE FROM `goods_churu_inout_list`;
INSERT INTO `goods_churu_inout_list` (`id`, `goods_churu_inout_id`, `goods_id`, `goods_churu_inout_list_number`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 414, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(2, 2, 2, 426, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(3, 3, 3, 339, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(4, 4, 4, 53, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(5, 5, 5, 98, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(6, 6, 3, 1, '2022-04-07 13:41:01', '2022-04-07 13:41:01'),
	(7, 6, 4, 1, '2022-04-07 13:41:01', '2022-04-07 13:41:01'),
	(8, 6, 5, 1, '2022-04-07 13:41:01', '2022-04-07 13:41:01');

DROP TABLE IF EXISTS `goods_shouyin`;
CREATE TABLE IF NOT EXISTS `goods_shouyin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_shouyin_uuid_number` varchar(200) DEFAULT NULL COMMENT '购买流水号 Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `goods_shouyin_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付金额',
  `goods_shouyin_types` int DEFAULT NULL COMMENT '支付类型 Search111 ',
  `goods_shouyin_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='购买';

DELETE FROM `goods_shouyin`;
INSERT INTO `goods_shouyin` (`id`, `goods_shouyin_uuid_number`, `yonghu_id`, `goods_shouyin_true_price`, `goods_shouyin_types`, `goods_shouyin_content`, `insert_time`, `create_time`) VALUES
	(1, '16493383138132', 1, 2.96, 2, '备注1', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(2, '16493383138138', 1, 37.90, 3, '备注2', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(3, '16493383138130', 3, 311.90, 2, '备注3', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(4, '16493383138131', 3, 802.26, 3, '备注4', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(5, '164933831381314', 1, 75.48, 2, '备注5', '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(6, '1649338621264', 1, 859.89, 3, '', '2022-04-07 13:37:01', '2022-04-07 13:37:01'),
	(7, '1649338796658', 2, 1643.88, 3, '', '2022-04-07 13:39:57', '2022-04-07 13:39:57');

DROP TABLE IF EXISTS `goods_shouyin_list`;
CREATE TABLE IF NOT EXISTS `goods_shouyin_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_shouyin_id` int DEFAULT NULL COMMENT '购买',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `goods_shouyin_list_number` int DEFAULT NULL COMMENT '购买数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='购买详情';

DELETE FROM `goods_shouyin_list`;
INSERT INTO `goods_shouyin_list` (`id`, `goods_shouyin_id`, `goods_id`, `goods_shouyin_list_number`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 145, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(2, 2, 2, 87, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(3, 3, 3, 302, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(4, 4, 4, 83, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(5, 5, 5, 347, '2022-04-07 13:31:53', '2022-04-07 13:31:53'),
	(6, 6, 3, 1, '2022-04-07 13:37:01', '2022-04-07 13:37:01'),
	(7, 6, 4, 1, '2022-04-07 13:37:01', '2022-04-07 13:37:01'),
	(8, 6, 5, 1, '2022-04-07 13:37:01', '2022-04-07 13:37:01'),
	(9, 7, 4, 3, '2022-04-07 13:39:57', '2022-04-07 13:39:57'),
	(10, 7, 5, 3, '2022-04-07 13:39:57', '2022-04-07 13:39:57');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/wurenchaosguanli/upload/news1.jpg', '2022-04-07 13:31:53', '公告详情1', '2022-04-07 13:31:53'),
	(2, '公告标题2', 1, 'http://localhost:8080/wurenchaosguanli/upload/news2.jpg', '2022-04-07 13:31:53', '公告详情2', '2022-04-07 13:31:53'),
	(3, '公告标题3', 1, 'http://localhost:8080/wurenchaosguanli/upload/news3.jpg', '2022-04-07 13:31:53', '公告详情3', '2022-04-07 13:31:53'),
	(4, '公告标题4', 1, 'http://localhost:8080/wurenchaosguanli/upload/news4.jpg', '2022-04-07 13:31:53', '公告详情4', '2022-04-07 13:31:53'),
	(5, '公告标题5', 2, 'http://localhost:8080/wurenchaosguanli/upload/news5.jpg', '2022-04-07 13:31:53', '公告详情5', '2022-04-07 13:31:53');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 1, 'admin', 'users', '管理员', 'bnuprlynza5w1n818iqteedlpznbf1ke', '2022-04-07 13:06:17', '2024-08-01 09:20:54'),
	(4, 1, 'a1', 'yonghu', '用户', 'v062erru9wb8rzt3b2mo1k9mc7ovl774', '2022-04-07 13:24:47', '2024-08-01 09:21:54'),
	(5, 2, 'a2', 'yonghu', '用户', '45nbuumwc98kg9mws271oxs87m7bn131', '2022-04-07 13:39:39', '2022-04-07 14:39:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/wurenchaosguanli/upload/yonghu1.jpg', '17703786901', '1@qq.com', 2, 1, '2022-04-07 13:31:53'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/wurenchaosguanli/upload/yonghu2.jpg', '17703786902', '2@qq.com', 1, 1, '2022-04-07 13:31:53'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/wurenchaosguanli/upload/yonghu3.jpg', '17703786903', '3@qq.com', 1, 1, '2022-04-07 13:31:53');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
