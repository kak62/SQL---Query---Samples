WITH low_stock AS (
    SELECT 
        product_id, 
        current_stock,
        reorder_level
    FROM inventory
    WHERE current_stock < reorder_level
)
SELECT 
    product_category,
    COUNT(*) AS low_stock_count
FROM low_stock l
JOIN product_details p ON l.product_id = p.product_id
GROUP BY product_category;
