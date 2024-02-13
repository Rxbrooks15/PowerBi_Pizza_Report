select * from pizza_sales

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
--With ASC you get bottom 5 pizzas 

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders 
--With ASC you get bottom 5 pizzas 