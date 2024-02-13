
--select * from pizza_sales

--case sensitive statement
--SELECT SUM(total_price) AS Total_Revenue from pizza_sales


-- repeated values so we take distinct count
SELECT * FROM pizza_sales

SELECT SUM(quantity) AS Total_Pizza_Sold from pizza_sales
--SELECT SUM(total_price) / COUNT(DISTINCT order_id) as Avg_Order_Value from pizza_sales
SELECT COUNT(DISTINCT order_id) AS Total_orders from pizza_sales


SELECT CAST(SUM(quantity) As DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_order from pizza_sales


