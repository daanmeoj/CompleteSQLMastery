USE sql_store;
SHOW INDEXES IN customers;

CREATE index idx_state_points ON customers(state,points);

EXPLAIN SELECT customer_id FROM customers
WHERE state='CA' AND points>1000;

DROP INDEX idx_points ON customers;