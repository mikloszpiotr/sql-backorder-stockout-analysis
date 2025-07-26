-- Analyze fulfillment performance by customer region
SELECT 
    region,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN fulfilled = 'No' THEN 1 ELSE 0 END) AS unfulfilled_orders,     -- count unfulfilled
    ROUND(100.0 * SUM(CASE WHEN fulfilled = 'No' THEN 1 ELSE 0 END)/COUNT(*), 2) AS unfulfilled_rate_pct
FROM sales_orders
GROUP BY region;
