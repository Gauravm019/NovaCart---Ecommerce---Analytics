-- Most Popular Products

SELECT 
    pr.product_id,
    pr.product_name,
    COUNT(p.purchase_id) AS total_orders,
    SUM(p.quantity) AS total_quantity_sold,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue
FROM PRODUCT pr
JOIN PURCHASE p 
    ON pr.product_id = p.product_id
GROUP BY pr.product_id, pr.product_name
ORDER BY total_quantity_sold DESC;