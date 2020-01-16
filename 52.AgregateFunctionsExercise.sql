SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total*1.1) AS lowest,
    SUM(invoice_total) AS total,
    COUNT(DISTINCT client_id) AS total_records
FROM invoices
WHERE invoice_date>'2019-07-01'