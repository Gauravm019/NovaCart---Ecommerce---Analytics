-- Brand-wise Sales Analysis

SELECT 
    pr.brand,
    COUNT(p.purchase_id) AS total_orders,
    SUM(p.quantity) AS total_quantity_sold,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue
FROM PRODUCT pr
JOIN PURCHASE p
    ON pr.product_id = p.product_id
GROUP BY pr.brand
ORDER BY total_revenue DESC;