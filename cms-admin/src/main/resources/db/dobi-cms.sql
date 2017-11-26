/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-26 23:10:49
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
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用 0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('6', '第三方辅助生殖（捐卵、代孕）', '<p><strong><span style=\"font-family: 宋体;font-size: 14pxfont-family:宋体\">第三方辅助生殖（捐卵、代孕）</span></strong><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">&nbsp; &nbsp;第三方辅助生殖是指将早期胚胎植入志愿者子宫，由志愿者替他人完成“十月怀胎，一朝分娩”的过程。当今社会无论是工作上还是生活中，各种压力与日俱增，患不孕不育的患者越来越多，很多的人通过试管婴儿技术解决了不孕的难题，但是对于没有子宫或患有子宫疾病的女性来说，要完成孕育的过程是一个不可能完成的任务，因此“代孕”的出现，是生物医学的进步与人类情感的结合，代孕也是一个伟大而光荣的职业。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">技术介绍</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\"><span style=\"font-family:宋体\">　　第三方辅助生殖并不涉及到身体接触，属于辅助生殖技术，是解决不孕不育的一种临床选择。是通过试管婴儿技术把受精卵培养至第五天，对囊胚进行</span>PGS/PGD遗传学疾病的筛查诊断，然后将健康的胚胎移植到孕母子宫腔，一般分为四种情况：</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.精子、卵子来自夫妻双方借用孕母的子宫;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.精子来自丈夫，卵子由第三方提供(捐卵);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.精子、卵子均由第三方提供(捐卵、捐精);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.精子由第三方提供，卵子由妻子提供。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">适合人群</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.患有其他疾病，需要及时治疗，且有可能不能生育的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.有生育能力，但是想要双胞胎，自身状况不适合的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.不想自己生育或者因为某些原因而不能正常生育的特殊人群(如：影视明星、政府官员等);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.同性爱人士。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　　</span></strong><strong></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">代孕志愿者的条件</span></strong></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">1. 年龄在23-35岁</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">2. 身体健康，无传染病及遗传病</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">3. 身高158CM以上的经产妇</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">4. 愿意帮助不孕不育患者完成孕产整个流程</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">5. 不超过两次的剖腹产</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">6. 经济上和精神上稳定</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">7. 有良好的健康背景</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">8.不吸烟、不喝酒、不吸毒</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">9. 没有滥用药物的历史</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">10. 无流产史及妊娠综合征</span><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><br/></p>', '2017-11-25 14:15:14', '2', '服务项目', 'http://localhost:8000/upload/003fprYBzy6K9NHJuDl67.jpg', '1');
INSERT INTO `article` VALUES ('8', '卵巢回春', null, '2017-11-25 17:07:00', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('9', '定格青春-面部年轻化', null, '2017-11-25 17:09:41', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('10', '肾阳泰', null, '2017-11-25 17:09:54', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('28', '广州公司', null, '2017-11-26 22:35:32', '1', '分公司', '8FCB9F926F82C5E751AAA48ED339EB83.jpg', '1');
INSERT INTO `article` VALUES ('29', '昆明公司', null, '2017-11-26 22:43:10', '1', '分公司', '20131114_130311.jpg', '1');
INSERT INTO `article` VALUES ('30', '泰国公司', null, '2017-11-26 22:43:51', '1', '分公司', '20131114_191708.jpg', '1');
INSERT INTO `article` VALUES ('31', '武汉公司', '', '2017-11-26 22:44:35', '1', '分公司', '照片 002.jpg', '1');
INSERT INTO `article` VALUES ('32', '长沙公司', null, '2017-11-26 22:45:26', '1', '分公司', '002RFRr5zy7eS7mWBp6d8&690.jpg', '1');
INSERT INTO `article` VALUES ('33', '大姚县爱心活动', '', '2017-11-26 22:48:49', '5', '员工风采', '大姚县爱心活动1.jpg', '1');
INSERT INTO `article` VALUES ('34', '广州公司黄腾峡漂流', null, '2017-11-26 22:53:27', '5', '员工风采', '广州公司黄腾峡漂流2.jpg', '1');
INSERT INTO `article` VALUES ('35', '昆明公司春游活动', null, '2017-11-26 22:54:43', '5', '员工风采', '昆明公司春游活动1.jpg', '1');
INSERT INTO `article` VALUES ('36', '塞班旅游', '', '2017-11-26 22:56:15', '5', '员工风采', '塞班旅游.JPG', '1');
INSERT INTO `article` VALUES ('37', '泰国旅游考察1', null, '2017-11-26 22:58:05', '5', '员工风采', '泰国旅游考察1.JPG', '1');
INSERT INTO `article` VALUES ('38', '芽庄旅游', null, '2017-11-26 22:58:51', '5', '员工风采', '芽庄旅游1.JPG', '1');

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
INSERT INTO `contact` VALUES ('1', '都是废物', '2312', '231231', '12312', '似懂非懂');

-- ----------------------------
-- Table structure for customer_message
-- ----------------------------
DROP TABLE IF EXISTS `customer_message`;
CREATE TABLE `customer_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '您的姓名',
  `weixin` varchar(20) DEFAULT NULL COMMENT '微信号',
  `mail` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户留言';

-- ----------------------------
-- Records of customer_message
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element
-- ----------------------------
INSERT INTO `element` VALUES ('1', '轮播大图', '1', '1');
INSERT INTO `element` VALUES ('2', '成功案例', '4', '1');
INSERT INTO `element` VALUES ('21', '集团风采', '2', '1');
INSERT INTO `element` VALUES ('22', '生殖中心', '2', '1');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `description` varchar(100) DEFAULT NULL COMMENT '操作描述',
  `username` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `start_time` bigint(20) DEFAULT NULL COMMENT '操作时间',
  `spend_time` int(11) DEFAULT NULL COMMENT '消耗时间',
  `base_path` varchar(500) DEFAULT NULL COMMENT '根路径',
  `uri` varchar(500) DEFAULT NULL COMMENT 'URI',
  `url` varchar(500) DEFAULT NULL COMMENT 'URL',
  `method` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `parameter` mediumtext,
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户标识',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `result` mediumtext,
  `permissions` varchar(100) DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`log_id`),
  KEY `log_id` (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';

-- ----------------------------
-- Records of log
-- ----------------------------

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

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `end` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `system_id` int(10) unsigned NOT NULL COMMENT '所属系统',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型(1:目录,2:菜单,3:按钮)',
  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
  `uri` varchar(100) DEFAULT NULL COMMENT '路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COMMENT='权限';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '1', '0', '系统组织管理', '1', '', '', 'zmdi zmdi-accounts-list', '1', '1', '1');
INSERT INTO `permission` VALUES ('2', '1', '1', '系统管理', '2', 'upms:system:read', '/manage/system/index', '', '1', '2', '2');
INSERT INTO `permission` VALUES ('3', '1', '1', '组织管理', '2', 'upms:organization:read', '/manage/organization/index', '', '1', '3', '3');
INSERT INTO `permission` VALUES ('4', '1', '0', '角色用户管理', '1', '', '', 'zmdi zmdi-accounts', '1', '4', '4');
INSERT INTO `permission` VALUES ('5', '1', '4', '角色管理', '2', 'upms:role:read', '/manage/role/index', '', '1', '6', '6');
INSERT INTO `permission` VALUES ('6', '1', '4', '用户管理', '2', 'upms:user:read', '/manage/user/index', '', '1', '5', '5');
INSERT INTO `permission` VALUES ('7', '1', '0', '权限资源管理', '1', '', '', 'zmdi zmdi-lock-outline', '1', '7', '7');
INSERT INTO `permission` VALUES ('12', '1', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '12', '12');
INSERT INTO `permission` VALUES ('14', '1', '12', '会话管理', '2', 'upms:session:read', '/manage/session/index', '', '1', '14', '14');
INSERT INTO `permission` VALUES ('15', '1', '12', '日志记录', '2', 'upms:log:read', '/manage/log/index', '', '1', '15', '15');
INSERT INTO `permission` VALUES ('17', '2', '0', '标签类目管理', '1', null, null, 'zmdi zmdi-menu', '1', '17', '17');
INSERT INTO `permission` VALUES ('18', '2', '17', '标签管理', '2', 'cms:tag:read', '/manage/tag/index', null, '1', '18', '18');
INSERT INTO `permission` VALUES ('19', '2', '17', '类目管理', '2', 'cms:category:read', '/manage/category/index', null, '1', '19', '19');
INSERT INTO `permission` VALUES ('20', '2', '0', '文章评论管理', '1', null, null, 'zmdi zmdi-collection-text', '1', '20', '20');
INSERT INTO `permission` VALUES ('21', '2', '20', '文章管理', '2', 'cms:article:read', '/manage/article/index', null, '1', '21', '21');
INSERT INTO `permission` VALUES ('22', '2', '20', '回收管理', '2', 'cms:article:read', '/manage/article/recycle', null, '1', '22', '22');
INSERT INTO `permission` VALUES ('24', '1', '2', '新增系统', '3', 'upms:system:create', '/manage/system/create', 'zmdi zmdi-plus', '1', '24', '24');
INSERT INTO `permission` VALUES ('25', '1', '2', '编辑系统', '3', 'upms:system:update', '/manage/system/update', 'zmdi zmdi-edit', '1', '25', '25');
INSERT INTO `permission` VALUES ('26', '1', '2', '删除系统', '3', 'upms:system:delete', '/manage/system/delete', 'zmdi zmdi-close', '1', '26', '26');
INSERT INTO `permission` VALUES ('27', '1', '3', '新增组织', '3', 'upms:organization:create', '/manage/organization/create', 'zmdi zmdi-plus', '1', '27', '27');
INSERT INTO `permission` VALUES ('28', '1', '3', '编辑组织', '3', 'upms:organization:update', '/manage/organization/update', 'zmdi zmdi-edit', '1', '28', '28');
INSERT INTO `permission` VALUES ('29', '1', '3', '删除组织', '3', 'upms:organization:delete', '/manage/organization/delete', 'zmdi zmdi-close', '1', '29', '29');
INSERT INTO `permission` VALUES ('30', '1', '6', '新增用户', '3', 'upms:user:create', '/manage/user/create', 'zmdi zmdi-plus', '1', '30', '30');
INSERT INTO `permission` VALUES ('31', '1', '6', '编辑用户', '3', 'upms:user:update', '/manage/user/update', 'zmdi zmdi-edit', '1', '31', '31');
INSERT INTO `permission` VALUES ('32', '1', '6', '删除用户', '3', 'upms:user:delete', '/manage/user/delete', 'zmdi zmdi-close', '1', '32', '32');
INSERT INTO `permission` VALUES ('33', '1', '5', '新增角色', '3', 'upms:role:create', '/manage/role/create', 'zmdi zmdi-plus', '1', '33', '33');
INSERT INTO `permission` VALUES ('34', '1', '5', '编辑角色', '3', 'upms:role:update', '/manage/role/update', 'zmdi zmdi-edit', '1', '34', '34');
INSERT INTO `permission` VALUES ('35', '1', '5', '删除角色', '3', 'upms:role:delete', '/manage/role/delete', 'zmdi zmdi-close', '1', '35', '35');
INSERT INTO `permission` VALUES ('36', '1', '39', '新增权限', '3', 'upms:permission:create', '/manage/permission/create', 'zmdi zmdi-plus', '1', '36', '36');
INSERT INTO `permission` VALUES ('37', '1', '39', '编辑权限', '3', 'upms:permission:update', '/manage/permission/update', 'zmdi zmdi-edit', '1', '37', '37');
INSERT INTO `permission` VALUES ('38', '1', '39', '删除权限', '3', 'upms:permission:delete', '/manage/permission/delete', 'zmdi zmdi-close', '1', '38', '38');
INSERT INTO `permission` VALUES ('39', '1', '7', '权限管理', '2', 'upms:permission:read', '/manage/permission/index', null, '1', '39', '39');
INSERT INTO `permission` VALUES ('46', '1', '5', '角色权限', '3', 'upms:role:permission', '/manage/role/permission', 'zmdi zmdi-key', '1', '1488091928257', '1488091928257');
INSERT INTO `permission` VALUES ('48', '1', '6', '用户组织', '3', 'upms:user:organization', '/manage/user/organization', 'zmdi zmdi-accounts-list', '1', '1488120011165', '1488120011165');
INSERT INTO `permission` VALUES ('50', '1', '6', '用户角色', '3', 'upms:user:role', '/manage/user/role', 'zmdi zmdi-accounts', '1', '1488120554175', '1488120554175');
INSERT INTO `permission` VALUES ('51', '1', '6', '用户权限', '3', 'upms:user:permission', '/manage/user/permission', 'zmdi zmdi-key', '1', '1488092013302', '1488092013302');
INSERT INTO `permission` VALUES ('53', '1', '14', '强制退出', '3', 'upms:session:forceout', '/manage/session/forceout', 'zmdi zmdi-run', '1', '1488379514715', '1488379514715');
INSERT INTO `permission` VALUES ('54', '2', '18', '新增标签', '3', 'cms:tag:create', '/manage/tag/create', 'zmdi zmdi-plus', '1', '1489417315159', '1489417315159');
INSERT INTO `permission` VALUES ('55', '2', '18', '编辑标签', '3', 'cms:tag:update', 'zmdi zmdi-edit', 'zmdi zmdi-widgets', '1', '1489417344931', '1489417344931');
INSERT INTO `permission` VALUES ('56', '2', '18', '删除标签', '3', 'cms:tag:delete', '/manage/tag/delete', 'zmdi zmdi-close', '1', '1489417372114', '1489417372114');
INSERT INTO `permission` VALUES ('57', '1', '15', '删除权限', '3', 'upms:log:delete', '/manage/log/delete', 'zmdi zmdi-close', '1', '1489503867909', '1489503867909');
INSERT INTO `permission` VALUES ('58', '2', '19', '编辑类目', '3', 'cms:category:update', '/manage/category/update', 'zmdi zmdi-edit', '1', '1489586600462', '1489586600462');
INSERT INTO `permission` VALUES ('59', '2', '19', '删除类目', '3', 'cms:category:delete', '/manage/category/delete', 'zmdi zmdi-close', '1', '1489586633059', '1489586633059');
INSERT INTO `permission` VALUES ('60', '2', '19', '新增类目', '3', 'cms:category:create', '/manage/category/create', 'zmdi zmdi-plus', '1', '1489590342089', '1489590342089');
INSERT INTO `permission` VALUES ('61', '2', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '1489835455359', '1489835455359');
INSERT INTO `permission` VALUES ('62', '2', '20', '评论管理', '2', 'cms:comment:read', '/manage/comment/index', '', '1', '1489591408224', '1489591408224');
INSERT INTO `permission` VALUES ('63', '2', '62', '删除评论', '3', 'cms:comment:delete', '/manage/comment/delete', 'zmdi zmdi-close', '1', '1489591449614', '1489591449614');
INSERT INTO `permission` VALUES ('64', '2', '79', '单页管理', '2', 'cms:page:read', '/manage/page/index', '', '1', '1489591332779', '1489591332779');
INSERT INTO `permission` VALUES ('65', '2', '64', '新增单页', '3', 'cms:page:create', '/manage/page/create', 'zmdi zmdi-plus', '1', '1489591614473', '1489591614473');
INSERT INTO `permission` VALUES ('66', '2', '64', '编辑单页', '3', 'cms:page:update', '/manage/page/update', 'zmdi zmdi-edit', '1', '1489591653000', '1489591653000');
INSERT INTO `permission` VALUES ('67', '2', '64', '删除单页', '3', 'cms:page:delete', '/manage/page/delete', 'zmdi zmdi-close', '1', '1489591683552', '1489591683552');
INSERT INTO `permission` VALUES ('68', '2', '61', '菜单管理', '2', 'cms:menu:read', '/manage/menu/index', 'zmdi zmdi-widgets', '1', '1489591746846', '1489591746846');
INSERT INTO `permission` VALUES ('69', '2', '68', '新增菜单', '3', 'cms:menu:create', '/manage/menu/create', 'zmdi zmdi-plus', '1', '1489591791747', '1489591791747');
INSERT INTO `permission` VALUES ('70', '2', '68', '编辑菜单', '3', 'cms:menu:update', '/manage/menu/update', 'zmdi zmdi-edit', '1', '1489591831878', '1489591831878');
INSERT INTO `permission` VALUES ('71', '2', '68', '删除菜单', '3', 'cms:menu:delete', '/manage/menu/delete', 'zmdi zmdi-close', '1', '1489591865454', '1489591865454');
INSERT INTO `permission` VALUES ('72', '2', '61', '系统设置', '2', 'cms:setting:read', '/manage/setting/index', 'zmdi zmdi-widgets', '1', '1489591981165', '1489591981165');
INSERT INTO `permission` VALUES ('73', '2', '72', '新增设置', '3', 'cms:setting:create', '/manage/setting/create', 'zmdi zmdi-plus', '1', '1489592024762', '1489592024762');
INSERT INTO `permission` VALUES ('74', '2', '72', '编辑设置', '3', 'cms:setting:update', '/manage/setting/update', 'zmdi zmdi-edit', '1', '1489592052582', '1489592052582');
INSERT INTO `permission` VALUES ('75', '2', '72', '删除设置', '3', 'cms:setting:delete', '/manage/setting/delete', 'zmdi zmdi-close', '1', '1489592081426', '1489592081426');
INSERT INTO `permission` VALUES ('76', '2', '21', '新增文章', '3', 'cms:article:create', '/manage/article/create', 'zmdi zmdi-plus', '1', '1489820150404', '1489820150404');
INSERT INTO `permission` VALUES ('77', '2', '21', '编辑文章', '3', 'cms:article:update', '/manage/article/update', 'zmdi zmdi-edit', '1', '1489820178269', '1489820178269');
INSERT INTO `permission` VALUES ('78', '2', '21', '删除文章', '3', 'cms:article:delete', '/manage/article/delete', 'zmdi zmdi-close', '1', '1489820207607', '1489820207607');
INSERT INTO `permission` VALUES ('79', '2', '0', '单页专题管理', '1', '', '', 'zmdi zmdi-view-web', '1', '1489835320327', '1489835320327');
INSERT INTO `permission` VALUES ('80', '2', '79', '专题管理', '2', 'cms:topic:read', '/manage/topic/index', 'zmdi zmdi-widgets', '1', '1489591507566', '1489591507566');
INSERT INTO `permission` VALUES ('81', '2', '80', '新增专题', '3', 'cms:topic:create', '/manage/topic/create', 'zmdi zmdi-plus', '1', '1489843327028', '1489843327028');
INSERT INTO `permission` VALUES ('82', '2', '80', '编辑专题', '3', 'cms:topic:update', '/manage/topic/update', 'zmdi zmdi-edit', '1', '1489843351513', '1489843351513');
INSERT INTO `permission` VALUES ('83', '2', '80', '删除专题', '3', 'cms:topic:delete', '/manage/topic/delete', 'zmdi zmdi-close', '1', '1489843379953', '1489843379953');
INSERT INTO `permission` VALUES ('84', '2', '68', '上移菜单', '3', 'cms:menu:up', '/manage/menu/up', 'zmdi zmdi-long-arrow-up', '1', '1489846486548', '1489846486548');
INSERT INTO `permission` VALUES ('85', '2', '68', '下移菜单', '3', 'cms:menu:down', '/manage/menu/down', 'zmdi zmdi-long-arrow-down', '1', '1489846578051', '1489846578051');
INSERT INTO `permission` VALUES ('86', '2', '0', '书籍内容管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1503988973237', '1503988973237');
INSERT INTO `permission` VALUES ('87', '2', '86', '书籍管理', '2', 'cms:book:read', '/manage/book/index', 'zmdi zmdi-widgets', '1', '1503989070127', '1503989070127');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `title` varchar(20) DEFAULT NULL COMMENT '角色标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '角色描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'super', '超级管理员', 'sdfwefwefwe', '1', '1');
INSERT INTO `role` VALUES ('2', 'admin', '管理员', '拥有除权限管理系统外的所有权限', '1487471013117', '1487471013117');
INSERT INTO `role` VALUES ('11', 'test', '测试人员', '拥有所有权限', '1506051191477', null);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`role_permission_id`),
  KEY `FK_Reference_23` (`role_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');
INSERT INTO `role_permission` VALUES ('5', '1', '5');
INSERT INTO `role_permission` VALUES ('6', '1', '6');
INSERT INTO `role_permission` VALUES ('7', '1', '7');
INSERT INTO `role_permission` VALUES ('8', '1', '39');
INSERT INTO `role_permission` VALUES ('12', '1', '12');
INSERT INTO `role_permission` VALUES ('14', '1', '14');
INSERT INTO `role_permission` VALUES ('15', '1', '15');
INSERT INTO `role_permission` VALUES ('17', '1', '17');
INSERT INTO `role_permission` VALUES ('19', '1', '19');
INSERT INTO `role_permission` VALUES ('20', '1', '20');
INSERT INTO `role_permission` VALUES ('21', '1', '21');
INSERT INTO `role_permission` VALUES ('24', '1', '24');
INSERT INTO `role_permission` VALUES ('27', '1', '27');
INSERT INTO `role_permission` VALUES ('28', '1', '28');
INSERT INTO `role_permission` VALUES ('29', '1', '29');
INSERT INTO `role_permission` VALUES ('30', '1', '30');
INSERT INTO `role_permission` VALUES ('31', '1', '31');
INSERT INTO `role_permission` VALUES ('32', '1', '32');
INSERT INTO `role_permission` VALUES ('33', '1', '33');
INSERT INTO `role_permission` VALUES ('34', '1', '34');
INSERT INTO `role_permission` VALUES ('35', '1', '35');
INSERT INTO `role_permission` VALUES ('36', '1', '36');
INSERT INTO `role_permission` VALUES ('37', '1', '37');
INSERT INTO `role_permission` VALUES ('38', '1', '38');
INSERT INTO `role_permission` VALUES ('39', '1', '46');
INSERT INTO `role_permission` VALUES ('40', '1', '51');
INSERT INTO `role_permission` VALUES ('44', '1', '48');
INSERT INTO `role_permission` VALUES ('45', '1', '50');
INSERT INTO `role_permission` VALUES ('47', '1', '53');
INSERT INTO `role_permission` VALUES ('48', '1', '18');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  `type` int(2) NOT NULL COMMENT '类型：1图片',
  `menu_id` int(11) DEFAULT NULL COMMENT '所属菜单ID',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='上传文件信息表';

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('19', '轮播1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('20', '1056607580.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('21', '1056607581.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('22', '1056607582.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('23', '1056607583.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('24', '1056607584.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('25', '1056607585.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('26', '1056607586.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('27', '1056607587.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('28', '1056607588.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('29', '1056607589.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('30', '1056607590.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('31', '1056607591.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('32', '1056607592.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('33', '1056607593.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('34', 'Array-CGH-1L_conew1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('35', 'Array-CGH-2L_conew1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('36', 'Array-CGH-3L_conew1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('37', 'imsi-1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('38', 'imsi-2.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('39', 'ivf-6_conew1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('40', '8FCB9F926F82C5E751AAA48ED339EB83.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('41', '20131114_130311.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('42', '20131114_191708.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('43', '照片 002.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('44', '002RFRr5zy7eS7mWBp6d8&690.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('45', '大姚县爱心活动1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('46', '广州公司黄腾峡漂流2.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('47', '昆明公司春游活动1.jpg', 'jpg', '1', null, '1');
INSERT INTO `upload` VALUES ('48', '塞班旅游.JPG', 'JPG', '1', null, '1');
INSERT INTO `upload` VALUES ('49', '泰国旅游考察1.JPG', 'JPG', '1', null, '1');
INSERT INTO `upload` VALUES ('50', '芽庄旅游1.JPG', 'JPG', '1', null, '1');

-- ----------------------------
-- Table structure for upload_element
-- ----------------------------
DROP TABLE IF EXISTS `upload_element`;
CREATE TABLE `upload_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_element
-- ----------------------------
INSERT INTO `upload_element` VALUES ('15', '2', '21');
INSERT INTO `upload_element` VALUES ('16', '3', '21');
INSERT INTO `upload_element` VALUES ('17', '5', '21');
INSERT INTO `upload_element` VALUES ('18', '6', '21');
INSERT INTO `upload_element` VALUES ('19', '2', '22');
INSERT INTO `upload_element` VALUES ('20', '3', '22');
INSERT INTO `upload_element` VALUES ('21', '6', '22');
INSERT INTO `upload_element` VALUES ('22', '5', '22');
INSERT INTO `upload_element` VALUES ('23', '5', '22');
INSERT INTO `upload_element` VALUES ('24', '3', '22');
INSERT INTO `upload_element` VALUES ('25', '6', '22');
INSERT INTO `upload_element` VALUES ('26', '6', '22');
INSERT INTO `upload_element` VALUES ('27', '5', '22');
INSERT INTO `upload_element` VALUES ('28', '19', '1');
INSERT INTO `upload_element` VALUES ('29', '20', '21');
INSERT INTO `upload_element` VALUES ('30', '21', '21');
INSERT INTO `upload_element` VALUES ('31', '22', '21');
INSERT INTO `upload_element` VALUES ('32', '23', '21');
INSERT INTO `upload_element` VALUES ('33', '24', '21');
INSERT INTO `upload_element` VALUES ('34', '25', '21');
INSERT INTO `upload_element` VALUES ('35', '26', '21');
INSERT INTO `upload_element` VALUES ('36', '27', '21');
INSERT INTO `upload_element` VALUES ('37', '28', '21');
INSERT INTO `upload_element` VALUES ('38', '29', '21');
INSERT INTO `upload_element` VALUES ('39', '30', '21');
INSERT INTO `upload_element` VALUES ('40', '31', '21');
INSERT INTO `upload_element` VALUES ('41', '32', '21');
INSERT INTO `upload_element` VALUES ('42', '33', '21');
INSERT INTO `upload_element` VALUES ('43', '34', '22');
INSERT INTO `upload_element` VALUES ('44', '35', '22');
INSERT INTO `upload_element` VALUES ('45', '36', '22');
INSERT INTO `upload_element` VALUES ('46', '37', '22');
INSERT INTO `upload_element` VALUES ('47', '37', '22');
INSERT INTO `upload_element` VALUES ('48', '39', '22');

-- ----------------------------
-- Table structure for upload_file
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态：1可用 0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传文件表';

-- ----------------------------
-- Records of upload_file
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) NOT NULL COMMENT '帐号',
  `password` varchar(32) NOT NULL COMMENT '密码MD5(密码+盐)',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐',
  `realname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(150) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `locked` tinyint(4) DEFAULT NULL COMMENT '状态(0:正常,1:锁定)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '3038D9CB63B3152A79B8153FB06C02F7', '66f1b370c660445a8657bf8bf1794486', '系统管理原', '/resources/ancient-admin/images/avatar.jpg', '', '469741414@qq.com', '1', '0', '1');
INSERT INTO `user` VALUES ('2', 'xjp', '285C9762F5F9046F5893F752DFAF3476', 'd2d0d03310444ad388a8b290b0fe8564', 'xjp', '/resources/ancient-admin/images/avatar.jpg', '', '469741414@qq.com', '1', '0', '1493394720495');

-- ----------------------------
-- Table structure for user_permission
-- ----------------------------
DROP TABLE IF EXISTS `user_permission`;
CREATE TABLE `user_permission` (
  `user_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  `type` tinyint(4) NOT NULL COMMENT '权限类型(-1:减权限,1:增权限)',
  PRIMARY KEY (`user_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户权限关联表';

-- ----------------------------
-- Records of user_permission
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `role_id` int(10) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('4', '1', '1');
INSERT INTO `user_role` VALUES ('5', '1', '2');
INSERT INTO `user_role` VALUES ('6', '2', '1');
INSERT INTO `user_role` VALUES ('7', '2', '2');
