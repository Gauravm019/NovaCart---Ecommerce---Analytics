/* Average rating by category */
SELECT 
    pc.category_name,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM REVIEW r
JOIN PURCHASE p 
    ON r.purchase_id = p.purchase_id
JOIN PRODUCT pr 
    ON p.product_id = pr.product_id
JOIN PRODUCT_CATEGORY pc 
    ON pr.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY avg_rating DESC;