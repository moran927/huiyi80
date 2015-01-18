-- TuanPhp SQL Dump Program
-- 
-- DATE : 2014-10-05 15:37:04
-- Vol : 1
DROP TABLE IF EXISTS `ftxia_ad`;
CREATE TABLE `ftxia_ad` (
  `id` int(5) NOT NULL auto_increment,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL default '0',
  `add_time` int(10) NOT NULL default '0',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('7','4','image','首页左图1','http://bbs.138gzs.com/forum.php','1410/05/5430f225cfca5.jpg','','','首页右图','1412438400','1507651200','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('8','4','image','首页左图2','http://bbs.138gzs.com/forum.php','1410/05/5430f2ab330fe.jpg','','','首页左图2','1412438400','1414684800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('9','3','image','首页右图1','http://bbs.138gzs.com/forum.php','1410/05/5430f2c2d0052.jpg','','','首页右图3','1412438400','1539792000','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('10','3','image','首页右图2','http://bbs.138gzs.com/forum.php','1410/05/5430f30242f70.jpg','','','首页右图2','1412438400','1571241600','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('11','3','image','首页右图3','http://bbs.138gzs.com/forum.php','1410/05/5430f316257b2.jpg','','','首页右图3','1412438400','1570636800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('13','3','image','首页右图4','http://bbs.138gzs.com/','1410/05/5430f424457a7.jpg','','','首页右图4','1412438400','1508256000','0','0','255','1');
DROP TABLE IF EXISTS `ftxia_adboard`;
CREATE TABLE `ftxia_adboard` (
  `id` smallint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('1','大屏轮播','box-play','1000','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('2','首页专题','zhuanti','300','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('3','首页右图','img2','300','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('4','首页左图','img','300','300','','1');
DROP TABLE IF EXISTS `ftxia_admin`;
CREATE TABLE `ftxia_admin` (
  `id` mediumint(6) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) default NULL,
  `last_time` int(10) default '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_name` (`username`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_admin_auth`;
CREATE TABLE `ftxia_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','1');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','2');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','3');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','4');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','6');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','7');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','8');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','9');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','10');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','11');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','12');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','13');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','14');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','15');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','17');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','18');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','19');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','23');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','24');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','25');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','26');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','27');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','28');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','31');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','32');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','33');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','34');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','36');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','37');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','38');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','50');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','51');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','52');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','54');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','56');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','57');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','58');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','59');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','60');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','61');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','62');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','63');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','64');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','65');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','66');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','70');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','117');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','118');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','119');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','148');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','149');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','150');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','151');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','152');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','153');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','154');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','155');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','156');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','157');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','158');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','159');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','160');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','161');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','162');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','164');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','181');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','185');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','186');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','187');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','190');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','195');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','199');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','200');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','201');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','202');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','203');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','216');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','232');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','233');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','234');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','235');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','236');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','237');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','238');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','240');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','242');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','245');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','249');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','250');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','256');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','257');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','258');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','259');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','260');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','261');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','262');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','263');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','264');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','265');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','269');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','270');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','271');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','274');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','275');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','276');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','277');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','278');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','279');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','280');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','281');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','282');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','283');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','284');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','286');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','287');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','288');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','289');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','290');
INSERT INTO ftxia_admin_auth ( `role_id`, `menu_id` ) VALUES  ('1','291');
DROP TABLE IF EXISTS `ftxia_admin_role`;
CREATE TABLE `ftxia_admin_role` (
  `id` tinyint(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_admin_role ( `id`, `name`, `remark`, `ordid`, `status` ) VALUES  ('1','超级管理员','超级管理员','0','1');
DROP TABLE IF EXISTS `ftxia_article`;
CREATE TABLE `ftxia_article` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL default '0',
  `last_time` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_article ( `id`, `cate_id`, `title`, `author`, `info`, `hits`, `ordid`, `add_time`, `last_time`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('3','0','华美网络飞天侠淘宝客，欢迎您的使用','华美网络','<p>	华美网络飞天侠淘宝客是业界排前的淘宝客程序，目前已经更新多个版本4.2更新到6.0都已经给予客户免费升级了。并提供超大售后群，以及目前购买即送论坛vip。只要25元，低价分享结交更多好友哈，欢迎加入我们的超级群。</p><p>	论坛bbs.138gzs.com</p><p>	博客www.138gzs.com</p><p>	十佳QQ。422677261</p>','0','255','1410191425','0','1','','','');
DROP TABLE IF EXISTS `ftxia_article_cate`;
CREATE TABLE `ftxia_article_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL default '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL default '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_article_cate ( `id`, `name`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('1','前台公告','0','0','255','1','前台公告','前台公告','前台公告');
DROP TABLE IF EXISTS `ftxia_auto_user`;
CREATE TABLE `ftxia_auto_user` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_badword`;
CREATE TABLE `ftxia_badword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word_type` tinyint(1) unsigned NOT NULL default '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_help`;
CREATE TABLE `ftxia_help` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL,
  `info` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `last_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_help ( `id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('1','关于我们','<div>	<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">		　　秒杀网为华美飞天侠网络开发的一套秒杀程序。宗旨是方便网友们快速找到九块九包邮商品，而不必在淘宝网中到处搜索，我们不仅为您展示淘宝网上所有的九块九包邮的商品，同时也积极与淘宝卖家沟通合作，为网友们提供更多优质的九块九包邮商品。 网站的九块九包邮商品信息，每天更新。	</p>	<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">		　　本站所有的商品信息都来源于淘宝网，网友点击商品链接会跳转进入淘宝网，所有交易均在淘宝网进行，请放心使用本网站。	</p>	<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">		　　网站自发布以来，一直坚持用户至上原则，您的满意是我们前进的动力。飞天侠在此感谢一直以来支持本站的朋友。	</p></div><div></div>','','','','1412012484');
INSERT INTO ftxia_help ( `id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('2','商家合作','<h2 style=\"margin:0px;padding:10px 0px;font-size:14px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	一、招商报名规则：</h2><table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"700\" bgcolor=\"#cccccc\" style=\"margin:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;font-size:12px;line-height:30px;text-align:start;\" class=\"ke-zeroborder\">	<tbody style=\"margin:0px;padding:0px;\">		<tr bgcolor=\"#EEEEEE\" style=\"margin:0px;padding:0px;\">			<th style=\"margin:0px;padding:0px;\">				活动价格			</th>			<th style=\"margin:0px;padding:0px;\">				9.9包邮			</th>			<th style=\"margin:0px;padding:0px;\">				10-20元包邮			</th>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				活动价格			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				9.9包邮			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				10-20元包邮			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				C店要求			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				1红心以上			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				1钻以上			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				B店要求			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				近30日销量			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				动态评分			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				同行持平及以上			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				同行持平及以上			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				商品评价			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				不限			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				报名数量			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				&gt;200件			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				&gt;200件			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				历史价格			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				&gt;本活动价格			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				&gt;本活动价格			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				审核周期			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				3工作日			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				3工作日			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				打折方式			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				限时、VIP			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				限时、VIP			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				准时开始			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				定时上架			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				定时上架			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				重复周期			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				一件商品只上一次			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				一件商品只上一次			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				店内客服			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				必须在线			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				必须在线			</td>		</tr>		<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				优先通过			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				价值较大商品			</td>			<td style=\"margin:0px;padding:0px;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;text-indent:12px;\">				价值较大商品			</td>		</tr>	</tbody></table><h2 style=\"margin:0px;padding:10px 0px;font-size:14px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	二、活动流程</h2><p class=\"sphz_p\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	1、商家认真查看活动要求说明进行报名。<br style=\"margin:0px;padding:0px;\" />2、准确填写报名信息，提交报名，我们会在三天内进行审核，请关注自己的报名后台查看审核结果。。<br style=\"margin:0px;padding:0px;\" />3、审核通过的活动，我们会联系商家，沟通活动准备工作及上线排期等问题。</p><h2 style=\"margin:0px;padding:10px 0px;font-size:14px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	三、黑名单</h2><p class=\"sphz_p\" sphz_p_er=\"\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	1、拉黑原因（重要）&nbsp;<br style=\"margin:0px;padding:0px;\" />如果商家有以下行为，我们将终止与该商家合作，并将该商家列入黑名单永不合作。 我们真诚的提醒您，诚信合作，拉黑对您对我们都是损失！&nbsp;<span style=\"margin:0px;padding:0px;\">1.1、绕圈报名上活动，同款商品刻意联系不同专员审核者，发现即拉黑，活动随时终止；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.2、未按约定排期上架宝贝，修改宝贝价格、宝贝标题，活动时间以及添加我们的宣传图片；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.3、活动中单方面将宝贝下架；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.4、活动中单方面修改价格或包邮情况；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.5、活动中删除宝贝标题中的【MiaoshaNet独享】，或是删除我们的宣传图片或链接；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.6、活动期间同时参加其他促销活动；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.7、售卖假货或劣质产品等欺骗消费者的行为；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.8、未履行相应的售后服务，未能及时恰当处理用户投诉问题；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.9、活动期间悬挂过多其他活动宣传图片，恶意引导用户，造成用户误解的行为；&nbsp;<br style=\"margin:0px;padding:0px;\" />1.10、其他不诚信以及违规行为，最终解释权归本活动所有。&nbsp;</span>2、其他说明&nbsp;<span style=\"margin:0px;padding:0px;\">2.1、加入黑名单的商家，本活动永不合作，且无法删除此黑名单。&nbsp;<br style=\"margin:0px;padding:0px;\" />2.2、黑名单由招商专员或活动排查专员添加。</span> </p><h2 style=\"margin:0px;padding:10px 0px;font-size:14px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	四、联系方式</h2><p class=\"sphz_p\" sphz_p_linx=\"\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	<span class=\"sphz_span\" style=\"margin:0px;padding:0px;\"><strong style=\"margin:0px;padding:0px;\">商务合作QQ：</strong>117788858</span> </p>','','','','1362411174');
INSERT INTO ftxia_help ( `id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('3','联系我们','<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　如果您对我们的网站以及服务有任何疑问、意见或建议，请随时与我们在线客服取得联系！我们的客服人员会给您详尽细致的解答，您的意见或建议将立即得到反馈。华美飞天侠<a href=\"http://bbs.138gzs.com/\">http://bbs.138gzs.com/</a></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　工作时间：周一至周五（09：00 - 12：00　14：00 - 18：00）</p>','','','','1412012504');
INSERT INTO ftxia_help ( `id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('5','免责声明','<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　<b style=\"margin:0px;padding:0px;\">尊敬的用户：</b></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　您即将通过本页面确认使用秒杀网以外的第三方卖家为您提供的商品和相关服务需注意的相关事项。在接受本须知内容之前，请您仔细阅读本须知的 全部内容如果您对本须知的条款有疑问的，请通过秒杀网客服渠道进行询问，秒杀网将向您解释条款内容。如果您不同意本须知的任意内容，或者无法准确理解秒杀网对条款的解释，请不要进行后续操作。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　秒杀网使用须知（简称“本须知”）是秒杀网用户(以下简称“用户”或“您”)就使用基于在秒杀网的卖家（以下简称“卖家”）提供相关商品或服务所签署的有效文件。用户通过网络页面点击确认或以其他方式选择接受本须知，即表示您同意接受以下全部内容：</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　1．在您在本网站中与卖家产生的所有交易，均在淘宝网内进行，对于交易过程中的资金及个人信息的安全问题，均由淘宝网负责，本网站不承担任何交易过程产生的资金及个人信息安全问题的责任。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　2．卖家提供的产品和服务由卖家独立负责。在交易过程中遇到任何质量或者服务问题，均可以按照正常的淘宝维权流程进行维权，本网站不对卖家提供的商品或服务承担任何责任。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　3．为了保障您的权益，本网站将定期对卖家提供的商品宣传进行检查，但您理解检查不可能每时每刻都在进行。所以，请您仔细阅读卖家对商品的各种宣传资料，对其做出准确判断。本网站对卖家所涉及的商品和服务任何内容、宣传、和其他材料未作认证，也不对此负责或承担任何责任。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　4．网络欺诈往往会模仿、仿冒淘宝网登录页面的样式制作视觉感相似的页面诱导您输入账号和密码等信息，秒杀网提醒您防范网络风险，不要向任何人士（包括卖家）透露淘宝网账号、密码等相关信息。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　5．您理解并同意， 秒杀网仅提供淘宝网卖家的商品链接，对于卖家的商品服务的选择和交易的内容，应由您自行判断，且审慎交易。您需自行了解卖家提供的商品或服务的功能、收费标准、退款规则、服务有效期等情况并注意交易风险。秒杀网不对卖家和用户行为的合法性、有效性及卖家提供商品和服务的真实性、合法性和有效性作任何明示和默示的担保。秒杀网用户与卖家产生纠纷时将努力进行协调，卖家也应秉承为用户提供优质商品和服务的理念为用户提供便利，但秒杀网并不保证协调取得实际效果。</p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;\">	　　6．如您发现卖家侵犯您的合法权益的，或您不幸遭遇网络欺诈的，请及时联系淘宝网，本网站会协助您维护您的合法权益。</p>','','','','1362412687');
INSERT INTO ftxia_help ( `id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('6','常见问题','<ul>	<li id=\"7\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q1 为什么我一打开商品页面，就显示已下架？			</p></a> 		</div>		<div class=\"content\">			<div>				<p>					活动必须是真的。由于部分商品是限量销售，库存被拍光后，该商品就会显示已下架，越给力的商品下架越快，有的总量较少的给力商品甚至几秒内就会下架。但我们保证活动一定是真实的，每件商品都是折800的小编跟一家一家淘宝店辛苦谈来的，并且所有成交都是在淘宝平台上成交，任何人都做不了假。				</p>			</div>		</div>	</li>	<li id=\"8\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q2 说是限量200件促销，为什么宝贝成交记录里显示的不够200个成交？			</p></a> 		</div>		<div class=\"content\">			<p>				淘宝网宝贝页面上的成交记录里显示的是已付款的订单，如果有人拍下商品，可没有付款，成交记录里是没有记录的。但是只要拍下商品，无论是否付款，都会消耗库存（库存消耗光就会显示已下架），这种情况下卖家又不能主动关闭交易，会有被投诉的风险。所以如果选好商品，请大家拍下后尽快付款，以免浪费名额。			</p>		</div>	</li>	<li id=\"9\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q3 什么是VIP价？			</p></a> 		</div>		<div class=\"content\">			<div>				<p>					VIP价格是淘宝卖家设定的一种促销方式，只有淘宝VIP账户才能享受的优惠价，VIP账号登录后直接拍下即可。				</p>			</div>		</div>	</li>	<li id=\"10\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q4 如何查看是否是VIP？			</p></a> 		</div>		<div class=\"content\">			<div>				<p>					登陆淘宝，在淘宝会员（http://vip.taobao.com/growth_info.htm?spm=0.0.0.0.G5w8mH）中查看会员等级。V1-V6可以享受VIP价				</p>			</div>		</div>	</li>	<li id=\"11\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q5 如果还不是VIP，怎么买VIP价商品？			</p></a> 		</div>		<div class=\"content\">			<p>				如果不是淘宝VIP账号需要联系卖家按照卖家的指示进行购买才能享受VIP价。			</p>		</div>	</li>	<li id=\"12\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q6 为什么打开商品显示的价格与沐沐街写的价格不一样？			</p></a> 		</div>		<div class=\"content\">			<p>				很多卖家使用的是淘宝提供的VIP打折形式，只有淘宝VIP会员登录后才可以看到优惠价格。如果您是淘宝VIP会员，请直接登陆购买。如果是非VIP会员，请询问卖家是否可按优惠价格购买。是否是VIP会员购买商品，沐沐街会在商品标题描述中提示。			</p>		</div>	</li>	<li id=\"13\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q7 遇到超卖怎么办？			</p></a> 		</div>		<div class=\"content\">			<p>				<b>淘宝的官方解释</b>：当宝贝库存接近0时，如果多个买家同时付款购买此宝贝，将会出现“超卖”现象，这种现象是商家无法控制的，发生这种现象请买家申请退款即可。			</p>			<p>				<b>小编提醒</b>：由于发生这种情况的概率较低，如果在能承受的范围内一般卖家都会照常发货，但也不能保证超卖数量超出商家承受范围，遇到超卖情况请与卖家客服联系，如果不能发货请申请退款。			</p>		</div>	</li>	<li id=\"14\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q8 沐沐街上写的是包邮，但是到店铺购买的时候不包邮，为什么？			</p></a> 		</div>		<div class=\"content\">			<p>				淘宝商家分布全国各地，商家所在地区的邮费标准也不尽相同，很多商家发货到某些偏远地区邮费很贵，所以他们会需加邮费，但绝大部分地区都是包邮。			</p>		</div>	</li>	<li id=\"15\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q9 为什么宝贝的成交记录里的会员名都显示匿名购买？			</p></a> 		</div>		<div class=\"content\">			<p>				这个是淘宝系统设置的原因，如果商家在商品后台设置的是秒杀形式，当拍下商品后，买家的账号自动显示为匿名。			</p>		</div>	</li>	<li id=\"16\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q10 在消费过程中遇到以次充好、虚假活动等问题，能否到沐沐街投诉？			</p></a> 		</div>		<div class=\"content\">			<p>				我们挑选商家和商品的流程十分严格，从而最大程度上保证商品的高性价比。但由于是商家直接发货，所以如遇个别以次充好、虚假活动等情况，请及时投诉至我们的在线客服，我们会快速处理，对于劣质卖家永不合作，也诚邀您能关注和督促。			</p>		</div>	</li>	<li id=\"17\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q11 淘宝网页上显示“很抱歉，您查看的套餐不存在，可能已下架或者被转移。”字样，这种是否属于虚假活动？			</p></a> 		</div>		<div class=\"content\">			<p>				“搭配套餐”是淘宝店铺促销的一种工具，当其中一个商品库存被拍光后，套餐自动失效，所以当您看到以上文字提示，一般是其中某个商品已经售罄！			</p>		</div>	</li>	<li id=\"18\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q12 我们如何查看秒杀商品被谁买走了！秒杀活动是否真实？			</p></a> 		</div>		<div class=\"content\">			<p>				每个淘宝商品成交后都会有成交记录，在商品详情页内可以查询到，其中包括成交时间 、买家名称、成交价格、成交数量等信息。其中主要关注活动开始时段的成交记录。便可知晓活动是否真实。			</p>		</div>	</li>	<li id=\"19\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q13 如果与卖家发生纠纷怎么办？			</p></a> 		</div>		<div class=\"content\">			<p>				在购物过程中有任何纠纷您都可以登录淘宝维权平台（http://support.taobao.com/myservice/rights/right_main.htm）发起维权，也可以投诉至折800在线客服，我们会尽最大的努力协助你维护权益。			</p>		</div>	</li>	<li id=\"20\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q14 兑换之后可以修改地址、手机号码或者更换成其他商品吗?			</p></a> 		</div>		<div class=\"content\">			<p>				请您在兑换前仔细核实好所有的信息，订单生成后将无法修改和调换。			</p>		</div>	</li>	<li id=\"21\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q15 积分兑换的商品多长时间发货?			</p></a> 		</div>		<div class=\"content\">			<div>				<p>					积分兑换的商品，由于参与的用户非常多，工作人员会尽量在3个工作日内完成发货，请您耐心等待。发货后您可以在“个人中心-我的礼品”中查看相应的物流信息，当您发现您在积分活动中所得的商品超过5个工作日未发货时，请联系在线客服，客服会帮您紧急处理，为您及时发货或者退还相应的积分。				</p>			</div>		</div>	</li>	<li id=\"22\">		<div class=\"title\">			<a href=\"javascript:void(0);\"> 			<p>				Q16 哪些积分行为是违规的？会有什么处罚措施?			</p></a> 		</div>		<div class=\"content\">			<div>				<p>					请大家通过正规合理的渠道获取积分，当发现用户通过机器、外挂、系统漏洞等非正常途径获取积分的，相应积分会被自动收回，兑换的礼品不予发放，情节严重者会被直接封号处理。				</p>			</div>		</div>	</li></ul>','','','','1406442787');
DROP TABLE IF EXISTS `ftxia_ipban`;
CREATE TABLE `ftxia_ipban` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expires_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_items`;
CREATE TABLE `ftxia_items` (
  `id` int(11) NOT NULL auto_increment,
  `ordid` int(11) default '9999' COMMENT '自定义排序',
  `cate_id` int(11) default '0' COMMENT '属于分类',
  `zc_id` int(11) default '0' COMMENT '专场',
  `orig_id` smallint(6) default '1',
  `num_iid` varchar(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `nick` varchar(200) NOT NULL,
  `sellerId` varchar(11) default NULL,
  `uid` int(10) unsigned NOT NULL default '1',
  `uname` varchar(20) NOT NULL default 'admin',
  `pic_url` varchar(200) NOT NULL,
  `pic_urls` varchar(200) default NULL COMMENT '宽版图片',
  `price` decimal(11,2) NOT NULL,
  `click_url` text,
  `volume` int(11) NOT NULL,
  `commission` decimal(11,2) NOT NULL,
  `commission_rate` int(11) NOT NULL,
  `coupon_price` decimal(11,2) NOT NULL,
  `coupon_rate` int(11) NOT NULL,
  `coupon_start_time` int(11) default NULL,
  `coupon_end_time` int(11) default NULL,
  `pass` int(11) default '0' COMMENT '是否审核',
  `status` varchar(20) default 'underway' COMMENT '出售状态',
  `fail_reason` varchar(500) default NULL COMMENT '未通过理由',
  `shop_type` varchar(11) default NULL,
  `item_url` varchar(500) default NULL COMMENT '宝贝地址',
  `ems` int(11) default '0',
  `qq` varchar(20) default NULL,
  `mobile` varchar(13) default '',
  `realname` varchar(25) default NULL,
  `hits` int(11) default '0' COMMENT '点击量',
  `isshow` int(11) default '1',
  `likes` int(11) default '0',
  `inventory` int(11) default '0' COMMENT '库存',
  `seo_title` varchar(255) default NULL,
  `seo_keys` varchar(255) default NULL,
  `seo_desc` text,
  `add_time` int(11) default NULL,
  `last_rate_time` int(10) NOT NULL default '0',
  `is_collect_comments` int(1) default '0' COMMENT '是否采集了淘宝评论1表示已经采集了淘宝评论',
  `content` text character set utf8 collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `num_iid` (`num_iid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_items_cate`;
CREATE TABLE `ftxia_items_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `sort` varchar(50) NOT NULL default 'id  desc',
  `wait_time` varchar(50) NOT NULL default '0',
  `end_time` varchar(50) NOT NULL default '0',
  `shop_type` varchar(11) NOT NULL COMMENT 'B:商城C:集市',
  `mix_price` decimal(11,2) default NULL,
  `max_price` decimal(11,2) default NULL,
  `mix_volume` int(11) default NULL,
  `max_volume` int(11) default NULL,
  `ems` varchar(50) NOT NULL default '0',
  `thiscid` int(11) NOT NULL default '0' COMMENT '是否当前分类',
  `add_time` int(10) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('1','女装','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','1','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('2','男装','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','2','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('3','居家','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','7','1','淘宝网包包女装9.9包邮','淘宝网包包,9.9包邮','淘宝网包包9.9包邮');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('4','母婴','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','6','1','淘宝网配饰9.9包邮','淘宝网配饰,9.9包邮','淘宝网配饰9.9包邮');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('5','配饰','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','4','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('7','美食','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','5','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('8','数码','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','8','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('9','美妆','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','3','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('10','户外','','0','0','','coupon_start_time  desc','0','1','','0.00','0.00','0','0','0','0','0','9','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('11','预告','','0','0','','id  desc','1','0','','0.00','0.00','0','0','0','1','0','255','0','精选预告','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('15','九块九包邮','','0','0','','coupon_start_time  desc','2','1','','0.00','9.90','0','0','0','1','0','255','0','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('16','20元封顶','','0','0','','coupon_start_time  desc','2','1','','10.00','20.00','0','0','0','1','0','255','0','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('23','鞋子','','0','0','','id  desc','2','0','','0.00','0.00','0','0','0','0','0','255','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('24','包包','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('25','家电','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('26','值得买','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','0','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('27','女靴','','1','1|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('28','值得逛','','0','0','','id  desc','0','0','','0.00','9999.00','0','9999','0','0','0','255','0','值得逛','值得逛','值得逛');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('29','品牌团','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');
INSERT INTO ftxia_items_cate ( `id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('30','御泥坊旗舰店','','29','29|','','id  desc','0','0','','0.00','9999.00','0','9999','0','0','0','255','1','御泥坊旗舰店','御泥坊旗舰店','御泥坊旗舰店');
DROP TABLE IF EXISTS `ftxia_items_comment`;
CREATE TABLE `ftxia_items_comment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(10) unsigned NOT NULL,
  `rateid` varchar(30) default NULL COMMENT '淘宝评论唯一ID号',
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('1','2','219502515574','459183478','雪雪雪雪雪莲','此用户没有填写评论!','1406381230','1406381230','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('2','2','219465018475','421686379','天平926','给家人买的，款式可以，颜色也很正，拍了两条，一条合适，这条就是稍微有点偏小','1406381230','1406381230','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('3','8','219478100718','434768622','如果有如果x88','质量很好','1406395423','1406395423','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('4','8','219109737162','66405066','tb856415_55','这套衣服非常好,价格也实惠,穿上很合适,特别是裤子很舒服,好评!','1406395423','1406395423','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('5','6','219393519535','350187439','海阔天空19650105','帮朋友买的，质量没得说，好，就是邮政太慢12天才得','1406395430','1406395430','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('6','6','219015189035','0','眉不清目不秀2','还好，颜色全黑，有点单调&hellip;卖家送了挂件，但是搭配起来不好看，自己搭配了个，挺好&hellip;','1406395430','1406395430','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('7','6','217357890437','0','海豚芸丫头','衣服穿着很舒服，很仙的感觉，很划算','1406395430','1406395430','1');
INSERT INTO ftxia_items_comment ( `id`, `item_id`, `rateid`, `uid`, `uname`, `info`, `add_time`, `last_time`, `status` ) VALUES  ('8','6','217204907637','0','tb5577231','不错\\n','1406395430','1406395430','1');
DROP TABLE IF EXISTS `ftxia_items_like`;
CREATE TABLE `ftxia_items_like` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_items_orig`;
CREATE TABLE `ftxia_items_orig` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_items_orig ( `id`, `img`, `name`, `type`, `url`, `ordid` ) VALUES  ('1','50b2e721a6c1e_thumb.jpg','淘宝','C','taobao.com','0');
INSERT INTO ftxia_items_orig ( `id`, `img`, `name`, `type`, `url`, `ordid` ) VALUES  ('2','50b2e726d4ade_thumb.jpg','天猫','B','tmall.com','0');
DROP TABLE IF EXISTS `ftxia_items_site`;
CREATE TABLE `ftxia_items_site` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_link`;
CREATE TABLE `ftxia_link` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_link ( `id`, `name`, `img`, `url`, `ordid`, `status` ) VALUES  ('10','飞天侠淘宝客','','http://bbs.138gzs.com/','0','1');
INSERT INTO ftxia_link ( `id`, `name`, `img`, `url`, `ordid`, `status` ) VALUES  ('11','淘宝客源码','','http://www.138gzs.com/','0','1');
INSERT INTO ftxia_link ( `id`, `name`, `img`, `url`, `ordid`, `status` ) VALUES  ('12','秒杀网','','http://www.mswang.net/','0','1');
DROP TABLE IF EXISTS `ftxia_mail_queue`;
CREATE TABLE `ftxia_mail_queue` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `mail_to` varchar(120) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL default '1',
  `err_num` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL,
  `lock_expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_menu`;
CREATE TABLE `ftxia_menu` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL default '0',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `display` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('1','系统设置','0','setting','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('2','核心设置','1','setting','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('3','首页参数','310','setting','index','&type=site','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('4','邮件设置','148','setting','index','&type=mail','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('6','菜单管理','2','menu','index','','','0','7','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('7','新增','6','menu','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('8','编辑','6','menu','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('9','删除','6','menu','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('10','内容管理','0','operate','index','','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('11','广告管理','288','ad','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('12','广告管理','11','ad','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('13','广告位管理','11','adboard','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('14','友情链接','288','link','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('15','友情链接','14','link','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('17','新增','15','link','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('18','编辑','15','link','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('19','删除','15','link','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('23','新增','12','ad','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('24','编辑','12','ad','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('25','删除','12','ad','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('26','新增','13','adboard','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('27','编辑','13','adboard','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('28','删除','13','adboard','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('31','数据库管理','331','backup','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('32','数据备份','31','backup','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('33','数据恢复','31','backup','restore','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('34','清理缓存','2','cache','index','','','1','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('36','禁止 IP','117','ipban','index','','','1','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('37','新增','36','ipban','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('38','编辑','36','ipban','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('50','数据管理','0','content','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('51','商品管理','50','article','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('52','商品管理','51','items','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('54','编辑','52','article','edit','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('56','商品分类','292','items_cate','index','','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('57','新增','56','article_cate','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('58','编辑','56','article_cate','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('59','删除','56','article_cate','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('60','管理员管理','1','admin','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('61','管理员管理','60','admin','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('62','新增','61','admin','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('63','编辑','61','admin','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('64','删除','61','admin','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('65','分组管理','60','admin_role','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('66','新增','65','admin_role','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('70','用户管理','0','user','index','','','0','4','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('117','会员管理','70','user','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('118','编辑','149','user','edit','','','0','4','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('119','新增','149','user','add','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('148','站点设置','2','setting','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('149','会员管理','117','user','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('150','删除','149','user','delete','','','0','5','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('151','导航设置','288','nav','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('152','主导航','151','nav','index','&type=main','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('153','顶部导航','151','nav','index','&type=top','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('154','文章管理','10','article','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('155','文章管理','154','article','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('156','文章分类','154','article_cate','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('157','添加文章','155','article','add','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('158','编辑','155','article','edit','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('159','删除','155','article','delete','','','0','4','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('160','新增','156','article_cate','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('161','编辑','156','article_cate','编辑','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('162','删除','156','article_cate','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('164','商品采集','290','item_collect','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('181','删除','36','ipban','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('185','API接口','245','items_site','index','','','0','1','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('186','商品评论','294','items_comment','index','','','0','7','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('187','删除','186','items_comment','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('190','删除','52','items','delete','','','0','4','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('195','登陆接口','245','oauth','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('198','新增','196','message','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('199','商品来源','288','items_orig','index','','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('200','新增','199','items_orig','add','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('201','编辑','199','items_orig','edit','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('202','删除','199','items_orig','delete','','','0','0','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('203','商品审核','293','items','check','','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('232','站内信管理','70','message','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('233','系统通知','232','msg','index','&type=1','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('234','用户反馈','232','msg','index','&type=2','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('235','通知模版','2','message_tpl','index','&type=msg','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('236','添加模版','235','message_tpl','add','','','0','7','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('237','编辑','235','message_tpl','edit','','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('238','删除','235','message_tpl','delete','','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('242','积分记录','269','score','logs','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('245','系统接口','1','apis','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('247','应用中心','246','plugin','index','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('248','已安装应用','246','plugin','list','','','0','0','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('249','添加商品','51','items','add','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('256','积分礼品','70','score_item','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('257','积分商品','256','score_item','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('258','商品分类','256','score_item_cate','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('259','新增','258','score_item_cate','add','','','0','1','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('260','编辑','258','score_item_cate','edit','','','0','2','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('261','删除','258','score_item_cate','delete','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('262','订单管理','256','score_order','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('263','添加商品','257','score_item','add','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('264','编辑','257','score_item','edit','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('265','删除','257','score_item','edit','','','0','4','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('269','积分设置','117','score','setting','','','0','4','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('270','邮件模板','235','message_tpl','index','&type=mail','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('271','短消息模板','235','message_tpl','index','&type=msg','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('275','站点设置','148','setting','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('276','积分设置','269','score','setting','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('277','商品管理','52','items','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('278','文章管理','155','article','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('279','会员管理','149','user','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('280','积分商品','257','score_item','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('281','评论采集','291','cmt_taobao','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('282','SEO设置','2','seo','url','','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('283','UR静态化','282','seo','url','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('284','页面SEO','282','seo','page','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('286','注册登陆','148','setting','user','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('287','插件管理','0','plugins','index','','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('288','插件管理','287','plugins','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('290','采集数据','0','collect','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('291','评论采集','290','collcomment','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('292','商品分类','50','fenlei','index','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('293','商品审核','50','shenhe','index','','','0','4','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('294','商品评论','50','comment','index','','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('295','站内帮助','10','help','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('296','帮助文件','295','help','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('297','帮助文件','296','help','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('298','添加帮助','296','help','add','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('299','采集器管理','164','robots','index','','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('300','添加采集器','299','robots','add','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('301','添加采集器','164','robots','add_do','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('302','清空数据','51','items','clear','','','0','4','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('304','单个商品采集','281','cmt_taobao','item','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('305','过期商品','51','items','outtime','','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('306','其他设置','148','setting','index','&type=other','','0','6','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('307','一键延时','51','items','key_addtime','','','0','5','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('308','预告采集','290','advanced','index','','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('309','预告采集','308','advanced','index','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('310','数据设置','50','setting','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('311','值得买','310','setting','index','&type=zhi','','0','3','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('312','还会喜欢','310','setting','index','&type=orlike','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('313','关键字屏蔽','291','pjword','index','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('314','模板管理','2','template','index','','','0','8','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('315','举报管理','51','report','index','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('319','审核未通过','293','items','notcheck','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('323','商品分类','249','items_cate','ajax_getchilds','','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('324','一键获取商品','249','items','ajaxgetid','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('325','一键采集','299','robots','collect','&amp;auto=1','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('326','U站采集','164','robots','item_check','','','0','3','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('327','采集设置','2','setting','index','&amp;type=robot','','0','2','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('328','升级数据库','31','backup','upsql','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('329','U站采集','288','robots_uz','index','','','0','7','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('331','工具','0','plugin','index','','','0','7','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('332','插件管理','288','plugin','plugin_list','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('333','正在使用','287','plugin','index','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('338','友情链接','333','plugin','Link','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('339','模板样式','148','setting','index','&type=template','','0','7','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('340','性能优化','2','setting','cache','','','0','255','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('341','在线客服','148','setting','index','&type=kefu','','0','8','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('343','妈妈搜索','51','mama','index','','','0','1','1');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('344','妈妈添加','51','mama','ajaxadd','','','0','255','0');
INSERT INTO ftxia_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('346','短消息模板','345','message_tpl','index','&type=msg','','0','255','1');
DROP TABLE IF EXISTS `ftxia_message`;
CREATE TABLE `ftxia_message` (
  `id` int(10) NOT NULL auto_increment,
  `ftid` int(10) unsigned NOT NULL,
  `from_id` int(10) NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `to_id` int(10) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `add_time` int(10) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_message_tpl`;
CREATE TABLE `ftxia_message_tpl` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `is_sys` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL COMMENT '别名',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_message_tpl ( `id`, `type`, `is_sys`, `name`, `alias`, `content` ) VALUES  ('1','msg','1','登录','login','<p>	欢迎</p><p>	&nbsp; 华美网络飞天侠秒杀网欢迎您</p><p>	<br /></p>');
INSERT INTO ftxia_message_tpl ( `id`, `type`, `is_sys`, `name`, `alias`, `content` ) VALUES  ('3','mail','1','找回密码','findpwd','<div style=\"border-bottom:#ff5500 3px solid;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;width:602px;font:12px/20px \'lucida Grande\', Verdana;white-space:normal;orphans:2;letter-spacing:normal;height:auto;color:#000000;overflow:hidden;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">	<br class=\"Apple-interchange-newline\" />	<div style=\"margin-top:20px;width:185px;float:right;height:20px;\">	</div></div><div style=\"padding-bottom:25px;widows:2;text-transform:none;background-color:#f6f6f6;text-indent:0px;padding-left:30px;width:542px;padding-right:30px;font:12px/20px \'lucida Grande\', Verdana;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;clear:both;word-spacing:0px;padding-top:25px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">	<p style=\"line-height:23px;font-size:14px;font-weight:bold;\">		<span style=\"color:#ff0000;font-size:14px;font-weight:bold;margin-right:5px;\">Hi！{$username}</span>请您尽快点击进行密码重置	</p>	<div style=\"border-bottom:#dedede 1px solid;border-left:#dedede 1px solid;padding-bottom:15px;line-height:25px;background-color:#ffffff;margin-top:12px;padding-left:25px;width:492px;padding-right:25px;font-size:14px;border-top:#dedede 1px solid;border-right:#dedede 1px solid;padding-top:25px;\">		我们收到了您发出的密码重置请求。请您点击该链接重置您的密码：<a style=\"outline-style:none;outline-color:invert;outline-width:medium;color:#1e5494;cursor:pointer;text-decoration:underline;\" href=\"{$reset_url}\" target=\"_blank\">{$reset_url}</a><span class=\"Apple-converted-space\">&nbsp;</span><br /><span style=\"color:#999999;\">(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏，本链接只能当天内有效)</span><br />上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录了。	</div>	<p style=\"border-bottom:#e3e3e3 1px solid;line-height:30px;height:30px;color:#666666;\">		此邮件为系统邮件，系统不接受回信，请勿直接回复	</p></div><div style=\"text-align:center;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/30px \'lucida Grande\', Verdana;white-space:normal;orphans:2;margin-bottom:30px;letter-spacing:normal;height:30px;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">	Copyright (c) 华美飞天侠网络 2012-2014, All Rights Reserved</div>');
DROP TABLE IF EXISTS `ftxia_msg`;
CREATE TABLE `ftxia_msg` (
  `id` int(11) NOT NULL auto_increment,
  `fuid` int(11) default NULL,
  `fname` varchar(51) default NULL,
  `tuid` int(11) default '0',
  `tname` varchar(50) default 'SYSTEM',
  `info` text,
  `status` tinyint(1) default '0',
  `add_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_nav`;
CREATE TABLE `ftxia_nav` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL default '1',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('1','main','兑换中心','gift','','0','9','sys','1');
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('2','main','九块九包邮','jiu','/index.php?m=jiu','0','2','','1');
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('3','main','十九块九','shijiu','/index.php?m=shijiu','0','3','','1');
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('5','main','值得逛','guang','/?m=guang','0','5','','1');
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('7','main','值得买','zdm','/?m=zdm','0','4','','1');
INSERT INTO ftxia_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('8','main','品牌团','brand','index.php?m=brand','0','1','','1');
DROP TABLE IF EXISTS `ftxia_oauth`;
CREATE TABLE `ftxia_oauth` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_online`;
CREATE TABLE `ftxia_online` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `account` varchar(20) NOT NULL default 'Guest',
  `username` varchar(20) NOT NULL default '游客',
  `lasttime` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_online ( `id`, `uid`, `account`, `username`, `lasttime`, `ip` ) VALUES  ('1','3','华美网络','华美网络','1410193603','127.0.0.1');
DROP TABLE IF EXISTS `ftxia_pjword`;
CREATE TABLE `ftxia_pjword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('1','好评','1366777286');
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('2','好评！','1366777296');
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('3','测试','1367808159');
DROP TABLE IF EXISTS `ftxia_plugin`;
CREATE TABLE `ftxia_plugin` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '主键',
  `name` char(50) NOT NULL default '' COMMENT '插件名称',
  `add_time` date default NULL COMMENT '安装时间',
  `version` varchar(100) NOT NULL default '' COMMENT '版本号',
  `team` varchar(100) NOT NULL default '' COMMENT '团队名称',
  `app` char(50) NOT NULL default '' COMMENT '应用名',
  `email` varchar(100) NOT NULL default '' COMMENT '电子邮箱',
  `web` varchar(255) NOT NULL default '' COMMENT '官方网址',
  `pubdate` date default NULL COMMENT '发布时间',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_plugin ( `id`, `name`, `add_time`, `version`, `team`, `app`, `email`, `web`, `pubdate` ) VALUES  ('1','友情链接','0000-00-00','1.0','飞天侠','Link','baish.cn@163.com','bbs.8mob.com','2014-06-10');
DROP TABLE IF EXISTS `ftxia_report`;
CREATE TABLE `ftxia_report` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `reason` int(2) default '7',
  `comment` varchar(200) default NULL,
  `email` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_robots`;
CREATE TABLE `ftxia_robots` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `keyword` varchar(200) default NULL,
  `cid` int(11) NOT NULL default '16',
  `cate_id` int(11) default '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL default 'all',
  `start_coupon_rate` int(11) NOT NULL default '100',
  `end_coupon_rate` int(11) NOT NULL default '10000',
  `start_commissionRate` int(11) NOT NULL default '1000',
  `end_commissionRate` int(11) NOT NULL default '9000',
  `start_credit` varchar(50) NOT NULL default '1heart',
  `end_credit` varchar(50) NOT NULL default '5goldencrown',
  `start_price` decimal(8,2) default '0.00',
  `end_price` decimal(8,2) default '999.00',
  `start_volume` int(11) NOT NULL default '0',
  `end_volume` int(11) NOT NULL default '999999',
  `ems` int(11) default '0' COMMENT '采集包邮',
  `recid` int(11) default '1' COMMENT '是否更新分类',
  `page` int(11) NOT NULL default '100' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` int(11) default '1',
  `sort` varchar(50) NOT NULL default 'volume|desc',
  `last_page` int(11) default '0' COMMENT '上次采集页数',
  `last_time` int(11) default NULL,
  `http_mode` int(11) default '0' COMMENT '采集模式',
  `tb_cid` int(11) default NULL COMMENT '淘宝网分类ID',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('1','女装-销量','女装','16','1','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','2','1407757955','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('2','男装-销量','男装','50344007','2','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080077','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('3','居家-销量','居家','21','3','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080109','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('4','母婴-销量','母婴','50067081','4','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080310','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('5','服饰配件-销量','服饰','50010404','5','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080339','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('6','零食-销量','零食','50002766','7','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080380','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('7','数码-销量','数码','50008090','8','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','volume|desc','0','1403080403','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('8','美妆-销量','美妆','50010788','9','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','1','1','10','255','1','normal|desc','4','1407733513','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('9','值得买','口红','0','26','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','0','1','10','255','1','normal|desc','8','1407746912','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('10','值得逛','女包','0','28','all','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','0','1','5','255','1','normal|desc','0','1410194836','1','0');
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('11','御泥坊旗舰店','御泥坊','0','30','B','1000','9000','1000','10000','1heart','5goldencrown','0.00','99999.00','0','99999','0','1','5','255','1','normal|desc','2','1410194954','1','0');
DROP TABLE IF EXISTS `ftxia_robots_uz`;
CREATE TABLE `ftxia_robots_uz` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `uzhan_id` int(11) default NULL,
  `uzhanCate` int(11) default NULL,
  `cate_id` int(11) default '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL default 'all',
  `ems` int(11) default '0' COMMENT '采集包邮',
  `page` int(11) NOT NULL default '2' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` int(11) default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('1','折-女装','1','1','1','all','0','2','25','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('2','折-化妆品','1','9','9','all','0','2','19','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('3','折-数码家电','1','8','8','all','0','2','2','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('4','折-美食','1','7','7','all','0','2','7','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('5','折-配饰','1','6','5','all','0','2','3','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('6','折-鞋包','1','5','5','all','0','2','8','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('7','折-母婴','1','4','4','all','0','3','10','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('8','折-居家','1','3','3','all','0','3','9','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('9','折-男装','1','2','2','all','0','2','20','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('10','折-文体','1','10','10','all','0','2','18','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('11','九-服饰','2','11','1','all','0','2','24','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('12','九-美妆','2','12','9','all','0','2','22','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('13','九-鞋包','2','13','5','all','0','2','17','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('14','九-美食','2','14','7','all','0','2','16','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('15','九-居家','2','15','3','all','0','2','5','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('16','九-母婴','2','16','4','all','0','2','4','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('17','九-文体','2','17','10','all','0','2','12','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('18','卷-女装','3','18','1','all','0','2','26','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('19','卷-男装','3','19','2','all','0','2','23','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('20','卷-母婴','3','20','4','all','0','2','6','0');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('21','卷-鞋包','3','21','5','all','0','2','21','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('22','卷-美妆','3','22','9','all','0','2','15','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('23','卷-居家','3','23','3','all','0','2','14','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('24','卷-美食','3','24','7','all','0','2','13','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('25','卷-数码家电','3','25','8','all','0','2','11','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('26','卷-文体','3','26','10','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('27','步街网-服饰','5','37','1','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('28','步街网-鞋包','5','38','5','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('29','步街网-美妆','5','39','9','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('30','步街网-母婴','5','40','4','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('31','步街网-食品','5','41','7','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('32','步街网-居家','5','42','3','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('33','步街网-配饰','5','43','5','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('34','步街网-数码','5','44','8','all','0','1','255','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('35','折官网-男装','6','47','2','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('36','折官网-女装','6','46','1','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('37','折官网-化妆品','6','54','9','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('38','折官网-数码家电','6','53','8','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('39','折官网-美食','6','52','7','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('40','折官网-配饰','6','51','5','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('41','折官网-鞋包','6','50','5','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('42','折官网-母婴','6','49','4','all','0','1','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('43','折官网-居家','6','48','3','all','0','2','1','1');
INSERT INTO ftxia_robots_uz ( `id`, `name`, `uzhan_id`, `uzhanCate`, `cate_id`, `shop_type`, `ems`, `page`, `ordid`, `status` ) VALUES  ('44','折官网-文体','6','55','10','all','0','2','1','1');
DROP TABLE IF EXISTS `ftxia_score_item`;
CREATE TABLE `ftxia_score_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `img` varchar(255) NOT NULL,
  `score` int(10) unsigned NOT NULL default '0',
  `stock` mediumint(8) unsigned NOT NULL default '0',
  `user_num` mediumint(8) unsigned NOT NULL default '1',
  `buy_num` mediumint(8) NOT NULL default '0',
  `num_iid` varchar(11) default NULL,
  `price` decimal(11,2) default NULL,
  `coupon_price` decimal(11,2) default NULL,
  `desc` text NOT NULL,
  `info` text,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `start_time` int(10) default NULL COMMENT '兑换开始时间',
  `end_time` int(10) default NULL COMMENT '兑换结束时间',
  `add_time` int(10) default NULL COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_score_item ( `id`, `cate_id`, `title`, `img`, `score`, `stock`, `user_num`, `buy_num`, `num_iid`, `price`, `coupon_price`, `desc`, `info`, `ordid`, `start_time`, `end_time`, `add_time` ) VALUES  ('1','1','Apple/苹果 iPhone 5s 16GB','1406/18/53a112efee26b_s.jpg','99999','1','1','0','35141633438','7999.00','4648.00','','<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/f/b/5330f55fec947_760x793.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/7/8/5330f5602b3c5_760x880.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/b/2/5330f5621cce9_744x900.jpg\" style=\"max-width:730px;float:none;width:756px;height:911px;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/1/5/5330f564245dd_729x900.jpg\" style=\"max-width:730px;float:none;width:759px;height:925px;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/7/6/5330f56447ffb_760x419.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/2/1/5330f564723a1_760x610.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/1/a/5330f5649b3e0_760x565.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/2/1/5330f564dabc7_760x892.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<br /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/c/2/5330f7c8c7762_760x605.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/8/1/5330f7c909c5e_760x726.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/9/a/5330f56587f32_760x645.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/c/3/5330f565acd4e_760x645.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/d/3/5330f565da77d_760x511.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/7/d/5330f56609f89_760x427.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/0/5/5330f56643196_760x748.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/8/e/5330f5667568f_760x827.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/0/9/5330f566ab971_760x868.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140325/7/2/5330f56700338_760x613.jpg\" style=\"max-width:730px;float:none;\" /></p>','0','1403065020','1497759420','0');
INSERT INTO ftxia_score_item ( `id`, `cate_id`, `title`, `img`, `score`, `stock`, `user_num`, `buy_num`, `num_iid`, `price`, `coupon_price`, `desc`, `info`, `ordid`, `start_time`, `end_time`, `add_time` ) VALUES  ('2','1','Apple/苹果 iPad mini 16GB WIFI','1406/18/53a1145ac119c_s.jpg','88888','1','1','0','21464172635','1999.00','2699.00','','<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/d/8/53300254ec993_725x643.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/a/5/5330025532510_725x711.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/a/9/5330025553876_725x538.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/d/1/533002558b2e9_725x899.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/3/c/53300255c642b_725x727.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/6/1/53300256036ee_725x700.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/9/f/5330025639e27_725x543.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/f/a/53300256543e3_725x350.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/2/e/533002567f360_725x633.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/2/6/533004a3cb3f7_725x628.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/0/4/533004a3ee6d6_725x710.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<br /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/f/7/533002572ee1c_725x896.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/3/1/533002575c88e_725x815.jpg\" style=\"max-width:730px;float:none;\" /></p><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;white-space:normal;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif, 宋体;background-color:#FFFFFF;\">	<img src=\"http://s1.juancdn.com/bao/140324/8/a/53300257979c1_725x716.jpg\" style=\"max-width:730px;float:none;\" /></p>','2','1403065380','1497759780','0');
DROP TABLE IF EXISTS `ftxia_score_item_cate`;
CREATE TABLE `ftxia_score_item_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_score_item_cate ( `id`, `name`, `status`, `ordid` ) VALUES  ('1','兑换商品','1','1');
INSERT INTO ftxia_score_item_cate ( `id`, `name`, `status`, `ordid` ) VALUES  ('2','手机话费','1','2');
INSERT INTO ftxia_score_item_cate ( `id`, `name`, `status`, `ordid` ) VALUES  ('3','支付宝红包','1','3');
INSERT INTO ftxia_score_item_cate ( `id`, `name`, `status`, `ordid` ) VALUES  ('4','兑换Q币','1','4');
DROP TABLE IF EXISTS `ftxia_score_log`;
CREATE TABLE `ftxia_score_log` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('1','1','admin','sign','5','1403065736');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('2','2','yufu','register','50','1406359590');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('3','2','yufu','login','1','1406359590');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('4','2','yufu','sign','5','1406381637');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('5','3','华美网络','register','50','1410191585');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('6','3','华美网络','login','1','1410191585');
INSERT INTO ftxia_score_log ( `id`, `uid`, `uname`, `action`, `score`, `add_time` ) VALUES  ('7','3','华美网络','login','1','1410193603');
DROP TABLE IF EXISTS `ftxia_score_order`;
CREATE TABLE `ftxia_score_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_name` varchar(120) default NULL,
  `item_num` mediumint(8) NOT NULL,
  `iid` varchar(20) default '',
  `realname` varchar(25) NOT NULL default '',
  `mobile` varchar(13) NOT NULL default '',
  `qq` varchar(15) default NULL,
  `address` text NOT NULL,
  `email` varchar(50) default NULL,
  `order_score` int(10) NOT NULL,
  `ems_name` varchar(20) default NULL,
  `ems_id` varchar(20) default NULL,
  `status` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_setting`;
CREATE TABLE `ftxia_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statics_url','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('mail_server','a:6:{s:4:\"mode\";s:4:\"mail\";s:4:\"host\";s:12:\"smtp.163.com\";s:4:\"port\";s:2:\"25\";s:4:\"from\";s:0:\"\";s:13:\"auth_username\";s:5:\"admin\";s:13:\"auth_password\";s:5:\"admin\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_check','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('score_rule','a:12:{s:8:\"register\";s:2:\"50\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:10:\"login_nums\";s:1:\"1\";s:4:\"sign\";s:1:\"5\";s:9:\"sign_nums\";s:1:\"1\";s:8:\"sign_add\";s:1:\"5\";s:8:\"sign_day\";s:1:\"8\";s:11:\"union_visit\";s:2:\"20\";s:16:\"union_visit_nums\";s:2:\"10\";s:9:\"union_reg\";s:3:\"100\";s:14:\"union_reg_nums\";s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_code','default','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_config','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('avatar_size','24,32,48,64,100,200','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_exts','jpg,gif,png,jpeg,swf','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_size','2048','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('itemcate_img','a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_protocol','加入和使用秒杀网网站表明您已经阅读并同意本使用条款，您的会员活动会遵从本使用条款。本协议由您与华美飞天侠网络共同缔结，本协议具有合同效力。　　本协议中协议双方合称协议方，飞天侠网络在协议中亦称为“秒杀网”。域名 www.138gzs.com。　　一、协议内容及签署　　1、本协议内容包括协议正文及所有秒杀网已经发布的或将来可能发布的各类规则，包括但不仅限于网站公告及帮助在内的官方声明。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何秒杀网及其关联公司提供的服务均受本协议约束。　　2、您应当在使用秒杀网服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向秒杀网咨询。但无论您事实上是否在使用秒杀网服务之前认真阅读了本协议内容，只要您使用秒杀网服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得秒杀网对您问询的解答等理由，主张本协议无效，或要求撤销本协议。　　3、秒杀网有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用秒杀网特殊服务时，您和秒杀网应遵守秒杀网随时公布的与该服务相关的指引、公告以及规则。前述所有的指引、公告以及规则，均构成本使用协议的一部分。如您不同意相关变更，应当立即停止使用秒杀网服务。您继续使用秒杀网服务的，即表示您接受经修订的协议和规则。　　4、您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且秒杀网有权注销（永久冻结）您的秒杀网账户，并向您及您的监护人索偿。　　5、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用秒杀网服务。您一旦使用秒杀网服务，即视为您已了解并完全同意本使用协议各项内容，包括秒杀网对使用协议随时所做的任何修改，并成为秒杀网用户（以下简称“用户”）。　　二、秒杀网服务使用规范　　1、遵守法律　　您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的帐号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。　　同时如果秒杀网有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，秒杀网可在任何时候不经任何事先通知终止向您提供服务。　　2、您的注册义务　　为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或秒杀网认为不适合在秒杀网上展示的资料；或者秒杀网有理由怀疑您的资料属于程序或恶意操作，秒杀网有权暂停或终止您的帐号，并拒绝您于现在和未来使用本服务之全部或任何部分。　　秒杀网无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。　　3、用户帐号、密码及安全　　完成本服务的注册程序并成功注册之后，您可使用您的账号和密码，登录到您在秒杀网的帐户（下称“帐号”）。保护您的帐号安全，是您的责任。　　您应对所有使用您的密码及帐号的活动负完全的责任。您同意：　　1）您的秒杀网帐号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知秒杀网；　　2）如果您未保管好自己的帐号和密码，因此而产生的任何损失或损害，秒杀网无法也不承担任何责任；　　3）每个用户都要对其帐号中的所有行为和事件负全责。如果您未保管好自己的帐号和密码而对您、秒杀网或第三方造成了损害，您将负全部责任。　　4、秒杀网隐私权政策　　您提供的登记资料及秒杀网保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。　　5、提供者之责任　　根据有关法律法规，秒杀网在此郑重提醒您注意，任何经由本服务而发布、上传的文字、资讯、资料、照片、图形、视讯、信息或其它资料（以下简称“内容 ”），无论是公开还是私下传送，均由内容提供者承担责任。秒杀网仅为用户提供内容存储空间，无法控制经由本服务传送之内容，因此不保证内容的正确性、完整性或品质。您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容。在任何情况下，秒杀网均不为任何内容负责，但秒杀网有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。　　6、用户行为　　用户同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶　　1）用户不得发布或以其它方式传送含有下列内容之一的信息：　　* 反对宪法所确定的基本原则的；　　* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；　　* 损害国家荣誉和利益的；　　* 煽动民族仇恨、民族歧视、破坏民族团结的；　　* 破坏国家宗教政策，宣扬邪教和封建迷信的；　　* 散布谣言，扰乱社会秩序，破坏社会稳定的；　　* 散布淫秽、色情、赌博、暴力、凶杀、恐怖、吸毒或者教唆犯罪的；　　* 侮辱或者诽谤他人，侵害他人合法权利的；　　* 含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；　　* 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；　　* 含有秒杀网认为不适合在秒杀网展示的内容；　　2）用户不得出现恶意注册恶意点击等行为。严禁通过购买产品恶意取消订单等非法手段来提高个人收入，一经发现，秒杀网有权取消会员的资格，并追回已经支付的全部佣金，同时该用户必须承担由此给秒杀网带来的所有损失。秒杀网严禁各种针对秒杀网活动的作弊行为。对于查实的作弊行为，我们将收回该账号全部的邀请奖励、取消邀请资格，给予一定处罚，并列入秒杀网黑名单账户。作弊行为包括但不限于：使用相同的电脑、相同的IP地址在同一天内注册多个账号，以骗取奖励邀请的行为、以注册送钱或注册送奖励等利益诱导来骗取注册的行为。　　3）用户不得以任何方式危害他人的合法权益；冒充其他任何人或机构，或以虚假不实的方式陈述或谎称与任何人或机构有关发布或以其它方式传送相关内容；　　4）将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以发布、发送电子邮件或以其它方式传送；　　5）将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以发布或以其它方式传送；　　6）将任何广告信函、促销资料、“垃圾邮件”、““滥发信件”、“连锁信件”、“直销”或其它任何形式的劝诱资料加以发布、发送或以其它方式传送；　　7）将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序（trojan horses）、蠕虫（worms）、定时炸弹、删除蝇（cancelbots）（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以发布、发送或以其它方式传送；　　8）干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；　　9）跟踪、人肉搜索或以其它方式骚扰他人；　　10）故意或非故意地违反任何适用的当地、国家法律，以及任何具有法律效力的规则；　　11）未经合法授权而截获、篡改、收集、储存或删除他人个人信息、站内邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。　　您已认可秒杀网未对用户的使用行为进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于秒杀网。您同意秒杀网依其自行之考虑，删除可经由本服务提供之违反本条款的或其它引起秒杀网反感的任何内容。　　您了解并同意，秒杀网依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：　　a）遵守法律程序；　　b）执行本使用协议；　　c）回应任何第三人提出的权利主张；　　d）保护秒杀网、其用户及公众之权利、财产或个人安全；　　e）其它秒杀网认为有必要的情况。　　7、国际使用之特别警告　　您已了解国际互联网的无国界性，同意遵守当地所有关于网上行为及内容之法律法规。您特别同意遵守有关从中国或您所在国家或地区输出信息之传输的所有适用法律法规。　　8、在秒杀网发布的公开信息　　1）在本使用协议中，“本服务公开使用区域”系指一般公众可以使用的区域；　　2）用户在秒杀网上传或发布的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益，用户同意授予秒杀网所有上述内容在全球范围内的免费、不可撤销的、永久的、可再许或可转让的独家使用权许可，据该许可秒杀网将有权以展示、推广及其他不为法律所禁止的方式使用前述内容。　　9、赔偿　　由于您通过本服务提供、发布或传送之内容、您与本服务连线、您违反本使用协议、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿秒杀网及其关联企业、职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害，并承担由此引发的全部法律责任。　　10、关于使用及储存之一般措施　　您承认关于本服务的使用秒杀网有权制订基本措施及限制，包含但不限于本服务将保留所发布内容或其它发布内容之最长期间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务发布或传送之任何信息、通讯资料和其它内容，如被删除或未予储存，您同意秒杀网毋须承担任何责任。您也同意，秒杀网有权依其自行之考虑，不论通知与否，随时变更这些一般措施及限制。　　三、责任范围和责任限制　　1、秒杀网负责按\"现状\"和\"可得到\"的状态向您提供服务。但对服务不作任何明示或暗示的保证，包括但不限于秒杀网服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，秒杀网也不对服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。　　2、与广告商及其他第三方进行交易　　您通过本网站与合作者或间接合作者及其他第三方进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其它任何相关条款、条件、保证或声明，完全为您与合作者或间接合作者及其他第三方之间之行为。您因前述任何交易或前述合作者或间接合作者及其他第三方而遭受的任何性质的损失或损害，秒杀网对此不负任何法律责任。　　您了解并同意秒杀网上的信息是用户自行发布，且可能存在风险和瑕疵。秒杀网仅作为交易地点。秒杀网仅作为您获取物品或服务信息、物色交易对象、就物品和/或服务的交易进行协商及开展交易的场所，但秒杀网无法控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易各方履行其在贸易协议中各项义务的能力。您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。　　3、除非法律法规明确要求，或出现以下情况，否则，秒杀网没有义务对所有用户的注册数据、商品（服务）信息、交易行为以及与交易有关的其它事项进行事先审查：　　a) 秒杀网有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。　　b) 秒杀网有合理的理由认为用户在返利网的行为涉嫌违法或不当。　　4、秒杀网及其关联公司有权受理您与其他会员因交易产生的争议，并有权单方判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您未在限期内执行处理决定的，则秒杀网及其关联公司有权利（但无义务）直接使用您秒杀网账户内的款项。应及时弥补秒杀网及其关联公司的损失，否则秒杀网及其关联公司有权直接抵减您在其它合同项下的权益，并有权继续追偿。　　您理解并同意，秒杀网及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，秒杀网及其关联公司对争议的调处完全是基于您的委托，秒杀网及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。　　5、您了解并同意，秒杀网不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿 (无论秒杀网是否已被告知该损害赔偿的可能性) ：　　a) 使用或未能使用秒杀网服务。　　b) 第三方未经批准的使用您的账户或更改您的数据；您的传输或数据遭到未获授权的存取或变更。　　c) 通过秒杀网服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。　　d) 您对秒杀网服务的误解，与本服务相关的其它事宜，但本使用协议有明确规定的除外。　　e) 任何第三方在本服务中所作之声明或行为； 任何非因秒杀网的原因而引起的与秒杀网服务有关的其它损失。　　6、不论在何种情况下，秒杀网均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。　　7、秒杀网之专属权利　　您了解并同意，本服务及本服务所使用之相关软件（以下简称“软件”）含有受到相关知识产权及其它法律保护之专有保密资料。您也了解并同意，经由本服务合作者或间接合作者及其他第三方或向您呈现之赞助广告或信息所包含之内容，亦受到著作权、商标权、服务商标、专利权或其它专属权利之法律保护。未经秒杀网或合作者或间接合作者及其他第三方明示授权，您不得修改、出租、出借、出售、散布本服务或软件之任何部份或全部，或据以制作衍生著作，使用擅自修改后的软件，包括但不限于为了未经授权而使用本服务之目的。秒杀网仅授予您个人、不可移转及非专属之使用权，使您得于单机计算机使用其软件之目的码，但您不得（并不得允许任何第三人）复制、修改、创作衍生著作、进行还原工程、反向组译，或以其它方式发现原始码，或出售、转让、再授权或提供软件设定担保，或以其它方式移转软件之任何权利。您同意将通过由秒杀网所提供的界面而非任何其它途径使用本服务。　　8、用户专属权利　　秒杀网尊重他人知识产权，呼吁用户也要同样尊重知识产权。如果您对他人的知识产权或其他人身权利造成了侵害，秒杀网将依国家法律法规的规定，或在适当的情形下，将依其服务条款或其相关规范性规定，删除特定内容或以至终止您对账户的使用。　　四、协议终止　　1、您了解并同意秒杀网有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部秒杀网平台服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。您同意秒杀网基于其自行之考虑，因任何理由，包含但不限于缺乏使用，或秒杀网认为您已经违反本使用协议的文字及精神，终止您的帐号或本服务之使用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本使用协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，秒杀网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您的帐号及相关信息和文件被关闭或删除，秒杀网对您或任何第三人均不承担任何责任。　　2、出现以下情况时，秒杀网有权直接以注销账户的方式终止本协议:　　a) 秒杀网终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为秒杀网用户的；　　b) 您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或秒杀网以其它联系方式通知您更改电子邮件信息,而您在秒杀网通知后三个工作日内仍未更改为有效的电子邮箱的。　　c) 您注册信息中的主要内容不真实或不准确或不及时或不完整。　　d) 本协议（含规则及上述其他）变更时，您明示并通知秒杀网不愿接受新的服务协议的；　　e) 其它秒杀网认为应当终止服务的情况。　　3、您有权向秒杀网要求注销您的账户，经秒杀网审核同意的，秒杀网注销（永久冻结）您的账户，届时，您与秒杀网基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，秒杀网没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。　　4、您了解并同意您与秒杀网的合同关系终止后，秒杀网仍享有下列权利　　a) 继续保存您的注册信息及您使用秒杀网服务期间的所有交易信息。　　b) 您在使用秒杀网服务期间存在违法行为或违反本协议和/或规则的行为的，秒杀网仍可依据本协议向您主张权利。　　5、秒杀网中止或终止向您提供服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保秒杀网免于因此产生任何损失或承担任何费用：　　a) 您在服务中止或终止之前已经上传至秒杀网的物品尚未交易的，秒杀网有权在中止或终止服务的同时删除此项物品的相关信息；　　b) 您在服务中止或终止之前已经与其他会员达成买卖合同，但合同尚未实际履行的，秒杀网有权删除该买卖合同及其交易物品的相关信息；　　c) 您在服务中止或终止之前已经与其他会员达成买卖合同且已部分履行的，秒杀网可以不删除该项交易，但秒杀网有权在中止或终止服务的同时将相关情形通知您的交易对方。　　五、一般条款　　1）本使用协议、网站公告、帮助中心和免责声明构成您与秒杀网之全部协议，并规范您对于本服务之使用行为。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件；　　2）本使用协议及您与秒杀网之关系，均受到中华人民共和国法律管辖。本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。您与秒杀网就本服务、本使用协议或其它有关事项发生的争议，应首先友好协商解决，协商不成时应提请中国国际经济贸易仲裁委员会仲裁，仲裁裁决是终局性的，对双方均有约束力；　　3）秒杀网未行使或执行本使用协议任何权利或规定，不构成对前述权利或权利之放弃；　　4）倘本使用协议之任何规定因与中华人民共和国法律抵触而无效，您依然同意应依照法律，努力使该规定所反映之当事人意向具备效力，且本使用协议其它规定仍应具有完整的效力及效果；　　5) 只要您登录了秒杀网，就代表您任何以上所有协议。　　6）秒杀网对本使用协议享有最终解释权。华美飞天侠由华美网络独家升级更新。bbs.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('user_intro_default','这个家伙太懒，什么都木留下~','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('score_item_img','a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('seo_config','a:7:{s:5:\"index\";a:3:{s:5:\"title\";s:76:\"秒杀网,十九块九包邮,全场19.9元包邮,淘宝九块邮独享专区\";s:8:\"keywords\";s:75:\"秒杀网,19.9包邮,十九块九包邮,十九块邮独享,淘宝九块邮,\";s:11:\"description\";s:191:\"十九块邮官方网站-19.9元包邮专区，汇集全网十九块九包邮商品，每天10点更新，全场19.9元包邮准时开抢，超值十九块邮，独享十九块邮小幸福。\";}s:4:\"cate\";a:3:{s:5:\"title\";s:40:\"{cate_name} - {seo_title} - {site_title}\";s:8:\"keywords\";s:30:\"{seo_keywords} {site_keywords}\";s:11:\"description\";s:36:\"{seo_description} {site_description}\";}s:4:\"item\";a:3:{s:5:\"title\";s:75:\"{title} 原价{price}元 现价{coupon_price}元包邮抢购 - {site_title}\";s:8:\"keywords\";s:6:\"{tags}\";s:11:\"description\";s:7:\"{intro}\";}s:4:\"gift\";a:3:{s:5:\"title\";s:41:\"{cate_name} 兑换中心 — {site_title}\";s:8:\"keywords\";s:50:\"0元兑换,卷豆,免费兑换,九块邮,秒杀网\";s:11:\"description\";s:140:\"秒杀网， 0元兑换，服饰、鞋包、美妆、家居……相兑什么就兑什么，更多超值兑换，让网购生活更精彩。\";}s:9:\"gift_item\";a:3:{s:5:\"title\";s:42:\" {title} -【0元兑换】— {site_title}\";s:8:\"keywords\";s:24:\"【0元兑换】 {title}\";s:11:\"description\";s:24:\"【0元兑换】 {title}\";}s:12:\"article_cate\";a:3:{s:5:\"title\";s:26:\" {cate_name}- {site_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:7:\"article\";a:3:{s:5:\"title\";s:36:\" {title}- {seo_title} - {site_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_img','a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_simg','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_bimg','a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('attach_path','data/upload/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_closed_reason','<h1>暂时关闭注册</h1>','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_page_size','68','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_sort','coupon_start_time  desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_price','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_volume','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_page_size','5','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_sort','volume desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_max_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_max_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_page_size','8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_sort','volume desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_mix_price','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_max_price','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_mix_volume','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_max_volume','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_ems','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_end_time','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('orlike_time','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_end_time','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('zhi_time','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_not_text','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_cids','a:9:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_admin','admin','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_wc','w1005','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_hit','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_hit','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_page_size','68','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_sort','coupon_start_time  desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_price','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_volume','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_page_size','68','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_not_text','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_cids','a:9:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_price','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_volume','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_closed_reason','<h1>暂时关闭注册</h1>','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('user_intro_default','这个家伙太懒，什么都木留下~','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_value','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_name','华美','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_value','422677261','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_page_size','68','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_not_text','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_cids','a:9:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_sort','coupon_start_time  desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_price','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_volume','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_width','w980','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cache','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachepath','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_cachetime','3600','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_hit','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_not_text','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_cids','a:9:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_sort','coupon_start_time  desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_price','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_max_volume','9999','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_not_text','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_cids','a:9:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:2:\"10\";}','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_sort','coupon_start_time  desc','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_shop_type','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_price','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_mix_volume','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('wait_time','2','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('end_time','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('index_ems','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('weibo_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tencent_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('reg_closed_reason','<h1>暂时关闭注册</h1>','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('user_intro_default','这个家伙太懒，什么都木留下~','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_open','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_color','white','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_telephone','400-004-2113','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_one_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_two_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_three_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_four_su','qq','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_five_su','ww','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_flogo','/data/upload/site/540c7f924eed4.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('headerm_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_logo','/data/upload/site/53e8510018051.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_navlogo','/data/upload/site/53e85104506b0.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_weixin','/data/upload/site/53e88fa0c9fff.jpg','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_browser','/data/upload/site/53a13fc3812b6.png','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('headerm_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('coupon_quan','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('click_ai','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('desc_url','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('item_add_time','72','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('sina_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qzone_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('tenxun_url','http://www.138gzs.com/','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('headerm_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','0','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('robots_key','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_url','http://www.138gzs.com','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','秒杀网','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('qq','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('code','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('kefu_html','http://amos.im.alisoft.com/msg.aw?v=2&uid=秒杀招商&site=cntaobao&s=2&charset=utf-8','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('header_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('taojindian_html','','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO ftxia_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
DROP TABLE IF EXISTS `ftxia_sign`;
CREATE TABLE `ftxia_sign` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `last_date` int(10) NOT NULL default '0',
  `sign_count` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_sign_log`;
CREATE TABLE `ftxia_sign_log` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `sign_date` int(10) NOT NULL default '0',
  `score` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_tejia_cate`;
CREATE TABLE `ftxia_tejia_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `add_time` int(10) default NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_union`;
CREATE TABLE `ftxia_union` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `score` int(10) NOT NULL default '0',
  `ouid` int(10) default NULL,
  `ousername` varchar(20) default NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_user`;
CREATE TABLE `ftxia_user` (
  `id` int(10) NOT NULL auto_increment,
  `uc_uid` int(10) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL default '0',
  `password` varchar(32) NOT NULL default '0',
  `email` varchar(50) default NULL,
  `gender` tinyint(1) default '0' COMMENT '1男，0女',
  `intro` varchar(500) NOT NULL,
  `byear` smallint(4) unsigned NOT NULL,
  `bmonth` tinyint(2) unsigned NOT NULL,
  `bday` tinyint(2) unsigned NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `score` int(10) unsigned NOT NULL default '0',
  `score_level` int(10) unsigned NOT NULL default '0',
  `qq` varchar(20) default NULL,
  `address` varchar(255) default NULL,
  `realname` varchar(25) default NULL,
  `mobile` varchar(13) default NULL,
  `reg_ip` varchar(15) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_time` int(10) unsigned NOT NULL default '0',
  `sign_time` int(10) default '0',
  `last_ip` varchar(15) default '0',
  `login_count` int(10) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status` ) VALUES  ('3','0','华美网络','9cbf8a4dcb8e30682b927f352d6559a0','422677261@qq.com','0','','0','0','0','','','52','52','','','','','127.0.0.1','1410191585','1410193603','0','127.0.0.1','3','1');
DROP TABLE IF EXISTS `ftxia_user_bind`;
CREATE TABLE `ftxia_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_user_msgtip`;
CREATE TABLE `ftxia_user_msgtip` (
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0' COMMENT '1:关注，2:提到，3:私信，4:通知',
  `num` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`type`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_user_msgtip ( `uid`, `type`, `num` ) VALUES  ('2','3','5');
DROP TABLE IF EXISTS `ftxia_user_stat`;
CREATE TABLE `ftxia_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `uid_type` (`uid`,`action`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('1','login','2','1403065727');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('2','register','1','1406359590');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('2','login','2','1406381604');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('3','register','1','1410191585');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('3','login','1','1410193603');
