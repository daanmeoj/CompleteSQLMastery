SELECT 
	product_id,
    properties -> '$.weight' AS weight,
    properties -> '$.dimensions[0]' AS dimensions
FROM products
WHERE properties ->> '$.manufacturer.name'='sony';