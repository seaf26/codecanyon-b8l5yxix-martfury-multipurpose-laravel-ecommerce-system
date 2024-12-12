-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'RLMtiHkxXJE8Fh7KTRppRIXO54rfM1KO',1,'2022-11-13 00:52:06','2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-11-13 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,'Top Slider Image 2','2027-11-13 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(3,'Homepage middle 1','2027-11-13 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(4,'Homepage middle 2','2027-11-13 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(5,'Homepage middle 3','2027-11-13 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(6,'Homepage big 1','2027-11-13 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(7,'Homepage bottom small','2027-11-13 00:00:00','not_set','K08OCWKZKMGJ','promotion/7.jpg','/products',0,7,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(8,'Product sidebar','2027-11-13 00:00:00','product-sidebar','QP6WD3EXFJNR','promotion/8.jpg','/products',0,8,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(9,'Homepage big 2','2027-11-13 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Tempora fugit eius rerum accusamus. Sapiente repudiandae iusto quaerat dolor consequatur laudantium maxime. Facilis dolores quibusdam dignissimos rem rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(2,'Fashion',0,'Quis illo perspiciatis saepe magnam est cupiditate ipsam. Et omnis et deserunt dolorem quis nihil.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(3,'Electronic',0,'Est reprehenderit occaecati aliquid et autem dolor. Quidem similique necessitatibus culpa id ex debitis cum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(4,'Commercial',0,'Iure magni ut asperiores accusamus illum consequuntur. A accusantium sequi dolores dolores ut. A voluptate eius et quo est numquam. Provident eos odit tenetur soluta.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-13 00:52:04','2022-11-13 00:52:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Norene Olson','champlin.jermey@example.com','1-551-434-8189','50561 Nat Parkway Apt. 469\nLake Marisaborough, MN 53094','Sit debitis qui quia et sapiente unde.','Dicta at sunt alias consequatur similique quibusdam. Et voluptatum perferendis nostrum omnis nisi et. Illum est cum ipsum veniam earum consequatur qui. Temporibus necessitatibus nam est ratione dolorem non. Consequatur natus et quo perferendis ducimus et. Ipsam temporibus quidem omnis explicabo eius. Veritatis unde et perferendis natus id veniam rerum. Autem fuga sapiente qui necessitatibus autem perspiciatis dignissimos. Quo maiores sit et aut.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(2,'Thora Klein','mabelle30@example.com','252-212-3658','602 Reilly Land Suite 989\nNorth Dulce, KY 05406-9879','Quaerat aut cumque officia.','Aut repellendus autem autem quae expedita sit eos. Assumenda sunt velit ipsa et enim id eum. Necessitatibus nostrum tempore accusantium et. Provident esse temporibus voluptatem autem laboriosam odio. Eum provident adipisci officiis in. Saepe voluptas dignissimos blanditiis asperiores quisquam. Eum ea hic rerum maxime eligendi omnis dolorum nemo. Earum accusantium natus at sapiente esse quo. Et tempora nemo et reprehenderit. Illo ducimus quas voluptatem voluptate doloremque voluptate tenetur.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(3,'Soledad Hane','elaina.price@example.com','680-780-2856','76767 Bechtelar Road\nWest Joanny, KY 67459-3745','Neque necessitatibus et est assumenda iure.','Et rerum optio sequi ex. Laboriosam rerum et inventore illo consectetur aliquam recusandae. Vel laborum assumenda mollitia ut. Et ipsa temporibus enim est. Enim voluptas impedit eos incidunt ut possimus facilis. Possimus facere sed voluptas molestiae et aliquid. Aut ut minus esse provident excepturi in dignissimos excepturi. Fugiat non expedita quis nulla deserunt. Odio qui rem at inventore non culpa soluta. Voluptate id consequatur nesciunt cumque ducimus similique nulla.','read','2022-11-13 00:52:03','2022-11-13 00:52:03'),(4,'Arvid Haley','justine.fisher@example.com','(269) 850-1666','381 Treutel Cape Suite 215\nSouth Clare, ME 94113-1460','Soluta et voluptatem nulla a a ea.','Sit iste voluptas numquam qui. Alias nihil quaerat omnis amet eveniet quas. Ut aut aut nihil quia fuga rem sunt ex. Excepturi ipsa enim nulla sunt deserunt. Officiis harum esse facere sit debitis est asperiores. Aut doloribus qui perferendis eum quaerat debitis quisquam eveniet. Eos est et quod facilis incidunt. Aut voluptatibus explicabo debitis ad odio cum fuga. Error nam iste atque. Est architecto quaerat alias sunt est cupiditate.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(5,'Mr. Monty Donnelly PhD','fritsch.treva@example.org','(229) 969-7427','552 Stokes Lock\nSouth Kadinstad, CT 96771-4802','Officia eaque quae delectus et excepturi.','Ipsa recusandae dolores magnam quod nobis. Consequatur rerum aperiam excepturi tenetur aut. Eos et consequatur voluptatem iure. Saepe voluptate quo eaque odio. Quos temporibus provident deserunt voluptatem sapiente autem. Praesentium accusamus omnis autem expedita similique. Quaerat animi aut adipisci expedita doloribus et natus. Perspiciatis dolorum accusamus possimus autem harum fuga ut. Delectus rerum et alias aspernatur. Voluptate distinctio facilis nulla sunt voluptatem.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(6,'Jaqueline Schimmel','lexus.west@example.org','586.915.9773','93664 Bayer Villages\nNorth Myrlbury, AR 38817-2524','Officia eaque maxime molestiae.','Maxime voluptatibus et et ducimus vitae. Incidunt dolorem culpa sed qui quidem occaecati qui amet. Qui qui dolore voluptas ut. Eos quis animi et odio dicta. Et eaque blanditiis fugiat ipsam est. Voluptas possimus reiciendis alias qui ex deserunt. Ex consequuntur commodi ut quasi ratione error beatae. Eaque saepe dolor sint et explicabo reiciendis.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(7,'Wendy Walter','friesen.isabel@example.com','630-931-5530','853 Terry Valleys\nMarilynebury, OH 65946','Neque eveniet debitis optio velit.','Praesentium est dignissimos vel optio. Est sunt similique non voluptatibus dignissimos odit. Molestiae iste accusantium dolores quas earum voluptates. Aut placeat quo numquam odit. Molestias eaque suscipit quis accusamus totam voluptatem. Impedit quo et sunt illum excepturi qui enim. Facere ut asperiores libero temporibus qui. Adipisci ullam dolorum et et et vero id. Molestiae reiciendis incidunt dolorem saepe. Quisquam nam omnis aut accusantium similique.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03'),(8,'Alysha Herzog','reid.bechtelar@example.org','+1.838.205.8023','72069 Stan Fork Suite 914\nGersontown, SD 19512-4083','Qui velit in quia harum qui dolores ut veritatis.','Laudantium neque provident inventore modi neque reiciendis rem eos. Accusantium facere vel rem ut corrupti placeat sunt. Officiis iusto quo qui quos illo. Iure iste qui facere. In quas facilis soluta ullam similique libero. Eum magni repellendus et nisi libero magnam qui. Sint totam commodi qui provident. Quibusdam nihil et et vel provident fugiat. Voluptate est id atque dolorem. Non maiores tempore asperiores autem consequatur vel debitis.','read','2022-11-13 00:52:03','2022-11-13 00:52:03'),(9,'Daisha Thompson DVM','kessler.tianna@example.com','+1-248-684-3111','386 Johathan Radial\nSchulisttown, SC 15846','Et voluptatem rerum rerum fuga alias quaerat.','Explicabo voluptas provident recusandae tempora voluptate. Odio aut sit non in. Eveniet ut est tempora aliquam magni voluptatibus eum. Aut unde rerum adipisci. Unde itaque rem et ab. Consequatur ea aut ut et omnis libero nobis. Accusantium quo et laudantium possimus mollitia. Voluptas dolores laudantium eius rerum. Consequuntur corporis perferendis minus sed iure. Consequuntur quo illum deserunt ea velit. Unde quo tenetur sequi autem ipsam aut.','read','2022-11-13 00:52:03','2022-11-13 00:52:03'),(10,'Ardella Effertz','tina09@example.com','234.271.8658','87269 Green Groves Suite 388\nSouth Larryfurt, AL 35414','Quisquam ea molestiae adipisci nam quo vitae.','Ipsam nobis deleniti est et voluptatem fugit animi non. Nulla omnis et in officiis. Quis minus numquam natus repellat explicabo quia. Dolorem aliquid molestiae sed rerum tenetur nobis. Consequuntur eos quasi debitis est. Quos beatae ab est quia. Neque et aut dolore nam. Dolores et sed molestiae assumenda magnam molestiae ut. Non magni eaque eius et vero odio. Dolor iure sequi molestiae unde alias. Cumque est accusantium culpa voluptas commodi assumenda libero.','unread','2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-11-13 00:51:56','2022-11-13 00:51:56');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(2,'EUR','€',0,2,1,0,0.84,'2022-11-13 00:51:56','2022-11-13 00:51:56'),(3,'VND','₫',0,0,2,0,23203,'2022-11-13 00:51:56','2022-11-13 00:51:56');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Heidi Labadie Jr.','customer@botble.com','+17572460377','AD','New York','South Cedrickmouth','93599 Ivah Island Apt. 451',1,1,'2022-11-13 00:52:02','2022-11-13 00:52:02','04133'),(2,'Dr. Heidi Labadie Jr.','customer@botble.com','+17133349075','MF','Mississippi','East Zoie','3408 Kenya Extension',1,0,'2022-11-13 00:52:02','2022-11-13 00:52:02','91338'),(3,'Dr. Crystal Hansen','vendor@botble.com','+17705149247','UA','Utah','New Isobel','713 Sophie Heights Apt. 737',2,1,'2022-11-13 00:52:02','2022-11-13 00:52:02','57942-8502'),(4,'Dr. Crystal Hansen','vendor@botble.com','+15312906771','TO','New Hampshire','New Kelliestad','6473 Nola Parks',2,0,'2022-11-13 00:52:02','2022-11-13 00:52:02','78587-0536'),(5,'Erin Gorczany','raphaelle61@example.net','+16166297965','SL','Colorado','Kiehnmouth','2922 Wyman Tunnel',3,1,'2022-11-13 00:52:02','2022-11-13 00:52:02','40706-9861'),(6,'Abraham Braun','ufadel@example.org','+14586371930','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',4,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','89931'),(7,'Candido Gleichner I','gunner07@example.net','+18164817161','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',5,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','84322'),(8,'Elisabeth Swift','rosalia.swift@example.org','+17866639594','MN','Georgia','Ullrichstad','344 Denis Greens Suite 945',6,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','14056-9994'),(9,'Mr. Lucious Tremblay DVM','corbin.shanahan@example.com','+16095305907','HR','Connecticut','West Hattiehaven','283 Zieme Mall Apt. 012',7,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','30237-1044'),(10,'Christophe Farrell','viviane08@example.org','+18598141012','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',8,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','10156-1876'),(11,'Shanna Zieme','mlehner@example.org','+19547201326','PY','Georgia','Port Marcelinaburgh','6036 Lueilwitz Drive',9,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','00006-3454'),(12,'Dr. Kayden O\'Connell','khalil.daniel@example.org','+14304906733','GW','Minnesota','South Gretchen','771 Wilderman Shoals',10,1,'2022-11-13 00:52:03','2022-11-13 00:52:03','28522-0446');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Heidi Labadie Jr.','customer@botble.com','$2y$10$t7JEyXCLWrbs8BQc.Kr/QOe8kVwdlqStAwSDB9y7NTGX55gSBMLT.','customers/8.jpg','1985-11-01','+14243877807',NULL,'2022-11-13 00:52:02','2022-11-13 00:52:02','2022-11-13 07:52:02',NULL,'activated',0,NULL),(2,'Dr. Crystal Hansen','vendor@botble.com','$2y$10$h5hV5UauLVtUwWJgKKjylOMTcSXUW/M9iYX5/MnlokK4dJbRlbWYy','customers/7.jpg','1975-11-06','+18627547102',NULL,'2022-11-13 00:52:02','2022-11-13 00:52:07','2022-11-13 07:52:02',NULL,'activated',1,'2022-11-13 07:52:07'),(3,'Erin Gorczany','raphaelle61@example.net','$2y$10$3r8mzhWb53LOEUw.D2s5jerVEVGh5BNIsyH1m2MaNb/jPWhehv7Hu','customers/1.jpg','1985-11-07','+16097840451',NULL,'2022-11-13 00:52:02','2022-11-13 00:52:02','2022-11-13 07:52:02',NULL,'activated',0,NULL),(4,'Abraham Braun','ufadel@example.org','$2y$10$Bf6sGFAjYam3iueQJ6exv.79BWUOeOesHA8x70kefoNiUXflZy6j2','customers/2.jpg','1976-10-28','+14786007196',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(5,'Candido Gleichner I','gunner07@example.net','$2y$10$kpn0k/MDyTCVqMFHFPlyUO1YStpgZhfFlvUv3.vJ24MgIKkE8SS06','customers/3.jpg','1990-11-04','+17374431694',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(6,'Elisabeth Swift','rosalia.swift@example.org','$2y$10$sVomnrJFHVeDrgw.BgQXh.4gpC6kmOjbWlkusFyR1hspjxgIhBxaC','customers/4.jpg','1985-11-10','+15746191930',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(7,'Mr. Lucious Tremblay DVM','corbin.shanahan@example.com','$2y$10$1I/mrE6v1iptmLqExxLo/ugQADsTMMwyDAObnl18DHenuXmwtnKjK','customers/5.jpg','1997-10-31','+19086473118',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(8,'Christophe Farrell','viviane08@example.org','$2y$10$syfvpf9xKttPf3ksCM0NheQ5mQ.WKClbid6e4E9P04kW2WVN5AtK2','customers/6.jpg','1978-10-22','+18206819538',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(9,'Shanna Zieme','mlehner@example.org','$2y$10$9gpzhzkhEKPJ7vSS70c1YuL7qPATC9jKV5mCyrq//ycXxulrpc5M2','customers/7.jpg','1984-10-31','+17408095891',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03','2022-11-13 07:52:03',NULL,'activated',0,NULL),(10,'Dr. Kayden O\'Connell','khalil.daniel@example.org','$2y$10$WiJaZCva4WwKfWPEGn5iZuDI1yOnGw2jg0epJE6ZsQjxCv2EMcMJ6','customers/8.jpg','1984-11-03','+18724429523',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:07','2022-11-13 07:52:03',NULL,'activated',1,'2022-11-13 07:52:07');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,64.2,6,5),(1,2,14.175,12,4),(1,3,11.2,13,1),(1,4,326.6142,13,2),(1,5,428.45,7,4),(1,6,384.23,6,1),(1,7,219.66,7,1),(1,8,584.9525,16,4),(1,9,188.64,6,2),(1,10,557.04,20,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-12-13 00:00:00','published','2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,'1 Year',0,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(1,'2 Year',10,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(1,'3 Year',20,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'4GB',0,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'8GB',10,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'16GB',20,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'Core i5',0,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'Core i7',10,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'Core i9',20,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'128GB',0,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'256GB',10,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'512GB',20,9999,0,'2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Heidi Labadie Jr.','+17572460377','customer@botble.com','AD','New York','South Cedrickmouth','93599 Ivah Island Apt. 451',1,'04133','shipping_address'),(2,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',2,'89931','shipping_address'),(3,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',3,'84322','shipping_address'),(4,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',4,'84322','shipping_address'),(5,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',5,'84322','shipping_address'),(6,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',6,'84322','shipping_address'),(7,'Elisabeth Swift','+17866639594','rosalia.swift@example.org','MN','Georgia','Ullrichstad','344 Denis Greens Suite 945',7,'14056-9994','shipping_address'),(8,'Elisabeth Swift','+17866639594','rosalia.swift@example.org','MN','Georgia','Ullrichstad','344 Denis Greens Suite 945',8,'14056-9994','shipping_address'),(9,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',9,'10156-1876','shipping_address'),(10,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',10,'10156-1876','shipping_address'),(11,'Erin Gorczany','+16166297965','raphaelle61@example.net','SL','Colorado','Kiehnmouth','2922 Wyman Tunnel',11,'40706-9861','shipping_address'),(12,'Shanna Zieme','+19547201326','mlehner@example.org','PY','Georgia','Port Marcelinaburgh','6036 Lueilwitz Drive',12,'00006-3454','shipping_address'),(13,'Shanna Zieme','+19547201326','mlehner@example.org','PY','Georgia','Port Marcelinaburgh','6036 Lueilwitz Drive',13,'00006-3454','shipping_address'),(14,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',14,'89931','shipping_address'),(15,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',15,'89931','shipping_address'),(16,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',16,'10156-1876','shipping_address'),(17,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',17,'84322','shipping_address'),(18,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',18,'84322','shipping_address'),(19,'Shanna Zieme','+19547201326','mlehner@example.org','PY','Georgia','Port Marcelinaburgh','6036 Lueilwitz Drive',19,'00006-3454','shipping_address'),(20,'Shanna Zieme','+19547201326','mlehner@example.org','PY','Georgia','Port Marcelinaburgh','6036 Lueilwitz Drive',20,'00006-3454','shipping_address'),(21,'Elisabeth Swift','+17866639594','rosalia.swift@example.org','MN','Georgia','Ullrichstad','344 Denis Greens Suite 945',21,'14056-9994','shipping_address'),(22,'Elisabeth Swift','+17866639594','rosalia.swift@example.org','MN','Georgia','Ullrichstad','344 Denis Greens Suite 945',22,'14056-9994','shipping_address'),(23,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',23,'10156-1876','shipping_address'),(24,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',24,'10156-1876','shipping_address'),(25,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',25,'89931','shipping_address'),(26,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',26,'89931','shipping_address'),(27,'Erin Gorczany','+16166297965','raphaelle61@example.net','SL','Colorado','Kiehnmouth','2922 Wyman Tunnel',27,'40706-9861','shipping_address'),(28,'Erin Gorczany','+16166297965','raphaelle61@example.net','SL','Colorado','Kiehnmouth','2922 Wyman Tunnel',28,'40706-9861','shipping_address'),(29,'Christophe Farrell','+18598141012','viviane08@example.org','IE','Tennessee','Parkerhaven','44435 Luettgen Cape Apt. 076',29,'10156-1876','shipping_address'),(30,'Mr. Lucious Tremblay DVM','+16095305907','corbin.shanahan@example.com','HR','Connecticut','West Hattiehaven','283 Zieme Mall Apt. 012',30,'30237-1044','shipping_address'),(31,'Mr. Lucious Tremblay DVM','+16095305907','corbin.shanahan@example.com','HR','Connecticut','West Hattiehaven','283 Zieme Mall Apt. 012',31,'30237-1044','shipping_address'),(32,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',32,'89931','shipping_address'),(33,'Abraham Braun','+14586371930','ufadel@example.org','NA','Ohio','West Beauville','63661 Lewis Keys Apt. 658',33,'89931','shipping_address'),(34,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',34,'84322','shipping_address'),(35,'Candido Gleichner I','+18164817161','gunner07@example.net','NZ','Virginia','Bechtelarmouth','3469 Ludie Falls Apt. 099',35,'84322','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(4,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-10-28 04:52:07','2022-10-28 04:52:07'),(5,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-10-28 04:52:07','2022-10-28 04:52:07'),(6,'confirm_payment','Payment was confirmed (amount $2,428.60) by %user_name%',0,2,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(7,'create_shipment','Created shipment for order',0,2,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-10-30 12:52:07','2022-10-30 12:52:07'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-10-30 12:52:07','2022-10-30 12:52:07'),(11,'confirm_payment','Payment was confirmed (amount $2,467.60) by %user_name%',0,3,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-11-02 12:52:07','2022-11-02 12:52:07'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-11-02 12:52:07','2022-11-02 12:52:07'),(15,'confirm_payment','Payment was confirmed (amount $473.00) by %user_name%',0,4,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-11-05 22:52:07','2022-11-05 22:52:07'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-11-05 22:52:07','2022-11-05 22:52:07'),(19,'confirm_payment','Payment was confirmed (amount $3,574.30) by %user_name%',0,5,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-11-01 16:52:07','2022-11-01 16:52:07'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-11-01 16:52:07','2022-11-01 16:52:07'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-11-02 08:52:07','2022-11-02 08:52:07'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-11-02 08:52:07','2022-11-02 08:52:07'),(28,'confirm_payment','Payment was confirmed (amount $2,518.68) by %user_name%',0,7,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(33,'confirm_payment','Payment was confirmed (amount $2,100.10) by %user_name%',0,8,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-11-11 20:52:07','2022-11-11 20:52:07'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-11-11 20:52:07','2022-11-11 20:52:07'),(45,'confirm_payment','Payment was confirmed (amount $1,216.60) by %user_name%',0,11,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-11-05 10:52:07','2022-11-05 10:52:07'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-11-05 10:52:07','2022-11-05 10:52:07'),(49,'confirm_payment','Payment was confirmed (amount $1,175.90) by %user_name%',0,12,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-11-04 08:52:07','2022-11-04 08:52:07'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-11-04 08:52:07','2022-11-04 08:52:07'),(54,'confirm_payment','Payment was confirmed (amount $3,583.00) by %user_name%',0,13,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(58,'confirm_payment','Payment was confirmed (amount $1,098.30) by %user_name%',0,14,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(59,'create_shipment','Created shipment for order',0,14,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(61,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(62,'confirm_payment','Payment was confirmed (amount $3,924.60) by %user_name%',0,15,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(63,'create_shipment','Created shipment for order',0,15,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-11-03 20:52:07','2022-11-03 20:52:07'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-11-03 20:52:07','2022-11-03 20:52:07'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-11-07 04:52:07','2022-11-07 04:52:07'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-11-07 04:52:07','2022-11-07 04:52:07'),(70,'confirm_payment','Payment was confirmed (amount $1,726.70) by %user_name%',0,17,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(71,'create_shipment','Created shipment for order',0,17,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-11-05 12:52:07','2022-11-05 12:52:07'),(74,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-11-05 12:52:07','2022-11-05 12:52:07'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-11-07 18:52:07','2022-11-07 18:52:07'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-11-07 18:52:07','2022-11-07 18:52:07'),(78,'create_shipment','Created shipment for order',0,19,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-11-07 00:52:07','2022-11-07 00:52:07'),(80,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-11-07 00:52:07','2022-11-07 00:52:07'),(81,'create_shipment','Created shipment for order',0,20,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-11-10 08:52:07','2022-11-10 08:52:07'),(83,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-11-10 08:52:07','2022-11-10 08:52:07'),(84,'confirm_payment','Payment was confirmed (amount $1,178.10) by %user_name%',0,21,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(85,'create_shipment','Created shipment for order',0,21,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(87,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(88,'confirm_payment','Payment was confirmed (amount $2,129.40) by %user_name%',0,22,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(89,'create_shipment','Created shipment for order',0,22,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-11-10 02:52:07','2022-11-10 02:52:07'),(91,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-11-10 02:52:07','2022-11-10 02:52:07'),(92,'confirm_payment','Payment was confirmed (amount $8,570.00) by %user_name%',0,23,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(93,'create_shipment','Created shipment for order',0,23,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-11-12 10:52:07','2022-11-12 10:52:07'),(96,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-11-12 10:52:07','2022-11-12 10:52:07'),(97,'confirm_payment','Payment was confirmed (amount $651.20) by %user_name%',0,24,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(98,'create_shipment','Created shipment for order',0,24,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(101,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(102,'confirm_payment','Payment was confirmed (amount $2,322.60) by %user_name%',0,25,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(103,'create_shipment','Created shipment for order',0,25,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(106,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(107,'confirm_payment','Payment was confirmed (amount $2,797.10) by %user_name%',0,26,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(108,'create_shipment','Created shipment for order',0,26,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(110,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(111,'confirm_payment','Payment was confirmed (amount $617.10) by %user_name%',0,27,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(112,'create_shipment','Created shipment for order',0,27,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-11-11 18:52:07','2022-11-11 18:52:07'),(114,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-11-11 18:52:07','2022-11-11 18:52:07'),(115,'create_shipment','Created shipment for order',0,28,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(117,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(118,'create_shipment','Created shipment for order',0,29,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(119,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(120,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(121,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(122,'confirm_payment','Payment was confirmed (amount $2,043.80) by %user_name%',0,30,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(123,'create_shipment','Created shipment for order',0,30,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(124,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(125,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(126,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(127,'confirm_payment','Payment was confirmed (amount $3,143.40) by %user_name%',0,31,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(128,'create_shipment','Created shipment for order',0,31,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(129,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(131,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-11-12 16:52:07','2022-11-12 16:52:07'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-11-12 16:52:07','2022-11-12 16:52:07'),(135,'confirm_payment','Payment was confirmed (amount $875.60) by %user_name%',0,33,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(136,'create_shipment','Created shipment for order',0,33,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(137,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-11-12 06:52:07','2022-11-12 06:52:07'),(139,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-11-12 06:52:07','2022-11-12 06:52:07'),(140,'create_shipment','Created shipment for order',0,34,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(142,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(143,'confirm_payment','Payment was confirmed (amount $4,276.90) by %user_name%',0,35,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(144,'create_shipment','Created shipment for order',0,35,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(145,'update_status','Order confirmed by %user_name%',0,2,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(146,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(147,'update_status','Order confirmed by %user_name%',0,7,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(148,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(149,'update_status','Order confirmed by %user_name%',0,17,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(150,'update_status','Order confirmed by %user_name%',0,23,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(151,'update_status','Order confirmed by %user_name%',0,24,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(152,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(153,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(154,'update_status','Order confirmed by %user_name%',0,31,NULL,'2022-11-13 00:52:08','2022-11-13 00:52:08'),(155,'update_status','Order confirmed by %user_name%',0,33,NULL,'2022-11-13 00:52:09','2022-11-13 00:52:09');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,592.00,59.20,'[]',NULL,48,'EPSION Plaster Printer',NULL,1809.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(2,1,1,545.00,54.50,'[]',NULL,51,'Sound Intone I65 Earphone White Version (Digital)',NULL,880.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(3,1,1,545.00,54.50,'[]',NULL,52,'Sound Intone I65 Earphone White Version (Digital)',NULL,880.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(4,2,1,779.00,77.90,'[]',NULL,33,'Smart Watch External (Digital)',NULL,565.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(5,2,3,507.00,50.70,'[]',NULL,54,'B&O Play Mini Bluetooth Speaker',NULL,2064.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(6,3,3,796.00,79.60,'[]',NULL,67,'NYX Beauty Couton Pallete Makeup 12',NULL,1827.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(7,4,1,430.00,43.00,'[]',NULL,69,'Baxter Care Hair Kit For Bearded Mens',NULL,631.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(8,5,3,561.00,56.10,'[]',NULL,31,'Red & Black Headphone',NULL,2625.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(9,5,3,592.00,59.20,'[]',NULL,46,'EPSION Plaster Printer',NULL,1809.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(10,6,2,548.00,54.80,'[]',NULL,59,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,1538.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(11,6,2,1014.00,101.40,'[]',NULL,64,'NYX Beauty Couton Pallete Makeup 12',NULL,1122.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(12,7,1,80.25,8.03,'[]',NULL,24,'Dual Camera 20MP (Digital)',NULL,870.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(13,7,3,784.00,78.40,'[]',NULL,71,'Ciate Palemore Lipstick Bold Red Color',NULL,1755.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(14,8,1,779.00,77.90,'[]',NULL,33,'Smart Watch External (Digital)',NULL,565.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(15,8,2,592.00,59.20,'[]',NULL,48,'EPSION Plaster Printer',NULL,1206.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(16,9,3,1014.00,101.40,'[]',NULL,62,'NYX Beauty Couton Pallete Makeup 12',NULL,1683.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(17,10,2,680.00,68.00,'[]',NULL,68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,1062.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(18,10,1,430.00,43.00,'[]',NULL,69,'Baxter Care Hair Kit For Bearded Mens',NULL,631.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(19,11,1,561.00,56.10,'[]',NULL,31,'Red & Black Headphone',NULL,875.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(20,11,1,545.00,54.50,'[]',NULL,50,'Sound Intone I65 Earphone White Version (Digital)',NULL,880.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(21,12,1,524.00,52.40,'[]',NULL,42,'Samsung Smart Phone (Digital)',NULL,548.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(22,12,1,545.00,54.50,'[]',NULL,50,'Sound Intone I65 Earphone White Version (Digital)',NULL,880.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(23,13,1,1014.00,101.40,'[]',NULL,61,'NYX Beauty Couton Pallete Makeup 12',NULL,561.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(24,13,3,796.00,79.60,'[]',NULL,67,'NYX Beauty Couton Pallete Makeup 12',NULL,1827.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(25,14,2,523.00,52.30,'[]',NULL,36,'Audio Equipment',NULL,1526.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(26,15,3,1266.00,126.60,'[]',NULL,43,'Herschel Leather Duffle Bag In Brown Color',NULL,2328.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(27,16,3,40.50,4.05,'[]',NULL,28,'Smart Watches',NULL,2487.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(28,16,3,523.00,52.30,'[]',NULL,35,'Audio Equipment',NULL,2289.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(29,16,3,548.00,54.80,'[]',NULL,59,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,2307.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(30,17,3,557.00,55.70,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,2493.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(31,18,2,784.00,78.40,'[]',NULL,71,'Ciate Palemore Lipstick Bold Red Color',NULL,1170.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(32,19,1,523.00,52.30,'[]',NULL,35,'Audio Equipment',NULL,763.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(33,20,2,592.00,59.20,'[]',NULL,47,'EPSION Plaster Printer',NULL,1206.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(34,21,2,561.00,56.10,'[]',NULL,31,'Red & Black Headphone',NULL,1750.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(35,22,2,1014.00,101.40,'[]',NULL,62,'NYX Beauty Couton Pallete Makeup 12',NULL,1122.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(36,23,2,1195.00,119.50,'[]',NULL,38,'Smart Televisions',NULL,1006.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(37,23,3,1171.00,117.10,'[]',NULL,44,'Xbox One Wireless Controller Black Color',NULL,2616.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(38,23,3,784.00,78.40,'[]',NULL,72,'Ciate Palemore Lipstick Bold Red Color',NULL,1755.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(39,24,1,592.00,59.20,'[]',NULL,45,'EPSION Plaster Printer',NULL,603.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(40,25,2,561.00,56.10,'[]',NULL,30,'Red & Black Headphone',NULL,1750.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(41,25,2,545.00,54.50,'[]',NULL,52,'Sound Intone I65 Earphone White Version (Digital)',NULL,1760.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(42,26,2,523.00,52.30,'[]',NULL,36,'Audio Equipment',NULL,1526.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(43,26,3,548.00,54.80,'[]',NULL,58,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,2307.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(44,27,1,561.00,56.10,'[]',NULL,32,'Red & Black Headphone',NULL,875.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(45,28,3,1014.00,101.40,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12',NULL,1683.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(46,28,1,796.00,79.60,'[]',NULL,66,'NYX Beauty Couton Pallete Makeup 12',NULL,609.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(47,28,2,784.00,78.40,'[]',NULL,72,'Ciate Palemore Lipstick Bold Red Color',NULL,1170.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(48,29,3,1171.00,117.10,'[]',NULL,44,'Xbox One Wireless Controller Black Color',NULL,2616.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(49,29,1,548.00,54.80,'[]',NULL,58,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,769.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(50,30,1,1266.00,126.60,'[]',NULL,43,'Herschel Leather Duffle Bag In Brown Color',NULL,776.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(51,30,1,592.00,59.20,'[]',NULL,49,'EPSION Plaster Printer',NULL,603.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(52,31,3,1014.00,101.40,'[]',NULL,64,'NYX Beauty Couton Pallete Makeup 12',NULL,1683.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(53,32,1,1266.00,126.60,'[]',NULL,43,'Herschel Leather Duffle Bag In Brown Color',NULL,776.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(54,32,3,545.00,54.50,'[]',NULL,50,'Sound Intone I65 Earphone White Version (Digital)',NULL,2640.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(55,32,2,557.00,55.70,'[]',NULL,56,'Apple MacBook Air Retina 12-Inch Laptop',NULL,1662.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(56,33,1,796.00,79.60,'[]',NULL,66,'NYX Beauty Couton Pallete Makeup 12',NULL,609.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(57,34,3,561.00,56.10,'[]',NULL,31,'Red & Black Headphone',NULL,2625.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(58,34,1,524.00,52.40,'[]',NULL,41,'Samsung Smart Phone (Digital)',NULL,548.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(59,35,3,1171.00,117.10,'[]',NULL,44,'Xbox One Wireless Controller Black Color',NULL,2616.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0),(60,35,1,588.00,58.80,'[]',NULL,55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,551.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',1,'1','default','pending',3034.20,168.20,0.00,NULL,NULL,0.00,2866.00,1,NULL,1,NULL,'6QKEhqr9a00OOLJcfFV88lfLkx3L3',1,'2022-11-08 00:52:07','2022-11-13 00:52:07',2),(2,'#10000002',4,'1','default','completed',2428.60,128.60,0.00,NULL,NULL,0.00,2300.00,1,NULL,1,'2022-11-13 00:52:07','T63ff0iedukk7gv0YZohecfNxzJLK',2,'2022-10-28 04:52:07','2022-11-13 00:52:07',2),(3,'#10000003',5,'1','default','pending',2467.60,79.60,0.00,NULL,NULL,0.00,2388.00,1,NULL,1,NULL,'mfbTg9TbCNkR8BBwf91UUUC8gPwwK',3,'2022-10-30 12:52:07','2022-11-13 00:52:07',1),(4,'#10000004',5,'1','default','pending',473.00,43.00,0.00,NULL,NULL,0.00,430.00,1,NULL,1,NULL,'Mc1BczrNFEJgjHeRtO4u3MswSqVhs',4,'2022-11-02 12:52:07','2022-11-13 00:52:07',2),(5,'#10000005',5,'1','default','completed',3574.30,115.30,0.00,NULL,NULL,0.00,3459.00,1,NULL,1,'2022-11-13 00:52:08','axEfQfcszNAIjCZIxHkjqd8SHQIFL',5,'2022-11-05 22:52:07','2022-11-13 00:52:08',2),(6,'#10000006',5,'1','default','completed',3280.20,156.20,0.00,NULL,NULL,0.00,3124.00,1,NULL,1,'2022-11-13 00:52:07','z6A2jmJNkVpSA7Af0kAOh5laRHXnm',6,'2022-11-01 16:52:07','2022-11-13 00:52:07',1),(7,'#10000007',6,'1','default','completed',2518.68,86.43,0.00,NULL,NULL,0.00,2432.25,1,NULL,1,'2022-11-13 00:52:08','JWKX6JsyQMDSxeP1vT6TQ56MSUW37',7,'2022-11-02 08:52:07','2022-11-13 00:52:08',1),(8,'#10000008',6,'1','default','pending',2100.10,137.10,0.00,NULL,NULL,0.00,1963.00,1,NULL,1,NULL,'bODsQngaZCDCkbTT6Dy1a53O8IJyf',8,'2022-11-11 16:52:07','2022-11-13 00:52:07',2),(9,'#10000009',8,'1','default','completed',3143.40,101.40,0.00,NULL,NULL,0.00,3042.00,1,NULL,1,'2022-11-13 00:52:07','sjWgFLcjh88R8phiToeJlbWVt1V8J',9,'2022-11-09 06:52:07','2022-11-13 00:52:07',1),(10,'#10000010',8,'1','default','completed',1901.00,111.00,0.00,NULL,NULL,0.00,1790.00,1,NULL,1,'2022-11-13 00:52:07','3VHNxldm90aE6sQe6JJsO6fe66GWo',10,'2022-11-08 00:52:07','2022-11-13 00:52:07',2),(11,'#10000011',3,'1','default','pending',1216.60,110.60,0.00,NULL,NULL,0.00,1106.00,1,NULL,1,NULL,'2ur7Ipc0fbRwN7tRV0ZYKfKPNCMLa',11,'2022-11-11 20:52:07','2022-11-13 00:52:07',2),(12,'#10000012',9,'1','default','completed',1175.90,106.90,0.00,NULL,NULL,0.00,1069.00,1,NULL,1,'2022-11-13 00:52:08','bDyQXCRkaHHjPqXxLZ1MXPNmwTrCS',12,'2022-11-05 10:52:07','2022-11-13 00:52:08',2),(13,'#10000013',9,'1','default','pending',3583.00,181.00,0.00,NULL,NULL,0.00,3402.00,1,NULL,1,NULL,'WN7BKlMlHDjRLHA7UcfmcZ48Kroiq',13,'2022-11-04 08:52:07','2022-11-13 00:52:07',1),(14,'#10000014',4,'1','default','pending',1098.30,52.30,0.00,NULL,NULL,0.00,1046.00,1,NULL,1,NULL,'GyCnE5nVSC3vFRUdxdmhNFNF3Udo3',14,'2022-11-11 00:52:07','2022-11-13 00:52:07',1),(15,'#10000015',4,'1','default','pending',3924.60,126.60,0.00,NULL,NULL,0.00,3798.00,1,NULL,1,NULL,'D4TAMxlSNp0DuflTVAAwKpcS48UKR',15,'2022-11-11 00:52:07','2022-11-13 00:52:07',2),(16,'#10000016',8,'1','default','completed',3445.65,111.15,0.00,NULL,NULL,0.00,3334.50,1,NULL,1,'2022-11-13 00:52:07','bo9BeYDfWTrZ0uT23RCpSYH3l83l3',16,'2022-11-03 20:52:07','2022-11-13 00:52:07',1),(17,'#10000017',5,'1','default','completed',1726.70,55.70,0.00,NULL,NULL,0.00,1671.00,1,NULL,1,'2022-11-13 00:52:08','8rnGOn9ySG2lcQY0fsZakcAOD5xDh',17,'2022-11-07 04:52:07','2022-11-13 00:52:08',2),(18,'#10000018',5,'1','default','pending',1646.40,78.40,0.00,NULL,NULL,0.00,1568.00,1,NULL,1,NULL,'OxBPdayPseeEF1R3sGBDHBfg1lg29',18,'2022-11-05 12:52:07','2022-11-13 00:52:07',1),(19,'#10000019',9,'1','default','pending',575.30,52.30,0.00,NULL,NULL,0.00,523.00,1,NULL,1,NULL,'hDfMiPAhlzFKOjW5urhlcZiA5zTVX',19,'2022-11-07 18:52:07','2022-11-13 00:52:07',1),(20,'#10000020',9,'1','default','pending',1243.20,59.20,0.00,NULL,NULL,0.00,1184.00,1,NULL,1,NULL,'EllZNkEoZ1xKR94j6nI0XRX31zVN9',20,'2022-11-07 00:52:07','2022-11-13 00:52:07',2),(21,'#10000021',6,'1','default','pending',1178.10,56.10,0.00,NULL,NULL,0.00,1122.00,1,NULL,1,NULL,'WKJDfDkrF4CBJd59cGMNRWbLOK7zs',21,'2022-11-10 08:52:07','2022-11-13 00:52:07',2),(22,'#10000022',6,'1','default','pending',2129.40,101.40,0.00,NULL,NULL,0.00,2028.00,1,NULL,1,NULL,'RvEj0ytNcUAQINIlc5JaGDrmIbzAu',22,'2022-11-12 08:52:07','2022-11-13 00:52:07',1),(23,'#10000023',8,'1','default','completed',8570.00,315.00,0.00,NULL,NULL,0.00,8255.00,1,NULL,1,'2022-11-13 00:52:08','4CThN7Zo6HrOMsU0jvYbrbdLMf62E',23,'2022-11-10 02:52:07','2022-11-13 00:52:08',1),(24,'#10000024',8,'1','default','completed',651.20,59.20,0.00,NULL,NULL,0.00,592.00,1,NULL,1,'2022-11-13 00:52:08','c6yxPMc0danzzRctCgafRiicvLWtL',24,'2022-11-12 10:52:07','2022-11-13 00:52:08',2),(25,'#10000025',4,'1','default','completed',2322.60,110.60,0.00,NULL,NULL,0.00,2212.00,1,NULL,1,'2022-11-13 00:52:08','GEltFTi2SetgwW6nWNMmoxtyywEpd',25,'2022-11-12 00:52:07','2022-11-13 00:52:08',2),(26,'#10000026',4,'1','default','pending',2797.10,107.10,0.00,NULL,NULL,0.00,2690.00,1,NULL,1,NULL,'tBEjLvvb3AxglvyQYN4AIN4cJr3eG',26,'2022-11-11 00:52:07','2022-11-13 00:52:07',1),(27,'#10000027',3,'1','default','pending',617.10,56.10,0.00,NULL,NULL,0.00,561.00,1,NULL,1,NULL,'7UkwKt14u4wyqaARdAUEgTrPIFHjW',27,'2022-11-09 06:52:07','2022-11-13 00:52:07',2),(28,'#10000028',3,'1','default','pending',5665.40,259.40,0.00,NULL,NULL,0.00,5406.00,1,NULL,1,NULL,'TG7NV9E3lMQVbao2V3qKaI5NAJRJP',28,'2022-11-11 18:52:07','2022-11-13 00:52:07',1),(29,'#10000029',8,'1','default','completed',4232.90,171.90,0.00,NULL,NULL,0.00,4061.00,1,NULL,1,'2022-11-13 00:52:07','e024xsfbK982emxXmOyrwXkCtriiF',29,'2022-11-11 16:52:07','2022-11-13 00:52:07',1),(30,'#10000030',7,'1','default','completed',2043.80,185.80,0.00,NULL,NULL,0.00,1858.00,1,NULL,1,'2022-11-13 00:52:08','tcEO0g8sjgrEUIR1NyBnNY5Lxforw',30,'2022-11-12 12:52:07','2022-11-13 00:52:08',2),(31,'#10000031',7,'1','default','completed',3143.40,101.40,0.00,NULL,NULL,0.00,3042.00,1,NULL,1,'2022-11-13 00:52:08','iBFm3Lnhx0n1TCQrzCv9adlqZ5vsW',31,'2022-11-12 12:52:07','2022-11-13 00:52:08',1),(32,'#10000032',4,'1','default','pending',4251.80,236.80,0.00,NULL,NULL,0.00,4015.00,1,NULL,1,NULL,'ZcMK7cT79aSUYWiyG4vnpEOySGyA5',32,'2022-11-12 00:52:07','2022-11-13 00:52:07',2),(33,'#10000033',4,'1','default','completed',875.60,79.60,0.00,NULL,NULL,0.00,796.00,1,NULL,1,'2022-11-13 00:52:09','5az7D4jJsK7LiaapZCT2jgYRpaCXQ',33,'2022-11-12 16:52:07','2022-11-13 00:52:09',1),(34,'#10000034',5,'1','default','pending',2315.50,108.50,0.00,NULL,NULL,0.00,2207.00,1,NULL,1,NULL,'IwmnNi5NruyE4b8GVHvAdAYvEHykE',34,'2022-11-12 06:52:07','2022-11-13 00:52:07',2),(35,'#10000035',5,'1','default','pending',4276.90,175.90,0.00,NULL,NULL,0.00,4101.00,1,NULL,1,NULL,'uXEg6q9Co21DLIEsrfK5qPkfLeL1i',35,'2022-11-12 08:52:07','2022-11-13 00:52:07',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-11-13 00:52:02','2022-11-13 00:52:02',0),(2,'Size','size','text',1,1,1,'published',1,'2022-11-13 00:52:02','2022-11-13 00:52:02',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-11-13 00:52:02','2022-11-13 00:52:02'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-11-13 00:52:02','2022-11-13 00:52:02');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-11-13 00:51:57','2022-11-13 00:51:57');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,11,1),(2,7,1),(3,31,1),(4,20,1),(5,14,2),(6,37,2),(7,13,2),(8,21,2),(9,5,3),(10,16,3),(11,36,3),(12,30,3),(13,11,4),(14,19,4),(15,32,4),(16,16,4),(17,6,5),(18,37,5),(19,28,5),(20,16,5),(21,37,6),(22,15,6),(23,35,6),(24,27,6),(25,28,7),(26,3,7),(27,29,7),(28,36,7),(29,13,8),(30,19,8),(31,33,8),(32,31,8),(33,19,9),(34,17,9),(35,33,9),(36,24,10),(37,37,10),(38,31,10),(39,18,10),(40,35,11),(41,34,11),(42,28,11),(43,17,11),(44,14,12),(45,5,12),(46,4,12),(47,21,12),(48,9,13),(49,36,13),(50,37,13),(51,32,13),(52,16,14),(53,13,14),(54,19,14),(55,13,15),(56,2,15),(57,18,15),(58,32,16),(59,10,16),(60,15,16),(61,35,16),(62,33,17),(63,18,17),(64,32,17),(65,25,17),(66,2,18),(67,12,18),(68,16,18),(69,16,19),(70,15,19),(71,7,19),(72,22,19),(73,15,20),(74,36,20),(75,2,20),(76,19,21),(77,1,21),(78,25,21),(79,20,21),(80,3,22),(81,37,22),(82,4,22),(83,36,22),(84,12,23),(85,25,23),(86,21,23),(87,32,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,2,8),(9,3,9),(10,2,10),(11,2,11),(12,2,12),(13,3,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-11-13 00:51:57','2022-11-13 00:51:57',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-11-13 00:51:57','2022-11-13 00:51:57',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-11-13 00:51:57','2022-11-13 00:51:57',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,19),(2,1,12),(3,1,11),(4,1,17),(5,1,16),(6,1,15),(7,1,18),(8,2,5),(9,2,19),(10,2,3),(11,2,9),(12,2,8),(13,3,17),(14,3,1),(15,3,20),(16,3,6),(17,3,18),(18,3,11),(19,4,14),(20,4,10),(21,4,12),(22,4,9),(23,4,8),(24,4,11),(25,5,4),(26,5,19),(27,5,18),(28,5,12),(29,5,3),(30,6,5),(31,6,18),(32,6,12),(33,6,4),(34,6,11),(35,6,1),(36,7,18),(37,7,10),(38,7,19),(39,7,1),(40,7,17),(41,7,4),(42,7,16),(43,8,6),(44,8,11),(45,8,16),(46,8,20),(47,8,18),(48,8,13),(49,9,14),(50,9,19),(51,9,16),(52,9,5),(53,9,10),(54,9,18),(55,9,1),(56,10,17),(57,10,7),(58,10,4),(59,10,14),(60,10,6),(61,10,5),(62,11,17),(63,11,20),(64,11,8),(65,11,6),(66,11,15),(67,12,17),(68,12,3),(69,12,11),(70,12,8),(71,12,9),(72,12,13),(73,12,19),(74,13,1),(75,13,16),(76,13,18),(77,13,20),(78,13,8),(79,13,12),(80,13,4),(81,14,7),(82,14,13),(83,14,2),(84,14,6),(85,14,9),(86,14,16),(87,14,18),(88,15,10),(89,15,8),(90,15,11),(91,15,17),(92,15,4),(93,15,12),(94,16,4),(95,16,20),(96,16,10),(97,16,19),(98,16,14),(99,16,5),(100,17,3),(101,17,6),(102,17,11),(103,17,5),(104,17,2),(105,17,10),(106,17,18),(107,18,12),(108,18,19),(109,18,5),(110,18,16),(111,18,6),(112,19,10),(113,19,5),(114,19,6),(115,19,15),(116,19,7),(117,19,17),(118,19,8),(119,20,9),(120,20,3),(121,20,2),(122,20,18),(123,20,7),(124,21,5),(125,21,17),(126,21,13),(127,21,2),(128,21,6),(129,21,15),(130,21,11),(131,22,7),(132,22,15),(133,22,13),(134,22,11),(135,22,14),(136,22,18),(137,23,12),(138,23,7),(139,23,19),(140,23,8),(141,23,1),(142,23,10),(143,23,13);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(4,33,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(5,33,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(6,33,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(7,33,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(8,40,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(9,40,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(10,40,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(11,41,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(12,41,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(13,41,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(14,42,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(15,42,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(16,42,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:01','2022-11-13 00:52:01'),(17,50,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(18,50,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(19,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(20,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(21,52,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(22,52,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(23,53,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(24,53,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(25,58,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(26,58,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(27,58,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(28,58,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(29,59,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(30,59,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(31,59,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(32,59,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(33,68,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"21\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(34,68,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02'),(35,68,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-13 07:52:02\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2022-11-13 00:52:02','2022-11-13 00:52:02');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(1,21),(2,6),(2,15),(2,18),(3,3),(3,12);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-11-13 00:51:57','2022-11-13 00:51:57'),(2,'New','#00c9a7','published','2022-11-13 00:51:57','2022-11-13 00:51:57'),(3,'Sale','#fe9931','published','2022-11-13 00:51:57','2022-11-13 00:51:57');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,4),(1,6),(2,1),(2,4),(2,5),(3,2),(3,4),(3,5),(4,3),(4,4),(4,5),(5,2),(5,3),(5,4),(6,5),(6,6),(7,2),(7,3),(7,5),(8,2),(8,4),(8,6),(9,2),(9,3),(9,5),(10,1),(10,5),(10,6),(11,3),(11,5),(12,2),(12,6),(13,2),(13,3),(13,6),(14,1),(14,3),(14,6),(15,4),(15,6),(16,1),(16,3),(16,4),(17,4),(17,5),(17,6),(18,1),(18,4),(18,6),(19,2),(19,3),(19,4),(20,2),(20,5),(21,2),(21,5),(21,6),(22,1),(22,4),(23,5),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(2,'Mobile',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(3,'Iphone',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(4,'Printer',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(5,'Office',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(6,'IT',NULL,'published','2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(11,1,6),(27,1,14),(57,1,29),(75,1,38),(89,1,45),(91,1,46),(95,1,48),(1,2,1),(5,2,3),(7,2,4),(63,2,32),(85,2,43),(93,2,47),(17,3,9),(23,3,12),(31,3,16),(43,3,22),(45,3,23),(47,3,24),(83,3,42),(87,3,44),(97,3,49),(99,3,50),(13,4,7),(21,4,11),(29,4,15),(35,4,18),(39,4,20),(51,4,26),(53,4,27),(59,4,30),(67,4,34),(71,4,36),(73,4,37),(79,4,40),(3,5,2),(15,5,8),(19,5,10),(25,5,13),(33,5,17),(37,5,19),(41,5,21),(49,5,25),(55,5,28),(61,5,31),(65,5,33),(69,5,35),(77,5,39),(81,5,41),(2,6,1),(6,6,3),(12,6,6),(18,6,9),(20,6,10),(26,6,13),(30,6,15),(36,6,18),(42,6,21),(44,6,22),(48,6,24),(76,6,38),(82,6,41),(96,6,48),(98,6,49),(24,7,12),(28,7,14),(32,7,16),(54,7,27),(70,7,35),(72,7,36),(74,7,37),(78,7,39),(4,8,2),(8,8,4),(10,8,5),(22,8,11),(50,8,25),(56,8,28),(100,8,50),(14,9,7),(34,9,17),(58,9,29),(66,9,33),(90,9,45),(94,9,47),(16,10,8),(38,10,19),(40,10,20),(46,10,23),(52,10,26),(60,10,30),(62,10,31),(64,10,32),(68,10,34),(80,10,40),(84,10,42),(86,10,43),(88,10,44),(92,10,46);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,2,0),(6,29,3,1),(7,30,4,1),(8,31,4,0),(9,32,4,0),(10,33,5,1),(11,34,6,1),(12,35,7,1),(13,36,7,0),(14,37,7,0),(15,38,8,1),(16,39,8,0),(17,40,9,1),(18,41,9,0),(19,42,9,0),(20,43,10,1),(21,44,11,1),(22,45,12,1),(23,46,12,0),(24,47,12,0),(25,48,12,0),(26,49,12,0),(27,50,13,1),(28,51,13,0),(29,52,13,0),(30,53,13,0),(31,54,14,1),(32,55,15,1),(33,56,16,1),(34,57,16,0),(35,58,17,1),(36,59,17,0),(37,60,18,1),(38,61,19,1),(39,62,19,0),(40,63,19,0),(41,64,19,0),(42,65,19,0),(43,66,20,1),(44,67,20,0),(45,68,21,1),(46,69,22,1),(47,70,23,1),(48,71,23,0),(49,72,23,0),(50,73,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-129-A0',0,15,0,1,1,7,0,0,80.25,NULL,NULL,NULL,14.00,17.00,17.00,870.00,1,52055,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-192-A0',0,18,0,1,1,3,0,0,40.5,NULL,NULL,NULL,16.00,13.00,10.00,829.00,1,164438,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-163-A0',0,11,0,1,1,3,0,0,20,NULL,NULL,NULL,13.00,17.00,18.00,652.00,1,75283,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-161-A0',0,10,0,1,1,4,0,0,561,460.02,NULL,NULL,13.00,15.00,12.00,875.00,1,190797,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-157-A0',0,12,0,1,1,4,0,0,779,NULL,NULL,NULL,15.00,14.00,12.00,565.00,1,95955,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-107-A0',0,19,0,1,1,2,0,0,499,NULL,NULL,NULL,10.00,17.00,11.00,636.00,1,196555,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-103-A0',0,14,0,1,1,5,0,0,523,NULL,NULL,NULL,18.00,15.00,15.00,763.00,1,157782,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-179-A0',0,11,0,1,1,1,0,0,1195,1063.55,NULL,NULL,10.00,14.00,20.00,503.00,1,8996,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-160-A0',0,10,0,1,1,6,0,0,524,NULL,NULL,NULL,20.00,20.00,20.00,548.00,1,128985,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',2,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-155-A0',0,18,0,1,0,4,0,0,1266,NULL,NULL,NULL,15.00,10.00,19.00,776.00,1,103480,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-108-A0',0,18,0,1,0,3,0,0,1171,NULL,NULL,NULL,17.00,18.00,20.00,872.00,1,132734,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-193-A0',0,15,0,1,0,7,0,0,592,467.68,NULL,NULL,17.00,10.00,18.00,603.00,1,178568,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-112-A0',0,17,0,1,0,3,0,0,545,NULL,NULL,NULL,10.00,12.00,13.00,880.00,1,54061,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',2,0),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-105-A0',0,20,0,1,0,6,0,0,507,NULL,NULL,NULL,18.00,20.00,14.00,688.00,1,140065,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-170-A0',0,19,0,1,0,6,0,0,588,NULL,NULL,NULL,19.00,18.00,11.00,551.00,1,154838,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-197-A0',0,19,0,1,0,7,0,0,557,451.17,NULL,NULL,18.00,14.00,12.00,831.00,1,119916,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-155-A0',0,11,0,1,0,5,0,0,548,NULL,NULL,NULL,10.00,11.00,11.00,769.00,1,49110,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-195-A0',0,15,0,1,0,6,0,0,1060,NULL,NULL,NULL,14.00,17.00,15.00,511.00,1,165818,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-170-A0',0,17,0,1,0,6,0,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,1,26540,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-155-A0',0,10,0,1,0,7,0,0,796,589.04,NULL,NULL,19.00,10.00,15.00,609.00,1,94795,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-170-A0',0,16,0,1,0,7,0,0,680,NULL,NULL,NULL,17.00,12.00,15.00,531.00,1,159317,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',2,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-180-A0',0,16,0,1,0,4,0,0,430,NULL,NULL,NULL,12.00,13.00,12.00,631.00,1,91531,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-121-A0',0,10,0,1,0,4,0,0,784,NULL,NULL,NULL,11.00,19.00,20.00,585.00,1,2515,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-129-A0',0,15,0,1,0,7,1,0,80.25,NULL,NULL,NULL,14.00,17.00,17.00,870.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-129-A0-A1',0,15,0,1,0,7,1,0,80.25,NULL,NULL,NULL,14.00,17.00,17.00,870.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-129-A0-A2',0,15,0,1,0,7,1,0,80.25,NULL,NULL,NULL,14.00,17.00,17.00,870.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-192-A0',0,18,0,1,0,3,1,0,40.5,NULL,NULL,NULL,16.00,13.00,10.00,829.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-192-A0-A1',0,18,0,1,0,3,1,0,40.5,NULL,NULL,NULL,16.00,13.00,10.00,829.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-163-A0',0,11,0,1,0,3,1,0,20,NULL,NULL,NULL,13.00,17.00,18.00,652.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(30,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-161-A0',0,10,0,1,0,4,1,0,561,460.02,NULL,NULL,13.00,15.00,12.00,875.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-161-A0-A1',0,10,0,1,0,4,1,0,561,460.02,NULL,NULL,13.00,15.00,12.00,875.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-161-A0-A2',0,10,0,1,0,4,1,0,561,488.07,NULL,NULL,13.00,15.00,12.00,875.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-157-A0',0,12,0,1,0,4,1,0,779,NULL,NULL,NULL,15.00,14.00,12.00,565.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(34,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-107-A0',0,19,0,1,0,2,1,0,499,NULL,NULL,NULL,10.00,17.00,11.00,636.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(35,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-103-A0',0,14,0,1,0,5,1,0,523,NULL,NULL,NULL,18.00,15.00,15.00,763.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(36,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-103-A0-A1',0,14,0,1,0,5,1,0,523,NULL,NULL,NULL,18.00,15.00,15.00,763.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(37,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-103-A0-A2',0,14,0,1,0,5,1,0,523,NULL,NULL,NULL,18.00,15.00,15.00,763.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(38,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-179-A0',0,11,0,1,0,1,1,0,1195,1063.55,NULL,NULL,10.00,14.00,20.00,503.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(39,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-179-A0-A1',0,11,0,1,0,1,1,0,1195,979.9,NULL,NULL,10.00,14.00,20.00,503.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(40,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-160-A0',0,10,0,1,0,6,1,0,524,NULL,NULL,NULL,20.00,20.00,20.00,548.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(41,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-160-A0-A1',0,10,0,1,0,6,1,0,524,NULL,NULL,NULL,20.00,20.00,20.00,548.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(42,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-160-A0-A2',0,10,0,1,0,6,1,0,524,NULL,NULL,NULL,20.00,20.00,20.00,548.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(43,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-155-A0',0,18,0,1,0,4,1,0,1266,NULL,NULL,NULL,15.00,10.00,19.00,776.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(44,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-108-A0',0,18,0,1,0,3,1,0,1171,NULL,NULL,NULL,17.00,18.00,20.00,872.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(45,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-193-A0',0,15,0,1,0,7,1,0,592,467.68,NULL,NULL,17.00,10.00,18.00,603.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(46,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-193-A0-A1',0,15,0,1,0,7,1,0,592,485.44,NULL,NULL,17.00,10.00,18.00,603.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(47,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-193-A0-A2',0,15,0,1,0,7,1,0,592,515.04,NULL,NULL,17.00,10.00,18.00,603.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(48,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-3.jpg\"]','SW-193-A0-A3',0,15,0,1,0,7,1,0,592,503.2,NULL,NULL,17.00,10.00,18.00,603.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(49,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-193-A0-A4',0,15,0,1,0,7,1,0,592,420.32,NULL,NULL,17.00,10.00,18.00,603.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(50,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-112-A0',0,17,0,1,0,3,1,0,545,NULL,NULL,NULL,10.00,12.00,13.00,880.00,NULL,0,'2022-11-13 00:52:01','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(51,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-112-A0-A1',0,17,0,1,0,3,1,0,545,NULL,NULL,NULL,10.00,12.00,13.00,880.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(52,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-112-A0-A2',0,17,0,1,0,3,1,0,545,NULL,NULL,NULL,10.00,12.00,13.00,880.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(53,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-112-A0-A3',0,17,0,1,0,3,1,0,545,NULL,NULL,NULL,10.00,12.00,13.00,880.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(54,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-105-A0',0,20,0,1,0,6,1,0,507,NULL,NULL,NULL,18.00,20.00,14.00,688.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-170-A0',0,19,0,1,0,6,1,0,588,NULL,NULL,NULL,19.00,18.00,11.00,551.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(56,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-197-A0',0,19,0,1,0,7,1,0,557,451.17,NULL,NULL,18.00,14.00,12.00,831.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-197-A0-A1',0,19,0,1,0,7,1,0,557,445.6,NULL,NULL,18.00,14.00,12.00,831.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(58,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-155-A0',0,11,0,1,0,5,1,0,548,NULL,NULL,NULL,10.00,11.00,11.00,769.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(59,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-155-A0-A1',0,11,0,1,0,5,1,0,548,NULL,NULL,NULL,10.00,11.00,11.00,769.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-195-A0',0,15,0,1,0,6,1,0,1060,NULL,NULL,NULL,14.00,17.00,15.00,511.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(61,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-170-A0',0,17,0,1,0,6,1,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(62,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-170-A0-A1',0,17,0,1,0,6,1,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]','SW-170-A0-A2',0,17,0,1,0,6,1,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-3.jpg\"]','SW-170-A0-A3',0,17,0,1,0,6,1,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-170-A0-A4',0,17,0,1,0,6,1,0,1014,NULL,NULL,NULL,14.00,19.00,14.00,561.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-155-A0',0,10,0,1,0,7,1,0,796,589.04,NULL,NULL,19.00,10.00,15.00,609.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-155-A0-A1',0,10,0,1,0,7,1,0,796,652.72,NULL,NULL,19.00,10.00,15.00,609.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-170-A0',0,16,0,1,0,7,1,0,680,NULL,NULL,NULL,17.00,12.00,15.00,531.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-180-A0',0,16,0,1,0,4,1,0,430,NULL,NULL,NULL,12.00,13.00,12.00,631.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(70,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-121-A0',0,10,0,1,0,4,1,0,784,NULL,NULL,NULL,11.00,19.00,20.00,585.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-121-A0-A1',0,10,0,1,0,4,1,0,784,NULL,NULL,NULL,11.00,19.00,20.00,585.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-121-A0-A2',0,10,0,1,0,4,1,0,784,NULL,NULL,NULL,11.00,19.00,20.00,585.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-121-A0-A3',0,10,0,1,0,4,1,0,784,NULL,NULL,NULL,11.00,19.00,20.00,585.00,NULL,0,'2022-11-13 00:52:02','2022-11-13 00:52:07','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Dual Camera 20MP',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Red & Black Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Nikon HD camera',NULL,NULL),('vi',35,'Audio Equipment',NULL,NULL),('vi',36,'Audio Equipment',NULL,NULL),('vi',37,'Audio Equipment',NULL,NULL),('vi',38,'Smart Televisions',NULL,NULL),('vi',39,'Smart Televisions',NULL,NULL),('vi',40,'Samsung Smart Phone',NULL,NULL),('vi',41,'Samsung Smart Phone',NULL,NULL),('vi',42,'Samsung Smart Phone',NULL,NULL),('vi',43,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',44,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',45,'EPSION Plaster Printer',NULL,NULL),('vi',46,'EPSION Plaster Printer',NULL,NULL),('vi',47,'EPSION Plaster Printer',NULL,NULL),('vi',48,'EPSION Plaster Printer',NULL,NULL),('vi',49,'EPSION Plaster Printer',NULL,NULL),('vi',50,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',51,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',52,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',53,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',54,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',56,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',58,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',59,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',61,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',62,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',68,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',70,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(2,7,10,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(3,3,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(4,8,23,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(5,6,9,1.00,'Best ecommerce CMS online store!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(6,9,18,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(7,2,23,5.00,'Best ecommerce CMS online store!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/17.jpg\"]'),(8,3,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(9,3,15,4.00,'Clean & perfect source code','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/8.jpg\"]'),(10,2,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(11,10,6,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\"]'),(12,1,11,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(13,5,16,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/15.jpg\"]'),(14,7,13,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\"]'),(15,1,15,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(16,2,2,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(17,1,5,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(18,4,12,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(19,10,14,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(20,8,6,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(21,2,10,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/22.jpg\"]'),(22,5,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(23,5,18,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\"]'),(24,8,13,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(25,7,13,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(26,2,12,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(27,7,21,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(28,3,8,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(29,6,18,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(30,8,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(31,8,2,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/13.jpg\"]'),(32,3,14,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(33,2,13,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(34,6,18,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(35,8,7,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(36,3,10,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(37,2,10,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\"]'),(38,6,8,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(39,1,22,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(40,4,18,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(41,8,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(42,10,20,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(43,6,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(44,8,23,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(45,7,17,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(46,4,19,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(47,3,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(48,1,4,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/18.jpg\"]'),(49,3,11,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/9.jpg\"]'),(50,5,20,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\"]'),(51,9,13,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\"]'),(52,1,16,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(53,6,21,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(54,10,14,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(55,1,3,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(56,5,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(57,5,13,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(58,3,13,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(59,1,7,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(60,7,15,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(61,10,19,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(62,1,18,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(63,8,19,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(64,2,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(65,5,4,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(66,3,15,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(67,2,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(68,8,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(69,8,2,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/23.jpg\"]'),(70,8,21,1.00,'Good app, good backup service and support. Good documentation.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(71,5,14,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\"]'),(72,4,17,2.00,'Best ecommerce CMS online store!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(73,6,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(74,10,11,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(75,4,6,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(76,4,18,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(77,6,11,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]'),(78,10,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(79,9,1,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(80,9,22,4.00,'Clean & perfect source code','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(81,4,14,1.00,'Good app, good backup service and support. Good documentation.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(82,3,6,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(83,4,6,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(84,3,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(85,4,23,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(86,1,21,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(87,2,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(88,4,17,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(89,2,19,1.00,'Best ecommerce CMS online store!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(90,9,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\"]'),(91,3,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(92,8,12,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(93,3,11,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\"]'),(94,7,10,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(95,1,13,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(96,9,21,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(97,10,19,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(98,9,14,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(99,2,2,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/2.jpg\",\"products\\/16.jpg\"]'),(100,7,6,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-13 00:52:03','2022-11-13 00:52:03','[\"products\\/3.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-11-11 08:52:07','2022-11-13 00:52:07'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-10-28 04:52:07','2022-10-28 04:52:07'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-11-11 10:52:07','2022-11-13 00:52:07'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-10-30 12:52:07','2022-10-30 12:52:07'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-11-11 12:52:07','2022-11-13 00:52:07'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-11-02 12:52:07','2022-11-02 12:52:07'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-11-11 12:52:07','2022-11-13 00:52:07'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-11-05 22:52:07','2022-11-05 22:52:07'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-11-11 14:52:07','2022-11-13 00:52:07'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-11-01 16:52:07','2022-11-01 16:52:07'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-11-11 14:52:07','2022-11-13 00:52:07'),(15,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,6,6,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(17,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-11-02 08:52:07','2022-11-02 08:52:07'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-11-11 16:52:07','2022-11-13 00:52:07'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-11-11 16:52:07','2022-11-13 00:52:07'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-11-11 18:52:07','2022-11-13 00:52:07'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(25,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-11-08 00:52:07','2022-11-08 00:52:07'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-11-11 18:52:07','2022-11-13 00:52:07'),(27,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,10,10,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(29,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-11-11 20:52:07','2022-11-11 20:52:07'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-11-11 20:52:07','2022-11-13 00:52:07'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-11-05 10:52:07','2022-11-05 10:52:07'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-11-11 22:52:07','2022-11-13 00:52:07'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(34,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-11-04 08:52:07','2022-11-04 08:52:07'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-11-11 22:52:07','2022-11-13 00:52:07'),(36,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-11-12 00:52:07','2022-11-13 00:52:07'),(38,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-11-12 00:52:07','2022-11-13 00:52:07'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-11-03 20:52:07','2022-11-03 20:52:07'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-11-12 02:52:07','2022-11-13 00:52:07'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(43,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-11-07 04:52:07','2022-11-07 04:52:07'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-11-12 04:52:07','2022-11-13 00:52:07'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-11-05 12:52:07','2022-11-05 12:52:07'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-11-12 04:52:07','2022-11-13 00:52:07'),(48,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-11-07 18:52:07','2022-11-07 18:52:07'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-11-12 06:52:07','2022-11-13 00:52:07'),(50,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-11-07 00:52:07','2022-11-07 00:52:07'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-11-12 06:52:07','2022-11-13 00:52:07'),(52,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-11-10 08:52:07','2022-11-10 08:52:07'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-11-12 08:52:07','2022-11-13 00:52:07'),(54,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-11-12 08:52:07','2022-11-13 00:52:07'),(56,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-11-10 02:52:07','2022-11-10 02:52:07'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-11-12 10:52:07','2022-11-13 00:52:07'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(59,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-11-12 10:52:07','2022-11-12 10:52:07'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-11-12 10:52:07','2022-11-13 00:52:07'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(62,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-11-12 12:52:07','2022-11-13 00:52:07'),(64,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(65,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-11-11 00:52:07','2022-11-11 00:52:07'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-11-12 12:52:07','2022-11-13 00:52:07'),(67,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-11-09 06:52:07','2022-11-09 06:52:07'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-11-12 14:52:07','2022-11-13 00:52:07'),(69,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-11-11 18:52:07','2022-11-11 18:52:07'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-11-12 14:52:07','2022-11-13 00:52:07'),(71,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-11-11 16:52:07','2022-11-11 16:52:07'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-11-12 16:52:07','2022-11-13 00:52:07'),(73,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,29,29,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(74,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(75,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-11-12 18:52:07','2022-11-13 00:52:07'),(77,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(78,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-11-12 12:52:07','2022-11-12 12:52:07'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-11-12 18:52:07','2022-11-13 00:52:07'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(81,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-11-12 00:52:07','2022-11-12 00:52:07'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-11-12 20:52:07','2022-11-13 00:52:07'),(83,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-11-12 16:52:07','2022-11-12 16:52:07'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-11-12 20:52:07','2022-11-13 00:52:07'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2022-11-13 00:52:07','2022-11-13 00:52:07'),(86,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-11-12 06:52:07','2022-11-12 06:52:07'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-11-12 22:52:07','2022-11-13 00:52:07'),(88,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-11-12 08:52:07','2022-11-12 08:52:07'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-11-12 22:52:07','2022-11-13 00:52:07');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `transaction` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3569.00,NULL,'','approved',3034.20,'pending','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0017639172','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 07:52:07',NULL,NULL,NULL),(2,2,NULL,2629.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0061146498','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 07:52:07','2022-11-13 07:52:07',NULL,NULL),(3,3,NULL,1827.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0026367227','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-23 07:52:07',NULL,NULL,NULL),(4,4,NULL,631.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0084947914','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 07:52:07',NULL,NULL,NULL),(5,5,NULL,4434.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD002129625','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 07:52:07','2022-11-13 07:52:07',NULL,NULL),(6,6,NULL,2660.00,NULL,'','delivered',3280.20,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD009449343','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 07:52:07','2022-11-13 07:52:07',NULL,NULL),(7,7,NULL,2625.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0048579662','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 07:52:07','2022-11-13 07:52:07',NULL,NULL),(8,8,NULL,1771.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0096414970','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 07:52:07',NULL,NULL,NULL),(9,9,NULL,1683.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD007110396','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-22 07:52:07','2022-11-13 07:52:07',NULL,NULL),(10,10,NULL,1693.00,NULL,'','delivered',1901.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0031685186','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 07:52:07','2022-11-13 07:52:07',NULL,NULL),(11,11,NULL,1755.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0074479446','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-22 07:52:07',NULL,NULL,NULL),(12,12,NULL,1428.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0012990255','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 07:52:07','2022-11-13 07:52:07',NULL,NULL),(13,13,NULL,2388.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0060034594','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 07:52:07',NULL,NULL,NULL),(14,14,NULL,1526.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0042253241','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 07:52:07',NULL,NULL,NULL),(15,15,NULL,2328.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD001488589','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 07:52:07',NULL,NULL,NULL),(16,16,NULL,7083.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0036274115','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 07:52:07','2022-11-13 07:52:07',NULL,NULL),(17,17,NULL,2493.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0039902491','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-23 07:52:07','2022-11-13 07:52:07',NULL,NULL),(18,18,NULL,1170.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0055742250','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 07:52:07',NULL,NULL,NULL),(19,19,NULL,763.00,NULL,'','approved',575.30,'pending','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0081094649','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 07:52:07',NULL,NULL,NULL),(20,20,NULL,1206.00,NULL,'','approved',1243.20,'pending','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0035905883','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 07:52:07',NULL,NULL,NULL),(21,21,NULL,1750.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0089385328','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 07:52:07',NULL,NULL,NULL),(22,22,NULL,1122.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0043499771','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 07:52:07',NULL,NULL,NULL),(23,23,NULL,5377.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0085611043','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 07:52:07','2022-11-13 07:52:07',NULL,NULL),(24,24,NULL,603.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0072298824','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 07:52:07','2022-11-13 07:52:07',NULL,NULL),(25,25,NULL,3510.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0096119256','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 07:52:07','2022-11-13 07:52:07',NULL,NULL),(26,26,NULL,3833.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0071470346','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 07:52:07',NULL,NULL,NULL),(27,27,NULL,875.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0010303257','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 07:52:07',NULL,NULL,NULL),(28,28,NULL,3462.00,NULL,'','approved',5665.40,'pending','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0027881024','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 07:52:07',NULL,NULL,NULL),(29,29,NULL,3385.00,NULL,'','delivered',4232.90,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0042940010','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 07:52:07','2022-11-13 07:52:07',NULL,NULL),(30,30,NULL,1379.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0071810543','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 07:52:07','2022-11-13 07:52:07',NULL,NULL),(31,31,NULL,1683.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0031151722','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-22 07:52:07','2022-11-13 07:52:07',NULL,NULL),(32,32,NULL,5078.00,NULL,'','approved',4251.80,'pending','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0035127691','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 07:52:07',NULL,NULL,NULL),(33,33,NULL,609.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD004220371','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 07:52:07','2022-11-13 07:52:07',NULL,NULL),(34,34,NULL,3173.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0049152581','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 07:52:07',NULL,NULL,NULL),(35,35,NULL,3167.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-13 00:52:07','2022-11-13 00:52:07','JJD0099714629','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 07:52:07',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-11-13 00:52:03','2022-11-13 00:52:03'),(2,'None',0.000000,2,'published','2022-11-13 00:52:03','2022-11-13 00:52:03');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,'PAYMENT',1,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(3,'ORDER & RETURNS',2,'published','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','84b8df5a1cb97ba37c6dd8fc9391deb8',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','84b8df5a1cb97ba37c6dd8fc9391deb8',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','3e71b1fa5df6db1170596cd0fdf75a00',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','10b8d47fb217a40746e74f445df08031',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','04c74e0bfe69b40b65ab164289d55e97',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','a028142602af9df694591bd708d34697',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','3339c235b2b83c18d71d43e5b401b8b2',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','43f161510773373efec70a8bed5b1fed',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','10b8d47fb217a40746e74f445df08031',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','04c74e0bfe69b40b65ab164289d55e97',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','a028142602af9df694591bd708d34697',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','3339c235b2b83c18d71d43e5b401b8b2',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',916,'brands/1.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(2,0,'2',1,'image/jpeg',916,'brands/2.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(3,0,'3',1,'image/jpeg',916,'brands/3.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(4,0,'4',1,'image/jpeg',916,'brands/4.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(5,0,'5',1,'image/jpeg',916,'brands/5.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(6,0,'6',1,'image/jpeg',916,'brands/6.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(7,0,'7',1,'image/jpeg',916,'brands/7.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(8,0,'1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(9,0,'2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(10,0,'3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(11,0,'4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(12,0,'5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(13,0,'6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(14,0,'7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(15,0,'8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(16,0,'1',3,'image/jpeg',2165,'products/1.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(17,0,'10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(18,0,'10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(19,0,'10',3,'image/jpeg',2165,'products/10.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(20,0,'11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(21,0,'11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(22,0,'11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(23,0,'11',3,'image/jpeg',2165,'products/11.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(24,0,'12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(25,0,'12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(26,0,'12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(27,0,'12',3,'image/jpeg',2165,'products/12.jpg','[]','2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(28,0,'13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(29,0,'13',3,'image/jpeg',2165,'products/13.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(30,0,'14',3,'image/jpeg',2165,'products/14.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(31,0,'15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(32,0,'15',3,'image/jpeg',2165,'products/15.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(33,0,'16',3,'image/jpeg',2165,'products/16.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(34,0,'17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(35,0,'17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(36,0,'17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(37,0,'17',3,'image/jpeg',2165,'products/17.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(38,0,'18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(39,0,'18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(40,0,'18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(41,0,'18',3,'image/jpeg',2165,'products/18.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(42,0,'19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2022-11-13 00:51:58','2022-11-13 00:51:58',NULL),(43,0,'19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(44,0,'19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(45,0,'19',3,'image/jpeg',2165,'products/19.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(46,0,'2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(47,0,'2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(48,0,'2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(49,0,'2',3,'image/jpeg',2165,'products/2.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(50,0,'20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(51,0,'20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(52,0,'20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(53,0,'20',3,'image/jpeg',2165,'products/20.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(54,0,'21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(55,0,'21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(56,0,'21',3,'image/jpeg',2165,'products/21.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(57,0,'22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2022-11-13 00:51:59','2022-11-13 00:51:59',NULL),(58,0,'22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(59,0,'22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(60,0,'22',3,'image/jpeg',2165,'products/22.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(61,0,'23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(62,0,'23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(63,0,'23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(64,0,'23',3,'image/jpeg',2165,'products/23.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(65,0,'3',3,'image/jpeg',2165,'products/3.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(66,0,'4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(67,0,'4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(68,0,'4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(69,0,'4',3,'image/jpeg',2165,'products/4.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(70,0,'5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(71,0,'5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(72,0,'5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2022-11-13 00:52:00','2022-11-13 00:52:00',NULL),(73,0,'5',3,'image/jpeg',2165,'products/5.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(74,0,'6',3,'image/jpeg',2165,'products/6.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(75,0,'7',3,'image/jpeg',2165,'products/7.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(76,0,'8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(77,0,'8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(78,0,'8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(79,0,'8',3,'image/jpeg',2165,'products/8.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(80,0,'9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(81,0,'9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(82,0,'9',3,'image/jpeg',2165,'products/9.jpg','[]','2022-11-13 00:52:01','2022-11-13 00:52:01',NULL),(83,0,'1',4,'image/jpeg',2165,'customers/1.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(84,0,'10',4,'image/jpeg',2165,'customers/10.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(85,0,'2',4,'image/jpeg',2165,'customers/2.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(86,0,'3',4,'image/jpeg',2165,'customers/3.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(87,0,'4',4,'image/jpeg',2165,'customers/4.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(88,0,'5',4,'image/jpeg',2165,'customers/5.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(89,0,'6',4,'image/jpeg',2165,'customers/6.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(90,0,'7',4,'image/jpeg',2165,'customers/7.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(91,0,'8',4,'image/jpeg',2165,'customers/8.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(92,0,'9',4,'image/jpeg',2165,'customers/9.jpg','[]','2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(93,0,'1',5,'image/jpeg',2165,'news/1.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(94,0,'10',5,'image/jpeg',2165,'news/10.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(95,0,'11',5,'image/jpeg',2165,'news/11.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(96,0,'2',5,'image/jpeg',2165,'news/2.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(97,0,'3',5,'image/jpeg',2165,'news/3.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(98,0,'4',5,'image/jpeg',2165,'news/4.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(99,0,'5',5,'image/jpeg',2165,'news/5.jpg','[]','2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(100,0,'6',5,'image/jpeg',2165,'news/6.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(101,0,'7',5,'image/jpeg',2165,'news/7.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(102,0,'8',5,'image/jpeg',2165,'news/8.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(103,0,'9',5,'image/jpeg',2165,'news/9.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(104,0,'1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(105,0,'1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(106,0,'1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(107,0,'2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(108,0,'2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(109,0,'2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(110,0,'3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(111,0,'3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(112,0,'3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(113,0,'1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(114,0,'2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(115,0,'3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(116,0,'4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(117,0,'5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(118,0,'6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(119,0,'7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(120,0,'8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(121,0,'9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(122,0,'app',8,'image/png',1849,'general/app.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(123,0,'coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(124,0,'favicon',8,'image/png',1925,'general/favicon.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(125,0,'logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(126,0,'logo-light',8,'image/png',783,'general/logo-light.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(127,0,'logo',8,'image/png',793,'general/logo.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(128,0,'newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(129,0,'payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(130,0,'payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(131,0,'payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(132,0,'payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(133,0,'payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(134,0,'1',9,'image/png',3482,'stores/1.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(135,0,'10',9,'image/png',1675,'stores/10.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(136,0,'11',9,'image/png',1857,'stores/11.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(137,0,'12',9,'image/png',2046,'stores/12.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(138,0,'13',9,'image/png',1597,'stores/13.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(139,0,'14',9,'image/png',1649,'stores/14.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(140,0,'15',9,'image/png',2120,'stores/15.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(141,0,'16',9,'image/png',2556,'stores/16.png','[]','2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(142,0,'17',9,'image/png',2631,'stores/17.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(143,0,'2',9,'image/png',3369,'stores/2.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(144,0,'3',9,'image/png',3044,'stores/3.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(145,0,'4',9,'image/png',3096,'stores/4.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(146,0,'5',9,'image/png',3607,'stores/5.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(147,0,'6',9,'image/png',3778,'stores/6.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(148,0,'7',9,'image/png',1566,'stores/7.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(149,0,'8',9,'image/png',1773,'stores/8.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL),(150,0,'9',9,'image/png',1671,'stores/9.png','[]','2022-11-13 00:52:07','2022-11-13 00:52:07',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(2,0,'product-categories','product-categories',0,'2022-11-13 00:51:56','2022-11-13 00:51:56',NULL),(3,0,'products','products',0,'2022-11-13 00:51:57','2022-11-13 00:51:57',NULL),(4,0,'customers','customers',0,'2022-11-13 00:52:02','2022-11-13 00:52:02',NULL),(5,0,'news','news',0,'2022-11-13 00:52:03','2022-11-13 00:52:03',NULL),(6,0,'sliders','sliders',0,'2022-11-13 00:52:04','2022-11-13 00:52:04',NULL),(7,0,'promotion','promotion',0,'2022-11-13 00:52:05','2022-11-13 00:52:05',NULL),(8,0,'general','general',0,'2022-11-13 00:52:06','2022-11-13 00:52:06',NULL),(9,0,'stores','stores',0,'2022-11-13 00:52:06','2022-11-13 00:52:06',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,5,'main-menu','2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'Quick links','quick-links','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'Company','company','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'Business','business','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(5,'Menu chính','menu-chinh','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(7,'Công ty','cong-ty','published','2022-11-13 00:52:06','2022-11-13 00:52:06'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-13 00:51:57','2022-11-13 00:51:57'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-11-13 00:52:01','2022-11-13 00:52:01'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2020_11_18_150916_ads_create_ads_table',2),(23,'2021_12_02_035301_add_ads_translations_table',2),(24,'2015_06_29_025744_create_audit_history',3),(25,'2015_06_18_033822_create_blog_table',4),(26,'2021_02_16_092633_remove_default_value_for_author_type',4),(27,'2021_12_03_030600_create_blog_translations',4),(28,'2022_04_19_113923_add_index_to_table_posts',4),(29,'2016_06_17_091537_create_contacts_table',5),(30,'2020_03_05_041139_create_ecommerce_tables',6),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(34,'2021_02_18_073505_update_table_ec_reviews',6),(35,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(36,'2021_03_10_025153_change_column_tax_amount',6),(37,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(38,'2021_04_28_074008_ecommerce_create_product_label_table',6),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(40,'2021_06_28_153141_correct_slugs_data',6),(41,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(42,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(43,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(44,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(45,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(46,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(47,'2021_11_23_071403_correct_languages_for_product_variations',6),(48,'2021_11_28_031808_add_product_tags_translations',6),(49,'2021_12_01_031123_add_featured_image_to_ec_products',6),(50,'2022_01_01_033107_update_table_ec_shipments',6),(51,'2022_02_16_042457_improve_product_attribute_sets',6),(52,'2022_03_22_075758_correct_product_name',6),(53,'2022_04_19_113334_add_index_to_ec_products',6),(54,'2022_04_28_144405_remove_unused_table',6),(55,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(56,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(57,'2022_06_16_095633_add_index_to_some_tables',6),(58,'2022_06_30_035148_create_order_referrals_table',6),(59,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(60,'2022_08_14_032836_create_ec_order_returns_table',6),(61,'2022_08_14_033554_create_ec_order_return_items_table',6),(62,'2022_08_15_040324_add_billing_address',6),(63,'2022_08_30_091114_support_digital_products_table',6),(64,'2022_09_13_095744_create_options_table',6),(65,'2022_09_13_104347_create_option_value_table',6),(66,'2022_10_05_163518_alter_table_ec_order_product',6),(67,'2022_10_12_041517_create_invoices_table',6),(68,'2022_10_12_142226_update_orders_table',6),(69,'2022_10_13_024916_update_table_order_returns',6),(70,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(71,'2018_07_09_221238_create_faq_table',7),(72,'2021_12_03_082134_create_faq_translations',7),(73,'2016_10_03_032336_create_languages_table',8),(74,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(75,'2021_12_03_075608_create_page_translations',9),(76,'2019_11_18_061011_create_country_table',10),(77,'2021_12_03_084118_create_location_translations',10),(78,'2021_12_03_094518_migrate_old_location_data',10),(79,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(80,'2022_01_16_085908_improve_plugin_location',10),(81,'2022_08_04_052122_delete_location_backup_tables',10),(82,'2022_10_29_065232_increase_states_abbreviation_column',10),(83,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(84,'2021_07_06_030002_create_marketplace_table',11),(85,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(86,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(87,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(88,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(89,'2021_12_06_031304_update_table_mp_customer_revenues',11),(90,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(91,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(92,'2022_11_02_071413_add_more_info_for_store',11),(93,'2022_11_02_080444_add_tax_info',11),(94,'2017_10_24_154832_create_newsletter_table',12),(95,'2017_05_18_080441_create_payment_tables',13),(96,'2021_03_27_144913_add_customer_type_into_table_payments',13),(97,'2021_05_24_034720_make_column_currency_nullable',13),(98,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(99,'2021_10_19_020859_update_metadata_field',13),(100,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(101,'2022_07_07_153354_update_charge_id_in_table_payments',13),(102,'2017_07_11_140018_create_simple_slider_table',14),(103,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` int unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,2,2428.60,0.00,2428.60,0.00,'USD',NULL,'2022-11-11 18:52:07','2022-11-11 18:52:07',0,NULL),(2,10,5,3574.30,0.00,3574.30,2428.60,'USD',NULL,'2022-11-11 00:52:08','2022-11-11 00:52:08',0,NULL),(3,2,7,2518.68,0.00,2518.68,0.00,'USD',NULL,'2022-11-11 16:52:08','2022-11-11 16:52:08',0,NULL),(4,10,12,1175.90,0.00,1175.90,6002.90,'USD',NULL,'2022-11-03 06:52:08','2022-11-03 06:52:08',0,NULL),(5,10,17,1726.70,0.00,1726.70,7178.80,'USD',NULL,'2022-11-11 12:52:08','2022-11-11 12:52:08',0,NULL),(6,2,23,8570.00,0.00,8570.00,2518.68,'USD',NULL,'2022-11-07 00:52:08','2022-11-07 00:52:08',0,NULL),(7,10,24,651.20,0.00,651.20,8905.50,'USD',NULL,'2022-10-25 06:52:08','2022-10-25 06:52:08',0,NULL),(8,10,25,2322.60,0.00,2322.60,9556.70,'USD',NULL,'2022-11-06 12:52:08','2022-11-06 12:52:08',0,NULL),(9,10,30,2043.80,0.00,2043.80,11879.30,'USD',NULL,'2022-10-23 08:52:08','2022-10-23 08:52:08',0,NULL),(10,2,31,3143.40,0.00,3143.40,11088.68,'USD',NULL,'2022-11-02 08:52:08','2022-11-02 08:52:08',0,NULL),(11,2,33,875.60,0.00,875.60,14232.08,'USD',NULL,'2022-11-07 08:52:09','2022-11-07 08:52:09',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,4847.00,15107.68,'USD','','{\"name\":\"Jaunita Kuhn V\",\"number\":\"+15316469075\",\"full_name\":\"Laila Stamm DVM\",\"description\":\"Benny Koss\"}',NULL,0,'processing',NULL,'2022-11-13 00:52:09','2022-11-13 00:52:09',NULL),(2,2,0.00,2430.00,10260.68,'USD','','{\"name\":\"Jaunita Kuhn V\",\"number\":\"+15316469075\",\"full_name\":\"Laila Stamm DVM\",\"description\":\"Benny Koss\"}',NULL,0,'pending',NULL,'2022-11-13 00:52:09','2022-11-13 00:52:09',NULL),(3,10,0.00,2235.00,13923.10,'USD','','{\"name\":\"Vickie Hackett\",\"number\":\"+15056190228\",\"full_name\":\"Madelyn Monahan\",\"description\":\"Lauriane Krajcik\"}',NULL,0,'pending',NULL,'2022-11-13 00:52:09','2022-11-13 00:52:09',NULL),(4,10,0.00,1681.00,11688.10,'USD','','{\"name\":\"Vickie Hackett\",\"number\":\"+15056190228\",\"full_name\":\"Madelyn Monahan\",\"description\":\"Lauriane Krajcik\"}',NULL,0,'pending',NULL,'2022-11-13 00:52:09','2022-11-13 00:52:09',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','daphney.reynolds@example.com','+12097330746','68286 Kutch Street','MA','New Hampshire','Port Kiannaberg',2,'stores/1.png','Odit deserunt voluptate temporibus iure.','Consequatur delectus nesciunt labore vel ea rem. Molestias dolor sit debitis rerum laboriosam unde in quia. Laborum hic non dolorem et.','published',NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07',NULL,NULL),(2,'Global Office','damian17@example.net','+14303253767','32858 Greenfelder Harbor','MU','Alaska','Kimshire',10,'stores/2.png','Eum laborum nisi voluptate ipsam voluptatem ea.','Illo ad et dolores excepturi necessitatibus voluptate. Dicta cum placeat sed natus qui. Omnis nihil quo autem quas sit sint.','published',NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,7830.68,0.00,15107.68,'$2y$10$TYPesKHEgLUzHAqmfl/bGOS6FVy4c/LoWpcm5s68S48ggoOWM.WAu','{\"name\":\"Jaunita Kuhn V\",\"number\":\"+15316469075\",\"full_name\":\"Laila Stamm DVM\",\"description\":\"Benny Koss\"}','2022-11-13 00:52:07','2022-11-13 00:52:09','bank_transfer',NULL),(2,10,10007.10,0.00,13923.10,'$2y$10$kjfzqXW4xFLx4uEFi/dXf.Ee4WBIIKRkUang1T9gYEGjrEEd/81Hq','{\"name\":\"Vickie Hackett\",\"number\":\"+15056190228\",\"full_name\":\"Madelyn Monahan\",\"description\":\"Lauriane Krajcik\"}','2022-11-13 00:52:07','2022-11-13 00:52:09','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,'About us','<p>The table was a long way. So she set off at once, while all the jelly-fish out of sight. Alice remained looking thoughtfully at the March Hare and his friends shared their never-ending meal, and the other players, and shouting \'Off with their heads downward! The Antipathies, I think--\' (for, you see, because some of the words did not quite like the look of things at all, at all!\' \'Do as I do,\' said Alice very politely; but she thought it had lost something; and she thought it over afterwards.</p><p>Alice looked down at them, and was just saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate it would be quite as much as serpents do, you know.\' \'Who is this?\' She said this she looked back once or twice she had been (Before she had made the whole party swam to the door, and the beak-- Pray how did you call it sad?\' And she began looking at Alice the moment she quite forgot how to set about it; and as Alice could see it pop down a jar from one of the Gryphon, and all that,\'.</p><p>So she called softly after it, and found that it seemed quite natural); but when the Rabbit angrily. \'Here! Come and help me out of breath, and till the Pigeon had finished. \'As if I can do no more, whatever happens. What WILL become of it; and while she was beginning to end,\' said the White Rabbit blew three blasts on the table. \'Have some wine,\' the March Hare, \'that \"I breathe when I was going to be, from one minute to another! However, I\'ve got to the jury, and the choking of the jury.</p><p>The Caterpillar was the BEST butter, you know.\' \'And what an ignorant little girl or a watch to take the roof off.\' After a minute or two, it was an old crab, HE was.\' \'I never went to the voice of the house, and found quite a commotion in the middle, wondering how she would gather about her pet: \'Dinah\'s our cat. And she\'s such a capital one for catching mice you can\'t swim, can you?\' he added, turning to Alice, that she had asked it aloud; and in THAT direction,\' the Cat again, sitting on a.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(3,'Terms Of Use','<p>Pray, what is the driest thing I know. Silence all round, if you hold it too long; and that makes people hot-tempered,\' she went on again:-- \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not notice this last remark. \'Of course not,\' said the Gryphon, and, taking Alice by the fire, stirring a large kitchen, which was the Cat again, sitting.</p><p>Queen. An invitation for the hedgehogs; and in THAT direction,\' waving the other side of the house, \"Let us both go to on the trumpet, and called out \'The Queen! The Queen!\' and the procession moved on, three of her sharp little chin into Alice\'s shoulder as he could think of what work it would like the look of the cupboards as she ran; but the Hatter continued, \'in this way:-- \"Up above the world she was coming back to the Gryphon. \'Do you mean by that?\' said the Caterpillar. \'Not QUITE.</p><p>If she should chance to be in before the officer could get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same side of the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it before,\' said Alice,) and round the refreshments!\' But there seemed to be seen: she found this a good deal worse off than before, as the March Hare: she thought it had gone. \'Well! I\'ve often seen a rabbit with either.</p><p>Alice, and she trembled till she had quite forgotten the little glass box that was said, and went on for some minutes. Alice thought she might as well go in ringlets at all; and I\'m sure I can\'t take more.\' \'You mean you can\'t think! And oh, my poor hands, how is it I can\'t quite follow it as you are; secondly, because she was coming back to the door, she walked down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the place where it had struck her.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(4,'Terms & Conditions','<p>Mock Turtle. \'Hold your tongue, Ma!\' said the Pigeon; \'but if they do, why then they\'re a kind of serpent, that\'s all I can reach the key; and if the Queen was to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to do?\' said Alice. \'I wonder how many miles I\'ve fallen by this time.) \'You\'re nothing but the Hatter replied. \'Of course it is,\' said the Knave, \'I didn\'t know it was empty: she did not seem to encourage the witness at all: he.</p><p>Lizard, who seemed to rise like a mouse, That he met in the wood,\' continued the Pigeon, raising its voice to its feet, ran round the court and got behind Alice as she could see it trying in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I shall be punished for it now, I suppose, by being drowned in my own tears! That WILL be a book written about me, that there ought! And when I was sent for.\' \'You ought to be no chance of getting up and ran the faster, while more and.</p><p>She said the Hatter added as an explanation. \'Oh, you\'re sure to kill it in time,\' said the Dodo had paused as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Mock Turtle Soup is made from,\' said the King had said that day. \'No, no!\' said the Queen, stamping on the top of his tail. \'As if I might venture to ask the question?\' said the King, \'unless it was out of the soldiers remaining behind to.</p><p>Pigeon had finished. \'As if I know all the things I used to know. Let me see--how IS it to half-past one as long as you say it.\' \'That\'s nothing to what I eat\" is the reason they\'re called lessons,\' the Gryphon interrupted in a moment. \'Let\'s go on till you come to the little dears came jumping merrily along hand in her lessons in here? Why, there\'s hardly enough of it had grown in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\'.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(5,'Refund Policy','<p>Rabbit came up to them to be a book written about me, that there was a very deep well. Either the well was very likely to eat some of them attempted to explain the paper. \'If there\'s no name signed at the top of her little sister\'s dream. The long grass rustled at her rather inquisitively, and seemed to be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'but when you come to an end! \'I wonder what they WILL do next! If they had to stoop to save her neck would bend about easily in any.</p><p>King said to Alice, very much what would be like, but it is.\' \'I quite agree with you,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little pebbles came rattling in at once.\' However, she got to go on till you come to the door, she walked off, leaving Alice alone with the lobsters to the shore. CHAPTER III. A Caucus-Race and a sad tale!\' said the Knave, \'I didn\'t know how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the.</p><p>While the Duchess was VERY ugly; and secondly, because they\'re making such a dear quiet thing,\' Alice went on, \'and most of \'em do.\' \'I don\'t know one,\' said Alice, rather alarmed at the mushroom for a minute or two, and the poor little thing sobbed again (or grunted, it was talking in his turn; and both footmen, Alice noticed, had powdered hair that WOULD always get into that lovely garden. First, however, she again heard a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so.</p><p>Gryphon, and the King said to herself, \'Which way? Which way?\', holding her hand again, and made believe to worry it; then Alice dodged behind a great crash, as if she had someone to listen to her, \'if we had the door and found quite a long sleep you\'ve had!\' \'Oh, I\'ve had such a rule at processions; \'and besides, what would happen next. The first witness was the first really clever thing the King said to herself, for she felt a violent blow underneath her chin: it had entirely disappeared; so.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(10,'Affiliate','<p>Queen was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its legs hanging down, but generally, just as if she meant to take the place of the room. The cook threw a frying-pan after her as she spoke. (The unfortunate little Bill had left off staring at the top of his shrill little voice, the name of nearly everything there. \'That\'s the most confusing thing I ever heard!\' \'Yes, I think that will be When they take us up and said.</p><p>Gryphon replied rather impatiently: \'any shrimp could have been ill.\' \'So they were,\' said the Gryphon, and all would change (she knew) to the Gryphon. \'Do you play croquet with the Queen, who was sitting on the glass table as before, \'It\'s all about for it, you may SIT down,\' the King sharply. \'Do you play croquet with the dream of Wonderland of long ago: and how she would catch a bad cold if she was now, and she tried her best to climb up one of the house down!\' said the Mock Turtle replied.</p><p>I know all the creatures order one about, and crept a little door into that lovely garden. First, however, she went on, turning to the heads of the sort,\' said the Cat, and vanished again. Alice waited till the puppy\'s bark sounded quite faint in the distance, screaming with passion. She had quite a long breath, and said \'No, never\') \'--so you can have no idea how confusing it is almost certain to disagree with you, sooner or later. However, this bottle does. I do wonder what they\'ll do well.</p><p>Alice, \'but I haven\'t had a wink of sleep these three little sisters--they were learning to draw, you know--\' She had quite forgotten the Duchess said after a few minutes, and she could guess, she was beginning to grow up any more if you\'d like it very hard indeed to make out who I am! But I\'d better take him his fan and a large fan in the sea. But they HAVE their tails in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a pun!\' the King put on his spectacles and looked into.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(11,'Career','<p>March Hare, \'that \"I breathe when I get it home?\' when it saw mine coming!\' \'How do you know about this business?\' the King and Queen of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the Mock Turtle is.\' \'It\'s the oldest rule in the other. In the very tones of her voice, and see how the Dodo in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to make out that she never knew so much frightened that she remained the same tone, exactly as if.</p><p>AND WASHING--extra.\"\' \'You couldn\'t have done that, you know,\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Duchess, it had a door leading right into it. \'That\'s very curious!\' she thought. \'I must be collected at once without waiting for turns, quarrelling all the rats and--oh dear!\' cried Alice (she was rather doubtful whether she ought to be sure; but I grow at a king,\' said Alice. \'Why, you don\'t explain it is to do so. \'Shall we try another figure of the court, by the.</p><p>Alice had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was a table, with a growl, And concluded the banquet--] \'What IS a Caucus-race?\' said Alice; \'it\'s laid for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter with a little hot tea upon its nose. The Dormouse again took a minute or two the Caterpillar seemed to be no chance of getting up and to stand on their throne when they liked, and left foot, so as to prevent its undoing itself,).</p><p>She said it to half-past one as long as it was over at last: \'and I do so like that curious song about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that makes you forget to talk. I can\'t remember,\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, and she went on. \'We had the best plan.\' It sounded an excellent opportunity for showing off her head!\' the Queen till she was beginning very angrily, but the Hatter.</p>',1,NULL,'default',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'VYLTKIJATL','cod',NULL,3034.20,1,'pending','confirm',1,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'SECEKFKXX0','stripe',NULL,2428.60,2,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'4ZWRVDVKR3','mollie',NULL,2467.60,3,'completed','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'RPYZVVR2TM','mollie',NULL,473.00,4,'completed','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'ZOGNU6PULU','paystack',NULL,3574.30,5,'completed','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'BD168WSMTS','cod',NULL,3280.20,6,'pending','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'ECJUMH6RJV','stripe',NULL,2518.68,7,'completed','confirm',6,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'ZR3PVDW3QU','mollie',NULL,2100.10,8,'completed','confirm',6,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'YZPZYVHMJC','bank_transfer',NULL,3143.40,9,'pending','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'37KMMS1JNG','cod',NULL,1901.00,10,'pending','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'LKXSF9F9P3','sslcommerz',NULL,1216.60,11,'completed','confirm',3,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'K9AHL5QB0X','paypal',NULL,1175.90,12,'completed','confirm',9,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'LUEO6ZK2RC','mollie',NULL,3583.00,13,'completed','confirm',9,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'BOZ5NJRL17','paystack',NULL,1098.30,14,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'1YTBWYZAHD','razorpay',NULL,3924.60,15,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'TSHBP3WJJB','bank_transfer',NULL,3445.65,16,'pending','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'JSAZNRIEZT','paypal',NULL,1726.70,17,'completed','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'GX3SJRASHW','bank_transfer',NULL,1646.40,18,'pending','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'36NHAVHGE6','cod',NULL,575.30,19,'pending','confirm',9,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'CYX02ZQA1L','cod',NULL,1243.20,20,'pending','confirm',9,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'MGC4N2211B','paystack',NULL,1178.10,21,'completed','confirm',6,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'FR6LHSVY0A','paypal',NULL,2129.40,22,'completed','confirm',6,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'4EMNR3WAYD','sslcommerz',NULL,8570.00,23,'completed','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'7WQXDZTPOC','stripe',NULL,651.20,24,'completed','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'M1R6CO7F99','stripe',NULL,2322.60,25,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'EDSLLTFGEC','stripe',NULL,2797.10,26,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'GCMJX1S0JG','paystack',NULL,617.10,27,'completed','confirm',3,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'0U47CAKQ35','cod',NULL,5665.40,28,'pending','confirm',3,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'GG2YQYZO15','cod',NULL,4232.90,29,'pending','confirm',8,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'MPYV7RXSV0','stripe',NULL,2043.80,30,'completed','confirm',7,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'3QDVGN6LN8','razorpay',NULL,3143.40,31,'completed','confirm',7,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'I6T1PBDW3S','cod',NULL,4251.80,32,'pending','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'4YDSTYK6AP','razorpay',NULL,875.60,33,'completed','confirm',4,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'I6QE4T7GGQ','bank_transfer',NULL,2315.50,34,'pending','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'0FW7JVN2KT','paypal',NULL,4276.90,35,'completed','confirm',5,NULL,NULL,'2022-11-13 00:52:07','2022-11-13 00:52:07','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,3,2),(5,2,3),(6,3,3),(7,2,4),(8,3,4),(9,1,5),(10,3,5),(11,2,6),(12,4,6),(13,2,7),(14,4,7),(15,1,8),(16,4,8),(17,1,9),(18,3,9),(19,2,10),(20,4,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1110,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1442,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2170,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',296,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2480,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2185,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',780,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1141,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1997,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',577,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',855,NULL,'2022-11-13 00:52:04','2022-11-13 00:52:04');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2022-11-13 00:51:56'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','f47f63dd1fddaf4e3bcbde520fc1d089',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(31,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(32,'theme-martfury-logo','general/logo.png',NULL,NULL),(33,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(34,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(35,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(36,'theme-martfury-email','contact@martfury.co',NULL,NULL),(37,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(38,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(39,'theme-martfury-homepage_id','1',NULL,NULL),(40,'theme-martfury-blog_page_id','6',NULL,NULL),(41,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(42,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(44,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(45,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(46,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(47,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(48,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(49,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(50,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(51,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(52,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(53,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(54,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(55,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(56,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(57,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(58,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(59,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(60,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(61,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(62,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(63,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(64,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(65,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(66,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(67,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(68,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(69,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(71,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(72,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(73,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-social-name-1','Facebook','2022-11-13 00:52:06','2022-11-13 00:52:06'),(76,'theme-martfury-social-url-1','https://www.facebook.com/','2022-11-13 00:52:06','2022-11-13 00:52:06'),(77,'theme-martfury-social-icon-1','fa-facebook','2022-11-13 00:52:06','2022-11-13 00:52:06'),(78,'theme-martfury-social-color-1','#3b5999','2022-11-13 00:52:06','2022-11-13 00:52:06'),(79,'theme-martfury-social-name-2','Twitter','2022-11-13 00:52:06','2022-11-13 00:52:06'),(80,'theme-martfury-social-url-2','https://www.twitter.com/','2022-11-13 00:52:06','2022-11-13 00:52:06'),(81,'theme-martfury-social-icon-2','fa-twitter','2022-11-13 00:52:06','2022-11-13 00:52:06'),(82,'theme-martfury-social-color-2','#55ACF9','2022-11-13 00:52:06','2022-11-13 00:52:06'),(83,'theme-martfury-social-name-3','Instagram','2022-11-13 00:52:06','2022-11-13 00:52:06'),(84,'theme-martfury-social-url-3','https://www.instagram.com/','2022-11-13 00:52:06','2022-11-13 00:52:06'),(85,'theme-martfury-social-icon-3','fa-instagram','2022-11-13 00:52:06','2022-11-13 00:52:06'),(86,'theme-martfury-social-color-3','#E1306C','2022-11-13 00:52:06','2022-11-13 00:52:06'),(87,'theme-martfury-social-name-4','Youtube','2022-11-13 00:52:06','2022-11-13 00:52:06'),(88,'theme-martfury-social-url-4','https://www.youtube.com/','2022-11-13 00:52:06','2022-11-13 00:52:06'),(89,'theme-martfury-social-icon-4','fa-youtube','2022-11-13 00:52:06','2022-11-13 00:52:06'),(90,'theme-martfury-social-color-4','#FF0000','2022-11-13 00:52:06','2022-11-13 00:52:06'),(91,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(92,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(93,'theme-martfury-vi-homepage_id','1',NULL,NULL),(94,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(95,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(98,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(99,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(100,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(101,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-11-13 00:52:05','2022-11-13 00:52:05'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-11-13 00:52:05','2022-11-13 00:52:05'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-11-13 00:52:05','2022-11-13 00:52:05'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-11-13 00:52:05','2022-11-13 00:52:05'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-11-13 00:52:05','2022-11-13 00:52:05'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-11-13 00:52:05','2022-11-13 00:52:05');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-13 00:51:56','2022-11-13 00:51:56'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-13 00:51:57','2022-11-13 00:51:57'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-11-13 00:52:01','2022-11-13 00:52:01'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-13 00:52:03','2022-11-13 00:52:03'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-11-13 00:52:04','2022-11-13 00:52:04'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-11-13 00:52:04','2022-11-13 00:52:04'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-11-13 00:52:04','2022-11-13 00:52:04'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-11-13 00:52:04','2022-11-13 00:52:04'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-11-13 00:52:04','2022-11-13 00:52:04'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-11-13 00:52:04','2022-11-13 00:52:06'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-11-13 00:52:05','2022-11-13 00:52:05'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-11-13 00:52:07','2022-11-13 00:52:07'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-11-13 00:52:07','2022-11-13 00:52:07');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-11-13 00:52:04','2022-11-13 00:52:04'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-11-13 00:52:04','2022-11-13 00:52:04'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-11-13 00:52:04','2022-11-13 00:52:04'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-11-13 00:52:04','2022-11-13 00:52:04'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-11-13 00:52:04','2022-11-13 00:52:04');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5067 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$euC4B8sM6UDfihLkIFSDHeOLeW0e2SQ8q2zMQNP3FvD5hB74jaOva',NULL,'2022-11-13 00:52:06','2022-11-13 00:52:06','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-11-13 00:52:06','2022-11-13 00:52:06'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-11-13 00:52:06','2022-11-13 00:52:06');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-13 14:52:26