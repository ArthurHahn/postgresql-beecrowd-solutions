SELECT c.id, c.name FROM customers AS c 
	FULL JOIN locations AS l ON c.id = l.id_customers
	WHERE l.id_customers IS NULL;
	
