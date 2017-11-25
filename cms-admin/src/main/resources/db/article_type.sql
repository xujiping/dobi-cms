/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-25 17:04:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_type
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '文章类型名称',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES ('1', '分公司', '1');
INSERT INTO `article_type` VALUES ('2', '试管婴儿', '1');
INSERT INTO `article_type` VALUES ('3', '成功案例', '1');
INSERT INTO `article_type` VALUES ('4', '试管资讯', '1');
INSERT INTO `article_type` VALUES ('5', '员工风采', '1');
INSERT INTO `article_type` VALUES ('6', '干细胞', '1');
