
EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_lastname_state)
WHERE state LIKE'A%' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_lastname)
WHERE state LIKE'A%' AND last_name LIKE 'A%'

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_lastname)
WHERE last_name LIKE 'A%'