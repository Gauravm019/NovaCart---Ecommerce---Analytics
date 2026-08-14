-- Payment Method Analysis

SELECT 
    payment_method,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue
FROM PURCHASE
GROUP BY payment_method
ORDER BY total_orders DESC;