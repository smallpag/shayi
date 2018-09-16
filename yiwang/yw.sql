-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-15 08:43:24
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yw`
--

-- --------------------------------------------------------

--
-- 表的结构 `yw_category_products`
--

CREATE TABLE `yw_category_products` (
  `cid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `artist` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_category_products`
--

INSERT INTO `yw_category_products` (`cid`, `title`, `artist`, `time`, `type`, `size`, `url`, `price`, `artist_id`) VALUES
(1, '舞蹈', '刘銧銧', 2016, '布面油画', '100x80', 'img/index/category/1.jpg', 32750, 1),
(2, '海-2', '杜萌萌', 2015, '布面油画', '30x30', 'img/index/category/2.jpg', 2050, 2),
(3, '某年纪事', '吕楠', 2016, '布面油画', '80x100', 'img/index/category/3.jpg', 26500, 3),
(4, '百卉含英', '吴霜', 2018, '布面油画', '50x70', 'img/index/category/4.jpg', 23000, 4),
(5, '母豹子 你要勇敢', '闫平', 2016, '数码版', '80x72', 'img/index/category/bh1.jpg', 4780, 5),
(6, '狗嬉桃林', '周春芽', 2012, '丝网版', '100x80', 'img/index/category/bh2.jpg', 4540, 6),
(7, '挣脱之后的安逸', '刘健', 2015, '丝网版', '52x75', 'img/index/category/bh3.jpg', 6260, 7),
(8, '宏村的山（大）', '王文生', 2014, '数码版', '104x55', 'img/index/category/bh4.jpg', 3040, 8),
(9, '母豹子 你要勇敢', '闫平', 2016, '设色', '80x72', 'img/index/category/sm1.jpg', 4780, 5),
(10, '狗嬉桃林', '周春芽', 2012, '设色', '100x80', 'img/index/category/sm2.jpg', 4540, 6),
(11, '挣脱之后的安逸', '刘健', 2015, '设色', '52x75', 'img/index/category/sm3.jpg', 6260, 7),
(12, '宏村的山（大）', '王文生', 2014, '设色', '104x55', 'img/index/category/sm4.jpg', 3040, 8),
(13, '母豹子 你要勇敢', '闫平', 2016, '水彩', '80x72', 'img/index/category/sc1.jpg', 4780, 5),
(14, '狗嬉桃林', '周春芽', 2012, '水彩', '100x80', 'img/index/category/sc2.jpg', 4540, 6),
(15, '挣脱之后的安逸', '刘健', 2015, '水彩', '52x75', 'img/index/category/sc3.jpg', 6260, 7),
(16, '宏村的山（大）', '王文生', 2014, '水彩', '104x55', 'img/index/category/sc4.jpg', 3040, 8);

-- --------------------------------------------------------

--
-- 表的结构 `yw_lunbo`
--

CREATE TABLE `yw_lunbo` (
  `lbid` int(11) NOT NULL,
  `lburl` varchar(128) DEFAULT NULL,
  `lbsx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_lunbo`
--

INSERT INTO `yw_lunbo` (`lbid`, `lburl`, `lbsx`) VALUES
(1, 'img/index/lunbo/1.jpg', 1),
(2, 'img/index/lunbo/2.jpg', 2),
(3, 'img/index/lunbo/3.jpg', 3),
(4, 'img/index/lunbo/4.jpg', 4),
(5, 'img/index/lunbo/5.jpg', 5),
(6, 'img/index/lunbo/6.jpg', 8),
(7, 'img/index/lunbo/7.jpg', 6),
(8, 'img/index/lunbo/8.jpg', 7);

-- --------------------------------------------------------

--
-- 表的结构 `yw_new`
--

CREATE TABLE `yw_new` (
  `nid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `artist` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_new`
--

INSERT INTO `yw_new` (`nid`, `title`, `artist`, `time`, `type`, `size`, `url`, `price`, `artist_id`) VALUES
(1, '舞蹈', '刘銧銧', 2016, '布面油画', '100x80', 'img/index/new/1.jpg', 32750, 1),
(2, '海-2', '杜萌萌', 2015, '布面油画', '30x30', 'img/index/new/2.jpg', 2050, 2),
(3, '某年纪事', '吕楠', 2016, '布面油画', '80x100', 'img/index/new/3.jpg', 26500, 3),
(4, '百卉含英', '吴霜', 2018, '布面油画', '50x70', 'img/index/new/4.jpg', 23000, 4),
(5, '母豹子 你要勇敢', '闫平', 2016, '数码版', '80x72', 'img/index/new/5.jpg', 4780, 5),
(6, '狗嬉桃林', '周春芽', 2012, '丝网版', '100x80', 'img/index/new/6.jpg', 4540, 6),
(7, '挣脱之后的安逸', '刘健', 2015, '丝网版', '52x75', 'img/index/new/7.jpg', 6260, 7),
(8, '宏村的山（大）', '王文生', 2014, '数码版', '104x55', 'img/index/new/8.jpg', 3040, 8),
(9, '母豹子 你要勇敢', '闫平', 2016, '设色', '80x72', 'img/index/new/9.jpg', 4780, 5),
(10, '狗嬉桃林', '周春芽', 2012, '设色', '100x80', 'img/index/new/10.jpg', 4540, 6),
(11, '挣脱之后的安逸', '刘健', 2015, '设色', '52x75', 'img/index/new/11.jpg', 6260, 7),
(12, '宏村的山（大）', '王文生', 2014, '设色', '104x55', 'img/index/new/12.jpg', 3040, 8),
(13, '母豹子 你要勇敢', '闫平', 2016, '水彩', '80x72', 'img/index/new/13.jpg', 4780, 5),
(14, '狗嬉桃林', '周春芽', 2012, '水彩', '100x80', 'img/index/new/14.jpg', 4540, 6),
(15, '挣脱之后的安逸', '刘健', 2015, '水彩', '52x75', 'img/index/new/15.jpg', 6260, 7),
(16, '宏村的山（大）', '王文生', 2014, '水彩', '104x55', 'img/index/new/16.jpg', 3040, 8),
(17, '挣脱之后的安逸', '刘健', 2015, '丝网版', '52x75', 'img/index/new/17.jpg', 6260, 7),
(18, '宏村的山（大）', '王文生', 2014, '数码版', '104x55', 'img/index/new/18.jpg', 3040, 8),
(19, '母豹子 你要勇敢', '闫平', 2016, '设色', '80x72', 'img/index/new/19.jpg', 4780, 5),
(20, '狗嬉桃林', '周春芽', 2012, '设色', '100x80', 'img/index/new/20.jpg', 4540, 6);

-- --------------------------------------------------------

--
-- 表的结构 `yw_products`
--

CREATE TABLE `yw_products` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `artist` varchar(32) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `shape` varchar(16) DEFAULT NULL,
  `space` varchar(16) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `style` varchar(16) DEFAULT NULL,
  `theme` varchar(16) DEFAULT NULL,
  `caizhi` varchar(16) DEFAULT NULL,
  `jianjie` varchar(256) DEFAULT NULL,
  `xjo` varchar(256) DEFAULT NULL,
  `xjt` varchar(256) DEFAULT NULL,
  `list_url` varchar(64) DEFAULT NULL,
  `pro_url` varchar(64) DEFAULT NULL,
  `xjo_url` varchar(64) DEFAULT NULL,
  `xjt_url` varchar(64) DEFAULT NULL,
  `fdj_url` varchar(64) DEFAULT NULL,
  `ysj_url` varchar(64) DEFAULT NULL,
  `pro_w` int(11) DEFAULT NULL,
  `pro_h` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_products`
--

INSERT INTO `yw_products` (`id`, `title`, `artist`, `num`, `time`, `color`, `size`, `price`, `shape`, `space`, `category`, `style`, `theme`, `caizhi`, `jianjie`, `xjo`, `xjt`, `list_url`, `pro_url`, `xjo_url`, `xjt_url`, `fdj_url`, `ysj_url`, `pro_w`, `pro_h`) VALUES
(1, '艺术家工作室（7）', '田树兴', 18, 2016, '黄色系', '90x60', 16350, '横', '办公，客厅，书房，餐厅，酒店大堂', '油画', '写实', '静物', '布面油画', '艺术家田树兴笔下的“艺术家工作室”系列油画作品用较高的色彩饱和度表现日常场景，通过对工作室的高度概括，用鲜艳的色彩点缀美好生活，繁冗的生活亦不再晦暗，谁说艺术家工作室就一定是脏乱差的代名词？一定是狂放不羁的代名词？它们也可以如此的安然静谧，轻灵中思绪随意遨游，畅想无限。', '将写实的人物与抽象的背景进行融合。在这之间，形成一种反差，也将主题置入一种更无序和空无的背静中。这样更加抽离一种现实感。在一种现实与非现实之间形成真实与虚幻的对撞。另一方面我希望通过这样的方式将作品进行一种提纯与抽离，将一种更为单纯以及美的情绪提炼出来。——艺术家自述', '我的艺术不是用来揭露现实的，也不是用来参与政治的，我只是用画笔在表达我对生活的爱···有人问我你在表达什么 ！！表达什么？当你看到我的作品的时候，给你的第一感觉就是我要表达的。——艺术家自述', 'img/products/list/01.jpg', 'img/products/pro/01.jpg', 'img/products/xj1/01.jpg', 'img/products/xj2/01.jpg', 'img/products/fdj/01.jpg', 'img/products/artist/01.png', 669, 444),
(2, '光使灰尘有了方向', '田树兴', 18, 2015, '黄色系', '130x180', 45790, '竖', '办公，客厅，书房，餐厅，儿童房，', '油画', '具象表现', '人物', '布面油画', '艺术家有意布局观看者视线方向，存在一种强烈的空间感。观看的视线先是从美丽的女子侧颜俯看上转移到上升的楼梯，再到白色的天窗，顺着延伸到画面外楼上的空间，辗转起落的视线运动让画面活跃了起来。', '我的艺术不是用来揭露现实的，也不是用来参与政治的，我只是用画笔在表达我对生活的爱···有人问我你在表达什么 ！！表达什么？当你看到我的作品的时候，给你的第一感觉就是我要表达的。——艺术家自述', '艺术品细节展示。', 'img/products/list/02.jpg', 'img/products/pro/02.jpg', 'img/products/xj1/02.jpg', 'img/products/xj2/02.jpg', 'img/products/fdj/02.jpg', 'img/products/artist/01.png', 331, 458),
(3, '二次元系列蜗牛No.4', '田树兴', 18, 2018, '红色系', '30x30', 2920, '方', '办公，客厅，书房，餐厅，儿童房，', '油画', '观念艺术', '其他', '木板油画', '作品《二次元系列蜗牛》像是一个故事脚本，每个人可以发挥不同的故事见解和述说，在平面的维度上引申出背后的多重含义。画面以蜗牛作为一个虚拟角色介入到现实世界，穿梭于生活中的各个角落，带有戏剧性趣味，又是真实生活的写照。', '小小的蜗牛常常是被忽略的对象，在大千世界下显得是多么的弱小和微不足道，反映出人的内心和人的生命意义的探讨，在这个纷繁杂陈的现实中都在竭力的寻找自我的价值和存在感。', '艺术品细节展示。', 'img/products/list/03.jpg', 'img/products/pro/03.jpg', 'img/products/xj1/03.jpg', 'img/products/xj2/03.jpg', 'img/products/fdj/03.jpg', 'img/products/artist/02.png', 467, 458),
(4, '海-2', '杜萌萌', 10, 2015, '蓝色系', '30x30', 2120, '方', '餐厅，客厅，书房，酒店大堂', '油画', '具象表现', '风景', '布面油画', '艺术家天生自带童真纯洁的气质，描绘的画面有种虚实相生的想象。置身于一望无际的大海中，如同精神心灵接受了一次洗礼，仿佛进入一个如梦如幻、亦假亦真的童话世界。 ', '绘画对于我而言是一种修行，是自己和世界之间的沟通媒介，它让我读到自己的内心，并不断的去表达我的所思所想，可以说是我世界观的表达。而对于观众，我希望我的作品能传达一份温情和爱的力量。我始终相信，爱是化解一切的动力，也是我们之所以为生命的理由。——艺术家自述', '我希望通过绘画去唤醒观者对视觉图像背后事物的思考，这些作品并不具体，偏重内心的叙事，但仅仅用梦幻来形容，又过于武断。人们用梦幻形容美好，美好又意味着短暂、脆弱、小清新。我并不希望观众这样的想当然，对于我而言，这梦幻的爱就是我们能存活的美好的理由，它支撑着我们接受所有阴暗和痛苦，它让我们相信人与人之间的美好，相信宇宙对人类的眷顾。——艺术家自述', 'img/products/list/04.jpg', 'img/products/pro/04.jpg', 'img/products/xj1/04.jpg', 'img/products/xj2/04.jpg', 'img/products/fdj/04.jpg', 'img/products/artist/02.png', 459, 458),
(5, '某年纪事', '吕楠', 9, 2018, '绿色系，蓝色系', '80x100', 26500, '竖', '办公，客厅，书房，餐厅，酒店大堂', '油画', '观念艺术', '风景', '布面油画', '艺术家吕楠的作品总有一股诗意的抒情，意境朦胧充满浪漫的色彩，湖面婆娑的树影，随风摇曳，映衬的天空碧蓝无暇。缥缈的气氛让人思绪上头，情不自禁的酝酿起诗的篇章。 ', '作为女性艺术家，更注重挖掘内心的敏感深处，从自身的审美经验出发去诠释这个世界，与个人情感生活息息相关。', '艺术品细节图展示。', 'img/products/list/05.jpg', 'img/products/pro/05.jpg', 'img/products/xj1/05.jpg', 'img/products/xj2/05.jpg', 'img/products/fdj/05.jpg', 'img/products/artist/03.png', 367, 458),
(6, '百卉含英', '吴霜', 24, 2018, '彩色系', '50x70', 23210, '竖', '办公，客厅，书房，餐厅，酒店大堂', '油画', '抽象表现', '风景', '布面油画', '艺术家吴霜《百卉含英》作品，春天的气息扑面而来，似乎听到大自然传来的乐章，鸟儿在高声吟唱，花儿在从中微笑。颜色是欢快的，让人拥抱爱，拥抱世间的美好。 ', '“我不愿意将现实原原本本地描绘出来，我更希望主观一点儿，去重新构建我的模糊记忆和体验。因为，我总觉得，事物没有绝对的正确、错误甚至是标准。眼所见、耳所闻，都未必真实。”——艺术家自述', '艺术品细节图展示。', 'img/products/list/06.jpg', 'img/products/pro/06.jpg', 'img/products/xj1/06.jpg', 'img/products/xj2/06.jpg', 'img/products/fdj/06.jpg', 'img/products/artist/04.png', 325, 458);

-- --------------------------------------------------------

--
-- 表的结构 `yw_shoppingcart`
--

CREATE TABLE `yw_shoppingcart` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `is_check` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_shoppingcart`
--

INSERT INTO `yw_shoppingcart` (`cid`, `uid`, `id`, `is_check`) VALUES
(28, 3, 2, 0),
(29, 3, 6, 0),
(30, 3, 5, 0),
(31, 3, 1, 0),
(32, 6, 5, 0),
(33, 6, 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yw_user`
--

CREATE TABLE `yw_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `birthday` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yw_user`
--

INSERT INTO `yw_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `nickname`, `user_name`, `gender`, `birthday`) VALUES
(1, '18573178631', '1990223110', '22929090@qq.com', '18573178631', NULL, NULL, NULL, 1, NULL),
(2, '18573178632', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '18573178633', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '18573178666', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '18573178888', '1564897', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '18573178630', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yw_category_products`
--
ALTER TABLE `yw_category_products`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `yw_lunbo`
--
ALTER TABLE `yw_lunbo`
  ADD PRIMARY KEY (`lbid`);

--
-- Indexes for table `yw_new`
--
ALTER TABLE `yw_new`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `yw_products`
--
ALTER TABLE `yw_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yw_shoppingcart`
--
ALTER TABLE `yw_shoppingcart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `yw_user`
--
ALTER TABLE `yw_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `yw_category_products`
--
ALTER TABLE `yw_category_products`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `yw_lunbo`
--
ALTER TABLE `yw_lunbo`
  MODIFY `lbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `yw_new`
--
ALTER TABLE `yw_new`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `yw_products`
--
ALTER TABLE `yw_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `yw_shoppingcart`
--
ALTER TABLE `yw_shoppingcart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `yw_user`
--
ALTER TABLE `yw_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
