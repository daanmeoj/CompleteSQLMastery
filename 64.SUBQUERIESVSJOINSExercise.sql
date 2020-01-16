SELECT DISTINCT
	o.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	USING(customer_id)
WHERE order_id IN(
		SELECT order_id
		FROM order_items
        WHERE product_id=3
)
