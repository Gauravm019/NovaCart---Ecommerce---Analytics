-- Eco-Friendly Product Performance

SELECT 
    CASE 
        WHEN pr.is_eco_friendly = 1 THEN 'Eco-Friendly'
        ELSE 'Non-Eco-Friendly'
    END AS product_type,
    COUNT(DISTINCT pr.product_id) AS total_products,
    COUNT(p.purchase_id) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue
FROM PRODUCT pr
LEFT JOIN PURCHASE p
    ON pr.product_id = p.product_id
GROUP BY pr.is_eco_friendly
ORDER BY total_revenue DESC;