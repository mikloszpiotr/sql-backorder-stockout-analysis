-- Aggregate total SKUs, stock levels, and lead times by category
SELECT 
    category,
    COUNT(DISTINCT sku_id) AS sku_count,          -- number of unique SKUs per category
    SUM(stock_qty) AS total_stock,                -- total available stock in each category
    AVG(lead_time_days) AS avg_lead_time          -- average lead time for category
FROM inventory
GROUP BY category;
