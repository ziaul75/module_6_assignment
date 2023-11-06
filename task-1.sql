SELECT 
    c.customer_id, 
    o.quantity,
    c.customer_name, 
    c.email, 
    c.phone, 
    c.customer_location,
    COUNT(o.order_id) AS total_orders
FROM 
    customers c
LEFT JOIN 
    order_items o ON c.customer_id = o.order_id
GROUP BY 
    c.customer_id, c.customer_name, c.email, c.phone, c.customer_location
ORDER BY 
    total_orders DESC;
