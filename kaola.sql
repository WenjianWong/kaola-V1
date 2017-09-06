/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : kaola

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 06/09/2017 20:54:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for productlist
-- ----------------------------
DROP TABLE IF EXISTS `productlist`;
CREATE TABLE `productlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `nowPrice` decimal(10, 0) DEFAULT NULL COMMENT '现卖价格',
  `oldPrice` decimal(10, 0) DEFAULT NULL COMMENT '旧价格',
  `productImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片路径',
  `areaOfsource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品来源地区',
  `commet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评论数',
  `distribution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '销售渠道',
  `addTime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加日期',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品描述',
  `zoomImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '放大镜大图',
  `middleImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '中图',
  `smallImg1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小图1',
  `smallImg2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小图2',
  `smallImg3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小图3',
  `smallImg4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小图4',
  `smallImg5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小图5',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `countryPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '来源地区国旗图片',
  `detailImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详情页大图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 231 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productlist
-- ----------------------------
INSERT INTO `productlist` VALUES (1, 'JBL   C100SI 立体声入耳式耳机  手机通话版', 88, 233, '..\\img\\goodslist\\001.jpg', '美国', '2627', '网易考拉自营', '2017-09-06 19:09:15', '不仅是时尚的外观，还有精巧的形状和尺寸设计，舒适的人体工学设计，更有环绕音效听歌超享受！原音重现就选它！', '..\\img\\details\\id1\\p1g.jpg', '..\\img\\details\\id1\\p1.jpg', '..\\img\\details\\id1\\p1s.jpg', '..\\img\\details\\id1\\p2s.jpg', '..\\img\\details\\id1\\p3s.jpg', '..\\img\\details\\id1\\p4s.jpg', '..\\img\\details\\id1\\p5s.jpg', 'JBL', '..\\img\\details\\id1\\USA.png', '..\\img\\details\\id1\\info.jpg');
INSERT INTO `productlist` VALUES (2, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\002.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (3, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\003.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (4, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\004.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (5, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\005.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (6, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\006.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (7, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\007.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (8, 'JBL E25BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\008.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (9, 'Sony 索尼 MDR-XB50BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\009.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (10, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\010.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (11, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G2CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\011.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (12, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF2CH/A）', 1200, 1422, '..\\img\\goodslist\\012.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (13, 'Beats Powerbeats3 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\013.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (14, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\014.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (15, 'Logitech 罗技 K480 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\015.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (16, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\016.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (17, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\017.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (18, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW2CH/A) 金色', 3555, 4998, '..\\img\\goodslist\\018.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (19, 'JBL Clip2 音乐盒2 蓝牙便携音箱 防水设计 高保真无噪声通话', 112, 566, '..\\img\\goodslist\\019.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (20, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo2代', 155, 285, '..\\img\\goodslist\\020.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (21, 'JBL C100SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\021.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (22, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\022.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (23, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\023.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (24, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\024.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (25, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\025.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (26, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\026.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (27, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\027.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (28, 'JBL E25BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\028.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (29, 'Sony 索尼 MDR-XB50BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\029.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (30, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\030.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (31, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G2CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\031.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (32, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF2CH/A）', 1200, 1422, '..\\img\\goodslist\\032.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (33, 'Beats Powerbeats3 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\033.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (34, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\034.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (35, 'Logitech 罗技 K480 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\035.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (36, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\036.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (37, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\037.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (38, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW2CH/A) 金色', 3555, 4998, '..\\img\\goodslist\\038.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (39, 'JBL Clip2 音乐盒2 蓝牙便携音箱 防水设计 高保真无噪声通话', 112, 566, '..\\img\\goodslist\\039.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (40, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo2代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (41, 'JBL C100SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (42, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (43, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (44, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (45, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (46, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (47, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\047.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (48, 'JBL E25BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\048.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (49, 'Sony 索尼 MDR-XB50BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\049.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (50, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\050.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (51, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G2CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\051.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (52, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF2CH/A）', 1200, 1422, '..\\img\\goodslist\\052.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (53, 'Beats Powerbeats3 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\053.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (54, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\054.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (55, 'Logitech 罗技 K480 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\055.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (56, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\056.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (57, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\057.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (58, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\058.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (59, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\059.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (60, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\060.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (61, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo2代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (62, 'JBL C100SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (63, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (64, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (65, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (66, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (67, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (68, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\047.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (69, 'JBL C100SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\001.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (70, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\002.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (71, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\003.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (72, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\004.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (73, 'sony 索尼 MDR-XB50BS 重低音无线蓝牙防水运动耳机', 268, 336, '..\\img\\goodslist\\058.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (74, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\059.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (75, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\060.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (76, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo2代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (77, 'JBL C100SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (78, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (79, 'JVC 杰伟世 HA-FR202 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (80, 'Beats Solo3 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (81, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (82, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (83, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\001.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (84, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\002.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (85, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\003.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (86, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\004.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (87, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\005.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (88, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\006.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (89, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\007.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (90, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\008.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (91, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\009.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (92, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\010.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (93, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\011.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (94, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 1200, 1422, '..\\img\\goodslist\\012.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (95, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\013.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (96, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\014.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (97, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\015.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (98, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\016.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (99, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\017.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (100, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW3CH/A) 金色', 3555, 4998, '..\\img\\goodslist\\018.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (101, 'JBL Clip2 音乐盒3 蓝牙便携音箱 防水设计 高保真无噪声通话', 112, 566, '..\\img\\goodslist\\019.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (102, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 155, 285, '..\\img\\goodslist\\020.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (103, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\021.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (104, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\022.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (105, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\023.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (106, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\024.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (107, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\025.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (108, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\026.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (109, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\027.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (110, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\028.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (111, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\029.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (112, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\030.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (113, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\031.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (114, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 1200, 1422, '..\\img\\goodslist\\032.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (115, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\033.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (116, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\034.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (117, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\035.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (118, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\036.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (119, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\037.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (120, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW3CH/A) 金色', 3555, 4998, '..\\img\\goodslist\\038.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (121, 'JBL Clip2 音乐盒3 蓝牙便携音箱 防水设计 高保真无噪声通话', 112, 566, '..\\img\\goodslist\\039.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (122, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (123, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (124, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (125, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (126, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (127, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (128, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (129, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\047.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (130, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 678, 1099, '..\\img\\goodslist\\048.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (131, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 399, 448, '..\\img\\goodslist\\049.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (132, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 585, 762, '..\\img\\goodslist\\050.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (133, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 2597, 3399, '..\\img\\goodslist\\051.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (134, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 1200, 1422, '..\\img\\goodslist\\052.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (135, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 232, 566, '..\\img\\goodslist\\053.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (136, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 999, 1299, '..\\img\\goodslist\\054.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (137, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 388, 499, '..\\img\\goodslist\\055.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (138, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 355, 355, '..\\img\\goodslist\\056.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (139, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 100, 199, '..\\img\\goodslist\\057.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (140, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\058.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (141, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\059.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (142, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\060.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (143, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (144, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (145, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (146, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (147, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (148, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (149, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (150, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\047.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (151, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\001.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (152, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\002.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (153, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\003.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (154, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\004.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (155, 'sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 268, 336, '..\\img\\goodslist\\058.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (156, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\059.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (157, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 189, 259, '..\\img\\goodslist\\060.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (158, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 155, 285, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (159, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 99, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (160, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 999, 1188, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (161, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 88, 229, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (162, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 545, 999, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (163, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 268, 336, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (164, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (165, 'JBL C102SI 立体声入耳式耳机 手机通话版', 545, 999, '..\\img\\goodslist\\001.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (166, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 268, 336, '..\\img\\goodslist\\002.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (167, 'JVC 杰伟世 HA-FR204 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 567, 888, '..\\img\\goodslist\\003.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (168, 'Beats Solo5 Wireless 无线头戴式耳机 支持国内保修', 189, 259, '..\\img\\goodslist\\004.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (169, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 155, 285, '..\\img\\goodslist\\005.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (170, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 88, 99, '..\\img\\goodslist\\006.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (171, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 999, 1188, '..\\img\\goodslist\\007.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (172, 'JBL C101SI 立体声入耳式耳机 手机通话版', 88, 229, '..\\img\\goodslist\\008.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (173, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 545, 999, '..\\img\\goodslist\\009.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (174, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 268, 336, '..\\img\\goodslist\\010.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (175, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 567, 888, '..\\img\\goodslist\\011.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (176, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 88, 99, '..\\img\\goodslist\\012.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (177, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 999, 1188, '..\\img\\goodslist\\013.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (178, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 88, 229, '..\\img\\goodslist\\014.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (179, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 545, 999, '..\\img\\goodslist\\015.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (180, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 268, 336, '..\\img\\goodslist\\016.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (181, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 567, 888, '..\\img\\goodslist\\017.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (182, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 189, 259, '..\\img\\goodslist\\018.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (183, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 678, 1099, '..\\img\\goodslist\\019.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (184, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 399, 448, '..\\img\\goodslist\\020.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (185, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 585, 762, '..\\img\\goodslist\\021.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (186, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 2597, 3399, '..\\img\\goodslist\\022.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (187, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 1200, 1422, '..\\img\\goodslist\\023.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (188, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 232, 566, '..\\img\\goodslist\\024.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (189, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW3CH/A) 金色', 999, 1299, '..\\img\\goodslist\\025.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (190, 'JBL Clip2 音乐盒3 蓝牙便携音箱 防水设计 高保真无噪声通话', 388, 499, '..\\img\\goodslist\\026.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (191, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 355, 355, '..\\img\\goodslist\\027.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (192, 'JBL C101SI 立体声入耳式耳机 手机通话版', 100, 199, '..\\img\\goodslist\\028.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (193, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 3555, 4998, '..\\img\\goodslist\\029.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (194, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 112, 566, '..\\img\\goodslist\\030.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (195, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 155, 285, '..\\img\\goodslist\\031.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (196, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 88, 99, '..\\img\\goodslist\\032.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (197, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 999, 1188, '..\\img\\goodslist\\033.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (198, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 88, 229, '..\\img\\goodslist\\034.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (199, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 545, 999, '..\\img\\goodslist\\035.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (200, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 268, 336, '..\\img\\goodslist\\036.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (201, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 567, 888, '..\\img\\goodslist\\037.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (202, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 189, 259, '..\\img\\goodslist\\038.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (203, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 678, 1099, '..\\img\\goodslist\\039.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (204, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 399, 448, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (205, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 585, 762, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (206, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 2597, 3399, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (207, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 1200, 1422, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (208, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 232, 566, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (209, 'Apple 苹果iPad 9.7英寸 (128G WLAN/A9/Retina屏/MPGW3CH/A) 金色', 999, 1299, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (210, 'JBL Clip2 音乐盒3 蓝牙便携音箱 防水设计 高保真无噪声通话', 388, 499, '..\\img\\goodslist\\046.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (211, '【陈伟霆代言】乐心 智能手环测心率防水计步器蓝牙运动手表mambo3代', 355, 355, '..\\img\\goodslist\\047.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (212, 'JBL C101SI 立体声入耳式耳机 手机通话版', 100, 199, '..\\img\\goodslist\\048.jpg', '美国', '202', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (213, '【陈伟霆同款】Beats X 蓝牙无线入耳式运动耳机 手机耳机带麦可通话', 3555, 4998, '..\\img\\goodslist\\049.jpg', '美国', '7', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (214, 'JVC 杰伟世 HA-FR203 XX 复古摇滚重低音耳机 手机耳机 颜色随机', 112, 566, '..\\img\\goodslist\\050.jpg', '美国', '364', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (215, 'Beats Solo4 Wireless 无线头戴式耳机 支持国内保修', 155, 285, '..\\img\\goodslist\\051.jpg', '美国', '123', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (216, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 88, 99, '..\\img\\goodslist\\052.jpg', '美国', '908', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (217, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 999, 1188, '..\\img\\goodslist\\053.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (218, 'Netease 网易 云音乐车载蓝牙播放器 车载充电器', 88, 229, '..\\img\\goodslist\\054.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (219, 'JBL E26BT 无线蓝牙入耳式立体声音乐耳机 无线跑步运动通话重低音', 545, 999, '..\\img\\goodslist\\055.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (220, 'Sony 索尼 MDR-XB51BS 重低音无线蓝牙防水运动耳机', 268, 336, '..\\img\\goodslist\\056.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (221, 'JBL GO 迷你无线蓝牙音箱 音乐金砖', 567, 888, '..\\img\\goodslist\\057.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (222, 'Apple 苹果iPad 9.7英寸(32G WLAN/A9/Retina屏/MP2G3CH/A) 银色', 189, 259, '..\\img\\goodslist\\058.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (223, 'Apple 苹果 AirPods 蓝牙无线耳机（MMEF3CH/A）', 678, 1099, '..\\img\\goodslist\\059.jpg', '美国', '146', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (224, 'Beats Powerbeats4 Wireless 入耳式无线耳机 支持保修', 399, 448, '..\\img\\goodslist\\060.jpg', '美国', '96', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (225, 'Beats EP 头戴式耳机 含线控麦克风 支持国内保修', 585, 762, '..\\img\\goodslist\\040.jpg', '美国', '2627', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (226, 'Logitech 罗技 K481 多功能蓝牙键盘 （白）', 2597, 3399, '..\\img\\goodslist\\041.jpg', '美国', '265', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (227, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 1200, 1422, '..\\img\\goodslist\\042.jpg', '美国', '345', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (228, '【海外仓发货】Jabra 捷波朗 搏驰心率监测运动指导耳机Sport Pulse', 678, 1099, '..\\img\\goodslist\\043.jpg', '美国', '35', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (229, 'JBL GO无线蓝牙音箱 音乐金砖 支持国内保修', 399, 448, '..\\img\\goodslist\\044.jpg', '美国', '453', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `productlist` VALUES (230, 'Beats by dr. dre UrBeats 入耳式耳机  手机耳机 支持国内保修', 585, 762, '..\\img\\goodslist\\045.jpg', '美国', '456', '网易考拉自营', '2017-09-04 19:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phonenum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addDate` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (66, 'poseoni', 'c02d9848678fe6c153ce68f24d0a0b4f', 'c02d9848678fe6c153ce68f24d0a0b4f', '13929950000', '2017-09-01 20:21:41');

SET FOREIGN_KEY_CHECKS = 1;
