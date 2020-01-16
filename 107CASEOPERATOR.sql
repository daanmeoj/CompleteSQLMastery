SELECT
		order_id,
		CASE
			WHEN YEAR(order_date)=YEAR(NOW()) THEN 'Active'
            WHEN YEAR(order_date)=YEAR(NOW())-1 THEN 'Last Year'
			WHEN YEAR(order_date)<YEAR(NOW())-1 THEN 'Archived'
			ELSE 'FUTURE'
		END AS  category
FROM orders