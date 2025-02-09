# Retail Sales Analysis SQL Project

## Project Overview:

### Title: Retail Sales Analysis
### Level: Beginner
### Database: Retail_Sale_Analysis

This project aims to showcase SQL skills and techniques commonly used by data analysts to explore, clean, and analyze retail sales data. The project includes setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions using SQL queries. This is an excellent project for those just starting with data analysis and looking to develop a strong SQL foundation.

### Objectives:

Database Setup: Create and populate a retail sales database with provided data.
Data Cleaning: Identify and remove records with missing or null values.
Exploratory Data Analysis (EDA): Conduct basic exploratory data analysis to better understand the dataset.
Business Analysis: Use SQL to answer key business questions and extract insights from the sales data.

### Project Structure:
### 1. Database Setup:

*** Database Creation: *** Create a database called p1_retail_db.
*** Table Creation: *** Create a table named retail_sales to store sales data. This table will have columns such as transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.
```
CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
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
```

### 2. Data Exploration & Cleaning:

*** Record Count: *** Count the total number of records in the dataset.
*** Customer Count: *** Identify the number of unique customers.
*** Category Count: *** List all unique product categories.
*** Null Value Check: *** Identify and remove records with missing or null values.

```
SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
```

### 3. Data Analysis & Insights:
Here are some SQL queries designed to answer key business questions:

Retrieve all columns for sales made on '2022-11-05':

```
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
```

Retrieve transactions in the 'Clothing' category with more than 4 items sold in November 2022:

```
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
  AND quantity >= 4;
```

Calculate total sales (total_sale) for each category:

```
SELECT category, SUM(total_sale) AS net_sale, COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;
```

Find the average age of customers who bought from the 'Beauty' category:

```
SELECT ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';
```

Retrieve all transactions where the total sale exceeds 1000:

```
SELECT *
FROM retail_sales
WHERE total_sale > 1000;
```
Calculate the total number of transactions made by each gender in each product category:

```
SELECT category, gender, COUNT(*) AS total_trans
FROM retail_sales
GROUP BY category, gender
ORDER BY category;
```
Calculate the average sale for each month and identify the best-selling month of each year:

```
SELECT year, month, avg_sale
FROM 
(
  SELECT EXTRACT(YEAR FROM sale_date) AS year,
         EXTRACT(MONTH FROM sale_date) AS month,
         AVG(total_sale) AS avg_sale,
         RANK() OVER (PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS rank
  FROM retail_sales
  GROUP BY year, month
) AS t1
WHERE rank = 1;
```
Find the top 5 customers based on the highest total sales:

```
SELECT customer_id, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;
```

Find the number of unique customers who purchased items from each category:

```
SELECT category, COUNT(DISTINCT customer_id) AS cnt_unique_cs
FROM retail_sales
GROUP BY category;
```

Create shifts (Morning <12, Afternoon 12-17, Evening >17) and calculate the number of orders for each shift:

```
WITH hourly_sale AS (
  SELECT *,
         CASE
             WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
             WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
             ELSE 'Evening'
         END AS shift
  FROM retail_sales
)
SELECT shift, COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;
```

### Findings:

*** Customer Demographics: *** The dataset includes customers from various age groups, with sales spanning across categories like Clothing and Beauty.
*** High-Value Transactions: *** A number of transactions show a total sale amount greater than 1000, indicating premium purchases.
*** Sales Trends: *** Monthly analysis highlights seasonal variations and trends in sales performance.
*** Customer Insights: *** The analysis identifies high-spending customers and popular product categories.

### Reports:

*** Sales Summary: *** A detailed summary of total sales, customer demographics, and category performance.
*** Trend Analysis: *** Insights into sales trends by month and shift.
*** Customer Insights: *** Information on top customers and unique customers in each product category.

### Conclusion:

This project provides a comprehensive introduction to SQL for data analysts, covering aspects such as database setup, data cleaning, exploratory data analysis, and answering business-driven queries. The insights generated can inform business decisions by uncovering sales patterns, customer behavior, and product performance.