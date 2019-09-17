/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-09-15 21:58:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for claim_voucher
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher`;
CREATE TABLE `claim_voucher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cause` varchar(100) DEFAULT NULL,
  `create_sn` char(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `next_deal_sn` char(10) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher
-- ----------------------------
INSERT INTO `claim_voucher` VALUES ('6', '出差', 'a01', '2019-09-08 03:53:49', 'a02', '7000', '已提交');
INSERT INTO `claim_voucher` VALUES ('7', '加班费11', 'a01', '2019-09-08 07:42:36', null, '2500', '已打款');
INSERT INTO `claim_voucher` VALUES ('8', '展会开销', 'a01', '2019-09-08 09:22:08', 'a04', '6000', '已审核');

-- ----------------------------
-- Table structure for claim_voucher_item
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher_item`;
CREATE TABLE `claim_voucher_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher_item
-- ----------------------------
INSERT INTO `claim_voucher_item` VALUES ('7', '6', '交通', '2000', '飞机');
INSERT INTO `claim_voucher_item` VALUES ('8', '6', '餐饮', '2000', '吃饭');
INSERT INTO `claim_voucher_item` VALUES ('9', '7', '交通', '500', '打车');
INSERT INTO `claim_voucher_item` VALUES ('10', '7', '餐饮', '2000', '吃晚饭');
INSERT INTO `claim_voucher_item` VALUES ('11', '6', '住宿', '3000', '总统套房');
INSERT INTO `claim_voucher_item` VALUES ('12', '8', '交通', '1000', '高铁');
INSERT INTO `claim_voucher_item` VALUES ('13', '8', '餐饮', '4000', '请客户吃饭');
INSERT INTO `claim_voucher_item` VALUES ('14', '8', '住宿', '1000', '水蕨');

-- ----------------------------
-- Table structure for deal_record
-- ----------------------------
DROP TABLE IF EXISTS `deal_record`;
CREATE TABLE `deal_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `deal_sn` char(10) DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `deal_way` varchar(20) DEFAULT NULL,
  `deal_result` varchar(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_record
-- ----------------------------
INSERT INTO `deal_record` VALUES ('1', '6', 'a01', '2019-09-08 08:20:55', '提交', '已审核', '无');
INSERT INTO `deal_record` VALUES ('2', '8', 'a01', '2019-09-08 09:22:20', '提交', '已审核', '无');
INSERT INTO `deal_record` VALUES ('3', '7', 'a01', '2019-09-08 09:22:22', '提交', '已审核', '无');
INSERT INTO `deal_record` VALUES ('4', '7', 'a02', '2019-09-08 09:29:17', '通过', '已审核', '同意');
INSERT INTO `deal_record` VALUES ('9', '8', 'a02', '2019-09-08 09:34:06', '通过', '待复审', '');
INSERT INTO `deal_record` VALUES ('10', '8', 'a03', '2019-09-08 09:34:32', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES ('13', '7', 'a04', '2019-09-08 09:50:51', '打款', '已打款', '无');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `sn` char(10) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1001', '销售部', '北京');
INSERT INTO `department` VALUES ('1002', '生产一部', '东莞');
INSERT INTO `department` VALUES ('1', '研发部', '北辰世纪中心');
INSERT INTO `department` VALUES ('1111', '采购部', '上海');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `sn` char(10) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department_sn` char(10) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('9999', '123456', '杨永叔', '1', '财务');
INSERT INTO `employee` VALUES ('a01', '123', '钱七', '1001', '员工');
INSERT INTO `employee` VALUES ('a02', '123456', '李四', '1001', '部门经理');
INSERT INTO `employee` VALUES ('a03', '123456', 'yys', '1001', '总经理');
INSERT INTO `employee` VALUES ('a04', '123456', '王敏', '1001', '财务');
INSERT INTO `employee` VALUES ('a07', '123456', '张三', '1001', '员工');
