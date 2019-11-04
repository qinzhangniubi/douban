/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.0.67-community-log : Database - douban
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`douban` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `douban`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` char(5) NOT NULL,
  `name` varchar(20) default NULL COMMENT '书名',
  `author` varchar(20) default NULL COMMENT '作者',
  `publisher` varchar(40) default NULL COMMENT '出品方',
  `price` double default NULL COMMENT '价格',
  `subhead` char(1) default NULL COMMENT '副标题',
  `press` char(1) default NULL COMMENT '出版社',
  `publish_date` date default NULL COMMENT '出版日期',
  `translator` char(1) default NULL COMMENT '译者',
  `pagination` int(11) default NULL COMMENT '页数',
  `binding` char(1) default NULL COMMENT '装帧',
  `isbn` char(1) default NULL COMMENT 'ISBN码',
  `grade` double default NULL COMMENT '豆瓣评分',
  `intro` longtext COMMENT '内容简介',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

/*Table structure for table `book_essay` */

DROP TABLE IF EXISTS `book_essay`;

CREATE TABLE `book_essay` (
  `book_id` char(1) NOT NULL,
  `user_id` char(1) default NULL,
  `user_name` char(1) default NULL,
  `discuss_date` date default NULL,
  `useful_count` int(11) default NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book_essay` */

/*Table structure for table `book_review` */

DROP TABLE IF EXISTS `book_review`;

CREATE TABLE `book_review` (
  `book_id` char(1) NOT NULL,
  `user_id` char(1) default NULL,
  `user_name` char(1) default NULL,
  `content` longtext,
  `useful_count` int(11) default NULL,
  `unuseful_count` int(11) default NULL,
  `reply_count` int(11) default NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book_review` */

/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `id` char(1) NOT NULL COMMENT '电影id',
  `name` char(1) NOT NULL COMMENT '电影名',
  `director` char(1) NOT NULL COMMENT '导演',
  `scriptwriter` char(1) NOT NULL COMMENT '编剧',
  `actor` char(1) NOT NULL COMMENT '主演',
  `genre` char(1) NOT NULL COMMENT '电影类型',
  `uk` char(1) default NULL COMMENT '制片国家地区',
  `language` char(1) default NULL COMMENT '语言',
  `release_date` date default NULL COMMENT '上映日期',
  `mins` char(1) default NULL COMMENT '片长',
  `alternate_name` char(1) default NULL COMMENT '又名',
  `imdb_url` char(1) default NULL COMMENT 'IMNb链接',
  `grade` float default NULL COMMENT '评分',
  `intro` longtext COMMENT '剧情简介',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `film` */

/*Table structure for table `film_review` */

DROP TABLE IF EXISTS `film_review`;

CREATE TABLE `film_review` (
  `movie_id` char(1) NOT NULL,
  `user_id` char(1) NOT NULL COMMENT '用户id',
  `user_name` char(1) NOT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `user_icon` char(1) default NULL COMMENT '评论者头像',
  `useful_count` int(11) default NULL COMMENT '点赞数',
  `unuseful_count` int(11) default NULL COMMENT '点踩数',
  `reply_count` int(11) default NULL COMMENT '回复数',
  PRIMARY KEY  (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `film_review` */

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `id` char(1) NOT NULL,
  `name` char(1) NOT NULL,
  `player` char(1) NOT NULL COMMENT '表演者',
  `genre` char(1) NOT NULL COMMENT '流派',
  `album_type` char(1) NOT NULL COMMENT '专辑类型',
  `medium` char(1) NOT NULL COMMENT '介质',
  `release_date` datetime NOT NULL COMMENT '发行日期',
  `publisher` char(1) NOT NULL COMMENT '出版者',
  `record_num` int(11) default NULL COMMENT '唱片数',
  `bar_code` char(1) default NULL COMMENT '条形码',
  `cover_url` char(1) NOT NULL COMMENT '封面图片',
  `intro` longtext COMMENT '简介',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `music` */

/*Table structure for table `music_essay` */

DROP TABLE IF EXISTS `music_essay`;

CREATE TABLE `music_essay` (
  `song_id` char(1) NOT NULL,
  `user_id` char(1) NOT NULL,
  `user_name` char(1) NOT NULL,
  `contents` char(1) NOT NULL COMMENT '短评内容',
  `discuss_date` date NOT NULL COMMENT '评论日期',
  `useful_count` int(11) default NULL COMMENT '点赞数统计',
  PRIMARY KEY  (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `music_essay` */

/*Table structure for table `music_review` */

DROP TABLE IF EXISTS `music_review`;

CREATE TABLE `music_review` (
  `song_id` char(1) NOT NULL,
  `user_id` char(1) NOT NULL,
  `user_name` char(1) NOT NULL,
  `discuss_date` date NOT NULL,
  `userful_count` int(11) default NULL,
  PRIMARY KEY  (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `music_review` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
