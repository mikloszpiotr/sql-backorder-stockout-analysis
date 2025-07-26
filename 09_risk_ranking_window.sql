-- Rank SKUs by total backorder volume using window function (top risk SKUs)
WITH backorder_data AS (
    SELECT 
        sku_id,
        SUM(qty_ordered) AS total_backordered
    FROM sales_orders
    WHERE fulfilled = 'No'
    GROUP BY sku_id
)
SELECT 
    sku_id,
    total_backordered,
    RANK() OVER (ORDER BY total_backordered DESC) AS risk_rank    -- 1 = highest backorder volume
FROM backorder_data;
