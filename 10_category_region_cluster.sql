-- Cluster risk by combining product category and customer region
SELECT 
    i.category,
    s.region,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN s.fulfilled = 'No' THEN 1 ELSE 0 END) AS stockouts,
    ROUND(100.0 * SUM(CASE WHEN s.fulfilled = 'No' THEN 1 ELSE 0 END)/COUNT(*), 2) AS stockout_rate_pct
FROM sales_orders s
JOIN inventory i ON s.sku_id = i.sku_id
GROUP BY i.category, s.region
ORDER BY stockout_rate_pct DESC;
