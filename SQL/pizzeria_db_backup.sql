-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `delivery_address1` varchar(200) NOT NULL,
  `delivery_address2` varchar(200) DEFAULT NULL,
  `delivery_city` varchar(50) NOT NULL,
  `delivery_zipcode` varchar(20) NOT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'102 Beacon St',NULL,'Boston','02116'),(2,'18 Commonwealth Ave','Apt 3B','Boston','02116'),(3,'301 Tremont St',NULL,'Boston','02116'),(4,'44 Boylston St',NULL,'Boston','02116'),(5,'77 Newbury St',NULL,'Boston','02116'),(6,'415 Huntington Ave',NULL,'Boston','02115'),(7,'77 Westland Ave','Unit 2F','Boston','02115'),(8,'1598 Washington St',NULL,'Boston','02118'),(9,'95 Charles St',NULL,'Boston','02114'),(10,'290 Massachusetts Ave',NULL,'Boston','02115'),(11,'45 Stanhope St',NULL,'Boston','02116'),(12,'88 Gainsborough St','Apt 15','Boston','02115'),(13,'22 Edgerly Rd',NULL,'Boston','02115'),(14,'51 Peterborough St',NULL,'Boston','02215'),(15,'20 Gloucester St','Apt 4C','Boston','02115'),(16,'375 Longwood Ave',NULL,'Boston','02115'),(17,'1125 Boylston St',NULL,'Boston','02215'),(18,'220 Huntington Ave',NULL,'Boston','02115'),(19,'88 Brookline Ave',NULL,'Boston','02215'),(20,'75 St Botolph St',NULL,'Boston','02116'),(21,'132 Marlborough St',NULL,'Boston','02116'),(22,'7 Fairfield St','Unit 3A','Boston','02116'),(23,'11 Clarendon St',NULL,'Boston','02116'),(24,'72 Dartmouth St',NULL,'Boston','02116'),(25,'44 Rutland Sq',NULL,'Boston','02118'),(26,'24 Concord Sq',NULL,'Boston','02118'),(27,'112 Shawmut Ave','Apt 2C','Boston','02118'),(28,'31 Warren Ave',NULL,'Boston','02116'),(29,'120 Park Dr',NULL,'Boston','02215'),(30,'150 Fenway',NULL,'Boston','02115'),(31,'80 Jersey St',NULL,'Boston','02215'),(32,'145 Ipswich St',NULL,'Boston','02215'),(33,'211 North St',NULL,'Boston','02113'),(34,'45 Fleet St',NULL,'Boston','02113'),(35,'310 Hanover St',NULL,'Boston','02113'),(36,'5 Prince St',NULL,'Boston','02113'),(37,'149 Salem St',NULL,'Boston','02113'),(38,'22 Battery St',NULL,'Boston','02109'),(39,'101 Atlantic Ave',NULL,'Boston','02110'),(40,'198 State St',NULL,'Boston','02109'),(41,'33 Broad St',NULL,'Boston','02109'),(42,'75 Federal St',NULL,'Boston','02110'),(43,'65 Franklin St',NULL,'Boston','02110'),(44,'100 Summer St',NULL,'Boston','02110'),(45,'160 Milk St',NULL,'Boston','02109'),(46,'253 Congress St',NULL,'Boston','02210'),(47,'131 Seaport Blvd',NULL,'Boston','02210'),(48,'21 Northern Ave',NULL,'Boston','02210'),(49,'451 D St',NULL,'Boston','02210'),(50,'50 Park Plaza',NULL,'Boston','02116'),(51,'111 Huntington Ave',NULL,'Boston','02199'),(52,'800 Boylston St','Apt 35L','Boston','02199'),(53,'35 Exeter St',NULL,'Boston','02116'),(54,'140 Clarendon St',NULL,'Boston','02116'),(55,'79 Chandler St',NULL,'Boston','02116'),(56,'51 Melrose St',NULL,'Boston','02116'),(57,'50 Arlington St',NULL,'Boston','02116'),(58,'400 Columbus Ave',NULL,'Boston','02116'),(59,'1350 Tremont St',NULL,'Boston','02120'),(60,'530 Huntington Ave',NULL,'Boston','02115'),(61,'450 Brookline Ave',NULL,'Boston','02215'),(62,'250 Longwood Ave',NULL,'Boston','02115'),(63,'41 Harvard Ave',NULL,'Boston','02134'),(64,'74 Gardner St',NULL,'Boston','02134'),(65,'15 Brighton Ave',NULL,'Boston','02134'),(66,'1440 Commonwealth Ave','Apt 10D','Boston','02135'),(67,'70 Faneuil St',NULL,'Boston','02135'),(68,'123 Washington St',NULL,'Boston','02135'),(69,'280 Western Ave',NULL,'Boston','02134'),(70,'1919 Commonwealth Ave',NULL,'Boston','02135'),(71,'9 Waverly St',NULL,'Boston','02135'),(72,'54 Lothrop St',NULL,'Boston','02122'),(73,'110 Savin Hill Ave',NULL,'Boston','02125'),(74,'47 Neponset Ave',NULL,'Boston','02122'),(75,'89 Adams St',NULL,'Boston','02122'),(76,'21 Ashmont St',NULL,'Boston','02124'),(77,'90 Gallivan Blvd',NULL,'Boston','02124'),(78,'1300 Blue Hill Ave',NULL,'Boston','02126'),(79,'150 Mount Vernon St',NULL,'Boston','02125'),(80,'950 Dorchester Ave',NULL,'Boston','02125'),(81,'101 W 8th St',NULL,'Boston','02127'),(82,'180 Old Colony Ave',NULL,'Boston','02127'),(83,'300 Summer St',NULL,'Boston','02210'),(84,'21 Drydock Ave',NULL,'Boston','02210'),(85,'22 Boston Wharf Rd',NULL,'Boston','02210'),(86,'321 A St',NULL,'Boston','02210'),(87,'500 Atlantic Ave',NULL,'Boston','02210'),(88,'10 Farnsworth St',NULL,'Boston','02210'),(89,'346 Congress St',NULL,'Boston','02210'),(90,'21 Wormwood St',NULL,'Boston','02210'),(91,'840 Harrison Ave',NULL,'Boston','02118'),(92,'200 Centre St',NULL,'Boston','02119'),(93,'500 Morton St',NULL,'Boston','02126'),(94,'350 Washington St',NULL,'Boston','02108'),(95,'60 School St',NULL,'Boston','02108'),(96,'90 Tremont St',NULL,'Boston','02108'),(97,'115 Winthrop Square',NULL,'Boston','02110'),(98,'200 Stuart St',NULL,'Boston','02116'),(99,'90 Canal St',NULL,'Boston','02114'),(100,'2 Center Plaza',NULL,'Boston','02108');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL,
  `cust_firstname` varchar(50) NOT NULL,
  `cust_lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Emily','Johnson'),(2,'Michael','Williams'),(3,'Olivia','Brown'),(4,'Daniel','Jones'),(5,'Sophia','Garcia'),(6,'James','Miller'),(7,'Ava','Davis'),(8,'Benjamin','Martinez'),(9,'Mia','Hernandez'),(10,'Ethan','Moore'),(11,'Jacob','Clark'),(12,'Charlotte','Lee'),(13,'Elijah','Young'),(14,'Harper','Walker'),(15,'William','Hall'),(16,'Amelia','Allen'),(17,'Logan','Sanchez'),(18,'Ella','Wright'),(19,'Matthew','King'),(20,'Abigail','Scott'),(21,'Alexander','Green'),(22,'Isabella','Baker'),(23,'Jack','Adams'),(24,'Sofia','Nelson'),(25,'Lucas','Hill'),(26,'Grace','Ramirez'),(27,'Jackson','Campbell'),(28,'Chloe','Mitchell'),(29,'Henry','Roberts'),(30,'Lily','Carter'),(31,'Mason','Phillips'),(32,'Zoey','Evans'),(33,'Sebastian','Parker'),(34,'Penelope','Edwards'),(35,'David','Collins'),(36,'Layla','Stewart'),(37,'Carter','Sullivan'),(38,'Aria','Murphy'),(39,'Anthony','Rivera'),(40,'Riley','Cook'),(41,'Julian','Rogers'),(42,'Nora','Reed'),(43,'Leo','Morgan'),(44,'Ellie','Bell'),(45,'Joseph','Bailey'),(46,'Hannah','Cooper'),(47,'Samuel','Richardson'),(48,'Scarlett','Cox'),(49,'Gabriel','Howard'),(50,'Victoria','Ward'),(51,'Wyatt','Torres'),(52,'Eleanor','Peterson'),(53,'John','Gray'),(54,'Stella','Ramsey'),(55,'Owen','Kim'),(56,'Aubrey','James'),(57,'Dylan','Watson'),(58,'Addison','Brooks'),(59,'Luke','Kelly'),(60,'Lucy','Sanders'),(61,'Lincoln','Price'),(62,'Aurora','Bennett'),(63,'Grayson','Wood'),(64,'Paisley','Barnes'),(65,'Isaac','Ross'),(66,'Brooklyn','Henderson'),(67,'Levi','Coleman'),(68,'Mila','Jenkins'),(69,'Nathan','Perry'),(70,'Savannah','Powell'),(71,'Hunter','Long'),(72,'Skylar','Patterson'),(73,'Caleb','Hughes'),(74,'Hazel','Flores'),(75,'Christian','Washington'),(76,'Audrey','Butler'),(77,'Joshua','Simmons'),(78,'Samantha','Foster'),(79,'Andrew','Gonzalez'),(80,'Leah','Bryant'),(81,'Eli','Alexander'),(82,'Madison','Russell'),(83,'Christopher','Griffin'),(84,'Avery','Diaz'),(85,'Thomas','Hayes'),(86,'Claire','Myers'),(87,'Charles','Ford'),(88,'Anna','Hamilton'),(89,'Jaxon','Graham'),(90,'Genesis','Snyder'),(91,'Nicholas','Wells'),(92,'Kennedy','Harrison'),(93,'Aaron','Hart'),(94,'Allison','Freeman'),(95,'Jeremiah','Mason'),(96,'Evelyn','Hunter'),(97,'Hudson','Stone'),(98,'Sadie','Carroll'),(99,'Jonathan','Lane'),(100,'Paislee','West');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ing_id` varchar(10) NOT NULL,
  `ing_name` varchar(200) NOT NULL,
  `ing_weight` int NOT NULL,
  `ing_meas` varchar(20) NOT NULL,
  `ing_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES ('ING001','Pizza Dough Ball',250,'g',0.80),('ING002','Tomato Sauce',80,'g',0.30),('ING003','Shredded Mozzarella',90,'g',0.85),('ING004','Pepperoni Slices',30,'g',0.75),('ING005','Mushrooms',40,'g',0.45),('ING006','Bell Peppers',30,'g',0.40),('ING007','Onions',25,'g',0.20),('ING008','Black Olives',20,'g',0.35),('ING009','Italian Sausage',40,'g',0.90),('ING010','Ham',35,'g',0.65),('ING011','Pineapple',35,'g',0.40),('ING012','Fresh Basil',5,'g',0.15),('ING013','Chicken Breast',45,'g',1.00),('ING014','Parmesan Cheese',10,'g',0.25),('ING015','Ricotta Cheese',20,'g',0.60),('ING016','Spinach',15,'g',0.20),('ING017','Buffalo Sauce',15,'g',0.30),('ING018','Bacon Bits',20,'g',0.60),('ING019','Garlic',8,'g',0.10),('ING020','Cheddar Cheese',20,'g',0.35);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_inventory`
--

DROP TABLE IF EXISTS `ingredient_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_inventory` (
  `inv_id` int NOT NULL,
  `ing_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `ing_id` (`ing_id`),
  CONSTRAINT `ingredient_inventory_ibfk_1` FOREIGN KEY (`ing_id`) REFERENCES `ingredient` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_inventory`
--

LOCK TABLES `ingredient_inventory` WRITE;
/*!40000 ALTER TABLE `ingredient_inventory` DISABLE KEYS */;
INSERT INTO `ingredient_inventory` VALUES (1,'ING001',150),(2,'ING002',12000),(3,'ING003',10000),(4,'ING004',3000),(5,'ING005',2000),(6,'ING006',1600),(7,'ING007',1200),(8,'ING008',1000),(9,'ING009',2500),(10,'ING010',1200),(11,'ING011',1200),(12,'ING012',200),(13,'ING013',1500),(14,'ING014',400),(15,'ING015',800),(16,'ING016',400),(17,'ING017',300),(18,'ING018',400),(19,'ING019',100),(20,'ING020',600);
/*!40000 ALTER TABLE `ingredient_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` varchar(10) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_cat` varchar(50) NOT NULL,
  `item_size` varchar(20) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('ITM001','PIZZA01','Pepperoni Pizza','Pizza','Large',18.99),('ITM002','PIZZA02','Margherita Pizza','Pizza','Large',16.99),('ITM003','PIZZA03','BBQ Chicken Pizza','Pizza','Large',19.99),('ITM004','PIZZA04','Veggie Supreme Pizza','Pizza','Large',17.99),('ITM005','PIZZA05','Hawaiian Pizza','Pizza','Large',18.49),('ITM006','PIZZA06','Buffalo Chicken Pizza','Pizza','Large',19.49),('ITM007','PIZZA07','Four Cheese Pizza','Pizza','Large',17.99),('ITM008','PIZZA08','Meat Lovers Pizza','Pizza','Large',20.99),('ITM009','PIZZA09','Spinach Alfredo Pizza','Pizza','Large',18.49),('ITM010','PIZZA10','White Garlic Pizza','Pizza','Large',17.99),('ITM011','SIDE01','Garlic Breadsticks','Side','Regular',6.49),('ITM012','SIDE02','Mozzarella Sticks','Side','6 pcs',7.99),('ITM013','SIDE03','Buffalo Wings','Side','8 pcs',9.99),('ITM014','SIDE04','French Fries','Side','Large',4.99),('ITM015','SIDE05','Jalapeno Poppers','Side','6 pcs',8.49),('ITM016','DRINK01','Coke','Drink','20 oz',2.49),('ITM017','DRINK02','Sprite','Drink','20 oz',2.49),('ITM018','DRINK03','Sweet Tea','Drink','20 oz',2.49),('ITM019','DESS01','Chocolate Chip Cookie','Dessert','2 pcs',3.49),('ITM020','DESS02','Brownie','Dessert','Single',3.99);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_inventory`
--

DROP TABLE IF EXISTS `menu_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_inventory` (
  `inv_id` int NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `menu_inventory_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_inventory`
--

LOCK TABLES `menu_inventory` WRITE;
/*!40000 ALTER TABLE `menu_inventory` DISABLE KEYS */;
INSERT INTO `menu_inventory` VALUES (1,'ITM011',40),(2,'ITM012',30),(3,'ITM013',35),(4,'ITM014',60),(5,'ITM015',20),(6,'ITM019',100),(7,'ITM020',70);
/*!40000 ALTER TABLE `menu_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `row_id` int NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `cust_id` int NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `add_id` int NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_orders_item` (`item_id`),
  KEY `fk_orders_customer` (`cust_id`),
  KEY `fk_orders_address` (`add_id`),
  CONSTRAINT `fk_orders_address` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`),
  CONSTRAINT `fk_orders_customer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  CONSTRAINT `fk_orders_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'ORD0001','2024-05-07 18:02:00','ITM002',1,17,1,17),(2,'ORD0002','2024-05-07 18:12:00','ITM011',2,4,1,4),(3,'ORD0003','2024-05-07 18:20:00','ITM007',1,23,0,23),(4,'ORD0004','2024-05-07 18:25:00','ITM016',3,8,1,8),(5,'ORD0005','2024-05-08 11:17:00','ITM001',1,2,1,2),(6,'ORD0006','2024-05-08 11:25:00','ITM003',2,39,0,39),(7,'ORD0007','2024-05-08 13:00:00','ITM019',1,21,1,21),(8,'ORD0008','2024-05-08 14:05:00','ITM004',1,40,1,40),(9,'ORD0009','2024-05-08 14:20:00','ITM014',2,11,0,11),(10,'ORD0010','2024-05-08 15:47:00','ITM013',1,1,1,1),(11,'ORD0011','2024-05-08 16:08:00','ITM015',1,7,0,7),(12,'ORD0012','2024-05-08 17:11:00','ITM010',2,15,1,15),(13,'ORD0013','2024-05-08 18:55:00','ITM002',1,23,1,23),(14,'ORD0014','2024-05-09 10:08:00','ITM008',1,19,1,19),(15,'ORD0015','2024-05-09 10:45:00','ITM006',1,5,1,5),(16,'ORD0016','2024-05-09 12:11:00','ITM012',2,30,0,30),(17,'ORD0017','2024-05-09 12:44:00','ITM002',1,14,1,14),(18,'ORD0018','2024-05-09 13:28:00','ITM017',2,6,1,6),(19,'ORD0019','2024-05-09 13:59:00','ITM005',1,32,0,32),(20,'ORD0020','2024-05-09 14:13:00','ITM020',1,21,1,21),(21,'ORD0021','2024-05-09 16:30:00','ITM002',1,51,1,51),(22,'ORD0022','2024-05-09 18:00:00','ITM002',1,4,1,4),(23,'ORD0023','2024-05-09 18:45:00','ITM013',2,49,1,49),(24,'ORD0024','2024-05-09 19:09:00','ITM003',2,48,1,48),(25,'ORD0025','2024-05-09 20:40:00','ITM009',1,13,0,13),(26,'ORD0026','2024-05-09 20:52:00','ITM010',1,35,1,35),(27,'ORD0027','2024-05-09 21:13:00','ITM006',1,26,1,26),(28,'ORD0028','2024-05-10 10:20:00','ITM016',2,16,1,16),(29,'ORD0029','2024-05-10 10:45:00','ITM012',1,27,0,27),(30,'ORD0030','2024-05-10 11:18:00','ITM015',1,16,1,16),(31,'ORD0031','2024-05-10 12:29:00','ITM007',2,7,1,7),(32,'ORD0032','2024-05-10 13:20:00','ITM018',2,29,0,29),(33,'ORD0033','2024-05-10 13:41:00','ITM018',1,14,1,14),(34,'ORD0034','2024-05-10 14:00:00','ITM004',1,6,0,6),(35,'ORD0035','2024-05-10 14:11:00','ITM012',2,9,1,9),(36,'ORD0036','2024-05-10 15:28:00','ITM002',1,23,0,23),(37,'ORD0037','2024-05-10 15:39:00','ITM009',1,19,1,19),(38,'ORD0038','2024-05-10 16:10:00','ITM003',1,18,1,18),(39,'ORD0039','2024-05-10 16:42:00','ITM005',2,11,1,11),(40,'ORD0040','2024-05-10 17:05:00','ITM011',1,2,1,2),(41,'ORD0041','2024-05-10 17:30:00','ITM001',1,36,1,36),(42,'ORD0042','2024-05-10 18:02:00','ITM002',2,22,1,22),(43,'ORD0043','2024-05-10 18:13:00','ITM004',1,6,1,6),(44,'ORD0044','2024-05-10 18:55:00','ITM016',2,44,1,44),(45,'ORD0045','2024-05-10 19:00:00','ITM013',2,12,1,12),(46,'ORD0046','2024-05-10 19:05:00','ITM014',1,48,0,48),(47,'ORD0047','2024-05-10 19:11:00','ITM007',2,31,1,31),(48,'ORD0048','2024-05-10 19:15:00','ITM002',1,44,1,44),(49,'ORD0049','2024-05-10 19:17:00','ITM019',1,10,0,10),(50,'ORD0050','2024-05-10 19:30:00','ITM005',1,15,1,15),(51,'ORD0051','2024-05-11 10:03:00','ITM003',2,5,1,5),(52,'ORD0052','2024-05-11 10:22:00','ITM011',2,24,1,24),(53,'ORD0053','2024-05-11 10:55:00','ITM008',1,23,0,23),(54,'ORD0054','2024-05-11 11:07:00','ITM018',1,41,1,41),(55,'ORD0055','2024-05-11 11:21:00','ITM009',1,30,1,30),(56,'ORD0056','2024-05-11 11:44:00','ITM002',2,34,1,34),(57,'ORD0057','2024-05-11 11:52:00','ITM018',1,1,0,1),(58,'ORD0058','2024-05-11 12:13:00','ITM007',1,35,1,35),(59,'ORD0059','2024-05-11 13:01:00','ITM014',2,4,1,4),(60,'ORD0060','2024-05-11 13:11:00','ITM004',2,17,1,17),(61,'ORD0061','2024-05-11 13:25:00','ITM012',1,27,0,27),(62,'ORD0062','2024-05-11 14:11:00','ITM013',1,49,1,49),(63,'ORD0063','2024-05-11 14:40:00','ITM010',1,14,1,14),(64,'ORD0064','2024-05-11 15:19:00','ITM006',1,25,1,25),(65,'ORD0065','2024-05-11 15:44:00','ITM002',1,23,0,23),(66,'ORD0066','2024-05-11 16:02:00','ITM001',2,18,1,18),(67,'ORD0067','2024-05-11 16:10:00','ITM017',1,47,1,47),(68,'ORD0068','2024-05-11 16:18:00','ITM003',2,32,1,32),(69,'ORD0069','2024-05-11 16:40:00','ITM010',1,28,1,28),(70,'ORD0070','2024-05-11 16:51:00','ITM019',1,38,0,38),(71,'ORD0071','2024-05-11 17:09:00','ITM016',2,31,1,31),(72,'ORD0072','2024-05-11 17:29:00','ITM008',1,50,1,50),(73,'ORD0073','2024-05-11 18:00:00','ITM002',1,24,1,24),(74,'ORD0074','2024-05-11 18:10:00','ITM009',2,33,0,33),(75,'ORD0075','2024-05-11 18:35:00','ITM004',1,17,1,17),(76,'ORD0076','2024-05-11 19:12:00','ITM015',1,21,0,21),(77,'ORD0077','2024-05-11 19:41:00','ITM020',2,12,1,12),(78,'ORD0078','2024-05-11 19:52:00','ITM005',1,15,1,15),(79,'ORD0079','2024-05-12 10:09:00','ITM013',2,13,1,13),(80,'ORD0080','2024-05-12 10:19:00','ITM002',1,23,0,23),(81,'ORD0081','2024-05-12 10:34:00','ITM007',2,26,1,26),(82,'ORD0082','2024-05-12 11:08:00','ITM012',1,27,1,27),(83,'ORD0083','2024-05-12 11:21:00','ITM018',2,29,1,29),(84,'ORD0084','2024-05-12 11:50:00','ITM010',1,16,0,16),(85,'ORD0085','2024-05-12 12:14:00','ITM016',2,19,1,19),(86,'ORD0086','2024-05-12 12:22:00','ITM001',1,18,1,18),(87,'ORD0087','2024-05-12 13:05:00','ITM012',2,25,0,25),(88,'ORD0088','2024-05-12 13:21:00','ITM009',1,36,1,36),(89,'ORD0089','2024-05-12 13:32:00','ITM011',2,44,1,44),(90,'ORD0090','2024-05-12 13:48:00','ITM017',1,1,1,1),(91,'ORD0091','2024-05-12 14:06:00','ITM020',1,6,1,6),(92,'ORD0092','2024-05-12 14:28:00','ITM007',2,2,1,2),(93,'ORD0093','2024-05-12 14:51:00','ITM014',1,28,0,28),(94,'ORD0094','2024-05-12 15:11:00','ITM002',2,23,1,23),(95,'ORD0095','2024-05-12 15:40:00','ITM004',1,3,1,3),(96,'ORD0096','2024-05-12 16:00:00','ITM016',1,14,0,14),(97,'ORD0097','2024-05-12 16:20:00','ITM010',2,11,1,11),(98,'ORD0098','2024-05-12 16:39:00','ITM003',1,16,1,16),(99,'ORD0099','2024-05-12 17:05:00','ITM012',2,9,1,9),(100,'ORD0100','2024-05-12 17:19:00','ITM015',1,7,1,7),(101,'ORD0101','2024-05-13 10:30:00','ITM001',2,8,1,8),(102,'ORD0102','2024-05-13 10:45:00','ITM013',1,25,1,25),(103,'ORD0103','2024-05-13 11:08:00','ITM020',1,46,0,46),(104,'ORD0104','2024-05-13 11:20:00','ITM002',1,44,1,44),(105,'ORD0105','2024-05-13 12:07:00','ITM010',2,34,1,34),(106,'ORD0106','2024-05-13 12:16:00','ITM017',1,12,1,12),(107,'ORD0107','2024-05-13 13:09:00','ITM003',2,1,1,1),(108,'ORD0108','2024-05-13 13:41:00','ITM018',2,55,0,55),(109,'ORD0109','2024-05-13 14:17:00','ITM016',1,17,1,17),(110,'ORD0110','2024-05-13 15:08:00','ITM008',2,70,1,70),(111,'ORD0111','2024-05-13 15:40:00','ITM019',1,23,0,23),(112,'ORD0112','2024-05-13 16:15:00','ITM001',1,32,1,32),(113,'ORD0113','2024-05-13 17:28:00','ITM009',2,29,1,29),(114,'ORD0114','2024-05-13 18:00:00','ITM015',1,15,1,15),(115,'ORD0115','2024-05-13 18:14:00','ITM012',2,20,0,20),(116,'ORD0116','2024-05-13 18:45:00','ITM006',1,49,1,49),(117,'ORD0117','2024-05-14 10:18:00','ITM014',2,42,1,42),(118,'ORD0118','2024-05-14 10:41:00','ITM002',2,1,0,1),(119,'ORD0119','2024-05-14 11:16:00','ITM007',1,12,1,12),(120,'ORD0120','2024-05-14 12:05:00','ITM019',1,39,1,39),(121,'ORD0121','2024-05-14 12:55:00','ITM002',2,22,1,22),(122,'ORD0122','2024-05-14 13:08:00','ITM005',2,35,0,35),(123,'ORD0123','2024-05-14 13:25:00','ITM013',1,16,1,16),(124,'ORD0124','2024-05-14 14:14:00','ITM004',1,18,1,18),(125,'ORD0125','2024-05-14 15:18:00','ITM001',1,15,0,15),(126,'ORD0126','2024-05-14 15:41:00','ITM018',2,47,1,47),(127,'ORD0127','2024-05-14 16:10:00','ITM002',2,7,1,7),(128,'ORD0128','2024-05-14 16:39:00','ITM006',1,34,1,34),(129,'ORD0129','2024-05-14 17:09:00','ITM011',2,41,0,41),(130,'ORD0130','2024-05-14 17:38:00','ITM012',2,32,1,32),(131,'ORD0131','2024-05-14 18:06:00','ITM003',1,24,1,24),(132,'ORD0132','2024-05-14 18:21:00','ITM020',1,30,1,30),(133,'ORD0133','2024-05-14 18:55:00','ITM009',1,8,1,8),(134,'ORD0134','2024-05-14 19:20:00','ITM019',2,18,0,18),(135,'ORD0135','2024-05-14 19:37:00','ITM004',1,12,1,12),(136,'ORD0136','2024-05-14 19:59:00','ITM014',2,10,1,10),(137,'ORD0137','2024-05-15 11:05:00','ITM018',1,11,1,11),(138,'ORD0138','2024-05-15 11:34:00','ITM003',2,16,0,16),(139,'ORD0139','2024-05-15 12:00:00','ITM010',1,18,1,18),(140,'ORD0140','2024-05-15 12:15:00','ITM005',2,19,1,19),(141,'ORD0141','2024-05-15 13:00:00','ITM002',2,20,0,20),(142,'ORD0142','2024-05-15 13:18:00','ITM017',1,21,1,21),(143,'ORD0143','2024-05-15 13:29:00','ITM002',2,9,1,9),(144,'ORD0144','2024-05-15 13:44:00','ITM008',1,10,1,10),(145,'ORD0145','2024-05-15 14:10:00','ITM015',1,17,1,17),(146,'ORD0146','2024-05-15 14:18:00','ITM011',1,11,0,11),(147,'ORD0147','2024-05-15 14:29:00','ITM013',2,12,1,12),(148,'ORD0148','2024-05-15 15:15:00','ITM001',1,8,1,8),(149,'ORD0149','2024-05-15 15:41:00','ITM012',2,13,0,13),(150,'ORD0150','2024-05-15 16:12:00','ITM018',2,9,1,9),(151,'ORD0151','2024-05-15 16:45:00','ITM001',1,22,1,22),(152,'ORD0152','2024-05-15 17:17:00','ITM010',1,7,1,7),(153,'ORD0153','2024-05-15 17:42:00','ITM019',2,3,1,3),(154,'ORD0154','2024-05-15 18:06:00','ITM017',1,6,1,6),(155,'ORD0155','2024-05-15 18:23:00','ITM008',2,4,0,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `row_id` int NOT NULL,
  `recipe_id` varchar(20) NOT NULL,
  `ing_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_recipe_item` (`recipe_id`),
  KEY `fk_recipe_ingredient` (`ing_id`),
  CONSTRAINT `fk_recipe_ingredient` FOREIGN KEY (`ing_id`) REFERENCES `ingredient` (`ing_id`),
  CONSTRAINT `fk_recipe_item` FOREIGN KEY (`recipe_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'ITM002','ING001',1),(2,'ITM002','ING002',1),(3,'ITM002','ING003',1),(4,'ITM002','ING012',1),(5,'ITM001','ING001',1),(6,'ITM001','ING002',1),(7,'ITM001','ING003',1),(8,'ITM001','ING004',1),(9,'ITM003','ING001',1),(10,'ITM003','ING002',1),(11,'ITM003','ING003',1),(12,'ITM003','ING013',1),(13,'ITM003','ING017',1),(14,'ITM004','ING001',1),(15,'ITM004','ING002',1),(16,'ITM004','ING003',1),(17,'ITM004','ING005',1),(18,'ITM004','ING006',1),(19,'ITM004','ING007',1),(20,'ITM004','ING008',1),(21,'ITM005','ING001',1),(22,'ITM005','ING002',1),(23,'ITM005','ING003',1),(24,'ITM005','ING010',1),(25,'ITM005','ING011',1),(26,'ITM006','ING001',1),(27,'ITM006','ING002',1),(28,'ITM006','ING003',1),(29,'ITM006','ING013',1),(30,'ITM006','ING017',1),(31,'ITM007','ING001',1),(32,'ITM007','ING002',1),(33,'ITM007','ING003',1),(34,'ITM007','ING014',1),(35,'ITM007','ING015',1),(36,'ITM007','ING020',1),(37,'ITM008','ING001',1),(38,'ITM008','ING002',1),(39,'ITM008','ING003',1),(40,'ITM008','ING004',1),(41,'ITM008','ING009',1),(42,'ITM008','ING010',1),(43,'ITM008','ING018',1),(44,'ITM009','ING001',1),(45,'ITM009','ING002',1),(46,'ITM009','ING003',1),(47,'ITM009','ING016',1),(48,'ITM009','ING015',1),(49,'ITM010','ING001',1),(50,'ITM010','ING002',1),(51,'ITM010','ING003',1),(52,'ITM010','ING019',1),(53,'ITM010','ING014',1),(54,'ITM011','ING001',1),(55,'ITM011','ING019',1),(56,'ITM011','ING003',1),(57,'ITM012','ING003',1),(58,'ITM012','ING020',1),(59,'ITM013','ING013',1),(60,'ITM013','ING017',1),(61,'ITM014','ING005',1),(62,'ITM015','ING006',1),(63,'ITM015','ING015',1),(64,'ITM016','ING019',0),(65,'ITM017','ING019',0),(66,'ITM018','ING019',0),(67,'ITM019','ING019',0),(68,'ITM020','ING019',0);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rota` (
  `row_id` int NOT NULL,
  `rota_id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `shift_id` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_rota_shift` (`shift_id`),
  KEY `fk_rota_staff` (`staff_id`),
  CONSTRAINT `fk_rota_shift` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  CONSTRAINT `fk_rota_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
INSERT INTO `rota` VALUES (1,'RTA001','2024-06-03 00:00:00','MON1','STF100'),(2,'RTA002','2024-06-03 00:00:00','MON1','STF102'),(3,'RTA003','2024-06-03 00:00:00','MON1','STF105'),(4,'RTA004','2024-06-03 00:00:00','MON2','STF101'),(5,'RTA005','2024-06-03 00:00:00','MON2','STF103'),(6,'RTA006','2024-06-03 00:00:00','MON2','STF107'),(7,'RTA007','2024-06-04 00:00:00','TUE1','STF100'),(8,'RTA008','2024-06-04 00:00:00','TUE1','STF104'),(9,'RTA009','2024-06-04 00:00:00','TUE1','STF105'),(10,'RTA010','2024-06-04 00:00:00','TUE2','STF101'),(11,'RTA011','2024-06-04 00:00:00','TUE2','STF110'),(12,'RTA012','2024-06-04 00:00:00','TUE2','STF108'),(13,'RTA013','2024-06-05 00:00:00','WED1','STF100'),(14,'RTA014','2024-06-05 00:00:00','WED1','STF109'),(15,'RTA015','2024-06-05 00:00:00','WED1','STF106'),(16,'RTA016','2024-06-05 00:00:00','WED2','STF101'),(17,'RTA017','2024-06-05 00:00:00','WED2','STF103'),(18,'RTA018','2024-06-05 00:00:00','WED2','STF112'),(19,'RTA019','2024-06-06 00:00:00','THU1','STF100'),(20,'RTA020','2024-06-06 00:00:00','THU1','STF104'),(21,'RTA021','2024-06-06 00:00:00','THU1','STF105'),(22,'RTA022','2024-06-06 00:00:00','THU2','STF101'),(23,'RTA023','2024-06-06 00:00:00','THU2','STF103'),(24,'RTA024','2024-06-06 00:00:00','THU2','STF107'),(25,'RTA025','2024-06-07 00:00:00','FRI1','STF100'),(26,'RTA026','2024-06-07 00:00:00','FRI1','STF110'),(27,'RTA027','2024-06-07 00:00:00','FRI1','STF111'),(28,'RTA028','2024-06-07 00:00:00','FRI2','STF101'),(29,'RTA029','2024-06-07 00:00:00','FRI2','STF102'),(30,'RTA030','2024-06-07 00:00:00','FRI2','STF108'),(31,'RTA031','2024-06-08 00:00:00','SAT1','STF100'),(32,'RTA032','2024-06-08 00:00:00','SAT1','STF113'),(33,'RTA033','2024-06-08 00:00:00','SAT1','STF106'),(34,'RTA034','2024-06-08 00:00:00','SAT2','STF101'),(35,'RTA035','2024-06-08 00:00:00','SAT2','STF103'),(36,'RTA036','2024-06-08 00:00:00','SAT2','STF112'),(37,'RTA037','2024-06-09 00:00:00','SUN1','STF100'),(38,'RTA038','2024-06-09 00:00:00','SUN1','STF104'),(39,'RTA039','2024-06-09 00:00:00','SUN1','STF105'),(40,'RTA040','2024-06-09 00:00:00','SUN2','STF101'),(41,'RTA041','2024-06-09 00:00:00','SUN2','STF103'),(42,'RTA042','2024-06-09 00:00:00','SUN2','STF107');
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `shift_id` varchar(20) NOT NULL,
  `day_of_week` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES ('FRI1','Friday','10:00:00','16:00:00'),('FRI2','Friday','16:00:00','00:00:00'),('MON1','Monday','10:00:00','16:00:00'),('MON2','Monday','16:00:00','00:00:00'),('SAT1','Saturday','10:00:00','16:00:00'),('SAT2','Saturday','16:00:00','00:00:00'),('SUN1','Sunday','10:00:00','16:00:00'),('SUN2','Sunday','16:00:00','00:00:00'),('THU1','Thursday','10:00:00','16:00:00'),('THU2','Thursday','16:00:00','00:00:00'),('TUE1','Tuesday','10:00:00','16:00:00'),('TUE2','Tuesday','16:00:00','00:00:00'),('WED1','Wednesday','10:00:00','16:00:00'),('WED2','Wednesday','16:00:00','00:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('STF100','John','Baker','General Manager',28.00),('STF101','Maria','Gonzalez','Assistant Manager',21.50),('STF102','Alex','Smith','Pizza Cook',17.50),('STF103','Jessica','Taylor','Pizza Cook',17.00),('STF104','Dylan','Nguyen','Prep Cook',15.50),('STF105','Ashley','Brown','Cashier',14.50),('STF106','Joshua','Wilson','Cashier',14.00),('STF107','Samantha','Harris','Delivery Driver',16.50),('STF108','Michael','Robinson','Delivery Driver',16.00),('STF109','Emily','Lee','Prep Cook',15.00),('STF110','Brandon','White','Pizza Cook',17.25),('STF111','Sophia','Martinez','Cashier',14.25),('STF112','David','Anderson','Delivery Driver',16.75),('STF113','Olivia','Moore','Prep Cook',15.75);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stock1`
--

DROP TABLE IF EXISTS `stock1`;
/*!50001 DROP VIEW IF EXISTS `stock1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock1` AS SELECT 
 1 AS `item_name`,
 1 AS `ing_id`,
 1 AS `ing_name`,
 1 AS `order_quantity`,
 1 AS `recipe_quantity`,
 1 AS `ordered_weight`,
 1 AS `unit_cost`,
 1 AS `ingredient_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `stock1`
--

/*!50001 DROP VIEW IF EXISTS `stock1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stock1` AS select `s1`.`item_name` AS `item_name`,`s1`.`ing_id` AS `ing_id`,`s1`.`ing_name` AS `ing_name`,`s1`.`order_quantity` AS `order_quantity`,`s1`.`recipe_quantity` AS `recipe_quantity`,(`s1`.`order_quantity` * `s1`.`recipe_quantity`) AS `ordered_weight`,(`s1`.`ing_price` / `s1`.`ing_weight`) AS `unit_cost`,((`s1`.`order_quantity` * `s1`.`recipe_quantity`) * (`s1`.`ing_price` / `s1`.`ing_weight`)) AS `ingredient_cost` from (select `o`.`item_id` AS `item_id`,`i`.`sku` AS `sku`,`i`.`item_name` AS `item_name`,`r`.`ing_id` AS `ing_id`,`ing`.`ing_name` AS `ing_name`,`r`.`quantity` AS `recipe_quantity`,sum(`o`.`quantity`) AS `order_quantity`,`ing`.`ing_weight` AS `ing_weight`,`ing`.`ing_price` AS `ing_price` from (((`orders` `o` left join `item` `i` on((`o`.`item_id` = `i`.`item_id`))) left join `recipe` `r` on((`i`.`item_id` = `r`.`recipe_id`))) left join `ingredient` `ing` on((`ing`.`ing_id` = `r`.`ing_id`))) group by `o`.`item_id`,`i`.`sku`,`i`.`item_name`,`r`.`ing_id`,`ing`.`ing_name`,`r`.`quantity`,`ing`.`ing_weight`,`ing`.`ing_price`) `s1` */;
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

-- Dump completed on 2025-06-20 17:49:40
