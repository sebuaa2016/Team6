# Host: localhost  (Version 5.7.17-log)
# Date: 2017-01-02 19:37:55
# Generator: MySQL-Front 5.4  (Build 4.90) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "出版社"
#

DROP TABLE IF EXISTS `出版社`;
CREATE TABLE `出版社` (
  `出版社名` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`出版社名`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "出版社"
#


#
# Structure for table "创作"
#

DROP TABLE IF EXISTS `创作`;
CREATE TABLE `创作` (
  `书号` int(10) NOT NULL DEFAULT '0',
  `身份证号` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`书号`,`身份证号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "创作"
#


#
# Structure for table "管理"
#

DROP TABLE IF EXISTS `管理`;
CREATE TABLE `管理` (
  `书号` int(10) NOT NULL DEFAULT '0',
  `管理员编号` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`管理员编号`,`书号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "管理"
#


#
# Structure for table "管理员"
#

DROP TABLE IF EXISTS `管理员`;
CREATE TABLE `管理员` (
  `管理员编号` int(10) NOT NULL AUTO_INCREMENT,
  `管理员姓名` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`管理员编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "管理员"
#


#
# Structure for table "借书人"
#

DROP TABLE IF EXISTS `借书人`;
CREATE TABLE `借书人` (
  `借书证号` int(10) NOT NULL AUTO_INCREMENT,
  `借书人名` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`借书证号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "借书人"
#


#
# Structure for table "经销商"
#

DROP TABLE IF EXISTS `经销商`;
CREATE TABLE `经销商` (
  `经销商名` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`经销商名`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "经销商"
#


#
# Structure for table "图书"
#

DROP TABLE IF EXISTS `图书`;
CREATE TABLE `图书` (
  `书号` int(10) NOT NULL AUTO_INCREMENT,
  `书名` varchar(20) DEFAULT NULL,
  `类型` varchar(20) DEFAULT NULL,
  `出版时间` int(8) DEFAULT NULL,
  `出版社名` varchar(20) DEFAULT NULL,
  `经销商名` varchar(20) DEFAULT NULL,
  `借书人号` int(10) DEFAULT NULL,
  PRIMARY KEY (`书号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "图书"
#


#
# Structure for table "作者"
#

DROP TABLE IF EXISTS `作者`;
CREATE TABLE `作者` (
  `身份证号` int(1) NOT NULL AUTO_INCREMENT,
  `作者姓名` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`身份证号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "作者"
#

