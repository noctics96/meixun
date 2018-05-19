-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 05 月 19 日 07:46
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mysql`
--
CREATE DATABASE `mysql` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mysql`;

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(300) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`sid`, `src`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/editor/web-101-101-1.png?580'),
(2, 'http://www.mayzone360.com/data/upload/shop/editor/web-101-101-3.jpg?953'),
(3, 'http://www.mayzone360.com/data/upload/shop/editor/web-101-101-5.jpg?455'),
(4, 'http://www.mayzone360.com/data/upload/shop/editor/web-101-101-4.jpg?632');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(500) CHARACTER SET utf8 NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`sid`, `img`, `title`, `pic`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/12/2_05364376787353556_360.jpg', '优优 388A 惠普HP88A易加粉硒鼓　适用惠普HP P1007/P1008/P1106/P1108/M1136/M1213nf', '59.00');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist_1`
--

CREATE TABLE IF NOT EXISTS `goodslist_1` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `goodslist_1`
--

INSERT INTO `goodslist_1` (`sid`, `src`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-11.jpg?302'),
(2, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-12.jpg?516'),
(3, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-14.gif?755'),
(4, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-21.jpg?116'),
(5, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-24.jpg?691'),
(6, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-31.jpg?681'),
(7, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-32.jpg?904'),
(8, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-33.jpg?298');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist_2`
--

CREATE TABLE IF NOT EXISTS `goodslist_2` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `goodslist_2`
--

INSERT INTO `goodslist_2` (`sid`, `src`) VALUES
(9, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-11.jpg?962'),
(10, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-12.jpg?302'),
(11, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-14.jpg?808'),
(12, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-21.jpg?607'),
(13, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-24.jpg?538'),
(14, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-31.jpg?372'),
(15, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-32.jpg?680'),
(16, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-33.jpg?489');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist_3`
--

CREATE TABLE IF NOT EXISTS `goodslist_3` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `goodslist_3`
--

INSERT INTO `goodslist_3` (`sid`, `src`) VALUES
(17, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-11.jpg?576'),
(18, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-12.jpg?552'),
(19, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-14.jpg?656'),
(20, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-21.gif?657'),
(21, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-24.jpg?885'),
(22, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-31.gif?681'),
(23, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-32.jpg?680'),
(24, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-33.jpg?499');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist_4`
--

CREATE TABLE IF NOT EXISTS `goodslist_4` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `goodslist_4`
--

INSERT INTO `goodslist_4` (`sid`, `src`) VALUES
(25, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-11.jpg?993'),
(26, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-12.jpg?964'),
(27, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-14.jpg?263'),
(28, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-21.jpg?183'),
(29, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-24.jpg?367'),
(30, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-31.jpg?693'),
(31, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-32.jpg?916'),
(32, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-33.jpg?591');

-- --------------------------------------------------------

--
-- 表的结构 `goodslist_copy1_copy`
--

CREATE TABLE IF NOT EXISTS `goodslist_copy1_copy` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `goodslist_copy1_copy`
--

INSERT INTO `goodslist_copy1_copy` (`sid`, `src`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-11.jpg?302'),
(2, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-12.jpg?516'),
(3, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-14.gif?755'),
(4, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-21.jpg?116'),
(5, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-24.jpg?691'),
(6, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-31.jpg?681'),
(7, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-32.jpg?904'),
(8, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-15-1-33.jpg?298'),
(9, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-11.jpg?962'),
(10, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-12.jpg?302'),
(11, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-14.jpg?808'),
(12, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-21.jpg?607'),
(13, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-24.jpg?538'),
(14, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-31.jpg?372'),
(15, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-32.jpg?680'),
(16, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-45-1-33.jpg?489'),
(17, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-11.jpg?576'),
(18, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-12.jpg?552'),
(19, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-14.jpg?656'),
(20, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-21.gif?657'),
(21, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-24.jpg?885'),
(22, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-31.gif?681'),
(23, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-32.jpg?680'),
(24, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-65-1-33.jpg?499'),
(25, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-11.jpg?993'),
(26, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-12.jpg?964'),
(27, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-14.jpg?263'),
(28, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-21.jpg?183'),
(29, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-24.jpg?367'),
(30, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-31.jpg?693'),
(31, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-32.jpg?916'),
(32, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-35-1-33.jpg?591');

-- --------------------------------------------------------

--
-- 表的结构 `leader`
--

CREATE TABLE IF NOT EXISTS `leader` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(500) CHARACTER SET utf8 NOT NULL,
  `smallsrc` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `leader`
--

INSERT INTO `leader` (`sid`, `src`, `smallsrc`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/editor/web-1-18-1.gif?971', 'http://www.mayzone360.com/data/upload/shop/editor/web-1-13.jpg?558'),
(2, 'http://www.mayzone360.com/data/upload/shop/editor/web-4-48-4.gif?645', 'http://www.mayzone360.com/data/upload/shop/editor/web-4-43.jpg?882'),
(3, 'http://www.mayzone360.com/data/upload/shop/editor/web-6-68-3.gif?713', 'http://www.mayzone360.com/data/upload/shop/editor/web-6-63.jpg?405'),
(4, 'http://www.mayzone360.com/data/upload/shop/editor/web-3-38-3.gif?795', 'http://www.mayzone360.com/data/upload/shop/editor/web-3-33.jpg?490');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`sid`, `src`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/login/2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `niubi`
--

CREATE TABLE IF NOT EXISTS `niubi` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `tit` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `niubi`
--

INSERT INTO `niubi` (`id`, `src`, `tit`, `price`) VALUES
(1, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i1/24823062/TB2cziHcH1YBuNjSszeXXablFXa_!!0-saturn_solar.jpg_230x230.jpg_.webp', 'Final Fantasy FF 幸运石动漫游戏周边 克劳德 黑曜石玛瑙手链', '¥149.00'),
(2, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3166444524/TB1mxUpSFXXXXbSXFXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp', '烈儿家最终幻想FF15莫古力陆行鸟嘉年华动漫游戏服装周边短袖T恤', '¥89.00'),
(3, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/TB1diZ0SpXXXXbzXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp', '烈儿家最终幻想FF15希德妮cos游戏帽子周边二次元鸭舌帽Cindy平沿', '¥49.00'),
(4, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/264476911/TB1gdKvcnXYBeNkHFrdXXciuVXa_!!0-item_pic.jpg_180x180.jpg_.webp', ' ps4最终幻想15海报 FF15游戏挂画海报周边卷轴', '¥18.00'),
(5, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/106890550/TB2_ecpapkoBKNjSZFkXXb4tFXa_!!106890550.jpg_180x180.jpg_.webp', '【现货】最终幻想15 SE CAFE 玻璃杯 FF15周边', '¥199.00'),
(6, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/668175/TB2E8jfdlUSMeJjy1zdXXaR3FXa_!!668175.jpg_180x180.jpg_.webp', '【预定/现货】最终幻想XV FF15 SEcafe 亚克力立牌 ', '¥130.00'),
(7, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/436948535/TB2aolTmuuSBuNjSsziXXbq8pXa_!!436948535.jpg_180x180.jpg_.webp', '源木cos最终幻想FF15诺克提斯戒指 周边黑金路西斯', '¥35.90'),
(8, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2682238959/TB2GtxSdGSWBuNjSsrbXXa0mVXa_!!2682238959.jpg_180x180.jpg_.webp', 'FINAL FANTASY FF15 最终幻想XV PS4游戏周边', '¥1118.00'),
(9, 'https://img.alicdn.com/bao/uploaded/i1/1133796251/TB1ixdjbGmgSKJjSsphXXcy1VXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '伶吟典藏专业演奏紫竹洞箫G调F调萧乐器一节紫竹正手反手八孔洞萧', '¥2980'),
(10, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i2/125690338849624996/TB2EAVuaEhnpuFjSZFPXXb_4XXa_!!0-saturn_solar.jpg_180x180.jpg_.webp', '【掬涵】石莲花 石竹 观音莲 佛手莲 芦荟仿真多肉植物绿植', '¥15.00'),
(11, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i1/14446730/TB289hYcqAoBKNjSZSyXXaHAVXa_!!0-saturn_solar.jpg_180x180.jpg_.webp', '水培铜钱草土培水养植物盆栽室内客厅绿植花卉趣味转运金', '¥1.28'),
(12, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i2/16723129/TB2RVdJeh1YBuNjy1zcXXbNcXXa_!!0-saturn_solar.jpg_180x180.jpg_.webp', ' 北欧仿真水泥花盆多肉小盆栽摆件设 室内假绿植盆景 ', '¥74.24'),
(13, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/142493863/TB2diXycWLN8KJjSZFGXXbjrVXa_!!142493863.jpg_180x180.jpg_.webp', ' 发财树绿萝植物办公室盆栽富贵竹栀子花室内盆栽芦', '¥9.90'),
(14, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/142493863/TB22ZXomxSYBuNjSsphXXbGvVXa_!!142493863.jpg_180x180.jpg_.webp', ' 栀子花盆栽室内观花植物花卉盆栽阳台四季开花植物', '¥29.90'),
(15, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/49785728/TB2G5HCeuuSBuNjSsplXXbe8pXa_!!49785728.jpg_180x180.jpg_.webp', ' 包邮团购 10棵五十铃玉 精品多肉植物 办公桌小盆栽绿', '¥25.00'),
(16, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/108898830/TB1ux1yo0nJ8KJjSszdXXaxuFXa_!!0-item_pic.jpg_180x180.jpg_.webp', '¥239.00 123人付款\r\n 幸福树盆栽绿宝树办公室室内客厅大型绿植盆景好养', '¥239.00'),
(17, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/60960562/TB2UR1eaQCWBuNjy0FaXXXUlXXa_!!60960562.jpg_180x180.jpg_.webp', '天狼月季秋日胭脂大花灌木庭院四季开花绿植盆栽花卉月季', '¥35.00'),
(18, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2280854781/TB2Hb97bCBjpuFjSsplXXa5MVXa_!!2280854781.jpg_180x180.jpg_.webp', ' 微景观成品创意绿植苔藓微景观生态瓶青苔植物办公', '¥133.20'),
(19, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/185169401/TB2S1CxkBHH8KJjy0FbXXcqlpXa_!!185169401.jpg_180x180.jpg_.webp', '发财树绿萝办公室盆栽虎皮兰栀子花室内盆栽文竹绿', '¥9.80'),
(20, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2311530018/TB2RyX2n49YBuNjy0FfXXXIsVXa_!!2311530018.png_180x180.jpg_.webp', '孙笑川hape手机壳潮牌李赣李干nmsl定制带带大师兄', '¥26.34'),
(21, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/1062296391/TB2UJmTdRDH8KJjSspnXXbNAVXa_!!0-taoxiaopu_sell.jpg_180x180.jpg_.webp', '孙笑川的狗头', '¥6324.00'),
(22, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2311530018/TB2YudemQKWBuNjy1zjXXcOypXa_!!2311530018.png_180x180.jpg_.webp', ' 新款孙笑川嘴臭语录手机壳万梗起源hape定制手机壳', '¥28.88'),
(23, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2025100859/TB2YxldnBDH8KJjSspnXXbNAVXa_!!2025100859.jpg_180x180.jpg_.webp', '定制NM$L hape手机壳 孙笑川 带带大师兄 3天内发货', '¥28.00');

-- --------------------------------------------------------

--
-- 表的结构 `tuangou`
--

CREATE TABLE IF NOT EXISTS `tuangou` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `onsale` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tuangou`
--

INSERT INTO `tuangou` (`sid`, `src`, `onsale`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/rec_position/0b028ccd0fac11a78790.gif', '1'),
(2, 'http://www.mayzone360.com/shop/templates/default/images/tuangou/pro-1.jpg', '546'),
(3, 'http://www.mayzone360.com/shop/templates/default/images/tuangou/pro-2.jpg', '4521'),
(4, 'http://www.mayzone360.com/shop/templates/default/images/tuangou/pro-3.jpg', '5229'),
(5, 'http://www.mayzone360.com/shop/templates/default/images/tuangou/pro-4.jpg', '1336');

-- --------------------------------------------------------

--
-- 表的结构 `user1`
--

CREATE TABLE IF NOT EXISTS `user1` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) CHARACTER SET utf8 NOT NULL,
  `psd` varchar(40) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user1`
--

INSERT INTO `user1` (`sid`, `tel`, `psd`) VALUES
(2, '17764521939', 'ycy19960212ycy'),
(3, '15525202937', 'ycy123456');

-- --------------------------------------------------------

--
-- 表的结构 `xiangqing_look`
--

CREATE TABLE IF NOT EXISTS `xiangqing_look` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(500) CHARACTER SET utf8 NOT NULL,
  `price` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `xiangqing_look`
--

INSERT INTO `xiangqing_look` (`sid`, `src`, `price`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/06/2_05204183792325569_240.jpg', '￥98.00'),
(2, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/06/2_05203548008062437_240.jpg', '￥95.00'),
(3, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/10/2_05298375873795721_240.jpg', '￥210.00'),
(4, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/04/2_05143096414536659_240.jpg', '￥199.00'),
(5, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/04/2_05143111467636067_240.jpg', '￥169.00'),
(6, 'http://img01.mayzone360.com/images/2014/03/24/goods_img/2687_G_1395641464556.jpg', '￥115.00');

-- --------------------------------------------------------

--
-- 表的结构 `xianqing`
--

CREATE TABLE IF NOT EXISTS `xianqing` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `ssrc` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `msrc` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `bsrc` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `xianqing`
--

INSERT INTO `xianqing` (`sid`, `ssrc`, `msrc`, `bsrc`) VALUES
(1, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/12/2_05364376787353556_60.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/12/2_05364376787353556_360.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/12/2_05364376787353556_1280.jpg'),
(2, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214372244321_60.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214372244321_360.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214372244321_1280.jpg'),
(3, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214414782669_60.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214414782669_360.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230214414782669_1280.jpg'),
(4, 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230203135473657_60.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/07/2_05230203135473657_360.jpg', 'http://www.mayzone360.com/data/upload/shop/store/goods/2/2016/12/2_05364376787353556_1280.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xianqing_shuju`
--

CREATE TABLE IF NOT EXISTS `xianqing_shuju` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(500) CHARACTER SET utf8 NOT NULL,
  `type` varchar(500) CHARACTER SET utf8 NOT NULL,
  `oldsale` varchar(500) CHARACTER SET utf8 NOT NULL,
  `newsale` varchar(500) CHARACTER SET utf8 NOT NULL,
  `xiaoliang` varchar(500) CHARACTER SET utf8 NOT NULL,
  `pinjia` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xianqing_shuju`
--

INSERT INTO `xianqing_shuju` (`sid`, `goodsname`, `type`, `oldsale`, `newsale`, `xiaoliang`, `pinjia`) VALUES
(1, '优优 388A 惠普HP88A易加粉硒鼓　适用惠普HP P1007/P1008/P1106/P1108/M1136/M1213nf', '适用惠普hpM1216nfh/M1218nfs/M226dn/M226dw/ M202n/m202dw/126fp/128fn/128fp 128fw/126a/126NW', '¥85.00', '59.00', '1284', '13');
