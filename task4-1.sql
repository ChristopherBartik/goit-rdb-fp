select 
	year,
    DATE(concat(year, '-01-01')) as start_year
from cases
limit 10