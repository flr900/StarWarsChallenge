-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: star_wars
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `films`
--
CREATE DATABASE star_wars;
USE star_wars;

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `episode_id` int DEFAULT NULL,
  `opening_crawl` text,
  `director` varchar(255) DEFAULT NULL,
  `producer` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `Runtime` varchar(50) DEFAULT NULL,
  `Poster` varchar(255) DEFAULT NULL,
  `Metascore` int DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Plot` text,
  `Country` varchar(255) DEFAULT NULL,
  `BoxOffice` bigint DEFAULT NULL,
  `imdbVotes` bigint DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Writer` varchar(255) DEFAULT NULL,
  `Production` varchar(255) DEFAULT NULL,
  `imdbID` varchar(255) DEFAULT NULL,
  `Awards` text,
  `Genre` varchar(255) DEFAULT NULL,
  `Rated` varchar(50) DEFAULT NULL,
  `DVD` varchar(50) DEFAULT NULL,
  `imdbRating` int DEFAULT NULL,
  `tomatoesRating` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'A New Hope',4,'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire\'s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire\'s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....','George Lucas','Gary Kurtz, Rick McCallum','1977-05-25','2014-12-10 14:23:31','2014-12-20 19:49:45','https://swapi.dev/api/films/1/','English','121 min','https://m.media-amazon.com/images/M/MV5BOGUwMDk0Y2MtNjBlNi00NmRiLTk2MWYtMGMyMDlhYmI4ZDBjXkEyXkFqcGc@._V1_SX300.jpg',90,'N/A','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth ...','United States',460998507,1479635,'movie','George Lucas','N/A','tt0076759','Won 6 Oscars. 69 wins & 30 nominations total','Action, Adventure, Fantasy','PG','N/A',86,93),(2,'The Empire Strikes Back',5,'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....','Irvin Kershner','Gary Kurtz, Rick McCallum','1980-05-17','2014-12-12 11:26:24','2014-12-15 13:07:53','https://swapi.dev/api/films/2/','English','124 min','https://m.media-amazon.com/images/M/MV5BMTkxNGFlNDktZmJkNC00MDdhLTg0MTEtZjZiYWI3MGE5NWIwXkEyXkFqcGc@._V1_SX300.jpg',82,'N/A','After the Empire overpowers the Rebel Alliance, Luke Skywalker begins his Jedi training with Yoda. At the same time, Darth Vader and bounty hunter Boba Fett pursue his friends across the galaxy.','United States',292753960,1410938,'movie','Leigh Brackett, Lawrence Kasdan, George Lucas','N/A','tt0080684','Won 1 Oscar. 27 wins & 20 nominations total','Action, Adventure, Fantasy','PG','N/A',87,95),(3,'Return of the Jedi',6,'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...','Richard Marquand','Howard G. Kazanjian, George Lucas, Rick McCallum','1983-05-25','2014-12-18 10:39:33','2014-12-20 09:48:37','https://swapi.dev/api/films/3/','English, Kikuyu, Tagalog, Kalmyk-Oirat, Quechua, Polish','131 min','https://m.media-amazon.com/images/M/MV5BNWEwOTI0MmUtMGNmNy00ODViLTlkZDQtZTg1YmQ3MDgyNTUzXkEyXkFqcGc@._V1_SX300.jpg',58,'N/A','After rescuing Han Solo from Jabba the Hutt, the Rebel Alliance attempts to destroy the second Death Star while Luke struggles to help Darth Vader back from the dark side.','United States',316566101,1141461,'movie','Lawrence Kasdan, George Lucas','N/A','tt0086190','Nominated for 4 Oscars. 25 wins & 23 nominations total','Action, Adventure, Fantasy','PG','N/A',83,82),(4,'The Phantom Menace',1,'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....','George Lucas','Rick McCallum','1999-05-19','2014-12-19 16:52:55','2014-12-20 10:54:07','https://swapi.dev/api/films/4/','English, Sanskrit','136 min','https://m.media-amazon.com/images/M/MV5BODVhNGIxOGItYWNlMi00YTA0LWI3NTctZmQxZGUwZDEyZWI4XkEyXkFqcGc@._V1_SX300.jpg',51,'N/A','Two Jedi escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to claim their original glory.','United States, United Kingdom',487576624,876387,'movie','George Lucas','N/A','tt0120915','Nominated for 3 Oscars. 28 wins & 71 nominations total','Action, Adventure, Fantasy','PG','N/A',65,52),(5,'Attack of the Clones',2,'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....','George Lucas','Rick McCallum','2002-05-16','2014-12-20 10:57:57','2014-12-20 20:18:48','https://swapi.dev/api/films/5/','English','142 min','https://m.media-amazon.com/images/M/MV5BNTgxMjY2YzUtZmVmNC00YjAwLWJlODMtNDBhNzllNzIzMjgxXkEyXkFqcGc@._V1_SX300.jpg',54,'N/A','Ten years after initially meeting, Anakin Skywalker shares a forbidden romance with PadmÔö£┬« Amidala, while Obi-Wan Kenobi discovers a secret clone army crafted for the Jedi.','United States, United Kingdom',310676740,773661,'movie','George Lucas, Jonathan Hales','N/A','tt0121765','Nominated for 1 Oscar. 21 wins & 71 nominations total','Action, Adventure, Fantasy','PG','N/A',66,65),(6,'Revenge of the Sith',3,'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....','George Lucas','Rick McCallum','2005-05-19','2014-12-20 18:49:38','2014-12-20 20:47:52','https://swapi.dev/api/films/6/','English','140 min','https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_SX300.jpg',68,'N/A','With the Clone Wars coming to it\'s end, Obi-Wan Kenobi pursues a new threat, while Anakin Skywalker is lured by Chancellor Palpatine into a sinister plot for galactic domination.','United States, Italy, Switzerland, Thailand, United Kingdom',380270577,863417,'movie','George Lucas','N/A','tt0121766','Nominated for 1 Oscar. 29 wins & 64 nominations total','Action, Adventure, Fantasy','PG-13','N/A',76,80);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birth_year` varchar(50) DEFAULT NULL,
  `eye_color` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `hair_color` varchar(50) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `mass` int DEFAULT NULL,
  `skin_color` varchar(50) DEFAULT NULL,
  `homeworld` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Luke Skywalker','19BBY','blue','male','blond',172,77,'fair','Tatooine','https://swapi.dev/api/people/1/','2014-12-09 16:50:51','2014-12-21 00:17:56','2024-11-28 16:20:19'),(2,'C-3PO','112BBY','yellow','n/a','n/a',167,75,'gold','Tatooine','https://swapi.dev/api/people/2/','2014-12-10 18:10:51','2014-12-21 00:17:50','2024-11-28 16:20:19'),(3,'R2-D2','33BBY','red','n/a','n/a',96,32,'white, blue','Naboo','https://swapi.dev/api/people/3/','2014-12-10 18:11:50','2014-12-21 00:17:50','2024-11-28 16:20:19'),(4,'Darth Vader','41.9BBY','yellow','male','none',202,136,'white','Tatooine','https://swapi.dev/api/people/4/','2014-12-10 18:18:20','2014-12-21 00:17:50','2024-11-28 16:20:19'),(5,'Leia Organa','19BBY','brown','female','brown',150,49,'light','Alderaan','https://swapi.dev/api/people/5/','2014-12-10 18:20:09','2014-12-21 00:17:50','2024-11-28 16:20:19'),(6,'Owen Lars','52BBY','blue','male','brown, grey',178,120,'light','Tatooine','https://swapi.dev/api/people/6/','2014-12-10 18:52:14','2014-12-21 00:17:50','2024-11-28 16:20:19'),(7,'Beru Whitesun lars','47BBY','blue','female','brown',165,75,'light','Tatooine','https://swapi.dev/api/people/7/','2014-12-10 18:53:41','2014-12-21 00:17:50','2024-11-28 16:20:19'),(8,'R5-D4',NULL,'red','n/a','n/a',97,32,'white, red','Tatooine','https://swapi.dev/api/people/8/','2014-12-10 18:57:50','2014-12-21 00:17:50','2024-11-28 16:20:19'),(9,'Biggs Darklighter','24BBY','brown','male','black',183,84,'light','Tatooine','https://swapi.dev/api/people/9/','2014-12-10 18:59:50','2014-12-21 00:17:50','2024-11-28 16:20:19'),(10,'Obi-Wan Kenobi','57BBY','blue-gray','male','auburn, white',182,77,'fair','Stewjon','https://swapi.dev/api/people/10/','2014-12-10 19:16:29','2014-12-21 00:17:50','2024-11-28 16:20:19'),(11,'Anakin Skywalker','41.9BBY','blue','male','blond',188,84,'fair','Tatooine','https://swapi.dev/api/people/11/','2014-12-10 19:20:44','2014-12-21 00:17:50','2024-11-28 16:20:19'),(12,'Wilhuff Tarkin','64BBY','blue','male','auburn, grey',180,NULL,'fair','Eriadu','https://swapi.dev/api/people/12/','2014-12-10 19:26:56','2014-12-21 00:17:50','2024-11-28 16:20:19'),(13,'Chewbacca','200BBY','blue','male','brown',228,112,NULL,'Kashyyyk','https://swapi.dev/api/people/13/','2014-12-10 19:42:45','2014-12-21 00:17:50','2024-11-28 16:20:19'),(14,'Han Solo','29BBY','brown','male','brown',180,80,'fair','Corellia','https://swapi.dev/api/people/14/','2014-12-10 19:49:14','2014-12-21 00:17:50','2024-11-28 16:20:19'),(15,'Greedo','44BBY','black','male','n/a',173,74,'green','Rodia','https://swapi.dev/api/people/15/','2014-12-10 20:03:30','2014-12-21 00:17:50','2024-11-28 16:20:19'),(16,'Jabba Desilijic Tiure','600BBY','orange','hermaphrodite','n/a',175,NULL,'green-tan, brown','Nal Hutta','https://swapi.dev/api/people/16/','2014-12-10 20:11:31','2014-12-21 00:17:50','2024-11-28 16:20:19'),(17,'Wedge Antilles','21BBY','hazel','male','brown',170,77,'fair','Corellia','https://swapi.dev/api/people/18/','2014-12-12 14:08:06','2014-12-21 00:17:50','2024-11-28 16:20:19'),(18,'Jek Tono Porkins',NULL,'blue','male','brown',180,110,'fair','Bestine IV','https://swapi.dev/api/people/19/','2014-12-12 14:16:56','2014-12-21 00:17:50','2024-11-28 16:20:19'),(19,'Yoda','896BBY','brown','male','white',66,17,'green','unknown','https://swapi.dev/api/people/20/','2014-12-15 15:26:01','2014-12-21 00:17:50','2024-11-28 16:20:19'),(20,'Palpatine','82BBY','yellow','male','grey',170,75,'pale','Naboo','https://swapi.dev/api/people/21/','2014-12-15 15:48:05','2014-12-21 00:17:50','2024-11-28 16:20:19'),(21,'Boba Fett','31.5BBY','brown','male','black',183,NULL,'fair','Kamino','https://swapi.dev/api/people/22/','2014-12-15 15:49:32','2014-12-21 00:17:50','2024-11-28 16:20:19'),(22,'IG-88','15BBY','red','none','none',200,140,'metal','unknown','https://swapi.dev/api/people/23/','2014-12-15 15:51:10','2014-12-21 00:17:50','2024-11-28 16:20:19'),(23,'Bossk','53BBY','red','male','none',190,113,'green','Trandosha','https://swapi.dev/api/people/24/','2014-12-15 15:53:49','2014-12-21 00:17:50','2024-11-28 16:20:19'),(24,'Lando Calrissian','31BBY','brown','male','black',177,79,'dark','Socorro','https://swapi.dev/api/people/25/','2014-12-15 15:56:32','2014-12-21 00:17:50','2024-11-28 16:20:19'),(25,'Lobot','37BBY','blue','male','none',175,79,'light','Bespin','https://swapi.dev/api/people/26/','2014-12-15 16:01:57','2014-12-21 00:17:50','2024-11-28 16:20:19'),(26,'Ackbar','41BBY','orange','male','none',180,83,'brown mottle','Mon Cala','https://swapi.dev/api/people/27/','2014-12-18 14:07:50','2014-12-21 00:17:50','2024-11-28 16:20:19'),(27,'Mon Mothma','48BBY','blue','female','auburn',150,NULL,'fair','Chandrila','https://swapi.dev/api/people/28/','2014-12-18 14:12:38','2014-12-21 00:17:50','2024-11-28 16:20:19'),(28,'Arvel Crynyd',NULL,'brown','male','brown',NULL,NULL,'fair','unknown','https://swapi.dev/api/people/29/','2014-12-18 14:16:33','2014-12-21 00:17:50','2024-11-28 16:20:19'),(29,'Wicket Systri Warrick','8BBY','brown','male','brown',88,20,'brown','Endor','https://swapi.dev/api/people/30/','2014-12-18 14:21:58','2014-12-21 00:17:50','2024-11-28 16:20:19'),(30,'Nien Nunb',NULL,'black','male','none',160,68,'grey','Sullust','https://swapi.dev/api/people/31/','2014-12-18 14:26:18','2014-12-21 00:17:50','2024-11-28 16:20:19'),(31,'Qui-Gon Jinn','92BBY','blue','male','brown',193,89,'fair','unknown','https://swapi.dev/api/people/32/','2014-12-19 19:54:53','2014-12-21 00:17:50','2024-11-28 16:20:19'),(32,'Nute Gunray',NULL,'red','male','none',191,90,'mottled green','Cato Neimoidia','https://swapi.dev/api/people/33/','2014-12-19 20:05:57','2014-12-21 00:17:50','2024-11-28 16:20:19'),(33,'Finis Valorum','91BBY','blue','male','blond',170,NULL,'fair','Coruscant','https://swapi.dev/api/people/34/','2014-12-19 20:21:45','2014-12-21 00:17:50','2024-11-28 16:20:19'),(34,'PadmÔö£┬« Amidala','46BBY','brown','female','brown',185,45,'light','Naboo','https://swapi.dev/api/people/35/','2014-12-19 20:28:26','2014-12-21 00:17:50','2024-11-28 16:20:19'),(35,'Jar Jar Binks','52BBY','orange','male','none',196,66,'orange','Naboo','https://swapi.dev/api/people/36/','2014-12-19 20:29:32','2014-12-21 00:17:50','2024-11-28 16:20:19'),(36,'Roos Tarpals',NULL,'orange','male','none',224,82,'grey','Naboo','https://swapi.dev/api/people/37/','2014-12-19 20:32:56','2014-12-21 00:17:50','2024-11-28 16:20:19'),(37,'Rugor Nass',NULL,'orange','male','none',206,NULL,'green','Naboo','https://swapi.dev/api/people/38/','2014-12-19 20:33:38','2014-12-21 00:17:50','2024-11-28 16:20:19'),(38,'Ric OliÔö£┬«',NULL,'blue','male','brown',183,NULL,'fair','Naboo','https://swapi.dev/api/people/39/','2014-12-19 20:45:01','2014-12-21 00:17:50','2024-11-28 16:20:19'),(39,'Watto',NULL,'yellow','male','black',137,NULL,'blue, grey','Toydaria','https://swapi.dev/api/people/40/','2014-12-19 20:48:54','2014-12-21 00:17:50','2024-11-28 16:20:19'),(40,'Sebulba',NULL,'orange','male','none',112,40,'grey, red','Malastare','https://swapi.dev/api/people/41/','2014-12-19 20:53:02','2014-12-21 00:17:50','2024-11-28 16:20:19'),(41,'Quarsh Panaka','62BBY','brown','male','black',183,NULL,'dark','Naboo','https://swapi.dev/api/people/42/','2014-12-19 20:55:43','2014-12-21 00:17:50','2024-11-28 16:20:19'),(42,'Shmi Skywalker','72BBY','brown','female','black',163,NULL,'fair','Tatooine','https://swapi.dev/api/people/43/','2014-12-19 20:57:41','2014-12-21 00:17:50','2024-11-28 16:20:19'),(43,'Darth Maul','54BBY','yellow','male','none',175,80,'red','Dathomir','https://swapi.dev/api/people/44/','2014-12-19 21:00:41','2014-12-21 00:17:50','2024-11-28 16:20:19'),(44,'Bib Fortuna',NULL,'pink','male','none',180,NULL,'pale','Ryloth','https://swapi.dev/api/people/45/','2014-12-20 12:47:02','2014-12-21 00:17:50','2024-11-28 16:20:19'),(45,'Ayla Secura','48BBY','hazel','female','none',178,55,'blue','Ryloth','https://swapi.dev/api/people/46/','2014-12-20 12:48:01','2014-12-21 00:17:50','2024-11-28 16:20:19'),(46,'Ratts Tyerel',NULL,NULL,'male','none',79,15,'grey, blue','Aleen Minor','https://swapi.dev/api/people/47/','2014-12-20 12:53:15','2014-12-21 00:17:50','2024-11-28 16:20:19'),(47,'Dud Bolt',NULL,'yellow','male','none',94,45,'blue, grey','Vulpter','https://swapi.dev/api/people/48/','2014-12-20 12:57:31','2014-12-21 00:17:50','2024-11-28 16:20:19'),(48,'Gasgano',NULL,'black','male','none',122,NULL,'white, blue','Troiken','https://swapi.dev/api/people/49/','2014-12-20 13:02:12','2014-12-21 00:17:50','2024-11-28 16:20:19'),(49,'Ben Quadinaros',NULL,'orange','male','none',163,65,'grey, green, yellow','Tund','https://swapi.dev/api/people/50/','2014-12-20 13:08:33','2014-12-21 00:17:50','2024-11-28 16:20:19'),(50,'Mace Windu','72BBY','brown','male','none',188,84,'dark','Haruun Kal','https://swapi.dev/api/people/51/','2014-12-20 13:12:30','2014-12-21 00:17:50','2024-11-28 16:20:19'),(51,'Ki-Adi-Mundi','92BBY','yellow','male','white',198,82,'pale','Cerea','https://swapi.dev/api/people/52/','2014-12-20 13:15:32','2014-12-21 00:17:50','2024-11-28 16:20:19'),(52,'Kit Fisto',NULL,'black','male','none',196,87,'green','Glee Anselm','https://swapi.dev/api/people/53/','2014-12-20 13:18:57','2014-12-21 00:17:50','2024-11-28 16:20:19'),(53,'Eeth Koth',NULL,'brown','male','black',171,NULL,'brown','Iridonia','https://swapi.dev/api/people/54/','2014-12-20 13:26:47','2014-12-21 00:17:50','2024-11-28 16:20:19'),(54,'Adi Gallia',NULL,'blue','female','none',184,50,'dark','Coruscant','https://swapi.dev/api/people/55/','2014-12-20 13:29:11','2014-12-21 00:17:50','2024-11-28 16:20:19'),(55,'Saesee Tiin',NULL,'orange','male','none',188,NULL,'pale','Iktotch','https://swapi.dev/api/people/56/','2014-12-20 13:32:11','2014-12-21 00:17:50','2024-11-28 16:20:19'),(56,'Yarael Poof',NULL,'yellow','male','none',264,NULL,'white','Quermia','https://swapi.dev/api/people/57/','2014-12-20 13:34:48','2014-12-21 00:17:50','2024-11-28 16:20:19'),(57,'Plo Koon','22BBY','black','male','none',188,80,'orange','Dorin','https://swapi.dev/api/people/58/','2014-12-20 13:49:19','2014-12-21 00:17:50','2024-11-28 16:20:19'),(58,'Mas Amedda',NULL,'blue','male','none',196,NULL,'blue','Champala','https://swapi.dev/api/people/59/','2014-12-20 13:53:26','2014-12-21 00:17:50','2024-11-28 16:20:19'),(59,'Gregar Typho',NULL,'brown','male','black',185,85,'dark','Naboo','https://swapi.dev/api/people/60/','2014-12-20 14:10:10','2014-12-21 00:17:50','2024-11-28 16:20:19'),(60,'CordÔö£┬«',NULL,'brown','female','brown',157,NULL,'light','Naboo','https://swapi.dev/api/people/61/','2014-12-20 14:11:39','2014-12-21 00:17:50','2024-11-28 16:20:19'),(61,'Cliegg Lars','82BBY','blue','male','brown',183,NULL,'fair','Tatooine','https://swapi.dev/api/people/62/','2014-12-20 18:59:03','2014-12-21 00:17:50','2024-11-28 16:20:19'),(62,'Poggle the Lesser',NULL,'yellow','male','none',183,80,'green','Geonosis','https://swapi.dev/api/people/63/','2014-12-20 19:40:43','2014-12-21 00:17:50','2024-11-28 16:20:19'),(63,'Luminara Unduli','58BBY','blue','female','black',170,NULL,'yellow','Mirial','https://swapi.dev/api/people/64/','2014-12-20 19:45:53','2014-12-21 00:17:50','2024-11-28 16:20:19'),(64,'Barriss Offee','40BBY','blue','female','black',166,50,'yellow','Mirial','https://swapi.dev/api/people/65/','2014-12-20 19:46:40','2014-12-21 00:17:50','2024-11-28 16:20:19'),(65,'DormÔö£┬«',NULL,'brown','female','brown',165,NULL,'light','Naboo','https://swapi.dev/api/people/66/','2014-12-20 19:49:14','2014-12-21 00:17:50','2024-11-28 16:20:19'),(66,'Dooku','102BBY','brown','male','white',193,80,'fair','Serenno','https://swapi.dev/api/people/67/','2014-12-20 19:52:14','2014-12-21 00:17:50','2024-11-28 16:20:19'),(67,'Bail Prestor Organa','67BBY','brown','male','black',191,NULL,'tan','Alderaan','https://swapi.dev/api/people/68/','2014-12-20 19:53:08','2014-12-21 00:17:50','2024-11-28 16:20:19'),(68,'Jango Fett','66BBY','brown','male','black',183,79,'tan','Concord Dawn','https://swapi.dev/api/people/69/','2014-12-20 19:54:41','2014-12-21 00:17:50','2024-11-28 16:20:19'),(69,'Zam Wesell',NULL,'yellow','female','blonde',168,55,'fair, green, yellow','Zolan','https://swapi.dev/api/people/70/','2014-12-20 19:57:44','2014-12-21 00:17:50','2024-11-28 16:20:19'),(70,'Dexter Jettster',NULL,'yellow','male','none',198,102,'brown','Ojom','https://swapi.dev/api/people/71/','2014-12-20 20:28:27','2014-12-21 00:17:50','2024-11-28 16:20:19'),(71,'Lama Su',NULL,'black','male','none',229,88,'grey','Kamino','https://swapi.dev/api/people/72/','2014-12-20 20:30:50','2014-12-21 00:17:50','2024-11-28 16:20:19'),(72,'Taun We',NULL,'black','female','none',213,NULL,'grey','Kamino','https://swapi.dev/api/people/73/','2014-12-20 20:31:21','2014-12-21 00:17:50','2024-11-28 16:20:19'),(73,'Jocasta Nu',NULL,'blue','female','white',167,NULL,'fair','Coruscant','https://swapi.dev/api/people/74/','2014-12-20 20:32:51','2014-12-21 00:17:50','2024-11-28 16:20:19'),(74,'R4-P17',NULL,'red, blue','female','none',96,NULL,'silver, red','unknown','https://swapi.dev/api/people/75/','2014-12-20 20:43:36','2014-12-21 00:17:50','2024-11-28 16:20:19'),(75,'Wat Tambor',NULL,NULL,'male','none',193,48,'green, grey','Skako','https://swapi.dev/api/people/76/','2014-12-20 20:53:52','2014-12-21 00:17:50','2024-11-28 16:20:19'),(76,'San Hill',NULL,'gold','male','none',191,NULL,'grey','Muunilinst','https://swapi.dev/api/people/77/','2014-12-20 20:58:17','2014-12-21 00:17:50','2024-11-28 16:20:19'),(77,'Shaak Ti',NULL,'black','female','none',178,57,'red, blue, white','Shili','https://swapi.dev/api/people/78/','2014-12-20 21:44:01','2014-12-21 00:17:50','2024-11-28 16:20:19'),(78,'Grievous',NULL,'green, yellow','male','none',216,159,'brown, white','Kalee','https://swapi.dev/api/people/79/','2014-12-20 22:43:53','2014-12-21 00:17:50','2024-11-28 16:20:19'),(79,'Tarfful',NULL,'blue','male','brown',234,136,'brown','Kashyyyk','https://swapi.dev/api/people/80/','2014-12-20 22:46:34','2014-12-21 00:17:50','2024-11-28 16:20:19'),(80,'Raymus Antilles',NULL,'brown','male','brown',188,79,'light','Alderaan','https://swapi.dev/api/people/81/','2014-12-20 22:49:35','2014-12-21 00:17:50','2024-11-28 16:20:19'),(81,'Sly Moore',NULL,'white','female','none',178,48,'pale','Umbara','https://swapi.dev/api/people/82/','2014-12-20 23:18:37','2014-12-21 00:17:50','2024-11-28 16:20:19'),(82,'Tion Medon',NULL,'black','male','none',206,80,'grey','Utapau','https://swapi.dev/api/people/83/','2014-12-20 23:35:04','2014-12-21 00:17:50','2024-11-28 16:20:19');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_films`
--

DROP TABLE IF EXISTS `people_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_films` (
  `person_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`person_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `people_films_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_films_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_films`
--

LOCK TABLES `people_films` WRITE;
/*!40000 ALTER TABLE `people_films` DISABLE KEYS */;
INSERT INTO `people_films` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(80,1),(1,2),(2,2),(3,2),(4,2),(5,2),(10,2),(13,2),(14,2),(17,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(1,3),(2,3),(3,3),(4,3),(5,3),(10,3),(13,3),(14,3),(16,3),(17,3),(19,3),(20,3),(21,3),(24,3),(26,3),(27,3),(28,3),(29,3),(30,3),(44,3),(2,4),(3,4),(10,4),(11,4),(16,4),(19,4),(20,4),(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),(41,4),(42,4),(43,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(2,5),(3,5),(6,5),(7,5),(10,5),(11,5),(19,5),(20,5),(21,5),(32,5),(34,5),(35,5),(39,5),(42,5),(45,5),(50,5),(51,5),(52,5),(57,5),(58,5),(59,5),(60,5),(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),(71,5),(72,5),(73,5),(74,5),(75,5),(76,5),(77,5),(81,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(10,6),(11,6),(12,6),(13,6),(19,6),(20,6),(32,6),(34,6),(45,6),(50,6),(51,6),(52,6),(53,6),(54,6),(55,6),(57,6),(62,6),(63,6),(66,6),(67,6),(74,6),(77,6),(78,6),(79,6),(80,6),(81,6),(82,6);
/*!40000 ALTER TABLE `people_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planets`
--

DROP TABLE IF EXISTS `planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `diameter` int DEFAULT NULL,
  `rotation_period` int DEFAULT NULL,
  `orbital_period` int DEFAULT NULL,
  `gravity` float DEFAULT NULL,
  `surface_water` int DEFAULT NULL,
  `terrain` varchar(255) DEFAULT NULL,
  `climate` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets`
--

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
INSERT INTO `planets` VALUES (1,'Tatooine',10465,23,304,NULL,1,'desert','arid','2014-12-09 13:50:49','2014-12-20 20:58:18','https://swapi.dev/api/planets/1/',200000),(2,'Alderaan',12500,24,364,NULL,40,'grasslands, mountains','temperate','2014-12-10 11:35:48','2014-12-20 20:58:18','https://swapi.dev/api/planets/2/',2000000000),(3,'Yavin IV',10200,24,4818,NULL,8,'jungle, rainforests','temperate, tropical','2014-12-10 11:37:19','2014-12-20 20:58:18','https://swapi.dev/api/planets/3/',1000),(4,'Hoth',7200,23,549,NULL,100,'tundra, ice caves, mountain ranges','frozen','2014-12-10 11:39:13','2014-12-20 20:58:18','https://swapi.dev/api/planets/4/',NULL),(5,'Dagobah',8900,23,341,NULL,8,'swamp, jungles','murky','2014-12-10 11:42:22','2014-12-20 20:58:18','https://swapi.dev/api/planets/5/',NULL),(6,'Bespin',118000,12,5110,NULL,0,'gas giant','temperate','2014-12-10 11:43:55','2014-12-20 20:58:18','https://swapi.dev/api/planets/6/',6000000),(7,'Endor',4900,18,402,NULL,8,'forests, mountains, lakes','temperate','2014-12-10 11:50:29','2014-12-20 20:58:18','https://swapi.dev/api/planets/7/',30000000),(8,'Naboo',12120,26,312,NULL,12,'grassy hills, swamps, forests, mountains','temperate','2014-12-10 11:52:31','2014-12-20 20:58:18','https://swapi.dev/api/planets/8/',4500000000),(9,'Coruscant',12240,24,368,NULL,NULL,'cityscape, mountains','temperate','2014-12-10 11:54:13','2014-12-20 20:58:18','https://swapi.dev/api/planets/9/',1000000000000),(10,'Kamino',19720,27,463,NULL,100,'ocean','temperate','2014-12-10 12:45:06','2014-12-20 20:58:18','https://swapi.dev/api/planets/10/',1000000000),(11,'Geonosis',11370,30,256,NULL,5,'rock, desert, mountain, barren','temperate, arid','2014-12-10 12:47:22','2014-12-20 20:58:18','https://swapi.dev/api/planets/11/',100000000000),(12,'Utapau',12900,27,351,NULL,NULL,'scrublands, savanna, canyons, sinkholes','temperate, arid, windy','2014-12-10 12:49:01','2014-12-20 20:58:18','https://swapi.dev/api/planets/12/',95000000),(13,'Mustafar',4200,36,412,NULL,0,'volcanoes, lava rivers, mountains, caves','hot','2014-12-10 12:50:16','2014-12-20 20:58:18','https://swapi.dev/api/planets/13/',20000),(14,'Kashyyyk',12765,26,381,NULL,60,'jungle, forests, lakes, rivers','tropical','2014-12-10 13:32:00','2014-12-20 20:58:18','https://swapi.dev/api/planets/14/',45000000),(15,'Polis Massa',0,24,590,NULL,0,'airless asteroid','artificial temperate ','2014-12-10 13:33:46','2014-12-20 20:58:18','https://swapi.dev/api/planets/15/',1000000),(16,'Mygeeto',10088,12,167,NULL,NULL,'glaciers, mountains, ice canyons','frigid','2014-12-10 13:43:39','2014-12-20 20:58:18','https://swapi.dev/api/planets/16/',19000000),(17,'Felucia',9100,34,231,NULL,NULL,'fungus forests','hot, humid','2014-12-10 13:44:50','2014-12-20 20:58:18','https://swapi.dev/api/planets/17/',8500000),(18,'Cato Neimoidia',0,25,278,NULL,NULL,'mountains, fields, forests, rock arches','temperate, moist','2014-12-10 13:46:28','2014-12-20 20:58:18','https://swapi.dev/api/planets/18/',10000000),(19,'Saleucami',14920,26,392,NULL,NULL,'caves, desert, mountains, volcanoes','hot','2014-12-10 13:47:46','2014-12-20 20:58:18','https://swapi.dev/api/planets/19/',1400000000),(20,'Stewjon',0,NULL,NULL,NULL,NULL,'grass','temperate','2014-12-10 16:16:26','2014-12-20 20:58:18','https://swapi.dev/api/planets/20/',NULL),(21,'Eriadu',13490,24,360,NULL,NULL,'cityscape','polluted','2014-12-10 16:26:54','2014-12-20 20:58:18','https://swapi.dev/api/planets/21/',22000000000),(22,'Corellia',11000,25,329,NULL,70,'plains, urban, hills, forests','temperate','2014-12-10 16:49:12','2014-12-20 20:58:18','https://swapi.dev/api/planets/22/',3000000000),(23,'Rodia',7549,29,305,NULL,60,'jungles, oceans, urban, swamps','hot','2014-12-10 17:03:28','2014-12-20 20:58:18','https://swapi.dev/api/planets/23/',1300000000),(24,'Nal Hutta',12150,87,413,NULL,NULL,'urban, oceans, swamps, bogs','temperate','2014-12-10 17:11:29','2014-12-20 20:58:18','https://swapi.dev/api/planets/24/',7000000000),(25,'Dantooine',9830,25,378,NULL,NULL,'oceans, savannas, mountains, grasslands','temperate','2014-12-10 17:23:29','2014-12-20 20:58:18','https://swapi.dev/api/planets/25/',1000),(26,'Bestine IV',6400,26,680,NULL,98,'rocky islands, oceans','temperate','2014-12-12 11:16:55','2014-12-20 20:58:18','https://swapi.dev/api/planets/26/',62000000),(27,'Ord Mantell',14050,26,334,NULL,10,'plains, seas, mesas','temperate','2014-12-15 12:23:41','2014-12-20 20:58:18','https://swapi.dev/api/planets/27/',4000000000),(28,'unknown',0,0,0,NULL,NULL,'unknown','unknown','2014-12-15 12:25:59','2014-12-20 20:58:18','https://swapi.dev/api/planets/28/',NULL),(29,'Trandosha',0,25,371,NULL,NULL,'mountains, seas, grasslands, deserts','arid','2014-12-15 12:53:47','2014-12-20 20:58:18','https://swapi.dev/api/planets/29/',42000000),(30,'Socorro',0,20,326,NULL,NULL,'deserts, mountains','arid','2014-12-15 12:56:31','2014-12-20 20:58:18','https://swapi.dev/api/planets/30/',300000000),(31,'Mon Cala',11030,21,398,1,100,'oceans, reefs, islands','temperate','2014-12-18 11:07:01','2014-12-20 20:58:18','https://swapi.dev/api/planets/31/',27000000000),(32,'Chandrila',13500,20,368,1,40,'plains, forests','temperate','2014-12-18 11:11:51','2014-12-20 20:58:18','https://swapi.dev/api/planets/32/',1200000000),(33,'Sullust',12780,20,263,1,5,'mountains, volcanoes, rocky deserts','superheated','2014-12-18 11:25:40','2014-12-20 20:58:18','https://swapi.dev/api/planets/33/',18500000000),(34,'Toydaria',7900,21,184,1,NULL,'swamps, lakes','temperate','2014-12-19 17:47:54','2014-12-20 20:58:18','https://swapi.dev/api/planets/34/',11000000),(35,'Malastare',18880,26,201,1.56,NULL,'swamps, deserts, jungles, mountains','arid, temperate, tropical','2014-12-19 17:52:13','2014-12-20 20:58:18','https://swapi.dev/api/planets/35/',2000000000),(36,'Dathomir',10480,24,491,0.9,NULL,'forests, deserts, savannas','temperate','2014-12-19 18:00:40','2014-12-20 20:58:18','https://swapi.dev/api/planets/36/',5200),(37,'Ryloth',10600,30,305,1,5,'mountains, valleys, deserts, tundra','temperate, arid, subartic','2014-12-20 09:46:25','2014-12-20 20:58:18','https://swapi.dev/api/planets/37/',1500000000),(38,'Aleen Minor',NULL,NULL,NULL,NULL,NULL,'unknown','unknown','2014-12-20 09:52:23','2014-12-20 20:58:18','https://swapi.dev/api/planets/38/',NULL),(39,'Vulpter',14900,22,391,1,NULL,'urban, barren','temperate, artic','2014-12-20 09:56:58','2014-12-20 20:58:18','https://swapi.dev/api/planets/39/',421000000),(40,'Troiken',NULL,NULL,NULL,NULL,NULL,'desert, tundra, rainforests, mountains','unknown','2014-12-20 10:01:37','2014-12-20 20:58:18','https://swapi.dev/api/planets/40/',NULL),(41,'Tund',12190,48,1770,NULL,NULL,'barren, ash','unknown','2014-12-20 10:07:29','2014-12-20 20:58:18','https://swapi.dev/api/planets/41/',0),(42,'Haruun Kal',10120,25,383,0.98,NULL,'toxic cloudsea, plateaus, volcanoes','temperate','2014-12-20 10:12:28','2014-12-20 20:58:18','https://swapi.dev/api/planets/42/',705300),(43,'Cerea',NULL,27,386,1,20,'verdant','temperate','2014-12-20 10:14:48','2014-12-20 20:58:18','https://swapi.dev/api/planets/43/',450000000),(44,'Glee Anselm',15600,33,206,1,80,'lakes, islands, swamps, seas','tropical, temperate','2014-12-20 10:18:26','2014-12-20 20:58:18','https://swapi.dev/api/planets/44/',500000000),(45,'Iridonia',NULL,29,413,NULL,NULL,'rocky canyons, acid pools','unknown','2014-12-20 10:26:05','2014-12-20 20:58:18','https://swapi.dev/api/planets/45/',NULL),(46,'Tholoth',NULL,NULL,NULL,NULL,NULL,'unknown','unknown','2014-12-20 10:28:31','2014-12-20 20:58:18','https://swapi.dev/api/planets/46/',NULL),(47,'Iktotch',NULL,22,481,1,NULL,'rocky','arid, rocky, windy','2014-12-20 10:31:32','2014-12-20 20:58:18','https://swapi.dev/api/planets/47/',NULL),(48,'Quermia',NULL,NULL,NULL,NULL,NULL,'unknown','unknown','2014-12-20 10:34:08','2014-12-20 20:58:18','https://swapi.dev/api/planets/48/',NULL),(49,'Dorin',13400,22,409,1,NULL,'unknown','temperate','2014-12-20 10:48:36','2014-12-20 20:58:18','https://swapi.dev/api/planets/49/',NULL),(50,'Champala',NULL,27,318,1,NULL,'oceans, rainforests, plateaus','temperate','2014-12-20 10:52:51','2014-12-20 20:58:18','https://swapi.dev/api/planets/50/',3500000000),(51,'Mirial',NULL,NULL,NULL,NULL,NULL,'deserts','unknown','2014-12-20 16:44:46','2014-12-20 20:58:18','https://swapi.dev/api/planets/51/',NULL),(52,'Serenno',NULL,NULL,NULL,NULL,NULL,'rainforests, rivers, mountains','unknown','2014-12-20 16:52:13','2014-12-20 20:58:18','https://swapi.dev/api/planets/52/',NULL),(53,'Concord Dawn',NULL,NULL,NULL,NULL,NULL,'jungles, forests, deserts','unknown','2014-12-20 16:54:39','2014-12-20 20:58:18','https://swapi.dev/api/planets/53/',NULL),(54,'Zolan',NULL,NULL,NULL,NULL,NULL,'unknown','unknown','2014-12-20 16:56:37','2014-12-20 20:58:18','https://swapi.dev/api/planets/54/',NULL),(55,'Ojom',NULL,NULL,NULL,NULL,100,'oceans, glaciers','frigid','2014-12-20 17:27:41','2014-12-20 20:58:18','https://swapi.dev/api/planets/55/',500000000),(56,'Skako',NULL,27,384,1,NULL,'urban, vines','temperate','2014-12-20 17:50:47','2014-12-20 20:58:18','https://swapi.dev/api/planets/56/',500000000000),(57,'Muunilinst',13800,28,412,1,25,'plains, forests, hills, mountains','temperate','2014-12-20 17:57:47','2014-12-20 20:58:18','https://swapi.dev/api/planets/57/',5000000000),(58,'Shili',NULL,NULL,NULL,1,NULL,'cities, savannahs, seas, plains','temperate','2014-12-20 18:43:14','2014-12-20 20:58:18','https://swapi.dev/api/planets/58/',NULL),(59,'Kalee',13850,23,378,1,NULL,'rainforests, cliffs, canyons, seas','arid, temperate, tropical','2014-12-20 19:43:51','2014-12-20 20:58:18','https://swapi.dev/api/planets/59/',4000000000),(60,'Umbara',NULL,NULL,NULL,NULL,NULL,'unknown','unknown','2014-12-20 20:18:36','2014-12-20 20:58:18','https://swapi.dev/api/planets/60/',NULL);
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planets_films`
--

DROP TABLE IF EXISTS `planets_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets_films` (
  `planet_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`planet_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `planets_films_ibfk_1` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `planets_films_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets_films`
--

LOCK TABLES `planets_films` WRITE;
/*!40000 ALTER TABLE `planets_films` DISABLE KEYS */;
INSERT INTO `planets_films` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(27,2),(1,3),(5,3),(7,3),(8,3),(9,3),(1,4),(8,4),(9,4),(1,5),(8,5),(9,5),(10,5),(11,5),(1,6),(2,6),(5,6),(8,6),(9,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6);
/*!40000 ALTER TABLE `planets_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `average_height` int DEFAULT NULL,
  `average_lifespan` int DEFAULT NULL,
  `eye_colors` varchar(255) DEFAULT NULL,
  `hair_colors` varchar(255) DEFAULT NULL,
  `skin_colors` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `homeworld` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'Human','mammal','sentient',180,120,'brown, blue, green, hazel, grey, amber','blonde, brown, black, red','caucasian, black, asian, hispanic','Galactic Basic','Coruscant','2014-12-10 13:52:11','2014-12-20 21:36:42','https://swapi.dev/api/species/1/'),(2,'Droid','artificial','sentient',NULL,NULL,'n/a','n/a','n/a','n/a',NULL,'2014-12-10 15:16:16','2014-12-20 21:36:42','https://swapi.dev/api/species/2/'),(3,'Wookie','mammal','sentient',210,400,'blue, green, yellow, brown, golden, red','black, brown','gray','Shyriiwook','Kashyyyk','2014-12-10 16:44:31','2014-12-20 21:36:42','https://swapi.dev/api/species/3/'),(4,'Rodian','sentient','reptilian',170,NULL,'black','n/a','green, blue','Galatic Basic','Rodia','2014-12-10 17:05:26','2014-12-20 21:36:42','https://swapi.dev/api/species/4/'),(5,'Hutt','gastropod','sentient',300,1000,'yellow, red','n/a','green, brown, tan','Huttese','Nal Hutta','2014-12-10 17:12:50','2014-12-20 21:36:42','https://swapi.dev/api/species/5/'),(6,'Yoda\'s species','mammal','sentient',66,900,'brown, green, yellow','brown, white','green, yellow','Galactic basic','unknown','2014-12-15 12:27:22','2014-12-20 21:36:42','https://swapi.dev/api/species/6/'),(7,'Trandoshan','reptile','sentient',200,NULL,'yellow, orange','none','brown, green','Dosh','Trandosha','2014-12-15 13:07:47','2014-12-20 21:36:42','https://swapi.dev/api/species/7/'),(8,'Mon Calamari','amphibian','sentient',160,NULL,'yellow','none','red, blue, brown, magenta','Mon Calamarian','Mon Cala','2014-12-18 11:09:52','2014-12-20 21:36:42','https://swapi.dev/api/species/8/'),(9,'Ewok','mammal','sentient',100,NULL,'orange, brown','white, brown, black','brown','Ewokese','Endor','2014-12-18 11:22:00','2014-12-20 21:36:42','https://swapi.dev/api/species/9/'),(10,'Sullustan','mammal','sentient',180,NULL,'black','none','pale','Sullutese','Sullust','2014-12-18 11:26:20','2014-12-20 21:36:42','https://swapi.dev/api/species/10/'),(11,'Neimodian','unknown','sentient',180,NULL,'red, pink','none','grey, green','Neimoidia','Cato Neimoidia','2014-12-19 17:07:31','2014-12-20 21:36:42','https://swapi.dev/api/species/11/'),(12,'Gungan','amphibian','sentient',190,NULL,'orange','none','brown, green','Gungan basic','Naboo','2014-12-19 17:30:37','2014-12-20 21:36:42','https://swapi.dev/api/species/12/'),(13,'Toydarian','mammal','sentient',120,91,'yellow','none','blue, green, grey','Toydarian','Toydaria','2014-12-19 17:48:56','2014-12-20 21:36:42','https://swapi.dev/api/species/13/'),(14,'Dug','mammal','sentient',100,NULL,'yellow, blue','none','brown, purple, grey, red','Dugese','Malastare','2014-12-19 17:53:11','2014-12-20 21:36:42','https://swapi.dev/api/species/14/'),(15,'Twi\'lek','mammals','sentient',200,NULL,'blue, brown, orange, pink','none','orange, yellow, blue, green, pink, purple, tan','Twi\'leki','Ryloth','2014-12-20 09:48:02','2014-12-20 21:36:42','https://swapi.dev/api/species/15/'),(16,'Aleena','reptile','sentient',80,79,'unknown','none','blue, gray','Aleena','Aleen Minor','2014-12-20 09:53:16','2014-12-20 21:36:42','https://swapi.dev/api/species/16/'),(17,'Vulptereen','unknown','sentient',100,NULL,'yellow','none','grey','vulpterish','Vulpter','2014-12-20 09:57:33','2014-12-20 21:36:42','https://swapi.dev/api/species/17/'),(18,'Xexto','unknown','sentient',125,NULL,'black','none','grey, yellow, purple','Xextese','Troiken','2014-12-20 10:02:13','2014-12-20 21:36:42','https://swapi.dev/api/species/18/'),(19,'Toong','unknown','sentient',200,NULL,'orange','none','grey, green, yellow','Tundan','Tund','2014-12-20 10:08:36','2014-12-20 21:36:42','https://swapi.dev/api/species/19/'),(20,'Cerean','mammal','sentient',200,NULL,'hazel','red, blond, black, white','pale pink','Cerean','Cerea','2014-12-20 10:15:33','2014-12-20 21:36:42','https://swapi.dev/api/species/20/'),(21,'Nautolan','amphibian','sentient',180,70,'black','none','green, blue, brown, red','Nautila','Glee Anselm','2014-12-20 10:18:58','2014-12-20 21:36:42','https://swapi.dev/api/species/21/'),(22,'Zabrak','mammal','sentient',180,NULL,'brown, orange','black','pale, brown, red, orange, yellow','Zabraki','Iridonia','2014-12-20 10:26:59','2014-12-20 21:36:42','https://swapi.dev/api/species/22/'),(23,'Tholothian','mammal','sentient',NULL,NULL,'blue, indigo','unknown','dark','unknown','Tholoth','2014-12-20 10:29:13','2014-12-20 21:36:42','https://swapi.dev/api/species/23/'),(24,'Iktotchi','unknown','sentient',180,NULL,'orange','none','pink','Iktotchese','Iktotch','2014-12-20 10:32:13','2014-12-20 21:36:42','https://swapi.dev/api/species/24/'),(25,'Quermian','mammal','sentient',240,86,'yellow','none','white','Quermian','Quermia','2014-12-20 10:34:50','2014-12-20 21:36:42','https://swapi.dev/api/species/25/'),(26,'Kel Dor','unknown','sentient',180,70,'black, silver','none','peach, orange, red','Kel Dor','Dorin','2014-12-20 10:49:21','2014-12-20 21:36:42','https://swapi.dev/api/species/26/'),(27,'Chagrian','amphibian','sentient',190,NULL,'blue','none','blue','Chagria','Champala','2014-12-20 10:53:28','2014-12-20 21:36:42','https://swapi.dev/api/species/27/'),(28,'Geonosian','insectoid','sentient',178,NULL,'green, hazel','none','green, brown','Geonosian','Geonosis','2014-12-20 16:40:45','2014-12-20 21:36:42','https://swapi.dev/api/species/28/'),(29,'Mirialan','mammal','sentient',180,NULL,'blue, green, red, yellow, brown, orange','black, brown','yellow, green','Mirialan','Mirial','2014-12-20 16:46:48','2014-12-20 21:36:42','https://swapi.dev/api/species/29/'),(30,'Clawdite','reptilian','sentient',180,70,'yellow','none','green, yellow','Clawdite','Zolan','2014-12-20 16:57:46','2014-12-20 21:36:42','https://swapi.dev/api/species/30/'),(31,'Besalisk','amphibian','sentient',178,75,'yellow','none','brown','besalisk','Ojom','2014-12-20 17:28:28','2014-12-20 21:36:42','https://swapi.dev/api/species/31/'),(32,'Kaminoan','amphibian','sentient',220,80,'black','none','grey, blue','Kaminoan','Kamino','2014-12-20 17:31:24','2014-12-20 21:36:42','https://swapi.dev/api/species/32/'),(33,'Skakoan','mammal','sentient',NULL,NULL,'unknown','none','grey, green','Skakoan','Skako','2014-12-20 17:53:54','2014-12-20 21:36:42','https://swapi.dev/api/species/33/'),(34,'Muun','mammal','sentient',190,100,'black','none','grey, white','Muun','Muunilinst','2014-12-20 17:58:19','2014-12-20 21:36:42','https://swapi.dev/api/species/34/'),(35,'Togruta','mammal','sentient',180,94,'red, orange, yellow, green, blue, black','none','red, white, orange, yellow, green, blue','Togruti','Shili','2014-12-20 18:44:03','2014-12-20 21:36:42','https://swapi.dev/api/species/35/'),(36,'Kaleesh','reptile','sentient',170,80,'yellow','none','brown, orange, tan','Kaleesh','Kalee','2014-12-20 19:45:42','2014-12-20 21:36:42','https://swapi.dev/api/species/36/'),(37,'Pau\'an','mammal','sentient',190,700,'black','none','grey','Utapese','Utapau','2014-12-20 20:35:06','2014-12-20 21:36:42','https://swapi.dev/api/species/37/');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species_films`
--

DROP TABLE IF EXISTS `species_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species_films` (
  `species_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`species_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `species_films_ibfk_1` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `species_films_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_films`
--

LOCK TABLES `species_films` WRITE;
/*!40000 ALTER TABLE `species_films` DISABLE KEYS */;
INSERT INTO `species_films` VALUES (1,193),(1,194),(1,195),(1,196),(1,197),(1,198),(2,199),(2,200),(2,201),(2,202),(2,203),(2,204),(3,205),(3,206),(3,207),(3,208),(4,209),(5,210),(5,211),(6,212),(6,213),(6,214),(6,215),(6,216),(7,217),(8,218),(9,219),(10,220),(11,221),(12,222),(12,223),(13,224),(13,225),(14,226),(15,227),(15,228),(15,229),(15,230),(16,231),(17,232),(18,233),(19,234),(19,235),(20,236),(20,237),(21,238),(22,239),(23,240),(23,241),(24,242),(24,243),(25,244),(25,245),(26,246),(26,247),(27,248),(27,249),(28,250),(28,251),(29,252),(29,253),(30,254),(30,255),(31,256),(32,257),(33,258),(33,259),(34,260),(34,261),(35,262),(35,263),(36,264),(37,265),(1,266),(1,267),(1,268),(1,269),(1,270),(1,271),(2,272),(2,273),(2,274),(2,275),(2,276),(2,277),(3,278),(3,279),(3,280),(3,281),(4,282),(5,283),(5,284),(6,285),(6,286),(6,287),(6,288),(6,289),(7,290),(8,291),(9,292),(10,293),(11,294),(12,295),(12,296),(13,297),(13,298),(14,299),(15,300),(15,301),(15,302),(15,303),(16,304),(17,305),(18,306),(19,307),(19,308),(20,309),(20,310),(21,311),(22,312),(23,313),(23,314),(24,315),(24,316),(25,317),(25,318),(26,319),(26,320),(27,321),(27,322),(28,323),(28,324),(29,325),(29,326),(30,327),(30,328),(31,329),(32,330),(33,331),(33,332),(34,333),(34,334),(35,335),(35,336),(36,337),(37,338),(1,339),(1,340),(1,341),(1,342),(1,343),(1,344),(2,345),(2,346),(2,347),(2,348),(2,349),(2,350),(3,351),(3,352),(3,353),(3,354),(4,355),(5,356),(5,357),(6,358),(6,359),(6,360),(6,361),(6,362),(7,363),(8,364),(9,365),(10,366),(11,367),(12,368),(12,369),(13,370),(13,371),(14,372),(15,373),(15,374),(15,375),(15,376),(16,377),(17,378),(18,379),(19,380),(19,381),(20,382),(20,383),(21,384),(22,385),(23,386),(23,387),(24,388),(24,389),(25,390),(25,391),(26,392),(26,393),(27,394),(27,395),(28,396),(28,397),(29,398),(29,399),(30,400),(30,401),(31,402),(32,403),(33,404),(33,405),(34,406),(34,407),(35,408),(35,409),(36,410),(37,411);
/*!40000 ALTER TABLE `species_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species_people`
--

DROP TABLE IF EXISTS `species_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species_people` (
  `specie_id` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`specie_id`,`person_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `species_people_ibfk_1` FOREIGN KEY (`specie_id`) REFERENCES `species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `species_people_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_people`
--

LOCK TABLES `species_people` WRITE;
/*!40000 ALTER TABLE `species_people` DISABLE KEYS */;
INSERT INTO `species_people` VALUES (2,2),(2,3),(2,8),(3,13),(4,15),(5,16),(6,19),(2,22),(7,23),(8,26),(9,29),(10,30),(11,32),(12,35),(12,36),(12,37),(13,39),(14,40),(22,43),(15,44),(15,45),(16,46),(17,47),(18,48),(19,49),(20,51),(21,52),(22,53),(23,54),(24,55),(25,56),(26,57),(27,58),(28,62),(29,63),(29,64),(1,65),(1,66),(1,67),(30,69),(31,70),(32,71),(32,72),(1,73),(33,75),(34,76),(35,77),(36,78),(3,79),(37,82);
/*!40000 ALTER TABLE `species_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starships`
--

DROP TABLE IF EXISTS `starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `starship_class` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `passengers` int DEFAULT NULL,
  `max_atmosphering_speed` int DEFAULT NULL,
  `hyperdrive_rating` float DEFAULT NULL,
  `MGLT` float DEFAULT NULL,
  `consumables` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `crew` varchar(50) DEFAULT NULL,
  `cost_in_credits` bigint DEFAULT NULL,
  `length` float DEFAULT NULL,
  `cargo_capacity` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starships`
--

LOCK TABLES `starships` WRITE;
/*!40000 ALTER TABLE `starships` DISABLE KEYS */;
INSERT INTO `starships` VALUES (1,'CR90 corvette','CR90 corvette','corvette','Corellian Engineering Corporation',600,950,2,60,'1 year','2014-12-10 14:20:33','2014-12-20 21:23:49','https://swapi.dev/api/starships/2/','30-165',3500000,150,3000000),(2,'Star Destroyer','Imperial I-class Star Destroyer','Star Destroyer','Kuat Drive Yards',NULL,975,2,60,'2 years','2014-12-10 15:08:19','2014-12-20 21:23:49','https://swapi.dev/api/starships/3/','47,060',150000000,NULL,36000000),(3,'Sentinel-class landing craft','Sentinel-class landing craft','landing craft','Sienar Fleet Systems, Cyngus Spaceworks',75,1000,1,70,'1 month','2014-12-10 15:48:00','2014-12-20 21:23:49','https://swapi.dev/api/starships/5/','5',240000,38,180000),(4,'Death Star','DS-1 Orbital Battle Station','Deep Space Mobile Battlestation','Imperial Department of Military Research, Sienar Fleet Systems',NULL,NULL,4,10,'3 years','2014-12-10 16:36:50','2014-12-20 21:26:24','https://swapi.dev/api/starships/9/','342,953',1000000000000,120000,1000000000000),(5,'Millennium Falcon','YT-1300 light freighter','Light freighter','Corellian Engineering Corporation',6,1050,0.5,75,'2 months','2014-12-10 16:59:45','2014-12-20 21:23:49','https://swapi.dev/api/starships/10/','4',100000,34.37,100000),(6,'Y-wing','BTL Y-wing','assault starfighter','Koensayr Manufacturing',0,NULL,1,80,'1 week','2014-12-12 11:00:39','2014-12-20 21:23:49','https://swapi.dev/api/starships/11/','2',134999,14,110),(7,'X-wing','T-65 X-wing','Starfighter','Incom Corporation',0,1050,1,100,'1 week','2014-12-12 11:19:05','2014-12-20 21:23:49','https://swapi.dev/api/starships/12/','1',149999,12.5,110),(8,'TIE Advanced x1','Twin Ion Engine Advanced x1','Starfighter','Sienar Fleet Systems',0,1200,1,105,'5 days','2014-12-12 11:21:32','2014-12-20 21:23:49','https://swapi.dev/api/starships/13/','1',NULL,9.2,150),(9,'Executor','Executor-class star dreadnought','Star dreadnought','Kuat Drive Yards, Fondor Shipyards',38000,NULL,2,40,'6 years','2014-12-15 12:31:42','2014-12-20 21:23:49','https://swapi.dev/api/starships/15/','279,144',1143350000,19000,250000000),(10,'Rebel transport','GR-75 medium transport','Medium transport','Gallofree Yards, Inc.',90,650,4,20,'6 months','2014-12-15 12:34:52','2014-12-20 21:23:49','https://swapi.dev/api/starships/17/','6',NULL,90,19000000),(11,'Slave 1','Firespray-31-class patrol and attack','Patrol craft','Kuat Systems Engineering',6,1000,3,70,'1 month','2014-12-15 13:00:56','2014-12-20 21:23:49','https://swapi.dev/api/starships/21/','1',NULL,21.5,70000),(12,'Imperial shuttle','Lambda-class T-4a shuttle','Armed government transport','Sienar Fleet Systems',20,850,1,50,'2 months','2014-12-15 13:04:47','2014-12-20 21:23:49','https://swapi.dev/api/starships/22/','6',240000,20,80000),(13,'EF76 Nebulon-B escort frigate','EF76 Nebulon-B escort frigate','Escort ship','Kuat Drive Yards',75,800,2,40,'2 years','2014-12-15 13:06:30','2014-12-20 21:23:49','https://swapi.dev/api/starships/23/','854',8500000,300,6000000),(14,'Calamari Cruiser','MC80 Liberty type Star Cruiser','Star Cruiser','Mon Calamari shipyards',1200,NULL,1,60,'2 years','2014-12-18 10:54:57','2014-12-20 21:23:49','https://swapi.dev/api/starships/27/','5400',104000000,1200,NULL),(15,'A-wing','RZ-1 A-wing Interceptor','Starfighter','Alliance Underground Engineering, Incom Corporation',0,1300,1,120,'1 week','2014-12-18 11:16:34','2014-12-20 21:23:49','https://swapi.dev/api/starships/28/','1',175000,9.6,40),(16,'B-wing','A/SF-01 B-wing starfighter','Assault Starfighter','Slayn & Korpil',0,950,2,91,'1 week','2014-12-18 11:18:04','2014-12-20 21:23:49','https://swapi.dev/api/starships/29/','1',220000,16.9,45),(17,'Republic Cruiser','Consular-class cruiser','Space cruiser','Corellian Engineering Corporation',16,900,2,NULL,'unknown','2014-12-19 17:01:31','2014-12-20 21:23:49','https://swapi.dev/api/starships/31/','9',NULL,115,NULL),(18,'Droid control ship','Lucrehulk-class Droid Control Ship','Droid control ship','Hoersch-Kessel Drive, Inc.',139000,NULL,2,NULL,'500 days','2014-12-19 17:04:06','2014-12-20 21:23:49','https://swapi.dev/api/starships/32/','175',NULL,3170,4000000000),(19,'Naboo fighter','N-1 starfighter','Starfighter','Theed Palace Space Vessel Engineering Corps',0,1100,1,NULL,'7 days','2014-12-19 17:39:17','2014-12-20 21:23:49','https://swapi.dev/api/starships/39/','1',200000,11,65),(20,'Naboo Royal Starship','J-type 327 Nubian royal starship','yacht','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives',NULL,920,1.8,NULL,'unknown','2014-12-19 17:45:03','2014-12-20 21:23:49','https://swapi.dev/api/starships/40/','8',NULL,76,NULL),(21,'Scimitar','Star Courier','Space Transport','Republic Sienar Systems',6,1180,1.5,NULL,'30 days','2014-12-20 09:39:56','2014-12-20 21:23:49','https://swapi.dev/api/starships/41/','1',55000000,26.5,2500000),(22,'J-type diplomatic barge','J-type diplomatic barge','Diplomatic barge','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives',10,2000,0.7,NULL,'1 year','2014-12-20 11:05:51','2014-12-20 21:23:49','https://swapi.dev/api/starships/43/','5',2000000,39,NULL),(23,'AA-9 Coruscant freighter','Botajef AA-9 Freighter-Liner','freighter','Botajef Shipyards',30000,NULL,NULL,NULL,'unknown','2014-12-20 17:24:23','2014-12-20 21:23:49','https://swapi.dev/api/starships/47/','unknown',NULL,390,NULL),(24,'Jedi starfighter','Delta-7 Aethersprite-class interceptor','Starfighter','Kuat Systems Engineering',0,1150,1,NULL,'7 days','2014-12-20 17:35:23','2014-12-20 21:23:49','https://swapi.dev/api/starships/48/','1',180000,8,60),(25,'H-type Nubian yacht','H-type Nubian yacht','yacht','Theed Palace Space Vessel Engineering Corps',NULL,8000,0.9,NULL,'unknown','2014-12-20 17:46:46','2014-12-20 21:23:49','https://swapi.dev/api/starships/49/','4',NULL,47.9,NULL),(26,'Republic Assault ship','Acclamator I-class assault ship','assault ship','Rothana Heavy Engineering',16000,NULL,0.6,NULL,'2 years','2014-12-20 18:08:42','2014-12-20 21:23:49','https://swapi.dev/api/starships/52/','700',NULL,752,11250000),(27,'Solar Sailer','Punworcca 116-class interstellar sloop','yacht','Huppla Pasa Tisc Shipwrights Collective',11,1600,1.5,NULL,'7 days','2014-12-20 18:37:56','2014-12-20 21:23:49','https://swapi.dev/api/starships/58/','3',35700,15.2,240),(28,'Trade Federation cruiser','Providence-class carrier/destroyer','capital ship','Rendili StarDrive, Free Dac Volunteers Engineering corps.',48247,1050,1.5,NULL,'4 years','2014-12-20 19:40:21','2014-12-20 21:23:49','https://swapi.dev/api/starships/59/','600',125000000,1088,50000000),(29,'Theta-class T-2c shuttle','Theta-class T-2c shuttle','transport','Cygnus Spaceworks',16,2000,1,NULL,'56 days','2014-12-20 19:48:40','2014-12-20 21:23:49','https://swapi.dev/api/starships/61/','5',1000000,18.5,50000),(30,'Republic attack cruiser','Senator-class Star Destroyer','star destroyer','Kuat Drive Yards, Allanteen Six shipyards',2000,975,1,NULL,'2 years','2014-12-20 19:52:56','2014-12-20 21:23:49','https://swapi.dev/api/starships/63/','7400',59000000,1137,20000000),(31,'Naboo star skiff','J-type star skiff','yacht','Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated',3,1050,0.5,NULL,'unknown','2014-12-20 19:55:15','2014-12-20 21:23:49','https://swapi.dev/api/starships/64/','3',NULL,29.2,NULL),(32,'Jedi Interceptor','Eta-2 Actis-class light interceptor','starfighter','Kuat Systems Engineering',0,1500,1,NULL,'2 days','2014-12-20 19:56:57','2014-12-20 21:23:49','https://swapi.dev/api/starships/65/','1',320000,5.47,60),(33,'arc-170','Aggressive Reconnaissance-170 starfighte','starfighter','Incom Corporation, Subpro Corporation',0,1000,1,100,'5 days','2014-12-20 20:03:48','2014-12-20 21:23:49','https://swapi.dev/api/starships/66/','3',155000,14.5,110),(34,'Banking clan frigte','Munificent-class star frigate','cruiser','Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries',NULL,NULL,1,NULL,'2 years','2014-12-20 20:07:11','2014-12-20 21:23:49','https://swapi.dev/api/starships/68/','200',57000000,825,40000000),(35,'Belbullab-22 starfighter','Belbullab-22 starfighter','starfighter','Feethan Ottraw Scalable Assemblies',0,1100,6,NULL,'7 days','2014-12-20 20:38:05','2014-12-20 21:23:49','https://swapi.dev/api/starships/74/','1',168000,6.71,140),(36,'V-wing','Alpha-3 Nimbus-class V-wing starfighter','starfighter','Kuat Systems Engineering',0,1050,1,NULL,'15 hours','2014-12-20 20:43:04','2014-12-20 21:23:49','https://swapi.dev/api/starships/75/','1',102500,7.9,60);
/*!40000 ALTER TABLE `starships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starships_films`
--

DROP TABLE IF EXISTS `starships_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starships_films` (
  `starship_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`starship_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `starships_films_ibfk_1` FOREIGN KEY (`starship_id`) REFERENCES `starships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `starships_films_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starships_films`
--

LOCK TABLES `starships_films` WRITE;
/*!40000 ALTER TABLE `starships_films` DISABLE KEYS */;
INSERT INTO `starships_films` VALUES (1,40),(1,41),(1,42),(2,43),(2,44),(2,45),(3,46),(4,47),(5,48),(5,49),(5,50),(6,51),(6,52),(6,53),(7,54),(7,55),(7,56),(8,57),(9,58),(9,59),(10,60),(10,61),(11,62),(11,63),(12,64),(12,65),(13,66),(13,67),(14,68),(15,69),(16,70),(17,71),(18,72),(18,73),(18,74),(19,75),(19,76),(20,77),(21,78),(22,79),(23,80),(24,81),(24,82),(25,83),(26,84),(27,85),(28,86),(29,87),(30,88),(31,89),(32,90),(33,91),(34,92),(35,93),(36,94);
/*!40000 ALTER TABLE `starships_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starships_people`
--

DROP TABLE IF EXISTS `starships_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starships_people` (
  `starship_id` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`starship_id`,`person_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `starships_people_ibfk_1` FOREIGN KEY (`starship_id`) REFERENCES `starships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `starships_people_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starships_people`
--

LOCK TABLES `starships_people` WRITE;
/*!40000 ALTER TABLE `starships_people` DISABLE KEYS */;
INSERT INTO `starships_people` VALUES (7,1),(12,1),(8,4),(7,9),(24,10),(28,10),(31,10),(32,10),(35,10),(19,11),(28,11),(32,11),(5,13),(12,13),(5,14),(12,14),(7,17),(7,18),(11,21),(5,24),(15,28),(5,30),(19,34),(25,34),(31,34),(20,38),(21,43),(24,57),(19,59),(35,78);
/*!40000 ALTER TABLE `starships_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `vehicle_class` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `cost_in_credits` int DEFAULT NULL,
  `crew` int DEFAULT NULL,
  `passengers` int DEFAULT NULL,
  `max_atmosphering_speed` int DEFAULT NULL,
  `cargo_capacity` int DEFAULT NULL,
  `consumables` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'Sand Crawler','Digger Crawler','wheeled','Corellia Mining Corporation',36.8,150000,46,30,30,50000,'2 months','2014-12-10 15:36:25','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/4/'),(2,'T-16 skyhopper','T-16 skyhopper','repulsorcraft','Incom Corporation',10.4,14500,1,1,1200,50,'0','2014-12-10 16:01:52','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/6/'),(3,'X-34 landspeeder','X-34 landspeeder','repulsorcraft','SoroSuub Corporation',3.4,10550,1,1,250,5,'unknown','2014-12-10 16:13:52','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/7/'),(4,'TIE/LN starfighter','Twin Ion Engine/Ln Starfighter','starfighter','Sienar Fleet Systems',6.4,NULL,1,0,1200,65,'2 days','2014-12-10 16:33:52','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/8/'),(5,'Snowspeeder','t-47 airspeeder','airspeeder','Incom corporation',4.5,NULL,2,0,650,10,'none',NULL,'2014-12-20 21:30:21','https://swapi.dev/api/vehicles/14/'),(6,'TIE bomber','TIE/sa bomber','space/planetary bomber','Sienar Fleet Systems',7.8,NULL,1,0,850,NULL,'2 days','2014-12-15 12:33:15','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/16/'),(7,'AT-AT','All Terrain Armored Transport','assault walker','Kuat Drive Yards, Imperial Department of Military Research',20,NULL,5,40,60,1000,'unknown','2014-12-15 12:38:25','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/18/'),(8,'AT-ST','All Terrain Scout Transport','walker','Kuat Drive Yards, Imperial Department of Military Research',2,NULL,2,0,90,200,'none','2014-12-15 12:46:42','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/19/'),(9,'Storm IV Twin-Pod cloud car','Storm IV Twin-Pod','repulsorcraft','Bespin Motors',7,75000,2,0,1500,10,'1 day','2014-12-15 12:58:50','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/20/'),(10,'Sail barge','Modified Luxury Sail Barge','sail barge','Ubrikkian Industries Custom Vehicle Division',30,285000,26,500,100,2000000,'Live food tanks','2014-12-18 10:44:14','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/24/'),(11,'Bantha-II cargo skiff','Bantha-II','repulsorcraft cargo skiff','Ubrikkian Industries',9.5,8000,5,16,250,135000,'1 day','2014-12-18 10:48:03','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/25/'),(12,'TIE/IN interceptor','Twin Ion Engine Interceptor','starfighter','Sienar Fleet Systems',9.6,NULL,1,0,1250,75,'2 days','2014-12-18 10:50:28','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/26/'),(13,'Imperial Speeder Bike','74-Z speeder bike','speeder','Aratech Repulsor Company',3,8000,1,1,360,4,'1 day','2014-12-18 11:20:04','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/30/'),(14,'Vulture Droid','Vulture-class droid starfighter','starfighter','Haor Chall Engineering, Baktoid Armor Workshop',3.5,NULL,0,0,1200,0,'none','2014-12-19 17:09:53','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/33/'),(15,'Multi-Troop Transport','Multi-Troop Transport','repulsorcraft','Baktoid Armor Workshop',31,138000,4,112,35,12000,'unknown','2014-12-19 17:12:04','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/34/'),(16,'Armored Assault Tank','Armoured Assault Tank','repulsorcraft','Baktoid Armor Workshop',9.75,NULL,4,6,55,NULL,'unknown','2014-12-19 17:13:29','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/35/'),(17,'Single Trooper Aerial Platform','Single Trooper Aerial Platform','repulsorcraft','Baktoid Armor Workshop',2,2500,1,0,400,NULL,'none','2014-12-19 17:15:09','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/36/'),(18,'C-9979 landing craft','C-9979 landing craft','landing craft','Haor Chall Engineering',210,200000,140,284,587,1800000,'1 day','2014-12-19 17:20:36','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/37/'),(19,'Tribubble bongo','Tribubble bongo','submarine','Otoh Gunga Bongameken Cooperative',15,NULL,1,2,85,1600,'unknown','2014-12-19 17:37:37','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/38/'),(20,'Sith speeder','FC-20 speeder bike','speeder','Razalon',1.5,4000,1,0,180,2,'unknown','2014-12-20 10:09:56','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/42/'),(21,'Zephyr-G swoop bike','Zephyr-G swoop bike','repulsorcraft','Mobquet Swoops and Speeders',3.68,5750,1,1,350,200,'none','2014-12-20 16:24:16','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/44/'),(22,'Koro-2 Exodrive airspeeder','Koro-2 Exodrive airspeeder','airspeeder','Desler Gizh Outworld Mobility Corporation',6.6,NULL,1,1,800,80,'unknown','2014-12-20 17:17:33','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/45/'),(23,'XJ-6 airspeeder','XJ-6 airspeeder','airspeeder','Narglatch AirTech prefabricated kit',6.23,NULL,1,1,720,NULL,'unknown','2014-12-20 17:19:19','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/46/'),(24,'LAAT/i','Low Altitude Assault Transport/infrantry','gunship','Rothana Heavy Engineering',17.4,NULL,6,30,620,170,'unknown','2014-12-20 18:01:21','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/50/'),(25,'LAAT/c','Low Altitude Assault Transport/carrier','gunship','Rothana Heavy Engineering',28.82,NULL,1,0,620,40000,'unknown','2014-12-20 18:02:46','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/51/'),(26,'AT-TE','All Terrain Tactical Enforcer','walker','Rothana Heavy Engineering, Kuat Drive Yards',13.2,NULL,6,36,60,10000,'21 days','2014-12-20 18:10:07','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/53/'),(27,'SPHA','Self-Propelled Heavy Artillery','walker','Rothana Heavy Engineering',140,NULL,25,30,35,500,'7 days','2014-12-20 18:12:32','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/54/'),(28,'Flitknot speeder','Flitknot speeder','speeder','Huppla Pasa Tisc Shipwrights Collective',2,8000,1,0,634,NULL,'unknown','2014-12-20 18:15:20','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/55/'),(29,'Neimoidian shuttle','Sheathipede-class transport shuttle','transport','Haor Chall Engineering',20,NULL,2,6,880,1000,'7 days','2014-12-20 18:25:44','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/56/'),(30,'Geonosian starfighter','Nantex-class territorial defense','starfighter','Huppla Pasa Tisc Shipwrights Collective',9.8,NULL,1,0,20000,NULL,'unknown','2014-12-20 18:34:12','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/57/'),(31,'Tsmeu-6 personal wheel bike','Tsmeu-6 personal wheel bike','wheeled walker','Z-Gomot Ternbuell Guppat Corporation',3.5,15000,1,1,330,10,'none','2014-12-20 19:43:54','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/60/'),(32,'Emergency Firespeeder','Fire suppression speeder','fire suppression ship','unknown',NULL,NULL,2,NULL,NULL,NULL,'unknown','2014-12-20 19:50:58','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/62/'),(33,'Droid tri-fighter','tri-fighter','droid starfighter','Colla Designs, Phlac-Arphocc Automata Industries',5.4,20000,1,0,1180,0,'none','2014-12-20 20:05:19','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/67/'),(34,'Oevvaor jet catamaran','Oevvaor jet catamaran','airspeeder','Appazanna Engineering Works',15.1,12125,2,2,420,50,'3 days','2014-12-20 20:20:53','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/69/'),(35,'Raddaugh Gnasp fluttercraft','Raddaugh Gnasp fluttercraft','air speeder','Appazanna Engineering Works',7,14750,2,0,310,20,'none','2014-12-20 20:21:55','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/70/'),(36,'Clone turbo tank','HAVw A6 Juggernaut','wheeled walker','Kuat Drive Yards',49.4,350000,20,300,160,30000,'20 days','2014-12-20 20:24:45','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/71/'),(37,'Corporate Alliance tank droid','NR-N99 Persuader-class droid enforcer','droid tank','Techno Union',10.96,49000,0,4,100,NULL,'none','2014-12-20 20:26:55','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/72/'),(38,'Droid gunship','HMP droid gunship','airspeeder','Baktoid Fleet Ordnance, Haor Chall Engineering',12.3,60000,0,0,820,0,'none','2014-12-20 20:32:05','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/73/'),(39,'AT-RT','All Terrain Recon Transport','walker','Kuat Drive Yards',3.2,40000,1,0,90,20,'1 day','2014-12-20 20:47:49','2014-12-20 21:30:21','https://swapi.dev/api/vehicles/76/');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_films`
--

DROP TABLE IF EXISTS `vehicles_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles_films` (
  `vehicle_id` int NOT NULL,
  `film_id` int NOT NULL,
  PRIMARY KEY (`vehicle_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `vehicles_films_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicles_films_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_films`
--

LOCK TABLES `vehicles_films` WRITE;
/*!40000 ALTER TABLE `vehicles_films` DISABLE KEYS */;
INSERT INTO `vehicles_films` VALUES (1,144),(1,145),(2,146),(3,147),(4,148),(4,149),(4,150),(5,151),(6,152),(6,153),(7,154),(7,155),(8,156),(8,157),(9,158),(10,159),(11,160),(12,161),(13,162),(14,163),(14,164),(15,165),(16,166),(17,167),(18,168),(19,169),(20,170),(21,171),(22,172),(23,173),(24,174),(24,175),(25,176),(26,177),(26,178),(27,179),(28,180),(29,181),(29,182),(30,183),(31,184),(32,185),(33,186),(34,187),(35,188),(36,189),(37,190),(38,191),(39,192);
/*!40000 ALTER TABLE `vehicles_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_people`
--

DROP TABLE IF EXISTS `vehicles_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles_people` (
  `vehicle_id` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`vehicle_id`,`person_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `vehicles_people_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  CONSTRAINT `vehicles_people_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_people`
--

LOCK TABLES `vehicles_people` WRITE;
/*!40000 ALTER TABLE `vehicles_people` DISABLE KEYS */;
INSERT INTO `vehicles_people` VALUES (5,1),(13,1),(13,5),(19,10),(21,11),(23,11),(8,13),(5,17),(19,31),(20,43),(28,66),(22,69),(31,78);
/*!40000 ALTER TABLE `vehicles_people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 21:58:33
