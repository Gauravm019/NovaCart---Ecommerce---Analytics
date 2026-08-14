-- Wishlist vs Purchase Interest

SELECT 
    pr.product_name,
    COUNT(DISTINCT w.wishlist_id) AS wishlist_count,
    COUNT(DISTINCT p.purchase_id) AS purchase_count
FROM PRODUCT pr
LEFT JOIN WISHLIST w
    ON pr.product_id = w.product_id
LEFT JOIN PURCHASE p
    ON pr.product_id = p.product_id
GROUP BY pr.product_id, pr.product_name
ORDER BY wishlist_count DESC;