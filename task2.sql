CREATE Table countries (
id INT AUTO_INCREMENT Primary KEY,
entity VARCHAR(100) not null,
code VARCHAR(10) not null
);
INSERT INTO countries (entity, code)
SELECT DISTINCT Entity, Code FROM infectious_cases;

CREATE table cases (
id INT AUTO_INCREMENT PRIMARY KEY,
country_id INT,
year INT,
disease VARCHAR(100),
cases INT,
FOREIGN KEY (country_id) references countries(id)
);

INSERT INTO cases (country_id, year, disease, cases)
SELECT
	c.id,
    i.Year,
    'polio_infectious_casesinfectious_casescases' AS disease,
    i.polio_cases
FROM infectious_cases i
JOIN countries c ON i.Entity = c.Entity AND i.code = i.code
WHERE i.polio_cases is NOT NULL;
