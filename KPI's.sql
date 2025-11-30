-- Total Revenue
SELECT SUM(total_price) AS Total_Revenue from coffee_shop_sales_data;

-- Average Revenue
SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Avg_Order_Value from coffee_shop_sales_data;

-- Total Products Sold
SELECT SUM(quantity) AS Total_Products_Sold from coffee_shop_sales_data;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders from coffee_shop_sales_data;

-- Average Products Sold
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
AS DECIMAL(10,2)) AS Average_Products_per_Order from coffee_shop_sales_data;