-- Identify SKUs with low stock coverage that fall below their lead time (need replenishment)
SELECT 
    sku_id,
    product_name,
    stock_qty,
    lead_time_days,
    avg_daily_demand,
    ROUND(stock_qty / NULLIF(avg_daily_demand, 0), 1) AS days_coverage  -- how long current stock lasts
FROM inventory
WHERE stock_qty / NULLIF(avg_daily_demand, 1) < lead_time_days          -- if coverage < lead time
ORDER BY days_coverage ASC;
