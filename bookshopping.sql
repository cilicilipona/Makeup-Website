/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : bookshopping

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-12-30 16:05:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookcontent
-- ----------------------------
DROP TABLE IF EXISTS `bookcontent`;
CREATE TABLE `bookcontent` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `productsid` varchar(50) DEFAULT NULL,
  `content` text,
  `updatetime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `isfee` varchar(20) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `zjno` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookcontent
-- ----------------------------
INSERT INTO `bookcontent` VALUES ('18', '单品试妆', '133421e38a324434a60b1065360cb06e', '真人3D动态试妆，口红、腮红、眼影等单品根据客户喜好随意搭配；', '2019-12-30 10:04:34', '是', '镜子', '1');
INSERT INTO `bookcontent` VALUES ('19', '整体试妆', '133421e38a324434a60b1065360cb06e', '智能搭配，0.1秒完成口红、眼影、腮红等整套妆容的试色/选款；', '2019-12-29 15:48:43', '否', '镜子', '2');
INSERT INTO `bookcontent` VALUES ('20', '一键试妆', '133421e38a324434a60b1065360cb06e', '通过单张照片上传，即可一键体验店内所有彩妆产品，可以提高顾客的选购时间。', '2019-12-29 15:48:43', '否', '镜子', '3');
INSERT INTO `bookcontent` VALUES ('21', '如何描画', '401496fb1cea4719b0be4589506bd2e7', '1、无名指蘸取眼影。\r\n　　2、将眼尾的1/3处轻轻向上提起，然后用蘸有眼影的手指，贴近睫毛根部，从内眼角到外眼角，再由外眼角到内眼角，来回涂抹两次。\r\n　　3、然后沿着眼球的轮廓，对上眼睑整体涂抹眼影。如果希望加强眼部立体感，可在眼球外侧的眼睑上适当加重眼影。\r\n　　4、上第二遍眼影的时候，你可以针对希望突出的部分进行集中涂抹。\r\n　　5、用没有蘸过眼影的中指，在上眼睑，将第一遍和第二遍眼影充分晕染开，营造自然的过渡，让眼妆呈现完美的层次感。', '2019-12-12 15:49:59', '否', '四色眼影盘', '4');
INSERT INTO `bookcontent` VALUES ('22', '注意事项', '401496fb1cea4719b0be4589506bd2e7', '1、如果不是艺术妆容，眼影的描画最好不要超过眼窝处，不然很容易失去美感\r\n　　2、眼影颜色的搭配与选择要根据服装以及整体的面部色彩来定夺\r\n　　3、如果是日常妆容，最好不要使用颜色太过于鲜艳的色系', '2019-12-29 15:51:15', '否', '四色眼影盘', '5');

-- ----------------------------
-- Table structure for leftmessage
-- ----------------------------
DROP TABLE IF EXISTS `leftmessage`;
CREATE TABLE `leftmessage` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `messagecontent` varchar(255) DEFAULT NULL,
  `messagetime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `childid` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leftmessage
-- ----------------------------

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('178d69a441a942cfb63e48be385641f5', '133421e38a324434a60b1065360cb06e', '1');
INSERT INTO `orderitem` VALUES ('178d69a441a942cfb63e48be385641f5', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('29e0fe405cb445fb8b7a189f5a4aa1ef', '133421e38a324434a60b1065360cb06e', '111');
INSERT INTO `orderitem` VALUES ('496013c160944189a9513eff703ec061', '133421e38a324434a60b1065360cb06e', '1');
INSERT INTO `orderitem` VALUES ('5747ee017b9b4ebabf920fd453e639b5', '133421e38a324434a60b1065360cb06e', '1');
INSERT INTO `orderitem` VALUES ('5747ee017b9b4ebabf920fd453e639b5', '401496fb1cea4719b0be4589506bd2e7', '3');
INSERT INTO `orderitem` VALUES ('5a211a5f563a42dfa0c6a84c67763674', '133421e38a324434a60b1065360cb06e', '1');
INSERT INTO `orderitem` VALUES ('5a211a5f563a42dfa0c6a84c67763674', '315135', '1');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', '21a6fe44974c4ef7bdc4ee159ee0937e', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', '401496fb1cea4719b0be4589506bd2e7', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', '45003ae5c2bd47f28e9a3bbdb474d94c', '1');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', '6cf8941df5d14bfb9a09ee8d4a377e93', '1');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'a4e4e7565dba4afb9f1abb405cb93507', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'ae087d4c337a42febb2dbc3edf846c81', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'd2f5fceb5ad943c0977033ea1063ecc9', '1');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'd611aeec4112416e9f0dae754899f3b0', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'e918f92523644ee7b8656636a5408574', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'f78d4ce135c74bda8c0158468d990401', '2');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'fcdcc832e35d40e5b2942f68b241f103', '1');
INSERT INTO `orderitem` VALUES ('5d2cfefb2ea3440ebf0e70b5152be3c1', 'ff9f488580bf4992bd1a22d4f474ac5d', '1');
INSERT INTO `orderitem` VALUES ('5dc35113b3a14cc6ae7e68e09d26b12b', '133421e38a324434a60b1065360cb06e', '1');
INSERT INTO `orderitem` VALUES ('5dc35113b3a14cc6ae7e68e09d26b12b', '21a6fe44974c4ef7bdc4ee159ee0937e', '2');
INSERT INTO `orderitem` VALUES ('5dc35113b3a14cc6ae7e68e09d26b12b', '315135', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', '401496fb1cea4719b0be4589506bd2e7', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', '6cf8941df5d14bfb9a09ee8d4a377e93', '3');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'a4e4e7565dba4afb9f1abb405cb93507', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'ae087d4c337a42febb2dbc3edf846c81', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'd611aeec4112416e9f0dae754899f3b0', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'e918f92523644ee7b8656636a5408574', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'fcdcc832e35d40e5b2942f68b241f103', '1');
INSERT INTO `orderitem` VALUES ('64c50218431e4f2187c9beab3ec0eadb', 'ff9f488580bf4992bd1a22d4f474ac5d', '1');
INSERT INTO `orderitem` VALUES ('6b909819dae74d89b1f453050b70dcfb', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('6b909819dae74d89b1f453050b70dcfb', '401496fb1cea4719b0be4589506bd2e7', '2');
INSERT INTO `orderitem` VALUES ('6cb477687bc6419e940ab86642f24f52', '401496fb1cea4719b0be4589506bd2e7', '3');
INSERT INTO `orderitem` VALUES ('6cb477687bc6419e940ab86642f24f52', '6cf8941df5d14bfb9a09ee8d4a377e93', '20');
INSERT INTO `orderitem` VALUES ('7c893b972e5547d781fd5aa8e7f2b831', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('93a48436480646cfa76fcae591fc0eb7', '6cf8941df5d14bfb9a09ee8d4a377e93', '3');
INSERT INTO `orderitem` VALUES ('a61021547f1e4626918cf7edec978440', '1234', '2');
INSERT INTO `orderitem` VALUES ('a61021547f1e4626918cf7edec978440', '135465', '1');
INSERT INTO `orderitem` VALUES ('c41c5ea0a4d643ed802e9129e3bd12bc', '315135', '1');
INSERT INTO `orderitem` VALUES ('dca1bb9ba2984cad9b4555f7f80a8e39', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('dca1bb9ba2984cad9b4555f7f80a8e39', '401496fb1cea4719b0be4589506bd2e7', '1');
INSERT INTO `orderitem` VALUES ('dceeac22aa674e9696318eff3d256b68', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('dceeac22aa674e9696318eff3d256b68', '315135', '1');
INSERT INTO `orderitem` VALUES ('df45c8dde46b4ab5897fe5b794fbb3c5', '21a6fe44974c4ef7bdc4ee159ee0937e', '1');
INSERT INTO `orderitem` VALUES ('eebf7297d11c43f28580f92351f0f1d7', 'ae087d4c337a42febb2dbc3edf846c81', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` int(11) DEFAULT NULL,
  `receiverinfo` varchar(255) DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('178d69a441a942cfb63e48be385641f5', '220', '青岛', '0', '2019-12-30 15:54:32', '9');
INSERT INTO `orders` VALUES ('5a211a5f563a42dfa0c6a84c67763674', '253', 'm', '0', '2019-12-30 12:55:55', '9');
INSERT INTO `orders` VALUES ('7c893b972e5547d781fd5aa8e7f2b831', '200', '美国', '0', '2019-03-05 21:12:34', '4');
INSERT INTO `orders` VALUES ('c41c5ea0a4d643ed802e9129e3bd12bc', '233', '111', '0', '2019-12-30 12:05:41', '8');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `cbtime` date DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1234', '黑色眼', '50', 'cartoon', '20', 'images/blackyanxianbi.png', '很好用的黑色眼线笔', '1', '2018-09-30', null, '3');
INSERT INTO `products` VALUES ('133421e38a324434a60b1065360cb06e', '镜子', '20', 'novel', '111', 'images/Jingzi.png', '化妆专用镜子，小巧玲珑，随身携带，十分方便，表面光滑，清晰可见。', '1', '2017-02-16', null, '1');
INSERT INTO `products` VALUES ('135465', 'YSLN9', '296', 'literature', '100', 'images/jintiao9.png', 'YSL小金条N9色号，十分好看。', '1', '2019-12-12', null, '3');
INSERT INTO `products` VALUES ('21a6fe44974c4ef7bdc4ee159ee0937e', '睫毛夹', '200', 'novel', '100', 'images/jiemaojia.png', '小巧玲珑很好携带的睫毛夹哦~', '1', '2015-07-03', null, '1');
INSERT INTO `products` VALUES ('23141', '睫毛膏', '46', 'cartoon', '20', 'images/jiemaogao.png', '黑色睫毛膏，无苍蝇腿，很好用', '1', '2019-12-10', null, '3');
INSERT INTO `products` VALUES ('24163', '牛奶身体乳', '160', 'science', '100', 'images/4.png', '牛奶味的，香香的。', '1', '2019-12-20', null, '2');
INSERT INTO `products` VALUES ('315135', '猫咪腮红', '233', 'music', '100', 'images/catsaihong.png', '猫咪腮红，好看又好用。', '1', '2019-12-02', null, '1');
INSERT INTO `products` VALUES ('3465748', '洗面奶', '150', 'art', '100', 'images/ximiannai.png', '奥蜜思净白洗面奶。', '1', '2019-12-03', null, '1');
INSERT INTO `products` VALUES ('401496fb1cea4719b0be4589506bd2e7', '四色眼影盘', '20', 'cartoon', '10', 'images/4coloryanying.png', '大地色系，适合所有小姐姐~', '1', '2018-07-08', null, '1');
INSERT INTO `products` VALUES ('41341351', 'YSLN12', '297', 'literature', '100', 'images/jintiao12.png', 'YSL金条N12色号，十分好看。', '1', '2019-12-25', null, '3');
INSERT INTO `products` VALUES ('42343', '棕色眉笔', '50', 'study', '20', 'images/zongsemeibi.png', '棕色的眉笔，十分适合深发色。', '1', '2019-12-03', null, '3');
INSERT INTO `products` VALUES ('54573658', '两瓶身体乳', '200', 'science', '100', 'images/3.png', '促销装，十分便宜，十分好用。', '1', '2019-12-04', null, '2');
INSERT INTO `products` VALUES ('675857', 'YSLN21', '300', 'literature', '100', 'images/jintiao21.png', 'YSL小金条N21色号，很好看。', '1', '2019-12-05', null, '3');
INSERT INTO `products` VALUES ('6960445e67d346089c2b7edc4c4d4228', 'YSL小金条N2', '88', 'literature', '100', 'images/jintiao2.png', 'YSL小金条N2色号，十分好看。', '1', '2019-03-14', null, '3');
INSERT INTO `products` VALUES ('69765', '奥蜜思水润', '300', 'art', '100', 'images/water.png', '奥蜜思水润精华。', '1', '2019-12-17', null, '1');
INSERT INTO `products` VALUES ('6cf8941df5d14bfb9a09ee8d4a377e93', '奥蜜思套装', '200', 'art', '20', 'images/taozhuang.png', '纪念版，重磅推荐', '1', '2018-07-22', null, '1');
INSERT INTO `products` VALUES ('a4e4e7565dba4afb9f1abb405cb93507', '粉色腮红', '50', 'music', '20', 'images/pinksaihong.png', '人手一个，好看又好用', '1', '2018-07-01', null, '1');
INSERT INTO `products` VALUES ('ae087d4c337a42febb2dbc3edf846c81', '高光', '30', 'music', '10', 'images/gaoguang.png', '高光不油腻。', '1', '2018-06-09', null, '2');
INSERT INTO `products` VALUES ('d611aeec4112416e9f0dae754899f3b0', '黑色眉笔', '100', 'study', '20', 'images/heisemeibi.png', '黑色眉笔，非自动，适合初学者使用。', '1', '2018-07-14', null, '2');
INSERT INTO `products` VALUES ('e918f92523644ee7b8656636a5408574', '浅棕色眉笔', '20', 'study', '20', 'images/qianzongse.png', '浅色系，适合发色浅的人使用', '1', '2018-07-01', null, '2');
INSERT INTO `products` VALUES ('fcdcc832e35d40e5b2942f68b241f103', '假睫毛', '100', 'novel', '20', 'images/jiajiemao.png', '十分贴合眉部，真实。', '1', '2016-07-14', null, '2');
INSERT INTO `products` VALUES ('ff9f488580bf4992bd1a22d4f474ac5d', '身体乳', '20', 'science', '20', 'images/shentihuli2.png', '好用的樱花味身体乳', '1', '2018-07-02', null, '3');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nickname` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `activecode` varchar(100) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'root123', '202cb962ac59075b964b07152d234b70', 'root', 'root@root.com', 'user', '1', '83428f94214b4aa4aca2477de39c6c7b', '2018-07-12 16:36:00', null);
INSERT INTO `users` VALUES ('3', 'gaomingzhe', 'e10adc3949ba59abbe56e057f20f883e', 'gaomingzhe', '496279634@qq.com', 'user', '0', '7ab74b82fbef461ea92d3b2c259985fa', '2018-07-12 21:15:14', null);
INSERT INTO `users` VALUES ('4', 'buzikang', 'c4ca4238a0b923820dcc509a6f75849b', '步子康', '308445413@qq.com', 'user', '0', 'b12e9d65253f44209943e48838d0b8be', '2019-03-09 14:39:10', '100');
INSERT INTO `users` VALUES ('5', '3yue7', 'c4ca4238a0b923820dcc509a6f75849b', '1', '308445413@qq.com', '1', null, null, '2019-03-17 15:36:05', null);
INSERT INTO `users` VALUES ('6', 'admin1', 'c4ca4238a0b923820dcc509a6f75849b', '管理员', '308445413@qq.com', 'admin', null, null, '2019-03-17 15:32:41', null);
INSERT INTO `users` VALUES ('7', 'LX123456', '5379dfb00cfbcf5312230ea8a1edc751', 'LX123456', '308445413@qq.com', 'user', '0', 'ce110bcdf1034a4ea982cad2c58523a6', '2019-03-22 23:53:10', null);
INSERT INTO `users` VALUES ('8', 'wangyumeng', '84307f96ea9eab6f844864cbd1939523', 'wangyumeng', 'jiuhanyan2@163.com', 'user', '0', '0d2cb4043f8e4738998079ad2b9ff6e2', '2019-12-23 14:34:49', null);
INSERT INTO `users` VALUES ('9', 'lijiahui', '90193807afbc6b1d17962e437c8aca68', 'lijiahui', 'lijiahui@123.com', '', null, null, '2019-12-29 14:12:36', null);
INSERT INTO `users` VALUES ('10', 'hhhhhh', '202cb962ac59075b964b07152d234b70', 'ee', '308957889@qq.com', 'user', '0', 'aef50394d8c449f489650879aed700ed', '2019-12-30 14:28:52', null);
