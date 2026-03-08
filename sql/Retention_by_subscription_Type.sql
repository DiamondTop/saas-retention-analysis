SELECT
    subscription_type,
    AVG(CASE WHEN churn = 0 THEN 1 ELSE 0 END) AS retention_rate
FROM customers
GROUP BY subscription_type;