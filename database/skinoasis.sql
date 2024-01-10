/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - skinoasis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skinoasis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `skinoasis`;

/*Table structure for table `blog_categories` */

DROP TABLE IF EXISTS `blog_categories`;

CREATE TABLE `blog_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_categories` */

/*Table structure for table `blog_localizations` */

DROP TABLE IF EXISTS `blog_localizations`;

CREATE TABLE `blog_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_localizations` */

/*Table structure for table `blog_tags` */

DROP TABLE IF EXISTS `blog_tags`;

CREATE TABLE `blog_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_tags` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'youtube' COMMENT 'youtube / vimeo / ...',
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

/*Table structure for table `brand_localizations` */

DROP TABLE IF EXISTS `brand_localizations`;

CREATE TABLE `brand_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brand_localizations` */

insert  into `brand_localizations`(`id`,`brand_id`,`lang_key`,`name`,`brand_image`,`meta_title`,`meta_image`,`meta_description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'id','SkinOasis','7','SkinOasis',NULL,'SkinOasis Adalah','2024-01-04 03:49:23','2024-01-04 03:49:23',NULL);

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sales_amount` double NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brands` */

insert  into `brands`(`id`,`name`,`slug`,`brand_image`,`total_sales_amount`,`is_active`,`meta_title`,`meta_image`,`meta_description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'SkinOasis','skinoasis-0yEms','7',0,1,'SkinOasis',NULL,'SkinOasis Adalah','2024-01-04 03:49:23','2024-01-04 03:49:23',NULL);

/*Table structure for table `campaign_products` */

DROP TABLE IF EXISTS `campaign_products`;

CREATE TABLE `campaign_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `campaign_products` */

/*Table structure for table `campaigns` */

DROP TABLE IF EXISTS `campaigns`;

CREATE TABLE `campaigns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `campaigns` */

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `guest_user_id` bigint(20) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `product_variation_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `carts` */

insert  into `carts`(`id`,`user_id`,`guest_user_id`,`location_id`,`product_variation_id`,`qty`,`created_at`,`updated_at`,`deleted_at`) values 
(2,1,NULL,1,1,1,'2024-01-05 02:13:24','2024-01-05 02:13:24',NULL);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL COMMENT 'level of the category',
  `sorting_order_level` int(11) NOT NULL DEFAULT 0,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `total_sale_count` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`slug`,`parent_id`,`level`,`sorting_order_level`,`thumbnail_image`,`icon`,`is_featured`,`is_top`,`total_sale_count`,`meta_title`,`meta_image`,`meta_description`,`created_at`,`updated_at`) values 
(1,'Tonic','tonic-yjsda',0,0,1,'10',NULL,0,0,1,'SkinOasis',NULL,'SkinOasis Adalah','2024-01-04 03:49:58','2024-01-05 03:31:44');

/*Table structure for table `category_brands` */

DROP TABLE IF EXISTS `category_brands`;

CREATE TABLE `category_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category_brands` */

insert  into `category_brands`(`id`,`category_id`,`brand_id`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,NULL,NULL,NULL);

/*Table structure for table `category_localizations` */

DROP TABLE IF EXISTS `category_localizations`;

CREATE TABLE `category_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category_localizations` */

insert  into `category_localizations`(`id`,`category_id`,`lang_key`,`name`,`thumbnail_image`,`meta_title`,`meta_image`,`meta_description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'id','Tonic','10','SkinOasis',NULL,'SkinOasis Adalah','2024-01-04 03:49:58','2024-01-05 03:31:44',NULL);

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cities` */

insert  into `cities`(`id`,`state_id`,`name`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(48357,4122,'Jakarta Timur',1,'2024-01-04 04:04:27','2024-01-04 04:04:27',NULL),
(48358,4122,'Jakarta Selatan',1,'2024-01-04 04:04:36','2024-01-04 04:04:36',NULL),
(48359,4122,'Jakarta Barat',1,'2024-01-04 04:04:46','2024-01-04 04:04:46',NULL),
(48360,4122,'Jakarta Utara',1,'2024-01-04 04:04:57','2024-01-04 04:04:57',NULL),
(48361,4122,'Jakarta Pusat',1,'2024-01-04 04:05:04','2024-01-04 04:05:04',NULL),
(48362,4122,'Kepulauan Seribu',1,'2024-01-04 04:05:17','2024-01-04 04:05:17',NULL);

/*Table structure for table `contact_us_messages` */

DROP TABLE IF EXISTS `contact_us_messages`;

CREATE TABLE `contact_us_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `support_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'delivery_problem | customer_service | other_service',
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contact_us_messages` */

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`code`,`name`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(102,'ID','Indonesia',1,'2021-04-06 13:06:30','2024-01-04 04:03:58',NULL);

/*Table structure for table `coupon_usages` */

DROP TABLE IF EXISTS `coupon_usages`;

CREATE TABLE `coupon_usages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `usage_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `coupon_usages` */

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'flat/percentage',
  `discount_value` double NOT NULL DEFAULT 0,
  `is_free_shipping` tinyint(4) NOT NULL DEFAULT 0,
  `start_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_spend` double NOT NULL DEFAULT 0,
  `max_discount_amount` double NOT NULL DEFAULT 0,
  `total_usage_limit` int(11) NOT NULL DEFAULT 1,
  `total_usage_count` int(11) NOT NULL DEFAULT 0,
  `customer_usage_limit` int(11) NOT NULL DEFAULT 1,
  `product_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Coupon will be applicable only for the products selected',
  `category_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Coupon will be applicable only for   categories selected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `coupons` */

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alignment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for left, 1 for right',
  `rate` double NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`code`,`name`,`symbol`,`alignment`,`rate`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'idr','Rupiah','Rp',0,1,1,'2024-01-04 04:15:52','2024-01-04 04:15:52',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `languages` */

insert  into `languages`(`id`,`name`,`flag`,`code`,`is_rtl`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'English','en','en',0,1,NULL,NULL,NULL),
(2,'Indonesia','id','id',0,1,'2024-01-04 03:46:26','2024-01-04 03:46:26',NULL);

/*Table structure for table `localizations` */

DROP TABLE IF EXISTS `localizations`;

CREATE TABLE `localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `localizations` */

insert  into `localizations`(`id`,`lang_key`,`t_key`,`t_value`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'en','home','Home','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(2,'en','follow_on','Follow on','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(3,'en','our_top_categories','Our Top Categories','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(4,'en','our_featured_products','Our Featured Products','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(5,'en','top_trending_products','Top Trending Products','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(6,'en','all_products','All Products','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(7,'en','weekly_best_deals','Weekly Best Deals','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(8,'en','days','Days','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(9,'en','hours','Hours','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(10,'en','min','Min','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(11,'en','sec','Sec','2024-01-04 03:37:40','2024-01-04 03:37:40',NULL),
(12,'en','what_our_clients_say','What Our Clients Say','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(13,'en','new_products','New Products','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(14,'en','view_more','View More','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(15,'en','best_selling','Best Selling','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(16,'en','browse_recent_post','Browse Recent Post','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(17,'en','learn_more_about_our_recent_exclusive_news_updates__articles','Learn More About Our Recent Exclusive News, Updates & Articles','2024-01-04 03:37:41','2024-01-04 03:37:41',NULL),
(18,'en','buy_now','Buy Now','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(19,'en','add_to_cart','Add to Cart','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(20,'en','out_of_stock','Out of Stock','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(21,'en','adding','Adding..','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(22,'en','please_choose_all_the_available_options','Please choose all the available options','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(23,'en','apply_coupon','Apply Coupon','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(24,'en','please_wait','Please Wait','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(25,'en','dark','Dark','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(26,'en','light','Light','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(27,'en','categories','Categories','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(28,'en','products','Products','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(29,'en','campaigns','Campaigns','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(30,'en','coupons','Coupons','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(31,'en','pages','Pages','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(32,'en','blogs','Blogs','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(33,'en','about_us','About Us','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(34,'en','contact_us','Contact Us','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(35,'en','search_products','Search products','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(36,'en','sign_in','Sign In','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(37,'en','subtotal','Subtotal','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(38,'en','view_cart','View Cart','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(39,'en','checkout','Checkout','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(40,'en','phone__telephone','Phone & Telephone','2024-01-04 03:38:19','2024-01-04 03:38:19',NULL),
(41,'en','subscribe_to_the_us','Subscribe to the us','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(42,'en','new_arrivals','New Arrivals','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(43,'en','_other_information','& Other Information.','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(44,'en','enter_email_address','Enter Email Address','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(45,'en','subscribe_now','Subscribe Now','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(46,'en','category','Category','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(47,'en','quick_links','Quick Links','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(48,'en','customer_pages','Customer Pages','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(49,'en','your_account','Your Account','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(50,'en','your_orders','Your Orders','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(51,'en','your_wishlist','Your Wishlist','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(52,'en','address_book','Address Book','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(53,'en','update_profile','Update Profile','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(54,'en','contact_info','Contact Info','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(55,'en','search','Search','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(56,'en','account','Account','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(57,'en','please_select_shipping_address','Please select shipping address','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(58,'en','please_select_logistic','Please select logistic','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(59,'en','please_select_billing_address','Please select billing address','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(60,'en','please_login_first','Please login first','2024-01-04 03:38:20','2024-01-04 03:38:20',NULL),
(61,'en','login','Login','2024-01-04 03:38:32','2024-01-04 03:38:32',NULL),
(62,'en','hey_there','Hey there!','2024-01-04 03:38:32','2024-01-04 03:38:32',NULL),
(63,'en','welcome_back_to_grostore','Welcome back to Grostore.','2024-01-04 03:38:32','2024-01-04 03:38:32',NULL),
(64,'en','email','Email','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(65,'en','enter_your_email','Enter your email','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(66,'en','login_with_phone','Login with phone?','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(67,'en','phone','Phone','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(68,'en','login_with_email','Login with email?','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(69,'en','password','Password','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(70,'en','remember_me','Remember me','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(71,'en','forgot_password','Forgot Password','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(72,'en','dont_have_an_account','Don\'t have an Account?','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(73,'en','sign_up','Sign Up','2024-01-04 03:38:33','2024-01-04 03:38:33',NULL),
(74,'en','google_recaptcha_validation_error_seems_like_you_are_not_a_human','Google recaptcha validation error, seems like you are not a human.','2024-01-04 03:39:11','2024-01-04 03:39:11',NULL),
(75,'en','last_7_days','Last 7 days','2024-01-04 03:39:11','2024-01-04 03:39:11',NULL),
(76,'en','dashboard','Dashboard','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(77,'en','admin_dashboard','Admin Dashboard','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(78,'en','manage_sales','Manage Sales','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(79,'en','add_product','Add Product','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(80,'en','total_earning','Total Earning','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(81,'en','last_30_days','Last 30 days','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(82,'en','last_3_months','Last 3 months','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(83,'en','top_5_category_sales','Top 5 Category Sales','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(84,'en','last_30_days_orders','Last 30 Days Orders','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(85,'en','sales_this_months','Sales This Months','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(86,'en','top_selling_products','Top Selling Products','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(87,'en','we_have_listed_0_total_products','We have listed 0 total products.','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(88,'en','total_orders','Total Orders','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(89,'en','order_pending','Order Pending','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(90,'en','order_processing','Order Processing','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(91,'en','total_delivered','Total Delivered','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(92,'en','recent_orders','Recent Orders','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(93,'en','your_10_most_recent_orders','Your 10 Most Recent Orders','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(94,'en','view_all','View All','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(95,'en','order_code','Order Code','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(96,'en','customer','Customer','2024-01-04 03:39:12','2024-01-04 03:39:12',NULL),
(97,'en','placed_on','Placed On','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(98,'en','items','Items','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(99,'en','payment_status','Payment Status','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(100,'en','delivery_status','Delivery Status','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(101,'en','delivery_type','Delivery Type','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(102,'en','action','Action','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(103,'en','picked_up_orders','Picked Up Orders','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(104,'en','cancelled_orders','Cancelled Orders','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(105,'en','out_for_delivery','Out For Delivery','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(106,'en','paid_orders','Paid Orders','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(107,'en','unpaid_orders','Unpaid Orders','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(108,'en','todays_earning','Today\'s Earning','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(109,'en','todays_pending_earning','Today\'s Pending Earning','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(110,'en','this_year_earning','This Year Earning','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(111,'en','total_product_sale','Total Product Sale','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(112,'en','todays_product_sale','Today\'s Product Sale','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(113,'en','this_months_product_sale','This Month\'s Product Sale','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(114,'en','this_years_product_sale','This Year\'s Product Sale','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(115,'en','total_customers','Total Customers','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(116,'en','total_subscribers','Total Subscribers','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(117,'en','total_categories','Total Categories','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(118,'en','total_brands','Total Brands','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(119,'en','earning','Earning','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(120,'en','super_admin','Super Admin','2024-01-04 03:39:13','2024-01-04 03:39:13',NULL),
(121,'en','all_categories','All Categories','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(122,'en','all_variations','All Variations','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(123,'en','all_brands','All Brands','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(124,'en','all_units','All Units','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(125,'en','all_taxes','All Taxes','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(126,'en','pos_system','Pos System','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(127,'en','orders','Orders','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(128,'en','stocks','Stocks','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(129,'en','add_stock','Add Stock','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(130,'en','all_locations','All Locations','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(131,'en','refunds','Refunds','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(132,'en','refund_configurations','Refund Configurations','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(133,'en','refund_requests','Refund Requests','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(134,'en','approved_refunds','Approved Refunds','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(135,'en','rejected_refunds','Rejected Refunds','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(136,'en','rewards__wallet','Rewards & Wallet','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(137,'en','reward_configurations','Reward Configurations','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(138,'en','set_reward_points','Set Reward Points','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(139,'en','wallet_configurations','Wallet Configurations','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(140,'en','users','Users','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(141,'en','customers','Customers','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(142,'en','employee_staffs','Employee Staffs','2024-01-04 03:39:14','2024-01-04 03:39:14',NULL),
(143,'en','contents','Contents','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(144,'en','tags','Tags','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(145,'en','all_blogs','All Blogs','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(146,'en','media_manager','Media Manager','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(147,'en','promotions','Promotions','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(148,'en','newsletters','Newsletters','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(149,'en','bulk_emails','Bulk Emails','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(150,'en','subscribers','Subscribers','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(151,'en','fulfillment','Fulfillment','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(152,'en','logistics','Logistics','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(153,'en','shipping_zones','Shipping Zones','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(154,'en','reports','Reports','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(155,'en','orders_report','Orders Report','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(156,'en','product_sales','Product Sales','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(157,'en','category_wise_sales','Category Wise Sales','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(158,'en','sales_amount_report','Sales Amount Report','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(159,'en','delivery_status_report','Delivery Status Report','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(160,'en','support','Support','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(161,'en','queries','Queries','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(162,'en','settings','Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(163,'en','appearance','Appearance','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(164,'en','homepage','Homepage','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(165,'en','products_page','Products Page','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(166,'en','product_details','Product Details','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(167,'en','header','Header','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(168,'en','footer','Footer','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(169,'en','roles__permissions','Roles & Permissions','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(170,'en','system_settings','System Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(171,'en','auth_settings','Auth Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(172,'en','otp_settings','OTP Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(173,'en','order_settings','Order Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(174,'en','admin_store','Admin Store','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(175,'en','smtp_settings','SMTP Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(176,'en','general_settings','General Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(177,'en','payment_methods','Payment Methods','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(178,'en','social_media_login','Social Media Login','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(179,'en','multilingual_settings','Multilingual Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(180,'en','multi_currency_settings','Multi Currency Settings','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(181,'en','visit_store','Visit Store','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(182,'en','no_new_notification','No New Notification','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(183,'en','my_account','My Account','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(184,'en','sign_out','Sign out','2024-01-04 03:39:15','2024-01-04 03:39:15',NULL),
(185,'en','media_files','Media Files','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(186,'en','recently_uploaded_files','Recently uploaded files','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(187,'en','add_files_here','Add files here','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(188,'en','previously_uploaded_files','Previously uploaded files','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(189,'en','search_by_name','Search by name','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(190,'en','load_more','Load More','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(191,'en','select','Select','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(192,'en','delete_confirmation','Delete Confirmation','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(193,'en','are_you_sure_to_delete_this','Are you sure to delete this?','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(194,'en','all_data_related_to_this_may_get_deleted','All data related to this may get deleted.','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(195,'en','proceed','Proceed','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(196,'en','cancel','Cancel','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(197,'en','are_you_sure_to_delete_all_data','Are you sure to delete all data?','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(198,'en','no_data_found','No data found','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(199,'en','selected_file','Selected File','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(200,'en','selected_files','Selected Files','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(201,'en','file_added','File added','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(202,'en','files_added','Files added','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(203,'en','no_file_chosen','No file chosen','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(204,'en','if_you_change_the_location_your_cart_will_be_cleared_do_you_want_to_proceed','If you change the location your cart will be cleared. Do you want to proceed?','2024-01-04 03:39:16','2024-01-04 03:39:16',NULL),
(205,'en','general_informations','General Informations','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(206,'en','system_title','System Title','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(207,'en','browser_tab_title_separator','Browser Tab Title Separator','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(208,'en','address','Address','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(209,'en','dashboard_logo__favicon','Dashboard Logo & Favicon','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(210,'en','dashboard_logo','Dashboard Logo','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(211,'en','choose_dashboard_logo','Choose Dashboard Logo','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(212,'en','favicon','Favicon','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(213,'en','choose_favicon','Choose Favicon','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(214,'en','maintenance_mode','Maintenance Mode','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(215,'en','enable_maintenance_mode','Enable Maintenance Mode','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(216,'en','set_maintenance_mode','Set maintenance mode','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(217,'en','enable','Enable','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(218,'en','disable','Disable','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(219,'en','seo_meta_configuration','SEO Meta Configuration','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(220,'en','meta_title','Meta Title','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(221,'en','type_meta_title','Type meta title','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(222,'en','set_a_meta_tag_title_recommended_to_be_simple_and_unique','Set a meta tag title. Recommended to be simple and unique.','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(223,'en','meta_description','Meta Description','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(224,'en','type_your_meta_description','Type your meta description','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(225,'en','meta_keywords','Meta Keywords','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(226,'en','meta_image','Meta Image','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(227,'en','choose_meta_image','Choose Meta Image','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(228,'en','save_configuration','Save Configuration','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(229,'en','configure_general_settings','Configure General Settings','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(230,'en','general_information','General Information','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(231,'en','dashborad_logo__favicon','Dashborad Logo & Favicon','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(232,'en','seo_configuration','SEO Configuration','2024-01-04 03:40:07','2024-01-04 03:40:07',NULL),
(233,'en','settings_updated_successfully','Settings updated successfully','2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(234,'en','select_brand','Select Brand','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(235,'en','select_status','Select Status','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(236,'en','published','Published','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(237,'en','hidden','Hidden','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(238,'en','sl','S/L','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(239,'en','product_name','Product Name','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(240,'en','brand','Brand','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(241,'en','price','Price','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(242,'en','showing','Showing','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(243,'en','of','of','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(244,'en','results','results','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(245,'en','status_updated_successfully','Status updated successfully','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(246,'en','something_went_wrong','Something went wrong','2024-01-04 03:43:50','2024-01-04 03:43:50',NULL),
(247,'en','add_category','Add Category','2024-01-04 03:43:54','2024-01-04 03:43:54',NULL),
(248,'en','category_name','Category Name','2024-01-04 03:43:54','2024-01-04 03:43:54',NULL),
(249,'en','base_category','Base Category','2024-01-04 03:43:54','2024-01-04 03:43:54',NULL),
(250,'en','brands','Brands','2024-01-04 03:43:54','2024-01-04 03:43:54',NULL),
(251,'en','priority','Priority','2024-01-04 03:43:54','2024-01-04 03:43:54',NULL),
(252,'en','add_new_category','Add New Category','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(253,'en','basic_information','Basic Information','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(254,'en','type_your_category_name','Type your category name','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(255,'en','select_brands','Select brands','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(256,'en','sorting_priority_number','Sorting Priority Number','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(257,'en','type_sorting_priority_number','Type sorting priority number','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(258,'en','images','Images','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(259,'en','thumbnail','Thumbnail','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(260,'en','choose_category_thumbnail','Choose Category Thumbnail','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(261,'en','save_category','Save Category','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(262,'en','category_information','Category Information','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(263,'en','category_image','Category Image','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(264,'en','seo_meta_options','SEO Meta Options','2024-01-04 03:43:56','2024-01-04 03:43:56',NULL),
(265,'en','active','Active','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(266,'en','name','Name','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(267,'en','add_new_brand','Add New Brand','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(268,'en','brand_name','Brand Name','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(269,'en','type_brand_name','Type brand name','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(270,'en','brand_image','Brand Image','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(271,'en','choose_brand_thumbnail','Choose Brand Thumbnail','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(272,'en','save_brand','Save Brand','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(273,'en','brand_information','Brand Information','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(274,'en','add_brand_seo','Add Brand SEO','2024-01-04 03:44:34','2024-01-04 03:44:34',NULL),
(275,'en','units','Units','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(276,'en','add_new_unit','Add New Unit','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(277,'en','unit_name','Unit Name','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(278,'en','type_unit_name','Type unit name','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(279,'en','save_unit','Save Unit','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(280,'en','unit_information','Unit Information','2024-01-04 03:44:37','2024-01-04 03:44:37',NULL),
(281,'en','only_customer_can_add_products_to_wishlist','Only customer can add products to wishlist','2024-01-04 03:44:48','2024-01-04 03:44:48',NULL),
(282,'en','edit','Edit','2024-01-04 03:45:11','2024-01-04 03:45:11',NULL),
(283,'en','delete','Delete','2024-01-04 03:45:11','2024-01-04 03:45:11',NULL),
(284,'en','languages','Languages','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(285,'en','iso_6391_code','ISO 639-1 Code','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(286,'en','localizations','Localizations','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(287,'en','add_new_language','Add New Language','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(288,'en','language_name','Language Name','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(289,'en','type_language_name','Type language name','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(290,'en','enbn','en/bn','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(291,'en','flag','Flag','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(292,'en','rtl','RTL','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(293,'en','save_language','Save Language','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(294,'en','set_default_language','Set Default Language','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(295,'en','default_language','Default Language','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(296,'en','language_information','Language Information','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(297,'en','all_languages','All Languages','2024-01-04 03:45:56','2024-01-04 03:45:56',NULL),
(298,'en','language_has_been_inserted_successfully','Language has been inserted successfully','2024-01-04 03:46:26','2024-01-04 03:46:26',NULL),
(299,'en','default_language_updated_successfully','Default language updated successfully','2024-01-04 03:46:32','2024-01-04 03:46:32',NULL),
(300,'en','currencies','Currencies','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(301,'en','symbol','Symbol','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(302,'en','code','Code','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(303,'en','alignment','Alignment','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(304,'en','1_usd__','1 USD = ?','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(305,'en','symbolamount','[symbol][amount]','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(306,'en','add_new_currency','Add New Currency','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(307,'en','currency_name','Currency Name','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(308,'en','type_currency_name','Type currency name','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(309,'en','currency_symbol','Currency Symbol','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(310,'en','type_symbol','Type symbol','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(311,'en','currency_code','Currency Code','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(312,'en','type_code','Type code','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(313,'en','rate','Rate','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(314,'en','amountsymbol','[amount][symbol]','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(315,'en','symbol_amount','[symbol] [amount]','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(316,'en','amount_symbol','[amount] [symbol]','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(317,'en','save_currency','Save Currency','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(318,'en','set_default_currency','Set Default Currency','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(319,'en','default_currency','Default Currency','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(320,'en','no_of_decimals','No of Decimals','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(321,'en','price_format','Price Format','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(322,'en','show_full_price_1000000','Show Full Price (1000000)','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(323,'en','truncate_price_1m1b','Truncate Price (1M/1B)','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(324,'en','save_configurations','Save Configurations','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(325,'en','currency_information','Currency Information','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(326,'en','all_currencies','All Currencies','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(327,'en','currency_configurations','Currency Configurations','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(328,'en','default_currency_can_not_be_disabled','Default currency can not be disabled','2024-01-04 03:46:43','2024-01-04 03:46:43',NULL),
(329,'en','update_currency','Update Currency','2024-01-04 03:46:49','2024-01-04 03:46:49',NULL),
(330,'en','save_changes','Save Changes','2024-01-04 03:46:49','2024-01-04 03:46:49',NULL),
(331,'en','currency_has_been_updated_successfully','Currency has been updated successfully','2024-01-04 03:47:04','2024-01-04 03:47:04',NULL),
(332,'en','unit_has_been_inserted_successfully','Unit has been inserted successfully','2024-01-04 03:47:18','2024-01-04 03:47:18',NULL),
(333,'en','unit_has_been_deleted_successfully','Unit has been deleted successfully','2024-01-04 03:47:25','2024-01-04 03:47:25',NULL),
(334,'en','brand_has_been_inserted_successfully','Brand has been inserted successfully','2024-01-04 03:49:23','2024-01-04 03:49:23',NULL),
(335,'en','variations','Variations','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(336,'en','add_values','Add Values','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(337,'en','add_new_variation','Add New Variation','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(338,'en','variation_name','Variation Name','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(339,'en','type_variation_name','Type variation name','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(340,'en','save_variation','Save Variation','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(341,'en','variation_information','Variation Information','2024-01-04 03:49:27','2024-01-04 03:49:27',NULL),
(342,'en','category_has_been_inserted_successfully','Category has been inserted successfully','2024-01-04 03:49:58','2024-01-04 03:49:58',NULL),
(343,'en','na','N/A','2024-01-04 03:49:59','2024-01-04 03:49:59',NULL),
(344,'en','type_your_product_name','Type your product name','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(345,'en','product_name_is_required_and_recommended_to_be_unique','Product name is required and recommended to be unique.','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(346,'en','short_description','Short Description','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(347,'en','type_your_product_short_description','Type your product short description','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(348,'en','description','Description','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(349,'en','choose_product_thumbnail','Choose Product Thumbnail','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(350,'en','gallery','Gallery','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(351,'en','choose_gallery_images','Choose Gallery Images','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(352,'en','product_categories','Product Categories','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(353,'en','select_categories','Select categories','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(354,'en','product_tags','Product Tags','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(355,'en','select_tags','Select tags..','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(356,'en','product_brand','Product Brand','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(357,'en','product_unit','Product Unit','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(358,'en','select_unit','Select Unit','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(359,'en','price_sku__stock','Price, Sku & Stock','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(360,'en','has_variations','Has Variations?','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(361,'en','product_price','Product price','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(362,'en','stock','Stock','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(363,'en','default_location','Default Location','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(364,'en','stock_qty','Stock qty','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(365,'en','sku','SKU','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(366,'en','product_sku','Product sku','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(367,'en','product_code','Product code','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(368,'en','product_size_guide','Product Size Guide','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(369,'en','choose_size_guide_image','Choose Size Guide Image','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(370,'en','product_discount','Product Discount','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(371,'en','date_range','Date Range','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(372,'en','start_date__end_date','Start date - End date','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(373,'en','discount_amount','Discount Amount','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(374,'en','type_discount_amount','Type discount amount','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(375,'en','percent_or_fixed','Percent or Fixed','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(376,'en','percent_','Percent %','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(377,'en','fixed','Fixed','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(378,'en','shipping_configuration','Shipping Configuration','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(379,'en','minimum_purchase_qty','Minimum Purchase Qty','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(380,'en','maximum_purchase_qty','Maximum Purchase Qty','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(381,'en','standard_delivery_time','Standard Delivery Time','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(382,'en','express_delivery_time','Express Delivery Time','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(383,'en','product_taxes','Product Taxes','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(384,'en','default_0','Default 0%','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(385,'en','sell_target','Sell Target','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(386,'en','type_your_sell_target','Type your sell target','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(387,'en','product_status','Product Status','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(388,'en','unpublished','Unpublished','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(389,'en','save_product','Save Product','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(390,'en','product_information','Product Information','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(391,'en','product_images','Product Images','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(392,'en','product_brand__unit','Product Brand & Unit','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(393,'en','price_sku_stock__variations','Price, SKU, Stock & Variations','2024-01-04 03:50:13','2024-01-04 03:50:13',NULL),
(394,'en','minimum_purchase','Minimum Purchase','2024-01-04 03:50:14','2024-01-04 03:50:14',NULL),
(395,'en','sell_target_and_status','Sell Target and Status','2024-01-04 03:50:14','2024-01-04 03:50:14',NULL),
(396,'en','product_has_been_inserted_successfully','Product has been inserted successfully','2024-01-04 03:54:53','2024-01-04 03:54:53',NULL),
(397,'en','view_details','View Details','2024-01-04 03:54:54','2024-01-04 03:54:54',NULL),
(398,'en','explore_now','Explore Now','2024-01-04 03:55:02','2024-01-04 03:55:02',NULL),
(399,'en','pos','Pos','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(400,'en','all_listed_products','All Listed Products','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(401,'en','add_item_by_code','Add Item by Code','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(402,'en','billing_section','Billing Section','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(403,'en','delivered','Delivered','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(404,'en','order_placed','Order Placed','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(405,'en','new_order','New Order','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(406,'en','item','Item','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(407,'en','qty','Qty','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(408,'en','enter_product_code','Enter product code','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(409,'en','add_this_item','Add This Item','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(410,'en','please_select_all_the_options','Please select all the options','2024-01-04 03:55:12','2024-01-04 03:55:12',NULL),
(411,'en','locations','Locations','2024-01-04 03:56:02','2024-01-04 03:56:02',NULL),
(412,'en','add_location','Add Location','2024-01-04 03:56:02','2024-01-04 03:56:02',NULL),
(413,'en','default','Default','2024-01-04 03:56:02','2024-01-04 03:56:02',NULL),
(414,'en','default_location_can_not_be_hidden','Default location can not be hidden','2024-01-04 03:56:02','2024-01-04 03:56:02',NULL),
(415,'en','location','Location','2024-01-04 03:56:09','2024-01-04 03:56:09',NULL),
(416,'en','select_location','Select location','2024-01-04 03:56:09','2024-01-04 03:56:09',NULL),
(417,'en','select_product','Select Product','2024-01-04 03:56:09','2024-01-04 03:56:09',NULL),
(418,'en','save_stock','Save Stock','2024-01-04 03:56:09','2024-01-04 03:56:09',NULL),
(419,'en','stock_information','Stock Information','2024-01-04 03:56:09','2024-01-04 03:56:09',NULL),
(420,'en','remove_all_data','Remove all data','2024-01-04 03:57:43','2024-01-04 03:57:43',NULL),
(421,'en','delete_all','Delete All','2024-01-04 03:57:43','2024-01-04 03:57:43',NULL),
(422,'en','issue','Issue','2024-01-04 03:57:44','2024-01-04 03:57:44',NULL),
(423,'en','message','Message','2024-01-04 03:57:44','2024-01-04 03:57:44',NULL),
(424,'en','zones','Zones','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(425,'en','cities','Cities','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(426,'en','states','States','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(427,'en','countries','Countries','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(428,'en','add_zone','Add Zone','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(429,'en','select_a_logistic','Select a Logistic','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(430,'en','logistic','Logistic','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(431,'en','shipping_time','Shipping Time','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(432,'en','shipping_charge','Shipping Charge','2024-01-04 03:57:55','2024-01-04 03:57:55',NULL),
(433,'en','add_shipping_zone','Add Shipping Zone','2024-01-04 03:58:00','2024-01-04 03:58:00',NULL),
(434,'en','zone_name','Zone Name','2024-01-04 03:58:00','2024-01-04 03:58:00',NULL),
(435,'en','type_your_zone_name','Type your zone name','2024-01-04 03:58:00','2024-01-04 03:58:00',NULL),
(436,'en','select_logistic','Select logistic','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(437,'en','select_cities','Select cities','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(438,'en','standard_delivery_charge','Standard Delivery Charge','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(439,'en','1__3_days','1 - 3 days','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(440,'en','save_zone','Save Zone','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(441,'en','zone_information','Zone Information','2024-01-04 03:58:01','2024-01-04 03:58:01',NULL),
(442,'en','add_new_logistic','Add New Logistic','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(443,'en','logistic_name','Logistic Name','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(444,'en','type_logistic_name','Type logistic name','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(445,'en','logistic_image','Logistic Image','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(446,'en','choose_logistic_thumbnail','Choose Logistic Thumbnail','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(447,'en','save_logistic','Save Logistic','2024-01-04 03:58:12','2024-01-04 03:58:12',NULL),
(448,'en','logistic_has_been_inserted_successfully','Logistic has been inserted successfully','2024-01-04 03:58:23','2024-01-04 03:58:23',NULL),
(449,'en','select_city','Select City','2024-01-04 03:59:09','2024-01-04 03:59:09',NULL),
(450,'en','shipping_cities','Shipping Cities','2024-01-04 03:59:53','2024-01-04 03:59:53',NULL),
(451,'en','shipping_citites','Shipping Citites','2024-01-04 03:59:53','2024-01-04 03:59:53',NULL),
(452,'en','add_city','Add City','2024-01-04 03:59:54','2024-01-04 03:59:54',NULL),
(453,'en','select_an_state','Select an State','2024-01-04 03:59:54','2024-01-04 03:59:54',NULL),
(454,'en','state','State','2024-01-04 03:59:54','2024-01-04 03:59:54',NULL),
(455,'en','city_name','City Name','2024-01-04 04:01:10','2024-01-04 04:01:10',NULL),
(456,'en','type_city_name','Type city name','2024-01-04 04:01:10','2024-01-04 04:01:10',NULL),
(457,'en','save_city','Save City','2024-01-04 04:01:10','2024-01-04 04:01:10',NULL),
(458,'en','city_information','City Information','2024-01-04 04:01:10','2024-01-04 04:01:10',NULL),
(459,'en','shipping_countries','Shipping Countries','2024-01-04 04:01:20','2024-01-04 04:01:20',NULL),
(460,'en','shipping_states','Shipping States','2024-01-04 04:02:27','2024-01-04 04:02:27',NULL),
(461,'en','add_state','Add State','2024-01-04 04:02:27','2024-01-04 04:02:27',NULL),
(462,'en','select_a_country','Select a country','2024-01-04 04:02:27','2024-01-04 04:02:27',NULL),
(463,'en','country','Country','2024-01-04 04:02:27','2024-01-04 04:02:27',NULL),
(464,'en','state_name','State Name','2024-01-04 04:03:20','2024-01-04 04:03:20',NULL),
(465,'en','type_state_name','Type state name','2024-01-04 04:03:20','2024-01-04 04:03:20',NULL),
(466,'en','save_state','Save State','2024-01-04 04:03:20','2024-01-04 04:03:20',NULL),
(467,'en','state_information','State Information','2024-01-04 04:03:20','2024-01-04 04:03:20',NULL),
(468,'en','state_has_been_inserted_successfully','State has been inserted successfully','2024-01-04 04:04:12','2024-01-04 04:04:12',NULL),
(469,'en','city_has_been_inserted_successfully','City has been inserted successfully','2024-01-04 04:04:27','2024-01-04 04:04:27',NULL),
(470,'en','zone_has_been_inserted_successfully','Zone has been inserted successfully','2024-01-04 04:05:49','2024-01-04 04:05:49',NULL),
(471,'en','website_homepage_configuration','Website Homepage Configuration','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(472,'en','hero_section_configuration','Hero Section Configuration','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(473,'en','image','Image','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(474,'en','sub_title','Sub Title','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(475,'en','title','Title','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(476,'en','text','Text','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(477,'en','add_new_slider','Add New Slider','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(478,'en','type_sub_title','Type sub title','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(479,'en','type_title','Type title','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(480,'en','type_text','Type text','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(481,'en','link','Link','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(482,'en','slider_image','Slider Image','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(483,'en','choose_slider_image','Choose Slider Image','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(484,'en','save_slider','Save Slider','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(485,'en','homepage_configuration','Homepage Configuration','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(486,'en','hero_section','Hero Section','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(487,'en','top_categories','Top Categories','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(488,'en','featured_products','Featured Products','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(489,'en','banner_section_one','Banner Section One','2024-01-04 04:08:29','2024-01-04 04:08:29',NULL),
(490,'en','banner_section_two','Banner Section Two','2024-01-04 04:08:30','2024-01-04 04:08:30',NULL),
(491,'en','client_feedback','Client Feedback','2024-01-04 04:08:30','2024-01-04 04:08:30',NULL),
(492,'en','custom_product_section','Custom Product Section','2024-01-04 04:08:30','2024-01-04 04:08:30',NULL),
(493,'en','website_header_configuration','Website Header Configuration','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(494,'en','topbar_information','Topbar Information','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(495,'en','welcome_text','Welcome Text','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(496,'en','welcome_to_our_organic_store','Welcome to our organic store','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(497,'en','topbar_email','Topbar Email','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(498,'en','grostoresupportcom','grostore@support.com','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(499,'en','topbar_location','Topbar Location','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(500,'en','washington_new_york_usa__254230','Washington, New York, USA - 254230','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(501,'en','facebook_link','Facebook Link','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(502,'en','twitter_link','Twitter Link','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(503,'en','linkedin_link','LinkedIn Link','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(504,'en','youtube_link','Youtube Link','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(505,'en','navbar_information','Navbar Information','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(506,'en','navbar_logo','Navbar Logo','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(507,'en','choose_navbar_logo','Choose Navbar Logo','2024-01-04 04:08:45','2024-01-04 04:08:45',NULL),
(508,'en','show_categories','Show Categories?','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(509,'en','header_nav_menu','Header Nav Menu','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(510,'en','menu_label','Menu label','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(511,'en','add_new','Add New','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(512,'en','show_pages','Show Pages?','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(513,'en','select_pages','Select pages','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(514,'en','contact_number','Contact Number','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(515,'en','header_configuration','Header Configuration','2024-01-04 04:08:46','2024-01-04 04:08:46',NULL),
(516,'en','update_slider','Update Slider','2024-01-04 04:09:10','2024-01-04 04:09:10',NULL),
(517,'en','slider_updated_successfully','Slider updated successfully','2024-01-04 04:12:39','2024-01-04 04:12:39',NULL),
(518,'en','product_added_to_your_cart','Product added to your cart','2024-01-04 04:12:56','2024-01-04 04:12:56',NULL),
(519,'en','unit_price','Unit Price','2024-01-04 04:12:56','2024-01-04 04:12:56',NULL),
(520,'en','total_price','Total Price','2024-01-04 04:12:57','2024-01-04 04:12:57',NULL),
(521,'en','please_login_to_continue','Please login to continue','2024-01-04 04:13:01','2024-01-04 04:13:01',NULL),
(522,'en','register_as_a_customer','Register as a Customer.','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(523,'en','full_name','Full name','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(524,'en','enter_your_name','Enter your name','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(525,'en','enter_phone_number_with_country_code','Enter phone number with country code','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(526,'en','confirm_password','Confirm Password','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(527,'en','already_have_an_account','Already have an Account?','2024-01-04 04:13:05','2024-01-04 04:13:05',NULL),
(528,'en','registration_successful','Registration successful.','2024-01-04 04:13:18','2024-01-04 04:13:18',NULL),
(529,'en','check_out','Check Out','2024-01-04 04:13:18','2024-01-04 04:13:18',NULL),
(530,'en','shipping_address','Shipping Address','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(531,'en','add_address','Add Address','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(532,'en','add_your_address_to_checkout','Add your address to checkout','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(533,'en','preferred_delivery_time','Preferred Delivery Time','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(534,'en','regular_delivery','Regular Delivery','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(535,'en','we_will_deliver_your_products_soon','We will deliver your products soon.','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(536,'en','personal_information','Personal Information','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(537,'en','phone_number','Phone Number','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(538,'en','alternative_phone','Alternative Phone','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(539,'en','your_alternative_phone','Your Alternative Phone','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(540,'en','additional_info','Additional Info','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(541,'en','type_your_additional_informations_here','Type your additional informations here','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(542,'en','payment_method','Payment Method','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(543,'en','order_summery','Order Summery','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(544,'en','tax','Tax','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(545,'en','total','Total','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(546,'en','place_order','Place Order','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(547,'en','add_new_address','Add New Address','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(548,'en','select_country','Select Country','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(549,'en','select_state','Select State','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(550,'en','city','City','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(551,'en','default_address','Default Address?','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(552,'en','no','No','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(553,'en','set_default','Set Default','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(554,'en','25_elephant_road_new_town','2/5 Elephant Road, New Town','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(555,'en','save','Save','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(556,'en','update_address','Update Address','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(557,'en','delete_address','Delete Address','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(558,'en','want_to_delete_this_address','Want to delete this address?','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(559,'en','my_orders','My Orders','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(560,'en','my_wishlist','My Wishlist','2024-01-04 04:13:19','2024-01-04 04:13:19',NULL),
(561,'en','address_has_been_inserted_successfully','Address has been inserted successfully','2024-01-04 04:13:44','2024-01-04 04:13:44',NULL),
(562,'en','billing_address','Billing Address','2024-01-04 04:13:44','2024-01-04 04:13:44',NULL),
(563,'en','available_logistics','Available Logistics','2024-01-04 04:13:45','2024-01-04 04:13:45',NULL),
(564,'en','we_are_not_shipping_to_your_city_now','We are not shipping to your city now.','2024-01-04 04:13:45','2024-01-04 04:13:45',NULL),
(565,'en','update_zone','Update Zone','2024-01-04 04:14:24','2024-01-04 04:14:24',NULL),
(566,'en','update_shipping_zone','Update Shipping Zone','2024-01-04 04:14:24','2024-01-04 04:14:24',NULL),
(567,'en','zone_has_been_updated_successfully','Zone has been updated successfully','2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(568,'en','currency_has_been_inserted_successfully','Currency has been inserted successfully','2024-01-04 04:15:52','2024-01-04 04:15:52',NULL),
(569,'en','product_page_configuration','Product Page Configuration','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(570,'en','product_details_widget','Product Details Widget','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(571,'en','add_new_widget','Add New Widget','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(572,'en','icon','Icon','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(573,'en','choose_icon_image','Choose Icon Image','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(574,'en','save_widget','Save Widget','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(575,'en','add_promotional_banner','Add Promotional Banner','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(576,'en','type_link','Type link','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(577,'en','promotional_banner','Promotional Banner','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(578,'en','choose_promotional_banner','Choose Promotional Banner','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(579,'en','save_banner','Save Banner','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(580,'en','product_details_page','Product Details Page','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(581,'en','widgets','Widgets','2024-01-04 04:16:06','2024-01-04 04:16:06',NULL),
(582,'en','payment_methods_settings','Payment Methods Settings','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(583,'en','cash_on_delivery','Cash On Delivery','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(584,'en','enable_cod','Enable COD','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(585,'en','paypal_credentials','Paypal Credentials','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(586,'en','paypal_client_id','Paypal Client ID','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(587,'en','paypal_client_secret','Paypal Client Secret','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(588,'en','enable_paypal','Enable Paypal','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(589,'en','enable_test_sandbox_mode','Enable Test Sandbox Mode','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(590,'en','stripe_credentials','Stripe Credentials','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(591,'en','stripe_key','Stripe Key','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(592,'en','stripe_secret','Stripe Secret','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(593,'en','enable_stripe','Enable Stripe','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(594,'en','paytm_credentials','PayTm Credentials','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(595,'en','paytm_environment','PayTm Environment','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(596,'en','paytm_merchant_id','PayTm Merchant ID','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(597,'en','paytm_merchant_key','PayTm Merchant Key','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(598,'en','paytm_merchant_website','PayTm Merchant Website','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(599,'en','paytm_channel','PayTm Channel','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(600,'en','paytm_industry_type','PayTm Industry Type','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(601,'en','enable_paytm','Enable PayTm','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(602,'en','razorpay_credentials','Razorpay Credentials','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(603,'en','razorpay_key','Razorpay Key','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(604,'en','razorpay_secret','Razorpay Secret','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(605,'en','enable_razorpay','Enable Razorpay','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(606,'en','iyzico_credentials','IyZico Credentials','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(607,'en','iyzico_api_key','IyZico API Key','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(608,'en','iyzico_secret_key','IyZico Secret Key','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(609,'en','enable_iyzico','Enable IyZico','2024-01-04 04:16:39','2024-01-04 04:16:39',NULL),
(610,'en','payment_settings_updated_successfully','Payment settings updated successfully','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(611,'en','cod','COD','2024-01-04 04:17:05','2024-01-04 04:17:05',NULL),
(612,'en','your_order_has_been_placed_successfully','Your order has been placed successfully','2024-01-04 04:17:34','2024-01-04 04:17:34',NULL),
(613,'en','your_order_has_been_placed','Your order has been placed','2024-01-04 04:17:34','2024-01-04 04:17:34',NULL),
(614,'en','invoice','INVOICE','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(615,'en','date','Date','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(616,'en','here_are_your_order_details_we_thank_you_for_your_purchase','Here are your order details. We thank you for your purchase.','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(617,'en','uprice','U.Price','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(618,'en','tprice','T.Price','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(619,'en','sub_total','Sub Total','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(620,'en','tips','Tips','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(621,'en','shipping_cost','Shipping Cost','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(622,'en','request_refund','Request Refund','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(623,'en','refund_reason','Refund Reason','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(624,'en','type_refund_reason','Type refund reason','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(625,'en','submit','Submit','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(626,'en','rejection_reason','Rejection Reason','2024-01-04 04:17:35','2024-01-04 04:17:35',NULL),
(627,'en','search_by_namephone','Search by name/phone','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(628,'en','paid','Paid','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(629,'en','unpaid','Unpaid','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(630,'en','pending','Pending','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(631,'en','processing','Processing','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(632,'en','cancelled','Cancelled','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(633,'en','online_orders','Online Orders','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(634,'en','pos_orders','POS Orders','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(635,'en','payment','Payment','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(636,'en','status','Status','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(637,'en','type','Type','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(638,'en','new','New','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(639,'en','new_order_placed','New Order Placed','2024-01-04 04:17:43','2024-01-04 04:17:43',NULL),
(640,'en','order_details','Order Details','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(641,'en','order_date','Order Date','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(642,'en','download_invoice','Download Invoice','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(643,'en','customer_info','Customer Info','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(644,'en','grand_total','Grand Total','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(645,'en','order_logs','Order Logs','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(646,'en','no_logs_found','No logs found','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(647,'en','payment_status_has_been_updated','Payment status has been updated','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(648,'en','delivery_status_has_been_updated','Delivery status has been updated','2024-01-04 04:17:50','2024-01-04 04:17:50',NULL),
(649,'en','invoice_no','Invoice No','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(650,'en','shipping_information','SHIPPING INFORMATION','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(651,'en','billing_information','BILLING INFORMATION','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(652,'en','hello','Hello','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(653,'en','best_regards','Best Regards','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(654,'en','website','Website','2024-01-04 04:17:53','2024-01-04 04:17:53',NULL),
(655,'en','search_now','Search Now','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(656,'en','filter_by_price','Filter by Price','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(657,'en','filter','Filter','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(658,'en','show','Show','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(659,'en','sort_by','Sort by','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(660,'en','newest_first','Newest First','2024-01-04 04:20:44','2024-01-04 04:20:44',NULL),
(661,'en','all_campaigns','All Campaigns','2024-01-04 04:20:55','2024-01-04 04:20:55',NULL),
(662,'en','all_coupons','All Coupons','2024-01-04 04:21:03','2024-01-04 04:21:03',NULL),
(663,'en','recent_post','Recent Post','2024-01-04 04:21:06','2024-01-04 04:21:06',NULL),
(664,'en','currency_changed_to_','Currency changed to ','2024-01-04 04:21:18','2024-01-04 04:21:18',NULL),
(665,'en','customer_order_history','Customer Order History','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(666,'en','total_shipped','Total Shipped','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(667,'en','new_orders','New Orders','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(668,'en','manage_my_account','Manage My Account','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(669,'en','order_history','Order History','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(670,'en','wallet_history','Wallet History','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(671,'en','track_order','Track Order','2024-01-04 04:21:26','2024-01-04 04:21:26',NULL),
(672,'en','updated_profile','Updated Profile','2024-01-04 04:21:27','2024-01-04 04:21:27',NULL),
(673,'en','log_out','Log out','2024-01-04 04:21:27','2024-01-04 04:21:27',NULL),
(674,'en','track_my_order','Track My Order','2024-01-04 04:21:27','2024-01-04 04:21:27',NULL),
(675,'en','customer_wallet_history','Customer Wallet History','2024-01-04 04:21:32','2024-01-04 04:21:32',NULL),
(676,'en','wallet_balance','Wallet Balance','2024-01-04 04:21:32','2024-01-04 04:21:32',NULL),
(677,'en','amount','Amount','2024-01-04 04:21:32','2024-01-04 04:21:32',NULL),
(678,'en','order_tracking','Order Tracking','2024-01-04 04:21:39','2024-01-04 04:21:39',NULL),
(679,'en','customer_addresses','Customer Addresses','2024-01-04 04:21:45','2024-01-04 04:21:45',NULL),
(680,'en','update','Update','2024-01-04 04:21:51','2024-01-04 04:21:51',NULL),
(681,'en','customer_profile','Customer Profile','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(682,'en','drop_your_files_here_or_browse','Drop your files here or browse','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(683,'en','your_name','Your Name','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(684,'en','email_address','Email Address','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(685,'en','your_email','Your Email','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(686,'en','your_phone','Your Phone','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(687,'en','change_password','Change Password','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(688,'en','new_password','New Password','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(689,'en','retype_password','Re-type Password','2024-01-04 04:21:55','2024-01-04 04:21:55',NULL),
(690,'en','customer_dashboard','Customer Dashboard','2024-01-04 04:22:01','2024-01-04 04:22:01',NULL),
(691,'en','order_information','Order Information','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(692,'en','enable_scheduled_order','Enable Scheduled Order','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(693,'en','scheduled_order_days','Scheduled Order Days','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(694,'en','order_code_prefix','Order Code Prefix','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(695,'en','grostore','#Grostore-','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(696,'en','order_code_starts_from','Order Code Starts From','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(697,'en','1001','1001','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(698,'en','invoice_thank_you_message','Invoice Thank You Message','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(699,'en','type_your_thank_you_message_for_invoice','Type your thank you message for invoice','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(700,'en','scheduled_time_slot_list','Scheduled Time Slot List','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(701,'en','time_slot','Time Slot','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(702,'en','sorting_order','Sorting Order','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(703,'en','add_new_time_slot','Add New Time Slot','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(704,'en','8am__9am','8am - 9am','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(705,'en','timeslots_with_lower_sorting_order_will_be_shown_first','Timeslots with lower sorting order will be shown first','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(706,'en','configure_order_settings','Configure Order Settings','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(707,'en','time_slot_list','Time Slot List','2024-01-04 04:22:53','2024-01-04 04:22:53',NULL),
(708,'en','type_your_name','Type your name','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(709,'en','type_your_email','Type your email','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(710,'en','type_your_phone','Type your phone','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(711,'en','avatar','Avatar','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(712,'en','choose_avatar','Choose Avatar','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(713,'en','type_password','Type password','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(714,'en','user_information','User Information','2024-01-04 04:23:47','2024-01-04 04:23:47',NULL),
(715,'en','1000__how_many_points','$1.000 = How many points?','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(716,'en','type_reward_points','Type reward points','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(717,'en','waiting_days_for_wallet_conversion','Waiting Days for Wallet Conversion','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(718,'en','type_waiting_days','Type waiting days','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(719,'en','enable_reward_points','Enable Reward Points','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(720,'en','reward_information','Reward Information','2024-01-04 04:23:54','2024-01-04 04:23:54',NULL),
(721,'en','base_price','Base Price','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(722,'en','points','Points','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(723,'en','price_range_wise','Price Range Wise','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(724,'en','minimum_price','Minimum Price','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(725,'en','maximum_price','Maximum Price','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(726,'en','save_points','Save Points','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(727,'en','for_all_products','For All Products','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(728,'en','reward_points','Reward Points','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(729,'en','each_product_wise','Each Product Wise','2024-01-04 04:24:01','2024-01-04 04:24:01',NULL),
(730,'en','enable_wallet_checkout','Enable Wallet Checkout','2024-01-04 04:24:08','2024-01-04 04:24:08',NULL),
(731,'en','wallet_information','Wallet Information','2024-01-04 04:24:08','2024-01-04 04:24:08',NULL),
(732,'en','about','About','2024-01-04 04:24:48','2024-01-04 04:24:48',NULL),
(733,'en','our_mission','Our Mission','2024-01-04 04:24:48','2024-01-04 04:24:48',NULL),
(734,'en','our_vision','Our Vision','2024-01-04 04:24:48','2024-01-04 04:24:48',NULL),
(735,'en','the_most_popular_brands','The Most Popular Brands','2024-01-04 04:24:48','2024-01-04 04:24:48',NULL),
(736,'en','product_added_to_your_wishlist','Product added to your wishlist','2024-01-04 04:25:21','2024-01-04 04:25:21',NULL),
(737,'en','u_price','U. Price','2024-01-04 04:25:27','2024-01-04 04:25:27',NULL),
(738,'en','conatct_us','Conatct Us','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(739,'en','get_in_touch','Get In Touch','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(740,'en','contact_details','Contact Details','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(741,'en','office_address','Office Address','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(742,'en','emergency_call','Emergency Call','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(743,'en','general_communicationl','General Communicationl','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(744,'en','find_us_on','Find us on','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(745,'en','need_help_send_message','Need Help? Send Message','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(746,'en','you_email','You email','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(747,'en','you_phone','You phone','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(748,'en','delivery_problem','Delivery Problem','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(749,'en','customer_service','Customer Service','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(750,'en','others_service','Others Service','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(751,'en','messages','Messages','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(752,'en','write_your_message','Write your message','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(753,'en','send_message','Send Message','2024-01-04 04:25:41','2024-01-04 04:25:41',NULL),
(754,'en','we_have_listed_1_total_products','We have listed 1 total products.','2024-01-04 04:26:08','2024-01-04 04:26:08',NULL),
(755,'en','total_sales','Total Sales','2024-01-04 04:26:08','2024-01-04 04:26:08',NULL),
(756,'en','smtp_configuration','SMTP Configuration','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(757,'en','sendmail','Sendmail','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(758,'en','smtp','SMTP','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(759,'en','mail_host','Mail Host','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(760,'en','type_mail_host','Type mail Host','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(761,'en','mail_port','Mail Port','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(762,'en','type_mail_port','Type mail port','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(763,'en','mail_username','Mail Username','2024-01-04 04:26:31','2024-01-04 04:26:31',NULL),
(764,'en','type_mail_username','Type mail username','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(765,'en','mail_password','Mail Password','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(766,'en','type_mail_password','Type mail password','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(767,'en','mail_encryption','Mail Encryption','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(768,'en','type_mail_encryption','Type mail encryption','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(769,'en','mail_from_address','Mail From Address','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(770,'en','type_mail_from_address','Type mail from address','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(771,'en','mail_from_name','Mail From Name','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(772,'en','type_mail_from_name','Type mail from name','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(773,'en','configure_smtp','Configure SMTP','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(774,'en','smtp_information','SMTP Information','2024-01-04 04:26:32','2024-01-04 04:26:32',NULL),
(775,'en','roles','Roles','2024-01-04 04:26:38','2024-01-04 04:26:38',NULL),
(776,'en','add_role','Add Role','2024-01-04 04:26:38','2024-01-04 04:26:38',NULL),
(777,'en','created_by','Created By','2024-01-04 04:26:38','2024-01-04 04:26:38',NULL),
(778,'en','website_footer_configuration','Website Footer Configuration','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(779,'en','select_quick_link_pages','Select quick link pages','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(780,'en','copyright_text','Copyright Text','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(781,'en','footer_logo','Footer Logo','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(782,'en','choose_footer_logo','Choose Footer Logo','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(783,'en','accepted_payment','Accepted Payment','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(784,'en','choose_accepted_payment_banner','Choose Accepted Payment Banner','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(785,'en','footer_configuration','Footer Configuration','2024-01-04 04:26:49','2024-01-04 04:26:49',NULL),
(786,'en','additional_information','Additional Information','2024-01-04 04:27:48','2024-01-04 04:27:48',NULL),
(787,'en','not_available','Not Available','2024-01-04 04:27:48','2024-01-04 04:27:48',NULL),
(788,'en','you_may_be_interested','You may be interested','2024-01-04 04:27:48','2024-01-04 04:27:48',NULL),
(789,'en','carts','Carts','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(790,'en','shopping_cart','Shopping Cart','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(791,'en','quantity','Quantity','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(792,'en','t_price','T. Price','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(793,'en','have_a_coupon','Have a coupon?','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(794,'en','apply_coupon_to_get_discount','Apply coupon to get discount.','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(795,'en','enter_your_coupon_code','Enter Your Coupon Code','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(796,'en','coupon_discount','Coupon Discount','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(797,'en','shipping_options_will_be_updated_during_checkout','Shipping options will be updated during checkout.','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(798,'en','continue_shopping','Continue Shopping','2024-01-04 04:28:20','2024-01-04 04:28:20',NULL),
(799,'en','products_listing','Products Listing','2024-01-04 04:28:45','2024-01-04 04:28:45',NULL),
(800,'en','delivery_status_wise_report','Delivery Status Wise Report','2024-01-04 04:29:18','2024-01-04 04:29:18',NULL),
(801,'en','amount_wise_sales_report','Amount Wise Sales Report','2024-01-04 04:29:23','2024-01-04 04:29:23',NULL),
(802,'en','high__low','High ⟶ Low','2024-01-04 04:29:23','2024-01-04 04:29:23',NULL),
(803,'en','low__high','Low ⟶ High','2024-01-04 04:29:23','2024-01-04 04:29:23',NULL),
(804,'en','total_amount','Total Amount','2024-01-04 04:29:23','2024-01-04 04:29:23',NULL),
(805,'en','category_sales_report','Category Sales Report','2024-01-04 04:29:28','2024-01-04 04:29:28',NULL),
(806,'en','category_wise_sales_report','Category Wise Sales Report','2024-01-04 04:29:28','2024-01-04 04:29:28',NULL),
(807,'en','sales_report','Sales Report','2024-01-04 04:29:31','2024-01-04 04:29:31',NULL),
(808,'en','product_sales_report','Product Sales Report','2024-01-04 04:29:31','2024-01-04 04:29:31',NULL),
(809,'en','welcome','Welcome','2024-01-04 10:34:01','2024-01-04 10:34:01',NULL),
(810,'en','please_sign_in_for_access_dashboard','Please sign in for access dashboard.','2024-01-04 10:34:01','2024-01-04 10:34:01',NULL),
(811,'en','add_new_role','Add New Role','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(812,'en','role_name','Role Name','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(813,'en','type_role_name','Type role name','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(814,'en','permissions','Permissions','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(815,'en','select_all','Select All','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(816,'en','select_all_of','Select all of','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(817,'en','add_products','Add Products','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(818,'en','edit_products','Edit Products','2024-01-05 01:50:21','2024-01-05 01:50:21',NULL),
(819,'en','publish_products','Publish Products','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(820,'en','add_categories','Add Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(821,'en','edit_categories','Edit Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(822,'en','delete_categories','Delete Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(823,'en','add_variations','Add Variations','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(824,'en','edit_variations','Edit Variations','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(825,'en','publish_variations','Publish Variations','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(826,'en','variation_values','Variation Values','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(827,'en','add_variation_values','Add Variation Values','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(828,'en','edit_variation_values','Edit Variation Values','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(829,'en','publish_variation_values','Publish Variation Values','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(830,'en','delete_variations','Delete Variations','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(831,'en','add_brands','Add Brands','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(832,'en','edit_brands','Edit Brands','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(833,'en','publish_brands','Publish Brands','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(834,'en','delete_brands','Delete Brands','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(835,'en','add_units','Add Units','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(836,'en','edit_units','Edit Units','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(837,'en','publish_units','Publish Units','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(838,'en','delete_units','Delete Units','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(839,'en','taxes','Taxes','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(840,'en','add_taxes','Add Taxes','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(841,'en','edit_taxes','Edit Taxes','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(842,'en','publish_taxes','Publish Taxes','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(843,'en','delete_taxes','Delete Taxes','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(844,'en','manage_orders','Manage Orders','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(845,'en','ban_customers','Ban Customers','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(846,'en','staffs','Staffs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(847,'en','add_staffs','Add Staffs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(848,'en','edit_staffs','Edit Staffs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(849,'en','delete_staffs','Delete Staffs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(850,'en','own_staff','Own Staff','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(851,'en','add_tags','Add Tags','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(852,'en','edit_tags','Edit Tags','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(853,'en','delete_tags','Delete Tags','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(854,'en','add_pages','Add Pages','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(855,'en','edit_pages','Edit Pages','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(856,'en','delete_pages','Delete Pages','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(857,'en','add_blogs','Add Blogs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(858,'en','edit_blogs','Edit Blogs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(859,'en','publish_blogs','Publish Blogs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(860,'en','delete_blogs','Delete Blogs','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(861,'en','blog_categories','Blog Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(862,'en','add_blog_categories','Add Blog Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(863,'en','edit_blog_categories','Edit Blog Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(864,'en','delete_blog_categories','Delete Blog Categories','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(865,'en','add_media','Add Media','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(866,'en','delete_media','Delete Media','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(867,'en','delete_subscribers','Delete Subscribers','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(868,'en','add_coupons','Add Coupons','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(869,'en','edit_coupons','Edit Coupons','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(870,'en','delete_coupons','Delete Coupons','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(871,'en','add_campaigns','Add Campaigns','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(872,'en','edit_campaigns','Edit Campaigns','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(873,'en','publish_campaigns','Publish Campaigns','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(874,'en','delete_campaigns','Delete Campaigns','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(875,'en','add_logistics','Add Logistics','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(876,'en','edit_logistics','Edit Logistics','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(877,'en','publish_logistics','Publish Logistics','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(878,'en','delete_logistics','Delete Logistics','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(879,'en','add_shipping_zones','Add Shipping Zones','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(880,'en','edit_shipping_zones','Edit Shipping Zones','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(881,'en','delete_shipping_zones','Delete Shipping Zones','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(882,'en','add_shipping_cities','Add Shipping Cities','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(883,'en','edit_shipping_cities','Edit Shipping Cities','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(884,'en','publish_shipping_cities','Publish Shipping Cities','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(885,'en','add_shipping_states','Add Shipping States','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(886,'en','edit_shipping_states','Edit Shipping States','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(887,'en','publish_shipping_states','Publish Shipping States','2024-01-05 01:50:22','2024-01-05 01:50:22',NULL),
(888,'en','publish_shipping_countries','Publish Shipping Countries','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(889,'en','contact_us_messages','Contact Us Messages','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(890,'en','product_page','Product Page','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(891,'en','about_us_page','About Us Page','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(892,'en','roles_and_permissions','Roles And Permissions','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(893,'en','add_roles_and_permissions','Add Roles And Permissions','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(894,'en','edit_roles_and_permissions','Edit Roles And Permissions','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(895,'en','delete_roles_and_permissions','Delete Roles And Permissions','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(896,'en','currency_settings','Currency Settings','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(897,'en','add_currency','Add Currency','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(898,'en','edit_currency','Edit Currency','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(899,'en','publish_currency','Publish Currency','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(900,'en','language_settings','Language Settings','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(901,'en','add_languages','Add Languages','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(902,'en','edit_languages','Edit Languages','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(903,'en','publish_languages','Publish Languages','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(904,'en','translate_languages','Translate Languages','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(905,'en','payment_settings','Payment Settings','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(906,'en','social_login_settings','Social Login Settings','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(907,'en','order_reports','Order Reports','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(908,'en','product_sale_reports','Product Sale Reports','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(909,'en','category_sale_reports','Category Sale Reports','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(910,'en','sales_amount_reports','Sales Amount Reports','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(911,'en','delivery_status_reports','Delivery Status Reports','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(912,'en','manage_stock','Manage Stock','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(913,'en','show_locations','Show Locations','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(914,'en','edit_location','Edit Location','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(915,'en','publish_locations','Publish Locations','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(916,'en','rewards_and_wallet','Rewards And Wallet','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(917,'en','save_role','Save Role','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(918,'en','role_information','Role Information','2024-01-05 01:50:23','2024-01-05 01:50:23',NULL),
(919,'en','assign_driver','Assign Deliveryman','2024-01-05 09:10:30','2024-01-05 09:10:32',NULL),
(920,'en','assign_driver','Assign Driver','2024-01-05 02:10:37','2024-01-05 02:10:37',NULL),
(921,'en','assign_deliveryman','Assign Deliveryman','2024-01-05 02:11:41','2024-01-05 02:11:41',NULL),
(922,'en','please_login_as_customer_to_continue','Please login as customer to continue','2024-01-05 02:13:27','2024-01-05 02:13:27',NULL),
(923,'en','update_category','Update Category','2024-01-05 03:31:21','2024-01-05 03:31:21',NULL),
(924,'en','category_has_been_updated_successfully','Category has been updated successfully','2024-01-05 03:31:44','2024-01-05 03:31:44',NULL),
(925,'en','select_top_categories','Select Top Categories','2024-01-05 03:34:45','2024-01-05 03:34:45',NULL),
(926,'en','add_coupon','Add Coupon','2024-01-05 04:00:49','2024-01-05 04:00:49',NULL),
(927,'en','start_date','Start Date','2024-01-05 04:00:49','2024-01-05 04:00:49',NULL),
(928,'en','end_date','End Date','2024-01-05 04:00:49','2024-01-05 04:00:49',NULL);

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_published` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `locations` */

insert  into `locations`(`id`,`name`,`banner`,`address`,`latitude`,`longitude`,`is_default`,`is_published`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Default Location','','Default Address',NULL,NULL,1,1,'2023-03-27 06:54:01','2023-03-28 08:31:29',NULL);

/*Table structure for table `logistic_zone_cities` */

DROP TABLE IF EXISTS `logistic_zone_cities`;

CREATE TABLE `logistic_zone_cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logistic_id` int(11) NOT NULL,
  `logistic_zone_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `logistic_zone_cities` */

insert  into `logistic_zone_cities`(`id`,`logistic_id`,`logistic_zone_id`,`city_id`,`created_at`,`updated_at`,`deleted_at`) values 
(2,1,1,48362,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(3,1,1,48361,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(4,1,1,48360,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(5,1,1,48359,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(6,1,1,48358,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL),
(7,1,1,48357,'2024-01-04 04:14:36','2024-01-04 04:14:36',NULL);

/*Table structure for table `logistic_zones` */

DROP TABLE IF EXISTS `logistic_zones`;

CREATE TABLE `logistic_zones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistic_id` int(11) NOT NULL,
  `standard_delivery_charge` double NOT NULL DEFAULT 0,
  `express_delivery_charge` double NOT NULL DEFAULT 0,
  `standard_delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 - 3 days',
  `express_delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 day',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `logistic_zones` */

insert  into `logistic_zones`(`id`,`name`,`logistic_id`,`standard_delivery_charge`,`express_delivery_charge`,`standard_delivery_time`,`express_delivery_time`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Kantor Pusat',1,15000,0,'1 - 3 Days',NULL,'2024-01-04 04:05:49','2024-01-04 04:05:49',NULL);

/*Table structure for table `logistics` */

DROP TABLE IF EXISTS `logistics`;

CREATE TABLE `logistics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `logistics` */

insert  into `logistics`(`id`,`name`,`slug`,`thumbnail_image`,`is_published`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Internal','internal-hWQEt',NULL,1,'2024-01-04 03:58:23','2024-01-04 03:58:57',NULL),
(2,'Mitra','mitra-gcwia',NULL,1,'2024-01-04 03:58:30','2024-01-04 03:58:58',NULL);

/*Table structure for table `media_managers` */

DROP TABLE IF EXISTS `media_managers`;

CREATE TABLE `media_managers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `media_file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_size` int(11) DEFAULT NULL,
  `media_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'video / image / pdf / ...',
  `media_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `media_managers` */

insert  into `media_managers`(`id`,`user_id`,`media_file`,`media_size`,`media_type`,`media_name`,`media_extension`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'uploads/media/6AkCyw6sfJrIG2NR2MuAzGRtkA48Rmgj8ND2Hc1k.png',1916,'image','logo.png','png','2023-03-12 05:04:37','2023-03-12 05:04:37',NULL),
(2,1,'uploads/media/ZithHqXrynYP6nkIfU0ei7VtWRMvuObOGd0P2tdR.png',1055,'image','logo-white.png','png','2023-03-12 05:05:28','2023-03-12 05:05:28',NULL),
(3,1,'uploads/media/3WOll3QyXt5f9NNi22BRANFNCTNQRey75DYAOXd4.png',4430,'image','payments.png','png','2023-03-12 05:05:48','2023-03-12 05:05:48',NULL),
(4,1,'uploads/media/LOa3BqX3ydhVC0V1fwYEyvEpM5N9NaoA0E7u3EQs.png',1742,'image','logo.png','png','2023-03-12 05:07:45','2023-03-12 05:07:45',NULL),
(5,1,'uploads/media/yqqPV512Gk5DMpvCj2UllKrCl52bam3yD6QvfiPP.png',753,'image','favicon.png','png','2023-03-12 05:08:14','2023-03-12 05:08:14',NULL),
(6,1,'uploads/media/dtkoInw3SD3IF3Q2I1jFtEDiE96mDD46RHB9RdxN.jpg',6502,'image','1.jpg','jpg','2023-03-12 05:08:43','2023-03-12 05:08:43',NULL),
(7,1,'uploads/media/QbbbUYkaYnfPHnzRvsMvW4M1fn8YM5RwjLb1Qkp8.png',11489,'image','logoskinoasis-black.png','png','2024-01-04 03:48:57','2024-01-04 03:48:57',NULL),
(8,1,'uploads/media/jywT5tQSUKjm4jPZhJ56w4AJ2JlIyiNvd1XHnBAM.jpg',159830,'image','FPK202110086.jpg','jpg','2024-01-04 03:53:02','2024-01-04 03:53:02',NULL),
(9,1,'uploads/media/FhWxvFnxQvYXCHvx7XQ39afQBvMDTpqE4pQAWUB1.jpg',164674,'image','skincare-banner-design-template-3ab404c346bc8c951bf2c8b40236070c_screen.jpg','jpg','2024-01-04 04:12:28','2024-01-04 04:12:28',NULL),
(10,1,'uploads/media/GgHqW4apsDKVlhPqYI1SueNaO0bK1k6IvC5C41yM.png',16260,'image','essential-oil.png','png','2024-01-05 03:31:37','2024-01-05 03:31:37',NULL),
(11,1,'uploads/media/ZSE3Db2ahFHbmWlkOZGVXjGvNtc6dk45HgiToHqu.png',19980,'image','apple-touch-icon.png','png','2024-01-05 03:40:17','2024-01-05 03:40:17',NULL),
(12,1,'uploads/media/s6QNiUH6eI0QmPQgpUsk6EHevVY5tZhHDGogCvz4.png',30584,'image','android-chrome-192x192.png','png','2024-01-05 03:48:41','2024-01-05 03:48:41',NULL),
(13,1,'uploads/media/zzmTMExUnU8gmjmGnts20kLAtvCfZ7W1LoocmNKE.png',765,'image','favicon-16x16.png','png','2024-01-05 03:49:20','2024-01-05 03:49:20',NULL),
(14,1,'uploads/media/Iy3fORd5nyKFsutg6rGCZ3MPGqut39fYEIEfbYeC.png',2043,'image','favicon-32x32.png','png','2024-01-05 03:49:39','2024-01-05 03:49:39',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_10_31_050025_create_languages_table',1),
(6,'2022_10_31_050126_create_localizations_table',1),
(7,'2022_11_01_103504_create_brands_table',1),
(8,'2022_11_02_053600_create_brand_localizations_table',1),
(9,'2022_11_02_123335_create_units_table',1),
(10,'2022_11_02_123459_create_unit_localizations_table',1),
(11,'2022_11_05_052843_create_variations_table',1),
(12,'2022_11_05_054556_create_variation_values_table',1),
(13,'2022_11_05_054802_create_variation_localizations_table',1),
(14,'2022_11_05_060326_create_variation_value_localizations_table',1),
(15,'2022_11_05_094646_create_taxes_table',1),
(16,'2022_11_05_121337_create_shops_table',1),
(17,'2022_11_06_050339_create_coupons_table',1),
(18,'2022_11_06_050628_create_coupon_usages_table',1),
(19,'2022_11_06_073951_create_categories_table',1),
(20,'2022_11_06_074215_create_category_localizations_table',1),
(21,'2022_11_07_044613_create_category_brands_table',1),
(22,'2022_11_07_061318_create_tags_table',1),
(23,'2022_11_07_064323_create_blog_categories_table',1),
(24,'2022_11_07_085058_create_blogs_table',1),
(25,'2022_11_07_085227_create_blog_localizations_table',1),
(26,'2022_11_07_105203_create_blog_tags_table',1),
(27,'2022_11_09_050229_create_currencies_table',1),
(28,'2022_11_12_044845_create_system_settings_table',1),
(29,'2022_11_12_054927_create_products_table',1),
(30,'2022_11_12_055104_create_product_localizations_table',1),
(31,'2022_11_12_055551_create_product_categories_table',1),
(32,'2022_11_12_055602_create_product_taxes_table',1),
(33,'2022_11_12_055843_create_product_variations_table',1),
(34,'2022_11_12_055914_create_product_variation_stocks_table',1),
(35,'2022_11_12_055926_create_product_variation_combinations_table',1),
(36,'2022_11_12_055958_create_product_colors_table',1),
(37,'2022_11_16_063630_create_logistics_table',1),
(38,'2022_11_16_064842_create_logistic_zones_table',1),
(39,'2022_11_16_094759_create_subscribed_users_table',1),
(40,'2022_11_20_045224_create_campaigns_table',1),
(41,'2022_11_20_045328_create_campaign_products_table',1),
(42,'2022_11_20_085351_create_pages_table',1),
(43,'2022_11_20_085638_create_page_localizations_table',1),
(44,'2022_11_23_095815_create_countries_table',1),
(45,'2022_11_23_095827_create_states_table',1),
(46,'2022_11_23_095839_create_cities_table',1),
(47,'2022_11_27_080124_create_permission_tables',1),
(48,'2022_11_28_122043_create_logistic_zone_cities_table',1),
(49,'2022_12_13_051944_create_media_managers_table',1),
(50,'2023_01_24_084123_create_carts_table',1),
(51,'2023_01_31_051011_create_user_addresses_table',1),
(52,'2023_02_01_105413_create_order_groups_table',1),
(53,'2023_02_01_105521_create_orders_table',1),
(54,'2023_02_01_105530_create_order_items_table',1),
(55,'2023_02_07_111010_create_wishlists_table',1),
(56,'2023_02_08_054446_create_contact_us_messages_table',1),
(57,'2023_02_19_093630_create_order_updates_table',1),
(58,'2023_02_27_105939_create_product_tags_table',1),
(59,'2023_03_18_100524_create_scheduled_delivery_time_lists_table',1),
(60,'2023_03_27_054134_create_locations_table',1),
(61,'2023_04_09_035532_create_reward_points_table',1),
(62,'2023_04_09_041125_create_wallet_histories_table',1),
(63,'2023_04_09_091251_create_refunds_table',1),
(64,'2023_08_12_085802_add_column_to_roles_table',1);

/*Table structure for table `model_has_permissions` */

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_permissions` */

/*Table structure for table `model_has_roles` */

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_roles` */

insert  into `model_has_roles`(`role_id`,`model_type`,`model_id`) values 
(1,'App\\Models\\User',1);

/*Table structure for table `order_groups` */

DROP TABLE IF EXISTS `order_groups`;

CREATE TABLE `order_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `guest_user_id` int(11) DEFAULT NULL,
  `order_code` bigint(20) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total_amount` double NOT NULL DEFAULT 0,
  `total_tax_amount` double NOT NULL DEFAULT 0,
  `total_coupon_discount_amount` double NOT NULL DEFAULT 0,
  `total_shipping_cost` double NOT NULL DEFAULT 0,
  `grand_total_amount` double NOT NULL DEFAULT 0,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_manual_payment` tinyint(1) NOT NULL DEFAULT 0,
  `manual_payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pos_order` tinyint(4) NOT NULL DEFAULT 0,
  `pos_order_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_discount_value` double NOT NULL DEFAULT 0,
  `additional_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'flat',
  `total_discount_amount` double NOT NULL DEFAULT 0,
  `total_tips_amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_groups` */

insert  into `order_groups`(`id`,`user_id`,`guest_user_id`,`order_code`,`shipping_address_id`,`billing_address_id`,`location_id`,`phone_no`,`alternative_phone_no`,`sub_total_amount`,`total_tax_amount`,`total_coupon_discount_amount`,`total_shipping_cost`,`grand_total_amount`,`payment_method`,`payment_status`,`payment_details`,`is_manual_payment`,`manual_payment_details`,`is_pos_order`,`pos_order_address`,`additional_discount_value`,`additional_discount_type`,`total_discount_amount`,`total_tips_amount`,`created_at`,`updated_at`,`deleted_at`) values 
(1,2,NULL,1,1,1,1,'081398677844',NULL,150000,0,0,15000,165000,'cod','unpaid',NULL,0,NULL,0,NULL,0,'flat',0,0,'2024-01-04 04:17:34','2024-01-04 04:17:34',NULL);

/*Table structure for table `order_items` */

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_variation_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `location_id` int(11) DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `reward_points` bigint(20) NOT NULL DEFAULT 0,
  `is_refunded` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_items` */

insert  into `order_items`(`id`,`order_id`,`product_variation_id`,`qty`,`location_id`,`unit_price`,`total_tax`,`total_price`,`reward_points`,`is_refunded`,`created_at`,`updated_at`) values 
(1,1,1,1,1,150000,0,150000,0,0,'2024-01-04 04:17:34','2024-01-04 04:17:34');

/*Table structure for table `order_updates` */

DROP TABLE IF EXISTS `order_updates`;

CREATE TABLE `order_updates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_updates` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_group_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order_placed',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `applied_coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount_amount` double NOT NULL DEFAULT 0,
  `admin_earning_percentage` double NOT NULL DEFAULT 0 COMMENT 'how much in percentage seller will pay to admin for each sell',
  `total_admin_earnings` double NOT NULL DEFAULT 0,
  `total_vendor_earnings` double NOT NULL DEFAULT 0,
  `logistic_id` int(11) DEFAULT NULL,
  `logistic_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_or_delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `shipping_delivery_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular' COMMENT 'regular/scheduled',
  `scheduled_delivery_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'keep date & time',
  `pickup_hub_id` int(11) DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `tips_amount` double NOT NULL DEFAULT 0,
  `reward_points` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`order_group_id`,`shop_id`,`user_id`,`guest_user_id`,`location_id`,`delivery_status`,`payment_status`,`applied_coupon_code`,`coupon_discount_amount`,`admin_earning_percentage`,`total_admin_earnings`,`total_vendor_earnings`,`logistic_id`,`logistic_name`,`pickup_or_delivery`,`shipping_delivery_type`,`scheduled_delivery_info`,`pickup_hub_id`,`shipping_cost`,`tips_amount`,`reward_points`,`created_at`,`updated_at`) values 
(1,1,1,2,NULL,1,'order_placed','unpaid',NULL,0,0,165000,0,1,'Internal','delivery','regular',NULL,NULL,15000,0,0,'2024-01-04 04:17:34','2024-01-04 04:17:34');

/*Table structure for table `page_localizations` */

DROP TABLE IF EXISTS `page_localizations`;

CREATE TABLE `page_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `page_localizations` */

insert  into `page_localizations`(`id`,`page_id`,`title`,`content`,`lang_key`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'Terms & Conditions','<div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\"><span style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px; background-color: var(--bs-body-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to ThemeTags!</span><br></h2><p style=\"\">These terms and conditions outline the rules and regulations for the use of Themetags\'s Website, located at https://themetags.com/.</p><p style=\"\">By accessing this website we assume you accept these terms and conditions. Do not continue to use ThemeTags if you do not agree to take all of the terms and conditions stated on this page.</p><p class=\"mb-0\" style=\"\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Cookies</h2><p>We employ the use of cookies. By accessing ThemeTags, you agreed to use cookies in agreement with the Themetags\'s Privacy Policy.</p><p class=\"mb-0\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">License</h2><p>Unless otherwise stated, Themetags and/or its licensors own the intellectual property rights for all material on ThemeTags. All intellectual property rights are reserved. You may access this from ThemeTags for your own personal use subjected to restrictions set in these terms and conditions.</p><p>You must not:</p><ul class=\"mb-3\"><li>Republish material from ThemeTags</li><li>Sell, rent or sub-license material from ThemeTags</li><li>Reproduce, duplicate or copy material from ThemeTags</li><li>Redistribute content from ThemeTags</li></ul><p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Themetags does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Themetags,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Themetags shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p>Themetags reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p>You warrant and represent that:</p><ul class=\"mb-3\"><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p class=\"mb-0\">You hereby grant Themetags a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Hyperlinking to our Content</h2><p>The following organizations may link to our Website without prior written approval:</p><ul class=\"mb-3\"><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p>We may consider and approve other link requests from the following types of organizations:</p><ul class=\"mb-3\"><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Themetags; and (d) the link is in the context of general resource information.</p><p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Themetags. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p>Approved organizations may hyperlink to our Website as follows:</p><ul class=\"mb-3\"><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p>No use of Themetags\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">iFrames</h2><p class=\"mb-0\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Content Liability</h2><p class=\"mb-0\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Your Privacy</h2><p class=\"mb-0\">Please read Privacy Policy</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Reservation of Rights</h2><p class=\"mb-0\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Removal of links from our website</h2><p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p class=\"mb-0\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p></div><div class=\"content-group\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Disclaimer</h2><p style=\"\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"\"><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p class=\"mb-0\" style=\"\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p></div>','en','2023-02-16 06:28:22','2023-03-01 05:18:38',NULL);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`title`,`slug`,`content`,`meta_title`,`meta_image`,`meta_description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Terms & Conditions','terms-conditions','<div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\"><span style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px; background-color: var(--bs-body-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to ThemeTags!</span><br></h2><p style=\"\">These terms and conditions outline the rules and regulations for the use of Themetags\'s Website, located at https://themetags.com/.</p><p style=\"\">By accessing this website we assume you accept these terms and conditions. Do not continue to use ThemeTags if you do not agree to take all of the terms and conditions stated on this page.</p><p class=\"mb-0\" style=\"\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Cookies</h2><p>We employ the use of cookies. By accessing ThemeTags, you agreed to use cookies in agreement with the Themetags\'s Privacy Policy.</p><p class=\"mb-0\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">License</h2><p>Unless otherwise stated, Themetags and/or its licensors own the intellectual property rights for all material on ThemeTags. All intellectual property rights are reserved. You may access this from ThemeTags for your own personal use subjected to restrictions set in these terms and conditions.</p><p>You must not:</p><ul class=\"mb-3\"><li>Republish material from ThemeTags</li><li>Sell, rent or sub-license material from ThemeTags</li><li>Reproduce, duplicate or copy material from ThemeTags</li><li>Redistribute content from ThemeTags</li></ul><p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Themetags does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Themetags,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Themetags shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p>Themetags reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p>You warrant and represent that:</p><ul class=\"mb-3\"><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p class=\"mb-0\">You hereby grant Themetags a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Hyperlinking to our Content</h2><p>The following organizations may link to our Website without prior written approval:</p><ul class=\"mb-3\"><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p>We may consider and approve other link requests from the following types of organizations:</p><ul class=\"mb-3\"><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Themetags; and (d) the link is in the context of general resource information.</p><p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Themetags. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p>Approved organizations may hyperlink to our Website as follows:</p><ul class=\"mb-3\"><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p>No use of Themetags\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">iFrames</h2><p class=\"mb-0\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Content Liability</h2><p class=\"mb-0\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Your Privacy</h2><p class=\"mb-0\">Please read Privacy Policy</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Reservation of Rights</h2><p class=\"mb-0\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p></div><div class=\"mb-5\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Removal of links from our website</h2><p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p class=\"mb-0\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p></div><div class=\"content-group\" style=\"color: rgb(71, 85, 105); font-family: Jost, sans-serif; font-size: 15.008px;\"><h2 class=\"h5\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 65, 85); font-size: 1.1725rem;\">Disclaimer</h2><p style=\"\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"\"><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p class=\"mb-0\" style=\"\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p></div>','Quis ab ut officia b','30','Explicabo Consectet','2023-02-16 06:28:22','2023-03-01 05:18:38',NULL);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`group_name`,`guard_name`,`created_at`,`updated_at`) values 
(1,'dashboard','dashboard','web',NULL,NULL),
(2,'products','products','web',NULL,NULL),
(3,'add_products','products','web',NULL,NULL),
(4,'edit_products','products','web',NULL,NULL),
(5,'publish_products','products','web',NULL,NULL),
(6,'categories','categories','web',NULL,NULL),
(7,'add_categories','categories','web',NULL,NULL),
(8,'edit_categories','categories','web',NULL,NULL),
(9,'top_categories','categories','web',NULL,NULL),
(10,'delete_categories','categories','web',NULL,NULL),
(11,'variations','variations','web',NULL,NULL),
(12,'add_variations','variations','web',NULL,NULL),
(13,'edit_variations','variations','web',NULL,NULL),
(14,'publish_variations','variations','web',NULL,NULL),
(15,'variation_values','variations','web',NULL,NULL),
(16,'add_variation_values','variations','web',NULL,NULL),
(17,'edit_variation_values','variations','web',NULL,NULL),
(18,'publish_variation_values','variations','web',NULL,NULL),
(19,'brands','brands','web',NULL,NULL),
(20,'add_brands','brands','web',NULL,NULL),
(21,'edit_brands','brands','web',NULL,NULL),
(22,'publish_brands','brands','web',NULL,NULL),
(23,'delete_brands','brands','web',NULL,NULL),
(24,'units','units','web',NULL,NULL),
(25,'add_units','units','web',NULL,NULL),
(26,'edit_units','units','web',NULL,NULL),
(27,'publish_units','units','web',NULL,NULL),
(28,'delete_units','units','web',NULL,NULL),
(29,'taxes','taxes','web',NULL,NULL),
(30,'add_taxes','taxes','web',NULL,NULL),
(31,'edit_taxes','taxes','web',NULL,NULL),
(32,'publish_taxes','taxes','web',NULL,NULL),
(33,'delete_taxes','taxes','web',NULL,NULL),
(34,'orders','orders','web',NULL,NULL),
(35,'manage_orders','orders','web',NULL,NULL),
(36,'customers','customers','web',NULL,NULL),
(37,'ban_customers','customers','web',NULL,NULL),
(38,'staffs','staffs','web',NULL,NULL),
(39,'add_staffs','staffs','web',NULL,NULL),
(40,'edit_staffs','staffs','web',NULL,NULL),
(41,'delete_staffs','staffs','web',NULL,NULL),
(42,'tags','tags','web',NULL,NULL),
(43,'add_tags','tags','web',NULL,NULL),
(44,'edit_tags','tags','web',NULL,NULL),
(45,'delete_tags','tags','web',NULL,NULL),
(46,'pages','pages','web',NULL,NULL),
(47,'add_pages','pages','web',NULL,NULL),
(48,'edit_pages','pages','web',NULL,NULL),
(49,'delete_pages','pages','web',NULL,NULL),
(50,'blogs','blogs','web',NULL,NULL),
(51,'add_blogs','blogs','web',NULL,NULL),
(52,'edit_blogs','blogs','web',NULL,NULL),
(53,'publish_blogs','blogs','web',NULL,NULL),
(54,'delete_blogs','blogs','web',NULL,NULL),
(55,'blog_categories','blogs','web',NULL,NULL),
(56,'add_blog_categories','blogs','web',NULL,NULL),
(57,'edit_blog_categories','blogs','web',NULL,NULL),
(58,'delete_blog_categories','blogs','web',NULL,NULL),
(59,'media_manager','media_manager','web',NULL,NULL),
(60,'add_media','media_manager','web',NULL,NULL),
(61,'delete_media','media_manager','web',NULL,NULL),
(62,'newsletters','newsletters','web',NULL,NULL),
(63,'subscribers','newsletters','web',NULL,NULL),
(64,'delete_subscribers','newsletters','web',NULL,NULL),
(65,'coupons','coupons','web',NULL,NULL),
(66,'add_coupons','coupons','web',NULL,NULL),
(67,'edit_coupons','coupons','web',NULL,NULL),
(68,'delete_coupons','coupons','web',NULL,NULL),
(69,'campaigns','campaigns','web',NULL,NULL),
(70,'add_campaigns','campaigns','web',NULL,NULL),
(71,'edit_campaigns','campaigns','web',NULL,NULL),
(72,'publish_campaigns','campaigns','web',NULL,NULL),
(73,'delete_campaigns','campaigns','web',NULL,NULL),
(74,'logistics','fulfillment','web',NULL,NULL),
(75,'add_logistics','fulfillment','web',NULL,NULL),
(76,'edit_logistics','fulfillment','web',NULL,NULL),
(77,'publish_logistics','fulfillment','web',NULL,NULL),
(78,'delete_logistics','fulfillment','web',NULL,NULL),
(79,'shipping_zones','fulfillment','web',NULL,NULL),
(80,'add_shipping_zones','fulfillment','web',NULL,NULL),
(81,'edit_shipping_zones','fulfillment','web',NULL,NULL),
(82,'delete_shipping_zones','fulfillment','web',NULL,NULL),
(83,'shipping_cities','fulfillment','web',NULL,NULL),
(84,'add_shipping_cities','fulfillment','web',NULL,NULL),
(85,'edit_shipping_cities','fulfillment','web',NULL,NULL),
(86,'publish_shipping_cities','fulfillment','web',NULL,NULL),
(87,'shipping_states','fulfillment','web',NULL,NULL),
(88,'add_shipping_states','fulfillment','web',NULL,NULL),
(89,'edit_shipping_states','fulfillment','web',NULL,NULL),
(90,'publish_shipping_states','fulfillment','web',NULL,NULL),
(91,'shipping_countries','fulfillment','web',NULL,NULL),
(92,'publish_shipping_countries','fulfillment','web',NULL,NULL),
(93,'contact_us_messages','contact_us_messages','web',NULL,NULL),
(94,'homepage','appearance','web',NULL,NULL),
(95,'product_page','appearance','web',NULL,NULL),
(96,'product_details_page','appearance','web',NULL,NULL),
(97,'about_us_page','appearance','web',NULL,NULL),
(98,'header','appearance','web',NULL,NULL),
(99,'footer','appearance','web',NULL,NULL),
(100,'roles_and_permissions','roles_and_permissions','web',NULL,NULL),
(101,'add_roles_and_permissions','roles_and_permissions','web',NULL,NULL),
(102,'edit_roles_and_permissions','roles_and_permissions','web',NULL,NULL),
(103,'delete_roles_and_permissions','roles_and_permissions','web',NULL,NULL),
(104,'smtp_settings','system_settings','web',NULL,NULL),
(105,'general_settings','system_settings','web',NULL,NULL),
(106,'currency_settings','system_settings','web',NULL,NULL),
(107,'add_currency','system_settings','web',NULL,NULL),
(108,'edit_currency','system_settings','web',NULL,NULL),
(109,'publish_currency','system_settings','web',NULL,NULL),
(110,'language_settings','system_settings','web',NULL,NULL),
(111,'add_languages','system_settings','web',NULL,NULL),
(112,'edit_languages','system_settings','web',NULL,NULL),
(113,'publish_languages','system_settings','web',NULL,NULL),
(114,'translate_languages','system_settings','web',NULL,NULL),
(115,'order_settings','system_settings','web',NULL,NULL),
(116,'payment_settings','system_settings','web',NULL,NULL),
(117,'order_reports','reports','web',NULL,NULL),
(118,'product_sale_reports','reports','web',NULL,NULL),
(119,'category_sale_reports','reports','web',NULL,NULL),
(120,'sales_amount_reports','reports','web',NULL,NULL),
(121,'delivery_status_reports','reports','web',NULL,NULL),
(122,'default_language','system_settings','web',NULL,NULL),
(123,'default_currency','system_settings','web',NULL,NULL),
(124,'add_stock','manage_stock','web',NULL,NULL),
(125,'show_locations','manage_stock','web',NULL,NULL),
(126,'add_location','manage_stock','web',NULL,NULL),
(127,'edit_location','manage_stock','web',NULL,NULL),
(128,'publish_locations','manage_stock','web',NULL,NULL),
(129,'pos','pos','web',NULL,NULL),
(130,'social_login_settings','system_settings','web',NULL,NULL),
(131,'auth_settings','system_settings','web',NULL,NULL),
(132,'otp_settings','system_settings','web',NULL,NULL),
(133,'reward_configurations','rewards_and_wallet','web',NULL,NULL),
(134,'set_reward_points','rewards_and_wallet','web',NULL,NULL),
(135,'wallet_configurations','rewards_and_wallet','web',NULL,NULL),
(136,'refund_configurations','refunds','web',NULL,NULL),
(137,'refund_requests','refunds','web',NULL,NULL),
(138,'approved_refunds','refunds','web',NULL,NULL),
(139,'rejected_refunds','refunds','web',NULL,NULL),
(140,'own_staff','staffs','web',NULL,NULL),
(141,'delete_variations','variations','web',NULL,NULL);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `product_categories` */

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_categories` */

insert  into `product_categories`(`id`,`product_id`,`category_id`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,NULL,NULL,NULL);

/*Table structure for table `product_colors` */

DROP TABLE IF EXISTS `product_colors`;

CREATE TABLE `product_colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variation_value_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_colors` */

/*Table structure for table `product_localizations` */

DROP TABLE IF EXISTS `product_localizations`;

CREATE TABLE `product_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_localizations` */

insert  into `product_localizations`(`id`,`product_id`,`name`,`short_description`,`description`,`lang_key`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'Tonic 50ML',NULL,'<p>Tonic Ini berukuran 50ML cocok untuk kulit anda menjadi glowing<br></p>','id','2024-01-04 03:54:53','2024-01-04 03:54:53',NULL);

/*Table structure for table `product_tags` */

DROP TABLE IF EXISTS `product_tags`;

CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

/*Table structure for table `product_taxes` */

DROP TABLE IF EXISTS `product_taxes`;

CREATE TABLE `product_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax_value` double NOT NULL DEFAULT 0,
  `tax_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount' COMMENT 'flat / percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_taxes` */

/*Table structure for table `product_variation_combinations` */

DROP TABLE IF EXISTS `product_variation_combinations`;

CREATE TABLE `product_variation_combinations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_variation_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  `variation_value_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_variation_combinations` */

/*Table structure for table `product_variation_stocks` */

DROP TABLE IF EXISTS `product_variation_stocks`;

CREATE TABLE `product_variation_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_variation_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL COMMENT 'warehouse/location',
  `stock_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_variation_stocks` */

insert  into `product_variation_stocks`(`id`,`product_variation_id`,`location_id`,`stock_qty`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,99,'2024-01-04 03:54:53','2024-01-04 04:17:34',NULL);

/*Table structure for table `product_variations` */

DROP TABLE IF EXISTS `product_variations`;

CREATE TABLE `product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variation_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_variations` */

insert  into `product_variations`(`id`,`product_id`,`variation_key`,`sku`,`code`,`price`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,'1234577','TONIC1234',150000,'2024-01-04 03:54:53','2024-01-04 03:54:53',NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tags` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double NOT NULL DEFAULT 0,
  `max_price` double NOT NULL DEFAULT 0,
  `discount_value` double NOT NULL DEFAULT 0,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_start_date` int(11) DEFAULT NULL,
  `discount_end_date` int(11) DEFAULT NULL,
  `sell_target` int(11) DEFAULT NULL,
  `stock_qty` int(11) NOT NULL DEFAULT 0,
  `is_published` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `min_purchase_qty` int(11) NOT NULL DEFAULT 1,
  `max_purchase_qty` int(11) NOT NULL DEFAULT 1,
  `has_variation` tinyint(4) NOT NULL DEFAULT 1,
  `has_warranty` tinyint(4) NOT NULL DEFAULT 1,
  `total_sale_count` double NOT NULL DEFAULT 0,
  `standard_delivery_hours` int(11) NOT NULL DEFAULT 24,
  `express_delivery_hours` int(11) NOT NULL DEFAULT 24,
  `size_guide` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_points` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`shop_id`,`added_by`,`name`,`slug`,`brand_id`,`unit_id`,`thumbnail_image`,`gallery_images`,`product_tags`,`short_description`,`description`,`min_price`,`max_price`,`discount_value`,`discount_type`,`discount_start_date`,`discount_end_date`,`sell_target`,`stock_qty`,`is_published`,`is_featured`,`min_purchase_qty`,`max_purchase_qty`,`has_variation`,`has_warranty`,`total_sale_count`,`standard_delivery_hours`,`express_delivery_hours`,`size_guide`,`meta_title`,`meta_description`,`meta_img`,`reward_points`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'admin','Tonic 50ML','tonic-50ml-yln24',1,1,'8','8',NULL,'Tonic Ini berukuran 50ML','<p>Tonic Ini berukuran 50ML cocok untuk kulit anda menjadi glowing<br></p>',150000,150000,0,'percent',NULL,NULL,NULL,99,1,0,1,10,0,1,1,72,24,NULL,'Tonic SkinOasis','Tonic SkinOasis',NULL,0,'2024-01-04 03:54:53','2024-01-04 04:17:34',NULL);

/*Table structure for table `refunds` */

DROP TABLE IF EXISTS `refunds`;

CREATE TABLE `refunds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_group_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_reject_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'refunded/rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `refunds` */

/*Table structure for table `reward_points` */

DROP TABLE IF EXISTS `reward_points`;

CREATE TABLE `reward_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_group_id` bigint(20) NOT NULL,
  `total_points` bigint(20) NOT NULL DEFAULT 0,
  `is_converted` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reward_points` */

/*Table structure for table `role_has_permissions` */

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_has_permissions` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`guard_name`,`created_at`,`updated_at`,`is_system`,`is_active`,`created_by`,`updated_by`,`is_delete`) values 
(1,'Super Admin','web',NULL,NULL,0,1,NULL,NULL,1);

/*Table structure for table `scheduled_delivery_time_lists` */

DROP TABLE IF EXISTS `scheduled_delivery_time_lists`;

CREATE TABLE `scheduled_delivery_time_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timeline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorting_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `scheduled_delivery_time_lists` */

/*Table structure for table `shops` */

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT 0,
  `is_verified_by_admin` tinyint(4) NOT NULL DEFAULT 0,
  `is_published` tinyint(4) NOT NULL DEFAULT 0,
  `shop_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_rating` double NOT NULL DEFAULT 0,
  `shop_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order_amount` double NOT NULL DEFAULT 0,
  `admin_commission_percentage` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `is_cash_payout` tinyint(4) NOT NULL DEFAULT 0,
  `is_bank_payout` tinyint(4) NOT NULL DEFAULT 0,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `shops` */

insert  into `shops`(`id`,`user_id`,`is_approved`,`is_verified_by_admin`,`is_published`,`shop_logo`,`shop_name`,`slug`,`shop_rating`,`shop_address`,`min_order_amount`,`admin_commission_percentage`,`current_balance`,`is_cash_payout`,`is_bank_payout`,`bank_name`,`bank_acc_name`,`bank_acc_no`,`bank_routing_no`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,1,1,NULL,'Admin Shop','admin-shop',5,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `states` */

insert  into `states`(`id`,`country_id`,`name`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(4122,102,'DKI Jakarta',1,'2024-01-04 04:04:12','2024-01-04 04:04:12',NULL);

/*Table structure for table `subscribed_users` */

DROP TABLE IF EXISTS `subscribed_users`;

CREATE TABLE `subscribed_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `subscribed_users` */

/*Table structure for table `system_settings` */

DROP TABLE IF EXISTS `system_settings`;

CREATE TABLE `system_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `system_settings` */

insert  into `system_settings`(`id`,`entity`,`value`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'google_login','0','2022-12-07 06:33:40','2022-12-07 06:33:41',NULL),
(2,'default_currency','idr','2022-12-07 06:55:08','2022-12-07 06:55:08',NULL),
(3,'no_of_decimals','2','2022-12-07 06:55:08','2022-12-07 06:55:08',NULL),
(4,'truncate_price','0','2022-12-07 06:55:08','2022-12-07 06:55:08',NULL),
(5,'enable_multi_vendor','0','2022-12-25 06:00:08','2023-02-18 08:56:54',NULL),
(6,'default_admin_commission','5','2022-12-25 06:00:08','2022-12-25 06:00:08',NULL),
(7,'vendor_minimum_payout','500','2022-12-28 06:34:48','2022-12-28 06:34:48',NULL),
(8,'order_code_prefix','#G-Store:','2023-02-04 06:48:17','2023-02-19 08:42:24',NULL),
(9,'order_code_start','1','2023-02-04 06:48:17','2023-02-04 06:51:38',NULL),
(10,'system_title','SKINOASIS','2023-02-05 06:48:44','2024-01-04 03:40:44',NULL),
(11,'title_separator','-','2023-02-05 06:48:44','2024-01-04 03:40:44',NULL),
(12,'site_address',NULL,'2023-02-05 06:49:15','2024-01-04 03:40:44',NULL),
(13,'registration_with','email','2023-02-18 09:10:22','2023-02-18 09:10:22',NULL),
(14,'registration_verification_with','disable','2023-02-18 09:10:22','2023-02-18 09:10:22',NULL),
(15,'topbar_welcome_text','Welcome to our Organic store','2023-02-20 06:41:46','2023-02-20 06:41:46',NULL),
(16,'topbar_email','groshop@support.com','2023-02-20 06:41:46','2023-02-20 06:41:46',NULL),
(17,'topbar_location','Washington, New York, USA - 254230','2023-02-20 06:41:46','2023-02-20 06:41:46',NULL),
(18,'navbar_logo','1','2023-02-20 06:41:46','2023-03-12 05:04:45',NULL),
(19,'navbar_categories','[\"1\"]','2023-02-20 06:41:46','2024-01-04 04:27:27',NULL),
(20,'navbar_pages','[\"1\"]','2023-02-20 06:41:47','2023-03-01 09:32:34',NULL),
(21,'navbar_contact_number','+80 157 058 4567','2023-02-20 06:41:47','2023-02-20 06:41:47',NULL),
(22,'hero_sliders','[{\"id\":106549,\"sub_title\":\"-\",\"title\":\"Skin Care Made With The World\\u2019s Finest Plant Oils and Absolutely\",\"text\":\"Skin Care Made With The World\\u2019s Finest Plant Oils and Absolutely\",\"image\":\"9\",\"link\":null}]','2023-02-20 11:36:00','2024-01-04 04:12:39',NULL),
(24,'top_category_ids','[\"1\"]','2023-02-25 09:29:10','2024-01-05 03:34:49',NULL),
(25,'featured_sub_title','Platform mindshare through effective infomediaries Dynamically implement.','2023-02-25 10:18:46','2023-02-25 10:18:46',NULL),
(26,'featured_products_left','[\"1\",\"2\",\"5\"]','2023-02-25 10:18:46','2023-02-26 04:38:23',NULL),
(27,'featured_products_right','[\"2\",\"3\",\"4\"]','2023-02-25 10:18:46','2023-02-25 12:53:03',NULL),
(28,'featured_center_banner','','2023-02-25 10:18:46','2023-02-25 11:01:42',NULL),
(29,'featured_banner_link','http://enmart.work/products','2023-02-25 10:23:47','2023-02-25 10:23:47',NULL),
(30,'trending_product_categories','[\"5\",\"4\",\"3\"]','2023-02-26 05:35:01','2023-02-26 05:35:01',NULL),
(31,'top_trending_products','[\"1\",\"2\",\"3\",\"4\",\"5\"]','2023-02-26 05:35:01','2023-03-08 12:10:00',NULL),
(32,'banner_section_one_banners','[]','2023-02-26 06:44:06','2023-03-12 04:54:15',NULL),
(33,'best_deal_end_date','03/31/2023','2023-02-26 09:38:19','2023-02-26 09:44:19',NULL),
(34,'weekly_best_deals','[\"1\",\"2\",\"4\",\"5\"]','2023-02-26 09:38:19','2023-02-26 09:53:35',NULL),
(35,'best_deal_banner','','2023-02-26 09:38:19','2023-02-26 09:38:19',NULL),
(36,'best_deal_banner_link',NULL,'2023-02-26 09:38:19','2023-02-26 09:38:19',NULL),
(37,'banner_section_two_banner_one_link',NULL,'2023-02-26 10:11:59','2023-02-26 10:11:59',NULL),
(38,'banner_section_two_banner_one','49','2023-02-26 10:11:59','2023-02-26 10:11:59',NULL),
(39,'banner_section_two_banner_two_link',NULL,'2023-02-26 10:11:59','2023-02-26 10:11:59',NULL),
(40,'banner_section_two_banner_two','50','2023-02-26 10:11:59','2023-02-26 10:11:59',NULL),
(41,'client_feedback','[]','2023-02-26 13:16:47','2023-03-12 04:54:40',NULL),
(42,'best_selling_products','[\"1\",\"2\",\"3\"]','2023-02-27 06:01:19','2023-02-27 06:01:19',NULL),
(43,'best_selling_banner','','2023-02-27 06:01:19','2023-02-27 06:11:30',NULL),
(44,'best_selling_banner_link',NULL,'2023-02-27 06:01:19','2023-02-27 06:01:19',NULL),
(45,'product_listing_categories','[\"1\"]','2023-02-27 06:47:35','2024-01-04 04:28:53',NULL),
(46,'footer_categories',NULL,'2023-03-01 04:33:33','2023-03-12 04:59:31',NULL),
(47,'quick_links',NULL,'2023-03-01 04:33:33','2024-01-04 04:27:02',NULL),
(48,'footer_logo','2','2023-03-01 04:33:33','2023-03-12 05:05:55',NULL),
(49,'accepted_payment_banner','3','2023-03-01 04:33:33','2023-03-12 05:05:55',NULL),
(50,'copyright_text','© All Designed, Developed and ? by10','2023-03-01 04:49:42','2024-01-04 04:27:02',NULL),
(51,'product_page_widgets','[]','2023-03-01 08:35:08','2023-03-12 04:56:25',NULL),
(52,'product_page_banner_link',NULL,'2023-03-01 09:20:50','2023-03-01 09:20:50',NULL),
(53,'product_page_banner','59','2023-03-01 09:20:50','2023-03-01 09:20:50',NULL),
(54,'facebook_link','https://www.facebook.com/','2023-03-01 09:45:01','2023-03-01 09:45:01',NULL),
(55,'twitter_link','https://twitter.com/','2023-03-01 09:45:01','2023-03-01 09:45:01',NULL),
(56,'linkedin_link','https://www.linkedin.com/','2023-03-01 09:45:01','2023-03-01 09:45:01',NULL),
(57,'youtube_link','https://www.youtube.com/','2023-03-01 09:45:01','2023-03-01 09:45:01',NULL),
(58,'about_us','Explain to you how all this mistaken denouncing pleasure and praising pain was born and we will give you a complete account of the system, and expound the actual teachings.\r\n          \r\n          Mistaken denouncing pleasure and praising pain was born and we will give you complete account of the system expound.','2023-03-01 09:46:33','2023-03-01 09:46:33',NULL),
(59,'about_intro_sub_title','100% Organic Food Provide','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(60,'about_intro_title','Be healthy & <br> eat fresh organic food','2023-03-04 04:54:12','2023-03-11 05:49:49',NULL),
(61,'about_intro_text','Assertively target market lorem ipsum is simply free text available dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor incididunt simply freeutation labore et dolore.','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(62,'about_intro_mission','Continually transform virtual meta- methodologies. leverage existing alignments.','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(63,'about_intro_vision','Continually transform virtual meta- methodologies. leverage existing alignments.','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(64,'about_intro_quote','Assertively target market Lorem ipsum is simply free consectetur notted elit sed do eiusmod','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(65,'about_intro_quote_by','George Scholll','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(66,'about_intro_image','60','2023-03-04 04:54:12','2023-03-04 04:54:12',NULL),
(67,'about_popular_brand_ids','[\"1\",\"2\"]','2023-03-04 05:16:59','2023-03-04 05:16:59',NULL),
(68,'about_features_title','Our Working Ability','2023-03-04 05:49:27','2023-03-04 05:49:27',NULL),
(69,'about_features_sub_title','Assertively target market lorem ipsum is simply free text available dolor incididunt simply free ut labore et dolore.','2023-03-04 05:49:27','2023-03-04 05:49:27',NULL),
(70,'about_us_features','[]','2023-03-04 05:59:50','2023-03-12 04:57:12',NULL),
(71,'about_why_choose_sub_title','Why Choose Us','2023-03-04 06:59:45','2023-03-04 06:59:45',NULL),
(72,'about_why_choose_title','We do not Buy from the <br> Open Market','2023-03-04 06:59:45','2023-03-04 06:59:45',NULL),
(73,'about_why_choose_text','Compellingly fashion intermandated opportunities and multimedia based fnsparent e-business.','2023-03-04 06:59:45','2023-03-04 06:59:45',NULL),
(74,'about_why_choose_banner','62','2023-03-04 06:59:45','2023-03-04 06:59:45',NULL),
(75,'about_us_why_choose_us','[]','2023-03-04 07:05:13','2023-03-12 04:57:43',NULL),
(76,'admin_panel_logo','14','2023-03-04 09:37:03','2024-01-05 03:49:54',NULL),
(77,'favicon',NULL,'2023-03-04 09:37:03','2024-01-05 03:40:56',NULL),
(78,'invoice_thanksgiving','Thank you for shopping from our store and for your order. it is really awesome to have you as one of our paid users. We hope that you will be happy with Qlearly, if you ever have any questions, suggestions or concerns please do not hesitate to contact us.','2023-03-07 07:04:15','2023-03-07 07:09:20',NULL),
(79,'enable_maintenance_mode','0','2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(80,'global_meta_title',NULL,'2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(81,'global_meta_description',NULL,'2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(82,'global_meta_keywords',NULL,'2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(83,'global_meta_image',NULL,'2024-01-04 03:40:44','2024-01-04 03:40:44',NULL),
(84,'enable_cod','1','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(85,'enable_paypal','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(86,'paypal_sandbox','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(87,'enable_stripe','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(88,'enable_paytm','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(89,'enable_razorpay','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(90,'enable_iyzico','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(91,'iyzico_sandbox','0','2024-01-04 04:17:01','2024-01-04 04:17:01',NULL),
(92,'enable_wallet_checkout','1','2024-01-04 04:24:12','2024-01-04 04:24:12',NULL),
(93,'show_navbar_categories','1','2024-01-04 04:27:27','2024-01-04 04:27:27',NULL),
(94,'header_menu_labels',NULL,'2024-01-04 04:27:27','2024-01-04 04:27:27',NULL),
(95,'header_menu_links',NULL,'2024-01-04 04:27:27','2024-01-04 04:27:27',NULL),
(96,'show_navbar_pages','0','2024-01-04 04:27:27','2024-01-04 04:27:27',NULL);

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

/*Table structure for table `taxes` */

DROP TABLE IF EXISTS `taxes`;

CREATE TABLE `taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `taxes` */

/*Table structure for table `unit_localizations` */

DROP TABLE IF EXISTS `unit_localizations`;

CREATE TABLE `unit_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `unit_localizations` */

insert  into `unit_localizations`(`id`,`unit_id`,`lang_key`,`name`,`created_at`,`updated_at`,`deleted_at`) values 
(1,3,'id','Babi','2024-01-04 03:47:18','2024-01-04 03:47:18',NULL);

/*Table structure for table `units` */

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `units` */

insert  into `units`(`id`,`name`,`slug`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'PCS','PCS-2s1RC',1,'2024-01-04 03:44:47','2024-01-04 03:44:47',NULL),
(2,'Botol','Botol-zN007',1,'2024-01-04 03:45:28','2024-01-04 03:45:28',NULL);

/*Table structure for table `user_addresses` */

DROP TABLE IF EXISTS `user_addresses`;

CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'only one can be default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_addresses` */

insert  into `user_addresses`(`id`,`user_id`,`country_id`,`state_id`,`city_id`,`address`,`is_default`,`created_at`,`updated_at`,`deleted_at`) values 
(1,2,102,4122,48358,'Jalan Ampera Raya gang Sawo Jakarta Selatan',1,'2024-01-04 04:13:44','2024-01-04 04:13:44',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_or_otp_verified` tinyint(4) NOT NULL DEFAULT 0,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email_verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_balance` double NOT NULL DEFAULT 0,
  `is_banned` tinyint(4) NOT NULL DEFAULT 0,
  `shop_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`user_type`,`name`,`email`,`phone`,`email_or_otp_verified`,`verification_code`,`new_email_verification_code`,`password`,`remember_token`,`provider_id`,`avatar`,`postal_code`,`user_balance`,`is_banned`,`shop_id`,`email_verified_at`,`created_at`,`updated_at`,`deleted_at`,`created_by`,`updated_by`) values 
(1,NULL,'admin','Richard Toland','admin@themetags.com',NULL,0,NULL,NULL,'$2y$10$uVEzoiGorF6ZZExpppaz0O1CDLQCtLMzrYosBBwtJxDdqTWOuBhZ6',NULL,NULL,'6',NULL,0,0,1,NULL,NULL,'2023-03-12 05:32:38',NULL,NULL,NULL),
(2,NULL,'customer','Nuryanto Wahyudi','nuryantowahyudi8@gmail.com','081398677844',1,NULL,NULL,'$2y$10$sp554tm3Uxx/hubWvxYOEuYiM0082SqoaVVx0PFVddGqWGWTGgA7m',NULL,NULL,NULL,NULL,0,0,NULL,'2024-01-04 04:13:18','2024-01-04 04:13:18','2024-01-04 04:13:18',NULL,NULL,NULL);

/*Table structure for table `variation_localizations` */

DROP TABLE IF EXISTS `variation_localizations`;

CREATE TABLE `variation_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variation_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variation_localizations` */

/*Table structure for table `variation_value_localizations` */

DROP TABLE IF EXISTS `variation_value_localizations`;

CREATE TABLE `variation_value_localizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variation_value_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variation_value_localizations` */

/*Table structure for table `variation_values` */

DROP TABLE IF EXISTS `variation_values`;

CREATE TABLE `variation_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variation_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'only for colors',
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'only for colors',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variation_values` */

/*Table structure for table `variations` */

DROP TABLE IF EXISTS `variations`;

CREATE TABLE `variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variations` */

insert  into `variations`(`id`,`name`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Size',1,'2022-12-05 13:06:30','2022-12-05 13:06:30',NULL),
(2,'Color',1,'2022-12-05 13:06:30','2022-12-05 13:06:30',NULL);

/*Table structure for table `wallet_histories` */

DROP TABLE IF EXISTS `wallet_histories`;

CREATE TABLE `wallet_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'added' COMMENT 'added/pending/cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wallet_histories` */

/*Table structure for table `wishlists` */

DROP TABLE IF EXISTS `wishlists`;

CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wishlists` */

insert  into `wishlists`(`id`,`product_id`,`user_id`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,2,'2024-01-04 04:25:21','2024-01-04 04:25:21',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
