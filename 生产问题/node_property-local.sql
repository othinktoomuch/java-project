/*
Navicat MySQL Data Transfer

Source Server         : test(10.204.119.105)
Source Server Version : 50173
Source Host           : 10.204.119.105:3306
Source Database       : ylink_paas

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-08-15 14:44:39
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of node_property
-- ----------------------------
INSERT INTO `node_property` VALUES ('1', null, '1', 'operatingSystem', '模板', 'select', '71f1ad77-7060-45eb-9239-265f99f006d8:centos,92a2b19f-7f78-4767-9fe9-b57b1f320430:windows,afc27696-ccfb-4b7c-b04f-62ab92ee9e52:ubuntu', '1f90d82b-456b-4419-811c-b8a1ec937155', 'N', 'N', null, '2016-03-04 02:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('2', null, '1', 'cpu', 'CPU核数', 'select', '1,2,4,6,10', '2', 'N', 'Y', null, '2016-03-04 04:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('3', null, '1', 'memory', '内存(GB)  ', 'select', '1,2,4,8,16,20,24,32', '12', 'N', 'Y', null, '2016-03-04 05:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('4', null, '1', 'disk', '磁盘(GB)', 'text', '', '', 'Y', 'Y', null, '2016-03-04 06:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('5', null, '1', 'ip', 'IP', 'text', '', '', 'Y', 'N', null, '2016-03-04 07:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('6', null, '1', 'port', '端口', 'text', null, '', 'Y', 'Y', null, '2016-03-04 08:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('7', null, '1', 'applicationUser', '应用用户', 'text', '', 'appuser', 'Y', 'Y', null, '2016-03-04 09:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('8', null, '2', 'operatingSystem', '模板', 'select', '0293b192-ab0e-4933-8ab6-df19aa4da4e2:centos,7608553f-9080-45aa-b854-b2e2219cba27:windows,afc27696-ccfb-4b7c-b04f-62ab92ee9e52:ubuntu', '1f90d82b-456b-4419-811c-b8a1ec937155', 'N', 'N', null, '2016-03-04 02:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('9', null, '2', 'cpu', 'CPU核数', 'select', '1,2,4,6,10', '2', 'N', 'Y', null, '2016-03-04 04:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('10', null, '2', 'memory', '内存(GB)  ', 'select', '1,2,4,8,16,20,24', '12', 'N', 'Y', null, '2016-03-04 05:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('11', null, '2', 'disk', '磁盘(GB)', 'text', '', '', 'Y', 'Y', null, '2016-03-04 06:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('12', null, '2', 'ip', 'IP', 'text', '', '', 'Y', 'N', null, '2016-03-04 07:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('13', null, '2', 'port', '端口', 'text', null, '', 'Y', 'Y', null, '2016-03-04 08:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('14', null, '2', 'applicationUser', '应用用户', 'text', '', 'appuser', 'Y', 'Y', null, '2016-03-04 09:00:00', null, null, 'N');
INSERT INTO `node_property` VALUES ('15', null, '1', 'networkId', '网络ID', 'select', 'c22144cc-3468-4500-8f2f-5a8c9f720f3a:shared-20', 'shared-20', 'N', 'N', null, '2016-03-04 10:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('16', null, '1', 'serviceOfferingId', '计算方案', 'select', '050b8651-4a9a-4fdf-9a3c-75ed2df2f5c9:custom,08be0a1f-0b45-4e75-aef0-64cddad83add:custom2,c7bee999-7ee3-47d2-8a83-79d651612c7d:custom-local', 'custom', 'N', 'N', null, '2016-03-04 11:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('17', null, '2', 'networkId', '网络ID', 'select', '060c18ba-bfaa-4eb9-a9f4-d44f6225d0d3:shared-20,71e4a651-5468-4da2-be5c-0a0ad1eefc66:shared-165', 'shared-20', 'N', 'N', null, '2016-03-04 10:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('18', null, '2', 'serviceOfferingId', '计算方案', 'select', '050b8651-4a9a-4fdf-9a3c-75ed2df2f5c9:custom,08be0a1f-0b45-4e75-aef0-64cddad83add:custom2,c7bee999-7ee3-47d2-8a83-79d651612c7d:custom-local', 'custom', 'N', 'N', null, '2016-03-04 11:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('19', null, '1', 'password', '密码', 'text', '', '', 'Y', 'N', null, '2016-03-04 12:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('20', null, '2', 'password', '密码', 'text', '', '', 'Y', 'N', null, '2016-03-04 12:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('21', null, '1', 'vmName', '实例名称', 'text', '', '', 'Y', 'N', null, '2016-03-04 01:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('22', null, '2', 'vmName', '实例名称', 'text', '', '', 'Y', 'N', null, '2016-03-04 01:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('23', null, '1', 'osType', '操作系统类型', 'text', '', '', 'Y', 'N', null, '2016-03-04 03:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('24', null, '2', 'osType', '操作系统类型', 'text', '', '', 'Y', 'N', null, '2016-03-04 03:00:00', null, null, 'Y');
INSERT INTO `node_property` VALUES ('25', null, '1', 'zabbix_template', '告警模板', 'select', '0:请选择,A-VM-Linux-01:Linux-01,A-VM-Linux-02:Linux-02,A-VM-Win-01:Win-01,A-VM-Win-02:Win-02', '', 'Y', 'N', null, '2016-07-08 14:27:12', null, null, 'Y');
INSERT INTO `node_property` VALUES ('26', null, '2', 'zabbix_template', '告警模板', 'select', 'M-VM-Linux-default:M-VM-Linux-default,M-VM-Win-default:M-VM-Win-default,M-ORA-default:M-ORA-default', '', 'Y', 'N', null, '2016-07-08 14:27:13', null, null, 'Y');
