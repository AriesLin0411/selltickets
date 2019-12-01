/*
 Navicat Premium Data Transfer

 Source Server         : web编程
 Source Server Type    : SQL Server
 Source Server Version : 10504000
 Source Host           : usxjsj.cn:1611
 Source Catalog        : db17135111
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10504000
 File Encoding         : 65001

 Date: 01/12/2019 22:32:16
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type IN ('U'))
	DROP TABLE [dbo].[admin]
GO

CREATE TABLE [dbo].[admin] (
  [adminName] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adminSex] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adminPassword] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adminPhonenumber] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [adminEmail] varchar(25) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[admin] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO [dbo].[admin] VALUES (N'21212', N'男', N'1212', N'121', N'12212')
GO

INSERT INTO [dbo].[admin] VALUES (N'admin', N'女', N'17135111', N'11', N'llj764480217@yeah.net')
GO


-- ----------------------------
-- Table structure for Class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Class]') AND type IN ('U'))
	DROP TABLE [dbo].[Class]
GO

CREATE TABLE [dbo].[Class] (
  [cId] int  IDENTITY(1,1) NOT NULL,
  [cName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Class
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Class] ON
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'1', N'显卡')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'2', N'CPU')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'3', N'主板')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'4', N'机箱')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'5', N'显示器')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'6', N'内存条')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'7', N'固态硬盘')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'8', N'机械硬盘')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'9', N'声卡')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'10', N'网卡')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'11', N'风冷散热器')
GO

INSERT INTO [dbo].[Class] ([cId], [cName]) VALUES (N'12', N'水冷散热器')
GO

SET IDENTITY_INSERT [dbo].[Class] OFF
GO


-- ----------------------------
-- Table structure for Img
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Img]') AND type IN ('U'))
	DROP TABLE [dbo].[Img]
GO

CREATE TABLE [dbo].[Img] (
  [Path] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Img] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Img
-- ----------------------------
INSERT INTO [dbo].[Img] VALUES (N'C:\Users\llj76\Desktop\配件销售\配件销售\images\Upload\img20191020074850.png', N'img20191020074850.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\images\Upload\img20191020093233.png', N'img20191020093233.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\images\Upload\img20191020100410.png', N'img20191020100410.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\images\Upload\img20191024102650.png', N'img20191024102650.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191027094242.png', N'img20191027094242.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191104082415.png', N'img20191104082415.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191104082421.png', N'img20191104082421.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191105112231.png', N'img20191105112231.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191105112239.png', N'img20191105112239.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\Users\llj76\Desktop\配件销售\配件销售\images\Upload\img20191117025649.png', N'img20191117025649.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117095203.png', N'img20191117095203.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117095705.jpg', N'img20191117095705.jpg')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117095926.jpg', N'img20191117095926.jpg')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117100145.png', N'img20191117100145.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117100559.png', N'img20191117100559.png')
GO

INSERT INTO [dbo].[Img] VALUES (N'C:\inetpub\wwwroot\xg17135111\配件销售\images\Upload\img20191117100749.jpg', N'img20191117100749.jpg')
GO


-- ----------------------------
-- Table structure for orderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[orderDetails]
GO

CREATE TABLE [dbo].[orderDetails] (
  [orderId] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pID] int  NOT NULL,
  [number] int  NULL,
  [totalPrice] numeric(18,2)  NULL
)
GO

ALTER TABLE [dbo].[orderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of orderDetails
-- ----------------------------
INSERT INTO [dbo].[orderDetails] VALUES (N'1713511120191125205302', N'13', N'1', N'9099.00')
GO

INSERT INTO [dbo].[orderDetails] VALUES (N'1713511120191125205302', N'15', N'1', N'9099.00')
GO

INSERT INTO [dbo].[orderDetails] VALUES (N'1713511120191125205609', N'19', N'1', N'30999.00')
GO


-- ----------------------------
-- Table structure for orders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type IN ('U'))
	DROP TABLE [dbo].[orders]
GO

CREATE TABLE [dbo].[orders] (
  [orderId] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [userName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [datetime] datetime  NULL,
  [totalPrice] numeric(18,2)  NULL,
  [status] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[orders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO [dbo].[orders] VALUES (N'1713511120191125205302', N'17135111', N'2019-11-25 20:53:02.000', N'9099.00', N'已付款')
GO

INSERT INTO [dbo].[orders] VALUES (N'1713511120191125205609', N'17135111', N'2019-11-25 20:56:09.000', N'30999.00', N'已付款')
GO


-- ----------------------------
-- Table structure for Products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type IN ('U'))
	DROP TABLE [dbo].[Products]
GO

CREATE TABLE [dbo].[Products] (
  [pID] int  IDENTITY(1,1) NOT NULL,
  [pNAME] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pIMG] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pDESCRIBE] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pPRICE] decimal(18,2)  NOT NULL,
  [pCLASSID] int  NOT NULL,
  [pDETAILS] text COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pTIME] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Products] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Products
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'13', N'Intel 酷睿i9 9900K', N'~\images\Upload\img20191103043000.png', N'cpu', N'4099.00', N'2', N'', N'2019-11-04 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'15', N'AMD Ryzen TR2', N'~\images\Upload\img20191117025649.png', N'AMD Ryzen TR2 2920X 12核/24绪 3.5G(↑4.3G)180W/32M/12nm/无显', N'5000.00', N'2', N'<h3 class="tb-main-title" data-spm-anchor-id="2013.1.iteminfo.i0.14472f264CKZgz" data-title="AMD Ryzen TR2 2920X 12核/24绪 3.5G(↑4.3G)180W/32M/12nm/无显" style="margin: 0px; padding: 0px; font-size: 16px; min-height: 21px; line-height: 21px; color: rgb(60, 60, 60); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif;">
	AMD Ryzen TR2 2920X 12核/24绪 3.5G(&uarr;4.3G)180W/32M/12nm/无显</h3>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'17', N'MSI/微星RTX 2080Ti', N'~\images\Upload\img20191117095203.png', N'MSI/微星RTX 2080Ti GAMING X独立显卡魔龙/万图师11G超1080ti', N'10888.00', N'1', N'<div>
	产品参数：</div>
<div>
	产品名称：MSI微星RKX2080TGA.。品牌：MSI微星</div>
<div>
	微星：RTX2080 TI GAMING X TRIO</div>
<div>
	成色：全新</div>
<div>
	售后服务：全国联保</div>
<div>
	显存容量：11GB</div>
<div>
	输出接口： HDMI DP TYPE-C</div>
<div>
	显存位竞：352bit</div>
<div>
	颜色分类：RTX2080 TI GAMING TRIO</div>
<div>
	生产企业：微星科技股份有限公司</div>
<div>
	NVIDIA芯片型号：其他/ other</div>
<div>
	质保时间：三年</div>
<div>
	芯片： nVIDIA</div>
<div>
	散热方式：风冷</div>
<div>
	显卡芯片组：RTX2080T</div>
<div>
	是否支持显卡交火：是</div>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'18', N'MSI/微星 X570', N'~\images\Upload\img20191117095705.jpg', N'MSI/微星 X570 GODLIKE全新超神板台式机电脑游戏电竞主板新品AM4', N'7777.00', N'3', N'<div>
	产品参数</div>
<div>
	产品名称：MSI微星X570 GODLIKE</div>
<div>
	品牌：MSI微星</div>
<div>
	微星：X570 GODLIKE</div>
<div>
	宝贝成色：全新</div>
<div>
	售后服务：全国联保</div>
<div>
	内存类型：DDR4</div>
<div>
	主板结构：EAⅨX加强型</div>
<div>
	颜色分类：X570 GODLIKE微星X570G0</div>
<div>
	微星科技股份有限公司</div>
<div>
	AMD CPU接口：AM4</div>
<div>
	内存通道：四通道</div>
<div>
	容量：1</div>
<div>
	显示接口：VGA+DV+HDM</div>
<div>
	多显卡支持：不支持</div>
<div>
	适用对象：台式机</div>
<div>
	是否支持显示输出：支持</div>
<div>
	是否支持磁盘阵列：支持</div>
<div>
	CPU类型：AMD</div>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'19', N'微星 MSI Prestige P100', N'~\images\Upload\img20191117095926.jpg', N'微星 MSI Prestige P100 设计师游戏台式电脑主机 i9-9900KF 64G 2T+2T RTX2080Ti11G独显PS设计主机渲染', N'30999.00', N'4', N'<div>
	证书编号：2019010901206238</div>
<div>
	书状态：有效</div>
<div>
	称：个人电脑</div>
<div>
	C规格型号： Prestige B929；交流输入&hellip;，产品名称：MsI微星 Prestige P100</div>
<div>
	内存容量：其他/ other</div>
<div>
	硬盘容量：2000GB</div>
<div>
	内存类型：DDR4</div>
<div>
	显示器类型：无显示器</div>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'20', N'MSI微星PAG341CQR34', N'~\images\Upload\img20191117100145.png', N'MSI微星PAG341CQR34英寸2K显示器RGB电竞144HZ电脑台式吃鸡显示屏', N'3499.00', N'5', N'<div>
	产品参数：</div>
<div>
	证书编号：2019010903212872</div>
<div>
	证书状态：有效</div>
<div>
	产品名称：液晶显示器</div>
<div>
	3C规格型号：X0X5X00024X.产品名称：MsI/微星PAG341cQR</div>
<div>
	型号：PAG341CQR</div>
<div>
	品牌：MSI微星</div>
<div>
	型号：PAG341CQR</div>
<div>
	成色：全新</div>
<div>
	售后服务：全国联保</div>
<div>
	产地：中国大陆</div>
<div>
	屏幕尺寸：34英寸</div>
<div>
	屏幕比例：21：9</div>
<div>
	接口类型： HDMI DE</div>
<div>
	面板类型：VA</div>
<div>
	分辨率：3440*1440（超宽2K）</div>
<div>
	颜色分类：PAG341CQR</div>
<div>
	套餐类型：官方标配</div>
<div>
	生产企业：微星科技股份有限公司</div>
<div>
	能效等级</div>
<div>
	屏幕类型：LED</div>
<div>
	能效备案号：无</div>
<div>
	保修期：36个月</div>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'21', N'技嘉AORUS RGB 内存条', N'~\images\Upload\img20191117100559.png', N'技嘉AORUS RGB 内存条8gx2 ddr4 3200 电脑台式机16G灯条', N'1199.00', N'6', N'<div>
	产品参数</div>
<div>
	产品名称： AORUSAORUS RGB内存条品牌： AORUS</div>
<div>
	型号： AORUS RGB内存条</div>
<div>
	内存容量：16GB</div>
<div>
	成色：全新</div>
<div>
	售后服务：全国联保</div>
<div>
	传输类型：DDR4</div>
<div>
	颜色分类： GIGABYTE Memory26668G，组合形式：双通道2根</div>
<div>
	生产企业：技嘉科技</div>
<div>
	内存频率：2666MHz3200MHz</div>
<div>
	适用对象：台式机</div>
<div>
	是否支持灯光：RGB</div>
', N'2019-11-17 00:00:00.000')
GO

INSERT INTO [dbo].[Products] ([pID], [pNAME], [pIMG], [pDESCRIBE], [pPRICE], [pCLASSID], [pDETAILS], [pTIME]) VALUES (N'22', N'三星970EVO Plus 2T', N'~\images\Upload\img20191117100749.jpg', N'三星970EVO Plus 2T SSD 电脑固态硬盘 NVMe固态盘m.2接口', N'3999.00', N'7', N'<div>
	产品参数</div>
<div>
	产品名称： Samsung/三星Mzv7S2T0.品牌： Samsung/=星</div>
<div>
	三星回态硬盘：MZV7S2T0BW</div>
<div>
	硬盘容量：2TB</div>
<div>
	成色：全新</div>
<div>
	售后服务：全国联保</div>
<div>
	尺寸：NVME</div>
<div>
	接囗类型：PCIE</div>
<div>
	颜色分类：官方标配</div>
<div>
	生产企业：三星</div>
<div>
	保修期：5年</div>
', N'2019-11-17 00:00:00.000')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO


-- ----------------------------
-- Table structure for shopCar
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[shopCar]') AND type IN ('U'))
	DROP TABLE [dbo].[shopCar]
GO

CREATE TABLE [dbo].[shopCar] (
  [pID] int  NOT NULL,
  [username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [num] int  NULL
)
GO

ALTER TABLE [dbo].[shopCar] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Tickets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Tickets]') AND type IN ('U'))
	DROP TABLE [dbo].[Tickets]
GO

CREATE TABLE [dbo].[Tickets] (
  [tktNum] char(7) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [departureStation] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Terminus] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [tktPrc] money  NOT NULL,
  [departureTime] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [carNum] varchar(5) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [seatLevel] nvarchar(5) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Tickets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Tickets
-- ----------------------------
INSERT INTO [dbo].[Tickets] VALUES (N'1      ', N'杭州', N'绍兴', N'200.0000', N'2020-1-12', N'd3531', N'1')
GO

INSERT INTO [dbo].[Tickets] VALUES (N'2      ', N'杭州', N'绍兴', N'150.0000', N'2020-1-12', N'd3531', N'2')
GO

INSERT INTO [dbo].[Tickets] VALUES (N'3      ', N'绍兴', N'杭州', N'200.0000', N'2020-2-3', N'g3531', N'2')
GO


-- ----------------------------
-- Table structure for ticketsLevel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ticketsLevel]') AND type IN ('U'))
	DROP TABLE [dbo].[ticketsLevel]
GO

CREATE TABLE [dbo].[ticketsLevel] (
  [level] int  NOT NULL,
  [Tlevel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[ticketsLevel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ticketsLevel
-- ----------------------------
INSERT INTO [dbo].[ticketsLevel] VALUES (N'0', N'特等座')
GO

INSERT INTO [dbo].[ticketsLevel] VALUES (N'1', N'一等座')
GO

INSERT INTO [dbo].[ticketsLevel] VALUES (N'2', N'二等座')
GO

INSERT INTO [dbo].[ticketsLevel] VALUES (N'3', N'站票')
GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Users]
GO

CREATE TABLE [dbo].[Users] (
  [username] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [phonenumber] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sex] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [address] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] varchar(25) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO [dbo].[Users] VALUES (N'17135111', N'linlijun', N'13695760560', N'男', N'', N'')
GO


-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD CONSTRAINT [PK__admin__330679FF0425A276] PRIMARY KEY CLUSTERED ([adminName])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Class
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Class]', RESEED, 16)
GO


-- ----------------------------
-- Primary Key structure for table Class
-- ----------------------------
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [PK__tmp_ms_x__D830D477173876EA] PRIMARY KEY CLUSTERED ([cId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Img
-- ----------------------------
ALTER TABLE [dbo].[Img] ADD CONSTRAINT [PK__tmp_ms_x__737584F70BC6C43E] PRIMARY KEY CLUSTERED ([Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table orderDetails
-- ----------------------------
ALTER TABLE [dbo].[orderDetails] ADD CONSTRAINT [PK_orderDetails] PRIMARY KEY CLUSTERED ([orderId], [pID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED ([orderId], [userName])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Products
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Products]', RESEED, 22)
GO


-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK__Products__DD36D5020F975522] PRIMARY KEY CLUSTERED ([pID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table shopCar
-- ----------------------------
ALTER TABLE [dbo].[shopCar] ADD CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([pID], [username])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Tickets
-- ----------------------------
ALTER TABLE [dbo].[Tickets] ADD CONSTRAINT [PK__Tickets__4E9583DC286302EC] PRIMARY KEY CLUSTERED ([tktNum])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ticketsLevel
-- ----------------------------
ALTER TABLE [dbo].[ticketsLevel] ADD CONSTRAINT [PK__ticketsL__C03A140B24927208] PRIMARY KEY CLUSTERED ([level])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Checks structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [CK__Users__sex__014935CB] CHECK ([sex]='男' OR [sex]='女')
GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK__Users__622BF0C37F60ED59] PRIMARY KEY CLUSTERED ([phonenumber])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

