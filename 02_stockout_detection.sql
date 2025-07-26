-- Identify orders that could not be fulfilled due to insufficient inventory (stockout cases)
SELECT 
    s.sku_id,
    i.product_name,
    s.order_date,
    s.qty_ordered,
    i.stock_qty,
    CASE 
        WHEN i.stock_qty < s.qty_ordered THEN 'Stockout' -- not enough stock to fulfill
        ELSE 'In Stock'
    END AS stock_status
FROM sales_orders s
JOIN inventory i ON s.sku_id = i.sku_id
WHERE s.fulfilled = 'No';   -- only look at unfulfilled orders
