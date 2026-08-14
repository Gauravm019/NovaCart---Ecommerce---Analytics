-- Age Group Purchase Analysis

SELECT 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END AS age_group,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue,
    ROUND(AVG(p.purchase_amount), 2) AS avg_order_value
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
GROUP BY 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END
ORDER BY total_revenue DESC;