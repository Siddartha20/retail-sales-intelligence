SELECT SUM(sales) FROM superstore;

SELECT region, SUM(sales) 
FROM superstore 
GROUP BY region;

SELECT category, SUM(sales) AS total
FROM superstore
GROUP BY category
ORDER BY total DESC;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY year, month
ORDER BY year, month;
SELECT 
    customer_id,
    SUM(sales) AS total_spent
FROM superstore
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
SELECT 
    customer_id,
    COUNT(order_id) AS orders
FROM superstore
GROUP BY customer_id
HAVING orders > 1;
SELECT 
    category,
    SUM(sales) AS revenue
FROM superstore
GROUP BY category
ORDER BY revenue DESC;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS revenue,
    LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) AS prev_month,
    (SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)))
    / LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) * 100 AS growth_percent
FROM superstore
GROUP BY year, month;

SELECT 
    customer_id,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_id
ORDER BY total_sales DESC;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS revenue
FROM superstore
GROUP BY year, month
ORDER BY revenue DESC
LIMIT 1;

SELECT 
    category,
    SUM(sales) AS revenue,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS rank_category
FROM superstore
GROUP BY category;
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(sales) AS total_spent,
    AVG(sales) AS avg_order_value
FROM superstore
GROUP BY customer_id
ORDER BY total_spent DESC;
SELECT 
    DAYNAME(order_date) AS day,
    SUM(sales) AS revenue
FROM superstore
GROUP BY day
ORDER BY revenue DESC;