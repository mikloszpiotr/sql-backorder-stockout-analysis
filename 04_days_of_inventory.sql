-- Calculate how many days of coverage current stock provides based on average daily demand
SELECT 
    sku_id,
    stock_qty,
    avg_daily_demand,
    ROUND(stock_qty / NULLIF(avg_daily_demand, 0), 1) AS days_of_inventory  -- avoid divide by 0
FROM inventory;
