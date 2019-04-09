#创建数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS xiaolao;
CREATE DATABASE xiaolao CHARSET=UTF8;
USE xiaolao;



CREATE TABLE zl_shou_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  count  int(11),
  price  VARCHAR(255),
  pid int(11),
  uid int(11)
);
INSERT INTO zl_shou_cart VALUES(null,1,3000,2,2);







#功能一:创建轮播图
#1:表名 zl_imagelist
#2:几列 4
#3:列名 #id/title/img_url/
#4:类型
#id      INT
#title   VARCHAR(255)
#img_url VARCHAR(255) 

CREATE TABLE zl_imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(255),
  img_url  VARCHAR(255)
);

INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/1.jpg');
INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/2.jpg');
INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/3.jpg');
INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/4.jpg');
INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/5.jpg');
INSERT INTO zl_imagelist VALUES(null,'联想','http://zzlong.applinzi.com/imagelist/6.jpg');


#功能二.1: 创建产品详情表  后面没有写完
CREATE TABLE zl_laptop_details(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,
  promise VARCHAR(1024),  
  details VARCHAR(1024)
);
INSERT INTO zl_laptop_details VALUES

(null,1,"AMD Ryzen 5 2500U/Windows 10 家庭版/8GB/1TB+128GB SSD/集显/黑色","【新机特惠】新机开荒"),
(null,1,"AMD Ryzen 5 2500U/Windows 10 家庭版/8GB/256GB SSD/集显/黑色","Office 365 商业版"),
(null,1,"AMD Ryzen 5 2500U/Windows 10 家庭版/4GB+4GB/256GB SSD/黑色","【新机特惠】1年意外保"),
(null,2,"i5-8250U/4GB+4GB/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,2,"i5-8250U/4GB+4GB/256G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,2,"i5-8250U/4GB+4GB/1T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,2,"A6-9225/4GB/128G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,2,"AMD Ryzen 5 2500U/4GB+4GB/512G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,2,"i5-8250U/4GB+4GB/512G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银",""),
(null,2,"i7-8550U/4GB+4GB/1T+256G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银",""),
(null,2,"AMD Ryzen 7 2700U/4GB+4GB/512G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银",""),
(null,3,"i5-8250U/4G/1T+128G SSD/MX110 2GB独显/Windows 10 家庭中文版/黑色",""),
(null,3,"","【新机特惠】1次软件上门"),
(null,3,"","【新机特惠】整机1年延保"),
(null,4,"i3-8100/4GB/1T/集成显卡/显示器需另配/银黑/Windows 10 家庭中文版","【新机特惠】1次软件上门"),
(null,4,"i3-8100/4GB/1T+128 SSD/集成显卡 /银黑/Windows 10 家庭中文版","【新机特惠】新机开荒"),
(null,4,"i3-8100/4GB/128GB SSD/集成显卡/ 银黑/Windows 10 家庭中文版",""),
(null,4,"i3-8100/4GB/1T/集成显卡/银黑/Windows 10 家庭中文版",""),
(null,4,"i5-8400/4GB/1T/独立显卡/ 银黑/Windows 10 家庭中文版",""),
(null,5,"i7-8550U/4G+4G/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,5,"i5-8250U/4G/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,5,"i5-8250U/4G/2T/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1年全面意外保"),
(null,5,"i5-8250U/4G/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】新机开荒"),
(null,5,"A6-9225/4G/2T/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】新机开荒"),
(null,6,"i5-8250U/4G/2T/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,6,"i5-8250U/4GB+4GB/1T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,6,"A6-9225/4GB/128G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,6,"AMD Ryzen 5 2500U/4GB+4GB/512G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,7,"AMD Ryzen 5 2500U/Windows 10 家庭版/8GB/1TB+128GB SSD/集显/黑色","【新机特惠】新机开荒"),
(null,7,"AMD Ryzen 5 2500U/Windows 10 家庭版/8GB/256GB SSD/集显/黑色","Office 365 商业版"),
(null,7,"AMD Ryzen 5 2500U/Windows 10 家庭版/4GB+4GB/256GB SSD/黑色","【新机特惠】1年意外保"),
(null,7,"AMD Ryzen 5 2500U/Windows 10 家庭版/16GB+4GB/1420GB 黑色",""),
(null,8,"i5-8250U/4G/1T+128G SSD/MX110 2GB独显/Windows 10 家庭中文版/黑色",""),
(null,8,"","【新机特惠】1次软件上门"),
(null,8,"","【新机特惠】整机1年延保"),
(null,9,"i5-8250U/4GB+4GB/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】整机1年延保"),
(null,9,"i5-8250U/4GB+4GB/256G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1次软件上门"),
(null,9,"i5-8250U/4GB+4GB/1T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】1年全面意外保"),
(null,9,"i5-8250U/4GB/2T+128G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】新机开荒"),
(null,9,"AMD Ryzen 5 2500U/4GB+4GB/512G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","【新机特惠】硬件1年上门"),
(null,9,"i7-8550U/4GB+4GB/512G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银",""),
(null,9,"i5-8250U/4GB+4GB/1T+256G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/蓝色",""),
(null,9,"i5-8250U/4GB/1T+256G SSD/Radeon 535 2G/Windows 10 家庭中文版/IPS屏/极光银",""),
(null,9,"AMD Ryzen 7 2700U/4GB+4GB/512G SSD/集成显卡/Windows 10 家庭中文版/IPS屏/极光银","");



#功能二:创建产品详情表
#1:表名 zl_laptop
#2:几列 10
#3:列名 #id/title/subtitle/price/promise/lname/cpu/os/memory/memory/video_card/details
#4:类型
  id INT PRIMARY KEY AUTO_INCREMENT,   #id
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #配置
  lname VARCHAR(32),          #商品名称
  cpu VARCHAR(32),            #处理器
  os VARCHAR(32),             #操作系统
  memory VARCHAR(32),         #内存容量
  resolution VARCHAR(32),     #分辨率
  video_card VARCHAR(32),     #显卡型号
  details VARCHAR(1024),      #产品详细说明

CREATE TABLE zl_laptop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT ,
  title VARCHAR(128),       
  subtitle VARCHAR(128), 
  price VARCHAR(30), 
  promise VARCHAR(64),  
  lname VARCHAR(32),      
  cpu VARCHAR(32),       
  os VARCHAR(32),            
  memory VARCHAR(32),        
  resolution VARCHAR(32),   
  video_card VARCHAR(32),   
  details VARCHAR(1024)
);

INSERT INTO zl_laptop VALUES
(null,1,'拯救者 Y7000 英特尔酷睿i5 高色域版 15.6英寸游戏笔记本 黑色','i5-8300H/Windows 10 家庭中文版/15.6英寸/8G/1T+128G SSD/ GeForce GTX 1060 6G独显/黑色',6988,'双核i5/8GB内存/128GB闪存','拯救者','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','8G','1920*1080','独立显卡','◆拯救者电竞鼠标垫,加厚设计，精密锁边，底部防滑，表面顺滑，限时促销¥59（在“推荐选件”里选择与主机一起下单可享立减20元）【选件推荐】◆拯救者散热支架，高效散热，六段可调，全铝材质可折叠，限时促销¥149（在“推荐选件”里选择与主机一起下单可享立减20元）》');
INSERT INTO zl_laptop VALUES
(null,2,'拯救者 Y7000P 15.6英寸游戏笔记本 黑色','i5-8300H/Windows 10 家庭中文版/15.6英寸/8G/1T+128G SSD/ GeForce GTX 1050Ti 4G独显/黑色',2222,'双核i5/8GB内存/128GB闪存','拯救者','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','8G','1920*1080','独立显卡','23');
INSERT INTO zl_laptop VALUES
(null,3,'拯救者 Y7000P 15.6英寸游戏笔记本 黑色','i5-8300H/Windows 10 家庭中文版/15.6英寸/8G/1T+128G SSD/ GeForce GTX 1050Ti 4G独显/黑色',3244,'双核i5/8GB内存/128GB闪存','拯救者','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','8G','1920*1080','独立显卡','23');
INSERT INTO zl_laptop VALUES
(null,4,'拯救者 Y7000P 15.6英寸游戏笔记本 黑色','5-8300H/Windows 10 家庭中文版/15.6英寸/8G/1T+128G SSD/ GeForce GTX 1050Ti 4G独显/黑色',35322,'双核i5/8GB内存/128GB闪存','拯救者','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','8G','1920*1080','独立显卡','23');
INSERT INTO zl_laptop VALUES
(null,5,'小新 潮7000 英特尔酷睿i7 14.0英寸轻薄笔记本 极光银','i7-8550U/Windows 10 家庭中文版/14.0英寸/4GB+4GB/1T+128G SSD/Radeon 535 2GB独显/极光银',35322,'双核i5/8GB内存/128GB闪存','小新','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','16G','2320*1080','独立显卡','【选件推荐】
◆拯救者散热支架，高效散热，六段可调，全铝材质可折叠，限时促销¥149（在“推荐选件”里选择与主机一起下单可享立减20元）》
◆联想小新智能键盘R2,触控板秒变数字小键盘，限时促销¥59（在“推荐选件”里选择与主机一起下单可享立减20元）');
INSERT INTO zl_laptop VALUES
(null,6,'小新 潮7000 英特尔酷睿i7 14.0英寸轻薄笔记本 极光银','i7-8550U/Windows 10 家庭中文版/14.0英寸/4GB+4GB/1T+128G SSD/Radeon 535 2GB独显/极光银',35322,'双核i5/8GB内存/128GB闪存','小新','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','16G','2320*1080','独立显卡','11');
INSERT INTO zl_laptop VALUES
(null,7,'小新 潮7000 英特尔酷睿i7','i7-8550U/Windows 10 家庭中文版/14.0英寸/4GB+4GB/1T+128G SSD/Radeon 535 2GB独显/极光银',35322,'双核i5/8GB内存/128GB闪存','小新','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','16G','2320*1080','独立显卡','2323');
INSERT INTO zl_laptop VALUES
(null,8,'ideapad 330C-15IKB 15.6英寸笔记本 黑色','i5-8250U/Windows 10 家庭中文版/15.6英寸/4G/1T+128G SSD/MX110 2GB独显/黑色',3222,'双核i5/8GB内存/128GB闪存','ideapad','第八代智能英特尔® 酷睿™ i5 处理器','Intel i5低功耗版','16G','2320*1080','独立显卡','【选件推荐】
◆拯救者散热支架，高效散热，六段可调，全铝材质可折叠，限时促销¥149（在“推荐选件”里选择与主机一起下单可享立减20元）》');
INSERT INTO zl_laptop VALUES
(null,9,'ideapad 330C-15IKB 1','i5-8250U/Windows 10 家庭中文版/15.6英寸/4G/1T+128G SSD/MX110 2GB独显/黑色',3222,'双核i5/8GB内存/128GB闪存','ideapad','第八代智能英特尔® 酷睿™ i5 处理器','Intel i8低功耗版','8G','3320*1080','独立显卡','1111');


#功能三:创建评论表
#创建用户注册表
CREATE TABLE zl_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32)
);
INSERT INTO zl_login VALUES(null,'tom',md5('123'));



#功能四:图片列表
  CREATE TABLE zl_imgBody(
    id INT PRIMARY KEY AUTO_INCREMENT,
    lid int(22),
    imgUrl VARCHAR(128),
    price VARCHAR(20), 
    zname VARCHAR(20), 
    title VARCHAR(128) 
  );
INSERT INTO zl_imgBody VALUES
(null,1,'http://zzlong.applinzi.com/img/homeBody/1-1-1.png',3000,'拯救者','i5 处理器'),
(null,2,'http://zzlong.applinzi.com/img/homeBody/1-1-2.png',3888,'二合一电脑','更高端上个'),
(null,3,'http://zzlong.applinzi.com/img/homeBody/1-1-3.png',3399,'Mrigd','无限唱完'),
(null,4,'http://zzlong.applinzi.com/img/homeBody/1-1-4.png',3999,'D300','是连锁性'),
(null,5,'http://zzlong.applinzi.com/img/homeBody/1-2-1.png',3000,'Mrigd','Intel i5低功耗版'),
(null,6,'http://zzlong.applinzi.com/img/homeBody/1-2-2.png',3000,'ideapad 330C-15IKB','i5 处理器'),
(null,7,'http://zzlong.applinzi.com/img/homeBody/1-2-3.png',3000,'拯救者','独立显卡'),
(null,8,'http://zzlong.applinzi.com/img/homeBody/1-2-4.png',3000,'拯救者','i5 处理器'),
(null,1,'http://zzlong.applinzi.com/img/homeBody/1-3-1.png',3000,'Mrigd','i5 处理器'),
(null,2,'http://zzlong.applinzi.com/img/homeBody/1-3-2.png',3000,'拯救者','i5 处理器'),
(null,3,'http://zzlong.applinzi.com/img/homeBody/1-3-3.png',3000,'拯救者','功耗版'),
(null,4,'http://zzlong.applinzi.com/img/homeBody/1-3-4.png',3000,'小新','i5 处理器'),

(null,5,'http://zzlong.applinzi.com/img/homeBody/1-4-1.png',3000,'拯救者','i5 处理器'),
(null,6,'http://zzlong.applinzi.com/img/homeBody/1-4-2.png',3000,'拯救者','独立显卡'),
(null,7,'http://zzlong.applinzi.com/img/homeBody/1-4-3.png',3000,'小新','i5 处理器'),
(null,8,'http://zzlong.applinzi.com/img/homeBody/1-4-4.png',3000,'Mrigd','i5 处理器'),

(null,1,'http://zzlong.applinzi.com/img/homeBody/1-5-1.png',3000,'拯救者','i5 处理器'),
(null,2,'http://zzlong.applinzi.com/img/homeBody/1-5-2.png',3000,'Mrigd','i5 ，六段可调'),
(null,3,'http://zzlong.applinzi.com/img/homeBody/1-5-3.png',3000,'拯救者','i5 处理器'),
(null,4,'http://zzlong.applinzi.com/img/homeBody/1-5-2.png',3000,'拯救者','i5 处理器'),

(null,5,'http://zzlong.applinzi.com/img/homeBody/2-1-1.png',3000,'拯救者','i5 处理器'),
(null,6,'http://zzlong.applinzi.com/img/homeBody/2-1-2.png',3000,'拯救者','i5 处理器'),
(null,7,'http://zzlong.applinzi.com/img/homeBody/2-1-3.png',3000,'小新','i5 处理器'),
(null,7,'http://zzlong.applinzi.com/img/homeBody/2-1-4.png',3000,'拯救者','家庭中文版'),
(null,1,'http://zzlong.applinzi.com/img/homeBody/2-2-1.png',3000,'Mrigd','i5 处理器'),
(null,2,'http://zzlong.applinzi.com/img/homeBody/2-2-2.png',3000,'拯救者','i5 处理器'),
(null,3,'http://zzlong.applinzi.com/img/homeBody/2-2-3.png',3000,'Mrigd','独立显卡'),
(null,4,'http://zzlong.applinzi.com/img/homeBody/2-2-4.png',3000,'拯救者','i5 处理器'),

(null,5,'http://zzlong.applinzi.com/img/homeBody/2-3-1.png',3000,'拯救者','i5 处理器'),
(null,6,'http://zzlong.applinzi.com/img/homeBody/2-3-2.png',6500,'两项','高效散热，六段可调，全铝材质可折叠'),
(null,7,'http://zzlong.applinzi.com/img/homeBody/2-3-3.png',3000,'背景','理器'),
(null,8,'http://zzlong.applinzi.com/img/homeBody/2-3-4.png',3000,'拯救者','i5 处理器'),
(null,1,'http://zzlong.applinzi.com/img/homeBody/2-4-1.png',3000,'Mrigd','i5 处理器'),
(null,2,'http://zzlong.applinzi.com/img/homeBody/2-4-2.png',3000,'拯救者','i5 处理器'),
(null,3,'http://zzlong.applinzi.com/img/homeBody/2-4-3.png',3000,'Mrigd','i5 处理器'),
(null,4,'http://zzlong.applinzi.com/img/homeBody/2-4-4.png',3000,'拯救者','i5 处理器');

#功能五:图片列表 大小中
CREATE TABLE zl_laptop_pic(
  pid int(11) PRIMARY KEY AUTO_INCREMENT,
  laptop_id int(11),
  sm varchar(128),
  md varchar(128),
  lg varchar(128)
);

INSERT INTO zl_laptop_pic VALUES
(1, 1, 'http://zzlong.applinzi.com/img/product/sm/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/md/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57b12a31N8f4f75a3.jpg'),
(2, 1, 'http://zzlong.applinzi.com/img/product/sm/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad359dNd4a6f130.jpg'),
(3, 1, 'http://zzlong.applinzi.com/img/product/sm/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad8846N64ac3c79.jpg'),
(4, 2, 'http://zzlong.applinzi.com/img/product/sm/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/md/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57b12a31N8f4f75a3.jpg'),
(5, 2, 'http://zzlong.applinzi.com/img/product/sm/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad359dNd4a6f130.jpg'),
(6, 2, 'http://zzlong.applinzi.com/img/product/sm/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad8846N64ac3c79.jpg'),
(7, 3, 'http://zzlong.applinzi.com/img/product/sm/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/md/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57b12a31N8f4f75a3.jpg'),
(8, 3, 'http://zzlong.applinzi.com/img/product/sm/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad359dNd4a6f130.jpg'),
(9, 3, 'http://zzlong.applinzi.com/img/product/sm/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad8846N64ac3c79.jpg'),
(10, 4, 'http://zzlong.applinzi.com/img/product/sm/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/md/57b12a31N8f4f75a3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57b12a31N8f4f75a3.jpg'),
(11, 4, 'http://zzlong.applinzi.com/img/product/sm/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad359dNd4a6f130.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad359dNd4a6f130.jpg'),
(12, 4, 'http://zzlong.applinzi.comimg/product/sm/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/md/57ad8846N64ac3c79.jpg', 'http://zzlong.applinzi.com/img/product/lg/57ad8846N64ac3c79.jpg'),
(13, 5, 'http://zzlong.applinzi.com/img/product/sm/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/md/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e3b072N661cd00d.jpg'),
(14, 5, 'http://zzlong.applinzi.com/img/product/sm/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff09Nf610fea3.jpg'),
(15, 5, 'http://zzlong.applinzi.com/img/product/sm/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff17N286390a9.jpg'),
(16, 5, 'http://zzlong.applinzi.com/img/product/sm/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(17, 5, 'http://zzlong.applinzi.com/img/product/sm/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52dffNa4d8ce2c.jpg'),
(18, 5, 'http://zzlong.applinzi.com/img/product/sm/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e03N4ec367dd.jpg'),
(19, 5, 'http://zzlong.applinzi.com/img/product/sm/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg'),
(20, 6, 'http://zzlong.applinzi.com/img/product/sm/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/md/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e3b072N661cd00d.jpg'),
(21, 6, 'http://zzlong.applinzi.com/img/product/sm/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff09Nf610fea3.jpg'),
(22, 6, 'http://zzlong.applinzi.com/img/product/sm/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff17N286390a9.jpg'),
(23, 6, 'http://zzlong.applinzi.com/img/product/sm/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(24, 6, 'http://zzlong.applinzi.com/img/product/sm/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52dffNa4d8ce2c.jpg'),
(25, 6, 'http://zzlong.applinzi.com/img/product/sm/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e03N4ec367dd.jpg'),
(26, 6, 'http://zzlong.applinzi.com/img/product/sm/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg'),
(27, 7, 'http://zzlong.applinzi.com/img/product/sm/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/md/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e3b072N661cd00d.jpg'),
(28, 7, 'http://zzlong.applinzi.com/img/product/sm/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff09Nf610fea3.jpg'),
(29, 7, 'http://zzlong.applinzi.com/img/product/sm/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff17N286390a9.jpg'),
(30, 7, 'http://zzlong.applinzi.com/img/product/sm/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(31, 7, 'http://zzlong.applinzi.com/img/product/sm/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52dffNa4d8ce2c.jpg'),
(32, 7, 'http://zzlong.applinzi.com/img/product/sm/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e03N4ec367dd.jpg'),
(33, 7, 'http://zzlong.applinzi.com/img/product/sm/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg'),
(34, 8, 'http://zzlong.applinzi.com/img/product/sm/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/md/57e3b072N661cd00d.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e3b072N661cd00d.jpg'),
(35, 8, 'http://zzlong.applinzi.com/img/product/sm/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff09Nf610fea3.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff09Nf610fea3.jpg'),
(36, 8, 'http://zzlong.applinzi.com/img/product/sm/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff17N286390a9.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff17N286390a9.jpg'),
(37, 8, 'http://zzlong.applinzi.com/img/product/sm/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/md/57e1ff2fN8a36d0fe.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(38, 8, 'http://zzlong.applinzi.com/img/product/sm/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52dffNa4d8ce2c.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52dffNa4d8ce2c.jpg'),
(39, 8, 'http://zzlong.applinzi.com/img/product/sm/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e03N4ec367dd.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e03N4ec367dd.jpg'),
(40, 8, 'http://zzlong.applinzi.com/img/product/sm/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/md/57e52e06N116974f7.jpg', 'http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg');


#功能六:  购物车
CREATE TABLE zl_cart(
  id int(11) PRIMARY KEY AUTO_INCREMENT,
  uid int(11),
  lid int(11),
  sm varchar(128),
  price varchar(120),
  title varchar(128)
);

INSERT INTO zl_cart VALUES(null,2,8,"http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg",3888,"拯救者 Y7000 英特尔酷睿i5 高色域版");




# weixin  iss    cart
CREATE TABLE weixin_cart(
  id int(11) PRIMARY KEY AUTO_INCREMENT,
  count int(11),
  lid int(11),
  sm varchar(128),
  price varchar(120),
  title varchar(128)
);

INSERT INTO weixin_cart VALUES(null,2,1,"http://zzlong.applinzi.com/img/product/lg/57e52e06N116974f7.jpg",3888,"拯救者 Y7000 英特尔酷睿i5 高色域版");