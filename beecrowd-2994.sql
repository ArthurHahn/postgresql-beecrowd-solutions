--150/h
--day shift 1%
--afternoon shift 2%
--night shift 15%

SELECT d.name, ROUND(sum(a.hours*150 + w.bonus*0.01*a.hours*150),1) AS salary 
	FROM doctors AS d
	INNER JOIN attendances AS a ON d.id = a.id_doctor
	INNER JOIN work_shifts AS w ON a.id_work_shift = w.id
	GROUP BY d.name
	ORDER BY salary DESC;
