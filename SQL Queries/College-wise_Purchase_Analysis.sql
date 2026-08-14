-- College-wise Purchase Analysis

SELECT 
    s.college_name,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue,
    ROUND(AVG(p.purchase_amount), 2) AS avg_order_value
FROM STUDENT s
JOIN PURCHASE p
    ON s.student_id = p.student_id
GROUP BY s.college_name
ORDER BY total_revenue DESC;