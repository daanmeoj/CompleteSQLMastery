ALTER TABLE orders
	DROP PRIMARY KEY,
	ADD PRIMARY KEY(order_id),
	DROP FOREIGN KEY fk_orders_customers,
    ADD FOREIGN KEY fk_orders_customers(customer_id)
		REFERENCES customers(customer_id)
        ON UPDATE NO ACTION;