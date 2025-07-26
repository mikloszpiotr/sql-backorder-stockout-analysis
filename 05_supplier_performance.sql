-- Evaluate suppliers by number of SKUs, stock provided, and their average lead time
SELECT 
    i.supplier_id,
    s.supplier_name,
    COUNT(DISTINCT i.sku_id) AS sku_count,        -- number of SKUs per supplier
    AVG(i.lead_time_days) AS avg_lead_time,       -- average lead time per supplier
    SUM(i.stock_qty) AS total_stock               -- total stock from this supplier
FROM inventory i
JOIN suppliers s ON i.supplier_id = s.supplier_id
GROUP BY i.supplier_id, s.supplier_name;
