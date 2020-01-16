SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    c.state,
    SUM(oi.quantity*oi.unit_price) AS spent 
FROM customers c
JOIN orders o
	USING(customer_id)
JOIN order_items oi
	USING (order_id)
WHERE state='VA'
GROUP BY 
	c.customer_id,
    c.first_name, 
    c.last_name, 
    c.state
HAVING spent>100

