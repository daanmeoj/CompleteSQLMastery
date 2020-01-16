SELECT 
	product_id,
    JSON_EXTRACT(properties,'$.weight') AS weight
FROM products
WHERE product_id=1;