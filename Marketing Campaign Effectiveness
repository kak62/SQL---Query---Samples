SELECT 
    campaign_id,
    SUM(CASE WHEN subscribed = 'Yes' THEN 1 ELSE 0 END) AS subscriptions,
    COUNT(*) AS total_reached
FROM campaign_metrics
GROUP BY campaign_id
HAVING total_reached > 1000;
