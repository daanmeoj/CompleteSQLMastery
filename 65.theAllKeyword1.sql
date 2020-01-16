SELECT *
FROM invoices
WHERE invoice_total>(
SELECT 
	MAX(invoice_total) AS larger_invoice
FROM invoices
WHERE client_id=3)