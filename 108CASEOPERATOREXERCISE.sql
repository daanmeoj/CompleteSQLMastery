SELECT 
	CONCAT(first_name,' ',last_name) AS customer,
    points,
    CASE
			WHEN points>3000 THEN 'Gold'
            WHEN points >= 2000 THEN 'Silver'
			ELSE'Bronze'
		END AS  category
FROM customers
ORDER BY points DESC