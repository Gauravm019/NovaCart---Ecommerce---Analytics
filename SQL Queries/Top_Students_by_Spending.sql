-- Top Students by Spending

SELECT 
    s.student_id,
    s.name,
    s.age,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_spend,
    ROUND(AVG(p.purchase_amount), 2) AS avg_order_value
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
GROUP BY s.student_id, s.name, s.age
ORDER BY total_spend DESC;