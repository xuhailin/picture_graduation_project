/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : photo

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-05-11 09:07:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ablum
-- ----------------------------
DROP TABLE IF EXISTS `ablum`;
CREATE TABLE `ablum` (
  `ablum_id` int(11) NOT NULL AUTO_INCREMENT,
  `ablum_name` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `access` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ablum_id`),
  UNIQUE KEY `u1` (`ablum_name`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ablum
-- ----------------------------
INSERT INTO `ablum` VALUES ('1', '哈哈哈', '10', '2', null, '123456', '双方都是高手', null, null);
INSERT INTO `ablum` VALUES ('2', '呵呵呵', '10', '2', null, '', '呵呵呵呵呵', null, null);
INSERT INTO `ablum` VALUES ('3', 'fengjing', '10', '2', null, null, 'fjm', '2017-03-23 22:39:38', null);
INSERT INTO `ablum` VALUES ('5', '12345', '10', '3', null, null, '12345dssdds', '2017-03-23 22:45:53', null);
INSERT INTO `ablum` VALUES ('7', '12', '10', '3', null, null, '12', '2017-03-23 22:46:08', null);
INSERT INTO `ablum` VALUES ('8', 'sss', '10', '3', null, null, 'ssss', '2017-03-23 22:51:39', null);
INSERT INTO `ablum` VALUES ('9', '徐海林', '10', '1', null, null, '放假吗', '2017-03-23 22:59:33', null);
INSERT INTO `ablum` VALUES ('10', '123', '13', '1', null, null, '123', '2017-03-27 22:31:05', null);
INSERT INTO `ablum` VALUES ('11', '123123', '13', '67', null, null, '12323', '2017-03-27 22:31:24', null);
INSERT INTO `ablum` VALUES ('13', '相', '13', '1', null, null, '相册相册', '2017-03-28 20:23:02', null);

-- ----------------------------
-- Table structure for ablum_collection
-- ----------------------------
DROP TABLE IF EXISTS `ablum_collection`;
CREATE TABLE `ablum_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ablum_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ablum_collection
-- ----------------------------
INSERT INTO `ablum_collection` VALUES ('1', '11', '13', 'N');
INSERT INTO `ablum_collection` VALUES ('17', '1', '10', 'Y');
INSERT INTO `ablum_collection` VALUES ('18', '1', '13', 'Y');
INSERT INTO `ablum_collection` VALUES ('34', '3', '13', 'N');
INSERT INTO `ablum_collection` VALUES ('35', '2', '13', 'Y');
INSERT INTO `ablum_collection` VALUES ('36', '5', '13', 'Y');
INSERT INTO `ablum_collection` VALUES ('37', '10', '13', 'N');
INSERT INTO `ablum_collection` VALUES ('38', '13', '13', 'N');

-- ----------------------------
-- Table structure for ablum_image
-- ----------------------------
DROP TABLE IF EXISTS `ablum_image`;
CREATE TABLE `ablum_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ablum_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ablum_image
-- ----------------------------
INSERT INTO `ablum_image` VALUES ('2', '12', '图片22', '1', '这是图片2', '2017-03-27 09:33:09', '头像');
INSERT INTO `ablum_image` VALUES ('3', '12', '图片5', '1', '这是图片3', '2017-03-27 09:33:32', '摄影');
INSERT INTO `ablum_image` VALUES ('4', '12', '图片ii', '1', '这是图片5', '2017-03-26 23:25:57', '插画');
INSERT INTO `ablum_image` VALUES ('12', '12', '托尔斯泰', '1', '托尔斯泰', '2017-03-28 09:34:04', null);
INSERT INTO `ablum_image` VALUES ('13', '12', '小女孩i', '11', '可爱', '2017-03-28 22:27:39', '壁纸');
INSERT INTO `ablum_image` VALUES ('14', '13', '小兔子a', '11', '胡子长长的小兔子', '2017-03-28 22:27:36', '头像');
INSERT INTO `ablum_image` VALUES ('16', '15', '可爱i', '11', '微笑i', '2017-03-28 22:27:32', '动漫');
INSERT INTO `ablum_image` VALUES ('17', '16', '仓鼠ii', '11', '一群可爱的小仓鼠', '2017-03-28 22:27:30', '动漫');
INSERT INTO `ablum_image` VALUES ('18', '17', '柠檬', '11', '时光一去不复返', '2017-03-28 22:27:27', '动漫');
INSERT INTO `ablum_image` VALUES ('19', '18', '西瓜', '11', '有没有很想吃西瓜', '2017-03-28 22:27:23', '动漫');
INSERT INTO `ablum_image` VALUES ('20', '25', '海林 ', '11', ' 海林', '2017-03-28 22:27:19', '动漫');
INSERT INTO `ablum_image` VALUES ('21', '37', 'eeee', '11', 'eeeeeee', '2017-03-28 22:21:12', '动漫');
INSERT INTO `ablum_image` VALUES ('22', '39', '11111', '11', '11111', '2017-04-01 15:42:03', '动漫');
INSERT INTO `ablum_image` VALUES ('23', '40', 'aa', '10', 'aaaaa', '2017-04-01 15:43:15', '动漫');
INSERT INTO `ablum_image` VALUES ('25', '42', '西瓜i', '13', '1212332123', '2017-04-01 15:47:40', '动漫');
INSERT INTO `ablum_image` VALUES ('26', '44', 'xu', '11', '131234123', '2017-04-09 17:18:01', '动漫');
INSERT INTO `ablum_image` VALUES ('27', '66', '1111123', '11', '11111', '2017-05-03 21:26:22', '手绘');

-- ----------------------------
-- Table structure for favor_image
-- ----------------------------
DROP TABLE IF EXISTS `favor_image`;
CREATE TABLE `favor_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ablum_image_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of favor_image
-- ----------------------------
INSERT INTO `favor_image` VALUES ('1', '6', '10', 'N');
INSERT INTO `favor_image` VALUES ('2', '4', '10', 'Y');
INSERT INTO `favor_image` VALUES ('5', '3', '10', 'N');
INSERT INTO `favor_image` VALUES ('6', '2', '10', 'Y');
INSERT INTO `favor_image` VALUES ('7', '5', '10', 'Y');
INSERT INTO `favor_image` VALUES ('14', '12', '10', 'Y');
INSERT INTO `favor_image` VALUES ('15', '13', '13', 'Y');
INSERT INTO `favor_image` VALUES ('16', '15', '13', 'N');
INSERT INTO `favor_image` VALUES ('17', '14', '13', 'Y');
INSERT INTO `favor_image` VALUES ('18', '21', '13', 'N');
INSERT INTO `favor_image` VALUES ('19', '17', '13', 'Y');
INSERT INTO `favor_image` VALUES ('21', '4', '13', 'Y');
INSERT INTO `favor_image` VALUES ('22', '25', '13', 'Y');
INSERT INTO `favor_image` VALUES ('24', '2', '13', 'Y');
INSERT INTO `favor_image` VALUES ('25', '3', '13', 'Y');
INSERT INTO `favor_image` VALUES ('26', '16', '13', 'N');
INSERT INTO `favor_image` VALUES ('28', '23', '13', 'N');
INSERT INTO `favor_image` VALUES ('32', '22', '13', 'Y');
INSERT INTO `favor_image` VALUES ('34', '20', '13', 'Y');
INSERT INTO `favor_image` VALUES ('35', '19', '13', 'N');
INSERT INTO `favor_image` VALUES ('36', '18', '13', 'N');
INSERT INTO `favor_image` VALUES ('37', '27', '13', 'Y');
INSERT INTO `favor_image` VALUES ('38', '26', '13', 'N');
INSERT INTO `favor_image` VALUES ('44', '12', '13', 'N');
INSERT INTO `favor_image` VALUES ('45', '28', '13', 'Y');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', 'http://wp.saas.hand-china.com/accounter/imgs/f2435aaa-fdcd-41ad-8805-b23488b7e8fa.png', '2017-04-18 10:36:00', 'f2435aaa-fdcd-41ad-8805-b23488b7e8fa.png');
INSERT INTO `image` VALUES ('2', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKic4HWiap3pE2B8sstRY5NR8wAPsa1oDoibFhFcUbwBDsPNMHMj3ozwjsqta22nKQn69bibGAMCpe2uA/0', '2017-03-18 16:06:14', 'Q0j4TwGTfTKic4HWiap3pE2B8sstRY5NR8wAPsa1oDoibFhFcUbwBDsPNMHMj3ozwjsqta22nKQn69bibGAMCpe2uA/0');
INSERT INTO `image` VALUES ('3', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKic4HWiap3pE2B8sstRY5NR8wAPsa1oDoibFhFcUbwBDsPNMHMj3ozwjsqta22nKQn69bibGAMCpe2uA/0', '2017-03-19 17:03:19', 'Q0j4TwGTfTKic4HWiap3pE2B8sstRY5NR8wAPsa1oDoibFhFcUbwBDsPNMHMj3ozwjsqta22nKQn69bibGAMCpe2uA/0');
INSERT INTO `image` VALUES ('8', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM7DufibPlJuIbEicheSAEOiaf5zZGbNfXHJgOdbA4ZAS1Jsg/132', '2017-03-27 22:25:44', 'Q3auHgzwzM7DufibPlJuIbEicheSAEOiaf5zZGbNfXHJgOdbA4ZAS1Jsg/132');
INSERT INTO `image` VALUES ('9', 'http://wp.saas.hand-china.com/accounter/imgs/a34ce8eb-5537-4487-9c28-9d8576411b35.jpeg', '2017-03-27 22:26:11', 'a34ce8eb-5537-4487-9c28-9d8576411b35.jpeg');
INSERT INTO `image` VALUES ('10', 'http://wp.saas.hand-china.com/accounter/imgs/4f476441-ce3d-48e0-8309-6a86a456f83b.jpeg', '2017-03-27 22:42:33', '4f476441-ce3d-48e0-8309-6a86a456f83b.jpeg');
INSERT INTO `image` VALUES ('11', 'http://wp.saas.hand-china.com/accounter/imgs/ff700acb-f14c-40bb-ac9f-020d443bc09f.jpeg', '2017-03-27 22:46:15', 'ff700acb-f14c-40bb-ac9f-020d443bc09f.jpeg');
INSERT INTO `image` VALUES ('12', 'http://wp.saas.hand-china.com/accounter/imgs/b0385a7f-95fd-4f49-9dcd-2e83d7003b53.jpeg', '2017-03-27 22:47:39', 'b0385a7f-95fd-4f49-9dcd-2e83d7003b53.jpeg');
INSERT INTO `image` VALUES ('13', 'http://wp.saas.hand-china.com/accounter/imgs/6a8a24d6-c140-44f9-95f1-c18cb385f360.jpeg', '2017-03-27 22:54:21', '6a8a24d6-c140-44f9-95f1-c18cb385f360.jpeg');
INSERT INTO `image` VALUES ('14', 'http://wp.saas.hand-china.com/accounter/imgs/e1af8061-8a2e-4d8e-b9bd-45801000f7a3.jpeg', '2017-03-28 09:32:35', 'e1af8061-8a2e-4d8e-b9bd-45801000f7a3.jpeg');
INSERT INTO `image` VALUES ('15', 'http://wp.saas.hand-china.com/accounter/imgs/b2096958-3f48-40c3-9b0b-43b959175f5a.jpeg', '2017-03-28 09:32:57', 'b2096958-3f48-40c3-9b0b-43b959175f5a.jpeg');
INSERT INTO `image` VALUES ('16', 'http://wp.saas.hand-china.com/accounter/imgs/7f5b695d-f657-4fd2-a321-2766a329dba9.jpg', '2017-03-28 09:44:35', '7f5b695d-f657-4fd2-a321-2766a329dba9.jpg');
INSERT INTO `image` VALUES ('17', 'http://wp.saas.hand-china.com/accounter/imgs/bd2a8a9d-45cc-44d7-89b2-085d8add6561.jpeg', '2017-03-28 10:16:23', 'bd2a8a9d-45cc-44d7-89b2-085d8add6561.jpeg');
INSERT INTO `image` VALUES ('18', 'http://wp.saas.hand-china.com/accounter/imgs/6426101b-52df-41eb-83b4-8771e8e59438.jpeg', '2017-03-28 10:24:17', '6426101b-52df-41eb-83b4-8771e8e59438.jpeg');
INSERT INTO `image` VALUES ('19', 'http://wp.saas.hand-china.com/accounter/imgs/bbe3b120-ba3d-4b52-9d4e-d05f26564e8f.jpeg', '2017-03-28 10:27:07', 'bbe3b120-ba3d-4b52-9d4e-d05f26564e8f.jpeg');
INSERT INTO `image` VALUES ('20', 'http://wp.saas.hand-china.com/accounter/imgs/7592b848-d5ae-4be2-8227-515dc05bf751.jpeg', '2017-03-28 10:27:30', '7592b848-d5ae-4be2-8227-515dc05bf751.jpeg');
INSERT INTO `image` VALUES ('21', 'http://wp.saas.hand-china.com/accounter/imgs/87976cae-171b-4422-a304-d11ba5a4a518.jpeg', '2017-03-28 10:31:39', '87976cae-171b-4422-a304-d11ba5a4a518.jpeg');
INSERT INTO `image` VALUES ('22', 'http://wp.saas.hand-china.com/accounter/imgs/af40f17e-70da-418a-90f0-5a716e08751b.jpeg', '2017-03-28 10:31:53', 'af40f17e-70da-418a-90f0-5a716e08751b.jpeg');
INSERT INTO `image` VALUES ('23', 'http://wp.saas.hand-china.com/accounter/imgs/df71641b-d647-41a5-9967-0db68afc3155.jpeg', '2017-03-28 10:33:18', 'df71641b-d647-41a5-9967-0db68afc3155.jpeg');
INSERT INTO `image` VALUES ('24', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM7DufibPlJuIbEicheSAEOiaf5zZGbNfXHJgOdbA4ZAS1Jsg/132', '2017-03-28 20:16:33', 'Q3auHgzwzM7DufibPlJuIbEicheSAEOiaf5zZGbNfXHJgOdbA4ZAS1Jsg/132');
INSERT INTO `image` VALUES ('25', 'http://wp.saas.hand-china.com/accounter/imgs/f2435aaa-fdcd-41ad-8805-b23488b7e8fa.png', '2017-03-28 20:22:24', 'f2435aaa-fdcd-41ad-8805-b23488b7e8fa.png');
INSERT INTO `image` VALUES ('26', 'http://wp.saas.hand-china.com/accounter/imgs/d4b06f61-2dc1-4cae-88a0-e8a438c648fe.jpg', '2017-03-28 20:26:12', 'd4b06f61-2dc1-4cae-88a0-e8a438c648fe.jpg');
INSERT INTO `image` VALUES ('27', 'http://wp.saas.hand-china.com/accounter/imgs/80ded91f-a4c2-4e08-855f-6cdd75d92e68.jpg', '2017-03-28 20:34:22', '80ded91f-a4c2-4e08-855f-6cdd75d92e68.jpg');
INSERT INTO `image` VALUES ('28', 'http://wp.saas.hand-china.com/accounter/imgs/e5b03cc2-9bd2-457f-a44d-2d4bbad8457a.jpeg', '2017-03-28 21:50:41', 'e5b03cc2-9bd2-457f-a44d-2d4bbad8457a.jpeg');
INSERT INTO `image` VALUES ('29', 'http://wp.saas.hand-china.com/accounter/imgs/101402fe-489c-4cf5-93fe-251038a2d19a.jpeg', '2017-03-28 21:56:36', '101402fe-489c-4cf5-93fe-251038a2d19a.jpeg');
INSERT INTO `image` VALUES ('30', 'http://wp.saas.hand-china.com/accounter/imgs/83300238-fc11-4bef-bb19-de303269a55b.jpg', '2017-03-28 21:58:49', '83300238-fc11-4bef-bb19-de303269a55b.jpg');
INSERT INTO `image` VALUES ('31', 'http://wp.saas.hand-china.com/accounter/imgs/11d847a0-3614-4e06-90c3-77cd44c35dc7.jpg', '2017-03-28 22:00:11', '11d847a0-3614-4e06-90c3-77cd44c35dc7.jpg');
INSERT INTO `image` VALUES ('32', 'http://wp.saas.hand-china.com/accounter/imgs/040cf574-1cb7-4bcd-a503-46b98bec9b45.jpg', '2017-03-28 22:01:19', '040cf574-1cb7-4bcd-a503-46b98bec9b45.jpg');
INSERT INTO `image` VALUES ('33', 'http://wp.saas.hand-china.com/accounter/imgs/9856f613-f2d5-45ff-ad21-af80b6abe346.jpg', '2017-03-28 22:01:54', '9856f613-f2d5-45ff-ad21-af80b6abe346.jpg');
INSERT INTO `image` VALUES ('34', 'http://wp.saas.hand-china.com/accounter/imgs/03fe54fb-6217-4d3e-8842-3fe5b5e74451.jpg', '2017-03-28 22:03:49', '03fe54fb-6217-4d3e-8842-3fe5b5e74451.jpg');
INSERT INTO `image` VALUES ('35', 'http://wp.saas.hand-china.com/accounter/imgs/9ca55cb2-63c6-40b3-b8a0-cf8803b42507.jpg', '2017-03-28 22:04:30', '9ca55cb2-63c6-40b3-b8a0-cf8803b42507.jpg');
INSERT INTO `image` VALUES ('36', 'http://wp.saas.hand-china.com/accounter/imgs/91b267a7-8dac-4b40-a311-ada533fcb008.jpg', '2017-03-28 22:06:40', '91b267a7-8dac-4b40-a311-ada533fcb008.jpg');
INSERT INTO `image` VALUES ('37', 'http://wp.saas.hand-china.com/accounter/imgs/80e29e2b-81e9-4d29-90a7-7147c2fd641c.jpeg', '2017-03-28 22:21:11', '80e29e2b-81e9-4d29-90a7-7147c2fd641c.jpeg');
INSERT INTO `image` VALUES ('38', 'http://wp.saas.hand-china.com/accounter/imgs/71c59d3d-3ca8-4aa7-a152-6b4d18df91f8.jpg', '2017-03-29 18:32:35', '71c59d3d-3ca8-4aa7-a152-6b4d18df91f8.jpg');
INSERT INTO `image` VALUES ('39', 'http://wp.saas.hand-china.com/accounter/imgs/d540d601-bed4-43e8-9ebc-4440e58adbb9.jpeg', '2017-04-01 15:42:03', 'd540d601-bed4-43e8-9ebc-4440e58adbb9.jpeg');
INSERT INTO `image` VALUES ('40', 'http://wp.saas.hand-china.com/accounter/imgs/06dfde34-e106-41a3-b8f2-c0ff74bfed9c.jpeg', '2017-04-01 15:43:15', '06dfde34-e106-41a3-b8f2-c0ff74bfed9c.jpeg');
INSERT INTO `image` VALUES ('41', 'http://wp.saas.hand-china.com/accounter/imgs/f77d3beb-a7a0-4266-9322-d6c5838c703d.jpeg', '2017-04-01 15:43:48', 'f77d3beb-a7a0-4266-9322-d6c5838c703d.jpeg');
INSERT INTO `image` VALUES ('42', 'http://wp.saas.hand-china.com/accounter/imgs/ea5e8b53-561d-4242-b128-f709c9b7592e.jpeg', '2017-04-01 15:47:40', 'ea5e8b53-561d-4242-b128-f709c9b7592e.jpeg');
INSERT INTO `image` VALUES ('43', 'http://wp.saas.hand-china.com/accounter/imgs/fcaeaf17-287d-400a-bc22-e1e7a7dbcd6b.png', '2017-04-08 14:39:30', 'fcaeaf17-287d-400a-bc22-e1e7a7dbcd6b.png');
INSERT INTO `image` VALUES ('44', 'http://wp.saas.hand-china.com/accounter/imgs/ddc9d010-7b00-476f-8b91-6f5da60a22ee.jpeg', '2017-04-09 17:18:01', 'ddc9d010-7b00-476f-8b91-6f5da60a22ee.jpeg');
INSERT INTO `image` VALUES ('45', 'http://wp.saas.hand-china.com/accounter/imgs/e1daf8bb-87c6-4645-b588-2f66527e38b2.jpg', '2017-04-09 17:31:02', 'e1daf8bb-87c6-4645-b588-2f66527e38b2.jpg');
INSERT INTO `image` VALUES ('46', 'http://wp.saas.hand-china.com/accounter/imgs/588c58b5-be6f-489c-a5cb-a86dc078dacb.jpg', '2017-04-09 17:31:29', '588c58b5-be6f-489c-a5cb-a86dc078dacb.jpg');
INSERT INTO `image` VALUES ('47', 'http://wp.saas.hand-china.com/accounter/imgs/userbg1.jpg', '2017-04-09 20:56:31', 'userbg1.jpg');
INSERT INTO `image` VALUES ('48', 'http://wp.saas.hand-china.com/accounter/imgs/userbg2.jpg', '2017-04-09 20:57:43', 'userbg2.jpg');
INSERT INTO `image` VALUES ('49', 'http://wp.saas.hand-china.com/accounter/imgs/userbg3.jpg', '2017-04-09 20:57:58', 'userbg3.jpg');
INSERT INTO `image` VALUES ('50', 'http://wp.saas.hand-china.com/accounter/imgs/userbg4.jpg', '2017-04-09 20:58:00', 'userbg4.jpg');
INSERT INTO `image` VALUES ('51', 'http://wp.saas.hand-china.com/accounter/imgs/userbg5.jpg', '2017-04-09 20:58:03', 'userbg5.jpg');
INSERT INTO `image` VALUES ('52', 'http://wp.saas.hand-china.com/accounter/imgs/userbg6.jpg', '2017-04-09 20:58:06', 'userbg6.jpg');
INSERT INTO `image` VALUES ('53', 'http://wp.saas.hand-china.com/accounter/imgs/userbg7.jpg', '2017-04-09 20:58:08', 'userbg7.jpg');
INSERT INTO `image` VALUES ('54', 'http://wp.saas.hand-china.com/accounter/imgs/userbg8.jpg', '2017-04-09 20:58:10', 'userbg8.jpg');
INSERT INTO `image` VALUES ('55', 'http://wp.saas.hand-china.com/accounter/imgs/userbg9.jpg', '2017-04-09 20:58:12', 'userbg9.jpg');
INSERT INTO `image` VALUES ('56', 'http://wp.saas.hand-china.com/accounter/imgs/search_shouhui.png', '2017-04-09 21:02:25', 'search_shouhui.png');
INSERT INTO `image` VALUES ('57', 'http://wp.saas.hand-china.com/accounter/imgs/search_sheying.png', '2017-04-09 21:02:55', 'search_sheying.png');
INSERT INTO `image` VALUES ('58', 'http://wp.saas.hand-china.com/accounter/imgs/search_chahua.png', '2017-04-09 21:03:26', 'search_chahua.png');
INSERT INTO `image` VALUES ('59', 'http://wp.saas.hand-china.com/accounter/imgs/search_mengchong.png', '2017-04-09 21:04:48', 'search_mengchong.png');
INSERT INTO `image` VALUES ('60', 'http://wp.saas.hand-china.com/accounter/imgs/search_bizhi.png', '2017-04-09 21:05:18', 'search_bizhi.png');
INSERT INTO `image` VALUES ('61', 'http://wp.saas.hand-china.com/accounter/imgs/search_lvxing.png', '2017-04-09 21:05:41', 'search_lvxing.png');
INSERT INTO `image` VALUES ('62', 'http://wp.saas.hand-china.com/accounter/imgs/search_touxiang.png', '2017-04-09 21:06:24', 'search_touxiang.png');
INSERT INTO `image` VALUES ('63', 'http://wp.saas.hand-china.com/accounter/imgs/search_dongman.png', '2017-04-09 21:17:29', 'search_dongman.png');
INSERT INTO `image` VALUES ('64', 'http://wp.saas.hand-china.com/accounter/imgs/search_qita.png', '2017-04-11 17:38:30', 'search_qita.png');
INSERT INTO `image` VALUES ('65', 'http://wp.saas.hand-china.com/accounter/imgs/b0a1e7db-c0c4-4472-8465-9965b0ea33e4.jpg', '2017-04-16 20:49:33', 'b0a1e7db-c0c4-4472-8465-9965b0ea33e4.jpg');
INSERT INTO `image` VALUES ('66', 'http://wp.saas.hand-china.com/accounter/imgs/df64111d-205e-47e6-ba0b-4d74062236aa.jpeg', '2017-05-03 21:26:22', 'df64111d-205e-47e6-ba0b-4d74062236aa.jpeg');
INSERT INTO `image` VALUES ('67', 'http://wp.saas.hand-china.com/accounter/imgs/c90f0718-b63b-4b52-bc67-d9583f6efd28.jpg', '2017-05-03 21:33:04', 'c90f0718-b63b-4b52-bc67-d9583f6efd28.jpg');
INSERT INTO `image` VALUES ('68', 'http://wp.saas.hand-china.com/accounter/imgs/7fbe028b-4d91-4e5c-9d79-2a2f5574214e.jpg', '2017-05-03 21:35:37', '7fbe028b-4d91-4e5c-9d79-2a2f5574214e.jpg');

-- ----------------------------
-- Table structure for image_comment
-- ----------------------------
DROP TABLE IF EXISTS `image_comment`;
CREATE TABLE `image_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_from_id` int(11) DEFAULT NULL,
  `comment_to_id` int(11) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `ablum_image_id` int(11) DEFAULT NULL,
  `image_belong` int(11) DEFAULT NULL,
  `back_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_comment
-- ----------------------------
INSERT INTO `image_comment` VALUES ('9', '13', null, 'hahaha', '2017-04-01 14:53:12', '13', null, null);
INSERT INTO `image_comment` VALUES ('11', '10', '13', '你好呀 比卡丘', '2017-04-01 15:04:56', '13', null, null);
INSERT INTO `image_comment` VALUES ('13', '13', '13', '12345', '2017-04-01 15:20:25', '13', null, '9');
INSERT INTO `image_comment` VALUES ('14', '13', '10', '123123', '2017-04-01 15:25:14', '13', null, '11');
INSERT INTO `image_comment` VALUES ('15', '13', null, '123', '2017-04-18 16:39:51', '27', null, null);
INSERT INTO `image_comment` VALUES ('17', '13', null, '123', '2017-05-03 21:34:30', '28', null, null);
INSERT INTO `image_comment` VALUES ('18', '13', '13', '123', '2017-05-03 21:34:34', '28', null, '17');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `back_ground_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '手绘', '56');
INSERT INTO `tag` VALUES ('2', '摄影', '57');
INSERT INTO `tag` VALUES ('3', '插画', '58');
INSERT INTO `tag` VALUES ('4', '萌宠', '59');
INSERT INTO `tag` VALUES ('5', '壁纸', '60');
INSERT INTO `tag` VALUES ('6', '旅行', '61');
INSERT INTO `tag` VALUES ('7', '头像', '62');
INSERT INTO `tag` VALUES ('8', '动漫', '63');
INSERT INTO `tag` VALUES ('9', '其他', '64');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'openId 唯一的',
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `avatar_id` int(11) DEFAULT NULL COMMENT '头像id',
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '用户昵称',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birth` date DEFAULT NULL,
  `registration_date` date DEFAULT NULL COMMENT '注册时间',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `open_id` (`open_id`) USING BTREE,
  UNIQUE KEY `user_name` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', 'oulYY0V0F1iweP5hBDHINTIsqxJY', '2', null, '123', '1', null, null, null, 'Aksu', 'Xinjiang', null, '55');
INSERT INTO `user` VALUES ('11', 'oulYY0V0F1iwe', '3', null, '比卡丘[[%F0%9F%90%B3]]', '1', null, null, null, 'Aksu', 'Xinjiang', null, '54');
INSERT INTO `user` VALUES ('13', '', '68', null, '徐海林', '1', null, '2017-01-01', null, 'akesu', 'Xinjiang', 'haha', '47');

-- ----------------------------
-- Table structure for user_concern
-- ----------------------------
DROP TABLE IF EXISTS `user_concern`;
CREATE TABLE `user_concern` (
  `Uc_id` int(11) NOT NULL AUTO_INCREMENT,
  `Concern_user_id` int(11) DEFAULT NULL,
  `Be_concerned_user_id` int(11) DEFAULT NULL,
  `Flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Uc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_concern
-- ----------------------------
INSERT INTO `user_concern` VALUES ('1', '13', '11', 'Y');
INSERT INTO `user_concern` VALUES ('11', '13', '10', 'Y');
INSERT INTO `user_concern` VALUES ('13', '13', '13', 'N');
INSERT INTO `user_concern` VALUES ('14', '11', '13', 'Y');
