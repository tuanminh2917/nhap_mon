-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: media_management2
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `storage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'local',
  `src` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `movie_genre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image_style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `format` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `download_link` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `upload_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  CONSTRAINT `chk_image_download_link_protocol` CHECK (((`download_link` is null) or (`download_link` like _utf8mb4'http://%') or (`download_link` like _utf8mb4'https://%'))),
  CONSTRAINT `chk_image_src_protocol` CHECK (((`src` like _utf8mb3'http://%') or (`src` like _utf8mb3'https://%')))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Singin’ in the Rain (1952) Singing in the Rain','web','https://panandslam.com/wp-content/uploads/2020/04/singing.jpg','musical','happy',NULL,NULL,NULL,'https://panandslam.com/wp-content/uploads/2020/04/singing.jpg','2024-11-14 21:31:47'),(2,'Psycho (1960) The Shower Scene','web','https://panandslam.com/wp-content/uploads/2020/04/editing-movie.jpg','horror','scary',NULL,NULL,NULL,'https://panandslam.com/wp-content/uploads/2020/04/editing-movie.jpg','2024-11-14 21:31:47'),(4,'The Lion King (1994) Holding up baby Simba','web','https://panandslam.com/wp-content/uploads/2020/04/rs_1024x576-160928081437-1024.lion-king.92816.jpg?w=660&h=372','adventure','epic',NULL,NULL,NULL,'https://panandslam.com/wp-content/uploads/2020/04/rs_1024x576-160928081437-1024.lion-king.92816.jpg?w=660&h=372',NULL),(10,'A Clockwork Orange (1971) Opening shot','web','https://panandslam.com/wp-content/uploads/2020/04/images-6.jpeg','action','creepy',290,173,NULL,'https://panandslam.com/wp-content/uploads/2020/04/images-6.jpeg',NULL),(11,'The Phantom of the Opera (1925) Phantoms mask is removed for the first time','web','https://panandslam.com/wp-content/uploads/2020/04/23_top25horrormovies.jpg?w=611&h=407','horror','scary',611,407,NULL,'https://panandslam.com/wp-content/uploads/2020/04/23_top25horrormovies.jpg?w=611&h=407',NULL),(12,'Home Alone (1990) Aaaaaaahhhh!','web','https://panandslam.com/wp-content/uploads/2020/04/maxresdefault-1.jpg?w=627&h=353','comedy','funny',627,353,NULL,'https://panandslam.com/wp-content/uploads/2020/04/maxresdefault-1.jpg?w=627&h=353',NULL),(13,'Modern Times (1936) Little Tramp in the gears of the machine','web','https://panandslam.com/wp-content/uploads/2020/04/modern-times.jpg?w=540&h=405','comedy','funny',540,405,NULL,'https://panandslam.com/wp-content/uploads/2020/04/modern-times.jpg?w=540&h=405',NULL),(14,'The Silence of the Lambs (1991) Hannibal Lecter in the muzzle','web','https://panandslam.com/wp-content/uploads/2020/04/silence-of-the-lambs.png?w=598','horror','dramatic',NULL,NULL,NULL,'https://panandslam.com/wp-content/uploads/2020/04/silence-of-the-lambs.png?w=598',NULL),(15,'Spider-Man (2002) Upside down kiss with Mary Jane','web','https://panandslam.com/wp-content/uploads/2020/04/spider_man_movie_screencaps.com_9423.jpg?w=641&h=347','action','romantic',641,347,NULL,'https://panandslam.com/wp-content/uploads/2020/04/spider_man_movie_screencaps.com_9423.jpg?w=641&h=347',NULL),(16,'Halloween (1978) Michael Myers appears in the dark','web','https://panandslam.com/wp-content/uploads/2020/04/18halloween1978-articlelarge-v2.jpg','horror','scary',NULL,NULL,NULL,'https://panandslam.com/wp-content/uploads/2020/04/18halloween1978-articlelarge-v2.jpg',NULL),(17,'Wayne’s World (1992) Head banging to Bohemian Rhapsody','cloud','https://panandslam.com/wp-content/uploads/2020/04/waynes-world-car-queen.jpg?w=636&h=424','Comedy','Happy',636,424,'png','https://panandslam.com/wp-content/uploads/2020/04/waynes-world-car-queen.jpg?w=636&h=424',NULL);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_rating`
--

DROP TABLE IF EXISTS `image_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_rating` (
  `image_id` int NOT NULL,
  `user_id` int NOT NULL,
  `point` int NOT NULL,
  PRIMARY KEY (`image_id`,`user_id`),
  KEY `fk_user2` (`user_id`),
  CONSTRAINT `fk_image` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `image_rating_chk_1` CHECK ((`point` between 0 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_rating`
--

LOCK TABLES `image_rating` WRITE;
/*!40000 ALTER TABLE `image_rating` DISABLE KEYS */;
INSERT INTO `image_rating` VALUES (1,1,5),(1,4,4),(1,5,5),(1,9,3),(2,2,3),(2,5,5),(2,6,4),(2,10,2),(4,1,4),(4,3,4),(4,7,1),(10,4,2),(10,8,5);
/*!40000 ALTER TABLE `image_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `image_with_avg_rating`
--

DROP TABLE IF EXISTS `image_with_avg_rating`;
/*!50001 DROP VIEW IF EXISTS `image_with_avg_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `image_with_avg_rating` AS SELECT 
 1 AS `image_id`,
 1 AS `title`,
 1 AS `storage`,
 1 AS `src`,
 1 AS `movie_genre`,
 1 AS `image_style`,
 1 AS `width`,
 1 AS `height`,
 1 AS `format`,
 1 AS `download_link`,
 1 AS `upload_date`,
 1 AS `average_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `user_role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_user_role_id` (`user_role_id`),
  CONSTRAINT `fk_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `user_role` (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','%%Abc123','Tuan',NULL,1),(2,'member','%%Def456','Ha',NULL,2),(3,'aia','v*2$APG#9#f$rm$SW%iri*589YFn7x','tung dang','1997-03-12 00:00:00',2),(4,'inhlaoi','CCB*d@8Vz6Bfu8yo#J85^@m@9S79%B','ly mui pu','1999-09-12 00:00:00',2),(5,'testuser','Test@1234','Test User','2000-01-01 00:00:00',2),(6,'testuser2','Test@1357','Test User2','2000-01-01 00:00:00',2),(7,'Test User','Test@1234','Test User','2000-01-01 00:00:00',2),(8,'ngaymaiemdi','123456','Trung Dan','2001-01-01 00:00:00',2),(9,'hokego','78910','Muoi Huong','1969-12-31 00:00:00',2),(10,'johndoe','johjdow',' John Doe','1966-06-06 00:00:00',2),(11,'janedoe','123456','Jane Doe','1966-06-06 00:00:00',2),(12,'john123','123456','John Dio','1996-06-06 00:00:00',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int NOT NULL,
  `role_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin'),(3,'Guest'),(2,'Member');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `video_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `storage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'local',
  `src` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `movie_genre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `video_style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `duration` int unsigned DEFAULT NULL,
  `format` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `download_link` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `upload_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`),
  CONSTRAINT `chk_video_download_link_protocol` CHECK (((`download_link` is null) or (`download_link` like _utf8mb4'http://%') or (`download_link` like _utf8mb4'https://%'))),
  CONSTRAINT `chk_video_src_protocol` CHECK (((`src` like _utf8mb3'http://%') or (`src` like _utf8mb3'https://%')))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Eve Fixes Wall-E, Shows That She Loves Him','youtube','https://www.youtube.com/embed/zmhHz804iIA','sci-fi','romantic',NULL,NULL,'https://www.youtubepp.com/embed/zmhHz804iIA','2024-11-14 21:31:44'),(2,'Gravity Falls: Dipper and Mabel switch bodies','youtube','https://www.youtube.com/embed/sNfZvCgb5uo','adventure','humourous',NULL,NULL,'https://www.youtubepp.com/embed/sNfZvCgb5uo','2024-11-14 21:31:44'),(4,'The life of Nicole and Richard Watterson','youtube','https://www.youtube.com/embed/6tYxLEbcVYg','comedy','touching',NULL,NULL,'https://www.youtubepp.com/embed/6tYxLEbcVYg',NULL),(5,'Everything Everywhere All At Once - Evelyn fights Joy','youtube','https://www.youtube.com/embed/EiWBIZRWdjc','action','touching',NULL,NULL,'https://www.youtubepp.com/embed/EiWBIZRWdjc',NULL),(6,'Family Guy - Stewie is traumatized by the cover of a Queen News of the World album','youtube','https://www.youtube.com/embed/t4hLTBikZbk','comedy','humor',NULL,NULL,'https://www.youtubepp.com/embed/t4hLTBikZbk',NULL),(10,'UP (2009) Scene: \"Thanks for the adventure...\"/Ellie\'s last message.','youtube','https://www.youtube.com/embed/gVY04LBXaCc','adventure','touching',106,NULL,'https://www.youtubepp.com/embed/gVY04LBXaCc',NULL),(11,'The Scent of Green Papaya(1993) - The difference of the piano sound','youtube','https://www.youtube.com/embed/E5PiU2ip9aQ','romance','romantic',NULL,NULL,'https://www.youtubepp.com/embed/E5PiU2ip9aQ',NULL),(12,'The scent of Green Papaya (1993) - Mui has a feeling to a man','youtube','https://www.youtube.com/embed/pLcCpt1Kits','romance','touching',NULL,NULL,'https://www.youtubepp.com/embed/pLcCpt1Kits',NULL),(13,'Wall-E - Wall-E and Eve dancing','youtube','https://www.youtube.com/embed/NPW3mvAN0Rc','sci-fi','romantic',NULL,NULL,'https://www.youtubepp.com/embed/NPW3mvAN0Rc',NULL),(14,'Titanic(1997) - \"I\'m Flying\" Scene','youtube','https://www.youtube.com/embed/9KQm_7Lpt5E','romance','delighted',145,NULL,'https://www.youtubepp.com/embed/9KQm_7Lpt5E',NULL),(15,'Pixar - Ellie and Carl\'s relationship through time','youtube','https://www.youtube.com/embed/F2bk_9T482g','adventure','touching',261,NULL,'https://www.youtubepp.com/embed/F2bk_9T482g',NULL),(18,'Woody saves Buzz Lightyear | Toy Story - Movie Clip (HD)','youtube','https://www.youtube.com/embed/BGEFLo-_Yvk','adventure','dramatic',309,NULL,'https://www.youtubepp.com/embed/BGEFLo-_Yvk',NULL);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_rating`
--

DROP TABLE IF EXISTS `video_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_rating` (
  `video_id` int unsigned NOT NULL,
  `user_id` int NOT NULL,
  `point` int NOT NULL,
  PRIMARY KEY (`video_id`,`user_id`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_video` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `video_rating_chk_1` CHECK ((`point` between 0 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_rating`
--

LOCK TABLES `video_rating` WRITE;
/*!40000 ALTER TABLE `video_rating` DISABLE KEYS */;
INSERT INTO `video_rating` VALUES (1,1,4),(1,3,4),(1,7,4),(2,2,5),(2,6,5),(2,8,3),(2,12,5),(4,3,3),(4,9,5),(5,1,5),(5,4,4),(5,10,1),(6,1,4),(6,5,2),(10,6,5),(11,1,5),(12,1,4),(14,11,4),(15,1,2);
/*!40000 ALTER TABLE `video_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `video_with_avg_rating`
--

DROP TABLE IF EXISTS `video_with_avg_rating`;
/*!50001 DROP VIEW IF EXISTS `video_with_avg_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `video_with_avg_rating` AS SELECT 
 1 AS `video_id`,
 1 AS `title`,
 1 AS `storage`,
 1 AS `src`,
 1 AS `movie_genre`,
 1 AS `video_style`,
 1 AS `duration`,
 1 AS `format`,
 1 AS `download_link`,
 1 AS `upload_date`,
 1 AS `average_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `image_with_avg_rating`
--

/*!50001 DROP VIEW IF EXISTS `image_with_avg_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `image_with_avg_rating` AS select `i`.`image_id` AS `image_id`,`i`.`title` AS `title`,`i`.`storage` AS `storage`,`i`.`src` AS `src`,`i`.`movie_genre` AS `movie_genre`,`i`.`image_style` AS `image_style`,`i`.`width` AS `width`,`i`.`height` AS `height`,`i`.`format` AS `format`,`i`.`download_link` AS `download_link`,`i`.`upload_date` AS `upload_date`,round(avg(`r`.`point`),1) AS `average_rating` from (`image` `i` left join `image_rating` `r` on((`i`.`image_id` = `r`.`image_id`))) group by `i`.`image_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `video_with_avg_rating`
--

/*!50001 DROP VIEW IF EXISTS `video_with_avg_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `video_with_avg_rating` AS select `v`.`video_id` AS `video_id`,`v`.`title` AS `title`,`v`.`storage` AS `storage`,`v`.`src` AS `src`,`v`.`movie_genre` AS `movie_genre`,`v`.`video_style` AS `video_style`,`v`.`duration` AS `duration`,`v`.`format` AS `format`,`v`.`download_link` AS `download_link`,`v`.`upload_date` AS `upload_date`,round(avg(`r`.`point`),1) AS `average_rating` from (`video` `v` left join `video_rating` `r` on((`v`.`video_id` = `r`.`video_id`))) group by `v`.`video_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-09  0:30:40
