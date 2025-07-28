SELECT 
	Entity, 
	avg(Number_rabies), 
	max(Number_rabies), 
	min(Number_rabies), 
    sum(Number_rabies) 
    FROM pandemic.infectious_cases
where Number_rabies is not null
group by Entity
order by 2 desc
limit 10
