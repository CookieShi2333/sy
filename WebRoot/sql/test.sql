/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-06-13 19:18:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for password
-- ----------------------------
DROP TABLE IF EXISTS `password`;
CREATE TABLE `password` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`index`),
  UNIQUE KEY `aa` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password
-- ----------------------------
INSERT INTO `password` VALUES ('201802', '201802', '1');
INSERT INTO `password` VALUES ('201001', '201001', '2');

-- ----------------------------
-- Table structure for sel
-- ----------------------------
DROP TABLE IF EXISTS `sel`;
CREATE TABLE `sel` (
  `stuId` varchar(20) DEFAULT NULL,
  `stuCourse` varchar(20) DEFAULT NULL,
  `stuGrade` varchar(20) DEFAULT NULL,
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `stuRank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `aa` (`stuId`,`stuCourse`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sel
-- ----------------------------
INSERT INTO `sel` VALUES ('201821', '大英', '89', '1', null);
INSERT INTO `sel` VALUES ('201811', '高数', '90', '2', null);
INSERT INTO `sel` VALUES ('201802', '高数', '76', '4', null);
INSERT INTO `sel` VALUES ('201801', '高数', '59', '5', null);
INSERT INTO `sel` VALUES ('201812', '高数', '90', '6', null);
INSERT INTO `sel` VALUES ('201812', '数据库', '78', '7', null);
INSERT INTO `sel` VALUES ('201813', '数据库', '100', '15', null);
INSERT INTO `sel` VALUES ('201804', '数据库', '99', '19', null);
INSERT INTO `sel` VALUES ('201803', '数据库', '99', '23', null);
INSERT INTO `sel` VALUES ('201802', '数据库', '88', '24', null);

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `stuClass` varchar(20) DEFAULT NULL,
  `stuId` varchar(20) DEFAULT NULL,
  `stuName` varchar(20) DEFAULT NULL,
  `stuRank` varchar(20) DEFAULT NULL,
  `index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`index`),
  UNIQUE KEY `aa` (`stuId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('信管', '201802', '王品', null, '1');
INSERT INTO `stu` VALUES ('计科', '201812', '李思', null, '2');
INSERT INTO `stu` VALUES ('信管', '201803', '猪猪', null, '3');
INSERT INTO `stu` VALUES ('信管', '201804', '品品', null, '4');
INSERT INTO `stu` VALUES ('计科', '201813', '小丽', null, '5');

-- ----------------------------
-- Table structure for tea
-- ----------------------------
DROP TABLE IF EXISTS `tea`;
CREATE TABLE `tea` (
  `teaId` varchar(20) DEFAULT NULL,
  `teaName` varchar(20) DEFAULT NULL,
  `stuClass` varchar(20) DEFAULT NULL,
  `stuCourse` varchar(20) DEFAULT NULL,
  `index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tea
-- ----------------------------
INSERT INTO `tea` VALUES ('201001', '吴丽', '信管', '数据库', '1');
INSERT INTO `tea` VALUES ('201002', '李思', '计科', '高数', '2');
INSERT INTO `tea` VALUES ('201003', '钱尔', '网络', '大英', '3');
INSERT INTO `tea` VALUES ('201002', '李思', '信管', '高数', '4');
INSERT INTO `tea` VALUES ('201001', '吴丽', '计科', '数据库', '5');
