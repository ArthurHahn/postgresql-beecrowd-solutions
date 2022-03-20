SELECT c.name, r.rentals_date FROM customers AS c 
	INNER JOIN rentals AS r ON c.id = r.id_customers
	WHERE EXTRACT(MONTH FROM r.rentals_date) = 9;