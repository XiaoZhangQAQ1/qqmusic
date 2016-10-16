/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : qqmusic

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-10-16 22:55:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `artist`
-- ----------------------------
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) NOT NULL,
  `agraduation` varchar(50) DEFAULT NULL,
  `anationality` varchar(255) DEFAULT NULL,
  `abirthplace` varchar(50) DEFAULT NULL,
  `aprofession` varchar(255) DEFAULT NULL,
  `aheight` varchar(255) DEFAULT NULL,
  `aweight` varchar(255) DEFAULT NULL,
  `abloodtype` varchar(255) DEFAULT NULL,
  `aachievement` varchar(500) DEFAULT NULL,
  `ainterests` varchar(255) DEFAULT NULL,
  `apicpath` varchar(500) DEFAULT NULL,
  `anid` int(11) NOT NULL,
  `atype` enum('组合','女','男') DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `fkANID` (`anid`),
  CONSTRAINT `fkANID` FOREIGN KEY (`anid`) REFERENCES `nation` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artist
-- ----------------------------
INSERT INTO `artist` VALUES ('1', '陈奕迅', '英国金斯顿大学', '中国香港', '香港', '歌手,演员', '171cm', '72kg', 'O型', '亚太区最受欢迎香港男歌星', '唱歌,游泳,网球', null, '1', null);
INSERT INTO `artist` VALUES ('2', '张国荣', '英国里兹大学纺织管理', '中国香港', '香港', '歌手,演员', '175cm', '68kg', 'O型', '史上最伟大的25位亚洲演员', '唱歌', null, '1', null);
INSERT INTO `artist` VALUES ('3', '谭咏麟', '义安理工学院', '中国香港', '香港', '歌手,演员', '170cm', '60kg', 'O型', '香港十大中文金曲最高荣誉金针奖', '	音乐、球类', null, '1', null);
INSERT INTO `artist` VALUES ('4', '张柏芝', '	澳大利亚Rmit Holmes College', '中国香港', '香港', '歌手,演员', '	165cm', '42kg', 'A型', '第23届香港电影金像奖最佳女主角', '	运动，管人，养狗', null, '1', null);
INSERT INTO `artist` VALUES ('5', '刘德华', '	香港可粒中学', '中国香港', '香港', '歌手,演员', '174cm', '68kg', 'AB型', '香港乐坛四大天王之一', '	保龄球、羽毛球、台球、驾驶、骑术', null, '1', null);
INSERT INTO `artist` VALUES ('6', '张敬轩', '五羊金融财经职业学校', '中国', '广州', '歌手,演员', '173cm', '69kg', 'O型', '劲歌金曲颁奖典礼最受欢迎男歌星', '唱歌,网球', null, '1', null);
INSERT INTO `artist` VALUES ('7', '薛之谦', '格里昂酒店管理学院', '中国', '上海', '	歌手，演员，主持人', '	172cm', '55kg', 'O型', '内地劲爆最受欢迎男歌手奖', '唱歌，游泳', null, '1', null);
INSERT INTO `artist` VALUES ('8', '胡歌', '上海戏剧学院', '中国', '上海', '	演员、歌手、制片人', '185cm', '75kg', 'O型', '文荣奖最佳男主角', '音乐、球类', null, '1', null);
INSERT INTO `artist` VALUES ('9', '	那英', null, '中国', '	辽宁省', '	演员，歌手', '168cm', '46kg', 'O型', '最佳国语女演唱人', '运动，养狗', null, '1', null);
INSERT INTO `artist` VALUES ('10', '刀郎', null, '中国', '四川', '歌手', '173cm', '68kg', 'B型', '最佳国语男演唱人', '唱歌', null, '1', null);
INSERT INTO `artist` VALUES ('11', '张惠妹', null, '中国台湾', '台湾', '	歌手', '158cm', '41kg', 'O型', '第一位首张专辑发片在台湾销售超过百万张的歌手.', '养狗', null, '1', null);
INSERT INTO `artist` VALUES ('12', '周杰伦', '私立淡江中学音乐科', '中国台湾', '台北', '歌手', '175cm', '71kg', '	O型', '亚洲影响力最受欢迎全能华语艺人', '双截棍、篮球', null, '1', null);
INSERT INTO `artist` VALUES ('13', '	作家、作曲家', '	中京大学', '日本', '东京', '歌手，作家、作曲家', '173cm', '68kg', 'B型', '日本著名作曲家', '作曲', null, '1', null);
INSERT INTO `artist` VALUES ('14', '权志龙 ', '庆熙大学后现代音乐系', '韩国', '首尔', '歌手，作家', '178cm', '60kg', 'A型', '08年韩国十大作曲家', '作曲、作词\r\n作曲、作词\r\n作曲、作词', null, '5', null);
INSERT INTO `artist` VALUES ('15', '贾斯汀·比伯 ', null, '加拿大', '斯特拉特福', '歌手，演员', '172cm', '55kg', 'B型', '第40届AMA全美音乐奖最佳艺人奖', '养狗', null, '3', null);
INSERT INTO `artist` VALUES ('16', '张学友', null, null, null, null, null, null, null, null, null, '张学友', '1', null);
INSERT INTO `artist` VALUES ('17', 'beyond', null, null, null, null, null, null, null, null, null, 'beyond', '1', null);
INSERT INTO `artist` VALUES ('18', '许冠杰', null, null, null, null, null, null, null, null, null, '许冠杰', '1', null);
INSERT INTO `artist` VALUES ('19', '陈百强', null, null, null, null, null, null, null, null, null, '陈百强', '1', null);
INSERT INTO `artist` VALUES ('20', '草蜢乐队', null, null, null, null, null, null, null, null, null, '草蜢乐队', '1', null);
INSERT INTO `artist` VALUES ('21', '郭富城', null, null, null, null, null, null, null, null, null, '郭富城', '1', null);
INSERT INTO `artist` VALUES ('22', '黎明', null, null, null, null, null, null, null, null, null, '黎明', '1', null);
INSERT INTO `artist` VALUES ('23', '林子祥', null, null, null, null, null, null, null, null, null, '林子祥', '1', null);
INSERT INTO `artist` VALUES ('24', '李荣浩', null, null, null, null, null, null, null, null, null, '李荣浩', '1', null);
INSERT INTO `artist` VALUES ('25', '林俊杰', null, null, null, null, null, null, null, null, null, '林俊杰', '1', null);
INSERT INTO `artist` VALUES ('26', '张杰', null, null, null, null, null, null, null, null, null, '张杰', '1', null);
INSERT INTO `artist` VALUES ('27', '杨宗纬', null, null, null, null, null, null, null, null, null, '杨宗纬', '1', null);
INSERT INTO `artist` VALUES ('28', '蒋敦豪', null, null, null, null, null, null, null, null, null, '蒋敦豪', '1', null);
INSERT INTO `artist` VALUES ('29', '许嵩', null, null, null, null, null, null, null, null, null, '许嵩', '1', null);
INSERT INTO `artist` VALUES ('30', '汪峰', null, null, null, null, null, null, null, null, null, '汪峰', '1', null);
INSERT INTO `artist` VALUES ('31', '邓紫棋', null, null, null, null, null, null, null, null, null, '邓紫棋', '1', null);
INSERT INTO `artist` VALUES ('32', '庄心妍', null, null, null, null, null, null, null, null, null, '庄心妍', '1', null);
INSERT INTO `artist` VALUES ('33', '那英', null, null, null, null, null, null, null, null, null, '那英', '1', null);
INSERT INTO `artist` VALUES ('34', '汪晨蕊', null, null, null, null, null, null, null, null, null, '汪晨蕊', '1', null);
INSERT INTO `artist` VALUES ('35', '张碧晨', null, null, null, null, null, null, null, null, null, '张碧晨', '1', null);
INSERT INTO `artist` VALUES ('36', '王菲', null, null, null, null, null, null, null, null, null, '王菲', '1', null);
INSERT INTO `artist` VALUES ('37', '张靓颖', null, null, null, null, null, null, null, null, null, '张靓颖', '1', null);
INSERT INTO `artist` VALUES ('38', '筷子兄弟', null, null, null, null, null, null, null, null, null, '筷子兄弟', '1', null);
INSERT INTO `artist` VALUES ('39', 'TFBOYS', null, null, null, null, null, null, null, null, null, 'TFBOYS', '1', null);
INSERT INTO `artist` VALUES ('40', '凤凰传奇', null, null, null, null, null, null, null, null, null, '凤凰传奇', '1', null);
INSERT INTO `artist` VALUES ('41', '태양 (太阳)', null, null, null, null, null, null, null, null, null, '태양 (太阳)', '4', null);
INSERT INTO `artist` VALUES ('42', 'PSY (朴载相)', null, null, null, null, null, null, null, null, null, 'PSY (朴载相)', '4', null);
INSERT INTO `artist` VALUES ('43', '윤미래 (尹美莱)', null, null, null, null, null, null, null, null, null, '윤미래 (尹美莱)', '4', null);
INSERT INTO `artist` VALUES ('44', 'SARA (姜世花)', null, null, null, null, null, null, null, null, null, 'SARA (姜世花)', '4', null);
INSERT INTO `artist` VALUES ('45', '백지영 (白智英)', null, null, null, null, null, null, null, null, null, '백지영 (白智英)', '4', null);
INSERT INTO `artist` VALUES ('46', 'Piko-Taro (ピコ太郎)', null, null, null, null, null, null, null, null, null, 'Piko-Taro (ピコ太郎)', '3', null);
INSERT INTO `artist` VALUES ('47', '澤野弘之 (さわの ひろ', null, null, null, null, null, null, null, null, null, '澤野弘之 (さわの ひろ', '3', null);
INSERT INTO `artist` VALUES ('48', '久石譲 (Joe Hisaishi)', null, null, null, null, null, null, null, null, null, '久石譲 (Joe Hisaishi)', '3', null);
INSERT INTO `artist` VALUES ('49', '和田光司', null, null, null, null, null, null, null, null, null, '和田光司', '3', null);
INSERT INTO `artist` VALUES ('50', '高梨康治', null, null, null, null, null, null, null, null, null, '高梨康治', '3', null);
INSERT INTO `artist` VALUES ('51', '宗次郎', null, null, null, null, null, null, null, null, null, '宗次郎', '3', null);
INSERT INTO `artist` VALUES ('52', '花澤香菜', null, null, null, null, null, null, null, null, null, '花澤香菜', '3', null);
INSERT INTO `artist` VALUES ('53', '茅野愛衣', null, null, null, null, null, null, null, null, null, '茅野愛衣', '3', null);
INSERT INTO `artist` VALUES ('54', '倉木麻衣', null, null, null, null, null, null, null, null, null, '倉木麻衣', '3', null);
INSERT INTO `artist` VALUES ('55', '小林未郁', null, null, null, null, null, null, null, null, null, '小林未郁', '3', null);
INSERT INTO `artist` VALUES ('56', '戸松遥 (とまつ はるか)', null, null, null, null, null, null, null, null, null, '戸松遥 ', '3', null);
INSERT INTO `artist` VALUES ('57', '釘宮理恵 (Kugimiya Rie)', null, null, null, null, null, null, null, null, null, '釘宮理恵 ', '3', null);
INSERT INTO `artist` VALUES ('58', '堀江由衣 (ほりえ ゆい)', null, null, null, null, null, null, null, null, null, '堀江由衣 ', '3', null);
INSERT INTO `artist` VALUES ('59', '能登麻美子', null, null, null, null, null, null, null, null, null, '能登麻美子', '3', null);
INSERT INTO `artist` VALUES ('60', '阿澄佳奈', null, null, null, null, null, null, null, null, null, '阿澄佳奈', '3', null);
INSERT INTO `artist` VALUES ('61', 'Eminem (艾米纳姆)', null, null, null, null, null, null, null, null, null, 'Eminem (艾米纳姆)', '4', null);
INSERT INTO `artist` VALUES ('62', 'Michael Jackson', null, null, null, null, null, null, null, null, null, 'Michael Jackson', '4', null);
INSERT INTO `artist` VALUES ('63', 'Charlie Puth', null, null, null, null, null, null, null, null, null, 'Charlie Puth', '4', null);
INSERT INTO `artist` VALUES ('64', 'Pitbull', null, null, null, null, null, null, null, null, null, 'Pitbull', '4', null);
INSERT INTO `artist` VALUES ('65', 'Usher', null, null, null, null, null, null, null, null, null, 'Usher', '4', null);
INSERT INTO `artist` VALUES ('66', 'Zedd', null, null, null, null, null, null, null, null, null, 'Zedd', '4', null);
INSERT INTO `artist` VALUES ('67', 'Alesso', null, null, null, null, null, null, null, null, null, 'Alesso', '4', null);
INSERT INTO `artist` VALUES ('68', 'Babyface', null, null, null, null, null, null, null, null, null, 'Babyface', '4', null);
INSERT INTO `artist` VALUES ('69', 'Kygo', null, null, null, null, null, null, null, null, null, 'Kygo', '4', null);
INSERT INTO `artist` VALUES ('70', 'Joel Adams', null, null, null, null, null, null, null, null, null, 'Joel Adams', '4', null);
INSERT INTO `artist` VALUES ('71', 'Adele', null, null, null, null, null, null, null, null, null, 'Adele', '4', null);
INSERT INTO `artist` VALUES ('72', 'Avril Lavigne', null, null, null, null, null, null, null, null, null, 'Avril Lavigne', '4', null);
INSERT INTO `artist` VALUES ('73', 'Kelly Clarkson', null, null, null, null, null, null, null, null, null, 'Kelly Clarkson', '4', null);
INSERT INTO `artist` VALUES ('74', 'Taylor Swift', null, null, null, null, null, null, null, null, null, 'Taylor Swift', '4', null);
INSERT INTO `artist` VALUES ('75', 'Katy Perry', null, null, null, null, null, null, null, null, null, 'Katy Perry', '4', null);
INSERT INTO `artist` VALUES ('76', 'Britney Spears', null, null, null, null, null, null, null, null, null, 'Britney Spears', '4', null);
INSERT INTO `artist` VALUES ('77', 'Sia', null, null, null, null, null, null, null, null, null, 'Sia', '4', null);
INSERT INTO `artist` VALUES ('78', 'Ellie Goulding ', null, null, null, null, null, null, null, null, null, 'Ellie Goulding ', '4', null);
INSERT INTO `artist` VALUES ('79', 'Shakira', null, null, null, null, null, null, null, null, null, 'Shakira', '4', null);
INSERT INTO `artist` VALUES ('80', 'Billie Eilish', null, null, null, null, null, null, null, null, null, 'Billie Eilish', '4', null);
INSERT INTO `artist` VALUES ('108', 'Coldplay', '英国金斯顿大学', '英国', '英国', '乐队', '171cm', null, null, '第X届水星奖', null, null, '3', null);

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ccompany` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `ccompany` (`ccompany`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('3', 'AEG新亚洲娱乐联盟集团');
INSERT INTO `company` VALUES ('1', 'EAS Music');
INSERT INTO `company` VALUES ('11', 'YGEX');
INSERT INTO `company` VALUES ('4', '上海映艺文化传播有限公司');
INSERT INTO `company` VALUES ('9', '北京啊呀啦嗦音乐文化发展有限公司');
INSERT INTO `company` VALUES ('6', '北京百慕文化发展有限公司');
INSERT INTO `company` VALUES ('12', '华纳唱片');
INSERT INTO `company` VALUES ('10', '杰威尔音乐有限公司');
INSERT INTO `company` VALUES ('2', '环球唱片');
INSERT INTO `company` VALUES ('8', '福月音乐工作室');
INSERT INTO `company` VALUES ('5', '英皇唱片');
INSERT INTO `company` VALUES ('7', '金牌大风');

-- ----------------------------
-- Table structure for `genre`
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `ggenre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  UNIQUE KEY `asstyle` (`ggenre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO `genre` VALUES ('4', 'Electronic 电子');
INSERT INTO `genre` VALUES ('3', 'K-Pop 韩国流行');
INSERT INTO `genre` VALUES ('1', 'Pop 流行');
INSERT INTO `genre` VALUES ('5', 'Rock 摇滚');
INSERT INTO `genre` VALUES ('2', 'Soundtrack 原声');

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `llanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lid`),
  UNIQUE KEY `llanguage` (`llanguage`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', '国语');
INSERT INTO `language` VALUES ('5', '日语');
INSERT INTO `language` VALUES ('6', '法语');
INSERT INTO `language` VALUES ('2', '粤语');
INSERT INTO `language` VALUES ('4', '英语');
INSERT INTO `language` VALUES ('7', '西班牙语');
INSERT INTO `language` VALUES ('3', '韩语');

-- ----------------------------
-- Table structure for `nation`
-- ----------------------------
DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nnation` varchar(255) NOT NULL COMMENT '国籍',
  `nclass` varchar(255) DEFAULT NULL COMMENT '分类(华语,欧美,日本,韩国)',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nation
-- ----------------------------
INSERT INTO `nation` VALUES ('1', '中国', '华语');
INSERT INTO `nation` VALUES ('3', '欧美', '英语');
INSERT INTO `nation` VALUES ('4', '日本', '日语');
INSERT INTO `nation` VALUES ('5', '韩国', '韩语');

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) NOT NULL,
  `rmainartist` varchar(255) NOT NULL COMMENT '主要艺人',
  `rdate` date DEFAULT NULL,
  `rcid` int(11) NOT NULL COMMENT 'company',
  `rlid` int(11) NOT NULL COMMENT 'language',
  `rtid` int(11) NOT NULL COMMENT 'type',
  `rcoverpath` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `rgid` int(11) NOT NULL COMMENT 'style',
  PRIMARY KEY (`rid`),
  KEY `fkACID` (`rcid`),
  KEY `fkALID` (`rlid`),
  KEY `fkAASID` (`rgid`),
  KEY `fkAGID` (`rtid`),
  CONSTRAINT `fkAASID` FOREIGN KEY (`rgid`) REFERENCES `genre` (`gid`),
  CONSTRAINT `fkACID` FOREIGN KEY (`rcid`) REFERENCES `company` (`cid`),
  CONSTRAINT `fkAGID` FOREIGN KEY (`rtid`) REFERENCES `type` (`tid`),
  CONSTRAINT `fkALID` FOREIGN KEY (`rlid`) REFERENCES `language` (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '陪你度过漫长岁月', '长者', '2016-09-15', '1', '1', '1', '1.jpg', '1');
INSERT INTO `record` VALUES ('2', '一切随风', '钟镇涛', '2003-07-01', '12', '2', '2', '2.jpg', '1');
INSERT INTO `record` VALUES ('3', '男人悲剧', '绿林好汉', '2016-08-01', '12', '2', '1', '3.jpg', '2');
INSERT INTO `record` VALUES ('4', '曾经', '沧海难为水', '2011-09-20', '3', '1', '1', '4.jpg', '1');
INSERT INTO `record` VALUES ('5', '笑一笑', '李严肃', '2016-09-12', '4', '1', '1', '5.jpg', '2');
INSERT INTO `record` VALUES ('6', '不同班同学', '孙浩鹏', '2016-09-13', '5', '2', '1', '6.jpg', '1');
INSERT INTO `record` VALUES ('7', '来日方长', '方长', '2016-09-12', '6', '1', '1', '7.jpg', '2');
INSERT INTO `record` VALUES ('8', '出发', '周润发', '2008-05-12', '7', '1', '2', '8.jpg', '1');
INSERT INTO `record` VALUES ('9', '相爱恨早', '林妙可', '2016-07-10', '8', '1', '1', '9.jpg', '1');
INSERT INTO `record` VALUES ('10', '去伊犁的路上', '胡锦涛', '2013-11-01', '9', '1', '1', '10.jpg', '1');
INSERT INTO `record` VALUES ('11', '阿密特2', '阿凡达', '2015-04-04', '12', '1', '2', '11.jpg', '1');
INSERT INTO `record` VALUES ('12', '周杰伦的床边故事', '侯佩岑', '2016-06-24', '10', '1', '1', '12.jpg', '1');
INSERT INTO `record` VALUES ('14', 'Japan Album :Coup D\'etat+one of A Kind&Heartbreaker', 'Kishi Aino', '2013-11-27', '11', '3', '2', '13.jpg', '3');
INSERT INTO `record` VALUES ('15', 'Cold Water', 'Hot Shower', '2016-09-09', '12', '4', '3', '14.jpg', '4');
INSERT INTO `record` VALUES ('16', 'Dig Out Your Soul', 'Oasis', '2008-10-06', '3', '1', '3', '15.jpg', '4');
INSERT INTO `record` VALUES ('17', '7妹', '7妹', '2016-10-13', '1', '1', '3', '7妹.jpg', '4');
INSERT INTO `record` VALUES ('18', 'A', 'BigBang', '2016-10-13', '1', '3', '3', 'BigBang A.jpg', '3');
INSERT INTO `record` VALUES ('19', 'ALIVE', 'BigBang', '2016-10-13', '1', '3', '3', 'BigBang ALIVE.jpg', '3');
INSERT INTO `record` VALUES ('20', 'M', 'BigBang', '2016-10-13', '1', '3', '3', 'BigBang M.jpg', '3');
INSERT INTO `record` VALUES ('21', 'E', 'BigBang', '2016-10-13', '1', '3', '3', 'BIGBANG.jpg', '3');
INSERT INTO `record` VALUES ('22', 'Cold Water', '华语群星', '2016-10-13', '1', '4', '3', 'Cold Water.jpg', '1');
INSERT INTO `record` VALUES ('23', 'Demi', '华语群星', '2016-10-13', '1', '2', '5', 'Demi Lovato.jpg', '2');
INSERT INTO `record` VALUES ('24', 'G-D', 'BigBang', '2016-10-13', '1', '3', '3', 'GD.jpg', '3');
INSERT INTO `record` VALUES ('25', '蜜月', '华语群星', '2016-10-13', '1', '4', '3', 'Honeymoon.jpg', '1');
INSERT INTO `record` VALUES ('26', 'WELCOME BACK', 'iKON', '2016-10-13', '1', '3', '3', 'iKON.jpg', '3');
INSERT INTO `record` VALUES ('27', 'CHAT', 'IU', '2016-10-13', '1', '3', '3', 'IU.jpg', '3');
INSERT INTO `record` VALUES ('28', 'SORRY', 'Just Bieber', '2016-10-13', '1', '4', '3', 'Just Bieber.jpg', '2');
INSERT INTO `record` VALUES ('30', '高迪锦集', 'MC高迪', '2016-10-13', '1', '1', '3', 'MC高迪.jpg', '4');
INSERT INTO `record` VALUES ('31', '1ST MIN', '华语群星', '2016-10-13', '1', '4', '3', 'one.jpg', '1');
INSERT INTO `record` VALUES ('32', '中国好声音', '华语群星', '2016-10-13', '1', '1', '3', '中国好声音.jpg', '2');
INSERT INTO `record` VALUES ('33', 'rice', '陈奕迅', '2016-10-13', '1', '3', '3', 'rice.jpg', '1');
INSERT INTO `record` VALUES ('34', 'Still Alive', '华语群星', '2016-10-13', '1', '1', '3', 'still Alive.jpg', '1');
INSERT INTO `record` VALUES ('35', '青春修炼手册', 'TFBOYS', '2016-10-13', '1', '1', '3', 'TFBOYS.jpg', '1');
INSERT INTO `record` VALUES ('36', '中国好声音第四季', '华语群星', '2016-10-13', '1', '1', '3', '中国好声音第四季.jpg', '1');
INSERT INTO `record` VALUES ('37', 'TJapan', 'BigBang', '2016-10-13', '1', '3', '3', 'TJapan.jpg', '3');
INSERT INTO `record` VALUES ('38', '绅士', '薛之谦 ', '2016-10-13', '1', '1', '3', '薛之谦 绅士.jpg', '1');
INSERT INTO `record` VALUES ('39', '1121', '陈伟霆', '2016-10-13', '1', '2', '3', '陈伟霆.jpg', '1');
INSERT INTO `record` VALUES ('40', '富士山下', '陈奕迅.jpg', '2016-10-13', '1', '2', '3', '陈奕迅.jpg', '1');
INSERT INTO `record` VALUES ('41', '范特西', '周杰伦', '2016-10-13', '1', '2', '3', '范特西.jpg', '1');
INSERT INTO `record` VALUES ('42', '复刻记忆', '方大同', '2016-10-13', '1', '1', '3', '方大同.jpg', '1');
INSERT INTO `record` VALUES ('43', '拿得起放不下', '高进', '2016-10-13', '1', '1', '3', '高进.jpg', '1');
INSERT INTO `record` VALUES ('44', '夏洛特烦恼', '华语群星', '2016-10-13', '1', '1', '3', '华语群星.jpg', '2');
INSERT INTO `record` VALUES ('45', 'HONEST', '井恩然', '2016-10-13', '1', '1', '3', '井恩然 .jpg', '1');
INSERT INTO `record` VALUES ('46', '克拉恋人', '华语群星', '2016-10-13', '1', '1', '3', '克拉恋人.jpg', '1');
INSERT INTO `record` VALUES ('47', '中国好声音第四季10集', '华语群星', '2016-10-13', '1', '1', '3', '中国好声音第四季10集.jpg', '2');
INSERT INTO `record` VALUES ('48', '跨时代', '周杰伦', '2016-10-13', '1', '1', '3', '跨时代.jpg', '1');
INSERT INTO `record` VALUES ('49', '宅男', '李琦', '2016-10-13', '1', '1', '3', '李琦.jpg', '1');
INSERT INTO `record` VALUES ('50', '李白', '李荣浩', '2016-10-13', '1', '1', '3', '李荣浩.jpg', '1');
INSERT INTO `record` VALUES ('51', 'JJ陆', '林俊杰', '2016-10-13', '1', '1', '3', '林俊杰 JJ陆.jpg', '2');
INSERT INTO `record` VALUES ('52', '她说', '林俊杰', '2016-10-13', '1', '1', '3', '林俊杰 她说.jpg', '2');
INSERT INTO `record` VALUES ('53', '新地球', '林俊杰', '2016-10-13', '1', '1', '3', '林俊杰 新地球.jpg', '2');
INSERT INTO `record` VALUES ('54', '琅琊榜', '孟可', '2016-10-13', '1', '1', '3', '孟可.jpg', '2');
INSERT INTO `record` VALUES ('55', '你的陈奕迅', '陈奕迅', '2016-10-13', '1', '1', '3', '你的陈奕迅.jpg', '1');
INSERT INTO `record` VALUES ('56', '十二新作', '周杰伦', '2016-10-13', '1', '1', '3', '十二新作.jpg', '1');
INSERT INTO `record` VALUES ('57', '十一月的肖邦', '周杰伦', '2016-10-13', '1', '1', '3', '十一月的肖邦.jpg', '1');
INSERT INTO `record` VALUES ('58', '王妃', '萧敬腾', '2016-10-13', '1', '1', '3', '萧敬腾.jpg', '1');
INSERT INTO `record` VALUES ('59', '笑一笑', '刘德华', '2016-10-13', '1', '1', '3', '笑一笑.jpg', '1');
INSERT INTO `record` VALUES ('60', '蓝莲花', '许巍', '2016-10-13', '1', '1', '3', '许巍.jpg', '2');
INSERT INTO `record` VALUES ('61', 'A+', '炫雅', '2016-10-13', '1', '3', '3', '炫雅.jpg', '3');
INSERT INTO `record` VALUES ('62', '初爱', '杨忠伟', '2016-10-13', '1', '1', '3', '杨忠伟.jpg', '2');
INSERT INTO `record` VALUES ('63', '栀子花开', '华语群星', '2016-10-13', '1', '1', '3', '栀子花开.jpg', '1');
INSERT INTO `record` VALUES ('64', '庄心妍情歌精选集', '庄心妍', '2016-10-13', '1', '1', '3', '庄心妍情歌精选集.jpg', '2');
INSERT INTO `record` VALUES ('65', '哎呦不错哦', '周杰伦', '2016-10-13', '1', '1', '3', '周杰伦.jpg', '1');
INSERT INTO `record` VALUES ('177', 'x&y', 'coldplay', '2005-06-06', '12', '4', '2', 'x&y.jpg', '5');

-- ----------------------------
-- Table structure for `song`
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `srid` int(11) NOT NULL,
  `said` int(11) NOT NULL,
  `scompose` varchar(255) DEFAULT NULL,
  `sduration` time DEFAULT '00:04:13' COMMENT '时长',
  `sarrangement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fkSAID` (`srid`),
  KEY `fkSSGID` (`said`),
  KEY `duration` (`sid`),
  KEY `sduration` (`sid`),
  CONSTRAINT `said-aid` FOREIGN KEY (`said`) REFERENCES `artist` (`aid`),
  CONSTRAINT `srid-rid` FOREIGN KEY (`srid`) REFERENCES `record` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '陪你度过漫长岁月', '1', '1', '黎晓阳/谢国维', '00:04:13', '黎晓阳/谢国维');
INSERT INTO `song` VALUES ('2', '一切随风', '2', '2', '唐奕聪', '00:04:13', null);
INSERT INTO `song` VALUES ('3', '我', '2', '2', '张国荣', '00:04:13', '赵增熹');
INSERT INTO `song` VALUES ('4', '男人悲剧', '3', '3', null, '00:04:13', null);
INSERT INTO `song` VALUES ('5', '曾经', '4', '4', '张简君伟', '00:04:13', null);
INSERT INTO `song` VALUES ('6', '笑一笑', '5', '5', '陈建德', '00:04:13', 'Adam Lee/蔡晓恩');
INSERT INTO `song` VALUES ('7', '不同班同学', '6', '6', '曾奕文', '00:04:13', '何秉舜');
INSERT INTO `song` VALUES ('8', '来日方长', '7', '7', '常石磊/袁娅维', '00:04:13', '常石磊');
INSERT INTO `song` VALUES ('9', '骑单车的日子', '8', '8', '金大洲', '00:04:13', '彭程');
INSERT INTO `song` VALUES ('10', '相爱恨早', '9', '9', '钱雷', '00:04:13', '捞仔');
INSERT INTO `song` VALUES ('11', '去伊犁的路上', '10', '10', '刀郎', '00:04:13', '刀郎');
INSERT INTO `song` VALUES ('12', '不睡', '11', '11', '陈珊妮', '00:04:13', null);
INSERT INTO `song` VALUES ('13', '说走就走', '12', '12', '周杰伦', '00:04:13', '周杰伦');
INSERT INTO `song` VALUES ('14', 'R.O.D.', '14', '14', 'TEDDY', '00:04:13', 'TEDDY');
INSERT INTO `song` VALUES ('15', 'Cold Water(Lost Frequencies Remix)', '15', '15', 'King Henry/Benny Blanco/Jr Blender/Diplo', '00:04:13', null);
INSERT INTO `song` VALUES ('16', 'Squere One', '177', '108', 'Christ Martin', '00:04:47', 'Christ Martin');
INSERT INTO `song` VALUES ('17', 'What if', '177', '108', 'Christ Martin', '00:04:56', 'Christ Martin');
INSERT INTO `song` VALUES ('18', 'White Shadows', '177', '108', 'Christ Martin', '00:05:27', 'Christ Martin');
INSERT INTO `song` VALUES ('19', 'Fix You', '177', '108', 'Christ Martin', '00:04:54', 'Christ Martin');
INSERT INTO `song` VALUES ('20', 'Talk', '177', '108', 'Christ Martin', '00:05:10', 'Christ Martin');
INSERT INTO `song` VALUES ('21', 'X&Y', '177', '108', 'Christ Martin', '00:04:33', 'Christ Martin');
INSERT INTO `song` VALUES ('22', 'Speed Of Sound', '177', '108', 'Christ Martin', '00:04:48', 'Christ Martin');
INSERT INTO `song` VALUES ('23', 'A Message', '177', '108', 'Christ Martin', '00:04:44', 'Christ Martin');
INSERT INTO `song` VALUES ('24', 'Low', '177', '108', 'Christ Martin', '00:05:31', 'Christ Martin');
INSERT INTO `song` VALUES ('25', 'Hardest Part', '177', '108', 'Christ Martin', '00:04:24', 'Christ Martin');
INSERT INTO `song` VALUES ('26', 'Swallowed In The Sea', '177', '108', 'Christ Martin', '00:03:58', 'Christ Martin');
INSERT INTO `song` VALUES ('27', 'Twisted Logic', '177', '108', 'Christ Martin', '00:05:01', 'Christ Martin');

-- ----------------------------
-- Table structure for `songlist`
-- ----------------------------
DROP TABLE IF EXISTS `songlist`;
CREATE TABLE `songlist` (
  `slid` int(11) NOT NULL AUTO_INCREMENT,
  `slsmid` int(11) NOT NULL,
  `slsid` int(11) NOT NULL,
  `slcreateDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`slid`),
  KEY `fkLID` (`slsmid`),
  KEY `fkSID` (`slsid`),
  CONSTRAINT `slsid-sid` FOREIGN KEY (`slsid`) REFERENCES `song` (`sid`),
  CONSTRAINT `slsmid-smid` FOREIGN KEY (`slsmid`) REFERENCES `songlistmanage` (`smid`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songlist
-- ----------------------------
INSERT INTO `songlist` VALUES ('112', '1', '11', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('113', '1', '1', '2016-10-09 22:03:37');
INSERT INTO `songlist` VALUES ('114', '1', '3', '2016-10-09 22:03:39');
INSERT INTO `songlist` VALUES ('115', '1', '8', '2016-10-09 22:03:41');
INSERT INTO `songlist` VALUES ('116', '1', '8', '2016-10-09 22:03:44');
INSERT INTO `songlist` VALUES ('117', '1', '9', '2016-10-09 22:03:46');
INSERT INTO `songlist` VALUES ('118', '1', '11', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('119', '1', '7', '2016-10-09 22:03:49');
INSERT INTO `songlist` VALUES ('120', '2', '3', '2016-10-09 22:03:52');
INSERT INTO `songlist` VALUES ('121', '2', '9', '2016-10-09 22:03:55');
INSERT INTO `songlist` VALUES ('122', '2', '8', '2016-10-09 22:03:57');
INSERT INTO `songlist` VALUES ('123', '2', '3', '2016-10-09 22:04:00');
INSERT INTO `songlist` VALUES ('124', '2', '2', '2016-10-09 22:04:02');
INSERT INTO `songlist` VALUES ('125', '2', '1', '2016-10-09 22:04:04');
INSERT INTO `songlist` VALUES ('126', '2', '3', '2016-10-09 22:04:05');
INSERT INTO `songlist` VALUES ('127', '2', '1', '2016-10-09 22:04:07');
INSERT INTO `songlist` VALUES ('128', '2', '5', '2016-10-09 22:04:09');
INSERT INTO `songlist` VALUES ('129', '2', '4', '2016-10-09 22:04:11');
INSERT INTO `songlist` VALUES ('130', '2', '10', '2016-10-09 22:04:12');
INSERT INTO `songlist` VALUES ('131', '2', '5', '2016-10-09 22:04:13');
INSERT INTO `songlist` VALUES ('132', '2', '10', '2016-10-09 22:04:17');
INSERT INTO `songlist` VALUES ('133', '3', '1', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('134', '3', '10', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('135', '3', '2', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('136', '3', '3', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('137', '3', '2', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('138', '3', '3', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('139', '3', '1', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('140', '3', '3', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('141', '3', '4', '2016-10-09 22:03:05');
INSERT INTO `songlist` VALUES ('142', '1', '16', '2016-10-14 09:08:03');
INSERT INTO `songlist` VALUES ('143', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('144', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('145', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('146', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('147', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('148', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('149', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('150', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('151', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('152', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('153', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('154', '1', '27', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('155', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('156', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('157', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('158', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('159', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('160', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('161', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('162', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('163', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('164', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('165', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('166', '1', '27', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('167', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('168', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('169', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('170', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('171', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('172', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('173', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('174', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('175', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('176', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('177', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('178', '1', '27', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('179', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('180', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('181', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('182', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('183', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('184', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('185', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('186', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('187', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('188', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('189', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('190', '1', '27', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('191', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('192', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('193', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('194', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('195', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('196', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('197', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('198', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('199', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('200', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('201', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('202', '1', '27', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('203', '1', '16', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('204', '1', '17', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('205', '1', '18', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('206', '1', '19', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('207', '1', '20', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('208', '1', '21', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('209', '1', '22', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('210', '1', '23', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('211', '1', '24', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('212', '1', '25', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('213', '1', '26', '2016-10-14 09:08:39');
INSERT INTO `songlist` VALUES ('214', '1', '1', '2016-10-14 15:03:48');
INSERT INTO `songlist` VALUES ('215', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('216', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('217', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('218', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('219', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('220', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('221', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('222', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('223', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('224', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('225', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('226', '1', '27', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('227', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('228', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('229', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('230', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('231', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('232', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('233', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('234', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('235', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('236', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('237', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('238', '1', '27', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('239', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('240', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('241', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('242', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('243', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('244', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('245', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('246', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('247', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('248', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('249', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('250', '1', '27', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('251', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('252', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('253', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('254', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('255', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('256', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('257', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('258', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('259', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('260', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('261', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('262', '1', '27', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('263', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('264', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('265', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('266', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('267', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('268', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('269', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('270', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('271', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('272', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('273', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('274', '1', '27', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('275', '1', '16', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('276', '1', '17', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('277', '1', '18', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('278', '1', '19', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('279', '1', '20', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('280', '1', '21', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('281', '1', '22', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('282', '1', '23', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('283', '1', '24', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('284', '1', '25', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('285', '1', '26', '2016-10-16 19:46:24');
INSERT INTO `songlist` VALUES ('286', '1', '27', '2016-10-16 19:46:24');

-- ----------------------------
-- Table structure for `songlistmanage`
-- ----------------------------
DROP TABLE IF EXISTS `songlistmanage`;
CREATE TABLE `songlistmanage` (
  `smid` int(11) NOT NULL AUTO_INCREMENT,
  `smname` varchar(255) NOT NULL,
  `smuid` int(11) NOT NULL,
  `smcreatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `smcallcount` int(11) DEFAULT NULL,
  `smcoverpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smid`),
  KEY `fkLUID` (`smuid`),
  CONSTRAINT `smuid-uid` FOREIGN KEY (`smuid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songlistmanage
-- ----------------------------
INSERT INTO `songlistmanage` VALUES ('1', 'favor', '2', '2016-10-01 21:49:27', null, null);
INSERT INTO `songlistmanage` VALUES ('2', '战歌', '2', '2016-10-09 22:02:10', null, null);
INSERT INTO `songlistmanage` VALUES ('3', 'dog man star', '2', '2016-10-09 22:03:00', null, null);
INSERT INTO `songlistmanage` VALUES ('4', '网易歌单', '2', '2016-10-09 21:49:09', null, null);
INSERT INTO `songlistmanage` VALUES ('5', '手机歌单', '2', '2016-10-09 21:49:18', null, null);

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `ttype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `ggenric` (`ttype`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('3', 'EP');
INSERT INTO `type` VALUES ('1', 'Single');
INSERT INTO `type` VALUES ('2', '专辑');
INSERT INTO `type` VALUES ('5', '动漫');
INSERT INTO `type` VALUES ('6', '游戏');
INSERT INTO `type` VALUES ('4', '演唱会');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `upwd` int(11) NOT NULL,
  `uemail` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '111', '');
INSERT INTO `user` VALUES ('2', 'AA', '234', '');
