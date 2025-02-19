SELECT 
    CAST(EXTRACT(YEAR FROM churn_date) AS VARCHAR) || '-' || 
    CAST(EXTRACT(MONTH FROM churn_date) AS VARCHAR) AS churn_month,
    COUNT(*) AS churn_count
FROM customer_analytics
WHERE churn_date IS NOT NULL
GROUP BY churn_month
ORDER BY churn_month;
