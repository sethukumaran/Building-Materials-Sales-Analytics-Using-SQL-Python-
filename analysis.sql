-- Building Materials Analytics | PostgreSQL
CREATE TABLE transactions AS SELECT * FROM building_materials_transactions;
-- 1 Revenue trend
SELECT year, month, SUM(revenue) revenue, SUM(units) units FROM transactions GROUP BY year,month ORDER BY year,month;
-- 2 Region performance
SELECT region, SUM(revenue) revenue, SUM(units) units, AVG(unit_price) avg_price FROM transactions GROUP BY region ORDER BY revenue DESC;
-- 3 Category performance
SELECT product_category, SUM(revenue) revenue, SUM(units) units, AVG(unit_price) avg_price FROM transactions GROUP BY product_category ORDER BY revenue DESC;
-- 4 Channel and customer mix
SELECT channel, customer_type, SUM(revenue) revenue, SUM(units) units FROM transactions GROUP BY channel,customer_type ORDER BY revenue DESC;
-- 5 Top SKUs
SELECT sku, product_category, SUM(revenue) revenue, SUM(units) units FROM transactions GROUP BY sku,product_category ORDER BY revenue DESC LIMIT 20;
-- 6 Average order-line value by region
SELECT region, AVG(revenue) avg_line_revenue, COUNT(*) lines FROM transactions GROUP BY region;
-- 7 Price/revenue relationship
SELECT CORR(unit_price,revenue) price_revenue_corr FROM transactions;
-- 8 Year-over-year revenue
WITH y AS (SELECT year,SUM(revenue) revenue FROM transactions GROUP BY year)
SELECT year,revenue,revenue-LAG(revenue) OVER(ORDER BY year) change,
100.0*(revenue/LAG(revenue) OVER(ORDER BY year)-1) yoy_pct FROM y;
-- 9 Weekly macro drivers
SELECT date, housing_starts_index,lumber_price_index,mortgage_rate FROM macro_drivers_weekly ORDER BY date;
