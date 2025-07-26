-- Count how often SKUs appear in unfulfilled orders (i.e., backorders)
SELECT 
    sku_id,
    COUNT(*) AS backorder_events,            -- how many times this SKU was backordered
    SUM(qty_ordered) AS total_backordered    -- total quantity backordered
FROM sales_orders
WHERE fulfilled = 'No'
GROUP BY sku_id;
