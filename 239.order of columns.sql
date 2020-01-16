CREATE INDEX idx_lastname_state ON customers
(last_name,state);

CREATE INDEX idx_state_lastname ON customers
(state, last_name);

EXPLAIN SELECT customer_id
FROM customers
WHERE state='CA' AND last_name LIKE 'A%'