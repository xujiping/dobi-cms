/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-22 15:45:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  `date` datetime DEFAULT NULL COMMENT '日期',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用 0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', 'test', '<p>测试文章管理<br/></p>', '2017-11-20 16:36:34', '1', '试管资讯', '1');
INSERT INTO `article` VALUES ('3', 'test2', '<p>s<strong>dfseverbe</strong><br/></p>', '2017-11-22 13:58:20', '2', null, '1');
INSERT INTO `article` VALUES ('4', 'test33', '<p>sdfwewegewvrebrtbrtbr<br/></p>', '2017-11-22 14:28:50', '4', null, '1');
INSERT INTO `article` VALUES ('5', 'test44', '<p>sdfsvee<br/></p>', '2017-11-22 14:30:46', '2', '服务项目', '1');
