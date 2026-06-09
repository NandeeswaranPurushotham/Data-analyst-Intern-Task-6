# Data-analyst-Intern-Task-6# SQL Sales Trend Analysis

This project analyzes sales trends using SQL by extracting date information from order records and generating monthly revenue and order volume reports. The objective is to understand business performance over time and identify sales patterns.
 Dataset

Table Name:`online_sales`

Key Columns

country
customer id 
invoice no
invoicedate
stockcode 
utilprice
---

 SQL Concepts Used

 1. Extract Month from Date

select online_retail.`InvoiceDate` ,month(`InvoiceDate`)as month from online_retail;
SELECT online_retail.`InvoiceDate`,MONTHNAME(STR_TO_DATE(`InvoiceDate`, '%d/%m/%Y %H:%i')) AS month_name FROM online_retail;

### 2. Group Data by Year and Month

Sales data was grouped by year and month to analyze trends over time.

sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY year, month;

 3. Calculate Monthly Revenue

Used the `SUM()` function to calculate total revenue generated each month.
sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month;

4. Calculate Order Volume

Used `COUNT(DISTINCT order_id)` to determine the number of unique orders per month.

sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month;

 5. Sort Results

Used `ORDER BY` to display data chronologically.

sql
ORDER BY year, month;


6. Filter Specific Time Periods

Used `WHERE` clause to analyze a particular date range.

sql
SELECT *
FROM online_sales
WHERE order_date BETWEEN '12/01/2010' AND '15/06/2010';

Key Insights

* Identified monthly sales trends.
* Measured total revenue generated each month.
* Calculated monthly order volume.
* Analyzed business performance over specific time periods.
* Produced chronological reports for trend analysis.

Tools Used

* SQL (MySQL/PostgreSQL)
* Database Management System (MySQL Workbench)
 - Purushotham Nandeeswaran
