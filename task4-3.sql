select 
	distinct year,
    TIMESTAMPDIFF(YEAR, DATE(CONCAT(year, '-01-01')), CURDATE()) AS year_diff
FROM cases
order by 1