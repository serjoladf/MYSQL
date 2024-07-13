CREATE DATABASE  IF NOT EXISTS `redesocialdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `redesocialdb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: redesocialdb
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
-- Table structure for table `amizades`
--

DROP TABLE IF EXISTS `amizades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amizades` (
  `amizade_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id1` int DEFAULT NULL,
  `usuario_id2` int DEFAULT NULL,
  `data_amizade` date NOT NULL,
  `status` enum('Pendente','Aceita','Recusada') NOT NULL,
  PRIMARY KEY (`amizade_id`),
  KEY `usuario_id1` (`usuario_id1`),
  KEY `usuario_id2` (`usuario_id2`),
  CONSTRAINT `amizades_ibfk_1` FOREIGN KEY (`usuario_id1`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `amizades_ibfk_2` FOREIGN KEY (`usuario_id2`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amizades`
--

LOCK TABLES `amizades` WRITE;
/*!40000 ALTER TABLE `amizades` DISABLE KEYS */;
INSERT INTO `amizades` VALUES (1,35,2,'2023-01-01','Aceita'),(2,2,3,'2023-02-15','Pendente'),(3,3,4,'2023-03-20','Recusada'),(4,4,5,'2023-04-01','Aceita'),(5,6,7,'2023-05-15','Pendente'),(6,8,9,'2023-06-20','Recusada'),(7,10,11,'2023-07-25','Aceita'),(8,12,13,'2023-08-30','Pendente'),(9,14,15,'2023-09-10','Recusada'),(10,16,17,'2023-10-15','Aceita'),(11,18,19,'2023-11-20','Pendente'),(12,20,21,'2023-12-25','Recusada'),(13,22,23,'2024-01-30','Aceita'),(14,14,15,'2024-02-01','Aceita'),(15,16,17,'2024-03-15','Pendente'),(16,18,19,'2024-04-20','Recusada'),(17,20,21,'2024-05-25','Aceita'),(18,22,23,'2024-06-30','Pendente'),(19,24,25,'2024-07-05','Recusada'),(20,26,27,'2024-08-10','Aceita'),(21,28,29,'2024-09-15','Pendente'),(22,30,31,'2024-10-20','Recusada'),(23,32,33,'2024-11-25','Aceita'),(74,1,2,'2024-01-05','Aceita'),(75,1,33,'2024-02-10','Aceita'),(76,2,24,'2024-03-15','Aceita'),(77,2,15,'2024-04-20','Aceita'),(78,3,36,'2024-05-25','Aceita'),(79,3,47,'2024-06-30','Aceita'),(80,4,8,'2024-07-05','Aceita'),(81,4,19,'2024-08-10','Aceita'),(82,5,10,'2024-09-15','Aceita'),(83,5,21,'2024-10-20','Aceita'),(84,6,12,'2024-11-25','Aceita'),(85,6,13,'2024-12-30','Aceita'),(86,7,34,'2025-01-05','Aceita'),(87,7,45,'2025-02-10','Aceita'),(88,8,46,'2025-03-15','Aceita'),(89,8,37,'2025-04-20','Aceita'),(90,9,28,'2025-05-25','Aceita'),(91,9,49,'2025-06-30','Aceita'),(92,10,13,'2025-07-05','Aceita'),(93,10,24,'2025-08-10','Aceita'),(94,3,2,'2024-01-05','Aceita'),(95,3,33,'2024-02-10','Aceita'),(96,3,24,'2024-03-15','Aceita'),(97,3,15,'2024-04-20','Aceita'),(98,5,36,'2024-05-25','Aceita'),(99,13,47,'2024-06-30','Aceita'),(100,14,8,'2024-07-05','Aceita'),(101,41,19,'2024-08-10','Aceita'),(102,52,10,'2024-09-15','Aceita'),(103,12,21,'2024-10-20','Aceita'),(104,61,12,'2024-11-25','Aceita'),(105,3,13,'2024-12-30','Aceita'),(106,4,34,'2025-01-05','Aceita'),(107,9,45,'2025-02-10','Aceita'),(108,81,46,'2025-03-15','Aceita'),(109,81,37,'2025-04-20','Aceita'),(110,81,28,'2025-05-25','Aceita'),(111,59,49,'2025-06-30','Aceita'),(112,42,13,'2025-07-05','Aceita'),(113,10,24,'2025-08-10','Aceita'),(114,3,90,'2024-01-05','Aceita'),(115,3,90,'2024-02-10','Aceita'),(116,3,90,'2024-03-15','Aceita'),(117,3,80,'2024-04-20','Aceita'),(118,5,70,'2024-05-25','Aceita'),(119,13,45,'2024-06-30','Aceita'),(120,14,55,'2024-07-05','Aceita'),(121,41,55,'2024-08-10','Aceita'),(122,52,100,'2024-09-15','Aceita'),(123,12,20,'2024-10-20','Aceita'),(124,61,20,'2024-11-25','Aceita'),(125,3,90,'2024-12-30','Aceita'),(126,4,80,'2025-01-05','Aceita'),(127,9,80,'2025-02-10','Aceita'),(128,81,45,'2025-03-15','Aceita'),(129,81,76,'2025-04-20','Aceita'),(130,81,94,'2025-05-25','Aceita'),(131,59,69,'2025-06-30','Aceita'),(132,42,77,'2025-07-05','Aceita'),(133,10,64,'2025-08-10','Aceita'),(134,31,12,'2025-09-15','Aceita'),(135,42,13,'2025-10-20','Pendente'),(136,53,14,'2025-11-25','Recusada'),(137,64,15,'2025-12-30','Aceita'),(138,75,16,'2026-01-05','Aceita'),(139,86,17,'2026-02-10','Pendente'),(140,97,18,'2026-03-15','Pendente'),(141,28,19,'2026-04-20','Recusada'),(142,39,20,'2026-05-25','Pendente'),(143,40,21,'2026-06-30','Recusada'),(144,51,22,'2026-07-05','Aceita'),(145,62,23,'2026-08-10','Aceita'),(146,73,24,'2026-09-15','Pendente'),(147,84,25,'2026-10-20','Recusada'),(148,95,26,'2026-11-25','Aceita'),(149,46,27,'2026-12-30','Pendente'),(150,47,28,'2027-01-05','Aceita'),(151,58,29,'2027-02-10','Recusada'),(152,49,30,'2027-03-15','Pendente'),(153,50,31,'2027-04-20','Aceita'),(154,5,89,'2023-01-15','Aceita'),(155,12,37,'2023-02-20','Pendente'),(156,43,76,'2023-03-10','Aceita'),(157,57,8,'2023-04-25','Recusada'),(158,23,65,'2023-05-30','Aceita'),(159,19,42,'2023-06-15','Aceita'),(160,7,85,'2023-07-05','Pendente'),(161,31,92,'2023-08-18','Aceita'),(162,48,56,'2023-09-22','Recusada'),(163,79,14,'2023-10-10','Aceita'),(164,25,67,'2023-11-25','Pendente'),(165,38,49,'2023-12-12','Aceita'),(166,11,94,'2024-01-02','Recusada'),(167,62,20,'2024-02-15','Aceita'),(168,35,80,'2024-03-05','Aceita'),(169,13,91,'2024-04-22','Pendente'),(170,52,28,'2024-05-12','Aceita'),(171,74,33,'2024-06-30','Recusada'),(172,50,60,'2024-07-20','Aceita'),(173,77,9,'2024-08-15','Aceita'),(174,22,46,'2024-09-25','Pendente'),(175,59,88,'2024-10-18','Aceita'),(176,16,39,'2024-11-05','Recusada'),(177,70,27,'2024-12-20','Aceita'),(178,44,63,'2023-01-30','Aceita'),(179,86,3,'2023-02-12','Pendente'),(180,21,71,'2023-03-18','Aceita'),(181,58,95,'2023-04-25','Recusada'),(182,15,36,'2023-05-10','Aceita'),(183,4,99,'2023-06-27','Aceita'),(184,66,29,'2023-07-07','Pendente'),(185,83,12,'2023-08-22','Aceita'),(186,18,54,'2023-09-14','Recusada'),(187,41,78,'2023-10-06','Aceita'),(188,97,10,'2023-11-18','Aceita'),(189,34,61,'2023-12-30','Pendente'),(190,53,24,'2024-01-15','Aceita'),(191,68,90,'2024-02-12','Recusada'),(192,32,17,'2024-03-05','Aceita'),(193,6,84,'2024-04-20','Aceita'),(194,93,40,'2024-05-11','Pendente'),(195,30,75,'2024-06-25','Aceita'),(196,55,13,'2024-07-30','Recusada'),(197,82,2,'2024-08-15','Aceita'),(198,28,53,'2024-09-22','Aceita'),(199,45,100,'2024-10-07','Pendente'),(200,60,1,'2024-11-20','Aceita'),(201,72,26,'2024-12-15','Recusada'),(202,101,115,'2024-01-05','Aceita'),(203,102,120,'2024-01-12','Pendente'),(204,103,125,'2024-02-18','Recusada'),(205,104,10,'2024-03-25','Aceita'),(206,105,15,'2024-04-10','Aceita'),(207,106,10,'2024-05-05','Pendente'),(208,107,15,'2024-06-15','Aceita'),(209,108,10,'2024-07-20','Recusada'),(210,109,10,'2024-08-22','Aceita'),(211,111,12,'2024-09-30','Aceita'),(212,113,14,'2024-10-10','Pendente'),(213,116,117,'2024-11-15','Aceita'),(214,118,119,'2024-12-25','Recusada'),(215,121,122,'2024-01-10','Aceita'),(216,123,124,'2024-02-05','Aceita'),(217,12,12,'2024-03-22','Pendente'),(218,12,12,'2024-04-14','Aceita'),(219,13,13,'2024-05-08','Recusada'),(220,13,13,'2024-06-18','Aceita'),(221,13,13,'2024-07-25','Aceita'),(222,13,13,'2024-08-12','Pendente'),(223,14,12,'2024-09-05','Aceita'),(224,14,14,'2024-10-20','Recusada'),(225,14,17,'2024-11-18','Aceita'),(226,14,19,'2024-12-10','Aceita'),(227,15,101,'2024-01-20','Pendente'),(228,110,102,'2024-02-25','Aceita'),(229,112,103,'2024-03-10','Recusada'),(230,114,104,'2024-04-22','Aceita'),(231,116,105,'2024-05-15','Aceita'),(232,118,106,'2024-06-05','Pendente'),(233,120,107,'2024-07-18','Aceita'),(234,122,108,'2024-08-12','Recusada'),(235,124,109,'2024-09-25','Aceita'),(236,12,111,'2024-10-08','Aceita'),(237,12,113,'2024-11-30','Pendente'),(238,13,115,'2024-12-15','Aceita'),(239,13,17,'2024-01-22','Recusada'),(240,13,19,'2024-02-28','Aceita'),(241,13,21,'2024-03-10','Aceita'),(242,13,23,'2024-04-25','Pendente'),(243,14,25,'2024-05-05','Aceita'),(244,14,27,'2024-06-15','Recusada'),(245,14,29,'2024-07-30','Aceita'),(246,14,31,'2024-08-12','Aceita'),(247,14,33,'2024-09-20','Pendente'),(248,15,35,'2024-10-18','Aceita'),(249,101,37,'2024-11-05','Recusada'),(250,103,39,'2024-12-10','Aceita');
/*!40000 ALTER TABLE `amizades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `comentario_id` int NOT NULL AUTO_INCREMENT,
  `postagem_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_comentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comentario_id`),
  KEY `postagem_id` (`postagem_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`postagem_id`) REFERENCES `postagens` (`postagem_id`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'Ótima postagem!','2024-01-01 13:00:00'),(2,1,2,'Concordo plenamente.','2024-01-02 14:00:00'),(3,2,3,'Muito informativo.','2024-01-03 15:00:00'),(4,2,4,'Excelente conteúdo!','2024-01-04 16:00:00'),(5,3,5,'Gostei da discussão.','2024-01-05 17:00:00'),(6,3,6,'Vou compartilhar isso.','2024-01-06 18:00:00'),(7,4,7,'Parabéns pela postagem!','2024-01-07 19:00:00'),(8,4,8,'Muito esclarecedor.','2024-01-08 20:00:00'),(9,5,9,'Interessante ponto de vista.','2024-01-09 21:00:00'),(10,5,10,'Vou recomendar isso para meus amigos.','2024-01-10 22:00:00'),(11,6,11,'Muito bom!','2024-01-11 23:00:00'),(12,6,12,'Precisamos de mais postagens como essa.','2024-01-13 00:00:00'),(13,7,13,'Concordo com o autor.','2024-01-14 01:00:00'),(14,7,14,'Vou adicionar isso aos meus favoritos.','2024-01-15 02:00:00'),(15,8,15,'Excelente análise.','2024-01-15 15:00:00'),(16,8,16,'Muito útil!','2024-01-16 16:00:00'),(17,9,17,'Aprendi muito com essa postagem.','2024-01-17 17:00:00'),(18,9,18,'Vou revisitar isso mais tarde.','2024-01-18 18:00:00'),(19,10,19,'Gostei do conteúdo.','2024-01-19 19:00:00'),(20,10,20,'Vou compartilhar com meus colegas.','2024-01-20 20:00:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios_publicacoes_grupos`
--

DROP TABLE IF EXISTS `comentarios_publicacoes_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios_publicacoes_grupos` (
  `comentario_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_comentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comentario_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `comentarios_publicacoes_grupos_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_grupos` (`publicacao_id`),
  CONSTRAINT `comentarios_publicacoes_grupos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_publicacoes_grupos`
--

LOCK TABLES `comentarios_publicacoes_grupos` WRITE;
/*!40000 ALTER TABLE `comentarios_publicacoes_grupos` DISABLE KEYS */;
INSERT INTO `comentarios_publicacoes_grupos` VALUES (2,1,21,'Comentário 1 na publicação 1','2024-05-16 16:19:30'),(3,2,22,'Comentário 2 na publicação 2','2024-05-16 16:19:30'),(4,3,23,'Comentário 3 na publicação 3','2024-05-16 16:19:30'),(5,4,24,'Comentário 4 na publicação 4','2024-05-16 16:19:30'),(6,5,25,'Comentário 5 na publicação 5','2024-05-16 16:19:30'),(7,6,26,'Comentário 6 na publicação 6','2024-05-16 16:19:30'),(8,7,27,'Comentário 7 na publicação 7','2024-05-16 16:19:30'),(9,8,28,'Comentário 8 na publicação 8','2024-05-16 16:19:30'),(10,9,29,'Comentário 9 na publicação 9','2024-05-16 16:19:30'),(11,10,30,'Comentário 10 na publicação 10','2024-05-16 16:19:30'),(12,11,31,'Comentário 11 na publicação 11','2024-05-16 16:19:30'),(13,12,32,'Comentário 12 na publicação 12','2024-05-16 16:19:30'),(14,13,33,'Comentário 13 na publicação 13','2024-05-16 16:19:30'),(15,14,34,'Comentário 14 na publicação 14','2024-05-16 16:19:30'),(16,15,35,'Comentário 15 na publicação 15','2024-05-16 16:19:30'),(17,16,36,'Comentário 16 na publicação 16','2024-05-16 16:19:30'),(18,17,37,'Comentário 17 na publicação 17','2024-05-16 16:19:30'),(19,18,38,'Comentário 18 na publicação 18','2024-05-16 16:19:30'),(20,19,39,'Comentário 19 na publicação 19','2024-05-16 16:19:30'),(21,20,40,'Comentário 20 na publicação 20','2024-05-16 16:19:30');
/*!40000 ALTER TABLE `comentarios_publicacoes_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios_publicacoes_usuarios`
--

DROP TABLE IF EXISTS `comentarios_publicacoes_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios_publicacoes_usuarios` (
  `comentario_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_comentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comentario_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `comentarios_publicacoes_usuarios_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_usuarios` (`publicacao_id`),
  CONSTRAINT `comentarios_publicacoes_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_publicacoes_usuarios`
--

LOCK TABLES `comentarios_publicacoes_usuarios` WRITE;
/*!40000 ALTER TABLE `comentarios_publicacoes_usuarios` DISABLE KEYS */;
INSERT INTO `comentarios_publicacoes_usuarios` VALUES (1,1,21,'Ótima publicação!','2024-05-16 17:17:50'),(2,1,22,'Que legal!','2024-05-16 17:17:50'),(3,2,23,'Muito interessante.','2024-05-16 17:17:50'),(4,2,24,'Parabéns!','2024-05-16 17:17:50'),(5,3,25,'Excelente conteúdo.','2024-05-16 17:17:50'),(6,3,26,'Gostei bastante!','2024-05-16 17:17:50'),(7,4,27,'Muito útil!','2024-05-16 17:17:50'),(8,4,28,'Vou compartilhar!','2024-05-16 17:17:50'),(9,5,29,'Adorei!','2024-05-16 17:17:50'),(10,5,30,'Maravilhoso!','2024-05-16 17:17:50'),(11,6,31,'Que incrível!','2024-05-16 17:17:50'),(12,6,32,'Estou impressionado!','2024-05-16 17:17:50'),(13,7,33,'Muito bem explicado.','2024-05-16 17:17:50'),(14,7,34,'Interessante demais!','2024-05-16 17:17:50'),(15,8,35,'Muito bom!','2024-05-16 17:17:50'),(16,8,36,'Compartilhando agora!','2024-05-16 17:17:50'),(17,9,37,'Excelente publicação!','2024-05-16 17:17:50'),(18,9,38,'Gostei muito!','2024-05-16 17:17:50'),(19,10,39,'Estou aprendendo muito com isso.','2024-05-16 17:17:50'),(20,10,40,'Incrível trabalho!','2024-05-16 17:17:50');
/*!40000 ALTER TABLE `comentarios_publicacoes_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_privacidade`
--

DROP TABLE IF EXISTS `config_privacidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_privacidade` (
  `config_privacidade_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `perfil_visibilidade` enum('Publico','Amigos','Privado') NOT NULL,
  `mensagens_visibilidade` enum('Todos','Amigos','Ninguem') NOT NULL,
  PRIMARY KEY (`config_privacidade_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `config_privacidade_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_privacidade`
--

LOCK TABLES `config_privacidade` WRITE;
/*!40000 ALTER TABLE `config_privacidade` DISABLE KEYS */;
INSERT INTO `config_privacidade` VALUES (1,1,'Publico','Todos'),(2,2,'Amigos','Amigos'),(3,3,'Privado','Ninguem'),(4,4,'Publico','Amigos'),(5,5,'Amigos','Ninguem'),(6,6,'Privado','Todos'),(7,7,'Publico','Amigos'),(8,8,'Amigos','Ninguem'),(9,9,'Privado','Todos'),(10,10,'Publico','Todos'),(11,11,'Amigos','Amigos'),(12,12,'Privado','Ninguem'),(13,13,'Publico','Amigos'),(14,14,'Amigos','Ninguem'),(15,15,'Privado','Todos'),(16,16,'Publico','Todos'),(17,17,'Amigos','Amigos'),(18,18,'Privado','Ninguem'),(19,19,'Publico','Amigos'),(20,20,'Amigos','Ninguem');
/*!40000 ALTER TABLE `config_privacidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtidas`
--

DROP TABLE IF EXISTS `curtidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtidas` (
  `curtida_id` int NOT NULL AUTO_INCREMENT,
  `postagem_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_curtida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`curtida_id`),
  KEY `postagem_id` (`postagem_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `curtidas_ibfk_1` FOREIGN KEY (`postagem_id`) REFERENCES `postagens` (`postagem_id`),
  CONSTRAINT `curtidas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtidas`
--

LOCK TABLES `curtidas` WRITE;
/*!40000 ALTER TABLE `curtidas` DISABLE KEYS */;
INSERT INTO `curtidas` VALUES (1,1,1,'2024-05-16 15:06:30'),(2,1,2,'2024-05-16 15:06:30'),(3,1,3,'2024-05-16 15:06:30'),(4,2,4,'2024-05-16 15:06:30'),(5,2,5,'2024-05-16 15:06:30'),(6,2,6,'2024-05-16 15:06:30'),(7,3,7,'2024-05-16 15:06:30'),(8,3,8,'2024-05-16 15:06:30'),(9,3,9,'2024-05-16 15:06:30'),(10,4,10,'2024-05-16 15:06:30'),(11,4,11,'2024-05-16 15:06:30'),(12,5,12,'2024-05-16 15:06:30'),(13,5,13,'2024-05-16 15:06:30'),(14,5,14,'2024-05-16 15:06:30'),(15,6,15,'2024-05-16 15:06:30'),(16,6,16,'2024-05-16 15:06:30'),(17,6,17,'2024-05-16 15:06:30'),(18,7,18,'2024-05-16 15:06:30'),(19,7,19,'2024-05-16 15:06:30'),(20,7,20,'2024-05-16 15:06:30'),(21,13,1,'2024-05-24 18:12:13'),(22,19,2,'2024-05-24 18:12:13'),(23,19,3,'2024-05-24 18:12:13'),(24,15,4,'2024-05-24 18:12:13'),(25,12,5,'2024-05-24 18:12:13'),(26,14,6,'2024-05-24 18:12:13'),(27,10,7,'2024-05-24 18:12:13'),(28,4,8,'2024-05-24 18:12:13'),(29,8,9,'2024-05-24 18:12:13'),(30,10,10,'2024-05-24 18:12:13'),(31,1,2,'2024-05-24 18:12:13'),(32,2,3,'2024-05-24 18:12:13'),(33,3,4,'2024-05-24 18:12:13'),(34,4,5,'2024-05-24 18:12:13'),(35,5,6,'2024-05-24 18:12:13'),(36,6,7,'2024-05-24 18:12:13'),(37,7,8,'2024-05-24 18:12:13'),(38,8,9,'2024-05-24 18:12:13'),(39,9,10,'2024-05-24 18:12:13'),(40,10,1,'2024-05-24 18:12:13'),(41,1,13,'2024-05-24 18:12:13'),(42,2,4,'2024-05-24 18:12:13'),(43,3,15,'2024-05-24 18:12:13'),(44,4,36,'2024-05-24 18:12:13'),(45,5,7,'2024-05-24 18:12:13'),(46,6,18,'2024-05-24 18:12:13'),(47,7,9,'2024-05-24 18:12:13'),(48,8,10,'2024-05-24 18:12:13'),(49,9,1,'2024-05-24 18:12:13'),(50,10,2,'2024-05-24 18:12:13'),(51,11,23,'2024-05-24 18:12:13'),(52,2,4,'2024-05-24 18:12:13'),(53,1,35,'2024-05-24 18:12:13'),(54,4,6,'2024-05-24 18:12:13'),(55,4,27,'2024-05-24 18:12:13'),(56,6,8,'2024-05-24 18:12:13'),(57,17,19,'2024-05-24 18:12:13'),(58,8,10,'2024-05-24 18:12:13'),(59,8,1,'2024-05-24 18:12:13'),(60,1,20,'2024-05-24 18:12:13'),(61,12,11,'2024-05-24 18:14:33'),(62,17,12,'2024-05-24 18:14:33'),(63,7,13,'2024-05-24 18:14:33'),(64,7,14,'2024-05-24 18:14:33'),(65,9,15,'2024-05-24 18:14:33'),(66,19,16,'2024-05-24 18:14:33'),(67,17,17,'2024-05-24 18:14:33'),(68,19,18,'2024-05-24 18:14:33'),(69,11,19,'2024-05-24 18:14:33'),(70,13,20,'2024-05-24 18:14:33'),(71,11,21,'2024-05-24 18:14:33'),(72,12,22,'2024-05-24 18:14:33'),(73,13,23,'2024-05-24 18:14:33'),(74,14,24,'2024-05-24 18:14:33'),(75,15,25,'2024-05-24 18:14:33'),(76,16,26,'2024-05-24 18:14:33'),(77,17,27,'2024-05-24 18:14:33'),(78,18,28,'2024-05-24 18:14:33'),(79,19,29,'2024-05-24 18:14:33'),(80,20,30,'2024-05-24 18:14:33'),(81,11,31,'2024-05-24 18:14:33'),(82,12,32,'2024-05-24 18:14:33'),(83,13,33,'2024-05-24 18:14:33'),(84,14,34,'2024-05-24 18:14:33'),(85,15,35,'2024-05-24 18:14:33'),(86,16,36,'2024-05-24 18:14:33'),(87,17,37,'2024-05-24 18:14:33'),(88,18,38,'2024-05-24 18:14:33'),(89,19,39,'2024-05-24 18:14:33'),(90,20,40,'2024-05-24 18:14:33'),(91,1,11,'2024-05-24 18:14:33'),(92,2,12,'2024-05-24 18:14:33'),(93,3,13,'2024-05-24 18:14:33'),(94,4,14,'2024-05-24 18:14:33'),(95,5,15,'2024-05-24 18:14:33'),(96,6,16,'2024-05-24 18:14:33'),(97,7,17,'2024-05-24 18:14:33'),(98,8,18,'2024-05-24 18:14:33'),(99,9,19,'2024-05-24 18:14:33'),(100,10,20,'2024-05-24 18:14:33'),(101,11,1,'2024-05-24 18:14:33'),(102,12,2,'2024-05-24 18:14:33'),(103,13,3,'2024-05-24 18:14:33'),(104,14,4,'2024-05-24 18:14:33'),(105,15,5,'2024-05-24 18:14:33'),(106,16,6,'2024-05-24 18:14:33'),(107,17,7,'2024-05-24 18:14:33'),(108,18,8,'2024-05-24 18:14:33'),(109,19,9,'2024-05-24 18:14:33'),(110,20,10,'2024-05-24 18:14:33');
/*!40000 ALTER TABLE `curtidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtidas_publicacoes_grupos`
--

DROP TABLE IF EXISTS `curtidas_publicacoes_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtidas_publicacoes_grupos` (
  `curtida_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_curtida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`curtida_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `curtidas_publicacoes_grupos_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_grupos` (`publicacao_id`),
  CONSTRAINT `curtidas_publicacoes_grupos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtidas_publicacoes_grupos`
--

LOCK TABLES `curtidas_publicacoes_grupos` WRITE;
/*!40000 ALTER TABLE `curtidas_publicacoes_grupos` DISABLE KEYS */;
INSERT INTO `curtidas_publicacoes_grupos` VALUES (1,1,21,'2024-05-16 16:23:01'),(2,2,22,'2024-05-16 16:23:01'),(3,3,23,'2024-05-16 16:23:01'),(4,4,24,'2024-05-16 16:23:01'),(5,5,25,'2024-05-16 16:23:01'),(6,6,26,'2024-05-16 16:23:01'),(7,7,27,'2024-05-16 16:23:01'),(8,8,28,'2024-05-16 16:23:01'),(9,9,29,'2024-05-16 16:23:01'),(10,10,30,'2024-05-16 16:23:01'),(11,11,31,'2024-05-16 16:23:01'),(12,12,32,'2024-05-16 16:23:01'),(13,13,33,'2024-05-16 16:23:01'),(14,14,34,'2024-05-16 16:23:01'),(15,15,35,'2024-05-16 16:23:01'),(16,16,36,'2024-05-16 16:23:01'),(17,17,37,'2024-05-16 16:23:01'),(18,18,38,'2024-05-16 16:23:01'),(19,19,39,'2024-05-16 16:23:01'),(20,20,40,'2024-05-16 16:23:01');
/*!40000 ALTER TABLE `curtidas_publicacoes_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtidas_publicacoes_usuarios`
--

DROP TABLE IF EXISTS `curtidas_publicacoes_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtidas_publicacoes_usuarios` (
  `curtida_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_curtida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`curtida_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `curtidas_publicacoes_usuarios_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_usuarios` (`publicacao_id`),
  CONSTRAINT `curtidas_publicacoes_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtidas_publicacoes_usuarios`
--

LOCK TABLES `curtidas_publicacoes_usuarios` WRITE;
/*!40000 ALTER TABLE `curtidas_publicacoes_usuarios` DISABLE KEYS */;
INSERT INTO `curtidas_publicacoes_usuarios` VALUES (21,1,21,'2024-05-16 16:37:34'),(22,2,22,'2024-05-16 16:37:34'),(23,3,23,'2024-05-16 16:37:34'),(24,4,24,'2024-05-16 16:37:34'),(25,5,25,'2024-05-16 16:37:34'),(26,6,26,'2024-05-16 16:37:34'),(27,7,27,'2024-05-16 16:37:34'),(28,8,28,'2024-05-16 16:37:34'),(29,9,29,'2024-05-16 16:37:34'),(30,10,30,'2024-05-16 16:37:34'),(31,11,31,'2024-05-16 16:37:34'),(32,12,32,'2024-05-16 16:37:34'),(33,13,33,'2024-05-16 16:37:34'),(34,14,34,'2024-05-16 16:37:34'),(35,15,35,'2024-05-16 16:37:34'),(36,16,36,'2024-05-16 16:37:34'),(37,17,37,'2024-05-16 16:37:34'),(38,18,38,'2024-05-16 16:37:34'),(39,19,39,'2024-05-16 16:37:34'),(40,20,40,'2024-05-16 16:37:34');
/*!40000 ALTER TABLE `curtidas_publicacoes_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncias`
--

DROP TABLE IF EXISTS `denuncias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncias` (
  `denuncia_id` int NOT NULL AUTO_INCREMENT,
  `postagem_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `motivo` text,
  `data_denuncia` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`denuncia_id`),
  KEY `postagem_id` (`postagem_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `denuncias_ibfk_1` FOREIGN KEY (`postagem_id`) REFERENCES `postagens` (`postagem_id`),
  CONSTRAINT `denuncias_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncias`
--

LOCK TABLES `denuncias` WRITE;
/*!40000 ALTER TABLE `denuncias` DISABLE KEYS */;
INSERT INTO `denuncias` VALUES (1,1,101,'Assédio em mensagens','2024-05-01 12:00:00'),(2,2,102,'Spam repetitivo em comentários','2024-05-01 13:15:00'),(3,3,103,'Conteúdo inapropriado','2024-05-01 14:30:00'),(4,4,104,'Fake news sobre política','2024-05-01 15:45:00'),(5,5,105,'Discurso de ódio','2024-05-01 17:00:00'),(6,6,106,'Violação de direitos autorais','2024-05-01 18:15:00'),(7,7,107,'Assédio sexual','2024-05-01 19:30:00'),(8,8,108,'Informações pessoais divulgadas','2024-05-01 20:45:00'),(9,9,109,'Incitação à violência','2024-05-02 12:00:00'),(10,10,110,'Discursos discriminatórios','2024-05-02 13:15:00'),(11,11,111,'Venda de produtos ilegais','2024-05-02 14:30:00'),(12,12,112,'Uso de linguagem ofensiva','2024-05-02 15:45:00'),(13,13,113,'Fraude e golpes','2024-05-02 17:00:00'),(14,14,114,'Spam em grupos','2024-05-02 18:15:00'),(15,15,115,'Conta falsa','2024-05-02 19:30:00'),(16,16,116,'Conteúdo abusivo','2024-05-02 20:45:00'),(17,17,117,'Impersonação de outro usuário','2024-05-02 21:00:00'),(18,18,118,'Ataques pessoais','2024-05-02 22:00:00'),(19,19,119,'Divulgação de spam','2024-05-02 23:00:00'),(20,20,120,'Ofensa a grupo social','2024-05-03 00:00:00'),(21,21,121,'Publicação de conteúdo violento','2024-05-03 01:00:00'),(22,22,122,'Divulgação de informações privadas','2024-05-03 12:00:00'),(23,23,123,'Incentivo ao suicídio','2024-05-03 13:00:00'),(24,24,124,'Compartilhamento de malware','2024-05-03 14:00:00'),(25,25,125,'Falsificação de documentos','2024-05-03 15:00:00'),(26,26,126,'Propaganda política enganosa','2024-05-03 16:00:00'),(27,27,17,'Roubo de identidade','2024-05-03 17:00:00'),(28,28,18,'Divulgação de pornografia infantil','2024-05-03 18:00:00'),(29,29,29,'Violação de privacidade','2024-05-03 19:00:00'),(30,30,30,'Manipulação de mercado','2024-05-03 20:00:00'),(31,11,101,'Assédio em mensagens','2024-05-01 12:00:00'),(32,21,102,'Spam repetitivo em comentários','2024-05-01 13:15:00'),(33,32,103,'Conteúdo inapropriado','2024-05-01 14:30:00'),(34,14,104,'Fake news sobre política','2024-05-01 15:45:00'),(35,15,105,'Discurso de ódio','2024-05-01 17:00:00'),(36,16,106,'Violação de direitos autorais','2024-05-01 18:15:00'),(37,17,107,'Assédio sexual','2024-05-01 19:30:00'),(38,28,108,'Informações pessoais divulgadas','2024-05-01 20:45:00'),(39,19,109,'Incitação à violência','2024-05-02 12:00:00'),(40,20,110,'Discursos discriminatórios','2024-05-02 13:15:00'),(41,11,111,'Venda de produtos ilegais','2024-05-02 14:30:00'),(42,13,112,'Uso de linguagem ofensiva','2024-05-02 15:45:00'),(43,14,113,'Fraude e golpes','2024-05-02 17:00:00'),(44,15,114,'Spam em grupos','2024-05-02 18:15:00'),(45,12,115,'Conta falsa','2024-05-02 19:30:00');
/*!40000 ALTER TABLE `denuncias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncias_comentarios`
--

DROP TABLE IF EXISTS `denuncias_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncias_comentarios` (
  `denuncia_id` int NOT NULL AUTO_INCREMENT,
  `comentario_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `motivo` text,
  `data_denuncia` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`denuncia_id`),
  KEY `comentario_id` (`comentario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `denuncias_comentarios_ibfk_1` FOREIGN KEY (`comentario_id`) REFERENCES `comentarios_publicacoes_grupos` (`comentario_id`),
  CONSTRAINT `denuncias_comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncias_comentarios`
--

LOCK TABLES `denuncias_comentarios` WRITE;
/*!40000 ALTER TABLE `denuncias_comentarios` DISABLE KEYS */;
INSERT INTO `denuncias_comentarios` VALUES (1,3,11,'Comentário ofensivo','2024-05-16 16:54:24'),(3,3,13,'Conteúdo inadequado','2024-05-16 16:54:24'),(4,4,14,'Violação de direitos autorais','2024-05-16 16:54:24'),(5,5,15,'Conteúdo falso','2024-05-16 16:54:24'),(6,6,16,'Discurso de ódio','2024-05-16 16:54:24'),(7,7,17,'Conteúdo inapropriado','2024-05-16 16:54:24'),(8,8,18,'Conteúdo sensível','2024-05-16 16:54:24'),(9,9,19,'Conteúdo ilegal','2024-05-16 16:54:24'),(10,10,20,'Ameaças','2024-05-16 16:54:24'),(12,12,32,'Assédio','2024-05-16 16:54:24'),(13,13,33,'Violência','2024-05-16 16:54:24'),(14,14,34,'Discriminação','2024-05-16 16:54:24'),(15,15,35,'Conteúdo enganoso','2024-05-16 16:54:24'),(16,16,36,'Disseminação de informações falsas','2024-05-16 16:54:24'),(17,17,37,'Infringência de direitos','2024-05-16 16:54:24'),(18,18,38,'Conteúdo perturbador','2024-05-16 16:54:24'),(19,19,39,'Abuso','2024-05-16 16:54:24'),(20,20,40,'Conteúdo prejudicial','2024-05-16 16:54:24'),(32,2,12,'Spam','2024-05-16 16:54:24'),(41,11,31,'Intimidação','2024-05-16 16:54:24');
/*!40000 ALTER TABLE `denuncias_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncias_comentarios_usuarios`
--

DROP TABLE IF EXISTS `denuncias_comentarios_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncias_comentarios_usuarios` (
  `denuncia_id` int NOT NULL AUTO_INCREMENT,
  `comentario_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `motivo` text,
  `data_denuncia` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`denuncia_id`),
  KEY `comentario_id` (`comentario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `denuncias_comentarios_usuarios_ibfk_1` FOREIGN KEY (`comentario_id`) REFERENCES `comentarios_publicacoes_usuarios` (`comentario_id`),
  CONSTRAINT `denuncias_comentarios_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncias_comentarios_usuarios`
--

LOCK TABLES `denuncias_comentarios_usuarios` WRITE;
/*!40000 ALTER TABLE `denuncias_comentarios_usuarios` DISABLE KEYS */;
INSERT INTO `denuncias_comentarios_usuarios` VALUES (1,1,1,'Conteúdo inapropriado','2024-05-16 17:32:09'),(2,2,2,'Spam','2024-05-16 17:32:09'),(3,3,3,'Discurso de ódio','2024-05-16 17:32:09'),(4,4,4,'Violência gráfica','2024-05-16 17:32:09'),(5,5,5,'Assédio','2024-05-16 17:32:09'),(6,6,6,'Conteúdo falso','2024-05-16 17:32:09'),(7,7,7,'Infringindo direitos autorais','2024-05-16 17:32:09'),(8,8,8,'Assédio','2024-05-16 17:32:09'),(9,9,9,'Conteúdo inapropriado','2024-05-16 17:32:09'),(10,10,10,'Discurso de ódio','2024-05-16 17:32:09'),(11,11,11,'Conteúdo falso','2024-05-16 17:32:09'),(12,12,12,'Spam','2024-05-16 17:32:09'),(13,13,13,'Violência gráfica','2024-05-16 17:32:09'),(14,14,14,'Conteúdo inapropriado','2024-05-16 17:32:09'),(15,15,15,'Spam','2024-05-16 17:32:09'),(16,16,16,'Conteúdo falso','2024-05-16 17:32:09'),(17,17,17,'Assédio','2024-05-16 17:32:09'),(18,18,18,'Discurso de ódio','2024-05-16 17:32:09'),(19,19,19,'Conteúdo falso','2024-05-16 17:32:09'),(20,20,20,'Spam','2024-05-16 17:32:09');
/*!40000 ALTER TABLE `denuncias_comentarios_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncias_publicacoes`
--

DROP TABLE IF EXISTS `denuncias_publicacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncias_publicacoes` (
  `denuncia_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `motivo` text,
  `data_denuncia` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`denuncia_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `denuncias_publicacoes_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_grupos` (`publicacao_id`),
  CONSTRAINT `denuncias_publicacoes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncias_publicacoes`
--

LOCK TABLES `denuncias_publicacoes` WRITE;
/*!40000 ALTER TABLE `denuncias_publicacoes` DISABLE KEYS */;
INSERT INTO `denuncias_publicacoes` VALUES (1,1,21,'Conteúdo inadequado','2024-05-16 16:44:40'),(2,2,22,'Spam','2024-05-16 16:44:40'),(3,3,23,'Discurso de ódio','2024-05-16 16:44:40'),(4,4,24,'Violação de direitos autorais','2024-05-16 16:44:40'),(5,5,25,'Conteúdo falso','2024-05-16 16:44:40'),(6,6,26,'Conteúdo ofensivo','2024-05-16 16:44:40'),(7,7,27,'Conteúdo inapropriado','2024-05-16 16:44:40'),(8,8,28,'Conteúdo sensível','2024-05-16 16:44:40'),(9,9,29,'Conteúdo ilegal','2024-05-16 16:44:40'),(10,10,30,'Ameaças','2024-05-16 16:44:40'),(11,11,31,'Intimidação','2024-05-16 16:44:40'),(12,12,32,'Assédio','2024-05-16 16:44:40'),(13,13,33,'Violência','2024-05-16 16:44:40'),(14,14,34,'Discriminação','2024-05-16 16:44:40'),(15,15,35,'Conteúdo enganoso','2024-05-16 16:44:40'),(16,16,36,'Disseminação de informações falsas','2024-05-16 16:44:40'),(17,17,37,'Infringência de direitos','2024-05-16 16:44:40'),(18,18,38,'Conteúdo perturbador','2024-05-16 16:44:40'),(19,19,39,'Abuso','2024-05-16 16:44:40'),(20,20,40,'Conteúdo prejudicial','2024-05-16 16:44:40');
/*!40000 ALTER TABLE `denuncias_publicacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncias_publicacoes_usuarios`
--

DROP TABLE IF EXISTS `denuncias_publicacoes_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncias_publicacoes_usuarios` (
  `denuncia_id` int NOT NULL AUTO_INCREMENT,
  `publicacao_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `motivo` text,
  `data_denuncia` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`denuncia_id`),
  KEY `publicacao_id` (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `denuncias_publicacoes_usuarios_ibfk_1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacoes_usuarios` (`publicacao_id`),
  CONSTRAINT `denuncias_publicacoes_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncias_publicacoes_usuarios`
--

LOCK TABLES `denuncias_publicacoes_usuarios` WRITE;
/*!40000 ALTER TABLE `denuncias_publicacoes_usuarios` DISABLE KEYS */;
INSERT INTO `denuncias_publicacoes_usuarios` VALUES (1,1,1,'Conteúdo inapropriado','2024-05-16 17:30:40'),(2,2,2,'Spam','2024-05-16 17:30:40'),(3,3,3,'Discurso de ódio','2024-05-16 17:30:40'),(4,4,4,'Violência gráfica','2024-05-16 17:30:40'),(5,5,5,'Assédio','2024-05-16 17:30:40'),(6,6,6,'Conteúdo falso','2024-05-16 17:30:40'),(7,7,7,'Infringindo direitos autorais','2024-05-16 17:30:40'),(8,8,8,'Assédio','2024-05-16 17:30:40'),(9,9,9,'Conteúdo inapropriado','2024-05-16 17:30:40'),(10,10,10,'Discurso de ódio','2024-05-16 17:30:40'),(11,11,11,'Conteúdo falso','2024-05-16 17:30:40'),(12,12,12,'Spam','2024-05-16 17:30:40'),(13,13,13,'Violência gráfica','2024-05-16 17:30:40'),(14,14,14,'Conteúdo inapropriado','2024-05-16 17:30:40'),(15,15,15,'Spam','2024-05-16 17:30:40'),(16,16,16,'Conteúdo falso','2024-05-16 17:30:40'),(17,17,17,'Assédio','2024-05-16 17:30:40'),(18,18,18,'Discurso de ódio','2024-05-16 17:30:40'),(19,19,19,'Conteúdo falso','2024-05-16 17:30:40'),(20,20,20,'Spam','2024-05-16 17:30:40');
/*!40000 ALTER TABLE `denuncias_publicacoes_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `evento_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `descricao` text,
  `data_evento` date NOT NULL,
  `local` varchar(200) DEFAULT NULL,
  `criador_id` int DEFAULT NULL,
  PRIMARY KEY (`evento_id`),
  KEY `criador_id` (`criador_id`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`criador_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Aniversário da Maria','Festa de aniversário da Maria','2024-07-15','Rua das Flores, 123',1),(2,'Concerto no Parque','Apresentação de bandas locais no parque','2024-08-20','Parque Central',2),(3,'Feira de Artesanato','Feira com artesanatos locais','2024-09-10','Praça da Cidade',3),(4,'Workshop de Fotografia','Workshop para entusiastas de fotografia','2024-08-30','Estúdio Fotográfico ABC',4),(5,'Encontro de Carros Antigos','Exposição de carros antigos','2024-09-25','Centro de Convenções',5),(6,'Festival de Comida Internacional','Evento com várias barracas de comida internacional','2024-07-30','Praça da Alimentação',6),(7,'Exposição de Arte Moderna','Exposição de obras de arte moderna','2024-08-10','Museu de Arte Contemporânea',7),(8,'Aula de Yoga ao Ar Livre','Aula de Yoga gratuita no parque','2024-09-05','Parque dos Girassóis',8),(9,'Competição de Xadrez','Torneio de Xadrez para amadores e profissionais','2024-07-25','Clube de Xadrez da Cidade',9),(10,'Festa Junina','Tradicional festa junina com danças e comidas típicas','2024-06-30','Escola Municipal',10),(11,'Caminhada Ecológica','Caminhada pelas trilhas da floresta local','2024-08-15','Parque Nacional',11),(12,'Seminário de Tecnologia','Evento para discutir novas tendências tecnológicas','2024-09-15','Centro de Convenções',12),(13,'Feira de Livros','Feira com venda de livros novos e usados','2024-07-20','Biblioteca Municipal',13),(14,'Apresentação de Dança','Espetáculo de dança contemporânea','2024-08-05','Teatro Municipal',14),(15,'Corrida Beneficente','Corrida para arrecadar fundos para instituição de caridade','2024-09-20','Praça da Cidade',15),(16,'Festival de Cinema','Exibição de filmes independentes','2024-08-25','Cineclube da Cidade',16),(17,'Encontro de Fotógrafos','Encontro para compartilhar experiências fotográficas','2024-07-10','Café do Centro',17),(18,'Conferência de Saúde Mental','Palestras e debates sobre saúde mental','2024-09-10','Centro de Eventos',18),(19,'Oficina de Artesanato','Oficina para aprender técnicas de artesanato','2024-07-05','Ateliê de Artes',19),(20,'Apresentação de Teatro Infantil','Espetáculo teatral para crianças','2024-09-30','Teatro Infantil ABC',20),(21,'Conferência de Saúde 2024','Evento anual sobre inovações na área da saúde.','2024-06-15','Centro de Convenções',1),(22,'Simpósio de Cardiologia','Discussão sobre avanços no tratamento de doenças cardíacas.','2024-07-10','Hospital Geral',2),(23,'Workshop de Nutrição','Sessão prática sobre dietas balanceadas.','2024-08-05','Centro de Saúde Nutricional',3),(24,'Encontro de Enfermeiros','Reunião para troca de experiências e atualizações profissionais.','2024-09-12','Auditório da Faculdade de Enfermagem',4),(25,'Congresso de Pediatria','Palestras e debates sobre cuidados infantis.','2024-10-20','Hospital Infantil',5),(26,'Feira de Saúde Pública','Exposição sobre políticas e programas de saúde pública.','2024-11-18','Praça Central',6),(27,'Seminário de Psiquiatria','Discussão sobre transtornos mentais e tratamentos.','2024-12-03','Centro de Saúde Mental',7),(28,'Fórum de Odontologia','Apresentação de novas técnicas odontológicas.','2024-06-25','Clínica Odontológica',8),(29,'Congresso de Dermatologia','Debates sobre tratamentos para doenças de pele.','2024-07-14','Hospital de Dermatologia',9),(30,'Encontro de Fisioterapeutas','Sessões práticas e teóricas sobre fisioterapia.','2024-08-19','Centro de Reabilitação Física',10),(31,'Workshop de Primeiros Socorros','Curso prático sobre técnicas de primeiros socorros.','2024-09-25','Centro Comunitário',11),(32,'Palestra sobre Diabetes','Informações sobre prevenção e tratamento do diabetes.','2024-10-30','Centro de Diabetes',12),(33,'Congresso de Geriatria','Discussão sobre cuidados com a saúde dos idosos.','2024-11-05','Casa de Repouso',13),(34,'Simpósio de Oncologia','Palestras sobre avanços no tratamento do câncer.','2024-12-10','Hospital Oncológico',14),(35,'Feira de Medicina Alternativa','Exposição de terapias alternativas e complementares.','2024-06-20','Parque da Cidade',15),(36,'Seminário de Farmacologia','Discussão sobre novos medicamentos e suas aplicações.','2024-07-22','Faculdade de Farmácia',16),(37,'Encontro de Psicólogos','Debates sobre novas abordagens terapêuticas.','2024-08-15','Centro de Psicologia',17),(38,'Workshop de Higiene Bucal','Sessão prática sobre cuidados com a saúde bucal.','2024-09-05','Escola de Odontologia',18),(39,'Congresso de Nutrição Esportiva','Discussão sobre dietas para atletas e praticantes de atividades físicas.','2024-10-12','Estádio Municipal',19),(40,'Feira de Saúde Mental','Eventos focados na promoção da saúde mental.','2024-11-20','Centro Cultural',20),(41,'Palestra sobre Saúde Mental','Discussão sobre a importância da saúde mental no ambiente de trabalho.','2024-07-01','Auditório do Hospital',1),(42,'Seminário de Nutrição Infantil','Debate sobre a alimentação adequada para crianças.','2024-07-08','Centro de Nutrição',2),(43,'Conferência de Reabilitação','Discussão sobre técnicas de reabilitação física e motora.','2024-08-10','Centro de Reabilitação',3),(44,'Workshop de Terapias Alternativas','Sessão prática sobre acupuntura e outras terapias.','2024-09-15','Clínica de Terapias Integrativas',4),(45,'Encontro de Ginecologia','Debate sobre os cuidados com a saúde feminina.','2024-10-05','Hospital da Mulher',5),(46,'Congresso de Ortopedia','Discussão sobre tratamentos ortopédicos avançados.','2024-11-10','Centro de Ortopedia',6),(47,'Feira de Saúde da Mulher','Eventos focados na promoção da saúde feminina.','2024-12-01','Praça Central',7),(48,'Simpósio de Endocrinologia','Palestras sobre distúrbios hormonais e suas consequências.','2024-06-18','Hospital de Endocrinologia',8),(49,'Workshop de Primeiros Socorros Avançados','Curso prático sobre técnicas avançadas de primeiros socorros.','2024-07-12','Centro Comunitário',9),(50,'Palestra sobre Obesidade Infantil','Discussão sobre prevenção e tratamento da obesidade em crianças.','2024-08-20','Centro de Saúde Infantil',10),(51,'Seminário de Neurologia','Discussão sobre doenças neurológicas e seus tratamentos.','2024-09-25','Hospital Neurológico',11),(52,'Fórum de Saúde do Idoso','Discussão sobre cuidados e qualidade de vida na terceira idade.','2024-10-18','Casa de Repouso',12),(53,'Congresso de Cirurgia Plástica','Palestras sobre técnicas avançadas em cirurgia plástica.','2024-11-22','Centro de Cirurgia Plástica',13),(54,'Workshop de Fisioterapia Esportiva','Sessão prática sobre técnicas de fisioterapia para atletas.','2024-12-12','Academia de Esportes',14),(55,'Feira de Saúde Cardiovascular','Eventos focados na promoção da saúde do coração.','2024-06-28','Parque da Cidade',15),(56,'Palestra sobre Hipertensão','Discussão sobre prevenção e tratamento da hipertensão.','2024-07-15','Centro de Hipertensão',16),(57,'Simpósio de Geriatria e Gerontologia','Debates sobre cuidados e qualidade de vida para idosos.','2024-08-30','Centro de Geriatria',17),(58,'Encontro de Nutrição e Saúde','Discussão sobre a importância da nutrição na promoção da saúde.','2024-09-12','Faculdade de Nutrição',18),(59,'Congresso de Terapia Intensiva','Palestras sobre cuidados em unidades de terapia intensiva.','2024-10-25','Hospital Geral',19),(60,'Workshop de Massoterapia','Sessão prática sobre técnicas de massagem terapêutica.','2024-11-15','Centro de Massoterapia',20),(61,'Seminário de Saúde Ocupacional','Discussão sobre a importância da saúde no ambiente de trabalho.','2024-12-07','Auditório da Empresa',21),(62,'Palestra sobre Distúrbios do Sono','Discussão sobre causas e tratamentos para distúrbios do sono.','2024-06-26','Centro do Sono',22),(63,'Feira de Saúde Ambiental','Eventos focados na promoção da saúde e sustentabilidade ambiental.','2024-07-18','Parque Ambiental',23),(64,'Simpósio de Pediatria','Discussão sobre cuidados com a saúde infantil.','2024-08-14','Hospital Infantil',24),(65,'Congresso de Medicina Esportiva','Palestras sobre avanços na medicina esportiva.','2024-09-18','Estádio Municipal',25),(66,'Workshop de Enfermagem','Sessão prática sobre cuidados de enfermagem.','2024-10-13','Faculdade de Enfermagem',26),(67,'Encontro de Psicologia Clínica','Debate sobre novas abordagens em psicologia clínica.','2024-11-19','Centro de Psicologia',27),(68,'Palestra sobre Câncer de Mama','Discussão sobre prevenção e tratamento do câncer de mama.','2024-12-03','Hospital Oncológico',28),(69,'Feira de Saúde e Bem-Estar','Eventos focados na promoção do bem-estar e qualidade de vida.','2024-06-22','Praça Central',29),(70,'Congresso de Genética Médica','Palestras sobre avanços em genética médica.','2024-07-30','Centro de Genética',30),(71,'Simpósio de Doenças Infecciosas','Discussão sobre prevenção e tratamento de doenças infecciosas.','2024-08-21','Hospital de Doenças Infecciosas',31),(72,'Workshop de Reabilitação Cardíaca','Sessão prática sobre técnicas de reabilitação para pacientes cardíacos.','2024-09-17','Centro de Reabilitação Cardíaca',12),(73,'Seminário de Oncologia Pediátrica','Discussão sobre tratamentos de câncer em crianças.','2024-10-20','Hospital Infantil',13),(74,'Encontro de Saúde Mental','Debate sobre a promoção da saúde mental na sociedade.','2024-11-25','Centro de Saúde Mental',3),(75,'Palestra sobre Alergias Alimentares','Discussão sobre prevenção e manejo de alergias alimentares.','2024-12-14','Centro de Alergias',3),(76,'Congresso de Medicina Preventiva','Palestras sobre estratégias de medicina preventiva.','2024-06-29','Faculdade de Medicina',3),(77,'Feira de Saúde Bucal','Eventos focados na promoção da saúde bucal.','2024-07-25','Escola de Odontologia',7),(78,'Workshop de Nutrição Clínica','Sessão prática sobre dietas e nutrição clínica.','2024-08-29','Centro de Nutrição',8),(79,'Seminário de Cardiologia Pediátrica','Discussão sobre cuidados cardíacos em crianças.','2024-09-23','Hospital Infantil',9),(80,'Encontro de Fisioterapia Neurológica','Sessão prática sobre técnicas de fisioterapia para pacientes neurológicos.','2024-10-27','Centro de Reabilitação Neurológica',5),(81,'Palestra sobre Ansiedade','Discussão sobre causas e tratamentos para ansiedade.','2024-11-10','Centro de Psicologia',1),(82,'Congresso de Nutrição Vegana','Palestras sobre benefícios e desafios da nutrição vegana.','2024-12-05','Centro de Nutrição Vegana',42),(83,'Feira de Saúde Infantil','Eventos focados na promoção da saúde infantil.','2024-06-20','Parque da Cidade',4),(84,'Simpósio de Neurocirurgia','Discussão sobre avanços em técnicas de neurocirurgia.','2024-07-14','Hospital Neurológico',4),(85,'Workshop de Fisioterapia Aquática','Sessão prática sobre técnicas de fisioterapia aquática.','2024-08-25','Piscina Terapêutica',5),(86,'Encontro de Psiquiatria Infantil','Debate sobre transtornos mentais em crianças.','2024-09-15','Centro de Saúde Mental Infantil',6),(87,'Palestra sobre Doença Celíaca','Discussão sobre diagnóstico e manejo da doença celíaca.','2024-10-10','Centro de Gastroenterologia',17),(88,'Congresso de Doenças Autoimunes','Palestras sobre avanços no tratamento de doenças autoimunes.','2024-11-12','Hospital de Imunologia',8),(89,'Feira de Saúde da Família','Eventos focados na promoção da saúde familiar.','2024-12-02','Parque Central',3),(90,'Seminário de Doenças Crônicas','Discussão sobre manejo e prevenção de doenças crônicas.','2024-06-24','Faculdade de Medicina',5),(111,'Festa de Aniversário','Venha comemorar meu aniversário!','2024-06-15','Casa do João',21),(112,'Conferência de Tecnologia','Palestras sobre as últimas tendências em tecnologia.','2024-07-20','Centro de Convenções',12),(113,'Encontro de Amigos',NULL,'2024-08-10','Bar do Zé',3),(114,'Feira de Empreendedorismo','Stands de startups e networking.','2024-09-05',NULL,14),(115,'Show ao Vivo','Apresentação de banda local.','2024-09-30','Teatro Municipal',NULL),(116,'Aula de Yoga','Relaxe e encontre seu equilíbrio interior.','2024-10-15',NULL,25),(117,'Festa Junina','Quadrilha, comidas típicas e muita diversão.','2024-06-25','Clube da Vila',6),(118,'Exposição de Arte','Obras de artistas locais em exibição.','2024-07-05',NULL,7),(119,'Treinamento Corporativo','Desenvolvimento profissional para equipe.','2024-08-20','Hotel Executivo',NULL),(120,'Piquenique no Parque','Traga sua cesta de alimentos e divirta-se ao ar livre.','2024-09-10','Parque Municipal',18),(121,'Semana da Moda','Desfiles de moda e tendências de estilo.','2024-10-05','Centro de Eventos',NULL),(122,'Seminário de Saúde Mental',NULL,'2024-10-25','Universidade Local',9),(123,'Visita Guiada ao Museu','Conheça a história local através de exposições.','2024-06-30',NULL,10),(124,'Curso de Fotografia','Aprenda técnicas avançadas de fotografia digital.','2024-07-15','Estúdio Fotográfico',NULL),(125,'Feira de Livros','Venda e troca de livros usados.','2024-08-05',NULL,21),(126,'Workshop de Culinária','Prepare pratos deliciosos com chefs profissionais.','2024-09-20','Escola de Culinária',NULL),(127,'Festival de Cinema','Exibição de filmes independentes e clássicos.','2024-10-10','Cinema da Praça',NULL),(128,'Maratona de Programação','Competição de programação para entusiastas de TI.','2024-06-20','Universidade Local',NULL),(129,'Feira de Artesanato','Artesanato local e produtos feitos à mão.','2024-07-10',NULL,NULL),(130,'Aula de Dança','Aprenda diversos estilos de dança com instrutores qualificados.','2024-08-25','Academia de Dança',NULL);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_insert_eventos` BEFORE INSERT ON `eventos` FOR EACH ROW BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.descricao, NEW.data_evento, NEW.local, NEW.criador_id, NEW.evento_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_update_eventos` AFTER UPDATE ON `eventos` FOR EACH ROW BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Antigo", OLD.nome, OLD.descricao, OLD.data_evento, OLD.local, OLD.criador_id, OLD.evento_id);
    
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ('Atualização', NEW.nome, NEW.descricao, NEW.data_evento, NEW.local, NEW.criador_id, NEW.evento_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_delete_eventos` BEFORE DELETE ON `eventos` FOR EACH ROW BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.descricao, OLD.data_evento, OLD.local, OLD.criador_id, OLD.evento_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `eventos_tags`
--

DROP TABLE IF EXISTS `eventos_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_tags` (
  `evento_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`evento_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `eventos_tags_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`evento_id`),
  CONSTRAINT `eventos_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags_eventos` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_tags`
--

LOCK TABLES `eventos_tags` WRITE;
/*!40000 ALTER TABLE `eventos_tags` DISABLE KEYS */;
INSERT INTO `eventos_tags` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15),(8,16),(9,17),(9,18),(10,19),(10,20);
/*!40000 ALTER TABLE `eventos_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_usuarios`
--

DROP TABLE IF EXISTS `eventos_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_usuarios` (
  `evento_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`evento_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `eventos_usuarios_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`evento_id`),
  CONSTRAINT `eventos_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_usuarios`
--

LOCK TABLES `eventos_usuarios` WRITE;
/*!40000 ALTER TABLE `eventos_usuarios` DISABLE KEYS */;
INSERT INTO `eventos_usuarios` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,16),(6,17),(6,18),(7,19),(7,20);
/*!40000 ALTER TABLE `eventos_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_usuarios_convites`
--

DROP TABLE IF EXISTS `eventos_usuarios_convites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_usuarios_convites` (
  `evento_id` int NOT NULL,
  `convidado_id` int NOT NULL,
  PRIMARY KEY (`evento_id`,`convidado_id`),
  KEY `convidado_id` (`convidado_id`),
  CONSTRAINT `eventos_usuarios_convites_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`evento_id`),
  CONSTRAINT `eventos_usuarios_convites_ibfk_2` FOREIGN KEY (`convidado_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_usuarios_convites`
--

LOCK TABLES `eventos_usuarios_convites` WRITE;
/*!40000 ALTER TABLE `eventos_usuarios_convites` DISABLE KEYS */;
INSERT INTO `eventos_usuarios_convites` VALUES (1,21),(1,22),(2,23),(2,24),(3,25),(3,26),(4,27),(4,28),(5,29),(5,30),(6,31),(6,32),(7,33),(7,34),(8,35),(8,36),(9,37),(9,38),(10,39),(10,40);
/*!40000 ALTER TABLE `eventos_usuarios_convites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `grupo_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `data_criacao` date NOT NULL,
  PRIMARY KEY (`grupo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Grupo de Leitura','Grupo dedicado à leitura e discussão de livros de diversos gêneros e autores.','2024-03-15'),(2,'Clube de Cinema','Grupo para amantes do cinema que se reúnem para assistir e discutir filmes clássicos e contemporâneos.','2024-04-20'),(3,'Clube de Fotografia','Grupo de entusiastas da fotografia que compartilham dicas, técnicas e suas melhores fotos.','2024-05-10'),(4,'Grupo de Estudos de Matemática','Grupo de estudos focado em matemática, abordando desde conceitos básicos até tópicos avançados.','2024-02-05'),(5,'Grupo de Música','Grupo para músicos e amantes da música compartilharem seus talentos, experiências e descobrirem novos artistas.','2024-01-10'),(6,'Clube do Livro de Fantasia','Grupo dedicado à leitura e discussão de livros de fantasia e ficção científica.','2024-03-28'),(7,'Clube de Programação','Grupo para programadores trocarem ideias, resolverem desafios e compartilharem conhecimento sobre programação.','2024-04-15'),(8,'Grupo de Viagens','Grupo de viajantes que compartilham experiências, dicas de viagem e planejam aventuras juntos.','2024-06-10'),(9,'Grupo de Yoga','Grupo que pratica yoga regularmente e compartilha dicas, técnicas de meditação e bem-estar.','2024-07-01'),(10,'Clube de Arte','Grupo de artistas e entusiastas de arte que compartilham suas criações, ideias e inspirações.','2024-08-15'),(11,'Grupo de Desenvolvimento Pessoal','Grupo focado no crescimento pessoal, compartilhando reflexões, exercícios e experiências de vida.','2024-09-20'),(12,'Clube de Culinária','Grupo de amantes da culinária que trocam receitas, dicas e experiências gastronômicas.','2024-10-05'),(13,'Grupo de Dança','Grupo de dançarinos e entusiastas da dança que compartilham coreografias, aulas e eventos relacionados.','2024-11-10'),(14,'Clube de Idiomas','Grupo para aprender e praticar idiomas estrangeiros, oferecendo conversas, exercícios e dicas de aprendizado.','2024-12-15'),(15,'Grupo de Corrida','Grupo de corredores que se reúnem regularmente para treinos, corridas e incentivo mútuo.','2024-02-20'),(16,'Clube de Finanças Pessoais','Grupo dedicado a discutir finanças pessoais, compartilhar dicas de investimento e educação financeira.','2024-01-25'),(17,'Grupo de Meditação','Grupo que pratica meditação regularmente, compartilhando técnicas, experiências e tranquilidade.','2024-03-05'),(18,'Clube de Jardinagem','Grupo de entusiastas da jardinagem que compartilham dicas, experiências e cuidados com plantas.','2024-04-10'),(19,'Grupo de Teatro','Grupo de amantes do teatro que compartilham peças, ensaios e promovem atividades relacionadas à arte dramática.','2024-05-15'),(20,'Clube de Esportes Radicais','Grupo de aventureiros que praticam esportes radicais, como escalada, surf e paraquedismo.','2024-06-20');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_insert_grupos` BEFORE INSERT ON `grupos` FOR EACH ROW BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.descricao, NEW.data_criacao, NEW.grupo_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_update_grupos` AFTER UPDATE ON `grupos` FOR EACH ROW BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Antigo", OLD.nome, OLD.descricao, OLD.data_criacao, OLD.grupo_id);
    
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Atualização", NEW.nome, NEW.descricao, NEW.data_criacao, NEW.grupo_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_delete_grupos` BEFORE DELETE ON `grupos` FOR EACH ROW BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.descricao, OLD.data_criacao, OLD.grupo_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `grupos_usuarios`
--

DROP TABLE IF EXISTS `grupos_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos_usuarios` (
  `grupo_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`grupo_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `grupos_usuarios_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`),
  CONSTRAINT `grupos_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_usuarios`
--

LOCK TABLES `grupos_usuarios` WRITE;
/*!40000 ALTER TABLE `grupos_usuarios` DISABLE KEYS */;
INSERT INTO `grupos_usuarios` VALUES (1,21),(1,22),(1,23),(1,24),(2,25),(2,26),(2,27),(2,28),(3,29),(3,30),(3,31),(3,32),(4,33),(4,34),(4,35),(4,36),(5,37),(5,38),(5,39),(5,40);
/*!40000 ALTER TABLE `grupos_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_de_aniversariantes`
--

DROP TABLE IF EXISTS `lista_de_aniversariantes`;
/*!50001 DROP VIEW IF EXISTS `lista_de_aniversariantes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_de_aniversariantes` AS SELECT 
 1 AS `Lista`,
 1 AS `Lista de Aniversariantes`,
 1 AS `Dia do aniversário`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_eventos`
--

DROP TABLE IF EXISTS `log_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(20) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `data_evento` varchar(200) DEFAULT NULL,
  `local` varchar(200) DEFAULT NULL,
  `criador_id` int DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tabela` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_eventos`
--

LOCK TABLES `log_eventos` WRITE;
/*!40000 ALTER TABLE `log_eventos` DISABLE KEYS */;
INSERT INTO `log_eventos` VALUES (1,'Insert','Workshop de Biotecnologia','Evento sobre novas Biotecnologias.','2023-08-01','Auditório A2',1,'2024-06-11 22:43:23',0),(2,'Antigo','Workshop de Biotecnologia','Evento sobre novas Biotecnologias.','2023-08-01','Auditório A2',1,'2024-06-11 22:45:26',131),(3,'Atualização','Workshop de Biotecnologia','Evento sobre tecnologias emergentes.','2023-08-01','Auditório B',1,'2024-06-11 22:45:26',131),(4,'Delete','Workshop de Biotecnologia','Evento sobre tecnologias emergentes.','2023-08-01','Auditório B',1,'2024-06-11 22:45:34',131);
/*!40000 ALTER TABLE `log_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_grupos`
--

DROP TABLE IF EXISTS `log_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_grupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(20) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `data_criacao` varchar(200) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tabela` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_grupos`
--

LOCK TABLES `log_grupos` WRITE;
/*!40000 ALTER TABLE `log_grupos` DISABLE KEYS */;
INSERT INTO `log_grupos` VALUES (1,'Insert','Grupo de Cachaceiros','Grupo para Cachaceiros','2023-01-10','2024-06-11 22:46:20',0),(2,'Antigo','Grupo de Cachaceiros','Grupo para Cachaceiros','2023-01-10','2024-06-11 22:46:59',21),(3,'Atualização','Grupo do Cachaceiros Avançados','Grupo para estudos avançados coletivos','2023-01-10','2024-06-11 22:46:59',21),(4,'Delete','Grupo do Cachaceiros Avançados','Grupo para estudos avançados coletivos','2023-01-10','2024-06-11 22:47:06',21);
/*!40000 ALTER TABLE `log_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_mensagens`
--

DROP TABLE IF EXISTS `log_mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_mensagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(20) DEFAULT NULL,
  `remetente_id` int DEFAULT NULL,
  `destinatario_id` int DEFAULT NULL,
  `conteudo` varchar(100) DEFAULT NULL,
  `data_mensagem` varchar(200) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tabela` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_mensagens`
--

LOCK TABLES `log_mensagens` WRITE;
/*!40000 ALTER TABLE `log_mensagens` DISABLE KEYS */;
INSERT INTO `log_mensagens` VALUES (1,'Insert',1,2,'Olá, como vai alma?','2023-01-01 09:00:00','2024-06-11 22:48:50',0),(2,'Antigo',1,21,'Olá, como você está?','2024-05-16 13:28:51','2024-06-11 22:48:53',1),(3,'Atualização',1,21,'Olá, como vai você?','2023-01-01 09:01:00','2024-06-11 22:48:53',1),(4,'Delete',1,2,'Olá, como vai alma?','2023-01-01 09:00:00','2024-06-11 22:49:26',21);
/*!40000 ALTER TABLE `log_mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_solucoes_denuncias`
--

DROP TABLE IF EXISTS `log_solucoes_denuncias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_solucoes_denuncias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `data_resolucao` varchar(200) DEFAULT NULL,
  `solucao_aplicada` varchar(200) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tabela` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_solucoes_denuncias`
--

LOCK TABLES `log_solucoes_denuncias` WRITE;
/*!40000 ALTER TABLE `log_solucoes_denuncias` DISABLE KEYS */;
INSERT INTO `log_solucoes_denuncias` VALUES (1,'Insert','Em Analise crítico','2023-06-01 15:00:00','Mensagem ofensiva removida','2024-06-11 23:07:52',328),(2,'Antigo','Em Analise crítico','2023-06-01 15:00:00','Mensagem ofensiva removida','2024-06-11 23:08:41',328),(3,'Atualização','Resolvido','2023-06-01 15:00:00','Usuário advertido e post removido','2024-06-11 23:08:41',328),(4,'Delete','Resolvido','2023-06-01 15:00:00','Usuário advertido e post removido','2024-06-11 23:08:44',328);
/*!40000 ALTER TABLE `log_solucoes_denuncias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_usuario`
--

DROP TABLE IF EXISTS `log_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_nascimento` varchar(200) DEFAULT NULL,
  `bio` text,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tabela` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_usuario`
--

LOCK TABLES `log_usuario` WRITE;
/*!40000 ALTER TABLE `log_usuario` DISABLE KEYS */;
INSERT INTO `log_usuario` VALUES (1,'Insert','Frank Jaw','frankjaw@example.com','password6','Rua F, 303','789321456','1982-06-05','Gamer e programador.','2024-06-11 22:53:39',0),(2,'Antigo','Frank Jaw','frankjaw@example.com','password6','Rua F, 303','789321456','1982-06-05','Gamer e programador.','2024-06-11 22:54:29',154),(3,'Atualização','Analice Martins','frankjaw@example.com','password6','Rua A, 123 - Apt 12','789321456','1982-06-05','Gamer e programador.','2024-06-11 22:54:29',154),(4,'Delete','Analice Martins','frankjaw@example.com','password6','Rua A, 123 - Apt 12','789321456','1982-06-05','Gamer e programador.','2024-06-11 22:54:32',154);
/*!40000 ALTER TABLE `log_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_acesso`
--

DROP TABLE IF EXISTS `logs_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_acesso` (
  `log_acesso_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `data_acesso` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `endereco_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_acesso_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `logs_acesso_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_acesso`
--

LOCK TABLES `logs_acesso` WRITE;
/*!40000 ALTER TABLE `logs_acesso` DISABLE KEYS */;
INSERT INTO `logs_acesso` VALUES (1,1,'2024-05-16 14:47:49','192.168.0.1'),(2,2,'2024-05-16 14:47:49','192.168.0.2'),(3,3,'2024-05-16 14:47:49','192.168.0.3'),(4,4,'2024-05-16 14:47:49','192.168.0.4'),(5,5,'2024-05-16 14:47:49','192.168.0.5'),(6,6,'2024-05-16 14:47:49','192.168.0.6'),(7,7,'2024-05-16 14:47:49','192.168.0.7'),(8,8,'2024-05-16 14:47:49','192.168.0.8'),(9,9,'2024-05-16 14:47:49','192.168.0.9'),(10,10,'2024-05-16 14:47:49','192.168.0.10'),(11,11,'2024-05-16 14:47:49','192.168.0.11'),(12,12,'2024-05-16 14:47:49','192.168.0.12'),(13,13,'2024-05-16 14:47:49','192.168.0.13'),(14,14,'2024-05-16 14:47:49','192.168.0.14'),(15,15,'2024-05-16 14:47:49','192.168.0.15'),(16,16,'2024-05-16 14:47:49','192.168.0.16'),(17,17,'2024-05-16 14:47:49','192.168.0.17'),(18,18,'2024-05-16 14:47:49','192.168.0.18'),(19,19,'2024-05-16 14:47:49','192.168.0.19'),(20,20,'2024-05-16 14:47:49','192.168.0.20');
/*!40000 ALTER TABLE `logs_acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membros_grupos`
--

DROP TABLE IF EXISTS `membros_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membros_grupos` (
  `membro_grupo_id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_entrada` date NOT NULL,
  `papel` enum('Admin','Membro') NOT NULL,
  PRIMARY KEY (`membro_grupo_id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `membros_grupos_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`),
  CONSTRAINT `membros_grupos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros_grupos`
--

LOCK TABLES `membros_grupos` WRITE;
/*!40000 ALTER TABLE `membros_grupos` DISABLE KEYS */;
INSERT INTO `membros_grupos` VALUES (1,1,1,'2024-01-01','Admin'),(2,1,2,'2024-01-01','Membro'),(3,1,3,'2024-01-01','Membro'),(4,2,4,'2024-01-02','Admin'),(5,2,5,'2024-01-02','Membro'),(6,2,6,'2024-01-02','Membro'),(7,3,7,'2024-01-03','Admin'),(8,3,8,'2024-01-03','Membro'),(9,3,9,'2024-01-03','Membro'),(10,4,10,'2024-01-04','Admin'),(11,4,11,'2024-01-04','Membro'),(12,5,12,'2024-01-05','Admin'),(13,5,13,'2024-01-05','Membro'),(14,5,14,'2024-01-05','Membro'),(15,6,15,'2024-01-06','Admin'),(16,6,16,'2024-01-06','Membro'),(17,6,17,'2024-01-06','Membro'),(18,7,18,'2024-01-07','Admin'),(19,7,19,'2024-01-07','Membro'),(20,7,20,'2024-01-07','Membro'),(21,11,1,'2024-01-01','Admin'),(22,11,2,'2024-01-02','Membro'),(23,13,3,'2024-01-03','Membro'),(24,2,4,'2024-01-04','Admin'),(25,12,5,'2024-01-05','Membro'),(26,12,6,'2024-01-06','Membro'),(27,13,7,'2024-01-07','Admin'),(28,13,8,'2024-01-08','Membro'),(29,13,9,'2024-01-09','Membro'),(30,14,10,'2024-01-10','Admin'),(31,14,11,'2024-01-11','Membro'),(32,14,12,'2024-01-12','Membro'),(33,15,13,'2024-01-13','Admin'),(34,15,14,'2024-01-14','Membro'),(35,15,15,'2024-01-15','Membro'),(36,6,16,'2024-01-16','Admin'),(37,16,17,'2024-01-17','Membro'),(38,16,18,'2024-01-18','Membro'),(39,7,19,'2024-01-19','Admin'),(40,7,20,'2024-01-20','Membro'),(41,7,21,'2024-01-21','Membro'),(42,8,22,'2024-01-22','Admin'),(43,8,23,'2024-01-23','Membro'),(44,8,24,'2024-01-24','Membro'),(45,9,25,'2024-01-25','Admin'),(46,9,26,'2024-01-26','Membro'),(47,9,27,'2024-01-27','Membro'),(48,10,28,'2024-01-28','Admin'),(49,10,29,'2024-01-29','Membro'),(50,10,30,'2024-01-30','Membro'),(51,1,31,'2024-02-01','Admin'),(52,1,32,'2024-02-02','Membro'),(53,1,33,'2024-02-03','Membro'),(54,2,34,'2024-02-04','Admin'),(55,5,1,'2023-01-01','Admin'),(56,6,2,'2023-01-02','Membro'),(57,7,3,'2023-01-03','Membro'),(58,8,4,'2023-01-04','Admin'),(59,9,5,'2023-01-05','Membro'),(60,10,6,'2023-01-06','Membro'),(61,11,7,'2023-01-07','Admin'),(62,12,8,'2023-01-08','Membro'),(63,13,9,'2023-01-09','Membro'),(64,14,10,'2023-01-10','Admin'),(65,15,11,'2023-01-11','Membro'),(66,5,12,'2023-01-12','Membro'),(67,6,13,'2023-01-13','Admin'),(68,7,14,'2023-01-14','Membro'),(69,8,15,'2023-01-15','Membro'),(70,9,16,'2023-01-16','Admin'),(71,10,17,'2023-01-17','Membro'),(72,11,18,'2023-01-18','Membro'),(73,12,19,'2023-01-19','Admin'),(74,13,20,'2023-01-20','Membro'),(75,14,21,'2023-01-21','Membro'),(76,15,22,'2023-01-22','Admin'),(77,5,23,'2023-01-23','Membro'),(78,6,24,'2023-01-24','Membro'),(79,7,25,'2023-01-25','Admin'),(80,8,26,'2023-01-26','Membro'),(81,9,27,'2023-01-27','Membro'),(82,10,28,'2023-01-28','Admin'),(83,11,29,'2023-01-29','Membro'),(84,12,30,'2023-01-30','Membro'),(85,13,31,'2023-02-01','Admin'),(86,14,32,'2023-02-02','Membro'),(87,15,33,'2023-02-03','Membro'),(88,5,34,'2023-02-04','Admin'),(89,6,35,'2023-02-05','Membro'),(90,7,36,'2023-02-06','Membro'),(91,8,37,'2023-02-07','Admin'),(92,9,38,'2023-02-08','Membro'),(93,10,39,'2023-02-09','Membro'),(94,11,40,'2023-02-10','Admin'),(95,12,41,'2023-02-11','Membro'),(96,13,42,'2023-02-12','Membro'),(97,14,43,'2023-02-13','Admin'),(98,15,44,'2023-02-14','Membro'),(99,5,45,'2023-02-15','Membro'),(100,6,46,'2023-02-16','Admin'),(101,7,47,'2023-02-17','Membro'),(102,8,48,'2023-02-18','Membro'),(103,9,49,'2023-02-19','Admin'),(104,10,50,'2023-02-20','Membro'),(105,11,51,'2023-02-21','Membro'),(106,12,52,'2023-02-22','Admin'),(107,13,53,'2023-02-23','Membro'),(108,14,54,'2023-02-24','Membro'),(109,15,55,'2023-02-25','Admin'),(110,5,56,'2023-02-26','Membro'),(111,6,57,'2023-02-27','Membro'),(112,7,58,'2023-02-28','Admin'),(113,8,59,'2023-03-01','Membro'),(114,9,60,'2023-03-02','Membro'),(115,10,61,'2023-03-03','Admin'),(116,11,62,'2023-03-04','Membro'),(117,12,63,'2023-03-05','Membro'),(118,13,64,'2023-03-06','Admin'),(119,14,65,'2023-03-07','Membro'),(120,15,66,'2023-03-08','Membro'),(121,5,67,'2023-03-09','Admin'),(122,6,68,'2023-03-10','Membro'),(123,7,69,'2023-03-11','Membro'),(124,8,70,'2023-03-12','Admin'),(125,9,71,'2023-03-13','Membro'),(126,10,1,'2023-01-01','Admin'),(127,11,2,'2023-01-02','Membro'),(128,12,3,'2023-01-03','Membro'),(129,13,4,'2023-01-04','Admin'),(130,14,5,'2023-01-05','Membro'),(131,15,6,'2023-01-06','Membro'),(132,10,7,'2023-01-07','Admin'),(133,11,8,'2023-01-08','Membro'),(134,12,9,'2023-01-09','Membro'),(135,13,10,'2023-01-10','Admin'),(136,14,11,'2023-01-11','Membro'),(137,15,12,'2023-01-12','Membro'),(138,10,13,'2023-01-13','Admin'),(139,11,14,'2023-01-14','Membro'),(140,12,15,'2023-01-15','Membro'),(141,13,16,'2023-01-16','Admin'),(142,14,17,'2023-01-17','Membro'),(143,15,18,'2023-01-18','Membro'),(144,10,19,'2023-01-19','Admin'),(145,11,20,'2023-01-20','Membro'),(146,12,21,'2023-01-21','Membro'),(147,13,22,'2023-01-22','Admin'),(148,14,23,'2023-01-23','Membro'),(149,15,24,'2023-01-24','Membro'),(150,10,25,'2023-01-25','Admin'),(151,11,26,'2023-01-26','Membro'),(152,12,27,'2023-01-27','Membro'),(153,13,28,'2023-01-28','Admin'),(154,14,29,'2023-01-29','Membro'),(155,15,30,'2023-01-30','Membro'),(156,10,31,'2023-02-01','Admin'),(157,11,32,'2023-02-02','Membro'),(158,12,33,'2023-02-03','Membro'),(159,13,34,'2023-02-04','Admin');
/*!40000 ALTER TABLE `membros_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membros_grupos_invites`
--

DROP TABLE IF EXISTS `membros_grupos_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membros_grupos_invites` (
  `membro_grupo_id` int NOT NULL,
  `convidado_id` int NOT NULL,
  PRIMARY KEY (`membro_grupo_id`,`convidado_id`),
  KEY `convidado_id` (`convidado_id`),
  CONSTRAINT `membros_grupos_invites_ibfk_1` FOREIGN KEY (`membro_grupo_id`) REFERENCES `membros_grupos` (`membro_grupo_id`),
  CONSTRAINT `membros_grupos_invites_ibfk_2` FOREIGN KEY (`convidado_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros_grupos_invites`
--

LOCK TABLES `membros_grupos_invites` WRITE;
/*!40000 ALTER TABLE `membros_grupos_invites` DISABLE KEYS */;
INSERT INTO `membros_grupos_invites` VALUES (1,21),(2,22),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29),(10,30),(11,31),(12,32),(13,33),(14,34),(15,35),(16,36),(17,37),(18,38),(19,39),(20,40);
/*!40000 ALTER TABLE `membros_grupos_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens` (
  `mensagem_id` int NOT NULL AUTO_INCREMENT,
  `remetente_id` int DEFAULT NULL,
  `destinatario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_mensagem` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mensagem_id`),
  KEY `remetente_id` (`remetente_id`),
  KEY `destinatario_id` (`destinatario_id`),
  CONSTRAINT `mensagens_ibfk_1` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `mensagens_ibfk_2` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,1,21,'Olá, como vai você?','2023-01-01 12:01:00'),(2,2,22,'Estou bem, obrigado! E você?','2024-05-16 16:28:51'),(3,3,23,'Precisamos discutir o projeto hoje.','2024-05-16 16:28:51'),(4,4,24,'Combinado, nos encontramos mais tarde.','2024-05-16 16:28:51'),(5,5,25,'Você viu as atualizações no site?','2024-05-16 16:28:51'),(6,6,26,'Sim, estão ótimas!','2024-05-16 16:28:51'),(7,7,27,'Tenho uma ideia para melhorar a usabilidade.','2024-05-16 16:28:51'),(8,8,28,'Vamos discutir isso na reunião de hoje.','2024-05-16 16:28:51'),(9,9,29,'Lembre-se da apresentação amanhã.','2024-05-16 16:28:51'),(10,10,30,'Pode contar comigo.','2024-05-16 16:28:51'),(11,11,31,'Como está o andamento do projeto?','2024-05-16 16:28:51'),(12,12,32,'Estamos progredindo bem.','2024-05-16 16:28:51'),(13,13,33,'Precisamos revisar os prazos.','2024-05-16 16:28:51'),(14,14,34,'Concordo, vamos analisar isso na próxima semana.','2024-05-16 16:28:51'),(15,15,35,'Você poderia me ajudar com esse problema?','2024-05-16 16:28:51'),(16,16,36,'Claro, me mande os detalhes.','2024-05-16 16:28:51'),(17,17,37,'Estou ansioso para a nossa reunião.','2024-05-16 16:28:51'),(18,18,38,'Será uma ótima oportunidade para discutir novas ideias.','2024-05-16 16:28:51'),(19,19,39,'O que você achou do último evento?','2024-05-16 16:28:51'),(20,20,40,'Foi incrível, mal posso esperar pelo próximo!','2024-05-16 16:28:51');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_insert_mensagens` BEFORE INSERT ON `mensagens` FOR EACH ROW BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Insert", NEW.remetente_id, NEW.destinatario_id, NEW.conteudo, NEW.data_mensagem, NEW.mensagem_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_update_mensagens` AFTER UPDATE ON `mensagens` FOR EACH ROW BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Antigo", OLD.remetente_id, OLD.destinatario_id, OLD.conteudo, OLD.data_mensagem, OLD.mensagem_id);
    
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Atualização", NEW.remetente_id, NEW.destinatario_id, NEW.conteudo, NEW.data_mensagem, NEW.mensagem_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_delete_mensagens` BEFORE DELETE ON `mensagens` FOR EACH ROW BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Delete", OLD.remetente_id, OLD.destinatario_id, OLD.conteudo, OLD.data_mensagem, OLD.mensagem_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mensagens_grupos`
--

DROP TABLE IF EXISTS `mensagens_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens_grupos` (
  `mensagem_id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `remetente_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_mensagem` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mensagem_id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `remetente_id` (`remetente_id`),
  CONSTRAINT `mensagens_grupos_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`),
  CONSTRAINT `mensagens_grupos_ibfk_2` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens_grupos`
--

LOCK TABLES `mensagens_grupos` WRITE;
/*!40000 ALTER TABLE `mensagens_grupos` DISABLE KEYS */;
INSERT INTO `mensagens_grupos` VALUES (2,1,1,'Conteúdo da mensagem 1','2024-05-16 16:39:53'),(3,1,2,'Conteúdo da mensagem 2','2024-05-16 16:39:53'),(4,2,3,'Conteúdo da mensagem 3','2024-05-16 16:39:53'),(5,2,4,'Conteúdo da mensagem 4','2024-05-16 16:39:53'),(6,3,5,'Conteúdo da mensagem 5','2024-05-16 16:39:53'),(7,3,6,'Conteúdo da mensagem 6','2024-05-16 16:39:53'),(8,4,7,'Conteúdo da mensagem 7','2024-05-16 16:39:53'),(9,4,8,'Conteúdo da mensagem 8','2024-05-16 16:39:53'),(10,5,9,'Conteúdo da mensagem 9','2024-05-16 16:39:53'),(11,5,10,'Conteúdo da mensagem 10','2024-05-16 16:39:53'),(12,6,11,'Conteúdo da mensagem 11','2024-05-16 16:39:53'),(13,6,12,'Conteúdo da mensagem 12','2024-05-16 16:39:53'),(14,7,13,'Conteúdo da mensagem 13','2024-05-16 16:39:53'),(15,7,14,'Conteúdo da mensagem 14','2024-05-16 16:39:53'),(16,8,15,'Conteúdo da mensagem 15','2024-05-16 16:39:53'),(17,8,16,'Conteúdo da mensagem 16','2024-05-16 16:39:53'),(18,9,17,'Conteúdo da mensagem 17','2024-05-16 16:39:53'),(19,9,18,'Conteúdo da mensagem 18','2024-05-16 16:39:53'),(20,10,19,'Conteúdo da mensagem 19','2024-05-16 16:39:53'),(21,10,20,'Conteúdo da mensagem 20','2024-05-16 16:39:53');
/*!40000 ALTER TABLE `mensagens_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderadores_grupos`
--

DROP TABLE IF EXISTS `moderadores_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderadores_grupos` (
  `moderador_id` int NOT NULL,
  `grupo_id` int NOT NULL,
  PRIMARY KEY (`moderador_id`,`grupo_id`),
  KEY `grupo_id` (`grupo_id`),
  CONSTRAINT `moderadores_grupos_ibfk_1` FOREIGN KEY (`moderador_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `moderadores_grupos_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderadores_grupos`
--

LOCK TABLES `moderadores_grupos` WRITE;
/*!40000 ALTER TABLE `moderadores_grupos` DISABLE KEYS */;
INSERT INTO `moderadores_grupos` VALUES (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),(11,6),(12,6),(13,7),(14,7),(15,8),(16,8),(17,9),(18,9),(19,10),(20,10);
/*!40000 ALTER TABLE `moderadores_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacoes`
--

DROP TABLE IF EXISTS `notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacoes` (
  `notificacao_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_notificacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lida` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`notificacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `notificacoes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacoes`
--

LOCK TABLES `notificacoes` WRITE;
/*!40000 ALTER TABLE `notificacoes` DISABLE KEYS */;
INSERT INTO `notificacoes` VALUES (1,21,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(2,22,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(3,23,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(4,24,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(5,25,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(6,26,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(7,27,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(8,28,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(9,29,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(10,30,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(11,31,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(12,32,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(13,33,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(14,34,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(15,35,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(16,36,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(17,37,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0),(18,38,'Você foi marcado em uma publicação.','2024-05-16 14:45:30',0),(19,39,'Você tem uma nova mensagem.','2024-05-16 14:45:30',0),(20,40,'Sua postagem recebeu uma curtida.','2024-05-16 14:45:30',0);
/*!40000 ALTER TABLE `notificacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacoes_usuarios`
--

DROP TABLE IF EXISTS `notificacoes_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacoes_usuarios` (
  `notificacao_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_notificacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lida` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`notificacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `notificacoes_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacoes_usuarios`
--

LOCK TABLES `notificacoes_usuarios` WRITE;
/*!40000 ALTER TABLE `notificacoes_usuarios` DISABLE KEYS */;
INSERT INTO `notificacoes_usuarios` VALUES (1,1,'Você recebeu uma nova mensagem.','2024-05-15 20:37:57',0),(2,2,'Sua solicitação de amizade foi aceita.','2024-05-15 20:37:57',0),(3,3,'Nova postagem no grupo de leitura.','2024-05-15 20:37:57',0),(4,4,'Convite para participar de um evento.','2024-05-15 20:37:57',0),(5,5,'Atualização de privacidade aplicada com sucesso.','2024-05-15 20:37:57',0),(6,6,'Você foi marcado em uma foto.','2024-05-15 20:37:57',0),(7,7,'Novo comentário em sua publicação.','2024-05-15 20:37:57',0),(8,8,'Notificação de aniversário de um amigo.','2024-05-15 20:37:57',0),(9,9,'Sua senha foi alterada recentemente.','2024-05-15 20:37:57',0),(10,10,'Promoção especial para membros do grupo.','2024-05-15 20:37:57',0),(11,11,'Lembrete de compromisso agendado.','2024-05-15 20:37:57',0),(12,12,'Novo convite para grupo de estudos.','2024-05-15 20:37:57',0),(13,13,'Sua postagem recebeu uma curtida.','2024-05-15 20:37:57',0),(14,14,'Notificação de segurança da conta.','2024-05-15 20:37:57',0),(15,15,'Atualização de política de privacidade.','2024-05-15 20:37:57',0),(16,16,'Convite para participar de um novo grupo.','2024-05-15 20:37:57',0),(17,17,'Sua publicação foi compartilhada.','2024-05-15 20:37:57',0),(18,18,'Anúncio importante da administração.','2024-05-15 20:37:57',0),(19,19,'Você foi mencionado em um comentário.','2024-05-15 20:37:57',0),(20,20,'Sua participação no evento foi confirmada.','2024-05-15 20:37:57',0);
/*!40000 ALTER TABLE `notificacoes_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participacoes_eventos`
--

DROP TABLE IF EXISTS `participacoes_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participacoes_eventos` (
  `participacao_evento_id` int NOT NULL AUTO_INCREMENT,
  `evento_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_participacao` date NOT NULL,
  PRIMARY KEY (`participacao_evento_id`),
  KEY `evento_id` (`evento_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `participacoes_eventos_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`evento_id`),
  CONSTRAINT `participacoes_eventos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacoes_eventos`
--

LOCK TABLES `participacoes_eventos` WRITE;
/*!40000 ALTER TABLE `participacoes_eventos` DISABLE KEYS */;
INSERT INTO `participacoes_eventos` VALUES (1,1,1,'2024-01-01'),(2,1,2,'2024-01-02'),(3,2,3,'2024-01-03'),(4,2,4,'2024-01-04'),(5,3,5,'2024-01-05'),(6,3,6,'2024-01-06'),(7,4,7,'2024-01-07'),(8,4,8,'2024-01-08'),(9,5,9,'2024-01-09'),(10,5,10,'2024-01-10'),(11,6,11,'2024-01-11'),(12,6,12,'2024-01-12'),(13,7,13,'2024-01-13'),(14,7,14,'2024-01-14'),(15,8,15,'2024-01-15'),(16,8,16,'2024-01-16'),(17,9,17,'2024-01-17'),(18,9,18,'2024-01-18'),(19,10,19,'2024-01-19'),(20,10,20,'2024-01-20'),(21,1,1,'2024-05-01'),(22,1,2,'2024-05-02'),(23,1,3,'2024-05-03'),(24,2,4,'2024-05-04'),(25,2,5,'2024-05-05'),(26,3,6,'2024-05-06'),(27,4,7,'2024-05-07'),(28,5,8,'2024-05-08'),(29,6,9,'2024-05-09'),(30,7,10,'2024-05-10'),(31,8,11,'2024-05-11'),(32,9,12,'2024-05-12'),(33,10,13,'2024-05-13'),(34,11,14,'2024-05-14'),(35,12,15,'2024-05-15'),(36,13,16,'2024-05-16'),(37,14,17,'2024-05-17'),(38,15,18,'2024-05-18'),(39,16,19,'2024-05-19'),(40,17,20,'2024-05-20'),(41,18,21,'2024-05-21'),(42,19,22,'2024-05-22'),(43,20,23,'2024-05-23'),(44,21,24,'2024-05-24'),(45,22,25,'2024-05-25'),(46,23,26,'2024-05-26'),(47,24,27,'2024-05-27'),(48,25,28,'2024-05-28');
/*!40000 ALTER TABLE `participacoes_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postagens`
--

DROP TABLE IF EXISTS `postagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postagens` (
  `postagem_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_postagem` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`postagem_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `postagens_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postagens`
--

LOCK TABLES `postagens` WRITE;
/*!40000 ALTER TABLE `postagens` DISABLE KEYS */;
INSERT INTO `postagens` VALUES (1,1,'Hoje foi um dia incrível!','2024-05-15 20:32:40'),(2,2,'Acabei de terminar de ler um livro fascinante.','2024-05-15 20:32:40'),(3,3,'Compartilhando uma foto do pôr do sol maravilhoso que vi hoje.','2024-05-15 20:32:40'),(4,4,'Estou animado para começar meu novo projeto de programação.','2024-05-15 20:32:40'),(5,5,'Que música incrível! Não consigo parar de ouvir.','2024-05-15 20:32:40'),(6,6,'Assisti a um filme incrível hoje à noite.','2024-05-15 20:32:40'),(7,7,'Praticando yoga no parque pela manhã.','2024-05-15 20:32:40'),(8,8,'Receita deliciosa que acabei de experimentar!','2024-05-15 20:32:40'),(9,9,'Treino de corrida concluído. Me sinto revigorado!','2024-05-15 20:32:40'),(10,10,'Compartilhando um momento de meditação e tranquilidade.','2024-05-15 20:32:40'),(11,11,'Uma nova peça de arte que acabei de terminar.','2024-05-15 20:32:40'),(12,12,'Explorando novos lugares em minha viagem.','2024-05-15 20:32:40'),(13,13,'Aprendendo um novo idioma é desafiador, mas gratificante.','2024-05-15 20:32:40'),(14,14,'Esse livro de finanças pessoais mudou minha perspectiva.','2024-05-15 20:32:40'),(15,15,'Praticando teatro para a próxima apresentação.','2024-05-15 20:32:40'),(16,16,'Dia emocionante de escalada na montanha.','2024-05-15 20:32:40'),(17,17,'Momento de relaxamento no jardim.','2024-05-15 20:32:40'),(18,18,'Compartilhando uma receita saudável e nutritiva.','2024-05-15 20:32:40'),(19,19,'Iniciando meu projeto de jardinagem.','2024-05-15 20:32:40'),(20,20,'Dia cheio de adrenalina com os amigos nos esportes radicais.','2024-05-15 20:32:40'),(21,92,'Conteúdo da segunda postagem.','2024-05-29 14:00:00'),(22,93,'Conteúdo da terceira postagem.','2024-05-29 15:00:00'),(23,94,'Conteúdo da quarta postagem.','2024-05-29 16:00:00'),(24,95,'Conteúdo da quinta postagem.','2024-05-29 17:00:00'),(25,96,'Conteúdo da sexta postagem.','2024-05-29 18:00:00'),(26,97,'Conteúdo da sétima postagem.','2024-05-29 19:00:00'),(27,98,'Conteúdo da oitava postagem.','2024-05-29 20:00:00'),(28,19,'Conteúdo da nona postagem.','2024-05-29 21:00:00'),(29,110,'Conteúdo da décima postagem.','2024-05-29 22:00:00'),(30,111,'Conteúdo da décima primeira postagem.','2024-05-29 23:00:00'),(31,92,'Conteúdo da segunda postagem.','2024-05-29 14:00:00'),(32,93,'Conteúdo da terceira postagem.','2024-05-29 15:00:00'),(33,94,'Conteúdo da quarta postagem.','2024-05-29 16:00:00'),(34,95,'Conteúdo da quinta postagem.','2024-05-29 17:00:00'),(35,96,'Conteúdo da sexta postagem.','2024-05-29 18:00:00'),(36,97,'Conteúdo da sétima postagem.','2024-05-29 19:00:00'),(37,98,'Conteúdo da oitava postagem.','2024-05-29 20:00:00'),(38,19,'Conteúdo da nona postagem.','2024-05-29 21:00:00'),(39,110,'Conteúdo da décima postagem.','2024-05-29 22:00:00'),(40,111,'Conteúdo da décima primeira postagem.','2024-05-29 23:00:00');
/*!40000 ALTER TABLE `postagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postagens_tags`
--

DROP TABLE IF EXISTS `postagens_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postagens_tags` (
  `postagem_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`postagem_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `postagens_tags_ibfk_1` FOREIGN KEY (`postagem_id`) REFERENCES `postagens` (`postagem_id`),
  CONSTRAINT `postagens_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags_postagens` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postagens_tags`
--

LOCK TABLES `postagens_tags` WRITE;
/*!40000 ALTER TABLE `postagens_tags` DISABLE KEYS */;
INSERT INTO `postagens_tags` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15),(8,16),(9,17),(9,18),(10,19),(10,20);
/*!40000 ALTER TABLE `postagens_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacoes_grupos`
--

DROP TABLE IF EXISTS `publicacoes_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacoes_grupos` (
  `publicacao_id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_publicacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`publicacao_id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `publicacoes_grupos_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`),
  CONSTRAINT `publicacoes_grupos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacoes_grupos`
--

LOCK TABLES `publicacoes_grupos` WRITE;
/*!40000 ALTER TABLE `publicacoes_grupos` DISABLE KEYS */;
INSERT INTO `publicacoes_grupos` VALUES (1,1,21,'Conteúdo da publicação 1','2024-05-16 16:17:35'),(2,2,22,'Conteúdo da publicação 2','2024-05-16 16:17:35'),(3,3,23,'Conteúdo da publicação 3','2024-05-16 16:17:35'),(4,4,24,'Conteúdo da publicação 4','2024-05-16 16:17:35'),(5,5,25,'Conteúdo da publicação 5','2024-05-16 16:17:35'),(6,6,26,'Conteúdo da publicação 6','2024-05-16 16:17:35'),(7,7,27,'Conteúdo da publicação 7','2024-05-16 16:17:35'),(8,8,28,'Conteúdo da publicação 8','2024-05-16 16:17:35'),(9,9,29,'Conteúdo da publicação 9','2024-05-16 16:17:35'),(10,10,30,'Conteúdo da publicação 10','2024-05-16 16:17:35'),(11,11,31,'Conteúdo da publicação 11','2024-05-16 16:17:35'),(12,12,32,'Conteúdo da publicação 12','2024-05-16 16:17:35'),(13,13,33,'Conteúdo da publicação 13','2024-05-16 16:17:35'),(14,14,34,'Conteúdo da publicação 14','2024-05-16 16:17:35'),(15,15,35,'Conteúdo da publicação 15','2024-05-16 16:17:35'),(16,16,36,'Conteúdo da publicação 16','2024-05-16 16:17:35'),(17,17,37,'Conteúdo da publicação 17','2024-05-16 16:17:35'),(18,18,38,'Conteúdo da publicação 18','2024-05-16 16:17:35'),(19,19,39,'Conteúdo da publicação 19','2024-05-16 16:17:35'),(20,20,40,'Conteúdo da publicação 20','2024-05-16 16:17:35'),(21,1,21,'Conteúdo da publicação 1','2024-05-16 16:21:44'),(22,2,22,'Conteúdo da publicação 2','2024-05-16 16:21:44'),(23,3,23,'Conteúdo da publicação 3','2024-05-16 16:21:44'),(24,4,24,'Conteúdo da publicação 4','2024-05-16 16:21:44'),(25,5,25,'Conteúdo da publicação 5','2024-05-16 16:21:44'),(26,6,26,'Conteúdo da publicação 6','2024-05-16 16:21:44'),(27,7,27,'Conteúdo da publicação 7','2024-05-16 16:21:44'),(28,8,28,'Conteúdo da publicação 8','2024-05-16 16:21:44'),(29,9,29,'Conteúdo da publicação 9','2024-05-16 16:21:44'),(30,10,30,'Conteúdo da publicação 10','2024-05-16 16:21:44'),(31,11,31,'Conteúdo da publicação 11','2024-05-16 16:21:44'),(32,12,32,'Conteúdo da publicação 12','2024-05-16 16:21:44'),(33,13,33,'Conteúdo da publicação 13','2024-05-16 16:21:44'),(34,14,34,'Conteúdo da publicação 14','2024-05-16 16:21:44'),(35,15,35,'Conteúdo da publicação 15','2024-05-16 16:21:44'),(36,16,36,'Conteúdo da publicação 16','2024-05-16 16:21:44'),(37,17,37,'Conteúdo da publicação 17','2024-05-16 16:21:44'),(38,18,38,'Conteúdo da publicação 18','2024-05-16 16:21:44'),(39,19,39,'Conteúdo da publicação 19','2024-05-16 16:21:44'),(40,20,40,'Conteúdo da publicação 20','2024-05-16 16:21:44');
/*!40000 ALTER TABLE `publicacoes_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacoes_usuarios`
--

DROP TABLE IF EXISTS `publicacoes_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacoes_usuarios` (
  `publicacao_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `conteudo` text NOT NULL,
  `data_publicacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`publicacao_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `publicacoes_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacoes_usuarios`
--

LOCK TABLES `publicacoes_usuarios` WRITE;
/*!40000 ALTER TABLE `publicacoes_usuarios` DISABLE KEYS */;
INSERT INTO `publicacoes_usuarios` VALUES (1,1,'Conteúdo da publicação 1','2024-05-16 16:37:23'),(2,2,'Conteúdo da publicação 2','2024-05-16 16:37:23'),(3,3,'Conteúdo da publicação 3','2024-05-16 16:37:23'),(4,4,'Conteúdo da publicação 4','2024-05-16 16:37:23'),(5,5,'Conteúdo da publicação 5','2024-05-16 16:37:23'),(6,6,'Conteúdo da publicação 6','2024-05-16 16:37:23'),(7,7,'Conteúdo da publicação 7','2024-05-16 16:37:23'),(8,8,'Conteúdo da publicação 8','2024-05-16 16:37:23'),(9,9,'Conteúdo da publicação 9','2024-05-16 16:37:23'),(10,10,'Conteúdo da publicação 10','2024-05-16 16:37:23'),(11,11,'Conteúdo da publicação 11','2024-05-16 16:37:23'),(12,12,'Conteúdo da publicação 12','2024-05-16 16:37:23'),(13,13,'Conteúdo da publicação 13','2024-05-16 16:37:23'),(14,14,'Conteúdo da publicação 14','2024-05-16 16:37:23'),(15,15,'Conteúdo da publicação 15','2024-05-16 16:37:23'),(16,16,'Conteúdo da publicação 16','2024-05-16 16:37:23'),(17,17,'Conteúdo da publicação 17','2024-05-16 16:37:23'),(18,18,'Conteúdo da publicação 18','2024-05-16 16:37:23'),(19,19,'Conteúdo da publicação 19','2024-05-16 16:37:23'),(20,20,'Conteúdo da publicação 20','2024-05-16 16:37:23'),(21,1,'Conteúdo da publicação 1','2024-05-16 19:34:33'),(22,1,'Conteúdo da publicação 2','2024-05-16 19:34:33'),(23,1,'Conteúdo da publicação 3','2024-05-16 19:34:33'),(24,1,'Conteúdo da publicação 4','2024-05-16 19:34:33'),(25,1,'Conteúdo da publicação 5','2024-05-16 19:34:33'),(26,4,'Conteúdo da publicação 6','2024-05-16 19:34:33'),(27,4,'Conteúdo da publicação 7','2024-05-16 19:34:33'),(28,4,'Conteúdo da publicação 8','2024-05-16 19:34:33'),(29,4,'Conteúdo da publicação 9','2024-05-16 19:34:33'),(30,4,'Conteúdo da publicação 10','2024-05-16 19:34:33'),(31,7,'Conteúdo da publicação 11','2024-05-16 19:34:33'),(32,7,'Conteúdo da publicação 12','2024-05-16 19:34:33'),(33,7,'Conteúdo da publicação 13','2024-05-16 19:34:33'),(34,7,'Conteúdo da publicação 14','2024-05-16 19:34:33'),(35,7,'Conteúdo da publicação 15','2024-05-16 19:34:33'),(36,8,'Conteúdo da publicação 16','2024-05-16 19:34:33'),(37,8,'Conteúdo da publicação 17','2024-05-16 19:34:33'),(38,8,'Conteúdo da publicação 18','2024-05-16 19:34:33'),(39,8,'Conteúdo da publicação 19','2024-05-16 19:34:33'),(40,8,'Conteúdo da publicação 20','2024-05-16 19:34:33'),(41,10,'Conteúdo da publicação 21','2024-05-16 19:34:33'),(42,10,'Conteúdo da publicação 22','2024-05-16 19:34:33'),(43,10,'Conteúdo da publicação 23','2024-05-16 19:34:33'),(44,10,'Conteúdo da publicação 24','2024-05-16 19:34:33'),(45,10,'Conteúdo da publicação 25','2024-05-16 19:34:33'),(46,13,'Conteúdo da publicação 26','2024-05-16 19:34:33'),(47,13,'Conteúdo da publicação 27','2024-05-16 19:34:33'),(48,13,'Conteúdo da publicação 28','2024-05-16 19:34:33'),(49,13,'Conteúdo da publicação 29','2024-05-16 19:34:33'),(50,13,'Conteúdo da publicação 30','2024-05-16 19:34:33'),(51,17,'Conteúdo da publicação 31','2024-05-16 19:34:33'),(52,17,'Conteúdo da publicação 32','2024-05-16 19:34:33'),(53,17,'Conteúdo da publicação 33','2024-05-16 19:34:33'),(54,17,'Conteúdo da publicação 34','2024-05-16 19:34:33'),(55,17,'Conteúdo da publicação 35','2024-05-16 19:34:33'),(56,18,'Conteúdo da publicação 36','2024-05-16 19:34:33'),(57,18,'Conteúdo da publicação 37','2024-05-16 19:34:33'),(58,18,'Conteúdo da publicação 38','2024-05-16 19:34:33'),(59,18,'Conteúdo da publicação 39','2024-05-16 19:34:33'),(60,18,'Conteúdo da publicação 40','2024-05-16 19:34:33'),(61,1,'Conteúdo da publicação 41','2024-05-16 19:34:33'),(62,1,'Conteúdo da publicação 42','2024-05-16 19:34:33'),(63,1,'Conteúdo da publicação 43','2024-05-16 19:34:33'),(64,1,'Conteúdo da publicação 44','2024-05-16 19:34:33'),(65,1,'Conteúdo da publicação 45','2024-05-16 19:34:33'),(66,4,'Conteúdo da publicação 46','2024-05-16 19:34:33'),(67,4,'Conteúdo da publicação 47','2024-05-16 19:34:33'),(68,4,'Conteúdo da publicação 48','2024-05-16 19:34:33'),(69,4,'Conteúdo da publicação 49','2024-05-16 19:34:33'),(70,4,'Conteúdo da publicação 50','2024-05-16 19:34:33');
/*!40000 ALTER TABLE `publicacoes_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidades`
--

DROP TABLE IF EXISTS `publicidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicidades` (
  `publicidade_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descricao` text,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`publicidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidades`
--

LOCK TABLES `publicidades` WRITE;
/*!40000 ALTER TABLE `publicidades` DISABLE KEYS */;
INSERT INTO `publicidades` VALUES (1,'Desconto em Academia','Matrícula gratuita e 50% de desconto na mensalidade.','2024-09-01','2024-09-15','Empresa G'),(2,'Lançamento de Livro','Novo livro do autor renomado disponível para pré-venda.','2024-10-01','2024-10-15','Empresa H'),(3,'Curso de Idiomas','Matrículas abertas para cursos de inglês, espanhol e mais.','2024-11-01','2024-11-15','Empresa I'),(4,'Desconto em Restaurantes','Desconto de 20% em diversos restaurantes da cidade.','2023-09-01','2023-09-15','Empresa D'),(5,'Promoção de Eletrônicos','Descontos imperdíveis em smartphones, TVs e mais.','2023-10-01','2023-10-15','Empresa E'),(6,'Oferta de Viagens','Pacotes promocionais para destinos nacionais e internacionais.','2023-11-01','2023-11-15','Empresa F'),(7,'Promoção de Verão','Descontos de até 50% em todos os produtos de verão!','2023-07-01','2023-07-15','Empresa A'),(8,'Novo Lançamento','Confira nosso novo produto que acaba de chegar ao mercado.','2023-08-01','2023-08-15','Empresa B'),(9,'Oferta Especial','Por tempo limitado, aproveite nossos descontos exclusivos!','2023-09-01','2023-09-15','Empresa C'),(10,'Desconto Especial de Verão','Aproveite nossos descontos especiais para o verão em uma ampla variedade de produtos!','2024-06-01','2024-08-31','Empresa A'),(11,'Lançamento do Novo Smartphone','Conheça o mais recente lançamento em tecnologia de smartphones com recursos inovadores.','2024-07-15','2024-08-15','Empresa B'),(12,'Oferta Imperdível de Viagem','Garanta sua viagem dos sonhos com preços incríveis em pacotes de viagens para destinos selecionados.','2024-06-20','2024-07-20','Agência de Viagens C'),(13,'Promoção de Aniversário','Celebre nosso aniversário conosco e aproveite descontos exclusivos em uma ampla variedade de produtos!','2024-09-01','2024-09-15','Empresa D'),(14,'Curso Online Gratuito','Participe do nosso curso online gratuito e adquira novos conhecimentos e habilidades.','2024-07-01','2024-07-31','Empresa E'),(15,'Desconto Especial de Inverno','Aproveite os dias frios com nossos descontos especiais em uma variedade de produtos para o inverno.','2024-06-01','2024-07-31','Empresa F'),(16,'Promoção Relâmpago','Corra e aproveite nossos descontos relâmpago em produtos selecionados por tempo limitado!','2024-06-15','2024-06-20','Empresa G'),(17,'Festival de Sabores','Participe do nosso festival de sabores e descubra novos pratos e delícias culinárias!','2024-08-10','2024-08-20','Restaurante H'),(18,'Desconto Especial de Volta às Aulas','Prepare-se para a volta às aulas com nossos descontos especiais em materiais escolares e mochilas.','2024-07-25','2024-08-15','Papelaria I'),(19,'Black Friday Antecipada','Antecipe a Black Friday e garanta descontos imperdíveis em uma variedade de produtos!','2024-10-01','2024-10-05','Empresa J');
/*!40000 ALTER TABLE `publicidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendacoes_amigos`
--

DROP TABLE IF EXISTS `recomendacoes_amigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recomendacoes_amigos` (
  `recomendacao_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `amigo_recomendado_id` int DEFAULT NULL,
  `data_recomendacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recomendacao_id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `amigo_recomendado_id` (`amigo_recomendado_id`),
  CONSTRAINT `recomendacoes_amigos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `recomendacoes_amigos_ibfk_2` FOREIGN KEY (`amigo_recomendado_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendacoes_amigos`
--

LOCK TABLES `recomendacoes_amigos` WRITE;
/*!40000 ALTER TABLE `recomendacoes_amigos` DISABLE KEYS */;
INSERT INTO `recomendacoes_amigos` VALUES (1,1,21,'2024-05-16 16:30:50'),(2,2,22,'2024-05-16 16:30:50'),(3,3,23,'2024-05-16 16:30:50'),(4,4,24,'2024-05-16 16:30:50'),(5,5,25,'2024-05-16 16:30:50'),(6,6,26,'2024-05-16 16:30:50'),(7,7,27,'2024-05-16 16:30:50'),(8,8,28,'2024-05-16 16:30:50'),(9,9,29,'2024-05-16 16:30:50'),(10,10,30,'2024-05-16 16:30:50'),(11,11,31,'2024-05-16 16:30:50'),(12,12,32,'2024-05-16 16:30:50'),(13,13,33,'2024-05-16 16:30:50'),(14,14,34,'2024-05-16 16:30:50'),(15,15,35,'2024-05-16 16:30:50'),(16,16,36,'2024-05-16 16:30:50'),(17,17,37,'2024-05-16 16:30:50'),(18,18,38,'2024-05-16 16:30:50'),(19,19,39,'2024-05-16 16:30:50'),(20,20,40,'2024-05-16 16:30:50');
/*!40000 ALTER TABLE `recomendacoes_amigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacoes_moderacao_grupos`
--

DROP TABLE IF EXISTS `solicitacoes_moderacao_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacoes_moderacao_grupos` (
  `solicitacao_id` int NOT NULL AUTO_INCREMENT,
  `grupo_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `data_solicitacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`solicitacao_id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `solicitacoes_moderacao_grupos_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`),
  CONSTRAINT `solicitacoes_moderacao_grupos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacoes_moderacao_grupos`
--

LOCK TABLES `solicitacoes_moderacao_grupos` WRITE;
/*!40000 ALTER TABLE `solicitacoes_moderacao_grupos` DISABLE KEYS */;
INSERT INTO `solicitacoes_moderacao_grupos` VALUES (1,1,21,'2024-05-16 16:43:09'),(2,2,22,'2024-05-16 16:43:09'),(3,3,23,'2024-05-16 16:43:09'),(4,4,24,'2024-05-16 16:43:09'),(5,5,25,'2024-05-16 16:43:09'),(6,6,26,'2024-05-16 16:43:09'),(7,7,27,'2024-05-16 16:43:09'),(8,8,28,'2024-05-16 16:43:09'),(9,9,29,'2024-05-16 16:43:09'),(10,10,30,'2024-05-16 16:43:09'),(11,11,31,'2024-05-16 16:43:09'),(12,12,32,'2024-05-16 16:43:09'),(13,13,33,'2024-05-16 16:43:09'),(14,14,34,'2024-05-16 16:43:09'),(15,15,35,'2024-05-16 16:43:09'),(16,16,36,'2024-05-16 16:43:09'),(17,17,37,'2024-05-16 16:43:09'),(18,18,38,'2024-05-16 16:43:09'),(19,19,39,'2024-05-16 16:43:09'),(20,20,40,'2024-05-16 16:43:09');
/*!40000 ALTER TABLE `solicitacoes_moderacao_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solucoes_denuncias`
--

DROP TABLE IF EXISTS `solucoes_denuncias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solucoes_denuncias` (
  `solucao_id` int NOT NULL AUTO_INCREMENT,
  `denuncia_id` int NOT NULL,
  `moderador_id` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `data_resolucao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `solucao_aplicada` text,
  PRIMARY KEY (`solucao_id`),
  KEY `denuncia_id` (`denuncia_id`),
  KEY `moderador_id` (`moderador_id`),
  CONSTRAINT `solucoes_denuncias_ibfk_1` FOREIGN KEY (`denuncia_id`) REFERENCES `denuncias` (`denuncia_id`),
  CONSTRAINT `solucoes_denuncias_ibfk_2` FOREIGN KEY (`moderador_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solucoes_denuncias`
--

LOCK TABLES `solucoes_denuncias` WRITE;
/*!40000 ALTER TABLE `solucoes_denuncias` DISABLE KEYS */;
INSERT INTO `solucoes_denuncias` VALUES (1,1,1,'Resolvida','2024-05-01 13:00:00','Usuário advertido.'),(2,2,2,'Resolvida','2024-05-02 14:00:00','Conteúdo removido.'),(3,3,3,'Resolvida','2024-05-03 15:00:00','Usuário banido por 7 dias.'),(4,4,4,'Resolvida','2024-05-04 16:00:00','Comentário editado.'),(5,5,5,'Resolvida','2024-05-05 17:00:00','Conta suspensa temporariamente.'),(6,6,6,'Resolvida','2024-05-06 18:00:00','Postagem marcada como sensível.'),(7,7,7,'Resolvida','2024-05-07 19:00:00','Usuário desativado por 30 dias.'),(8,8,8,'Resolvida','2024-05-08 20:00:00','Mensagem ofensiva removida.'),(9,9,9,'Resolvida','2024-05-09 21:00:00','Acesso limitado a certas funcionalidades.'),(10,10,10,'Resolvida','2024-05-10 22:00:00','Advertência final emitida.'),(11,11,11,'Resolvida','2024-05-11 13:00:00','Postagem ofensiva removida.'),(12,12,12,'Resolvida','2024-05-12 14:00:00','Usuário recebeu uma advertência formal.'),(13,13,13,'Resolvida','2024-05-13 15:00:00','Conteúdo impróprio editado.'),(14,14,14,'Resolvida','2024-05-14 16:00:00','Restrição de postagem temporária aplicada.'),(15,15,15,'Resolvida','2024-05-15 17:00:00','Perfil do usuário investigado e ação tomada.'),(16,16,16,'Resolvida','2024-05-16 18:00:00','Usuário educado sobre regras da comunidade.'),(17,17,17,'Resolvida','2024-05-17 19:00:00','Conteúdo marcado como inapropriado.'),(18,18,18,'Resolvida','2024-05-18 20:00:00','Usuário banido permanentemente.'),(19,19,19,'Resolvida','2024-05-19 21:00:00','Denúncia arquivada após resolução.'),(20,20,20,'Resolvida','2024-05-20 22:00:00','Usuário recebeu advertência final.'),(21,21,1,'Resolvida','2024-05-21 13:00:00','Usuário bloqueado temporariamente.'),(22,22,2,'Resolvida','2024-05-22 14:00:00','Conteúdo ofensivo removido.'),(23,23,3,'Resolvida','2024-05-23 15:00:00','Advertência emitida ao usuário.'),(24,24,4,'Resolvida','2024-05-24 16:00:00','Postagem editada para remover conteúdo inadequado.'),(25,25,5,'Resolvida','2024-05-25 17:00:00','Usuário recebeu uma suspensão temporária.'),(26,26,6,'Resolvida','2024-05-26 18:00:00','Denúncia tratada e arquivada.'),(27,27,7,'Resolvida','2024-05-27 19:00:00','Conteúdo impróprio marcado e removido.'),(28,28,8,'Resolvida','2024-05-28 20:00:00','Usuário orientado sobre conduta adequada.'),(29,29,9,'Resolvida','2024-05-29 21:00:00','Postagem em questão revisada e ajustada.'),(30,30,10,'Resolvida','2024-05-30 22:00:00','Usuário permanentemente banido após análise.'),(31,31,11,'Resolvida','2024-05-31 13:00:00','Moderador revisou e aceitou a solução.'),(32,32,12,'Resolvida','2024-06-01 14:00:00','Conteúdo ofensivo editado e usuário advertido.'),(33,33,13,'Resolvida','2024-06-02 15:00:00','Usuário recebeu uma última advertência.'),(34,34,14,'Resolvida','2024-06-03 16:00:00','Perfil do usuário restrito devido a múltiplas denúncias.'),(35,35,15,'Resolvida','2024-06-04 17:00:00','Denúncia verificada e ação tomada contra o usuário.'),(36,36,16,'Resolvida','2024-06-05 13:00:00','Denúncia revisada e conteúdo removido.'),(37,37,17,'Resolvida','2024-06-06 14:00:00','Usuário advertido novamente.'),(38,38,18,'Resolvida','2024-06-07 15:00:00','Postagem ofensiva editada.'),(39,39,19,'Resolvida','2024-06-08 16:00:00','Ação disciplinar aplicada ao usuário.'),(40,40,20,'Resolvida','2024-06-09 17:00:00','Denúncia arquivada após revisão.'),(41,41,1,'Resolvida','2024-06-10 18:00:00','Usuário desativado temporariamente.'),(42,42,2,'Resolvida','2024-06-11 19:00:00','Conteúdo ofensivo marcado e removido.'),(43,43,3,'Resolvida','2024-06-12 20:00:00','Advertência final emitida ao usuário.'),(44,44,4,'Resolvida','2024-06-13 21:00:00','Postagem editada e usuário advertido.'),(45,45,5,'Resolvida','2024-06-14 22:00:00','Usuário banido por repetidas infrações.');
/*!40000 ALTER TABLE `solucoes_denuncias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_insert_solucoes_denuncias` AFTER INSERT ON `solucoes_denuncias` FOR EACH ROW BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Insert', NEW.status, NEW.data_resolucao, NEW.solucao_aplicada, NEW.solucao_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_update_solucoes_denuncias` AFTER UPDATE ON `solucoes_denuncias` FOR EACH ROW BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Antigo', OLD.status, OLD.data_resolucao, OLD.solucao_aplicada, OLD.solucao_id);
    
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Atualização', NEW.status, NEW.data_resolucao, NEW.solucao_aplicada, NEW.solucao_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_delete_solucoes_denuncias` AFTER DELETE ON `solucoes_denuncias` FOR EACH ROW BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Delete', OLD.status, OLD.data_resolucao, OLD.solucao_aplicada, OLD.solucao_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tags_eventos`
--

DROP TABLE IF EXISTS `tags_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_eventos` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_eventos`
--

LOCK TABLES `tags_eventos` WRITE;
/*!40000 ALTER TABLE `tags_eventos` DISABLE KEYS */;
INSERT INTO `tags_eventos` VALUES (1,'conferência','Eventos de grande porte com múltiplas palestras e workshops.'),(2,'workshop','Eventos práticos com foco em aprendizado e desenvolvimento de habilidades.'),(3,'seminário','Eventos acadêmicos ou profissionais com apresentações e debates sobre um tema específico.'),(4,'palestra','Eventos informativos com uma única apresentação sobre um tópico específico.'),(5,'feira','Eventos comerciais com exposição de produtos e serviços de diversas empresas.'),(6,'congresso','Eventos científicos ou políticos com participação de especialistas e autoridades.'),(7,'festival','Eventos culturais ou artísticos com diversas atividades e apresentações.'),(8,'webinar','Eventos online transmitidos via internet com apresentações e interações em tempo real.'),(9,'lançamento','Eventos para apresentar e promover o lançamento de produtos ou serviços.'),(10,'treinamento','Eventos voltados para o treinamento e capacitação de profissionais.'),(11,'meetup','Eventos informais para networking e troca de experiências entre profissionais.'),(12,'convenção','Eventos de organizações ou grupos com participação de membros e líderes.'),(13,'tour','Eventos de visitação a locais turísticos ou culturais com guias especializados.'),(14,'show','Eventos de entretenimento com apresentações musicais, teatrais ou artísticas.'),(15,'exposição','Eventos com exibição de obras de arte, objetos históricos ou coleções temáticas.'),(16,'competição','Eventos esportivos ou de habilidades com disputas entre participantes.'),(17,'inauguração','Eventos para marcar a abertura oficial de um novo estabelecimento ou local.'),(18,'debate','Eventos com discussões entre especialistas ou representantes sobre temas relevantes.'),(19,'tour virtual','Eventos online que oferecem visitas virtuais a locais de interesse.'),(20,'feira de empregos','Eventos para conexão entre empresas e profissionais em busca de oportunidades de trabalho.');
/*!40000 ALTER TABLE `tags_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_postagens`
--

DROP TABLE IF EXISTS `tags_postagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_postagens` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_postagens`
--

LOCK TABLES `tags_postagens` WRITE;
/*!40000 ALTER TABLE `tags_postagens` DISABLE KEYS */;
INSERT INTO `tags_postagens` VALUES (1,'motivação','Conteúdos que inspiram e motivam'),(2,'sucesso','Histórias de sucesso e conquistas'),(3,'gratidão','Expressões de gratidão e apreciação'),(4,'positividade','Mensagens positivas e otimistas'),(5,'desenvolvimento_pessoal','Dicas e reflexões sobre desenvolvimento pessoal'),(6,'inspiração','Fonte de inspiração e ideias criativas'),(7,'felicidade','Momentos e sentimentos de felicidade'),(8,'perseverança','Exemplos de perseverança e superação'),(9,'realização','Conquistas e realizações pessoais'),(10,'Viagem','Publicações relacionadas a viagens'),(11,'Comida','Publicações relacionadas a comida'),(12,'Natureza','Publicações relacionadas à natureza'),(13,'Arte','Publicações relacionadas a arte'),(14,'Tecnologia','Publicações relacionadas a tecnologia'),(15,'Esportes','Publicações relacionadas a esportes'),(16,'Música','Publicações relacionadas a música'),(17,'Moda','Publicações relacionadas a moda'),(18,'Filmes','Publicações relacionadas a filmes'),(19,'Livros','Publicações relacionadas a livros'),(20,'Animais','Publicações relacionadas a animais'),(21,'Saúde','Publicações relacionadas a saúde'),(22,'Negócios','Publicações relacionadas a negócios'),(23,'Educação','Publicações relacionadas a educação'),(24,'Humor','Publicações relacionadas a humor');
/*!40000 ALTER TABLE `tags_postagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT 'Zezinho',
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `email` (`email`),
  KEY `IDX_nome_Nasc` (`nome`,`data_nascimento`),
  CONSTRAINT `CHK_usuarioAno` CHECK ((year(`data_nascimento`) <= 2008))
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'João Silva','joao@email.com','senha123','1990-05-15','Rua A, 123','123456789','Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),(2,'Maria Santos','maria@email.com','senha456','1985-10-20','Rua B, 456','987654321','Nulla convallis libero at nulla vehicula, quis tincidunt nisi lobortis.'),(3,'Pedro Lima','pedro@email.com','senha789','1992-03-25','Rua C, 789','111222333','Fusce id enim non justo pulvinar tincidunt.'),(4,'Ana Oliveira','ana@email.com','senha789','1993-08-10','Rua D, 101','999888777','Vestibulum et metus nec ante sodales luctus.'),(5,'Carlos Ferreira','carlos@email.com','senha101','1988-11-05','Rua E, 202','333444555','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),(6,'Julia Costa','julia@email.com','senha111','1995-02-20','Rua F, 303','666777888','Sed at justo ullamcorper, dignissim risus et, eleifend neque.'),(7,'Fernando Santos','fernando@email.com','senha121','1990-04-25','Rua G, 404','111222333','Donec a lacus aliquam, efficitur eros sed, interdum justo.'),(8,'Patricia Lima','patricia@email.com','senha131','1987-09-15','Rua H, 505','444555666','Fusce scelerisque libero at eros fermentum, sed fermentum purus faucibus.'),(9,'Roberto Almeida','roberto@email.com','senha141','1991-12-30','Rua I, 606','777888999','Phasellus a tortor sed urna dictum feugiat.'),(10,'Gabriela Pereira','gabriela@email.com','senha151','1994-03-08','Rua J, 707','888999000','Integer congue nisi at posuere commodo.'),(11,'Lucas Vieira','lucas@email.com','senha161','1989-06-12','Rua K, 808','000111222','Vestibulum nec sapien ac risus rutrum cursus.'),(12,'Amanda Rodrigues','amanda@email.com','senha171','1992-01-18','Rua L, 909','222333444','Quisque eget leo ut libero ullamcorper dignissim.'),(13,'Eduardo Oliveira','eduardo@email.com','senha181','1986-07-23','Rua M, 1010','555666777','Aliquam in odio sit amet sem congue auctor.'),(14,'Rafaela Sousa','rafaela@email.com','senha191','1993-10-12','Rua N, 1111','777888999','Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),(15,'Marcos Silva','marcos@email.com','senha201','1988-05-28','Rua O, 1212','111222333','Sed vitae feugiat lorem, eget luctus ipsum.'),(16,'Camila Santos','camila@email.com','senha211','1990-08-15','Rua P, 1313','444555666','Fusce sit amet ultricies mauris.'),(17,'Gustavo Oliveira','gustavo@email.com','senha221','1995-01-30','Rua Q, 1414','888999000','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),(18,'Isabela Pereira','isabela@email.com','senha231','1986-12-18','Rua R, 1515','222333444','Curabitur vitae augue id odio mollis bibendum.'),(19,'Diego Almeida','diego@email.com','senha241','1991-07-23','Rua S, 1616','555666777','Proin vel ex at elit efficitur egestas.'),(20,'Laura Costa','laura@email.com','senha251','1989-04-12','Rua T, 1717','777888999','Maecenas ut ipsum euismod, rhoncus turpis in, cursus magna.'),(21,'Mariana Vieira','mariana@email.com','senha261','1994-09-28','Rua U, 1818','111222333','Nullam aliquam ante sit amet lectus rhoncus fringilla.'),(22,'Felipe Rodrigues','felipe@email.com','senha271','1993-06-15','Rua V, 1919','444555666','Pellentesque sollicitudin urna nec purus posuere, sed consequat eros convallis.'),(23,'Natalia Sousa','natalia@email.com','senha281','1987-11-30','Rua W, 2020','888999000','Vivamus at magna sed elit feugiat accumsan.'),(24,'Thiago Costa','thiago@email.com','senha291','1990-03-18','Rua X, 2121','222333444','Fusce id ex a ipsum faucibus tincidunt.'),(25,'Jessica Lima','jessica@email.com','senha301','1988-08-23','Rua Y, 2222','555666777','Maecenas id felis ut lacus finibus convallis.'),(26,'Vinicius Almeida','vinicius@email.com','senha311','1995-02-10','Rua Z, 2323','777888999','Praesent ullamcorper risus vitae ligula ultricies, vel sollicitudin arcu porttitor.'),(27,'Ana Silva','ana.silva@example.com','senha123','1990-05-10','Rua das Flores, 123','(11) 98765-4321','Olá! Eu sou a Ana, adoro viajar e conhecer novas culturas.'),(28,'João Santos','joao.santos@example.com','abcd1234','1985-08-20','Av. Paulista, 456','(11) 98765-1234','Oi! Me chamo João, sou apaixonado por tecnologia e games.'),(29,'Maria Oliveira','maria.oliveira@example.com','senha456','1992-02-15','Rua do Bosque, 789','(11) 98765-5678','Olá, pessoal! Eu sou a Maria e adoro ler e escrever.'),(30,'Pedro Souza','pedro.souza@example.com','abcd5678','1988-10-30','Av. Principal, 789','(11) 98765-9012','E aí! Sou o Pedro, um entusiasta da música e da natureza.'),(31,'Juliana Lima','juliana.lima@example.com','senha789','1995-03-25','Rua das Palmeiras, 456','(11) 98765-3456','Oi, pessoal! Eu sou a Juliana, adoro cozinhar e compartilhar receitas.'),(32,'Lucas Vieira','lucas.vieira@example.com','abcd9876','1998-07-12','Av. das Avenidas, 123','(11) 98765-7890','E aí, galera! Me chamo Lucas, sou um aficionado por esportes e viagens.'),(33,'Camila Almeida','camila.almeida@example.com','senha246','1993-11-05','Rua da Paz, 789','(11) 98765-2345','Oi, pessoal! Eu sou a Camila, adoro arte e cultura.'),(34,'Felipe Castro','felipe.castro@example.com','abcd5432','1990-09-18','Av. da Liberdade, 456','(11) 98765-6789','E aí, pessoal! Meu nome é Felipe e sou um entusiasta por fotografia e tecnologia.'),(35,'Isabela Santos','isabela.santos@example.com','senha135','1987-04-28','Rua dos Sonhos, 123','(11) 98765-8901','Olá a todos! Me chamo Isabela, adoro arte e jardinagem.'),(36,'Rafaela Oliveira','rafaela.oliveira@example.com','abcd3210','1994-06-15','Av. das Flores, 456','(11) 98765-6789','Oi, pessoal! Me chamo Rafaela e adoro esportes e aventuras.'),(37,'Gustavo Lima','gustavo.lima@example.com','senha7890','1991-12-05','Rua da Alegria, 789','(11) 98765-1234','E aí, galera! Meu nome é Gustavo e sou apaixonado por música e tecnologia.'),(38,'Fernanda Costa','fernanda.costa@example.com','abcd2468','1989-08-30','Av. Central, 123','(11) 98765-5678','Oi, pessoal! Sou a Fernanda e adoro ler e viajar.'),(39,'Daniel Santos','daniel.santos@example.com','senha1357','1997-02-10','Rua da Praia, 456','(11) 98765-9012','E aí, pessoal! Me chamo Daniel e sou um aficionado por esportes e tecnologia.'),(40,'Carolina Souza','carolina.souza@example.com','abcd7531','1996-05-20','Av. dos Estados, 789','(11) 98765-2345','Oi, pessoal! Me chamo Carolina e adoro arte e cinema.'),(41,'Rodrigo Almeida','rodrigo.almeida@example.com','senha159','1990-10-15','Rua da Esperança, 123','(11) 98765-6789','E aí, pessoal! Meu nome é Rodrigo e sou apaixonado por fotografia e natureza.'),(42,'Bruna Silva','bruna.silva@example.com','abcd3579','1993-03-05','Av. das Estrelas, 456','(11) 98765-0123','Oi, pessoal! Me chamo Bruna e adoro cozinhar e ler.'),(43,'Marcelo Oliveira','marcelo.oliveira@example.com','senha7531','1988-07-25','Rua das Águas, 789','(11) 98765-4567','E aí, pessoal! Me chamo Marcelo e sou um entusiasta por esportes e viagens.'),(44,'Amanda Costa','amanda.costa@example.com','abcd9513','1992-09-18','Av. das Montanhas, 123','(11) 98765-8901','Oi, pessoal! Me chamo Amanda e adoro arte e jardinagem.'),(45,'Gabriel Lima','gabriel.lima@example.com','senha7530','1985-11-20','Rua das Pedras, 456','(11) 98765-2345','E aí, pessoal! Meu nome é Gabriel e sou apaixonado por música e tecnologia.'),(46,'Laura Almeida','laura.almeida@example.com','abcd7530','1991-12-10','Av. das Flores, 789','(11) 98765-6789','Oi, pessoal! Me chamo Laura e adoro arte e cinema.'),(47,'Carlos Silva','carlos@example.com','senha123','1992-07-10','Rua D, 789','999888777','Descrição do Carlos Silva'),(48,'Ana Oliveira','ana@example.com','senha456','1998-04-25','Av. E, 456','555444333','Descrição da Ana Oliveira'),(49,'Felipe Santos','felipe@example.com','senha789','1989-12-15','Rua F, 123','222333444','Descrição do Felipe Santos'),(50,'Juliana Souza','juliana@example.com','senha987','1995-09-30','Rua G, 456','777666555','Descrição da Juliana Souza'),(51,'Lucas Pereira','lucas@example.com','senha321','1993-06-20','Av. H, 789','333222111','Descrição do Lucas Pereira'),(52,'Fernanda Lima','fernanda@example.com','senha654','1990-02-05','Rua I, 123','888777666','Descrição da Fernanda Lima'),(53,'Gustavo Costa','gustavo@example.com','senha987','1987-11-12','Av. J, 456','444555666','Descrição do Gustavo Costa'),(54,'Mariana Almeida','mariana@example.com','senha321','1997-08-18','Rua K, 789','999000111','Descrição da Mariana Almeida'),(55,'Rafaela Carvalho','rafaela@example.com','senha654','1994-03-27','Av. L, 123','666777888','Descrição da Rafaela Carvalho'),(56,'Rodrigo Gonçalves','rodrigo@example.com','senha123','1991-10-14','Rua M, 456','222111000','Descrição do Rodrigo Gonçalves'),(57,'Camila Barbosa','camila@example.com','senha456','1988-05-29','Av. N, 789','888999000','Descrição da Camila Barbosa'),(58,'Isabela Martins','isabela@example.com','senha789','1996-01-08','Rua O, 123','333444555','Descrição da Isabela Martins'),(59,'Thiago Lima','thiago@example.com','senha987','1999-06-22','Av. P, 456','777888999','Descrição do Thiago Lima'),(60,'Amanda Rocha','amanda@example.com','senha321','1992-09-11','Rua Q, 789','111222333','Descrição da Amanda Rocha'),(61,'Vinicius Oliveira','vinicius@example.com','senha654','1985-07-07','Av. R, 123','555666777','Descrição do Vinicius Oliveira'),(62,'Natalia Santos','natalia@example.com','senha123','1984-04-30','Rua S, 456','999000111','Descrição da Natalia Santos'),(63,'Luiza Silva','luiza@example.com','senha456','1993-11-17','Av. T, 789','222333444','Descrição da Luiza Silva'),(64,'Gabriel Pereira','gabriel@example.com','senha789','1990-08-24','Rua U, 123','777888999','Descrição do Gabriel Pereira'),(65,'Paula Costa','paula@example.com','senha987','1987-03-19','Av. V, 456','111222333','Descrição da Paula Costa'),(66,'Daniel Almeida','daniel@example.com','senha321','1994-12-03','Rua W, 789','444555666','Descrição do Daniel Almeida'),(67,'Laura Santos','laura@example.com','senha123','1991-05-12','Rua X, 456','999888777','Descrição da Laura Santos'),(68,'Bruno Oliveira','bruno@example.com','senha456','1988-10-25','Av. Y, 789','555444333','Descrição do Bruno Oliveira'),(69,'Carolina Almeida','carolina@example.com','senha789','1997-02-15','Rua Z, 123','222333444','Descrição da Carolina Almeida'),(70,'Marcelo Souza','marcelo@example.com','senha987','1985-09-30','Av. A1, 456','777666555','Descrição do Marcelo Souza'),(71,'Luana Silva','luana@example.com','senha321','1992-06-20','Rua B1, 789','333222111','Descrição da Luana Silva'),(72,'Diego Pereira','diego@example.com','senha654','1990-02-05','Av. C1, 123','888777666','Descrição do Diego Pereira'),(73,'Bianca Costa','bianca@example.com','senha987','1987-11-12','Rua D1, 456','444555666','Descrição da Bianca Costa'),(74,'Fernando Oliveira','fernando@example.com','senha321','1995-08-18','Av. E1, 789','999000111','Descrição do Fernando Oliveira'),(75,'Patricia Lima','patricia@example.com','senha654','1994-03-27','Rua F1, 123','666777888','Descrição da Patricia Lima'),(76,'Roberto Gonçalves','roberto@example.com','senha123','1991-10-14','Av. G1, 456','222111000','Descrição do Roberto Gonçalves'),(77,'Silvia Barbosa','silvia@example.com','senha456','1988-05-29','Rua H1, 789','888999000','Descrição da Silvia Barbosa'),(78,'Eduardo Martins','eduardo@example.com','senha789','1996-01-08','Av. I1, 123','333444555','Descrição do Eduardo Martins'),(79,'Mariana Lima','mariana2@example.com','senha987','1999-06-22','Rua J1, 456','777888999','Descrição da Mariana Lima'),(80,'Ricardo Rocha','ricardo@example.com','senha321','1992-09-11','Av. K1, 789','111222333','Descrição do Ricardo Rocha'),(81,'Sandra Oliveira','sandra@example.com','senha654','1985-07-07','Rua L1, 123','555666777','Descrição da Sandra Oliveira'),(82,'Marcos Santos','marcos@example.com','senha123','1991-05-12','Rua M1, 456','999888777','Descrição do Marcos Santos'),(83,'Tatiane Oliveira','tatiane@example.com','senha456','1988-10-25','Av. N1, 789','555444333','Descrição da Tatiane Oliveira'),(84,'Renato Almeida','renato@example.com','senha789','1997-02-15','Rua O1, 123','222333444','Descrição do Renato Almeida'),(85,'Camila Souza','camila2@example.com','senha987','1985-09-30','Av. P1, 456','777666555','Descrição da Camila Souza'),(86,'Guilherme Silva','guilherme@example.com','senha321','1992-06-20','Rua Q1, 789','333222111','Descrição do Guilherme Silva'),(87,'Aline Pereira','aline@example.com','senha654','1990-02-05','Av. R1, 123','888777666','Descrição da Aline Pereira'),(88,'Marcela Costa','marcela@example.com','senha987','1987-11-12','Rua S1, 456','444555666','Descrição da Marcela Costa'),(89,'Raphael Oliveira','raphael@example.com','senha321','1995-08-18','Av. T1, 789','999000111','Descrição do Raphael Oliveira'),(90,'Carla Lima','carla2@example.com','senha654','1994-03-27','Rua U1, 123','666777888','Descrição da Carla Lima'),(91,'Henrique Gonçalves','henrique@example.com','senha123','1991-10-14','Av. V1, 456','222111000','Descrição do Henrique Gonçalves'),(92,'Roberta Barbosa','roberta@example.com','senha456','1988-05-29','Rua X1, 789','888999000','Descrição da Roberta Barbosa'),(93,'Luciana Martins','luciana@example.com','senha789','1996-01-08','Av. Y1, 123','333444555','Descrição da Luciana Martins'),(94,'Marcelo Lima','marcelo3@example.com','senha987','1999-06-22','Rua Z1, 456','777888999','Descrição do Marcelo Lima'),(95,'Monica Rocha','monica@example.com','senha321','1992-09-11','Av. A2, 789','111222333','Descrição da Monica Rocha'),(96,'Cristiano Oliveira','cristiano@example.com','senha654','1985-07-07','Rua B2, 123','555666777','Descrição do Cristiano Oliveira'),(97,'Andreia Santos','andreia@example.com','senha123','1991-05-12','Av. C2, 456','999888777','Descrição da Andreia Santos'),(98,'Lucas Oliveira','lucas2@example.com','senha456','1988-10-25','Rua D2, 789','555444333','Descrição do Lucas Oliveira'),(99,'Bruna Almeida','bruna@example.com','senha789','1997-02-15','Av. E2, 123','222333444','Descrição da Bruna Almeida'),(100,'Fabio Souza','fabio@example.com','senha987','1985-09-30','Rua F2, 456','777666555','Descrição do Fabio Souza'),(101,'Patricia Silva','patricia2@example.com','senha321','1992-06-20','Av. G2, 789','333222111','Descrição da Patricia Silva'),(102,'Jackson Silva','jaw.silva@example.com','senha123','1985-02-15','Rua das Flores, 123','11987654321','Gosto de jogar futebol aos fins de semana.'),(103,'Mariane Oliveira','mariane.oliveira@example.com','senha123','1990-06-30','Avenida Paulista, 456','11876543210','Amo viajar e conhecer novas culturas.'),(104,'Pedroca Sousa','pedroca.sousa@example.com','senha123','1988-11-22','Rua dos Andradas, 789','11999887766','Engenheiro de software apaixonado por tecnologia.'),(105,'Ana Carol','anaC.costa@example.com','senha123','1992-04-12','Avenida Ipiranga, 101','11881234567','Adoro ler livros de ficção científica.'),(106,'Carlin Lima','carlin.lima@example.com','senha123','1985-12-10','Rua das Palmeiras, 202','11988776655','Cozinheiro profissional e amante da culinária francesa.'),(107,'Fernands Souza','fernands.souza@example.com','senha123','1987-05-25','Rua Augusta, 303','11889966554','Designer gráfica com paixão por arte digital.'),(108,'Ricarda Pereira','ricarda.pereira@example.com','senha123','1989-09-14','Rua Bela Cintra, 404','11998877665','Corredor de maratonas e entusiasta de fitness.'),(109,'Luciano Rocha','luciano.rocha@example.com','senha123','1991-01-18','Avenida Consolação, 505','11997766554','Música clássica é minha grande paixão.'),(110,'Marcos Diggas','marcos.digaas@example.com','senha123','1986-03-20','Rua Haddock Lobo, 606','11996655443','Aficionado por carros antigos e mecânica.'),(111,'Patrícia Alameida','patricia.alameida@example.com','senha123','1993-07-28','Rua Oscar Freire, 707','11897765432','Amo fotografia e capturar momentos especiais.'),(112,'Andréia Martins','andreia.martins@example.com','senha123','1984-10-10','Avenida Brigadeiro Faria Lima, 808','11887654321','Fã de esportes radicais e aventuras ao ar livre.'),(113,'Juliano Santoso','juliano.santoso@example.com','senha123','1987-02-05','Rua da Consolação, 909','11999887755','Professora de yoga e meditação.'),(114,'Brunos Alves','brunos.alves@example.com','senha123','1990-05-12','Avenida Rebouças, 1010','11988776543','Desenvolvedor de jogos e entusiasta de realidade virtual.'),(115,'Paulo Ribeiro','paulos.ribeiro@example.com','senha123','1992-08-15','Rua Pamplona, 1111','11977665544','Gosto de jardinagem e cultivo de plantas.'),(116,'Rafaela Correia','rafaela.correia@example.com','senha123','1988-11-30','Avenida Nove de Julho, 1212','11966554433','Astrônomo amador e observador de estrelas.'),(117,'Laris Lima','laris.lima@example.com','senha123','1991-03-25','Rua Barão de Limeira, 1313','11887766554','Dançarina de ballet e professora de dança.'),(118,'Thiago Fernandes','thiago.fernandes@example.com','senha123','1985-07-22','Rua 25 de Março, 1414','11889977665','Chef de cozinha especializado em gastronomia molecular.'),(119,'Camilo Azevedo','camilo.azevedo@example.com','senha123','1990-09-18','Avenida Presidente Juscelino Kubitschek, 1515','11998877654','Artista plástica e escultora.'),(120,'Vinícius Mel','vinicius.melos@example.com','senha123','1988-12-29','Rua da Mooca, 1616','11977665543','Apreciador de vinhos e sommelier.'),(121,'Isabel Castros','isabel.castro@example.com','senha123','1991-04-10','Avenida Ipiranga, 1717','11966554432','Pianista e compositora clássica.'),(122,'Fábiola Gomes','fabio.gomes@example.com','senha123','1987-08-08','Rua Frei Caneca, 1818','11955443322','Surfista e instrutor de surf.'),(123,'Roberto Duarte','roberto.duarte@example.com','senha123','1992-11-11','Rua Antônio de Godói, 1919','11944332211','Engenheira ambiental e defensora do meio ambiente.'),(124,'Daniela Araújo','daniela.araujo@example.com','senha123','1985-02-25','Avenida Angélica, 2020','11933221100','Analista de sistemas e entusiasta de inteligência artificial.'),(125,'Amada Lopes','ama.lopes@example.com','senha123','1990-06-06','Rua da Glória, 2121','11922110099','Médica veterinária e amante dos animais.'),(126,'Eduarda Moreira','eduarda.moreira@example.com','senha123','1989-10-19','Rua Vergueiro, 2222','11911009988','Cineasta e produtor de documentários.'),(152,'leiandra','brunoa.souza@example.com','senha456','1995-07-22','Avenida Central, 456','2222-2222','Bio de Bruno Souza'),(153,'Bruna Armeira Souza','brunoar.souza@example.com','senha456','1995-07-22','Avenida Central, 456','2222-2222','Bio de Bruno Souza');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_insert_usuario` BEFORE INSERT ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.email, NEW.senha, NEW.endereco, NEW.telefone, NEW.data_nascimento, NEW.bio, NEW.usuario_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_update_usuario` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ('Antigo', OLD.nome, OLD.email, OLD.senha, OLD.endereco, OLD.telefone, OLD.data_nascimento, OLD.bio, OLD.usuario_id);
    
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ('Atualização', NEW.nome, NEW.email, NEW.senha, NEW.endereco, NEW.telefone, NEW.data_nascimento, NEW.bio, NEW.usuario_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_delete_usuario` BEFORE DELETE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO log_usuario
	(operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.email, OLD.senha, OLD.endereco, OLD.telefone, OLD.data_nascimento, OLD.bio, OLD.usuario_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'redesocialdb'
--

--
-- Dumping routines for database 'redesocialdb'
--

--
-- Final view structure for view `lista_de_aniversariantes`
--

/*!50001 DROP VIEW IF EXISTS `lista_de_aniversariantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_de_aniversariantes` AS select concat(row_number() OVER () ,' º') AS `Lista`,`usuarios`.`nome` AS `Lista de Aniversariantes`,(case when (month(`usuarios`.`data_nascimento`) = 1) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Janeiro') when (month(`usuarios`.`data_nascimento`) = 2) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Fevereiro') when (month(`usuarios`.`data_nascimento`) = 3) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Março') when (month(`usuarios`.`data_nascimento`) = 4) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Abril') when (month(`usuarios`.`data_nascimento`) = 5) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Maio') when (month(`usuarios`.`data_nascimento`) = 6) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Junho') when (month(`usuarios`.`data_nascimento`) = 7) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Julho') when (month(`usuarios`.`data_nascimento`) = 8) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Agosto') when (month(`usuarios`.`data_nascimento`) = 9) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Setembro') when (month(`usuarios`.`data_nascimento`) = 10) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Outubro') when (month(`usuarios`.`data_nascimento`) = 11) then concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Novembro') else concat(dayofmonth(`usuarios`.`data_nascimento`),' de ','Dezembro') end) AS `Dia do aniversário` from `usuarios` order by month(`usuarios`.`data_nascimento`),dayofmonth(`usuarios`.`data_nascimento`) */;
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

-- Dump completed on 2024-06-11 21:33:48
