-- =====================================================
-- 1. TOTAL REVENUE
-- =====================================================
-- Question: What is the total sales revenue?

SELECT SUM(sales) AS total_sales
FROM superstore;

-- Insight: Provides overall business performance (~2.26M revenue)


-- =====================================================
-- 2. REGION-WISE SALES
-- =====================================================
-- Question: Which regions contribute the most revenue?

SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region;

-- Insight: West region performs best, South is lowest


-- =====================================================
-- 3. CATEGORY PERFORMANCE
-- =====================================================
-- Question: Which product category generates the most revenue?

SELECT category, SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Insight: Technology leads, followed by Furniture and Office Supplies


-- =====================================================
-- 4. MONTHLY SALES TREND
-- =====================================================
-- Question: How do sales vary over time?

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY year, month
ORDER BY year, month;

-- Insight: Sales show fluctuations and seasonal trends


-- =====================================================
-- 5. TOP CUSTOMERS
-- =====================================================
-- Question: Who are the top 10 customers by revenue?

SELECT 
    customer_id,
    SUM(sales) AS total_spent
FROM superstore
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Insight: Few customers contribute major portion of revenue (Pareto)


-- =====================================================
-- 6. CUSTOMER RETENTION
-- =====================================================
-- Question: Which customers are repeat buyers?

SELECT 
    customer_id,
    COUNT(order_id) AS orders
FROM superstore
GROUP BY customer_id
HAVING orders > 1;

-- Insight: Repeat customers form stable revenue base


-- =====================================================
-- 7. MONTHLY GROWTH RATE
-- =====================================================
-- Question: What is the month-over-month growth?

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS revenue,
    LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) AS prev_month,
    (SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)))
    / LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) * 100 AS growth_percent
FROM superstore
GROUP BY year, month;

-- Insight: Identifies growth and decline periods


-- =====================================================
-- 8. PEAK SALES MONTH
-- =====================================================
-- Question: Which month had the highest sales?

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS revenue
FROM superstore
GROUP BY year, month
ORDER BY revenue DESC
LIMIT 1;

-- Insight: Highlights best performing month


-- =====================================================
-- 9. CATEGORY RANKING
-- =====================================================
-- Question: How do categories rank by revenue?

SELECT 
    category,
    SUM(sales) AS revenue,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS rank_category
FROM superstore
GROUP BY category;

-- Insight: Technology ranks highest


-- =====================================================
-- 10. CUSTOMER LIFETIME VALUE (CLV)
-- =====================================================
-- Question: What is the value of each customer?

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(sales) AS total_spent,
    AVG(sales) AS avg_order_value
FROM superstore
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Insight: High-value customers drive long-term revenue


-- =====================================================
-- 11. SALES BY DAY OF WEEK
-- =====================================================
-- Question: Which days generate the most sales?

SELECT 
    DAYNAME(order_date) AS day,
    SUM(sales) AS revenue
FROM superstore
GROUP BY day
ORDER BY revenue DESC;

-- Insight: Shows peak customer buying days