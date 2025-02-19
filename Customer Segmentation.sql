SELECT 
    CASE 
        WHEN total_purchase_amount > 1000 THEN 'High Value'
        WHEN total_purchase_amount > 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS customer_count
FROM customer_purchases
GROUP BY customer_segment;
