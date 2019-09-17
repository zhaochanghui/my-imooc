/*
Navicat MySQL Data Transfer

Source Server         : tx
Source Server Version : 50641
Source Host           : 123.207.234.226:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-09-16 01:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'top', '0');
INSERT INTO `category` VALUES ('2', 'Java', '1');
INSERT INTO `category` VALUES ('3', 'PHP', '1');
INSERT INTO `category` VALUES ('4', 'mysql', '1');
INSERT INTO `category` VALUES ('5', 'Python', '1');
INSERT INTO `category` VALUES ('6', 'React', '1');
INSERT INTO `category` VALUES ('7', 'Linux', '1');
