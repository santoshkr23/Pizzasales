CREATE TABLE pizza_sales(
     pizza_id INTEGER NOT NULL PRIMARY KEY
    ,order_id INTEGER NOT NULL
	,pizza_name_id VARCHAR(50)
	,quantity INTEGER NOT NULL
	,order_date	DATE NOT NULL
	,order_time	TIME NOT NULL
	,unit_price	NUMERIC(5,2) NOT NULL
	,total_price NUMERIC(5,2) NOT NULL
	,pizza_size VARCHAR(50)	NOT NULL
	,pizza_category	VARCHAR(50) NOT NULL
	,pizza_ingredients VARCHAR(210) NOT NULL
	,pizza_name VARCHAR(50) NOT NULL
)

SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold 
FROM pizza_sales WHERE DATE_PART('HOUR',order_time)=12 GROUP BY pizza_category ;

SELECT COUNT(DISTINCT(order_id)) FROM pizza_sales WHERE pizza_category='Chicken';