/*
Navicat MySQL Data Transfer

Source Server         : test(10.204.119.105)
Source Server Version : 50173
Source Host           : 10.204.119.105:3306
Source Database       : ylink_produce

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-08-15 14:45:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `node_property`
-- ----------------------------
DROP TABLE IF EXISTS `node_property`;
CREATE TABLE `node_property` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) DEFAULT NULL COMMENT '数据版本',
  `NODE_TYPE_ID` bigint(20) DEFAULT NULL,
  `NAME` varchar(250) DEFAULT NULL,
  `LABEL` varchar(250) DEFAULT NULL,
  `STYLE` varchar(250) DEFAULT NULL,
  `DATA_MODEL` varchar(1000) DEFAULT NULL,
  `DEFAULT` varchar(250) DEFAULT NULL,
  `IS_NULL` char(1) DEFAULT NULL,
  `IS_EDITABLE` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATION_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '最后更新人',
  `LAST_UPDATED_DATE` datetime DEFAULT NULL COMMENT '最后更新时间',
  `ENABLED_FLAG` char(1) DEFAULT NULL COMMENT '有效性',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node_property
-- ----------------------------
INSERT INTO `node_property` VALUES ('1', null, '1', 'operatingSystem', '模板', 'select', '4ccefd67-c96e-492e-982e-d331856b33b8:Windows应用模板(2008 R2 64位),6e3779f8-cc42-49b9-bff7-270bfde82cd3:Linux应用模板(RHEL6.5 64位)', '6e3779f8-cc42-49b9-bff7-270bfde82cd3', 'N', 'N', null, '2016-03-04 02:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('2', null, '1', 'cpu', 'CPU核数', 'select', '1,2,4,6,10', '2', 'N', 'Y', null, '2016-03-04 04:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('3', null, '1', 'memory', '内存(GB)  ', 'select', '1,2,4,8,16,20,24', '12', 'N', 'Y', null, '2016-03-04 05:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('4', null, '1', 'disk', '磁盘(GB)', 'text', '', '', 'Y', 'Y', null, '2016-03-04 06:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('5', null, '1', 'ip', 'IP', 'text', '', '', 'Y', 'N', null, '2016-03-04 07:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('6', null, '1', 'port', '端口', 'text', null, '', 'Y', 'Y', null, '2016-03-04 08:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('7', null, '1', 'applicationUser', '应用用户', 'text', '', 'appuser', 'Y', 'Y', null, '2016-03-04 09:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('8', null, '2', 'operatingSystem', '模板', 'select', '4ccefd67-c96e-492e-982e-d331856b33b8:Windows应用模板(2008 R2 64位),6f38a32e-6088-4bf9-9088-422e367f58a9:Linux应用模板(RHEL6.5 64位)', '6f38a32e-6088-4bf9-9088-422e367f58a9', 'N', 'N', null, '2016-03-04 02:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('9', null, '2', 'cpu', 'CPU核数', 'select', '1,2,4,6,10', '2', 'N', 'Y', null, '2016-03-04 04:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('10', null, '2', 'memory', '内存(GB)  ', 'select', '1,2,4,8,16,20,24', '12', 'N', 'Y', null, '2016-03-04 05:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('11', null, '2', 'disk', '磁盘(GB)', 'text', '', '', 'Y', 'Y', null, '2016-03-04 06:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('12', null, '2', 'ip', 'IP', 'text', '', '', 'Y', 'N', null, '2016-03-04 07:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('13', null, '2', 'port', '端口', 'text', null, '', 'Y', 'Y', null, '2016-03-04 08:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('14', null, '2', 'applicationUser', '应用用户', 'text', '', 'appuser', 'Y', 'Y', null, '2016-03-04 09:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('15', null, '1', 'networkId', '网络ID', 'select', '56e07b6e-7801-4776-9c3a-cdb54f483057:前置机网络(301),77e558cf-6ec4-4f17-bf6b-09c3b297b7e2:用户网络(101)', '前置机网络(301)', 'N', 'N', null, '2016-03-04 10:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('16', null, '1', 'serviceOfferingId', '计算方案', 'select', '2811e05c-9854-4171-9aa8-fb35265e0446:用户虚机方案,1cf9ef59-9621-4694-b3cd-36b52ec960ed:前置机虚机方案(fp01),5c91f8fa-77cc-4969-96b5-53bfe5fd2239:前置机虚机方案(fp02)', '用户虚机方案', 'N', 'N', null, '2016-03-04 11:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('17', null, '2', 'networkId', '网络ID', 'select', '56e07b6e-7801-4776-9c3a-cdb54f483057:前置机网络(301),77e558cf-6ec4-4f17-bf6b-09c3b297b7e2:用户网络(101)', '前置机网络(301)', 'N', 'N', null, '2016-03-04 10:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('18', null, '2', 'serviceOfferingId', '计算方案', 'select', '2811e05c-9854-4171-9aa8-fb35265e0446:用户虚机方案,1cf9ef59-9621-4694-b3cd-36b52ec960ed:前置机虚机方案(fp01),5c91f8fa-77cc-4969-96b5-53bfe5fd2239:前置机虚机方案(fp02)', '用户虚机方案', 'N', 'N', null, '2016-03-04 11:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('19', null, '1', 'password', '密码', 'text', '', '', 'Y', 'N', null, '2016-03-04 12:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('20', null, '2', 'password', '密码', 'text', '', '', 'Y', 'N', null, '2016-03-04 12:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('21', null, '1', 'vmName', '实例名称', 'text', '', '', 'Y', 'N', null, '2016-03-04 01:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('22', null, '2', 'vmName', '实例名称', 'text', '', '', 'Y', 'N', null, '2016-03-04 01:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('23', null, '1', 'osType', '操作系统类型', 'text', '', '', 'Y', 'N', null, '2016-03-04 03:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('24', null, '2', 'osType', '操作系统类型', 'text', '', '', 'Y', 'N', null, '2016-03-04 03:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('1111', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
