-- Daily Trend
SELECT DAYNAME(order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM coffee_shop_sales_data GROUP BY DAYNAME(order_date);

-- Hourly Trend
SELECT HOUR(order_time) AS order_hours, COUNT(DISTINCT order_id) 
AS total_orders FROM coffee_shop_sales_data GROUP BY order_hours ORDER BY order_hours;

-- Percentage of Drink Sales by Category
SELECT drink_category, sum(total_price) as Total_Sales, SUM(total_price)*100/(SELECT sum(total_price) from coffee_shop_sales_data) AS Percent_of_Total_Sales
FROM coffee_shop_sales_data
GROUP BY drink_category;

-- Percent of Drink Sales by Size
SELECT drink_size, sum(total_price) as Total_Sales, SUM(total_price)*100/(SELECT sum(total_price) from coffee_shop_sales_data) AS Percent_of_Total_Sales
FROM coffee_shop_sales_data
GROUP BY drink_size
ORDER BY Percent_of_Total_Sales DESC;

-- Total Drinks sold by Category
SELECT drink_category, sum(quantity) as Total_Drinks_Sold from coffee_shop_sales_data
GROUP BY drink_category;

-- 5 Best Sellers by total drinks sold
SELECT drink_name, sum(quantity) as Total_Drinks_Sold from coffee_shop_sales_data
GROUP BY drink_name ORDER BY SUM(quantity) DESC LIMIT 5;

-- 5 Worst Sellers by total drinks sold
SELECT drink_name, sum(quantity) as Total_Drinks_Sold from coffee_shop_sales_data
GROUP BY drink_name ORDER BY SUM(quantity) LIMIT 5;