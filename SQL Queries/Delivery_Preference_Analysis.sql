-- Delivery Preference Analysis

SELECT 
    delivery_preference,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM PURCHASE
GROUP BY delivery_preference
ORDER BY total_orders DESC;