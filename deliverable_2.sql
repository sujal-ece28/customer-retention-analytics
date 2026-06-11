-- CREATE DATABASE customer_retention;
use customer_retention;
show tables;
select * from customer_data;
-- DROP TABLE customer_data; 
SELECT COUNT(*) FROM customer_data;
SELECT * FROM customer_data
ORDER BY `Customer ID` DESC
LIMIT 5;

/*What separates high-value customers from low-value ones,
 and which profiles show the strongest repeat purchase behavior?*/

# First — Check Thresholds
select 
max(`Customer Value Score`) as max_value,
min(`Customer Value Score`) as min_value,
avg(`Customer Value Score`) as avg_value
from customer_data;

/* SELECT MAX(Salary)
FROM customer_data; # No backticks needed because Salary has no spaces.
But:

SELECT MAX(`Customer Value Score`)
FROM customer_data; # needs backticks because the column name contains spaces. */

# Second — Compare Two Groups
SELECT
    CASE
        WHEN `Customer Value Score` >= 8588 THEN 'High Value'
        WHEN `Customer Value Score` <= 2492 THEN 'Low Value'
        ELSE 'Medium Value'
    END AS segment,
    COUNT(*)                                    AS total_customers,
    ROUND(AVG(`Previous Purchases`), 1)         AS avg_history,
    ROUND(AVG(`Frequency Score`), 1)            AS avg_frequency,
    ROUND(AVG(`Purchase Amount (USD)`), 1)      AS avg_spend
FROM customer_data
GROUP BY segment;

/* How To Justify In Report
"Threshold values of 8588 (75th percentile) and
 2492 (25th percentile) were derived from Python 
 quantile analysis and applied directly to MySQL segmentation queries." */
 
--  Third — Who Repeats Most /Repeat Purchase Behavior
 select 
 gender,
 category,
 round(avg(`previous purchases`),1) as avg_repeat,
 count(*) as customer_count
 from customer_data
 group by gender,category
 order by avg_repeat desc;
 
 select * from customer_data;
 select sum(`discount dependency flag`) from customer_data;
 # _____________________________________________________________________________________________________#
 /* Q2: "Which seasons and categories are associated with lower-tenure customers 
  versus those with high previous purchase counts?" */
  # Query 1: Season vs avg previous purchases
  
  select 
  season, 
  count(*) as total_customers,
  round(avg(`Previous Purchases`),1) as avg_history,
  sum(case when `Previous Purchases` < 25
  then 1 else 0 end) as new_customers,
  sum(case when `Previous Purchases` >= 25
  then 1 else 0 end) as old_customers
  from customer_data
  group by season
  order by avg_history desc;
  
  # Query 2:: Category vs avg previous purchases
  SELECT
    Category,
    COUNT(*)                                    AS total_customers,
    ROUND(AVG(`Previous Purchases`), 1)         AS avg_history,
    SUM(CASE WHEN `Previous Purchases` < 25 
        THEN 1 ELSE 0 END)                      AS new_customers,
    SUM(CASE WHEN `Previous Purchases` >= 25 
        THEN 1 ELSE 0 END)                      AS old_customers
FROM customer_data
GROUP BY Category
ORDER BY avg_history DESC;
  
 # Q3: Which geographies signal organic demand versus discount-driven volume?
 
 SELECT
    Location,
    COUNT(*)                                        AS total_customers,
    SUM(`Organic Buyer Flag`)                       AS organic_customers,
    SUM(`Discount Dependency Flag`)                 AS discount_customers,
    ROUND(AVG(`Organic Buyer Flag`) * 100, 1)       AS organic_rate_pct,
    ROUND(AVG(`Discount Dependency Flag`) * 100, 1) AS discount_rate_pct,
    ROUND(AVG(`Purchase Amount (USD)`), 1)          AS avg_spend
FROM customer_data
GROUP BY Location
ORDER BY organic_rate_pct DESC
LIMIT 15; 

#Now Run Discount Driven States
SELECT
    Location,
    COUNT(*)                                        AS total_customers,
    ROUND(AVG(`Organic Buyer Flag`) * 100, 1)       AS organic_rate_pct,
    ROUND(AVG(`Discount Dependency Flag`) * 100, 1) AS discount_rate_pct,
    ROUND(AVG(`Purchase Amount (USD)`), 1)          AS avg_spend
FROM customer_data
GROUP BY Location
ORDER BY discount_rate_pct DESC
LIMIT 10;
#----------------------------------------------------
ALTER TABLE customer_data
ADD COLUMN customer_tier VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;

UPDATE customer_data
SET customer_tier =
    CASE
        WHEN `Customer Value Score` >= 8588 THEN 'Platinum'
        WHEN `Customer Value Score` >= 5040 THEN 'Gold'
        WHEN `Customer Value Score` >= 2492 THEN 'Silver'
        ELSE 'Bronze'
    END;

SET SQL_SAFE_UPDATES = 1;

SELECT customer_tier, COUNT(*) AS total
FROM customer_data
GROUP BY customer_tier
ORDER BY total DESC;
