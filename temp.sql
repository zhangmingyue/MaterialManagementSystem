# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: temp
# ------------------------------------------------------
# Server version 5.0.45-community-nt

CREATE DATABASE `temp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `temp`;

#
# Table structure for table cargo
#

CREATE TABLE `cargo` (
  `Id` varchar(40) collate utf8_bin NOT NULL default '',
  `name` varchar(40) character set utf8 default NULL,
  `medicPackage` varchar(50) collate utf8_bin default NULL,
  `category` varchar(40) character set utf8 default NULL,
  `format` varchar(40) character set utf8 default NULL,
  `number` varchar(20) collate utf8_bin default NULL,
  `price` double default NULL,
  `total` double default NULL,
  `lotnumber` varchar(50) character set utf8 default NULL,
  `effectivedate` datetime default NULL,
  `medicalPermitment` varchar(50) collate utf8_bin default NULL,
  `doc_id` varchar(40) character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `cargo` VALUES ('297ecfa24683b0e3014683bc26100003','苦参片','300鐩?浠?','片剂','0.4gx36片','1浠?鐩?',1,301,'123','2014-06-10','Z20093275','297ecfa24683b0e3014683bac5830002');
INSERT INTO `cargo` VALUES ('402880f5413f495f014140b73b4a0001','苦参片','300鐩?浠?','片剂','0.4gx24片','99浠?鐩?',1,29709,'zxczx','2013-09-21','Z20093275','ff80808140f0ac740140f0b3d8730001');
INSERT INTO `cargo` VALUES ('402882e5408b55a201408b598ffc0003','dsfg','sdfg','sdfg','sdfg','1234',1234,2134,'asdf',NULL,'asdf','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b55a201408b5b3dce0004','sdfg','dsfg','sdfg','sdfg','234',234,234,'sdfg',NULL,'fdg','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b5da4810001','asdf','sadf','asdf','sadf','345',345,346,'dgf',NULL,'sdfg','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b5f34fd0002','assdf','asdf','asdf','sadf','134',345,345,'xzcv',NULL,'sadf','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b61b6080003','asdf','sadf','asdf','asdf','2134',2134,1234,'sadf',NULL,'sadf','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b622da80004','edfgdsg','sdfg','sdfg','sdfg','4325',3245,3245,'ddfg','2013-08-17','fdg','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b62ce660005','sdfg','sdfg','sdfg','sdfg','3245',3425,2345,'3245','2013-08-17','dsfg','402882e5408acbdb01408accf6b50002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b64cb520006','saf','sdfg','sdfg','sdfg','123',234,234,'345','2013-08-17','dfg','402882e5408acbdb01408ad458400004');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b6735610007','asdf','sadf','asdf','sadf','123',234,324,'asdfg','2013-08-17','sadf','402882e5408b55a201408b5912c80002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b67ea300008','sdf','sdfg','sdfg','sdfg','2345',2345,234,'235','2013-08-17','2354','402882e5408acbdb01408accf6b50002');
INSERT INTO `cargo` VALUES ('402882e5408b5d6801408b68b260000b','sdf','sdf','sdf','sdf','123',2134,1234,'1234','2013-08-17','1234','402882e5408b5d6801408b6859c7000a');
INSERT INTO `cargo` VALUES ('402882e5408b6baa01408b6c562b0001','sdf','sdf','sdf','sdf','234',234,234,'sdfg','2013-08-17','dsfg','402882e5408a798401408a7a70da0002');
INSERT INTO `cargo` VALUES ('402882e5408b6f8d01408b701d400001','ewrt','ewrt','wert','ewrt','2435',3245,345,'dsfg','2013-08-17','sdfg','402882e5408a798401408a7a70da0002');
INSERT INTO `cargo` VALUES ('402882e5408b8adc01408b93405a0001','撒点粉','閹炬帞鍋ｇ划?','撒点粉','撒点粉','234',234,234,'发给','2013-08-17','鐎佃鏌熷?','');
INSERT INTO `cargo` VALUES ('402882e5408b8adc01408b94018b0004','第三方','鐎佃鏌?','第三方','对方','234',345,2345,'十多个','2013-08-17','閸欐垹娈戝?','402882e5408b8adc01408b939da70003');
INSERT INTO `cargo` VALUES ('402882e5408b951801408b95a0d30001','撒点粉','閹炬帞鍋ｇ划?','撒点粉','撒点粉','123',42352,345,'谁的风格','2013-08-17','娴ｅ棙妲告搴㈢壐','');
INSERT INTO `cargo` VALUES ('402882e5408b951801408b96b3af0004','撒点粉','閹炬帞鍋ｇ划?','撒点粉','撒点粉','134',234,245,'但是风格','2013-08-17','缁楊兛绗侀弬鐟颁紣','402882e5408b951801408b9675a00003');
INSERT INTO `cargo` VALUES ('402882e5408f701901408f71a6860001','dfa ','asdf','sadf','asdf','23',2134,2143,'sdfg','2013-08-18','asdf','402882e5408b5d6801408b6859c7000a ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f7497070001','asdf','sdf','sadf','asdf','324',234,234,'sdfg','2013-08-18','fsadg','402882e5408b951801408b9675a00003 ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f76b9c50002','sdafg','sadf','sadf','sadf','234',234,234,'sfg','2013-08-18','sdfg','402882e5408b951801408b9675a00003 ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f782d950003','afds','sadf','asdf','asdf','2134',1234,234,'asdf','2013-08-18','asdf','402882e5408b8adc01408b939da70003 ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f7871d70004','asdf','sadf','asdf','asdf','2134',234,234,'sdfg','2013-08-18','sdfg','402882e5408b8adc01408b939da70003 ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f78db920005','撒点粉工',' 閹稿倸褰跨拹?','撒点粉','价格','3245',4325,3425,'谁的风格','2013-08-18','鐠嬩胶娈戞搴㈢壐','402882e5408b8adc01408b939da70003 ');
INSERT INTO `cargo` VALUES ('402882e5408f72ba01408f7938b30006','阿桑地方','閹炬帞鍋ｇ划?','撒点粉','撒点粉','1234',234,3245,'第三方','2013-08-18','閹炬帞鍋ｇ划澶婁紣','402882e5408b8adc01408b939da70003 ');
INSERT INTO `cargo` VALUES ('402882e74168727d0141687ddfdd0002','苦参片','0.4gx24鐗?','片剂','0.4gx24片','1',1,300,'0.4gx24片','2013-09-29','Z20093275','402882e74168727d0141687d88960001');
INSERT INTO `cargo` VALUES ('402882e94099b7bb014099b949450001','sadf','ssd','sadf','dd','1',1,1,'a','2013-08-20','a','402882e5408fa31a01408fabe1b10007 ');
INSERT INTO `cargo` VALUES ('402882ea40d2f0880140d30ad3530004','苦参片','300鐩?浠?','片剂','0.4g×24片','5',4.2,6300,'130509','2016-04-01','Z20093275','ff80808140ccb13d0140ccb2352f0001 ');
INSERT INTO `cargo` VALUES ('402882eb409ffb080140a02029b40039','都发生','璇寸殑','松岛枫','松岛枫','234',234,234,'斯蒂芬v','2013-08-21','鏂拏鑺瑅','402882e5408b55a201408b5912c80002 ');
INSERT INTO `cargo` VALUES ('402882eb40ecab7a0140ecad62df0001','苦参片','300鐩?浠?','片剂','0.4g×24片','1浠?0鐩?',4.2,1302,'12343','2013-09-05','Z20093275','ff80808140b639930140b63d3cc80001 ');
INSERT INTO `cargo` VALUES ('402882ec40e317130140e32687310003','苦参片','300鐩?浠?','片剂','0.4g×24片','2',3,1800,'111111','2014-09-01','Z20093275','402882ec40e317130140e323c5870002');
INSERT INTO `cargo` VALUES ('402882ec40e317130140e32740320005','苦参片','300鐩?浠?','片剂','0.4g×24片','3',4,2700,'222222','2014-09-01','Z20093275','402882ec40e317130140e323c5870002');
INSERT INTO `cargo` VALUES ('402882ec40e317130140e327f7890006','苦参片','300鐩?浠?','片剂','0.4g×24片','6',1,1800,'333333','2014-09-01','Z20093275','402882ec40e317130140e323c5870002');
INSERT INTO `cargo` VALUES ('402882ec40e317130140e3293a950007','苦参片','300鐩?浠?','片剂','0.4g×24片','6',1,1800,'888888','2015-09-01','Z20093275','402882ec40e317130140e323c5870002 ');
INSERT INTO `cargo` VALUES ('402882ec411b1a0401411b24ca4f0004','苦参片','300鐩?浠?','片剂','0.4gx24片','1',1,300,'123','2013-09-14','Z20093275','402882ec411b12de01411b1756ee0001');
INSERT INTO `cargo` VALUES ('402882ec411b1a0401411b25c2310006','苦参片','300鐩?浠?','片剂','0.4gx24片','1浠?0鐩?',1,310,'dsf','2013-09-14','Z20093275','402882ec411b1a0401411b2564d20005');
INSERT INTO `cargo` VALUES ('402882ec411b1a0401411b2639660007','苦参片','300鐩?浠?','片剂','0.4gx24片','1浠?0鐩?',1,310,'asd','2013-09-14','Z20093275','402882ec411b1a0401411b2564d20005 ');
INSERT INTO `cargo` VALUES ('402882ec411b2de101411b3069d00003','苦参片','300鐩?浠?','片剂','0.4gx24片','2',1,600,'234','2013-09-14','Z20093275','402880f540fc28710140fc363f330001');
INSERT INTO `cargo` VALUES ('402882ec411b2de101411b30a3550004','苦参片','300鐩?浠?','片剂','0.4gx24片','3',1,900,'234','2013-09-14','Z20093275','402880f540fc28710140fc363f330001');
INSERT INTO `cargo` VALUES ('402882ec41c58ec80141c59367650004','苦参片','300鐩?浠?','片剂','0.4gx36片','5',4.2,6300,'130509','2013-10-17','Z20093275','402882ec41c58ec80141c592fa660003');
INSERT INTO `cargo` VALUES ('ff80808140b5ca770140b60e38350006','123','123','006005','1','123',123,15129,'sdf','2013-08-25','sdf','ff80808140b5bf9b0140b5c74dbe0001 ');
INSERT INTO `cargo` VALUES ('ff80808140b610a40140b611b8be0001','123','123','006005','1','123',123,15129,'sdf','2013-08-25','sdf','ff80808140b5c8f40140b5c99ef00001 ');
INSERT INTO `cargo` VALUES ('ff80808140b639930140b64427970002','123','123','006005','1','123',123,15129,'sdf','2013-08-26','sdfsdf','ff80808140b610a40140b613a5760003 ');
INSERT INTO `cargo` VALUES ('ff80808140b639930140b64701890003','123','123','006005','1','22',234,5148,'sdf','2013-08-26','sdf','ff80808140b631ba0140b63443cf0001 ');
INSERT INTO `cargo` VALUES ('ff80808140d1d95b0140d1e417900002','速效止泻胶囊','300','006006','0.25','23',234,5382,'sdf','2013-08-31','wersf','ff80808140b631ba0140b63443cf0001 ');
INSERT INTO `cargo` VALUES ('ff80808140d1d95b0140d200a1300004','速效止泻胶囊','300','006006','0.25','1',234,234,'111111','2013-08-31','11111111','ff80808140b631ba0140b63443cf0001 ');
INSERT INTO `cargo` VALUES ('ff80808140d1d95b0140d2011f980005','速效止泻胶囊','100','006006','0.25','1',234,234,'111111','2013-08-31','11111111','ff80808140b631ba0140b63443cf0001 ');
INSERT INTO `cargo` VALUES ('ff80808140e779250140e7b1f7070001','苦参片','200琚?浠?','片剂','0.4g×24片','1',1,200,'8776767','2013-09-04','Z20093275','402882ec40e317130140e323c5870002 ');
INSERT INTO `cargo` VALUES ('ff80808140e7b83a0140e7b930790001','苦参片','200琚?浠?','片剂','0.4g×24片','1',1,200,'8776767','2013-09-04','Z20093275','402882ec40e317130140e323c5870002 ');
INSERT INTO `cargo` VALUES ('ff80808140e7b83a0140e7b951d20002','苦参片','200琚?浠?','片剂','0.4g×24片','1',1,200,'8776767','2013-09-04','Z20093275','402882ec40e317130140e323c5870002 ');
INSERT INTO `cargo` VALUES ('ff80808140e7be7c0140e7c43bff0001','速效止泻胶囊','300鐩?浠?','006006','0.25×粒盒','1',1,300,'234234','2014-09-01','鏉惧矝鏋?','ff80808140b631ba0140b63443cf0001 ');
INSERT INTO `cargo` VALUES ('ff8080814105a0f1014105a36b640002','苦参片','300鐩?浠?','片剂','0.4g×24片','1',1,300,'cxv','2013-09-10','Z20093275','ff80808140f0ac740140f0b3d8730001 ');
INSERT INTO `cargo` VALUES ('ff8080814105b6ea014105b8d9670002','苦参片','300鐩?浠?','片剂','0.4g×24片','2',1,600,'0.4g×24片','2013-09-10','Z20093275','402880f540fc28710140fc363f330001 ');
INSERT INTO `cargo` VALUES ('ff8080814105bd2e014106175cb90001','苦参片','300鐩?浠?','片剂','0.4g×24片','1',4.2,1260,'0.4g×24片','2013-09-10','Z20093275','ff80808140b639930140b63d3cc80001 ');
INSERT INTO `cargo` VALUES ('ff8080814105bd2e014106179dd20002','苦参片','300鐩?浠?','片剂','0.4g×24片','2',4.2,2520,'0.4g×24片','2013-09-10','Z20093275','ff80808140b639930140b63d3cc80001 ');

#
# Table structure for table company
#

CREATE TABLE `company` (
  `Id` varchar(40) character set utf8 NOT NULL default '',
  `name` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `company` VALUES ('402882e5408a798401408a7a709a0001','qer ');
INSERT INTO `company` VALUES ('402882e5408acbdb01408accf6870001','sadf');
INSERT INTO `company` VALUES ('402882e5408acbdb01408ad458370003','asdf ');
INSERT INTO `company` VALUES ('402882e5408b5d6801408b6859bc0009','sdf');
INSERT INTO `company` VALUES ('402882e5408b8adc01408b939da50002','风格化');
INSERT INTO `company` VALUES ('402882e5408b951801408b96758d0002','阿桑地方');
INSERT INTO `company` VALUES ('402882e5408fcca101408fd594640001','张茗越');
INSERT INTO `company` VALUES ('402882eb409ffb080140a004686d0037','当富贵');
INSERT INTO `company` VALUES ('ff80808140b5bbf10140b5bd44a40001',NULL);

#
# Table structure for table document
#

CREATE TABLE `document` (
  `doc_id` char(40) collate utf8_bin NOT NULL default '',
  `company` varchar(50) collate utf8_bin default NULL,
  `address` varchar(50) collate utf8_bin default NULL,
  `launch_time` datetime default NULL,
  `zone` varchar(50) collate utf8_bin default NULL,
  `transporter` varchar(50) collate utf8_bin default NULL,
  `keeper` varchar(50) collate utf8_bin default NULL,
  `manager` varchar(50) collate utf8_bin default NULL,
  `listmaker` varchar(50) collate utf8_bin default NULL,
  `checker` varchar(50) collate utf8_bin default NULL,
  `accounting` varchar(50) collate utf8_bin default NULL,
  `status` int(1) default '0',
  `remark` varchar(100) collate utf8_bin default NULL,
  `accouting` varchar(255) collate utf8_bin default NULL,
  `pur_Id` varchar(255) collate utf8_bin default NULL,
  `submitTime` datetime default NULL,
  PRIMARY KEY  (`doc_id`),
  KEY `FK335CD11B702B337B` (`pur_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `document` VALUES ('297ecfa24683b0e3014683bac5830002',NULL,'asd','2014-06-18','qer','','wer','','admin','闃胯惃寰?',NULL,0,'鐖变粫杈?','濂ヨ禌澶у鏁?','297ecfa24683b0e3014683b9e72c0001',NULL);
INSERT INTO `document` VALUES ('402880f540fc28710140fc363f330001',NULL,'鍝堝皵婊?','2013-09-08','','','','','admin','绋嬪簭',NULL,0,'','鍦版柟','ff80808140a6e3990140a6e96ccd0001',NULL);
INSERT INTO `document` VALUES ('402882e74168727d0141687d88960001',NULL,'鍝堝皵婊?','2013-09-29','','','','','admin','涓暎澶уか',NULL,1,'','鏉惧矝鏋?','ff80808140a6e3990140a6e9d4b30002','2013-09-29 14:53:08');
INSERT INTO `document` VALUES ('402882ec40e317130140e323c5870002',NULL,'鍝堝皵婊ㄦ睙鍖?','2013-09-03','33','22','55','44','66','77',NULL,1,'99','88','402882ec40e317130140e31992360001','2013-09-04 14:53:04');
INSERT INTO `document` VALUES ('402882ec411b12de01411b1756ee0001',NULL,'鍝堝皵婊?','2013-09-14','','','','','admin','ASDF',NULL,1,'','SADF','ff80808140a6e3990140a6e9d4b30002','2013-09-14 14:25:04');
INSERT INTO `document` VALUES ('402882ec411b1a0401411b2564d20005',NULL,'鍝堝皵婊?','2013-09-16','','','','','admin','sdfs',NULL,1,'','sdfsdf','ff80808140a6e3990140a6e9d4b30002','2013-09-14 14:26:57');
INSERT INTO `document` VALUES ('402882ec41c58ec80141c58f7e7f0001',NULL,'adf','2013-10-17','','','','','admin','sdf',NULL,0,'','sdf','402882ec40e317130140e31992360001',NULL);
INSERT INTO `document` VALUES ('402882ec41c58ec80141c592fa660003',NULL,'榛戞渤甯?','2013-10-17','','','','','admin','sadf',NULL,1,'','sdf','ff80808140a6e3990140a6e96ccd0001','2013-10-17 16:41:18');
INSERT INTO `document` VALUES ('ff80808140b5bf9b0140b5c74dbe0001',NULL,NULL,'2013-08-25','','','','','鍦版柟','鏉惧矝鏋?',NULL,2,'','鍦版柟','ff80808140a6e3990140a6e96ccd0001','2013-09-29 14:50:43');
INSERT INTO `document` VALUES ('ff80808140b5c8f40140b5c99ef00001',NULL,NULL,'2013-08-25','','','','','椋庢牸','璇寸殑鍙峷',NULL,2,'','鏉惧矝鏋?','ff80808140a6e3990140a6e96ccd0001',NULL);
INSERT INTO `document` VALUES ('ff80808140b610a40140b613a5760003',NULL,NULL,'2013-08-25','鏉惧矝鏋?','闃胯惃寰烽','闃胯惃寰烽','闃胯惃寰烽','椋庢牸','璇寸殑鍙峷',NULL,2,'闃胯惃寰烽','鏉惧矝鏋?','ff80808140a6e3990140a6e96ccd0001','2013-09-29 14:50:43');
INSERT INTO `document` VALUES ('ff80808140b631ba0140b63443cf0001',NULL,'鍝堝皵婊?','2013-08-26','','','','','椋?','鍦版柟',NULL,2,'','鍦版柟','ff80808140ccb13d0140ccc1178e0002','2013-09-04 14:59:46');
INSERT INTO `document` VALUES ('ff80808140b639930140b63d3cc80001',NULL,'缁ュ寲','2013-08-26','','','','','鍦版柟','鐩稿唽',NULL,0,'','鑷杞?','ff80808140a6e3990140a6ea25130003',NULL);
INSERT INTO `document` VALUES ('ff80808140ccb13d0140ccb2352f0001',NULL,NULL,'2013-08-30','','','','','鏉惧矝鏋?','闃胯惃寰?',NULL,1,'','璇寸殑','ff80808140a6e3990140a6e96ccd0001',NULL);
INSERT INTO `document` VALUES ('ff80808140f0ac740140f0b3d8730001',NULL,'鍝堝皵婊?','2013-09-06','','','','','admin','鐡﹀皵鐗?',NULL,0,'','姊佃拏鍐?','ff80808140a6e3990140a6e9d4b30002',NULL);

#
# Table structure for table feedback
#

CREATE TABLE `feedback` (
  `id` varchar(40) collate utf8_bin NOT NULL,
  `content` varchar(200) collate utf8_bin default NULL,
  `titile` varchar(40) collate utf8_bin default NULL,
  `status` int(1) default NULL,
  `recdate` datetime default NULL,
  `resultcontent` varchar(100) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table goodsarea
#

CREATE TABLE `goodsarea` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `name` varchar(255) collate utf8_bin default NULL,
  `gb_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table goodsbase
#

CREATE TABLE `goodsbase` (
  `gb_id` varchar(255) collate utf8_bin NOT NULL,
  `gb_num` varchar(255) collate utf8_bin default NULL,
  `gb_name` varchar(255) collate utf8_bin default NULL,
  `gb_norms` decimal(19,2) default NULL,
  `packnorms` varchar(255) collate utf8_bin default NULL,
  `pronorms` varchar(255) collate utf8_bin default NULL,
  `gmpnorms` varchar(255) collate utf8_bin default NULL,
  `pkunit` varchar(255) collate utf8_bin default NULL,
  `agetype` varchar(255) collate utf8_bin default NULL,
  `gb_unit` varchar(255) collate utf8_bin default NULL,
  `cl_name` varchar(255) collate utf8_bin default NULL,
  `cl_id` varchar(255) collate utf8_bin default NULL,
  `spell` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `cl_code` varchar(255) collate utf8_bin default NULL,
  `isauto` varchar(255) collate utf8_bin default NULL,
  `medicalPermitment` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`gb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `goodsbase` VALUES ('402882ec41c58ec80141c59284d00002','001','鑻﹀弬鐗?',300,'36','0.4g','','鐩?','鐗囧墏','鐗?','闃胯惃寰?','402882ea40cddb910140cdea40390002','ksp','1','','002002',NULL,'Z20093275');

#
# Table structure for table goodsinfo
#

CREATE TABLE `goodsinfo` (
  `g_id` varchar(255) collate utf8_bin NOT NULL,
  `batch_num` varchar(255) collate utf8_bin default NULL,
  `supplier_id` varchar(255) collate utf8_bin default NULL,
  `allcount` decimal(19,2) default NULL,
  `curcount` decimal(19,2) default NULL,
  `validity` datetime default NULL,
  `factorydata` datetime default NULL,
  `place` varchar(255) collate utf8_bin default NULL,
  `state` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `sp_size` decimal(19,2) default NULL,
  `isscrabble` varchar(255) collate utf8_bin default NULL,
  `pervlaue` decimal(19,2) default NULL,
  `supplier` varchar(255) collate utf8_bin default NULL,
  `allvalue` decimal(19,2) default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `descount` decimal(19,2) default NULL,
  `picecount` int(11) default NULL,
  `curpicecount` int(11) default NULL,
  `gmpcount` decimal(19,2) default NULL,
  `batchcount` varchar(255) collate utf8_bin default NULL,
  `fac_batch_num` varchar(255) collate utf8_bin default NULL,
  `mading` varchar(255) collate utf8_bin default NULL,
  `despx` varchar(255) collate utf8_bin default NULL,
  `testnum` varchar(255) collate utf8_bin default NULL,
  `lim` decimal(19,2) default NULL,
  `islock` int(11) default NULL,
  `st_id` varchar(255) collate utf8_bin default NULL,
  `gb_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`g_id`),
  KEY `FK53296104DCC21BC7` (`gb_id`),
  KEY `FK5329610484F06EC3` (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table managerandgoods
#

CREATE TABLE `managerandgoods` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `mid` varchar(255) collate utf8_bin default NULL,
  `gid` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK554CBE8CA0123D84` (`mid`),
  KEY `FK554CBE8CD6EA388A` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table managerinfo
#

CREATE TABLE `managerinfo` (
  `ma_id` varchar(255) collate utf8_bin NOT NULL,
  `ma_name` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `uid` varchar(255) collate utf8_bin default NULL,
  `stroe_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ma_id`),
  KEY `FK260D5DBE9B3B79D` (`stroe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table price
#

CREATE TABLE `price` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `price` double default NULL,
  `pur_Id` varchar(255) collate utf8_bin default NULL,
  `gb_Id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK65FB149DCC21BC7` (`gb_Id`),
  KEY `FK65FB149702B337B` (`pur_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `price` VALUES ('297ecfa24683b0e3014683bc26f20004',1,'297ecfa24683b0e3014683b9e72c0001','402882ec41c58ec80141c59284d00002');
INSERT INTO `price` VALUES ('402880f540fc26ac0140fc2754e70002',1,'ff80808140a6e3990140a6e9d4b30002','402882ea40d2f0880140d2f70a780001');
INSERT INTO `price` VALUES ('402882ea40d2f0880140d301ab0e0003',4.2,'ff80808140a6e3990140a6ea25130003','402882ea40d2f0880140d2f70a780001');
INSERT INTO `price` VALUES ('402882ea40d2f0880140d30ad3980005',1,'ff80808140a6e3990140a6e96ccd0001','402882ea40d2f0880140d2f70a780001');
INSERT INTO `price` VALUES ('402882ec40e317130140e32687810004',1,'402882ec40e317130140e31992360001','402882ea40d2f0880140d2f70a780001');
INSERT INTO `price` VALUES ('402882ec41c58ec80141c59367ea0005',4.2,'ff80808140a6e3990140a6e96ccd0001','402882ec41c58ec80141c59284d00002');
INSERT INTO `price` VALUES ('ff80808140b610a40140b611b9280002',123,'ff80808140a6e3990140a6e96ccd0001','402880e940434e940140435a4e250001');
INSERT INTO `price` VALUES ('ff80808140b639930140b64701d90004',234,'ff80808140a6e3990140a6e9d4b30002','402880e940434e940140435a4e250001');
INSERT INTO `price` VALUES ('ff80808140d1d95b0140d1e417fd0003',1,'ff80808140ccb13d0140ccc1178e0002','ff80808140d1d95b0140d1e335580001');

#
# Table structure for table probox
#

CREATE TABLE `probox` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `num` int(11) default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `scrabble_batch` varchar(255) collate utf8_bin default NULL,
  `scrabble_count` decimal(19,2) default NULL,
  `goodsinfo_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKC5992FFE733E48DB` (`goodsinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table purchaseinfo
#

CREATE TABLE `purchaseinfo` (
  `pur_id` varchar(255) collate utf8_bin NOT NULL,
  `link` varchar(255) collate utf8_bin default NULL,
  `pur_name` varchar(255) collate utf8_bin default NULL,
  `linkman` varchar(255) collate utf8_bin default NULL,
  `addr` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `spell` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `businessLicence` datetime default NULL,
  `blcheckTime` datetime default NULL,
  `organizationLicence` datetime default NULL,
  `olcheckTime` datetime default NULL,
  `medicinebl` datetime default NULL,
  `taxRegister` datetime default NULL,
  `commonTaxPayer` int(11) default NULL,
  `purCopyTable` int(11) default NULL,
  `agreement` int(11) default NULL,
  `medicinebLicence` datetime default NULL,
  `provinceName` varchar(255) collate utf8_bin default NULL,
  `provinceNumber` varchar(255) collate utf8_bin default NULL,
  `purNum` varchar(255) collate utf8_bin default NULL,
  `updateTime` datetime default NULL,
  PRIMARY KEY  (`pur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `purchaseinfo` VALUES ('297ecfa24683b0e3014683b9e72c0001','1233456','缁ユ１鍒惰嵂鍘?','鎾掑湴鏂规拻鍦版柟','adfghjk','1','slzyc','','2014-06-10','2014-06-28','2014-06-12','2014-06-19',NULL,'2014-06-26',0,0,0,'2014-06-12','榛戦緳姹熺渷','0451','10','2014-06-10 11:02:17');
INSERT INTO `purchaseinfo` VALUES ('402882e9409a271101409a2bd5700001','15015981414','閸濆牆鐨靛銊ュ煑閼筋垶娉﹂崶銏犲彋閸?','閺?','閸涚厧鍙為梼鍨厔閸ユ稒鏌熼崣?','0','hylc','閹炬帞鍋ｇ划澶夌稻閺勵垶顥撻弽?','2014-01-01','2013-01-01','2014-01-01','2013-01-01','2014-01-01','2014-01-01',0,0,0,'2014-01-01',NULL,NULL,'1',NULL);
INSERT INTO `purchaseinfo` VALUES ('402882ec40e317130140e31992360001','','榛戦緳姹熺渷娴庝粊鑽笟','灏忓悆澶ч攨楗?','','1','jryy','','2012-09-01','2013-09-03','2012-09-01','2013-09-03','2014-01-01','2014-09-01',0,1,1,'2014-09-01','榛戦緳姹熺渷','0451','9','2013-09-05 00:02:50');
INSERT INTO `purchaseinfo` VALUES ('ff80808140a6e3990140a6e96ccd0001','','榛戞渤鍒惰嵂鍘?','鏃?','榛戞渤甯?','1','hhzyc','','2014-01-01','2012-09-01','2014-01-01','2013-08-30','2014-01-01','2014-01-01',1,1,1,'2014-01-01','榛戦緳姹熺渷','0451','2','2013-09-08 14:24:14');
INSERT INTO `purchaseinfo` VALUES ('ff80808140a6e3990140a6e9d4b30002','鍝堝皵婊?','鍝堝皵婊ㄥ埗鑽巶','鏃?','鍝堝皵婊?','0','hrbzyc','','2014-09-01','2013-01-01','2014-09-01','2013-01-01','2014-01-01','2014-01-01',0,0,0,'2014-01-01','榛戦緳姹熺渷','0451','3',NULL);
INSERT INTO `purchaseinfo` VALUES ('ff80808140a6e3990140a6ea25130003','','缁ュ寲鍒惰嵂鍘?','鏃?','缁ュ寲','1','shzyc','','2014-01-01','2013-01-01','2014-01-01','2013-01-01','2014-01-01','2014-01-01',0,0,0,'2014-01-01','榛戦緳姹熺渷','0451','4','2013-09-05 00:03:02');
INSERT INTO `purchaseinfo` VALUES ('ff80808140a6e3990140a6ea7dfc0004','','榻愰綈鍝堝皵鍒惰嵂鍘?','鏃?','榻愰綈鍝堝皵','1','qqhezyc','','2014-01-01','2013-01-01','2014-01-01','2013-01-01','2014-01-01','2014-01-01',0,0,0,'2014-01-01','榛戦緳姹熺渷','0451','5','2013-09-05 00:02:57');
INSERT INTO `purchaseinfo` VALUES ('ff80808140ccb13d0140ccc1178e0002','123142315','鍝堝皵婊ㄧ鍏埗鑽巶','鍟婂晩绗笁鏂?','鍝堝皵婊ㄥ競','1','hylc','','2013-07-01','2012-07-01','2014-08-01','2013-08-30','2014-01-01','2014-08-01',0,0,0,'2014-08-01','榛戦緳姹熺渷','0451','6','2013-09-05 00:02:45');
INSERT INTO `purchaseinfo` VALUES ('ff80808140da6cbf0140da6e9cca0001','','鐗′腹姹熷埗鑽巶','鏉惧矝鏋?','','1','mdjzyc','','2014-09-01','2013-09-02','2014-09-01','2013-09-02','2014-01-01','2014-09-01',0,0,0,'2014-09-01','榛戦緳姹熺渷','0451','7','2013-09-05 00:02:54');
INSERT INTO `purchaseinfo` VALUES ('ff80808140da6f630140da7094120001','','鍖楀畨鍒惰嵂鍘?','鏉惧矝鏋?','','1','bazyc','','2014-09-01','2013-09-02','2014-09-01','2013-09-02','2014-01-01','2014-09-01',1,1,0,'2014-09-01','榛戦緳姹熺渷','0451','8','2013-09-05 14:13:46');
INSERT INTO `purchaseinfo` VALUES ('ff80808140e9cb180140e9cf401f0001','鏉惧矝鏋?','娴嬭瘯鑽笟','鏉惧矝鏋?','鏉惧矝鏋?','0','cs','','2013-09-05','2013-09-05','2013-09-05','2013-09-05',NULL,'2013-09-05',0,0,0,'2013-09-05','榛戦緳姹熺渷','0451','10','2013-09-05 00:30:08');

#
# Table structure for table retest
#

CREATE TABLE `retest` (
  `rt_id` varchar(255) collate utf8_bin NOT NULL,
  `testdate` datetime default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `senddate` datetime default NULL,
  `seq` int(11) default NULL,
  `test_num` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `days` int(11) default NULL,
  `type_code` varchar(255) collate utf8_bin default NULL,
  `lastdate` datetime default NULL,
  `retestcount` decimal(19,2) default NULL,
  `dequalified` varchar(255) collate utf8_bin default NULL,
  `resultinfo` varchar(255) collate utf8_bin default NULL,
  `test_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`rt_id`),
  KEY `FKC84E01453157BE67` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table returnedgoods
#

CREATE TABLE `returnedgoods` (
  `rg_id` varchar(255) collate utf8_bin NOT NULL,
  `batch_num` varchar(255) collate utf8_bin default NULL,
  `supplier_id` varchar(255) collate utf8_bin default NULL,
  `allcount` decimal(19,2) default NULL,
  `curcount` decimal(19,2) default NULL,
  `validity` datetime default NULL,
  `factorydata` datetime default NULL,
  `place` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `state` varchar(255) collate utf8_bin default NULL,
  `sp_size` decimal(19,2) default NULL,
  `isscrabble` varchar(255) collate utf8_bin default NULL,
  `pervlaue` decimal(19,2) default NULL,
  `supplier` varchar(255) collate utf8_bin default NULL,
  `allvalue` decimal(19,2) default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `descount` decimal(19,2) default NULL,
  `picecount` int(11) default NULL,
  `fac_batch_num` varchar(255) collate utf8_bin default NULL,
  `st_id` varchar(255) collate utf8_bin default NULL,
  `gb_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`rg_id`),
  KEY `FK953522E7DCC21BC7` (`gb_id`),
  KEY `FK953522E784F06EC3` (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table storage_info
#

CREATE TABLE `storage_info` (
  `st_id` varchar(255) collate utf8_bin NOT NULL,
  `st_num` varchar(255) collate utf8_bin default NULL,
  `st_name` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `type` varchar(255) collate utf8_bin default NULL,
  `type_id` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `storage_info` VALUES ('402880e8404c20a101404c3290db0001','123123','閹存劕鎼?','','001006','402890e43e20e797013e211549ef0001','1');
INSERT INTO `storage_info` VALUES ('402880e8404c20a101404c3305e20002','12333','閹存劕鎼?','','001005','4028b8813c7455af013c74589bb20003','1');
INSERT INTO `storage_info` VALUES ('402880e8404c6a0201404c72fbe60001','a','濞ｂ剝璐伴惃?','','001006','402890e43e20e797013e211549ef0001','1');

#
# Table structure for table storeandworker
#

CREATE TABLE `storeandworker` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `st_id` varchar(255) collate utf8_bin default NULL,
  `w_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKDAD94454DDEB618E` (`w_id`),
  KEY `FKDAD9445484F06EC3` (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT INTO `storeandworker` VALUES ('402880e8404c6a0201404c7855020006','402880e8404c20a101404c3305e20002','402880e8404c0c1a01404c149dcc0002');
INSERT INTO `storeandworker` VALUES ('402880e8404c6a0201404c7855020007','402880e8404c20a101404c3305e20002','402880e8404c0c1a01404c14be0a0003');
INSERT INTO `storeandworker` VALUES ('402880e8404d536201404d53e4e90001','402880e8404c20a101404c3290db0001','402880e8404c0c1a01404c146df50001');
INSERT INTO `storeandworker` VALUES ('402880e8404d536201404d53e4eb0002','402880e8404c20a101404c3290db0001','402880e8404c0c1a01404c149dcc0002');
INSERT INTO `storeandworker` VALUES ('402880e8404d536201404d53e4eb0003','402880e8404c20a101404c3290db0001','402880e8404c0c1a01404c14be0a0003');
INSERT INTO `storeandworker` VALUES ('402880e8404d536201404d53e4eb0004','402880e8404c20a101404c3290db0001','402880e9404388620140439d15520001');

#
# Table structure for table storeplace
#

CREATE TABLE `storeplace` (
  `stp_id` varchar(255) collate utf8_bin NOT NULL,
  `stp_num` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `store_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`stp_id`),
  KEY `FK37DF44C6E4BF7443` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table supandgoods
#

CREATE TABLE `supandgoods` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `sp_id` varchar(255) collate utf8_bin default NULL,
  `gb_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2E013C2DDCC21BC7` (`gb_id`),
  KEY `FK2E013C2D9674ED76` (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table supplierinfo
#

CREATE TABLE `supplierinfo` (
  `si_id` varchar(255) collate utf8_bin NOT NULL,
  `link` varchar(255) collate utf8_bin default NULL,
  `si_name` varchar(255) collate utf8_bin default NULL,
  `linkman` varchar(255) collate utf8_bin default NULL,
  `addr` varchar(255) collate utf8_bin default NULL,
  `status` varchar(255) collate utf8_bin default NULL,
  `spell` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `cl_id` varchar(255) collate utf8_bin default NULL,
  `cl_num` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`si_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table sys_code
#

CREATE TABLE `sys_code` (
  `s_id` varchar(40) NOT NULL,
  `s_codeCategory_id` varchar(40) default NULL,
  `s_code` varchar(40) default NULL,
  `s_name` varchar(100) default NULL,
  `s_state` varchar(2) default NULL,
  `s_remark` varchar(200) default NULL,
  PRIMARY KEY  (`s_id`),
  KEY `FK_code_codeCategory` (`s_codeCategory_id`),
  KEY `FK749FE01F3D32D927` (`s_codeCategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_code` VALUES ('4028817e3e7ceca8013e817c3fd8093f','402890e43d14a972013d153074530009','003002','加工入库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3e9c45d6013ea1a8d0630159','402890e43d14a972013d153544e80012','009002','取样出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3e9c45d6013ea1a8ee4c015a','402890e43d14a972013d153544e80012','009003','技术出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f73ea4f013f7403173c00a4','402890e43d14a972013d15355dd70013','008007','取样出库','H','');
INSERT INTO `sys_code` VALUES ('4028817e3f882cac013f88a298d20374','402890e43d14a972013d15355dd70013','008003','技术部出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e0a6d6503d5','402890e43d14a972013d153074530009','003003','其他入库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e0b4b5503d6','402890e43d14a972013d1534a521000f','005003','其他入库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e87831d04d6','402890e43d14a972013d15355dd70013','008008','其他出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e88fe8904e1','402890e43d14a972013d153544e80012','009004','损耗出库','H','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e897f0b04e6','402890e43d14a972013d153595550014','010010','市场出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e9976ae0531','402890e43d14a972013d1536017d0016','012002','取样出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e9c9bb20543','402890e43d14a972013d1536017d0016','012006','咨询出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e9cdeb30545','402890e43d14a972013d1536017d0016','012007','科研出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e9cf63e0546','402890e43d14a972013d1536017d0016','012005','样品出库','N','');
INSERT INTO `sys_code` VALUES ('4028817e3f8958e2013f8e9d32f10549','402890e43d14a972013d1536017d0016','012008','其他出库','N','');
INSERT INTO `sys_code` VALUES ('402881ef3e62c081013e62c1ad2d0001','402882e73e4b8a01013e4b8b6f070001','006004','茶剂','N','');
INSERT INTO `sys_code` VALUES ('402881ef3e62c081013e62c1daa90002','402882e73e4b8a01013e4b8b6f070001','006005','栓剂','N','');
INSERT INTO `sys_code` VALUES ('402882e73dcfd90d013dcfe227400001','402890e43d14a972013d153595550014','010001','领料出库','N','');
INSERT INTO `sys_code` VALUES ('402882e73dd030bc013dd032fa9f0001','402890e43d14a972013d1536017d0016','012001','销售出库','N','');
INSERT INTO `sys_code` VALUES ('402882e73e0daf83013e0debc8080001','402890e43d14a972013d1534a521000f','005002','冲红入库','N','');
INSERT INTO `sys_code` VALUES ('402882e73e0e4d70013e0e4f27ef0001','402890e43d14a972013d15355dd70013','008004','损耗出库','N','');
INSERT INTO `sys_code` VALUES ('402882e73e31f0a9013e31f585830001','402890e43d14a972013d153595550014','010002','损耗出库','H','');
INSERT INTO `sys_code` VALUES ('402882ea40cddb910140cde96b260001','402882e73e4b8a01013e4b8b6f070001','006006','片剂','N','');
INSERT INTO `sys_code` VALUES ('402882ea40cddb910140cdea40390002','4028b8813c7455af013c745a17c80006','002002','阿萨德','N','松岛枫');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3612a740008','402882ea40d2f0880140d360d5db0007','0451','黑龙江省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d36ebbc00009','402882ea40d2f0880140d360d5db0007','010','北京市','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d36ef558000a','402882ea40d2f0880140d360d5db0007','022','天津市','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d36f22b1000b','402882ea40d2f0880140d360d5db0007','021','上海市','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d36f5712000c','402882ea40d2f0880140d360d5db0007','023','重庆市','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3706b34000d','402882ea40d2f0880140d360d5db0007','0311','河北省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d370b79e000e','402882ea40d2f0880140d360d5db0007','0371','河南省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d371389b000f','402882ea40d2f0880140d360d5db0007','027','湖北省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d371a6160010','402882ea40d2f0880140d360d5db0007','0731','湖南省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d371f6520011','402882ea40d2f0880140d360d5db0007','025','江苏省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d372572f0012','402882ea40d2f0880140d360d5db0007','0791','江西省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d372c9770013','402882ea40d2f0880140d360d5db0007','024','辽宁省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d373b4f20014','402882ea40d2f0880140d360d5db0007','0431','吉林省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d374bf4e0015','402882ea40d2f0880140d360d5db0007','029','陕西省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37535090016','402882ea40d2f0880140d360d5db0007','0351','山西省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37584000017','402882ea40d2f0880140d360d5db0007','0531','山东省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d375be560018','402882ea40d2f0880140d360d5db0007','028','四川省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d375ff310019','402882ea40d2f0880140d360d5db0007','0971','青海省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3765b64001a','402882ea40d2f0880140d360d5db0007','0551','安徽省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d376efa8001b','402882ea40d2f0880140d360d5db0007','0898','海南省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3772ede001c','402882ea40d2f0880140d360d5db0007','020','广东省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3777fcd001d','402882ea40d2f0880140d360d5db0007','0851','贵州省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d377c769001e','402882ea40d2f0880140d360d5db0007','0571','浙江省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3781291001f','402882ea40d2f0880140d360d5db0007','0591','福建省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37844d80020','402882ea40d2f0880140d360d5db0007','0931','甘肃省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37924480021','402882ea40d2f0880140d360d5db0007','0871','云南省','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d3798d7c0022','402882ea40d2f0880140d360d5db0007','0891','西藏自治区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d379f4c70023','402882ea40d2f0880140d360d5db0007','0951','宁夏自治区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37a88d40024','402882ea40d2f0880140d360d5db0007','0771','广西自治区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37ad6960025','402882ea40d2f0880140d360d5db0007','0991','新疆自治区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37b26d90026','402882ea40d2f0880140d360d5db0007','0471','内蒙古自治区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37bb9d70027','402882ea40d2f0880140d360d5db0007','00852','澳门特别行政区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37c150f0028','402882ea40d2f0880140d360d5db0007','00853','香港特别行政区','N','');
INSERT INTO `sys_code` VALUES ('402882ea40d2f0880140d37c62b30029','402882ea40d2f0880140d360d5db0007','02','台湾省','N','');
INSERT INTO `sys_code` VALUES ('8a8385eb4683e092014683e334770001','4028b8813c7455af013c74583d0c0001','001001','松岛枫发生地','N','松岛枫');
INSERT INTO `sys_code` VALUES ('ff80808140b5ca770140b606219f0002','4028b8813c7455af013c745a17c80006','123','松岛枫','N','松岛枫');
INSERT INTO `sys_code` VALUES ('ff80808140b5ca770140b6065e1c0003','4028b8813c7455af013c745a17c80006','12343','下从v','N','松岛枫');
INSERT INTO `sys_code` VALUES ('ff80808140b5ca770140b608b0ad0004','4028b8813c7455af013c745a17c80006','234','发生的','N','个');
INSERT INTO `sys_code` VALUES ('ff80808140b5ca770140b608ce6c0005','4028b8813c7455af013c745a17c80006','345','讽德诵功','N','风格');

#
# Table structure for table sys_codecategory
#

CREATE TABLE `sys_codecategory` (
  `s_id` varchar(40) NOT NULL,
  `s_code` varchar(40) default NULL,
  `s_name` varchar(100) default NULL,
  `s_state` varchar(2) default NULL,
  `s_remark` varchar(200) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_codecategory` VALUES ('402882e540942fb201409430e5a40001','sdf','asdf','N','asdf');
INSERT INTO `sys_codecategory` VALUES ('402882e73e4b8a01013e4b8b6f070001','006','剂型','N','');
INSERT INTO `sys_codecategory` VALUES ('402882ea40d2f0880140d360d5db0007','011','省区','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d15305c580008','004','原辅料入库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d153074530009','003','药材入库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d1534a521000f','005','包材入库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d1534c7d90010','006','外包才入库类型','H','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d1534f3220011','007','成品入库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d153544e80012','009','原辅料出库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d15355dd70013','008','药材出库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d153595550014','010','包材出库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d1535bd250015','011','外包才出库类型','H','');
INSERT INTO `sys_codecategory` VALUES ('402890e43d14a972013d1536017d0016','012','成品出库类型','N','');
INSERT INTO `sys_codecategory` VALUES ('402890e63d5828b6013d582b0e3d0001','013','车间','N','');
INSERT INTO `sys_codecategory` VALUES ('4028b8813c7455af013c74583d0c0001','001','库房类别','N','');
INSERT INTO `sys_codecategory` VALUES ('4028b8813c7455af013c745a17c80006','002','物资类别','N','');

#
# Table structure for table sys_dept
#

CREATE TABLE `sys_dept` (
  `s_id` varchar(40) NOT NULL,
  `s_code` varchar(20) default NULL,
  `s_name` varchar(200) default NULL,
  `s_parentCode` varchar(20) default NULL,
  `i_level` int(1) default NULL,
  `s_address` varchar(200) default NULL,
  `s_postcode` varchar(10) default NULL,
  `s_categoryCode` varchar(20) default NULL,
  `s_commonCode` varchar(20) default NULL,
  `s_state` varchar(2) default NULL,
  `s_remark` varchar(200) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_dept` VALUES ('001','001','系统部门',NULL,0,NULL,NULL,'0','0','H',NULL);
INSERT INTO `sys_dept` VALUES ('002','026','物资部',NULL,0,'','','01','0102','N','');

#
# Table structure for table sys_menu
#

CREATE TABLE `sys_menu` (
  `s_id` varchar(40) NOT NULL,
  `s_no` varchar(60) default NULL,
  `s_name` varchar(60) default NULL,
  `s_linkAddress` varchar(255) default NULL,
  `s_sequence` int(11) default NULL,
  `s_islink` varchar(1) default NULL,
  `s_remark` varchar(255) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_menu` VALUES ('101','001','系统管理','',1,'0','');
INSERT INTO `sys_menu` VALUES ('10101','00101','部门维护','admin/dept!pagedQuery.action',2,'1','');
INSERT INTO `sys_menu` VALUES ('10102','00102','角色维护','admin/role!pagedQuery.action',3,'1','');
INSERT INTO `sys_menu` VALUES ('10103','00103','用户维护','admin/user!pagedQuery.action',4,'1','');
INSERT INTO `sys_menu` VALUES ('10104','00104','代码维护','admin/code!pagedQuery.action',5,'1','');
INSERT INTO `sys_menu` VALUES ('102','002','基本信息管理','',6,'0','');
INSERT INTO `sys_menu` VALUES ('10203','00203','购货方回收站','/baseinfo/purchinfo!recycle.action',9,'1','');
INSERT INTO `sys_menu` VALUES ('10206','00206','购货方信息','/baseinfo/purchinfo!pagedQuery.action',12,'1','');
INSERT INTO `sys_menu` VALUES ('10207','00207','物资基本信息','/baseinfo/goodsbase!pagedQuery.action',31,'1','');
INSERT INTO `sys_menu` VALUES ('10208','00208','购货方回收站','/baseinfo/purchinfo!recycle.action',59,'1',NULL);
INSERT INTO `sys_menu` VALUES ('109','009','同行单管理',NULL,56,'0',NULL);
INSERT INTO `sys_menu` VALUES ('10901','00901','同行单维护','/document/documentAction!pagedQuery.action?method=0&&condition.status=',57,'1',NULL);
INSERT INTO `sys_menu` VALUES ('10902','00902','回收站','/document/documentAction!pagedQuery.action?method=1&&condition.status=2',58,'1',NULL);

#
# Table structure for table sys_role
#

CREATE TABLE `sys_role` (
  `s_id` varchar(40) character set utf8 NOT NULL,
  `s_dept_id` varchar(40) default NULL,
  `s_no` varchar(20) default NULL,
  `s_name` varchar(40) default NULL,
  `s_state` varchar(2) default NULL,
  `s_remark` varchar(200) default NULL,
  PRIMARY KEY  (`s_id`),
  KEY `FK_role_dept` (`s_dept_id`),
  KEY `FK74A6B2A8D233DBC7` (`s_dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_role` VALUES ('001','001','001','系统角色','N','');
INSERT INTO `sys_role` VALUES ('002','002','006','厂领导','N','');
INSERT INTO `sys_role` VALUES ('4028817e3f3be605013f3be7288e0003','002','007','提取库房','N','');
INSERT INTO `sys_role` VALUES ('402882e93d456619013d4579f4df0001','002','002','包材管理员','N','');
INSERT INTO `sys_role` VALUES ('402882eb40ecab7a0140ed6b2c820004','002','008','同行单管理员','N','');
INSERT INTO `sys_role` VALUES ('402890e53e39c7c1013e39cfa4500001','002','004','药材管理员','N','');
INSERT INTO `sys_role` VALUES ('402890e53e39c7c1013e39cfe39f0002','002','005','原辅料管理员','N','');
INSERT INTO `sys_role` VALUES ('402890e63d572d4d013d5735309f0003','002','003','成品管理员','N','');

#
# Table structure for table sys_role_menu
#

CREATE TABLE `sys_role_menu` (
  `s_id` varchar(40) character set utf8 NOT NULL,
  `s_menu_id` varchar(40) default NULL,
  `s_role_id` varchar(40) default NULL,
  PRIMARY KEY  (`s_id`),
  KEY `FK_roleMenu_menu` (`s_menu_id`),
  KEY `FK_roleMenu_role` (`s_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940eb0002','103','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f60003','104','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f60004','10306','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f60005','10406','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f60006','105','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f70007','10508','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f70008','106','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f70009','108','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f7000a','10802','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f2bc72b013f2bd940f7000b','10608','002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f3be605013f3be77d820004','102','4028817e3f3be605013f3be7288e0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f3be605013f3be77d820005','104','4028817e3f3be605013f3be7288e0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f3be605013f3be77d820006','10401','4028817e3f3be605013f3be7288e0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f3be605013f3be77d820007','10402','4028817e3f3be605013f3be7288e0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3f3be605013f3be77d820008','10207','4028817e3f3be605013f3be7288e0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b51003f','102','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510040','10202','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510041','10205','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510042','103','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510043','10301','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510044','10302','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510045','10304','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510046','10305','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510047','10306','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b510048','10207','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b520049','107','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b52004a','10702','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b52004b','10703','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a3b52004c','10704','402890e53e39c7c1013e39cfa4500001');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c50004e','102','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c50004f','10202','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c500050','10205','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c500051','104','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c500052','10401','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c500053','10402','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c500054','10404','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c510055','10405','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c510056','10406','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c510057','10207','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c510058','107','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c510059','10702','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c51005a','10703','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a5c51005b','10704','402890e53e39c7c1013e39cfe39f0002');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872c005c','102','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872c005d','10202','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d005e','10206','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d005f','10207','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0060','106','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0061','10601','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0062','10602','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0063','10603','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0064','10605','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0065','10606','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0066','10610','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872d0067','107','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872e0068','10702','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872e0069','10703','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872e006a','10704','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872e006b','10608','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('4028817e3fa27010013fa27a872e006c','10611','402890e63d572d4d013d5735309f0003');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70001','101','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70002','10101','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70003','10102','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70004','10103','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70005','10104','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70006','102','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70007','10201','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70008','10202','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70009','10203','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000a','10204','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000b','10205','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000c','10206','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000d','103','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000e','10301','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7000f','10302','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70010','104','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70011','10401','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70012','10402','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70013','10304','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70014','10305','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70015','10306','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70016','10404','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70017','10405','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70018','10406','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c70019','105','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7001a','10501','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351c7001b','10502','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1001c','10207','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1001d','10506','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1001e','10507','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1001f','10508','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10020','106','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10021','10601','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10022','10602','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10023','10603','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10024','10605','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10025','10606','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10026','10610','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10027','107','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10028','10701','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10029','10702','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002a','10703','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002b','10704','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002c','10705','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002d','10706','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002e','10707','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d1002f','108','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10030','10801','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10031','10802','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10032','109','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10033','10608','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10034','10901','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10035','10902','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb409ffb080140a00351d10036','10611','001');
INSERT INTO `sys_role_menu` VALUES ('402882eb40ecab7a0140ed6b58430005','109','402882eb40ecab7a0140ed6b2c820004');
INSERT INTO `sys_role_menu` VALUES ('402882eb40ecab7a0140ed6b58430006','10901','402882eb40ecab7a0140ed6b2c820004');
INSERT INTO `sys_role_menu` VALUES ('402882eb40ecab7a0140ed6b58430007','10902','402882eb40ecab7a0140ed6b2c820004');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca30590001','102','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0002','10202','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0003','10205','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0004','105','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0005','10501','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0006','10502','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0007','10207','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305b0008','10506','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c0009','10507','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000a','10508','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000b','107','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000c','10702','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000d','10703','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000e','10704','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c000f','109','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c0010','10901','402882e93d456619013d4579f4df0001');
INSERT INTO `sys_role_menu` VALUES ('ff80808140e9c3d30140e9ca305c0011','10902','402882e93d456619013d4579f4df0001');

#
# Table structure for table sys_user
#

CREATE TABLE `sys_user` (
  `s_id` varchar(40) character set utf8 NOT NULL,
  `s_role_id` varchar(40) default NULL,
  `s_username` varchar(20) default NULL,
  `s_realName` varchar(20) default NULL,
  `s_password` varchar(20) default NULL,
  `s_identification` varchar(30) default NULL,
  `s_email` varchar(100) default NULL,
  `s_tel` varchar(50) default NULL,
  `s_fax` varchar(20) default NULL,
  `d_loginTime` date default NULL,
  `s_islogin` varchar(2) default NULL,
  `s_state` varchar(2) default NULL,
  `s_remark` varchar(200) default NULL,
  PRIMARY KEY  (`s_id`),
  KEY `FK_user_role` (`s_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `sys_user` VALUES ('1','001','admin','系统管理员','1','123',NULL,NULL,NULL,'2014-06-10','Y','N',NULL);
INSERT INTO `sys_user` VALUES ('4028817e3e7863de013e78bcc3440032','402890e53e39c7c1013e39cfe39f0002','jx','金馨','1','','','','','2014-06-10','Y','N','');
INSERT INTO `sys_user` VALUES ('4028817e3f2bc72b013f2bd9f5fb000c','002','system','','1234','','','','','2013-06-21','Y','N','');
INSERT INTO `sys_user` VALUES ('4028817e3f3be605013f3be7fdea0009','4028817e3f3be605013f3be7288e0003','ycjgg','一车间公共','1','','','','','2013-06-20','Y','N','');
INSERT INTO `sys_user` VALUES ('402881ef3f6578f4013f657a054e0001','002','ggcx','','1','','','','','2013-07-14','Y','N','');
INSERT INTO `sys_user` VALUES ('402882e73e74cd29013e74ecdf000001','402890e53e39c7c1013e39cfa4500001','zdy','张达宇','1','','','','','2013-09-05','Y','N','');
INSERT INTO `sys_user` VALUES ('402882eb40ecab7a0140ed75909c0008','402882eb40ecab7a0140ed6b2c820004','xth','谢天慧','1','','','','','2013-09-05','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39d2d24f002a','402890e53e39c7c1013e39cfa4500001','wqz','武庆珍','1','','','','','2013-07-24','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39d7a77f002b','402890e53e39c7c1013e39cfa4500001','wlj','王立君','1','','','','','2013-06-13','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39d90663002c','402890e53e39c7c1013e39cfe39f0002','fy','冯尧','1','','','','','2013-07-14','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39d956cc002d','402890e53e39c7c1013e39cfe39f0002','zll','张丽丽','201306','','','','','2013-07-14','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39dacf6f002e','402882e93d456619013d4579f4df0001','zch','张春红','1','','','','','2013-07-24','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39db18ba002f','402882e93d456619013d4579f4df0001','hy','胡月','1','','','','','2013-07-24','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e53e39c7c1013e39dbb11c0030','402890e63d572d4d013d5735309f0003','gmh','郭美惠','8256','','','','','2013-07-18','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e63d572d4d013d573575c10004','402890e63d572d4d013d5735309f0003','flw','付丽伟','777','','','','','2013-07-24','Y','N','');
INSERT INTO `sys_user` VALUES ('402890e73d43ea90013d43ec0a3e000a','402882e93d456619013d4579f4df0001','lh','刘欢','1','','','','','2013-07-23','Y','N','');

#
# Table structure for table testinfo
#

CREATE TABLE `testinfo` (
  `t_id` varchar(255) collate utf8_bin NOT NULL,
  `test_nub` varchar(255) collate utf8_bin default NULL,
  `test_path` varchar(255) collate utf8_bin default NULL,
  `testdate` datetime default NULL,
  `state` varchar(255) collate utf8_bin default NULL,
  `testcycle` varchar(255) collate utf8_bin default NULL,
  `sendate` datetime default NULL,
  `testres` varchar(255) collate utf8_bin default NULL,
  `retestcount` int(11) default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  `testcount` decimal(19,2) default NULL,
  `dequalified` varchar(255) collate utf8_bin default NULL,
  `resultinfo` varchar(255) collate utf8_bin default NULL,
  `gi_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`t_id`),
  KEY `FKBBAF1040DCC8A83D` (`gi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table workerinfo
#

CREATE TABLE `workerinfo` (
  `wk_id` varchar(255) collate utf8_bin NOT NULL,
  `wk_num` varchar(255) collate utf8_bin default NULL,
  `wk_name` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`wk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Table structure for table workshop
#

CREATE TABLE `workshop` (
  `id` varchar(255) collate utf8_bin NOT NULL,
  `name` varchar(255) collate utf8_bin default NULL,
  `num` varchar(255) collate utf8_bin default NULL,
  `remark` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
#  Foreign keys for table document
#

ALTER TABLE `document`
ADD CONSTRAINT `FK335CD11B702B337B` FOREIGN KEY (`pur_Id`) REFERENCES `purchaseinfo` (`pur_id`);

#
#  Foreign keys for table price
#

ALTER TABLE `price`
ADD CONSTRAINT `FK65FB149702B337B` FOREIGN KEY (`pur_Id`) REFERENCES `purchaseinfo` (`pur_id`),
  ADD CONSTRAINT `FK65FB149DCC21BC7` FOREIGN KEY (`gb_Id`) REFERENCES `goodsbase` (`gb_id`);

#
#  Foreign keys for table sys_role
#

ALTER TABLE `sys_role`
ADD CONSTRAINT `FK74A6B2A8D233DBC7` FOREIGN KEY (`s_dept_id`) REFERENCES `sys_dept` (`s_id`);

#
#  Foreign keys for table testinfo
#

ALTER TABLE `testinfo`
ADD CONSTRAINT `FKBBAF1040DCC8A83D` FOREIGN KEY (`gi_id`) REFERENCES `goodsinfo` (`g_id`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
