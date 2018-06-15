/*
SQLyog Ultimate v9.50 
MySQL - 5.0.37-community-nt : Database - haln
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`haln` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `haln`;

/*Table structure for table `address_master` */

DROP TABLE IF EXISTS `address_master`;

CREATE TABLE `address_master` (
  `id` int(11) NOT NULL auto_increment,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `district` varchar(45) NOT NULL,
  `pincode` varchar(45) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address_master` */

insert  into `address_master`(`id`,`street`,`city`,`district`,`pincode`,`user_id`) values (1,'ajay','ahmedabad','ahmedabad','380026',1),(3,'ajay','ahmedabad','ahmedabad','380026',3);

/*Table structure for table `identity_proof_master` */

DROP TABLE IF EXISTS `identity_proof_master`;

CREATE TABLE `identity_proof_master` (
  `id` int(11) NOT NULL,
  `identity_proof_name` varchar(45) default NULL,
  `identity_proof` blob NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `identity_proof_master` */

/*Table structure for table `nationality` */

DROP TABLE IF EXISTS `nationality`;

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL auto_increment,
  `nation_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nationality` */

/*Table structure for table `role_master` */

DROP TABLE IF EXISTS `role_master`;

CREATE TABLE `role_master` (
  `id` int(11) NOT NULL auto_increment,
  `role_name` varchar(45) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_master` */

/*Table structure for table `user_master` */

DROP TABLE IF EXISTS `user_master`;

CREATE TABLE `user_master` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `alternet_phone_number` varchar(10) default NULL,
  `email` varchar(45) default NULL,
  `social_status` varchar(45) NOT NULL,
  `id_number` varchar(45) default NULL,
  `age` int(100) default NULL,
  `salary` double default NULL,
  `password` varchar(500) default NULL,
  `full_name` varchar(45) default NULL,
  `roll_id` int(11) default NULL,
  `wants_to_work` varchar(100) default NULL,
  `prefered_time` varchar(45) default NULL,
  `identity_proof_id` int(11) default NULL,
  `nationality` varchar(45) NOT NULL,
  `provider_role` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_master` */

insert  into `user_master`(`id`,`first_name`,`last_name`,`middle_name`,`gender`,`phone_number`,`alternet_phone_number`,`email`,`social_status`,`id_number`,`age`,`salary`,`password`,`full_name`,`roll_id`,`wants_to_work`,`prefered_time`,`identity_proof_id`,`nationality`,`provider_role`) values (1,'Jasmin','Patel','Mahesh bhai','M','9033873012','','jasmin@gmail.com','married','500010019',25,25000,'123','',1,'','',NULL,'Indian',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
