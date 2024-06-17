-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: talktalesdb
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('4500987a-f227-451a-9f0e-45478733853e','c5c1e49b887deaf48b21fb58ca34d39f278196ed376f7bbd4d016b7dbd414b5b','2024-06-16 08:23:02.939','20240613155756_add_length_voice_url',NULL,NULL,'2024-06-16 08:23:02.931',1),('6a66de5f-96af-4091-955b-6220bd090df1','ca9ce6f108c04d1adbb17c20943a2d9cb5f2cb371df4844462fb83b6f7ccbf00','2024-06-16 08:23:02.922','20240611143811_add_is_mid_and_is_postlog',NULL,NULL,'2024-06-16 08:23:02.914',1),('afbeac9f-5a89-4eea-95da-7b8199a5680c','1d1fa2acbf74806df9ab3db01243d0f705bd254bc5ae61d3b31a50784da6f601','2024-06-16 08:23:02.903','20240609044510_add_constraint',NULL,NULL,'2024-06-16 08:23:02.829',1),('b57dccac-f230-433f-a0b9-63878bf3f8fd','5453057b9430589304f88ac732a64595c461b3ac3b80296d0df06298a24ea5cb','2024-06-16 08:23:02.817','20240604014211_reinit_database',NULL,NULL,'2024-06-16 08:23:02.420',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glosarium`
--

DROP TABLE IF EXISTS `glosarium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glosarium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Glosarium_story_id_fkey` (`story_id`),
  CONSTRAINT `Glosarium_story_id_fkey` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glosarium`
--

LOCK TABLES `glosarium` WRITE;
/*!40000 ALTER TABLE `glosarium` DISABLE KEYS */;
INSERT INTO `glosarium` VALUES (1,'Beautiful',' Pleasing to the eye; attractive. (Timun Mas was a beautiful girl).',1),(2,'Bundle',' A group of things tied or wrapped together. (Mbok Sirni gave Timun Mas a bundle of magical items).',1),(3,'Child','The young offspring of human parents. (Mbok Sirni desperately wanted a child).',1),(4,'Cucumber Seed','The seed of a cucumber plant. (The raksasa gave Mbok Sirni a cucumber seed).',1),(5,'Dense','Packed closely together. (The cucumber seeds grew into a dense field).',1),(6,'Desperately','In a way that shows a great need or desire. (Mbok Sirni desperately wanted a child).',1),(7,'Escape','To get away from a place or situation, especially one that is unpleasant or dangerous. (Timun Mas escaped from the raksasa).',1),(8,'Evil','Morally bad or wrong. (The raksasa was an evil creature).',1),(9,'Forest','A large area covered with trees and other vegetation. (Timun Mas ran into the forest).',1),(10,'Golden Cucumber','A magical cucumber made of gold. (Timun Mas was born from a golden cucumber).',1),(11,'Hindered','To make it difficult for someone or something to move or progress. (The cucumber field hindered the raksasa).',1),(12,'Huge',' Very large in size. (The raksasa took large strides).',1),(13,'Hug','To hold someone tightly in your arms, especially as a sign of affection or comfort. (Timun Mas hugged Mbok Sirni).',1),(14,'Items','Things that you can hold or carry. (The bundle contained magical items).',1),(15,'Kind','Having or showing a friendly and generous nature. (Timun Mas was a kind girl).',1),(16,'Lake','A large body of water surrounded by land. (The shrimp paste turned into a boiling mud lake).',1),(17,'Mbok Sirni','An old widow who wished for a child.',1),(18,'Needle',' A thin, pointed metal instrument used for sewing or piercing. (The needles turned into sharp bamboo trees).',1),(19,' Old Widow','A woman whose husband has died and who has not married again. (Mbok Sirni was an old widow).',1),(20,'Peace','Freedom from war, violence, or conflict. (Timun Mas and Mbok Sirni lived in peace).',1),(21,'Promise',' An agreement or undertaking to do something in the future. (Mbok Sirni made a promise to the raksasa).',1),(22,'Rakasa','A giant, evil creature in Indonesian mythology.',1),(23,'Salt',' A white crystalline substance that is soluble in water and gives a salty taste to food. (The salt transformed into a sea).',1),(24,'Safe',' Not in danger or at risk. (Timun Mas was finally safe).',1),(25,' Shrimp Paste',' A fermented condiment made from shrimp. (The shrimp paste turned into a boiling mud lake).',1),(26,'Strength',' Physical power. (The raksasa used his strength to get through the challenges).',1),(27,'Strides','Long steps taken while walking or running. (The raksasa chased Timun Mas with large strides).',1),(28,'Threat','Something that is likely to cause damage or harm. (The raksasa was a threat to Timun Mas).',1),(29,' Turned into','Changed into something else. (The salt turned into a sea).',1),(30,'Widow',' A woman whose husband has died and who has not married again. (Mbok Sirni was a widow).',1),(31,'Years',' A period of twelve months. (Years passed, and Timun Mas grew up).',1),(32,'Biological Daughter','A daughter born to a specific mother and father. (Bawang Putih is Bu Siti\'s biological daughter).',2),(33,'Bullied','To be treated in a harsh or unkind way by someone stronger or more powerful. (Bawang Merah bullied Bawang Putih).',2),(34,'Chores','Household tasks that need to be done regularly. (Bawang Putih did all the household chores).',2),(35,'Cruelty','The quality of being cruel; the infliction of suffering with no justification. (Bu Siti treated Bawang Putih with cruelty).',2),(36,'Daughter',' A female child. (Bawang Putih and Bawang Merah are both daughters).',2),(37,'Diligent',' Hardworking and careful. (Bawang Putih was a diligent girl).',2),(38,' Elderly Woman',' Another term for an old woman. (The old woman by the river).',2),(39,'Gold',' A precious metal of a bright yellow color. (The small gourd contained gold).',2),(40,'Gourd',' A large, hard-shelled fruit that can be used as a container. (The old woman gives Bawang Putih and Bawang Merah gourds).',2),(41,'Impatient','Not able to wait calmly. (Bawang Merah was impatient with the old woman).',2),(42,'Jealous',' Feeling or showing envy of someone\'s belongings, advantages, or successes. (Bawang Merah was jealous of Bawang Putih).',2),(43,'Jewelry',' Ornamental objects such as necklaces, rings, or bracelets, typically made from precious metals or stones. (The small gourd contained jewelry).',2),(44,' Kind-Hearted',' Having a kind and generous nature. (Bawang Putih was kind-hearted)',2),(45,'Lost',' Unable to find something that was previously there. (Bawang Putih lost her stepmother\'s clothes).',2),(46,'Mother','A female parent. (Bu Siti is the mother of Bawang Putih and stepmother of Bawang Merah).',2),(47,'Nonsense','Something with no meaning or value. (Bawang Merah called the old woman\'s request nonsense).',2),(48,'Old Woman',' A woman who is old. (The woman Bawang Putih meets by the river).',2),(49,'Patience','he capacity to accept or tolerate delay, trouble, or suffering without getting angry or upset. (Bawang Putih showed patience).',2),(50,'Punishment','Something unpleasant in response to a bad action. (The snakes and creatures were Bawang Merah\'s punishment).',2),(51,'Reward','Something given in recognition of service, effort, or achievement. (The old woman gave Bawang Putih a gourd as a reward).',2),(52,'River','A large natural stream of water flowing to a sea, lake, or another river. (Bawang Putih washed clothes at the river).',2),(53,'Scared',' Feeling fear or anxiety. (The stepmother and Bawang Merah were scared).',2),(54,'Stepdaughter','The daughter of one\'s spouse from a previous relationship. (Bawang Merah is Bu Siti\'s stepdaughter).',2),(55,'Stepmother','The wife of a person\'s father after the death of their biological mother. (Bu Siti is the stepmother of Bawang Merah).',2),(56,'Suffering','Experiencing pain or distress. (Bawang Putih suffered cruelty from her stepmother).',2),(57,'Village','A small community of people living in close proximity to one another. (The story takes place in a peaceful village).',2),(58,'Widow','A woman whose husband has died and has not married again. (Bu Siti is a widow).',2),(59,'Widower','A man whose wife has died and has not married again. (Bu Siti\'s husband was a widower).',2);
/*!40000 ALTER TABLE `glosarium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversation_count` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL,
  `prolog_image_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Timun Mas','Once upon a time, there lived an old widow named Mbok Sirni. She desperately wanted to have a child. One day, Mbok Sirni met an evil raksasa who gave her a cucumber seed. The raksasa said, \"Plant this seed, and you will have a child. But remember, when the child turns 17, you must give her to me.\"\n    Mbok Sirni agreed and planted the cucumber seed. Several months later, a golden cucumber grew. When the cucumber was split open, inside it was a beautiful baby girl. Mbok Sirni named her Timun Mas.\n    Years passed, and Timun Mas grew into a kind and beautiful girl. However, Mbok Sirni was always worried because she remembered her promise to the raksasa.    \n    ','https://porto.sman1tjbarat.sch.id/img/timunmas/banner_HOME_timun_fix.png','Central Java',12,'2024-06-16 08:23:04.020','2024-06-16 08:23:04.020','https://porto.sman1tjbarat.sch.id/img/timunmas/banner_prolog_TimunM_1000px%201.png'),(2,'BAWANG MERAH & BAWANG PUTIH','Once upon a time, in a peaceful village, there lived a widow named Bu Siti with her two daughters, Bawang Merah and Bawang Putih. Bawang Putih was Bu Siti\'s biological daughter, while Bawang Merah was her stepdaughter. After Bawang Putih\'s father passed away, Bu Siti remarried a widower who had a daughter named Bawang Merah.\n            \n Bawang Putih grew up to be a kind-hearted, diligent, and patient girl. She always helped her mother with everything without complaining. In contrast, Bawang Merah was lazy and often behaved badly. She was always jealous of Bawang Putih, who was loved by everyone in the village. This made Bawang Merah constantly look for ways to hurt Bawang Putih\'s feelings.\n            \n After a few years, Bawang Putih\'s biological mother fell ill and passed away. Bu Siti, now Bawang Putih\'s stepmother, began to show her true nature. She treated Bawang Putih very cruelly, while Bawang Merah became even more free to bully her stepsister.\n                ','https://porto.sman1tjbarat.sch.id/img/bawang/banner_HOME_bawang_fix%202.png','Riau',0,'2024-06-16 08:23:04.036','2024-06-16 08:23:04.036','https://porto.sman1tjbarat.sch.id/img/bawang/banner_prolog_BawangMBP_1000px%201.png');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storyconversation`
--

DROP TABLE IF EXISTS `storyconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storyconversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storyId` int(11) NOT NULL,
  `conv_sequence` int(11) NOT NULL,
  `conv_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `character_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `characer_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_speech_by_user` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL,
  `prolog_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_mid` tinyint(1) NOT NULL DEFAULT 0,
  `is_postlog` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StoryConversation_storyId_conv_sequence_key` (`storyId`,`conv_sequence`),
  CONSTRAINT `StoryConversation_storyId_fkey` FOREIGN KEY (`storyId`) REFERENCES `story` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyconversation`
--

LOCK TABLES `storyconversation` WRITE;
/*!40000 ALTER TABLE `storyconversation` DISABLE KEYS */;
INSERT INTO `storyconversation` VALUES (1,1,0,'Mbok Sirni, I have come to take Timun Mas. A promise is a promise!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/raksasa_kanan.png','Raksasa','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-timun/raksasa-buto-ijo/Mbok-Sirni-I-have-come-t-2.mp3',0,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027','One day, when Timun Mas turned 17, the raksasa came to collect on the promise.',0,0),(2,1,1,'Please, give us a little more time.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/mbok_sirni_kiri.png','Mbok Sirni','',1,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027',NULL,0,0),(3,1,2,'No more time! Hand over Timun Mas now!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/raksasa_kanan.png','Raksasa','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-timun/raksasa-buto-ijo/No-more-time-Hand-over-T-1.mp3',0,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027',NULL,0,0),(4,1,3,'Timun Mas, you must leave now! Take this bundle. Inside are items that can help you escape from the raksasa.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/mbok_sirni_kiri.png','Mbok Sirni','',1,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027','Terrified of losing Timun Mas, Mbok Sirni said to her daughter',0,0),(5,1,4,NULL,'https://porto.sman1tjbarat.sch.id/img/timunmas/banner_prolog_TimunM_1000px%201.png',NULL,'',0,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027','Timun Mas took the bundle and immediately ran into the forest. The raksasa chased her with large and quick strides. As the raksasa was about to catch her, Timun Mas opened the bundle and threw each item one by one.\n                    \n First, she threw cucumber seeds. The seeds instantly grew into a dense cucumber field. The raksasa was hindered but eventually managed to get through the field.\n                    \n Next, Timun Mas threw needles. The needles turned into tall and sharp bamboo trees. The raksasa had difficulty passing through them but eventually succeeded.\n                    \n Then, Timun Mas threw salt. The salt transformed into a vast, salty sea. The raksasa almost drowned, but with his strength, he managed to get across the sea.\n                    \n Finally, Timun Mas threw shrimp paste. The shrimp paste turned into a boiling mud lake. The raksasa got stuck in it and could not get out. He screamed in pain and eventually sank into the mud.\n                    ',1,0),(6,1,5,'Mother, I am safe!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/timun_kanan.png','Timun Mas','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-timun/timun-mas/Mother-I-am-safe-4.mp3',0,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027','Timun Mas was safe and returned home. She hugged Mbok Sirni tightly.',0,0),(7,1,6,'Thank goodness you are safe, Timun Mas. Now we can live in peace.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-timun/mbok_sirni_kiri.png','Mbok Sirni','',1,'2024-06-16 08:23:04.027','2024-06-16 08:23:04.027','Timun Mas and Mbok Sirni lived happily ever after, free from the raksasa\'s threat.',0,1),(8,2,0,'Bawang Putih, quickly wash the clothes in the river! And don\'t come back until everything is clean!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/ibu_tiri_kanan.png','Ibu Tiri','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/ibu-tiri/Bawang-Putih-quickly-was-1.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','They always ordered Bawang Putih to do all the household chores',0,0),(9,2,1,'Yes, and also make sure dinner is ready when we get back!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/bw_merah_kiri.png','Bawang Merah','',1,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040',NULL,0,0),(10,2,2,'Why do you look sad, my child?','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/nenek_kanan.png','Nenek','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/nenek/Why%20do%20you%20look%20sad%20my%20child.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','Bawang Putih could only obey. She went to the river to wash the clothes. At the river, one of her stepmother\'s clothes was swept away by the current.\n                    Bawang Putih panicked and searched for the clothes along the river, but couldn\'t find them. While searching, she met an old woman.\n                        ',0,0),(11,2,3,'I lost my mother\'s clothes, Grandma. If I go home without them, I\'ll be scolded.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/bw_putih_kiri.png','Bawang Putih','',1,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040',NULL,0,0),(12,2,4,'In that case, would you help me first? I will help you find the clothes.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/nenek_kanan.png','Nenek','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/nenek/In%20that%20case%20would%20you%20help%20me%20first%20I%20will%20help%20you%20find%20the%20clothes.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','Bawang Putih agreed and helped the old woman with her household chores. After finishing, the old woman gave her two gourds, one large and one small.',0,1),(13,2,5,'Choose one of these gourds as a reward for helping me.','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/nenek_kanan.png','Nenek','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/nenek/Choose%20one%20of%20these%20gourds%20as%20a%20reward%20for%20helping%20me.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','Bawang Putih chose the small gourd. When she got home and opened it, it was full of gold and jewelry.',0,1),(14,2,6,'Why do you look sad, my child?','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/nenek_kanan.png','Nenek','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/nenek/Why%20do%20you%20look%20sad%20my%20child.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','Seeing this, the stepmother and Bawang Merah were very jealous. They decided to try the same thing. \n        Bawang Merah went to the river and deliberately let a piece of clothing drift away. When she met the old woman, she was impatient and rude.\n        ',0,0),(15,2,7,'I lost my clothes. Hurry up and return them, I don\'t have time for this nonsense!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/bw_merah_kiri.png','Bawang merah','',1,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040',NULL,0,0),(16,2,8,'Aaaaa! What happened?!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/ibu_tiri_kanan.png','Ibu Tiri','https://storage.googleapis.com/bucket-assets-talk-tales/mp3/story-bawang/ibu-tiri/Aaaaaaaaaa-What-happened-1.mp3',0,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','The old woman still gave her two gourds, and Bawang Merah chose the large one. Excitedly, she went home and opened the gourd. \n        However, they were shocked when poisonous snakes and other terrifying creatures emerged from the large gourd.\n        ',0,0),(17,2,9,'How could this happen?!','https://storage.googleapis.com/bucket-assets-talk-tales/assets-bawang/bw_merah_kiri.png','Bawang Merah','',1,'2024-06-16 08:23:04.040','2024-06-16 08:23:04.040','The stepmother and Bawang Merah were very scared and regretful. They finally realized that their bad behavior had caused this disaster.\n        ',0,1);
/*!40000 ALTER TABLE `storyconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storyconversationlog`
--

DROP TABLE IF EXISTS `storyconversationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storyconversationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storyPlayLogId` int(11) NOT NULL,
  `storyConversationId` int(11) NOT NULL,
  `voice_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voice_to_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scores` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StoryConversationLog_storyPlayLogId_fkey` (`storyPlayLogId`),
  KEY `StoryConversationLog_storyConversationId_fkey` (`storyConversationId`),
  CONSTRAINT `StoryConversationLog_storyConversationId_fkey` FOREIGN KEY (`storyConversationId`) REFERENCES `storyconversation` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `StoryConversationLog_storyPlayLogId_fkey` FOREIGN KEY (`storyPlayLogId`) REFERENCES `storyplaylog` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyconversationlog`
--

LOCK TABLES `storyconversationlog` WRITE;
/*!40000 ALTER TABLE `storyconversationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `storyconversationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storyplaylog`
--

DROP TABLE IF EXISTS `storyplaylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storyplaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storyId` int(11) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StoryPlayLog_userId_fkey` (`userId`),
  KEY `StoryPlayLog_storyId_fkey` (`storyId`),
  CONSTRAINT `StoryPlayLog_storyId_fkey` FOREIGN KEY (`storyId`) REFERENCES `story` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `StoryPlayLog_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyplaylog`
--

LOCK TABLES `storyplaylog` WRITE;
/*!40000 ALTER TABLE `storyplaylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `storyplaylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'talktalesdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 16:06:54
