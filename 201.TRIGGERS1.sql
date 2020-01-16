USE sql_invoicing;
DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT on payments
    FOR EACH ROW 
BEGIN
	UPDATE invoices
    SET payment_total=payment_total+ NEW.amount
    WHERE invoice_id=NEW.invoice_id;
END $$


DELIMITER ;