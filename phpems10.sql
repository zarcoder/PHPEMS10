/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : phpems

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 05/05/2025 18:34:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x2_answer
-- ----------------------------
DROP TABLE IF EXISTS `x2_answer`;
CREATE TABLE `x2_answer` (
  `asrid` int NOT NULL AUTO_INCREMENT,
  `asruserid` int DEFAULT NULL,
  `asraskid` int DEFAULT NULL,
  `asrcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `asrtime` int DEFAULT NULL,
  `asrstatus` int DEFAULT NULL,
  PRIMARY KEY (`asrid`) USING BTREE,
  KEY `asruserid` (`asruserid`) USING BTREE,
  KEY `asraskid` (`asraskid`) USING BTREE,
  KEY `asrstatus` (`asrstatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_answer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_app
-- ----------------------------
DROP TABLE IF EXISTS `x2_app`;
CREATE TABLE `x2_app` (
  `appid` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `appname` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `appthumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `appstatus` int NOT NULL DEFAULT '0',
  `appsetting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`appid`) USING BTREE,
  KEY `appstatus` (`appstatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_app
-- ----------------------------
BEGIN;
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('user', '用户', 'files/attach/images/content/20130401/13647895355562.png.png', 1, 'a:9:{s:11:\"closeregist\";s:1:\"1\";s:9:\"registype\";s:1:\"0\";s:11:\"managemodel\";s:1:\"1\";s:10:\"loginmodel\";s:1:\"1\";s:11:\"emailverify\";s:1:\"0\";s:12:\"emailaccount\";s:0:\"\";s:13:\"emailpassword\";s:0:\"\";s:9:\"regfields\";s:11:\"useraddress\";s:9:\"outfields\";s:11:\"useraddress\";}');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('exam', '考试', '*value*', 1, 'a:2:{s:10:\"autorecord\";s:1:\"0\";s:14:\"recordperiodic\";s:0:\"\";}');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('seminar', '专题', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('core', '全局', '*value*', 1, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('document', '文件', '*value*', 1, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('content', '内容', '*value*', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('item', '商品', 'app/core/styles/images/noimage.gif', 1, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('weixin', '微信', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('bank', '财务', '*value*', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('course', '课程', '*value*', 1, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('certificate', '证书', 'files/attach/images/content/20190912/15683023154368.jpg', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('docs', '文档', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('autoform', '表单', 'files/attach/images/content/20191104/15728805945530.jpg', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('job', '招聘', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('ask', '问答', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('info', '信息', 'app/core/styles/images/noimage.gif', 1, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('survey', '调查', 'app/core/styles/images/noimage.gif', 0, '');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('shop', '餐厅', 'app/core/styles/images/noimage.gif', 1, 'a:13:{s:8:\"webtitle\";s:12:\"海鲜烧烤\";s:8:\"telphone\";s:11:\"13800138000\";s:12:\"openprovince\";s:6:\"410000\";s:8:\"opencity\";s:6:\"410700\";s:8:\"openarea\";s:6:\"410702\";s:7:\"address\";s:9:\"洪门镇\";s:8:\"webmajor\";s:9:\"中餐厅\";s:12:\"itemlisttype\";s:1:\"1\";s:4:\"locx\";d:113.933081;s:4:\"locy\";d:35.284830999999997;s:12:\"shopdescribe\";s:31:\"&lt;p&gt;海鲜烧烤&lt;/p&gt;\";s:7:\"website\";a:17:{s:8:\"webtitle\";s:18:\"海鲜烧烤店铺\";s:8:\"telphone\";s:11:\"13800138000\";s:12:\"openprovince\";s:6:\"410000\";s:8:\"opencity\";s:6:\"410700\";s:8:\"openarea\";s:6:\"410702\";s:7:\"address\";s:9:\"洪门镇\";s:8:\"webmajor\";s:9:\"中餐厅\";s:12:\"itemlisttype\";s:1:\"1\";s:4:\"locx\";d:113.933094;s:4:\"locy\";d:35.284868000000003;s:12:\"shopdescribe\";s:31:\"&lt;p&gt;海鲜烧烤&lt;/p&gt;\";s:13:\"shopadvstring\";s:18:\"海鲜烧烤店铺\";s:12:\"qrcodestring\";s:18:\"海鲜烧烤店铺\";s:10:\"shopappurl\";s:21:\"http://www.phpems.net\";s:15:\"shopworkingtime\";a:4:{i:0;a:3:{s:4:\"name\";s:6:\"早市\";s:9:\"starttime\";s:5:\"04:00\";s:7:\"endtime\";s:5:\"10:00\";}i:1;a:3:{s:4:\"name\";s:6:\"午市\";s:9:\"starttime\";s:7:\"11：00\";s:7:\"endtime\";s:7:\"15：00\";}i:2;a:3:{s:4:\"name\";s:6:\"晚市\";s:9:\"starttime\";s:7:\"17：00\";s:7:\"endtime\";s:7:\"21：00\";}i:3;a:3:{s:4:\"name\";s:6:\"夜宵\";s:9:\"starttime\";s:7:\"22：00\";s:7:\"endtime\";s:7:\"02：00\";}}s:10:\"shoppdtime\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:13:\"shoptabletype\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"6\";i:4;s:1:\"8\";i:5;s:2:\"16\";}}s:4:\"shop\";a:6:{s:13:\"shopadvstring\";s:18:\"海鲜烧烤店铺\";s:12:\"qrcodestring\";s:18:\"海鲜烧烤店铺\";s:10:\"shopappurl\";s:21:\"http://www.phpems.net\";s:15:\"shopworkingtime\";a:4:{i:0;a:4:{s:4:\"name\";s:6:\"早市\";s:9:\"starttime\";s:5:\"04:00\";s:7:\"endtime\";s:5:\"09:00\";s:7:\"disable\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"午市\";s:9:\"starttime\";s:7:\"11：00\";s:7:\"endtime\";s:7:\"15：00\";s:7:\"disable\";s:1:\"1\";}i:2;a:3:{s:4:\"name\";s:6:\"晚市\";s:9:\"starttime\";s:7:\"17：00\";s:7:\"endtime\";s:7:\"21：00\";}i:3;a:3:{s:4:\"name\";s:6:\"夜宵\";s:9:\"starttime\";s:7:\"22：00\";s:7:\"endtime\";s:7:\"02：00\";}}s:10:\"shoppdtime\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:13:\"shoptabletype\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"6\";i:4;s:1:\"8\";}}}');
INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES ('enroll', '报名', 'app/core/styles/images/noimage.gif', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_area
-- ----------------------------
DROP TABLE IF EXISTS `x2_area`;
CREATE TABLE `x2_area` (
  `areaid` int NOT NULL AUTO_INCREMENT,
  `area` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `areacode` int NOT NULL DEFAULT '0',
  `arealevel` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`) USING BTREE,
  KEY `area` (`area`,`arealevel`) USING BTREE,
  KEY `areacode` (`areacode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_area
-- ----------------------------
BEGIN;
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (5, '陕西', 29, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (6, '河北', 311, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (7, '天津', 22, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (8, '山东', 531, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (9, '江苏', 25, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (10, '湖北', 27, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (11, '辽宁', 24, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (12, '贵州', 851, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (13, '北京', 1001, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (14, '云南', 871, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (15, '四川', 28, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (16, '安徽', 551, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (17, '深圳', 755, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (18, '吉林', 431, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (19, '广东', 20, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (20, '新疆', 991, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (21, '广西', 771, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (22, '福建', 591, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (23, '湖南', 731, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (24, '上海', 21, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (25, '重庆', 23, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (26, '江西', 791, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (27, '浙江', 571, 0);
INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES (28, '山西', 351, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_ask
-- ----------------------------
DROP TABLE IF EXISTS `x2_ask`;
CREATE TABLE `x2_ask` (
  `askid` int NOT NULL AUTO_INCREMENT,
  `askuserid` int DEFAULT NULL,
  `asktitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `asktime` int DEFAULT NULL,
  `askcoin` int DEFAULT NULL,
  `askcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `askisshow` int DEFAULT NULL,
  `askstatus` int DEFAULT NULL,
  `askorder` int DEFAULT NULL,
  PRIMARY KEY (`askid`) USING BTREE,
  KEY `askuserid` (`askuserid`) USING BTREE,
  KEY `askstatus` (`askstatus`) USING BTREE,
  KEY `askisshow` (`askisshow`) USING BTREE,
  KEY `askorder` (`askorder`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_ask
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_attach
-- ----------------------------
DROP TABLE IF EXISTS `x2_attach`;
CREATE TABLE `x2_attach` (
  `attid` int NOT NULL AUTO_INCREMENT,
  `attpath` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `atttitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `attext` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `attinputtime` int NOT NULL DEFAULT '0',
  `attsize` int NOT NULL DEFAULT '0',
  `attmd5` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `attuserid` int NOT NULL DEFAULT '0',
  `attcntype` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`attid`) USING BTREE,
  KEY `attext` (`attext`,`attinputtime`) USING BTREE,
  KEY `attuserid` (`attuserid`) USING BTREE,
  KEY `attcntype` (`attcntype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_attach
-- ----------------------------
BEGIN;
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (1, 'files/attach/images/content/20241017/17291338997515.jpg', '410182197507147553zp.jpg', 'jpg', 1729133899, 21216, '', 1, 'image/jpeg');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (2, 'files/attach/images/content/20241017/17291371345207.png', 'true.png', 'png', 1729137134, 12692, '', 1, 'image/png');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (3, 'files/attach/images/content/20250306/17412492911592.jpg', '49th ICPC.jpg', 'jpg', 1741249291, 8685817, '', 1, 'image/jpeg');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (4, 'files/attach/images/content/20250317/17421816583891.png', 'NOIP_Image.png', 'png', 1742181658, 970143, '', 1, 'image/png');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (5, 'files/attach/images/content/20250317/17421823416572.jpg', '1M-证件照.jpg', 'jpg', 1742182341, 892518, '', 1, 'image/jpeg');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (6, 'files/attach/images/content/20250317/17421824256103.jpg', 'Gauss-cartoon.jpg', 'jpg', 1742182425, 76989, '', 1, 'image/jpeg');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (7, 'files/attach/images/content/20250317/17421855177163.png', 'NEU-ACM.png', 'png', 1742185517, 161496, '', 1, 'image/png');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (8, 'files/attach/images/content/20250317/17421992562542.csv', '工作簿1.csv', 'csv', 1742199256, 1988, '', 1, 'text/csv');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (9, 'files/attach/images/content/20250317/17421993202644.csv', '工作簿1.csv', 'csv', 1742199320, 1491, '', 1, 'text/csv');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (10, 'files/attach/images/content/20250317/17421994777110.csv', '工作簿1.csv', 'csv', 1742199477, 1464, '', 1, 'text/csv');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (11, 'files/attach/images/content/20250317/17422001416027.csv', '工作簿1.csv', 'csv', 1742200141, 1402, '', 1, 'text/csv');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (12, 'files/attach/files/content/20250321/17425451413831.png', 'vector.png', 'png', 1742545141, 589986, '', 1, 'image/png');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (13, 'files/attach/images/content/20250504/17463495565758.png', '教师.png', 'png', 1746349556, 2211776, '', 1, 'image/png');
INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES (14, 'files/attach/images/content/20250504/17463496398903.png', '学生.png', 'png', 1746349639, 1873707, '', 1, 'image/png');
COMMIT;

-- ----------------------------
-- Table structure for x2_attachtype
-- ----------------------------
DROP TABLE IF EXISTS `x2_attachtype`;
CREATE TABLE `x2_attachtype` (
  `atid` int NOT NULL AUTO_INCREMENT,
  `attachtype` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `attachexts` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`atid`) USING BTREE,
  KEY `attachtype` (`attachtype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_attachtype
-- ----------------------------
BEGIN;
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (1, '图片', 'jpg,png,gif,bmp');
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (2, '音频', 'mp3');
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (3, '多媒体', 'flv,wmv,mp4,avi');
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (4, '批量导入文件', 'csv,xls,xlsx');
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (5, '文字类', 'pdf');
INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES (6, '压缩文件', 'zip,rar');
COMMIT;

-- ----------------------------
-- Table structure for x2_basic
-- ----------------------------
DROP TABLE IF EXISTS `x2_basic`;
CREATE TABLE `x2_basic` (
  `basicid` int NOT NULL AUTO_INCREMENT,
  `basic` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `basicareaid` int NOT NULL DEFAULT '0',
  `basicsubjectid` int NOT NULL DEFAULT '0',
  `basicsection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `basicknows` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `basicexam` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `basicapi` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `basicdemo` int NOT NULL DEFAULT '0',
  `basicthumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `basicprice` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `basicclosed` int NOT NULL DEFAULT '0',
  `basictop` int DEFAULT NULL,
  `basicdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`basicid`) USING BTREE,
  KEY `basicexamid` (`basicareaid`) USING BTREE,
  KEY `basicsubjectid` (`basicsubjectid`) USING BTREE,
  KEY `basicapi` (`basicapi`) USING BTREE,
  KEY `basicdemo` (`basicdemo`) USING BTREE,
  KEY `basicclosed` (`basicclosed`) USING BTREE,
  KEY `basictop` (`basictop`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_basic
-- ----------------------------
BEGIN;
INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`, `basictop`, `basicdescribe`) VALUES (1, '计算机考试', 5, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:2:{i:1;s:1:\"1\";i:2;s:1:\"2\";}}', 'a:16:{s:9:\"rulemodel\";s:1:\"0\";s:5:\"model\";s:1:\"2\";s:14:\"changesequence\";s:1:\"1\";s:4:\"auto\";s:3:\"1,2\";s:12:\"autotemplate\";s:15:\"exampaper_paper\";s:4:\"self\";s:1:\"3\";s:12:\"selftemplate\";s:10:\"exam_paper\";s:5:\"batch\";s:0:\"\";s:8:\"opentime\";a:2:{s:5:\"start\";i:1742198190;s:3:\"end\";i:1743325500;}s:10:\"selectrule\";s:1:\"0\";s:10:\"faceverify\";s:1:\"0\";s:10:\"fullsubmit\";s:1:\"0\";s:10:\"unjointime\";s:0:\"\";s:10:\"examnumber\";s:1:\"1\";s:12:\"notviewscore\";s:1:\"1\";s:10:\"allowgroup\";s:0:\"\";}', '', 1, 'files/attach/images/content/20250504/17463495565758.png', '1:1', 0, NULL, '本考场为PHPEMS系统演示考场');
INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`, `basictop`, `basicdescribe`) VALUES (38, '电子考试', 5, 2, '', '', '', '', 1, 'files/attach/images/content/20250504/17463496398903.png', '', 0, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_block
-- ----------------------------
DROP TABLE IF EXISTS `x2_block`;
CREATE TABLE `x2_block` (
  `blockid` int NOT NULL AUTO_INCREMENT,
  `block` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `blocktype` int NOT NULL DEFAULT '0',
  `blockposition` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `blockcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`blockid`) USING BTREE,
  KEY `blocktype` (`blocktype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_block
-- ----------------------------
BEGIN;
INSERT INTO `x2_block` (`blockid`, `block`, `blocktype`, `blockposition`, `blockcontent`) VALUES (1, '注册协议', 1, '注册页面', 'a:1:{s:7:\"content\";s:52765:\"&lt;div class=&quot;content&quot;&gt;\r\n&lt;p class=&quot;daoyu&quot;&gt;一、用户条款内容&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）本协议内容包括协议正文及所有xxx已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，xxx提供的服务均受本协议约束。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）您应当在使用xxx服务之前认真阅读全部协议内容。如您对协议有任何疑问，应向xxx咨询。但无论您事实上是否在使用xxx服务之前认真阅读了本协议内容，只要您使用xxx服务，则本协议即对您产生约束，届时您不能以未阅读本协议的内容或者未获得xxx对您问询的解答等理由，主张本协议无效，或要求撤销本协议。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）您承诺接受并遵守本协议的约定。如果您违反本协议约定的内容，您应立即停止注册程序或停止使用xxx服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）xxx有权根据需要不定时地制订、修改本协议及各类规则，并以网站公示的方式进行公告，不再另行通知，用户可随时在xxx网站查阅版服务协议。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更内容，应当提出并立即停止使用xxx服务。如您继续使用xxx服务的，即表示您对修改的协议无异议并接受。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）本协议适用于xxx提供的各种服务，但当用户使用xxx的某一特定服务时，如该服务另有单独的服务条款、指引或规则，用户应遵守本服务条款及xxx随时公布的与该服务相关的服务条款、指引或规则等。&lt;/p&gt;\r\n\r\n&lt;p&gt;二、用户注册&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）注册者资格：在您完成注册程序或以其他xxx公司允许的方式实际使用xxx服务时，您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）注册信息：为了您更好的体验xxx服务及接受xxx的合规性监管，用户注册时应当提供真实、正确、完整的单位或个人资料并及时更新，因虚假或者滞后的单位和个人资料所造成的损失由用户自行承担。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）账户：账户设置用户名和密码，通过该用户名密码或与该用户名密码关联的其它用户名密码登录xxx。您设置的用户名不得侵犯或涉嫌侵犯他人合法权益。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）您应对您的账户（用户名和密码）安全，以及对通过您的账户实施的行为负责。除非有法律规定或司法裁定，且征得xxx的同意，否则，账户不得以任何方式转让、赠与或 继承 （与账户相关的财产权益除外）。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时，您应当立即以有效方式通知，要求xxx暂停相关服务。请您理解xxx对您的请求采取相应措施，在采取措施前已经产生的后果（包括但不限于您的任何损失）不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;三、用户管理&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）您在本网站的所有行为都须符合中国的法律 法规 ，您不得利用本网站提供的服务制作、复制、发布、传播以下信息：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、反对 宪法 基本原则的；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、危害国家安全、泄露国家秘密、颠覆国家政权、破坏国家统一的；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、损害国家荣誉和利益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、煽动民族仇恨、民族歧视、破坏民族团结的；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;/p&gt;\r\n\r\n&lt;p&gt;6、散布谣言、扰乱社会秩序、破坏社会稳定的；&lt;/p&gt;\r\n\r\n&lt;p&gt;7、散布淫秽、色情、赌博、暴力、凶杀、恐怖内容或者教唆犯罪的；&lt;/p&gt;\r\n\r\n&lt;p&gt;8、侮辱或者诽谤他人，侵害他人合法权益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;9、以及法律、法规禁止的其他内容。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）您在本网站的行为，还必须符合其它国家和地区的法律规定以及国际法的有关规定。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）不得利用本网站从事以下活动：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、未经允许，进入他人计算机信息网络或者使用他人计算机信息网络的资源；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、未经允许，对他人计算机信息网络的功能进行删除、修改或增加；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、未经允许，对他人计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、制作、故意传播计算机病毒等破坏性程序的；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、其他危害计算机信息网络安全的行为。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）遵守本网站其他规定和程序：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、您对自己在本网站中的行为和操作承担全部责任；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、您承担责任的形式包括但不仅限于，对受到侵害者进行赔偿、在本网站首先承担了因您的行为导致的 行政处罚 或侵权损害赔偿责任后，您应给予本网站的等额赔偿；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、如果本网站发现您传输的信息含有本协议所规定的内容，本网站有权在不通知您的情况下采取包括但不仅限于向国家有关机关报告、保存有关记录、删除该内容及链接地址、关闭服务器、暂停您账号的操作权限、停止向您提供服务等措施。&lt;/p&gt;\r\n\r\n&lt;p&gt;四、注册会员权利和义务&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）注册会员有权用本网站提供的服务功能。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）注册会员同意遵守包括但不仅限于《中华人民共和国国保守国家秘密法》、《中华人民共和国国计算机信息系统安全保护条例》、《计算机软件保护条例》、《互联网电子公告服务管理规定》、《互联网信息服务管理办法》等在内的法律、法规。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）您注册时有义务提供完整、真实、的个人信息，信息如有变更，应及时更新。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）您成为注册会员须妥善保管用户名和密码，用户登录后进行的一切活动均视为是您本人的行为和意愿，您负全部责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）您在使用本网站服务时，同意且接受本网站提供的各类信息服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;（六）您使用本网站时，禁止有以下行为：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、上载、张贴、发送电子邮件或以其他方式传送含有违反国家法律、法规的信息或资料，这些资料包括但不仅限于资讯、资料、文字、软件、音乐、照片、图形、等（下同）；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的资料；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、冒充任何个人或机构，或以虚伪不实的方式误导他人以为其与任何人或任何机构有关；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、通过本网站干扰、破坏或限制他人计算机软件、硬件或通讯设备功能的行为；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、通过本网站跟踪或以其他方式骚扰他人。&lt;/p&gt;\r\n\r\n&lt;p&gt;五、用户隐私我们承诺，对您个人的信息和隐私的安全承担保密义务。未经您授权或同意，本网站不会将您的个人资料信息泄露给第三方，但以下情况除外，且本网站不承担任何责任：&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）政府单位按照中华人民共和国国的法律、行政法规、部门规章、司法解释等规范性法律文件（统称法律法规），要求本网站提供的。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）由于您将用户和密码告知或泄露给他人，由此导致的个人资料泄露。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）包括但不仅限于黑客攻击、计算机病毒侵入或发作、政府 管制 等不可抗力而造成的用户个人资料泄露、丢失、被盗用或被篡改等。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）为免除他人正在遭受威胁到其生命、身体或财产等方面的危险，所采取的措施。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）本网站会与其他网站链接，但不对其他网站的隐私政策及内容负责。&lt;/p&gt;\r\n\r\n&lt;p&gt;（六）此外，您若发现有任何非法使用您的用户账号或安全漏洞的情况，应立即通告本网站。&lt;/p&gt;\r\n\r\n&lt;p&gt;（七）由于您自身的疏忽、大意等过错所导致的。&lt;/p&gt;\r\n\r\n&lt;p&gt;（八）您在本网站的有关记录有可能成为您违反法律法规和本协议的 证据 。&lt;/p&gt;\r\n\r\n&lt;p&gt;六、 知识产权 本网站所有的域名、商号、 商标 、文字、视像及声音内容、图形及图像均受有关所有权和知识产权法律的保护，未经本网站事先以书面明确允许，任何个人或单位，均不得进行复制和使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;七、法律适用&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）协议由本网站的所有人负责修订，并通过本网站公布，您的注册行为即被视为您自愿接受协议的全部条款，受其约束。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）协议的生效、履行、解释及争议的解决均适用中华人民共和国国法律。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）您使用网站提供的服务如产生争议，原则上双方协商解决，协商不成可向本网站所有人所在的仲裁机构、人民法院进行调解或提起 诉讼 。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）协议的条款如与法律相抵触，本网站可进行重新解析，而其他条款则保持对您产生法律效力和约束。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;a name=&quot;220477&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;h3 style=&quot;border-left:5px solid #3991e5;color:#3991e5;background:#f5f7f7;line-height:38px;margin:25px 0;font-weight:bold;&quot;&gt;【第2篇】网站用户注册协议书范本专业版&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;一、总则&lt;/p&gt;\r\n\r\n&lt;p&gt;此份协议是注册用户接受_______________网站（以下简称本站）产品和服务时适用的通用条款。因此，请您在注册成为本站用户前或接受本站的产品和服务之前，请您详细地阅读本注册用户协议的所有内容。&lt;/p&gt;\r\n\r\n&lt;p&gt;1、注册用户了解并同意：&lt;/p&gt;\r\n\r\n&lt;p&gt;①只要注册用户点击&amp;ldquo;同意&amp;rdquo;按钮并完成注册，注册用户就已接受了本注册用户协议及本站公布的各项服务规则（包括填写实名的联系方式等等），并愿意受其约束。如果发生纠纷，注册用户不得以未仔细阅读为由进行抗辩。&lt;/p&gt;\r\n\r\n&lt;p&gt;②随着市场经营情况的变化，本站有权随时更改本注册用户协议及相关服务规则。修改本注册用户协议时，本站将于相关页面公告修改的事实，有权不对注册用户进行个别通知。注册用户应该在每次登录前查询网站的相关公告，以了解注册用户协议及其他服务规则的变化。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、若注册用户不同意本注册用户协议或相关服务规则，或者不同意本站作出的修改，注册用户可以主动停止使用本站提供的产品和服务，如果在本站修改协议或服务规则后，注册用户仍继续使用本站提供的产品和服务，即表示注册用户同意本站对本注册用户协议及相关服务规则所做的所有修改。由于注册用户在注册用户协议变更后因未熟悉公告规定而引起的损失，本站将不会承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本站的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。注册用户必须完全同意所有服务条款并完成注册程序，才能成为本站的注册用户。注册用户确认：本协议条款是处理双方权利义务的当然约定依据，除非违反国家强制性法律，否则始终有效。&lt;/p&gt;\r\n\r\n&lt;p&gt;二、服务简介&lt;/p&gt;\r\n\r\n&lt;p&gt;1、本站运用自己的操作系统通过国际互联网络为注册用户提供网络服务。同时，注册用户必须：自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置。自行负担个人上网所支付的与此服务有关的电话费用、网络费用。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、基于本站所提供的网络服务的重要性，注册用户应同意：提供详尽、准确的个人资料。不断更新注册资料，符合及时、详尽、准确的要求。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本站对注册用户的电子邮件、手机号等隐私资料进行保护，承诺不会在未获得注册用户许可的情况下擅自将注册用户的个人资料信息出租或出售给任何第三方，但以下情况除外：注册用户同意让第三方共享资料；注册用户同意公开其个人资料，享受为其提供的产品和服务；本站需要听从法庭传票、法律命令或遵循法律程序；本站发现注册用户违反了本站服务条款或本站其它使用规定。&lt;/p&gt;\r\n\r\n&lt;p&gt;4、关于注册用户隐私的具体协议以本站的隐私声明为准。如果注册用户提供的资料包含有不正确的信息，本站保留结束注册用户使用网络服务资格的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;三、帐户密码和安全性&lt;/p&gt;\r\n\r\n&lt;p&gt;注册用户一旦注册成功，成为本站的合法的注册用户。您可随时根据需要改变您的密码。注册用户将对注册用户名和密码安全负全部责任。另外，每个注册用户都要对以其注册用户名进行的所有活动和事件负全责。注册用户若发现任何非法使用注册用户帐户或存在安全漏洞的情况，请立即通告本站。&lt;/p&gt;\r\n\r\n&lt;p&gt;四、拒绝提供担保&lt;/p&gt;\r\n\r\n&lt;p&gt;注册用户个人对网络服务的使用承担风险。本站对此不作任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保、特定目的和不违反规定的适当担保作限制。本站不担保服务一定能满足注册用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。&lt;/p&gt;\r\n\r\n&lt;p&gt;五、有限责任&lt;/p&gt;\r\n\r\n&lt;p&gt;本站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务，在网上购买商品或进行同类型服务，在网上进行交易，非法使用网络服务或注册用户传送的信息有所变动。这些行为都有可能会导致本站的形象受损，所以本站事先提出这种损害的可能性。&lt;/p&gt;\r\n\r\n&lt;p&gt;六、通告&lt;/p&gt;\r\n\r\n&lt;p&gt;所有发给注册用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。本站的活动信息也将定期通过页面公告及电子邮件方式向注册用户发送。注册用户协议条款的修改、服务变更、或其它重要事件的通告会以电子邮箱或者短信进行通知。&lt;/p&gt;\r\n\r\n&lt;p&gt;七、注册用户的建议奖励&lt;/p&gt;\r\n\r\n&lt;p&gt;注册用户在他们发表的一些良好建议以及一些比较有价值的策划方案时，本站愿意展示用户的构想落于实现，这其中本站会对一些比较好的注册用户反馈信息进行不等的产品奖励或者是积分奖励，但如出现用户策划与广告销售商之间的矛盾本站不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;八、责任限制&lt;/p&gt;\r\n\r\n&lt;p&gt;1、如因不可抗力或其他本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，本站不承担责任。但是本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、除了本站的使用条件中规定的其它限制和除外情况之外，在中国法律法规所允许的限度内，对于因交易而引起的或与之有关的任何直接的、间接的、特殊的、附带的、后果性的或惩罚性的损害，或任何其它性质的损害，本站、本站的董事、管理人员、雇员、代理或其它代表在任何情况下都不承担责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;九、法律管辖和适用&lt;/p&gt;\r\n\r\n&lt;p&gt;1、本协议的订立、执行和解释及争议的解决均应适用中国法律。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、如发生本站服务条款与中国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它合法条款则依旧保持对注册用户产生法律效力和影响。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。&lt;/p&gt;\r\n\r\n&lt;p&gt;4、如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向本站所在地的____________人民法院提起诉讼。&lt;/p&gt;\r\n\r\n&lt;p&gt;十、其他规定&lt;/p&gt;\r\n\r\n&lt;p&gt;1、如本用户协议中的任何内容无论因何种原因完全或部分无效或不具有执行力，本用户协议的其余内容仍应有效并且对协议各方有约束力。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、本用户协议中的标题仅为方便而设，不具法律或契约效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;a name=&quot;219246&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;h3 style=&quot;border-left:5px solid #3991e5;color:#3991e5;background:#f5f7f7;line-height:38px;margin:25px 0;font-weight:bold;&quot;&gt;【第3篇】网站用户注册协议书通用版&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;一、总则此份协议是注册用户接受_______________网站（以下简称本站）产品和服务时适用的通用条款。因此，请您在注册成为本站用户前或接受本站的产品和服务之前，请您详细地阅读本注册用户协议的所有内容。&lt;/p&gt;\r\n\r\n&lt;p&gt;1、注册用户了解并同意：&lt;/p&gt;\r\n\r\n&lt;p&gt;①只要注册用户点击同意按钮并完成注册，注册用户就已接受了本注册用户协议及本站公布的各项服务规则（包括填写实名的联系方式等等），并愿意受其约束。如果发生纠纷，注册用户不得以未仔细阅读为由进行抗辩。&lt;/p&gt;\r\n\r\n&lt;p&gt;②随着市场经营情况的变化，本站有权随时更改本注册用户协议及相关服务规则。修改本注册用户协议时，本站将于相关页面公告修改的事实，有权不对注册用户进行个别通知。注册用户应该在每次登录前查询网站的相关公告，以了解注册用户协议及其他服务规则的变化。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、若注册用户不同意本注册用户协议或相关服务规则，或者不同意本站作出的修改，注册用户可以主动停止使用本站提供的产品和服务，如果在本站修改协议或服务规则后，注册用户仍继续使用本站提供的产品和服务，即表示注册用户同意本站对本注册用户协议及相关服务规则所做的所有修改。由于注册用户在注册用户协议变更后因未熟悉公告规定而引起的损失，本站将不会承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本站的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。注册用户必须完全同意所有服务条款并完成注册程序，才能成为本站的注册用户。注册用户确认：本协议条款是处理双方权利义务的当然约定依据，除非违反国家强制性法律，否则始终有效。&lt;/p&gt;\r\n\r\n&lt;p&gt;二、服务简介&lt;/p&gt;\r\n\r\n&lt;p&gt;1、本站运用自己的操作系统通过国际互联网络为注册用户提供网络服务。同时，注册用户必须：自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置。自行负担个人上网所支付的与此服务有关的电话费用、网络费用。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、基于本站所提供的网络服务的重要性，注册用户应同意：提供详尽、准确的个人资料。不断更新注册资料，符合及时、详尽、准确的要求。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本站对注册用户的电子邮件、手机号等隐私资料进行保护，承诺不会在未获得注册用户许可的情况下擅自将注册用户的个人资料信息出租或出售给任何第三方，但以下情况除外：注册用户同意让第三方共享资料；注册用户同意公开其个人资料，享受为其提供的产品和服务；本站需要听从法庭传票、法律命令或遵循法律程序；本站发现注册用户违反了本站服务条款或本站其它使用规定。&lt;/p&gt;\r\n\r\n&lt;p&gt;4、关于注册用户隐私的具体协议以本站的隐私声明为准。如果注册用户提供的资料包含有不正确的信息，本站保留结束注册用户使用网络服务资格的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;三、帐户密码和安全性注册用户一旦注册成功，成为本站的合法的注册用户。您可随时根据需要改变您的密码。注册用户将对注册用户名和密码安全负全部责任。另外，每个注册用户都要对以其注册用户名进行的所有活动和事件负全责。注册用户若发现任何非法使用注册用户帐户或存在安全漏洞的情况，请立即通告本站。&lt;/p&gt;\r\n\r\n&lt;p&gt;四、拒绝提供担保注册用户个人对网络服务的使用承担风险。本站对此不作任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保、特定目的和不违反规定的适当担保作限制。本站不担保服务一定能满足注册用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。&lt;/p&gt;\r\n\r\n&lt;p&gt;五、有限责任本站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务，在网上购买商品或进行同类型服务，在网上进行交易，非法使用网络服务或注册用户传送的信息有所变动。这些行为都有可能会导致本站的形象受损，所以本站事先提出这种损害的可能性。&lt;/p&gt;\r\n\r\n&lt;p&gt;六、通告所有发给注册用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。本站的活动信息也将定期通过页面公告及电子邮件方式向注册用户发送。注册用户协议条款的修改、服务变更、或其它重要事件的通告会以电子邮箱或者短信进行通知。&lt;/p&gt;\r\n\r\n&lt;p&gt;七、注册用户的建议奖励注册用户在他们发表的一些良好建议以及一些比较有价值的策划方案时，本站愿意展示用户的构想落于实现，这其中本站会对一些比较好的注册用户反馈信息进行不等的产品奖励或者是积分奖励，但如出现用户策划与广告销售商之间的矛盾本站不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;八、责任限制&lt;/p&gt;\r\n\r\n&lt;p&gt;1、如因不可抗力或其他本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，本站不承担责任。但是本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、除了本站的使用条件中规定的其它限制和除外情况之外，在中国法律法规所允许的限度内，对于因交易而引起的或与之有关的任何直接的、间接的、特殊的、附带的、后果性的或惩罚性的损害，或任何其它性质的损害，本站、本站的董事、管理人员、雇员、代理或其它代表在任何情况下都不承担责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;九、法律管辖和适用&lt;/p&gt;\r\n\r\n&lt;p&gt;1、本协议的订立、执行和解释及争议的解决均应适用中国法律。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、如发生本站服务条款与中国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它合法条款则依旧保持对注册用户产生法律效力和影响。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。&lt;/p&gt;\r\n\r\n&lt;p&gt;4、如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向本站所在地的____________人民法院提起诉讼。&lt;/p&gt;\r\n\r\n&lt;p&gt;十、其他规定&lt;/p&gt;\r\n\r\n&lt;p&gt;1、如本用户协议中的任何内容无论因何种原因完全或部分无效或不具有执行力，本用户协议的其余内容仍应有效并且对协议各方有约束力。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、本用户协议中的标题仅为方便而设，不具法律或契约效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;a name=&quot;303849&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;h3 style=&quot;border-left:5px solid #3991e5;color:#3991e5;background:#f5f7f7;line-height:38px;margin:25px 0;font-weight:bold;&quot;&gt;【第4篇】用户注册协议书范本&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;一、总则&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）平台的所有权和运营权归_______________公司所有。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）用户在注册之前，应当仔细阅读本协议，并同意遵守本协议后方可成为注册用户。一旦注册成功，则用户与平台之间自动形成协议关系，用户应当受本协议的约束。用户必须完全同意所有服务条款并完成注册程序，才能成为平台的正式用户。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）本协议可由平台随时更新，用户应当及时关注并同意本站不承担通知义务。本站的通知、公告、声明或其它类似内容是本协议的一部分。&lt;/p&gt;\r\n\r\n&lt;p&gt;二、服务内容&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）平台的具体内容由本站根据实际情况提供。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）本站仅提供相关的网络服务，除此之外与相关网络服务有关的设备（如个人电脑、手机、及其他与接入互联网或移动网有关的装置）及所需的费用（如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费）均应由用户自行负担。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）如果用户提供的资料包含有不正确的信息，本平台保留结束用户使用网络服务资格的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;三、用户账号&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）经本站注册系统完成注册程序并通过身份认证的用户即成为正式用户，可以获得本站规定用户所应享有的一切权限；未经身份认证仅享有本站规定的部分会员权限。平台有权对会员的权限设计进行变更。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且平台保留终止用户使用平台服务的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）用户只能按照注册要求使用真实手机号码注册。用户有义务保证密码和账号的安全，用户利用该密码和账号所进行的一切活动引起的任何损失或损害，由用户自行承担全部责任，本站不承担任何责任。如用户发现账号遭到未授权的使用或发生其他任何安全问题，应立即修改账号密码并妥善保管，如有必要，请通知本站。因黑客行为或用户的保管疏忽导致账号非法使用，本站不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通告平台。&lt;/p&gt;\r\n\r\n&lt;p&gt;四、使用规则&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）遵守中华人民共和国国相关法律 法规 ，包括但不限于《中华人民共和国国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络 著作权 纠纷案件适用法律若干问题的解释（法释1号）》、《全国人大常委会关于维护互联网安全的决定》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和 知识产权 的法律和法规、实施办法。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）用户对其自行发表、上传或传送的内容负全部责任，所有用户不得在本站任何页面发布、转载、传送含有下列内容之一的信息，否则本站有权自行处理并不通知用户：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、违反 宪法 确定的基本原则的；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、损害国家荣誉和利益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、煽动民族仇恨、民族歧视，破坏民族团结的；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;/p&gt;\r\n\r\n&lt;p&gt;6、散布谣言，扰乱社会秩序，破坏社会稳定的；&lt;/p&gt;\r\n\r\n&lt;p&gt;7、散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；&lt;/p&gt;\r\n\r\n&lt;p&gt;8、侮辱或者诽谤他人，侵害他人合法权益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;9、煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；&lt;/p&gt;\r\n\r\n&lt;p&gt;10、以非法民间组织名义活动的；1&lt;/p&gt;\r\n\r\n&lt;p&gt;1、含有法律、行政法规禁止的其他内容的；1&lt;/p&gt;\r\n\r\n&lt;p&gt;2、不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）用户承诺对其发表或者上传于本站的所有信息（即属于《中华人民共和国国 著作权法 》规定的作品，包括但不限于地图数据、文字、图片、音乐、电影、表演和录音录像制品和电脑程序等）均享有完整的知识产权，或者已经得到相关权利人的合法授权；如用户违反本条规定造成本站被第三人索赔的，用户应全额补偿本站一切费用（包括但不限于各种赔偿费、 诉讼 代理 费及为此支出的其它合理费用）。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）当第三方认为用户发表或者上传于本站的信息侵犯其权利，并根据《信息网络传播权保护条例》或者相关法律规定向本站发送权利通知书时，用户同意本站可以自行判断决定删除涉嫌侵权信息，除非用户提交书面 证据 材料排除侵权的可能性，本站将不会自动恢复上述删除的信息。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）平台保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。若用户未遵守以上规定的，平台有权作出独立判断并采取暂停或关闭用户账号等措施。用户须对自己在网上的言论和行为承担法律责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;五、隐私保护&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）尊重您个人信息的隐私是平台的一项基本制度，平台将会采取合理的措施保护您的个人信息。平台保证不对外公开或向第三方提供您的个人信息，但下列情况除外：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、您的个人信息属于或者成为可公开获取的信息；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、由平台通过合法方式获知且无需对其履行保密义务的个人信息；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、通过可以合法披露此个人信息且无需对其履行保密义务的第三方获得的信息；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、事先获得您的明确授权；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、根据有关的法律法规的要求；&lt;/p&gt;\r\n\r\n&lt;p&gt;6、按照相关政府主管部门或司法部门的要求；&lt;/p&gt;\r\n\r\n&lt;p&gt;7、为维护社会公众的利益；&lt;/p&gt;\r\n\r\n&lt;p&gt;8、为维护平台、其附属关联公司的合法权益。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）您理解并同意，平台可能会与第三方合作向您提供该服务，在此情况下，如该第三方同意承担与平台同等的保护您个人信息的责任，则平台将授权第三方通过________定义接口调用经过加密的您的个人信息，平台保证第三方不会直接获取您的个人信息。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）您理解并同意，在不透露您个人信息的前提下，平台有权对该服务的整个用户数据库进行分析并对用户数据库进行商业上的利用。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）在您使用该服务时，平台可能自动接收并记录您的地图应用端上的服务器数值，包括但不限于地址等数据、您和用户要求取用的网页记录及各种记录、该服务的操作状态以及使用习惯等一些明确且客观反映在平台服务器端的基本记录信息。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）________不允许任何人以任何手段收集、编辑、出售或者无偿传播您或其他用户的个人信息。一经发现您实施上述行为，________有权立即终止向您提供服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;六、免责声明&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）若平台已经明示其网络服务提供方式发生变更并提醒用户应当注意事项，用户未按要求操作所产生的一切后果由用户自行承担。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）用户明确同意其使用平台网络服务，以及因此对平台网络服务加以依赖所存在的全部责任和风险将完全由其自己承担；因其使用平台网络服务过程的行为，以及因此而产生的一切后果也由其自己承担，平台对用户不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）平台不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）用户因使用平台网络服务而产生的任何间接的、附带的、特殊的、结果性的或惩戒性的损害（包括但不限于利润亏损、商誉、使用服务、数据的损害或其它无形损失），平台概不负责，均由用户自行承担。&lt;/p&gt;\r\n\r\n&lt;p&gt;（五）用户或用户的代理或关联人士违反本协议或相关法律，或因用户或用户的代理或关联人士（以参与者的身份行事）所做出的行为或疏忽而产生的任何损害，概由用户自行负责。&lt;/p&gt;\r\n\r\n&lt;p&gt;七、拒绝提供担保用户个人对网络服务的使用承担风险。平台对此不作任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保、特定目的和不违反规定的适当担保作限制。平台不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。&lt;/p&gt;\r\n\r\n&lt;p&gt;八、有限责任平台对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务，在网上进行交易，非法使用网络服务或用户传送的信息有所变动。这些行为都有可能会导致本平台的形象受损，所以平台事先提出这种损害的可能性。&lt;/p&gt;\r\n\r\n&lt;p&gt;九、对用户信息的存储和限制平台不对用户所发布信息的删除或储存失败负责。平台有判定用户的行为是否符合平台服务条款的要求和精神的保留权利，如果用户违背了服务条款的规定，平台有中断对其提供网络服务的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;十、用户管理&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）用户单独承担发布内容的责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）用户对服务的使用是根据所有适用于平台的国家法律、地方法律和国际法律标准的。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）用户必须遵循：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、从中国境内向外传输技术性资料时必须符合中国有关法规；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、使用网络服务不作非法用途；&lt;/p&gt;\r\n\r\n&lt;p&gt;3、不干扰或混乱网络服务；&lt;/p&gt;\r\n\r\n&lt;p&gt;4、遵守所有使用网络服务的网络协议、规定、程序和惯例；&lt;/p&gt;\r\n\r\n&lt;p&gt;5、招商引资活动符合法律规定及双方约定；&lt;/p&gt;\r\n\r\n&lt;p&gt;6、用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料；&lt;/p&gt;\r\n\r\n&lt;p&gt;7、另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的；&lt;/p&gt;\r\n\r\n&lt;p&gt;8、若用户的行为不符合以上提到的服务条款，平台将作出独立判断立即取消用户服务账号。用户需对自己在网上的行为承担法律责任；&lt;/p&gt;\r\n\r\n&lt;p&gt;9、用户若在平台上散布和传播反动、色情或其他违反国家法律的信息，平台的系统记录有可能作为用户违反法律的证据。十&lt;/p&gt;\r\n\r\n&lt;p&gt;一、保障用户同意保障和维护平台全体成员的利益，违反服务条款的损害补偿费用等。十&lt;/p&gt;\r\n\r\n&lt;p&gt;二、结束服务&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）平台可随时根据实际情况中断一项或多项网络服务。平台不需对任何个人或第三方负责而随时中断服务。用户对后来的条款修改有异议，或对平台的服务不满，可以行使如下权利：&lt;/p&gt;\r\n\r\n&lt;p&gt;1、停止使用平台的网络服务；&lt;/p&gt;\r\n\r\n&lt;p&gt;2、通告平台停止对该用户的服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）结束用户服务后，用户使用网络服务的权利马上中止。从那时起，用户有权利，平台也没有义务传送任何未处理的信息或未完成的服务给户或第三方。十&lt;/p&gt;\r\n\r\n&lt;p&gt;三、通告所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。十&lt;/p&gt;\r\n\r\n&lt;p&gt;四、参与广告策划用户在他们发表的信息中加入宣传资料或参与广告策划，在本平台的服务上展示他们的招商条件等，任何这类宣传方法，只是在相应的用户和入驻商户之间发生。平台不承担任何责任，平台没有义务为这类广告负任何责任。十&lt;/p&gt;\r\n\r\n&lt;p&gt;五、网络服务内容的所有权&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）平台定义的网络服务内容包括：文字、软件、声音、图片、录像、图表、广告中的全部内容；电子邮件的全部内容；本平台为用户提供的其他信息。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）所有这些内容受版权、 商标 、标签和其它财产所有权法律的保护。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）所以，用户只能在本平台和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。&lt;/p&gt;\r\n\r\n&lt;p&gt;（四）平台所有的文章版权归原文作者和平台共同所有，任何人需要转载本平台的文章，必须征得原文作者或平台授权。十&lt;/p&gt;\r\n\r\n&lt;p&gt;六、法律及 管辖&lt;/p&gt;\r\n\r\n&lt;p&gt;（一）网络服务条款要与中华人民共和国国的法律解释相一致，用户和平台一致同意服从高等法院所有管辖。如发生平台服务条款与中华人民共和国国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户产生法律效力和影响。&lt;/p&gt;\r\n\r\n&lt;p&gt;（二）因本用户协议产生纠纷的，用户可向网络服务提供者_______________人民法院提起诉讼。&lt;/p&gt;\r\n\r\n&lt;p&gt;（三）一经注册成为本网站的用户，即代表同意签署本用户协议并愿意遵守相关条款约束。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;a name=&quot;289043&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;h3 style=&quot;border-left:5px solid #3991e5;color:#3991e5;background:#f5f7f7;line-height:38px;margin:25px 0;font-weight:bold;&quot;&gt;【第5篇】b2b网站用户注册协议书范本&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;尊敬的客户，欢迎您注册成为________________网站用户（以下简称网站）。在注册前请您仔细阅读如下服务条款：本协议双方为网站与网站用户，本协议具有合同效力。您确认本协议后，本协议即在您和网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向网站咨询。无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的注册按钮并按照网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本协议。&lt;/p&gt;\r\n\r\n&lt;p&gt;1、网站服务条款的确认和接纳网站各项服务的所有权和运作权归网站拥有。&lt;/p&gt;\r\n\r\n&lt;p&gt;2、用户必须：&lt;/p&gt;\r\n\r\n&lt;p&gt;①自行配备使用网站的所需设备，包括个人电脑、手机等。&lt;/p&gt;\r\n\r\n&lt;p&gt;②自行负担个人上网所支付的与此服务有关的电话费用、网络费用。&lt;/p&gt;\r\n\r\n&lt;p&gt;3、用户承诺不得在网站上上传和发布下列违法文件及信息：&lt;/p&gt;\r\n\r\n&lt;p&gt;①反对宪法所确定的基本原则的；&lt;/p&gt;\r\n\r\n&lt;p&gt;②危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；&lt;/p&gt;\r\n\r\n&lt;p&gt;③损害国家荣誉和利益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;④煽动民族仇恨、民族歧视，破坏民族团结的；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑤破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑥散布谣言，扰乱社会秩序，破坏社会稳定的；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑦散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑧侮辱或者诽谤他人，侵害他人合法权益的；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑨含有法律、行政法规禁止的其他内容的&lt;/p&gt;\r\n\r\n&lt;p&gt;4、电子邮件用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。&lt;/p&gt;\r\n\r\n&lt;p&gt;5、服务条款的修改网站有权在必要时修改服务条款，网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动停止使用网站及网站的一切服务。如果用户继续使用网站任何服务，则视为接受服务条款的变动。网站保留随时修改或中断服务而不需通知用户的权利。网站行使修改或中断服务的权利，不需对用户或第三方负责。&lt;/p&gt;\r\n\r\n&lt;p&gt;6、用户管理用户在使用网站服务过程中，必须遵循以下原则：&lt;/p&gt;\r\n\r\n&lt;p&gt;①遵守中国有关的法律和法规；&lt;/p&gt;\r\n\r\n&lt;p&gt;②不得为任何非法目的而使用网络服务系统；&lt;/p&gt;\r\n\r\n&lt;p&gt;③遵守所有与网络服务有关的网络协议、规定和程序；&lt;/p&gt;\r\n\r\n&lt;p&gt;④不得利用网站服务系统进行任何可能对互联网的正常运转造成不利影响的行为；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑤不得利用网站服务系统传输任何骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑥不得利用网站服务系统进行任何不利于网站的行为；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑦就网站及合作商业伙伴的服务、产品、业务咨询应采取相应机构提供的沟通渠道，不得在公众场合发布有关网站及相关服务的负面宣传；&lt;/p&gt;\r\n\r\n&lt;p&gt;⑧不得以任何方式危害未成年人。&lt;/p&gt;\r\n\r\n&lt;p&gt;7、用户帐号安全&lt;/p&gt;\r\n\r\n&lt;p&gt;①用户可以通过在网站注册或使用其他合作网站的帐号使用网站提供的各项服务。用户注册成功后，网站将给用户一个帐号及密码，每个帐号对应一个唯一的名字（或昵称、用户名）。网站帐号的所有权归网站，用户完成申请注册手续后，获得的网站帐号的使用权，但仅限为与网站相关的业务或服务而非其它商业目的使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;②用户须妥善管理自己的用户名及密码，禁止赠与、借用、租用、转让或者售卖。若出于您的原因导致密码泄露，您需自行承担相应的一切责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;③用户帐号和密码遭到他人非法使用或发生其他任何安全问题，用户应当立即联系网站。网站在收到用户要求采取措施暂停其帐号登录和使用的申请后，应当要求用户提供与其注册身份信息一致的个人有效身份信息及其他证件和资料。网站核实审查无误后，应当及时采取措施暂停用户帐号的登录和使用。用户没按要求提供相关信息或者信息有误，网站有权拒绝用户的前述请求。&lt;/p&gt;\r\n\r\n&lt;p&gt;④用户每次使用完网站相关服务后，请关闭退出有关帐号。因黑客行为或用户的过错导致帐号、密码或被他人非法使用，网站不承担任何责任。&lt;/p&gt;\r\n\r\n&lt;p&gt;8、用户个人资料用户同意：&lt;/p&gt;\r\n\r\n&lt;p&gt;①提供及时、详尽及准确的的个人资料。&lt;/p&gt;\r\n\r\n&lt;p&gt;②同意接收来自网站的信息。&lt;/p&gt;\r\n\r\n&lt;p&gt;③不断更新注册资料，如因注册信息不真实而引起的问题由用户本人承担，网站不承担任何责任，并有权暂停或终止该用户帐号使用权。&lt;/p&gt;\r\n\r\n&lt;p&gt;9、使用风险用户明确同意对网站的使用由用户个人承担风险。网站无法担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。&lt;/p&gt;\r\n\r\n&lt;p&gt;10、有限责任网站对来自：不正当使用网站相关功能及服务，或用户上传的内容不符合规定等任何直接、间接、偶然、不负责任的损害网站都不负责任，但会尽量避免这种损害的发生。并保留因用户不正当使用网站而给网站造成各种损害（包括名誉损害等），网站通过法律途径向其追索法律及经济责任的权利。1&lt;/p&gt;\r\n\r\n&lt;p&gt;1、服务限制网站有判定用户的行为是否符合网站服务条款的要求和精神的权利，如果用户违背网站服务条款的规定，网站有权中断其服务的帐号。1&lt;/p&gt;\r\n\r\n&lt;p&gt;2、利益保障用户同意保障和维护网站全体成员的利益，并承担由用户使用超出服务范围或不正当使用而引起的法律纠纷而产生的律师费用、交通费、违反服务条款的损害补偿费用、其他人使用用户的电脑、手机、帐号和其它知识产权的追索费等相关费用。1&lt;/p&gt;\r\n\r\n&lt;p&gt;3、服务内容&lt;/p&gt;\r\n\r\n&lt;p&gt;①网站在线服务的具体内容网站根据实际情况提供，例如网络硬盘、外链、论坛等。网站保留随时变更、中止或终止部分或全部网络服务的权利。&lt;/p&gt;\r\n\r\n&lt;p&gt;②网站在提供网络服务时，可能会对部分网络服务（例如网络存储及其他电信增值服务）的用户收取一定的费用。在此情况下，网站会在相关页面上做明确的提示。如用户不同意支付该等费用，则可不接受相关的网络服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;③网站仅提供相关的网络服务，除此之外与相关网络服务有关的设备（如电脑、调制解调器及其他与接入互联网有关的装置）及所需的费用（如为接入互联网而支付的电话费及上网费）均应由用户自行负担。&lt;/p&gt;\r\n\r\n&lt;p&gt;④用户应使用正版软件接受网络服务。&lt;/p&gt;\r\n\r\n&lt;p&gt;⑤用户需理解网站也会为其他互联网企业定制专业化的用户服务体系，即用户通过网站获得的服务内容有可能来源于第三方企业，一旦用户接受该第三方企业提供的网络服务内容，则用户应当遵守该第三方企业对其服务做出的约定。如第三方企业接入网站系统且其既有用户可以使用网站提供的服务，则该既有用户即成为网站的用户，其帐号也自动成为网站帐号。该既有用户同意亦将与在网站系统中直接注册的用户一样遵守本协议的约定。但对于这些既有用户，网站在服务过程中会仍然提供其已经熟悉的网站界面，该过程仅为方便用户接受服务而设，既有用户与网站之间的关系仍应受本协议的约定。&lt;/p&gt;\r\n\r\n&lt;p&gt;⑥关于用户付费的特别提示：在网站系统中，用户可以通过支付手段（包括但不限于网银充值、银行卡充值、实物充值、手机卡充值等）为其帐号购买在线增值服务，以及提供第三方应用内容提供企业联营的在线服务。对于需要支付一定的费用的收费服务，网站在用户使用前明示，只有用户根据相关提示确认其原意支付相关费用，用户才能使用该等收费的网络服务。如果用户拒绝支付相关费用，则网站有权不向该用户提供该等收费网络服务。为了尊重用户的消费习惯和符合用户体验习惯，用户在利用网站提供的服务进行付费的过程中，用户需要理解并知晓网站可能出现需要第三方支付系统进行支付。1&lt;/p&gt;\r\n\r\n&lt;p&gt;4、结束服务用户或网站可随时根据实际情况中断一项或多项服务。网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对网站服务不满，用户可以行使如下权利：&lt;/p&gt;\r\n\r\n&lt;p&gt;①不再使用网站所有服务；&lt;/p&gt;\r\n\r\n&lt;p&gt;②网站停止对该用户的服务。结束用户服务后，用户使用网站服务的权利马上中止。从那时起，用户没有权利，网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。1&lt;/p&gt;\r\n\r\n&lt;p&gt;5、通告所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。1&lt;/p&gt;\r\n\r\n&lt;p&gt;6、信息内容的所有权网站和网站服务中的所有知识产权、网站中的信息内容或作为服务内容的信息、数据库、所有网站设计、文字和图表、软件、照片、录像、音乐、声音及其前述组合，以及所有软件编译、相关源代码和软件（包括小应用程序和脚本）均为网站的财产。您不得、亦不得意图获得该知识产权。未经网站书面允许，您不得为商业目的复制、更改、拷贝、发送或使用网站上的任何材料或内容，如因您的行为而给网站造成损害，网站将通过法律途径追索经济和法律责任。1&lt;/p&gt;\r\n\r\n&lt;p&gt;7、法律网站服务条款要与中华人民共和国国的法律解释一致。用户和网站一致同意服从网站所在地有管辖权的_____________法院管辖。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\";}');
COMMIT;

-- ----------------------------
-- Table structure for x2_category
-- ----------------------------
DROP TABLE IF EXISTS `x2_category`;
CREATE TABLE `x2_category` (
  `catid` int NOT NULL AUTO_INCREMENT,
  `catapp` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `catlite` int NOT NULL DEFAULT '0',
  `catname` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `catimg` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `caturl` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `catuseurl` int NOT NULL DEFAULT '0',
  `catparent` int DEFAULT '0',
  `catdes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cattpl` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `catmanager` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `catinmenu` int NOT NULL DEFAULT '0',
  `catindex` int NOT NULL DEFAULT '0',
  `catsubject` int NOT NULL,
  PRIMARY KEY (`catid`) USING BTREE,
  KEY `catlite` (`catlite`,`catparent`) USING BTREE,
  KEY `catappid` (`catapp`) USING BTREE,
  KEY `catuseurl` (`catuseurl`) USING BTREE,
  KEY `catinmenu` (`catinmenu`,`catindex`) USING BTREE,
  KEY `catsubject` (`catsubject`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_category
-- ----------------------------
BEGIN;
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (1, 'content', 0, '考试信息', 'files/attach/images/content/20160630/14672817197914.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 1);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (2, 'content', 0, '首页头图', 'files/attach/images/content/20160630/14672817455479.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 1);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (3, 'content', 0, '考试资料', 'files/attach/images/content/20160630/14672817048286.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 1);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (4, 'content', 0, '帮助信息', 'files/attach/images/content/20160630/14672817317018.jpg', '', 0, 0, '&lt;h1 class=&quot;wikititle&quot;&gt;区委区为企鹅&lt;/h1&gt;\r\n\r\n&lt;h2 class=&quot;wikititle&quot;&gt;这是一个什么段落&lt;/h2&gt;', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 0, 1);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (5, 'course', 0, '会计基础', 'files/attach/images/content/20180709/15311345313268.png', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 6, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (11, 'content', 0, '友情链接', 'app/core/styles/images/noimage.gif', '', 0, 4, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 0, 5, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (12, 'docs', 0, '人物', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (13, 'course', 0, '会计实务', 'app/core/styles/images/noimage.gif', '', 0, 5, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (14, 'content', 0, '联系我们', 'app/core/styles/images/noimage.gif', '', 0, 4, '', 'category_default', '', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (16, 'course', 0, '商务英语', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 1, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (17, 'course', 0, '英语', 'app/core/styles/images/noimage.gif', '', 0, 16, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (18, 'docs', 0, '英语', 'app/core/styles/images/noimage.gif', '', 0, 12, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (19, 'docs', 0, '英语', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (21, 'docs', 0, '数学', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 5, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (22, 'course', 0, '应用英语', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', 'a:2:{s:8:\\\"pubusers\\\";s:0:\\\"\\\";s:9:\\\"pubgroups\\\";s:0:\\\"\\\";}', 1, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (46, 'item', 0, '默认分类', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', '', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (24, 'seminar', 0, '活动', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', '', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (25, 'seminar', 0, '会议', 'app/core/styles/images/noimage.gif', '', 0, 0, '', 'category_default', '', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (26, 'content', 0, '网站公告', 'app/core/styles/images/noimage.gif', '', 0, 4, '', 'category_default', '', 0, 6, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (32, 'content', 546, '初级会计', 'app/core/styles/images/noimage.gif', '', 0, 1, '&lt;p&gt;56464&lt;/p&gt;', 'category_page', '', 0, 0, 0);
INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES (33, 'course', 0, '会计技能', 'app/core/styles/images/noimage.gif', '', 0, 5, '', 'category_default', 'a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_cequeue
-- ----------------------------
DROP TABLE IF EXISTS `x2_cequeue`;
CREATE TABLE `x2_cequeue` (
  `ceqid` int NOT NULL AUTO_INCREMENT,
  `ceqceid` int NOT NULL,
  `cequserid` int NOT NULL,
  `ceqinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ceqtime` int NOT NULL,
  `ceqstatus` tinyint(1) NOT NULL,
  `ceqordersn` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ceqpubtime` int DEFAULT NULL,
  PRIMARY KEY (`ceqid`) USING BTREE,
  KEY `cequserid` (`cequserid`) USING BTREE,
  KEY `ceqtime` (`ceqtime`) USING BTREE,
  KEY `ceqstatus` (`ceqstatus`) USING BTREE,
  KEY `ceqordersn` (`ceqordersn`) USING BTREE,
  KEY `ceqceid` (`ceqceid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_cequeue
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_certificate
-- ----------------------------
DROP TABLE IF EXISTS `x2_certificate`;
CREATE TABLE `x2_certificate` (
  `ceid` int NOT NULL AUTO_INCREMENT,
  `cetitle` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cethumb` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ceprice` int NOT NULL,
  `cebasic` int DEFAULT NULL,
  `cedays` int DEFAULT NULL,
  `cetime` int DEFAULT NULL,
  `cetpl` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cetags` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `cedescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cetext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`ceid`) USING BTREE,
  KEY `cebasic` (`cebasic`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_certificate
-- ----------------------------
BEGIN;
INSERT INTO `x2_certificate` (`ceid`, `cetitle`, `cethumb`, `ceprice`, `cebasic`, `cedays`, `cetime`, `cetpl`, `cetags`, `cedescribe`, `cetext`) VALUES (1, '会计资格证', 'files/attach/images/content/20210830/16302940954876.jpg', 0, 1, 60, 1506817500, 'files/attach/images/content/20210617/16239238824206.jpg', 'txt,140,350,{username},25\r\ntxt,700,350,会计资格证,25\r\ntxt,594,660,{ceqtime},25', '会计资格证', '&lt;p&gt;1.学习完课程&lt;/p&gt;\r\n\r\n&lt;p&gt;2.通过考试&lt;/p&gt;');
COMMIT;

-- ----------------------------
-- Table structure for x2_city
-- ----------------------------
DROP TABLE IF EXISTS `x2_city`;
CREATE TABLE `x2_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cityid` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `father` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cityid` (`cityid`) USING BTREE,
  KEY `father` (`father`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=371 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_city
-- ----------------------------
BEGIN;
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (1, '110100', '北京市', '110000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (3, '120100', '天津市', '120000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (6, '130200', '唐山市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (9, '130500', '邢台市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (10, '130600', '保定市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (11, '130700', '张家口市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (12, '130800', '承德市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (13, '130900', '沧州市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (15, '131100', '衡水市', '130000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (16, '140100', '太原市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (17, '140200', '大同市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (19, '140400', '长治市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (20, '140500', '晋城市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (21, '140600', '朔州市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (22, '140700', '晋中市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (23, '140800', '运城市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (24, '140900', '忻州市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (25, '141000', '临汾市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (28, '150200', '包头市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (29, '150300', '乌海市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (31, '150500', '通辽市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (40, '210200', '大连市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (43, '210500', '本溪市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (44, '210600', '丹东市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (45, '210700', '锦州市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (46, '210800', '营口市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (47, '210900', '阜新市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (53, '220100', '长春市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (54, '220200', '吉林市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (55, '220300', '四平市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (56, '220400', '辽源市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (57, '220500', '通化市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (58, '220600', '白山市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (59, '220700', '松原市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (60, '220800', '白城市', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (67, '230600', '大庆市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (68, '230700', '伊春市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (70, '230900', '七台河市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (72, '231100', '黑河市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (73, '231200', '绥化市', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (74, '232700', '大兴安岭地区', '230000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (75, '310100', '上海市', '310000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (77, '320100', '南京市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (78, '320200', '无锡市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (79, '320300', '徐州市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (80, '320400', '常州市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (81, '320500', '苏州市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (82, '320600', '南通市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (83, '320700', '连云港市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (84, '320800', '淮安市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (85, '320900', '盐城市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (86, '321000', '扬州市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (87, '321100', '镇江市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (88, '321200', '泰州市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (90, '330100', '杭州市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (91, '330200', '宁波市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (92, '330300', '温州市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (94, '330500', '湖州市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (96, '330700', '金华市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (97, '330800', '衢州市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (98, '330900', '舟山市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (99, '331000', '台州市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (100, '331100', '丽水市', '330000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (101, '340100', '合肥市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (104, '340400', '淮南市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (106, '340600', '淮北市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (108, '340800', '安庆市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (109, '341000', '黄山市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (110, '341100', '滁州市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (112, '341300', '宿州市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (114, '341500', '六安市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (115, '341600', '亳州市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (116, '341700', '池州市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (117, '341800', '宣城市', '340000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (118, '350100', '福州市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (119, '350200', '厦门市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (120, '350300', '莆田市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (121, '350400', '三明市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (122, '350500', '泉州市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (123, '350600', '漳州市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (124, '350700', '南平市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (126, '350900', '宁德市', '350000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (127, '360100', '南昌市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (130, '360400', '九江市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (131, '360500', '新余市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (133, '360700', '赣州市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (134, '360800', '吉安市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (135, '360900', '宜春市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (136, '361000', '抚州市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (137, '361100', '上饶市', '360000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (138, '370100', '济南市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (139, '370200', '青岛市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (140, '370300', '淄博市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (142, '370500', '东营市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (143, '370600', '烟台市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (145, '370800', '济宁市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (146, '370900', '泰安市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (147, '371000', '威海市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (148, '371100', '日照市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (150, '371300', '临沂市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (151, '371400', '德州市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (152, '371500', '聊城市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (153, '371600', '滨州市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (155, '410100', '郑州市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (156, '410200', '开封市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (159, '410500', '安阳市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (161, '410700', '新乡市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (162, '410800', '焦作市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (164, '411000', '许昌市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (165, '411100', '漯河市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (167, '411300', '南阳市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (168, '411400', '商丘市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (169, '411500', '信阳市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (170, '411600', '周口市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (172, '420100', '武汉市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (173, '420200', '黄石市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (174, '420300', '十堰市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (178, '420800', '荆门市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (179, '420900', '孝感市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (180, '421000', '荆州市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (183, '421300', '随州市', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (185, '429000', '省直辖行政单位', '420000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (186, '430100', '长沙市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (187, '430200', '株洲市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (192, '430700', '常德市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (193, '430800', '张家界市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (194, '430900', '益阳市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (195, '431000', '郴州市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (196, '431100', '永州市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (197, '431200', '怀化市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (198, '431300', '娄底市', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (200, '440100', '广州市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (201, '440200', '韶关市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (202, '440300', '深圳市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (203, '440400', '珠海市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (204, '440500', '汕头市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (205, '440600', '佛山市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (206, '440700', '江门市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (207, '440800', '湛江市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (208, '440900', '茂名市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (210, '441300', '惠州市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (211, '441400', '梅州市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (213, '441600', '河源市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (214, '441700', '阳江市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (215, '441800', '清远市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (216, '441900', '东莞市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (217, '442000', '中山市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (218, '445100', '潮州市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (220, '445300', '云浮市', '440000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (221, '450100', '南宁市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (222, '450200', '柳州市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (223, '450300', '桂林市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (224, '450400', '梧州市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (225, '450500', '北海市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (226, '450600', '防城港市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (227, '450700', '钦州市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (228, '450800', '贵港市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (229, '450900', '玉林市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (230, '451000', '百色市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (231, '451100', '贺州市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (232, '451200', '河池市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (233, '451300', '来宾市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (234, '451400', '崇左市', '450000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (235, '460100', '海口市', '460000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (236, '460200', '三亚市', '460000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (237, '469000', '省直辖县级行政单位', '460000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (238, '500100', '重庆市', '500000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (241, '510100', '成都市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (242, '510300', '自贡市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (244, '510500', '泸州市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (245, '510600', '德阳市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (247, '510800', '广元市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (249, '511000', '内江市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (250, '511100', '乐山市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (251, '511300', '南充市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (252, '511400', '眉山市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (254, '511600', '广安市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (255, '511700', '达州市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (256, '511800', '雅安市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (257, '511900', '巴中市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (258, '512000', '资阳市', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (264, '520300', '遵义市', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (265, '520400', '安顺市', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (266, '522200', '铜仁地区', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (268, '522400', '毕节地区', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (271, '530100', '昆明市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (274, '530500', '保山市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (275, '530600', '昭通市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (276, '530700', '丽江市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (277, '530800', '思茅市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (278, '530900', '临沧市', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (288, '542100', '昌都地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (289, '542200', '山南地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (290, '542300', '日喀则地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (291, '542400', '那曲地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (292, '542500', '阿里地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (293, '542600', '林芝地区', '540000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (294, '610100', '西安市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (295, '610200', '铜川市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (298, '610500', '渭南市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (299, '610600', '延安市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (300, '610700', '汉中市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (301, '610800', '榆林市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (302, '610900', '安康市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (303, '611000', '商洛市', '610000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (304, '620100', '兰州市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (306, '620300', '金昌市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (307, '620400', '白银市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (308, '620500', '天水市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (309, '620600', '武威市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (310, '620700', '张掖市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (311, '620800', '平凉市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (314, '621100', '定西市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (315, '621200', '陇南市', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (318, '630100', '西宁市', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (319, '632100', '海东地区', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (326, '640100', '银川市', '640000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (329, '640400', '固原市', '640000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (330, '640500', '中卫市', '640000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (333, '652100', '吐鲁番地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (334, '652200', '哈密地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (338, '652900', '阿克苏地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (340, '653100', '喀什地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (341, '653200', '和田地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (343, '654200', '塔城地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (344, '654300', '阿勒泰地区', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (345, '659000', '省直辖行政单位', '650000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (346, '710100', '台北市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (347, '710200', '高雄市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (348, '710300', '基隆市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (349, '710400', '台中市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (350, '710500', '台南市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (351, '710600', '新竹市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (352, '710700', '嘉义市', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (353, '710800', '台北县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (354, '710900', '宜兰县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (355, '711000', '新竹县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (356, '711100', '桃园县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (357, '711200', '苗栗县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (358, '711300', '台中县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (359, '711400', '彰化县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (360, '711500', '南投县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (361, '711600', '嘉义县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (362, '711700', '云林县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (363, '711800', '台南县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (364, '711900', '高雄县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (365, '712000', '屏东县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (366, '712100', '台东县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (367, '712200', '花莲县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (368, '712300', '澎湖县', '710000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (369, '810100', '香港特别行政区', '810000');
INSERT INTO `x2_city` (`id`, `cityid`, `city`, `father`) VALUES (370, '820100', '澳门特别行政区', '820000');
COMMIT;

-- ----------------------------
-- Table structure for x2_cityarea
-- ----------------------------
DROP TABLE IF EXISTS `x2_cityarea`;
CREATE TABLE `x2_cityarea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `areaid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `area` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `father` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `areaid` (`areaid`) USING BTREE,
  KEY `father` (`father`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=820103 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_cityarea
-- ----------------------------
BEGIN;
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110101, '110101', '东城区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110102, '110102', '西城区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110103, '110103', '崇文区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110104, '110104', '宣武区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110105, '110105', '朝阳区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110106, '110106', '丰台区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110107, '110107', '石景山区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110108, '110108', '海淀区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110109, '110109', '门头沟区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110111, '110111', '房山区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110112, '110112', '通州区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110113, '110113', '顺义区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110114, '110114', '昌平区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110115, '110115', '大兴区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110116, '110116', '怀柔区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110117, '110117', '平谷区', '110100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110228, '110228', '密云县', '110200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (110229, '110229', '延庆县', '110200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120101, '120101', '和平区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120102, '120102', '河东区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120103, '120103', '河西区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120104, '120104', '南开区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120105, '120105', '河北区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120106, '120106', '红桥区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120107, '120107', '塘沽区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120108, '120108', '汉沽区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120109, '120109', '大港区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120110, '120110', '东丽区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120111, '120111', '西青区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120112, '120112', '津南区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120113, '120113', '北辰区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120114, '120114', '武清区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120115, '120115', '宝坻区', '120100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120221, '120221', '宁河县', '120200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120223, '120223', '静海县', '120200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (120225, '120225', '蓟　县', '120200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130101, '130101', '市辖区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130102, '130102', '长安区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130103, '130103', '桥东区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130104, '130104', '桥西区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130105, '130105', '新华区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130107, '130107', '井陉矿区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130108, '130108', '裕华区', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130121, '130121', '井陉县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130123, '130123', '正定县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130124, '130124', '栾城县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130125, '130125', '行唐县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130126, '130126', '灵寿县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130127, '130127', '高邑县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130128, '130128', '深泽县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130129, '130129', '赞皇县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130130, '130130', '无极县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130131, '130131', '平山县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130132, '130132', '元氏县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130133, '130133', '赵　县', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130181, '130181', '辛集市', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130182, '130182', '藁城市', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130183, '130183', '晋州市', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130184, '130184', '新乐市', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130185, '130185', '鹿泉市', '130100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130201, '130201', '市辖区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130202, '130202', '路南区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130203, '130203', '路北区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130204, '130204', '古冶区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130205, '130205', '开平区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130207, '130207', '丰南区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130208, '130208', '丰润区', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130223, '130223', '滦　县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130224, '130224', '滦南县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130225, '130225', '乐亭县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130227, '130227', '迁西县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130229, '130229', '玉田县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130230, '130230', '唐海县', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130281, '130281', '遵化市', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130283, '130283', '迁安市', '130200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130301, '130301', '市辖区', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130302, '130302', '海港区', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130303, '130303', '山海关区', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130304, '130304', '北戴河区', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130321, '130321', '青龙满族自治县', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130322, '130322', '昌黎县', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130323, '130323', '抚宁县', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130324, '130324', '卢龙县', '130300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130401, '130401', '市辖区', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130402, '130402', '邯山区', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130403, '130403', '丛台区', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130404, '130404', '复兴区', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130406, '130406', '峰峰矿区', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130421, '130421', '邯郸县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130423, '130423', '临漳县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130424, '130424', '成安县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130425, '130425', '大名县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130426, '130426', '涉　县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130427, '130427', '磁　县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130428, '130428', '肥乡县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130429, '130429', '永年县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130430, '130430', '邱　县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130431, '130431', '鸡泽县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130432, '130432', '广平县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130433, '130433', '馆陶县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130434, '130434', '魏　县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130435, '130435', '曲周县', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130481, '130481', '武安市', '130400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130501, '130501', '市辖区', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130502, '130502', '桥东区', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130503, '130503', '桥西区', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130521, '130521', '邢台县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130522, '130522', '临城县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130523, '130523', '内邱县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130524, '130524', '柏乡县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130525, '130525', '隆尧县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130526, '130526', '任　县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130527, '130527', '南和县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130528, '130528', '宁晋县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130529, '130529', '巨鹿县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130530, '130530', '新河县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130531, '130531', '广宗县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130532, '130532', '平乡县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130533, '130533', '威　县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130534, '130534', '清河县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130535, '130535', '临西县', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130581, '130581', '南宫市', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130582, '130582', '沙河市', '130500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130601, '130601', '市辖区', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130602, '130602', '新市区', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130603, '130603', '北市区', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130604, '130604', '南市区', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130621, '130621', '满城县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130622, '130622', '清苑县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130623, '130623', '涞水县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130624, '130624', '阜平县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130625, '130625', '徐水县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130626, '130626', '定兴县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130627, '130627', '唐　县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130628, '130628', '高阳县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130629, '130629', '容城县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130630, '130630', '涞源县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130631, '130631', '望都县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130632, '130632', '安新县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130633, '130633', '易　县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130634, '130634', '曲阳县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130635, '130635', '蠡　县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130636, '130636', '顺平县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130637, '130637', '博野县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130638, '130638', '雄　县', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130681, '130681', '涿州市', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130682, '130682', '定州市', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130683, '130683', '安国市', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130684, '130684', '高碑店市', '130600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130701, '130701', '市辖区', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130702, '130702', '桥东区', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130703, '130703', '桥西区', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130705, '130705', '宣化区', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130706, '130706', '下花园区', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130721, '130721', '宣化县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130722, '130722', '张北县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130723, '130723', '康保县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130724, '130724', '沽源县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130725, '130725', '尚义县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130726, '130726', '蔚　县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130727, '130727', '阳原县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130728, '130728', '怀安县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130729, '130729', '万全县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130730, '130730', '怀来县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130731, '130731', '涿鹿县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130732, '130732', '赤城县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130733, '130733', '崇礼县', '130700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130801, '130801', '市辖区', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130802, '130802', '双桥区', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130803, '130803', '双滦区', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130804, '130804', '鹰手营子矿区', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130821, '130821', '承德县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130822, '130822', '兴隆县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130823, '130823', '平泉县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130824, '130824', '滦平县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130825, '130825', '隆化县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130826, '130826', '丰宁满族自治县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130827, '130827', '宽城满族自治县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130828, '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130901, '130901', '市辖区', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130902, '130902', '新华区', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130903, '130903', '运河区', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130921, '130921', '沧　县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130922, '130922', '青　县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130923, '130923', '东光县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130924, '130924', '海兴县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130925, '130925', '盐山县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130926, '130926', '肃宁县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130927, '130927', '南皮县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130928, '130928', '吴桥县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130929, '130929', '献　县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130930, '130930', '孟村回族自治县', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130981, '130981', '泊头市', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130982, '130982', '任丘市', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130983, '130983', '黄骅市', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (130984, '130984', '河间市', '130900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131001, '131001', '市辖区', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131002, '131002', '安次区', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131003, '131003', '广阳区', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131022, '131022', '固安县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131023, '131023', '永清县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131024, '131024', '香河县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131025, '131025', '大城县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131026, '131026', '文安县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131028, '131028', '大厂回族自治县', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131081, '131081', '霸州市', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131082, '131082', '三河市', '131000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131101, '131101', '市辖区', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131102, '131102', '桃城区', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131121, '131121', '枣强县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131122, '131122', '武邑县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131123, '131123', '武强县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131124, '131124', '饶阳县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131125, '131125', '安平县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131126, '131126', '故城县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131127, '131127', '景　县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131128, '131128', '阜城县', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131181, '131181', '冀州市', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (131182, '131182', '深州市', '131100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140101, '140101', '市辖区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140105, '140105', '小店区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140106, '140106', '迎泽区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140107, '140107', '杏花岭区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140108, '140108', '尖草坪区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140109, '140109', '万柏林区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140110, '140110', '晋源区', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140121, '140121', '清徐县', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140122, '140122', '阳曲县', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140123, '140123', '娄烦县', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140181, '140181', '古交市', '140100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140201, '140201', '市辖区', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140202, '140202', '城　区', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140203, '140203', '矿　区', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140211, '140211', '南郊区', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140212, '140212', '新荣区', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140221, '140221', '阳高县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140222, '140222', '天镇县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140223, '140223', '广灵县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140224, '140224', '灵丘县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140225, '140225', '浑源县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140226, '140226', '左云县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140227, '140227', '大同县', '140200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140301, '140301', '市辖区', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140302, '140302', '城　区', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140303, '140303', '矿　区', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140311, '140311', '郊　区', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140321, '140321', '平定县', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140322, '140322', '盂　县', '140300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140401, '140401', '市辖区', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140402, '140402', '城　区', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140411, '140411', '郊　区', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140421, '140421', '长治县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140423, '140423', '襄垣县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140424, '140424', '屯留县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140425, '140425', '平顺县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140426, '140426', '黎城县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140427, '140427', '壶关县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140428, '140428', '长子县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140429, '140429', '武乡县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140430, '140430', '沁　县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140431, '140431', '沁源县', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140481, '140481', '潞城市', '140400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140501, '140501', '市辖区', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140502, '140502', '城　区', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140521, '140521', '沁水县', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140522, '140522', '阳城县', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140524, '140524', '陵川县', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140525, '140525', '泽州县', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140581, '140581', '高平市', '140500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140601, '140601', '市辖区', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140602, '140602', '朔城区', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140603, '140603', '平鲁区', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140621, '140621', '山阴县', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140622, '140622', '应　县', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140623, '140623', '右玉县', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140624, '140624', '怀仁县', '140600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140701, '140701', '市辖区', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140702, '140702', '榆次区', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140721, '140721', '榆社县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140722, '140722', '左权县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140723, '140723', '和顺县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140724, '140724', '昔阳县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140725, '140725', '寿阳县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140726, '140726', '太谷县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140727, '140727', '祁　县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140728, '140728', '平遥县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140729, '140729', '灵石县', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140781, '140781', '介休市', '140700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140801, '140801', '市辖区', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140802, '140802', '盐湖区', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140821, '140821', '临猗县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140822, '140822', '万荣县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140823, '140823', '闻喜县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140824, '140824', '稷山县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140825, '140825', '新绛县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140826, '140826', '绛　县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140827, '140827', '垣曲县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140828, '140828', '夏　县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140829, '140829', '平陆县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140830, '140830', '芮城县', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140881, '140881', '永济市', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140882, '140882', '河津市', '140800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140901, '140901', '市辖区', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140902, '140902', '忻府区', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140921, '140921', '定襄县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140922, '140922', '五台县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140923, '140923', '代　县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140924, '140924', '繁峙县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140925, '140925', '宁武县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140926, '140926', '静乐县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140927, '140927', '神池县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140928, '140928', '五寨县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140929, '140929', '岢岚县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140930, '140930', '河曲县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140931, '140931', '保德县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140932, '140932', '偏关县', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (140981, '140981', '原平市', '140900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141001, '141001', '市辖区', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141002, '141002', '尧都区', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141021, '141021', '曲沃县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141022, '141022', '翼城县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141023, '141023', '襄汾县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141024, '141024', '洪洞县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141025, '141025', '古　县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141026, '141026', '安泽县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141027, '141027', '浮山县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141028, '141028', '吉　县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141029, '141029', '乡宁县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141030, '141030', '大宁县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141031, '141031', '隰　县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141032, '141032', '永和县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141033, '141033', '蒲　县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141034, '141034', '汾西县', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141081, '141081', '侯马市', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141082, '141082', '霍州市', '141000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141101, '141101', '市辖区', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141102, '141102', '离石区', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141121, '141121', '文水县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141122, '141122', '交城县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141123, '141123', '兴　县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141124, '141124', '临　县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141125, '141125', '柳林县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141126, '141126', '石楼县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141127, '141127', '岚　县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141128, '141128', '方山县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141129, '141129', '中阳县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141130, '141130', '交口县', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141181, '141181', '孝义市', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (141182, '141182', '汾阳市', '141100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150101, '150101', '市辖区', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150102, '150102', '新城区', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150103, '150103', '回民区', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150104, '150104', '玉泉区', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150105, '150105', '赛罕区', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150121, '150121', '土默特左旗', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150122, '150122', '托克托县', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150123, '150123', '和林格尔县', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150124, '150124', '清水河县', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150125, '150125', '武川县', '150100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150201, '150201', '市辖区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150202, '150202', '东河区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150203, '150203', '昆都仑区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150204, '150204', '青山区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150205, '150205', '石拐区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150206, '150206', '白云矿区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150207, '150207', '九原区', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150221, '150221', '土默特右旗', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150222, '150222', '固阳县', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150223, '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150301, '150301', '市辖区', '150300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150302, '150302', '海勃湾区', '150300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150303, '150303', '海南区', '150300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150304, '150304', '乌达区', '150300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150401, '150401', '市辖区', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150402, '150402', '红山区', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150403, '150403', '元宝山区', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150404, '150404', '松山区', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150421, '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150422, '150422', '巴林左旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150423, '150423', '巴林右旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150424, '150424', '林西县', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150425, '150425', '克什克腾旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150426, '150426', '翁牛特旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150428, '150428', '喀喇沁旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150429, '150429', '宁城县', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150430, '150430', '敖汉旗', '150400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150501, '150501', '市辖区', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150502, '150502', '科尔沁区', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150521, '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150522, '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150523, '150523', '开鲁县', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150524, '150524', '库伦旗', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150525, '150525', '奈曼旗', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150526, '150526', '扎鲁特旗', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150581, '150581', '霍林郭勒市', '150500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150602, '150602', '东胜区', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150621, '150621', '达拉特旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150622, '150622', '准格尔旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150623, '150623', '鄂托克前旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150624, '150624', '鄂托克旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150625, '150625', '杭锦旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150626, '150626', '乌审旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150627, '150627', '伊金霍洛旗', '150600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150701, '150701', '市辖区', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150702, '150702', '海拉尔区', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150721, '150721', '阿荣旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150722, '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150723, '150723', '鄂伦春自治旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150724, '150724', '鄂温克族自治旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150725, '150725', '陈巴尔虎旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150726, '150726', '新巴尔虎左旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150727, '150727', '新巴尔虎右旗', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150781, '150781', '满洲里市', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150782, '150782', '牙克石市', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150783, '150783', '扎兰屯市', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150784, '150784', '额尔古纳市', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150785, '150785', '根河市', '150700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150801, '150801', '市辖区', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150802, '150802', '临河区', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150821, '150821', '五原县', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150822, '150822', '磴口县', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150823, '150823', '乌拉特前旗', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150824, '150824', '乌拉特中旗', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150825, '150825', '乌拉特后旗', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150826, '150826', '杭锦后旗', '150800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150901, '150901', '市辖区', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150902, '150902', '集宁区', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150921, '150921', '卓资县', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150922, '150922', '化德县', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150923, '150923', '商都县', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150924, '150924', '兴和县', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150925, '150925', '凉城县', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150926, '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150927, '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150928, '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150929, '150929', '四子王旗', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (150981, '150981', '丰镇市', '150900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152201, '152201', '乌兰浩特市', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152202, '152202', '阿尔山市', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152221, '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152222, '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152223, '152223', '扎赉特旗', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152224, '152224', '突泉县', '152200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152501, '152501', '二连浩特市', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152502, '152502', '锡林浩特市', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152522, '152522', '阿巴嘎旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152523, '152523', '苏尼特左旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152524, '152524', '苏尼特右旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152525, '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152526, '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152527, '152527', '太仆寺旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152528, '152528', '镶黄旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152529, '152529', '正镶白旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152530, '152530', '正蓝旗', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152531, '152531', '多伦县', '152500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152921, '152921', '阿拉善左旗', '152900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152922, '152922', '阿拉善右旗', '152900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (152923, '152923', '额济纳旗', '152900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210101, '210101', '市辖区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210102, '210102', '和平区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210103, '210103', '沈河区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210104, '210104', '大东区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210105, '210105', '皇姑区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210106, '210106', '铁西区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210111, '210111', '苏家屯区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210112, '210112', '东陵区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210113, '210113', '新城子区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210114, '210114', '于洪区', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210122, '210122', '辽中县', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210123, '210123', '康平县', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210124, '210124', '法库县', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210181, '210181', '新民市', '210100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210201, '210201', '市辖区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210202, '210202', '中山区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210203, '210203', '西岗区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210204, '210204', '沙河口区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210211, '210211', '甘井子区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210212, '210212', '旅顺口区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210213, '210213', '金州区', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210224, '210224', '长海县', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210281, '210281', '瓦房店市', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210282, '210282', '普兰店市', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210283, '210283', '庄河市', '210200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210301, '210301', '市辖区', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210302, '210302', '铁东区', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210303, '210303', '铁西区', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210304, '210304', '立山区', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210311, '210311', '千山区', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210321, '210321', '台安县', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210323, '210323', '岫岩满族自治县', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210381, '210381', '海城市', '210300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210401, '210401', '市辖区', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210402, '210402', '新抚区', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210403, '210403', '东洲区', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210404, '210404', '望花区', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210411, '210411', '顺城区', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210421, '210421', '抚顺县', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210422, '210422', '新宾满族自治县', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210423, '210423', '清原满族自治县', '210400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210501, '210501', '市辖区', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210502, '210502', '平山区', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210503, '210503', '溪湖区', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210504, '210504', '明山区', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210505, '210505', '南芬区', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210521, '210521', '本溪满族自治县', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210522, '210522', '桓仁满族自治县', '210500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210601, '210601', '市辖区', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210602, '210602', '元宝区', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210603, '210603', '振兴区', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210604, '210604', '振安区', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210624, '210624', '宽甸满族自治县', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210681, '210681', '东港市', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210682, '210682', '凤城市', '210600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210701, '210701', '市辖区', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210702, '210702', '古塔区', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210703, '210703', '凌河区', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210711, '210711', '太和区', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210726, '210726', '黑山县', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210727, '210727', '义　县', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210781, '210781', '凌海市', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210782, '210782', '北宁市', '210700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210801, '210801', '市辖区', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210802, '210802', '站前区', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210803, '210803', '西市区', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210804, '210804', '鲅鱼圈区', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210811, '210811', '老边区', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210881, '210881', '盖州市', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210882, '210882', '大石桥市', '210800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210901, '210901', '市辖区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210902, '210902', '海州区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210903, '210903', '新邱区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210904, '210904', '太平区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210905, '210905', '清河门区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210911, '210911', '细河区', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210921, '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (210922, '210922', '彰武县', '210900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211001, '211001', '市辖区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211002, '211002', '白塔区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211003, '211003', '文圣区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211004, '211004', '宏伟区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211005, '211005', '弓长岭区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211011, '211011', '太子河区', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211021, '211021', '辽阳县', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211081, '211081', '灯塔市', '211000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211101, '211101', '市辖区', '211100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211102, '211102', '双台子区', '211100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211103, '211103', '兴隆台区', '211100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211121, '211121', '大洼县', '211100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211122, '211122', '盘山县', '211100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211201, '211201', '市辖区', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211202, '211202', '银州区', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211204, '211204', '清河区', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211221, '211221', '铁岭县', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211223, '211223', '西丰县', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211224, '211224', '昌图县', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211281, '211281', '调兵山市', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211282, '211282', '开原市', '211200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211301, '211301', '市辖区', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211302, '211302', '双塔区', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211303, '211303', '龙城区', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211321, '211321', '朝阳县', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211322, '211322', '建平县', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211324, '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211381, '211381', '北票市', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211382, '211382', '凌源市', '211300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211401, '211401', '市辖区', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211402, '211402', '连山区', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211403, '211403', '龙港区', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211404, '211404', '南票区', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211421, '211421', '绥中县', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211422, '211422', '建昌县', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (211481, '211481', '兴城市', '211400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220101, '220101', '市辖区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220102, '220102', '南关区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220103, '220103', '宽城区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220104, '220104', '朝阳区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220105, '220105', '二道区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220106, '220106', '绿园区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220112, '220112', '双阳区', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220122, '220122', '农安县', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220181, '220181', '九台市', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220182, '220182', '榆树市', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220183, '220183', '德惠市', '220100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220201, '220201', '市辖区', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220202, '220202', '昌邑区', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220203, '220203', '龙潭区', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220204, '220204', '船营区', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220211, '220211', '丰满区', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220221, '220221', '永吉县', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220281, '220281', '蛟河市', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220282, '220282', '桦甸市', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220283, '220283', '舒兰市', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220284, '220284', '磐石市', '220200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220301, '220301', '市辖区', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220302, '220302', '铁西区', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220303, '220303', '铁东区', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220322, '220322', '梨树县', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220323, '220323', '伊通满族自治县', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220381, '220381', '公主岭市', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220382, '220382', '双辽市', '220300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220401, '220401', '市辖区', '220400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220402, '220402', '龙山区', '220400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220403, '220403', '西安区', '220400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220421, '220421', '东丰县', '220400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220422, '220422', '东辽县', '220400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220501, '220501', '市辖区', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220502, '220502', '东昌区', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220503, '220503', '二道江区', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220521, '220521', '通化县', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220523, '220523', '辉南县', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220524, '220524', '柳河县', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220581, '220581', '梅河口市', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220582, '220582', '集安市', '220500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220601, '220601', '市辖区', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220602, '220602', '八道江区', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220621, '220621', '抚松县', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220622, '220622', '靖宇县', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220623, '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220604, '220604', '江源区', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220681, '220681', '临江市', '220600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220701, '220701', '市辖区', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220702, '220702', '宁江区', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220721, '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220722, '220722', '长岭县', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220723, '220723', '乾安县', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220724, '220724', '扶余县', '220700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220801, '220801', '市辖区', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220802, '220802', '洮北区', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220821, '220821', '镇赉县', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220822, '220822', '通榆县', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220881, '220881', '洮南市', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (220882, '220882', '大安市', '220800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222401, '222401', '延吉市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222402, '222402', '图们市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222403, '222403', '敦化市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222404, '222404', '珲春市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222405, '222405', '龙井市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222406, '222406', '和龙市', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222424, '222424', '汪清县', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (222426, '222426', '安图县', '222400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230101, '230101', '市辖区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230102, '230102', '道里区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230103, '230103', '南岗区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230104, '230104', '道外区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230110, '230110', '香坊区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230107, '230107', '动力区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230108, '230108', '平房区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230109, '230109', '松北区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230111, '230111', '呼兰区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230123, '230123', '依兰县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230124, '230124', '方正县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230125, '230125', '宾　县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230126, '230126', '巴彦县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230127, '230127', '木兰县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230128, '230128', '通河县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230129, '230129', '延寿县', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230112, '230112', '阿城区', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230182, '230182', '双城市', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230183, '230183', '尚志市', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230184, '230184', '五常市', '230100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230201, '230201', '市辖区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230202, '230202', '龙沙区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230203, '230203', '建华区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230204, '230204', '铁锋区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230205, '230205', '昂昂溪区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230206, '230206', '富拉尔基区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230207, '230207', '碾子山区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230208, '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230221, '230221', '龙江县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230223, '230223', '依安县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230224, '230224', '泰来县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230225, '230225', '甘南县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230227, '230227', '富裕县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230229, '230229', '克山县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230230, '230230', '克东县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230231, '230231', '拜泉县', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230281, '230281', '讷河市', '230200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230301, '230301', '市辖区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230302, '230302', '鸡冠区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230303, '230303', '恒山区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230304, '230304', '滴道区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230305, '230305', '梨树区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230306, '230306', '城子河区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230307, '230307', '麻山区', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230321, '230321', '鸡东县', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230381, '230381', '虎林市', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230382, '230382', '密山市', '230300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230401, '230401', '市辖区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230402, '230402', '向阳区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230403, '230403', '工农区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230404, '230404', '南山区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230405, '230405', '兴安区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230406, '230406', '东山区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230407, '230407', '兴山区', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230421, '230421', '萝北县', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230422, '230422', '绥滨县', '230400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230501, '230501', '市辖区', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230502, '230502', '尖山区', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230503, '230503', '岭东区', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230505, '230505', '四方台区', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230506, '230506', '宝山区', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230521, '230521', '集贤县', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230522, '230522', '友谊县', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230523, '230523', '宝清县', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230524, '230524', '饶河县', '230500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230601, '230601', '市辖区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230602, '230602', '萨尔图区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230603, '230603', '龙凤区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230604, '230604', '让胡路区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230605, '230605', '红岗区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230606, '230606', '大同区', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230621, '230621', '肇州县', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230622, '230622', '肇源县', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230623, '230623', '林甸县', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230624, '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230701, '230701', '市辖区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230702, '230702', '伊春区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230703, '230703', '南岔区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230704, '230704', '友好区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230705, '230705', '西林区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230706, '230706', '翠峦区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230707, '230707', '新青区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230708, '230708', '美溪区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230709, '230709', '金山屯区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230710, '230710', '五营区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230711, '230711', '乌马河区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230712, '230712', '汤旺河区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230713, '230713', '带岭区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230714, '230714', '乌伊岭区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230715, '230715', '红星区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230716, '230716', '上甘岭区', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230722, '230722', '嘉荫县', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230781, '230781', '铁力市', '230700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230801, '230801', '市辖区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230802, '230802', '永红区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230803, '230803', '向阳区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230804, '230804', '前进区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230805, '230805', '东风区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230811, '230811', '郊　区', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230822, '230822', '桦南县', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230826, '230826', '桦川县', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230828, '230828', '汤原县', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230833, '230833', '抚远县', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230881, '230881', '同江市', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230882, '230882', '富锦市', '230800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230901, '230901', '市辖区', '230900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230902, '230902', '新兴区', '230900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230903, '230903', '桃山区', '230900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230904, '230904', '茄子河区', '230900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (230921, '230921', '勃利县', '230900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231001, '231001', '市辖区', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231002, '231002', '东安区', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231003, '231003', '阳明区', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231004, '231004', '爱民区', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231005, '231005', '西安区', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231024, '231024', '东宁县', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231025, '231025', '林口县', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231081, '231081', '绥芬河市', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231083, '231083', '海林市', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231084, '231084', '宁安市', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231085, '231085', '穆棱市', '231000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231101, '231101', '市辖区', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231102, '231102', '爱辉区', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231121, '231121', '嫩江县', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231123, '231123', '逊克县', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231124, '231124', '孙吴县', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231181, '231181', '北安市', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231182, '231182', '五大连池市', '231100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231201, '231201', '市辖区', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231202, '231202', '北林区', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231221, '231221', '望奎县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231222, '231222', '兰西县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231223, '231223', '青冈县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231224, '231224', '庆安县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231225, '231225', '明水县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231226, '231226', '绥棱县', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231281, '231281', '安达市', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231282, '231282', '肇东市', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (231283, '231283', '海伦市', '231200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232721, '232721', '呼玛县', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232722, '232722', '塔河县', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232723, '232723', '漠河县', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310101, '310101', '黄浦区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310103, '310103', '卢湾区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310104, '310104', '徐汇区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310105, '310105', '长宁区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310106, '310106', '静安区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310107, '310107', '普陀区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310108, '310108', '闸北区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310109, '310109', '虹口区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310110, '310110', '杨浦区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310112, '310112', '闵行区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310113, '310113', '宝山区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310114, '310114', '嘉定区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310115, '310115', '浦东新区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310116, '310116', '金山区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310117, '310117', '松江区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310118, '310118', '青浦区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310119, '310119', '南汇区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310120, '310120', '奉贤区', '310100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (310230, '310230', '崇明县', '310200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320101, '320101', '市辖区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320102, '320102', '玄武区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320103, '320103', '白下区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320104, '320104', '秦淮区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320105, '320105', '建邺区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320106, '320106', '鼓楼区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320107, '320107', '下关区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320111, '320111', '浦口区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320113, '320113', '栖霞区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320114, '320114', '雨花台区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320115, '320115', '江宁区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320116, '320116', '六合区', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320124, '320124', '溧水县', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320125, '320125', '高淳县', '320100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320201, '320201', '市辖区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320202, '320202', '崇安区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320203, '320203', '南长区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320204, '320204', '北塘区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320205, '320205', '锡山区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320206, '320206', '惠山区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320211, '320211', '滨湖区', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320281, '320281', '江阴市', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320282, '320282', '宜兴市', '320200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320301, '320301', '市辖区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320302, '320302', '鼓楼区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320303, '320303', '云龙区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320304, '320304', '九里区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320305, '320305', '贾汪区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320311, '320311', '泉山区', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320321, '320321', '丰　县', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320322, '320322', '沛　县', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320323, '320323', '铜山县', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320324, '320324', '睢宁县', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320381, '320381', '新沂市', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320382, '320382', '邳州市', '320300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320401, '320401', '市辖区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320402, '320402', '天宁区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320404, '320404', '钟楼区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320405, '320405', '戚墅堰区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320411, '320411', '新北区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320412, '320412', '武进区', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320481, '320481', '溧阳市', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320482, '320482', '金坛市', '320400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320501, '320501', '市辖区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320502, '320502', '沧浪区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320503, '320503', '平江区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320504, '320504', '金阊区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320505, '320505', '虎丘区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320506, '320506', '吴中区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320507, '320507', '相城区', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320581, '320581', '常熟市', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320582, '320582', '张家港市', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320583, '320583', '昆山市', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320584, '320584', '吴江市', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320585, '320585', '太仓市', '320500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320601, '320601', '市辖区', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320602, '320602', '崇川区', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320611, '320611', '港闸区', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320621, '320621', '海安县', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320623, '320623', '如东县', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320681, '320681', '启东市', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320682, '320682', '如皋市', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320683, '320683', '通州市', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320684, '320684', '海门市', '320600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320701, '320701', '市辖区', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320703, '320703', '连云区', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320705, '320705', '新浦区', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320706, '320706', '海州区', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320721, '320721', '赣榆县', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320722, '320722', '东海县', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320723, '320723', '灌云县', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320724, '320724', '灌南县', '320700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320801, '320801', '市辖区', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320802, '320802', '清河区', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320803, '320803', '楚州区', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320804, '320804', '淮阴区', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320811, '320811', '清浦区', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320826, '320826', '涟水县', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320829, '320829', '洪泽县', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320830, '320830', '盱眙县', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320831, '320831', '金湖县', '320800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320901, '320901', '市辖区', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320902, '320902', '亭湖区', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320903, '320903', '盐都区', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320921, '320921', '响水县', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320922, '320922', '滨海县', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320923, '320923', '阜宁县', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320924, '320924', '射阳县', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320925, '320925', '建湖县', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320981, '320981', '东台市', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (320982, '320982', '大丰市', '320900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321001, '321001', '市辖区', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321002, '321002', '广陵区', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321003, '321003', '邗江区', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321011, '321011', '维扬区', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321023, '321023', '宝应县', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321081, '321081', '仪征市', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321084, '321084', '高邮市', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321088, '321088', '江都市', '321000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321101, '321101', '市区', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321102, '321102', '京口区', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321111, '321111', '润州区', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321112, '321112', '丹徒区', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321181, '321181', '丹阳市', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321182, '321182', '扬中市', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321183, '321183', '句容市', '321100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321201, '321201', '市辖区', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321202, '321202', '海陵区', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321203, '321203', '高港区', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321281, '321281', '兴化市', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321282, '321282', '靖江市', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321283, '321283', '泰兴市', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321284, '321284', '姜堰市', '321200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321301, '321301', '市辖区', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321302, '321302', '宿城区', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321311, '321311', '宿豫区', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321322, '321322', '沭阳县', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321323, '321323', '泗阳县', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (321324, '321324', '泗洪县', '321300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330101, '330101', '市辖区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330102, '330102', '上城区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330103, '330103', '下城区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330104, '330104', '江干区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330105, '330105', '拱墅区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330106, '330106', '西湖区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330108, '330108', '滨江区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330109, '330109', '萧山区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330110, '330110', '余杭区', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330122, '330122', '桐庐县', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330127, '330127', '淳安县', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330182, '330182', '建德市', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330183, '330183', '富阳市', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330185, '330185', '临安市', '330100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330201, '330201', '市辖区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330203, '330203', '海曙区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330204, '330204', '江东区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330205, '330205', '江北区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330206, '330206', '北仑区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330211, '330211', '镇海区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330212, '330212', '鄞州区', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330225, '330225', '象山县', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330226, '330226', '宁海县', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330281, '330281', '余姚市', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330282, '330282', '慈溪市', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330283, '330283', '奉化市', '330200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330301, '330301', '市辖区', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330302, '330302', '鹿城区', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330303, '330303', '龙湾区', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330304, '330304', '瓯海区', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330322, '330322', '洞头县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330324, '330324', '永嘉县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330326, '330326', '平阳县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330327, '330327', '苍南县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330328, '330328', '文成县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330329, '330329', '泰顺县', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330381, '330381', '瑞安市', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330382, '330382', '乐清市', '330300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330401, '330401', '市辖区', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330402, '330402', '南湖区', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330411, '330411', '秀洲区', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330421, '330421', '嘉善县', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330424, '330424', '海盐县', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330481, '330481', '海宁市', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330482, '330482', '平湖市', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330483, '330483', '桐乡市', '330400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330501, '330501', '市辖区', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330502, '330502', '吴兴区', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330503, '330503', '南浔区', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330521, '330521', '德清县', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330522, '330522', '长兴县', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330523, '330523', '安吉县', '330500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330601, '330601', '市辖区', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330602, '330602', '越城区', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330621, '330621', '绍兴县', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330624, '330624', '新昌县', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330681, '330681', '诸暨市', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330682, '330682', '上虞市', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330683, '330683', '嵊州市', '330600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330701, '330701', '市辖区', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330702, '330702', '婺城区', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330703, '330703', '金东区', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330723, '330723', '武义县', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330726, '330726', '浦江县', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330727, '330727', '磐安县', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330781, '330781', '兰溪市', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330782, '330782', '义乌市', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330783, '330783', '东阳市', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330784, '330784', '永康市', '330700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330801, '330801', '市辖区', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330802, '330802', '柯城区', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330803, '330803', '衢江区', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330822, '330822', '常山县', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330824, '330824', '开化县', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330825, '330825', '龙游县', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330881, '330881', '江山市', '330800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330901, '330901', '市辖区', '330900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330902, '330902', '定海区', '330900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330903, '330903', '普陀区', '330900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330921, '330921', '岱山县', '330900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (330922, '330922', '嵊泗县', '330900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331001, '331001', '市辖区', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331002, '331002', '椒江区', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331003, '331003', '黄岩区', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331004, '331004', '路桥区', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331021, '331021', '玉环县', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331022, '331022', '三门县', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331023, '331023', '天台县', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331024, '331024', '仙居县', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331081, '331081', '温岭市', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331082, '331082', '临海市', '331000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331101, '331101', '市辖区', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331102, '331102', '莲都区', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331121, '331121', '青田县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331122, '331122', '缙云县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331123, '331123', '遂昌县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331124, '331124', '松阳县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331125, '331125', '云和县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331126, '331126', '庆元县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331127, '331127', '景宁畲族自治县', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (331181, '331181', '龙泉市', '331100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340101, '340101', '市辖区', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340102, '340102', '瑶海区', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340103, '340103', '庐阳区', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340104, '340104', '蜀山区', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340111, '340111', '包河区', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340121, '340121', '长丰县', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340122, '340122', '肥东县', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340123, '340123', '肥西县', '340100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340201, '340201', '市辖区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340202, '340202', '镜湖区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340203, '340203', '弋江区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340204, '340204', '新芜区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340207, '340207', '鸠江区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340221, '340221', '芜湖县', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340222, '340222', '繁昌县', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340223, '340223', '南陵县', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340301, '340301', '市辖区', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340302, '340302', '龙子湖区', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340303, '340303', '蚌山区', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340304, '340304', '禹会区', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340311, '340311', '淮上区', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340321, '340321', '怀远县', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340322, '340322', '五河县', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340323, '340323', '固镇县', '340300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340401, '340401', '市辖区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340402, '340402', '大通区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340403, '340403', '田家庵区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340404, '340404', '谢家集区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340405, '340405', '八公山区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340406, '340406', '潘集区', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340421, '340421', '凤台县', '340400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340501, '340501', '市辖区', '340500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340502, '340502', '金家庄区', '340500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340503, '340503', '花山区', '340500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340504, '340504', '雨山区', '340500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340521, '340521', '当涂县', '340500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340601, '340601', '市辖区', '340600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340602, '340602', '杜集区', '340600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340603, '340603', '相山区', '340600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340604, '340604', '烈山区', '340600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340621, '340621', '濉溪县', '340600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340701, '340701', '市辖区', '340700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340702, '340702', '铜官山区', '340700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340703, '340703', '狮子山区', '340700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340711, '340711', '铜陵市郊区', '340700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340721, '340721', '铜陵县', '340700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340801, '340801', '市辖区', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340802, '340802', '迎江区', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340803, '340803', '大观区', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340811, '340811', '宜秀区', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340822, '340822', '怀宁县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340823, '340823', '枞阳县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340824, '340824', '潜山县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340825, '340825', '太湖县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340826, '340826', '宿松县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340827, '340827', '望江县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340828, '340828', '岳西县', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340881, '340881', '桐城市', '340800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341001, '341001', '市辖区', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341002, '341002', '屯溪区', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341003, '341003', '黄山区', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341004, '341004', '徽州区', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341021, '341021', '歙　县', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341022, '341022', '休宁县', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341023, '341023', '黟　县', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341024, '341024', '祁门县', '341000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341101, '341101', '市辖区', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341102, '341102', '琅琊区', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341103, '341103', '南谯区', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341122, '341122', '来安县', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341124, '341124', '全椒县', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341125, '341125', '定远县', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341126, '341126', '凤阳县', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341181, '341181', '天长市', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341182, '341182', '明光市', '341100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341201, '341201', '市辖区', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341202, '341202', '颍州区', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341203, '341203', '颍东区', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341204, '341204', '颍泉区', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341221, '341221', '临泉县', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341222, '341222', '太和县', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341225, '341225', '阜南县', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341226, '341226', '颍上县', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341282, '341282', '界首市', '341200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341301, '341301', '市辖区', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341302, '341302', '墉桥区', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341321, '341321', '砀山县', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341322, '341322', '萧　县', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341323, '341323', '灵璧县', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341324, '341324', '泗　县', '341300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341401, '341401', '市辖区', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341402, '341402', '居巢区', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341421, '341421', '庐江县', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341422, '341422', '无为县', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341423, '341423', '含山县', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341424, '341424', '和　县', '341400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341501, '341501', '市辖区', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341502, '341502', '金安区', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341503, '341503', '裕安区', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341521, '341521', '寿　县', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341522, '341522', '霍邱县', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341523, '341523', '舒城县', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341524, '341524', '金寨县', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341525, '341525', '霍山县', '341500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341601, '341601', '市辖区', '341600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341602, '341602', '谯城区', '341600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341621, '341621', '涡阳县', '341600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341622, '341622', '蒙城县', '341600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341623, '341623', '利辛县', '341600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341701, '341701', '市辖区', '341700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341702, '341702', '贵池区', '341700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341721, '341721', '东至县', '341700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341722, '341722', '石台县', '341700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341723, '341723', '青阳县', '341700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341801, '341801', '市辖区', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341802, '341802', '宣州区', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341821, '341821', '郎溪县', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341822, '341822', '广德县', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341823, '341823', '泾　县', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341824, '341824', '绩溪县', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341825, '341825', '旌德县', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (341881, '341881', '宁国市', '341800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350101, '350101', '市辖区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350102, '350102', '鼓楼区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350103, '350103', '台江区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350104, '350104', '仓山区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350105, '350105', '马尾区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350111, '350111', '晋安区', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350121, '350121', '闽侯县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350122, '350122', '连江县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350123, '350123', '罗源县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350124, '350124', '闽清县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350125, '350125', '永泰县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350128, '350128', '平潭县', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350181, '350181', '福清市', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350182, '350182', '长乐市', '350100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350201, '350201', '市辖区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350203, '350203', '思明区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350205, '350205', '海沧区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350206, '350206', '湖里区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350211, '350211', '集美区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350212, '350212', '同安区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350213, '350213', '翔安区', '350200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350301, '350301', '市辖区', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350302, '350302', '城厢区', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350303, '350303', '涵江区', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350304, '350304', '荔城区', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350305, '350305', '秀屿区', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350322, '350322', '仙游县', '350300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350401, '350401', '市辖区', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350402, '350402', '梅列区', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350403, '350403', '三元区', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350421, '350421', '明溪县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350423, '350423', '清流县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350424, '350424', '宁化县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350425, '350425', '大田县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350426, '350426', '尤溪县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350427, '350427', '沙　县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350428, '350428', '将乐县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350429, '350429', '泰宁县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350430, '350430', '建宁县', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350481, '350481', '永安市', '350400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350501, '350501', '市辖区', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350502, '350502', '鲤城区', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350503, '350503', '丰泽区', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350504, '350504', '洛江区', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350505, '350505', '泉港区', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350521, '350521', '惠安县', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350524, '350524', '安溪县', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350525, '350525', '永春县', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350526, '350526', '德化县', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350527, '350527', '金门县', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350581, '350581', '石狮市', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350582, '350582', '晋江市', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350583, '350583', '南安市', '350500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350601, '350601', '市辖区', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350602, '350602', '芗城区', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350603, '350603', '龙文区', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350622, '350622', '云霄县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350623, '350623', '漳浦县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350624, '350624', '诏安县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350625, '350625', '长泰县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350626, '350626', '东山县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350627, '350627', '南靖县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350628, '350628', '平和县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350629, '350629', '华安县', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350681, '350681', '龙海市', '350600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350701, '350701', '市辖区', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350702, '350702', '延平区', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350721, '350721', '顺昌县', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350722, '350722', '浦城县', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350723, '350723', '光泽县', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350724, '350724', '松溪县', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350725, '350725', '政和县', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350781, '350781', '邵武市', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350782, '350782', '武夷山市', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350783, '350783', '建瓯市', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350784, '350784', '建阳市', '350700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350801, '350801', '市辖区', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350802, '350802', '新罗区', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350821, '350821', '长汀县', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350822, '350822', '永定县', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350823, '350823', '上杭县', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350824, '350824', '武平县', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350825, '350825', '连城县', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350881, '350881', '漳平市', '350800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350901, '350901', '市辖区', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350902, '350902', '蕉城区', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350921, '350921', '霞浦县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350922, '350922', '古田县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350923, '350923', '屏南县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350924, '350924', '寿宁县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350925, '350925', '周宁县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350926, '350926', '柘荣县', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350981, '350981', '福安市', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (350982, '350982', '福鼎市', '350900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360101, '360101', '市辖区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360102, '360102', '东湖区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360103, '360103', '西湖区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360104, '360104', '青云谱区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360105, '360105', '湾里区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360111, '360111', '青山湖区', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360121, '360121', '南昌县', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360122, '360122', '新建县', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360123, '360123', '安义县', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360124, '360124', '进贤县', '360100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360201, '360201', '市辖区', '360200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360202, '360202', '昌江区', '360200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360203, '360203', '珠山区', '360200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360222, '360222', '浮梁县', '360200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360281, '360281', '乐平市', '360200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360301, '360301', '市辖区', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360302, '360302', '安源区', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360313, '360313', '湘东区', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360321, '360321', '莲花县', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360322, '360322', '上栗县', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360323, '360323', '芦溪县', '360300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360401, '360401', '市辖区', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360402, '360402', '庐山区', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360403, '360403', '浔阳区', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360421, '360421', '九江县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360423, '360423', '武宁县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360424, '360424', '修水县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360425, '360425', '永修县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360426, '360426', '德安县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360427, '360427', '星子县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360428, '360428', '都昌县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360429, '360429', '湖口县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360430, '360430', '彭泽县', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360481, '360481', '瑞昌市', '360400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360501, '360501', '市辖区', '360500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360502, '360502', '渝水区', '360500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360521, '360521', '分宜县', '360500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360601, '360601', '市辖区', '360600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360602, '360602', '月湖区', '360600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360622, '360622', '余江县', '360600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360681, '360681', '贵溪市', '360600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360701, '360701', '市辖区', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360702, '360702', '章贡区', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360721, '360721', '赣　县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360722, '360722', '信丰县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360723, '360723', '大余县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360724, '360724', '上犹县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360725, '360725', '崇义县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360726, '360726', '安远县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360727, '360727', '龙南县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360728, '360728', '定南县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360729, '360729', '全南县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360730, '360730', '宁都县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360731, '360731', '于都县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360732, '360732', '兴国县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360733, '360733', '会昌县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360734, '360734', '寻乌县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360735, '360735', '石城县', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360781, '360781', '瑞金市', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360782, '360782', '南康市', '360700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360801, '360801', '市辖区', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360802, '360802', '吉州区', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360803, '360803', '青原区', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360821, '360821', '吉安县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360822, '360822', '吉水县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360823, '360823', '峡江县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360824, '360824', '新干县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360825, '360825', '永丰县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360826, '360826', '泰和县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360827, '360827', '遂川县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360828, '360828', '万安县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360829, '360829', '安福县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360830, '360830', '永新县', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360881, '360881', '井冈山市', '360800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360901, '360901', '市辖区', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360902, '360902', '袁州区', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360921, '360921', '奉新县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360922, '360922', '万载县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360923, '360923', '上高县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360924, '360924', '宜丰县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360925, '360925', '靖安县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360926, '360926', '铜鼓县', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360981, '360981', '丰城市', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360982, '360982', '樟树市', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (360983, '360983', '高安市', '360900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361001, '361001', '市辖区', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361002, '361002', '临川区', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361021, '361021', '南城县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361022, '361022', '黎川县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361023, '361023', '南丰县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361024, '361024', '崇仁县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361025, '361025', '乐安县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361026, '361026', '宜黄县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361027, '361027', '金溪县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361028, '361028', '资溪县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361029, '361029', '东乡县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361030, '361030', '广昌县', '361000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361101, '361101', '市辖区', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361102, '361102', '信州区', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361121, '361121', '上饶县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361122, '361122', '广丰县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361123, '361123', '玉山县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361124, '361124', '铅山县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361125, '361125', '横峰县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361126, '361126', '弋阳县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361127, '361127', '余干县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361128, '361128', '鄱阳县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361129, '361129', '万年县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361130, '361130', '婺源县', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (361181, '361181', '德兴市', '361100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370101, '370101', '市辖区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370102, '370102', '历下区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370103, '370103', '市中区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370104, '370104', '槐荫区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370105, '370105', '天桥区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370112, '370112', '历城区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370113, '370113', '长清区', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370124, '370124', '平阴县', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370125, '370125', '济阳县', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370126, '370126', '商河县', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370181, '370181', '章丘市', '370100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370201, '370201', '市辖区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370202, '370202', '市南区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370203, '370203', '市北区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370205, '370205', '四方区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370211, '370211', '黄岛区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370212, '370212', '崂山区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370213, '370213', '李沧区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370214, '370214', '城阳区', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370281, '370281', '胶州市', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370282, '370282', '即墨市', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370283, '370283', '平度市', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370284, '370284', '胶南市', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370285, '370285', '莱西市', '370200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370301, '370301', '市辖区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370302, '370302', '淄川区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370303, '370303', '张店区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370304, '370304', '博山区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370305, '370305', '临淄区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370306, '370306', '周村区', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370321, '370321', '桓台县', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370322, '370322', '高青县', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370323, '370323', '沂源县', '370300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370401, '370401', '市辖区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370402, '370402', '市中区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370403, '370403', '薛城区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370404, '370404', '峄城区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370405, '370405', '台儿庄区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370406, '370406', '山亭区', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370481, '370481', '滕州市', '370400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370501, '370501', '市辖区', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370502, '370502', '东营区', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370503, '370503', '河口区', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370521, '370521', '垦利县', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370522, '370522', '利津县', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370523, '370523', '广饶县', '370500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370601, '370601', '市辖区', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370602, '370602', '芝罘区', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370611, '370611', '福山区', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370612, '370612', '牟平区', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370613, '370613', '莱山区', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370634, '370634', '长岛县', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370681, '370681', '龙口市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370682, '370682', '莱阳市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370683, '370683', '莱州市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370684, '370684', '蓬莱市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370685, '370685', '招远市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370686, '370686', '栖霞市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370687, '370687', '海阳市', '370600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370701, '370701', '市辖区', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370702, '370702', '潍城区', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370703, '370703', '寒亭区', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370704, '370704', '坊子区', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370705, '370705', '奎文区', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370724, '370724', '临朐县', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370725, '370725', '昌乐县', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370781, '370781', '青州市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370782, '370782', '诸城市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370783, '370783', '寿光市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370784, '370784', '安丘市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370785, '370785', '高密市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370786, '370786', '昌邑市', '370700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370801, '370801', '市辖区', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370802, '370802', '市中区', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370811, '370811', '任城区', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370826, '370826', '微山县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370827, '370827', '鱼台县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370828, '370828', '金乡县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370829, '370829', '嘉祥县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370830, '370830', '汶上县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370831, '370831', '泗水县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370832, '370832', '梁山县', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370881, '370881', '曲阜市', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370882, '370882', '兖州市', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370883, '370883', '邹城市', '370800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370901, '370901', '市辖区', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370902, '370902', '泰山区', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370903, '370903', '岱岳区', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370921, '370921', '宁阳县', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370923, '370923', '东平县', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370982, '370982', '新泰市', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (370983, '370983', '肥城市', '370900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371001, '371001', '市辖区', '371000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371002, '371002', '环翠区', '371000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371081, '371081', '文登市', '371000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371082, '371082', '荣成市', '371000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371083, '371083', '乳山市', '371000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371101, '371101', '市辖区', '371100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371102, '371102', '东港区', '371100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371103, '371103', '岚山区', '371100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371121, '371121', '五莲县', '371100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371122, '371122', '莒　县', '371100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371201, '371201', '市辖区', '371200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371202, '371202', '莱城区', '371200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371203, '371203', '钢城区', '371200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371301, '371301', '市辖区', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371302, '371302', '兰山区', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371311, '371311', '罗庄区', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371312, '371312', '河东区', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371321, '371321', '沂南县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371322, '371322', '郯城县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371323, '371323', '沂水县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371324, '371324', '苍山县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371325, '371325', '费　县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371326, '371326', '平邑县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371327, '371327', '莒南县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371328, '371328', '蒙阴县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371329, '371329', '临沭县', '371300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371401, '371401', '市辖区', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371402, '371402', '德城区', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371421, '371421', '陵　县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371422, '371422', '宁津县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371423, '371423', '庆云县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371424, '371424', '临邑县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371425, '371425', '齐河县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371426, '371426', '平原县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371427, '371427', '夏津县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371428, '371428', '武城县', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371481, '371481', '乐陵市', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371482, '371482', '禹城市', '371400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371501, '371501', '市辖区', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371502, '371502', '东昌府区', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371521, '371521', '阳谷县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371522, '371522', '莘　县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371523, '371523', '茌平县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371524, '371524', '东阿县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371525, '371525', '冠　县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371526, '371526', '高唐县', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371581, '371581', '临清市', '371500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371601, '371601', '市辖区', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371602, '371602', '滨城区', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371621, '371621', '惠民县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371622, '371622', '阳信县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371623, '371623', '无棣县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371624, '371624', '沾化县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371625, '371625', '博兴县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371626, '371626', '邹平县', '371600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371701, '371701', '市辖区', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371702, '371702', '牡丹区', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371721, '371721', '曹　县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371722, '371722', '单　县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371723, '371723', '成武县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371724, '371724', '巨野县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371725, '371725', '郓城县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371726, '371726', '鄄城县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371727, '371727', '定陶县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (371728, '371728', '东明县', '371700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410101, '410101', '市辖区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410102, '410102', '中原区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410103, '410103', '二七区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410104, '410104', '管城回族区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410105, '410105', '金水区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410106, '410106', '上街区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410108, '410108', '惠济区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410122, '410122', '中牟县', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410181, '410181', '巩义市', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410182, '410182', '荥阳市', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410183, '410183', '新密市', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410184, '410184', '新郑市', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410185, '410185', '登封市', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410201, '410201', '市辖区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410202, '410202', '龙亭区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410203, '410203', '顺河回族区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410204, '410204', '鼓楼区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410205, '410205', '禹王台区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410211, '410211', '郊   区', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410221, '410221', '杞　县', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410222, '410222', '通许县', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410223, '410223', '尉氏县', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410224, '410224', '开封县', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410225, '410225', '兰考县', '410200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410301, '410301', '市辖区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410302, '410302', '老城区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410303, '410303', '西工区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410304, '410304', '廛河回族区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410305, '410305', '涧西区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410306, '410306', '吉利区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410307, '410307', '洛龙区', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410322, '410322', '孟津县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410323, '410323', '新安县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410324, '410324', '栾川县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410325, '410325', '嵩　县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410326, '410326', '汝阳县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410327, '410327', '宜阳县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410328, '410328', '洛宁县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410329, '410329', '伊川县', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410381, '410381', '偃师市', '410300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410401, '410401', '市辖区', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410402, '410402', '新华区', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410403, '410403', '卫东区', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410404, '410404', '石龙区', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410411, '410411', '湛河区', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410421, '410421', '宝丰县', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410422, '410422', '叶　县', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410423, '410423', '鲁山县', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410425, '410425', '郏　县', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410481, '410481', '舞钢市', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410482, '410482', '汝州市', '410400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410501, '410501', '市辖区', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410502, '410502', '文峰区', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410503, '410503', '北关区', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410505, '410505', '殷都区', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410506, '410506', '龙安区', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410522, '410522', '安阳县', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410523, '410523', '汤阴县', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410526, '410526', '滑　县', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410527, '410527', '内黄县', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410581, '410581', '林州市', '410500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410601, '410601', '市辖区', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410602, '410602', '鹤山区', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410603, '410603', '山城区', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410611, '410611', '淇滨区', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410621, '410621', '浚　县', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410622, '410622', '淇　县', '410600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410701, '410701', '市辖区', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410702, '410702', '红旗区', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410703, '410703', '卫滨区', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410704, '410704', '凤泉区', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410711, '410711', '牧野区', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410721, '410721', '新乡县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410724, '410724', '获嘉县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410725, '410725', '原阳县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410726, '410726', '延津县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410727, '410727', '封丘县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410728, '410728', '长垣县', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410781, '410781', '卫辉市', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410782, '410782', '辉县市', '410700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410801, '410801', '市辖区', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410802, '410802', '解放区', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410803, '410803', '中站区', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410804, '410804', '马村区', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410811, '410811', '山阳区', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410821, '410821', '修武县', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410822, '410822', '博爱县', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410823, '410823', '武陟县', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410825, '410825', '温　县', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410881, '410881', '济源市', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410882, '410882', '沁阳市', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410883, '410883', '孟州市', '410800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410901, '410901', '市辖区', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410902, '410902', '华龙区', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410922, '410922', '清丰县', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410923, '410923', '南乐县', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410926, '410926', '范　县', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410927, '410927', '台前县', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410928, '410928', '濮阳县', '410900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411001, '411001', '市辖区', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411002, '411002', '魏都区', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411023, '411023', '许昌县', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411024, '411024', '鄢陵县', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411025, '411025', '襄城县', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411081, '411081', '禹州市', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411082, '411082', '长葛市', '411000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411101, '411101', '市辖区', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411102, '411102', '源汇区', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411103, '411103', '郾城区', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411104, '411104', '召陵区', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411121, '411121', '舞阳县', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411122, '411122', '临颍县', '411100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411201, '411201', '市辖区', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411202, '411202', '湖滨区', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411221, '411221', '渑池县', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411222, '411222', '陕　县', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411224, '411224', '卢氏县', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411281, '411281', '义马市', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411282, '411282', '灵宝市', '411200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411301, '411301', '市辖区', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411302, '411302', '宛城区', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411303, '411303', '卧龙区', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411321, '411321', '南召县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411322, '411322', '方城县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411323, '411323', '西峡县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411324, '411324', '镇平县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411325, '411325', '内乡县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411326, '411326', '淅川县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411327, '411327', '社旗县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411328, '411328', '唐河县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411329, '411329', '新野县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411330, '411330', '桐柏县', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411381, '411381', '邓州市', '411300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411401, '411401', '市辖区', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411402, '411402', '梁园区', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411403, '411403', '睢阳区', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411421, '411421', '民权县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411422, '411422', '睢　县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411423, '411423', '宁陵县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411424, '411424', '柘城县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411425, '411425', '虞城县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411426, '411426', '夏邑县', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411481, '411481', '永城市', '411400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411501, '411501', '市辖区', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411502, '411502', '师河区', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411503, '411503', '平桥区', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411521, '411521', '罗山县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411522, '411522', '光山县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411523, '411523', '新　县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411524, '411524', '商城县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411525, '411525', '固始县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411526, '411526', '潢川县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411527, '411527', '淮滨县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411528, '411528', '息　县', '411500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411601, '411601', '市辖区', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411602, '411602', '川汇区', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411621, '411621', '扶沟县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411622, '411622', '西华县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411623, '411623', '商水县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411624, '411624', '沈丘县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411625, '411625', '郸城县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411626, '411626', '淮阳县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411627, '411627', '太康县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411628, '411628', '鹿邑县', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411681, '411681', '项城市', '411600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411701, '411701', '市辖区', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411702, '411702', '驿城区', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411721, '411721', '西平县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411722, '411722', '上蔡县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411723, '411723', '平舆县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411724, '411724', '正阳县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411725, '411725', '确山县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411726, '411726', '泌阳县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411727, '411727', '汝南县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411728, '411728', '遂平县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (411729, '411729', '新蔡县', '411700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420101, '420101', '市辖区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420102, '420102', '江岸区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420103, '420103', '江汉区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420104, '420104', '乔口区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420105, '420105', '汉阳区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420106, '420106', '武昌区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420107, '420107', '青山区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420111, '420111', '洪山区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420112, '420112', '东西湖区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420113, '420113', '汉南区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420114, '420114', '蔡甸区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420115, '420115', '江夏区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420116, '420116', '黄陂区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420117, '420117', '新洲区', '420100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420201, '420201', '市辖区', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420202, '420202', '黄石港区', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420203, '420203', '西塞山区', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420204, '420204', '下陆区', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420205, '420205', '铁山区', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420222, '420222', '阳新县', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420281, '420281', '大冶市', '420200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420301, '420301', '市辖区', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420302, '420302', '茅箭区', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420303, '420303', '张湾区', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420321, '420321', '郧　县', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420322, '420322', '郧西县', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420323, '420323', '竹山县', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420324, '420324', '竹溪县', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420325, '420325', '房　县', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420381, '420381', '丹江口市', '420300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420501, '420501', '市辖区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420502, '420502', '西陵区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420503, '420503', '伍家岗区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420504, '420504', '点军区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420505, '420505', '猇亭区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420506, '420506', '夷陵区', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420525, '420525', '远安县', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420526, '420526', '兴山县', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420527, '420527', '秭归县', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420528, '420528', '长阳土家族自治县', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420529, '420529', '五峰土家族自治县', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420581, '420581', '宜都市', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420582, '420582', '当阳市', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420583, '420583', '枝江市', '420500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420601, '420601', '市辖区', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420602, '420602', '襄城区', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420606, '420606', '樊城区', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420607, '420607', '襄阳区', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420624, '420624', '南漳县', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420625, '420625', '谷城县', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420626, '420626', '保康县', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420682, '420682', '老河口市', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420683, '420683', '枣阳市', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420684, '420684', '宜城市', '420600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420701, '420701', '市辖区', '420700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420702, '420702', '梁子湖区', '420700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420703, '420703', '华容区', '420700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420704, '420704', '鄂城区', '420700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420801, '420801', '市辖区', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420802, '420802', '东宝区', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420804, '420804', '掇刀区', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420821, '420821', '京山县', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420822, '420822', '沙洋县', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420881, '420881', '钟祥市', '420800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420901, '420901', '市辖区', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420902, '420902', '孝南区', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420921, '420921', '孝昌县', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420922, '420922', '大悟县', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420923, '420923', '云梦县', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420981, '420981', '应城市', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420982, '420982', '安陆市', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (420984, '420984', '汉川市', '420900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421001, '421001', '市辖区', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421002, '421002', '沙市区', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421003, '421003', '荆州区', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421022, '421022', '公安县', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421023, '421023', '监利县', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421024, '421024', '江陵县', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421081, '421081', '石首市', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421083, '421083', '洪湖市', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421087, '421087', '松滋市', '421000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421101, '421101', '市辖区', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421102, '421102', '黄州区', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421121, '421121', '团风县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421122, '421122', '红安县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421123, '421123', '罗田县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421124, '421124', '英山县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421125, '421125', '浠水县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421126, '421126', '蕲春县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421127, '421127', '黄梅县', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421181, '421181', '麻城市', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421182, '421182', '武穴市', '421100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421201, '421201', '市辖区', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421202, '421202', '咸安区', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421221, '421221', '嘉鱼县', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421222, '421222', '通城县', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421223, '421223', '崇阳县', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421224, '421224', '通山县', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421281, '421281', '赤壁市', '421200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421301, '421301', '市辖区', '421300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421302, '421302', '曾都区', '421300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (421381, '421381', '广水市', '421300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422801, '422801', '恩施市', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422802, '422802', '利川市', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422822, '422822', '建始县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422823, '422823', '巴东县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422825, '422825', '宣恩县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422826, '422826', '咸丰县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422827, '422827', '来凤县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (422828, '422828', '鹤峰县', '422800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (429004, '429004', '仙桃市', '429000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (429005, '429005', '潜江市', '429000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (429006, '429006', '天门市', '429000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (429021, '429021', '神农架林区', '429000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430101, '430101', '市辖区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430102, '430102', '芙蓉区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430103, '430103', '天心区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430104, '430104', '岳麓区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430105, '430105', '开福区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430111, '430111', '雨花区', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430121, '430121', '长沙县', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430122, '430122', '望城县', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430124, '430124', '宁乡县', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430181, '430181', '浏阳市', '430100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430201, '430201', '市辖区', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430202, '430202', '荷塘区', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430203, '430203', '芦淞区', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430204, '430204', '石峰区', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430211, '430211', '天元区', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430221, '430221', '株洲县', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430223, '430223', '攸　县', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430224, '430224', '茶陵县', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430225, '430225', '炎陵县', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430281, '430281', '醴陵市', '430200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430301, '430301', '市辖区', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430302, '430302', '雨湖区', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430304, '430304', '岳塘区', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430321, '430321', '湘潭县', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430381, '430381', '湘乡市', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430382, '430382', '韶山市', '430300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430401, '430401', '市辖区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430405, '430405', '珠晖区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430406, '430406', '雁峰区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430407, '430407', '石鼓区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430408, '430408', '蒸湘区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430412, '430412', '南岳区', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430421, '430421', '衡阳县', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430422, '430422', '衡南县', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430423, '430423', '衡山县', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430424, '430424', '衡东县', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430426, '430426', '祁东县', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430481, '430481', '耒阳市', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430482, '430482', '常宁市', '430400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430501, '430501', '市辖区', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430502, '430502', '双清区', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430503, '430503', '大祥区', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430511, '430511', '北塔区', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430521, '430521', '邵东县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430522, '430522', '新邵县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430523, '430523', '邵阳县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430524, '430524', '隆回县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430525, '430525', '洞口县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430527, '430527', '绥宁县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430528, '430528', '新宁县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430529, '430529', '城步苗族自治县', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430581, '430581', '武冈市', '430500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430601, '430601', '市辖区', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430602, '430602', '岳阳楼区', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430603, '430603', '云溪区', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430611, '430611', '君山区', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430621, '430621', '岳阳县', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430623, '430623', '华容县', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430624, '430624', '湘阴县', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430626, '430626', '平江县', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430681, '430681', '汨罗市', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430682, '430682', '临湘市', '430600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430701, '430701', '市辖区', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430702, '430702', '武陵区', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430703, '430703', '鼎城区', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430721, '430721', '安乡县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430722, '430722', '汉寿县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430723, '430723', '澧　县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430724, '430724', '临澧县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430725, '430725', '桃源县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430726, '430726', '石门县', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430781, '430781', '津市市', '430700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430801, '430801', '市辖区', '430800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430802, '430802', '永定区', '430800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430811, '430811', '武陵源区', '430800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430821, '430821', '慈利县', '430800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430822, '430822', '桑植县', '430800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430901, '430901', '市辖区', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430902, '430902', '资阳区', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430903, '430903', '赫山区', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430921, '430921', '南　县', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430922, '430922', '桃江县', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430923, '430923', '安化县', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (430981, '430981', '沅江市', '430900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431001, '431001', '市辖区', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431002, '431002', '北湖区', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431003, '431003', '苏仙区', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431021, '431021', '桂阳县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431022, '431022', '宜章县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431023, '431023', '永兴县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431024, '431024', '嘉禾县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431025, '431025', '临武县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431026, '431026', '汝城县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431027, '431027', '桂东县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431028, '431028', '安仁县', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431081, '431081', '资兴市', '431000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431101, '431101', '市辖区', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431102, '431102', '零陵区', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431103, '431103', '冷水滩区', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431121, '431121', '祁阳县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431122, '431122', '东安县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431123, '431123', '双牌县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431124, '431124', '道　县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431125, '431125', '江永县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431126, '431126', '宁远县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431127, '431127', '蓝山县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431128, '431128', '新田县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431129, '431129', '江华瑶族自治县', '431100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431201, '431201', '市辖区', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431202, '431202', '鹤城区', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431221, '431221', '中方县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431222, '431222', '沅陵县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431223, '431223', '辰溪县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431224, '431224', '溆浦县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431225, '431225', '会同县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431226, '431226', '麻阳苗族自治县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431227, '431227', '新晃侗族自治县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431228, '431228', '芷江侗族自治县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431229, '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431230, '431230', '通道侗族自治县', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431281, '431281', '洪江市', '431200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431301, '431301', '市辖区', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431302, '431302', '娄星区', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431321, '431321', '双峰县', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431322, '431322', '新化县', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431381, '431381', '冷水江市', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (431382, '431382', '涟源市', '431300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433101, '433101', '吉首市', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433122, '433122', '泸溪县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433123, '433123', '凤凰县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433124, '433124', '花垣县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433125, '433125', '保靖县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433126, '433126', '古丈县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433127, '433127', '永顺县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (433130, '433130', '龙山县', '433100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440101, '440101', '市辖区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440102, '440102', '东山区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440103, '440103', '荔湾区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440104, '440104', '越秀区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440105, '440105', '海珠区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440106, '440106', '天河区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440107, '440107', '芳村区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440111, '440111', '白云区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440112, '440112', '黄埔区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440113, '440113', '番禺区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440114, '440114', '花都区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440183, '440183', '增城市', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440184, '440184', '从化市', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440201, '440201', '市辖区', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440203, '440203', '武江区', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440204, '440204', '浈江区', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440205, '440205', '曲江区', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440222, '440222', '始兴县', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440224, '440224', '仁化县', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440229, '440229', '翁源县', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440232, '440232', '乳源瑶族自治县', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440233, '440233', '新丰县', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440281, '440281', '乐昌市', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440282, '440282', '南雄市', '440200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440301, '440301', '市辖区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440303, '440303', '罗湖区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440304, '440304', '福田区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440305, '440305', '南山区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440306, '440306', '宝安区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440307, '440307', '龙岗区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440308, '440308', '盐田区', '440300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440401, '440401', '市辖区', '440400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440402, '440402', '香洲区', '440400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440403, '440403', '斗门区', '440400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440404, '440404', '金湾区', '440400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440501, '440501', '市辖区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440507, '440507', '龙湖区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440511, '440511', '金平区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440512, '440512', '濠江区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440513, '440513', '潮阳区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440514, '440514', '潮南区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440515, '440515', '澄海区', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440523, '440523', '南澳县', '440500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440601, '440601', '市辖区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440604, '440604', '禅城区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440605, '440605', '南海区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440606, '440606', '顺德区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440607, '440607', '三水区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440608, '440608', '高明区', '440600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440701, '440701', '市辖区', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440703, '440703', '蓬江区', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440704, '440704', '江海区', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440705, '440705', '新会区', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440781, '440781', '台山市', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440783, '440783', '开平市', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440784, '440784', '鹤山市', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440785, '440785', '恩平市', '440700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440801, '440801', '市辖区', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440802, '440802', '赤坎区', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440803, '440803', '霞山区', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440804, '440804', '坡头区', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440811, '440811', '麻章区', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440823, '440823', '遂溪县', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440825, '440825', '徐闻县', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440881, '440881', '廉江市', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440882, '440882', '雷州市', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440883, '440883', '吴川市', '440800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440901, '440901', '市辖区', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440902, '440902', '茂南区', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440903, '440903', '茂港区', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440923, '440923', '电白县', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440981, '440981', '高州市', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440982, '440982', '化州市', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440983, '440983', '信宜市', '440900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441201, '441201', '市辖区', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441202, '441202', '端州区', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441203, '441203', '鼎湖区', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441223, '441223', '广宁县', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441224, '441224', '怀集县', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441225, '441225', '封开县', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441226, '441226', '德庆县', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441283, '441283', '高要市', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441284, '441284', '四会市', '441200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441301, '441301', '市辖区', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441302, '441302', '惠城区', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441303, '441303', '惠阳区', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441322, '441322', '博罗县', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441323, '441323', '惠东县', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441324, '441324', '龙门县', '441300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441401, '441401', '市辖区', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441402, '441402', '梅江区', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441421, '441421', '梅　县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441422, '441422', '大埔县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441423, '441423', '丰顺县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441424, '441424', '五华县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441426, '441426', '平远县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441427, '441427', '蕉岭县', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441481, '441481', '兴宁市', '441400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441501, '441501', '市辖区', '441500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441502, '441502', '城　区', '441500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441521, '441521', '海丰县', '441500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441523, '441523', '陆河县', '441500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441581, '441581', '陆丰市', '441500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441601, '441601', '市辖区', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441602, '441602', '源城区', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441621, '441621', '紫金县', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441622, '441622', '龙川县', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441623, '441623', '连平县', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441624, '441624', '和平县', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441625, '441625', '东源县', '441600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441701, '441701', '市辖区', '441700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441702, '441702', '江城区', '441700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441721, '441721', '阳西县', '441700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441723, '441723', '阳东县', '441700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441781, '441781', '阳春市', '441700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441801, '441801', '市辖区', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441802, '441802', '清城区', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441821, '441821', '佛冈县', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441823, '441823', '阳山县', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441825, '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441826, '441826', '连南瑶族自治县', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441827, '441827', '清新县', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441881, '441881', '英德市', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441882, '441882', '连州市', '441800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445101, '445101', '市辖区', '445100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445102, '445102', '湘桥区', '445100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445121, '445121', '潮安县', '445100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445122, '445122', '饶平县', '445100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445201, '445201', '市辖区', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445202, '445202', '榕城区', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445221, '445221', '揭东县', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445222, '445222', '揭西县', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445224, '445224', '惠来县', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445281, '445281', '普宁市', '445200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445301, '445301', '市辖区', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445302, '445302', '云城区', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445321, '445321', '新兴县', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445322, '445322', '郁南县', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445323, '445323', '云安县', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (445381, '445381', '罗定市', '445300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450101, '450101', '市辖区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450102, '450102', '兴宁区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450103, '450103', '青秀区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450105, '450105', '江南区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450107, '450107', '西乡塘区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450108, '450108', '良庆区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450109, '450109', '邕宁区', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450122, '450122', '武鸣县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450123, '450123', '隆安县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450124, '450124', '马山县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450125, '450125', '上林县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450126, '450126', '宾阳县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450127, '450127', '横　县', '450100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450201, '450201', '市辖区', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450202, '450202', '城中区', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450203, '450203', '鱼峰区', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450204, '450204', '柳南区', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450205, '450205', '柳北区', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450221, '450221', '柳江县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450222, '450222', '柳城县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450223, '450223', '鹿寨县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450224, '450224', '融安县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450225, '450225', '融水苗族自治县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450226, '450226', '三江侗族自治县', '450200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450301, '450301', '市辖区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450302, '450302', '秀峰区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450303, '450303', '叠彩区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450304, '450304', '象山区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450305, '450305', '七星区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450311, '450311', '雁山区', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450321, '450321', '阳朔县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450322, '450322', '临桂县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450323, '450323', '灵川县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450324, '450324', '全州县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450325, '450325', '兴安县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450326, '450326', '永福县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450327, '450327', '灌阳县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450328, '450328', '龙胜各族自治县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450329, '450329', '资源县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450330, '450330', '平乐县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450331, '450331', '荔蒲县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450332, '450332', '恭城瑶族自治县', '450300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450401, '450401', '市辖区', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450403, '450403', '万秀区', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450404, '450404', '蝶山区', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450405, '450405', '长洲区', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450421, '450421', '苍梧县', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450422, '450422', '藤　县', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450423, '450423', '蒙山县', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450481, '450481', '岑溪市', '450400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450501, '450501', '市辖区', '450500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450502, '450502', '海城区', '450500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450503, '450503', '银海区', '450500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450512, '450512', '铁山港区', '450500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450521, '450521', '合浦县', '450500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450601, '450601', '市辖区', '450600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450602, '450602', '港口区', '450600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450603, '450603', '防城区', '450600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450621, '450621', '上思县', '450600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450681, '450681', '东兴市', '450600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450701, '450701', '市辖区', '450700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450702, '450702', '钦南区', '450700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450703, '450703', '钦北区', '450700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450721, '450721', '灵山县', '450700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450722, '450722', '浦北县', '450700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450801, '450801', '市辖区', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450802, '450802', '港北区', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450803, '450803', '港南区', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450804, '450804', '覃塘区', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450821, '450821', '平南县', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450881, '450881', '桂平市', '450800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450901, '450901', '市辖区', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450902, '450902', '玉州区', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450921, '450921', '容　县', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450922, '450922', '陆川县', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450923, '450923', '博白县', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450924, '450924', '兴业县', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (450981, '450981', '北流市', '450900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451001, '451001', '市辖区', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451002, '451002', '右江区', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451021, '451021', '田阳县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451022, '451022', '田东县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451023, '451023', '平果县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451024, '451024', '德保县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451025, '451025', '靖西县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451026, '451026', '那坡县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451027, '451027', '凌云县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451028, '451028', '乐业县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451029, '451029', '田林县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451030, '451030', '西林县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451031, '451031', '隆林各族自治县', '451000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451101, '451101', '市辖区', '451100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451102, '451102', '八步区', '451100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451121, '451121', '昭平县', '451100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451122, '451122', '钟山县', '451100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451123, '451123', '富川瑶族自治县', '451100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451201, '451201', '市辖区', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451202, '451202', '金城江区', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451221, '451221', '南丹县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451222, '451222', '天峨县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451223, '451223', '凤山县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451224, '451224', '东兰县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451225, '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451226, '451226', '环江毛南族自治县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451227, '451227', '巴马瑶族自治县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451228, '451228', '都安瑶族自治县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451229, '451229', '大化瑶族自治县', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451281, '451281', '宜州市', '451200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451301, '451301', '市辖区', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451302, '451302', '兴宾区', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451321, '451321', '忻城县', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451322, '451322', '象州县', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451323, '451323', '武宣县', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451324, '451324', '金秀瑶族自治县', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451381, '451381', '合山市', '451300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451401, '451401', '市辖区', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451402, '451402', '江洲区', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451421, '451421', '扶绥县', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451422, '451422', '宁明县', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451423, '451423', '龙州县', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451424, '451424', '大新县', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451425, '451425', '天等县', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (451481, '451481', '凭祥市', '451400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460101, '460101', '市辖区', '460100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460105, '460105', '秀英区', '460100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460106, '460106', '龙华区', '460100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460107, '460107', '琼山区', '460100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460108, '460108', '美兰区', '460100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (460201, '460201', '市辖区', '460200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469001, '469001', '五指山市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469002, '469002', '琼海市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469003, '469003', '儋州市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469005, '469005', '文昌市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469006, '469006', '万宁市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469007, '469007', '东方市', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469025, '469025', '定安县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469026, '469026', '屯昌县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469027, '469027', '澄迈县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469028, '469028', '临高县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469030, '469030', '白沙黎族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469031, '469031', '昌江黎族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469033, '469033', '乐东黎族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469034, '469034', '陵水黎族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469035, '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469036, '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469037, '469037', '西沙群岛', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469038, '469038', '南沙群岛', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (469039, '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500101, '500101', '万州区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500102, '500102', '涪陵区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500103, '500103', '渝中区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500104, '500104', '大渡口区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500105, '500105', '江北区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500106, '500106', '沙坪坝区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500107, '500107', '九龙坡区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500108, '500108', '南岸区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500109, '500109', '北碚区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500110, '500110', '万盛区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500111, '500111', '双桥区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500112, '500112', '渝北区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500113, '500113', '巴南区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500114, '500114', '黔江区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500115, '500115', '长寿区', '500100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500222, '500222', '綦江县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500223, '500223', '潼南县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500224, '500224', '铜梁县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500225, '500225', '大足县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500226, '500226', '荣昌县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500227, '500227', '璧山县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500228, '500228', '梁平县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500229, '500229', '城口县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500230, '500230', '丰都县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500231, '500231', '垫江县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500232, '500232', '武隆县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500233, '500233', '忠　县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500234, '500234', '开　县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500235, '500235', '云阳县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500236, '500236', '奉节县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500237, '500237', '巫山县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500238, '500238', '巫溪县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500240, '500240', '石柱土家族自治县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500241, '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500242, '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500243, '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500116, '500381', '江津市', '500300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500117, '500382', '合川市', '500300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500118, '500383', '永川市', '500300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (500119, '500384', '南川市', '500300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510101, '510101', '市辖区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510104, '510104', '锦江区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510105, '510105', '青羊区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510106, '510106', '金牛区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510107, '510107', '武侯区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510108, '510108', '成华区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510112, '510112', '龙泉驿区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510113, '510113', '青白江区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510114, '510114', '新都区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510115, '510115', '温江区', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510121, '510121', '金堂县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510122, '510122', '双流县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510124, '510124', '郫　县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510129, '510129', '大邑县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510131, '510131', '蒲江县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510132, '510132', '新津县', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510181, '510181', '都江堰市', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510182, '510182', '彭州市', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510183, '510183', '邛崃市', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510184, '510184', '崇州市', '510100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510301, '510301', '市辖区', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510302, '510302', '自流井区', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510303, '510303', '贡井区', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510304, '510304', '大安区', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510311, '510311', '沿滩区', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510321, '510321', '荣　县', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510322, '510322', '富顺县', '510300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510401, '510401', '市辖区', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510402, '510402', '东　区', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510403, '510403', '西　区', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510411, '510411', '仁和区', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510421, '510421', '米易县', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510422, '510422', '盐边县', '510400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510501, '510501', '市辖区', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510502, '510502', '江阳区', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510503, '510503', '纳溪区', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510504, '510504', '龙马潭区', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510521, '510521', '泸　县', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510522, '510522', '合江县', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510524, '510524', '叙永县', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510525, '510525', '古蔺县', '510500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510601, '510601', '市辖区', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510603, '510603', '旌阳区', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510623, '510623', '中江县', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510626, '510626', '罗江县', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510681, '510681', '广汉市', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510682, '510682', '什邡市', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510683, '510683', '绵竹市', '510600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510701, '510701', '市辖区', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510703, '510703', '涪城区', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510704, '510704', '游仙区', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510722, '510722', '三台县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510723, '510723', '盐亭县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510724, '510724', '安　县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510725, '510725', '梓潼县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510726, '510726', '北川羌族自治县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510727, '510727', '平武县', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510781, '510781', '江油市', '510700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510801, '510801', '市辖区', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510802, '510802', '市中区', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510811, '510811', '元坝区', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510812, '510812', '朝天区', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510821, '510821', '旺苍县', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510822, '510822', '青川县', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510823, '510823', '剑阁县', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510824, '510824', '苍溪县', '510800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510901, '510901', '市辖区', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510903, '510903', '船山区', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510904, '510904', '安居区', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510921, '510921', '蓬溪县', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510922, '510922', '射洪县', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (510923, '510923', '大英县', '510900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511001, '511001', '市辖区', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511002, '511002', '市中区', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511011, '511011', '东兴区', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511024, '511024', '威远县', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511025, '511025', '资中县', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511028, '511028', '隆昌县', '511000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511101, '511101', '市辖区', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511102, '511102', '市中区', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511111, '511111', '沙湾区', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511112, '511112', '五通桥区', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511113, '511113', '金口河区', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511123, '511123', '犍为县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511124, '511124', '井研县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511126, '511126', '夹江县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511129, '511129', '沐川县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511132, '511132', '峨边彝族自治县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511133, '511133', '马边彝族自治县', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511181, '511181', '峨眉山市', '511100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511301, '511301', '市辖区', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511302, '511302', '顺庆区', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511303, '511303', '高坪区', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511304, '511304', '嘉陵区', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511321, '511321', '南部县', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511322, '511322', '营山县', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511323, '511323', '蓬安县', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511324, '511324', '仪陇县', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511325, '511325', '西充县', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511381, '511381', '阆中市', '511300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511401, '511401', '市辖区', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511402, '511402', '东坡区', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511421, '511421', '仁寿县', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511422, '511422', '彭山县', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511423, '511423', '洪雅县', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511424, '511424', '丹棱县', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511425, '511425', '青神县', '511400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511501, '511501', '市辖区', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511502, '511502', '翠屏区', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511521, '511521', '宜宾县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511522, '511522', '南溪县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511523, '511523', '江安县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511524, '511524', '长宁县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511525, '511525', '高　县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511526, '511526', '珙　县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511527, '511527', '筠连县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511528, '511528', '兴文县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511529, '511529', '屏山县', '511500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511601, '511601', '市辖区', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511602, '511602', '广安区', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511621, '511621', '岳池县', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511622, '511622', '武胜县', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511623, '511623', '邻水县', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511681, '511681', '华莹市', '511600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511701, '511701', '市辖区', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511702, '511702', '通川区', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511721, '511721', '达　县', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511722, '511722', '宣汉县', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511723, '511723', '开江县', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511724, '511724', '大竹县', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511725, '511725', '渠　县', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511781, '511781', '万源市', '511700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511801, '511801', '市辖区', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511802, '511802', '雨城区', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511821, '511821', '名山县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511822, '511822', '荥经县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511823, '511823', '汉源县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511824, '511824', '石棉县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511825, '511825', '天全县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511826, '511826', '芦山县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511827, '511827', '宝兴县', '511800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511901, '511901', '市辖区', '511900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511902, '511902', '巴州区', '511900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511921, '511921', '通江县', '511900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511922, '511922', '南江县', '511900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (511923, '511923', '平昌县', '511900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (512001, '512001', '市辖区', '512000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (512002, '512002', '雁江区', '512000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (512021, '512021', '安岳县', '512000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (512022, '512022', '乐至县', '512000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (512081, '512081', '简阳市', '512000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513221, '513221', '汶川县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513222, '513222', '理　县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513223, '513223', '茂　县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513224, '513224', '松潘县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513225, '513225', '九寨沟县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513226, '513226', '金川县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513227, '513227', '小金县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513228, '513228', '黑水县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513229, '513229', '马尔康县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513230, '513230', '壤塘县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513231, '513231', '阿坝县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513232, '513232', '若尔盖县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513233, '513233', '红原县', '513200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513321, '513321', '康定县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513322, '513322', '泸定县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513323, '513323', '丹巴县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513324, '513324', '九龙县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513325, '513325', '雅江县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513326, '513326', '道孚县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513327, '513327', '炉霍县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513328, '513328', '甘孜县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513329, '513329', '新龙县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513330, '513330', '德格县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513331, '513331', '白玉县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513332, '513332', '石渠县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513333, '513333', '色达县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513334, '513334', '理塘县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513335, '513335', '巴塘县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513336, '513336', '乡城县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513337, '513337', '稻城县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513338, '513338', '得荣县', '513300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513401, '513401', '西昌市', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513422, '513422', '木里藏族自治县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513423, '513423', '盐源县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513424, '513424', '德昌县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513425, '513425', '会理县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513426, '513426', '会东县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513427, '513427', '宁南县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513428, '513428', '普格县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513429, '513429', '布拖县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513430, '513430', '金阳县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513431, '513431', '昭觉县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513432, '513432', '喜德县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513433, '513433', '冕宁县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513434, '513434', '越西县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513435, '513435', '甘洛县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513436, '513436', '美姑县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (513437, '513437', '雷波县', '513400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520101, '520101', '市辖区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520102, '520102', '南明区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520103, '520103', '云岩区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520111, '520111', '花溪区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520112, '520112', '乌当区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520113, '520113', '白云区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520114, '520114', '小河区', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520121, '520121', '开阳县', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520122, '520122', '息烽县', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520123, '520123', '修文县', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520181, '520181', '清镇市', '520100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520201, '520201', '钟山区', '520200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520203, '520203', '六枝特区', '520200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520221, '520221', '水城县', '520200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520222, '520222', '盘　县', '520200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520301, '520301', '市辖区', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520302, '520302', '红花岗区', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520303, '520303', '汇川区', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520321, '520321', '遵义县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520322, '520322', '桐梓县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520323, '520323', '绥阳县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520324, '520324', '正安县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520325, '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520326, '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520327, '520327', '凤冈县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520328, '520328', '湄潭县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520329, '520329', '余庆县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520330, '520330', '习水县', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520381, '520381', '赤水市', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520382, '520382', '仁怀市', '520300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520401, '520401', '市辖区', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520402, '520402', '西秀区', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520421, '520421', '平坝县', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520422, '520422', '普定县', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520423, '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520424, '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (520425, '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522201, '522201', '铜仁市', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522222, '522222', '江口县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522223, '522223', '玉屏侗族自治县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522224, '522224', '石阡县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522225, '522225', '思南县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522226, '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522227, '522227', '德江县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522228, '522228', '沿河土家族自治县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522229, '522229', '松桃苗族自治县', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522230, '522230', '万山特区', '522200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522301, '522301', '兴义市', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522322, '522322', '兴仁县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522323, '522323', '普安县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522324, '522324', '晴隆县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522325, '522325', '贞丰县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522326, '522326', '望谟县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522327, '522327', '册亨县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522328, '522328', '安龙县', '522300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522401, '522401', '毕节市', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522422, '522422', '大方县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522423, '522423', '黔西县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522424, '522424', '金沙县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522425, '522425', '织金县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522426, '522426', '纳雍县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522427, '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522428, '522428', '赫章县', '522400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522601, '522601', '凯里市', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522622, '522622', '黄平县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522623, '522623', '施秉县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522624, '522624', '三穗县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522625, '522625', '镇远县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522626, '522626', '岑巩县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522627, '522627', '天柱县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522628, '522628', '锦屏县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522629, '522629', '剑河县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522630, '522630', '台江县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522631, '522631', '黎平县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522632, '522632', '榕江县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522633, '522633', '从江县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522634, '522634', '雷山县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522635, '522635', '麻江县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522636, '522636', '丹寨县', '522600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522701, '522701', '都匀市', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522702, '522702', '福泉市', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522722, '522722', '荔波县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522723, '522723', '贵定县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522725, '522725', '瓮安县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522726, '522726', '独山县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522727, '522727', '平塘县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522728, '522728', '罗甸县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522729, '522729', '长顺县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522730, '522730', '龙里县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522731, '522731', '惠水县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (522732, '522732', '三都水族自治县', '522700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530101, '530101', '市辖区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530102, '530102', '五华区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530103, '530103', '盘龙区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530111, '530111', '官渡区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530112, '530112', '西山区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530113, '530113', '东川区', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530121, '530121', '呈贡县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530122, '530122', '晋宁县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530124, '530124', '富民县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530125, '530125', '宜良县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530126, '530126', '石林彝族自治县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530127, '530127', '嵩明县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530128, '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530129, '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530181, '530181', '安宁市', '530100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530301, '530301', '市辖区', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530302, '530302', '麒麟区', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530321, '530321', '马龙县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530322, '530322', '陆良县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530323, '530323', '师宗县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530324, '530324', '罗平县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530325, '530325', '富源县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530326, '530326', '会泽县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530328, '530328', '沾益县', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530381, '530381', '宣威市', '530300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530401, '530401', '市辖区', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530402, '530402', '红塔区', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530421, '530421', '江川县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530422, '530422', '澄江县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530423, '530423', '通海县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530424, '530424', '华宁县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530425, '530425', '易门县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530426, '530426', '峨山彝族自治县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530427, '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530428, '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530501, '530501', '市辖区', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530502, '530502', '隆阳区', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530521, '530521', '施甸县', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530522, '530522', '腾冲县', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530523, '530523', '龙陵县', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530524, '530524', '昌宁县', '530500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530601, '530601', '市辖区', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530602, '530602', '昭阳区', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530621, '530621', '鲁甸县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530622, '530622', '巧家县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530623, '530623', '盐津县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530624, '530624', '大关县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530625, '530625', '永善县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530626, '530626', '绥江县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530627, '530627', '镇雄县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530628, '530628', '彝良县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530629, '530629', '威信县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530630, '530630', '水富县', '530600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530701, '530701', '市辖区', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530702, '530702', '古城区', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530721, '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530722, '530722', '永胜县', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530723, '530723', '华坪县', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530724, '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530801, '530801', '市辖区', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530802, '530802', '翠云区', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530821, '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530822, '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530823, '530823', '景东彝族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530824, '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530825, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530826, '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530827, '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530828, '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530829, '530829', '西盟佤族自治县', '530800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530901, '530901', '市辖区', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530902, '530902', '临翔区', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530921, '530921', '凤庆县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530922, '530922', '云　县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530923, '530923', '永德县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530924, '530924', '镇康县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530925, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530926, '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (530927, '530927', '沧源佤族自治县', '530900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532301, '532301', '楚雄市', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532322, '532322', '双柏县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532323, '532323', '牟定县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532324, '532324', '南华县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532325, '532325', '姚安县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532326, '532326', '大姚县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532327, '532327', '永仁县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532328, '532328', '元谋县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532329, '532329', '武定县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532331, '532331', '禄丰县', '532300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532501, '532501', '个旧市', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532502, '532502', '开远市', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532522, '532522', '蒙自县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532523, '532523', '屏边苗族自治县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532524, '532524', '建水县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532525, '532525', '石屏县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532526, '532526', '弥勒县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532527, '532527', '泸西县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532528, '532528', '元阳县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532529, '532529', '红河县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532530, '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532531, '532531', '绿春县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532532, '532532', '河口瑶族自治县', '532500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532621, '532621', '文山县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532622, '532622', '砚山县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532623, '532623', '西畴县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532624, '532624', '麻栗坡县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532625, '532625', '马关县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532626, '532626', '丘北县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532627, '532627', '广南县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532628, '532628', '富宁县', '532600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532801, '532801', '景洪市', '532800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532822, '532822', '勐海县', '532800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532823, '532823', '勐腊县', '532800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532901, '532901', '大理市', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532922, '532922', '漾濞彝族自治县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532923, '532923', '祥云县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532924, '532924', '宾川县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532925, '532925', '弥渡县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532926, '532926', '南涧彝族自治县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532927, '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532928, '532928', '永平县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532929, '532929', '云龙县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532930, '532930', '洱源县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532931, '532931', '剑川县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (532932, '532932', '鹤庆县', '532900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533102, '533102', '瑞丽市', '533100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533103, '533103', '潞西市', '533100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533122, '533122', '梁河县', '533100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533123, '533123', '盈江县', '533100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533124, '533124', '陇川县', '533100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533321, '533321', '泸水县', '533300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533323, '533323', '福贡县', '533300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533324, '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533325, '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533421, '533421', '香格里拉县', '533400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533422, '533422', '德钦县', '533400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (533423, '533423', '维西傈僳族自治县', '533400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540101, '540101', '市辖区', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540102, '540102', '城关区', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540121, '540121', '林周县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540122, '540122', '当雄县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540123, '540123', '尼木县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540124, '540124', '曲水县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540125, '540125', '堆龙德庆县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540126, '540126', '达孜县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (540127, '540127', '墨竹工卡县', '540100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542121, '542121', '昌都县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542122, '542122', '江达县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542123, '542123', '贡觉县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542124, '542124', '类乌齐县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542125, '542125', '丁青县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542126, '542126', '察雅县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542127, '542127', '八宿县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542128, '542128', '左贡县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542129, '542129', '芒康县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542132, '542132', '洛隆县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542133, '542133', '边坝县', '542100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542221, '542221', '乃东县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542222, '542222', '扎囊县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542223, '542223', '贡嘎县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542224, '542224', '桑日县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542225, '542225', '琼结县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542226, '542226', '曲松县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542227, '542227', '措美县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542228, '542228', '洛扎县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542229, '542229', '加查县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542231, '542231', '隆子县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542232, '542232', '错那县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542233, '542233', '浪卡子县', '542200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542301, '542301', '日喀则市', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542322, '542322', '南木林县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542323, '542323', '江孜县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542324, '542324', '定日县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542325, '542325', '萨迦县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542326, '542326', '拉孜县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542327, '542327', '昂仁县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542328, '542328', '谢通门县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542329, '542329', '白朗县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542330, '542330', '仁布县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542331, '542331', '康马县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542332, '542332', '定结县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542333, '542333', '仲巴县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542334, '542334', '亚东县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542335, '542335', '吉隆县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542336, '542336', '聂拉木县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542337, '542337', '萨嘎县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542338, '542338', '岗巴县', '542300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542421, '542421', '那曲县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542422, '542422', '嘉黎县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542423, '542423', '比如县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542424, '542424', '聂荣县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542425, '542425', '安多县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542426, '542426', '申扎县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542427, '542427', '索　县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542428, '542428', '班戈县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542429, '542429', '巴青县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542430, '542430', '尼玛县', '542400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542521, '542521', '普兰县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542522, '542522', '札达县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542523, '542523', '噶尔县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542524, '542524', '日土县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542525, '542525', '革吉县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542526, '542526', '改则县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542527, '542527', '措勤县', '542500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542621, '542621', '林芝县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542622, '542622', '工布江达县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542623, '542623', '米林县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542624, '542624', '墨脱县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542625, '542625', '波密县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542626, '542626', '察隅县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (542627, '542627', '朗　县', '542600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610101, '610101', '市辖区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610102, '610102', '新城区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610103, '610103', '碑林区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610104, '610104', '莲湖区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610111, '610111', '灞桥区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610112, '610112', '未央区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610113, '610113', '雁塔区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610114, '610114', '阎良区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610115, '610115', '临潼区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610116, '610116', '长安区', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610122, '610122', '蓝田县', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610124, '610124', '周至县', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610125, '610125', '户　县', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610126, '610126', '高陵县', '610100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610201, '610201', '市辖区', '610200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610202, '610202', '王益区', '610200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610203, '610203', '印台区', '610200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610204, '610204', '耀州区', '610200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610222, '610222', '宜君县', '610200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610301, '610301', '市辖区', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610302, '610302', '渭滨区', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610303, '610303', '金台区', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610304, '610304', '陈仓区', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610322, '610322', '凤翔县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610323, '610323', '岐山县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610324, '610324', '扶风县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610326, '610326', '眉　县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610327, '610327', '陇　县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610328, '610328', '千阳县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610329, '610329', '麟游县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610330, '610330', '凤　县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610331, '610331', '太白县', '610300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610401, '610401', '市辖区', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610402, '610402', '秦都区', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610403, '610403', '杨凌区', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610404, '610404', '渭城区', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610422, '610422', '三原县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610423, '610423', '泾阳县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610424, '610424', '乾　县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610425, '610425', '礼泉县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610426, '610426', '永寿县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610427, '610427', '彬　县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610428, '610428', '长武县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610429, '610429', '旬邑县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610430, '610430', '淳化县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610431, '610431', '武功县', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610481, '610481', '兴平市', '610400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610501, '610501', '市辖区', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610502, '610502', '临渭区', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610521, '610521', '华　县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610522, '610522', '潼关县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610523, '610523', '大荔县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610524, '610524', '合阳县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610525, '610525', '澄城县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610526, '610526', '蒲城县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610527, '610527', '白水县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610528, '610528', '富平县', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610581, '610581', '韩城市', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610582, '610582', '华阴市', '610500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610601, '610601', '市辖区', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610602, '610602', '宝塔区', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610621, '610621', '延长县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610622, '610622', '延川县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610623, '610623', '子长县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610624, '610624', '安塞县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610625, '610625', '志丹县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610626, '610626', '吴旗县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610627, '610627', '甘泉县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610628, '610628', '富　县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610629, '610629', '洛川县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610630, '610630', '宜川县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610631, '610631', '黄龙县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610632, '610632', '黄陵县', '610600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610701, '610701', '市辖区', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610702, '610702', '汉台区', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610721, '610721', '南郑县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610722, '610722', '城固县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610723, '610723', '洋　县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610724, '610724', '西乡县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610725, '610725', '勉　县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610726, '610726', '宁强县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610727, '610727', '略阳县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610728, '610728', '镇巴县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610729, '610729', '留坝县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610730, '610730', '佛坪县', '610700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610801, '610801', '市辖区', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610802, '610802', '榆阳区', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610821, '610821', '神木县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610822, '610822', '府谷县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610823, '610823', '横山县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610824, '610824', '靖边县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610825, '610825', '定边县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610826, '610826', '绥德县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610827, '610827', '米脂县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610828, '610828', '佳　县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610829, '610829', '吴堡县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610830, '610830', '清涧县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610831, '610831', '子洲县', '610800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610901, '610901', '市辖区', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610902, '610902', '汉滨区', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610921, '610921', '汉阴县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610922, '610922', '石泉县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610923, '610923', '宁陕县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610924, '610924', '紫阳县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610925, '610925', '岚皋县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610926, '610926', '平利县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610927, '610927', '镇坪县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610928, '610928', '旬阳县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (610929, '610929', '白河县', '610900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611001, '611001', '市辖区', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611002, '611002', '商州区', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611021, '611021', '洛南县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611022, '611022', '丹凤县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611023, '611023', '商南县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611024, '611024', '山阳县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611025, '611025', '镇安县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (611026, '611026', '柞水县', '611000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620101, '620101', '市辖区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620102, '620102', '城关区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620103, '620103', '七里河区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620104, '620104', '西固区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620105, '620105', '安宁区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620111, '620111', '红古区', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620121, '620121', '永登县', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620122, '620122', '皋兰县', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620123, '620123', '榆中县', '620100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620201, '620201', '市辖区', '620200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620301, '620301', '市辖区', '620300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620302, '620302', '金川区', '620300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620321, '620321', '永昌县', '620300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620401, '620401', '市辖区', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620402, '620402', '白银区', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620403, '620403', '平川区', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620421, '620421', '靖远县', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620422, '620422', '会宁县', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620423, '620423', '景泰县', '620400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620501, '620501', '市辖区', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620502, '620502', '秦城区', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620503, '620503', '北道区', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620521, '620521', '清水县', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620522, '620522', '秦安县', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620523, '620523', '甘谷县', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620524, '620524', '武山县', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620525, '620525', '张家川回族自治县', '620500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620601, '620601', '市辖区', '620600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620602, '620602', '凉州区', '620600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620621, '620621', '民勤县', '620600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620622, '620622', '古浪县', '620600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620623, '620623', '天祝藏族自治县', '620600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620701, '620701', '市辖区', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620702, '620702', '甘州区', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620721, '620721', '肃南裕固族自治县', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620722, '620722', '民乐县', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620723, '620723', '临泽县', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620724, '620724', '高台县', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620725, '620725', '山丹县', '620700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620801, '620801', '市辖区', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620802, '620802', '崆峒区', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620821, '620821', '泾川县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620822, '620822', '灵台县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620823, '620823', '崇信县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620824, '620824', '华亭县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620825, '620825', '庄浪县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620826, '620826', '静宁县', '620800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620901, '620901', '市辖区', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620902, '620902', '肃州区', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620921, '620921', '金塔县', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620922, '620922', '安西县', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620923, '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620924, '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620981, '620981', '玉门市', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (620982, '620982', '敦煌市', '620900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621001, '621001', '市辖区', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621002, '621002', '西峰区', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621021, '621021', '庆城县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621022, '621022', '环　县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621023, '621023', '华池县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621024, '621024', '合水县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621025, '621025', '正宁县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621026, '621026', '宁　县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621027, '621027', '镇原县', '621000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621101, '621101', '市辖区', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621102, '621102', '安定区', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621121, '621121', '通渭县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621122, '621122', '陇西县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621123, '621123', '渭源县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621124, '621124', '临洮县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621125, '621125', '漳　县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621126, '621126', '岷　县', '621100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621201, '621201', '市辖区', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621202, '621202', '武都区', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621221, '621221', '成　县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621222, '621222', '文　县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621223, '621223', '宕昌县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621224, '621224', '康　县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621225, '621225', '西和县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621226, '621226', '礼　县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621227, '621227', '徽　县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (621228, '621228', '两当县', '621200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622901, '622901', '临夏市', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622921, '622921', '临夏县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622922, '622922', '康乐县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622923, '622923', '永靖县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622924, '622924', '广河县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622925, '622925', '和政县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622926, '622926', '东乡族自治县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (622927, '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623001, '623001', '合作市', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623021, '623021', '临潭县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623022, '623022', '卓尼县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623023, '623023', '舟曲县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623024, '623024', '迭部县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623025, '623025', '玛曲县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623026, '623026', '碌曲县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (623027, '623027', '夏河县', '623000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630101, '630101', '市辖区', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630102, '630102', '城东区', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630103, '630103', '城中区', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630104, '630104', '城西区', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630105, '630105', '城北区', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630121, '630121', '大通回族土族自治县', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630122, '630122', '湟中县', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (630123, '630123', '湟源县', '630100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632121, '632121', '平安县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632122, '632122', '民和回族土族自治县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632123, '632123', '乐都县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632126, '632126', '互助土族自治县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632127, '632127', '化隆回族自治县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632128, '632128', '循化撒拉族自治县', '632100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632221, '632221', '门源回族自治县', '632200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632222, '632222', '祁连县', '632200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632223, '632223', '海晏县', '632200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632224, '632224', '刚察县', '632200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632321, '632321', '同仁县', '632300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632322, '632322', '尖扎县', '632300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632323, '632323', '泽库县', '632300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632324, '632324', '河南蒙古族自治县', '632300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632521, '632521', '共和县', '632500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632522, '632522', '同德县', '632500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632523, '632523', '贵德县', '632500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632524, '632524', '兴海县', '632500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632525, '632525', '贵南县', '632500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632621, '632621', '玛沁县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632622, '632622', '班玛县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632623, '632623', '甘德县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632624, '632624', '达日县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632625, '632625', '久治县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632626, '632626', '玛多县', '632600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632721, '632721', '玉树县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632722, '632722', '杂多县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632723, '632723', '称多县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632724, '632724', '治多县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632725, '632725', '囊谦县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632726, '632726', '曲麻莱县', '632700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632801, '632801', '格尔木市', '632800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632802, '632802', '德令哈市', '632800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632821, '632821', '乌兰县', '632800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632822, '632822', '都兰县', '632800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (632823, '632823', '天峻县', '632800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640101, '640101', '市辖区', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640104, '640104', '兴庆区', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640105, '640105', '西夏区', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640106, '640106', '金凤区', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640121, '640121', '永宁县', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640122, '640122', '贺兰县', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640181, '640181', '灵武市', '640100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640201, '640201', '市辖区', '640200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640202, '640202', '大武口区', '640200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640205, '640205', '惠农区', '640200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640221, '640221', '平罗县', '640200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640301, '640301', '市辖区', '640300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640302, '640302', '利通区', '640300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640323, '640323', '盐池县', '640300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640324, '640324', '同心县', '640300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640381, '640381', '青铜峡市', '640300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640401, '640401', '市辖区', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640402, '640402', '原州区', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640422, '640422', '西吉县', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640423, '640423', '隆德县', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640424, '640424', '泾源县', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640425, '640425', '彭阳县', '640400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640501, '640501', '市辖区', '640500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640502, '640502', '沙坡头区', '640500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640521, '640521', '中宁县', '640500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (640522, '640522', '海原县', '640500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650101, '650101', '市辖区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650102, '650102', '天山区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650103, '650103', '沙依巴克区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650104, '650104', '新市区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650105, '650105', '水磨沟区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650106, '650106', '头屯河区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650107, '650107', '达坂城区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650108, '650108', '东山区', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650121, '650121', '乌鲁木齐县', '650100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650201, '650201', '市辖区', '650200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650202, '650202', '独山子区', '650200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650203, '650203', '克拉玛依区', '650200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650204, '650204', '白碱滩区', '650200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (650205, '650205', '乌尔禾区', '650200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652101, '652101', '吐鲁番市', '652100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652122, '652122', '鄯善县', '652100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652123, '652123', '托克逊县', '652100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652201, '652201', '哈密市', '652200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652222, '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652223, '652223', '伊吾县', '652200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652301, '652301', '昌吉市', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652302, '652302', '阜康市', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652303, '652303', '米泉市', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652323, '652323', '呼图壁县', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652324, '652324', '玛纳斯县', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652325, '652325', '奇台县', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652327, '652327', '吉木萨尔县', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652328, '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652701, '652701', '博乐市', '652700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652722, '652722', '精河县', '652700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652723, '652723', '温泉县', '652700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652801, '652801', '库尔勒市', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652822, '652822', '轮台县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652823, '652823', '尉犁县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652824, '652824', '若羌县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652825, '652825', '且末县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652826, '652826', '焉耆回族自治县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652827, '652827', '和静县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652828, '652828', '和硕县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652829, '652829', '博湖县', '652800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652901, '652901', '阿克苏市', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652922, '652922', '温宿县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652923, '652923', '库车县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652924, '652924', '沙雅县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652925, '652925', '新和县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652926, '652926', '拜城县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652927, '652927', '乌什县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652928, '652928', '阿瓦提县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (652929, '652929', '柯坪县', '652900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653001, '653001', '阿图什市', '653000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653022, '653022', '阿克陶县', '653000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653023, '653023', '阿合奇县', '653000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653024, '653024', '乌恰县', '653000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653101, '653101', '喀什市', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653121, '653121', '疏附县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653122, '653122', '疏勒县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653123, '653123', '英吉沙县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653124, '653124', '泽普县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653125, '653125', '莎车县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653126, '653126', '叶城县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653127, '653127', '麦盖提县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653128, '653128', '岳普湖县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653129, '653129', '伽师县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653130, '653130', '巴楚县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653131, '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653201, '653201', '和田市', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653221, '653221', '和田县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653222, '653222', '墨玉县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653223, '653223', '皮山县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653224, '653224', '洛浦县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653225, '653225', '策勒县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653226, '653226', '于田县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (653227, '653227', '民丰县', '653200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654002, '654002', '伊宁市', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654003, '654003', '奎屯市', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654021, '654021', '伊宁县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654022, '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654023, '654023', '霍城县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654024, '654024', '巩留县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654025, '654025', '新源县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654026, '654026', '昭苏县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654027, '654027', '特克斯县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654028, '654028', '尼勒克县', '654000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654201, '654201', '塔城市', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654202, '654202', '乌苏市', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654221, '654221', '额敏县', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654223, '654223', '沙湾县', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654224, '654224', '托里县', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654225, '654225', '裕民县', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654226, '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654301, '654301', '阿勒泰市', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654321, '654321', '布尔津县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654322, '654322', '富蕴县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654323, '654323', '福海县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654324, '654324', '哈巴河县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654325, '654325', '青河县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (654326, '654326', '吉木乃县', '654300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (659001, '659001', '石河子市', '659000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (659002, '659002', '阿拉尔市', '659000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (659003, '659003', '图木舒克市', '659000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (659004, '659004', '五家渠市', '659000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441900, '441901', '莞城区', '441900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (442000, '442001', '中山市', '442000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (810101, '810101', '香港特别行政区', '810100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (820101, '820101', '澳门特别行政区', '820100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710101, '710101', '中正区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710102, '710102', '大同区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710103, '710103', '中山区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710104, '710104', '松山区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710105, '710105', '大安区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710106, '710106', '万华区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710107, '710107', '信义区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710108, '710108', '士林区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710109, '710109', '北投区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710110, '710110', '内湖区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710111, '710111', '南港区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710112, '710112', '文山区', '710100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710201, '710201', '新兴区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710202, '710202', '前金区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710203, '710203', '芩雅区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710204, '710204', '盐埕区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710205, '710205', '鼓山区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710206, '710206', '旗津区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710207, '710207', '前镇区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710208, '710208', '三民区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710209, '710209', '左营区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710210, '710210', '楠梓区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710211, '710211', '小港区', '710200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710301, '710301', '仁爱区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710302, '710302', '信义区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710303, '710303', '中正区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710304, '710304', '中山区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710305, '710305', '安乐区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710306, '710306', '暖暖区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710307, '710307', '七堵区', '710300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710401, '710401', '中区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710402, '710402', '东区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710403, '710403', '南区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710404, '710404', '西区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710405, '710405', '北区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710406, '710406', '北屯区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710407, '710407', '西屯区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710408, '710408', '南屯区', '710400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710501, '710501', '中西区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710502, '710502', '东区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710503, '710503', '南区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710504, '710504', '北区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710505, '710505', '安平区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710506, '710506', '安南区', '710500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710601, '710601', '东区', '710600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710602, '710602', '北区', '710600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710603, '710603', '香山区', '710600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710701, '710701', '东区', '710700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710702, '710702', '西区', '710700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710801, '710801', '县辖区', '710800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (710901, '710901', '县辖区', '710900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711001, '711001', '县辖区', '711000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711101, '711101', '县辖区', '711100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711201, '711201', '县辖区', '711200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711301, '711301', '县辖区', '711300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711401, '711401', '县辖区', '711400');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711501, '711501', '县辖区', '711500');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711601, '711601', '县辖区', '711600');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711701, '711701', '县辖区', '711700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711801, '711801', '县辖区', '711800');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (711901, '711901', '县辖区', '711900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (712001, '712001', '县辖区', '712000');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (712101, '712101', '县辖区', '712100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (712201, '712201', '县辖区', '712200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (712301, '712301', '县辖区', '712300');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441902, '441902', '常平镇', '441900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441903, '441903', '塘厦镇', '441900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441904, '441904', '万江区', '441900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (441905, '441905', '虎门镇', '441900');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410186, '410186', '高新技术开发区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410187, '410187', '郑东新区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (410188, '410188', '经济开发区', '410100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232701, '232701', '加格达奇区', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232702, '232702', '松岭区', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232703, '232703', '新林区', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (232704, '232704', '呼中区', '232700');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (340208, '340208', '三山区', '340200');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440115, '440115', '南沙区', '440100');
INSERT INTO `x2_cityarea` (`id`, `areaid`, `area`, `father`) VALUES (440116, '440116', '萝岗区', '440100');
COMMIT;

-- ----------------------------
-- Table structure for x2_cnttouser
-- ----------------------------
DROP TABLE IF EXISTS `x2_cnttouser`;
CREATE TABLE `x2_cnttouser` (
  `cturid` int NOT NULL AUTO_INCREMENT,
  `cturuserid` int DEFAULT NULL,
  `cturcontentid` int DEFAULT NULL,
  `cturtime` int DEFAULT NULL,
  PRIMARY KEY (`cturid`) USING BTREE,
  KEY `cturuserid` (`cturuserid`) USING BTREE,
  KEY `cturcontentid` (`cturcontentid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_cnttouser
-- ----------------------------
BEGIN;
INSERT INTO `x2_cnttouser` (`cturid`, `cturuserid`, `cturcontentid`, `cturtime`) VALUES (1, 1, 104, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_comment
-- ----------------------------
DROP TABLE IF EXISTS `x2_comment`;
CREATE TABLE `x2_comment` (
  `cmtid` int NOT NULL AUTO_INCREMENT,
  `cmtopenid` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `cmtuserid` int NOT NULL,
  `cmtreply` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cmtcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cmttime` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`cmtid`) USING BTREE,
  KEY `cmtuserid` (`cmtuserid`) USING BTREE,
  KEY `cmtapp` (`cmtopenid`,`cmttime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_config
-- ----------------------------
DROP TABLE IF EXISTS `x2_config`;
CREATE TABLE `x2_config` (
  `cfgapp` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cfgsetting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`cfgapp`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_consumelog
-- ----------------------------
DROP TABLE IF EXISTS `x2_consumelog`;
CREATE TABLE `x2_consumelog` (
  `conlid` int NOT NULL AUTO_INCREMENT,
  `conlcost` int NOT NULL,
  `conluserid` int NOT NULL,
  `conlinfo` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `conltype` int NOT NULL,
  `conltime` int NOT NULL,
  PRIMARY KEY (`conlid`) USING BTREE,
  KEY `conluserid` (`conluserid`,`conltype`,`conltime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_consumelog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_content
-- ----------------------------
DROP TABLE IF EXISTS `x2_content`;
CREATE TABLE `x2_content` (
  `contentid` int NOT NULL AUTO_INCREMENT,
  `contentcatid` int NOT NULL DEFAULT '0',
  `contentmoduleid` int NOT NULL DEFAULT '0',
  `contentuserid` int NOT NULL DEFAULT '0',
  `contentusername` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `contentmodifier` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contenttitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `contenttags` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contentkeywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contentthumb` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `contentlink` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `contentinputtime` int NOT NULL DEFAULT '0',
  `contentmodifytime` int NOT NULL DEFAULT '0',
  `contentsequence` int NOT NULL DEFAULT '0',
  `contentdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contentinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contentstatus` int NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `contenttext` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contentview` int DEFAULT NULL,
  PRIMARY KEY (`contentid`) USING BTREE,
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`) USING BTREE,
  KEY `contentmoduleid` (`contentmoduleid`) USING BTREE,
  KEY `contentcatid` (`contentcatid`) USING BTREE,
  KEY `contentstatus` (`contentstatus`) USING BTREE,
  KEY `contenttags` (`contenttags`) USING BTREE,
  FULLTEXT KEY `contentkeywords` (`contentkeywords`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_content
-- ----------------------------
BEGIN;
INSERT INTO `x2_content` (`contentid`, `contentcatid`, `contentmoduleid`, `contentuserid`, `contentusername`, `contentmodifier`, `contenttitle`, `contenttags`, `contentkeywords`, `contentthumb`, `contentlink`, `contentinputtime`, `contentmodifytime`, `contentsequence`, `contentdescribe`, `contentinfo`, `contentstatus`, `contenttemplate`, `contenttext`, `contentview`) VALUES (1, 26, 35, 1, 'peadmin', '', '测试公告', '测试公告', '测试公告', 'app/core/styles/images/noimage.gif', '', 1574930414, 0, 0, '测试公告', '', 0, 'content_default', '&lt;p&gt;测试公告&lt;/p&gt;', 15);
COMMIT;

-- ----------------------------
-- Table structure for x2_coupon
-- ----------------------------
DROP TABLE IF EXISTS `x2_coupon`;
CREATE TABLE `x2_coupon` (
  `couponsn` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `couponvalue` int NOT NULL DEFAULT '0',
  `couponstatus` int NOT NULL DEFAULT '0',
  `couponaddtime` int NOT NULL DEFAULT '0',
  `couponendtime` int NOT NULL DEFAULT '0',
  `couponusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `couponusetime` int DEFAULT NULL,
  PRIMARY KEY (`couponsn`) USING BTREE,
  KEY `couponstatus` (`couponstatus`,`couponendtime`) USING BTREE,
  KEY `couponaddtime` (`couponaddtime`) USING BTREE,
  KEY `couponusername` (`couponusername`) USING BTREE,
  KEY `couponusetime` (`couponusetime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_coupon
-- ----------------------------
BEGIN;
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('87099EFC58C8DA97', 100, 1, 1665458135, 1696994135, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('DC23FD1B8F2C2098', 100, 1, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('03E90B0E9CA7AEB5', 100, 1, 1692843078, 1724379078, 'peadmin', 1692845828);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('E484BB15FCBF58FC', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('4A0430716B5FC8F2', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('AFEFFE1CA1392C72', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('2A82510E6EC26861', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('5D49140DEF180F15', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('45C008F000B48578', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('05C7FDABE54F81A3', 100, 0, 1692843078, 1724379078, '', 0);
INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`, `couponusername`, `couponusetime`) VALUES ('6542B394CD83939B', 100, 0, 1692843078, 1724379078, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_course
-- ----------------------------
DROP TABLE IF EXISTS `x2_course`;
CREATE TABLE `x2_course` (
  `courseid` int NOT NULL AUTO_INCREMENT,
  `coursetitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `coursemoduleid` int DEFAULT NULL,
  `coursecsid` int DEFAULT NULL,
  `coursethumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `courseuserid` int DEFAULT NULL,
  `courseinputtime` int DEFAULT NULL,
  `coursemodifytime` int DEFAULT NULL,
  `coursesequence` int DEFAULT NULL,
  `coursedescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `course_files` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `course_oggfile` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `course_webmfile` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `course_youtu` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pdf_file` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `coursepasstime` int NOT NULL,
  `YPJX_YP` int NOT NULL,
  PRIMARY KEY (`courseid`) USING BTREE,
  KEY `coursecsid` (`coursecsid`,`courseuserid`,`courseinputtime`,`coursemodifytime`,`coursesequence`) USING BTREE,
  KEY `coursemoduleid` (`coursemoduleid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_course
-- ----------------------------
BEGIN;
INSERT INTO `x2_course` (`courseid`, `coursetitle`, `coursemoduleid`, `coursecsid`, `coursethumb`, `courseuserid`, `courseinputtime`, `coursemodifytime`, `coursesequence`, `coursedescribe`, `course_files`, `course_oggfile`, `course_webmfile`, `course_youtu`, `pdf_file`, `coursepasstime`, `YPJX_YP`) VALUES (1, '测试', 14, 1, 'files/attach/images/content/20190720/15635927397674.jpg', 1, 1467215744, 1729478673, 0, '', 'https://dev.phpems.net/phpems/petpl2/files/attach/images/content/20240319/17107963707266.mp4', '', '', '', '', 0, 0);
INSERT INTO `x2_course` (`courseid`, `coursetitle`, `coursemoduleid`, `coursecsid`, `coursethumb`, `courseuserid`, `courseinputtime`, `coursemodifytime`, `coursesequence`, `coursedescribe`, `course_files`, `course_oggfile`, `course_webmfile`, `course_youtu`, `pdf_file`, `coursepasstime`, `YPJX_YP`) VALUES (20, '湖南卫视高清直播测试', 14, 12, 'app/core/styles/images/noimage.gif', 1, 1580528728, 1666060249, 0, '&lt;p&gt;本地址仅测试直播使用，如有侵权，请联系QQ2241223009删除。&lt;/p&gt;', 'http://mpv-seg.videocc.net/5cb340c902/5/5cb340c902623bc5a86c97d42da4a7a5_1.mp4/index.m3u8', '', '', '', '', 0, 0);
INSERT INTO `x2_course` (`courseid`, `coursetitle`, `coursemoduleid`, `coursecsid`, `coursethumb`, `courseuserid`, `courseinputtime`, `coursemodifytime`, `coursesequence`, `coursedescribe`, `course_files`, `course_oggfile`, `course_webmfile`, `course_youtu`, `pdf_file`, `coursepasstime`, `YPJX_YP`) VALUES (7, '课件7', 15, 1, 'files/attach/images/content/20190720/15635931122951.jpg', 1, 1503560761, 1620458205, 0, '&lt;p&gt;课件7&lt;/p&gt;', '', '', '', '', 'files/attach/images/content/20210508/16204582045520.pdf', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_coursesubject
-- ----------------------------
DROP TABLE IF EXISTS `x2_coursesubject`;
CREATE TABLE `x2_coursesubject` (
  `csid` int NOT NULL AUTO_INCREMENT,
  `cstitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `cscatid` int DEFAULT NULL,
  `csuserid` int DEFAULT '0',
  `csbasicid` int DEFAULT '0',
  `cssubjectid` int DEFAULT '0',
  `cstime` int DEFAULT '0',
  `csthumb` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `cssequence` int DEFAULT NULL,
  `csdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `csdemo` tinyint(1) DEFAULT NULL,
  `csprice` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `cstype` tinyint(1) DEFAULT NULL,
  `csprogress` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`csid`) USING BTREE,
  KEY `csbasicid` (`csbasicid`,`cssubjectid`,`cstime`) USING BTREE,
  KEY `cscatid` (`cscatid`) USING BTREE,
  KEY `cuserid` (`csuserid`) USING BTREE,
  KEY `cssequence` (`cssequence`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_coursesubject
-- ----------------------------
BEGIN;
INSERT INTO `x2_coursesubject` (`csid`, `cstitle`, `cscatid`, `csuserid`, `csbasicid`, `cssubjectid`, `cstime`, `csthumb`, `cssequence`, `csdescribe`, `csdemo`, `csprice`, `cstype`, `csprogress`) VALUES (1, '会计基础', 5, 1, 1, 1, 1467214449, 'files/attach/images/content/20210830/16302940954876.jpg', 0, '会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础会计基础', 0, '10:10', 1, 1);
INSERT INTO `x2_coursesubject` (`csid`, `cstitle`, `cscatid`, `csuserid`, `csbasicid`, `cssubjectid`, `cstime`, `csthumb`, `cssequence`, `csdescribe`, `csdemo`, `csprice`, `cstype`, `csprogress`) VALUES (12, '直播测试', 33, 1, 1, 1, 1575361277, 'files/attach/images/content/20210830/16302940801600.jpg', 0, '', 1, '', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for x2_docfloder
-- ----------------------------
DROP TABLE IF EXISTS `x2_docfloder`;
CREATE TABLE `x2_docfloder` (
  `dfid` int NOT NULL AUTO_INCREMENT,
  `dftitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dfcatid` int DEFAULT NULL,
  `dfthumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dftime` int NOT NULL,
  `dfdecrbie` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`dfid`) USING BTREE,
  KEY `dfcatid` (`dfcatid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_docfloder
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_dochistory
-- ----------------------------
DROP TABLE IF EXISTS `x2_dochistory`;
CREATE TABLE `x2_dochistory` (
  `dhid` int NOT NULL AUTO_INCREMENT,
  `dhdocid` int DEFAULT NULL,
  `dhtitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dhcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dhtime` int NOT NULL,
  `dhusername` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dhstatus` tinyint NOT NULL,
  `dhtop` tinyint NOT NULL,
  PRIMARY KEY (`dhid`) USING BTREE,
  KEY `dhtime` (`dhtime`) USING BTREE,
  KEY `dhstatus` (`dhstatus`) USING BTREE,
  KEY `dhtop` (`dhtop`) USING BTREE,
  KEY `dhdocid` (`dhdocid`) USING BTREE,
  KEY `dhusername` (`dhusername`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_dochistory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_docs
-- ----------------------------
DROP TABLE IF EXISTS `x2_docs`;
CREATE TABLE `x2_docs` (
  `docid` int NOT NULL AUTO_INCREMENT,
  `doctitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `docthumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `doccatid` int NOT NULL,
  `dockeywords` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `doccontentid` int NOT NULL,
  `docinputtime` int NOT NULL,
  `docmodifytime` int NOT NULL,
  `docsequence` int DEFAULT NULL,
  `docdescribe` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `doclocker` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `doclocktime` int DEFAULT NULL,
  `docneedmore` int DEFAULT NULL,
  `docsyslock` tinyint(1) DEFAULT NULL,
  `docistop` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`docid`) USING BTREE,
  KEY `doctitle` (`doctitle`) USING BTREE,
  KEY `doccatid` (`doccatid`) USING BTREE,
  KEY `doccontentid` (`doccontentid`) USING BTREE,
  KEY `docinputtime` (`docinputtime`) USING BTREE,
  KEY `docmodifytime` (`docmodifytime`) USING BTREE,
  KEY `doclocker` (`doclocker`) USING BTREE,
  KEY `doclocktime` (`doclocktime`) USING BTREE,
  KEY `docsyslock` (`docsyslock`) USING BTREE,
  KEY `docsequence` (`docsequence`) USING BTREE,
  KEY `docistop` (`docistop`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_docs
-- ----------------------------
BEGIN;
INSERT INTO `x2_docs` (`docid`, `doctitle`, `docthumb`, `doccatid`, `dockeywords`, `doccontentid`, `docinputtime`, `docmodifytime`, `docsequence`, `docdescribe`, `doclocker`, `doclocktime`, `docneedmore`, `docsyslock`, `docistop`) VALUES (1, '欧拉公式', 'app/core/styles/images/noimage.gif', 21, '', 2, 1681980169, 0, 0, '欧拉公式', '', 0, 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_enroll
-- ----------------------------
DROP TABLE IF EXISTS `x2_enroll`;
CREATE TABLE `x2_enroll` (
  `enrollid` int NOT NULL AUTO_INCREMENT,
  `enrollbatid` int DEFAULT NULL,
  `enrolluserid` int DEFAULT NULL,
  `enrolltruename` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enrollpassport` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enrollphone` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enrolltime` int DEFAULT NULL,
  `enrollstatus` int DEFAULT NULL,
  `enrollordersn` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enrollsign` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `enrollverify` int DEFAULT NULL,
  `enroll_address` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`enrollid`) USING BTREE,
  KEY `enrollbatid` (`enrollbatid`) USING BTREE,
  KEY `enrollstatus` (`enrollstatus`) USING BTREE,
  KEY `enrollordersn` (`enrollordersn`) USING BTREE,
  KEY `enrolltruename` (`enrolltruename`) USING BTREE,
  KEY `enrollpassport` (`enrollpassport`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_enroll
-- ----------------------------
BEGIN;
INSERT INTO `x2_enroll` (`enrollid`, `enrollbatid`, `enrolluserid`, `enrolltruename`, `enrollpassport`, `enrollphone`, `enrolltime`, `enrollstatus`, `enrollordersn`, `enrollsign`, `enrollverify`, `enroll_address`) VALUES (6, 5, 1, '111111111111111111', '412012112412012112', '13548961235', 1729137316, 0, '', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAACMCAYAAABS3P+YAAAAAXNSR0IArs4c6QAACydJREFUeF7t3b+rNUcZB/AnYCBiI2Jh4a8UgtFCBQshkZhC/wJBwUItLEUFGwvRVBYWKmhlYbqI2PgXqBixsbBSwSKKFhaiVomFRO/D3SGTzb3n7M49P2Z3Pgde3uS9O+fsfmb2fO/O7Mw+El4ECBAgQKBB4JGGMooQIECAAIEQIBoBAQIECDQJCJAmNoUIECBAQIBoAwQIECDQJCBAmtgUIkCAAAEBog0QIECAQJOAAGliU4gAAQIEBIg2QIAAAQJNAgKkiU0hAgQIEBAg2gABAgQINAkIkCY2hQgQIEBAgGgDBAgQINAkIECa2BQiQIAAAQGiDRAgQIBAk4AAaWJTiAABAgQEiDZAgAABAk0CAqSJTSECBAgQECC3beDdEfGxmz+/iIg/axYECBAgcFxAgNwGx88nqgyPx4+z2YIAAQIEBEjEyxHx2NQU8grkGc2CAAECBI4LjB4g2XX1YsWU4ZEh4kWAAAECRwQEyKsBovvK6UKAAIEVAqMHSD3+oftqRcOxKQECBEYPkM9FxI+mZvBcRHxekyBAgACBZQKjB8g3bpi+OVHl388uY7MVAQIECAgQAeIsIECAQJPA6AGS3VfZjZWv7L7KbiwvAgQIEFggMHqA5ATCHEjPl1t4FzQYmxAgQKAIjB4gOQck54LkK2egW8bEuUGAAIGFAqMHyP8qp9EtFjYZmxEgQOBWYOQvzXoW+n8j4lGNggABAgSWCwiQW6u/RcQ7lrPZkgABAgRGDpB6EqFZ6M4FAgQIrBQYOUBMIlzZWGxOgACBWkCA3GqYhe68IECAwEqBkQOkngNiEuHKhmNzAgQICJDbNmASoXOBAAECKwVGDhBzQFY2FpsTIEDAGMjt7PPyJEIPknJOECBAoEFg1CsQAdLQWBQhQICAK5DbFXjLg6TMAXFOECBAoEFg1CuQS80BySudj0TEpyLi1xHxUws2NrRSRQgQ6FJAgJxmDkhZ0Tf//nBEPBkRb5vCo6544y1dngZ2igCBFoFRA6RlDkiGwyencMjFF986LQVfwmOJv+6yJUq2IUBgEwIC5PVzQDIQ8s/TUw3mA6fKQ6daKjUXavxtRPzOM9db+JQhQKBXgV4DJL/AvxQR75vgfh8R/46IN09f7tkVlP+fr7v+rXjf97NcuqS8vju9511dTkvrrTyIKv/+R0S8ISK+dxM8ecXhRYAAgV0K9BogdRdTL/AZDn+f/uTVxC+nHRMSvdSQ/SBA4KICAuRu7gyL56YfZVAIiYs2Sx9GgMAWBHoNkDJg/fGIeGkaP6i7q/IKYN5NVf/boZ/VYxoZDFkuPy9vs33/1DWW///PiHhLddttdqf962bw/PsR8cIWKtc+EmgQyLaf50j+EuUXpwbAkYr0GiDnrIP77sBa2m32SkR8JiJ+fM6d9N4EriRQnwf5i9LX/MJ0pZrYwMeOGCD3LaK4NEBKtebJ9QNBsoFWbhfXCMzPgzxffuLKew3hONuOFiCH1sAql+4fqO70yn/LLq68myu7sD5xR9Mo4yXPjtNsHOkOBcp8plw54evVHZDlUP8TEW/c4XE7pAcIjBYgD10D66mI+FZE5N/zV873yDBxyf+ABqnoWQRKOMwnwuaHLZ3jJEDOUjXbftPRAuRUa2AdCpJsEXkHV16RlPkh224l9n4LAiUkMhDeVa2SsDQgDh1jXoV/aAsI9vGyAqMFSMsSJodqpHR7ffae3+TyUbl5J4sguWy73uunnTMkTIbda6s543GNFiDnfAphXpX88GZQ/b2z+soAyasRt0SesSHv4K3rBTnzv8tYXFl37SFXEiUcckmdXCWhngibP/MLzg4a0DUOYaQAudRDpPJEz2eNzBdZ/GNEfMEtkddo5lf7zHkoZNdSeZVAKGuvPXQnSwiUK96/mMvxUFLljwmMFCAPHUA/Zjn/eY635GfWQZIDkU/4jW8tZZfbzwem8wv8g9OenioU5gcuJLpsCuPu1EgBcqoB9DWtJb9I8nM/HRGPTQXzS+AZIbKG8arbnnp15kMHU3cnlUU5f+ZK4qr178MPCIwUIL+pHvCUg9tlratLNJAMkOerD/JgqUuor/uMcwVFHQr1f5cuJmMQ6+rJ1h0JjBQgL1dXAdc47uzzzrvAykuIvGpRlu+fr0FWluy/75Q5tJT/odOslHvoAHXWYT0wLRQ6+nKzK+cXuMYX6fmP6vWfUA+g55fGo9fYiWlMJAfYyyuvgvJqaPTX2mVkLuk1H3fI1ZldNVyyBnxWtwKjBEh+aeeAdr7yAVJfuWKN1GMxuRv5cKvRl0HpIUBKKJTbrS3jf8WTxEdvQ2CEAKmvPrJWHu9gAFuIvPb8KMv3PznVTVmD7NhZVLqi7lrKf0kXlgHqY8J+TuCAwAgBUn9Z9zTuIEScmgQIbFpghAB5sZqL0VN3Uf6WnV1rZUJZhltZ+mTTjcrOEyAwhsDeA2TefdXb8c5DJO/9/6JnjIxx8jlKAlsX6O0L9dSe37l5RO2Xpzft9Y6nDJEcRC4zm/Musfd0ME5z6rrwfgQI7Exg7wFSz/249OTBNU0lw+NP00J3Wa6nrrY1x2FbAgQGEthzgNRrX11z7sfS5vTViPh2tbEQWSpnOwIEriKw1wDJ3+jzPv53dt59Na/0+Z1ZPdxyfJWG6UMJEOhfYK8BUnddZS3k4oVbeR5HfdeYhRf7P4fsIYFhBfYaIPWDo7b2LOf5oLqurGFPTwdOoG+BvQbIXyPi7RHx0s24wpv6roI7984kww1Wml0mMJrAXgOkPKt8y88jNx4y2tnoeAlsTGCvAbKxarh3d42H7KUmHQeBHQoIkL4r1XhI3/Vj7wgMLSBA+q/+eVfWRyPihf532x4SILB3AQGyjRqun5eRd5U9YamTbVScvSSwZwEBso3aza6sP1SP5O1pWfptCNpLAgROLiBATk56tjd8KiJ+Vb27EDkbtTcmQGCJgABZotTPNvX6XrlXva4w3I+YPSFA4GwCAuRstGd7Y5MMz0brjQkQWCMgQNZo9bOtEOmnLuwJgWEFBMg2q96TDLdZb/aawK4EBMh2q3M+yfCVmycbPm2OyHYr1J4T2JqAANlajb12f+e3925t5eFt69t7AoMLCJDtN4D57b3qdPt16ggIbELAl80mqunoTpbl680NOUplAwIETiUgQE4led332cPy9dcV9OkECKwWECCryRQgQIAAgRQQINoBAQIECDQJCJAmNoUIECBAQIBoAwQIECDQJCBAmtgUIkCAAAEBog0QIECAQJOAAGliU4gAAQIEBIg2QIAAAQJNAgKkiU0hAgQIEBAg2gABAgQINAkIkCY2hQgQIEBAgGgDBAgQINAkIECa2BQiQIAAAQGiDRAgQIBAk4AAaWJTiAABAgQEiDZAgAABAk0CAqSJTSECBAgQECDaAAECBAg0CQiQJjaFCBAgQECAaAMECBAg0CQgQJrYFCJAgAABAaINECBAgECTgABpYlOIAAECBASINkCAAAECTQICpIlNIQIECBAQINoAAQIECDQJCJAmNoUIECBAQIBoAwQIECDQJCBAmtgUIkCAAAEBog0QIECAQJOAAGliU4gAAQIEBIg2QIAAAQJNAgKkiU0hAgQIEBAg2gABAgQINAkIkCY2hQgQIEBAgGgDBAgQINAkIECa2BQiQIAAAQGiDRAgQIBAk4AAaWJTiAABAgQEiDZAgAABAk0CAqSJTSECBAgQECDaAAECBAg0CQiQJjaFCBAgQECAaAMECBAg0CQgQJrYFCJAgAABAaINECBAgECTgABpYlOIAAECBASINkCAAAECTQICpIlNIQIECBD4P5yRU5x1qcuWAAAAAElFTkSuQmCC', 1, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_enroll_bats
-- ----------------------------
DROP TABLE IF EXISTS `x2_enroll_bats`;
CREATE TABLE `x2_enroll_bats` (
  `enbid` int NOT NULL AUTO_INCREMENT,
  `enbthumb` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enbname` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `enbprice` decimal(10,2) DEFAULT NULL,
  `enbmoduleid` int DEFAULT NULL,
  `enbstarttime` int DEFAULT NULL,
  `enbendtime` int DEFAULT NULL,
  `enbintro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `enbtime` int DEFAULT NULL,
  PRIMARY KEY (`enbid`) USING BTREE,
  KEY `enbstarttime` (`enbstarttime`) USING BTREE,
  KEY `enbendtime` (`enbendtime`) USING BTREE,
  KEY `enbmoduleid` (`enbmoduleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_enroll_bats
-- ----------------------------
BEGIN;
INSERT INTO `x2_enroll_bats` (`enbid`, `enbthumb`, `enbname`, `enbprice`, `enbmoduleid`, `enbstarttime`, `enbendtime`, `enbintro`, `enbtime`) VALUES (5, 'files/attach/images/content/20241017/17291371345207.png', '9月30日郊游报名', 0.00, 39, 1729094451, 1730304051, '', 1729137145);
COMMIT;

-- ----------------------------
-- Table structure for x2_examhistory
-- ----------------------------
DROP TABLE IF EXISTS `x2_examhistory`;
CREATE TABLE `x2_examhistory` (
  `ehid` int NOT NULL AUTO_INCREMENT,
  `ehexamid` int NOT NULL DEFAULT '0',
  `ehexam` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ehtype` int NOT NULL DEFAULT '0',
  `ehbasicid` int NOT NULL DEFAULT '0',
  `ehquestion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ehsetting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ehscorelist` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ehuseranswer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ehtime` int NOT NULL DEFAULT '0',
  `ehscore` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ehuserid` int NOT NULL DEFAULT '0',
  `ehusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ehstarttime` int NOT NULL DEFAULT '0',
  `ehendtime` int NOT NULL,
  `ehstatus` int NOT NULL DEFAULT '1',
  `ehdecide` int NOT NULL DEFAULT '0',
  `ehtimelist` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ehopenid` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ehneedresit` tinyint(1) NOT NULL,
  `ehispass` tinyint(1) DEFAULT NULL,
  `ehteacher` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ehdecidetime` int DEFAULT NULL,
  `ehbatch` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ehid`) USING BTREE,
  KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`) USING BTREE,
  KEY `ehdecide` (`ehdecide`) USING BTREE,
  KEY `ehexamid` (`ehexamid`) USING BTREE,
  KEY `examopenid` (`ehopenid`) USING BTREE,
  KEY `ehneedresit` (`ehneedresit`) USING BTREE,
  KEY `ehispass` (`ehispass`) USING BTREE,
  KEY `ehbatch` (`ehbatch`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_examhistory
-- ----------------------------
BEGIN;
INSERT INTO `x2_examhistory` (`ehid`, `ehexamid`, `ehexam`, `ehtype`, `ehbasicid`, `ehquestion`, `ehsetting`, `ehscorelist`, `ehuseranswer`, `ehtime`, `ehscore`, `ehuserid`, `ehusername`, `ehstarttime`, `ehendtime`, `ehstatus`, `ehdecide`, `ehtimelist`, `ehopenid`, `ehneedresit`, `ehispass`, `ehteacher`, `ehdecidetime`, `ehbatch`) VALUES (39, 3, '计算机考试测试卷', 2, 1, 'eNrtXVtTG0cWft5U5T9M8eDa7MagmZEQSLUPGPCmtuK1F3trax8HaYDZjC7RDLFZF1WysQ0yCByDA0Rc7SjLxpbklLOOLCHzX7LTM6Mn/4U9PTMSuoAsDF7s+FRRoO7TPX369Pf1d6ZV1Qg+zndd8fX6Or4cFxVVioSVDr/g433XJR8LHzyVD2wvbce69htKwQ4/tUEtt1+rTkTFSn3PfnUHFDnOxUP/M7Lqj54ZVf3lhytGKksWZ+wfWi+FRhlBVv9w5svxiOq3fzNKLOBUjEiyqHQJqioExrrsQgCGFMNqF+fiPC6eY7tYr5vzuD2sm+V7eLYzGh6tPEadkEXnQVeloDrmY8AjV/SanxkTpdEx1cewHi8PZadDF3WSetVlufvxRx9/REuqMCyLzHAkFhRjzuNYp0dAlOWoEAxK4dEDLEpUCDRbmt3yWE45IbAG/o017nAkOOGU7YpYpWQXg5a/QijqDw8rUdtzu7LdNnYx9qsbxC7tx88u03VsXtiALCiKsx4XlMgVWvnHmBR0lissXq1HZywSEsINgK1ZUhsnZwMRWRaiiuirfPA7CPKFI2EoqOI19awgS6Nh3z/GgTEjE35mBKB9dkQISfKEz3myKoVEpW6wIwHkIM+GI6oaCfnY6DVGichSkBmWhcAXfsbGottL+eFg2ge4ZKCCcf5W5nBWjUSbH+DYYha1DrPK4kiT0ZnrV1Y4HGdhhLr52jOK1k2oOYb7XWhr4F+4roMVYEX6pwj7WqcnqrbT3FmPfhhnOCYdaQAX8PooY5DsrFZarO9A7cyIEKi0b/ID9kH+rIu1EE4bV/cwOtRRC9G6aDdTEPH0geCJQzwhnk4QT27EE+IJ9Q7xhHqHeEK9QzwhnlDvEE+od4gn1Ls28NTOGfLbBJt9aIsIQwVEEKHsIYhQ6xBECCKUMwQRyhmCCOUMQYRyhiBCEKGcIYjwJBIRhlqH2xSCCLUOQYSvbggilDMEEcoZgghBhHKGIEI5QxChnCGIUM7wJBIRhlqHIEKtQxCh1iGIUM4QRAgilDMEEcoZggjlDEGEcoYgQhC9XyeRrS/fpBfDsu79i2LHFTFWc7Nsd70lLIRE2sPr64iKQjAkORfL7reSBUUNRYKwvLQ9tbp8HY2DKKIsBlSrlqu9kbavU8vHtfwPzZe+WoVzYP7ucHM/mBOHmwc6SSpVZ7Z8dzW6FR4PDVPPJZ+7wW0hrFy158T6Ovo6GuITFJVATBoWa+fs2Td/EY5cVWhkBeh9XfK54IN19y/EsmqznszSvx6ntvIY/cFTPZklhUWyWTC24x3+yUkw1NzwG4iJgirSC0qtxfO6Oba3p8fDN4ZeFdRx5aCbg8fUkHzIekWFmBhWaSdXw6QVET6FA2LVxtdAQfxKlKmBazAEIc6xQ8IEtsocXP5J6Mu3uPyY49u//djL1wDNzG4b2WV9rUAyK+TmDvnxpv5kW8tnXu3Omdm98nK2HN8khe/1tTjZe2x8e0tfyb3a3axHzimypru3jjSM8eiGkVphznUyQ30XmH6o2F2Emb3anekXAmPiq90EM9DJkNwtOt3VnRNiwEArBnS7a1ysjqyVklphvv/SX8md2+WpnQPD3RDlU6ZQr9vb+55TiOdaUIjn2qeQB+bzZsw5Zb54wHp0mrw9crhhtY7EidNnAudysW7ufWdCKzHh+aMx4dKEOhYJ29DXimktP0sWf4D8wg6u8WORbMwC+rV8kizkyMIKkOH0meDttZhAZpbNbYDajCwpKsU9cIJklsntPNQFpYBVBwQht6eMIrg9o45H5QpByqk75N4MVCoibXcsmvS3pAn0avKgIaROtIuL+sYtZEmVJexxWOJuxRJ3+yzpgWaX//K5mcuQhTRzefDzwf4rzO+Y80MXLzAUrQrzt88GhwYZYVRkqN4zvIu5ODQwOMSc+7tVOTB4ud/PwCprpTVjaeed0BKWZjZAIX0zbeYeWtMAKlEkJuL6WsIGDeWTkUmV44m6yUErOo2Zn2HLIC+ek+Q0KSzo8/eBjpYcvbZHeTW532Og4oTdQ27o8fZ4aeUBuXR1aQ/wG3zV5+yqWp+RoSegY/StqPI/YnhPK656DuEqd4CiQe99FSukaJL37AGF9fLz8vJP5Lukvn4T8hEtX7j427AcGQ1/cvpc7LbzOkiQIFmiCCssWEpWuk/xZ5epim3dcQpUveIJffbfdvnNKQJT6PuUOfcp05IoPbC+4BwM9t/4Ddsr+qHiTnN0yfp0XYDnar2F7Q8sLs8nyKIqi/jj6Fx3K+50t88dL5TJ2o6+mKQ69axoFDfttNCmkrmXMnZmzadTsMA2rSB7MadKJLdrTv/0S3ytnE6X03u/xNdp1v9w5R3QOI61iXV7Rl9P099rSXJ3G7Kw8/3nLzv5IryZGJsZmLGW/1bbXYFWYL/8p/NO6gjm8uMVsgib/5KeW6q2+Gxo6M9OImmD30hMm6WsWXoCxqGhYyWUUPk6SnqhHpysXYHygz2tWIT52esA60Z9NFdLxq3n0A52RXhPNP/1iOb5pTtaMel0hre3tZ035yLXmouFJZDxD4eL3lZc9LbPRXdPzRmFUfraKAI+M7DTXum/RJILZjYLSZojcYkXxs0X746KLeTK61va7pb5ctHi1/IWbPpOGQhVXn9I7n1t7m3o82nKHq00T4rPzb3NY/Gl7zV8ofGE0OkL97SXqVoXtfwSCFKtUxBkO8LIiZPJ8uhphdvK8lr9B0D+sH8ByDezg+Vqj2XpKd7qDsl8r73Yskli7k3rs5vwdg9Lq89N6zvbZGMWdjkzmzGKU/ZCaPm79IVn/il5OUPSJXtXpPL3n1kz96ChjflyivycfWcOznmudvqZR8Z2tqu8tGrmcu2fiXNv/K1QL1v7FUQ11HPT9jlpQ7TLqTsQRv3BjL6xVhtq/VmKzH1DBehuqjm2eFx+7EPCnlZk62mfbLy3ckhId8aG0zW63iBE1kvAaWd7EKg6Lrw9BnjZSkgYvrOb0V7MkkSSJspWdGhMLNGzjkpT1Ybe3zPa3ro+d0NfuE9up8vbBefdDUXm+Id9va3Q3ts+2p1Ewc4A6JFdPqE/2dYXtvUEPQaHmGqFef2bDNmNV9OFXxXwz7X8OhSGqo2IHQ5SLBiPZ+1wUBakUrTBXLraoDZeCPgT2d7drhaAd7uOkEu5aBT/XynUB6QR4OVJJUfImZN4E5ms9zFmRUSAjtcnJ/8HHnM6iQ==', 'eNqtlMFO3DAQht/FZx8cj5OwztNkEwMuzWYbO6IIrVQJbogDB0QPvZQHoKeqUqs+DrB9i47thBq0gbbsJZn8mf+bcTSZUiYgj43MJFHvy0bXpNASCiOTJCimn79RlXVygrIIKsGQY7y++Xx/c3X36fv6w8n6y+Xd1zO83p5/IzFBWasXe6QosQqW2gmy1Y3yGEky5oJckqptdrvW02eS3F78/HX98f7HqXtOJTFV240WYEPSsjTm4QVWTPwdM971ytijpXqrrXK1c3kcjhCStORRDFEsojiN4iyK84d45Q80FosKlXL8sIu+matu6C99ehjUuLsjpVam6vTcy0wShLsuJ0CwASSeAcEUSPxjR2IKxDaA2DOgdFugbFugfDugFQ4F/lZ+zP1k6HZhHo0Gd0Vmw9yEt2jBAhQEBaDAKQeaUC8jqWsPzaPceDw2w5iD5RQyCunLHJjkoIsKRmFGYYfCX7QkplA+4QVz+hpz9hpz/v/mlTf5XTfOx2hig25L2xu3OVjxZwP6hTEsIh60srf7bRfWcBIBgj6syaUq60YvSPFkmaIlF5wzJli8wg/U0WHb1RvaqlWlaxXaWv0GjkbaVg==', 'a:12:{i:1;s:1:\"2\";i:23;s:1:\"2\";i:32;s:1:\"2\";i:33;s:1:\"2\";i:34;s:1:\"2\";i:35;i:0;i:36;i:0;i:37;i:0;i:31;s:1:\"2\";i:38;s:1:\"2\";i:39;i:0;i:40;s:1:\"2\";}', 'a:12:{i:33;s:1:\"C\";i:1;s:1:\"A\";i:23;s:1:\"D\";i:34;s:1:\"C\";i:32;s:1:\"D\";i:37;a:1:{i:0;s:1:\"A\";}i:36;a:4:{i:0;s:1:\"A\";i:1;s:1:\"B\";i:2;s:1:\"C\";i:3;s:1:\"D\";}i:35;a:2:{i:0;s:1:\"A\";i:1;s:1:\"B\";}i:40;s:1:\"A\";i:38;s:1:\"A\";i:31;s:1:\"A\";i:39;s:1:\"A\";}', 568, 16.00, 1, 'peadmin', 1742546104, 0, 1, 0, '', '', 0, 1, '', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_exams
-- ----------------------------
DROP TABLE IF EXISTS `x2_exams`;
CREATE TABLE `x2_exams` (
  `examid` int NOT NULL AUTO_INCREMENT,
  `examsubject` int NOT NULL DEFAULT '0',
  `exam` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `examsetting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examquestions` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examscore` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examstatus` int NOT NULL DEFAULT '0',
  `examtype` int NOT NULL DEFAULT '0',
  `examauthorid` int NOT NULL DEFAULT '0',
  `examauthor` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_estonian_ci NOT NULL DEFAULT '',
  `examtime` int NOT NULL DEFAULT '0',
  `examkeyword` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `examdecide` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`examid`) USING BTREE,
  KEY `examstatus` (`examstatus`) USING BTREE,
  KEY `examtype` (`examtype`,`examauthorid`) USING BTREE,
  KEY `examtime` (`examtime`) USING BTREE,
  KEY `examsubject` (`examsubject`) USING BTREE,
  KEY `examdecide` (`examdecide`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_exams
-- ----------------------------
BEGIN;
INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES (3, 1, '计算机考试测试卷', 'a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:9:\"命题组\";s:5:\"score\";s:2:\"30\";s:9:\"passscore\";s:1:\"1\";s:12:\"questypelite\";a:7:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";}s:8:\"questype\";a:7:{i:1;a:3:{s:6:\"number\";s:1:\"5\";s:5:\"score\";s:1:\"2\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:1:\"4\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"4\";s:5:\"score\";s:1:\"2\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:7;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}', 'a:7:{i:1;a:2:{s:9:\"questions\";s:15:\",34,33,32,23,1,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:10:\",37,36,35,\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:13:\",40,39,38,31,\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:7;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}', '', 0, 2, 1, 'peadmin', 1742200403, '', 0);
INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES (2, 1, '测试组卷', 'a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:1:\"1\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"60\";s:12:\"questypelite\";a:7:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"0\";}s:8:\"questype\";a:5:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}s:6:\"scores\";b:0;}', 'a:5:{i:1;a:2:{s:9:\"questions\";s:51:\",9754,9753,9752,9751,9750,9749,9748,9747,9746,9745,\";s:13:\"rowsquestions\";s:4:\",22,\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}', '', 0, 2, 1, 'peadmin', 1668328026, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_examsession
-- ----------------------------
DROP TABLE IF EXISTS `x2_examsession`;
CREATE TABLE `x2_examsession` (
  `examsessionid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionuserid` int NOT NULL DEFAULT '0',
  `examsession` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `examsessionsetting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionsign` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionbasic` int NOT NULL DEFAULT '0',
  `examsessiontype` int NOT NULL,
  `examsessionkey` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `examsessionquestion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionuseranswer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionstarttime` int NOT NULL DEFAULT '0',
  `examsessiontime` int NOT NULL DEFAULT '0',
  `examsessionstatus` int NOT NULL DEFAULT '0',
  `examsessionscore` decimal(10,1) NOT NULL DEFAULT '0.0',
  `examsessionscorelist` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessionissave` int NOT NULL DEFAULT '0',
  `examsessiontimelist` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `examsessiontoken` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`examsessionid`) USING BTREE,
  KEY `examsessionstarttime` (`examsessionstarttime`) USING BTREE,
  KEY `examsessionstatus` (`examsessionstatus`) USING BTREE,
  KEY `examsessiontype` (`examsessiontype`) USING BTREE,
  KEY `examsessionkey` (`examsessionkey`) USING BTREE,
  KEY `examsubject` (`examsessionbasic`) USING BTREE,
  KEY `examsessionissave` (`examsessionissave`) USING BTREE,
  KEY `examsessionuserid` (`examsessionuserid`) USING BTREE,
  KEY `examsessiontoken` (`examsessiontoken`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_examsession
-- ----------------------------
BEGIN;
INSERT INTO `x2_examsession` (`examsessionid`, `examsessionuserid`, `examsession`, `examsessionsetting`, `examsessionsign`, `examsessionbasic`, `examsessiontype`, `examsessionkey`, `examsessionquestion`, `examsessionuseranswer`, `examsessionstarttime`, `examsessiontime`, `examsessionstatus`, `examsessionscore`, `examsessionscorelist`, `examsessionissave`, `examsessiontimelist`, `examsessiontoken`) VALUES ('43173f3fc2eed3d09182d259c4198b39', 1, '测试组卷', 'a:13:{s:6:\"examid\";s:1:\"2\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:12:\"测试组卷\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:1:\"1\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"60\";s:12:\"questypelite\";a:7:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"0\";}s:8:\"questype\";a:5:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:5:{i:1;a:2:{s:9:\"questions\";s:51:\",9754,9753,9752,9751,9750,9749,9748,9747,9746,9745,\";s:13:\"rowsquestions\";s:4:\",22,\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1668328026\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}', '', 1, 1, '2', 'a:2:{s:9:\"questions\";a:1:{i:1;a:10:{i:9745;a:19:{s:10:\"questionid\";s:4:\"9745\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:33:\"春联正式起始于什么皇帝\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:90:\"&lt;p&gt;A:明太祖&lt;/p&gt;&lt;p&gt;B:宋太祖&lt;/p&gt;&lt;p&gt;C:唐太祖&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9746;a:19:{s:10:\"questionid\";s:4:\"9746\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:37:\"&lt;&lt;人民日报&gt;&gt;创刊于\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:156:\"&lt;p&gt;A:五四时期&lt;/p&gt;&lt;p&gt;B:解放战争时期&lt;/p&gt;&lt;p&gt;C:抗日战争时期&lt;/p&gt;&lt;p&gt;D:国共十年对峙时期&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:1:\"C\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9747;a:19:{s:10:\"questionid\";s:4:\"9747\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:80:\"&quot;东风不与周郎便,铜雀春深锁二乔&quot;写的是哪一场战役?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:66:\"&lt;p&gt;A:赤壁之战&lt;/p&gt;&lt;p&gt;B:长勺之战&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9748;a:19:{s:10:\"questionid\";s:4:\"9748\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"我国最早的女史学家是?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:班昭&lt;/p&gt;&lt;p&gt;B:蔡琰&lt;/p&gt;&lt;p&gt;C:李清照&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9749;a:19:{s:10:\"questionid\";s:4:\"9749\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:43:\"东汉末年农民起义领袖是哪一位?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:张角&lt;/p&gt;&lt;p&gt;B:李自成&lt;/p&gt;&lt;p&gt;C:黄巢&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9750;a:19:{s:10:\"questionid\";s:4:\"9750\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:51:\"世界上第一个发现地磁偏角中国人是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:祖冲之&lt;/p&gt;&lt;p&gt;B:沈括&lt;/p&gt;&lt;p&gt;C:张衡&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9751;a:19:{s:10:\"questionid\";s:4:\"9751\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:36:\"人类第一次登月是在哪年？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:100:\"&lt;p&gt;A:1965&lt;/p&gt;&lt;p&gt;B:1966&lt;/p&gt;&lt;p&gt;C:1969&lt;/p&gt;&lt;p&gt;D:1972&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:1:\"C\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9752;a:19:{s:10:\"questionid\";s:4:\"9752\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:48:\"谁在葭萌关下挑灯夜斗，不分胜负？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:136:\"&lt;p&gt;A:张飞-马超&lt;/p&gt;&lt;p&gt;B:张飞-马岱&lt;/p&gt;&lt;p&gt;C:赵云-马超&lt;/p&gt;&lt;p&gt;D:黄忠-马超&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9753;a:19:{s:10:\"questionid\";s:4:\"9753\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:75:\"因暗杀未遂，被曹操断九指，割舌，分肢体而死的是谁？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:111:\"&lt;p&gt;A:华佗&lt;/p&gt;&lt;p&gt;B:吉平&lt;/p&gt;&lt;p&gt;C:王子服&lt;/p&gt;&lt;p&gt;D:种辑&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9754;a:19:{s:10:\"questionid\";s:4:\"9754\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:52:\"&lt;p&gt;诸葛亮常自比管仲和谁？&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:87:\"&lt;p&gt;A:乐毅&amp;nbsp; B:张良&amp;nbsp; C:孙武&amp;nbsp; D:姜子牙&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}s:12:\"questionrows\";a:1:{i:1;a:1:{i:22;a:14:{s:4:\"qrid\";s:2:\"22\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:131:\"&lt;p&gt;题帽题测试：&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 阅读材料并完成问题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"2\";s:10:\"qrusername\";s:15:\"教师管理员\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1626241653\";s:8:\"qrstatus\";s:1:\"1\";s:7:\"qrdeler\";s:0:\"\";s:9:\"qrdeltime\";s:1:\"0\";s:4:\"data\";a:1:{i:9757;a:19:{s:10:\"questionid\";s:4:\"9757\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:49:\"&lt;p&gt;啊实打实大苏打实打实&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:387:\"&lt;p&gt;A 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;B 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;C 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;D 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;files/attach/files/content/20230523/16848089661478.jpg&quot; style=&quot;width: 400px; height: 225px;&quot; /&gt;&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1684808554\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"22\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}}}}', '', 1729413047, 60, 0, 0.0, '', 0, '', '6714bfb7ef9cd');
INSERT INTO `x2_examsession` (`examsessionid`, `examsessionuserid`, `examsession`, `examsessionsetting`, `examsessionsign`, `examsessionbasic`, `examsessiontype`, `examsessionkey`, `examsessionquestion`, `examsessionuseranswer`, `examsessionstarttime`, `examsessiontime`, `examsessionstatus`, `examsessionscore`, `examsessionscorelist`, `examsessionissave`, `examsessiontimelist`, `examsessiontoken`) VALUES ('3ccfc5ece670b781c40872412e02a846', 1, '演示试卷一', 'a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:15:\"演示试卷一\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:1:\"1\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:5:{i:1;a:6:{s:6:\"number\";s:2:\"30\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"30\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:2:\"20\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"20\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:2:\"40\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"40\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"2\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1479265100\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}', '', 1, 1, '1', 'a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";a:3:{i:1;a:29:{i:0;s:4:\"6358\";i:1;s:4:\"6484\";i:2;s:4:\"6639\";i:3;s:4:\"6696\";i:4;s:4:\"6700\";i:5;s:4:\"6704\";i:6;s:4:\"6953\";i:7;s:4:\"7039\";i:8;s:4:\"7198\";i:9;s:4:\"7209\";i:10;s:4:\"7215\";i:11;s:4:\"7249\";i:12;s:4:\"7342\";i:13;s:4:\"7345\";i:14;s:4:\"7558\";i:15;s:4:\"8220\";i:16;s:4:\"8251\";i:17;s:4:\"8306\";i:18;s:4:\"8420\";i:19;s:4:\"8758\";i:20;s:4:\"8968\";i:21;s:4:\"8993\";i:22;s:4:\"9002\";i:23;s:4:\"9047\";i:24;s:4:\"9054\";i:25;s:4:\"9126\";i:26;s:4:\"9590\";i:27;s:4:\"9593\";i:28;s:4:\"9676\";}i:2;a:2:{i:0;s:4:\"7190\";i:1;s:4:\"8909\";}i:3;a:40:{i:0;s:4:\"6376\";i:1;s:4:\"6454\";i:2;s:4:\"6510\";i:3;s:4:\"6578\";i:4;s:4:\"6667\";i:5;s:4:\"6702\";i:6;s:4:\"6745\";i:7;s:4:\"6746\";i:8;s:4:\"6747\";i:9;s:4:\"7052\";i:10;s:4:\"7308\";i:11;s:4:\"7312\";i:12;s:4:\"7436\";i:13;s:4:\"7446\";i:14;s:4:\"7560\";i:15;s:4:\"7602\";i:16;s:4:\"7802\";i:17;s:4:\"7910\";i:18;s:4:\"8095\";i:19;s:4:\"8173\";i:20;s:4:\"8245\";i:21;s:4:\"8307\";i:22;s:4:\"8316\";i:23;s:4:\"8324\";i:24;s:4:\"8421\";i:25;s:4:\"8465\";i:26;s:4:\"8466\";i:27;s:4:\"8663\";i:28;s:4:\"8771\";i:29;s:4:\"8953\";i:30;s:4:\"9103\";i:31;s:4:\"9155\";i:32;s:4:\"9174\";i:33;s:4:\"9244\";i:34;s:4:\"9279\";i:35;s:4:\"9321\";i:36;s:4:\"9322\";i:37;s:4:\"9323\";i:38;s:4:\"9521\";i:39;s:4:\"9629\";}}s:11:\"questionrow\";a:1:{i:1;a:1:{i:0;s:2:\"22\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:15:\"演示试卷一\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:1:\"1\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:5:{i:1;a:6:{s:6:\"number\";s:2:\"30\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"30\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:2:\"20\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"20\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:2:\"40\";s:5:\"score\";s:1:\"1\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:2:\"40\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"2\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1479265100\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}}s:9:\"questions\";a:3:{i:1;a:29:{i:6358;a:19:{s:10:\"questionid\";s:4:\"6358\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:42:\"我国最早提出创建监狱的人是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:皋陶&lt;/p&gt;&lt;p&gt;B:李斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6484;a:19:{s:10:\"questionid\";s:4:\"6484\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:39:\"中国第一部写在纸上的书是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:72:\"&lt;p&gt;A:《三国志》&lt;/p&gt;&lt;p&gt;B:《金刚经》&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6639;a:19:{s:10:\"questionid\";s:4:\"6639\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:42:\"佛历是从什么时候开始算起的？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:66:\"&lt;p&gt;A:佛祖诞生&lt;/p&gt;&lt;p&gt;B:佛祖逝世&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6696;a:19:{s:10:\"questionid\";s:4:\"6696\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:18:\"风衣起源于：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:78:\"&lt;p&gt;A:军队的防风雨外衣&lt;/p&gt;&lt;p&gt;B:滑雪斗篷&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6700;a:19:{s:10:\"questionid\";s:4:\"6700\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:60:\"“逐鹿中原”是指什么时代群雄纷争的史实？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:战国时代&lt;/p&gt;&lt;p&gt;B:秦末&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6704;a:19:{s:10:\"questionid\";s:4:\"6704\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:95:\"解放前我国的人均寿命为40.8岁，2000年底，我国人均寿命达到了多少岁？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:56:\"&lt;p&gt;A:68.8岁&lt;/p&gt;&lt;p&gt;B:71.8岁&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6953;a:19:{s:10:\"questionid\";s:4:\"6953\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:36:\"谁最早提出大陆漂移学说？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:57:\"&lt;p&gt;A:魏格纳&lt;/p&gt;&lt;p&gt;B:莫里&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7039;a:19:{s:10:\"questionid\";s:4:\"7039\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:18:\"秦二世是谁？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:胡亥&lt;/p&gt;&lt;p&gt;B:扶苏&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7198;a:19:{s:10:\"questionid\";s:4:\"7198\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:99:\"古希腊哪个国家的儿童一出世就要受到严格挑选，体质弱的会被抛之荒野？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:57:\"&lt;p&gt;A:雅典&lt;/p&gt;&lt;p&gt;B:斯巴达&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7209;a:19:{s:10:\"questionid\";s:4:\"7209\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:96:\"隋唐时期的官制中尚书省分为吏,户,礼,兵,刑,工六部,其中的礼部是掌管：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:175:\"&lt;p&gt;A:规定礼仪,监督和教育官员和百姓懂得礼仪&lt;/p&gt;&lt;p&gt;B:掌管国家的典章法度,祭祀,学校,科举和接待四方宾客等事务&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7215;a:19:{s:10:\"questionid\";s:4:\"7215\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:84:\"清光绪年间曾对邮票有一种非常特殊的称谓，请问当时叫什么？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:老人头&lt;/p&gt;&lt;p&gt;B:小孩头&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7249;a:19:{s:10:\"questionid\";s:4:\"7249\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:66:\"东汉时，谁既是杰出的科学家又是著名的文学家？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:王充&lt;/p&gt;&lt;p&gt;B:张衡&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7342;a:19:{s:10:\"questionid\";s:4:\"7342\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:39:\"中国第一部写在纸上的书是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:72:\"&lt;p&gt;A:《三国志》&lt;/p&gt;&lt;p&gt;B:《金刚经》&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7345;a:19:{s:10:\"questionid\";s:4:\"7345\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:54:\"南北朝时，北方民歌艺术的最高成就是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:木兰辞&lt;/p&gt;&lt;p&gt;B:敕勒歌&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7558;a:19:{s:10:\"questionid\";s:4:\"7558\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:60:\"“逐鹿中原”是指什么时代群雄纷争的史实？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:战国时代&lt;/p&gt;&lt;p&gt;B:秦末&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8220;a:19:{s:10:\"questionid\";s:4:\"8220\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:57:\"中国警察最新的警服是从何时开始更换的？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:73:\"&lt;p&gt;A:2000年7月1日&lt;/p&gt;&lt;p&gt;B:2000年10月1日&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8251;a:19:{s:10:\"questionid\";s:4:\"8251\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:30:\"古代欧洲文明发源于：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:72:\"&lt;p&gt;A:爱琴文明&lt;/p&gt;&lt;p&gt;B:两河流域文明&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8306;a:19:{s:10:\"questionid\";s:4:\"8306\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:48:\"古代游牧民族生活存在太阳崇拜吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:57:\"&lt;p&gt;A:存在&lt;/p&gt;&lt;p&gt;B:不存在&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8420;a:19:{s:10:\"questionid\";s:4:\"8420\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:84:\"中国作为最早使用纸币的国家，下面两种纸币中出现较早的是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:宝钞&lt;/p&gt;&lt;p&gt;B:交子&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8758;a:19:{s:10:\"questionid\";s:4:\"8758\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:18:\"秦二世是谁？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:胡亥&lt;/p&gt;&lt;p&gt;B:扶苏&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8968;a:19:{s:10:\"questionid\";s:4:\"8968\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:66:\"东汉时，谁既是杰出的科学家又是著名的文学家？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:王充&lt;/p&gt;&lt;p&gt;B:张衡&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8993;a:19:{s:10:\"questionid\";s:4:\"8993\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:78:\"在第二次世界大战中，中途岛战役发生在哪两个国家之间？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:英德&lt;/p&gt;&lt;p&gt;B:美日&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9002;a:19:{s:10:\"questionid\";s:4:\"9002\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:15:\"馒头起源于\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:南方&lt;/p&gt;&lt;p&gt;B:北方&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9047;a:19:{s:10:\"questionid\";s:4:\"9047\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:30:\"宋代的代表性刑罚是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:54:\"&lt;p&gt;A:腰斩&lt;/p&gt;&lt;p&gt;B:刺配&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9054;a:19:{s:10:\"questionid\";s:4:\"9054\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:36:\"新中国第一套纪念邮票是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:132:\"&lt;p&gt;A:庆祝中国人民政治协商会议第一届全体会议&lt;/p&gt;&lt;p&gt;B:中华人民共和国开国纪念&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9126;a:19:{s:10:\"questionid\";s:4:\"9126\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:48:\"自元朝以后，年代愈近建筑斗拱愈：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:细而密&lt;/p&gt;&lt;p&gt;B:粗而疏&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9590;a:19:{s:10:\"questionid\";s:4:\"9590\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:24:\"陈毅同志出生于：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:60:\"&lt;p&gt;A:1901.8.26&lt;/p&gt;&lt;p&gt;B:1901.8.27&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9593;a:19:{s:10:\"questionid\";s:4:\"9593\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:57:\"中国古代的一个时辰代表现在的多少时间？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:56:\"&lt;p&gt;A:1小时&lt;/p&gt;&lt;p&gt;B:2小时&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9676;a:19:{s:10:\"questionid\";s:4:\"9676\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:219:\"迷你裙通常又称超短裙，可以说是裙装款式中的“长青树”，女性穿上这种裙子后既显示出青春魅力，又富有浓郁的时代感，你知道迷你裙是由_________国人发明的吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:美&lt;/p&gt;&lt;p&gt;B:英&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}i:2;a:2:{i:7190;a:19:{s:10:\"questionid\";s:4:\"7190\";s:12:\"questiontype\";s:1:\"2\";s:8:\"question\";s:212:\"&lt;p&gt;川电公司[2018}1号文工作思路中提出：要牢固树立以人民为中心的发展思想，坚持&amp;ldquo;人民电业为人民&amp;rdquo;的企业宗旨，统筹（ )的新要求。&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:126:\"&lt;p&gt;A:服务党和国家工作大局 B:服务人民美好生活 C:服务经济社会发展 D:服务能源转型&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:4:\"ABCD\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8909;a:19:{s:10:\"questionid\";s:4:\"8909\";s:12:\"questiontype\";s:1:\"2\";s:8:\"question\";s:212:\"&lt;p&gt;川电公司[2018}1号文工作思路中提出：要牢固树立以人民为中心的发展思想，坚持&amp;ldquo;人民电业为人民&amp;rdquo;的企业宗旨，统筹（ )的新要求。&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:126:\"&lt;p&gt;A:服务党和国家工作大局 B:服务人民美好生活 C:服务经济社会发展 D:服务能源转型&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:4:\"ABCD\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}i:3;a:40:{i:6376;a:19:{s:10:\"questionid\";s:4:\"6376\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:60:\"中国历史上被称为始皇帝的不是嬴政，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6454;a:19:{s:10:\"questionid\";s:4:\"6454\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:72:\"秦始皇把正月改叫端月是为了避讳自己的名字，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6510;a:19:{s:10:\"questionid\";s:4:\"6510\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:39:\"我国古代有人口统计机构吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:有&lt;/p&gt;&lt;p&gt;B:没有&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6578;a:19:{s:10:\"questionid\";s:4:\"6578\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:66:\"西欧中世纪的骑士教育中是否重视文化知识教育？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:否&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6667;a:19:{s:10:\"questionid\";s:4:\"6667\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:39:\"中国最早的文字是甲骨文吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6702;a:19:{s:10:\"questionid\";s:4:\"6702\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"新华书店是新中国成立后建立的吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6745;a:19:{s:10:\"questionid\";s:4:\"6745\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:21:\"鲁班是鲁国人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6746;a:19:{s:10:\"questionid\";s:4:\"6746\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"&quot;爱琴文明&quot;属于石器文明。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:6747;a:19:{s:10:\"questionid\";s:4:\"6747\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"第一台内燃机的发明者是英国人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7052;a:19:{s:10:\"questionid\";s:4:\"7052\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:22:\"公元1900年是闰年\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7308;a:19:{s:10:\"questionid\";s:4:\"7308\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"秦桧是不是最早被称为汉奸的人？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7312;a:19:{s:10:\"questionid\";s:4:\"7312\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:72:\"秦始皇把正月改叫端月是为了避讳自己的名字，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7436;a:19:{s:10:\"questionid\";s:4:\"7436\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:66:\"西欧中世纪的骑士教育中是否重视文化知识教育？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:否&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7446;a:19:{s:10:\"questionid\";s:4:\"7446\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:51:\"秦朝的阿房宫遗址在西安市郊，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7560;a:19:{s:10:\"questionid\";s:4:\"7560\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"新华书店是新中国成立后建立的吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7602;a:19:{s:10:\"questionid\";s:4:\"7602\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"始作俑者原指开始用陶佣殉葬的人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7802;a:19:{s:10:\"questionid\";s:4:\"7802\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:33:\"老子是春秋晚期的思想家\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:7910;a:19:{s:10:\"questionid\";s:4:\"7910\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:22:\"公元1900年是闰年\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8095;a:19:{s:10:\"questionid\";s:4:\"8095\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:60:\"中国历史上被称为始皇帝的不是嬴政，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8173;a:19:{s:10:\"questionid\";s:4:\"8173\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:72:\"秦始皇把正月改叫端月是为了避讳自己的名字，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8245;a:19:{s:10:\"questionid\";s:4:\"8245\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:100:\"在11月7日纪念俄国10月25日发生的“十月革命”，这样的差异与历法有关吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:有&lt;/p&gt;&lt;p&gt;B:没有&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8307;a:19:{s:10:\"questionid\";s:4:\"8307\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:51:\"秦朝的阿房宫遗址在西安市郊，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8316;a:19:{s:10:\"questionid\";s:4:\"8316\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:66:\"古代丝绸中，罗、缎、绮指的是同一种丝织物吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8324;a:19:{s:10:\"questionid\";s:4:\"8324\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:21:\"翼龙是恐龙么？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8421;a:19:{s:10:\"questionid\";s:4:\"8421\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"新华书店是新中国成立后建立的吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8465;a:19:{s:10:\"questionid\";s:4:\"8465\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"&quot;爱琴文明&quot;属于石器文明。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8466;a:19:{s:10:\"questionid\";s:4:\"8466\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"第一台内燃机的发明者是英国人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8663;a:19:{s:10:\"questionid\";s:4:\"8663\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:33:\"老子是春秋晚期的思想家\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8771;a:19:{s:10:\"questionid\";s:4:\"8771\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:22:\"公元1900年是闰年\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:8953;a:19:{s:10:\"questionid\";s:4:\"8953\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:60:\"中国历史上被称为始皇帝的不是嬴政，对吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9103;a:19:{s:10:\"questionid\";s:4:\"9103\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:100:\"在11月7日纪念俄国10月25日发生的“十月革命”，这样的差异与历法有关吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:有&lt;/p&gt;&lt;p&gt;B:没有&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9155;a:19:{s:10:\"questionid\";s:4:\"9155\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:66:\"西欧中世纪的骑士教育中是否重视文化知识教育？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:否&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9174;a:19:{s:10:\"questionid\";s:4:\"9174\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:66:\"古代丝绸中，罗、缎、绮指的是同一种丝织物吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9244;a:19:{s:10:\"questionid\";s:4:\"9244\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:39:\"中国最早的文字是甲骨文吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9279;a:19:{s:10:\"questionid\";s:4:\"9279\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"新华书店是新中国成立后建立的吗？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:51:\"&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9321;a:19:{s:10:\"questionid\";s:4:\"9321\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:48:\"始作俑者原指开始用陶佣殉葬的人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9322;a:19:{s:10:\"questionid\";s:4:\"9322\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:21:\"鲁班是鲁国人。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9323;a:19:{s:10:\"questionid\";s:4:\"9323\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:45:\"&quot;爱琴文明&quot;属于石器文明。\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9521;a:19:{s:10:\"questionid\";s:4:\"9521\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:33:\"老子是春秋晚期的思想家\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9629;a:19:{s:10:\"questionid\";s:4:\"9629\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:22:\"公元1900年是闰年\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:48:\"&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}s:12:\"questionrows\";a:1:{i:1;a:1:{i:22;a:14:{s:4:\"qrid\";s:2:\"22\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:131:\"&lt;p&gt;题帽题测试：&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 阅读材料并完成问题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"2\";s:10:\"qrusername\";s:15:\"教师管理员\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1626241653\";s:8:\"qrstatus\";s:1:\"1\";s:7:\"qrdeler\";s:0:\"\";s:9:\"qrdeltime\";s:1:\"0\";s:4:\"data\";a:1:{i:9757;a:19:{s:10:\"questionid\";s:4:\"9757\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:49:\"&lt;p&gt;啊实打实大苏打实打实&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:387:\"&lt;p&gt;A 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;B 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;C 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;D 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;files/attach/files/content/20230523/16848089661478.jpg&quot; style=&quot;width: 400px; height: 225px;&quot; /&gt;&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1684808554\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"22\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}}}}', 'a:4:{i:6358;s:1:\"B\";i:6484;s:1:\"A\";i:6639;s:1:\"B\";i:6696;s:1:\"B\";}', 1729413352, 60, 0, 0.0, '', 0, '', '6714c0e8125cd');
INSERT INTO `x2_examsession` (`examsessionid`, `examsessionuserid`, `examsession`, `examsessionsetting`, `examsessionsign`, `examsessionbasic`, `examsessiontype`, `examsessionkey`, `examsessionquestion`, `examsessionuseranswer`, `examsessionstarttime`, `examsessiontime`, `examsessionstatus`, `examsessionscore`, `examsessionscorelist`, `examsessionissave`, `examsessiontimelist`, `examsessiontoken`) VALUES ('efb90f6cbbc59860bf30348707b50d35', 1, '测试组卷', 'a:13:{s:6:\"examid\";s:1:\"2\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:12:\"测试组卷\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:1:\"1\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"60\";s:12:\"questypelite\";a:7:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"0\";}s:8:\"questype\";a:5:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:5:{i:1;a:2:{s:9:\"questions\";s:51:\",9754,9753,9752,9751,9750,9749,9748,9747,9746,9745,\";s:13:\"rowsquestions\";s:4:\",22,\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1668328026\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}', '', 1, 1, '2', 'a:2:{s:9:\"questions\";a:1:{i:1;a:10:{i:9745;a:19:{s:10:\"questionid\";s:4:\"9745\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:33:\"春联正式起始于什么皇帝\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:90:\"&lt;p&gt;A:明太祖&lt;/p&gt;&lt;p&gt;B:宋太祖&lt;/p&gt;&lt;p&gt;C:唐太祖&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9746;a:19:{s:10:\"questionid\";s:4:\"9746\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:37:\"&lt;&lt;人民日报&gt;&gt;创刊于\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:156:\"&lt;p&gt;A:五四时期&lt;/p&gt;&lt;p&gt;B:解放战争时期&lt;/p&gt;&lt;p&gt;C:抗日战争时期&lt;/p&gt;&lt;p&gt;D:国共十年对峙时期&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:1:\"C\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9747;a:19:{s:10:\"questionid\";s:4:\"9747\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:80:\"&quot;东风不与周郎便,铜雀春深锁二乔&quot;写的是哪一场战役?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:66:\"&lt;p&gt;A:赤壁之战&lt;/p&gt;&lt;p&gt;B:长勺之战&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9748;a:19:{s:10:\"questionid\";s:4:\"9748\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"我国最早的女史学家是?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:班昭&lt;/p&gt;&lt;p&gt;B:蔡琰&lt;/p&gt;&lt;p&gt;C:李清照&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9749;a:19:{s:10:\"questionid\";s:4:\"9749\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:43:\"东汉末年农民起义领袖是哪一位?\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:张角&lt;/p&gt;&lt;p&gt;B:李自成&lt;/p&gt;&lt;p&gt;C:黄巢&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9750;a:19:{s:10:\"questionid\";s:4:\"9750\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:51:\"世界上第一个发现地磁偏角中国人是：\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:84:\"&lt;p&gt;A:祖冲之&lt;/p&gt;&lt;p&gt;B:沈括&lt;/p&gt;&lt;p&gt;C:张衡&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"3\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9751;a:19:{s:10:\"questionid\";s:4:\"9751\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:36:\"人类第一次登月是在哪年？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:100:\"&lt;p&gt;A:1965&lt;/p&gt;&lt;p&gt;B:1966&lt;/p&gt;&lt;p&gt;C:1969&lt;/p&gt;&lt;p&gt;D:1972&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:1:\"C\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9752;a:19:{s:10:\"questionid\";s:4:\"9752\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:48:\"谁在葭萌关下挑灯夜斗，不分胜负？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:136:\"&lt;p&gt;A:张飞-马超&lt;/p&gt;&lt;p&gt;B:张飞-马岱&lt;/p&gt;&lt;p&gt;C:赵云-马超&lt;/p&gt;&lt;p&gt;D:黄忠-马超&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:1:\"A\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9753;a:19:{s:10:\"questionid\";s:4:\"9753\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:75:\"因暗杀未遂，被曹操断九指，割舌，分肢体而死的是谁？\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:111:\"&lt;p&gt;A:华佗&lt;/p&gt;&lt;p&gt;B:吉平&lt;/p&gt;&lt;p&gt;C:王子服&lt;/p&gt;&lt;p&gt;D:种辑&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:1:\"B\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}i:9754;a:19:{s:10:\"questionid\";s:4:\"9754\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:52:\"&lt;p&gt;诸葛亮常自比管仲和谁？&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:87:\"&lt;p&gt;A:乐毅&amp;nbsp; B:张良&amp;nbsp; C:孙武&amp;nbsp; D:姜子牙&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:16:\"测试2知识点\";}}s:18:\"questioncreatetime\";s:10:\"1620439239\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";s:0:\"\";s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"2\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}s:12:\"questionrows\";a:1:{i:1;a:1:{i:22;a:14:{s:4:\"qrid\";s:2:\"22\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:131:\"&lt;p&gt;题帽题测试：&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 阅读材料并完成问题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"2\";s:10:\"qrusername\";s:15:\"教师管理员\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1626241653\";s:8:\"qrstatus\";s:1:\"1\";s:7:\"qrdeler\";s:0:\"\";s:9:\"qrdeltime\";s:1:\"0\";s:4:\"data\";a:1:{i:9757;a:19:{s:10:\"questionid\";s:4:\"9757\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:49:\"&lt;p&gt;啊实打实大苏打实打实&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:387:\"&lt;p&gt;A 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;B 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;C 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;D 啊实打实大苏打实打实&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;files/attach/files/content/20230523/16848089661478.jpg&quot; style=&quot;width: 400px; height: 225px;&quot; /&gt;&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1684808554\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"22\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";s:13:\"questiondeler\";s:0:\"\";s:15:\"questiondeltime\";s:1:\"0\";}}}}}}', '', 1729493866, 60, 0, 0.0, '', 0, '', '6715fb6a1b0e0');
COMMIT;

-- ----------------------------
-- Table structure for x2_exercise
-- ----------------------------
DROP TABLE IF EXISTS `x2_exercise`;
CREATE TABLE `x2_exercise` (
  `exerid` int NOT NULL AUTO_INCREMENT,
  `exeruserid` int NOT NULL,
  `exerbasicid` int NOT NULL,
  `exerknowsid` int NOT NULL,
  `exernumber` int NOT NULL,
  `exerqutype` int NOT NULL,
  PRIMARY KEY (`exerid`) USING BTREE,
  KEY `exeruserid` (`exeruserid`) USING BTREE,
  KEY `exerbasicid` (`exerbasicid`) USING BTREE,
  KEY `exerknowsid` (`exerknowsid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_exercise
-- ----------------------------
BEGIN;
INSERT INTO `x2_exercise` (`exerid`, `exeruserid`, `exerbasicid`, `exerknowsid`, `exernumber`, `exerqutype`) VALUES (1, 0, 0, 0, 0, 0);
INSERT INTO `x2_exercise` (`exerid`, `exeruserid`, `exerbasicid`, `exerknowsid`, `exernumber`, `exerqutype`) VALUES (2, 0, 0, 0, 0, 0);
INSERT INTO `x2_exercise` (`exerid`, `exeruserid`, `exerbasicid`, `exerknowsid`, `exernumber`, `exerqutype`) VALUES (3, 1, 1, 2, 3, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_favor
-- ----------------------------
DROP TABLE IF EXISTS `x2_favor`;
CREATE TABLE `x2_favor` (
  `favorid` int NOT NULL AUTO_INCREMENT,
  `favoruserid` int NOT NULL DEFAULT '0',
  `favorsubjectid` int NOT NULL DEFAULT '0',
  `favorquestionid` int NOT NULL DEFAULT '0',
  `favortime` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`favorid`) USING BTREE,
  KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`) USING BTREE,
  KEY `favorsubjectid` (`favorsubjectid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_favor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_feedback
-- ----------------------------
DROP TABLE IF EXISTS `x2_feedback`;
CREATE TABLE `x2_feedback` (
  `fbid` int NOT NULL AUTO_INCREMENT,
  `fbquestionid` int NOT NULL,
  `fbtype` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fbcontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fbuserid` int NOT NULL,
  `fbtime` int NOT NULL,
  `fbstatus` tinyint NOT NULL,
  `fbdoneuserid` int NOT NULL,
  `fbdonetime` int NOT NULL,
  PRIMARY KEY (`fbid`) USING BTREE,
  KEY `fbquestionid` (`fbquestionid`,`fbuserid`) USING BTREE,
  KEY `fbtype` (`fbtype`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_feedback
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_knows
-- ----------------------------
DROP TABLE IF EXISTS `x2_knows`;
CREATE TABLE `x2_knows` (
  `knowsid` int NOT NULL AUTO_INCREMENT,
  `knows` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `knowssectionid` int NOT NULL DEFAULT '0',
  `knowsdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `knowsstatus` int NOT NULL DEFAULT '1',
  `knowssequence` int NOT NULL,
  `knowsnumber` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `knowsquestions` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`knowsid`) USING BTREE,
  KEY `knows` (`knows`,`knowssectionid`) USING BTREE,
  KEY `knowsstatus` (`knowsstatus`) USING BTREE,
  KEY `knowssequence` (`knowssequence`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_knows
-- ----------------------------
BEGIN;
INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`, `knowssequence`, `knowsnumber`, `knowsquestions`) VALUES (1, '数据库基础', 1, '', 1, 0, '', '');
INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`, `knowssequence`, `knowsnumber`, `knowsquestions`) VALUES (2, '数据库应用', 1, '', 1, 0, '', '');
INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`, `knowssequence`, `knowsnumber`, `knowsquestions`) VALUES (3, '演示三', 1, '', 0, 0, 'a:1:{i:4;i:1;}', 'a:1:{i:4;a:1:{i:0;s:4:\"4908\";}}');
COMMIT;

-- ----------------------------
-- Table structure for x2_log
-- ----------------------------
DROP TABLE IF EXISTS `x2_log`;
CREATE TABLE `x2_log` (
  `logid` int NOT NULL AUTO_INCREMENT,
  `loguserid` int DEFAULT '0',
  `logcourseid` int DEFAULT '0',
  `logtime` int DEFAULT '0',
  `logstatus` int DEFAULT NULL,
  `logendtime` int DEFAULT NULL,
  `logprogress` int DEFAULT NULL,
  PRIMARY KEY (`logid`) USING BTREE,
  KEY `loguserid` (`loguserid`,`logcourseid`) USING BTREE,
  KEY `logtime` (`logtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_log
-- ----------------------------
BEGIN;
INSERT INTO `x2_log` (`logid`, `loguserid`, `logcourseid`, `logtime`, `logstatus`, `logendtime`, `logprogress`) VALUES (254, 1, 1, 1664423199, 1, 1729479948, 0);
INSERT INTO `x2_log` (`logid`, `loguserid`, `logcourseid`, `logtime`, `logstatus`, `logendtime`, `logprogress`) VALUES (255, 1, 20, 1666060258, 0, 0, 2185);
INSERT INTO `x2_log` (`logid`, `loguserid`, `logcourseid`, `logtime`, `logstatus`, `logendtime`, `logprogress`) VALUES (256, 1, 7, 1729481412, 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_module
-- ----------------------------
DROP TABLE IF EXISTS `x2_module`;
CREATE TABLE `x2_module` (
  `moduleid` int NOT NULL AUTO_INCREMENT,
  `modulecode` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `modulename` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `moduledescribe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `moduleapp` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `moduletable` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `moduleallowreg` tinyint(1) NOT NULL DEFAULT '0',
  `modulestatus` int NOT NULL DEFAULT '0',
  `modulelockfields` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modulebrands` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`moduleid`) USING BTREE,
  UNIQUE KEY `modulecode` (`modulecode`) USING BTREE,
  KEY `modulename` (`modulename`) USING BTREE,
  KEY `moduleapp` (`moduleapp`) USING BTREE,
  KEY `moduleallowreg` (`moduleallowreg`) USING BTREE,
  KEY `modulestatus` (`modulestatus`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_module
-- ----------------------------
BEGIN;
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (1, 'manager', '管理员模型', '管理员', 'user', '', 0, 0, '', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (9, 'normal', '普通用户模型', '普通用户', 'user', '', 0, 0, '', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (12, 'teacher', '教师模型', '教师模型。', 'user', '', 0, 0, 'a:1:{s:9:\"userphoto\";i:1;}', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (14, 'course', '视频课程', '视频课程', 'course', '', 0, 0, '', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (15, 'pdf', '文本课程', '文本课程', 'course', '', 0, 0, '', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (16, 'news', '新闻', '新闻', 'content', '', 0, 0, '', NULL);
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (37, 'coupon', '代金券', '', 'item', '', 0, 0, '', 'a:1:{i:0;s:6:\"PHPEMS\";}');
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (38, 'rend', '租房', '', 'info', '', 0, 0, '', '');
INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`, `modulelockfields`, `modulebrands`) VALUES (39, 'enroll', '普通报名', '', 'enroll', '', 0, 0, '', '');
COMMIT;

-- ----------------------------
-- Table structure for x2_module_fields
-- ----------------------------
DROP TABLE IF EXISTS `x2_module_fields`;
CREATE TABLE `x2_module_fields` (
  `fieldid` int NOT NULL AUTO_INCREMENT,
  `fieldappid` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldmoduleid` int NOT NULL DEFAULT '0',
  `fieldsequence` tinyint NOT NULL DEFAULT '0',
  `field` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldtitle` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldlength` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fielddescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fieldtype` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldhtmltype` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldhtmlproperty` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fieldvalues` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fielddefault` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fieldlock` tinyint(1) NOT NULL DEFAULT '0',
  `fieldindextype` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `fieldforbidactors` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fieldsystem` int NOT NULL DEFAULT '0',
  `fieldpublic` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`) USING BTREE,
  KEY `field` (`field`,`fieldlock`) USING BTREE,
  KEY `fieldmoduleid` (`fieldmoduleid`) USING BTREE,
  KEY `fieldsequence` (`fieldsequence`) USING BTREE,
  KEY `fieldsystem` (`fieldsystem`) USING BTREE,
  KEY `fieldpublic` (`fieldpublic`) USING BTREE,
  KEY `fieldappid` (`fieldappid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_module_fields
-- ----------------------------
BEGIN;
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (1, 'user', 1, 2, 'manager_apps', '可管理模块', '240', '', 'varchar', 'checkboxarray', 'class=form-control\r\nstyle=width:30%', '用户=user\r\n内容=content\r\n考试=exam\r\n文件=document\r\n课程=course\r\n财务=bank\r\n表单=autoform', '', 0, '', ',-1,', 0, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (2, 'user', 12, 10, 'userphoto', '头像', '240', '', 'varchar', 'thumb', '', '', '', 0, '', ',,', 1, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (3, 'user', 1, 9, 'usertruename', '真实姓名', '24', '', 'varchar', 'text', 'class=form-control noborder\r\nplaceholder=请输入真实姓名', '', '', 0, '0', ',,', 1, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (4, 'user', 12, 0, 'teacher_subjects', '可管理科目', '', '', 'text', 'checkboxarray', '', '演示课程=1\r\n测试科目二=2\r\n测试考试=3\r\n用户=user\r\n内容=content\r\n考试=exam\r\n文件=document\r\n课程=course\r\n财务=bank\r\n表单=autoform', '', 0, '', ',-1,1,', 0, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (5, 'course', 14, 0, 'course_files', 'MP4视频', '240', 'MP4的视频格式，用于支持IE浏览器的H5播放', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.mp4\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (6, 'user', 12, 3, 'userprofile', '个人简介', '', '', 'text', 'textarea', 'class=form-control\r\nrows=5\r\nplaceholder=请输入个人简介', '', '', 0, '', ',,', 0, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (7, 'course', 15, 0, 'pdf_file', 'PDF文件', '240', '', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.pdf\r\nfilesize=20 MB\r\nattr-ftype=pdf', '', '', 0, '', ',,', 0, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (8, 'user', 12, 7, 'userphone', '手机号', '15', '', 'varchar', 'text', 'class=form-control', '', '', 0, 'INDEX', ',,', 0, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (9, 'user', 12, 4, 'useraddress', '地址', '120', '', 'varchar', 'text', 'class=form-control', '信息部=信息部', '', 0, '', ',,', 1, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (10, 'user', 12, 6, 'usergender', '性别', '6', '', 'varchar', 'radio', '', '男=男\r\n女=女', '男', 0, '', ',,', 0, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (11, 'user', 9, 0, 'normal_sfz', '身份证号', '25', '', 'text', 'text', '', '', '', 0, '', ',,', 0, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (12, 'item', 37, 0, 'coupon_coin', '积分额度', '', '', 'int', 'text', '', '', '', 0, '', ',,', 1, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (13, 'item', 37, 0, 'coupon_number', '课时数', '', '', 'int', 'text', '', '', '', 0, '', ',,', 1, 0);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (14, 'enroll', 39, 0, 'enrolltruename', '姓名', '48', '', 'varchar', 'text', 'class=form-control normal\r\nneedle=needle\r\nmsg=姓名\r\nplaceholder=姓名', '', '', 0, '', ',,', 1, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (15, 'enroll', 39, 0, 'enrollpassport', '身份证号', '36', '', 'varchar', 'text', 'class=form-control normal\r\nneedle=needle\r\nmsg=身份证号\r\nplaceholder=身份证号', '', '', 0, '', ',,', 0, 1);
INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES (16, 'enroll', 39, 0, 'enrollphone', '手机号', '15', '', 'varchar', 'text', 'class=form-control normal\r\nneedle=needle\r\nmsg=手机号\r\nplaceholder=手机号', '', '', 0, '', ',,', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for x2_navs
-- ----------------------------
DROP TABLE IF EXISTS `x2_navs`;
CREATE TABLE `x2_navs` (
  `navid` int NOT NULL AUTO_INCREMENT,
  `navtitle` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `navurl` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `navsequence` int DEFAULT NULL,
  `navstatus` int DEFAULT NULL,
  PRIMARY KEY (`navid`) USING BTREE,
  KEY `navsequence` (`navsequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_navs
-- ----------------------------
BEGIN;
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (1, '考试', 'index.php?exam-app', 4, 1);
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (2, '首页', 'index.php', 6, 1);
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (3, '内容', 'index.php?content', 5, 0);
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (6, '课程', 'index.php?course', 0, 0);
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (7, '调查', 'index.php?survey', 0, 0);
INSERT INTO `x2_navs` (`navid`, `navtitle`, `navurl`, `navsequence`, `navstatus`) VALUES (9, '报名', 'index.php?enroll', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_openbasics
-- ----------------------------
DROP TABLE IF EXISTS `x2_openbasics`;
CREATE TABLE `x2_openbasics` (
  `obid` int NOT NULL AUTO_INCREMENT,
  `obuserid` int NOT NULL DEFAULT '0',
  `obbasicid` int NOT NULL DEFAULT '0',
  `obtime` int NOT NULL DEFAULT '0',
  `obendtime` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`obid`) USING BTREE,
  KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_openbasics
-- ----------------------------
BEGIN;
INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES (5, 1, 1, 1729132737, 1760668737);
INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES (6, 1, 38, 1742190971, 1773726971);
INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES (7, 4, 38, 1742197225, 1773733225);
INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES (8, 4, 1, 1742197250, 1773733250);
COMMIT;

-- ----------------------------
-- Table structure for x2_opencourse
-- ----------------------------
DROP TABLE IF EXISTS `x2_opencourse`;
CREATE TABLE `x2_opencourse` (
  `ocid` int NOT NULL AUTO_INCREMENT,
  `ocuserid` int NOT NULL,
  `occourseid` int NOT NULL,
  `octime` int NOT NULL,
  `ocendtime` int NOT NULL,
  PRIMARY KEY (`ocid`) USING BTREE,
  KEY `ocuserid` (`ocuserid`,`occourseid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_opencourse
-- ----------------------------
BEGIN;
INSERT INTO `x2_opencourse` (`ocid`, `ocuserid`, `occourseid`, `octime`, `ocendtime`) VALUES (4, 1, 1, 1729478334, 1730342334);
INSERT INTO `x2_opencourse` (`ocid`, `ocuserid`, `occourseid`, `octime`, `ocendtime`) VALUES (5, 1, 12, 1729478368, 1761014368);
COMMIT;

-- ----------------------------
-- Table structure for x2_orders
-- ----------------------------
DROP TABLE IF EXISTS `x2_orders`;
CREATE TABLE `x2_orders` (
  `ordersn` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ordertitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderitems` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderprice` decimal(10,2) NOT NULL,
  `orderuserid` int NOT NULL,
  `orderuserinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderstatus` int NOT NULL,
  `orderfullprice` decimal(10,2) NOT NULL,
  `ordercreatetime` int NOT NULL,
  `orderpaytime` int NOT NULL,
  `orderouttime` int NOT NULL,
  `orderrecivetime` int NOT NULL,
  `orderfaq` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderpost` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderapp` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `orderpaytype` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `orderbill` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ordersn`) USING BTREE,
  KEY `orderuserid` (`orderuserid`) USING BTREE,
  KEY `orderapp` (`orderapp`) USING BTREE,
  KEY `orderprice` (`orderprice`) USING BTREE,
  KEY `orderpaytype` (`orderpaytype`) USING BTREE,
  KEY `ordercreatetime` (`ordercreatetime`) USING BTREE,
  KEY `orderpaytime` (`orderpaytime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_poscontent
-- ----------------------------
DROP TABLE IF EXISTS `x2_poscontent`;
CREATE TABLE `x2_poscontent` (
  `pcid` int NOT NULL AUTO_INCREMENT,
  `pcposid` int NOT NULL DEFAULT '0',
  `pcposapp` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pccontentid` int NOT NULL DEFAULT '0',
  `pcthumb` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `pcsequence` int NOT NULL DEFAULT '0',
  `pctitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `pctime` int NOT NULL DEFAULT '0',
  `pcdescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`pcid`) USING BTREE,
  KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`) USING BTREE,
  KEY `pctime` (`pctime`) USING BTREE,
  KEY `pcposapp` (`pcposapp`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_poscontent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_position
-- ----------------------------
DROP TABLE IF EXISTS `x2_position`;
CREATE TABLE `x2_position` (
  `posid` int NOT NULL AUTO_INCREMENT,
  `posname` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `posapp` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`posid`) USING BTREE,
  KEY `posapp` (`posapp`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_position
-- ----------------------------
BEGIN;
INSERT INTO `x2_position` (`posid`, `posname`, `posapp`) VALUES (1, 'PC首页轮播图', 'content');
INSERT INTO `x2_position` (`posid`, `posname`, `posapp`) VALUES (2, '热点新闻', 'content');
INSERT INTO `x2_position` (`posid`, `posname`, `posapp`) VALUES (3, '精彩专题', 'content');
INSERT INTO `x2_position` (`posid`, `posname`, `posapp`) VALUES (4, '手机首页轮播', 'content');
COMMIT;

-- ----------------------------
-- Table structure for x2_progress
-- ----------------------------
DROP TABLE IF EXISTS `x2_progress`;
CREATE TABLE `x2_progress` (
  `prsid` int NOT NULL AUTO_INCREMENT,
  `prsuserid` int NOT NULL,
  `prstime` int NOT NULL,
  `prsendtime` int NOT NULL,
  `prscourseid` int NOT NULL,
  `prscoursestatus` tinyint(1) NOT NULL,
  `prsexamid` int NOT NULL,
  `prsexamstatus` tinyint(1) NOT NULL,
  `prstatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`prsid`) USING BTREE,
  KEY `prsuserid` (`prsuserid`) USING BTREE,
  KEY `prscoursestatus` (`prscoursestatus`) USING BTREE,
  KEY `prsexamstatus` (`prsexamstatus`) USING BTREE,
  KEY `prstatus` (`prstatus`) USING BTREE,
  KEY `prscourseid` (`prscourseid`) USING BTREE,
  KEY `prsexamid` (`prsexamid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_progress
-- ----------------------------
BEGIN;
INSERT INTO `x2_progress` (`prsid`, `prsuserid`, `prstime`, `prsendtime`, `prscourseid`, `prscoursestatus`, `prsexamid`, `prsexamstatus`, `prstatus`) VALUES (1, 1, 1729478880, 0, 1, 0, 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_province
-- ----------------------------
DROP TABLE IF EXISTS `x2_province`;
CREATE TABLE `x2_province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provinceid` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `province` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `province` (`province`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_province
-- ----------------------------
BEGIN;
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (1, '110000', '北京市');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (2, '120000', '天津市');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (3, '130000', '河北省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (4, '140000', '山西省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (5, '150000', '内蒙古自治区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (6, '210000', '辽宁省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (7, '220000', '吉林省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (8, '230000', '黑龙江省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (9, '310000', '上海市');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (10, '320000', '江苏省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (11, '330000', '浙江省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (12, '340000', '安徽省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (13, '350000', '福建省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (14, '360000', '江西省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (15, '370000', '山东省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (16, '410000', '河南省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (17, '420000', '湖北省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (18, '430000', '湖南省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (19, '440000', '广东省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (20, '450000', '广西壮族自治区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (21, '460000', '海南省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (22, '500000', '重庆市');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (23, '510000', '四川省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (24, '520000', '贵州省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (25, '530000', '云南省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (26, '540000', '西藏自治区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (27, '610000', '陕西省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (28, '620000', '甘肃省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (29, '630000', '青海省');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (30, '640000', '宁夏回族自治区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (31, '650000', '新疆维吾尔自治区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (32, '810000', '香港特别行政区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (33, '820000', '澳门特别行政区');
INSERT INTO `x2_province` (`id`, `provinceid`, `province`) VALUES (34, '710000', '台湾省');
COMMIT;

-- ----------------------------
-- Table structure for x2_quest2knows
-- ----------------------------
DROP TABLE IF EXISTS `x2_quest2knows`;
CREATE TABLE `x2_quest2knows` (
  `qkid` int NOT NULL AUTO_INCREMENT,
  `qkquestionid` int NOT NULL DEFAULT '0',
  `qkknowsid` int NOT NULL DEFAULT '0',
  `qktype` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`qkid`) USING BTREE,
  KEY `qkquestionid` (`qkquestionid`,`qkknowsid`) USING BTREE,
  KEY `qktype` (`qktype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_quest2knows
-- ----------------------------
BEGIN;
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (27, 1, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (3, 2, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (4, 3, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (5, 4, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (6, 5, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (7, 6, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (8, 7, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (9, 8, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (10, 9, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (11, 10, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (12, 11, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (13, 31, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (14, 23, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (15, 32, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (16, 33, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (17, 34, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (18, 35, 1, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (19, 36, 2, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (20, 37, 2, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (21, 38, 2, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (22, 39, 2, 0);
INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES (23, 40, 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_questionanalysis
-- ----------------------------
DROP TABLE IF EXISTS `x2_questionanalysis`;
CREATE TABLE `x2_questionanalysis` (
  `qaid` int NOT NULL AUTO_INCREMENT,
  `qabasicid` int DEFAULT NULL,
  `qaquestionid` int DEFAULT NULL,
  `qauserid` int DEFAULT NULL,
  `qanumber` int DEFAULT NULL,
  `qarightnumber` int DEFAULT NULL,
  `qawrongnumber` int DEFAULT NULL,
  `qalasttime` int DEFAULT NULL,
  `qafirststatus` int DEFAULT NULL,
  `qalaststatus` int DEFAULT NULL,
  `qarate` int DEFAULT NULL,
  `qaqnparent` int DEFAULT NULL,
  PRIMARY KEY (`qaid`) USING BTREE,
  KEY `qabasicid` (`qabasicid`) USING BTREE,
  KEY `qaquestionid` (`qaquestionid`) USING BTREE,
  KEY `qauserid` (`qauserid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_questionanalysis
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_questionrows
-- ----------------------------
DROP TABLE IF EXISTS `x2_questionrows`;
CREATE TABLE `x2_questionrows` (
  `qrid` int NOT NULL AUTO_INCREMENT,
  `qrtype` tinyint NOT NULL DEFAULT '2',
  `qrquestion` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `qrknowsid` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `qrlevel` int NOT NULL DEFAULT '0',
  `qrnumber` int NOT NULL DEFAULT '0',
  `qruserid` int NOT NULL DEFAULT '0',
  `qrusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `qrlastmodifyuser` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `qrtime` int NOT NULL DEFAULT '0',
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1',
  `qrdeler` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `qrdeltime` int DEFAULT NULL,
  PRIMARY KEY (`qrid`) USING BTREE,
  KEY `qrlevel` (`qrlevel`,`qrnumber`) USING BTREE,
  KEY `qruserid` (`qruserid`) USING BTREE,
  KEY `qrtime` (`qrtime`) USING BTREE,
  KEY `qrstatus` (`qrstatus`) USING BTREE,
  KEY `qrtype` (`qrtype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_questionrows
-- ----------------------------
BEGIN;
INSERT INTO `x2_questionrows` (`qrid`, `qrtype`, `qrquestion`, `qrknowsid`, `qrlevel`, `qrnumber`, `qruserid`, `qrusername`, `qrlastmodifyuser`, `qrtime`, `qrstatus`, `qrdeler`, `qrdeltime`) VALUES (22, 1, '&lt;p&gt;题帽题测试：&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 阅读材料并完成问题&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"演示知识点\";}}', 1, 1, 2, '教师管理员', '', 1626241653, 1, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_questions
-- ----------------------------
DROP TABLE IF EXISTS `x2_questions`;
CREATE TABLE `x2_questions` (
  `questionid` int NOT NULL AUTO_INCREMENT,
  `questiontype` int NOT NULL DEFAULT '0',
  `question` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questionuserid` int NOT NULL DEFAULT '0',
  `questionusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `questionlastmodifyuser` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `questionselect` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questionselectnumber` tinyint NOT NULL DEFAULT '0',
  `questionanswer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questiondescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questionknowsid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questioncreatetime` int NOT NULL DEFAULT '0',
  `questionstatus` int NOT NULL DEFAULT '1',
  `questionhtml` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `questionparent` int NOT NULL DEFAULT '0',
  `questionsequence` int NOT NULL DEFAULT '0',
  `questionlevel` int NOT NULL DEFAULT '0',
  `questiondeler` varchar(72) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `questiondeltime` int DEFAULT NULL,
  PRIMARY KEY (`questionid`) USING BTREE,
  KEY `questioncreatetime` (`questioncreatetime`) USING BTREE,
  KEY `questiontype` (`questiontype`) USING BTREE,
  KEY `questionstatus` (`questionstatus`) USING BTREE,
  KEY `questionuserid` (`questionuserid`) USING BTREE,
  KEY `questionparent` (`questionparent`,`questionsequence`) USING BTREE,
  KEY `questionlevel` (`questionlevel`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_questions
-- ----------------------------
BEGIN;
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (1, 1, '&lt;p&gt;题目哈哈哈&lt;span class=&quot;math-tex&quot;&gt;\\\\(x = {-b \\\\pm \\\\sqrt{b^2-4ac} \\\\over 2a}\\\\)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width:500px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table class=&quot;MsoTableGrid&quot; new=&quot;&quot; roman=&quot;&quot; style=&quot;border-collapse:collapse; border:none; text-align:justify; font-family:&quot; times=&quot;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:1px solid black; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-01&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-02&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;border-bottom:1px solid black; width:47px; padding:0px 7px 0px 7px; border-top:none; border-right:1px solid black; border-left:1px solid black&quot; valign=&quot;top&quot;&gt;\r\n			&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:10.5pt&quot;&gt;&lt;span style=&quot;font-family:Calibri&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;font face=&quot;Calibri&quot;&gt;2023-04&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;', 1, 'peadmin', '', '&lt;p&gt;A.一个&lt;span class=&quot;math-tex&quot;&gt;\\\\(x = {-b \\\\pm \\\\sqrt{b^2-4ac} \\\\over 2a}\\\\)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;B.两个&lt;/p&gt;\r\n\r\n&lt;p&gt;C.三个&lt;/p&gt;\r\n\r\n&lt;p&gt;D.四个&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742198853, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (36, 2, '在操作系统中，哪些进程调度算法可能导致“饥饿”问题？', 1, 'peadmin', '', 'A. 先来先服务（FCFS） B. 最短作业优先（SJF） C. 最高响应比优先（HRRN） D. 时间片轮转（RR）', 4, 'B, C', 'SJF可能导致长任务饥饿，HRRN虽然可以缓解，但仍可能存在', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:15:\"数据库应用\";}}', 1742200142, 1, '', 0, 0, 3, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (35, 2, '以下哪些算法的时间复杂度为O(nlogn)？', 1, 'peadmin', '', 'A. 快速排序 B. 归并排序 C. 堆排序 D. 选择排序', 4, 'A, B, C', '快排、归并、堆排序的时间复杂度均为O(nlogn)，选择排序是O(n05)', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742200142, 1, '', 0, 0, 3, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (34, 1, 'SQL语句 SELECT * FROM users WHERE age &gt; 30 ORDER BY age DESC; 的作用是？', 1, 'peadmin', '', 'A. 查询users表的所有数据 B. 筛选 age &gt; 30 的用户，并升序排列 C. 筛选 age &gt; 30 的用户，并降序排列 D. 查询 age &lt; 30 的用户', 4, 'C', '该SQL语句筛选 age &gt; 30 并按 age 降序排列', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742200142, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (33, 1, 'Python中，以下哪个数据类型是不可变的？', 1, 'peadmin', '', 'A. 列表（list） B. 字典（dict） C. 元组（tuple） D. 集合（set）', 4, 'C', '元组（tuple）是不可变的数据结构', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742200142, 1, '', 0, 0, 1, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (31, 3, '&lt;p&gt;机器学习中的过拟合是指模型在训练数据上表现很好，但在测试数据上表现较差&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;正确/错误&lt;/p&gt;', 2, 'A', '&lt;p&gt;过拟合指的是模型在训练集上效果很好，但泛化能力差&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742199479, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (30, 3, 'TCP协议的三次握手是用于断开连接的', 1, 'peadmin', '', '正确/错误', 2, 'B', '三次握手用于建立连接，四次挥手用于断开连接', '', 1742199479, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (29, 3, 'Python的字典（dict）是有序的', 1, 'peadmin', '', '正确/错误', 2, 'A', 'Python 3.6 之前，字典是无序的；Python 3.7+ 保持插入顺序', '', 1742199479, 1, '', 0, 0, 1, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (28, 2, '计算机网络中的TCP协议有哪些特点？', 1, 'peadmin', '', 'A. 可靠传输 B. 无序传输 C. 面向连接 D. 低延迟', 4, 'A, C', 'TCP提供可靠传输且是面向连接的协议', '', 1742199479, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (27, 2, '在操作系统中，哪些进程调度算法可能导致“饥饿”问题？', 1, 'peadmin', '', 'A. 先来先服务（FCFS） B. 最短作业优先（SJF） C. 最高响应比优先（HRRN） D. 时间片轮转（RR）', 4, 'B, C', 'SJF可能导致长任务饥饿，HRRN虽然可以缓解，但仍可能存在', '', 1742199479, 1, '', 0, 0, 3, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (26, 2, '以下哪些算法的时间复杂度为O(nlogn)？', 1, 'peadmin', '', 'A. 快速排序 B. 归并排序 C. 堆排序 D. 选择排序', 4, 'A, B, C', '快排、归并、堆排序的时间复杂度均为O(nlogn)，选择排序是O(n05)', '', 1742199479, 1, '', 0, 0, 3, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (25, 1, 'SQL语句 SELECT * FROM users WHERE age &gt; 30 ORDER BY age DESC; 的作用是？', 1, 'peadmin', '', 'A. 查询users表的所有数据 B. 筛选 age &gt; 30 的用户，并升序排列 C. 筛选 age &gt; 30 的用户，并降序排列 D. 查询 age &lt; 30 的用户', 4, 'C', '该SQL语句筛选 age &gt; 30 并按 age 降序排列', '', 1742199479, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (24, 1, 'Python中，以下哪个数据类型是不可变的？', 1, 'peadmin', '', 'A. 列表（list） B. 字典（dict） C. 元组（tuple） D. 集合（set）', 4, 'C', '元组（tuple）是不可变的数据结构', '', 1742199479, 1, '', 0, 0, 1, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (32, 1, '计算机存储层次中，访问速度最快的是？', 1, 'peadmin', '', 'A. 磁盘 B. RAM C. 缓存（Cache） D. 寄存器', 4, 'D', '寄存器位于CPU内部，访问速度最快', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742200142, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (23, 1, '&lt;p&gt;计算机存储层次中，访问速度最快的是？&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;A. 磁盘 B. RAM C. 缓存（Cache） D. 寄存器&lt;/p&gt;', 4, 'D', '&lt;p&gt;寄存器位于CPU内部，访问速度最快&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:15:\"数据库基础\";}}', 1742199479, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (37, 2, '计算机网络中的TCP协议有哪些特点？', 1, 'peadmin', '', 'A. 可靠传输 B. 无序传输 C. 面向连接 D. 低延迟', 4, 'A, C', 'TCP提供可靠传输且是面向连接的协议', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:15:\"数据库应用\";}}', 1742200142, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (38, 3, 'Python的字典（dict）是有序的', 1, 'peadmin', '', '正确/错误', 2, 'A', 'Python 3.6 之前，字典是无序的；Python 3.7+ 保持插入顺序', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:15:\"数据库应用\";}}', 1742200142, 1, '', 0, 0, 1, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (39, 3, 'TCP协议的三次握手是用于断开连接的', 1, 'peadmin', '', '正确/错误', 2, 'B', '三次握手用于建立连接，四次挥手用于断开连接', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:15:\"数据库应用\";}}', 1742200142, 1, '', 0, 0, 2, '', 0);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`, `questiondeler`, `questiondeltime`) VALUES (40, 3, '机器学习中的过拟合是指模型在训练数据上表现很好，但在测试数据上表现较差', 1, 'peadmin', '', '正确/错误', 2, 'A', '过拟合指的是模型在训练集上效果很好，但泛化能力差', 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"2\";s:5:\"knows\";s:15:\"数据库应用\";}}', 1742200142, 1, '', 0, 0, 2, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_questype
-- ----------------------------
DROP TABLE IF EXISTS `x2_questype`;
CREATE TABLE `x2_questype` (
  `questid` int NOT NULL AUTO_INCREMENT,
  `questype` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `questsort` int NOT NULL DEFAULT '0',
  `questchoice` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`) USING BTREE,
  KEY `questchoice` (`questchoice`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_questype
-- ----------------------------
BEGIN;
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (1, '单选题', 0, 1);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (2, '多选题', 0, 2);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (3, '判断题', 0, 4);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (4, '定值填空', 0, 5);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (5, '填空题', 1, 2);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (6, '问答题', 1, 102);
INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES (7, '题冒题', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for x2_record
-- ----------------------------
DROP TABLE IF EXISTS `x2_record`;
CREATE TABLE `x2_record` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `recordquestionid` int NOT NULL DEFAULT '0',
  `recorduserid` int NOT NULL DEFAULT '0',
  `recordtime` int NOT NULL DEFAULT '0',
  `recordsubjectid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recordid`) USING BTREE,
  KEY `recordquestionid` (`recordquestionid`) USING BTREE,
  KEY `recorduserid` (`recorduserid`) USING BTREE,
  KEY `recordsubjectid` (`recordsubjectid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of x2_record
-- ----------------------------
BEGIN;
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (1, 6701, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (2, 6884, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (3, 7089, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (4, 7408, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (5, 7563, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (6, 7740, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (7, 7922, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (8, 8216, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (9, 8218, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (10, 8220, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (11, 8344, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (12, 8351, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (13, 8735, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (14, 8808, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (15, 8818, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (16, 9085, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (17, 9093, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (18, 9166, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (19, 9170, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (20, 9283, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (21, 9447, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (22, 9457, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (23, 9464, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (24, 9727, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (25, 9747, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (26, 7190, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (27, 8909, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (28, 6376, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (29, 6454, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (30, 6526, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (31, 6578, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (32, 6588, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (33, 6597, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (34, 6605, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (35, 6744, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (36, 6745, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (37, 6747, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (38, 6944, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (39, 7234, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (40, 7308, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (41, 7384, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (42, 7436, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (43, 7446, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (44, 7463, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (45, 7560, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (46, 7604, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (47, 7605, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (48, 8229, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (49, 8297, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (50, 8307, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (51, 8316, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (52, 8324, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (53, 8386, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (54, 8421, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (55, 8463, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (56, 8464, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (57, 8663, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (58, 8771, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (59, 9027, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (60, 9031, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (61, 9103, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (62, 9155, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (63, 9165, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (64, 9182, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (65, 9323, 1, 1630413664, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (68, 6587, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (69, 6593, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (70, 6688, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (71, 6704, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (72, 6849, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (73, 6877, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (74, 6883, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (75, 7048, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (76, 7080, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (77, 7216, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (78, 7249, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (79, 7564, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (80, 7728, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (81, 7739, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (82, 8132, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (83, 8235, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (84, 8299, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (85, 8315, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (86, 8373, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (87, 8419, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (88, 8599, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (89, 8732, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (90, 9089, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (91, 9157, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (92, 9173, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (93, 6450, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (94, 6510, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (95, 6702, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (96, 6746, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (97, 7312, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (98, 7368, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (99, 7455, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (100, 7525, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (101, 7603, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (102, 7910, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (103, 8169, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (104, 8465, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (105, 8466, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (106, 8953, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (107, 9087, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (108, 9244, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (109, 9321, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (110, 9322, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (111, 9324, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (112, 9521, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (113, 9629, 1, 1667380894, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (114, 6496, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (115, 7099, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (116, 7198, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (117, 7342, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (118, 7447, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (119, 7556, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (120, 7557, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (121, 7561, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (122, 7738, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (123, 8070, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (124, 8209, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (125, 8358, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (126, 8393, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (127, 8416, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (128, 8417, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (129, 8799, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (130, 8869, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (131, 8945, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (132, 9017, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (133, 9042, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (134, 9047, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (135, 9460, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (136, 9461, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (137, 9590, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (138, 6667, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (139, 7602, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (140, 7802, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (141, 8095, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (142, 9174, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (143, 9279, 1, 1668327510, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (144, 6411, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (145, 7231, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (146, 7298, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (147, 7355, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (148, 7451, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (149, 8130, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (150, 8135, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (151, 8424, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (152, 8561, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (153, 8598, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (154, 8600, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (155, 8935, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (156, 8968, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (157, 9054, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (158, 9074, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (159, 9426, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (160, 9625, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (161, 8245, 1, 1668327939, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (162, 6455, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (163, 6549, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (164, 6570, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (165, 7535, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (166, 7555, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (167, 7737, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (168, 7745, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (169, 8110, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (170, 8166, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (171, 8196, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (172, 8269, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (173, 8423, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (174, 8568, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (175, 8698, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (176, 8950, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (177, 9053, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (178, 9076, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (179, 9111, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (180, 9231, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (181, 7052, 1, 1668327978, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (182, 6387, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (183, 6413, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (184, 6476, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (185, 6639, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (186, 6700, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (187, 7013, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (188, 7063, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (189, 7323, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (190, 7558, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (191, 7742, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (192, 7938, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (193, 8195, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (194, 8253, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (195, 8917, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (196, 9127, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (197, 9277, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (198, 8173, 1, 1668419017, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (199, 6470, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (200, 6596, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (201, 6699, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (202, 7226, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (203, 7245, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (204, 7269, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (205, 7334, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (206, 7354, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (207, 7366, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (208, 7370, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (209, 8087, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (210, 8106, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (211, 8268, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (212, 8415, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (213, 8589, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (214, 8596, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (215, 8601, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (216, 8889, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (217, 9676, 1, 1668419184, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (218, 6487, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (219, 6512, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (220, 7546, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (221, 7741, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (222, 7811, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (223, 7957, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (224, 8189, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (225, 8345, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (226, 8672, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (227, 9147, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (228, 9164, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (229, 9419, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (230, 9556, 1, 1668419214, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (231, 6368, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (232, 6534, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (233, 6580, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (234, 6703, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (235, 7039, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (236, 7305, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (237, 7348, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (238, 7392, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (239, 7735, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (240, 8059, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (241, 8602, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (242, 9126, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (243, 9136, 1, 1672905043, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (244, 6391, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (245, 6465, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (246, 6508, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (247, 6516, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (248, 6532, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (249, 6632, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (250, 7215, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (251, 7313, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (252, 7335, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (253, 7871, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (254, 7947, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (255, 8203, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (256, 8308, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (257, 8964, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (258, 9061, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (259, 9281, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (260, 9757, 1, 1690166351, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (261, 9745, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (262, 9746, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (263, 9748, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (264, 9749, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (265, 9750, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (266, 9751, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (267, 9752, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (268, 9753, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (269, 9754, 1, 1690166413, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (270, 6497, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (271, 6705, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (272, 6887, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (273, 7016, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (274, 7428, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (275, 7512, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (276, 7532, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (277, 7707, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (278, 7837, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (279, 8251, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (280, 8312, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (281, 8407, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (282, 8993, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (283, 9209, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (284, 9265, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (285, 9458, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (286, 9616, 1, 1690166488, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (287, 6842, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (288, 7328, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (289, 7390, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (290, 7407, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (291, 8289, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (292, 8990, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (293, 9073, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (294, 9276, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (295, 9640, 1, 1690168448, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (296, 6416, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (297, 7064, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (298, 7150, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (299, 7274, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (300, 7345, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (301, 7921, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (302, 8184, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (303, 8396, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (304, 8758, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (305, 9078, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (306, 9666, 1, 1690168518, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (307, 6340, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (308, 6550, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (309, 6677, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (310, 6880, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (311, 6881, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (312, 7170, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (313, 8092, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (314, 9067, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (315, 9593, 1, 1690169203, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (316, 6499, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (317, 7209, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (318, 7357, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (319, 7559, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (320, 8934, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (321, 9456, 1, 1690170142, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (322, 6490, 1, 1690170177, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (323, 7438, 1, 1690170177, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (324, 7554, 1, 1690170177, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (325, 8076, 1, 1690170177, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (326, 9530, 1, 1690170177, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (327, 6697, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (328, 6882, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (329, 7874, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (330, 9024, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (331, 9032, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (332, 9109, 1, 1690170822, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (333, 6368, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (334, 6373, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (335, 6411, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (336, 6413, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (337, 6470, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (338, 6487, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (339, 6499, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (340, 6549, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (341, 7048, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (342, 7064, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (343, 7080, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (344, 7089, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (345, 7354, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (346, 7357, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (347, 7512, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (348, 7563, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (349, 7921, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (350, 7957, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (351, 8144, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (352, 8189, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (353, 8216, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (354, 8289, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (355, 8396, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (356, 8928, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (357, 9017, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (358, 9085, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (359, 9147, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (360, 9203, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (361, 9273, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (362, 9641, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (363, 7190, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (364, 8909, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (365, 6376, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (366, 6450, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (367, 6454, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (368, 6510, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (369, 6526, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (370, 6597, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (371, 6667, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (372, 6744, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (373, 6745, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (374, 6746, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (375, 6944, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (376, 7234, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (377, 7446, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (378, 7455, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (379, 7463, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (380, 7525, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (381, 7560, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (382, 7602, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (383, 7603, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (384, 7604, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (385, 7605, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (386, 7910, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (387, 8095, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (388, 8169, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (389, 8173, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (390, 8245, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (391, 8307, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (392, 8324, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (393, 8463, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (394, 8465, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (395, 8466, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (396, 8953, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (397, 9027, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (398, 9103, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (399, 9155, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (400, 9165, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (401, 9182, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (402, 9324, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (403, 9521, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (404, 9629, 2, 1690171769, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (405, 6358, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (406, 6391, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (407, 6626, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (408, 6880, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (409, 7013, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (410, 7216, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (411, 7231, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (412, 7274, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (413, 7305, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (414, 7342, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (415, 7345, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (416, 7390, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (417, 7392, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (418, 7451, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (419, 7454, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (420, 7490, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (421, 8215, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (422, 8278, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (423, 8420, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (424, 8568, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (425, 8964, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (426, 9047, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (427, 9054, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (428, 9109, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (429, 9157, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (430, 9460, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (431, 6578, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (432, 6702, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (433, 6747, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (434, 7308, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (435, 7312, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (436, 7384, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (437, 7802, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (438, 8229, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (439, 8297, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (440, 8386, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (441, 8464, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (442, 9087, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (443, 9174, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (444, 9244, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (445, 9279, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (446, 9321, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (447, 9323, 2, 1690171854, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (448, 6532, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (449, 6674, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (450, 6705, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (451, 6881, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (452, 7209, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (453, 7226, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (454, 7408, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (455, 7484, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (456, 7557, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (457, 7562, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (458, 7728, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (459, 8008, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (460, 8059, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (461, 8087, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (462, 8218, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (463, 8231, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (464, 8306, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (465, 8315, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (466, 8351, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (467, 8606, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (468, 8735, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (469, 8993, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (470, 9127, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (471, 9277, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (472, 9278, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (473, 9426, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (474, 6605, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (475, 7052, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (476, 7368, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (477, 7436, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (478, 8421, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (479, 8663, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (480, 9031, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (481, 9322, 2, 1690171887, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (482, 6440, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (483, 6596, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (484, 6688, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (485, 6877, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (486, 7099, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (487, 7170, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (488, 7245, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (489, 7374, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (490, 7497, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (491, 7738, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (492, 8092, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (493, 8132, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (494, 8416, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (495, 8418, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (496, 8422, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (497, 8601, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (498, 8602, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (499, 8945, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (500, 9042, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (501, 9136, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (502, 9173, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (503, 9209, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (504, 9231, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (505, 9464, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (506, 6588, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (507, 9757, 2, 1690186348, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (508, 6490, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (509, 6534, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (510, 6632, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (511, 6849, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (512, 7348, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (513, 7556, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (514, 7837, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (515, 7874, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (516, 8159, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (517, 8220, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (518, 8344, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (519, 8598, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (520, 8950, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (521, 8968, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (522, 9002, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (523, 9064, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (524, 9078, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (525, 9126, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (526, 9254, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (527, 9419, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (528, 8316, 2, 1690186996, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (529, 6501, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (530, 6589, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (531, 7454, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (532, 7484, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (533, 8159, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (534, 8227, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (535, 8988, 1, 1690275112, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (536, 8077, 1, 1692601170, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (537, 8206, 1, 1692601170, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (538, 8425, 1, 1692601170, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (539, 8928, 1, 1692601170, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (540, 6447, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (541, 6484, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (542, 6696, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (543, 6706, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (544, 6979, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (545, 7417, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (546, 8418, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (547, 9275, 1, 1692601179, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (548, 6654, 1, 1729132749, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (549, 9282, 1, 1729132749, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (550, 7562, 1, 1729136984, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (551, 9202, 1, 1729136984, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (552, 8783, 1, 1729476643, 1);
INSERT INTO `x2_record` (`recordid`, `recordquestionid`, `recorduserid`, `recordtime`, `recordsubjectid`) VALUES (553, 9203, 1, 1729476643, 1);
COMMIT;

-- ----------------------------
-- Table structure for x2_recorddata
-- ----------------------------
DROP TABLE IF EXISTS `x2_recorddata`;
CREATE TABLE `x2_recorddata` (
  `rdid` int NOT NULL AUTO_INCREMENT,
  `rduserid` int DEFAULT NULL,
  `rdsubjectid` int DEFAULT NULL,
  `rddata` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `rdtime` int DEFAULT NULL,
  PRIMARY KEY (`rdid`) USING BTREE,
  KEY `rduserid` (`rduserid`) USING BTREE,
  KEY `rdsubjectid` (`rdsubjectid`) USING BTREE,
  KEY `rdtime` (`rdtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_recorddata
-- ----------------------------
BEGIN;
INSERT INTO `x2_recorddata` (`rdid`, `rduserid`, `rdsubjectid`, `rddata`, `rdtime`) VALUES (1, 1, 1, 'a:2:{i:2;a:2:{i:3;a:1:{s:8:\"question\";a:5:{i:3296;s:4:\"3296\";i:2946;s:4:\"2946\";i:2620;s:4:\"2620\";i:1964;s:4:\"1964\";i:1762;s:4:\"1762\";}}i:1;a:1:{s:8:\"question\";a:4:{i:2740;s:4:\"2740\";i:2091;s:4:\"2091\";i:2011;s:4:\"2011\";i:1737;s:4:\"1737\";}}}i:1;a:2:{i:3;a:1:{s:8:\"question\";a:3:{i:1103;s:4:\"1103\";i:369;s:3:\"369\";i:264;s:3:\"264\";}}i:1;a:1:{s:8:\"question\";a:17:{i:1231;s:4:\"1231\";i:1230;s:4:\"1230\";i:1157;s:4:\"1157\";i:1105;s:4:\"1105\";i:1026;s:4:\"1026\";i:1012;s:4:\"1012\";i:916;s:3:\"916\";i:766;s:3:\"766\";i:715;s:3:\"715\";i:683;s:3:\"683\";i:373;s:3:\"373\";i:163;s:3:\"163\";i:114;s:3:\"114\";i:7;s:1:\"7\";i:1074;s:4:\"1074\";i:1063;s:4:\"1063\";i:1037;s:4:\"1037\";}}}}', 1607853386);
COMMIT;

-- ----------------------------
-- Table structure for x2_reply
-- ----------------------------
DROP TABLE IF EXISTS `x2_reply`;
CREATE TABLE `x2_reply` (
  `replyid` int NOT NULL AUTO_INCREMENT,
  `replyuserid` int NOT NULL DEFAULT '0',
  `replyusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `replycommentid` int NOT NULL DEFAULT '0',
  `replytime` int NOT NULL DEFAULT '0',
  `replycontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`replyid`) USING BTREE,
  KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_reply
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_sections
-- ----------------------------
DROP TABLE IF EXISTS `x2_sections`;
CREATE TABLE `x2_sections` (
  `sectionid` int NOT NULL AUTO_INCREMENT,
  `section` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sectionsubjectid` int NOT NULL DEFAULT '0',
  `sectiondescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sectionsequence` int NOT NULL,
  PRIMARY KEY (`sectionid`) USING BTREE,
  KEY `section` (`section`) USING BTREE,
  KEY `sectionsubjectid` (`sectionsubjectid`) USING BTREE,
  KEY `sectionsequence` (`sectionsequence`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_sections
-- ----------------------------
BEGIN;
INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`, `sectionsequence`) VALUES (1, '数据库', 1, '', 1);
INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`, `sectionsequence`) VALUES (2, '电子技术', 2, '', 0);
INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`, `sectionsequence`) VALUES (3, '通信技术', 2, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_seminar
-- ----------------------------
DROP TABLE IF EXISTS `x2_seminar`;
CREATE TABLE `x2_seminar` (
  `seminarid` int NOT NULL AUTO_INCREMENT,
  `seminartitle` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `seminartags` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminarkeywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminarcatid` int NOT NULL DEFAULT '0',
  `seminarthumb` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `seminarhref` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminargallery` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminargallerylink` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminarcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminarusername` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `seminarmodifier` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminardescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `seminartime` int NOT NULL DEFAULT '0',
  `seminarmodifytime` int NOT NULL,
  `seminarstatus` int NOT NULL DEFAULT '0',
  `seminarorder` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`seminarid`) USING BTREE,
  KEY `seminarcatid` (`seminarcatid`) USING BTREE,
  KEY `seminarstatus` (`seminarstatus`) USING BTREE,
  KEY `seminartime` (`seminartime`) USING BTREE,
  KEY `seminartags` (`seminartags`) USING BTREE,
  KEY `seminarorder` (`seminarorder`) USING BTREE,
  FULLTEXT KEY `seminarkeywords` (`seminarkeywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_seminar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_seminar_content
-- ----------------------------
DROP TABLE IF EXISTS `x2_seminar_content`;
CREATE TABLE `x2_seminar_content` (
  `sctid` int NOT NULL AUTO_INCREMENT,
  `sctelid` int NOT NULL,
  `sctcontentid` int NOT NULL,
  `sctorder` int NOT NULL,
  `sctusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `scttime` int NOT NULL,
  PRIMARY KEY (`sctid`) USING BTREE,
  KEY `sctcontentid` (`sctcontentid`) USING BTREE,
  KEY `sctorder` (`sctorder`) USING BTREE,
  KEY `sctelid` (`sctelid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_seminar_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_seminar_elem
-- ----------------------------
DROP TABLE IF EXISTS `x2_seminar_elem`;
CREATE TABLE `x2_seminar_elem` (
  `selid` int NOT NULL AUTO_INCREMENT,
  `sellayout` int DEFAULT NULL,
  `selseminar` int DEFAULT NULL,
  `seltitle` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `selorder` int DEFAULT NULL,
  `selpos` tinyint DEFAULT NULL,
  `seldescribe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `selcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `seldata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`selid`) USING BTREE,
  KEY `sellayout` (`sellayout`,`selseminar`) USING BTREE,
  KEY `selorder` (`selorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_seminar_elem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for x2_seminar_layout
-- ----------------------------
DROP TABLE IF EXISTS `x2_seminar_layout`;
CREATE TABLE `x2_seminar_layout` (
  `slayoutid` int NOT NULL AUTO_INCREMENT,
  `slayoutseminar` int NOT NULL,
  `slayouttitle` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slayoutgrid` int NOT NULL,
  `slayoutcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slayoutorder` int NOT NULL,
  `slayoutdescribe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`slayoutid`) USING BTREE,
  KEY `slayoutorder` (`slayoutorder`) USING BTREE,
  KEY `slayoutseminar` (`slayoutseminar`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_seminar_layout
-- ----------------------------
BEGIN;
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (1, 2, '单通栏', 1, '&lt;div class=&quot;container-fluid navbar&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;background-color:#337AB7;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n			&lt;!--{{childrentpls}--&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 1, '单通栏');
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (2, 2, '列表', 1, '&lt;div class=&quot;container-fluid navbar&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;background-color:#337AB7;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n			&lt;!--{{childrentpls}--&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 2, '列表');
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (3, 2, '两栏', 1, '&lt;div class=&quot;container-fluid&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n      &lt;div class=&quot;main&quot;&gt;\r\n        &lt;!--{{childrentpls}--&gt;\r\n      &lt;/div&gt;		\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 3, '');
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (5, 2, '标题', 1, '&lt;div class=&quot;container-fluid box&quot; style=&quot;background-image: url(http://phpems.net/app/core/styles/img/bg.jpg);height:150px;margin-bottom:0px;margin-top:0px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n			&lt;div class=&quot;col-xs-12&quot;&gt;\r\n				&lt;h1 style=&quot;color:#FFFFFF;margin-top:60px;text-align:center;&quot;&gt;&lt;img src=&quot;app/core/styles/img/logo2.png&quot; style=&quot;height:60px;margin-top:-10px;&quot;/&gt; PHPEMS - 开源免费的PHP无纸化模拟考试系统&lt;/h1&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 5, '');
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (4, 2, '三栏1', 3, '&lt;div class=&quot;container-fluid&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n          &lt;div class=&quot;col-xs-3&quot; style=&quot;padding-left:0px;&quot;&gt;\r\n				&lt;!--{{leftchildrentpls}--&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-xs-6&quot;&gt;\r\n				&lt;!--{{middlechildrentpls}--&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-xs-3&quot; style=&quot;padding-right:0px;&quot;&gt;\r\n				&lt;!--{{rightchildrentpls}--&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 4, '');
INSERT INTO `x2_seminar_layout` (`slayoutid`, `slayoutseminar`, `slayouttitle`, `slayoutgrid`, `slayoutcode`, `slayoutorder`, `slayoutdescribe`) VALUES (6, 1, '通栏测试', 1, '&lt;div class=&quot;container-fluid&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n			&lt;!--{{childrentpls}--&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_seminar_tpls
-- ----------------------------
DROP TABLE IF EXISTS `x2_seminar_tpls`;
CREATE TABLE `x2_seminar_tpls` (
  `stplid` int NOT NULL AUTO_INCREMENT,
  `stplname` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stpltype` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stplgrid` int DEFAULT NULL,
  `stpldescribe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `stplcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`stplid`) USING BTREE,
  KEY `stpltype` (`stpltype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_seminar_tpls
-- ----------------------------
BEGIN;
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (1, '通用专题模板', 'style', 0, '', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;meta charset=&quot;UTF-8&quot;&gt;\r\n&lt;title&gt;PHPEMS模拟考试专题系统&lt;/title&gt;\r\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot;&gt;\r\n&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot;&gt;\r\n&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;app/core/styles/css/bootstrap.css&quot; /&gt;\r\n&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;app/core/styles/css/datetimepicker.css&quot; /&gt;\r\n&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;app/core/styles/css/jquery-ui.min.css&quot; /&gt;\r\n&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;app/core/styles/css/peskin.css&quot; /&gt;\r\n&lt;script src=&quot;app/core/styles/js/jquery.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/jquery-ui.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/bootstrap.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/bootstrap-datetimepicker.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/all.fine-uploader.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/ckeditor/js/MathJax.js?config=TeX-AMS_HTML&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/ckeditor/ckeditor.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/plugin.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;app/core/styles/js/plugin.js&quot;&gt;&lt;/script&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n  	&lt;!--{{childrentpls}--&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (2, '单通栏', 'layout', 1, '', '&lt;div class=&quot;container-fluid navbar&quot; style=&quot;margin-top:0px;margin-bottom:0px;padding-top:10px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;main&quot;&gt;\r\n			&lt;!--{{childrentpls}--&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (3, '默认bootstrap轮播', 'slider', 0, '', '&lt;div class=&quot;carousel slide&quot; data-ride=&quot;carousel&quot;&gt;\r\n	&lt;div class=&quot;carousel-inner&quot; role=&quot;listbox&quot;&gt;\r\n      &lt;!--{{datasource}}--&gt;	\r\n      {x2;tree:v:data,item,iid}\r\n		&lt;div class=&quot;item{x2;if:v:iid == 1} active{x2;endif}&quot;&gt;\r\n			&lt;a href=&quot;index.php?content-app-content&amp;contentid={x2;v:item[\\\'contentid\\\']}&quot;&gt;\r\n				&lt;img src=&quot;{x2;v:item[\\\'contentthumb\\\']}&quot; alt=&quot;&quot; style=&quot;width:100%;&quot;&gt;\r\n			&lt;/a&gt;\r\n			&lt;div class=&quot;carousel-caption&quot;&gt;\r\n				{x2;v:item[\\\'contenttitle\\\']}\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		{x2;endif}\r\n	&lt;/div&gt;\r\n&lt;/div&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (4, '图文列表', 'lists', 0, '', '&lt;!--{{datasource}}--&gt;\r\n&lt;div class=&quot;container-fluid&quot; style=&quot;padding:0px;&quot;&gt;\r\n	&lt;div class=&quot;row-fluid&quot;&gt;\r\n		&lt;div class=&quot;box itembox&quot;&gt;\r\n          &lt;h4 class=&quot;title&quot;&gt;{x2;v:data[\\\'title\\\']}&lt;/h4&gt;\r\n			&lt;div class=&quot;col-xs-3&quot; style=&quot;padding:0px;&quot;&gt;\r\n				&lt;a href=&quot;index.php?course-app&quot; class=&quot;&quot;&gt;\r\n					&lt;img src=&quot;app/core/styles/img/item2.jpg&quot; alt=&quot;&quot; width=&quot;287&quot;&gt;\r\n				&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-xs-9&quot; style=&quot;padding-left:0px;&quot;&gt;\r\n				\r\n				{x2;tree:v:data[\\\'list\\\'],item,iid}\r\n				&lt;div class=&quot;col-xs-3&quot;&gt;\r\n					&lt;a href=&quot;index.php?course-app-course&amp;csid=9&quot; class=&quot;thumbnail&quot;&gt;\r\n						&lt;img src=&quot;{x2;v:item[\\\'contentthumb\\\']}&quot; alt=&quot;&quot; width=&quot;180&quot;&gt;\r\n					&lt;/a&gt;\r\n					&lt;h5 class=&quot;text-center&quot;&gt;{x2;v:item[\\\'contenttitle\\\']}&lt;/h5&gt;\r\n				&lt;/div&gt;\r\n				{x2;endtree}\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (5, '文字列表', 'lists', 0, '文字列表', '&lt;div class=&quot;box itembox&quot; style=&quot;min-height:320px;&quot;&gt;\r\n  &lt;h4 class=&quot;title&quot;&gt;&lt;a href=&quot;index.php?content-app-category&amp;catid=1&quot;&gt;{x2;v:data[\\\'title\\\']}&lt;/a&gt;&lt;/h4&gt;\r\n  &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n    &lt;!--{{datasource}}--&gt;\r\n    {x2;tree:v:data[\\\'list\\\'],content,cid}\r\n    &lt;li&gt;&lt;a href=&quot;index.php?content-app-content&amp;contentid={x2;v:content[\\\'contentid\\\']}&quot; title=&quot;{x2;v:content[\\\'contenttitle\\\']}&quot;&gt;{x2;v:content[\\\'contenttitle\\\']}&lt;/a&gt;&lt;/li&gt;\r\n    {x2;endtree}\r\n  &lt;/ul&gt;\r\n&lt;/div&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (6, '文字列表', '', 0, '文字列表', '&lt;div class=&quot;box itembox&quot; style=&quot;min-height:320px;&quot;&gt;\r\n  &lt;h4 class=&quot;title&quot;&gt;&lt;a href=&quot;index.php?content-app-category&amp;catid=1&quot;&gt;{x2;v:data[\\\'title\\\']}&lt;/a&gt;&lt;/h4&gt;\r\n  &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n    {x2;tree:v:data[\\\'list\\\'],content,cid}\r\n    &lt;li&gt;&lt;a href=&quot;index.php?content-app-content&amp;contentid={x2;v:content[\\\'contentid\\\']}&quot; title=&quot;{x2;v:content[\\\'contenttitle\\\']}&quot;&gt;{x2;v:content[\\\'contenttitle\\\']}&lt;/a&gt;&lt;/li&gt;\r\n    {x2;endtree}\r\n  &lt;/ul&gt;\r\n&lt;/div&gt;');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (7, '左右结构', 'layout', 2, '', '');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (8, '左右中结构', 'layout', 3, '', '');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (9, '题目加图文', 'block', 0, '', '');
INSERT INTO `x2_seminar_tpls` (`stplid`, `stplname`, `stpltype`, `stplgrid`, `stpldescribe`, `stplcode`) VALUES (10, '头部单标题', 'block', 0, '', '');
COMMIT;

-- ----------------------------
-- Table structure for x2_session
-- ----------------------------
DROP TABLE IF EXISTS `x2_session`;
CREATE TABLE `x2_session` (
  `sessionid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sessionuserid` int NOT NULL DEFAULT '0',
  `sessionusername` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionpassword` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionip` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionmanage` tinyint(1) DEFAULT '0',
  `sessiongroupid` int NOT NULL DEFAULT '0',
  `sessioncurrent` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionrandcode` char(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionlogintime` int NOT NULL DEFAULT '0',
  `sessiontimelimit` int NOT NULL DEFAULT '0',
  `sessionlasttime` int NOT NULL DEFAULT '0',
  `sessionmaster` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`) USING BTREE,
  KEY `sessionlasttime` (`sessionlasttime`) USING BTREE,
  KEY `sessioncurrent` (`sessioncurrent`) USING BTREE,
  KEY `sessionmaster` (`sessionmaster`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_session
-- ----------------------------
BEGIN;
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('a0b4abfa4643e3ff9c432e9db7e27ffc', 0, '', '', '::1', 0, 0, '', '', 0, 1746441268, 1746441268, 0);
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('869d1f14628a23dd64d6e87b8a5a8182', 0, '', '', '::1', 0, 0, '', '', 0, 1746284378, 1746284378, 0);
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('e6a1ca63dd16582048ca9f205448407f', 0, '', '', '::1', 0, 0, '', '', 0, 1746284460, 1746284460, 0);
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('b06331ae8d93f8669a571f7bfdfcd2f9', 0, '', '', '::1', 0, 0, '', '', 0, 1746285085, 1746285085, 0);
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('9d4deed655e863b13584e2ac87fec216', 0, '', '', '::1', 0, 0, '', '', 0, 1746285099, 1746285099, 0);
INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES ('5f74cced09571b4ceebef4ff416514d4', 56, '00009371', '126525e7bd796cb7b25ea9c6a55c973b', '::1', 0, 1, '', '', 1746285215, 1746285215, 1746285215, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_subject
-- ----------------------------
DROP TABLE IF EXISTS `x2_subject`;
CREATE TABLE `x2_subject` (
  `subjectid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subjectsetting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`subjectid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_subject
-- ----------------------------
BEGIN;
INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES (1, '计算机科学技术', 'a:1:{s:9:\"questypes\";a:5:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}}');
INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES (2, '电子信息-通信', 'a:1:{s:9:\"questypes\";a:7:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";}}');
COMMIT;

-- ----------------------------
-- Table structure for x2_survey
-- ----------------------------
DROP TABLE IF EXISTS `x2_survey`;
CREATE TABLE `x2_survey` (
  `svyid` int NOT NULL AUTO_INCREMENT,
  `svytitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `svythumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `svytime` int DEFAULT NULL,
  `svytype` int DEFAULT NULL,
  `svydescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `svystime` int DEFAULT NULL,
  `svyendtime` int DEFAULT NULL,
  `svyuserid` int DEFAULT NULL,
  PRIMARY KEY (`svyid`) USING BTREE,
  KEY `svyuserid` (`svyuserid`) USING BTREE,
  KEY `svystime` (`svystime`) USING BTREE,
  KEY `svyendtime` (`svyendtime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_survey
-- ----------------------------
BEGIN;
INSERT INTO `x2_survey` (`svyid`, `svytitle`, `svythumb`, `svytime`, `svytype`, `svydescribe`, `svystime`, `svyendtime`, `svyuserid`) VALUES (1, '编程语言使用调查', 'files/attach/images/content/20231007/16966638538217.png', 1728962249, 0, '&lt;p&gt;编程语言使用调查&lt;/p&gt;', 1696608024, 1733500824, 1);
COMMIT;

-- ----------------------------
-- Table structure for x2_survey_history
-- ----------------------------
DROP TABLE IF EXISTS `x2_survey_history`;
CREATE TABLE `x2_survey_history` (
  `syhyid` int NOT NULL AUTO_INCREMENT,
  `syhyuserid` int DEFAULT NULL,
  `syhysvyid` int DEFAULT NULL,
  `syhyanswers` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `syhycode` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `syhytime` int DEFAULT NULL,
  PRIMARY KEY (`syhyid`) USING BTREE,
  KEY `syhysvyid` (`syhysvyid`) USING BTREE,
  KEY `syhyuserid` (`syhyuserid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_survey_history
-- ----------------------------
BEGIN;
INSERT INTO `x2_survey_history` (`syhyid`, `syhyuserid`, `syhysvyid`, `syhyanswers`, `syhycode`, `syhytime`) VALUES (1, 0, 1, 'a:2:{i:1;a:2:{i:0;s:1:\"A\";i:1;s:1:\"B\";}i:2;a:2:{i:1;s:1:\"B\";i:2;s:1:\"C\";}}', '', 1729225305);
COMMIT;

-- ----------------------------
-- Table structure for x2_survey_node
-- ----------------------------
DROP TABLE IF EXISTS `x2_survey_node`;
CREATE TABLE `x2_survey_node` (
  `syneid` int NOT NULL AUTO_INCREMENT,
  `synesvyid` int DEFAULT NULL,
  `synetitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `synedescribe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`syneid`) USING BTREE,
  KEY `synesvyid` (`synesvyid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_survey_node
-- ----------------------------
BEGIN;
INSERT INTO `x2_survey_node` (`syneid`, `synesvyid`, `synetitle`, `synedescribe`) VALUES (1, 1, '前端语言', '');
INSERT INTO `x2_survey_node` (`syneid`, `synesvyid`, `synetitle`, `synedescribe`) VALUES (2, 1, '后端语言', '');
COMMIT;

-- ----------------------------
-- Table structure for x2_survey_questions
-- ----------------------------
DROP TABLE IF EXISTS `x2_survey_questions`;
CREATE TABLE `x2_survey_questions` (
  `syqnid` int NOT NULL AUTO_INCREMENT,
  `syqnsvyid` int DEFAULT NULL,
  `syqnsyneid` int DEFAULT NULL,
  `syqnquestion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `syqnquestiontype` int DEFAULT NULL,
  `syqnquestionselect` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `syqnquestionselectnumber` int DEFAULT NULL,
  PRIMARY KEY (`syqnid`) USING BTREE,
  KEY `syqnsvyid` (`syqnsvyid`) USING BTREE,
  KEY `syqnsyneid` (`syqnsyneid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_survey_questions
-- ----------------------------
BEGIN;
INSERT INTO `x2_survey_questions` (`syqnid`, `syqnsvyid`, `syqnsyneid`, `syqnquestion`, `syqnquestiontype`, `syqnquestionselect`, `syqnquestionselectnumber`) VALUES (1, 1, 1, '&lt;p&gt;常用的前端语言&lt;/p&gt;', 2, '&lt;p&gt;A&lt;/p&gt;\r\n\r\n&lt;p&gt;B&lt;/p&gt;\r\n\r\n&lt;p&gt;C&lt;/p&gt;\r\n\r\n&lt;p&gt;D&lt;/p&gt;', 4);
INSERT INTO `x2_survey_questions` (`syqnid`, `syqnsvyid`, `syqnsyneid`, `syqnquestion`, `syqnquestiontype`, `syqnquestionselect`, `syqnquestionselectnumber`) VALUES (2, 1, 2, '&lt;p&gt;常用的后端语言&lt;/p&gt;', 2, '&lt;p&gt;A&lt;/p&gt;\r\n\r\n&lt;p&gt;B&lt;/p&gt;\r\n\r\n&lt;p&gt;C&lt;/p&gt;\r\n\r\n&lt;p&gt;D&lt;/p&gt;', 4);
COMMIT;

-- ----------------------------
-- Table structure for x2_user
-- ----------------------------
DROP TABLE IF EXISTS `x2_user`;
CREATE TABLE `x2_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `useropenid` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userunionid` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `useremail` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `userpassword` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `usercoin` int NOT NULL DEFAULT '0',
  `userregip` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `userregtime` int NOT NULL DEFAULT '0',
  `userlogtime` int NOT NULL DEFAULT '0',
  `userverifytime` int DEFAULT NULL,
  `usergroupid` int NOT NULL DEFAULT '0',
  `usermoduleid` int NOT NULL DEFAULT '0',
  `useranswer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `manager_apps` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `usertruename` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `unit_id` varchar(50) DEFAULT NULL COMMENT '单位ID (来自CAS)',
  `unit_name` varchar(255) DEFAULT NULL COMMENT '单位名称 (来自CAS)',
  `normal_favor` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `teacher_subjects` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userprofile` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `usergender` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userphone` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `useraddress` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userphoto` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userstatus` int DEFAULT NULL,
  `normal_sfz` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `useremail` (`useremail`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `module` (`usercoin`) USING BTREE,
  KEY `userregtime` (`userregtime`) USING BTREE,
  KEY `usermoduleid` (`usermoduleid`) USING BTREE,
  KEY `userlogtime` (`userlogtime`) USING BTREE,
  KEY `useropenid` (`useropenid`) USING BTREE,
  KEY `userphone` (`userphone`) USING BTREE,
  KEY `userunionid` (`userunionid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_user
-- ----------------------------
BEGIN;
INSERT INTO `x2_user` (`userid`, `useropenid`, `userunionid`, `username`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `userverifytime`, `usergroupid`, `usermoduleid`, `useranswer`, `manager_apps`, `usertruename`, `unit_id`, `unit_name`, `normal_favor`, `teacher_subjects`, `userprofile`, `usergender`, `userphone`, `useraddress`, `userphoto`, `userstatus`, `normal_sfz`) VALUES (1, '', NULL, 'peadmin', '958074@163.com', '044f02b1454b1e69bc89b37d9537417c', 269, '127.0.0.1', 1471795200, 0, NULL, 1, 0, NULL, 'a:7:{i:0;s:4:\"user\";i:1;s:7:\"content\";i:2;s:4:\"exam\";i:3;s:8:\"document\";i:4;s:6:\"course\";i:5;s:4:\"bank\";i:6;s:8:\"autoform\";}', '刘小锋', NULL, NULL, '', '', '', '男', '', '信息部', 'files/attach/images/content/20250317/17421823416572.jpg', 3, '');
INSERT INTO `x2_user` (`userid`, `useropenid`, `userunionid`, `username`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `userverifytime`, `usergroupid`, `usermoduleid`, `useranswer`, `manager_apps`, `usertruename`, `unit_id`, `unit_name`, `normal_favor`, `teacher_subjects`, `userprofile`, `usergender`, `userphone`, `useraddress`, `userphoto`, `userstatus`, `normal_sfz`) VALUES (2, '', NULL, '教师管理员', '958074@126.com', '044f02b1454b1e69bc89b37d9537417c', 98, '127.0.0.1', 1471795200, 0, NULL, 9, 0, NULL, '', '213123', NULL, NULL, '', 'a:14:{i:0;s:2:\"13\";i:1;s:2:\"12\";i:2;s:1:\"5\";i:3;s:1:\"4\";i:4;s:1:\"3\";i:5;s:1:\"1\";i:6;s:1:\"2\";i:7;s:2:\"17\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"18\";i:11;s:2:\"19\";i:12;s:2:\"20\";i:13;s:2:\"21\";}', '77777', '', '', '', '', 3, '');
INSERT INTO `x2_user` (`userid`, `useropenid`, `userunionid`, `username`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `userverifytime`, `usergroupid`, `usermoduleid`, `useranswer`, `manager_apps`, `usertruename`, `unit_id`, `unit_name`, `normal_favor`, `teacher_subjects`, `userprofile`, `usergender`, `userphone`, `useraddress`, `userphoto`, `userstatus`, `normal_sfz`) VALUES (58, '', '', '00009371', 'liuxf@mail.neu.edu.cn', '044f02b1454b1e69bc89b37d9537417c', 0, '::1', 1746441119, 0, 0, 14, 0, '', '', '刘小锋', '021900', '计算机科学与工程学院', '', '', '', '', '', '', '', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for x2_user_group
-- ----------------------------
DROP TABLE IF EXISTS `x2_user_group`;
CREATE TABLE `x2_user_group` (
  `groupid` int NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `groupmoduleid` tinyint NOT NULL DEFAULT '0',
  `groupdescribe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `groupright` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `groupmoduledefault` int NOT NULL DEFAULT '0',
  `groupdefault` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`) USING BTREE,
  KEY `groupname` (`groupname`,`groupmoduleid`) USING BTREE,
  KEY `groupmoduledefault` (`groupmoduledefault`) USING BTREE,
  KEY `groupdefault` (`groupdefault`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_user_group
-- ----------------------------
BEGIN;
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (1, '管理员', 1, '管理员', '', 1, 0);
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (8, '普通用户', 9, '普通用户', '', 0, 1);
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (9, '教师', 12, '教师', '', 0, 0);
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (13, '研究生组', 9, '研究生组', '', 0, 0);
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (12, '本科生组', 9, '本科学生组', '', 0, 0);
INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES (14, '教师组', 9, '教师组', '', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for x2_wxlogin
-- ----------------------------
DROP TABLE IF EXISTS `x2_wxlogin`;
CREATE TABLE `x2_wxlogin` (
  `wxsid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wxinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wxtime` int NOT NULL,
  `wxtoken` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`wxsid`) USING BTREE,
  KEY `wxtime` (`wxtime`) USING BTREE,
  KEY `wxtoken` (`wxtoken`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x2_wxlogin
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
