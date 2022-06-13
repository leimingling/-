/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : 1809cjgl

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-10-09 20:08:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mcy_admin
-- ----------------------------
DROP TABLE IF EXISTS `mcy_admin`;
CREATE TABLE `mcy_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sf` int(11) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tadcdek1pnkoe17mxov8jno5t` (`name`),
  UNIQUE KEY `UK_7nsj3y14afo9ejnvvl4ynggdy` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_admin
-- ----------------------------
INSERT INTO `mcy_admin` VALUES ('1', '陈老师', 'admin', '1', 'admin');

-- ----------------------------
-- Table structure for mcy_class
-- ----------------------------
DROP TABLE IF EXISTS `mcy_class`;
CREATE TABLE `mcy_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8ecpi7lx1176d9qp412fpae1j` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_class
-- ----------------------------
INSERT INTO `mcy_class` VALUES ('1', '软件一班', '晏老师');
INSERT INTO `mcy_class` VALUES ('2', '软件二班', '詹老师');
INSERT INTO `mcy_class` VALUES ('3', '软件三班', '向老师');
INSERT INTO `mcy_class` VALUES ('4', '软件四班', '张老师');

-- ----------------------------
-- Table structure for mcy_course
-- ----------------------------
DROP TABLE IF EXISTS `mcy_course`;
CREATE TABLE `mcy_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m6jlaod7k7ir7r7rvrjuug4ad` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_course
-- ----------------------------
INSERT INTO `mcy_course` VALUES ('1', '20', 'Java');
INSERT INTO `mcy_course` VALUES ('2', '30', 'C');
INSERT INTO `mcy_course` VALUES ('3', '25', 'javaScript');
INSERT INTO `mcy_course` VALUES ('4', '20', 'html');

-- ----------------------------
-- Table structure for mcy_grade
-- ----------------------------
DROP TABLE IF EXISTS `mcy_grade`;
CREATE TABLE `mcy_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKswbqs0i1qw711qjt2ut20n8ok` (`course_id`),
  KEY `FKndyorxlivgejnusk2wxjfjcl8` (`student_id`),
  CONSTRAINT `FKndyorxlivgejnusk2wxjfjcl8` FOREIGN KEY (`student_id`) REFERENCES `mcy_student` (`id`),
  CONSTRAINT `FKswbqs0i1qw711qjt2ut20n8ok` FOREIGN KEY (`course_id`) REFERENCES `mcy_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_grade
-- ----------------------------
INSERT INTO `mcy_grade` VALUES ('1', '87', '1', '1');
INSERT INTO `mcy_grade` VALUES ('2', '99', '1', '2');
INSERT INTO `mcy_grade` VALUES ('3', '78', '1', '3');
INSERT INTO `mcy_grade` VALUES ('4', '78', '2', '4');
INSERT INTO `mcy_grade` VALUES ('5', '98', '2', '5');
INSERT INTO `mcy_grade` VALUES ('6', '79', '2', '6');

-- ----------------------------
-- Table structure for mcy_student
-- ----------------------------
DROP TABLE IF EXISTS `mcy_student`;
CREATE TABLE `mcy_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `sf` int(11) DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `zw` varchar(255) DEFAULT NULL,
  `tbClass_id` int(11) DEFAULT NULL,
  `cj` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_soll79qma1wu2g8jkh810ux80` (`username`),
  KEY `FKqln3ytg9d4ejr59pctw9vab8s` (`tbClass_id`),
  CONSTRAINT `FKqln3ytg9d4ejr59pctw9vab8s` FOREIGN KEY (`tbClass_id`) REFERENCES `mcy_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_student
-- ----------------------------
INSERT INTO `mcy_student` VALUES ('1', '张三', '123456', '男', '0', '001', '班长', '1', null);
INSERT INTO `mcy_student` VALUES ('2', '李四', '1234', '男', '0', '002', '', '1', null);
INSERT INTO `mcy_student` VALUES ('3', '王五', '123456', '男', '0', '003', '', '1', null);
INSERT INTO `mcy_student` VALUES ('4', '刘备', '123456', '男', '0', '004', '班长', '2', null);
INSERT INTO `mcy_student` VALUES ('5', '诸葛亮', '123456', '男', '0', '005', '', '2', null);
INSERT INTO `mcy_student` VALUES ('6', '黄月英', '123456', '女', '0', '006', '123', '2', null);

-- ----------------------------
-- Table structure for mcy_teacher
-- ----------------------------
DROP TABLE IF EXISTS `mcy_teacher`;
CREATE TABLE `mcy_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sf` int(11) DEFAULT '2',
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rb5in9k9d6qk4h2qubursksdr` (`name`),
  UNIQUE KEY `UK_pjflyn89coak90p778gjowekb` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcy_teacher
-- ----------------------------
INSERT INTO `mcy_teacher` VALUES ('1', '李老师', '123456', '2', 'admin');
