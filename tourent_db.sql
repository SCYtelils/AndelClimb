/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : tourent_db

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-04-13 10:08:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  `p_category` varchar(255) DEFAULT NULL,
  `p_deposit` varchar(255) DEFAULT NULL,
  `p_price` varchar(255) DEFAULT NULL,
  `p_perchasedate` varchar(255) DEFAULT NULL,
  `p_servicelife` varchar(255) DEFAULT NULL,
  `p_total` int(255) DEFAULT NULL,
  `p_free` int(255) DEFAULT NULL,
  `p_useing` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '登山手杖', '户外装备', '100', '15', '2020-04-11 16:28:20', '10', '100', '98', '2');
INSERT INTO `product` VALUES ('3', '安道尔背包', '背包', '200', '50', '2020-04-13', '20', '30', '29', '1');
INSERT INTO `product` VALUES ('4', '野营灯', '露营装备', '150', '30', '2020-04-11', '10', '5', '3', '2');
INSERT INTO `product` VALUES ('5', '军用水壶', '户外装备', '50', '10', '2020-04-17', '20', '100', '100', '0');
INSERT INTO `product` VALUES ('6', '登山护膝', '护具', '50', '5', '2020-04-02', '10', '70', '69', '1');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_username` varchar(255) DEFAULT NULL,
  `r_userid` varchar(255) DEFAULT NULL,
  `r_usersex` varchar(255) DEFAULT NULL,
  `r_userphone` varchar(255) DEFAULT NULL,
  `r_deposit` varchar(255) DEFAULT NULL,
  `r_productname` varchar(255) DEFAULT NULL,
  `r_staff` varchar(255) DEFAULT NULL,
  `r_renttime` datetime DEFAULT NULL,
  `r_returntime` datetime DEFAULT NULL,
  `r_amount` varchar(255) DEFAULT NULL,
  `r_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('12', '安道尔', '370388282785234123', '男', '1980243221', '200', '安道尔背包', '阿夸', '2020-04-13 00:49:19', null, null, '租出');
INSERT INTO `record` VALUES ('13', '安道尔', '370388282785234123', '男', '1980243221', '150', '野营灯', '阿夸', '2020-04-13 01:15:16', null, null, '租出');
INSERT INTO `record` VALUES ('14', '安道尔', '370388282785234123', '男', '1980243221', '150', '野营灯', '糖果', '2020-04-13 02:10:17', null, null, '租出');
INSERT INTO `record` VALUES ('15', '安道尔', '370388282785234123', '男', '1980243221', '100', '登山手杖', '阿夸', '2020-03-13 02:11:52', null, null, '租出');
INSERT INTO `record` VALUES ('16', '安道尔', '370388282785234123', '男', '1980243221', '100', '登山手杖', '糖果', '2020-04-13 02:11:58', null, null, '租出');
INSERT INTO `record` VALUES ('17', '安道尔', '370388282785234123', '男', '1980243221', '50', '登山护膝', '阿夸', '2020-03-13 02:13:35', null, null, '租出');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) DEFAULT NULL,
  `s_sex` varchar(255) DEFAULT NULL,
  `s_position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '糖果', '女', '销售主管');
INSERT INTO `staff` VALUES ('3', '阿夸', '女', '销售员');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_name` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`u_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('andel', '123', 'andel@163.com');
