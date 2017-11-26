/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : dobi-cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-26 09:15:41
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', 'test', '<p><img src=\"http://localhost:8000/upload/351825-106.jpg\"/>测试文章管理<br/></p>', '2017-11-20 16:36:34', '4', '试管资讯', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('3', 'test2', '<p>s<strong>dfseverbe</strong><br/></p>', '2017-11-22 13:58:20', '2', '服务项目', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('4', 'test33', '<p>sdfwewegewvrebrtbrtbr</p><p><img src=\"http://localhost:8000/upload/89441-106%20(2).jpg\"/></p>', '2017-11-22 14:28:50', '3', '成功案例', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('5', 'test44', '<p>sdfsvee<br/></p>', '2017-11-22 14:30:46', '2', '服务项目', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('6', '第三方辅助生殖（捐卵、代孕）', '<p><strong><span style=\"font-family: 宋体;font-size: 14pxfont-family:宋体\">第三方辅助生殖（捐卵、代孕）</span></strong><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">&nbsp; &nbsp;第三方辅助生殖是指将早期胚胎植入志愿者子宫，由志愿者替他人完成“十月怀胎，一朝分娩”的过程。当今社会无论是工作上还是生活中，各种压力与日俱增，患不孕不育的患者越来越多，很多的人通过试管婴儿技术解决了不孕的难题，但是对于没有子宫或患有子宫疾病的女性来说，要完成孕育的过程是一个不可能完成的任务，因此“代孕”的出现，是生物医学的进步与人类情感的结合，代孕也是一个伟大而光荣的职业。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">技术介绍</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\"><span style=\"font-family:宋体\">　　第三方辅助生殖并不涉及到身体接触，属于辅助生殖技术，是解决不孕不育的一种临床选择。是通过试管婴儿技术把受精卵培养至第五天，对囊胚进行</span>PGS/PGD遗传学疾病的筛查诊断，然后将健康的胚胎移植到孕母子宫腔，一般分为四种情况：</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.精子、卵子来自夫妻双方借用孕母的子宫;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.精子来自丈夫，卵子由第三方提供(捐卵);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.精子、卵子均由第三方提供(捐卵、捐精);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.精子由第三方提供，卵子由妻子提供。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">适合人群</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.患有其他疾病，需要及时治疗，且有可能不能生育的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.有生育能力，但是想要双胞胎，自身状况不适合的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.不想自己生育或者因为某些原因而不能正常生育的特殊人群(如：影视明星、政府官员等);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.同性爱人士。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　　</span></strong><strong></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">代孕志愿者的条件</span></strong></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">1. 年龄在23-35岁</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">2. 身体健康，无传染病及遗传病</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">3. 身高158CM以上的经产妇</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">4. 愿意帮助不孕不育患者完成孕产整个流程</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">5. 不超过两次的剖腹产</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">6. 经济上和精神上稳定</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">7. 有良好的健康背景</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">8.不吸烟、不喝酒、不吸毒</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">9. 没有滥用药物的历史</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">10. 无流产史及妊娠综合征</span><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><br/></p>', '2017-11-25 14:15:14', '2', '服务项目', 'http://localhost:8000/upload/003fprYBzy6K9NHJuDl67.jpg', '1');
INSERT INTO `article` VALUES ('7', '1111', '<p>sdfd</p>', '2017-11-25 16:18:24', '3', '成功案例', '', '1');
INSERT INTO `article` VALUES ('8', '卵巢回春', null, '2017-11-25 17:07:00', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('9', '定格青春-面部年轻化', null, '2017-11-25 17:09:41', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('10', '肾阳泰', null, '2017-11-25 17:09:54', '6', '干细胞', '', '1');
INSERT INTO `article` VALUES ('11', 'test', '<p><img src=\"http://localhost:8000/upload/351825-106.jpg\"/>测试文章管理<br/></p>', '2017-11-20 16:36:34', '5', '员工风采', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('13', 'test2', '<p>s<strong>dfseverbe</strong><br/></p>', '2017-11-22 13:58:20', '5', '员工风采', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('14', 'test33', '<p>sdfwewegewvrebrtbrtbr</p><p><img src=\"http://localhost:8000/upload/89441-106%20(2).jpg\"/></p>', '2017-11-22 14:28:50', '5', '员工风采', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('15', 'test44', '<p>sdfsvee<br/></p>', '2017-11-22 14:30:46', '5', '员工风采', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('16', '第三方辅助生殖（捐卵、代孕）', '<p><strong><span style=\"font-family: 宋体;font-size: 14pxfont-family:宋体\">第三方辅助生殖（捐卵、代孕）</span></strong><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">&nbsp; &nbsp;第三方辅助生殖是指将早期胚胎植入志愿者子宫，由志愿者替他人完成“十月怀胎，一朝分娩”的过程。当今社会无论是工作上还是生活中，各种压力与日俱增，患不孕不育的患者越来越多，很多的人通过试管婴儿技术解决了不孕的难题，但是对于没有子宫或患有子宫疾病的女性来说，要完成孕育的过程是一个不可能完成的任务，因此“代孕”的出现，是生物医学的进步与人类情感的结合，代孕也是一个伟大而光荣的职业。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">技术介绍</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\"><span style=\"font-family:宋体\">　　第三方辅助生殖并不涉及到身体接触，属于辅助生殖技术，是解决不孕不育的一种临床选择。是通过试管婴儿技术把受精卵培养至第五天，对囊胚进行</span>PGS/PGD遗传学疾病的筛查诊断，然后将健康的胚胎移植到孕母子宫腔，一般分为四种情况：</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.精子、卵子来自夫妻双方借用孕母的子宫;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.精子来自丈夫，卵子由第三方提供(捐卵);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.精子、卵子均由第三方提供(捐卵、捐精);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.精子由第三方提供，卵子由妻子提供。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">适合人群</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.患有其他疾病，需要及时治疗，且有可能不能生育的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.有生育能力，但是想要双胞胎，自身状况不适合的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.不想自己生育或者因为某些原因而不能正常生育的特殊人群(如：影视明星、政府官员等);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.同性爱人士。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　　</span></strong><strong></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">代孕志愿者的条件</span></strong></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">1. 年龄在23-35岁</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">2. 身体健康，无传染病及遗传病</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">3. 身高158CM以上的经产妇</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">4. 愿意帮助不孕不育患者完成孕产整个流程</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">5. 不超过两次的剖腹产</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">6. 经济上和精神上稳定</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">7. 有良好的健康背景</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">8.不吸烟、不喝酒、不吸毒</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">9. 没有滥用药物的历史</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">10. 无流产史及妊娠综合征</span><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><br/></p>', '2017-11-25 14:15:14', '5', '员工风采', 'http://localhost:8000/upload/003fprYBzy6K9NHJuDl67.jpg', '1');
INSERT INTO `article` VALUES ('17', '1111', '<p>sdfd</p>', '2017-11-25 16:18:24', '5', '员工风采', '', '1');
INSERT INTO `article` VALUES ('21', 'dsfwfew', '<p>wefewrge</p>', '2017-11-26 00:15:03', '1', '分公司', '350902-106.jpg', '1');
INSERT INTO `article` VALUES ('22', 'test', '<p><img src=\"http://localhost:8000/upload/351825-106.jpg\"/>测试文章管理<br/></p>', '2017-11-20 16:36:34', '1', '分公司', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('23', 'test2', '<p>s<strong>dfseverbe</strong><br/></p>', '2017-11-22 13:58:20', '1', '分公司', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('24', 'test33', '<p>sdfwewegewvrebrtbrtbr</p><p><img src=\"http://localhost:8000/upload/89441-106%20(2).jpg\"/></p>', '2017-11-22 14:28:50', '1', '分公司', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('25', 'test44', '<p>sdfsvee<br/></p>', '2017-11-22 14:30:46', '1', '分公司', '	http://localhost:8000/upload/351825-106.jpg', '1');
INSERT INTO `article` VALUES ('26', '第三方辅助生殖（捐卵、代孕）', '<p><strong><span style=\"font-family: 宋体;font-size: 14pxfont-family:宋体\">第三方辅助生殖（捐卵、代孕）</span></strong><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">&nbsp; &nbsp;第三方辅助生殖是指将早期胚胎植入志愿者子宫，由志愿者替他人完成“十月怀胎，一朝分娩”的过程。当今社会无论是工作上还是生活中，各种压力与日俱增，患不孕不育的患者越来越多，很多的人通过试管婴儿技术解决了不孕的难题，但是对于没有子宫或患有子宫疾病的女性来说，要完成孕育的过程是一个不可能完成的任务，因此“代孕”的出现，是生物医学的进步与人类情感的结合，代孕也是一个伟大而光荣的职业。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">技术介绍</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\"><span style=\"font-family:宋体\">　　第三方辅助生殖并不涉及到身体接触，属于辅助生殖技术，是解决不孕不育的一种临床选择。是通过试管婴儿技术把受精卵培养至第五天，对囊胚进行</span>PGS/PGD遗传学疾病的筛查诊断，然后将健康的胚胎移植到孕母子宫腔，一般分为四种情况：</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.精子、卵子来自夫妻双方借用孕母的子宫;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.精子来自丈夫，卵子由第三方提供(捐卵);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.精子、卵子均由第三方提供(捐卵、捐精);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.精子由第三方提供，卵子由妻子提供。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">适合人群</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　1.患有其他疾病，需要及时治疗，且有可能不能生育的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　2.有生育能力，但是想要双胞胎，自身状况不适合的人群;</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　3.不想自己生育或者因为某些原因而不能正常生育的特殊人群(如：影视明星、政府官员等);</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">　　4.同性爱人士。</span></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">　　</span></strong><strong></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14px\">&nbsp;</span></strong></p><p style=\"line-height: 26px;background: rgb(247, 247, 247)\"><strong><span style=\"font-family: 宋体;color: rgb(0, 0, 0);font-size: 14pxfont-family:宋体\">代孕志愿者的条件</span></strong></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">1. 年龄在23-35岁</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">2. 身体健康，无传染病及遗传病</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">3. 身高158CM以上的经产妇</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">4. 愿意帮助不孕不育患者完成孕产整个流程</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">5. 不超过两次的剖腹产</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">6. 经济上和精神上稳定</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">7. 有良好的健康背景</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">8.不吸烟、不喝酒、不吸毒</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">9. 没有滥用药物的历史</span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:14px\">10. 无流产史及妊娠综合征</span><strong></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: Calibri;font-size: 14px\">&nbsp;</span></strong></p><p><br/></p>', '2017-11-25 14:15:14', '1', '分公司', 'http://localhost:8000/upload/003fprYBzy6K9NHJuDl67.jpg', '1');
INSERT INTO `article` VALUES ('27', '1111', '<p>sdfd</p>', '2017-11-25 16:18:24', '1', '分公司', '', '1');
