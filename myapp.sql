/*
Navicat MySQL Data Transfer

Source Server         : tianpan
Source Server Version : 50717
Source Host           : 39.96.60.172:3306
Source Database       : myapp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-07-09 16:21:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `device_info`
-- ----------------------------
DROP TABLE IF EXISTS `device_info`;
CREATE TABLE `device_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL COMMENT '设备编号',
  `name` varchar(255) NOT NULL COMMENT '设备名称',
  `model` varchar(255) NOT NULL COMMENT '型号规格',
  `fac_num` int(11) NOT NULL COMMENT '出厂号',
  `position` varchar(255) NOT NULL COMMENT '存放地点',
  `owner` varchar(255) NOT NULL COMMENT '管理人',
  `country` varchar(255) NOT NULL COMMENT '国别',
  `factory` varchar(255) NOT NULL COMMENT '生产商',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_info
-- ----------------------------
INSERT INTO `device_info` VALUES ('1', '1', '嗯', '23', '45', '嗯', '你', '中国', '中国');
INSERT INTO `device_info` VALUES ('2', '11', '11', '411', '111', '111111', '111', '中国', '中国');
INSERT INTO `device_info` VALUES ('3', '1', '嗯', '2', '2', '你', '我', '中国', '戴尔');
INSERT INTO `device_info` VALUES ('4', '1', '我', '23', '33', '嗯', '我', '中国', '戴尔');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `born_time` varchar(10) DEFAULT NULL,
  `img` varchar(10) DEFAULT 'netlab' COMMENT '图片地址',
  `position` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '所属分类',
  `owner` varchar(10) DEFAULT NULL COMMENT '所属者',
  `borrowed` varchar(10) DEFAULT NULL COMMENT '外借人',
  `repair` int(2) DEFAULT '0' COMMENT '是否报修 0  没有报修 1 报修',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '6956511919826', 'laptop', '2016-10-10', 'computer', 'on the desktop', '电脑', '翟英', '无外借', '0');
INSERT INTO `product` VALUES ('2', '6970740931404', 'tissue', '2019-5-5', 'router', '在餐桌上', '交换机', '翟英', '无外借', '0');
INSERT INTO `product` VALUES ('3', '6970740931404', 'maclaptop', '2018-10-10', 'computer', '在电脑包里', '服务器', '翟英', '曾老师', '0');
INSERT INTO `product` VALUES ('4', '6956511901821', 'Dell服务器', '2016-5-6', 'server', '201最后一排靠窗', '服务器', '翟英', '无外借', '0');

-- ----------------------------
-- Table structure for `repair`
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `code` int(10) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `model` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '型号 规格',
  `fac_num` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '出厂号',
  `born_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '出厂日期',
  `country` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '国别',
  `factory` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '生产厂',
  `position` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '详细的位置 ',
  `owner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '管理者',
  `repair_date` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '报修日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('0000000001', '12345', '123', '123', '13', '1234', '12343', '13243', '234', 'afg', 'eg');
INSERT INTO `repair` VALUES ('0000000002', '12345', '123', '123', '13', '1234', '12343', '13243', '234', 'afg', 'eg');
INSERT INTO `repair` VALUES ('0000000003', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `repair` VALUES ('0000000004', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `repair` VALUES ('0000000005', '111', '222', '2111', '23', '23', '1234', '1234', 'qwerf', 'zhai', '1561873948');
INSERT INTO `repair` VALUES ('0000000006', '111', '111', '111', '111', '111', null, null, '141', '111', '1561874719');
INSERT INTO `repair` VALUES ('0000000007', '111', '111', '阿拉', '哈哈哈', '哈哈哈', '中国', '戴尔', '哈哈哈', '哈哈哈', '1561874891');
INSERT INTO `repair` VALUES ('0000000008', '11', '111', '喇叭', '哈哈哈', '哈哈哈', '中国', '戴尔', '哈哈哈', '哈哈哈', '1561875597');
INSERT INTO `repair` VALUES ('0000000009', '111', '111', '哈哈哈', '哈哈哈', '哈哈哈', '中国', '戴尔', '哈哈哈', '哈哈哈', '1561875684');
INSERT INTO `repair` VALUES ('0000000010', '111', '111', '哈哈哈', '哈哈哈', '哈哈哈', '中国', '戴尔', '哈哈哈', '哈哈哈', '1561875720');
INSERT INTO `repair` VALUES ('0000000011', '111', '111', '', '', '2019-7-29', '2', '2', '好婆婆我搜搜哦了', '哈哈哈', '1561879421');
INSERT INTO `repair` VALUES ('0000000012', '111', '', '111', '111', '', '日本', '曙光', '111587', '哈哈哈', '1561879662');
INSERT INTO `repair` VALUES ('0000000013', '111', '111', '', '11', '2019-8-29', '中国', '戴尔', '是是是', '', '1561879854');
