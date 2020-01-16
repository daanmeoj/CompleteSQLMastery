USE sql_store;

SELECT 
	order_id,
    IFNULL(shipper_id,'NOT ASSIGNED') AS SHIPPER
FROM orders