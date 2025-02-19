SELECT 
    product_category, 
    SUM(sales_amount) AS total_sales,
    AVG(sales_amount) AS avg_sale
FROM sales_data
GROUP BY product_category
HAVING SUM(sales_amount) > 10000
ORDER BY total_sales DESC;
