DROP DATABASE IF EXISTS p1_retail_db;
CREATE DATABASE p1_retail_db;
USE p1_retail_db;

CREATE TABLE retail_sales (
	transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);

INSERT INTO retail_sales(transaction_id, sale_date, sale_time, customer_id, gender, age, category, quantity, price_per_unit, cogs, total_sale)
VALUES
(180,'2022-11-05','10:47:00',117,'Male',41,'Clothing',3,300,129,900),
(522,'2022-07-09','11:00:00',52,'Male',46,'Beauty',3,500,145,1500),
(559,'2022-12-12','10:48:00',5,'Female',40,'Clothing',4,300,84,1200),
(1180,'2022-01-06','08:53:00',85,'Male',41,'Clothing',3,300,129,900),
(1522,'2022-11-14','08:35:00',48,'Male',46,'Beauty',3,500,235,1500),
(1559,'2022-08-20','07:40:00',49,'Female',40,'Clothing',4,300,144,1200),
(163,'2022-10-31','09:38:00',144,'Female',64,'Clothing',3,50,23,150),
(303,'2022-04-22','11:09:00',54,'Male',19,'Electronics',3,30,14.7,90),
(421,'2022-04-08','08:43:00',66,'Female',37,'Clothing',3,500,235,1500),
(979,'2022-05-18','10:18:00',6,'Female',19,'Beauty',1,25,10.5,25),
(1163,'2022-05-04','10:52:00',120,'Female',64,'Clothing',3,50,27,150),
(1303,'2022-03-19','08:59:00',58,'Male',19,'Electronics',3,30,15,90),
(1979,'2022-08-17','11:34:00',102,'Female',19,'Beauty',1,25,7.75,25),
(610,'2022-12-18','06:56:00',137,'Female',26,'Beauty',2,300,93,600),
(1610,'2022-11-23','10:18:00',1,'Female',26,'Beauty',2,300,102,600),
(231, '2022-07-09', '07:02:00', 50, 'Female', 23, 'Clothing', 3, 50, 26.5, 150),
(683, '2022-03-06', '10:22:00', 82, 'Male', 38, 'Beauty', 2, 500, 175, 1000),
(1032, '2022-04-01', '08:15:00', 1, 'Male', 30, 'Beauty', 3, 30, 10.5, 90),
(1231, '2022-01-29', '07:05:00', 12, 'Female', 23, 'Clothing', 3, 50, 23, 150),
(367, '2022-12-30', '07:03:00', 123, 'Female', 57, 'Electronics', 1, 50, 18, 50),
(432, '2022-03-10', '11:31:00', 17, 'Female', NULL, 'Electronics', 2, 500, 190, 1000),
(1367, '2022-04-15', '11:38:00', 16, 'Female', NULL, 'Electronics', 1, 50, 15.5, 50),
(150, '2022-04-13', '08:25:00', 89, 'Female', NULL, 'Electronics', 4, 30, 16.2, 120),
(845, '2022-07-16', '09:11:00', 150, 'Male', 30, 'Beauty', 3, 30, 8.4, 90),
(1683, '2022-05-04', '07:19:00', 98, 'Male', 38, 'Beauty', 2, 500, 220, 1000),
(1391, '2022-03-01', '11:29:00', 130, 'Male', NULL, 'Beauty', 2, 25, 9.25, 50),
(1432, '2022-12-25', '06:24:00', 67, 'Female', NULL, 'Electronics', 2, 500, 245, 1000),
(1150, '2022-08-22', '10:04:00', 77, 'Female', NULL, 'Electronics', 4, 30, 10.2, 120),
(1845, '2022-05-24', '07:06:00', 94, 'Male', NULL, 'Clothing', 1, 500, 185, 500),
(797, '2022-09-16', '06:38:00', 116, 'Male', NULL, 'Clothing', 3, 25, 10.75, 75),
(921, '2022-09-28', '09:34:00', 101, 'Male', NULL, 'Electronics', 3, 25, 8, 75),
(1797, '2022-04-16', '11:47:00', 147, 'Male', 40, 'Clothing', 3, 25, 12.25, 75),
(1921, '2022-02-08', '07:01:00', 77, 'Male', 51, 'Electronics', 3, 25, 7.5, 75),
(291, '2022-11-22', '08:29:00', 15, 'Male', 60, 'Clothing', 2, 300, 126, 600),
(907, '2022-09-02', '06:16:00', 145, 'Female', 45, 'Electronics', 1, 25, 8.5, 25),
(1291, '2022-04-04', '11:19:00', 72, 'Male', 60, 'Clothing', 2, 300, 153, 600),
(1907, '2022-11-17', '11:21:00', 115, 'Female', 45, 'Electronics', 1, 25, 9, 25),
(860, '2022-04-11', '08:58:00', 85, 'Male', 63, 'Clothing', 4, 50, 16, 200),
(1860, '2022-03-12', '11:21:00', 57, 'Male', 63, 'Clothing', 4, 50, 18, 200),
(184, '2022-02-13', '06:44:00', 128, 'Male', 31, 'Electronics', 4, 50, 17, 200),
(734, '2022-03-12', '08:54:00', 77, 'Female', 27, 'Clothing', 1, 30, 15.6, 30),
(1184, '2022-02-12', '08:28:00', 23, 'Male', 31, 'Electronics', 4, 50, 27.5, 200),
(1734, '2022-02-28', '08:58:00', 72, 'Female', 27, 'Clothing', 1, 30, 14.4, 30),
(225, '2022-03-05', '07:37:00', 85, 'Female', 57, 'Beauty', 4, 25, 12.75, 100),
(679, '2022-08-26', '08:59:00', 64, 'Female', 18, 'Beauty', NULL, NULL, NULL, NULL),
(746, '2022-07-05', '11:33:00', 42, 'Female', 33, 'Clothing', NULL, NULL, NULL, NULL),
(1225, '2022-02-02', '09:51:00', 137, 'Female', 57, 'Beauty', NULL, NULL, NULL, NULL),
(1679, '2022-09-23', '08:08:00', 71, 'Female', 18, 'Beauty', 3, 30, 15.3, 90),
(1746, '2022-06-13', '07:59:00', 88, 'Female', 33, 'Clothing', 3, 30, 10.8, 90);