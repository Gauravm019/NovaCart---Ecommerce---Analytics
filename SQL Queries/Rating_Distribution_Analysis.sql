-- Rating Distribution Analysis

SELECT 
    rating,
    COUNT(*) AS total_reviews,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM REVIEW), 
        2
    ) AS percentage_of_reviews
FROM REVIEW
GROUP BY rating
ORDER BY rating DESC;