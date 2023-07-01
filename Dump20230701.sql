-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: human_friends
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `all_animals`
--

DROP TABLE IF EXISTS `all_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `commands` varchar(255) DEFAULT NULL,
  `specie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_animals`
--

LOCK TABLES `all_animals` WRITE;
/*!40000 ALTER TABLE `all_animals` DISABLE KEYS */;
INSERT INTO `all_animals` VALUES (1,'Мурка','2020-04-12','Мяукать,Играть,царапать,кусать','cat'),(2,'Барсик','2019-08-25','Ловить мышей,Обниматься','cat'),(3,'Рыжик','2021-01-07','Лазить по деревьям,Играть с ниткой','cat'),(4,'Мурка','2018-09-03','Давать молоко,Грызть траву','cow'),(5,'Буренка','2017-12-10','Пастись,Мычать','cow'),(6,'Рекс','2019-05-10','Сидеть,Лежать','dog'),(7,'Маруся','2020-02-15','Апорт,Поворот','dog'),(8,'Барон','2018-11-30','Голос,Дай лапу','dog'),(9,'Лайка','2021-07-22','Лежать,Прыгать','dog'),(10,'Булан','2019-03-21','Галоп,Прыжок через препятствие','horse'),(11,'Зорро','2020-07-08','Тянуть плуг,Трюк \"смех коня\"','horse'),(12,'Мартин','2019-05-02','Нести грузы,Охранять стадо','donkey'),(13,'Дуся','2020-11-11','Тянуть плуг,Ловить комаров,Бить ногами','donkey'),(14,'Шуша','2020-11-18','Крутиться в колесе,Есть семечки','hamster'),(15,'Бусинка','2019-06-05','Прятаться в трубке,Копаться в подстилке','hamster'),(16,'Макс','2018-07-17','Переносить грузы,Прыгать через преграды','mule'),(17,'Соня','2019-10-24','Тянуть плуг,Играть с мячом','mule'),(36,'Маруся','2019-08-21','Бегать,Спать,Мяукать','cat');
/*!40000 ALTER TABLE `all_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'Мурка','2020-04-12','Мяукать,Играть'),(2,'Барсик','2019-08-25','Ловить мышей,Обниматься'),(3,'Рыжик','2021-01-07','Лазить по деревьям,Играть с ниткой');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cows`
--

DROP TABLE IF EXISTS `cows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cows`
--

LOCK TABLES `cows` WRITE;
/*!40000 ALTER TABLE `cows` DISABLE KEYS */;
INSERT INTO `cows` VALUES (1,'Мурка','2018-09-03','Давать молоко,Грызть траву'),(2,'Буренка','2017-12-10','Пастись,Мычать');
/*!40000 ALTER TABLE `cows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (1,'Рекс','2019-05-10','Сидеть,Лежать'),(2,'Маруся','2020-02-15','Апорт,Поворот'),(3,'Барон','2018-11-30','Голос,Дай лапу'),(4,'Лайка','2021-07-22','Лежать,Прыгать');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkeys`
--

DROP TABLE IF EXISTS `donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkeys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkeys`
--

LOCK TABLES `donkeys` WRITE;
/*!40000 ALTER TABLE `donkeys` DISABLE KEYS */;
INSERT INTO `donkeys` VALUES (1,'Мартин','2019-05-02','Нести грузы,Охранять стадо'),(2,'Дуся','2020-11-11','Тянуть плуг,Ловить комаров');
/*!40000 ALTER TABLE `donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamsters`
--

DROP TABLE IF EXISTS `hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamsters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamsters`
--

LOCK TABLES `hamsters` WRITE;
/*!40000 ALTER TABLE `hamsters` DISABLE KEYS */;
INSERT INTO `hamsters` VALUES (1,'Шуша','2020-11-18','Крутиться в колесе,Есть семечки'),(2,'Бусинка','2019-06-05','Прятаться в трубке,Копаться в подстилке');
/*!40000 ALTER TABLE `hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,'Булан','2019-03-21','Галоп,Прыжок через препятствие'),(2,'Зорро','2020-07-08','Тянуть плуг,Трюк \"смех коня\"');
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses_and_donkeys`
--

DROP TABLE IF EXISTS `horses_and_donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses_and_donkeys` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(55) NOT NULL DEFAULT '',
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses_and_donkeys`
--

LOCK TABLES `horses_and_donkeys` WRITE;
/*!40000 ALTER TABLE `horses_and_donkeys` DISABLE KEYS */;
INSERT INTO `horses_and_donkeys` VALUES (1,'Булан','2019-03-21','Галоп,Прыжок через препятствие'),(2,'Зорро','2020-07-08','Тянуть плуг,Трюк \"смех коня\"'),(1,'Мартин','2019-05-02','Нести грузы,Охранять стадо'),(2,'Дуся','2020-11-11','Тянуть плуг,Ловить комаров');
/*!40000 ALTER TABLE `horses_and_donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mules`
--

DROP TABLE IF EXISTS `mules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `commands` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mules`
--

LOCK TABLES `mules` WRITE;
/*!40000 ALTER TABLE `mules` DISABLE KEYS */;
INSERT INTO `mules` VALUES (1,'Макс','2018-07-17','Переносить грузы,Прыгать через преграды'),(2,'Соня','2019-10-24','Тянуть плуг,Играть с мячом');
/*!40000 ALTER TABLE `mules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `age_in_months` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
INSERT INTO `young_animals` VALUES (1,'Лайка','2021-07-22',23),(2,'Рыжик','2021-01-07',29),(3,'Шуша','2020-11-18',31),(4,'Зорро','2020-07-08',35),(5,'Дуся','2020-11-11',31);
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01  5:40:13
