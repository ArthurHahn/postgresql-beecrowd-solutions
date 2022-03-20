SELECT products.id, products.name
	FROM products INNER JOIN categories 
	ON products.id_categories = categories.id
	WHERE UPPER(categories.name) LIKE 'SUPER%';