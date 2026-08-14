-- Eco-Friendly Purchases by Age Group

SELECT 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END AS age_group,
    COUNT(p.purchase_id) AS total_orders,
    SUM(p.quantity) AS total_quantity,
    ROUND(SUM(p.purchase_amount), 2) AS total_spend
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
JOIN PRODUCT pr
    ON p.product_id = pr.product_id
WHERE pr.is_eco_friendly = 1
GROUP BY
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END
ORDER BY total_orders DESC;