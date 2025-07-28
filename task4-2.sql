select distinct Year,
	CURDATE() AS year_current_date
FROM infectious_cases
Order by 1 asc