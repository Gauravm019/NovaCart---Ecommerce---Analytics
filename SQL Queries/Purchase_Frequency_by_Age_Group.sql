-- Purchase Frequency by Age Group

SELECT 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END AS age_group,
    COUNT(p.purchase_id) AS total_orders,
    COUNT(DISTINCT s.student_id) AS students,
    ROUND(
        CAST(COUNT(p.purchase_id) AS DECIMAL(10,2)) 
        / COUNT(DISTINCT s.student_id), 
        2
    ) AS avg_orders_per_student
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
GROUP BY 
    CASE
        WHEN s.age BETWEEN 17 AND 19 THEN '17-19'
        WHEN s.age BETWEEN 20 AND 22 THEN '20-22'
        WHEN s.age BETWEEN 23 AND 25 THEN '23-25'
    END
ORDER BY avg_orders_per_student DESC;