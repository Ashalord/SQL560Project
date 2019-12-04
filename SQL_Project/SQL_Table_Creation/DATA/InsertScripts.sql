﻿

Insert into FoodNStuff.JobType(Title, StartingPayPerHour, IsHiring, SalaryPerYear, EmployeeType)
Values(N'Manager',null, N'n',50000.00,N'Y'),
	  (N'Cashier',15.00, N'y',Null,N'H'),
	  (N'Stocker',12.00, N'n',null,N'H'),
	  (N'Janitor',10.00, N'y',Null,N'H'),
	  (N'Regional Manager',null, N'n',80000.00,N'Y');



INSERT INTO FoodNStuff.Employee (EmployeeName,StartDate,TerminationDate,JobTypeID) 
VALUES ('Edan Bolton','2020-01-23 06:37:43','2018-12-28 22:39:09',5),('Dean Beasley','2020-09-15 01:46:21','2019-05-21 23:40:59',1),('Holmes Horn','2019-03-23 02:19:31','2019-09-26 22:25:19',1),('Herman Downs','2019-05-22 18:40:02','2019-12-25 00:49:36',2),('Damon Howell','2020-09-05 10:35:54','2019-03-28 20:24:20',2),('Hayden Dixon','2019-02-08 01:54:46','2019-11-28 05:00:44',2),('Wang Blake','2019-01-05 17:40:27','2020-02-23 02:30:09',2),('Laith Sargent','2019-03-26 15:07:23','2019-01-31 05:26:33',2),('Harlan Parrish','2020-08-02 11:09:06','2020-10-12 09:40:04',2),('Brett Hodges','2020-08-18 15:34:31','2018-11-23 13:31:38',3);
INSERT INTO FoodNStuff.Employee (EmployeeName,StartDate,TerminationDate,JobTypeID) 
VALUES ('Orlando Burke','2020-02-02 23:36:57','2019-09-10 21:06:03',3),('Fritz Bowen','2020-03-20 13:47:26','2019-01-12 09:25:36',3),('Nehru Burke','2020-05-18 20:29:11','2020-01-08 01:23:50',3),('Dominic Macdonald','2019-08-03 18:59:41','2019-03-28 12:37:57',3),('Noah Byrd','2020-09-08 08:57:52','2019-08-30 09:33:45',3),('Dolan Jensen','2020-07-22 10:56:31','2020-03-21 19:33:05',3),('Solomon Potts','2019-07-06 08:27:17','2018-12-08 08:40:05',4),('Russell Berry','2019-07-29 03:39:29','2019-05-02 13:46:45',4),('Anthony Hampton','2018-11-16 17:47:12','2018-11-13 22:27:37',4),('Zeus William','2019-11-18 19:03:20','2019-12-11 20:13:58',4);



INSERT INTO FoodNStuff.Customer([CustomerName],[CardNumber]) VALUES('Gloria Mccarthy','40240071937'),('Janna Callahan','4485197856461983'),('Taylor Browning','4532515569041326'),('Bianca Santana','4916506397267'),('Kimberley Owens','4024007112887'),('Hayley Russo','4716865768311550'),('Nita Dorsey','4916569505632'),('Charde Noel','4539175374993'),('Karyn Bass','4929561467057'),('Yvonne Reed','4843228185720679'),('Virginia Holder','4556442620511927'),('Hanna Dalton','4556304063844340'),('Maia Prince','4916789280006878'),('Leila Elliott','4556707688001189'),('Aphrodite Vance','4556807739729091'),('Amena Dominguez','4539015761508'),('Shannon Macias','4916354506246772'),('Demetria Ward','4929981073519'),('Laura Whitfield','4485924201477'),('Anjolie Frazier','4916398702838049'),('Grace Wood','4532483829360046'),('Gay Adams','4556264700367'),('Aphrodite Phillips','4916572625278'),('Bertha Luna','4532641228977484'),('Denise Ballard','4539771595454'),('Jolie Morin','4716543383902'),('Miriam Mcdonald','4716720205950801'),('Bethany Johnston','4589577890799'),('Helen Mcmillan','4485230488875'),('Aubrey Mcpherson','4929738187299'),('Georgia Willis','4024007140532'),('Mira Livingston','4482276747954357'),('Shea Wade','4716929102108'),('Daria Mendez','4556128085291150'),('Hanae Glover','4556995496400'),('Clio Scott','4485914391822747'),('Melodie Beasley','4539377211704'),('Harriet Carney','4532599661855'),('Tallulah Tillman','4716715350275'),('Montana Garcia','4556596592704925'),('Fatima Key','4532984457139867'),('Chanda Skinner','4556271994334'),('Ila Gilbert','4539836871463369'),('Samantha Burt','4539777588702709'),('Lavinia Delacruz','4716714696102766'),('Skyler Nieves','4929969950258'),('Evelyn Horton','4532449694015353'),('Winifred Barrett','4929991462124'),('Bethany King','4485720991537'),('Destiny Hewitt','4749190510592'),('Unity Singleton','4485046426853'),('Iona Mcmahon','4716683751866021'),('Zenaida Castaneda','4916744661438422'),('Jaime Byers','4024007188854540'),('Kylynn Johnston','4539303967551128'),('Amber Sloan','4556441546667'),('Maryam Wilkerson','4024007167845105'),('Indigo Martinez','4539974521859460'),('Imogene Owens','4485272988626462'),('Justine Franco','4916033817513720');


INSERT INTO FoodNStuff.Sales([CustomerID],[EmployeeID],[PurchaseOn]) VALUES(9,5,'2017-10-10 04:10:36'),(18,7,'2018-01-22 02:37:04'),(41,7,'2018-02-24 11:44:16'),(32,7,'2018-12-16 04:40:57'),(9,8,'2017-07-17 11:18:40'),(23,5,'2019-01-18 14:32:03'),(57,7,'2019-02-15 07:22:09'),(32,5,'2017-04-21 13:11:59'),(29,4,'2018-11-23 23:13:06'),(26,9,'2020-04-06 00:40:46'),(33,9,'2020-10-15 23:45:07'),(49,5,'2017-12-31 05:07:42'),(14,4,'2020-08-17 20:42:36'),(42,7,'2018-06-25 10:23:15'),(5,8,'2020-06-24 17:42:14'),(48,4,'2017-01-02 23:58:57'),(44,4,'2020-06-08 11:01:29'),(45,5,'2019-05-03 02:00:36'),(2,8,'2020-05-22 03:49:31'),(55,7,'2020-01-25 12:56:28'),(20,6,'2017-06-15 01:32:38'),(59,8,'2018-04-05 00:19:34'),(49,5,'2018-02-06 23:21:57'),(48,6,'2017-05-14 22:19:28'),(54,9,'2019-06-06 12:16:47'),(15,5,'2017-10-11 19:16:01'),(47,8,'2017-03-12 04:27:39'),(22,9,'2020-06-12 06:58:13'),(11,9,'2019-02-08 21:27:05'),(58,6,'2019-07-08 13:30:36'),(25,6,'2018-07-12 11:33:05'),(7,6,'2019-03-10 17:36:57'),(17,4,'2018-09-29 11:56:21'),(8,4,'2020-01-08 05:30:16'),(52,8,'2019-05-30 13:49:45'),(33,5,'2017-12-13 16:34:56'),(21,7,'2020-07-17 15:34:09'),(53,9,'2019-06-13 16:55:22'),(37,5,'2017-05-11 19:01:39'),(16,7,'2020-09-03 12:41:10'),(27,4,'2019-11-21 20:13:44'),(13,6,'2017-07-06 23:54:59'),(5,7,'2020-12-06 22:06:25'),(33,9,'2019-03-03 14:46:03'),(37,9,'2017-11-28 06:57:58'),(20,7,'2020-01-19 23:26:20'),(19,5,'2019-12-09 14:45:00'),(11,7,'2017-10-31 16:11:44'),(12,4,'2020-03-14 17:31:20'),(56,5,'2020-08-09 13:00:22'),(44,7,'2020-11-30 21:33:53'),(47,9,'2019-05-07 18:55:31'),(52,8,'2017-12-06 19:59:02'),(43,5,'2019-03-05 21:10:17'),(16,6,'2019-06-11 01:45:36'),(30,4,'2019-09-20 04:11:13'),(4,7,'2019-07-13 23:07:50'),(17,8,'2018-11-20 13:43:04'),(24,7,'2019-03-05 16:22:08'),(4,6,'2018-10-02 14:03:51');
INSERT INTO FoodNStuff.Sales([CustomerID],[EmployeeID],[PurchaseOn]) VALUES(6,8,'2020-08-21 16:04:29'),(31,7,'2018-12-09 12:47:47'),(4,4,'2019-11-11 08:55:19'),(15,5,'2017-02-03 00:47:16'),(7,4,'2018-05-19 00:00:36'),(23,7,'2020-12-24 18:36:08'),(25,7,'2019-09-30 00:58:32'),(15,4,'2019-03-06 13:05:24'),(38,9,'2017-06-14 04:02:18'),(56,6,'2020-01-23 23:56:36'),(4,9,'2020-12-15 07:54:37'),(7,8,'2017-07-25 14:56:17'),(36,9,'2018-11-15 18:33:39'),(60,5,'2018-03-05 17:46:12'),(37,5,'2018-09-25 11:24:06'),(15,6,'2019-01-05 17:35:19'),(27,9,'2020-07-12 02:11:34'),(18,9,'2017-11-23 03:36:37'),(44,4,'2020-07-31 15:35:55'),(37,8,'2018-04-01 23:40:26'),(56,8,'2019-03-29 20:32:24'),(35,5,'2019-12-17 10:31:03'),(4,7,'2020-03-16 23:52:22'),(49,9,'2019-03-15 13:41:22'),(25,4,'2018-10-03 08:26:40'),(51,6,'2020-03-18 15:18:10'),(55,9,'2017-05-26 16:06:22'),(37,9,'2020-03-13 00:39:44'),(41,7,'2019-10-25 21:58:38'),(46,6,'2018-07-12 13:47:54'),(32,9,'2019-11-02 08:39:35'),(37,4,'2018-06-04 05:58:47'),(4,6,'2017-09-22 18:13:12'),(20,4,'2017-10-21 05:16:39'),(44,5,'2019-03-16 08:52:22'),(37,9,'2018-10-01 16:35:56'),(8,9,'2018-11-16 23:11:38'),(42,4,'2018-06-30 11:34:27'),(32,4,'2017-04-26 01:42:21'),(33,9,'2017-07-24 06:35:12');


INSERT INTO FoodNStuff.Product([ProductType],[Name]) VALUES('f','enim'),('s','arcu'),('f','sapien.'),('s','mattis'),('f','dolor.'),('s','dolor'),('f','parturient'),('s','Morbi'),('f','Mauris'),('s','ac'),('f','Suspendisse'),('s','odio'),('f','placerat.'),('s','at,'),('f','in'),('s','ornare'),('f','Duis'),('s','et'),('f','massa.'),('s','volutpat.'),('f','Etiam'),('s','ac,'),('f','mi'),('s','Nunc'),('f','montes,'),('s','Nullam'),('f','metus.'),('s','sociis'),('f','pellentesque'),('s','pede,'),('f','auctor'),('s','dui,'),('f','Cum'),('s','Cras'),('f','pellentesque,'),('s','orci'),('f','mauris'),('s','at'),('f','aliquet'),('s','amet'),('f','hendrerit'),('s','ipsum.'),('f','sociis'),('s','pharetra'),('f','Phasellus'),('s','nec'),('f','eu'),('s','magna.'),('f','ante'),('s','enim.'),('f','luctus.'),('s','posuere'),('f','nec'),('s','luctus'),('f','risus.'),('s','nonummy'),('f','nec,'),('s','felis'),('f','blandit'),('s','quis');
INSERT INTO FoodNStuff.Product([ProductType],[Name]) VALUES('f','adipiscing.'),('s','faucibus'),('f','Quisque'),('s','in,'),('f','non'),('s','dapibus'),('f','sed'),('s','quam,'),('f','et'),('s','neque.'),('f','orci'),('s','luctus'),('f','sociosqu'),('s','nec'),('f','mauris'),('s','Sed'),('f','magna.'),('s','at'),('f','odio'),('s','lacus'),('f','justo'),('s','mauris'),('f','risus.'),('s','nunc'),('f','eget'),('s','erat,'),('f','rutrum'),('s','risus.'),('f','nascetur'),('s','nibh'),('f','leo'),('s','amet'),('f','dui,'),('s','nulla.'),('f','facilisis'),('s','tellus'),('f','nunc.'),('s','Sed'),('f','pharetra.'),('s','luctus');


INSERT INTO FoodNStuff.Inventory([StockQuantity],[ProductID],[ExpDate]) VALUES(35,54,'2019-08-10 06:31:28'),(30,91,'2020-10-08 08:04:49'),(64,50,'2019-05-17 18:57:49'),(79,30,'2019-08-25 00:39:42'),(55,13,'2019-06-11 20:16:36'),(96,70,'2019-03-27 10:53:06'),(43,20,'2019-10-27 08:25:44'),(62,48,'2019-05-16 05:08:06'),(78,54,'2020-01-26 02:25:16'),(22,99,'2019-11-09 19:04:36'),(89,12,'2020-03-27 15:51:12'),(71,26,'2020-05-26 19:47:03'),(41,64,'2019-11-10 14:37:38'),(43,60,'2019-09-09 17:02:05'),(80,23,'2020-01-26 13:35:05'),(30,78,'2019-10-06 05:54:39'),(28,27,'2020-10-02 13:32:08'),(4,84,'2020-06-26 02:39:14'),(3,64,'2020-06-16 03:57:06'),(21,87,'2019-10-27 03:28:08'),(85,25,'2020-10-27 21:44:34'),(43,94,'2019-05-26 16:57:54'),(44,39,'2019-02-26 14:42:45'),(65,76,'2019-08-21 01:37:24'),(39,98,'2019-02-01 04:12:39'),(77,100,'2020-06-09 10:35:39'),(5,56,'2019-11-05 14:14:41'),(62,82,'2018-12-17 23:42:59'),(6,49,'2019-12-11 16:55:55'),(39,23,'2018-12-11 10:18:37'),(15,6,'2020-09-01 15:52:20'),(94,61,'2019-03-06 16:40:01'),(77,21,'2020-05-19 11:07:33'),(62,14,'2019-11-08 01:43:25'),(22,99,'2019-11-17 17:15:26'),(4,45,'2020-06-20 12:59:21'),(53,50,'2020-07-10 00:28:11'),(5,6,'2020-05-22 20:24:15'),(65,10,'2019-03-11 16:18:14'),(94,84,'2020-04-02 14:34:42'),(88,79,'2019-03-21 06:00:06'),(33,32,'2019-12-04 19:08:19'),(80,41,'2020-01-09 02:23:51'),(82,10,'2020-10-07 19:31:06'),(16,73,'2019-11-04 11:35:34'),(43,66,'2019-11-17 13:16:36'),(22,85,'2019-11-11 00:28:26'),(76,67,'2020-08-14 10:59:48'),(66,46,'2019-09-10 11:10:12'),(85,100,'2019-02-25 17:30:25'),(89,45,'2018-12-10 18:34:08'),(11,53,'2019-06-26 01:28:44'),(22,59,'2020-10-01 13:51:31'),(78,5,'2019-08-06 17:50:19'),(36,14,'2020-10-11 10:26:56'),(38,76,'2018-12-01 16:32:19'),(76,59,'2019-11-29 12:10:58'),(9,2,'2019-08-01 02:56:47'),(63,84,'2019-11-12 13:47:51'),(40,52,'2019-07-28 09:40:44'),(26,24,'2019-04-10 11:58:49'),(21,66,'2018-11-20 09:10:44'),(80,13,'2020-08-18 06:47:07'),(51,79,'2019-01-20 13:26:36'),(84,66,'2020-07-29 06:01:47'),(72,12,'2020-01-30 03:59:07'),(6,52,'2020-05-27 20:59:37'),(83,11,'2019-11-27 11:17:57'),(43,88,'2020-01-11 12:14:00'),(50,55,'2020-07-01 08:19:40'),(17,40,'2020-01-05 15:44:35'),(24,94,'2020-06-30 13:36:13'),(50,21,'2019-01-18 05:13:10'),(82,45,'2020-05-19 05:11:34'),(48,48,'2020-10-31 21:45:56'),(32,31,'2020-09-30 03:29:57'),(37,81,'2020-10-07 07:03:38'),(10,28,'2020-03-24 20:32:45'),(35,70,'2020-09-27 08:18:02'),(59,66,'2020-05-15 18:03:45'),(83,17,'2019-06-14 17:59:29'),(6,33,'2019-09-03 16:11:16'),(9,73,'2019-07-21 02:38:43'),(11,38,'2019-03-07 08:07:05'),(13,87,'2020-09-12 16:48:25'),(73,3,'2020-09-09 15:51:35'),(89,7,'2019-06-20 06:39:13'),(35,48,'2019-05-31 09:17:22'),(97,48,'2020-07-22 00:27:00'),(80,79,'2020-08-27 18:07:09'),(21,76,'2019-05-16 02:35:51'),(1,47,'2019-08-20 19:32:01'),(81,8,'2020-01-23 00:21:01'),(80,34,'2019-09-05 20:52:13'),(66,41,'2020-06-25 13:32:09'),(62,2,'2020-08-28 20:43:02'),(17,62,'2020-03-01 02:42:21'),(96,25,'2018-11-24 05:40:49'),(25,88,'2019-05-05 10:01:29'),(54,77,'2019-06-18 12:57:50');

INSERT INTO FoodNStuff.SaleItem([SalesID],[InventoryID],[Quantity],[UnitPrice]) VALUES(33,40,4,'90.29'),(89,44,2,'48.42'),(79,13,3,'30.11'),(15,62,3,'54.41'),(59,19,1,'8.89'),(99,76,1,'73.90'),(23,31,2,'39.17'),(52,54,2,'97.71'),(29,72,3,'47.41'),(100,12,4,'71.21'),(41,57,5,'32.38'),(97,16,5,'74.70'),(77,81,1,'30.77'),(63,47,2,'81.51'),(52,7,2,'8.33'),(93,25,5,'18.46'),(47,46,1,'55.31'),(67,53,2,'59.64'),(93,100,2,'82.43'),(88,28,5,'14.37'),(59,37,5,'26.71'),(58,45,2,'10.38'),(24,64,1,'14.20'),(59,47,1,'78.74'),(2,6,3,'3.57'),(37,60,5,'5.85'),(90,39,5,'37.17'),(45,95,2,'49.53'),(42,73,5,'73.27'),(58,83,4,'54.08'),(30,35,5,'70.64'),(61,61,2,'12.03'),(28,97,3,'21.60'),(89,88,1,'95.50'),(99,31,5,'20.44'),(69,63,5,'97.31'),(59,44,5,'18.41'),(53,59,5,'91.90'),(48,59,3,'14.15'),(85,76,3,'76.66'),(96,91,1,'32.37'),(73,50,1,'50.03'),(86,5,4,'18.02'),(79,50,5,'44.06'),(71,57,4,'4.63'),(96,6,4,'95.75'),(35,88,4,'13.00'),(17,20,5,'59.10'),(91,61,1,'93.67'),(8,34,1,'23.75'),(52,88,1,'10.42'),(18,69,3,'35.24'),(85,16,5,'89.26'),(61,89,1,'51.87'),(44,23,4,'61.36'),(48,84,1,'93.45'),(72,53,4,'2.84'),(39,60,2,'4.47'),(100,51,2,'84.30'),(83,23,4,'77.37'),(7,25,4,'79.71'),(77,16,1,'78.36'),(12,99,1,'66.11'),(97,86,5,'63.60'),(28,20,1,'27.72'),(65,97,5,'17.04'),(70,35,5,'30.08'),(31,33,1,'76.63'),(3,38,5,'75.79'),(40,19,1,'48.27'),(62,36,2,'57.35'),(44,46,5,'74.41'),(39,53,1,'93.62'),(33,15,3,'82.95'),(63,77,4,'94.73'),(95,66,2,'31.52'),(74,18,4,'24.77'),(96,4,5,'32.91'),(84,47,4,'47.77'),(66,39,3,'64.87'),(76,11,3,'31.86'),(6,28,3,'44.13'),(17,84,1,'73.75'),(34,48,2,'87.18'),(21,68,2,'87.35'),(47,82,5,'80.11'),(50,55,2,'49.12'),(58,63,3,'11.47'),(42,75,2,'50.26'),(24,12,3,'50.39'),(11,23,4,'20.60'),(80,23,5,'41.84'),(92,91,4,'23.10'),(63,83,4,'33.02'),(17,97,3,'17.15'),(70,46,1,'59.63'),(19,47,4,'15.40'),(89,60,1,'69.33'),(28,19,3,'20.65'),(95,19,5,'90.24');
