-- Payment Method by Age Group

SELECT 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END AS age_group,
    p.payment_method,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_spend
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
GROUP BY
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END,
    p.payment_method
ORDER BY age_group, total_orders DESC;