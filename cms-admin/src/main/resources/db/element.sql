/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-23 10:39:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for element
-- ----------------------------
DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单元素名称',
  `menu_id` int(11) DEFAULT NULL COMMENT '所属菜单ID',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用 0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element
-- ----------------------------
INSERT INTO `element` VALUES ('1', '轮播大图', '1', '1');
INSERT INTO `element` VALUES ('2', '成功案例', '4', '1');
