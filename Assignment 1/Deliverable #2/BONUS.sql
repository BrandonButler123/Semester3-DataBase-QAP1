SELECT address.address_id, city_id, phone, first_name, last_name, COUNT(district) AS district_count 
FROM address
INNER JOIN customer ON customer.address_id = address.address_id
WHERE address.address_id <= 10
GROUP BY address.address_id, phone, city_id, first_name, last_name
ORDER BY address_id DESC
LIMIT 4;