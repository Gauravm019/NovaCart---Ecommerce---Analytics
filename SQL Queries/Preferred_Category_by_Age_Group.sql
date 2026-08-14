-- Preferred Category by Age Group

SELECT 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END AS age_group,
    pc.category_name,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
JOIN PRODUCT pr
    ON p.product_id = pr.product_id
JOIN PRODUCT_CATEGORY pc
    ON pr.category_id = pc.category_id
GROUP BY
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END,
    pc.category_name
ORDER BY age_group, total_orders DESC;