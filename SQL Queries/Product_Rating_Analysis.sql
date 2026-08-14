-- Product Rating Analysis

SELECT 
    pr.product_name,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM PRODUCT pr
JOIN PURCHASE p
    ON pr.product_id = p.product_id
JOIN REVIEW r
    ON p.purchase_id = r.purchase_id
GROUP BY pr.product_id, pr.product_name
ORDER BY avg_rating DESC;