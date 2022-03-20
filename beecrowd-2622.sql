SELECT c.name FROM customers AS c 
	INNER JOIN legal_person AS lp ON c.id = lp.id_customers
	WHERE lp.cnpj IS NOT NULL;