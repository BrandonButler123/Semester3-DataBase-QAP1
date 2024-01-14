SELECT address_id, city_id, phone, COUNT(district) AS district_count 
FROM address
WHERE address_id <= 10
GROUP BY address_id, phone, city_id
ORDER BY address_id DESC
LIMIT 4