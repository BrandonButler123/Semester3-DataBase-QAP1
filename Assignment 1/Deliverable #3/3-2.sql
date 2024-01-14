UPDATE customer 
SET address_id = 607
WHERE address_id = 606;

SELECT * FROM customer
ORDER BY address_id DESC;