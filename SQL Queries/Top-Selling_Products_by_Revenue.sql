-- Top-Selling Products by Revenue

SELECT 
    pr.product_id,
    pr.product_name,
    pr.brand,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue,
    SUM(p.quantity) AS total_quantity_sold
FROM PRODUCT pr
JOIN PURCHASE p
    ON pr.product_id = p.product_id
GROUP BY pr.product_id, pr.product_name, pr.brand
ORDER BY total_revenue DESC;