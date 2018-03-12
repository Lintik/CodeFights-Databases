CREATE PROCEDURE storageOptimization()
BEGIN
SELECT e.id, e.column_name, e.value FROM(
SELECT i.id as id, 'name' as column_name, i.name as value
from workers_info i
where i.name != '' 
UNION ALL
SELECT w.id as id, 'date_of_birth' as column_name,w.date_of_birth as value
from workers_info w
where w.date_of_birth != '' 
UNION ALL
SELECT z.id as id, 'salary' as column_name, z.salary as value
from workers_info z
where z.salary != ''
) e
order by e.id, FIELD(e.column_name, 'name', 'date_of_birth', 'salary');
END
