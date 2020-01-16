USE sql_store;

SELECT 
	order_id,
    COALESCE(shipper_id,comments,'NOT ASSIGNED') AS SHIPPER
FROM orders