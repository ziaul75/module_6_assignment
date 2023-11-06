SELECT 
    c.category_name AS category_name, 
    SUM(oi.quantity * p.product_price) AS total_revenue
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
JOIN 
    categories c ON p.product_id = c.category_id
GROUP BY 
    c.category_name
ORDER BY 
    total_revenue DESC;
