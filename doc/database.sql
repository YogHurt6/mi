create database mistore;
use mistore;

/*1.地址信息*/
CREATE TABLE `addrinfo` (
                            `ano` int primary key NOT NULL AUTO_INCREMENT,/*地址编号*/
                            `mno` int(11) DEFAULT NULL,/* 用户编号，登录用户 */
                            `name` varchar(100)  NOT NULL,/* 收件人 */
                            `tel` varchar(15)  NOT NULL,/* 电话号码 */
                            `province` varchar(100)  NOT NULL,/* 省 */
                            `city` varchar(100)  NOT NULL,/* 市 */
                            `area` varchar(100)  NOT NULL,/* 区 */
                            `addr` varchar(100)  NOT NULL,/* 详细地址 */
                            `flag` int(11) DEFAULT NULL,/* */
                            `status` int(11) DEFAULT NULL/* */
);

INSERT INTO `addrinfo` VALUES
(1,1,'周海军','15096098010','湖南省','衡阳市','珠晖区','美的梧桐庄园',0,1),
(2,1,'源辰','15096098010','湖南省','衡阳市','珠晖区','衡花路18号湖南工学院',1,1),
(3,1,'周天','1509608011','湖南省','衡阳市','珠晖区','南华大学',0,1);

/*2.管理员信息*/
CREATE TABLE `admininfo`(
                            `aid` int(11) primary key NOT NULL AUTO_INCREMENT,
                            `aname` varchar(100) COLLATE utf8_bin NOT NULL,
                            `pwd` varchar(100) COLLATE utf8_bin NOT NULL,
                            `tel` varchar(15) COLLATE utf8_bin DEFAULT NULL,
                            `status` int(11) DEFAULT NULL
);

INSERT INTO `admininfo` VALUES
(1,'navy','c8837b23ff8aaa8a2dde915473ce0991','15096098088',1);
INSERT INTO `admininfo` VALUES (100,'a','0cc175b9c0f1b6a831c399e269772661','15096098088',1);


/*4.商品信息*/
CREATE TABLE `goodsinfo` (
                             `gno` int(11) primary key NOT NULL AUTO_INCREMENT,
                             `gname` varchar(100)  NOT NULL,
                             `tno` int(11) DEFAULT NULL,
                             `price` decimal(8,2) DEFAULT NULL,
                             `intro` varchar(200)  DEFAULT NULL,
                             `balance` int(11) DEFAULT NULL,
                             `pics` varchar(500)  DEFAULT NULL,
                             `qperied` varchar(50)  DEFAULT NULL,
                             `descr` varchar (500),
                             `status` int(11) DEFAULT NULL
);

INSERT INTO `goodsinfo` VALUES (1, 'Redmi K50 至尊版 8GB+256GB', '102', '3299.00', '反馈用户最新款', '3099', '1.png',  '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (2, '小米 12 8GB+256GB', '101', '3699.00', '反馈用户最新款', '3699', '2.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (3, '小米 11 青春版 8GB+128GB', '101', '1999.00', '反馈用户最新款', '1599', '3.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (4, '小米 12S 12GB+256GB', '101', '4699.00', '反馈用户最新款', '4399', '4.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (5, '小米 12X 8GB+128GB', '101', '2999.00', '反馈用户最新款', '2699', '5.png',  '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (6, '小米 10S 8GB+128GB', '101', '2699.00', '反馈用户最新款', '2399', '6.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (7, 'Redmi Note 11 5G 4GB+128GB', '102', '1199.00', '反馈用户最新款', '1199', '7.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (8, 'Redmi Note 11T Pro 12GB+256GB', '102', '2399.00', '反馈用户最新款', '2099', '8.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (9, 'Redmi 10A 4GB+64GB', '102', '699.00', '反馈用户最新款', '699', '9.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (10, 'Redmi Note 11T Pro+ 8GB+512GB', '102', '2499.00', '反馈用户最新款', '2299', '10.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (11, 'Redmi K50 8GB+128GB', '102', '2399.00', '反馈用户最新款', '2299', '11.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (12, 'Redmi Note 11 4G 4GB+128GB', '102', '999.00', '反馈用户最新款', '949', '12.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (13, 'Redmi Note 11 Pro+ 6GB+128GB', '102', '1999.00', '反馈用户最新款', '1999', '13.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (14, '小米 11 青春活力版 8GB+128GB', '101', '1999.00', '反馈用户最新款', '1599', '14.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (15, '小米 Civi 2 8GB+256GB', '101', '2499.00', '反馈用户最新款', '2499', '15.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (16, 'Redmi Note 12 Pro+ 12GB+256GB', '102', '2399.00', '反馈用户最新款', '2299', '16.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (17, 'Redmi Note 12 5G 4GB+128GB', '102', '1199.00', '反馈用户最新款', '1199', '17.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (18, '小米 12 Pro天玑版 8GB+128GB', '101', '3999.00', '反馈用户最新款', '2999', '18.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (19, '小米 Civi 8GB+128GB', '101', '2299.00', '反馈用户最新款', '2099', '19.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (20, '小米 12S Pro 12GB+256GB', '101', '5399.00', '反馈用户最新款', '5099', '20.png', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (21, '小米电视EA55 2022款55英寸 黑色', '103', '2099.00', '反馈用户最新款', '1199', '21.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (22, '小米电视EA65 2022款65英寸 黑色', '103', '2899.00', '反馈用户最新款', '1799', '22.png', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (23, '小米电视EA43 2022款43英寸 黑色', '103', '1399.00', '反馈用户最新款', '699', '23.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (24, '小米电视EA75 2022款75英寸 黑色', '103', '4199.00', '反馈用户最新款', '2799', '24.jpg',  '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (25, '小米电视ES75 2022款75英寸 黑色', '103', '5999.00', '反馈用户最新款', '4999', '25.jpg', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (26, 'Redmi MAX 86英寸 深青色', '103', '7999.00', '反馈用户最新款', '5899', '26.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (27, '小米电视EA58 2022款58英寸 黑色', '103', '1899.00', '反馈用户最新款', '1399', '27.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (28, 'Redmi X65 2022款 65英寸 蓝色', '103', '3999.00', '反馈用户最新款', '2699', '28.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (29, '小米电视EA70 2022款70英寸 黑色', '103', '3299.00', '反馈用户最新款', '2269', '29.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (30, '小米电视EA60 2022款60英寸 黑色', '103', '2099.00', '反馈用户最新款', '1699', '30.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (31, 'RedmiBook Pro 14 锐龙版', '104', '4599.00', '反馈用户最新款', '3799', '31',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (32, 'Redmi G 游戏本 2022', '104', '7499.00', '反馈用户最新款', '6299', '32.png',  '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (33, 'Redmi Book Pro 14 2022', '104', '5399.00', '反馈用户最新款', '4499', '33.jpg', '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (34, 'RedmiBook Pro 15 2022 锐龙版', '104', '5499.00', '反馈用户最新款', '4999', '34.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (35, 'Redmi G Pro 游戏本', '104', '8999.00', '反馈用户最新款', '7999', '35.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (36, 'Xiaomi Book Air 13', '104', '5999.00', '反馈用户最新款', '5199', '36.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (37, 'Redmi G Pro 游戏本 锐龙版 R7', '104', '8799.00', '反馈用户最新款', '7799', '37.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (38, '小米笔记本 Pro 15 增强版', '104', '6499.00', '反馈用户最新款', '5799', '38.jpg', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (39, 'RedmiBook Pro 14 增强版', '104', '4999.00', '反馈用户最新款', '4499', '39.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (40, 'Redmi G 游戏本 锐龙版 R5', '104', '7299.00', '反馈用户最新款', '6299', '40.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (41, '米家波轮洗衣机 10kg', '105', '1099.00', '反馈用户最新款', '899', '41.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (42, '米家吸尘器2', '105', '199.00', '反馈用户最新款', '189', '42.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (43, '米家智能空气炸烤箱 30L', '105', '899.00', '反馈用户最新款', '749', '43.jpg',  '2020/09/01', 0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (44, '米家加湿器 2', '105', '99.00', '反馈用户最新款', '99', '44.jpg', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (45, '米家纯净式智能加湿器 2 Lite 滤芯', '105', '69.00', '反馈用户最新款', '69', '45.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (46, '米家负离子吹风机 H301', '105', '199.00', '反馈用户最新款', '199', '46.png', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (47, '米家声波电动牙刷T500C', '105', '249.00', '反馈用户最新款', '199', '47.jpg', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (48, '米家电磁炉青春版', '105', '199.00', '反馈用户最新款', '179', '48.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (49, '米家冰箱 对开门 502L冰晶版', '105', '3299.00', '反馈用户最新款', '2799', '49.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (50, '米家负离子速干吹风机 H300', '105', '149.00', '反馈用户最新款', '129', '50.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (51, 'Populele 2 智能尤克里里', '106', '599.00', '反馈用户最新款', '479', '51.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (52, '小米手环7', '106', '249.00', '反馈用户最新款', '249', '52.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (53, '小米巨能写中性笔10支装', '106', '9.99', '反馈用户最新款', '10', '53.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (54, '小米智能摄像机 云台版2K', '106', '199.00', '反馈用户最新款', '199', '54.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (55, '小米巨能写多彩中性笔', '106', '9.99', '反馈用户最新款', '10', '55.jpg', '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (56, '小米WiFi放大器 Pro', '106', '69.00', '反馈用户最新款', '69', '56.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (57, '米家台灯Lite', '106', '99.00', '反馈用户最新款', '99', '57.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (58, 'CyberDog 仿生四足机器人', '106', '9999.00', '反馈用户最新款', '9999', '58.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (59, '小米手环7 NFC版', '106', '299.00', '反馈用户最新款', '299', '59.png',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');
INSERT INTO `goodsinfo` VALUES (60, '小米米家液晶小黑板', '106', '49.00', '反馈用户最新款', '49', '60.jpg',  '2020/09/01',  0x3C703EE5BE88E5A5BDE794A83C2F703E0D0A, '1');

/*5.商品类型*/
CREATE TABLE `goodstype`(
                            `tno` int(11) primary key NOT NULL AUTO_INCREMENT,/*类型编号*/
                            `tname` varchar(100)  NOT NULL,/*类型名*/
                            `status` int(11) DEFAULT NULL/* */
);
INSERT INTO `goodstype` VALUES (101,'小米手机',1),
                               (102,'Redmi红米',1),
                               (103,'电视',1),
                               (104,'笔记本',1),
                               (105,'家电',1),
                               (106,'智能硬件',1);

/*6.用户信息*/
create table memberinfo(
                           `mno` int(11)primary key NOT NULL AUTO_INCREMENT,
                           `nickName` varchar(100) DEFAULT NULL,
                           `pwd` varchar(100) NOT NULL,
                           `tel` varchar(15) DEFAULT NULL,
                           `email` varchar(100) NOT NULL,
                           `photo` varchar(100) DEFAULT NULL,
                           `regDate` varchar(50) DEFAULT NULL,
                           `status` int(11) DEFAULT NULL
);

/*7.订单信息*/
CREATE TABLE `orderinfo`
(
    `ono`      int(11) primary key NOT NULL AUTO_INCREMENT,          
    `odate`   varchar(50)  DEFAULT NULL,/*订单时间*/
    `ano`     int(11) DEFAULT NULL,/*地址编号*/
    `sdate`   varchar(50)  DEFAULT NULL,
    `rdate`   varchar(50)  DEFAULT NULL,
    `status`  int(11)   DEFAULT NULL,
    `price`   varchar(50)  DEFAULT NULL,/*价格*/
    `invoice` int(11)   DEFAULT NULL
);

INSERT INTO `orderinfo` VALUES (1,'2020-09-03 14:55:27','1590053041767',NULL,NULL,1,5009.00,0),
                               (2,'2020-01-03 14:55:27','1590053041767',NULL,NULL,1,5009.00,0),
                               (3,'2020-06-03 14:55:27','1590053041767',NULL,NULL,1,5009.00,0),
                               (4,'2020-01-03 14:55:27','1590053041767',NULL,NULL,1,5009.00,0),
                               (5,'2020-02-03 14:55:27','1590053041767',NULL,NULL,1,2009.00,0),
                               (6,'2020-03-03 14:55:27','1590053041767',NULL,NULL,1,8009.00,0),
                               (7,'2020-04-03 14:55:27','1590053041767',NULL,NULL,1,3009.00,0),
                               (8,'2020-12-08 16:45:36','1590053187661',NULL,NULL,1,8008.00,0),
                               (9,'2020-05-08 16:19:19','1590053041766',NULL,NULL,1,18004.00,0),
                               (10,'2020-12-08 17:37:42','1590053187661',NULL,NULL,1,5009.00,0),
                               (11,'2020-10-18 19:07:13','1590053041766',NULL,NULL,1,9007.00,0),
                               (12,'2020-12-08 16:18:28','1590053041766',NULL,NULL,1,15007.00,0);


/*8.订单商品信息*/
CREATE TABLE `orderiteminfo`(
                                `ino`    int(11) primary key NOT NULL AUTO_INCREMENT,/*物品号*/
                                `ono`    int(11)  DEFAULT NULL,/*订单编号*/
                                `gno`    int(11)     DEFAULT NULL,/*商品编号*/
                                `nums`   int(11)      DEFAULT NULL,/*数量*/
                                `price`  varchar (50)    DEFAULT NULL,/*价格*/
                                `status` int(11)     DEFAULT NULL/* */
);

insert into orderiteminfo values  (10,8,12,1,4999.00,1),
                                  (11,1,28,1,14999.00,1),
                                  (12,2,34,1,14999.00,1),
                                  (13,4,12,1,4999.00,1),
                                  (14,3,28,1,14999.00,1),
                                  (15,5,34,1,14999.00,1),
                                  (1,7,13,3,2999.00,1),
                                  (2,6,12,1,4999.00,1),
                                  (3,11,12,3,4999.00,1),
                                  (4,10,13,6,2999.00,1),
                                  (5,9,12,1,4999.00,1),
                                  (6,12,13,1,2999.00,1),
                                  (8,5,12,1,4999.00,1),
                                  (9,1,22,3,2999.00,1);