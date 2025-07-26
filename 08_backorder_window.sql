-- Calculate rolling 7-day backorder count using window function (trending unfulfilled demand)
SELECT 
    sku_id,
    order_date,
    SUM(CASE WHEN fulfilled = 'No' THEN 1 ELSE 0 END) OVER (
        PARTITION BY sku_id
        ORDER BY order_date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS backorders_last_7_days       -- number of backorders in the last 7 days (including today)
FROM sales_orders;
