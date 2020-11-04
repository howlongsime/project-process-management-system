/*
Navicat MySQL Data Transfer

Source Server         : NAVH-WK6A-DMVK-DKW3
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : xpwp

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-05-04 15:56:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cut_files`
-- ----------------------------
DROP TABLE IF EXISTS `cut_files`;
CREATE TABLE `cut_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_md5` varchar(40) NOT NULL,
  `file_path` varchar(255) NOT NULL COMMENT '文件实际路径',
  `cut_size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cut_files
-- ----------------------------
INSERT INTO `cut_files` VALUES ('36', '03bba7e18a3bef2b1f8384851f40577c', '/files/03bba7e18a3bef2b1f8384851f40577c', '817');
INSERT INTO `cut_files` VALUES ('37', '53317e8f50b9fc24e4575d49968d85b4', '/files/53317e8f50b9fc24e4575d49968d85b4', '13854');
INSERT INTO `cut_files` VALUES ('38', '1354ff7e25886d8ccb1dbadef1a575fe', '/files/1354ff7e25886d8ccb1dbadef1a575fe', '40');
INSERT INTO `cut_files` VALUES ('39', '7f85055c781647a55b18234c41dfd665', '/files/7f85055c781647a55b18234c41dfd665', '263068');
INSERT INTO `cut_files` VALUES ('40', '1e926a9a262d60271864bf03e69acfd8', '/files/1e926a9a262d60271864bf03e69acfd8', '608441');

-- ----------------------------
-- Table structure for `share_files`
-- ----------------------------
DROP TABLE IF EXISTS `share_files`;
CREATE TABLE `share_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `down_code` varchar(255) NOT NULL,
  `over_time` datetime DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_files
-- ----------------------------
INSERT INTO `share_files` VALUES ('21', '779', 'd4n0c5', '2020-05-05 00:03:55');
INSERT INTO `share_files` VALUES ('22', '779', 'j6d8z4', '2020-05-05 00:03:59');
INSERT INTO `share_files` VALUES ('23', '779', 'k1h3k8', '2020-05-11 00:04:04');
INSERT INTO `share_files` VALUES ('24', '787', 'p1k9c4', '2020-05-05 00:56:58');
INSERT INTO `share_files` VALUES ('25', '775', 'j0h4a9', '2020-05-05 14:48:34');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `register_time` datetime NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `headimg_path` varchar(255) DEFAULT 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123456789', '1234565', '1662@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-05 14:43:01', '2020-03-21 14:43:04', 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('11', 'af723a94-04ec-4fcc-b25d-73833d604402', '1234', '3123@qq.com', 'c995e9a2ab53c32687f5961d6dbbe593', '2020-03-26 17:24:33', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('12', '44e35734-ea9d-4fce-80e0-3d1edc8d9335', '你爸爸', '1@qq.com', '4af10a1b23ae5427132216dc8ac5486d', '2020-03-26 17:30:52', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('13', 'b6e35907-02ef-4db9-abd5-37291b7f662c', '12345', '1234567891@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-26 17:34:46', null, 'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3743111107,1940472030&fm=111&gp=0.jpg');
INSERT INTO `users` VALUES ('14', '1c01cb2e-c896-40bb-b816-27310e269307', '123456', '123@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-26 21:01:10', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('15', '82fa8dd2-f62f-44c8-a6c0-83c0690e0ce3', '嘿嘿1', '31123@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-26 21:33:05', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('16', '59db5435-9937-47f7-b4eb-874f4144ff8b', '李开健', '1322757770@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-28 13:39:59', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('17', 'a60b3d93-4a4b-4f0f-a8ed-71629df1a7e8', '123', '1223@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-30 17:32:22', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('18', '88053ba7-dffe-4fd5-bb1b-d735631cf9dc', '1234567891', '123456@qq.com', '25f9e794323b453885f5181f1b624d0b', '2020-03-30 17:37:56', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');
INSERT INTO `users` VALUES ('19', '5f8f225e-2cc9-4e0d-b742-c93377a8c594', '1212', '12345@qq,com', '25f9e794323b453885f5181f1b624d0b', '2020-03-30 18:08:02', null, 'http://img.zouhongwei.com/Fjkky7epOo3VQO1IykIhFdLrSbQB');

-- ----------------------------
-- Table structure for `user_cut_files`
-- ----------------------------
DROP TABLE IF EXISTS `user_cut_files`;
CREATE TABLE `user_cut_files` (
  `cut_fid` int(11) NOT NULL,
  `user_fid` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL DEFAULT '1' COMMENT '文件的组合排序 '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_cut_files
-- ----------------------------
INSERT INTO `user_cut_files` VALUES ('36', '731', '1');
INSERT INTO `user_cut_files` VALUES ('36', '747', '1');
INSERT INTO `user_cut_files` VALUES ('36', '758', '1');
INSERT INTO `user_cut_files` VALUES ('36', '759', '1');
INSERT INTO `user_cut_files` VALUES ('36', '760', '1');
INSERT INTO `user_cut_files` VALUES ('36', '761', '1');
INSERT INTO `user_cut_files` VALUES ('37', '764', '1');
INSERT INTO `user_cut_files` VALUES ('36', '770', '1');
INSERT INTO `user_cut_files` VALUES ('38', '771', '1');
INSERT INTO `user_cut_files` VALUES ('38', '772', '1');
INSERT INTO `user_cut_files` VALUES ('38', '773', '1');
INSERT INTO `user_cut_files` VALUES ('36', '774', '1');
INSERT INTO `user_cut_files` VALUES ('39', '775', '1');
INSERT INTO `user_cut_files` VALUES ('39', '776', '1');
INSERT INTO `user_cut_files` VALUES ('39', '777', '1');
INSERT INTO `user_cut_files` VALUES ('38', '778', '1');
INSERT INTO `user_cut_files` VALUES ('36', '779', '1');
INSERT INTO `user_cut_files` VALUES ('36', '780', '1');
INSERT INTO `user_cut_files` VALUES ('36', '781', '1');
INSERT INTO `user_cut_files` VALUES ('40', '787', '1');

-- ----------------------------
-- Table structure for `user_files`
-- ----------------------------
DROP TABLE IF EXISTS `user_files`;
CREATE TABLE `user_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名  为空时代表文件夹',
  `file_path` varchar(255) DEFAULT NULL COMMENT '文件路径  每个用户都以  / 为根目录',
  `file_size` int(11) DEFAULT NULL COMMENT '用户上传文件的大小',
  `upload_size` int(11) DEFAULT NULL COMMENT '文件已上传大小',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文件每次修改的时间',
  `file_sign` varchar(50) DEFAULT NULL COMMENT '用户每个文件的唯一标志',
  `state` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_files
-- ----------------------------
INSERT INTO `user_files` VALUES ('726', '13', '', '/旅游/', null, null, '2020-04-04 23:01:51', '', '1');
INSERT INTO `user_files` VALUES ('727', '13', '', '/旅游/可行性分析/', null, null, '2020-04-04 23:01:51', '', '1');
INSERT INTO `user_files` VALUES ('728', '13', '', '/旅游/项目开发计划/', null, null, '2020-04-04 23:01:51', '', '1');
INSERT INTO `user_files` VALUES ('729', '13', '', '/旅游/软件需求说明/', null, null, '2020-04-04 23:01:51', '', '1');
INSERT INTO `user_files` VALUES ('730', '13', '', '/旅游/软件概要说明/', null, null, '2020-04-04 23:01:51', '', '1');
INSERT INTO `user_files` VALUES ('731', '13', '使用.txt', '/旅游/项目开发计划/', '817', null, '2020-04-04 23:01:57', '131586012517270', '1');
INSERT INTO `user_files` VALUES ('732', '14', '', '/太阳/', null, null, '2020-04-04 23:02:53', '', '1');
INSERT INTO `user_files` VALUES ('733', '14', '', '/太阳/可行性分析/', null, null, '2020-04-04 23:02:53', '', '1');
INSERT INTO `user_files` VALUES ('734', '14', '', '/太阳/项目开发计划/', null, null, '2020-04-04 23:02:53', '', '1');
INSERT INTO `user_files` VALUES ('735', '14', '', '/太阳/软件需求说明/', null, null, '2020-04-04 23:02:53', '', '1');
INSERT INTO `user_files` VALUES ('736', '14', '', '/太阳/软件概要说明/', null, null, '2020-04-04 23:02:53', '', '1');
INSERT INTO `user_files` VALUES ('737', '16', '', '/图书管理/', null, null, '2020-04-04 23:03:44', '', '1');
INSERT INTO `user_files` VALUES ('738', '16', '', '/图书管理/可行性分析/', null, null, '2020-04-04 23:03:44', '', '1');
INSERT INTO `user_files` VALUES ('739', '16', '', '/图书管理/项目开发计划/', null, null, '2020-04-04 23:03:44', '', '1');
INSERT INTO `user_files` VALUES ('740', '16', '', '/图书管理/软件需求说明/', null, null, '2020-04-04 23:03:44', '', '1');
INSERT INTO `user_files` VALUES ('741', '16', '', '/图书管理/软件概要说明/', null, null, '2020-04-04 23:03:44', '', '1');
INSERT INTO `user_files` VALUES ('742', '14', '', '/旅游/', null, null, '2020-04-04 23:04:08', '', '1');
INSERT INTO `user_files` VALUES ('743', '14', '', '/旅游/可行性分析/', null, null, '2020-04-04 23:04:08', '', '1');
INSERT INTO `user_files` VALUES ('744', '14', '', '/旅游/项目开发计划/', null, null, '2020-04-04 23:04:08', '', '1');
INSERT INTO `user_files` VALUES ('745', '14', '', '/旅游/软件需求说明/', null, null, '2020-04-04 23:04:08', '', '1');
INSERT INTO `user_files` VALUES ('746', '14', '', '/旅游/软件概要说明/', null, null, '2020-04-04 23:04:08', '', '1');
INSERT INTO `user_files` VALUES ('747', '14', '使用.txt', '/旅游/项目开发计划/', '817', null, '2020-04-04 23:04:08', '131586012517270', '0');
INSERT INTO `user_files` VALUES ('748', '13', '', '/图书管理/', null, null, '2020-04-04 23:04:43', '', '1');
INSERT INTO `user_files` VALUES ('749', '13', '', '/图书管理/可行性分析/', null, null, '2020-04-04 23:04:43', '', '1');
INSERT INTO `user_files` VALUES ('750', '13', '', '/图书管理/项目开发计划/', null, null, '2020-04-04 23:04:43', '', '1');
INSERT INTO `user_files` VALUES ('751', '13', '', '/图书管理/软件需求说明/', null, null, '2020-04-04 23:04:43', '', '1');
INSERT INTO `user_files` VALUES ('752', '13', '', '/图书管理/软件概要说明/', null, null, '2020-04-04 23:04:43', '', '1');
INSERT INTO `user_files` VALUES ('753', '1', '', '/旅游/', null, null, '2020-04-04 23:25:19', '', '1');
INSERT INTO `user_files` VALUES ('754', '1', '', '/旅游/可行性分析/', null, null, '2020-04-04 23:25:19', '', '1');
INSERT INTO `user_files` VALUES ('755', '1', '', '/旅游/项目开发计划/', null, null, '2020-04-04 23:25:19', '', '1');
INSERT INTO `user_files` VALUES ('756', '1', '', '/旅游/软件需求说明/', null, null, '2020-04-04 23:25:19', '', '1');
INSERT INTO `user_files` VALUES ('757', '1', '', '/旅游/软件概要说明/', null, null, '2020-04-04 23:25:19', '', '1');
INSERT INTO `user_files` VALUES ('758', '1', '使用.txt', '/旅游/项目开发计划/', '817', null, '2020-04-04 23:25:19', '131586012517270', '1');
INSERT INTO `user_files` VALUES ('759', '13', '使用.txt', '/图书管理/项目开发计划/', '817', null, '2020-04-04 23:46:01', '131586015161335', '0');
INSERT INTO `user_files` VALUES ('760', '13', '使用.txt', '/图书管理/项目开发计划/', '817', null, '2020-04-04 23:51:20', '131586015480095', '0');
INSERT INTO `user_files` VALUES ('761', '13', '使用.txt', '/图书管理/项目开发计划/', '817', null, '2020-04-05 22:29:36', '131586096976847', '1');
INSERT INTO `user_files` VALUES ('762', '13', 'JTA_MASB$TU@8V_FMZB9~VY.png', '/图书管理/项目开发计划/', '13854', null, '2020-04-06 10:40:04', '131586140804901', '0');
INSERT INTO `user_files` VALUES ('763', '13', '微信小程序前台.docx', '/图书管理/项目开发计划/', '263068', null, '2020-04-06 14:06:21', '131586153181469', '0');
INSERT INTO `user_files` VALUES ('764', '13', 'JTA_MASB$TU@8V_FMZB9~VY.png', '/图书管理/项目开发计划/', '13854', null, '2020-04-06 14:09:53', '131586153393318', '1');
INSERT INTO `user_files` VALUES ('765', '16', '', '/旅游/', null, null, '2020-04-06 14:24:18', '', '1');
INSERT INTO `user_files` VALUES ('766', '16', '', '/旅游/可行性分析/', null, null, '2020-04-06 14:24:18', '', '1');
INSERT INTO `user_files` VALUES ('767', '16', '', '/旅游/项目开发计划/', null, null, '2020-04-06 14:24:18', '', '1');
INSERT INTO `user_files` VALUES ('768', '16', '', '/旅游/软件需求说明/', null, null, '2020-04-06 14:24:18', '', '1');
INSERT INTO `user_files` VALUES ('769', '16', '', '/旅游/软件概要说明/', null, null, '2020-04-06 14:24:18', '', '1');
INSERT INTO `user_files` VALUES ('770', '16', '使用.txt', '/旅游/项目开发计划/', '817', null, '2020-04-06 14:24:19', '131586012517270', '1');
INSERT INTO `user_files` VALUES ('771', '13', 'html.txt', '/图书管理/项目开发计划/', '40', null, '2020-04-10 20:39:44', '131586522384453', '1');
INSERT INTO `user_files` VALUES ('772', '16', 'html.txt', '/图书管理/项目开发计划/', '40', null, '2020-04-10 20:39:44', '131586522384453', '1');
INSERT INTO `user_files` VALUES ('773', '13', 'html.txt', '/旅游/项目开发计划/', '40', null, '2020-04-10 20:41:11', '131586522471080', '1');
INSERT INTO `user_files` VALUES ('774', '14', '使用.txt', '/旅游/项目开发计划/', '817', null, '2020-04-10 20:44:45', '141586522685923', '1');
INSERT INTO `user_files` VALUES ('775', '13', '微信小程序前台.docx', '/旅游/项目开发计划/', '263068', null, '2020-04-10 20:46:10', '131586522770065', '1');
INSERT INTO `user_files` VALUES ('776', '14', '微信小程序前台.docx', '/旅游/项目开发计划/', '263068', null, '2020-04-10 20:46:10', '131586522770065', '1');
INSERT INTO `user_files` VALUES ('777', '1', '微信小程序前台.docx', '/旅游/项目开发计划/', '263068', null, '2020-04-10 20:46:10', '131586522770065', '1');
INSERT INTO `user_files` VALUES ('778', '13', 'html.txt', '/旅游/软件需求说明/', '40', null, '2020-04-10 20:48:39', '131586522919124', '1');
INSERT INTO `user_files` VALUES ('779', '13', '使用.txt', '/旅游/软件需求说明/', '817', null, '2020-04-10 20:52:38', '131586523158369', '1');
INSERT INTO `user_files` VALUES ('780', '14', '使用.txt', '/旅游/软件需求说明/', '817', null, '2020-04-10 20:52:38', '131586523158369', '1');
INSERT INTO `user_files` VALUES ('781', '1', '使用.txt', '/旅游/软件需求说明/', '817', null, '2020-04-10 20:52:38', '131586523158369', '1');
INSERT INTO `user_files` VALUES ('782', '13', '', '/猜想/', null, null, '2020-04-27 22:04:48', '', '1');
INSERT INTO `user_files` VALUES ('783', '13', '', '/猜想/可行性分析/', null, null, '2020-04-27 22:04:48', '', '1');
INSERT INTO `user_files` VALUES ('784', '13', '', '/猜想/项目开发计划/', null, null, '2020-04-27 22:04:48', '', '1');
INSERT INTO `user_files` VALUES ('785', '13', '', '/猜想/软件需求说明/', null, null, '2020-04-27 22:04:48', '', '1');
INSERT INTO `user_files` VALUES ('786', '13', '', '/猜想/软件概要说明/', null, null, '2020-04-27 22:04:48', '', '1');
INSERT INTO `user_files` VALUES ('787', '13', '初.docx', '/图书管理/', '608441', null, '2020-05-03 23:32:50', '131588519970055', '1');

-- ----------------------------
-- Table structure for `user_item`
-- ----------------------------
DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `uid` int(11) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bool` int(11) DEFAULT NULL,
  `boos` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_item
-- ----------------------------
INSERT INTO `user_item` VALUES ('13', '旅游', '109', '1', '1');
INSERT INTO `user_item` VALUES ('14', '太阳', '110', '1', '1');
INSERT INTO `user_item` VALUES ('16', '图书管理', '111', '1', '0');
INSERT INTO `user_item` VALUES ('14', '旅游', '112', '3', '1');
INSERT INTO `user_item` VALUES ('13', '图书管理', '113', '0', '0');
INSERT INTO `user_item` VALUES ('13', '猜想', '116', '1', '1');
INSERT INTO `user_item` VALUES ('12', '旅游', '119', '2', '1');
INSERT INTO `user_item` VALUES ('18', '旅游', '120', '0', '1');
INSERT INTO `user_item` VALUES ('18', '图书管理', '121', '0', '0');

-- ----------------------------
-- Table structure for `user_opertion`
-- ----------------------------
DROP TABLE IF EXISTS `user_opertion`;
CREATE TABLE `user_opertion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `bool` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_opertion
-- ----------------------------
INSERT INTO `user_opertion` VALUES ('237', '13', '用户12345:  创建项目旅游', '2020-04-04 23:01:52', '1');
INSERT INTO `user_opertion` VALUES ('238', '13', '用户12345:   上传了项目文件使用.txt', '2020-04-04 23:01:57', '1');
INSERT INTO `user_opertion` VALUES ('239', '14', '用户123456:  创建项目太阳', '2020-04-04 23:02:53', '1');
INSERT INTO `user_opertion` VALUES ('240', '16', '用户李开健:  创建项目图书管理', '2020-04-04 23:03:44', '1');
INSERT INTO `user_opertion` VALUES ('241', '13', '同意用户123456789加入项目旅游', '2020-04-04 23:25:19', '0');
INSERT INTO `user_opertion` VALUES ('242', '13', '用户12345:   上传了项目文件使用.txt', '2020-04-04 23:46:01', '1');
INSERT INTO `user_opertion` VALUES ('243', '13', '用户12345:   上传了项目文件使用.txt', '2020-04-04 23:51:20', '1');
INSERT INTO `user_opertion` VALUES ('244', '13', '用户12345:   删除项目文件使用.txt  ', '2020-04-05 22:29:29', '1');
INSERT INTO `user_opertion` VALUES ('245', '13', '用户12345:   删除项目文件使用.txt  ', '2020-04-05 22:29:31', '1');
INSERT INTO `user_opertion` VALUES ('246', '13', '用户12345:   上传了项目文件使用.txt', '2020-04-05 22:29:36', '1');
INSERT INTO `user_opertion` VALUES ('247', '13', '用户12345:   下载了使用.txt', '2020-04-05 22:29:44', '1');
INSERT INTO `user_opertion` VALUES ('248', '13', '用户12345:   上传了项目文件JTA_MASB$TU@8V_FMZB9~VY.png', '2020-04-06 10:40:05', '1');
INSERT INTO `user_opertion` VALUES ('249', '13', '用户12345:   上传了项目文件微信小程序前台.docx', '2020-04-06 14:06:21', '1');
INSERT INTO `user_opertion` VALUES ('250', '13', '用户12345:   下载了JTA_MASB$TU@8V_FMZB9~VY.png', '2020-04-06 14:07:22', '1');
INSERT INTO `user_opertion` VALUES ('251', '13', '用户12345:   下载了使用.txt', '2020-04-06 14:07:29', '1');
INSERT INTO `user_opertion` VALUES ('252', '13', '用户12345:   下载了微信小程序前台.docx', '2020-04-06 14:07:31', '1');
INSERT INTO `user_opertion` VALUES ('253', '13', '用户12345:   删除项目文件JTA_MASB$TU@8V_FMZB9~VY.png  ', '2020-04-06 14:09:47', '1');
INSERT INTO `user_opertion` VALUES ('254', '13', '用户12345:   删除项目文件微信小程序前台.docx  ', '2020-04-06 14:09:50', '1');
INSERT INTO `user_opertion` VALUES ('255', '13', '用户12345:   上传了项目文件JTA_MASB$TU@8V_FMZB9~VY.png', '2020-04-06 14:09:53', '1');
INSERT INTO `user_opertion` VALUES ('256', '13', '用户12345:   下载了JTA_MASB$TU@8V_FMZB9~VY.png', '2020-04-06 14:09:59', '1');
INSERT INTO `user_opertion` VALUES ('257', '16', '申请加入项目旅游', '2020-04-06 14:23:49', '0');
INSERT INTO `user_opertion` VALUES ('258', '13', '同意用户李开健加入项目旅游', '2020-04-06 14:24:18', '0');
INSERT INTO `user_opertion` VALUES ('259', '13', '删除项目旅游成员李开健', '2020-04-06 14:25:03', '0');
INSERT INTO `user_opertion` VALUES ('260', '13', '用户12345:   上传了项目文件html.txt', '2020-04-10 20:39:44', '1');
INSERT INTO `user_opertion` VALUES ('261', '13', '用户12345:   上传了项目文件html.txt', '2020-04-10 20:41:11', '1');
INSERT INTO `user_opertion` VALUES ('262', '14', '用户123456:   删除项目文件使用.txt  ', '2020-04-10 20:44:17', '1');
INSERT INTO `user_opertion` VALUES ('263', '14', '用户123456:   上传了项目文件使用.txt', '2020-04-10 20:44:45', '1');
INSERT INTO `user_opertion` VALUES ('264', '13', '用户12345:   上传了项目文件微信小程序前台.docx', '2020-04-10 20:46:10', '1');
INSERT INTO `user_opertion` VALUES ('265', '14', '用户123456:   下载了微信小程序前台.docx', '2020-04-10 20:46:25', '1');
INSERT INTO `user_opertion` VALUES ('266', '16', '申请加入项目太阳', '2020-04-10 20:47:43', '0');
INSERT INTO `user_opertion` VALUES ('267', '13', '用户12345:   上传了项目文件html.txt', '2020-04-10 20:48:39', '1');
INSERT INTO `user_opertion` VALUES ('268', '13', '用户12345:   上传了项目文件使用.txt', '2020-04-10 20:52:38', '1');
INSERT INTO `user_opertion` VALUES ('269', '13', '用户12345:  创建项目猜想', '2020-04-27 22:04:48', '1');
INSERT INTO `user_opertion` VALUES ('270', '13', '删除项目旅游成员1234565', '2020-05-03 23:05:06', '0');
INSERT INTO `user_opertion` VALUES ('271', '13', '用户12345:   下载了使用.txt', '2020-05-04 15:45:09', '1');
INSERT INTO `user_opertion` VALUES ('272', '13', '用户12345:   下载了初.docx', '2020-05-04 15:47:04', '1');

-- ----------------------------
-- Table structure for `user_pass`
-- ----------------------------
DROP TABLE IF EXISTS `user_pass`;
CREATE TABLE `user_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pass
-- ----------------------------
INSERT INTO `user_pass` VALUES ('11', '1', '旅游', '13');
INSERT INTO `user_pass` VALUES ('13', '16', '太阳', '14');
