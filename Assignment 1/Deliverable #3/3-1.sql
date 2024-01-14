SELECT * FROM address; 
INSERT INTO address (address_id, address, district, city_id, phone)
VALUES(606, '123 Main Street', 'Alberta', 300, '7091234567');

INSERT INTO customer (first_name, last_name, store_id, address_id)
VALUES('Abby', 'Butler', 1, 606);

INSERT INTO customer (first_name, last_name, store_id, address_id)
VALUES('Billy', 'Butler', 1, 606);

INSERT INTO customer (first_name, last_name, store_id, address_id)
VALUES('Chad', 'Butler', 1, 606);

SELECT * FROM customer
ORDER BY address_id DESC;