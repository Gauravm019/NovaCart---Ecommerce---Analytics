/* Monthly Sales and Revenue*/
SELECT 
    DATENAME(MONTH, p.purchase_date) AS purchase_month,
    MONTH(p.purchase_date) AS month_number,
    COUNT(*) AS total_orders,
    ROUND(SUM(p.purchase_amount), 2) AS total_revenue
FROM PURCHASE p
GROUP BY 
    DATENAME(MONTH, p.purchase_date),
    MONTH(p.purchase_date)
ORDER BY month_number;