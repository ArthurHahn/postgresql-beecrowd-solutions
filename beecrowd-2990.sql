SELECT e.cpf, e.enome, d.dnome FROM empregados AS e
	INNER JOIN departamentos AS d ON e.dnumero = d.dnumero
	LEFT JOIN trabalha AS t ON t.cpf_emp = e.cpf
    LEFT JOIN projetos AS p ON t.pnumero = p.pnumero --LEFT JOIN PORQUE QUEREMOS OS NULLS
WHERE p.pnumero IS NULL
ORDER BY e.cpf ASC;