CREATE INDEX idx_lastname ON cstomers (last_name(20));

SELECT COUNT(DISTINCT LEFT(last_name,1)) FROM customers,
SELECT COUNT(DISTINCT LEFT(last_name,5)) FROM customers,
SELECT COUNT(DISTINCT LEFT(last_name,10)) FROM customers,
SELECT COUNT(DISTINCT LEFT(last_name,20)) FROM customers