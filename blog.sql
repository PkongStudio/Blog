/*
Navicat MySQL Data Transfer

Source Server         : connection
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-03-05 20:16:40
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'c72b8737496b4ecbe5a3e9d994e9b6e1');
INSERT INTO `admin` VALUES ('2', 'sunmile', '4cb6d3daef6e45885a3c5a93a6015517');

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
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('23', '天黑', '                                                      \r\n                &lt;p&gt;天白与天黑，天亮：what&amp;nbsp;the&amp;nbsp;fuck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;          \r\n                ', '2016-03-05 19:36:18', '天白与天黑，天亮：what the fuck', '128', '4');
INSERT INTO `article` VALUES ('24', '天空', '                                                                            \r\n                &lt;p&gt;天空就是填空啦哈哈哈&lt;/p&gt;          \r\n                &lt;p&gt;&lt;br&gt;&lt;/p&gt;          \r\n                ', '2016-03-05 19:34:59', '天空就是填空啦', '126', '4');
INSERT INTO `article` VALUES ('25', '古龙式的，聊骚的爱情', '                                                                                                  \r\n                &lt;p&gt;&lt;span style=&quot;line-height: 1.8;&quot;&gt;许多人说，古龙是个直男癌。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;因为，据说，古龙的女主角都很爱脱衣服，没事就脱一精光，在男主角面前一站。这种时候，古龙最喜欢描述女人“修长的双腿”了。而且，似乎，古龙的男主角，都有姑娘愿意投怀送抱。陆小凤如是，李寻欢如是（孙小红和蓝蝎子不提，大欢喜女菩萨都表示牡丹花下死做鬼也风流），当然还有身边随时带着三个、外面不知道多少位的楚留香。也有人说：古龙写了很多女人，其实不太懂女人。&lt;/p&gt;&lt;p&gt;梁羽生先生的爱情，大多是才子佳人式的，温柔含蓄，久而成情。唐经天与冰川天女如是。又或是正派遇到邪派对冲式的，漩涡激荡，就此不拔。卓一航与练霓裳如是。金世遗与厉胜男如是。但爱上了，就是爱上了。从此成了搭档，一起出生入死去了。偶尔成为对手。所以女主角出场，你都不必担心，“他一定会和男主角好的，放心吧！”然后拉郎配去了。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;金庸先生笔下，爱情确定关系，基本分为三类。其一，“只有你对我好”，这番感情，最初出于感激。比如黄蓉爱上了郭靖，比如程灵素爱上了胡斐，比如阿朱爱上了萧峰，比如王语嫣后来跟了段誉。感动于别人对自己的好，于是投注了感情。其二，“女孩子被男生占了便宜”，比如苗若兰与胡斐在床上遇到，赵敏被张无忌摸了脚；虚竹与梦姑在冰窖里快乐无边，陈家洛看到了香香公主洗澡，陆无双被杨过接了骨。其三，则是男主角天生的光环了，即“你武功好，人也好。”“你长得漂亮，我喜欢你”，比如，周芷若看了光明顶大战就爱透了张无忌；反过来，段誉看了玉像就痴迷了王语嫣，韦小宝见了一眼阿珂就迷上了。&lt;/p&gt;&lt;p&gt;感情好了之后呢？金庸笔下的爱情，好了就是好了。情侣们一旦定情，很少有反复打闹。伴侣们过起日子，更像是搭档，克服眼前难关。他们大多时候，在商量各类任务进度。黄蓉偶尔和郭靖闲聊些故事，令狐冲有时跟任盈盈说几句没正经的调情，韦爵爷时不常跟双儿“大功告成”。其他时候，金庸小说的人物，谈个恋爱，都正经得很。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;反过来呢，古龙笔下的楚留香与陆小凤们，最典型的感情，是这样的。&lt;/p&gt;&lt;p&gt;某帅哥落拓不羁地一个人呆着。一个漂亮女孩子，在一个挺特殊的地方——午夜长街、游船甲板、禁宫内院，甚或楚留香/陆小凤在洗澡的时候——遇到她。这多半是个或者很喜欢笑，或者冷若冰霜的女孩。于是俩人在一个相当突兀的环境下见面。然后，他俩开始唠，唠了很多，女孩子会突然做一个很惊人的动作——凑前亲他一下也好，抱他一下也好，甚至咬他一口、打他一拳。然后楚留香，就怔住，或者苦笑一下，或是微笑一下。心里已经喜欢上这女孩子了，但嘴上不说。女孩子呢，偶尔选择矜持，听他念叨几句，然后他便会转着弯夸你，比如，你说自己长得不好看，楚留香/陆小凤就会叹一口气，说：“现在的女孩子，越来越会撒谎了。”但更多的时候，女孩子会选择主动。最终搞定楚留香的张洁洁，选择是外罩一件披风，里面什么都没有——当然那是一种极端策略。大多数时候，身为女主角，你只要很坦率地，不羞涩地表达自己的喜欢，楚留香便会苦笑，一副拿你没办法的样子。从此你便赢了，在这个故事里，你只要随时一副“我们俩比比谁更坦白”，便会让古龙式的浪子们唯命是从。&lt;/p&gt;&lt;p&gt;所以梁羽生式的感情，纯。金庸式的感情，正。古龙式的感情，骚，聊骚的骚，还有点飘，但有味道。&lt;/p&gt;&lt;p&gt;古龙总让他笔下的浪子，很擅长跟女孩聊天，但他其实并不那么擅长对付女人。楚留香/陆小凤们，最后总是可以逃脱坏女人的诱惑，可以漂亮地拒绝蛇蝎美女的陷阱，可是，遇到主动的可爱女孩子，却没了办法。因为表面再怎么从容，楚留香/陆小凤们都还是男孩子。男孩子会去欺负自己喜欢的、看起来娇怯怯的女孩子，但点到为止；但对自己心爱的、主动的女孩子，会不知如何是好。他们于是喜欢和女孩子聊天，跟她相爱，最后反而被她们牵着走。&lt;/p&gt;&lt;p&gt;当然，这些女孩子于楚留香/陆小凤们，都是过去。没一个是真正属于他的，跟他好过，聊骚过，如此而已。古龙笔下的浪子们，也很少试图去绑住一个女人。——倒是女孩子们总试图去绑住他。这就是古龙式的浪子。古龙式的007。楚留香的爱情。很突兀，很戏剧性，建立在斗嘴之上的爱情。这也是古龙式的女孩子：有时温柔有时泼辣，但大体而言，很大胆，很有主见。于是他们的爱情，通常是聊出来的。大概也是武侠小说里，对话最多的爱情。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;楚留香/陆小凤们，很少像金庸与梁羽生先生笔下的男女主角，组成搭档，联手出击。楚留香有自己那三位红颜知己，但和他好的姑娘们，不会跟着他到处走。哪怕真的相爱了，也不会“就这样好了，以后啥也不说了”。他们还会一直聊，聊到书的结尾。他们的风流不羁背后，隐含着一小份平等与自由——楚留香/陆小凤从来没什么占有欲。他们会被过于主动的女孩子吃定，然后一直跟她们聊，谈一整本书的恋爱，是真的“谈”恋爱。&lt;/p&gt;&lt;p&gt;最后，楚留香遇到张洁洁，就被吃定了。没有感激，没有容貌，没有才子佳人，只是聊，看对了眼，在相处中找到了乐趣。这恐怕也是最接近真实的感情。真实的世界里，没有那么多的英雄救美，没有那么多不小心看到姑娘洗澡，没有那么多“我一个人长大只有你爱我”。真实世界里的感情，就是像楚留香/陆小凤这样，一句一句话痨中，慢慢聊出来的感情，从女的朋友，慢慢变成女朋友的过程。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;一个典型的古龙笔下主角的感情情景，差不多是下面这样的——嗯，我随便自己写的，不用较真。&lt;/p&gt;&lt;p&gt;长街夜雨。楚留香一向不介意走夜路，因为他这样有名的人，走夜路时，总会遇到一些有趣的事。他还有些得意，因为他刚灌醉了胡铁花，自己也有些微醺。男人对自己喝不醉这种事，总不免有些得意的。何况雨淡如雾，如轻烟。“但是甜儿免不得要骂我。”他正在这么想着，听到身后仿佛一叶落地。旁人听不见，楚留香却听得见的。他的后脖颈忽然寒毛直立，一柄毒蛇般的剑，掠过了他的脖子——世上能躲过这一剑的人并不多。好在他是楚留香。&lt;/p&gt;&lt;p&gt;等他掠起、落地、回身看时，剑已收起。一双妙目正凝望着他。楚留香有些意外。虽然他被偷袭过许多次，但很少有偷袭者长得这么可爱：一个头扎双鬏的女孩子。如果她肯笑一笑，一定很美。可惜她此时冷若冰霜，正瞪着楚留香，好像楚留香刚偷了她的胭脂盒。楚留香忽然说：“是点苍派。”女孩子道：“哦？”楚留香道：“这么狠辣的剑术，天下只有点苍十九式才做得到。”女孩子道：“只凭这一剑，就看得出来么？”楚留香道：“然而又不是点苍派。”女孩子道：“你先说是点苍，又不是点苍。若非我知道你是楚留香，定要当你是个疯子。”楚留香悠然道：“刺客用的剑术，从来就未必是本门师传的。一击而中或者一击不中，都能用此来嫁祸于人。”&lt;/p&gt;&lt;p&gt;倏忽之间，他双腿不动，却已经离那女孩子只有一尺远近了，接着道：“何况你的口音不是云南人，而点苍派的张佳玮掌门，是只收云南弟子的。”他倏然逼近，那女孩子却并不惊慌，只凝目看他，道：“那你还说，是点苍派？”楚留香笑了，笑得像个老狐狸。他道：“因为我知道你并非主谋。你也不过希望别人误会是点苍派要刺杀我。所以我就难得糊涂，就当你是点苍派的好了。何况，我也猜不出来。”&lt;/p&gt;&lt;p&gt;女孩子道：“哦？”楚留香耸了耸鼻子，道：“我鼻子不算灵光，所以本想欺近你身旁，闻出你身上的味道。女孩子的剑法可以作假，身上的味道却是假不了的。可是我只闻到了一片混杂的香粉味道。你是早下了决心，不让我知道你来历的。”他挥了挥手，道：“所以你走吧。我不太会追问女孩子。料来你们既然要对我动手，这也不会是最后一次。只希望下次与我动手的，莫要是你。”话音未落，那女孩子忽然欺近他面前，在他唇上亲了一下。未等他反应过来，那女孩子又扬手，打了他一耳光。楚留香很久没被女孩子亲过了，也很久没被女孩子打过耳光了。他脸上犹且热辣辣时，那女孩子已经掠上屋檐，忽然回头一笑，楚留香忽然觉得，她笑起来时，比冷若冰霜的时候好看得多。他几乎从没见过有女孩子笑得这么好看。“下次见面时，我看你还会不会这么自作聪明！”&lt;/p&gt;&lt;p&gt;楚留香还未来得及问，那女孩子已经一掠而起。自作聪明？楚留香决定不去多想了，这女孩子是不是点苍派的，是否要嫁祸给点苍派，他都决定不再想了。因为多想就是自作聪明。他摸了摸鼻子，刚觉得自己这么做挺聪明，忽然又哑然了：倘若他不去多想，这是不是又一种自作聪明呢？&lt;/p&gt;&lt;p&gt;这时雨已停，月光微现，却淡如星光。星光淡如梦，情人的梦。楚留香又忍不住想到刚才的那个女孩子。她笑起来真是好看。好看得只要一闭眼就能想起来，如在目前似的。&lt;/p&gt;&lt;p&gt;然后，转出长街，那个笑起来很好看的女孩子真的就在目前了。楚留香怔住。那个女孩子却一副落落大方的样子，好像从来没有拔剑刺过他似的，道：“香帅。”楚留香道：“是。”那女孩子道：“我们去喝酒吧。”楚留香想都不想，道：“好！”那女孩子眼珠转了转，道：“你不想问我，为什么要跟你喝酒么？”楚留香道：“我这辈子学到最重要的一件事便是，有漂亮女孩子请你喝酒时，千万不要拒绝。”他叹了口气，又道：“何况，有个女孩子告诉过我，再见到她时，千万莫要自作聪明。”忽然之间，他的左手便被那女孩子挽起来了。他还记得这只挽着他的手，刚才抽过他的耳光。那女孩子道：“我们走吧。”她忽又压低声音道：“如果我喝多了，也许会告诉你。”楚留香道：“告诉我什么？”女孩子道：“我为什么要自称点苍派的人来刺杀你。”楚留香苦笑道：“我想来想去，实在没有一点拒绝的理由了。”&lt;/p&gt;&lt;p&gt;月光淡淡地，他们俩就像一对情侣似的走向酒店。楚留香忽然心跳起来。他挽过许多女孩子的手，但很少这么心跳。他隐约间觉得有个阴谋在等着他，也想抽出手来，转身就跑走。但他还是任那女孩子挽着。楚留香叹了口气，道：“看来我又要有麻烦了。”&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;          \r\n                          \r\n                          \r\n                ', '2016-03-05 19:30:05', '许多人说，古龙是个直男癌。', '124', '4');
INSERT INTO `article` VALUES ('27', '治愈人心的美式裸熊', '                                                                                                                                                                                							    		\r\n			&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;首先吼一句：第二季啥时候出啊！！&lt;/p&gt;&lt;p&gt;萌翻人不偿命的动画，通常来自霓虹国，上个月偶然看到某大洋彼岸的小国也出了部动漫，而且是网漫改编的动漫，饶有兴趣——一看——就深陷其中的。&lt;/p&gt;&lt;p&gt;喜欢的第一点是人物——噢不是动物塑造。棕熊熊猫北极熊个性鲜明且有连贯性，相辅相成太可爱！第二点是配音，尤其是——北极熊。他不常说话，台词最少，而每次说话都是一句，永远是以&quot;Ice Bear&quot;代自称开头，声音低沉平静，相信很多粉丝已经对配音演员产生了幻想哈哈。&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p&gt;一集一个故事，有些故事紧贴现实社会的问题，欢乐之余也有所思考，很赞！&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;	    		\r\n			          \r\n                          \r\n                          \r\n                          \r\n                          \r\n                          \r\n                          \r\n                          \r\n                ', '2016-03-03 14:33:14', '和白熊咖啡厅气质迥异的动画，但同样幽默又温情，还萌得要死。其实人也是这样，性格相貌各不相同，但内心可爱的本质相通。', '122', '1');
INSERT INTO `article` VALUES ('28', '宇宙背景微光中寻获引力波印迹！', '                                                                  				    		\r\n			&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;400多年前，当伽利略第一次将望远镜指向星空时，一个新的时代开启了。从那时起，天文学家用一个又一个震撼人心的观测不断拓展着人类的视野。经过漫长的发展和技术进步，今天的天文观测早已今非昔比，然而本质上，观测星空的天文学家手里的工具基本上万变不离其宗：用越来越大的口径接收来自天体的光子，并用越来越灵敏的探测器记录它们。&lt;/p&gt;&lt;p&gt;而今年，在爱因斯坦提出广义相对论整整一个世纪的历史性时刻，我们站在了一个新时代的起点：通过位于美国列文斯顿和汉福德的高新引力波探测器，人类有望在不远的将来捕捉到时空的涟漪，用一种前所未有的方式看待这个世界。&lt;/p&gt;&lt;h2&gt;那么，什么是引力波呢？&lt;/h2&gt;&lt;p&gt;要理解引力波，其实也不难。&lt;/p&gt;&lt;p&gt;用一句话来概括广义相对论，那就是：时空命令物质如何运动，而物质引导时空如何弯曲。当物质的分布改变时，时空也会相应变化，这一变化以光速传播开去，就好像在平静的湖面上丢下一粒小石子，湖面就会有一圈波浪向外荡去，时空也会将涟漪向外传开，这便是引力波了。&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p&gt;关于引力波的强度，爱因斯坦也很快计算了出来——非常微弱。假设迎面走来一串引力波，你会变高变瘦，接下来变矮变胖，再变高变瘦⋯⋯ 当然，想靠引力波改变体型是不可能了，除非你就站在引力波波源附近（友情提醒：黑洞有100种方法让你在它旁边活不下去，如果你想试试，黑洞是不介意陪你玩玩的），否则引力波只会把你的身高拉高（然后压扁）那么一点点——大概就是一个氢原子的100亿分之一吧。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/Blog/Public/image/album/1457016436blob&quot; style=&quot;max-width: 100%; float: none; width: 576px; height: 576px;&quot; class=&quot;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;h2&gt;引力波是物理实际吗？&lt;/h2&gt;&lt;p&gt;然而，接下来爱因斯坦却犯了难。在引入线性、低速等近似之后，得到的这么一个叫做引力波的东西，到底是数学上的一个游戏，还是一种物理的实际？要知道，通过坐标变换，似乎是可以消除引力波的呀！&lt;/p&gt;&lt;p&gt;回首100年前，那是很少有人能真正理解广义相对论的时代，甚至爱因斯坦本人在一些问题上也犯下不少错误。最著名的例子就是宇宙学常数Λ了。当初为了维持静态宇宙而人为引入的参数，在哈勃用观测事实向世人证明宇宙的膨胀后，被爱因斯坦不无遗憾地承认为其“一生最大的错误”。&lt;/p&gt;&lt;p&gt;在接下来的几年中，爱因斯坦几次修改对引力波的判断。广义相对论的开山鼻祖尚且摸不着头脑，别的科学家更是莫衷一是。引力波强度微弱暂且不论，在它是否存在都有争议的情况下，任何严肃的探测引力波的努力都很难让人信服。&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p&gt;直到 1955 年费曼在一个会议上提出了著名的“粘珠”思想实验后，这一情况才基本尘埃落定。费曼的论证是这样的：想象一个珠子穿在一根柱子上，并且可以自由移动，垂直于柱子方向如果有引力波经过，将会产生相对于柱子中心的引潮力。而珠子在引潮力的作用下会相对柱子运动，如果有摩擦就会产热，所以引力波是物理实际的。一干物理学家要求费曼说人话，于是有一个叫做赫尔曼·邦迪的青年帮费曼总结了一下：引力波在理论上会导致物体摩擦生热，热就是能，它的源头只能是引力波，所以引力波肯定有能量。如果引力波仅仅是一个数学游戏，它不可能无中生有地产生能量，所以它是有物理对应的。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;          \r\n                          \r\n                          \r\n                ', '2016-03-03 14:48:22', '引力波是什么？为什么人们千方百计想要探测到它？听引力波研究者亲自讲述，这已逾一个世纪的艰难求索。 ', '120', '2');
INSERT INTO `article` VALUES ('29', '我就要跟梵高的卧室感受下艺术气息！', '                                                                  										    		\r\n			&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p&gt;最近The Art Insitute of Chicago在芝加哥造了一间卧室，而这就是照着梵高的画设计出来的&lt;/p&gt;&lt;p&gt;更牛B的是，这间卧室对外出租！你在AirBnb上就可以以10美元的价格租到这间小屋。而这间小屋的介绍也是极其的霸气，说住在这里会让你感觉你生活在油画中。&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;另外，这个小屋不仅租金便宜风格独特，而且地理位置也很不错，就在芝加哥的市中心，所以我是十分推荐啊！如今，还住啥大豪宅！一定要来梵高的卧室找找艺术的气息！&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/Blog/Public/image/album/1457016792blob&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/Blog/Public/image/album/1457016801blob&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/Blog/Public/image/album/1457016808blob&quot; style=&quot;max-width:100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;	    		\r\n				    		\r\n			          \r\n                          \r\n                          \r\n                ', '2016-03-03 14:53:53', '梵高是精神病人，那么他的卧室岂不是......', '118', '4');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '影视');
INSERT INTO `cate` VALUES ('2', '科技');
INSERT INTO `cate` VALUES ('3', '人文');
INSERT INTO `cate` VALUES ('4', '博主疯了');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('7', '40', '0', '防守对方的', '发顺丰的', '2016-03-04 22:54:33');
INSERT INTO `comment` VALUES ('8', '40', '0', '房贷首付', '发士大夫', '2016-03-04 23:15:29');
INSERT INTO `comment` VALUES ('9', '40', '0', '风格豆腐干', '感豆腐干豆腐干', '2016-03-04 23:16:35');
INSERT INTO `comment` VALUES ('10', '40', '0', '风格豆腐干', '感到反感', '2016-03-04 23:17:48');
INSERT INTO `comment` VALUES ('11', '40', '0', '风格豆腐干', '感到反感', '2016-03-04 23:18:54');
INSERT INTO `comment` VALUES ('12', '40', '0', '感到反感', '感到反感', '2016-03-04 23:24:16');
INSERT INTO `comment` VALUES ('13', '40', '0', '嘎嘎嘎', '古古怪怪', '2016-03-04 23:28:23');
INSERT INTO `comment` VALUES ('14', '40', '0', '广告歌', '广告歌', '2016-03-04 23:29:02');
INSERT INTO `comment` VALUES ('15', '29', '0', '土豆', '看标题，博主语文体育老师教的', '2016-03-05 19:16:32');
INSERT INTO `comment` VALUES ('17', '29', '15', 'Our Blog', '这是修辞手法，用病句凸显美感（强行解释）', '2016-03-05 19:18:47');
INSERT INTO `comment` VALUES ('18', '29', '0', '小娇', '博主是illiteracy', '2016-03-05 19:20:04');
INSERT INTO `comment` VALUES ('19', '29', '18', 'Our Blog', '一粒特瑞系 小编我真的文盲 哭~', '2016-03-05 19:21:41');
INSERT INTO `comment` VALUES ('20', '28', '0', '西瓜', '你好，引力波，再见，引力波', '2016-03-05 19:22:30');
INSERT INTO `comment` VALUES ('21', '28', '20', 'Our Blog', '拟好，西瓜，杂建，西瓜', '2016-03-05 19:23:02');
INSERT INTO `comment` VALUES ('22', '28', '0', '爱因斯坦', '哈哈哈哈哈', '2016-03-05 19:23:21');
INSERT INTO `comment` VALUES ('23', '28', '22', 'Our Blog', '神来啦~~~~~ （膜拜状', '2016-03-05 19:24:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_board
-- ----------------------------
INSERT INTO `msg_board` VALUES ('28', '汪小能', '段子发起来！！！！', '0', '2016-03-04 23:52:27');
INSERT INTO `msg_board` VALUES ('29', 'Our Blog', '我们不写段子的', '28', '2016-03-04 23:53:29');
INSERT INTO `msg_board` VALUES ('30', '傅芳玲', '路过', '0', '2016-03-05 19:05:56');
INSERT INTO `msg_board` VALUES ('31', '汪小能', '不写段子的博客不是好博客', '29', '2016-03-05 19:24:39');
INSERT INTO `msg_board` VALUES ('32', 'Our Blog', '恭迎小主', '30', '2016-03-05 19:25:15');
INSERT INTO `msg_board` VALUES ('33', '傅芳玲', '退下，本宫不想见到你', '32', '2016-03-05 19:26:15');
INSERT INTO `msg_board` VALUES ('34', '西瓜', '小主近日可是常来啊', '30', '2016-03-05 19:26:54');
INSERT INTO `msg_board` VALUES ('35', '傅芳玲', '那倒也不是，主要来看看这货什么时候停更', '34', '2016-03-05 19:27:51');
INSERT INTO `msg_board` VALUES ('36', 'Our Blog', '很多来不及写，有很多不完善的地方，请学长学姐见谅', '0', '2016-03-05 19:44:53');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('117', 'http://localhost/Blog/Public/image/album/1457179296bedroom.jpg', '2016-03-05 20:01:36');
INSERT INTO `photo` VALUES ('118', 'http://localhost/Blog/Public/image/cover/bedroom.jpg', '2016-03-05 20:01:36');
INSERT INTO `photo` VALUES ('119', 'http://localhost/Blog/Public/image/album/1457179308grivate wave.jpg', '2016-03-05 20:01:48');
INSERT INTO `photo` VALUES ('120', 'http://localhost/Blog/Public/image/cover/grivate wave.jpg', '2016-03-05 20:01:48');
INSERT INTO `photo` VALUES ('121', 'http://localhost/Blog/Public/image/album/1457179318We Bare Bears.jpg', '2016-03-05 20:01:58');
INSERT INTO `photo` VALUES ('122', 'http://localhost/Blog/Public/image/cover/We Bare Bears.jpg', '2016-03-05 20:01:58');
INSERT INTO `photo` VALUES ('123', 'http://localhost/Blog/Public/image/album/1457179351fd670ab5bde4332365c3eadad8314119_b.jpg', '2016-03-05 20:02:31');
INSERT INTO `photo` VALUES ('124', 'http://localhost/Blog/Public/image/cover/fd670ab5bde4332365c3eadad8314119_b.jpg', '2016-03-05 20:02:31');
INSERT INTO `photo` VALUES ('125', 'http://localhost/Blog/Public/image/album/14571793721.jpg', '2016-03-05 20:02:52');
INSERT INTO `photo` VALUES ('126', 'http://localhost/Blog/Public/image/cover/1.jpg', '2016-03-05 20:02:52');
INSERT INTO `photo` VALUES ('127', 'http://localhost/Blog/Public/image/album/1457179389grivate wave.jpg', '2016-03-05 20:03:09');
INSERT INTO `photo` VALUES ('128', 'http://localhost/Blog/Public/image/cover/grivate wave.jpg', '2016-03-05 20:03:09');
