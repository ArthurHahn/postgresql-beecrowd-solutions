SELECT products.name FROM providers 
	INNER JOIN products ON providers.id = products.id_providers
	WHERE (products.amount BETWEEN 10 AND 20) AND (UPPER(providers.name) LIKE 'P%');