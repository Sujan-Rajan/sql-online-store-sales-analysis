# 📊 Monthly Sales Trend Analysis Using SQL

## 📌 Description
In this project, I analyzed an online store sales dataset to extract monthly sales trends using MySQL. I imported raw data, formatted dates, and used aggregation techniques to uncover insights.

## 🛠️ Tools Used
- MySQL Workbench
- SQL
- CSV Data Source

## 📂 Dataset
The dataset includes:
- OrderDate (DD-MM-YYYY)
- Product Category
- Sales Amount
- Region
- Salesperson

## 🔍 Key SQL Concepts Demonstrated
- `STR_TO_DATE()` for date conversion
- `DATE_FORMAT()` for monthly grouping
- Aggregation with `SUM()`
- Filtering with `WHERE`
- Grouping & sorting

## 📈 Sample Query Used

```sql
SELECT 
    DATE_FORMAT(STR_TO_DATE(OrderDate, '%d-%m-%Y'), '%Y-%m') AS Month,
    SUM(Sales) AS Total_Sales
FROM online_store_sales_large
WHERE OrderDate IS NOT NULL
GROUP BY Month
ORDER BY Month;
