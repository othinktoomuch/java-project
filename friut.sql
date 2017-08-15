/*
Navicat MySQL Data Transfer

Source Server         : test(10.204.119.105)
Source Server Version : 50173
Source Host           : 10.204.119.105:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-10-28 15:39:34

SELECT * FROM friut t WHERE 1> (SELECT COUNT(*) FROM friut WHERE cid = t.cid AND DATE > t.DATE)
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `friut`
-- ----------------------------
DROP TABLE IF EXISTS `friut`;
CREATE TABLE `friut` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` varchar(10) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `CLASS` varchar(128) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FRIUT` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friut
-- ----------------------------
INSERT INTO `friut` VALUES ('1', '1', '苹果', '水果', '10', '2007-07-03 15:33:12');
INSERT INTO `friut` VALUES ('2', '1', '桔子', '水果', '20', '2011-07-02 15:33:12');
INSERT INTO `friut` VALUES ('3', '1', '香蕉', '水果', '15', '2011-07-03 15:33:12');
INSERT INTO `friut` VALUES ('4', '2', '白菜', '蔬菜', '12', '2011-07-01 15:33:12');
INSERT INTO `friut` VALUES ('5', '2', '青菜', '蔬菜', '19', '2011-07-02 15:33:12');
