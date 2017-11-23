/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-23 09:48:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(20) NOT NULL,
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `number` varchar(200) DEFAULT NULL COMMENT '热线',
  `wechat` varchar(200) DEFAULT NULL COMMENT '微信',
  `weibo` varchar(200) DEFAULT NULL COMMENT '微博',
  `ewm` varchar(200) DEFAULT NULL COMMENT '二维码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
