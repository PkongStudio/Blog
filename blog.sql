/*
Navicat MySQL Data Transfer

Source Server         : connection
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-02-14 18:42:51
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
  `artical_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `release_date` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发布日期',
  `summary` varchar(255) DEFAULT '' COMMENT '摘要',
  PRIMARY KEY (`artical_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'Email My PC - 通过发邮件远程控制与监控电脑 (屏幕截图/监视摄像头/远程关机)', '    		<p>\r\n\r\n</p><p>一直想找一款简单方便免费的电脑<a href=\"http://www.iplaysoft.com/tag/%E7%9B%91%E6%8E%A7\">监控</a><span style=\"line-height: 1.8;\">以及远程控制软件，可以</span><a href=\"http://www.iplaysoft.com/tag/%E8%BF%9C%E7%A8%8B\">远程</a><span style=\"line-height: 1.8;\">查看屏幕截图、</span><span style=\"line-height: 1.8;\"><strike>偷窥</strike></span><span style=\"line-height: 1.8;\">监视摄像头画面，并能远程关机即可。然而网上绝大多都是全功能的实时远程控制，虽能像真机一样操作，但并不想要啊！</span><span style=\"line-height: 1.8;\">想象一下，如果我们只需通过发一封</span><a href=\"http://www.iplaysoft.com/tag/%E9%82%AE%E7%AE%B1\">邮件</a><span style=\"line-height: 1.8;\">，电脑就会把屏幕截图、摄像头的画面回复给我；或者我发一句命令，电脑就会远程关机，或者启动某个程序。是不是更加的方便？</span><a href=\"http://www.iplaysoft.com/email-my-pc.html\">Email My PC</a><span style=\"line-height: 1.8;\">就是这么一款非常简单实用的邮箱远程控制/监控 PC 的小工具，能让你在任何地方任何设备通过邮件轻松监视和</span><a href=\"http://www.iplaysoft.com/tag/%E6%8E%A7%E5%88%B6\">控制</a><span style=\"line-height: 1.8;\">电脑……</span></p><p>\r\n\r\n</p><p>相比传统的 PC 远程控制软件 (如<a href=\"http://www.iplaysoft.com/anydesk.html\">AnyDesk</a><span style=\"line-height: 1.8;\">、</span><a href=\"http://www.iplaysoft.com/teamviewer.html\">TeamViewer</a><span style=\"line-height: 1.8;\">、</span><a href=\"http://www.iplaysoft.com/microsoft-remote-desktop.html\">微软远程桌面</a><span style=\"line-height: 1.8;\">、</span><a href=\"http://www.iplaysoft.com/splashtop.html\">Splashtop</a><span style=\"line-height: 1.8;\">等)，</span><span style=\"line-height: 1.8;\">Email My PC</span><span style=\"line-height: 1.8;\">(简称：EMP) 完全是另辟途径，彻底抛弃了图形化操作方式，只通过邮件即可与自己的电脑“沟通”进行远程控制或监视屏幕。</span></p><p><img style=\"max-width:100%;\" src=\"http://ips.chotee.com/wp-content/uploads/2016/emailmypc/emailmypc.jpg\"></p>\r\n		<p>\r\n\r\n</p><p>通过邮件远程控制电脑有几个好处，首先几乎在任何</p><p><a href=\"http://www.iplaysoft.com/tag/%E6%89%8B%E6%9C%BA\">手机</a></p><p><p></p></p><p>、电脑上无需安装客户端就能收发邮件，无需高速的网络、也不需消耗大量网络流量。虽然&nbsp;Email My PC 目前能远程做的事比较有限，但它提供的功能对于很多人来说已经足够实用了，或者说，在某些特定的场景下，Email My PC 远远比传统的远程控制软件方便得多！</p><p><br></p>', '2016-02-14 16:58:50', '有了 Email My PC，远程控制与监控电脑只需一封邮件那么简单！');
INSERT INTO `article` VALUES ('2', '生命线 LifeLine 1/2/静夜全集中文版下载', '    		<p>\r\n\r\n</p><p>\r\n\r\n</p><p>在如今<a href=\"http://www.iplaysoft.com/category/game\">游戏</a><span style=\"line-height: 1.8;\">做得越来越炫丽的今天，很多游戏都以画面作为卖点了。而今天推荐的则是一个反行其道但却非常独特有意思的「</span><span style=\"line-height: 1.8;\">文字冒险</span><span style=\"line-height: 1.8;\">」</span><a href=\"http://www.iplaysoft.com/tag/%E7%A7%91%E5%B9%BB\">科幻</a><span style=\"line-height: 1.8;\">/魔幻游戏系列——生命线！目前已推出三部作品。</span><span style=\"line-height: 1.8;\">生命线</span><span style=\"line-height: 1.8;\">(LifeLine)&nbsp;是一部纯文字通讯形式的冒险生存类游戏，但这并不妨碍它成为一款佳作！它曾获得</span><a href=\"http://www.iplaysoft.com/go/applestore\">苹果</a><span style=\"line-height: 1.8;\">多次推荐，在</span><a href=\"http://www.iplaysoft.com/tag/%E8%AE%BE%E8%AE%A1\">设计</a><span style=\"line-height: 1.8;\">上颇具</span><a href=\"http://www.iplaysoft.com/tag/%E5%88%9B%E6%84%8F\">创意</a><span style=\"line-height: 1.8;\">。生命线1(初代)讲述了主角泰勒的飞船在一外星球坠毁，它的</span><a href=\"http://www.iplaysoft.com/tag/%E9%80%9A%E8%AE%AF\">通讯</a><span style=\"line-height: 1.8;\">设备巧合地与你联系上了，希望你能远程协助他解决各种难题，让他能在恶劣的外星环境中存活下来；生命线2代则是帮助魔法少女阿瑞卡拯救弟弟并复仇……</span></p><p><br></p>', '2016-02-12 17:39:23', '帮主角活下去！扣人心弦的文字通讯冒险生存游戏');
INSERT INTO `article` VALUES ('3', 'Day One 2', '    		<p>\r\n\r\n</p><p>\r\n\r\n</p><p>\r\n\r\n</p><p>无论是日<a href=\"http://www.iplaysoft.com/tag/%E7%94%9F%E6%B4%BB\">生活</a><span style=\"line-height: 1.8;\">中的琐事，还是一生难忘的重要场合，很多事很多情都值得记下来待日后再回过头来细细回味。那么，一款好用的</span><a href=\"http://www.iplaysoft.com/tag/%E6%97%A5%E8%AE%B0\">日</a><span style=\"line-height: 1.8;\">应用就显得至关重要了。</span><span style=\"line-height: 1.8;\">Day One 2</span><span style=\"line-height: 1.8;\">是</span><a href=\"http://www.iplaysoft.com/os/ios-platform\">iOS</a><span style=\"line-height: 1.8;\">和</span><a href=\"http://www.iplaysoft.com/os/mac-platform\">OSX</a><span style=\"line-height: 1.8;\">平台上一款屡获殊荣的</span><span style=\"line-height: 1.8;\">日记软件 APP</span><span style=\"line-height: 1.8;\">，凭借出色的</span><a href=\"http://www.iplaysoft.com/tag/%E8%AE%BE%E8%AE%A1\">设计</a><span style=\"line-height: 1.8;\">、简洁易用的功能，清新优雅而不哨的界面，它能让您记录生活日记成为一件简单的乐事。Day One 自上架以来在数年时间获得了无数人的喜爱，俨然已成为“</span><a href=\"http://www.iplaysoft.com/go/iphone\">iPhone</a><span style=\"line-height: 1.8;\">和</span><a href=\"http://www.iplaysoft.com/go/mac\">Mac</a><span style=\"line-height: 1.8;\">上最佳的日记软件”了……</span></p><p><br></p>', '2016-02-02 17:39:29', '清新优雅的个人日记应用，让生活满满的都是回忆！');
INSERT INTO `article` VALUES ('4', '3D Touch 屏幕电子秤的实现', '    		<p>\r\n\r\n</p><p>自从 iPhone 6s 发布以来，不少开发者都在研究用 3D Touch 屏幕检测物体重量的可行性。虽然从理论上来说硬件是完全支持的，但是 Apple 却一直不在软件方面提供支持。两个月前国外有人利用私有 API 强行实现了它，可却被 App Store 拒绝上架，大家只能无奈地看看演示视频来感受这个神奇的功能。</p><p>iPhone 6s + 铁勺子 = 电子秤？虽然听起来不可思议，可就在今天上午，我无意间发现了用 Javascript 检测 3D Touch 屏幕压力的方法，并且在浏览器里直接实现了电子秤功能！不需要上架审核，也不用下载任何应用，只要有一把普通的金属勺子，在 iPhone 6s 上用自带的 Safari 浏览器打开</p><p><a href=\"https://www.dandyweng.com/playground/3d-touch-scale/\">这个页面</a></p><p><p></p></p><p>（或扫描这个二维码）就能开始玩啦！</p><p>\r\n\r\n</p><h3>使用方法</h3><p>第一步：先将手机放在平坦的表面上，再把金属勺子轻轻地放在屏幕的感应区上；</p><p>第二步：记下勺子的重量，拿开勺子，拉动屏幕上方的“皮重调节”滑块至抵消勺子的自身重量的位置；</p><p>第三步：再把勺子轻轻放回感应区，此时重量应显示为 0，如有误差则重复第二步；</p><p><p></p></p><p>第四步：拿起勺子，把要称重的物体放在勺子上，再一起轻放在感应区上即可。</p>\r\n		<p><br></p>', '2016-01-08 17:52:28', 'iPhone 6s + 铁勺子 = 电子秤？');
INSERT INTO `article` VALUES ('5', '二十岁', '    		<p>\r\n\r\n</p><p>二十岁生日，这个我一直觉得非常遥远的日子，忽然就来到眼前。相比之前令我期待许久的十八岁，二十岁却或多或少给我一种措手不及的感觉。这不仅意味着我不再是一个十几岁的少年，而是我的人生由此步入了一个全新的阶段。之前的我可以心无旁骛，仅专注于学习和提高自己，而在这个新阶段里则需考虑更多——立业，甚至成家。这也意味着，从现在开始我要迈上一个新的台阶，以一个真正成年人的标准来要求自己。在新标准下，能拍出好看的摄影作品或者设计出精美的网站不再是值得自豪的事情。面对接下来的挑战，我深知自己还有太多不足之处，但却充满信心。</p><p>前路漫漫，还有太多风景等待着我去探索和发现。</p><p><img style=\"max-width:100%;\" src=\"https://dn-ssl-dw-blog.qbox.me/files/2015/10/selfie-at-mount-dongda.jpg\"></p><p><p></p></p><p>&nbsp;</p>\r\n		<p><br></p>', '2015-10-14 17:52:37', '二十岁生日，这个我一直觉得非常遥远的日子，忽然就来到眼前。');
INSERT INTO `article` VALUES ('6', 'iPod classic', '    		<p>\r\n\r\n</p><p>第一次见到 iPod 的时候，我的年龄应该还是个位数。记得那时第一款彩屏 iPod 刚刚发布，竟然有 60G 的容量——当时我的 MP4 只有 512M，家里台式电脑的硬盘也只有 20G 而已。对于那时的我来说，60G 简直就是个天文数字。当然，它的价格也不比天文数字小多少。从那时起，iPod 在我心目中就是“神一般的存在”：以后有钱了一定要买一台！</p><p>十年时光荏苒，不知不觉间，存储容量进入了 TB 时代，我也成了一个拥有各种 Apple 产品的“果粉”，iPhone 上的一个 app 就能实现甚至超越 iPod 的所有功能。不过，也许是我对乔布斯时代依然有着某种情结，心底里还是想买一台 iPod classic，毕竟转盘（clickwheel）也是他的经典设计之一。可理性却告诉我，它已经没有多少实用价值，买来也不会常用的。</p><p><p></p></p><p>这个问题让我这个典型的天秤座一直纠结到去年九月十日——iPod classic 悄然停售的日子，Tim Cook 对此给出的解释是：</p>\r\n		<p>\r\n\r\n</p><p><p></p></p><blockquote><p>We couldn’t get the parts any more. They don’t make them any more. We would have to make a whole new product… the engineering work to do that would be massive. The number of people who wanted it is very small.</p></blockquote><p><br></p>', '2014-12-17 17:52:45', '第一次见到 iPod 的时候，我的年龄应该还是个位数。');
INSERT INTO `article` VALUES ('7', '人品第一，作品第二', '    		<p>\r\n\r\n</p><p>说来惭愧，转眼间从发布上一篇博文至今已经八个月有余，2014 年也在匆匆碌碌之中过去了一大半。直到最近两天，才终于有了些心境，挤出些时间，静心坐下来设计与开发我个人网站的今年新版本。在新版上线之前，我觉得有必要先谈一谈我对某些网页设计爱好者“山寨”我网站的看法。</p><p>网站去年的版本刚上线没几天，因为一个偶然的机会，我发现有人直接复制我的前端代码和图片等静态文件，稍作修改就变成了自己的个人网站。居然会有人山寨我的网站？这激起了我的好奇心，于是开始运用一些技术手段进行监测，结果大大超乎我的想像：山寨还真不是一般的多。除了原封不动地复制所有前端代码之外，某些和我有相同兴趣爱好的人，甚至连我的文字说明和摄影作品都不放过——只是修改了自我介绍而已，令人哭笑不得。更有甚者，竟将所有前端代码都应用到了一个商业项目中，成为某“网页设计工作室”的官方网站！</p><p><p><a href=\"https://dn-ssl-dw-blog.qbox.me/files/2014/08/copycat_deleted.jpg\"></a></p></p><p>每当我发现一个新的“山寨网站”都会截图留念，在此分享其中一小部分，且供大家一笑，如有冒犯，可随时联系我删除：</p>\r\n		<p><br></p>', '0000-00-00 00:00:00', '说来惭愧，转眼间从发布上一篇博文至今已经八个月有余，2014 年也在匆匆碌碌之中过去了一大半。');
