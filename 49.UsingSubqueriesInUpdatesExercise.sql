UPDATE orders
SET 
	comments='gold'
WHERE customer_id IN
		(SELECT customer_id
		FROM customers
		WHERE points>3000)