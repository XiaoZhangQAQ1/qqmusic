/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : qqmusic

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-10-10 19:21:17
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO `genre` VALUES ('4', 'Electronic 电子');
INSERT INTO `genre` VALUES ('3', 'K-Pop 韩国流行');
INSERT INTO `genre` VALUES ('1', 'Pop 流行');
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
  `rcid` int(11) DEFAULT NULL COMMENT 'company',
  `rlid` int(11) DEFAULT NULL COMMENT 'language',
  `rtid` int(11) DEFAULT NULL COMMENT 'type',
  `rcoverpath` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `rgid` int(11) DEFAULT NULL COMMENT 'style',
  PRIMARY KEY (`rid`),
  KEY `fkACID` (`rcid`),
  KEY `fkALID` (`rlid`),
  KEY `fkAASID` (`rgid`),
  KEY `fkAGID` (`rtid`),
  CONSTRAINT `fkAASID` FOREIGN KEY (`rgid`) REFERENCES `genre` (`gid`),
  CONSTRAINT `fkACID` FOREIGN KEY (`rcid`) REFERENCES `company` (`cid`),
  CONSTRAINT `fkAGID` FOREIGN KEY (`rtid`) REFERENCES `type` (`tid`),
  CONSTRAINT `fkALID` FOREIGN KEY (`rlid`) REFERENCES `language` (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '陪你度过漫长岁月', '长者', '2016-09-15', '1', '1', '1', null, '1');
INSERT INTO `record` VALUES ('2', '一切随风', '钟镇涛', '2003-07-01', '2', '2', '2', null, '1');
INSERT INTO `record` VALUES ('3', '男人悲剧', '绿林好汉', '2016-08-01', '2', '2', '1', null, '2');
INSERT INTO `record` VALUES ('4', '曾经', '沧海难为水', '2011-09-20', '3', '1', '1', null, '1');
INSERT INTO `record` VALUES ('5', '笑一笑', '李严肃', '2016-09-12', '4', '1', '1', null, '2');
INSERT INTO `record` VALUES ('6', '不同班同学', '孙浩鹏', '2016-09-13', '5', '2', '1', null, '1');
INSERT INTO `record` VALUES ('7', '来日方长', '方长', '2016-09-12', '6', '1', '1', null, '2');
INSERT INTO `record` VALUES ('8', '出发', '周润发', '2008-05-12', '7', '1', '2', null, '1');
INSERT INTO `record` VALUES ('9', '相爱恨早', '林妙可', '2016-07-10', '8', '1', '1', null, '1');
INSERT INTO `record` VALUES ('10', '去伊犁的路上', '胡锦涛', '2013-11-01', '9', '1', '1', null, '1');
INSERT INTO `record` VALUES ('11', '阿密特2', '阿凡达', '2015-04-04', '2', '1', '2', null, '1');
INSERT INTO `record` VALUES ('12', '周杰伦的床边故事', '侯佩岑', '2016-06-24', '10', '1', '1', null, '1');
INSERT INTO `record` VALUES ('14', 'Japan Album :Coup D\'etat+one of A Kind&Heartbreaker', 'Kishi Aino', '2013-11-27', '11', '3', '2', null, '3');
INSERT INTO `record` VALUES ('15', 'Cold Water', 'Hot Shower', '2016-09-09', '12', '4', '3', null, '4');
INSERT INTO `record` VALUES ('16', 'Dig Out Your Soul', 'Oasis', '2008-10-06', null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '陪你度过漫长岁月', '1', '1', '黎晓阳/谢国维', '00:00:00', '黎晓阳/谢国维');
INSERT INTO `song` VALUES ('2', '一切随风', '2', '2', '唐奕聪', '00:00:00', null);
INSERT INTO `song` VALUES ('3', '我', '2', '2', '张国荣', '00:00:00', '赵增熹');
INSERT INTO `song` VALUES ('4', '男人悲剧', '3', '3', null, '00:00:00', null);
INSERT INTO `song` VALUES ('5', '曾经', '4', '4', '张简君伟', '00:00:00', null);
INSERT INTO `song` VALUES ('6', '笑一笑', '5', '5', '陈建德', '00:00:00', 'Adam Lee/蔡晓恩');
INSERT INTO `song` VALUES ('7', '不同班同学', '6', '6', '曾奕文', '00:00:00', '何秉舜');
INSERT INTO `song` VALUES ('8', '来日方长', '7', '7', '常石磊/袁娅维', '00:00:00', '常石磊');
INSERT INTO `song` VALUES ('9', '骑单车的日子', '8', '8', '金大洲', '00:00:00', '彭程');
INSERT INTO `song` VALUES ('10', '相爱恨早', '9', '9', '钱雷', '00:00:00', '捞仔');
INSERT INTO `song` VALUES ('11', '去伊犁的路上', '10', '10', '刀郎', '00:00:00', '刀郎');
INSERT INTO `song` VALUES ('12', '不睡', '11', '11', '陈珊妮', '00:00:00', null);
INSERT INTO `song` VALUES ('13', '说走就走', '12', '12', '周杰伦', '00:00:00', '周杰伦');
INSERT INTO `song` VALUES ('14', 'R.O.D.', '14', '14', 'TEDDY', '00:00:00', 'TEDDY');
INSERT INTO `song` VALUES ('15', 'Cold Water(Lost Frequencies Remix)', '15', '15', 'King Henry/Benny Blanco/Jr Blender/Diplo', '00:00:00', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

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
