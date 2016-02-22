/*
Navicat MySQL Data Transfer

Source Server         : connection
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-02-22 17:09:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `release_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布日期',
  `summary` varchar(255) DEFAULT '' COMMENT '摘要',
  `cover` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('13', '宇宙背景微光中寻获引力波印迹！', '						&lt;p&gt;&lt;img style=&quot;max-width:100%;&quot; src=&quot;http://3.im.guokr.com/xVYA_ZWpmtsUcL976XwAs3symA3V4kWUrEouWlpIb-4CCAAARwQAAEpQ.jpg?imageView2/1/w/640/h/341&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n	\r\n			&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;p&gt;&amp;nbsp; 北京时间3月18日凌晨，美国哈佛－史密松天体物理中心召开新闻发布会，宣布了一项重大发现：他们在宇宙微波背景辐射中找到了由引力波留下的B模式极化信号。这一发现堪称宇宙学研究的“圣杯”，被誉为是“观测宇宙学又一个划时代的发现”。那么，这一发现到底是怎么回事，又有着什么样的意义呢？来看看天文学家Phil Plait在他名为“BadAstronomy”的博客上写下的这篇评论文章吧。&lt;/p&gt;&lt;/blockquote&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;这可是个大新闻：天文学家已经正式宣布，他们首次看见了极早期宇宙中“暴胀”的直接证据，破解了宇宙演化历史的一个全新篇章。这一发现还在很深的层次上将相对论和量子力学联系在一起，这是以前从来没有出现过的事情。&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p&gt;这个消息非常重要，也非常有趣。不过，它也极为艰深——大概是我曾经写过的最复杂的发现。这跟希格斯玻色子可不一样，至少后者还能用一两句话说清楚个大概。但这一新发现揭开了宇宙深化历史中一个关键的节点，对物理学也有着深远的影响。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;	    		\r\n			', '2016-02-21 17:37:07', '引力波是什么？为什么人们千方百计想要探测到它？听引力波研究者亲自讲述，这已逾一个世纪的艰难求索。 ', '26');
INSERT INTO `article` VALUES ('14', '治愈人心的美式裸熊', '																			    		\r\n			&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;本作主人公是三只拟人化的熊，分别是热血灰熊Grizzly（埃里克·埃德尔斯坦 Eric Edelstein 配音），宅男熊猫panda（鲍比·莫伊尼汉 Bobby Moynihan 配音），全能北极熊Ice Bear（迪米特利·马丁 Demetri Martin 配音）。三个熊兄弟一同住在森林的一个山洞里，常常碰到出其不意的事情，它们既有人类朋友Chloe，也有大脚怪朋友查理。三个熊兄弟按照周围人类的行为准则，竭尽所能成为人类社会的一员。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p&gt;　　本动画以每集一个10分钟独立小故事的形式，讲述了三只熊的日常故事。本作改编自Daniel Chong创作的网络漫画《The Three Bare Bears》&lt;/p&gt;	    		\r\n			&lt;p&gt;&lt;br&gt;&lt;/p&gt;	    		\r\n				    		\r\n				    		\r\n				    		\r\n			', '2016-02-21 17:37:50', '和白熊咖啡厅气质迥异的动画，但同样幽默又温情，还萌得要死。其实人也是这样，性格相貌各不相同，但内心可爱的本质相通。', '23');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` smallint(6) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '0', '昵称1', '内容1', '2016-02-20 15:34:39');
INSERT INTO `comment` VALUES ('2', '1', '0', '昵称2', '内容2', '2016-02-20 15:34:55');
INSERT INTO `comment` VALUES ('3', '1', '1', '昵称3', '内容3', '2016-02-20 15:35:26');
INSERT INTO `comment` VALUES ('4', '1', '1', '昵称4', '内容4', '2016-02-20 15:35:47');
INSERT INTO `comment` VALUES ('5', '1', '3', '昵称5', '内容5', '2016-02-20 15:36:39');

-- ----------------------------
-- Table structure for msg_board
-- ----------------------------
DROP TABLE IF EXISTS `msg_board`;
CREATE TABLE `msg_board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_board
-- ----------------------------
INSERT INTO `msg_board` VALUES ('1', '昵称1', '留言内容1', '0', '2016-02-22 14:43:29');
INSERT INTO `msg_board` VALUES ('2', '昵称2', '留言内容2', '0', '2016-02-22 14:43:42');
INSERT INTO `msg_board` VALUES ('3', '昵称3', '留言内容3', '0', '2016-02-22 14:43:53');
INSERT INTO `msg_board` VALUES ('4', '昵称4', '留言内容4', '2', '2016-02-22 14:44:22');
INSERT INTO `msg_board` VALUES ('5', '昵称5', '留言内容5', '4', '2016-02-22 14:44:42');
INSERT INTO `msg_board` VALUES ('6', '昵称6', '留言内容6', '2', '2016-02-22 14:45:04');
INSERT INTO `msg_board` VALUES ('7', '昵称7', '留言内容7', '0', '2016-02-22 15:47:15');
INSERT INTO `msg_board` VALUES ('8', '昵称8', '留言内容8', '0', '2016-02-22 15:47:33');
INSERT INTO `msg_board` VALUES ('9', '昵称9', '留言内容9', '0', '2016-02-22 15:47:36');
INSERT INTO `msg_board` VALUES ('10', '昵称10', '留言内容10', '0', '2016-02-22 15:47:43');
INSERT INTO `msg_board` VALUES ('13', '小熊', '很漂亮', '0', '2016-02-22 17:03:03');
INSERT INTO `msg_board` VALUES ('14', '85632', '886', '0', '2016-02-22 17:03:16');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', 'http://localhost/Blog/Public/image/1.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('2', 'http://localhost/Blog/Public/image/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('3', 'http://localhost/Blog/Public/image/grivate wave.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('9', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('10', 'http://localhost/Blog/Public/image/cover/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('11', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('12', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('13', 'http://localhost/Blog/Public/image/cover/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('14', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('15', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('16', 'http://localhost/Blog/Public/image/cover/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('17', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('18', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('19', 'http://localhost/Blog/Public/image/cover/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('20', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('21', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('22', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('23', 'http://localhost/Blog/Public/image/cover/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('24', 'http://localhost/Blog/Public/image/album/ice bear.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('25', 'http://localhost/Blog/Public/image/album/grivate wave.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('26', 'http://localhost/Blog/Public/image/cover/grivate wave.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('27', 'http://localhost/Blog/Public/image/album/grivate wave.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('28', 'http://localhost/Blog/Public/image/album/girl.jpg', '2016-02-21 23:57:35');
INSERT INTO `photo` VALUES ('29', 'http://localhost/Blog/Public/image/cover/girl.jpg', '2016-02-21 23:57:35');
