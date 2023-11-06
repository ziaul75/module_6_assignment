SELECT 
    c.customer_name, 
    SUM(o.total_amount) AS total_purchase_amount
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_name
ORDER BY 
    total_purchase_amount DESC
LIMIT 5;
