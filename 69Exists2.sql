SELECT *
FROM clients c
WHERE EXISTS(
	SELECT client_id
    FROM invoices
    WHERE client_id=c.client_id
)