SELECT *
FROM sales_by_client
JOIN clients USING (client_id)