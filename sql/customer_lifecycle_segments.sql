SELECT
    CASE
        WHEN tenure < 3 THEN 'New'
        WHEN tenure BETWEEN 3 AND 12 THEN 'Growth'
        ELSE 'Mature'
    END AS lifecycle_stage,
    COUNT(*) AS customers
FROM customers
GROUP BY lifecycle_stage;