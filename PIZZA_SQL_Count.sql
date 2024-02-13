SELECT * FROM pizza_sales 

SELECT DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders
from pizza_sales
GROUP BY DATENAME(DW, order_date)

select * from pizza_sales

SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC

SELECT * FROM pizza_sales
SELECT pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 /
(SELECT sum(total_price) from pizza_sales WHERE MONTH(order_date) = 1 AS PCT 
from pizza_sales 
-- (to filter) WHERE MONTH(order_date) = 1
WHERE MONTH(order_date) = 1
GROUP BY pizza_category 


SELECT pizza_size, sum(total_price) as Total_Sales, sum(total_price) * 100 / 
(SELECT sum(total_price) from pizza_sales) AS PCT 
from pizza_sales 
GROUP BY pizza_size
ORDER BY PCT 
--By default info is in ascending order 