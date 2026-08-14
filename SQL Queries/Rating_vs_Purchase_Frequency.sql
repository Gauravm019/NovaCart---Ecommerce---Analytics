-- Rating vs Purchase Frequency

SELECT 
    r.rating,
    COUNT(r.review_id) AS total_reviews,
    COUNT(DISTINCT p.student_id) AS students,
    COUNT(p.purchase_id) AS total_purchases,
    ROUND(AVG(p.quantity), 2) AS avg_quantity_per_purchase
FROM REVIEW r
JOIN PURCHASE p
    ON r.purchase_id = p.purchase_id
GROUP BY r.rating
ORDER BY r.rating DESC;