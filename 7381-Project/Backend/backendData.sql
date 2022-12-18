-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64)
--
-- Host: 127.0.0.1    Database: backendData
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add article',6,'add_article'),(22,'Can change article',6,'change_article'),(23,'Can delete article',6,'delete_article'),(24,'Can view article',6,'view_article'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add token',8,'add_tokenproxy'),(30,'Can change token',8,'change_tokenproxy'),(31,'Can delete token',8,'delete_tokenproxy'),(32,'Can view token',8,'view_tokenproxy'),(33,'Can add user',9,'add_member'),(34,'Can change user',9,'change_member'),(35,'Can delete user',9,'delete_member'),(36,'Can view user',9,'view_member'),(37,'Can add attachment',10,'add_attachment'),(38,'Can change attachment',10,'change_attachment'),(39,'Can delete attachment',10,'delete_attachment'),(40,'Can view attachment',10,'view_attachment'),(41,'Can add blog post',11,'add_blogpost'),(42,'Can change blog post',11,'change_blogpost'),(43,'Can delete blog post',11,'delete_blogpost'),(44,'Can view blog post',11,'view_blogpost'),(45,'Can add writings post',12,'add_writingspost'),(46,'Can change writings post',12,'change_writingspost'),(47,'Can delete writings post',12,'delete_writingspost'),(48,'Can view writings post',12,'view_writingspost');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_user_member_username` FOREIGN KEY (`user_id`) REFERENCES `user_member` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('1a3e74d6e3b94bd9d6817aeae58a64f8c5dab4be','2022-10-14 16:51:46.697171','test1'),('1f0b116993c31223537b0a1c1ecdd248a4564a42','2022-10-14 16:45:39.295493','root'),('315fa6a738278a64e07f60832349e6592af5db71','2022-10-14 16:38:43.791185','tao'),('82fd21f5799c21c724e67426679266e36fa094a4','2022-10-14 16:42:49.102331','111'),('b9a5c3d11f590168fea6ac1d1da3ec9d66d9b40a','2022-10-14 16:46:46.939436','test');
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_member_username` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_member_username` FOREIGN KEY (`user_id`) REFERENCES `user_member` (`username`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-10-16 12:00:02.491179','1','3212',1,'[{\"added\": {}}]',11,'root'),(2,'2022-10-16 12:51:47.964588','1','title',1,'[{\"added\": {}}]',12,'root'),(3,'2022-10-16 12:57:34.025195','2','title1',1,'[{\"added\": {}}]',12,'root'),(4,'2022-10-18 17:30:13.595343','4','White hair, it could be your body giving you alerts',1,'[{\"added\": {}}]',12,'root'),(5,'2022-10-18 17:30:54.192690','5','White hair, it could be your body giving you alerts',1,'[{\"added\": {}}]',12,'root'),(6,'2022-10-18 17:31:25.457112','6','Do adults need vitamin D supplements too?',1,'[{\"added\": {}}]',12,'root'),(7,'2022-10-18 17:33:15.984977','7','protect your stomach with a stomach pill?',1,'[{\"added\": {}}]',12,'root'),(8,'2022-10-18 17:34:46.833705','8','Can drinking probiotic yoghurt cure constipation?',1,'[{\"added\": {}}]',12,'root'),(9,'2022-10-18 17:35:10.012290','9','Why can\'t I squeeze if I have a furuncle?',1,'[{\"added\": {}}]',12,'root'),(10,'2022-10-18 17:35:33.194569','10','Does recovering from a snake bite create immunity?',1,'[{\"added\": {}}]',12,'root'),(11,'2022-10-18 17:36:09.649751','11','Can eating tofu cause kidney stones?',1,'[{\"added\": {}}]',12,'root'),(12,'2022-10-18 17:36:32.778204','12','Can I eat dried fruit if I want to take vitamin C',1,'[{\"added\": {}}]',12,'root'),(13,'2022-10-18 17:37:25.730421','13','Spinach is prone to kidney stones if eaten?',1,'[{\"added\": {}}]',12,'root'),(14,'2022-10-18 17:38:32.257321','14','massage to relieve a back sprain',1,'[{\"added\": {}}]',12,'root');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'articles','article'),(3,'auth','group'),(2,'auth','permission'),(7,'authtoken','token'),(8,'authtoken','tokenproxy'),(11,'blog','blogpost'),(4,'contenttypes','contenttype'),(10,'django_summernote','attachment'),(5,'sessions','session'),(9,'user','member'),(12,'writings','writingspost');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-10-14 16:15:51.490561'),(2,'contenttypes','0002_remove_content_type_name','2022-10-14 16:15:51.506467'),(3,'auth','0001_initial','2022-10-14 16:15:51.551071'),(4,'auth','0002_alter_permission_name_max_length','2022-10-14 16:15:51.562048'),(5,'auth','0003_alter_user_email_max_length','2022-10-14 16:15:51.565131'),(6,'auth','0004_alter_user_username_opts','2022-10-14 16:15:51.568156'),(7,'auth','0005_alter_user_last_login_null','2022-10-14 16:15:51.571605'),(8,'auth','0006_require_contenttypes_0002','2022-10-14 16:15:51.572526'),(9,'auth','0007_alter_validators_add_error_messages','2022-10-14 16:15:51.575097'),(10,'auth','0008_alter_user_username_max_length','2022-10-14 16:15:51.578341'),(11,'auth','0009_alter_user_last_name_max_length','2022-10-14 16:15:51.581080'),(12,'auth','0010_alter_group_name_max_length','2022-10-14 16:15:51.586281'),(13,'auth','0011_update_proxy_permissions','2022-10-14 16:15:51.589208'),(14,'auth','0012_alter_user_first_name_max_length','2022-10-14 16:15:51.592339'),(15,'user','0001_initial','2022-10-14 16:15:51.636477'),(16,'admin','0001_initial','2022-10-14 16:15:51.664512'),(17,'admin','0002_logentry_remove_auto_add','2022-10-14 16:15:51.668439'),(18,'admin','0003_logentry_add_action_flag_choices','2022-10-14 16:15:51.672899'),(19,'authtoken','0001_initial','2022-10-14 16:15:51.686696'),(20,'authtoken','0002_auto_20160226_1747','2022-10-14 16:15:51.697266'),(21,'authtoken','0003_tokenproxy','2022-10-14 16:15:51.698594'),(22,'sessions','0001_initial','2022-10-14 16:15:51.705338'),(23,'user','0002_alter_member_password','2022-10-14 16:26:03.303824'),(24,'user','0003_alter_member_password','2022-10-14 16:26:32.039654'),(25,'articles','0001_initial','2022-10-14 16:31:28.269792'),(26,'blog','0001_initial','2022-10-16 11:58:55.799599'),(27,'django_summernote','0001_initial','2022-10-16 11:58:55.805807'),(28,'django_summernote','0002_update-help_text','2022-10-16 11:58:55.807990'),(29,'django_summernote','0003_alter_attachment_id','2022-10-16 11:58:55.815871'),(30,'writings','0001_initial','2022-10-16 12:25:48.639598'),(31,'writings','0002_rename_blogpost_writingspost','2022-10-16 12:25:48.649906'),(32,'writings','0003_remove_writingspost_image_cover','2022-10-16 12:47:55.257631'),(33,'writings','0004_remove_writingspost_day_remove_writingspost_excerpt_and_more','2022-10-16 12:49:27.207800'),(34,'writings','0005_alter_writingspost_category','2022-10-16 12:56:57.971669'),(35,'writings','0006_alter_writingspost_title','2022-10-17 02:54:59.076002');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3pjuuweitaf9wm0wzk4o2iax5wpvomdt','.eJxVjEEOwiAQRe_C2hCghA4u3XsGMp0BqRpIgK6Md9cmXej2v_f-SwTcRg5bjy2sLM6i1TrE6XdekB6x7IzvWG5VUi2jrYvcFXnQLq-V4_NyuH8HGXv-1sn5RKBhZojIOhLDBEyW0ZG3xmlSkZAtJaPJu1lPACpNFpW1bIDE-wMRjjn_:1ok35E:Ja_rJrNac2E7VTe47__mF5xIdy9l6O9iAuN7PfUok3E','2022-10-30 12:49:36.659124'),('kubttttrw0pwk3ye9wp5f9a7c5oql4d4','.eJxVjEEOwiAQRe_C2hCghA4u3XsGMp0BqRpIgK6Md9cmXej2v_f-SwTcRg5bjy2sLM6i1TrE6XdekB6x7IzvWG5VUi2jrYvcFXnQLq-V4_NyuH8HGXv-1sn5RKBhZojIOhLDBEyW0ZG3xmlSkZAtJaPJu1lPACpNFpW1bIDE-wMRjjn_:1ok2Is:RmfsQWS4T4waO8rZDXqG-XAdr346plbcepVNuv6_Df0','2022-10-30 11:59:38.462939'),('y7u3kehqdweuho7zira6ywq0bmhggddx','.eJxVjEEOwiAUBe_C2hBogRaX7j0DeXx-bdVAUujKeHdt0oVu38y8lwjY2hy2ymtYkjiLtZQmTr9zBD047yzdkW9FUsltXaLcFXnQKq8l8fNyuH8HM-r8rb0l4ztEwCentKZeOSZtHE2AMpwmdLofLYHh2EbqjTZIwOAGTHoU7w8DeDph:1ojNYm:GmiMzl2Vs-1ATFRG0-vtXjtb9irn73s9LF0msCfQt_A','2022-10-28 16:29:20.505314');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_summernote_attachment`
--

DROP TABLE IF EXISTS `django_summernote_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_summernote_attachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_summernote_attachment`
--

LOCK TABLES `django_summernote_attachment` WRITE;
/*!40000 ALTER TABLE `django_summernote_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_summernote_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_member`
--

DROP TABLE IF EXISTS `user_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_member` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `identity` varchar(16) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_member`
--

LOCK TABLES `user_member` WRITE;
/*!40000 ALTER TABLE `user_member` DISABLE KEYS */;
INSERT INTO `user_member` VALUES (NULL,0,'','',0,1,'2022-10-14 16:42:49.014550','111','pbkdf2_sha256$390000$af1hvjIYzn7ZedmslP9hav$2yKa+WZDFl38NW6HfxZYR2XURpsQVp8toLcMe7sHtmc=','111@111.com','Normal'),('2022-10-16 12:49:36.657466',1,'','',1,1,'2022-10-14 16:26:46.771665','root','pbkdf2_sha256$320000$eAMtmdvsKylvb9WRIdxkbZ$WulnLuIkzM1md37wsar3zUffDdTYN3KvPY186L7Nno8=','123@123.com','Normal'),(NULL,0,'','',0,1,'2022-10-14 16:38:43.701771','tao','pbkdf2_sha256$390000$kI1sL9yVbUpWqA1oB3BBpu$dFckjIqd/0gmVUZ62jzXo+6RWyWSVTwSSxWvgf8P8bY=','','Normal'),(NULL,0,'','',0,1,'2022-10-14 16:46:46.852547','test','pbkdf2_sha256$390000$IwHiL5YMQYoYAQuUezqDaR$Man7s3vWMqqKmuD2bx6pIjaxhXaaWwIrfP89bkr4QAE=','test@1.com','Normal'),(NULL,0,'','',0,1,'2022-10-14 16:51:46.622835','test1','pbkdf2_sha256$390000$NJPA2Z6dyCToxaNQnigzOp$NVs44WwyUnAXHU9micyCqgGKKIcUR49AokMyACyN8jc=','test1@1.com','Normal');
/*!40000 ALTER TABLE `user_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_member_groups`
--

DROP TABLE IF EXISTS `user_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_member_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` varchar(16) NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_member_groups_member_id_group_id_de2aefb0_uniq` (`member_id`,`group_id`),
  KEY `user_member_groups_group_id_5cb2e492_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_member_groups_group_id_5cb2e492_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_member_groups_member_id_d5a34ab2_fk_user_member_username` FOREIGN KEY (`member_id`) REFERENCES `user_member` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_member_groups`
--

LOCK TABLES `user_member_groups` WRITE;
/*!40000 ALTER TABLE `user_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_member_user_permissions`
--

DROP TABLE IF EXISTS `user_member_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_member_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` varchar(16) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_member_user_permiss_member_id_permission_id_20bc7a5e_uniq` (`member_id`,`permission_id`),
  KEY `user_member_user_per_permission_id_add12350_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_member_user_per_member_id_aaff5864_fk_user_memb` FOREIGN KEY (`member_id`) REFERENCES `user_member` (`username`),
  CONSTRAINT `user_member_user_per_permission_id_add12350_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_member_user_permissions`
--

LOCK TABLES `user_member_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_member_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_member_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writings_writingspost`
--

DROP TABLE IF EXISTS `writings_writingspost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writings_writingspost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `date_created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `writings_blogpost_slug_d9055531` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writings_writingspost`
--

LOCK TABLES `writings_writingspost` WRITE;
/*!40000 ALTER TABLE `writings_writingspost` DISABLE KEYS */;
INSERT INTO `writings_writingspost` VALUES (5,'White hair, it could be your body giving you alerts','white-hair-it-could-be-your-body-giving-you-alerts','beauty','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\"><a name=\"OLE_LINK6\">In life, we also see people who suddenly have a lot of grey hair when they are busy at work with difficult tasks.<o:p></o:p></a></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Is stress and grey hair a coincidence, or is there indeed some special connection?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The answer is no. In fact, the colour of hair depends on the amount of melanin and is basically determined from the moment it grows out.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Our hair is constantly growing every moment, and this process is divided into two parts: \'growth\' and \'colouring\', which are the responsibility of the follicle stem cells and pigment stem cells inside the hair follicle respectively. Follicular stem cells can differentiate into keratinocytes, which are responsible for the growth of hair. Pigment stem cells differentiate into pigment cells, which are responsible for colouring the hair.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Every day, the keratinocytes produce 0.3 mm of hair and the pigment cells colour this new 0.3 mm of hair, day after day, year after year.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Hair that has grown out is usually more stable in colour and is less likely to change unless it has been treated with bleaching and dyeing.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">But what can be explained by the fact that people do grow grey hair under high pressure in their lives?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Scientists have discovered that hair that has already grown doesn\'t change colour, but when stressed, new growth can turn white. In 2021, researchers at Columbia University conducted an experiment on human hair colour and stress and found that subjects grew hair that was literally lighter in colour on days when stress spiked.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">An animal study, published in the prestigious scientific journal Nature, has discovered the secret: when great stress suddenly hits, the sympathetic nerves pick up the \'stress signal\' and over-activate the pigment stem cells, and the acute stress causes the stem cells to be rapidly overdrawn and depleted.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">In short: the keratinocytes are still making hair in earnest, but the pigment cells are regimented by the high pressure and the newly grown hair cannot be coloured and turns white.<o:p></o:p></p>','2022-10-18 02:00:00.000000'),(6,'Do adults need vitamin D supplements too?','do-adults-need-vitamin-d-supplements-too','nutrition','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: Adults need vitamin D supplements too.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: For most people, this is true.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Identify the difference: Vitamin D is important for both adults and children as it promotes calcium absorption and bone growth.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The Dietary Guidelines for Chinese Residents recommends a daily intake of 400 units of vitamin D for adults aged 18-64 and 600 units for those aged 65 and over. However, over 60% of the Chinese population is deficient in vitamin D. UV light converts 7-dehydrocholesterol in the skin into vitamin D. However, modern people generally lack sun exposure due to various reasons such as weather and lifestyle. Even if you do get enough sun, you will inevitably damage your skin.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">It is also difficult to supplement vitamin D through your daily diet, for example, you would have to drink 10 cartons of milk or eat 8 eggs a day to get your daily requirement, which would then need to be met by taking additional supplements. This is especially true for infants, the elderly, pregnant and lactating women, and those who do not get enough sunlight.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">As a reminder, vitamin D is a fat-soluble vitamin and is better absorbed when taken with or after a meal.<o:p></o:p></p>','2022-10-18 20:00:00.000000'),(7,'Can you protect your stomach by taking a stomach pill before drinking?','protect-your-stomach-with-a-stomach-pill','disease','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: You should take a stomach pill before drinking to protect your stomach<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: False<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">It is not recommended to take a stomach medicine and then drink alcohol. In theory, gastric mucosal protectants can cover the ulcerated and eroded surface, forming a physical protection and reducing the irritation of alcohol on the gastric mucosa to a certain extent, but after all, the effect is limited and it does not reduce the absorption of alcohol. Therefore, the most fundamental measure to protect the stomach is to refrain from drinking alcohol as much as possible.<o:p></o:p></p>','2022-10-18 14:00:00.000000'),(8,'Can drinking probiotic yoghurt cure constipation?','can-drinking-probiotic-yoghurt-cure-constipation','nutrition','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: Eating yoghurt with probiotics can cure constipation<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: False<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Yoghurt currently available on the market is mainly made from Lactobacillus bulgaricus and Streptococcus thermophilus, both of which are probiotics and have the ability to regulate intestinal flora and maintain the intestinal mucosal barrier.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Although studies have shown that regular consumption of yoghurt may improve or maintain intestinal health and play a role in preventing or improving constipation. However, there is no clear conclusion on whether eating yoghurt with probiotics has a therapeutic effect on constipation and further research is needed to confirm this.<o:p></o:p></p>','2022-10-18 08:00:00.000000'),(9,'Why can\'t I squeeze if I have a furuncle?','why-cant-i-squeeze-if-i-have-a-furuncle','disease','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">A furuncle, also known as a boil, likes to grow on a person\'s face, neck, back and buttocks. It starts out as a small, red, swollen hard knot, but will gradually get bigger and more painful. After two to three days of growth, the hard knot will become soft and wavy to the touch, and a small yellowish-white pus plug will appear in the centre of the knot, which will drain if the pus breaks and the inflammation is relieved.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">So why shouldn\'t you squeeze a boil if it\'s a nasty \'pimple\'?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Because boils are caused by bacteria (mainly Staphylococcus aureus) that infect the hair follicles of the skin. The boil itself is relatively localised and if it is suddenly squeezed, the infection may spread and lead to infections elsewhere in the body.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">For example, if a boil around the nose is squeezed, it may lead to an intracranial infection. This is because the nose and the surrounding area are part of the \'danger triangle\', an area rich in blood vessels that can lead to the skull.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">If squeezing the area causes the bacteria to spread and invade the blood vessels through the rupture, it can cause an inflammatory intracranial infection, resulting in chills, high fever, headache, vomiting and coma, which can be life-threatening if not treated promptly. It is not a sure thing that this will happen if you squeeze it, but if it does, the consequences can be serious, so don\'t squeeze it with your hands if you encounter it again.<o:p></o:p></p>','2022-10-16 20:00:00.000000'),(10,'Does recovering from a snake bite create immunity?','does-recovering-from-a-snake-bite-create-immunity','disease','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: Recovering from a snake bite creates immunity<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: False<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">It won\'t. After a snake bite, the snake venom enters the body as a foreign body and one will develop antibodies, but this antibody is not enough to resist the highly poisonous snake venom, so we have to give an emergency injection of snake venom serum.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">After recovery, antibodies will be present in the body for a period of time, but this does not mean that the body does not need to be injected with snake venom if it is bitten again at this time.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The snake venom serum on the market today is extracted from horses and it usually takes several months from the time the snake venom is administered to the time the antibodies are extracted from the horse\'s body, which means that producing sufficient antibodies, at least in the horse\'s body, is not as quick a process.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">No studies have been reported on how long it takes for the human body to reach peak antibody production after a snake bite.<o:p></o:p></p>','2022-10-18 14:00:00.000000'),(11,'Can eating tofu cause kidney stones?','can-eating-tofu-cause-kidney-stones','disease','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The title mentions this question, has it been on everyone\'s mind for a long time too?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Let\'s get the conclusion out of the way before some of you don\'t have the patience to see it through to the end. No matter who has or has not had kidney stones before, they can eat tofu. Tofu does not give people kidney stones, and not only that, it also prevents them from developing them.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Why? To put this into perspective, let\'s start with kidney stones.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">What causes kidney stones?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The concentration of minerals in the urine is so high that it exceeds the \'saturation concentration\' and so crystallises in the kidneys and deposits out as solid particles. Sometimes these particles also move into the ureter.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Some stone particles are the size of a grain of sand, while others can be as large as several centimetres. Smaller kidney stone particles are often excreted in the urine, but if they are a few millimetres in size, they may block the ureter, causing a blockage of urine and resulting in back pain. There are a number of minerals that can cause stones, the most common being calcium oxalate, which is responsible for about 80% of all stones. In addition, some kidney stones are caused by calcium phosphate, urate or magnesium ammonium phosphate.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">What substances in tofu may be associated with stones?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">In soya, there are three main substances associated with stones: purine, calcium and oxalic acid. The stone related components of soya change in different ways as a result of different processing.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Purines<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Purines are converted into uric acid in the body and excess purines may have an effect on urate stones. Dried soya beans have a relatively large amount of purines, but after soaking, many of these are removed. And both soya milk and tofu contain a lot of water, which dilutes the concentration of purines considerably. This means that not much soy is needed to make a cup of soy milk or a piece of tofu, and the amount of purines contained in it is limited. Tofu and soya milk, therefore, are not high purine foods.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Calcium<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Contrary to popular belief, inadequate calcium intake can increase the risk of stones. Therefore, even for people at higher risk of stones, an adequate intake of calcium is still necessary. It is important to note, however, that calcium-rich foods help to reduce the risk of stones, whereas calcium tablets do not have the same effect and may instead increase the risk of stones. This may be due to the fact that calcium in food binds oxalic acid in food, thus preventing it from being absorbed, whereas calcium tablets allow the body to consume large amounts of calcium for a short period of time, which may increase calcium in the urine and thus become a raw material for stones.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Oxalic acid<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Oxalic acid is the most common and major cause of kidney stones. When it enters the urine, it combines with the calcium in it to form calcium oxalate. Calcium oxalate has very low solubility and therefore precipitates easily into stones. When discussing the relationship between soya products and stones, the key is the amount of oxalic acid.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">How much oxalic acid is in tofu?<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The amount of oxalic acid in different soya products varies greatly. Tofu in general has very low levels of oxalic acid. In 2005, a paper published in the Journal of Agricultural and Food Chemistry determined the oxalic acid content of 30 soya products. Of the 19 brands of tofu tested, 18 had oxalic acid levels of 0.10 mg/g or less, making them low-oxalate foods. Only one brand had an oxalic acid level of 0.13 mg/g.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">There are two possible reasons for the low oxalic acid content in tofu. One is that some of the oxalic acid was dissolved in the water during the soaking of the soybeans and was washed away. The second is that the tofu tested was all gypsum or brine tofu, which is squeezed or naturally left to remove some of the water after condensation, and some of the oxalic acid is removed with this water. As for the oxalic acid content of lactone tofu, there is no data available so it is not easy to compare. However, from the production process, lactone tofu retains almost all of the water in the soymilk, so the oxalic acid content may be higher than brine and plaster tofu.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">To conclude, people at high risk of stones can also eat tofu. In short, the main effect of soy products on stones is the oxalic acid in them. Tofu (especially marinated tofu and plastered tofu) contains very low levels of oxalic acid, and foods that are further processed from tofu (e.g. dried tofu) do not contain high levels of oxalic acid, so they can be eaten by people with stones.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Also, these \'recommendations\' and \'warnings\' are for people with stones or those at high risk of stones. In healthy people, the body is more capable of handling oxalic acid and other components, so there is no need to worry about eating tofu or soy products causing stones.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Dietary tips for stone patients.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">1. Drink plenty of water. The US recommendation is 12 cups (one cup is 240 ml) or more per day. This is because if you drink more water, you will have more urine, which will dilute the minerals such as calcium oxalate in it and prevent them from crystallising.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">2. Eat less animal protein. Excessive intake of animal protein increases calcium in the urine, which increases the formation of calcium oxalate and calcium phosphate.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">3. Eat less salt. Salt also increases the amount of calcium in the urine.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">4. Eat less oxalic acid-rich foods such as spinach, peanuts, chocolate, asparagus, etc. In fact, most vegetables and fruits also contain oxalic acid. However, these are often nutrient-rich foods as well, so too much emphasis on limiting these foods is also inappropriate.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">For oxalic acid to form stones, it needs to reach the urine, where it combines with calcium. If oxalic acid-rich foods are cooked and eaten together with calcium-rich foods, then they may combine in the gut and be difficult to absorb and will not enter the urine as stones. From this perspective, the legendary \'spinach and tofu together\' not only does not cause stones, but helps to avoid them.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">As a special reminder, if you are at higher risk of stones, you can safely eat tofu, but you should be wary of other simple processed soy products such as soy flour and soy sauce, which may be high in oxalic acid.<o:p></o:p></p>','2022-10-17 20:00:00.000000'),(12,'Can I eat dried fruit if I want to take vitamin C','can-i-eat-dried-fruit-if-i-want-to-take-vitamin-c','nutrition','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: Eating dried fruit can supplement vitamin C<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: False<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Dried fruit loses a lot of vitamin C when it is dried and dehydrated at high temperatures, so it is not possible to supplement vitamin C in the body.<o:p></o:p></p>','2022-10-17 20:00:00.000000'),(13,'Spinach is prone to kidney stones if eaten?','spinach-is-prone-to-kidney-stones-if-eaten','nutrition','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: Spinach has a lot of oxalic acid and is prone to kidney stones if you eat too much of it.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: As long as you blanch it before eating, you don\'t have to worry too much.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Identification point: Spinach does contain high levels of oxalic acid, which can combine with calcium and not only hinder calcium absorption, the calcium oxalate formed can also increase the risk of kidney stones.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">But! Oxalic acid is water soluble and blanching with water will greatly reduce the amount of oxalic acid in the vegetable.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Other vegetables with high oxalic acid content, such as amaranth, amaranth, bamboo shoots, wild rice and bitter gourd, should also be blanched in boiling water for 15-20 seconds before cooking to remove most of the oxalic acid.Vegetables with high oxalic acid content are often astringent and should be blanched to make them more palatable.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">However, people with kidney stones, especially calcium oxalate stones, should avoid eating them.<o:p></o:p></p>','2022-10-15 14:00:00.000000'),(14,'Can I get a massage to relieve a back sprain right after?','massage-to-relieve-a-back-sprain','disease','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Rumour: You cannot have a massage immediately after an acute sprain of the lower back<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Truth: True<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">Within 0-48 hours of an acute sprain of the lower back, there may be tissue fluid leakage and swelling, so if you massage the lower back at this time, it may cause the injury to worsen.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; text-align: justify; line-height: 15.6933px; font-size: 11pt; font-family: DengXian; color: rgb(0, 0, 0);\">The correct course of action is to apply cold compresses (not too cold and not too long) to the affected area and rest in bed to get through the acute phase safely.<o:p></o:p></p>','2022-10-16 08:00:00.000000');
/*!40000 ALTER TABLE `writings_writingspost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19  3:42:41
