USE sql_store;
START TRANSACTION;
UPDATE orders SET status=1 WHERE order_id=2;
UPDATE customers SET state='VA' WHERE customer_id=3;
COMMIT;