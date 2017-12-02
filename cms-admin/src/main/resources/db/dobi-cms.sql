/*
Navicat MySQL Data Transfer

Source Server         : ivf
Source Server Version : 50558
Source Host           : 43.245.223.138:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2017-12-02 14:53:35
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
INSERT INTO `element` VALUES ('5', '试管咨询', '5', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='上传文件信息表';

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
INSERT INTO `upload` VALUES ('51', '企业风采2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('52', '企业风采1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('54', '企业风采3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('55', '企业风采4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('56', '企业风采5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('57', '企业风采6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('58', '企业风采7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('59', '企业风采8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('60', '企业风采9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('61', '企业风采10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('62', '企业风采11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('63', '企业风采12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('64', '企业风采13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('65', '企业风采14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('66', '员工风采1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('67', '员工风采2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('68', '员工风采3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('69', '员工风采4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('70', '员工风采5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('71', '员工风采6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('72', '员工风采7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('73', '员工风采8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('74', '员工风采9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('75', '员工风采10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('76', '员工风采11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('77', '员工风采12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('78', '员工风采13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('79', '员工风采14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('80', '塞班旅游1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('81', '塞班旅游2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('82', '塞班旅游3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('83', '塞班旅游4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('84', '塞班旅游5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('85', '塞班旅游6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('86', '塞班旅游7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('87', '塞班旅游8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('88', '塞班旅游9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('89', '塞班旅游10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('90', '塞班旅游11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('91', '塞班旅游12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('92', '塞班旅游13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('93', '塞班旅游14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('94', '塞班旅游15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('95', '塞班旅游16.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('96', '塞班旅游17.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('97', '塞班旅游18.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('98', '塞班旅游19.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('99', '塞班旅游20.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('100', '塞班旅游21.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('101', '塞班旅游22.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('102', '塞班旅游23.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('103', '塞班旅游24.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('104', '塞班旅游25.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('105', '塞班旅游26.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('106', '塞班旅游27.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('107', '塞班旅游28.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('108', '塞班旅游29.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('109', '塞班旅游30.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('110', '塞班旅游31.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('111', '塞班旅游32.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('112', '塞班旅游33.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('113', '塞班旅游34.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('114', '塞班旅游35.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('115', '塞班旅游36.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('116', '塞班旅游37.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('117', '塞班旅游38.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('118', '塞班旅游39.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('119', '塞班旅游40.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('120', '塞班旅游41.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('121', '塞班旅游42.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('122', '塞班旅游43.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('123', '塞班旅游44.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('124', '塞班旅游45.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('125', '塞班旅游46.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('126', '塞班旅游47.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('127', '塞班旅游48.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('128', '塞班旅游49.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('129', '塞班旅游50.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('130', '塞班旅游51.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('131', '塞班旅游52.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('132', '塞班旅游53.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('133', '大姚县爱心活动2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('134', '大姚县爱心活动3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('135', '大姚县爱心活动4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('136', '大姚县爱心活动5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('137', '大姚县爱心活动6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('138', '大姚县爱心活动7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('139', '大姚县爱心活动8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('140', '大姚县爱心活动9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('141', '大姚县爱心活动10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('142', '大姚县爱心活动11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('143', '大姚县爱心活动12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('144', '大姚县爱心活动13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('145', '大姚县爱心活动14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('146', '大姚县爱心活动15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('147', '大姚县爱心活动16.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('148', '大姚县爱心活动17.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('149', '大姚县爱心活动118.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('150', '大姚县爱心活动19.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('151', '大姚县爱心活动20.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('152', '大姚县爱心活动21.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('153', '大姚县爱心活动22.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('154', '大姚县爱心活动23.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('155', '大姚县爱心活动24.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('156', '大姚县爱心活动25.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('157', '大姚县爱心活动26.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('158', '大姚县爱心活动27.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('159', '大姚县爱心活动28.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('160', '大姚县爱心活动29.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('161', '广州公司1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('162', '广州公司2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('163', '广州公司3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('164', '广州公司4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('165', '广州公司5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('166', '广州公司6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('167', '广州公司7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('168', '广州公司8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('169', '广州公司9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('170', '广州公司10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('171', '广州公司11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('172', '广州公司12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('173', '广州公司黄腾峡漂流1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('174', '广州公司黄腾峡漂流3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('175', '广州公司黄腾峡漂流4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('176', '广州公司黄腾峡漂流5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('177', '广州公司黄腾峡漂流6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('178', '广州公司黄腾峡漂流7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('179', '广州公司黄腾峡漂流8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('180', '昆明公司1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('181', '昆明公司2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('182', '昆明公司3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('183', '昆明公司4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('184', '昆明公司5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('185', '昆明公司6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('186', '昆明公司7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('187', '昆明公司8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('188', '昆明公司春游活动2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('189', '昆明公司春游活动3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('190', '昆明公司春游活动4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('191', '昆明公司春游活动5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('192', '昆明公司春游活动6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('193', '昆明公司春游活动7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('194', '昆明公司春游活动8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('195', '昆明公司春游活动9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('196', '昆明公司春游活动10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('197', '昆明公司春游活动11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('198', '昆明公司春游活动12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('199', '武汉公司1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('200', '武汉公司2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('201', '武汉公司3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('202', '武汉公司4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('203', '武汉公司5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('204', '武汉公司6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('205', '武汉公司7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('206', '武汉公司8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('207', '武汉公司9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('208', '武汉公司10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('209', '武汉公司11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('210', '武汉公司12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('211', '武汉公司13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('212', '武汉公司14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('213', '武汉公司15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('214', '泰国公司1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('215', '泰国公司2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('216', '泰国公司3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('217', '泰国公司4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('218', '泰国公司5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('219', '泰国公司6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('220', '泰国旅游考察02.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('221', '泰国旅游考察03.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('222', '泰国旅游考察04.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('223', '泰国旅游考察05.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('224', '泰国旅游考察06.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('225', '泰国旅游考察07.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('226', '泰国旅游考察08.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('227', '泰国旅游考察09.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('228', '泰国旅游考察10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('229', '泰国旅游考察11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('230', '泰国旅游考察12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('231', '泰国旅游考察13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('232', '泰国旅游考察14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('233', '泰国旅游考察15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('234', '泰国旅游考察16.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('235', '泰国旅游考察17.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('236', '泰国旅游考察18.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('237', '泰国旅游考察19.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('238', '泰国旅游考察20.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('239', '泰国旅游考察21.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('240', '泰国旅游考察22.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('241', '泰国旅游考察23.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('242', '泰国旅游考察24.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('243', '泰国旅游考察25.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('244', '泰国旅游考察26.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('245', '泰国旅游考察27.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('246', '泰国旅游考察28.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('247', '泰国旅游考察29.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('248', '泰国旅游考察30.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('249', '泰国旅游考察31.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('250', '泰国旅游考察32.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('251', '泰国旅游考察33.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('252', '泰国旅游考察34.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('253', '泰国旅游考察35.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('254', '泰国旅游考察36.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('255', '泰国旅游考察37.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('256', '泰国旅游考察38.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('257', '泰国旅游考察39.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('258', '泰国旅游考察40.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('259', '泰国旅游考察41.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('260', '泰国旅游考察42.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('261', '泰国旅游考察43.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('262', '泰国旅游考察44.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('263', '泰国旅游考察45.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('264', '泰国旅游考察46.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('265', '泰国旅游考察47.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('266', '泰国旅游考察48.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('267', '泰国旅游考察49.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('268', '泰国旅游考察50.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('269', '泰国旅游考察51.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('270', '泰国旅游考察52.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('271', '泰国旅游考察53.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('272', '泰国旅游考察54.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('273', '生殖中心1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('274', '生殖中心2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('275', '生殖中心3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('276', '生殖中心4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('277', '生殖中心5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('278', '生殖中心6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('279', '生殖中心7.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('280', '生殖中心8.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('281', '生殖中心9.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('282', '生殖中心10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('283', '生殖中心11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('284', '生殖中心12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('285', '生殖中心13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('286', '生殖中心14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('287', '生殖中心15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('288', '生殖中心16.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('289', '生殖中心17.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('290', '生殖中心18.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('291', '生殖中心19.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('292', '生殖中心20.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('293', '生殖中心21.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('294', '生殖中心22.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('295', '生殖中心23.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('296', '生殖中心24.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('297', '生殖中心25.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('298', '生殖中心26.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('299', '生殖中心27.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('300', '生殖中心28.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('301', '生殖中心29.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('302', '芽庄旅游02.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('303', '芽庄旅游03.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('304', '芽庄旅游04.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('305', '芽庄旅游05.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('306', '芽庄旅游06.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('307', '芽庄旅游07.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('308', '芽庄旅游08.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('309', '芽庄旅游09.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('310', '芽庄旅游10.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('311', '芽庄旅游11.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('312', '芽庄旅游12.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('313', '芽庄旅游13.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('314', '芽庄旅游14.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('315', '芽庄旅游15.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('316', '芽庄旅游16.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('317', '芽庄旅游17.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('318', '芽庄旅游18.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('319', '芽庄旅游19.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('320', '芽庄旅游20.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('321', '芽庄旅游21.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('322', '长沙公司1.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('323', '长沙公司2.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('324', '长沙公司3.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('325', '长沙公司4.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('326', '长沙公司5.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('327', '长沙公司6.jpg', 'jpg', '1', '2', '1');
INSERT INTO `upload` VALUES ('328', '??.jpg', 'jpg', '1', null, '1');

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
