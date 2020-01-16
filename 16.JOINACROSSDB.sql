USE sql_inventory;
SELECT *
FROM store.order_items oi
JOIN products p
ON oi.product_id=p.product_id