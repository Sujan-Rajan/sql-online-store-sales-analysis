-- 1. View 10 rows from the dataset
SELECT * FROM online_store_sales_large LIMIT 10;

-- 2. Total revenue generated
SELECT SUM(SalesAmount) AS Total_Revenue FROM online_store_sales_large;

-- 3. Total revenue in 2022
SELECT SUM(SalesAmount) AS Revenue_2022
FROM online_store_sales_large
WHERE STR_TO_DATE(OrderDate, '%d-%m-%Y') BETWEEN '2022-01-01' AND '2022-12-31';

-- 4. Revenue by product category
SELECT ProductCategory, SUM(SalesAmount) AS Revenue
FROM online_store_sales_large
GROUP BY ProductCategory
ORDER BY Revenue DESC;

-- 5. Revenue by region
SELECT Region, SUM(SalesAmount) AS Revenue
FROM online_store_sales_large
GROUP BY Region
ORDER BY Revenue DESC;

-- 6. Top 10 salespersons by revenue
SELECT Salesperson, SUM(SalesAmount) AS Revenue
FROM online_store_sales_large
GROUP BY Salesperson
ORDER BY Revenue DESC
LIMIT 10;

-- 7. Revenue for 2022 only
SELECT SUM(SalesAmount) AS Revenue_2022
FROM online_store_sales_large
WHERE STR_TO_DATE(OrderDate, '%d-%m-%Y') BETWEEN '2022-01-01' AND '2022-12-31';

-- 8. Monthly revenue trend
SELECT
  DATE_FORMAT(STR_TO_DATE(OrderDate, '%d-%m-%Y'), '%Y-%m') AS Month,
  SUM(SalesAmount) AS Monthly_Revenue
FROM online_store_sales_large
GROUP BY Month
ORDER BY Month;
