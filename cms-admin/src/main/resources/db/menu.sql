/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-26 09:15:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `level` int(2) DEFAULT '1' COMMENT '菜单级别',
  `parent` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `url` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用 0不可用',
  `type` int(2) NOT NULL COMMENT '类型：1前台 2后台管理菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '首页', '1', null, 'index', '1', '1');
INSERT INTO `menu` VALUES ('2', '关于我们', '1', null, 'about', '1', '1');
INSERT INTO `menu` VALUES ('3', '服务项目', '1', null, 'service', '1', '1');
INSERT INTO `menu` VALUES ('4', '成功案例', '1', null, 'success', '1', '1');
INSERT INTO `menu` VALUES ('5', '试管资讯', '1', null, 'tube', '1', '1');
INSERT INTO `menu` VALUES ('6', '在线留言', '1', null, 'message', '1', '1');
INSERT INTO `menu` VALUES ('7', '联系我们', '1', null, 'contact', '1', '1');
