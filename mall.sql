/*
 Navicat Premium Data Transfer

 Source Server         : mall
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 05/12/2023 20:18:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'admin', 'admin');
INSERT INTO `admin_user` VALUES (2, '4d', '哈兰 ');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `user_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `delete_point` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 9, 1, 1);
INSERT INTO `cart` VALUES (2, 10, 2, 1);
INSERT INTO `cart` VALUES (3, 11, 3, 0);

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES (1, '吉他', 0, 1);
INSERT INTO `classification` VALUES (2, '口琴', NULL, 1);
INSERT INTO `classification` VALUES (3, '钢琴', NULL, 1);
INSERT INTO `classification` VALUES (4, '古筝', NULL, 1);
INSERT INTO `classification` VALUES (5, '笛子', NULL, 1);
INSERT INTO `classification` VALUES (6, '民谣吉他', 1, 2);
INSERT INTO `classification` VALUES (7, '电吉他', 1, 2);
INSERT INTO `classification` VALUES (9, '古典吉他', 1, 2);
INSERT INTO `classification` VALUES (10, '传统古筝', 4, 2);
INSERT INTO `classification` VALUES (11, '现代古筝', 4, 2);
INSERT INTO `classification` VALUES (12, '卡尔文森', 3, 2);
INSERT INTO `classification` VALUES (13, '竖笛', 5, 2);
INSERT INTO `classification` VALUES (14, '葫芦丝', NULL, 1);
INSERT INTO `classification` VALUES (15, '琵琶', NULL, 1);
INSERT INTO `classification` VALUES (16, '中国竹笛', 5, 2);
INSERT INTO `classification` VALUES (17, '和弦口琴', 2, 2);
INSERT INTO `classification` VALUES (18, '中国民谣葫芦丝', 14, 2);
INSERT INTO `classification` VALUES (19, '中国琵琶', 15, 2);
INSERT INTO `classification` VALUES (20, '多功能', 3, 2);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(0) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 'fjsdakl', '小明', '2017-11-25 19:23:48', '12345654', 4, 8888, 1);
INSERT INTO `order` VALUES (2, 'kdls;ajfklafkasld', 'tom', '2017-11-25 22:10:39', '123456894', 3, 17998, 1);
INSERT INTO `order` VALUES (3, 'ffggghhhhfdfhjhff', 'Catalina', '2017-11-25 22:52:44', '1234322313', 3, 6077, 1);
INSERT INTO `order` VALUES (4, 'fdsakldfjasl;', 'tomcat', '2017-11-25 23:35:01', '1234567878', 4, 8999, 1);
INSERT INTO `order` VALUES (5, 'Gggggggg', 'Hfb', '2017-11-26 02:53:14', '18679658549', 1, 5999, 1);
INSERT INTO `order` VALUES (6, 'fdfd', '罗小皮', '2023-12-05 11:37:17', '17', 1, 0, 1);
INSERT INTO `order` VALUES (10, '哈机密', '罗小皮', '2023-12-05 19:48:35', '15898569325', 1, 39304, 3);
INSERT INTO `order` VALUES (11, '哈哈哈哈哈', '罗小皮', '2023-12-05 19:57:05', '12345696325', 1, 16980, 3);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `sub_total` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, 1, 1, 10, 8888);
INSERT INTO `order_item` VALUES (2, 2, 2, 9, 17998);
INSERT INTO `order_item` VALUES (3, 2, 3, 11, 78);
INSERT INTO `order_item` VALUES (4, 1, 3, 13, 5999);
INSERT INTO `order_item` VALUES (5, 1, 4, 9, 8999);
INSERT INTO `order_item` VALUES (6, 1, 5, 13, 5999);
INSERT INTO `order_item` VALUES (7, 1, 7, 9, 8999);
INSERT INTO `order_item` VALUES (8, 1, 7, 12, 580);
INSERT INTO `order_item` VALUES (9, 3, 8, 9, 35996);
INSERT INTO `order_item` VALUES (10, 1, 8, 12, 580);
INSERT INTO `order_item` VALUES (11, 1, 9, 16, 600);
INSERT INTO `order_item` VALUES (12, 1, 9, 17, 6554);
INSERT INTO `order_item` VALUES (13, 1, 9, 19, 250);
INSERT INTO `order_item` VALUES (14, 1, 9, 20, 60);
INSERT INTO `order_item` VALUES (15, 1, 9, 9, 8999);
INSERT INTO `order_item` VALUES (16, 1, 9, 10, 398);
INSERT INTO `order_item` VALUES (17, 1, 9, 13, 5999);
INSERT INTO `order_item` VALUES (18, 2, 9, 14, 44);
INSERT INTO `order_item` VALUES (19, 1, 9, 15, 16400);
INSERT INTO `order_item` VALUES (20, 1, 10, 16, 600);
INSERT INTO `order_item` VALUES (21, 1, 10, 17, 6554);
INSERT INTO `order_item` VALUES (22, 1, 10, 19, 250);
INSERT INTO `order_item` VALUES (23, 1, 10, 20, 60);
INSERT INTO `order_item` VALUES (24, 1, 10, 9, 8999);
INSERT INTO `order_item` VALUES (25, 1, 10, 10, 398);
INSERT INTO `order_item` VALUES (26, 1, 10, 13, 5999);
INSERT INTO `order_item` VALUES (27, 2, 10, 14, 44);
INSERT INTO `order_item` VALUES (28, 1, 10, 15, 16400);
INSERT INTO `order_item` VALUES (29, 1, 11, 12, 580);
INSERT INTO `order_item` VALUES (30, 1, 11, 15, 16400);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csid` int(11) NULL DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_hot` int(11) NULL DEFAULT NULL,
  `market_price` double NULL DEFAULT NULL,
  `pdate` datetime(0) NULL DEFAULT NULL,
  `shop_price` bigint(20) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (9, 6, '精心制作的手工吉他，融合绝美木纹和卓越音质的完美乐器', '/mall/admin/product/img/4fdc48b9638219ad6e2134b7082d7cfd.jpg', 1, 9999, '2017-11-25 00:37:57', 8999, '精心制作的手工吉他，融合绝美木纹和卓越音质的完美乐器');
INSERT INTO `product` VALUES (10, 6, '经典款式与舒适弹奏体验完美融合的入门级吉他，帮助您展现音乐才华', '/mall/admin/product/img/7ae85d11d2ad69b7471b6366094e6f79.jpg', 1, 9999, '2017-11-24 22:17:54', 398, '经典款式与舒适弹奏体验完美融合的入门级吉他，帮助您展现音乐才华');
INSERT INTO `product` VALUES (11, 6, '入门者推荐款吉他，耐用抗造', '/mall/admin/product/img/265e3f321dd44c0e3c3be591fe2b85d1.jpg', 0, 40.9, '2017-11-25 22:37:23', 399, '入门者推荐款吉他，耐用抗造');
INSERT INTO `product` VALUES (12, 7, '\r\n名森电吉他ST青花瓷摇滚初学者进阶专业级单单双单摇电音吉他乐器，为你带来身临其境的沉浸体验。一起摇滚', '/mall/admin/product/img/O1CN01ZycIeH26SKZyD3oVf_!!4229157660.jpg_Q75.jpg_.webp', 1, 4999, '2017-11-25 22:39:01', 580, '名森电吉他ST青花瓷摇滚初学者进阶专业级单单双单摇电音吉他乐器');
INSERT INTO `product` VALUES (13, 17, '初学者推荐款口琴，感受音乐得魅力', '/mall/admin/product/img/287a00b77ffc039926a041f3ceac67a8.jpg', 1, 6499, '2017-11-25 22:41:06', 5999, '初学者推荐款口琴');
INSERT INTO `product` VALUES (14, 18, '\r\n云南紫竹C调降B调葫芦丝儿童小学生成人初学专业演奏单双三音乐器', '/mall/admin/product/img/752c4450b93a84404147af339355f581.jpg', 1, 86, '2017-11-25 22:41:06', 22, '\r\n云南紫竹C调降B调葫芦丝儿童小学生成人初学专业演奏单双三音乐器');
INSERT INTO `product` VALUES (15, 3, 'SPYKER英国世爵专业真钢琴W170透明演奏级梦幻水晶大三角自动演奏', '/mall/admin/product/img/05935ae1775543cd5ec7db541204e6a9.jpg', 1, 16599, '2017-11-25 22:41:06', 16400, 'SPYKER英国世爵专业真钢琴W170透明演奏级梦幻水晶大三角自动演奏');
INSERT INTO `product` VALUES (16, 12, 'Mobeysi莫贝斯钢琴官方旗舰店88键电子钢琴重锤家用初学专业考级', '/mall/admin/product/img/b790cbb31e84a6f08fd011ac8f0249e3.jpg', 1, 800, '2017-11-25 22:41:06', 600, 'Mobeysi莫贝斯钢琴官方旗舰店88键电子钢琴重锤家用初学专业考级');
INSERT INTO `product` VALUES (17, 11, '祥音专业演奏考级紫檀兰考泡桐木双音板加厚初学者入门高档古筝琴', '/mall/admin/product/img/c56a4eb167256dbd8d9577bd5b4bbeaf.jpg', 1, 6389, '2017-11-25 22:41:06', 6554, '祥音专业演奏考级紫檀兰考泡桐木双音板加厚初学者入门高档古筝琴');
INSERT INTO `product` VALUES (18, 10, '\r\nPlay\r\n00:00\r\n00:14\r\n\r\n\r\n21弦一米小古筝便携式迷你小型初学者专业级小古筝官方旗舰店品牌', '/mall/admin/product/img/b3e806085a5d92185db6d22ac78b515e.jpg', 0, 589, '2017-11-25 22:41:06', 350, '\r\nPlay\r\n00:00\r\n00:14\r\n\r\n\r\n21弦一米小古筝便携式迷你小型初学者专业级小古筝官方旗舰店品牌');
INSERT INTO `product` VALUES (19, 19, '\r\nPlay\r\n00:01\r\n01:00\r\n\r\n\r\n红木琵琶乐器初学者入门自学成人儿童花梨木演奏民族乐器考级琵笆', '/mall/admin/product/img/O1CN01cocEs51szr4mG46o4_!!3437915838.jpg_Q75.jpg_.webp', 1, 360, '2017-11-25 22:41:06', 250, '\r\nPlay\r\n00:01\r\n01:00\r\n\r\n\r\n红木琵琶乐器初学者入门自学成人儿童花梨木演奏民族乐器考级琵笆');
INSERT INTO `product` VALUES (20, 16, '笛子竹笛魔道陈情笛初学成人专业演奏零基础横笛乐器古风黑儿童', '/mall/admin/product/img/O1CN01UQOlIC1lqVaFiuJLg_!!2201217864870.jpg_Q75.jpg_.webp', 1, 100, '2017-11-25 22:41:06', 60, '笛子竹笛魔道陈情笛初学成人专业演奏零基础横笛乐器古风黑儿童');
INSERT INTO `product` VALUES (21, 13, '6孔竖笛自学初学苦竹笛子演奏成人儿童小学生专业入门F调直笛新式', '/mall/admin/product/img/O1CN01OuL1dB1hgCFI116Xy_!!4212324306.jpg_Q75.jpg_.webp', 0, 120, '2017-11-25 22:41:06', 80, '6孔竖笛自学初学苦竹笛子演奏成人儿童小学生专业入门F调直笛新式');
INSERT INTO `product` VALUES (22, 20, 'SPYKER立式专业考级家用练习智能电钢琴88键重锤初学者带缓降L123', '/mall/admin/product/img/O1CN01B4lyWL1HxR7b7mTXC_!!2503580824.jpg_Q75.jpg_.webp', NULL, 7999, '2017-11-25 22:41:06', 8529, 'SPYKER立式专业考级家用练习智能电钢琴88键重锤初学者带缓降L123');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'wew6698888', '89****96@qq.com', 'skywalker', '123456', '17688970006', 'hfb');
INSERT INTO `user` VALUES (2, '1235645645646', '89***96@qq.com', 'hfb', '123456', '18645954845', 'jesse');
INSERT INTO `user` VALUES (3, '江西省 吉安市 泰和县', '8976677657@qq.com', '曾涛涛', '123456', '12345678941', 'ztt');

SET FOREIGN_KEY_CHECKS = 1;
