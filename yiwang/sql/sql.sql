set names utf8;
drop database if exists yw;
create database yw charset=utf8;
use yw;
create table yw_user(
uid int primary key auto_increment,
uname varchar(32),
upwd varchar(32),
email varchar(64),
phone varchar(16),
avatar varchar(128),
nickname varchar(32),
user_name varchar(32),
gender int,
birthday varchar(128)
);
insert into yw_user values(1,18573178631,1990223110,"22929090@qq.com",18573178631,null,null,null,1,null),
(null,18573178632,123456,null,null,null,null,null,null,null);
create table yw_lunbo(
lbid int primary key auto_increment,
lburl varchar(128),
lbsx int
);
insert into yw_lunbo values(1,"img/index/lunbo/1.jpg",1);
insert into yw_lunbo values(2,"img/index/lunbo/2.jpg",2);
insert into yw_lunbo values(3,"img/index/lunbo/3.jpg",3);
insert into yw_lunbo values(4,"img/index/lunbo/4.jpg",4);
insert into yw_lunbo values(5,"img/index/lunbo/5.jpg",5);
insert into yw_lunbo values(6,"img/index/lunbo/6.jpg",8);
insert into yw_lunbo values(7,"img/index/lunbo/7.jpg",6);
insert into yw_lunbo values(8,"img/index/lunbo/8.jpg",7);
create table yw_category_products(
cid int primary key auto_increment,
title varchar(64),
artist varchar(32),
time int,
type varchar(64),
size varchar(64),
url varchar(128),
price int,
artist_id int
);
insert into yw_category_products values(1,"舞蹈","刘銧銧",2016,"布面油画","100x80","img/index/category/1.jpg",32750,1);
insert into yw_category_products values(2,"海-2","杜萌萌",2015,"布面油画","30x30","img/index/category/2.jpg",2050,2);
insert into yw_category_products values(3,"某年纪事","吕楠",2016,"布面油画","80x100","img/index/category/3.jpg",26500,3);
insert into yw_category_products values(4,"百卉含英","吴霜",2018,"布面油画","50x70","img/index/category/4.jpg",23000,4);
insert into yw_category_products values(null,"母豹子 你要勇敢","闫平",2016,"数码版","80x72","img/index/category/bh1.jpg",4780,5);
insert into yw_category_products values(null,"狗嬉桃林","周春芽",2012,"丝网版","100x80","img/index/category/bh2.jpg",4540,6);
insert into yw_category_products values(null,"挣脱之后的安逸","刘健",2015,"丝网版","52x75","img/index/category/bh3.jpg",6260,7);
insert into yw_category_products values(null,"宏村的山（大）","王文生",2014,"数码版","104x55","img/index/category/bh4.jpg",3040,8);
insert into yw_category_products values(null,"母豹子 你要勇敢","闫平",2016,"设色","80x72","img/index/category/sm1.jpg",4780,5);
insert into yw_category_products values(null,"狗嬉桃林","周春芽",2012,"设色","100x80","img/index/category/sm2.jpg",4540,6);
insert into yw_category_products values(null,"挣脱之后的安逸","刘健",2015,"设色","52x75","img/index/category/sm3.jpg",6260,7);
insert into yw_category_products values(null,"宏村的山（大）","王文生",2014,"设色","104x55","img/index/category/sm4.jpg",3040,8);
insert into yw_category_products values(null,"母豹子 你要勇敢","闫平",2016,"水彩","80x72","img/index/category/sc1.jpg",4780,5);
insert into yw_category_products values(null,"狗嬉桃林","周春芽",2012,"水彩","100x80","img/index/category/sc2.jpg",4540,6);
insert into yw_category_products values(null,"挣脱之后的安逸","刘健",2015,"水彩","52x75","img/index/category/sc3.jpg",6260,7);
insert into yw_category_products values(null,"宏村的山（大）","王文生",2014,"水彩","104x55","img/index/category/sc4.jpg",3040,8);

create table yw_new(
nid int primary key auto_increment,
title varchar(64),
artist varchar(32),
time int,
type varchar(64),
size varchar(64),
url varchar(128),
price int,
artist_id int
);
insert into yw_new values(1,"舞蹈","刘銧銧",2016,"布面油画","100x80","img/index/new/1.jpg",32750,1),
(2,"海-2","杜萌萌",2015,"布面油画","30x30","img/index/new/2.jpg",2050,2),
(3,"某年纪事","吕楠",2016,"布面油画","80x100","img/index/new/3.jpg",26500,3),
(4,"百卉含英","吴霜",2018,"布面油画","50x70","img/index/new/4.jpg",23000,4),
(null,"母豹子 你要勇敢","闫平",2016,"数码版","80x72","img/index/new/5.jpg",4780,5),
(null,"狗嬉桃林","周春芽",2012,"丝网版","100x80","img/index/new/6.jpg",4540,6),
(null,"挣脱之后的安逸","刘健",2015,"丝网版","52x75","img/index/new/7.jpg",6260,7),
(null,"宏村的山（大）","王文生",2014,"数码版","104x55","img/index/new/8.jpg",3040,8),
(null,"母豹子 你要勇敢","闫平",2016,"设色","80x72","img/index/new/9.jpg",4780,5),
(null,"狗嬉桃林","周春芽",2012,"设色","100x80","img/index/new/10.jpg",4540,6),
(null,"挣脱之后的安逸","刘健",2015,"设色","52x75","img/index/new/11.jpg",6260,7),
(null,"宏村的山（大）","王文生",2014,"设色","104x55","img/index/new/12.jpg",3040,8),
(null,"母豹子 你要勇敢","闫平",2016,"水彩","80x72","img/index/new/13.jpg",4780,5),
(null,"狗嬉桃林","周春芽",2012,"水彩","100x80","img/index/new/14.jpg",4540,6),
(null,"挣脱之后的安逸","刘健",2015,"水彩","52x75","img/index/new/15.jpg",6260,7),
(null,"宏村的山（大）","王文生",2014,"水彩","104x55","img/index/new/16.jpg",3040,8),
(null,"挣脱之后的安逸","刘健",2015,"丝网版","52x75","img/index/new/17.jpg",6260,7),
(null,"宏村的山（大）","王文生",2014,"数码版","104x55","img/index/new/18.jpg",3040,8),
(null,"母豹子 你要勇敢","闫平",2016,"设色","80x72","img/index/new/19.jpg",4780,5),
(null,"狗嬉桃林","周春芽",2012,"设色","100x80","img/index/new/20.jpg",4540,6);


/* 商品表*/

create table yw_products(
id int primary key auto_increment,
title varchar(64),
artist varchar(32),
num int,           /*作品数量*/
time int,
color varchar(16),  /*色系：红色系，黄色系，绿色系，蓝色系，黑白灰*/
size varchar(64),
price int,
shape varchar(16),  /* 形状：方，横，竖，圆，不规则*/
space varchar(16),   /*摆放空间：办公，客厅，书房，餐厅，儿童房，走廊、回廊,卧室，酒店大堂*/
category varchar(16), /*分类：油画，版画，水墨，水彩（粉），雕塑，摄影，书法，其他*/
style varchar(16), /*风格：抽象，具象，观念，传统国画，卡通，实验水墨，写实，其他*/
theme varchar(16), /*题材：人物，风景，静物，动物，花鸟，山水，其他*/
caizhi varchar(16), /*材质：布面油画，布面丙烯，数码微喷*/
jianjie varchar(256), /*商品简介*/
xjo varchar(256), /*细节简介1*/
xjt varchar(256),   /*细节简介2*/
list_url varchar(64), /*列表图片地址*/
pro_url varchar(64),  /*商品页面图片地址*/
xjo_url varchar(64),  /*细节图1地址*/
xjt_url varchar(64),  /*细节图2地址*/
fdj_url varchar(64),   /*放大细节图地址*/
ysj_url varchar(64),     /*艺术家照片地址*/
pro_w int,      /*商品页面图宽度*/
pro_h int       /*商品页面图高度*/
);
insert into yw_products values
(1,"艺术家工作室（7）","田树兴",18,2016,"黄色系","90x60",16350,"横","办公，客厅，书房，餐厅，酒店大堂","油画","写实","静物","布面油画","艺术家田树兴笔下的“艺术家工作室”系列油画作品用较高的色彩饱和度表现日常场景，通过对工作室的高度概括，用鲜艳的色彩点缀美好生活，繁冗的生活亦不再晦暗，谁说艺术家工作室就一定是脏乱差的代名词？一定是狂放不羁的代名词？它们也可以如此的安然静谧，轻灵中思绪随意遨游，畅想无限。","将写实的人物与抽象的背景进行融合。在这之间，形成一种反差，也将主题置入一种更无序和空无的背静中。这样更加抽离一种现实感。在一种现实与非现实之间形成真实与虚幻的对撞。另一方面我希望通过这样的方式将作品进行一种提纯与抽离，将一种更为单纯以及美的情绪提炼出来。——艺术家自述","我的艺术不是用来揭露现实的，也不是用来参与政治的，我只是用画笔在表达我对生活的爱···有人问我你在表达什么 ！！表达什么？当你看到我的作品的时候，给你的第一感觉就是我要表达的。——艺术家自述","img/products/list/01.jpg","img/products/pro/01.jpg","img/products/xj1/01.jpg","img/products/xj2/01.jpg","img/products/fdj/01.jpg","img/products/artist/01.png",669,444),
(null,"光使灰尘有了方向","田树兴",18,2015,"黄色系","130x180",45790,"竖","办公，客厅，书房，餐厅，儿童房，走廊、回廊,卧室，酒店大堂","油画","具象表现","人物","布面油画","艺术家有意布局观看者视线方向，存在一种强烈的空间感。观看的视线先是从美丽的女子侧颜俯看上转移到上升的楼梯，再到白色的天窗，顺着延伸到画面外楼上的空间，辗转起落的视线运动让画面活跃了起来。","我的艺术不是用来揭露现实的，也不是用来参与政治的，我只是用画笔在表达我对生活的爱···有人问我你在表达什么 ！！表达什么？当你看到我的作品的时候，给你的第一感觉就是我要表达的。——艺术家自述","艺术品细节展示。","img/products/list/02.jpg","img/products/pro/02.jpg","img/products/xj1/02.jpg","img/products/xj2/02.jpg","img/products/fdj/02.jpg","img/products/artist/01.png",331,458),
(null,"二次元系列蜗牛No.4","田树兴",18,2018,"红色系","30x30",2920,"方","办公，客厅，书房，餐厅，儿童房，走廊、回廊,卧室，酒店大堂","油画","观念艺术","其他","木板油画","作品《二次元系列蜗牛》像是一个故事脚本，每个人可以发挥不同的故事见解和述说，在平面的维度上引申出背后的多重含义。画面以蜗牛作为一个虚拟角色介入到现实世界，穿梭于生活中的各个角落，带有戏剧性趣味，又是真实生活的写照。","小小的蜗牛常常是被忽略的对象，在大千世界下显得是多么的弱小和微不足道，反映出人的内心和人的生命意义的探讨，在这个纷繁杂陈的现实中都在竭力的寻找自我的价值和存在感。","艺术品细节展示。","img/products/list/03.jpg","img/products/pro/03.jpg","img/products/xj1/03.jpg","img/products/xj2/03.jpg","img/products/fdj/03.jpg","img/products/artist/02.png",467,458),
(null,"海-2","杜萌萌",10,2015,"蓝色系","30x30",2120,"方","餐厅，客厅，书房，酒店大堂","油画","具象表现","风景","布面油画","艺术家天生自带童真纯洁的气质，描绘的画面有种虚实相生的想象。置身于一望无际的大海中，如同精神心灵接受了一次洗礼，仿佛进入一个如梦如幻、亦假亦真的童话世界。 ","绘画对于我而言是一种修行，是自己和世界之间的沟通媒介，它让我读到自己的内心，并不断的去表达我的所思所想，可以说是我世界观的表达。而对于观众，我希望我的作品能传达一份温情和爱的力量。我始终相信，爱是化解一切的动力，也是我们之所以为生命的理由。——艺术家自述","我希望通过绘画去唤醒观者对视觉图像背后事物的思考，这些作品并不具体，偏重内心的叙事，但仅仅用梦幻来形容，又过于武断。人们用梦幻形容美好，美好又意味着短暂、脆弱、小清新。我并不希望观众这样的想当然，对于我而言，这梦幻的爱就是我们能存活的美好的理由，它支撑着我们接受所有阴暗和痛苦，它让我们相信人与人之间的美好，相信宇宙对人类的眷顾。——艺术家自述","img/products/list/04.jpg","img/products/pro/04.jpg","img/products/xj1/04.jpg","img/products/xj2/04.jpg","img/products/fdj/04.jpg","img/products/artist/02.png",459,458),
(null,"某年纪事","吕楠",9,2018,"绿色系，蓝色系","80x100",26500,"竖","办公，客厅，书房，餐厅，酒店大堂","油画","观念艺术","风景","布面油画","艺术家吕楠的作品总有一股诗意的抒情，意境朦胧充满浪漫的色彩，湖面婆娑的树影，随风摇曳，映衬的天空碧蓝无暇。缥缈的气氛让人思绪上头，情不自禁的酝酿起诗的篇章。 ","作为女性艺术家，更注重挖掘内心的敏感深处，从自身的审美经验出发去诠释这个世界，与个人情感生活息息相关。","艺术品细节图展示。","img/products/list/05.jpg","img/products/pro/05.jpg","img/products/xj1/05.jpg","img/products/xj2/05.jpg","img/products/fdj/05.jpg","img/products/artist/03.png",367,458),
(null,"百卉含英","吴霜",24,2018,"彩色系","50x70",23210,"竖","办公，客厅，书房，餐厅，酒店大堂","油画","抽象表现","风景","布面油画","艺术家吴霜《百卉含英》作品，春天的气息扑面而来，似乎听到大自然传来的乐章，鸟儿在高声吟唱，花儿在从中微笑。颜色是欢快的，让人拥抱爱，拥抱世间的美好。 ","“我不愿意将现实原原本本地描绘出来，我更希望主观一点儿，去重新构建我的模糊记忆和体验。因为，我总觉得，事物没有绝对的正确、错误甚至是标准。眼所见、耳所闻，都未必真实。”——艺术家自述","艺术品细节图展示。","img/products/list/06.jpg","img/products/pro/06.jpg","img/products/xj1/06.jpg","img/products/xj2/06.jpg","img/products/fdj/06.jpg","img/products/artist/04.png",325,458);

/*购物车*/

create table yw_shoppingcart(
    cid int primary key auto_increment,
    uid int,  /*用户id*/
    id int,    /*商品id*/
    is_check int  /*是否付款*/
);
insert into yw_shoppingcart values
(1,1,5,1),
(null,1,1,1),
(null,1,3,1),
(null,1,2,1),
(null,1,4,0);